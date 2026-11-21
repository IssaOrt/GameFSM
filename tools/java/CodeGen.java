package gamefsm.textGen;

import gamefsm.typesystem.Ast;
import gamefsm.typesystem.GameFsmChecks;
import gamefsm.typesystem.Razonador;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Generador de GameFSM (traduccion dirigida por la sintaxis):
 * cada concepto del AST se traduce a un fragmento de texto segun su tipo.
 *   Character -> clase Java ejecutable <Nombre>FSM.java
 *   Scenario  -> reporte Markdown <Nombre>_reporte.md (razonador + simulacion)
 */
public class CodeGen {

  // ============================================================ Java

  public static String javaFileName(SNode c) {
    return Ast.name(c) + "FSM";
  }

  public static String constant(SNode state) {
    return Ast.name(state).toUpperCase();
  }

  /** Traduce una expresion del DSL a una expresion Java. */
  public static String expr(SNode e) {
    String k = Ast.kind(e);
    if (k.equals("IntLiteral")) {
      return Ast.prop(e, "value");
    }
    if (k.equals("BoolLiteral")) {
      return ("true".equals(Ast.prop(e, "value")) ? "true" : "false");
    }
    if (k.equals("VariableRef")) {
      return Ast.name(Ast.ref(e, "variable"));
    }
    String op = GameFsmChecks.operator(k);
    if (op.equals("and")) {
      op = "&&";
    }
    return "(" + expr(Ast.child(e, "left")) + " " + op + " " + expr(Ast.child(e, "right")) + ")";
  }

  public static String javaType(SNode variable) {
    return (GameFsmChecks.BOOLEANO.equals(GameFsmChecks.declaredType(variable)) ? "boolean" : "int");
  }

  /** Escenarios del mismo modelo que simulan a este personaje. */
  public static List<SNode> scenariosOf(SNode c) {
    List<SNode> result = new ArrayList<SNode>();
    if (c.getModel() == null) {
      return result;
    }
    for (SNode root : c.getModel().getRootNodes()) {
      if (Ast.is(root, "Scenario") && Ast.ref(root, "character") == c) {
        result.add(root);
      }
    }
    return result;
  }

  public static String javaClass(SNode c) {
    String cls = javaFileName(c);
    SNode q0 = Ast.initialState(c);
    StringBuilder sb = new StringBuilder();
    sb.append("// Generado automaticamente por GameFSM a partir del personaje '" + Ast.name(c) + "'. No editar a mano.\n");
    sb.append("public class " + cls + " {\n\n");
    // Q como enum
    sb.append("  public enum Estado {");
    String sep = " ";
    for (SNode s : Ast.children(c, "states")) {
      sb.append(sep + constant(s));
      sep = ", ";
    }
    sb.append(" }\n\n");
    sb.append("  private Estado estado = " + (q0 == null ? "null" : "Estado." + constant(q0)) + ";\n");
    // variables (sigma inicial)
    for (SNode v : Ast.children(c, "variables")) {
      sb.append("  private " + javaType(v) + " " + Ast.name(v) + " = " + expr(Ast.child(v, "initialValue")) + ";\n");
    }
    // delta como switch
    sb.append("\n  /** Funcion de transicion: aplica un evento al estado actual. */\n");
    sb.append("  public void onEvent(String evento) {\n");
    sb.append("    switch (estado) {\n");
    for (SNode s : Ast.children(c, "states")) {
      sb.append("      case " + constant(s) + ":\n");
      for (SNode t : Ast.children(c, "transitions")) {
        if (Ast.source(t) != s || Ast.event(t) == null || Ast.target(t) == null) {
          continue;
        }
        String cond = "evento.equals(\"" + Ast.name(Ast.event(t)) + "\")";
        if (Ast.guard(t) != null) {
          cond = cond + " && " + expr(Ast.guard(t));
        }
        sb.append("        if (" + cond + ") {\n");
        List<SNode> asg = Ast.assignments(t);
        for (SNode a : asg) {
          SNode v = Ast.ref(a, "variable");
          sb.append("          " + javaType(v) + " nuevo_" + Ast.name(v) + " = " + expr(Ast.child(a, "value")) + ";\n");
        }
        for (SNode a : asg) {
          String n = Ast.name(Ast.ref(a, "variable"));
          sb.append("          " + n + " = nuevo_" + n + ";\n");
        }
        sb.append("          estado = Estado." + constant(Ast.target(t)) + ";\n");
        sb.append("          return;\n");
        sb.append("        }\n");
      }
      sb.append("        break;\n");
    }
    sb.append("      default:\n        break;\n");
    sb.append("    }\n  }\n\n");
    sb.append("  public Estado getEstado() {\n    return estado;\n  }\n\n");
    // F
    sb.append("  public boolean terminado() {\n    return false");
    for (SNode s : Ast.children(c, "states")) {
      if (Ast.is(s, "FinalState")) {
        sb.append(" || estado == Estado." + constant(s));
      }
    }
    sb.append(";\n  }\n\n");
    sb.append("  @Override\n  public String toString() {\n    return estado + \"");
    for (SNode v : Ast.children(c, "variables")) {
      sb.append(" " + Ast.name(v) + "=\" + " + Ast.name(v) + " + \"");
    }
    sb.append("\";\n  }\n\n");
    // main: corre el escenario
    List<SNode> scs = scenariosOf(c);
    sb.append("  public static void main(String[] args) {\n");
    sb.append("    String[] escenario = args;\n");
    if (!(scs.isEmpty())) {
      sb.append("    if (escenario.length == 0) {\n      // escenario '" + Ast.name(scs.get(0)) + "' del modelo\n");
      sb.append("      escenario = new String[]{");
      sep = "";
      for (SNode step : Ast.children(scs.get(0), "steps")) {
        sb.append(sep + "\"" + Ast.name(Ast.ref(step, "event")) + "\"");
        sep = ", ";
      }
      sb.append("};\n    }\n");
    }
    sb.append("    " + cls + " fsm = new " + cls + "();\n");
    sb.append("    System.out.println(\"Inicio: \" + fsm);\n");
    sb.append("    for (String e : escenario) {\n");
    sb.append("      if (fsm.terminado()) {\n        System.out.println(\"Estado final alcanzado: se detiene\");\n        break;\n      }\n");
    sb.append("      fsm.onEvent(e);\n");
    sb.append("      System.out.println(e + \" -> \" + fsm);\n");
    sb.append("    }\n  }\n}\n");
    return sb.toString();
  }

