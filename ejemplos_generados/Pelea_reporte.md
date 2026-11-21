# Reporte del razonador: Goblin (escenario Pelea)

_Generado automaticamente por GameFSM._

## 1. Automata M = (Q, Sigma, delta, q0, F)

- **Q** (estados) = { Patrullar, Perseguir, Atacar, Huir, Muerto }
- **Sigma** (eventos) = { verJugador, perderJugador, recibirGolpe, tiempoAgotado }
- **q0** (inicial) = Patrullar
- **F** (finales) = { Muerto }
- **|delta|** (transiciones) = 7

## 2. Verificacion de consistencia

- Estados alcanzables desde q0 (BFS): Huir, Muerto, Atacar, Patrullar, Perseguir
- Estados inalcanzables: (ninguno)

### Errores

- Ninguno

### Avisos

- Ninguno

## 3. Simulacion (semantica operacional small-step)

| Paso | Evento | Transicion | Estado | Variables |
|---|---|---|---|---|
| 0 | - | - | Patrullar | {vida=100, tieneArma=true} |
| 1 | verJugador | Patrullar -> Perseguir | Perseguir | {vida=100, tieneArma=true} |
| 2 | verJugador | Perseguir -> Atacar | Atacar | {vida=100, tieneArma=true} |
| 3 | recibirGolpe | Atacar -> Atacar | Atacar | {vida=80, tieneArma=true} |
| 4 | recibirGolpe | Atacar -> Atacar | Atacar | {vida=60, tieneArma=true} |
| 5 | recibirGolpe | Atacar -> Atacar | Atacar | {vida=40, tieneArma=true} |
| 6 | recibirGolpe | Atacar -> Atacar | Atacar | {vida=20, tieneArma=true} |
| 7 | recibirGolpe | Atacar -> Huir | Huir | {vida=0, tieneArma=true} |

Estado final del escenario: **Huir**
