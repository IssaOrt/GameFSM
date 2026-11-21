package gamefsm.typesystem;

import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Razonador de GameFSM. Cada personaje es un automata M = (Q, Sigma, delta, q0, F):
 *   Q = estados, Sigma = eventos, delta = transiciones (q, e, guarda, q'), q0 = estado inicial,
 *   F = estados finales.
 *
 * Verificador de consistencia (analisis ESTRUCTURAL: ignora las guardas, es una sobreaproximacion):
 *   - Inalcanzable : q no pertenece a Reach(q0)           -> BFS desde q0            O(|Q|+|delta|)
 *   - Deadlock     : q no es final y no tiene salidas      -> recorrido               O(|Q|+|delta|)
 *   - Trampa       : q alcanzable que no llega a F          -> BFS en grafo invertido  O(|Q|+|delta|)
 *   - No determinismo: dos transiciones (q,e,g1,_) (q,e,g2,_) con g1 AND g2 satisfacible
 *                      -> analisis de intervalos sobre comparaciones con constantes   O(|delta|^2)
 *   - Evento sin usar: e no aparece en delta                                          O(|Sigma|+|delta|)
 *
 * Simulador (semantica operacional small-step):  <q, sigma> --e--> <q', A(sigma)>
 */
public class Razonador {

  // =============================================================== alcanzabilidad (BFS)

  /** Reach(q0): estados alcanzables desde el estado inicial (BFS hacia adelante). */
  public static Set<SNode> reachable(SNode c) {
    Set<SNode> visited = new HashSet<SNode>();
    SNode q0 = Ast.initialState(c);
    if (q0 == null) {
      return visited;
    }
    Deque<SNode> queue = new ArrayDeque<SNode>();
    visited.add(q0);
    queue.add(q0);
    while (!(queue.isEmpty())) {
      SNode q = queue.poll();
      for (SNode t : Ast.children(c, "transitions")) {
        SNode target = Ast.target(t);
        if (Ast.source(t) == q && target != null && visited.add(target)) {
          queue.add(target);
        }
      }
    }
    return visited;
  }

  /** Estados desde los que se puede llegar a algun estado final (BFS en el grafo invertido). */
  public static Set<SNode> coReachable(SNode c) {
    Set<SNode> visited = new HashSet<SNode>();
    Deque<SNode> queue = new ArrayDeque<SNode>();
    for (SNode s : Ast.children(c, "states")) {
      if (Ast.is(s, "FinalState")) {
        visited.add(s);
        queue.add(s);
      }
    }
    while (!(queue.isEmpty())) {
      SNode q = queue.poll();
      for (SNode t : Ast.children(c, "transitions")) {
        SNode source = Ast.source(t);
        if (Ast.target(t) == q && source != null && visited.add(source)) {
          queue.add(source);
        }
      }
    }
    return visited;
  }

  public static boolean hasOutgoing(SNode c, SNode state) {
    for (SNode t : Ast.children(c, "transitions")) {
      if (Ast.source(t) == state) {
        return true;
      }
    }
    return false;
  }

  public static boolean hasFinalStates(SNode c) {
    for (SNode s : Ast.children(c, "states")) {
      if (Ast.is(s, "FinalState")) {
        return true;
      }
    }
    return false;
  }

  // =============================================================== reporte
  // category: "error" o "warning"

  public static List<SNode> nodes(SNode c, String category) {
    List<SNode> nodes = new ArrayList<SNode>();
    List<String> msgs = new ArrayList<String>();
    analyze(c, category, nodes, msgs);
    return nodes;
  }

  public static List<String> messages(SNode c, String category) {
    List<SNode> nodes = new ArrayList<SNode>();
    List<String> msgs = new ArrayList<String>();
    analyze(c, category, nodes, msgs);
    return msgs;
  }

  private static void analyze(SNode c, String category, List<SNode> nodes, List<String> msgs) {
    boolean errors = category.equals("error");
    if (Ast.initialState(c) == null) {
      return;
    }
    Set<SNode> reach = reachable(c);
    Set<SNode> coReach = coReachable(c);
    boolean withFinals = hasFinalStates(c);
    for (SNode s : Ast.children(c, "states")) {
      boolean isFinal = Ast.is(s, "FinalState");
      boolean deadlock = !(isFinal) && !(hasOutgoing(c, s));
      if (errors && deadlock) {
        nodes.add(s);
        msgs.add("Deadlock: el estado '" + Ast.name(s) + "' no es final y no tiene transiciones de salida (el personaje se congela)");
      }
      if (!(errors) && !(reach.contains(s))) {
        nodes.add(s);
        msgs.add("Estado inalcanzable: ningun camino desde el estado inicial llega a '" + Ast.name(s) + "'");
      }
      if (!(errors) && withFinals && reach.contains(s) && !(coReach.contains(s)) && !(deadlock)) {
        nodes.add(s);
        msgs.add("Estado trampa: desde '" + Ast.name(s) + "' nunca se puede llegar a un estado final");
      }
    }
    if (!(errors)) {
      for (SNode e : Ast.children(c, "events")) {
        boolean used = false;
        for (SNode t : Ast.children(c, "transitions")) {
          if (Ast.event(t) == e) {
            used = true;
          }
        }
        if (!(used)) {
          nodes.add(e);
          msgs.add("Evento sin usar: ninguna transicion escucha el evento '" + Ast.name(e) + "'");
        }
      }
    }
    checkDeterminism(c, errors, nodes, msgs);
  }

  // =============================================================== no determinismo

  private static void checkDeterminism(SNode c, boolean errors, List<SNode> nodes, List<String> msgs) {
    List<SNode> ts = Ast.children(c, "transitions");
    for (int i = 0; i < ts.size(); i++) {
      for (int j = i + 1; j < ts.size(); j++) {
        SNode t1 = ts.get(i);
        SNode t2 = ts.get(j);
        if (Ast.source(t1) == null || Ast.event(t1) == null) {
          continue;
        }
        if (Ast.source(t1) != Ast.source(t2) || Ast.event(t1) != Ast.event(t2)) {
          continue;
        }
        String where = "desde '" + Ast.name(Ast.source(t1)) + "' con el evento '" + Ast.name(Ast.event(t1)) + "'";
        String verdict = overlap(Ast.guard(t1), Ast.guard(t2));
        if (verdict == null) {
          continue;
        }
        if (verdict.equals("?")) {
          if (!(errors)) {
            nodes.add(Ast.child(t2, "event"));
            msgs.add("Posible no determinismo " + where + ": no se pudo decidir si las guardas se solapan");
          }
        } else if (errors) {
          nodes.add(Ast.child(t2, "event"));
          msgs.add("No determinismo " + where + ": hay dos transiciones posibles " + verdict);
        }
      }
    }
  }

  /**
   * Decide si g1 AND g2 es satisfacible.
   * Devuelve null si son disjuntas (determinista), "?" si no se puede decidir,
   * o un texto con un testigo si se solapan.
   */
  public static String overlap(SNode g1, SNode g2) {
    if (g1 == null || g2 == null) {
      return "(una de ellas no tiene guarda)";
    }
    Map<String, long[]> ints = new LinkedHashMap<String, long[]>();
    Map<String, Boolean> bools = new LinkedHashMap<String, Boolean>();
    boolean[] unsat = new boolean[]{false};
    if (!(toConstraints(g1, ints, bools, unsat)) || !(toConstraints(g2, ints, bools, unsat))) {
      return "?";
    }
    if (unsat[0]) {
      return null;
    }
    for (long[] range : ints.values()) {
      if (range[0] > range[1]) {
        return null;
      }
    }
    String witness = "";
    for (Map.Entry<String, long[]> en : ints.entrySet()) {
      long v = (en.getValue()[0] == Long.MIN_VALUE ? Math.min(en.getValue()[1], 0) : en.getValue()[0]);
      witness = witness + (witness.isEmpty() ? "" : ", ") + en.getKey() + " = " + v;
    }
    for (Map.Entry<String, Boolean> en : bools.entrySet()) {
      witness = witness + (witness.isEmpty() ? "" : ", ") + en.getKey() + " = " + en.getValue();
    }
    return (witness.isEmpty() ? "(ambas guardas son siempre verdaderas)" : "(con " + witness + " se cumplen ambas guardas)");
  }

  /** Traduce una guarda a restricciones: intervalos para enteros y valores fijos para booleanos. */
  private static boolean toConstraints(SNode g, Map<String, long[]> ints, Map<String, Boolean> bools, boolean[] unsat) {
    String k = Ast.kind(g);
    if (k.equals("AndExpr")) {
      return toConstraints(Ast.child(g, "left"), ints, bools, unsat) && toConstraints(Ast.child(g, "right"), ints, bools, unsat);
    }
    if (k.equals("BoolLiteral")) {
      if (!("true".equals(Ast.prop(g, "value")))) {
        unsat[0] = true;
      }
      return true;
    }
    if (k.equals("VariableRef")) {
      return fixBool(Ast.name(Ast.ref(g, "variable")), true, bools, unsat);
    }
    SNode l = Ast.child(g, "left");
    SNode r = Ast.child(g, "right");
    boolean flipped = false;
    if (Ast.is(r, "VariableRef") && !(Ast.is(l, "VariableRef"))) {
      SNode tmp = l;
      l = r;
      r = tmp;
      flipped = true;
    }
    if (!(Ast.is(l, "VariableRef"))) {
      return false;
    }
    String var = Ast.name(Ast.ref(l, "variable"));
    if (Ast.is(r, "BoolLiteral") && (k.equals("EqualsExpr") || k.equals("NotEqualsExpr"))) {
      boolean value = "true".equals(Ast.prop(r, "value"));
      return fixBool(var, (k.equals("EqualsExpr") ? value : !(value)), bools, unsat);
    }
    if (!(Ast.is(r, "IntLiteral"))) {
      return false;
    }
    long n = Long.parseLong(Ast.prop(r, "value"));
    String op = GameFsmChecks.operator(k);
    if (flipped) {
      op = (op.equals("<") ? ">" : (op.equals(">") ? "<" : (op.equals("<=") ? ">=" : (op.equals(">=") ? "<=" : op))));
    }
    long lo = Long.MIN_VALUE;
    long hi = Long.MAX_VALUE;
    if (op.equals(">")) {
      lo = n + 1;
    } else if (op.equals(">=")) {
      lo = n;
    } else if (op.equals("<")) {
      hi = n - 1;
    } else if (op.equals("<=")) {
      hi = n;
    } else if (op.equals("==")) {
      lo = n;
      hi = n;
    } else {
      return false;
    }
    long[] current = ints.get(var);
    if (current == null) {
      ints.put(var, new long[]{lo, hi});
    } else {
      current[0] = Math.max(current[0], lo);
      current[1] = Math.min(current[1], hi);
    }
    return true;
  }

  private static boolean fixBool(String var, boolean value, Map<String, Boolean> bools, boolean[] unsat) {
    Boolean current = bools.get(var);
    if (current != null && current.booleanValue() != value) {
      unsat[0] = true;
    }
    bools.put(var, value);
    return true;
  }

  // =============================================================== simulador

  /** Semantica denotacional de las expresiones: [[e]]sigma. */
  public static Object eval(SNode e, Map<String, Object> env) {
    String k = Ast.kind(e);
    if (k.equals("IntLiteral")) {
      return Integer.parseInt(Ast.prop(e, "value"));
    }
    if (k.equals("BoolLiteral")) {
      return "true".equals(Ast.prop(e, "value"));
    }
    if (k.equals("VariableRef")) {
      return env.get(Ast.name(Ast.ref(e, "variable")));
    }
    Object a = eval(Ast.child(e, "left"), env);
    Object b = eval(Ast.child(e, "right"), env);
    if (k.equals("AndExpr")) {
      return Boolean.TRUE.equals(a) && Boolean.TRUE.equals(b);
    }
    if (k.equals("EqualsExpr")) {
      return a != null && a.equals(b);
    }
    if (k.equals("NotEqualsExpr")) {
      return !(a != null && a.equals(b));
    }
    if (!(a instanceof Integer) || !(b instanceof Integer)) {
      return null;
    }
    int x = (Integer) a;
    int y = (Integer) b;
    if (k.equals("PlusExpr")) {
      return x + y;
    }
    if (k.equals("MinusExpr")) {
      return x - y;
    }
    if (k.equals("LessExpr")) {
      return x < y;
    }
    if (k.equals("LessEqExpr")) {
      return x <= y;
    }
    if (k.equals("GreaterExpr")) {
      return x > y;
    }
    if (k.equals("GreaterEqExpr")) {
      return x >= y;
    }
    return null;
  }

  /**
   * Ejecuta un escenario paso a paso y devuelve la traza (una linea por paso).
   *   (PASO)   (q,e,g,q',A) en delta y [[g]]sigma = true  =>  <q,sigma> --e--> <q', [[A]]sigma>
   *   (IGNORA) ninguna transicion habilitada              =>  <q,sigma> --e--> <q, sigma>
   */
  public static List<String> simulate(SNode scenario) {
    List<String> trace = new ArrayList<String>();
    SNode c = Ast.ref(scenario, "character");
    SNode current = Ast.initialState(c);
    if (current == null) {
      trace.add("No se puede simular: el personaje no tiene estado inicial");
      return trace;
    }
    Map<String, Object> env = new LinkedHashMap<String, Object>();
    for (SNode v : Ast.children(c, "variables")) {
      env.put(Ast.name(v), eval(Ast.child(v, "initialValue"), env));
    }
    trace.add("| 0 | - | - | " + Ast.name(current) + " | " + env + " |");
    int step = 0;
    for (SNode s : Ast.children(scenario, "steps")) {
      step++;
      SNode ev = Ast.ref(s, "event");
      if (Ast.is(current, "FinalState")) {
        trace.add("| " + step + " | " + Ast.name(ev) + " | (estado final: la simulacion se detiene) | " + Ast.name(current) + " | " + env + " |");
        break;
      }
      SNode fired = null;
      for (SNode t : Ast.children(c, "transitions")) {
        if (fired == null && Ast.source(t) == current && Ast.event(t) == ev) {
          SNode g = Ast.guard(t);
          if (g == null || Boolean.TRUE.equals(eval(g, env))) {
            fired = t;
          }
        }
      }
      if (fired == null) {
        trace.add("| " + step + " | " + Ast.name(ev) + " | (ninguna transicion habilitada: se ignora) | " + Ast.name(current) + " | " + env + " |");
        continue;
      }
      Map<String, Object> old = new HashMap<String, Object>(env);
      for (SNode a : Ast.assignments(fired)) {
        env.put(Ast.name(Ast.ref(a, "variable")), eval(Ast.child(a, "value"), old));
      }
      String label = Ast.name(current) + " -> " + Ast.name(Ast.target(fired));
      current = Ast.target(fired);
      trace.add("| " + step + " | " + Ast.name(ev) + " | " + label + " | " + Ast.name(current) + " | " + env + " |");
    }
    return trace;
  }

  /** Nombre del estado en el que termina el escenario (para pruebas). */
  public static String finalStateName(SNode scenario) {
    List<String> trace = simulate(scenario);
    String last = trace.get(trace.size() - 1);
    String[] cols = last.split("\\|");
    return (cols.length > 4 ? cols[4].trim() : "?");
  }
}
