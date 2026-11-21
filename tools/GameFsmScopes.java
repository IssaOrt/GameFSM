package gamefsm.constraints;

import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import java.util.List;

/**
 * Scoping de GameFSM: calcula a que nodos puede apuntar cada referencia.
 * Regla: un estado, evento o variable solo se puede usar dentro del MISMO personaje
 * donde fue declarado (sensibilidad al contexto, algo que una gramatica libre de
 * contexto no puede expresar).
 */
public class GameFsmScopes {

  /** Sube por el arbol hasta encontrar el personaje (Character) que contiene al nodo. */
  public static SNode enclosingCharacter(SNode node) {
    SNode current = node;
    while (current != null) {
      if (current.getConcept().getName().equals("Character")) {
        return current;
      }
      if (current.getConcept().getName().equals("Scenario")) {
        return referenceTarget(current, "character");
      }
      current = current.getParent();
    }
    return null;
  }

  public static List<SNode> states(SNode context) {
    return childrenOf(enclosingCharacter(context), "states");
  }

  public static List<SNode> events(SNode context) {
    return childrenOf(enclosingCharacter(context), "events");
  }

  public static List<SNode> variables(SNode context) {
    return childrenOf(enclosingCharacter(context), "variables");
  }

  private static List<SNode> childrenOf(SNode node, String role) {
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

  private static SNode referenceTarget(SNode node, String role) {
    for (SReferenceLink l : node.getConcept().getReferenceLinks()) {
      if (l.getName().equals(role)) {
        return node.getReferenceTarget(l);
      }
    }
    return null;
  }
}
