<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:16628cf5-eca5-43d9-84bc-674b0795ec03(gamefsm.sandbox)">
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
      <concept id="5126471530000000020" name="gamefsm.structure.LessEqExpr" flags="ng" index="17UkqA" />
      <concept id="5126471530000000021" name="gamefsm.structure.GreaterExpr" flags="ng" index="17UkqB" />
      <concept id="5126471530000000027" name="gamefsm.structure.MinusExpr" flags="ng" index="17UkqD" />
      <concept id="5126471530000000030" name="gamefsm.structure.Scenario" flags="ng" index="17UkqG">
        <reference id="5126471530000000056" name="character" index="17Ukqa" />
        <child id="5126471530000000057" name="steps" index="17Ukqb" />
      </concept>
      <concept id="5126471530000000031" name="gamefsm.structure.ScenarioStep" flags="ng" index="17UkqH">
        <reference id="5126471530000000058" name="event" index="17Ukq8" />
      </concept>
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
  <node concept="17UkqK" id="376SzOauZVQ">
    <property role="TrG5h" value="Goblin" />
    <node concept="VG3jA" id="376SzOauZVR" role="VG3j1">
      <property role="VG3jt" value="Desde" />
    </node>
    <node concept="VG3jA" id="376SzOauZVS" role="VG3j1">
      <property role="VG3jt" value="Evento" />
    </node>
    <node concept="VG3jA" id="376SzOauZVT" role="VG3j1">
      <property role="VG3jt" value="Guarda" />
    </node>
    <node concept="VG3jA" id="376SzOauZVU" role="VG3j1">
      <property role="VG3jt" value="Hacia" />
    </node>
    <node concept="VG3jA" id="376SzOauZVV" role="VG3j1">
      <property role="VG3jt" value="Accion" />
    </node>
    <node concept="17UkqV" id="376SzOauZVW" role="17Ukqg">
      <property role="TrG5h" value="vida" />
      <node concept="17UkqT" id="376SzOauZVX" role="17Ukqi" />
      <node concept="17UkqW" id="376SzOauZVY" role="17Ukqt">
        <property role="17Ukq2" value="100" />
      </node>
    </node>
    <node concept="17UkqV" id="376SzOauZVZ" role="17Ukqg">
      <property role="TrG5h" value="tieneArma" />
      <node concept="17UkqY" id="376SzOauZW0" role="17Ukqi" />
      <node concept="17UkqX" id="376SzOauZW1" role="17Ukqt">
        <property role="17Ukq3" value="true" />
      </node>
    </node>
    <node concept="17UkqP" id="376SzOauZW2" role="17Ukqh">
      <property role="TrG5h" value="verJugador" />
    </node>
    <node concept="17UkqP" id="376SzOauZW3" role="17Ukqh">
      <property role="TrG5h" value="perderJugador" />
    </node>
    <node concept="17UkqP" id="376SzOauZW4" role="17Ukqh">
      <property role="TrG5h" value="recibirGolpe" />
    </node>
    <node concept="17UkqP" id="376SzOauZW5" role="17Ukqh">
      <property role="TrG5h" value="tiempoAgotado" />
    </node>
    <node concept="17UkqQ" id="376SzOauZW6" role="17Ukqm">
      <property role="TrG5h" value="Patrullar" />
    </node>
    <node concept="17UkqR" id="376SzOauZW7" role="17Ukqm">
      <property role="TrG5h" value="Perseguir" />
    </node>
    <node concept="17UkqR" id="376SzOauZW8" role="17Ukqm">
      <property role="TrG5h" value="Atacar" />
    </node>
    <node concept="17UkqR" id="376SzOauZW9" role="17Ukqm">
      <property role="TrG5h" value="Huir" />
    </node>
    <node concept="17UkqO" id="376SzOauZWa" role="17Ukqm">
      <property role="TrG5h" value="Muerto" />
    </node>
    <node concept="17UkqU" id="376SzOauZWb" role="17Ukqn">
      <node concept="VG3jE" id="376SzOauZWc" role="VG3jg">
        <ref role="VG3jx" node="376SzOauZW6" resolve="Patrullar" />
      </node>
      <node concept="VG3j_" id="376SzOauZWd" role="VG3jd">
        <ref role="VG3jw" node="376SzOauZW2" resolve="verJugador" />
      </node>
      <node concept="VG3j$" id="376SzOauZWe" role="VG3je" />
      <node concept="VG3jE" id="376SzOauZWf" role="VG3jb">
        <ref role="VG3jx" node="376SzOauZW7" resolve="Perseguir" />
      </node>
      <node concept="VG3jB" id="376SzOauZWg" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOauZWh" role="17Ukqn">
      <node concept="VG3jE" id="376SzOauZWi" role="VG3jg">
        <ref role="VG3jx" node="376SzOauZW7" resolve="Perseguir" />
      </node>
      <node concept="VG3j_" id="376SzOauZWj" role="VG3jd">
        <ref role="VG3jw" node="376SzOauZW2" resolve="verJugador" />
      </node>
      <node concept="VG3j$" id="376SzOauZWk" role="VG3je">
        <node concept="17Ukqy" id="376SzOauZWl" role="VG3jz">
          <ref role="17Ukq0" node="376SzOauZVZ" resolve="tieneArma" />
        </node>
      </node>
      <node concept="VG3jE" id="376SzOauZWm" role="VG3jb">
        <ref role="VG3jx" node="376SzOauZW8" resolve="Atacar" />
      </node>
      <node concept="VG3jB" id="376SzOauZWn" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOauZWo" role="17Ukqn">
      <node concept="VG3jE" id="376SzOauZWp" role="VG3jg">
        <ref role="VG3jx" node="376SzOauZW7" resolve="Perseguir" />
      </node>
      <node concept="VG3j_" id="376SzOauZWq" role="VG3jd">
        <ref role="VG3jw" node="376SzOauZW3" resolve="perderJugador" />
      </node>
      <node concept="VG3j$" id="376SzOauZWr" role="VG3je" />
      <node concept="VG3jE" id="376SzOauZWs" role="VG3jb">
        <ref role="VG3jx" node="376SzOauZW6" resolve="Patrullar" />
      </node>
      <node concept="VG3jB" id="376SzOauZWt" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOauZWu" role="17Ukqn">
      <node concept="VG3jE" id="376SzOauZWv" role="VG3jg">
        <ref role="VG3jx" node="376SzOauZW8" resolve="Atacar" />
      </node>
      <node concept="VG3j_" id="376SzOauZWw" role="VG3jd">
        <ref role="VG3jw" node="376SzOauZW4" resolve="recibirGolpe" />
      </node>
      <node concept="VG3j$" id="376SzOauZWx" role="VG3je">
        <node concept="17UkqB" id="376SzOauZWy" role="VG3jz">
          <node concept="17Ukqy" id="376SzOauZWz" role="17Ukq1">
            <ref role="17Ukq0" node="376SzOauZVW" resolve="vida" />
          </node>
          <node concept="17UkqW" id="376SzOauZW$" role="17Ukq6">
            <property role="17Ukq2" value="30" />
          </node>
        </node>
      </node>
      <node concept="VG3jE" id="376SzOauZW_" role="VG3jb">
        <ref role="VG3jx" node="376SzOauZW8" resolve="Atacar" />
      </node>
      <node concept="VG3jB" id="376SzOauZWA" role="VG3j4">
        <node concept="17UkqJ" id="376SzOauZWB" role="VG3jy">
          <ref role="17Ukq7" node="376SzOauZVW" resolve="vida" />
          <node concept="17UkqD" id="376SzOauZWC" role="17Ukq4">
            <node concept="17Ukqy" id="376SzOauZWD" role="17Ukq1">
              <ref role="17Ukq0" node="376SzOauZVW" resolve="vida" />
            </node>
            <node concept="17UkqW" id="376SzOauZWE" role="17Ukq6">
              <property role="17Ukq2" value="20" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="17UkqU" id="376SzOauZWF" role="17Ukqn">
      <node concept="VG3jE" id="376SzOauZWG" role="VG3jg">
        <ref role="VG3jx" node="376SzOauZW8" resolve="Atacar" />
      </node>
      <node concept="VG3j_" id="376SzOauZWH" role="VG3jd">
        <ref role="VG3jw" node="376SzOauZW4" resolve="recibirGolpe" />
      </node>
      <node concept="VG3j$" id="376SzOauZWI" role="VG3je">
        <node concept="17UkqA" id="376SzOauZWJ" role="VG3jz">
          <node concept="17Ukqy" id="376SzOauZWK" role="17Ukq1">
            <ref role="17Ukq0" node="376SzOauZVW" resolve="vida" />
          </node>
          <node concept="17UkqW" id="376SzOauZWL" role="17Ukq6">
            <property role="17Ukq2" value="30" />
          </node>
        </node>
      </node>
      <node concept="VG3jE" id="376SzOauZWM" role="VG3jb">
        <ref role="VG3jx" node="376SzOauZW9" resolve="Huir" />
      </node>
      <node concept="VG3jB" id="376SzOauZWN" role="VG3j4">
        <node concept="17UkqJ" id="376SzOauZWO" role="VG3jy">
          <ref role="17Ukq7" node="376SzOauZVW" resolve="vida" />
          <node concept="17UkqD" id="376SzOauZWP" role="17Ukq4">
            <node concept="17Ukqy" id="376SzOauZWQ" role="17Ukq1">
              <ref role="17Ukq0" node="376SzOauZVW" resolve="vida" />
            </node>
            <node concept="17UkqW" id="376SzOauZWR" role="17Ukq6">
              <property role="17Ukq2" value="20" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="17UkqU" id="376SzOauZWS" role="17Ukqn">
      <node concept="VG3jE" id="376SzOauZWT" role="VG3jg">
        <ref role="VG3jx" node="376SzOauZW9" resolve="Huir" />
      </node>
      <node concept="VG3j_" id="376SzOauZWU" role="VG3jd">
        <ref role="VG3jw" node="376SzOauZW4" resolve="recibirGolpe" />
      </node>
      <node concept="VG3j$" id="376SzOauZWV" role="VG3je" />
      <node concept="VG3jE" id="376SzOauZWW" role="VG3jb">
        <ref role="VG3jx" node="376SzOauZWa" resolve="Muerto" />
      </node>
      <node concept="VG3jB" id="376SzOauZWX" role="VG3j4" />
    </node>
    <node concept="17UkqU" id="376SzOauZWY" role="17Ukqn">
      <node concept="VG3jE" id="376SzOauZWZ" role="VG3jg">
        <ref role="VG3jx" node="376SzOauZW9" resolve="Huir" />
      </node>
      <node concept="VG3j_" id="376SzOauZX0" role="VG3jd">
        <ref role="VG3jw" node="376SzOauZW5" resolve="tiempoAgotado" />
      </node>
      <node concept="VG3j$" id="376SzOauZX1" role="VG3je" />
      <node concept="VG3jE" id="376SzOauZX2" role="VG3jb">
        <ref role="VG3jx" node="376SzOauZW6" resolve="Patrullar" />
      </node>
      <node concept="VG3jB" id="376SzOauZX3" role="VG3j4" />
    </node>
  </node>
  <node concept="17UkqG" id="376SzOauZX4">
    <property role="TrG5h" value="Pelea" />
    <ref role="17Ukqa" node="376SzOauZVQ" resolve="Goblin" />
    <node concept="17UkqH" id="376SzOauZX5" role="17Ukqb">
      <ref role="17Ukq8" node="376SzOauZW2" resolve="verJugador" />
    </node>
    <node concept="17UkqH" id="376SzOauZX6" role="17Ukqb">
      <ref role="17Ukq8" node="376SzOauZW2" resolve="verJugador" />
    </node>
    <node concept="17UkqH" id="376SzOauZX7" role="17Ukqb">
      <ref role="17Ukq8" node="376SzOauZW4" resolve="recibirGolpe" />
    </node>
    <node concept="17UkqH" id="376SzOauZX8" role="17Ukqb">
      <ref role="17Ukq8" node="376SzOauZW4" resolve="recibirGolpe" />
    </node>
    <node concept="17UkqH" id="376SzOauZX9" role="17Ukqb">
      <ref role="17Ukq8" node="376SzOauZW4" resolve="recibirGolpe" />
    </node>
    <node concept="17UkqH" id="376SzOauZXa" role="17Ukqb">
      <ref role="17Ukq8" node="376SzOauZW4" resolve="recibirGolpe" />
    </node>
    <node concept="17UkqH" id="376SzOauZXb" role="17Ukqb">
      <ref role="17Ukq8" node="376SzOauZW4" resolve="recibirGolpe" />
    </node>
  </node>
</model>

