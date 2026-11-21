"""Genera blueprints JSON de modelos GameFSM (personajes y escenarios) para la Sandbox.

Uso: python -I tools/gen_sandbox.py <nombre_modelo> <salida.json>
Mini-sintaxis de expresiones: tuplas  ("op", izq, der), "var", 30, True
"""
import json
import sys

G = "gamefsm.structure."
OPS = {"<": "LessExpr", "<=": "LessEqExpr", ">": "GreaterExpr", ">=": "GreaterEqExpr",
       "==": "EqualsExpr", "!=": "NotEqualsExpr", "+": "PlusExpr", "-": "MinusExpr",
       "and": "AndExpr"}


def n(concept, props=None, refs=None, children=None):
    d = {"concept": G + concept}
    if props:
        d["properties"] = [{"name": k, "value": str(v)} for k, v in props.items()]
    if refs:
        d["references"] = [{"role": k, "target": v} for k, v in refs.items()]
    if children:
        d["children"] = [{"role": k, "nodes": v} for k, v in children.items() if v]
    return d


def expr(e):
    if isinstance(e, bool):
        return n("BoolLiteral", {"value": "true" if e else "false"})
    if isinstance(e, int):
        return n("IntLiteral", {"value": e})
    if isinstance(e, str):
        return n("VariableRef", refs={"variable": e})
    op, l, r = e
    return n(OPS[op], children={"left": [expr(l)], "right": [expr(r)]})


def typ(t):
    return n({"entero": "IntType", "booleano": "BoolType"}[t])


def character(name, variables, events, states, transitions):
    headers = [n("ColumnHeader", {"title": t}) for t in ("Desde", "Evento", "Guarda", "Hacia", "Accion")]
    vs = [n("Variable", {"name": v}, children={"type": [typ(t)], "initialValue": [expr(init)]})
          for v, t, init in variables]
    es = [n("Event", {"name": e}) for e in events]
    kinds = {"inicial": "InitialState", "normal": "NormalState", "final": "FinalState"}
    ss = [n(kinds[k], {"name": s}) for k, s in states]
    ts = []
    for src, ev, guard, dst, actions in transitions:
        g = n("Guard", children={"condition": [expr(guard)] if guard is not None else []})
        acts = n("ActionBlock", children={"assignments": [
            n("Assignment", refs={"variable": v}, children={"value": [expr(val)]}) for v, val in actions]})
        ts.append(n("Transition", children={
            "source": [n("StateRef", refs={"state": src})],
            "event": [n("EventRef", refs={"event": ev})],
            "guard": [g],
            "target": [n("StateRef", refs={"state": dst})],
            "actions": [acts]}))
    return n("Character", {"name": name}, children={
        "headers": headers, "variables": vs, "events": es, "states": ss, "transitions": ts})


def scenario(name, char, events):
    return n("Scenario", {"name": name}, refs={"character": char},
             children={"steps": [n("ScenarioStep", refs={"event": e}) for e in events]})


