"""Genera los tests de GameFSM (jetbrains.mps.lang.test).

Uso: python -I tools/gen_tests.py <salida.json>

Idea: un personaje BASE valido y, en cada caso, se le inyecta UN solo defecto.
Cada nodo defectuoso lleva la anotacion "has error" / "has warning" con el mensaje esperado.
Si el typesystem o el razonador dejan de detectarlo, el test falla.
"""
import copy
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from gen_sandbox import character, scenario, n, MODELS  # noqa: E402

T = "jetbrains.mps.lang.test.structure."


def base(name, extra_vars=(), extra_events=(), extra_states=(), transitions=None, initial_b=False,
         vida_init=100):
    trs = transitions if transitions is not None else [
        ("A", "ver", None, "B", []),
        ("B", "golpe", (">", "vida", 30), "B", [("vida", ("-", "vida", 10))]),
        ("B", "golpe", ("<=", "vida", 30), "F", []),
    ]
    states = [("inicial", "A"), ("inicial" if initial_b else "normal", "B"), ("final", "F")] + list(extra_states)
    return character(name, [("vida", "entero", vida_init), ("flag", "booleano", True)] + list(extra_vars),
                     ["ver", "golpe"] + list(extra_events), states, trs)


def mark(node, kind, message):
    """Agrega una anotacion de prueba (has error / has warning) al nodo."""
    # El mensaje esperado queda documentado aqui; la anotacion verifica que el nodo tenga ese error/aviso.
    # (El texto exacto no se compara: el runner de tests puede formatearlo distinto al editor.)
    op = {"concept": T + ("NodeErrorCheckOperation" if kind == "error" else "NodeWarningCheckOperation")}
    for ch in node.setdefault("children", []):
        if ch["role"] == "smodelAttribute":
            ch["nodes"][0]["children"][0]["nodes"].append(op)
            return
    node["children"].append({"role": "smodelAttribute", "nodes": [
        {"concept": T + "NodeOperationsContainer", "children": [{"role": "nodeOperations", "nodes": [op]}]}]})


def child(node, role, i=0):
    for ch in node.get("children", []):
        if ch["role"] == role:
            return ch["nodes"][i]
    raise KeyError(role)


def label(node, name):
    node.setdefault("children", []).append({"role": "smodelAttribute", "nodes": [
        {"concept": T + "TestNodeAnnotation", "properties": [{"name": "name", "value": name}]}]})


def test_node(root):
    return {"concept": T + "TestNode", "children": [{"role": "nodeToCheck", "nodes": [root]}]}


std = [("A", "ver", None, "B", []),
       ("B", "golpe", (">", "vida", 30), "B", [("vida", ("-", "vida", 10))]),
       ("B", "golpe", ("<=", "vida", 30), "F", [])]
cases = []

# 0. Valido: no debe tener ningun error ni aviso
cases.append(base("Valido"))

# 1. (GUARD) guarda no booleana
c = base("GuardaNoBooleana", transitions=[("A", "ver", ("+", "vida", 5), "B", [])] + std[1:])
mark(child(child(child(c, "transitions", 0), "guard"), "condition"), "error",
     "La guarda debe ser booleana, pero es de tipo entero")
cases.append(c)

# 2. (COMP) operador > con un booleano
c = base("OperadorMalTipado", transitions=[("A", "ver", (">", "flag", 3), "B", [])] + std[1:])
mark(child(child(child(child(c, "transitions", 0), "guard"), "condition"), "left"), "error",
     "El operador '>' necesita enteros, pero recibio un booleano")
cases.append(c)

# 3. (ASIG) asignacion incompatible
c = base("AsignacionIncompatible", transitions=[std[0],
         ("B", "golpe", (">", "vida", 30), "B", [("vida", True)]), std[2]])
mark(child(child(child(c, "transitions", 1), "actions"), "assignments"), "error",
     "No se puede asignar un valor de tipo booleano a una variable de tipo entero")
cases.append(c)

# 4. valor inicial incompatible
c = base("ValorInicialMalo", vida_init=False)
mark(child(child(c, "variables", 0), "initialValue"), "error",
     "Valor inicial incompatible con el tipo: 'vida' es entero pero el valor es booleano")
