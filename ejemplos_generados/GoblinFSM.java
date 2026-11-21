// Generado automaticamente por GameFSM a partir del personaje 'Goblin'. No editar a mano.
public class GoblinFSM {

  public enum Estado { PATRULLAR, PERSEGUIR, ATACAR, HUIR, MUERTO }

  private Estado estado = Estado.PATRULLAR;
  private int vida = 100;
  private boolean tieneArma = true;

  /** Funcion de transicion: aplica un evento al estado actual. */
  public void onEvent(String evento) {
    switch (estado) {
      case PATRULLAR:
        if (evento.equals("verJugador")) {
          estado = Estado.PERSEGUIR;
          return;
        }
        break;
      case PERSEGUIR:
        if (evento.equals("verJugador") && tieneArma) {
          estado = Estado.ATACAR;
          return;
        }
        if (evento.equals("perderJugador")) {
          estado = Estado.PATRULLAR;
          return;
        }
        break;
      case ATACAR:
        if (evento.equals("recibirGolpe") && (vida > 30)) {
          int nuevo_vida = (vida - 20);
          vida = nuevo_vida;
          estado = Estado.ATACAR;
          return;
        }
        if (evento.equals("recibirGolpe") && (vida <= 30)) {
          int nuevo_vida = (vida - 20);
          vida = nuevo_vida;
          estado = Estado.HUIR;
          return;
        }
        break;
      case HUIR:
        if (evento.equals("recibirGolpe")) {
          estado = Estado.MUERTO;
          return;
        }
        if (evento.equals("tiempoAgotado")) {
          estado = Estado.PATRULLAR;
          return;
        }
        break;
      case MUERTO:
        break;
      default:
        break;
    }
  }

  public Estado getEstado() {
    return estado;
  }

  public boolean terminado() {
    return false || estado == Estado.MUERTO;
  }

  @Override
  public String toString() {
    return estado + " vida=" + vida + " tieneArma=" + tieneArma + "";
  }

  public static void main(String[] args) {
    String[] escenario = args;
    if (escenario.length == 0) {
      // escenario 'Pelea' del modelo
      escenario = new String[]{"verJugador", "verJugador", "recibirGolpe", "recibirGolpe", "recibirGolpe", "recibirGolpe", "recibirGolpe"};
    }
    GoblinFSM fsm = new GoblinFSM();
    System.out.println("Inicio: " + fsm);
    for (String e : escenario) {
      if (fsm.terminado()) {
        System.out.println("Estado final alcanzado: se detiene");
        break;
      }
      fsm.onEvent(e);
      System.out.println(e + " -> " + fsm);
    }
  }
}
