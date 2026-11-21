package gamefsm.typesystem;

import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import java.util.List;

/**
 * Utilidades para leer el AST de GameFSM (hijos, referencias y propiedades por nombre).
 */
public class Ast {

  public static String kind(SNode node) {
    return (node == null ? "" : node.getConcept().getName());
  }

  public static boolean is(SNode node, String conceptName) {
    return kind(node).equals(conceptName);
  }

  public static List<SNode> children(SNode node, String role) {
    List<SNode> result = new ArrayList<SNode>();
    if (node == null) {
      return result;
    }
    for (SContainmentLink l : node.getConcept().getContainmentLinks()) {
      if (l.getName().equals(role)) {
        for (SNode c : node.getChildren(l)) {
          result.add(c);
        }
      }
    }
    return result;
  }

  public static SNode child(SNode node, String role) {
    List<SNode> list = children(node, role);
    return (list.isEmpty() ? null : list.get(0));
  }

  public static SNode ref(SNode node, String role) {
    if (node == null) {
      return null;
    }
    for (SReferenceLink l : node.getConcept().getReferenceLinks()) {
      if (l.getName().equals(role)) {
        return node.getReferenceTarget(l);
      }
    }
    return null;
  }

  public static String prop(SNode node, String name) {
    if (node == null) {
      return null;
    }
    for (SProperty p : node.getConcept().getProperties()) {
      if (p.getName().equals(name)) {
        return node.getProperty(p);
      }
    }
    return null;
  }

  public static String name(SNode node) {
    String n = prop(node, "name");
    return (n == null ? "?" : n);
  }

  /** Todos los descendientes del nodo (recorrido en profundidad). */
  public static List<SNode> descendants(SNode node) {
    List<SNode> result = new ArrayList<SNode>();
    collect(node, result);
    return result;
  }

  private static void collect(SNode node, List<SNode> acc) {
    for (SNode c : node.getChildren()) {
      acc.add(c);
      collect(c, acc);
    }
  }

  /** Datos de una transicion: estado origen, evento, guarda, estado destino. */
  public static SNode source(SNode t) {
    return ref(child(t, "source"), "state");
  }

  public static SNode target(SNode t) {
    return ref(child(t, "target"), "state");
  }

  public static SNode event(SNode t) {
    return ref(child(t, "event"), "event");
  }

  public static SNode guard(SNode t) {
    return child(child(t, "guard"), "condition");
  }

  public static List<SNode> assignments(SNode t) {
    return children(child(t, "actions"), "assignments");
  }

  public static SNode initialState(SNode character) {
    for (SNode s : children(character, "states")) {
      if (is(s, "InitialState")) {
        return s;
      }
    }
    return null;
  }
}
