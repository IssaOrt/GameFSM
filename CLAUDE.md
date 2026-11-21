# CLAUDE.md — Proyecto GameFSM (DSL en JetBrains MPS)

> Este archivo le da a Claude Code el contexto completo del proyecto.
> Léelo entero antes de ayudar con cualquier tarea.

## 0. Cómo debes trabajar (instrucciones para Claude Code)

### Permisos
- **Kiara (la usuaria) te da permiso para trabajar en su computador:** leer y crear archivos del proyecto, ejecutar comandos en la terminal (git, builds, Java) y, si tienes la herramienta de control del computador, manejar la interfaz de JetBrains MPS (clics, escribir, menús).
- Aun con permiso, **antes de cada cambio grande dile en una frase qué vas a hacer**. Ella necesita entender todo para sustentarlo, así que no quiere sorpresas.
- **Nunca** borres archivos fuera del proyecto, ni hagas `git push --force`, ni reescribas el historial de Git.

### Instalar programas
Kiara te autoriza a **instalar lo que el proyecto necesite**. Así debes hacerlo:

1. **Primero revisa qué ya está instalado** (ej. `git --version`, `java -version`, buscar si existe JetBrains MPS) y detecta el sistema operativo (Windows / macOS / Linux).
2. **Antes de instalar, dile qué vas a instalar, para qué sirve y de dónde lo vas a sacar.** Espera a que ella confirme ("sí", "dale") antes de ejecutar la instalación.
3. **Instala solo desde fuentes oficiales**: jetbrains.com, git-scm.com, el gestor de paquetes del sistema (`winget` en Windows, `brew` en macOS, `apt` en Linux) o la *JetBrains Toolbox*.
4. **Después de instalar, explícale en palabras simples:**
   - qué instalaste y en qué versión,
   - dónde quedó instalado,
   - para qué lo vamos a usar en el proyecto,
   - cómo comprobar que funciona (el comando o el paso para abrirlo).

Lo que probablemente se necesita:
| Programa | Para qué | Notas |
|---|---|---|
| **JetBrains MPS** (última versión estable) | Crear el lenguaje | Trae su propio Java incluido. **Los 3 integrantes deben tener la misma versión**: pregúntale a Kiara cuál usan sus compañeros antes de instalar |
| **Git** | Control de versiones y trabajar en equipo | Si no está, instalarlo y configurar `git config --global user.name` y `user.email` con los datos que ella te dé |
| **GitHub CLI (`gh`)** (opcional) | Crear el repo y clonar desde la terminal | Ella tiene que iniciar sesión con `gh auth login`; tú no escribas sus contraseñas |
| **JDK 17 o superior** (solo si hace falta) | Compilar y correr el Java generado fuera de MPS | Revisa primero si ya hay uno con `java -version` |

**Nunca** escribas ni guardes contraseñas, tokens o datos de inicio de sesión de Kiara. Si algo pide iniciar sesión, pídele que lo haga ella.

### Explicar lo que haces
Después de **cada tarea** (instalar algo, crear conceptos, escribir reglas, hacer un commit…), termina con un bloque así:

> **Qué hice:** …
> **Por qué:** …
> **Qué concepto de la teoría demuestra:** … (si aplica)
> **Cómo lo compruebas tú:** …

Usa palabras simples. Si usas un término técnico, explícalo la primera vez.

### Forma de trabajar
- **Responde siempre en español** y **explica a profundidad**: qué hace cada cosa, por qué se hace así y **con qué concepto de Teoría de la Computación se relaciona**. Kiara y su equipo tienen que poder defender todo en el video. Las secciones 2.1 y 2.2 tienen la explicación base, úsala y amplíala cuando pregunten.
- Después de terminar cada parte, haz un **resumen corto para sustentar**: "qué hicimos, por qué y qué concepto de la teoría demuestra".
- Los archivos de MPS (`*.mps`, `*.mpl`, `*.msd`, `*.devkit`) son **XML con IDs internos de nodos**. Editarlos a mano es arriesgado:
  - **Forma preferida:** trabajar dentro de la interfaz de MPS, ya sea manejándola tú (si tienes control del computador) o dando instrucciones clic a clic.
  - La lógica en BaseLanguage (el Java de MPS) escríbela como **Java normal** para pegarla con **Edit → Paste as Java Statements / Paste as Java Class**.
  - **Si decides editar el XML directamente:** primero haz `git commit` del estado actual, cierra MPS, haz el cambio, vuelve a abrir MPS y ejecuta **Build → Rebuild Project**. Si aparecen errores, revierte con git.
- Haz **commits pequeños y frecuentes** con mensajes claros en español (ej. `structure: conceptos State y Transition`). Haz `git pull` antes de empezar, porque son 3 personas trabajando.
- Antes de proponer algo, revisa que **cumpla el enunciado** (sección 1). Si una idea complica el proyecto sin sumar nota, avísalo.
- **Prioridad:** que funcione y se pueda sustentar > que sea grande. Hay poco tiempo.
- Si no estás seguro de cómo se llama una opción en la versión instalada de MPS, dilo y búscala (menús o `Ctrl+Shift+A` / `Cmd+Shift+A` → *Find Action*). No inventes.

