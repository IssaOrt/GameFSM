# -*- coding: utf-8 -*-
"""Genera el documento tecnico de GameFSM en formato APA 7 (trabajo de estudiante).

Uso: python docs/gen_documento.py   ->  docs/Documento_Tecnico_GameFSM.pdf
"""
import os

from reportlab.lib import colors
from reportlab.lib.enums import TA_CENTER, TA_JUSTIFY, TA_LEFT
from reportlab.lib.pagesizes import letter
from reportlab.lib.styles import ParagraphStyle
from reportlab.lib.units import inch
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.platypus import (KeepTogether, PageBreak, Paragraph, SimpleDocTemplate, Spacer, Table,
                                TableStyle, XPreformatted)

FONTS = r"C:\Windows\Fonts"
pdfmetrics.registerFont(TTFont("TNR", os.path.join(FONTS, "times.ttf")))
pdfmetrics.registerFont(TTFont("TNR-B", os.path.join(FONTS, "timesbd.ttf")))
pdfmetrics.registerFont(TTFont("TNR-I", os.path.join(FONTS, "timesi.ttf")))
pdfmetrics.registerFont(TTFont("TNR-BI", os.path.join(FONTS, "timesbi.ttf")))
pdfmetrics.registerFont(TTFont("Math", os.path.join(FONTS, "cambria.ttc"), subfontIndex=1))
pdfmetrics.registerFont(TTFont("Mono", os.path.join(FONTS, "consola.ttf")))
pdfmetrics.registerFontFamily("TNR", normal="TNR", bold="TNR-B", italic="TNR-I", boldItalic="TNR-BI")

OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "Documento_Tecnico_GameFSM.pdf")
BLACK = colors.black
SIZE = 12
DOUBLE = 24  # interlineado doble (APA)

base = dict(fontName="TNR", fontSize=SIZE, textColor=BLACK)
body = ParagraphStyle("body", leading=DOUBLE, firstLineIndent=0.5 * inch, alignment=TA_LEFT, **base)
body_noindent = ParagraphStyle("bodyni", parent=body, firstLineIndent=0)
center = ParagraphStyle("center", leading=DOUBLE, alignment=TA_CENTER, **base)
title_cover = ParagraphStyle("tcover", parent=center, fontName="TNR-B")
h1 = ParagraphStyle("h1", parent=center, fontName="TNR-B", spaceBefore=0, keepWithNext=1)
h2 = ParagraphStyle("h2", leading=DOUBLE, fontName="TNR-B", fontSize=SIZE, textColor=BLACK)
cell = ParagraphStyle("cell", fontName="TNR", fontSize=10, leading=12, textColor=BLACK)
cell_b = ParagraphStyle("cellb", parent=cell, fontName="TNR-B")
mono = ParagraphStyle("mono", fontName="Mono", fontSize=9, leading=11.5, textColor=BLACK, leftIndent=0.5 * inch)
math = ParagraphStyle("math", fontName="Math", fontSize=10.5, leading=13, alignment=TA_CENTER, textColor=BLACK)
table_label = ParagraphStyle("tl", leading=DOUBLE, fontName="TNR-B", fontSize=SIZE, textColor=BLACK)
table_title = ParagraphStyle("tt", leading=DOUBLE, fontName="TNR-I", fontSize=SIZE, textColor=BLACK)
note = ParagraphStyle("note", fontName="TNR", fontSize=10, leading=12, textColor=BLACK, spaceBefore=4)
ref = ParagraphStyle("ref", leading=DOUBLE, leftIndent=0.5 * inch, firstLineIndent=-0.5 * inch, **base)


def M(text):
    """Texto en fuente matematica (para simbolos como Σ, δ, ⊢, ⟨ ⟩, ∈)."""
    return '<font name="Math">%s</font>' % text


def P(text, style=body):
    return Paragraph(text, style)


