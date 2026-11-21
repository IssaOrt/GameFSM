"""Genera los blueprints JSON de los editores de GameFSM para el MCP de MPS.

Uso: python -I tools/gen_editors.py <archivo_salida.json>
Cada editor define la "sintaxis concreta" (proyeccion) de un concepto.
"""
import json
import sys

S = "r:476a94d4-63d0-45c7-958e-14e2803e5fca(gamefsm.structure)/"
NAME = "r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/1169194664001"
E = "jetbrains.mps.lang.editor.structure."

C = {  # id de cada concepto
    "Character": "5126471530000000002", "InitialState": "5126471530000000004",
    "NormalState": "5126471530000000005", "FinalState": "5126471530000000006",
    "Event": "5126471530000000007", "Transition": "5126471530000000008",
    "Variable": "5126471530000000009", "IntType": "5126471530000000011",
    "BoolType": "5126471530000000012", "IntLiteral": "5126471530000000014",
    "BoolLiteral": "5126471530000000015", "VariableRef": "5126471530000000016",
    "LessExpr": "5126471530000000019", "LessEqExpr": "5126471530000000020",
    "GreaterExpr": "5126471530000000021", "GreaterEqExpr": "5126471530000000022",
    "EqualsExpr": "5126471530000000023", "NotEqualsExpr": "5126471530000000024",
    "PlusExpr": "5126471530000000026", "MinusExpr": "5126471530000000027",
    "AndExpr": "5126471530000000028", "Assignment": "5126471530000000029",
    "Scenario": "5126471530000000030", "ScenarioStep": "5126471530000000031",
    "StateRef": "3586802905043621591", "EventRef": "3586802905043621592",
    "Guard": "3586802905043621593", "ActionBlock": "3586802905043621594",
    "ColumnHeader": "3586802905043621595",
}
F = {  # id de cada propiedad / hijo / referencia
    "variables": "5126471530000000034", "events": "5126471530000000035",
    "states": "5126471530000000036", "transitions": "5126471530000000037",
    "type": "5126471530000000032", "initialValue": "5126471530000000047",
    "intValue": "5126471530000000048", "boolValue": "5126471530000000049",
    "varRef": "5126471530000000050", "left": "5126471530000000051",
    "right": "5126471530000000052", "asgVar": "5126471530000000053",
    "asgValue": "5126471530000000054", "scenChar": "5126471530000000056",
    "steps": "5126471530000000057", "stepEvent": "5126471530000000058",
    "srState": "3586802905043621596", "erEvent": "3586802905043621597",
    "condition": "3586802905043621598", "assignments": "3586802905043621599",
    "title": "3586802905043621600", "source": "3586802905043621613",
    "tEvent": "3586802905043621616", "guard": "3586802905043621619",
    "target": "3586802905043621622", "actions": "3586802905043621625",
}


def node(concept, props=None, refs=None, children=None):
    n = {"concept": concept}
    if props:
        n["properties"] = [{"name": k, "value": v} for k, v in props.items()]
    if refs:
        n["references"] = [{"role": k, "target": v} for k, v in refs.items()]
    if children:
        n["children"] = [{"role": k, "nodes": v} for k, v in children.items() if v]
    return n


def flag(item):
    return node(E + item, {"flag": "true"})


def styles(newline=False, indent=False, kids_newline=False, punct_left=False, kw=False):
    s = []
    if newline:
        s.append(flag("IndentLayoutOnNewLineStyleClassItem"))
    if indent:
        s.append(flag("IndentLayoutIndentStyleClassItem"))
    if kids_newline:
        s.append(flag("IndentLayoutNewLineChildrenStyleClassItem"))
    if punct_left:
        s.append(flag("PunctuationLeftStyleClassItem"))
    if kw:  # palabra clave: negrita azul oscuro
        s.append(node(E + "FontStyleStyleClassItem", {"style": "BOLD"}))
        s.append(node(E + "ForegroundColorStyleClassItem", {"color": "darkBlue"}))
    return s


def const(text, **st):
    return node(E + "CellModel_Constant", {"text": text}, children={"styleItem": styles(**st)})


def kw(text, **st):
    return const(text, kw=True, **st)


def prop(feature, read_only=False, **st):
    p = {"readOnly": "true"} if read_only else None
    return node(E + "CellModel_Property", p, {"relationDeclaration": feature},
                {"styleItem": styles(**st)})


