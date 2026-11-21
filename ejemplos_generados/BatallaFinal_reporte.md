# Reporte del razonador: JefeFinal (escenario BatallaFinal)

_Generado automaticamente por GameFSM._

## 1. Automata M = (Q, Sigma, delta, q0, F)

- **Q** (estados) = { Fase1, Fase2, Fase3, Derrotado }
- **Sigma** (eventos) = { golpe, curarse, tiempo }
- **q0** (inicial) = Fase1
- **F** (finales) = { Derrotado }
- **|delta|** (transiciones) = 8

## 2. Verificacion de consistencia

- Estados alcanzables desde q0 (BFS): Fase2, Derrotado, Fase3, Fase1
- Estados inalcanzables: (ninguno)

### Errores

- Ninguno

### Avisos

- Ninguno

## 3. Simulacion (semantica operacional small-step)

| Paso | Evento | Transicion | Estado | Variables |
|---|---|---|---|---|
| 0 | - | - | Fase1 | {vida=300, enrage=false} |
| 1 | golpe | Fase1 -> Fase1 | Fase1 | {vida=250, enrage=false} |
| 2 | golpe | Fase1 -> Fase1 | Fase1 | {vida=200, enrage=false} |
| 3 | golpe | Fase1 -> Fase2 | Fase2 | {vida=150, enrage=true} |
| 4 | golpe | Fase2 -> Fase2 | Fase2 | {vida=110, enrage=true} |
| 5 | golpe | Fase2 -> Fase2 | Fase2 | {vida=70, enrage=true} |
| 6 | golpe | Fase2 -> Fase3 | Fase3 | {vida=30, enrage=true} |
| 7 | golpe | Fase3 -> Fase3 | Fase3 | {vida=0, enrage=true} |
| 8 | golpe | Fase3 -> Derrotado | Derrotado | {vida=0, enrage=true} |
| 9 | golpe | (estado final: la simulacion se detiene) | Derrotado | {vida=0, enrage=true} |

Estado final del escenario: **Derrotado**