def apa_table(number, title, rows, widths, note_text=None, header=True):
    data = [[Paragraph(c, cell_b if (header and i == 0) else cell) for c in r] for i, r in enumerate(rows)]
    t = Table(data, colWidths=widths, repeatRows=1 if header else 0)
    style = [("VALIGN", (0, 0), (-1, -1), "TOP"),
             ("LINEABOVE", (0, 0), (-1, 0), 0.8, BLACK),
             ("LINEBELOW", (0, -1), (-1, -1), 0.8, BLACK),
             ("TOPPADDING", (0, 0), (-1, -1), 2), ("BOTTOMPADDING", (0, 0), (-1, -1), 2),
             ("LEFTPADDING", (0, 0), (-1, -1), 3), ("RIGHTPADDING", (0, 0), (-1, -1), 3)]
    if header:
        style.append(("LINEBELOW", (0, 0), (-1, 0), 0.6, BLACK))
    t.setStyle(TableStyle(style))
    parts = [P("Tabla %d" % number, table_label), P(title, table_title), t]
    if note_text:
        parts.append(P("<i>Nota.</i> " + note_text, note))
    parts.append(Spacer(1, 8))
    return KeepTogether(parts)


def rule(name, premises, conclusion, width=2.35 * inch):
    """Regla de inferencia: premisas sobre la linea, conclusion debajo."""
    t = Table([[Paragraph(premises, math), Paragraph("(%s)" % name, cell)],
               [Paragraph(conclusion, math), ""]],
              colWidths=[width, 0.85 * inch])
    t.setStyle(TableStyle([("LINEBELOW", (0, 0), (0, 0), 0.7, BLACK),
                           ("VALIGN", (0, 0), (-1, -1), "MIDDLE"),
                           ("SPAN", (1, 0), (1, 1)),
                           ("TOPPADDING", (0, 0), (-1, -1), 1), ("BOTTOMPADDING", (0, 0), (-1, -1), 1)]))
    return t


def rules_grid(items):
    cells = [rule(*it) for it in items]
    rows = [cells[i:i + 2] + ([""] if len(cells[i:i + 2]) == 1 else []) for i in range(0, len(cells), 2)]
    g = Table(rows, colWidths=[3.25 * inch, 3.25 * inch])
    g.setStyle(TableStyle([("VALIGN", (0, 0), (-1, -1), "MIDDLE"), ("TOPPADDING", (0, 0), (-1, -1), 3),
                           ("BOTTOMPADDING", (0, 0), (-1, -1), 3)]))
    return g


def page_number(canvas, doc):
    canvas.saveState()
    canvas.setFont("TNR", SIZE)
    canvas.setFillColor(BLACK)
    canvas.drawRightString(letter[0] - inch, letter[1] - 0.5 * inch, str(doc.page))
    canvas.restoreState()


story = []

# ------------------------------------------------------------------ PORTADA (APA 7, estudiante)
story += [Spacer(1, 2.0 * inch),
          P("GameFSM: Un Lenguaje de Dominio Específico con Razonador para Verificar Máquinas de Estado "
            "de Personajes de Videojuegos", title_cover),
          Spacer(1, DOUBLE),
          P("Santiago Reina Aguilar, Valentina Camila Martínez Cantor y Kiara Issari Ortiz Beltrán", center),
          P("Facultad de Ingeniería, Universidad El Bosque", center),
          P("Compiladores y Teoría de la Computación", center),
          P("Docente: Helio Ramírez", center),
          P("24 de noviembre de 2026", center),
          PageBreak()]

# ------------------------------------------------------------------ CUERPO
story.append(P("GameFSM: Un Lenguaje de Dominio Específico con Razonador para Verificar Máquinas de Estado "
               "de Personajes de Videojuegos", h1))

story.append(P(
    "En los videojuegos, el comportamiento de enemigos y personajes no jugables se programa con cadenas de "
    "<i>if</i> y <i>switch</i>. Los defectos típicos de ese código (estados que nunca se activan, personajes que "
    "se \u201ccongelan\u201d o reacciones ambiguas ante un mismo evento) solo se descubren jugando, cuando corregirlos "
    "ya es costoso. Este proyecto propone GameFSM, un lenguaje de dominio específico (DSL) construido en JetBrains "
    "MPS en el que el diseñador describe cada personaje con su propio vocabulario (estados, eventos, guardas y "
    "acciones) y un razonador verifica propiedades formales del modelo mientras se escribe. Un DSL es adecuado "
    "porque el lenguaje \u201csabe\u201d qué significa cada pieza y puede analizarla, algo imposible en un lenguaje de "
    "propósito general (Fowler, 2010; Voelter, 2013)."))
