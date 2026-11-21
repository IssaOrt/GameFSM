<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:68defd42-e72a-4c6b-8f72-e296e01f7fbb(gamefsm.sandbox.invalidos)">
  <persistence version="9" />
  <languages>
    <use id="cebe1707-c469-4843-b2e5-ef6f9db377ec" name="gamefsm" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="cebe1707-c469-4843-b2e5-ef6f9db377ec" name="gamefsm">
      <concept id="3586802905043621593" name="gamefsm.structure.Guard" flags="ng" index="VG3j$">
        <child id="3586802905043621598" name="condition" index="VG3jz" />
      </concept>
      <concept id="3586802905043621592" name="gamefsm.structure.EventRef" flags="ng" index="VG3j_">
        <reference id="3586802905043621597" name="event" index="VG3jw" />
      </concept>
      <concept id="3586802905043621595" name="gamefsm.structure.ColumnHeader" flags="ng" index="VG3jA">
        <property id="3586802905043621600" name="title" index="VG3jt" />
      </concept>
      <concept id="3586802905043621594" name="gamefsm.structure.ActionBlock" flags="ng" index="VG3jB">
        <child id="3586802905043621599" name="assignments" index="VG3jy" />
      </concept>
      <concept id="3586802905043621591" name="gamefsm.structure.StateRef" flags="ng" index="VG3jE">
        <reference id="3586802905043621596" name="state" index="VG3jx" />
      </concept>
      <concept id="5126471530000000016" name="gamefsm.structure.VariableRef" flags="ng" index="17Ukqy">
        <reference id="5126471530000000050" name="variable" index="17Ukq0" />
      </concept>
      <concept id="5126471530000000017" name="gamefsm.structure.BinaryExpression" flags="ng" index="17Ukqz">
        <child id="5126471530000000051" name="left" index="17Ukq1" />
        <child id="5126471530000000052" name="right" index="17Ukq6" />
      </concept>
      <concept id="5126471530000000022" name="gamefsm.structure.GreaterEqExpr" flags="ng" index="17Ukq$" />
      <concept id="5126471530000000021" name="gamefsm.structure.GreaterExpr" flags="ng" index="17UkqB" />
      <concept id="5126471530000000026" name="gamefsm.structure.PlusExpr" flags="ng" index="17UkqC" />
      <concept id="5126471530000000029" name="gamefsm.structure.Assignment" flags="ng" index="17UkqJ">
        <reference id="5126471530000000053" name="variable" index="17Ukq7" />
        <child id="5126471530000000054" name="value" index="17Ukq4" />
      </concept>
      <concept id="5126471530000000002" name="gamefsm.structure.Character" flags="ng" index="17UkqK">
        <child id="3586802905043621628" name="headers" index="VG3j1" />
        <child id="5126471530000000034" name="variables" index="17Ukqg" />
        <child id="5126471530000000035" name="events" index="17Ukqh" />
        <child id="5126471530000000036" name="states" index="17Ukqm" />
        <child id="5126471530000000037" name="transitions" index="17Ukqn" />
      </concept>
      <concept id="5126471530000000001" name="gamefsm.structure.ITyped" flags="ngI" index="17UkqN">
        <child id="5126471530000000032" name="type" index="17Ukqi" />
      </concept>
      <concept id="5126471530000000006" name="gamefsm.structure.FinalState" flags="ng" index="17UkqO" />
      <concept id="5126471530000000007" name="gamefsm.structure.Event" flags="ng" index="17UkqP" />
      <concept id="5126471530000000004" name="gamefsm.structure.InitialState" flags="ng" index="17UkqQ" />
      <concept id="5126471530000000005" name="gamefsm.structure.NormalState" flags="ng" index="17UkqR" />
      <concept id="5126471530000000011" name="gamefsm.structure.IntType" flags="ng" index="17UkqT" />
      <concept id="5126471530000000008" name="gamefsm.structure.Transition" flags="ng" index="17UkqU">
        <child id="3586802905043621625" name="actions" index="VG3j4" />
        <child id="3586802905043621622" name="target" index="VG3jb" />
        <child id="3586802905043621616" name="event" index="VG3jd" />
        <child id="3586802905043621619" name="guard" index="VG3je" />
        <child id="3586802905043621613" name="source" index="VG3jg" />
      </concept>
      <concept id="5126471530000000009" name="gamefsm.structure.Variable" flags="ng" index="17UkqV">
        <child id="5126471530000000047" name="initialValue" index="17Ukqt" />
      </concept>
      <concept id="5126471530000000014" name="gamefsm.structure.IntLiteral" flags="ng" index="17UkqW">
        <property id="5126471530000000048" name="value" index="17Ukq2" />
      </concept>
      <concept id="5126471530000000015" name="gamefsm.structure.BoolLiteral" flags="ng" index="17UkqX">
        <property id="5126471530000000049" name="value" index="17Ukq3" />
      </concept>
      <concept id="5126471530000000012" name="gamefsm.structure.BoolType" flags="ng" index="17UkqY" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="17UkqK" id="376SzOa$O7m">
    <property role="TrG5h" value="GoblinMalTipado" />
    <node concept="VG3jA" id="376SzOa$O7n" role="VG3j1">
      <property role="VG3jt" value="Desde" />
    </node>
    <node concept="VG3jA" id="376SzOa$O7o" role="VG3j1">
      <property role="VG3jt" value="Evento" />
    </node>
    <node concept="VG3jA" id="376SzOa$O7p" role="VG3j1">
      <property role="VG3jt" value="Guarda" />
    </node>
    <node concept="VG3jA" id="376SzOa$O7q" role="VG3j1">
      <property role="VG3jt" value="Hacia" />
    </node>
    <node concept="VG3jA" id="376SzOa$O7r" role="VG3j1">
      <property role="VG3jt" value="Accion" />
    </node>
    <node concept="17UkqV" id="376SzOa$O7s" role="17Ukqg">
      <property role="TrG5h" value="vida" />
      <node concept="17UkqT" id="376SzOa$O7t" role="17Ukqi" />
      <node concept="17UkqW" id="376SzOa$O7u" role="17Ukqt">
        <property role="17Ukq2" value="100" />
      </node>
    </node>
    <node concept="17UkqV" id="376SzOa$O7v" role="17Ukqg">
      <property role="TrG5h" value="tieneArma" />
      <node concept="17UkqY" id="376SzOa$O7w" role="17Ukqi" />
      <node concept="17UkqX" id="376SzOa$O7x" role="17Ukqt">
        <property role="17Ukq3" value="true" />
      </node>
    </node>
    <node concept="17UkqV" id="376SzOa$O7y" role="17Ukqg">
      <property role="TrG5h" value="escudo" />
      <node concept="17UkqT" id="376SzOa$O7z" role="17Ukqi" />
      <node concept="17UkqX" id="376SzOa$O7$" role="17Ukqt">
        <property role="17Ukq3" value="false" />
      </node>
    </node>
    <node concept="17UkqP" id="376SzOa$O7_" role="17Ukqh">
      <property role="TrG5h" value="verJugador" />
    </node>
    <node concept="17UkqP" id="376SzOa$O7A" role="17Ukqh">
      <property role="TrG5h" value="recibirGolpe" />
    </node>
    <node concept="17UkqQ" id="376SzOa$O7B" role="17Ukqm">
      <property role="TrG5h" value="Patrullar" />
    </node>
    <node concept="17UkqR" id="376SzOa$O7C" role="17Ukqm">
      <property role="TrG5h" value="Atacar" />
    </node>
    <node concept="17UkqO" id="376SzOa$O7D" role="17Ukqm">
      <property role="TrG5h" value="Muerto" />
    </node>
    <node concept="17UkqU" id="376SzOa$O7E" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O7F" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O7B" resolve="Patrullar" />
      </node>
      <node concept="VG3j_" id="376SzOa$O7G" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O7_" resolve="verJugador" />
      </node>
      <node concept="VG3j$" id="376SzOa$O7H" role="VG3je">
        <node concept="17UkqC" id="376SzOa$O7I" role="VG3jz">
          <node concept="17Ukqy" id="376SzOa$O7J" role="17Ukq1">
            <ref role="17Ukq0" node="376SzOa$O7s" resolve="vida" />
          </node>
          <node concept="17UkqW" id="376SzOa$O7K" role="17Ukq6">
            <property role="17Ukq2" value="5" />
          </node>
        </node>
      </node>
      <node concept="VG3jE" id="376SzOa$O7L" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O7C" resolve="Atacar" />
      </node>
      <node concept="VG3jB" id="376SzOa$O7M" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O7N" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O7O" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O7C" resolve="Atacar" />
      </node>
      <node concept="VG3j_" id="376SzOa$O7P" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O7A" resolve="recibirGolpe" />
      </node>
      <node concept="VG3j$" id="376SzOa$O7Q" role="VG3je">
        <node concept="17UkqB" id="376SzOa$O7R" role="VG3jz">
          <node concept="17Ukqy" id="376SzOa$O7S" role="17Ukq1">
            <ref role="17Ukq0" node="376SzOa$O7v" resolve="tieneArma" />
          </node>
          <node concept="17UkqW" id="376SzOa$O7T" role="17Ukq6">
            <property role="17Ukq2" value="3" />
          </node>
        </node>
      </node>
      <node concept="VG3jE" id="376SzOa$O7U" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O7D" resolve="Muerto" />
      </node>
      <node concept="VG3jB" id="376SzOa$O7V" role="VG3j4">
        <node concept="17UkqJ" id="376SzOa$O7W" role="VG3jy">
          <ref role="17Ukq7" node="376SzOa$O7s" resolve="vida" />
          <node concept="17UkqX" id="376SzOa$O7X" role="17Ukq4">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="17UkqK" id="376SzOa$O7Y">
    <property role="TrG5h" value="DragonBug" />
    <node concept="VG3jA" id="376SzOa$O7Z" role="VG3j1">
      <property role="VG3jt" value="Desde" />
    </node>
    <node concept="VG3jA" id="376SzOa$O80" role="VG3j1">
      <property role="VG3jt" value="Evento" />
    </node>
    <node concept="VG3jA" id="376SzOa$O81" role="VG3j1">
      <property role="VG3jt" value="Guarda" />
    </node>
    <node concept="VG3jA" id="376SzOa$O82" role="VG3j1">
      <property role="VG3jt" value="Hacia" />
    </node>
    <node concept="VG3jA" id="376SzOa$O83" role="VG3j1">
      <property role="VG3jt" value="Accion" />
    </node>
    <node concept="17UkqV" id="376SzOa$O84" role="17Ukqg">
      <property role="TrG5h" value="vida" />
      <node concept="17UkqT" id="376SzOa$O85" role="17Ukqi" />
      <node concept="17UkqW" id="376SzOa$O86" role="17Ukqt">
        <property role="17Ukq2" value="100" />
      </node>
    </node>
    <node concept="17UkqP" id="376SzOa$O87" role="17Ukqh">
      <property role="TrG5h" value="verJugador" />
    </node>
    <node concept="17UkqP" id="376SzOa$O88" role="17Ukqh">
      <property role="TrG5h" value="recibirGolpe" />
    </node>
    <node concept="17UkqP" id="376SzOa$O89" role="17Ukqh">
      <property role="TrG5h" value="enfadarse" />
    </node>
    <node concept="17UkqP" id="376SzOa$O8a" role="17Ukqh">
      <property role="TrG5h" value="cantar" />
    </node>
    <node concept="17UkqQ" id="376SzOa$O8b" role="17Ukqm">
      <property role="TrG5h" value="Patrullar" />
    </node>
    <node concept="17UkqR" id="376SzOa$O8c" role="17Ukqm">
      <property role="TrG5h" value="Perseguir" />
    </node>
    <node concept="17UkqR" id="376SzOa$O8d" role="17Ukqm">
      <property role="TrG5h" value="Atacar" />
    </node>
    <node concept="17UkqR" id="376SzOa$O8e" role="17Ukqm">
      <property role="TrG5h" value="Huir" />
    </node>
    <node concept="17UkqR" id="376SzOa$O8f" role="17Ukqm">
      <property role="TrG5h" value="Bailar" />
    </node>
    <node concept="17UkqR" id="376SzOa$O8g" role="17Ukqm">
      <property role="TrG5h" value="Furia" />
    </node>
    <node concept="17UkqO" id="376SzOa$O8h" role="17Ukqm">
      <property role="TrG5h" value="Muerto" />
    </node>
    <node concept="17UkqU" id="376SzOa$O8i" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O8j" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O8b" resolve="Patrullar" />
      </node>
      <node concept="VG3j_" id="376SzOa$O8k" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O87" resolve="verJugador" />
      </node>
      <node concept="VG3j$" id="376SzOa$O8l" role="VG3je" />
      <node concept="VG3jE" id="376SzOa$O8m" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O8c" resolve="Perseguir" />
      </node>
      <node concept="VG3jB" id="376SzOa$O8n" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O8o" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O8p" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O8c" resolve="Perseguir" />
      </node>
      <node concept="VG3j_" id="376SzOa$O8q" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O87" resolve="verJugador" />
      </node>
      <node concept="VG3j$" id="376SzOa$O8r" role="VG3je">
        <node concept="17UkqB" id="376SzOa$O8s" role="VG3jz">
          <node concept="17Ukqy" id="376SzOa$O8t" role="17Ukq1">
            <ref role="17Ukq0" node="376SzOa$O84" resolve="vida" />
          </node>
          <node concept="17UkqW" id="376SzOa$O8u" role="17Ukq6">
            <property role="17Ukq2" value="30" />
          </node>
        </node>
      </node>
      <node concept="VG3jE" id="376SzOa$O8v" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O8d" resolve="Atacar" />
      </node>
      <node concept="VG3jB" id="376SzOa$O8w" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O8x" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O8y" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O8c" resolve="Perseguir" />
      </node>
      <node concept="VG3j_" id="376SzOa$O8z" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O87" resolve="verJugador" />
      </node>
      <node concept="VG3j$" id="376SzOa$O8$" role="VG3je">
        <node concept="17Ukq$" id="376SzOa$O8_" role="VG3jz">
          <node concept="17Ukqy" id="376SzOa$O8A" role="17Ukq1">
            <ref role="17Ukq0" node="376SzOa$O84" resolve="vida" />
          </node>
          <node concept="17UkqW" id="376SzOa$O8B" role="17Ukq6">
            <property role="17Ukq2" value="20" />
          </node>
        </node>
      </node>
      <node concept="VG3jE" id="376SzOa$O8C" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O8e" resolve="Huir" />
      </node>
      <node concept="VG3jB" id="376SzOa$O8D" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O8E" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O8F" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O8d" resolve="Atacar" />
      </node>
      <node concept="VG3j_" id="376SzOa$O8G" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O88" resolve="recibirGolpe" />
      </node>
      <node concept="VG3j$" id="376SzOa$O8H" role="VG3je" />
      <node concept="VG3jE" id="376SzOa$O8I" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O8h" resolve="Muerto" />
      </node>
      <node concept="VG3jB" id="376SzOa$O8J" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O8K" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O8L" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O8d" resolve="Atacar" />
      </node>
      <node concept="VG3j_" id="376SzOa$O8M" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O88" resolve="recibirGolpe" />
      </node>
      <node concept="VG3j$" id="376SzOa$O8N" role="VG3je" />
      <node concept="VG3jE" id="376SzOa$O8O" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O8e" resolve="Huir" />
      </node>
      <node concept="VG3jB" id="376SzOa$O8P" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O8Q" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O8R" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O8d" resolve="Atacar" />
      </node>
      <node concept="VG3j_" id="376SzOa$O8S" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O89" resolve="enfadarse" />
      </node>
      <node concept="VG3j$" id="376SzOa$O8T" role="VG3je" />
      <node concept="VG3jE" id="376SzOa$O8U" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O8g" resolve="Furia" />
      </node>
      <node concept="VG3jB" id="376SzOa$O8V" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O8W" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O8X" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O8g" resolve="Furia" />
      </node>
      <node concept="VG3j_" id="376SzOa$O8Y" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O89" resolve="enfadarse" />
      </node>
      <node concept="VG3j$" id="376SzOa$O8Z" role="VG3je" />
      <node concept="VG3jE" id="376SzOa$O90" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O8g" resolve="Furia" />
      </node>
      <node concept="VG3jB" id="376SzOa$O91" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O92" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O93" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O8f" resolve="Bailar" />
      </node>
      <node concept="VG3j_" id="376SzOa$O94" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O88" resolve="recibirGolpe" />
      </node>
      <node concept="VG3j$" id="376SzOa$O95" role="VG3je" />
      <node concept="VG3jE" id="376SzOa$O96" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O8h" resolve="Muerto" />
      </node>
      <node concept="VG3jB" id="376SzOa$O97" role="VG3j4" />
    </node>
  </node>
  <node concept="17UkqK" id="376SzOa$O98">
    <property role="TrG5h" value="OrcoConfundido" />
    <node concept="VG3jA" id="376SzOa$O99" role="VG3j1">
      <property role="VG3jt" value="Desde" />
    </node>
    <node concept="VG3jA" id="376SzOa$O9a" role="VG3j1">
      <property role="VG3jt" value="Evento" />
    </node>
    <node concept="VG3jA" id="376SzOa$O9b" role="VG3j1">
      <property role="VG3jt" value="Guarda" />
    </node>
    <node concept="VG3jA" id="376SzOa$O9c" role="VG3j1">
      <property role="VG3jt" value="Hacia" />
    </node>
    <node concept="VG3jA" id="376SzOa$O9d" role="VG3j1">
      <property role="VG3jt" value="Accion" />
    </node>
    <node concept="17UkqP" id="376SzOa$O9e" role="17Ukqh">
      <property role="TrG5h" value="ruido" />
    </node>
    <node concept="17UkqP" id="376SzOa$O9f" role="17Ukqh">
      <property role="TrG5h" value="golpe" />
    </node>
    <node concept="17UkqQ" id="376SzOa$O9g" role="17Ukqm">
      <property role="TrG5h" value="Dormir" />
    </node>
    <node concept="17UkqQ" id="376SzOa$O9h" role="17Ukqm">
      <property role="TrG5h" value="Despertar" />
    </node>
    <node concept="17UkqR" id="376SzOa$O9i" role="17Ukqm">
      <property role="TrG5h" value="Pelear" />
    </node>
    <node concept="17UkqR" id="376SzOa$O9j" role="17Ukqm">
      <property role="TrG5h" value="Pelear" />
    </node>
    <node concept="17UkqO" id="376SzOa$O9k" role="17Ukqm">
      <property role="TrG5h" value="Muerto" />
    </node>
    <node concept="17UkqU" id="376SzOa$O9l" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O9m" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O9g" resolve="Dormir" />
      </node>
      <node concept="VG3j_" id="376SzOa$O9n" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O9f" resolve="golpe" />
      </node>
      <node concept="VG3j$" id="376SzOa$O9o" role="VG3je" />
      <node concept="VG3jE" id="376SzOa$O9p" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O9k" resolve="Muerto" />
      </node>
      <node concept="VG3jB" id="376SzOa$O9q" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O9r" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O9s" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O9h" resolve="Despertar" />
      </node>
      <node concept="VG3j_" id="376SzOa$O9t" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O9e" resolve="ruido" />
      </node>
      <node concept="VG3j$" id="376SzOa$O9u" role="VG3je" />
      <node concept="VG3jE" id="376SzOa$O9v" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O9g" resolve="Dormir" />
      </node>
      <node concept="VG3jB" id="376SzOa$O9w" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOa$O9x" role="17Ukqn">
      <node concept="VG3jE" id="376SzOa$O9y" role="VG3jg">
        <ref role="VG3jx" node="376SzOa$O9k" resolve="Muerto" />
      </node>
      <node concept="VG3j_" id="376SzOa$O9z" role="VG3jd">
        <ref role="VG3jw" node="376SzOa$O9f" resolve="golpe" />
      </node>
      <node concept="VG3j$" id="376SzOa$O9$" role="VG3je" />
      <node concept="VG3jE" id="376SzOa$O9_" role="VG3jb">
        <ref role="VG3jx" node="376SzOa$O9g" resolve="Dormir" />
      </node>
      <node concept="VG3jB" id="376SzOa$O9A" role="VG3j4" />
    </node>
  </node>
</model>

