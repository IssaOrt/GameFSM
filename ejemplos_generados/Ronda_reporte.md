# Reporte del razonador: GuardiaNPC (escenario Ronda)

_Generado automaticamente por GameFSM._

## 1. Automata M = (Q, Sigma, delta, q0, F)

- **Q** (estados) = { Vigilar, Alerta, Persecucion, Neutralizado }
- **Sigma** (eventos) = { oirRuido, verIntruso, perderIntruso, capturar, calma }
- **q0** (inicial) = Vigilar
- **F** (finales) = { Neutralizado }
- **|delta|** (transiciones) = 5

## 2. Verificacion de consistencia

- Estados alcanzables desde q0 (BFS): Alerta, Persecucion, Vigilar, Neutralizado
- Estados inalcanzables: (ninguno)

### Errores

- Ninguno

### Avisos

- Ninguno

## 3. Simulacion (semantica operacional small-step)

| Paso | Evento | Transicion | Estado | Variables |
|---|---|---|---|---|
| 0 | - | - | Vigilar | {} |
| 1 | oirRuido | Vigilar -> Alerta | Alerta | {} |
| 2 | calma | Alerta -> Vigilar | Vigilar | {} |
| 3 | oirRuido | Vigilar -> Alerta | Alerta | {} |
| 4 | verIntruso | Alerta -> Persecucion | Persecucion | {} |
| 5 | perderIntruso | Persecucion -> Alerta | Alerta | {} |
| 6 | verIntruso | Alerta -> Persecucion | Persecucion | {} |
| 7 | capturar | Persecucion -> Neutralizado | Neutralizado | {} |

Estado final del escenario: **Neutralizado**