story.append(P(
    "<b>Pregunta de investigación.</b> ¿Cómo garantizar, antes de llevarlo al juego, que el comportamiento de un "
    "personaje no tenga estados inalcanzables, bloqueos ni ambigüedades?", body))

story.append(P("Modelo Formal y Especificación del AST", h1))
story.append(P(
    "Cada personaje es una máquina de estados finita extendida " + M("M = (Q, Σ, δ, q<sub>0</sub>, F, V)") +
    ", donde " + M("Q") + " son los estados, " + M("Σ") + " los eventos, " + M("q<sub>0</sub>") + " el estado inicial, "
    + M("F") + " los estados finales, " + M("V") + " las variables (enteras o booleanas) y " +
    M("δ ⊆ Q × Σ × G × A × Q") + " las transiciones con guarda " + M("g ∈ G") + " y acciones " + M("a ∈ A") +
    " (Hopcroft et al., 2007). Un escenario es una palabra " + M("w ∈ Σ*") + " que se ejecuta sobre el autómata. "
    "En MPS el aspecto <i>Structure</i> define la gramática abstracta como 36 conceptos (Tabla 1); los hijos "
    "forman el árbol y las referencias lo convierten en el grafo del autómata."))
GRAMMAR = """Character  ::= name Variable* Event+ State+ Transition* ColumnHeader*
State      ::= InitialState | NormalState | FinalState
Transition ::= source:StateRef event:EventRef guard:Guard
               target:StateRef actions:ActionBlock
StateRef   ::= ↑State              EventRef    ::= ↑Event
Guard      ::= Expression?         ActionBlock ::= Assignment*
Variable   ::= name Type initialValue:Expression
Type       ::= IntType | BoolType
Expression ::= IntLiteral | BoolLiteral | ↑Variable | Expression op Expression
               op ∈ {&lt;, &lt;=, &gt;, &gt;=, ==, !=, +, -, and}
Assignment ::= ↑Variable "=" Expression
Scenario   ::= name ↑Character ↑Event+"""
story.append(XPreformatted(GRAMMAR, mono))
story.append(Spacer(1, 6))
story.append(apa_table(1, "Conceptos del AST de GameFSM y Mecanismos de MPS que Demuestran", [
    ["Grupo", "Conceptos", "Mecanismo"],
    ["Raíces", "Character (personaje), Scenario (escenario)", "rootable, INamedConcept"],
    ["Estados", "State (abstracto) \u2192 InitialState, NormalState, FinalState", "herencia (extends)"],
    ["Transición", "Transition, StateRef, EventRef, Guard, ActionBlock, ColumnHeader", "composición y referencias"],
    ["Datos", "Variable (ITyped), Type \u2192 IntType, BoolType, Assignment, Event", "interfaz de concepto propia"],
    ["Expresiones", "Expression \u2192 literales, VariableRef, BinaryExpression \u2192 ComparisonExpr (6), "
                    "ArithmeticExpr (2), AndExpr", "jerarquía abstracta de 3 niveles"],
], [1.0 * inch, 3.75 * inch, 1.75 * inch],
    "La proyección de las transiciones es una tabla (lenguaje jetbrains.mps.lang.editor.table) con columnas "
    "Desde, Evento, Guarda, Hacia y Acción; el resto usa proyección textual en español."))

story.append(P("Análisis Semántico: Alcance y Tipos", h1))
story.append(P(
    "Una gramática libre de contexto no puede exigir que el estado de una transición esté declarado en el mismo "
    "personaje; esa regla es sensible al contexto (Aho et al., 2007). El aspecto <i>Constraints</i> la implementa "
    "con cinco reglas de alcance (estados, eventos y variables solo del personaje que los declara). El "
    "<i>Typesystem</i> asigna tipos con siete reglas de inferencia de MPS y cuatro reglas de chequeo que reportan "
    "errores en tiempo real; las reglas siguen la notación " + M("Γ ⊢ e : τ") + " (Pierce, 2002):"))
