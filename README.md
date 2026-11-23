# GameFSM

**Lenguaje de dominio específico (DSL) con razonador para verificar máquinas de estado de personajes de videojuegos**, construido en JetBrains MPS 2026.2.

Proyecto final de **Compiladores y Teoría de la Computación** — Universidad El Bosque, 2026-2.

## Problema

El comportamiento de enemigos y NPCs suele programarse con muchos `if`/`switch`, y los defectos (estados que nunca se activan, personajes que se congelan, reacciones ambiguas) solo aparecen jugando. GameFSM permite describir cada personaje como una **máquina de estados finita extendida** y lo verifica **mientras se escribe**.

**Pregunta de investigación:** ¿cómo garantizar, antes de llevarlo al juego, que el comportamiento de un personaje no tenga estados inalcanzables, bloqueos ni ambigüedades?

## Ejemplo

```
personaje Goblin {
  variables:
    vida : entero = 100
    tieneArma : booleano = true
  eventos: verJugador, perderJugador, recibirGolpe, tiempoAgotado
  estados:
    estado inicial Patrullar
    estado Perseguir
    estado Atacar
    estado Huir
    estado final Muerto
  transiciones:
  | Desde     | Evento        | Guarda     | Hacia     | Accion           |
  | Patrullar | verJugador    | —          | Perseguir | —                |
  | Perseguir | verJugador    | tieneArma  | Atacar    | —                |
  | Atacar    | recibirGolpe  | vida > 30  | Atacar    | vida = vida - 20 |
  | Atacar    | recibirGolpe  | vida <= 30 | Huir      | vida = vida - 20 |
  | ...                                                                  |
}

escenario Pelea para Goblin:
  verJugador, verJugador, recibirGolpe, recibirGolpe, recibirGolpe, recibirGolpe, recibirGolpe
```

## Qué hace el lenguaje

| Aspecto de MPS | Implementación |
|---|---|
| **Structure** | 36 conceptos: herencia (`State` → `InitialState`/`NormalState`/`FinalState`, jerarquía de `Expression`), interfaces (`INamedConcept`, `ITyped`), composición y referencias |
| **Editor** | Proyección textual en español y **tabla de transiciones** (`jetbrains.mps.lang.editor.table`, clase `TransitionTableModel`) |
| **Constraints** | Scoping: estados, eventos y variables solo del personaje que los declara (`GameFsmScopes`) |
| **Typesystem** | 7 reglas de inferencia (`typeof_*`) y 4 reglas de chequeo (tipos, semántica y razonador) |
| **Razonador** | Estados inalcanzables (BFS), deadlocks, estados trampa (BFS en el grafo invertido), no determinismo (análisis de intervalos con testigo), eventos sin usar y simulador operacional *small-step* |
| **TextGen** | Cada personaje genera `<Nombre>FSM.java` ejecutable y cada escenario un reporte `<Nombre>_reporte.md` |

## Estructura del repositorio

```
GameFSM/
├── languages/gamefsm/            lenguaje (structure, editor, constraints, typesystem, textGen)
├── languages/gamefsm.sandbox/    modelos de ejemplo
│   ├── gamefsm.sandbox           válidos: Goblin, GuardiaNPC, JefeFinal (+ escenarios)
│   └── gamefsm.sandbox.invalidos inválidos: GoblinMalTipado, OrcoConfundido, DragonBug
├── solutions/gamefsm.tests/      pruebas con jetbrains.mps.lang.test (17 casos)
├── ejemplos_generados/           archivos .java y .md producidos por el generador
└── docs/                         documento técnico (PDF, APA 7)
```

## Cómo usarlo

1. Instalar **JetBrains MPS 2026.2** y abrir la carpeta `GameFSM` como proyecto.
2. **Build → Rebuild Project**.
3. Abrir `gamefsm.sandbox` → `Goblin` para ver el editor con la tabla. Los modelos de `gamefsm.sandbox.invalidos` muestran los errores subrayados (rojo = error, amarillo = aviso).
4. **Generar:** clic derecho sobre el modelo `gamefsm.sandbox` → *Generate Model*. Los archivos aparecen en `languages/gamefsm.sandbox/source_gen/`.
5. **Ejecutar el Java generado:**
   ```
   javac GoblinFSM.java
   java GoblinFSM
   ```
6. **Pruebas:** clic derecho sobre `gamefsm.tests@tests` → *Run tests* (17/17 en verde).

## Fundamentos teóricos

- Cada personaje es un autómata **M = (Q, Σ, δ, q₀, F)** extendido con variables, guardas y acciones; un escenario es una palabra w ∈ Σ*.
- **Análisis semántico:** el scoping expresa reglas sensibles al contexto que una gramática libre de contexto no puede describir.
- **Sistema de tipos** con reglas `Γ ⊢ e : τ`.
- **Decidibilidad:** sin variables la alcanzabilidad es decidible en O(|Q|+|δ|); con enteros no acotados el modelo simula una máquina de Minsky y el problema es indecidible (teorema de Rice). Por eso el verificador es estructural (sobreaproximación) y se complementa con la simulación.

## Autores

- Santiago Reina Aguilar
- Valentina Camila Martínez Cantor
- Kiara Issari Ortiz Beltrán