---

## 1. El enunciado (resumen)

- **Asignatura:** Compiladores / Teoría de la Computación — Universidad El Bosque, 2026-2.
- **Grupo:** 3 integrantes. **Herramienta:** JetBrains MPS.
- **Entrega final:** **martes 24 de noviembre de 2026, 23:59** (todo junto).
- **Objetivo:** diseñar, implementar y validar un **DSL con un razonador** (algo que analice los modelos, verifique propiedades formales, detecte inconsistencias o deduzca información).

### Requisitos obligatorios
| Pilar | Qué piden |
|---|---|
| A. Structure + Editor | 10–15 conceptos, con `extends`, interfaces de concepto, composición y referencias. **Al menos una proyección no textual** (tabla con `jetbrains.mps.lang.editor.table`) |
| B. Constraints + Typesystem | **Scoping** (las referencias solo apuntan a elementos válidos) y **reglas de tipos** (inference o checking rules) del dominio |
| C. Razonador | Verificador de consistencia, motor de inferencia y/o simulador operacional |
| D. Generator / TextGen | Un usuario escribe un modelo en la Sandbox y obtiene algo tangible (código ejecutable, JSON o reporte) |

### Entregables
1. **Documento técnico (máx. 4 páginas, PDF):** problema y justificación del DSL, pregunta de investigación, especificación formal del AST y reglas lógicas del razonador, roles.
2. **Repositorio Git** con el proyecto MPS funcional:
   - al menos **3 modelos válidos y 3 inválidos** en la Sandbox,
   - **pruebas unitarias** con `jetbrains.mps.lang.test` (errores detectados + inferencias).
3. **Video de 12–15 min**, con los 3 integrantes hablando:
   - 0:00–3:00 dominio, pregunta y teoría
   - 3:00–7:00 arquitectura en MPS (structure, editor, typesystem, razonador)
   - 7:00–12:00 demo en vivo en la Sandbox
   - 12:00–15:00 complejidad computacional, limitaciones y trabajo futuro

### Evaluación
Fundamentación teórica 25% · **Potencia del razonador 30%** · Calidad técnica en MPS 25% · Video 20%.

---

## 2. El tema elegido: máquinas de estado para personajes de videojuegos

Un DSL para describir **el comportamiento de personajes** (enemigos, NPCs, jefes) como **máquinas de estado finitas extendidas** (con variables, guardas y acciones).

- **Problema:** en los juegos estos comportamientos se programan con muchos `if`/`switch`. Los estados que nunca se activan, los personajes que se "congelan" o las transiciones ambiguas solo se descubren jugando.
- **Pregunta de investigación:** *¿Cómo garantizar, antes de llevarlo al juego, que el comportamiento de un personaje no tenga estados inalcanzables, bloqueos ni ambigüedades?*
- **Por qué un DSL:** el diseñador del juego describe el comportamiento en su propio vocabulario (estados, eventos, guardas) y el razonador verifica propiedades que un lenguaje general no puede revisar.

### Ejemplo de modelo en la Sandbox
```
personaje Goblin {
  variables:
    vida : entero = 100
    tieneArma : booleano = verdadero

  eventos: verJugador, perderJugador, recibirGolpe, tiempoAgotado

  estado inicial Patrullar
  estado Perseguir
  estado Atacar
  estado Huir
  estado final Muerto

  transiciones:
  | Desde     | Evento        | Guarda     | Hacia     | Acción           |
  |-----------|---------------|------------|-----------|------------------|
  | Patrullar | verJugador    |            | Perseguir |                  |
  | Perseguir | verJugador    | tieneArma  | Atacar    |                  |
  | Perseguir | perderJugador |            | Patrullar |                  |
  | Atacar    | recibirGolpe  | vida > 30  | Atacar    | vida = vida - 20 |
  | Atacar    | recibirGolpe  | vida <= 30 | Huir      | vida = vida - 20 |
  | Huir      | recibirGolpe  |            | Muerto    |                  |
  | Huir      | tiempoAgotado |            | Patrullar |                  |
}

escenario Pelea para Goblin:
  verJugador, verJugador, recibirGolpe, recibirGolpe, recibirGolpe, recibirGolpe, recibirGolpe
```

---

## 2.1 Explicación a fondo: la teoría detrás del proyecto

### ¿Qué es un DSL?
Un **Lenguaje de Dominio Específico** es un lenguaje hecho para un solo tipo de problema. Java o Python sirven para todo (lenguajes de propósito general). SQL solo sirve para consultar bases de datos, HTML solo para páginas web: esos son DSLs. A cambio de ser limitado, un DSL:
- habla el idioma del experto (aquí, un diseñador de videojuegos piensa en "estados" y "eventos", no en `switch`),
- **permite verificar cosas que un lenguaje general no puede**, porque el lenguaje "sabe" qué significa cada pieza.