story.append(rules_grid([
    ("COMP", M("Γ ⊢ e<sub>1</sub> : int&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Γ ⊢ e<sub>2</sub> : int"), M("Γ ⊢ e<sub>1</sub> &lt; e<sub>2</sub> : bool")),
    ("AND", M("Γ ⊢ e<sub>1</sub> : bool&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Γ ⊢ e<sub>2</sub> : bool"), M("Γ ⊢ e<sub>1</sub> and e<sub>2</sub> : bool")),
    ("GUARD", M("Γ ⊢ g : bool"), M("guarda g válida")),
    ("ASIG", M("Γ(x) = τ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Γ ⊢ e : τ"), M("x = e válida")),
]))
story.append(Spacer(1, 4))
story.append(P(
    "Así, <i>vida + 5</i> se rechaza como guarda porque su tipo es entero, y además se exige exactamente un estado "
    "inicial, nombres únicos y que ningún estado final tenga transiciones de salida."))

story.append(P("El Razonador", h1))
story.append(P(
    "El razonador implementa un verificador de consistencia y un simulador operacional (Tabla 2). La verificación "
    "es estructural: ignora las guardas al recorrer el grafo, lo que constituye una sobreaproximación; si reporta "
    "un estado inalcanzable, este lo es con certeza. Para el no determinismo, cada guarda formada por "
    "comparaciones con constantes se traduce a intervalos: <i>vida &gt; 30</i> es " + M("[31, ∞)") + " y "
    "<i>vida &gt;= 20</i> es " + M("[20, ∞)") + "; si los intervalos se intersecan, el razonador entrega un testigo "
    "concreto (\u201ccon vida = 31 se cumplen ambas guardas\u201d). Cuando no puede decidir, emite un aviso."))
story.append(apa_table(2, "Propiedades Verificadas por el Razonador", [
    ["Propiedad", "Definición formal", "Algoritmo", "Severidad", "Costo"],
    ["Inalcanzable", M("q ∉ Reach(q<sub>0</sub>)"), "BFS desde " + M("q<sub>0</sub>"), "Aviso",
     M("O(|Q|+|δ|)")],
    ["Deadlock", M("q ∉ F") + " y sin transiciones de salida", "Recorrido", "Error", M("O(|Q|+|δ|)")],
    ["Trampa", M("q ∈ Reach(q<sub>0</sub>)") + " y no alcanza " + M("F"), "BFS en el grafo invertido", "Aviso",
     M("O(|Q|+|δ|)")],
    ["No determinismo", M("(q,e,g<sub>1</sub>,·), (q,e,g<sub>2</sub>,·)") + " con " + M("g<sub>1</sub> ∧ g<sub>2</sub>")
     + " satisfacible", "Intersección de intervalos", "Error", M("O(|δ|<super>2</super>)")],
    ["Evento sin usar", M("e ∈ Σ") + " ausente en " + M("δ"), "Recorrido", "Aviso", M("O(|Σ|+|δ|)")],
    ["Simulación", M("⟨q, σ⟩ –e→ ⟨q′, ⟦A⟧σ⟩") + " si " + M("⟦g⟧σ = true"), "Semántica small-step",
     "Traza", M("O(|w|·|δ|)")],
], [1.05 * inch, 1.95 * inch, 1.35 * inch, 0.7 * inch, 1.45 * inch],
    "Si ninguna transición está habilitada, la configuración no cambia (regla IGNORA). Las expresiones se evalúan "
    "con su semántica denotacional " + M("⟦e⟧σ") + "."))

story.append(P("Validación y Resultados", h1))
story.append(P(
    "La Sandbox contiene tres modelos válidos (Goblin, GuardiaNPC sin variables y JefeFinal con fases), sin "
    "errores, y tres inválidos: GoblinMalTipado (cuatro errores de tipos), OrcoConfundido (dos estados iniciales, "
    "nombre duplicado y salida desde un estado final) y DragonBug (deadlock, dos no determinismos, un estado "
    "inalcanzable, una trampa y un evento sin usar), todos detectados. El generador (TextGen) produce, mediante "
    "traducción dirigida por la sintaxis, una clase Java ejecutable y un reporte con el análisis y la traza, "
    "que coincide con la del simulador. Las 17 pruebas con jetbrains.mps.lang.test pasan."))