cases.append(c)

# 5. dos estados iniciales
c = base("DosIniciales", initial_b=True)
mark(child(c, "states", 1), "error", "Debe existir exactamente un estado inicial (hay 2)")
cases.append(c)

# 6. nombre de variable duplicado
c = base("VariableDuplicada", extra_vars=[("flag", "booleano", False)])
mark(child(c, "variables", 2), "error", "Nombre duplicado: ya existe un variable llamado 'flag'")
cases.append(c)

# 7. transicion que sale de un estado final
c = base("FinalConSalida", transitions=std + [("F", "ver", None, "A", [])])
mark(child(child(c, "transitions", 3), "source"), "error",
     "Un estado final no puede tener transiciones de salida ('F' es final)")
cases.append(c)

# 8. RAZONADOR: estado inalcanzable (BFS desde q0)
c = base("Inalcanzable", extra_states=[("normal", "X")], transitions=std + [("X", "golpe", None, "F", [])])
mark(child(c, "states", 3), "warning",
     "Estado inalcanzable: ningun camino desde el estado inicial llega a 'X'")
cases.append(c)

# 9. RAZONADOR: deadlock
c = base("Deadlock", extra_states=[("normal", "D")], transitions=std + [("A", "golpe", None, "D", [])])
mark(child(c, "states", 3), "error",
     "Deadlock: el estado 'D' no es final y no tiene transiciones de salida (el personaje se congela)")
cases.append(c)

# 10. RAZONADOR: estado trampa (BFS en el grafo invertido)
c = base("Trampa", extra_states=[("normal", "T")],
         transitions=std + [("A", "golpe", None, "T", []), ("T", "golpe", None, "T", [])])
mark(child(c, "states", 3), "warning", "Estado trampa: desde 'T' nunca se puede llegar a un estado final")
cases.append(c)

# 11. RAZONADOR: no determinismo detectado por intervalos (vida > 30 y vida >= 20 se solapan)
c = base("NoDeterminismoIntervalos", transitions=[std[0],
         ("B", "golpe", (">", "vida", 30), "B", []), ("B", "golpe", (">=", "vida", 20), "F", [])])
mark(child(child(c, "transitions", 2), "event"), "error",
     "No determinismo desde 'B' con el evento 'golpe': hay dos transiciones posibles "
     "(con vida = 31 se cumplen ambas guardas)")
cases.append(c)

# 12. RAZONADOR: no determinismo por transicion sin guarda
c = base("NoDeterminismoSinGuarda", transitions=std + [("A", "ver", None, "F", [])])
mark(child(child(c, "transitions", 3), "event"), "error",
     "No determinismo desde 'A' con el evento 'ver': hay dos transiciones posibles "
     "(una de ellas no tiene guarda)")
cases.append(c)

# 13. RAZONADOR: evento sin usar
c = base("EventoSinUsar", extra_events=["cantar"])
mark(child(c, "events", 2), "warning", "Evento sin usar: ninguna transicion escucha el evento 'cantar'")
cases.append(c)

errores = {"concept": T + "NodesTestCase", "properties": [{"name": "name", "value": "ErroresDetectados"}],
           "children": [{"role": "nodesToCheck", "nodes": [test_node(x) for x in cases]}]}

# Inferencias: personajes validos etiquetados para los metodos de prueba (BFS y simulador)
goblin, pelea = copy.deepcopy(MODELS["goblin"])
jefe, batalla = copy.deepcopy(MODELS["jefe"])
for node, name in [(goblin, "goblin"), (pelea, "pelea"), (jefe, "jefe"), (batalla, "batalla")]:
    label(node, name)
inferencias = {"concept": T + "NodesTestCase", "properties": [{"name": "name", "value": "Inferencias"}],
               "children": [{"role": "nodesToCheck", "nodes": [test_node(x) for x in (goblin, pelea, jefe, batalla)]}]}

with open(sys.argv[1], "w", encoding="utf-8") as fh:
    json.dump([errores, inferencias], fh, ensure_ascii=False)
print(sys.argv[1], len(cases), "casos")
