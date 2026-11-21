package gamefsm.typesystem;

import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Sistema de tipos y analisis semantico de GameFSM.
 *
 * Tipos: "entero" y "booleano". Reglas (Gamma |- e : tau):
 *   (LIT-INT)  n : entero            (LIT-BOOL) true/false : booleano
 *   (VAR)      Gamma(x) = tau  =>  x : tau
 *   (COMP)     e1 : entero, e2 : entero  =>  e1 < e2 : booleano   (igual para <=, >, >=)
 *   (EQ)       e1 : tau, e2 : tau        =>  e1 == e2 : booleano  (igual para !=)
 *   (ARIT)     e1 : entero, e2 : entero  =>  e1 + e2 : entero     (igual para -)
 *   (AND)      e1 : booleano, e2 : booleano => e1 and e2 : booleano
 *   (GUARD)    g : booleano  =>  la guarda es valida
 *   (ASIG)     Gamma(x) = tau, e : tau  =>  x = e es valida
 */
public class GameFsmChecks {

  public static final String ENTERO = "entero";
  public static final String BOOLEANO = "booleano";

  /** Calcula el tipo de una expresion recorriendo el arbol (null si no se puede tipar). */
  public static String typeOf(SNode e) {
    String k = Ast.kind(e);
    if (k.equals("IntLiteral") || k.equals("PlusExpr") || k.equals("MinusExpr")) {
      return ENTERO;
    }
    if (k.equals("BoolLiteral") || k.equals("AndExpr") || isComparison(k) || isEquality(k)) {
      return BOOLEANO;
    }
    if (k.equals("VariableRef")) {
      return declaredType(Ast.ref(e, "variable"));
    }
    return null;
  }

  /** Tipo declarado de una variable: entero o booleano. */
  public static String declaredType(SNode variable) {
    SNode t = Ast.child(variable, "type");
    if (Ast.is(t, "IntType")) {
      return ENTERO;
    }
    if (Ast.is(t, "BoolType")) {
      return BOOLEANO;
    }
    return null;
  }

  public static boolean isComparison(String k) {
    return k.equals("LessExpr") || k.equals("LessEqExpr") || k.equals("GreaterExpr") || k.equals("GreaterEqExpr");
  }

  public static boolean isEquality(String k) {
    return k.equals("EqualsExpr") || k.equals("NotEqualsExpr");
  }

  public static String operator(String k) {
    if (k.equals("LessExpr")) {
      return "<";
    }
    if (k.equals("LessEqExpr")) {
      return "<=";
    }
    if (k.equals("GreaterExpr")) {
      return ">";
    }
    if (k.equals("GreaterEqExpr")) {
      return ">=";
    }
    if (k.equals("EqualsExpr")) {
      return "==";
    }
    if (k.equals("NotEqualsExpr")) {
      return "!=";
    }
    if (k.equals("PlusExpr")) {
      return "+";
    }
    if (k.equals("MinusExpr")) {
      return "-";
    }
    return "and";
  }

  // ---------------------------------------------------------------- reporte
  // category: "tipos" (errores de tipos) o "semantica" (errores de contexto)

  public static List<SNode> nodes(SNode character, String category) {
    List<SNode> nodes = new ArrayList<SNode>();
    List<String> msgs = new ArrayList<String>();
    analyze(character, category, nodes, msgs);
    return nodes;
  }

  public static List<String> messages(SNode character, String category) {
    List<SNode> nodes = new ArrayList<SNode>();
    List<String> msgs = new ArrayList<String>();
    analyze(character, category, nodes, msgs);
    return msgs;
  }

  private static void analyze(SNode c, String category, List<SNode> nodes, List<String> msgs) {
    if (category.equals("tipos")) {
      checkTypes(c, nodes, msgs);
    } else if (category.equals("semantica")) {
      checkSemantics(c, nodes, msgs);
    }
  }