  // ============================================================ Reporte

  public static String reportFileName(SNode scenario) {
    return Ast.name(scenario) + "_reporte";
  }

  private static String names(Iterable<SNode> nodes) {
    String result = "";
    for (SNode n : nodes) {
      result = result + (result.isEmpty() ? "" : ", ") + Ast.name(n);
    }
    return (result.isEmpty() ? "(ninguno)" : result);
  }

  private static void bullets(StringBuilder sb, List<String> msgs) {
    if (msgs.isEmpty()) {
      sb.append("- Ninguno\n");
    }
    for (String m : msgs) {
      sb.append("- " + m + "\n");
    }
  }

  public static String report(SNode scenario) {
    SNode c = Ast.ref(scenario, "character");
    StringBuilder sb = new StringBuilder();
    sb.append("# Reporte del razonador: " + Ast.name(c) + " (escenario " + Ast.name(scenario) + ")\n\n");
    sb.append("_Generado automaticamente por GameFSM._\n\n");
    sb.append("## 1. Automata M = (Q, Sigma, delta, q0, F)\n\n");
    List<SNode> finals = new ArrayList<SNode>();
    for (SNode s : Ast.children(c, "states")) {
      if (Ast.is(s, "FinalState")) {
        finals.add(s);
      }
    }
    sb.append("- **Q** (estados) = { " + names(Ast.children(c, "states")) + " }\n");
    sb.append("- **Sigma** (eventos) = { " + names(Ast.children(c, "events")) + " }\n");
    sb.append("- **q0** (inicial) = " + (Ast.initialState(c) == null ? "(no hay)" : Ast.name(Ast.initialState(c))) + "\n");
    sb.append("- **F** (finales) = { " + names(finals) + " }\n");
    sb.append("- **|delta|** (transiciones) = " + Ast.children(c, "transitions").size() + "\n\n");
    sb.append("## 2. Verificacion de consistencia\n\n");
    Set<SNode> reach = Razonador.reachable(c);
    List<SNode> unreachable = new ArrayList<SNode>();
    for (SNode s : Ast.children(c, "states")) {
      if (!(reach.contains(s))) {
        unreachable.add(s);
      }
    }
    sb.append("- Estados alcanzables desde q0 (BFS): " + names(reach) + "\n");
    sb.append("- Estados inalcanzables: " + names(unreachable) + "\n\n");
    List<String> errors = new ArrayList<String>();
    errors.addAll(GameFsmChecks.messages(c, "tipos"));
    errors.addAll(GameFsmChecks.messages(c, "semantica"));
    errors.addAll(Razonador.messages(c, "error"));
    sb.append("### Errores\n\n");
    bullets(sb, errors);
    sb.append("\n### Avisos\n\n");
    bullets(sb, Razonador.messages(c, "warning"));
    sb.append("\n## 3. Simulacion (semantica operacional small-step)\n\n");
    sb.append("| Paso | Evento | Transicion | Estado | Variables |\n");
    sb.append("|---|---|---|---|---|\n");
    for (String line : Razonador.simulate(scenario)) {
      sb.append(line + "\n");
    }
    sb.append("\nEstado final del escenario: **" + Razonador.finalStateName(scenario) + "**\n");
    return sb.toString();
  }
}
