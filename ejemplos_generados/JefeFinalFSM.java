// Generado automaticamente por GameFSM a partir del personaje 'JefeFinal'. No editar a mano.
public class JefeFinalFSM {

  public enum Estado { FASE1, FASE2, FASE3, DERROTADO }

  private Estado estado = Estado.FASE1;
  private int vida = 300;
  private boolean enrage = false;

  /** Funcion de transicion: aplica un evento al estado actual. */
  public void onEvent(String evento) {
    switch (estado) {
      case FASE1:
        if (evento.equals("golpe") && (vida > 200)) {
          int nuevo_vida = (vida - 50);
          vida = nuevo_vida;
          estado = Estado.FASE1;
          return;
        }
        if (evento.equals("golpe") && (vida <= 200)) {
          int nuevo_vida = (vida - 50);
          boolean nuevo_enrage = true;
          vida = nuevo_vida;
          enrage = nuevo_enrage;
          estado = Estado.FASE2;
          return;
        }
        break;
      case FASE2:
        if (evento.equals("golpe") && ((vida > 100) && enrage)) {
          int nuevo_vida = (vida - 40);
          vida = nuevo_vida;
          estado = Estado.FASE2;
          return;
        }
        if (evento.equals("golpe") && (vida <= 100)) {
          int nuevo_vida = (vida - 40);
          vida = nuevo_vida;
          estado = Estado.FASE3;
          return;
        }
        if (evento.equals("curarse") && (enrage == false)) {
          int nuevo_vida = (vida + 50);
          vida = nuevo_vida;
          estado = Estado.FASE1;
          return;
        }
        break;
      case FASE3:
        if (evento.equals("golpe") && (vida > 0)) {
          int nuevo_vida = (vida - 30);
          vida = nuevo_vida;
          estado = Estado.FASE3;
          return;
        }
        if (evento.equals("golpe") && (vida <= 0)) {
          estado = Estado.DERROTADO;
          return;
        }
        if (evento.equals("tiempo")) {
          estado = Estado.FASE2;
          return;
        }
        break;
      case DERROTADO:
        break;
      default:
        break;
    }
  }

  public Estado getEstado() {
    return estado;
  }

  public boolean terminado() {
    return false || estado == Estado.DERROTADO;
  }

  @Override
  public String toString() {
    return estado + " vida=" + vida + " enrage=" + enrage + "";
  }

  public static void main(String[] args) {
    String[] escenario = args;
    if (escenario.length == 0) {
      // escenario 'BatallaFinal' del modelo
      escenario = new String[]{"golpe", "golpe", "golpe", "golpe", "golpe", "golpe", "golpe", "golpe", "golpe"};
    }
    JefeFinalFSM fsm = new JefeFinalFSM();
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