  private static void checkTypes(SNode c, List<SNode> nodes, List<String> msgs) {
    // (COMP), (EQ), (ARIT), (AND): los operandos deben tener el tipo correcto
    for (SNode e : Ast.descendants(c)) {
      String k = Ast.kind(e);
      SNode l = Ast.child(e, "left");
      SNode r = Ast.child(e, "right");
      String tl = typeOf(l);
      String tr = typeOf(r);
      if (isComparison(k) || k.equals("PlusExpr") || k.equals("MinusExpr")) {
        expect(l, tl, ENTERO, "El operador '" + operator(k) + "' necesita enteros", nodes, msgs);
        expect(r, tr, ENTERO, "El operador '" + operator(k) + "' necesita enteros", nodes, msgs);
      } else if (k.equals("AndExpr")) {
        expect(l, tl, BOOLEANO, "El operador 'and' necesita booleanos", nodes, msgs);
        expect(r, tr, BOOLEANO, "El operador 'and' necesita booleanos", nodes, msgs);
      } else if (isEquality(k) && tl != null && tr != null && !(tl.equals(tr))) {
        nodes.add(e);
        msgs.add("No se pueden comparar con '" + operator(k) + "' un " + tl + " y un " + tr);
      }
    }
    // (GUARD): la guarda debe ser booleana
    for (SNode t : Ast.children(c, "transitions")) {
      SNode g = Ast.guard(t);
      String tg = typeOf(g);
      if (g != null && tg != null && !(tg.equals(BOOLEANO))) {
        nodes.add(g);
        msgs.add("La guarda debe ser booleana, pero es de tipo " + tg);
      }
      // (ASIG): el valor asignado debe tener el tipo de la variable
      for (SNode a : Ast.assignments(t)) {
        String tv = declaredType(Ast.ref(a, "variable"));
        String te = typeOf(Ast.child(a, "value"));
        if (tv != null && te != null && !(tv.equals(te))) {
          nodes.add(a);
          msgs.add("No se puede asignar un valor de tipo " + te + " a una variable de tipo " + tv);
        }
      }
    }
    // valor inicial de cada variable
    for (SNode v : Ast.children(c, "variables")) {
      String tv = declaredType(v);
      SNode init = Ast.child(v, "initialValue");
      String te = typeOf(init);
      if (tv != null && te != null && !(tv.equals(te))) {
        nodes.add(init);
        msgs.add("Valor inicial incompatible con el tipo: '" + Ast.name(v) + "' es " + tv + " pero el valor es " + te);
      }
    }
  }

  private static void expect(SNode operand, String actual, String expected, String msg, List<SNode> nodes, List<String> msgs) {
    if (operand != null && actual != null && !(actual.equals(expected))) {
      nodes.add(operand);
      msgs.add(msg + ", pero recibio un " + actual);
    }
  }

  private static void checkSemantics(SNode c, List<SNode> nodes, List<String> msgs) {
    // Exactamente un estado inicial
    List<SNode> initials = new ArrayList<SNode>();
    for (SNode s : Ast.children(c, "states")) {
      if (Ast.is(s, "InitialState")) {
        initials.add(s);
      }
    }
    if (initials.isEmpty()) {
      nodes.add(c);
      msgs.add("Debe existir exactamente un estado inicial (no hay ninguno)");
    }
    for (int i = 1; i < initials.size(); i++) {
      nodes.add(initials.get(i));
      msgs.add("Debe existir exactamente un estado inicial (hay " + initials.size() + ")");
    }
    // Nombres unicos de estados, eventos y variables
    duplicates(Ast.children(c, "states"), "estado", nodes, msgs);
    duplicates(Ast.children(c, "events"), "evento", nodes, msgs);
    duplicates(Ast.children(c, "variables"), "variable", nodes, msgs);
    // Un estado final no tiene transiciones de salida
    for (SNode t : Ast.children(c, "transitions")) {
      if (Ast.is(Ast.source(t), "FinalState")) {
        nodes.add(Ast.child(t, "source"));
        msgs.add("Un estado final no puede tener transiciones de salida ('" + Ast.name(Ast.source(t)) + "' es final)");
      }
    }
  }

  private static void duplicates(List<SNode> elements, String what, List<SNode> nodes, List<String> msgs) {
    Map<String, SNode> seen = new HashMap<String, SNode>();
    for (SNode e : elements) {
      String n = Ast.name(e);
      if (seen.containsKey(n)) {
        nodes.add(e);
        msgs.add("Nombre duplicado: ya existe un " + what + " llamado '" + n + "'");
      } else {
        seen.put(n, e);
      }
    }
  }
}
