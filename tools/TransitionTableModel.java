package gamefsm.editor;

import jetbrains.mps.lang.editor.table.runtime.AbstractTableModel;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import java.util.List;

/**
 * Modelo de la tabla de transiciones de un personaje.
 * Fila 0: titulos (ColumnHeader). Filas siguientes: una transicion cada una.
 * Columnas: Desde | Evento | Guarda | Hacia | Accion.
 */
public class TransitionTableModel extends AbstractTableModel {
  private static final String[] COLUMNS = {"source", "event", "guard", "target", "actions"};
  private SNode myCharacter;
  private EditorContext myContext;

  public TransitionTableModel(SNode character, EditorContext context) {
    myCharacter = character;
    myContext = context;
  }

  private static SContainmentLink link(SNode node, String role) {
    for (SContainmentLink l : node.getConcept().getContainmentLinks()) {
      if (l.getName().equals(role)) {
        return l;
      }
    }
    return null;
  }

  private static SNode childOf(SNode node, String role) {
    for (SNode c : node.getChildren(link(node, role))) {
      return c;
    }
    return null;
  }

  private List<SNode> transitions() {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode t : myCharacter.getChildren(link(myCharacter, "transitions"))) {
      result.add(t);
    }
    return result;
  }

  private List<SNode> headers() {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode h : myCharacter.getChildren(link(myCharacter, "headers"))) {
      result.add(h);
    }
    return result;
  }

  private boolean hasHeader() {
    return headers().size() == COLUMNS.length;
  }

  @Override
  public int getColumnCount() {
    return COLUMNS.length;
  }

  @Override
  public int getRowCount() {
    return transitions().size() + (hasHeader() ? 1 : 0);
  }

  @Override
  public SNode getValueAt(int row, int column) {
    if (hasHeader()) {
      if (row == 0) {
        return headers().get(column);
      }
      row = row - 1;
    }
    return childOf(transitions().get(row), COLUMNS[column]);
  }

  @Override
  public void deleteRow(int row) {
    if (hasHeader()) {
      if (row == 0) {
        return;
      }
      row = row - 1;
    }
    myCharacter.removeChild(transitions().get(row));
  }

  @Override
  public void insertRow(int row) {
    if (hasHeader()) {
      row = Math.max(0, row - 1);
    }
    SContainmentLink rowsLink = link(myCharacter, "transitions");
    SNode transition = SNodeFactoryOperations.createNewNode(rowsLink.getTargetConcept(), null);
    for (String role : COLUMNS) {
      SContainmentLink cellLink = link(transition, role);
      transition.addChild(cellLink, SNodeFactoryOperations.createNewNode(cellLink.getTargetConcept(), null));
    }
    List<SNode> rows = transitions();
    if (row < rows.size()) {
      myCharacter.insertChildBefore(rowsLink, transition, rows.get(row));
    } else {
      myCharacter.addChild(rowsLink, transition);
    }
  }
}