### ¿Qué es una máquina de estados finita (autómata)?
Es un modelo matemático de algo que **siempre está en uno de un número finito de estados** y **cambia de estado cuando llega un evento**. Formalmente un autómata finito es una 5-tupla **M = (Q, Σ, δ, q₀, F)**:

| Símbolo | Qué es | En el Goblin |
|---|---|---|
| Q | conjunto finito de estados | {Patrullar, Perseguir, Atacar, Huir, Muerto} |
| Σ | alfabeto (los símbolos de entrada) | {verJugador, perderJugador, recibirGolpe, tiempoAgotado} |
| δ | función/relación de transición | Patrullar --verJugador--> Perseguir, … |
| q₀ | estado inicial | Patrullar |
| F | estados finales (de aceptación) | {Muerto} |

Un **escenario** (secuencia de eventos) es como una **palabra** w ∈ Σ* que se le da al autómata, y la simulación es "correr el autómata sobre esa palabra", exactamente como en clase cuando se verifica si un AFD acepta una cadena.

- **Determinista (AFD):** para cada estado y cada evento hay **como máximo una** transición posible. Un personaje de videojuego **debe** ser determinista: si con el mismo evento puede ir a dos lugares, el juego se comporta de forma impredecible. Por eso el razonador detecta el **no determinismo**.
- **Máquina de estados extendida:** además de estados tiene **variables** (vida, tieneArma), **guardas** (condiciones `vida > 30` que deben cumplirse para tomar la transición) y **acciones** (`vida = vida - 20`). Es más expresiva que un autómata puro, y eso tiene consecuencias (ver decidibilidad).

### Las propiedades que verifica el razonador, explicadas
- **Estado inalcanzable:** ningún camino desde el estado inicial llega a él. Es código muerto: el diseñador lo creó pero nunca se va a ver en el juego. Se encuentra con **BFS** (búsqueda en anchura): partimos de q₀, visitamos todos sus vecinos, luego los vecinos de los vecinos, y así. Lo que no se visitó es inalcanzable.
- **Deadlock (bloqueo):** un estado que **no es final** y del que **no sale ninguna transición**. El personaje queda "congelado" para siempre: es un bug típico de juegos.
- **Estado trampa:** se puede llegar a él, pero desde ahí **nunca se puede llegar a un estado final** (el personaje queda dando vueltas en un ciclo eterno, ej. un jefe que nunca puede morir). Se encuentra haciendo BFS **al revés**: desde los estados finales siguiendo las flechas en sentido contrario. Lo que no se alcanza así no puede terminar.
- **No determinismo:** dos transiciones salen del mismo estado con el mismo evento y sus guardas **pueden ser verdaderas al mismo tiempo**. Ejemplo: `vida > 30` y `vida > 20`: con vida = 50 ambas se cumplen y no se sabe cuál tomar.
- **Evento sin usar:** un evento declarado que ninguna transición escucha. No es un error grave, pero indica que algo falta.

### Gramáticas y la jerarquía de Chomsky (por qué hay varios aspectos en MPS)
- La **forma** del lenguaje (qué piezas lo componen y cómo se anidan) se describe con una **gramática libre de contexto** (Tipo 2). En MPS eso es el aspecto **Structure**.
- Pero hay reglas que una gramática libre de contexto **no puede expresar**, como "la transición solo puede ir a un estado declarado en este mismo personaje" o "debe haber exactamente un estado inicial". Esas reglas dependen del **contexto** (de otras partes del programa). En compiladores esto se llama **análisis semántico**, y en MPS lo cubren **Constraints** (scoping) y **Typesystem**.

### Sistemas de tipos
Un **sistema de tipos** asigna un tipo a cada expresión y rechaza programas donde los tipos no encajan. Se escribe con **reglas de inferencia**: arriba de la línea van las premisas, abajo la conclusión. `Γ ⊢ e : τ` se lee "en el contexto Γ (las variables declaradas), la expresión e tiene tipo τ".
Ejemplo: si `e1` es entero y `e2` es entero, entonces `e1 < e2` es booleano. Por eso `vida + 5` **no puede** ser una guarda: su tipo es entero, no booleano.

### Semántica: qué *significa* un programa
- **Semántica operacional:** el significado se define por **cómo se ejecuta paso a paso**. Una configuración ⟨q, σ⟩ = (estado actual, valores de las variables). Cada evento produce un paso ⟨q, σ⟩ → ⟨q', σ'⟩. El **simulador** implementa justo esto.
- **Semántica denotacional:** el significado de una expresión es **el valor matemático que denota**. `⟦vida > 30⟧σ` = verdadero si σ(vida) > 30. El **evaluador de expresiones** (`eval`) implementa esto recursivamente sobre el árbol.
- **Traducción dirigida por la sintaxis:** el **generador** recorre el árbol y traduce cada nodo según su tipo, igual que la fase de generación de código de un compilador.