story.append(P("Decidibilidad, Limitaciones y Trabajo Futuro", h1))
story.append(P(
    "Sin variables, el modelo es un autómata finito y la alcanzabilidad es decidible en tiempo lineal. Con "
    "variables enteras no acotadas que se suman, restan y comparan, el modelo puede simular una máquina de "
    "contadores de Minsky, equivalente a una máquina de Turing (Minsky, 1967); por el teorema de Rice, la "
    "alcanzabilidad exacta es indecidible en general (Rice, 1953; Sipser, 2013). Por ello el verificador es "
    "estructural y el análisis de guardas se limita a comparaciones con constantes. Como trabajo futuro se "
    "propone acotar los dominios para una verificación de modelos exhaustiva y usar un solucionador SMT."))

story.append(apa_table(3, "Roles del Equipo", [
    ["Integrante", "Rol principal", "En el video"],
    ["Santiago Reina Aguilar", "Structure y Editor (AST y tabla de transiciones)",
     "Dominio, pregunta y teoría; arquitectura del AST"],
    ["Valentina Camila Martínez Cantor", "Constraints, Typesystem y pruebas",
     "Alcance, tipos y demostración de errores"],
    ["Kiara Issari Ortiz Beltrán", "Razonador, simulador, generador e integración",
     "Razonador, simulación y análisis crítico"],
], [2.0 * inch, 2.35 * inch, 2.15 * inch]))
story.append(P(
    "<b>Declaración de uso de inteligencia artificial.</b> El diseño del lenguaje (conceptos, reglas del razonador y casos de prueba) fue definido por el equipo. Se utilizó Claude (Anthropic, 2026) como asistente de IA para apoyar la implementación en MPS y la redacción de este documento; el equipo revisó, ejecutó y validó todos los resultados.", note))

story.append(PageBreak())
story.append(P("Referencias", h1))
for r in [
    "Aho, A. V., Lam, M. S., Sethi, R., &amp; Ullman, J. D. (2007). <i>Compilers: Principles, techniques, and tools</i> "
    "(2.ª ed.). Pearson.",
    "Anthropic. (2026). <i>Claude</i> (versión Opus 5.5) [Modelo de lenguaje grande]. https://claude.ai",
    "Fowler, M. (2010). <i>Domain-specific languages</i>. Addison-Wesley.",
    "Hopcroft, J. E., Motwani, R., &amp; Ullman, J. D. (2007). <i>Introduction to automata theory, languages, and "
    "computation</i> (3.ª ed.). Pearson.",
    "JetBrains. (s.f.). <i>MPS documentation</i>. https://www.jetbrains.com/help/mps/",
    "Minsky, M. L. (1967). <i>Computation: Finite and infinite machines</i>. Prentice-Hall.",
    "Pierce, B. C. (2002). <i>Types and programming languages</i>. MIT Press.",
    "Rice, H. G. (1953). Classes of recursively enumerable sets and their decision problems. <i>Transactions of "
    "the American Mathematical Society, 74</i>(2), 358\u2013366. https://doi.org/10.1090/S0002-9947-1953-0053041-6",
    "Sipser, M. (2013). <i>Introduction to the theory of computation</i> (3.ª ed.). Cengage Learning.",
    "Voelter, M. (2013). <i>DSL engineering: Designing, implementing and using domain-specific languages</i>. "
    "dslbook.org.",
]:
    story.append(P(r, ref))

doc = SimpleDocTemplate(OUT, pagesize=letter, leftMargin=inch, rightMargin=inch, topMargin=inch,
                        bottomMargin=inch, title="GameFSM - Documento técnico",
                        author="Santiago Reina Aguilar; Valentina Camila Martínez Cantor; Kiara Issari Ortiz Beltrán",
                        subject="Compiladores y Teoría de la Computación - Universidad El Bosque")
doc.build(story, onFirstPage=page_number, onLaterPages=page_number)
print(OUT)
