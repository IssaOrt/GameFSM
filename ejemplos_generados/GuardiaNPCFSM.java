// Generado automaticamente por GameFSM a partir del personaje 'GuardiaNPC'. No editar a mano.
public class GuardiaNPCFSM {

  public enum Estado { VIGILAR, ALERTA, PERSECUCION, NEUTRALIZADO }

  private Estado estado = Estado.VIGILAR;

  /** Funcion de transicion: aplica un evento al estado actual. */
  public void onEvent(String evento) {
    switch (estado) {
      case VIGILAR:
        if (evento.equals("oirRuido")) {
          estado = Estado.ALERTA;
          return;
        }
        break;
      case ALERTA:
        if (evento.equals("verIntruso")) {
          estado = Estado.PERSECUCION;
          return;
        }
        if (evento.equals("calma")) {
          estado = Estado.VIGILAR;
          return;
        }
        break;
      case PERSECUCION:
        if (evento.equals("perderIntruso")) {
          estado = Estado.ALERTA;
          return;
        }
        if (evento.equals("capturar")) {
          estado = Estado.NEUTRALIZADO;
          return;
        }
        break;
      case NEUTRALIZADO:
        break;
      default:
        break;
    }
  }

  public Estado getEstado() {
    return estado;
  }

  public boolean terminado() {
    return false || estado == Estado.NEUTRALIZADO;
  }

  @Override
  public String toString() {
    return estado + "";
  }

  public static void main(String[] args) {
    String[] escenario = args;
    if (escenario.length == 0) {
      // escenario 'Ronda' del modelo
      escenario = new String[]{"oirRuido", "calma", "oirRuido", "verIntruso", "perderIntruso", "verIntruso", "capturar"};
    }
    GuardiaNPCFSM fsm = new GuardiaNPCFSM();
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