### Decidibilidad (la parte que más luce en el análisis crítico)
- Un problema es **decidible** si existe un algoritmo que **siempre termina** y responde sí o no correctamente.
- **Sin variables**, el grafo tiene un número finito de estados y la alcanzabilidad es decidible en tiempo lineal O(|Q| + |δ|).
- **Con variables enteras sin límite** que se pueden sumar, restar y comparar, la máquina puede simular una **máquina de contadores de Minsky**, que es **tan poderosa como una máquina de Turing**. Por el teorema de Rice / el problema de la parada, preguntar "¿se llega alguna vez al estado X?" se vuelve **indecidible** en general.
- **Solución de diseño:** el verificador analiza **solo la estructura del grafo** (ignora las guardas). Eso es una **sobreaproximación**: considera posibles más caminos de los que realmente hay. Consecuencia: si dice "inalcanzable", es seguro que lo es; pero podría no detectar un estado que es inalcanzable *por culpa de las guardas*. La **simulación** complementa con casos concretos.

## 2.2 Explicación a fondo: cómo funciona JetBrains MPS

- **MPS es un "language workbench"**: una herramienta para *crear lenguajes*. No se escribe una gramática con texto y un parser, se define directamente el **árbol (AST)**.
- **Edición proyectiva:** en un editor normal escribes texto y un parser lo convierte en árbol. En MPS **editas el árbol directamente** y lo que ves en pantalla es una *proyección* del árbol (puede ser texto, una tabla o un diagrama). Ventajas: **no hay ambigüedad** (nunca hay dos formas de interpretar lo escrito), se pueden mezclar notaciones (texto + tablas) y no hace falta escribir un parser. Desventaja: escribir se siente distinto a un editor de texto (se usa mucho `Ctrl+Espacio` para autocompletar).
- **Proyecto, lenguaje y solución:**
  - Un **lenguaje** (`gamefsm`) define el DSL.
  - Una **solución** (`gamefsm.sandbox`) es un módulo donde se *usa* el lenguaje: ahí se escriben los Goblins.
  - Analogía con la teoría: el lenguaje es la **gramática**, los modelos de la sandbox son **palabras/programas** del lenguaje.
- **Aspectos de un lenguaje** (cada uno es una carpeta dentro del lenguaje):
  - **Structure:** los **conceptos** (cada concepto es un tipo de nodo del árbol). Cada concepto tiene **propiedades** (datos simples: texto, número, booleano), **children** (nodos hijos: composición, el hijo "vive dentro" del padre) y **references** (enlaces a otros nodos que ya existen en otra parte). Un concepto puede ser **abstracto** (no se instancia directamente, como `State`), **extender** a otro (herencia: `InitialState extends State`) e **implementar interfaces de concepto** (`INamedConcept` le da la propiedad `name`). Un concepto marcado como **root** puede ser un archivo/raíz propio (`Character`, `Scenario`).
  - **Editor:** define cómo se ve cada concepto. Se arma con **celdas**: constantes (texto fijo como `estado inicial`), celdas de propiedad (`{name}`), celdas de hijos (`%transitions%`), celdas de referencia (`(%target% -> {name})`), colecciones verticales/horizontales y **tablas** (del lenguaje `jetbrains.mps.lang.editor.table`).
  - **Constraints:** reglas sobre dónde puede ir un nodo y, sobre todo, **scopes**: qué nodos se pueden elegir en una referencia.
  - **Typesystem:** *inference rules* (calculan el tipo de un nodo con ecuaciones `typeof(nodo) :==: <tipo>`) y *checking rules* (revisan una condición y si falla marcan `error` o `warning` en el nodo). **El razonador se implementa con checking rules**, para que los problemas aparezcan subrayados en rojo/amarillo en tiempo real mientras el usuario escribe.
  - **Behavior:** métodos que se le agregan a los conceptos (como métodos de una clase). Aquí van `alcanzables()`, `deadlocks()`, `eval()`, `simular()`.
  - **Intentions:** acciones rápidas que aparecen con `Alt+Enter` sobre un nodo (ej. "Simular escenario").
  - **Generator:** traduce el modelo a otro lenguaje con **reglas de mapeo** y **plantillas** con *macros* (`$LOOP$` repite por cada elemento, `$COPY_SRC$` copia un valor, `$IF$` incluye algo si se cumple una condición, `$[ ]` sustituye un texto).
  - **TextGen:** convierte un nodo directamente en texto (útil para el reporte `.md` o para generar Java como texto si el generador se complica).
- **BaseLanguage:** el "Java" de MPS. Casi todo el código dentro de behavior, typesystem y constraints se escribe en BaseLanguage, más el lenguaje **smodel** para navegar el árbol (`node.states`, `node.ancestor<concept = Character>`, `node.descendants<concept = Transition>`, `.where({it => ...})`, `.select(...)`).
- **jetbrains.mps.lang.test:** permite escribir pruebas como modelos anotados: se pega un modelo inválido y se le pone la anotación *has error* donde debe salir el error. Si el typesystem no lo detecta, el test falla.
- **Atajos útiles:** `Ctrl+Espacio` autocompletar · `Alt+Enter` intentions · `Ctrl+F9` / *Make* compilar · *Build → Rebuild Project* recompilar todo · `Ctrl+Shift+A` buscar cualquier acción · clic derecho en un modelo → *Preview Generated Text* para ver lo que genera.