MODELS = {
    "goblin": [
        character("Goblin",
                  [("vida", "entero", 100), ("tieneArma", "booleano", True)],
                  ["verJugador", "perderJugador", "recibirGolpe", "tiempoAgotado"],
                  [("inicial", "Patrullar"), ("normal", "Perseguir"), ("normal", "Atacar"),
                   ("normal", "Huir"), ("final", "Muerto")],
                  [("Patrullar", "verJugador", None, "Perseguir", []),
                   ("Perseguir", "verJugador", "tieneArma", "Atacar", []),
                   ("Perseguir", "perderJugador", None, "Patrullar", []),
                   ("Atacar", "recibirGolpe", (">", "vida", 30), "Atacar", [("vida", ("-", "vida", 20))]),
                   ("Atacar", "recibirGolpe", ("<=", "vida", 30), "Huir", [("vida", ("-", "vida", 20))]),
                   ("Huir", "recibirGolpe", None, "Muerto", []),
                   ("Huir", "tiempoAgotado", None, "Patrullar", [])]),
        scenario("Pelea", "Goblin", ["verJugador", "verJugador"] + ["recibirGolpe"] * 5),
    ],
    # Valido 2: automata puro (sin variables) -> caso decidible
    "guardia": [
        character("GuardiaNPC", [],
                  ["oirRuido", "verIntruso", "perderIntruso", "capturar", "calma"],
                  [("inicial", "Vigilar"), ("normal", "Alerta"), ("normal", "Persecucion"),
                   ("final", "Neutralizado")],
                  [("Vigilar", "oirRuido", None, "Alerta", []),
                   ("Alerta", "verIntruso", None, "Persecucion", []),
                   ("Alerta", "calma", None, "Vigilar", []),
                   ("Persecucion", "perderIntruso", None, "Alerta", []),
                   ("Persecucion", "capturar", None, "Neutralizado", [])]),
        scenario("Ronda", "GuardiaNPC", ["oirRuido", "calma", "oirRuido", "verIntruso",
                                         "perderIntruso", "verIntruso", "capturar"]),
    ],
    # Valido 3: jefe con fases, varias guardas que NO se solapan
    "jefe": [
        character("JefeFinal",
                  [("vida", "entero", 300), ("enrage", "booleano", False)],
                  ["golpe", "curarse", "tiempo"],
                  [("inicial", "Fase1"), ("normal", "Fase2"), ("normal", "Fase3"), ("final", "Derrotado")],
                  [("Fase1", "golpe", (">", "vida", 200), "Fase1", [("vida", ("-", "vida", 50))]),
                   ("Fase1", "golpe", ("<=", "vida", 200), "Fase2", [("vida", ("-", "vida", 50)), ("enrage", True)]),
                   ("Fase2", "golpe", ("and", (">", "vida", 100), "enrage"), "Fase2", [("vida", ("-", "vida", 40))]),
                   ("Fase2", "golpe", ("<=", "vida", 100), "Fase3", [("vida", ("-", "vida", 40))]),
                   ("Fase2", "curarse", ("==", "enrage", False), "Fase1", [("vida", ("+", "vida", 50))]),
                   ("Fase3", "golpe", (">", "vida", 0), "Fase3", [("vida", ("-", "vida", 30))]),
                   ("Fase3", "golpe", ("<=", "vida", 0), "Derrotado", []),
                   ("Fase3", "tiempo", None, "Fase2", [])]),
        scenario("BatallaFinal", "JefeFinal", ["golpe"] * 9),
    ],
    # Invalido 1: errores de TIPOS
    "invalido_tipos": [
        character("GoblinMalTipado",
                  [("vida", "entero", 100), ("tieneArma", "booleano", True), ("escudo", "entero", False)],
                  ["verJugador", "recibirGolpe"],
                  [("inicial", "Patrullar"), ("normal", "Atacar"), ("final", "Muerto")],
                  [("Patrullar", "verJugador", ("+", "vida", 5), "Atacar", []),
                   ("Atacar", "recibirGolpe", (">", "tieneArma", 3), "Muerto", [("vida", True)])]),
    ],
    # Invalido 2: errores de CONTEXTO (dos iniciales, nombre duplicado, salida desde final)
    "invalido_contexto": [
        character("OrcoConfundido", [],
                  ["ruido", "golpe"],
                  [("inicial", "Dormir"), ("inicial", "Despertar"), ("normal", "Pelear"),
                   ("normal", "Pelear"), ("final", "Muerto")],
                  [("Dormir", "golpe", None, "Muerto", []),
                   ("Despertar", "ruido", None, "Dormir", []),
                   ("Muerto", "golpe", None, "Dormir", [])]),
    ],
    # Invalido 3: errores que encuentra el RAZONADOR
    "invalido_razonador": [
        character("DragonBug", [("vida", "entero", 100)],
                  ["verJugador", "recibirGolpe", "enfadarse", "cantar"],
                  [("inicial", "Patrullar"), ("normal", "Perseguir"), ("normal", "Atacar"),
                   ("normal", "Huir"), ("normal", "Bailar"), ("normal", "Furia"), ("final", "Muerto")],
                  [("Patrullar", "verJugador", None, "Perseguir", []),
                   ("Perseguir", "verJugador", (">", "vida", 30), "Atacar", []),
                   ("Perseguir", "verJugador", (">=", "vida", 20), "Huir", []),
                   ("Atacar", "recibirGolpe", None, "Muerto", []),
                   ("Atacar", "recibirGolpe", None, "Huir", []),
                   ("Atacar", "enfadarse", None, "Furia", []),
                   ("Furia", "enfadarse", None, "Furia", []),
                   ("Bailar", "recibirGolpe", None, "Muerto", [])]),
    ],
}

if __name__ == "__main__":
    out = sys.argv[2]
    with open(out, "w", encoding="utf-8") as fh:
        json.dump(MODELS[sys.argv[1]], fh, ensure_ascii=False)
    print(out)