def name(**st):
    return prop(NAME, **st)


def child(f, **st):
    return node(E + "CellModel_RefNode", refs={"relationDeclaration": S + F[f]},
                children={"styleItem": styles(**st)})


def lst(f, sep=None, vertical=False, **st):
    p = {"separatorText": sep} if sep else None
    layout = node(E + "CellLayout_Indent")
    return node(E + "CellModel_RefNodeList", p, {"relationDeclaration": S + F[f]},
                {"cellLayout": [layout],
                 "styleItem": styles(kids_newline=vertical, **st)})


def ref(f, **st):
    """Referencia inteligente: muestra el nombre del nodo apuntado (solo lectura)."""
    inner = node(E + "InlineEditorComponent",
                 children={"cellModel": [prop(NAME, read_only=True)]})
    return node(E + "CellModel_RefCell", refs={"relationDeclaration": S + F[f]},
                children={"editorComponent": [inner], "styleItem": styles(**st)})


def row(*cells):
    return node(E + "CellModel_Collection",
                children={"cellLayout": [node(E + "CellLayout_Indent")],
                          "childCellModel": list(cells)})


def editor(concept, cell):
    return node(E + "ConceptEditorDeclaration", refs={"conceptDeclaration": S + C[concept]},
                children={"cellModel": [cell]})


eds = []
# personaje Goblin { ... }  (la tabla de transiciones se agrega en un paso aparte)
eds.append(editor("Character", row(
    kw("personaje"), name(), const("{"),
    kw("variables:", newline=True, indent=True),
    lst("variables", vertical=True, newline=True, indent=True),
    kw("eventos:", newline=True, indent=True),
    lst("events", sep=","),
    kw("estados:", newline=True, indent=True),
    lst("states", vertical=True, newline=True, indent=True),
    kw("transiciones:", newline=True, indent=True),
    lst("transitions", vertical=True, newline=True, indent=True),
    const("}", newline=True),
)))
eds.append(editor("InitialState", row(kw("estado inicial"), name())))
eds.append(editor("NormalState", row(kw("estado"), name())))
eds.append(editor("FinalState", row(kw("estado final"), name())))
eds.append(editor("Event", row(name())))
eds.append(editor("Variable", row(name(), const(":"), child("type"), const("="), child("initialValue"))))
eds.append(editor("IntType", kw("entero")))
eds.append(editor("BoolType", kw("booleano")))
eds.append(editor("IntLiteral", prop(S + F["intValue"])))
eds.append(editor("BoolLiteral", prop(S + F["boolValue"])))
eds.append(editor("VariableRef", ref("varRef")))
for cname, op in [("LessExpr", "<"), ("LessEqExpr", "<="), ("GreaterExpr", ">"),
                  ("GreaterEqExpr", ">="), ("EqualsExpr", "=="), ("NotEqualsExpr", "!="),
                  ("PlusExpr", "+"), ("MinusExpr", "-"), ("AndExpr", "and")]:
    eds.append(editor(cname, row(child("left"), kw(op) if op == "and" else const(op), child("right"))))
eds.append(editor("Assignment", row(ref("asgVar"), const("="), child("asgValue"))))
eds.append(editor("Scenario", row(
    kw("escenario"), name(), kw("para"), ref("scenChar"), const(":", punct_left=True),
    lst("steps", sep=",", newline=True, indent=True),
)))
eds.append(editor("ScenarioStep", ref("stepEvent")))
eds.append(editor("StateRef", ref("srState")))
eds.append(editor("EventRef", ref("erEvent")))
eds.append(editor("Guard", child("condition")))
eds.append(editor("ActionBlock", lst("assignments", sep=",")))
eds.append(editor("ColumnHeader", prop(S + F["title"], read_only=True, kw=True)))
# Vista de una transicion fuera de la tabla:  Atacar --recibirGolpe [vida > 30]--> Huir / vida = vida - 20
eds.append(editor("Transition", row(
    child("source"), const("--"), child("tEvent"), const("["), child("guard"), const("]-->"),
    child("target"), const("/"), child("actions"),
)))

out = sys.argv[1]
with open(out, "w", encoding="utf-8") as fh:
    json.dump(eds, fh, ensure_ascii=False)
print(out, len(eds), "editores")