---

## 3. Estructura del proyecto MPS

```
GameFSM/
├── languages/gamefsm/            ← el lenguaje
│   ├── structure                 ← conceptos (AST)
│   ├── editor                    ← proyecciones (incluye la tabla)
│   ├── constraints               ← scoping
│   ├── typesystem                ← tipos + checking rules del razonador
│   ├── behavior                  ← métodos de ayuda en los conceptos
│   ├── intentions                ← (opcional) acciones rápidas como "Simular escenario"
│   └── generator                 ← Java + reporte
├── solutions/gamefsm.sandbox     ← modelos de ejemplo (válidos e inválidos)
├── solutions/gamefsm.tests       ← pruebas jetbrains.mps.lang.test
└── .gitignore
```

- **Namespace del lenguaje:** `gamefsm`.
- **Dependencia para tablas:** agregar `jetbrains.mps.lang.editor.table` en las *Used Languages* del aspecto editor.

### `.gitignore` (ya debe existir)
```
source_gen/
source_gen.caches/
classes_gen/
**/source_gen/
**/classes_gen/
.mps/workspace.xml
.mps/shelf/
*.iml
out/
```

---

## 4. Structure — el metamodelo (AST)

> Teoría: el aspecto Structure es la **gramática abstracta** del lenguaje, una gramática de árboles. Cada concepto es un no terminal; los hijos son composición (el árbol) y las referencias convierten el árbol en un grafo (enlaces a declaraciones).

### Interfaces
| Interfaz | Qué aporta |
|---|---|
| `INamedConcept` (de MPS) | propiedad `name` |
| `ITyped` (propia) | hijo `type : Type [1]` — la implementan `Variable` y luego se usa en el typesystem |

### Conceptos
| # | Concepto | Tipo | Propiedades | Hijos (composición) | Referencias |
|---|---|---|---|---|---|
| 1 | `Character` | **raíz**, implements `INamedConcept` | — | `variables: Variable[0..n]`, `events: Event[1..n]`, `states: State[1..n]`, `transitions: Transition[0..n]` | — |
| 2 | `State` | **abstracto**, implements `INamedConcept` | — | — | — |
| 3 | `InitialState` | extends `State` | — | — | — |
| 4 | `NormalState` | extends `State` | — | — | — |
| 5 | `FinalState` | extends `State` | — | — | — |
| 6 | `Event` | implements `INamedConcept` | — | — | — |
| 7 | `Transition` | concepto | — | `guard: Expression[0..1]`, `action: Assignment[0..n]` | `source → State`, `event → Event`, `target → State` |
| 8 | `Variable` | implements `INamedConcept`, `ITyped` | — | `type: Type[1]`, `initialValue: Expression[1]` | — |
| 9 | `Type` | **abstracto** | — | — | — |
| 10 | `IntType` | extends `Type` | alias `entero` | — | — |
| 11 | `BoolType` | extends `Type` | alias `booleano` | — | — |
| 12 | `Expression` | **abstracto** | — | — | — |
| 13 | `IntLiteral` | extends `Expression` | `value: integer` | — | — |
| 14 | `BoolLiteral` | extends `Expression` | `value: boolean` | — | — |
| 15 | `VariableRef` | extends `Expression` | — | — | `variable → Variable` |
| 16 | `BinaryExpression` | **abstracto**, extends `Expression` | — | `left: Expression[1]`, `right: Expression[1]` | — |
| 17 | `ComparisonExpr` | extends `BinaryExpression` | `operator: enum {<, <=, >, >=, ==, !=}` | — | — |
| 18 | `ArithmeticExpr` | extends `BinaryExpression` | `operator: enum {+, -}` | — | — |
| 19 | `AndExpr` | extends `BinaryExpression` | — | — | — |
| 20 | `Assignment` | concepto | — | `value: Expression[1]` | `variable → Variable` |
| 21 | `Scenario` | **raíz**, implements `INamedConcept` | — | `steps: ScenarioStep[1..n]` | `character → Character` |
| 22 | `ScenarioStep` | concepto | — | — | `event → Event` |

> Si falta tiempo, `ArithmeticExpr` y `AndExpr` son lo primero que se puede quitar. El mínimo pedido son 10–15 conceptos y aquí hay de sobra.

### Gramática abstracta formal (para el documento)
```
Character   ::= name Variable* Event+ State+ Transition*
State       ::= InitialState | NormalState | FinalState
Transition  ::= source:↑State event:↑Event [guard:Expression] target:↑State Assignment*
Variable    ::= name Type initialValue:Expression
Type        ::= IntType | BoolType
Expression  ::= IntLiteral | BoolLiteral | VariableRef
              | Expression op Expression        (op ∈ {<,<=,>,>=,==,!=,+,-,and})
Assignment  ::= ↑Variable "=" Expression
Scenario    ::= name ↑Character ScenarioStep+
ScenarioStep::= ↑Event
```
(`↑X` = referencia a un nodo X ya declarado, no un hijo.)

---

## 5. Editor — sintaxis concreta

> Teoría: MPS usa **edición proyectiva**: el usuario edita el AST directamente y el editor es solo una "proyección". No hay parser, por lo que **no hay ambigüedad gramatical** (no hace falta resolver conflictos LL/LR).

- `Character`: proyección textual con bloques (`personaje X { ... }`) y secciones `variables:`, `eventos:` y estados uno por línea con su palabra clave (`estado inicial`, `estado`, `estado final`).
- **Transiciones: proyección en TABLA** (`jetbrains.mps.lang.editor.table`) con columnas **Desde | Evento | Guarda | Hacia | Acción**. ← requisito de proyección no textual.
- Expresiones: proyección infija (`vida > 30`). Configurar los alias de los conceptos (`>`, `+`, `and`, `verdadero`/`falso`) para que el autocompletado funcione.
- `Scenario`: `escenario X para <Character>:` y la lista de eventos separada por comas.

---

## 6. Constraints — scoping

> Teoría: una gramática libre de contexto no puede expresar "el estado debe estar declarado en este mismo personaje". Eso es **sensibilidad al contexto** y MPS lo resuelve con constraints de alcance.

| Referencia | Alcance válido |
|---|---|
| `Transition.source` / `Transition.target` | solo los `states` del `Character` que contiene la transición |
| `Transition.event` | solo los `events` de ese `Character` |
| `VariableRef.variable` / `Assignment.variable` | solo las `variables` de ese `Character` |
| `ScenarioStep.event` | solo los `events` del `Character` referenciado por el `Scenario` |

Se implementan como *referent constraints* con un *scope* (`node.ancestor<concept = Character>.states` etc.).

Otra constraint útil: `FinalState` **no puede ser `source`** de una transición (o se valida en el typesystem).

---

## 7. Typesystem — tipos y validaciones

> Teoría: **reglas de inferencia de tipos** (estilo Γ ⊢ e : τ) y análisis estático.

### Inference rules
| Expresión | Tipo |
|---|---|
| `IntLiteral` | `IntType` |
| `BoolLiteral` | `BoolType` |
| `VariableRef` | el `type` de la variable referenciada |
| `ArithmeticExpr` | `IntType` (y ambos lados deben ser `IntType`) |
| `ComparisonExpr` | `BoolType` (`<,<=,>,>=` exigen `IntType` en ambos lados; `==,!=` exigen el mismo tipo) |
| `AndExpr` | `BoolType` (ambos lados `BoolType`) |

Reglas formales para el documento:
```
           Γ ⊢ e1 : int   Γ ⊢ e2 : int                 Γ ⊢ e1 : bool   Γ ⊢ e2 : bool
(COMP)  ─────────────────────────────────    (AND)  ───────────────────────────────────
           Γ ⊢ e1 < e2 : bool                          Γ ⊢ e1 and e2 : bool

           Γ ⊢ g : bool                                Γ(x) = τ   Γ ⊢ e : τ
(GUARD) ─────────────────────                 (ASIG) ─────────────────────────
           guarda g es válida                          x = e es válida
```

### Checking rules (errores para los modelos inválidos)
| Regla | Mensaje (en español) |
|---|---|
| La guarda de una transición debe ser `BoolType` | "La guarda debe ser booleana" |
| El tipo de la asignación debe coincidir con el de la variable | "No se puede asignar un valor de tipo X a una variable de tipo Y" |
| El valor inicial de la variable debe coincidir con su tipo | "Valor inicial incompatible con el tipo" |
| Exactamente **un** `InitialState` por `Character` | "Debe existir exactamente un estado inicial" |
| Nombres de estados/eventos/variables únicos | "Nombre duplicado: X" |
| Un `FinalState` no tiene transiciones de salida | "Un estado final no puede tener transiciones de salida" |

---

## 8. EL RAZONADOR (núcleo del proyecto — 30% de la nota)

La máquina de cada personaje es un autómata **M = (Q, Σ, δ, q₀, F)**:
- Q = estados, Σ = eventos, q₀ = el `InitialState`, F = los `FinalState`.
- δ ⊆ Q × Σ × Guarda × Q = las transiciones.

Se implementa como **checking rules** del typesystem (no-typesystem rules), de modo que los problemas salen subrayados en el editor en tiempo real. La lógica de grafos va en métodos del aspecto **behavior** de `Character` para reutilizarla en el generador del reporte.

### 8.1 Verificador de consistencia
| Propiedad | Definición formal | Algoritmo | Severidad | Complejidad |
|---|---|---|---|---|
| **Estado inalcanzable** | q ∉ Reach(q₀), con Reach el cierre transitivo de δ desde q₀ | **BFS** desde q₀ | Warning | O(\|Q\|+\|δ\|) |
| **Deadlock** | q ∉ F y no existe (q, e, g, q') ∈ δ | Recorrer estados | Error | O(\|Q\|+\|δ\|) |
| **Estado trampa** (no puede terminar) | q ∈ Reach(q₀) y ningún f ∈ F es alcanzable desde q | **BFS en el grafo invertido** desde F | Warning | O(\|Q\|+\|δ\|) |
| **No determinismo** | ∃ dos transiciones (q, e, g₁, q₁), (q, e, g₂, q₂) distintas con g₁ ∧ g₂ satisfacible | Comparar pares por (estado, evento) | Error | O(\|δ\|²) |
| **Evento sin usar** | e ∈ Σ y no aparece en δ | Recorrido | Warning | O(\|Σ\|+\|δ\|) |

**No determinismo (versión simple y decidible):** dos transiciones con mismo `source` y mismo `event` son conflictivas si:
- alguna de las dos no tiene guarda, **o**
- ambas guardas son comparaciones sobre la **misma variable entera con constantes** y los intervalos se solapan (ej. `vida > 30` y `vida >= 20` se solapan; `vida > 30` y `vida <= 30` no).
- En cualquier otro caso: **warning** "posible no determinismo (no se pudo decidir)". Esto se explica en el video como limitación.

### Pseudocódigo (BFS de alcanzabilidad)
```java
Set<State> alcanzables(Character c) {
  State q0 = inicial(c);
  Set<State> visit = new HashSet<>();
  Deque<State> cola = new ArrayDeque<>();
  visit.add(q0); cola.add(q0);
  while (!cola.isEmpty()) {
    State q = cola.poll();
    for (Transition t : c.transitions)
      if (t.source == q && visit.add(t.target)) cola.add(t.target);
  }
  return visit;
}
// inalcanzables = c.states − alcanzables(c)
// trampa = alcanzables(c) − coAlcanzables(c), donde coAlcanzables es el BFS
//          en el grafo invertido partiendo de todos los FinalState
```

### 8.2 Simulador operacional
- **Semántica operacional (small-step):** una configuración es ⟨q, σ⟩ (estado actual + valores de las variables).
```
  (q, e, g, q', A) ∈ δ     ⟦g⟧σ = verdadero
──────────────────────────────────────────────    (PASO)
        ⟨q, σ⟩  ──e──▶  ⟨q', ⟦A⟧σ⟩

  ninguna transición de q con evento e tiene guarda verdadera
──────────────────────────────────────────────────────────────    (IGNORA)
        ⟨q, σ⟩  ──e──▶  ⟨q, σ⟩
```
- Toma un `Scenario`, parte de ⟨q₀, σ₀⟩ (valores iniciales), aplica los eventos en orden y produce una **traza**:

| Paso | Evento | Transición usada | Estado | Variables |
|---|---|---|---|---|
| 0 | — | — | Patrullar | vida=100, tieneArma=true |
| 1 | verJugador | Patrullar→Perseguir | Perseguir | vida=100, … |

- Si llega a un `FinalState`, se detiene y lo indica.
- Necesita un **intérprete de expresiones**: un método `eval(Expression, Map<Variable,Object>)` en behavior (recursivo sobre el AST, es decir, **semántica denotacional** de las expresiones).
- **Cómo se dispara:** una *intention* "Simular escenario" sobre el `Scenario` que muestre la traza (o la escriba en el reporte generado).

### 8.3 Decidibilidad (para el análisis crítico del video)
- **Sin variables**, la máquina es un AFD/AFN y la alcanzabilidad es **decidible en tiempo lineal**.
- **Con variables enteras no acotadas** (sumar/restar y comparar), el modelo es tan expresivo como una **máquina de contadores (Minsky)**, que es Turing-completa. Por eso la alcanzabilidad exacta es **indecidible** en general.
- **Decisión de diseño:** el verificador hace un **análisis estructural** (ignora guardas), que es una **sobreaproximación**: puede no ver que un estado es inalcanzable por las guardas, pero si dice "inalcanzable" es seguro. La simulación complementa con casos concretos.
- **Trabajo futuro:** acotar los dominios de las variables (ej. vida ∈ [0,100]) para que el espacio de estados sea finito y hacer **model checking** exhaustivo; usar un solver SMT para decidir solapamiento de guardas.

---

## 9. Generator

Dos salidas a partir de un `Character` válido:

1. **Clase Java ejecutable** (`<Nombre>FSM.java`):
```java
public class GoblinFSM {
  public enum Estado { PATRULLAR, PERSEGUIR, ATACAR, HUIR, MUERTO }
  private Estado estado = Estado.PATRULLAR;
  private int vida = 100;
  private boolean tieneArma = true;

  public void onEvent(String evento) {
    switch (estado) {
      case ATACAR:
        if (evento.equals("recibirGolpe") && vida > 30) { vida = vida - 20; estado = Estado.ATACAR; return; }
        if (evento.equals("recibirGolpe") && vida <= 30) { vida = vida - 20; estado = Estado.HUIR; return; }
        break;
      // ... un case por estado
    }
  }
  public Estado getEstado() { return estado; }
  public static void main(String[] args) { /* corre el escenario y imprime la traza */ }
}
```
   - Se hace con **model-to-model** hacia BaseLanguage (*root mapping rule* `Character → ClassConcept` con *macros* `$LOOP$`/`$COPY_SRC$`/`$IF$`), o, si se complica, con **TextGen** escribiendo el texto Java directamente (más rápido de hacer).
2. **Reporte del razonador** (`<Nombre>_reporte.md` vía TextGen): lista de estados alcanzables/inalcanzables, deadlocks, trampas, conflictos de no determinismo y la traza de los escenarios.

> Teoría: el generador es una **traducción dirigida por la sintaxis** (como en compiladores): cada nodo del AST se traduce según su concepto.

---

## 10. Casos de prueba

### Sandbox — 3 modelos válidos
1. **Goblin** (el ejemplo de arriba): sin errores, con escenario de pelea.
2. **Semáforo / NPC Guardia**: sin variables (autómata puro), para mostrar el caso decidible.
3. **Jefe Final** con fases (vida, `enrage : booleano`) y varias guardas que no se solapan.

### Sandbox — 3 modelos inválidos (cada uno muestra un tipo de error)
1. **Errores de tipos:** guarda `vida + 5` (no booleana) y asignación `vida = verdadero`.
2. **Errores de contexto/scoping:** dos estados iniciales, nombre de estado duplicado y transición que sale de un estado final.
3. **Errores del razonador:** estado `Bailar` inalcanzable, estado `Huir` sin salida (deadlock), dos transiciones `Atacar --recibirGolpe-->` sin guarda (no determinismo) y un evento sin usar.

### Tests automáticos (`gamefsm.tests`, lenguaje `jetbrains.mps.lang.test`)
- `NodesTestCase` con anotaciones **has error** / **has warning** sobre los nodos de los modelos inválidos (prueban typesystem y razonador).
- Tests de métodos de behavior: `alcanzables()` devuelve el conjunto esperado y `simular()` termina en el estado esperado con los valores esperados (prueban inferencias y simulación).
- Al menos **un test por regla** del typesystem y **uno por propiedad** del razonador.

---

## 11. Mapeo con Teoría de la Computación (para documento y video)

| Aspecto MPS | Concepto teórico | En GameFSM |
|---|---|---|
| Structure | AST, gramática de árboles | 22 conceptos, herencia de `State`/`Expression`/`Type`, hijos vs referencias |
| Editor | Sintaxis concreta, edición proyectiva sin ambigüedad | Proyección textual + **tabla** de transiciones |
| Constraints | Gramática sensible al contexto, scoping | Referencias solo a estados/eventos/variables del mismo personaje |
| Typesystem | Reglas de inferencia de tipos, análisis estático | Guardas booleanas, asignaciones compatibles, un solo estado inicial |
| Razonador | Autómatas, grafos, lógica, decidibilidad | BFS (alcanzabilidad), deadlocks, no determinismo, simulación small-step, máquinas de contadores |
| Generator | Semántica / traducción dirigida por sintaxis | AST → clase Java ejecutable + reporte |

---

## 12. Roles del equipo (completar)

| Integrante | Rol principal | En el video |
|---|---|---|
| _(nombre)_ | Structure + Editor | Teoría + arquitectura (structure/editor) |
| _(nombre)_ | Constraints + Typesystem + tests | Typesystem + demo de errores |
| _(nombre)_ | Razonador + Generator | Razonador + simulación + análisis crítico |

Regla de Git: cada uno trabaja en **su aspecto**; `git pull` antes de empezar, *Rebuild Project* sin errores antes de cada `push`.

---

## 13. Cronograma (desde el sábado 21 de nov.)

| Día | Meta | Estado |
|---|---|---|
| Sáb 21 | Proyecto creado + repo + **Structure** completo + **Editor** (con la tabla) | ☐ |
| Dom 22 | **Constraints + Typesystem** + modelos de la Sandbox + **Razonador** (verificador) | ☐ |
| Lun 23 (mañana) | **Simulador + Generator + tests** | ☐ |
| Lun 23 (tarde/noche) | **Documento PDF** (4 págs.) + guion del video | ☐ |
| Mar 24 | **Grabar y editar el video**, revisión final y entrega **antes de las 23:59** | ☐ |

Si el tiempo no alcanza, el orden de prioridad es:
**Structure → Editor con tabla → Scoping → Typesystem → Verificador (inalcanzables + deadlocks) → Tests → Generator (TextGen) → Simulador → No determinismo con intervalos.**

---

## 14. Checklist final de entrega
- [ ] 10–15+ conceptos con `extends`, interfaces, hijos y referencias
- [ ] Tabla de transiciones funcionando
- [ ] Scoping en todas las referencias
- [ ] Inference + checking rules
- [ ] Razonador: inalcanzables, deadlocks, trampas, no determinismo, eventos sin usar
- [ ] Simulador con traza
- [ ] Generator: Java ejecutable + reporte
- [ ] 3 modelos válidos + 3 inválidos en la Sandbox
- [ ] Tests con `jetbrains.mps.lang.test` en verde
- [ ] `.gitignore` correcto y repo actualizado
- [ ] PDF de máximo 4 páginas
- [ ] Video de 12–15 min con los 3 integrantes
