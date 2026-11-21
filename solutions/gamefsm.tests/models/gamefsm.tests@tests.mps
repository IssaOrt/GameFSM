<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a956d421-cb6e-428f-bc5e-f257a1c5f257(gamefsm.tests@tests)">
  <persistence version="9" />
  <languages>
    <use id="cebe1707-c469-4843-b2e5-ef6f9db377ec" name="gamefsm" version="0" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="pkeo" ref="r:8aff1e57-60c2-4568-9992-8a7c653765d3(gamefsm.typesystem)" />
    <import index="uzwb" ref="r:476a94d4-63d0-45c7-958e-14e2803e5fca(gamefsm.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215507671101" name="jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" flags="ng" index="1TM$A" />
      <concept id="1215511704609" name="jetbrains.mps.lang.test.structure.NodeWarningCheckOperation" flags="ng" index="29bkU" />
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1210674524691" name="jetbrains.mps.lang.test.structure.TestNodeReference" flags="nn" index="3xONca">
        <reference id="1210674534086" name="declaration" index="3xOPvv" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
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
      <concept id="5126471530000000023" name="gamefsm.structure.EqualsExpr" flags="ng" index="17Ukq_" />
      <concept id="5126471530000000020" name="gamefsm.structure.LessEqExpr" flags="ng" index="17UkqA" />
      <concept id="5126471530000000021" name="gamefsm.structure.GreaterExpr" flags="ng" index="17UkqB" />
      <concept id="5126471530000000026" name="gamefsm.structure.PlusExpr" flags="ng" index="17UkqC" />
      <concept id="5126471530000000027" name="gamefsm.structure.MinusExpr" flags="ng" index="17UkqD" />
      <concept id="5126471530000000030" name="gamefsm.structure.Scenario" flags="ng" index="17UkqG">
        <reference id="5126471530000000056" name="character" index="17Ukqa" />
        <child id="5126471530000000057" name="steps" index="17Ukqb" />
      </concept>
      <concept id="5126471530000000031" name="gamefsm.structure.ScenarioStep" flags="ng" index="17UkqH">
        <reference id="5126471530000000058" name="event" index="17Ukq8" />
      </concept>
      <concept id="5126471530000000028" name="gamefsm.structure.AndExpr" flags="ng" index="17UkqI" />
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
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1lH9Xt" id="376SzOaAt40">
    <property role="TrG5h" value="ErroresDetectados" />
    <node concept="1qefOq" id="376SzOaAAnP" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAnQ" role="1qenE9">
        <property role="TrG5h" value="Valido" />
        <node concept="VG3jA" id="376SzOaAAnR" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAnS" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAnT" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAnU" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAnV" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAnW" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAnX" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAnY" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAnZ" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAo0" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAo1" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAo2" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAo3" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAo4" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAo5" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAo6" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAAo7" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAo8" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAo4" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAo9" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAo2" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAoa" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAob" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAo5" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAoc" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAod" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAoe" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAo5" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAof" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAo3" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAog" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAoh" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAoi" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAnW" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAoj" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAok" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAo5" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAol" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAom" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAnW" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAAon" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAAoo" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAnW" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAAop" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAoq" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAor" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAo5" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAos" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAo3" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAot" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAou" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAov" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAnW" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAow" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAox" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAo6" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAoy" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAoz" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAo$" role="1qenE9">
        <property role="TrG5h" value="GuardaNoBooleana" />
        <node concept="VG3jA" id="376SzOaAAo_" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAoA" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAoB" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAoC" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAoD" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAoE" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAoF" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAoG" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAoH" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAoI" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAoJ" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAoK" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAoL" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAoM" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAoN" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAoO" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAAoP" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAoQ" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAoM" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAoR" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAoK" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAoS" role="VG3je">
            <node concept="17UkqC" id="376SzOaAAoT" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAoU" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAoE" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAoV" role="17Ukq6">
                <property role="17Ukq2" value="5" />
              </node>
              <node concept="7CXmI" id="376SzOaAAoW" role="lGtFl">
                <node concept="1TM$A" id="376SzOaAAoX" role="7EUXB" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAoY" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAoN" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAoZ" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAp0" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAp1" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAoN" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAp2" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAoL" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAp3" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAp4" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAp5" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAoE" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAp6" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAp7" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAoN" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAp8" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAp9" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAoE" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAApa" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAApb" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAoE" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAApc" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAApd" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAApe" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAoN" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAApf" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAoL" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAApg" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAph" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAApi" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAoE" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAApj" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAApk" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAoO" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAApl" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAApm" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAApn" role="1qenE9">
        <property role="TrG5h" value="OperadorMalTipado" />
        <node concept="VG3jA" id="376SzOaAApo" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAApp" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAApq" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAApr" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAps" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAApt" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAApu" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAApv" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAApw" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAApx" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAApy" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAApz" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAp$" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAp_" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAApA" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAApB" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAApC" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAApD" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAp_" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAApE" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAApz" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAApF" role="VG3je">
            <node concept="17UkqB" id="376SzOaAApG" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAApH" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAApw" resolve="flag" />
                <node concept="7CXmI" id="376SzOaAApI" role="lGtFl">
                  <node concept="1TM$A" id="376SzOaAApJ" role="7EUXB" />
                </node>
              </node>
              <node concept="17UkqW" id="376SzOaAApK" role="17Ukq6">
                <property role="17Ukq2" value="3" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAApL" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAApA" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAApM" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAApN" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAApO" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAApA" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAApP" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAp$" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAApQ" role="VG3je">
            <node concept="17UkqB" id="376SzOaAApR" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAApS" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAApt" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAApT" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAApU" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAApA" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAApV" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAApW" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAApt" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAApX" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAApY" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAApt" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAApZ" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAq0" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAq1" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAApA" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAq2" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAp$" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAq3" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAq4" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAq5" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAApt" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAq6" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAq7" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAApB" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAq8" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAq9" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAqa" role="1qenE9">
        <property role="TrG5h" value="AsignacionIncompatible" />
        <node concept="VG3jA" id="376SzOaAAqb" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAqc" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAqd" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAqe" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAqf" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAqg" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAqh" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAqi" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAqj" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAqk" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAql" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAqm" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAqn" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAqo" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAqp" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAqq" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAAqr" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAqs" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAqo" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAqt" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAqm" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAqu" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAqv" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAqp" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAqw" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAqx" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAqy" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAqp" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAqz" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAqn" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAq$" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAq_" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAqA" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAqg" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAqB" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAqC" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAqp" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAqD" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAqE" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAqg" resolve="vida" />
              <node concept="17UkqX" id="376SzOaAAqF" role="17Ukq4">
                <property role="17Ukq3" value="true" />
              </node>
              <node concept="7CXmI" id="376SzOaAAqG" role="lGtFl">
                <node concept="1TM$A" id="376SzOaAAqH" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAqI" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAqJ" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAqp" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAqK" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAqn" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAqL" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAqM" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAqN" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAqg" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAqO" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAqP" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAqq" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAqQ" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAqR" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAqS" role="1qenE9">
        <property role="TrG5h" value="ValorInicialMalo" />
        <node concept="VG3jA" id="376SzOaAAqT" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAqU" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAqV" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAqW" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAqX" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAqY" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAqZ" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAr0" role="17Ukqt">
            <property role="17Ukq3" value="false" />
            <node concept="7CXmI" id="376SzOaAAr1" role="lGtFl">
              <node concept="1TM$A" id="376SzOaAAr2" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAr3" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAr4" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAr5" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAr6" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAr7" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAr8" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAr9" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAra" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAArb" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAArc" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAr8" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAArd" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAr6" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAre" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAArf" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAr9" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAArg" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAArh" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAri" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAr9" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAArj" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAr7" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAArk" role="VG3je">
            <node concept="17UkqB" id="376SzOaAArl" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAArm" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAqY" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAArn" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAro" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAr9" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAArp" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAArq" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAqY" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAArr" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAArs" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAqY" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAArt" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAru" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAArv" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAr9" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAArw" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAr7" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAArx" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAry" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAArz" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAqY" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAr$" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAr_" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAra" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAArA" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAArB" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAArC" role="1qenE9">
        <property role="TrG5h" value="DosIniciales" />
        <node concept="VG3jA" id="376SzOaAArD" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAArE" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAArF" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAArG" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAArH" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAArI" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAArJ" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAArK" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAArL" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAArM" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAArN" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAArO" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAArP" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAArQ" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqQ" id="376SzOaAArR" role="17Ukqm">
          <property role="TrG5h" value="B" />
          <node concept="7CXmI" id="376SzOaAArS" role="lGtFl">
            <node concept="1TM$A" id="376SzOaAArT" role="7EUXB" />
          </node>
        </node>
        <node concept="17UkqO" id="376SzOaAArU" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAArV" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAArW" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAArQ" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAArX" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAArO" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAArY" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAArZ" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAArR" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAs0" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAs1" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAs2" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAArR" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAs3" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAArP" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAs4" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAs5" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAs6" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAArI" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAs7" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAs8" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAArR" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAs9" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAsa" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAArI" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAAsb" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAAsc" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAArI" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAAsd" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAse" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAsf" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAArR" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAsg" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAArP" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAsh" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAsi" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAsj" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAArI" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAsk" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAsl" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAArU" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAsm" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAsn" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAso" role="1qenE9">
        <property role="TrG5h" value="VariableDuplicada" />
        <node concept="VG3jA" id="376SzOaAAsp" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAsq" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAsr" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAss" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAst" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAsu" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAsv" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAsw" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAsx" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAsy" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAsz" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAs$" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAs_" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAsA" role="17Ukqt">
            <property role="17Ukq3" value="false" />
          </node>
          <node concept="7CXmI" id="376SzOaAAsB" role="lGtFl">
            <node concept="1TM$A" id="376SzOaAAsC" role="7EUXB" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAsD" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAsE" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAsF" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAsG" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAsH" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAAsI" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAsJ" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAsF" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAsK" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAsD" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAsL" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAsM" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAsG" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAsN" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAsO" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAsP" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAsG" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAsQ" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAsE" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAsR" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAsS" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAsT" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAsu" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAsU" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAsV" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAsG" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAsW" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAsX" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAsu" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAAsY" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAAsZ" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAsu" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAAt0" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAt1" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAt2" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAsG" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAt3" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAsE" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAt4" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAt5" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAt6" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAsu" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAt7" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAt8" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAsH" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAt9" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAta" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAtb" role="1qenE9">
        <property role="TrG5h" value="FinalConSalida" />
        <node concept="VG3jA" id="376SzOaAAtc" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAtd" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAte" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAtf" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAtg" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAth" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAti" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAtj" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAtk" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAtl" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAtm" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAtn" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAto" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAtp" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAtq" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAtr" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAAts" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAtt" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAtp" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAtu" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAtn" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAtv" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAtw" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAtq" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAtx" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAty" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAtz" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAtq" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAt$" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAto" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAt_" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAtA" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAtB" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAth" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAtC" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAtD" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAtq" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAtE" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAtF" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAth" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAAtG" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAAtH" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAth" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAAtI" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAtJ" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAtK" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAtq" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAtL" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAto" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAtM" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAtN" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAtO" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAth" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAtP" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAtQ" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAtr" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAtR" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAtS" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAtT" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAtr" resolve="F" />
            <node concept="7CXmI" id="376SzOaAAtU" role="lGtFl">
              <node concept="1TM$A" id="376SzOaAAtV" role="7EUXB" />
            </node>
          </node>
          <node concept="VG3j_" id="376SzOaAAtW" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAtn" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAtX" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAtY" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAtp" resolve="A" />
          </node>
          <node concept="VG3jB" id="376SzOaAAtZ" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAu0" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAu1" role="1qenE9">
        <property role="TrG5h" value="Inalcanzable" />
        <node concept="VG3jA" id="376SzOaAAu2" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAu3" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAu4" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAu5" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAu6" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAu7" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAu8" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAu9" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAua" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAub" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAuc" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAud" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAue" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAuf" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAug" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAuh" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqR" id="376SzOaAAui" role="17Ukqm">
          <property role="TrG5h" value="X" />
          <node concept="7CXmI" id="376SzOaAAuj" role="lGtFl">
            <node concept="29bkU" id="376SzOaAAuk" role="7EUXB" />
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAul" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAum" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAuf" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAun" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAud" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAuo" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAup" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAug" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAuq" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAur" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAus" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAug" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAut" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAue" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAuu" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAuv" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAuw" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAu7" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAux" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAuy" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAug" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAuz" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAu$" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAu7" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAAu_" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAAuA" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAu7" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAAuB" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAuC" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAuD" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAug" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAuE" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAue" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAuF" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAuG" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAuH" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAu7" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAuI" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAuJ" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAuh" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAuK" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAuL" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAuM" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAui" resolve="X" />
          </node>
          <node concept="VG3j_" id="376SzOaAAuN" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAue" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAuO" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAuP" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAuh" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAuQ" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAuR" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAuS" role="1qenE9">
        <property role="TrG5h" value="Deadlock" />
        <node concept="VG3jA" id="376SzOaAAuT" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAuU" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAuV" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAuW" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAuX" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAuY" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAuZ" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAv0" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAv1" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAv2" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAv3" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAv4" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAv5" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAv6" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAv7" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAv8" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqR" id="376SzOaAAv9" role="17Ukqm">
          <property role="TrG5h" value="D" />
          <node concept="7CXmI" id="376SzOaAAva" role="lGtFl">
            <node concept="1TM$A" id="376SzOaAAvb" role="7EUXB" />
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAvc" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAvd" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAv6" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAve" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAv4" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAvf" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAvg" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAv7" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAvh" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAvi" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAvj" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAv7" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAvk" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAv5" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAvl" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAvm" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAvn" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAuY" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAvo" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAvp" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAv7" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAvq" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAvr" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAuY" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAAvs" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAAvt" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAuY" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAAvu" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAvv" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAvw" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAv7" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAvx" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAv5" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAvy" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAvz" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAv$" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAuY" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAv_" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAvA" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAv8" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAvB" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAvC" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAvD" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAv6" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAvE" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAv5" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAvF" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAvG" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAv9" resolve="D" />
          </node>
          <node concept="VG3jB" id="376SzOaAAvH" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAvI" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAvJ" role="1qenE9">
        <property role="TrG5h" value="Trampa" />
        <node concept="VG3jA" id="376SzOaAAvK" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAvL" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAvM" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAvN" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAvO" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAvP" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAvQ" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAvR" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAvS" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAvT" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAvU" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAvV" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAvW" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAvX" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAvY" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAvZ" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqR" id="376SzOaAAw0" role="17Ukqm">
          <property role="TrG5h" value="T" />
          <node concept="7CXmI" id="376SzOaAAw1" role="lGtFl">
            <node concept="29bkU" id="376SzOaAAw2" role="7EUXB" />
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAw3" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAw4" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAvX" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAw5" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAvV" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAw6" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAw7" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAvY" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAw8" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAw9" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAwa" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAvY" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAwb" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAvW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAwc" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAwd" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAwe" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAvP" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAwf" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAwg" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAvY" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAwh" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAwi" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAvP" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAAwj" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAAwk" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAvP" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAAwl" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAwm" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAwn" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAvY" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAwo" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAvW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAwp" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAwq" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAwr" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAvP" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAws" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAwt" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAvZ" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAwu" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAwv" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAww" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAvX" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAwx" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAvW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAwy" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAwz" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAw0" resolve="T" />
          </node>
          <node concept="VG3jB" id="376SzOaAAw$" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAw_" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAwA" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAw0" resolve="T" />
          </node>
          <node concept="VG3j_" id="376SzOaAAwB" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAvW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAwC" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAwD" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAw0" resolve="T" />
          </node>
          <node concept="VG3jB" id="376SzOaAAwE" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAwF" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAwG" role="1qenE9">
        <property role="TrG5h" value="NoDeterminismoIntervalos" />
        <node concept="VG3jA" id="376SzOaAAwH" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAwI" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAwJ" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAwK" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAwL" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAwM" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAwN" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAwO" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAwP" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAwQ" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAwR" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAwS" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAwT" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAwU" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAwV" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAwW" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAAwX" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAwY" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAwU" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAwZ" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAwS" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAx0" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAx1" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAwV" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAx2" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAx3" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAx4" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAwV" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAx5" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAwT" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAx6" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAx7" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAx8" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAwM" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAx9" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAxa" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAwV" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAxb" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAxc" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAxd" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAwV" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAxe" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAwT" resolve="golpe" />
            <node concept="7CXmI" id="376SzOaAAxf" role="lGtFl">
              <node concept="1TM$A" id="376SzOaAAxg" role="7EUXB" />
            </node>
          </node>
          <node concept="VG3j$" id="376SzOaAAxh" role="VG3je">
            <node concept="17Ukq$" id="376SzOaAAxi" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAxj" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAwM" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAxk" role="17Ukq6">
                <property role="17Ukq2" value="20" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAxl" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAwW" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAxm" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAxn" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAxo" role="1qenE9">
        <property role="TrG5h" value="NoDeterminismoSinGuarda" />
        <node concept="VG3jA" id="376SzOaAAxp" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAxq" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAxr" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAxs" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAxt" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAxu" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAxv" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAxw" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAxx" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAxy" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAxz" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAx$" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAx_" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqQ" id="376SzOaAAxA" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAxB" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAxC" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAAxD" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAxE" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAxA" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAxF" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAx$" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAxG" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAxH" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAxB" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAxI" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAxJ" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAxK" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAxB" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAxL" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAx_" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAxM" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAxN" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAxO" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAxu" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAxP" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAxQ" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAxB" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAxR" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAxS" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAxu" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAAxT" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAAxU" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAxu" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAAxV" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAxW" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAxX" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAxB" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAxY" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAx_" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAxZ" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAy0" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAy1" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAxu" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAy2" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAy3" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAxC" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAy4" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAy5" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAy6" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAxA" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAy7" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAx$" resolve="ver" />
            <node concept="7CXmI" id="376SzOaAAy8" role="lGtFl">
              <node concept="1TM$A" id="376SzOaAAy9" role="7EUXB" />
            </node>
          </node>
          <node concept="VG3j$" id="376SzOaAAya" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAyb" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAxC" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAyc" role="VG3j4" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAAyd" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAAye" role="1qenE9">
        <property role="TrG5h" value="EventoSinUsar" />
        <node concept="VG3jA" id="376SzOaAAyf" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAAyg" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAAyh" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAAyi" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAAyj" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAAyk" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAAyl" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAAym" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAAyn" role="17Ukqg">
          <property role="TrG5h" value="flag" />
          <node concept="17UkqY" id="376SzOaAAyo" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAAyp" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAAyq" role="17Ukqh">
          <property role="TrG5h" value="ver" />
        </node>
        <node concept="17UkqP" id="376SzOaAAyr" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqP" id="376SzOaAAys" role="17Ukqh">
          <property role="TrG5h" value="cantar" />
          <node concept="7CXmI" id="376SzOaAAyt" role="lGtFl">
            <node concept="29bkU" id="376SzOaAAyu" role="7EUXB" />
          </node>
        </node>
        <node concept="17UkqQ" id="376SzOaAAyv" role="17Ukqm">
          <property role="TrG5h" value="A" />
        </node>
        <node concept="17UkqR" id="376SzOaAAyw" role="17Ukqm">
          <property role="TrG5h" value="B" />
        </node>
        <node concept="17UkqO" id="376SzOaAAyx" role="17Ukqm">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="17UkqU" id="376SzOaAAyy" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAyz" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAyv" resolve="A" />
          </node>
          <node concept="VG3j_" id="376SzOaAAy$" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAyq" resolve="ver" />
          </node>
          <node concept="VG3j$" id="376SzOaAAy_" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAAyA" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAyw" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAyB" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAAyC" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAyD" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAyw" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAyE" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAyr" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAyF" role="VG3je">
            <node concept="17UkqB" id="376SzOaAAyG" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAyH" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAyk" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAyI" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAyJ" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAyw" resolve="B" />
          </node>
          <node concept="VG3jB" id="376SzOaAAyK" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAAyL" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAAyk" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAAyM" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAAyN" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAAyk" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAAyO" role="17Ukq6">
                  <property role="17Ukq2" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAAyP" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAAyQ" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAAyw" resolve="B" />
          </node>
          <node concept="VG3j_" id="376SzOaAAyR" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAAyr" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAAyS" role="VG3je">
            <node concept="17UkqA" id="376SzOaAAyT" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAAyU" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAAyk" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAAyV" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAAyW" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAAyx" resolve="F" />
          </node>
          <node concept="VG3jB" id="376SzOaAAyX" role="VG3j4" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="376SzOaAtfn">
    <property role="TrG5h" value="Inferencias" />
    <node concept="1qefOq" id="376SzOaAtkl" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAtkm" role="1qenE9">
        <property role="TrG5h" value="Goblin" />
        <node concept="VG3jA" id="376SzOaAtkn" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAtko" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAtkp" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAtkq" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAtkr" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAtks" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAtkt" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAtku" role="17Ukqt">
            <property role="17Ukq2" value="100" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAtkv" role="17Ukqg">
          <property role="TrG5h" value="tieneArma" />
          <node concept="17UkqY" id="376SzOaAtkw" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAtkx" role="17Ukqt">
            <property role="17Ukq3" value="true" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAtky" role="17Ukqh">
          <property role="TrG5h" value="verJugador" />
        </node>
        <node concept="17UkqP" id="376SzOaAtkz" role="17Ukqh">
          <property role="TrG5h" value="perderJugador" />
        </node>
        <node concept="17UkqP" id="376SzOaAtk$" role="17Ukqh">
          <property role="TrG5h" value="recibirGolpe" />
        </node>
        <node concept="17UkqP" id="376SzOaAtk_" role="17Ukqh">
          <property role="TrG5h" value="tiempoAgotado" />
        </node>
        <node concept="17UkqQ" id="376SzOaAtkA" role="17Ukqm">
          <property role="TrG5h" value="Patrullar" />
        </node>
        <node concept="17UkqR" id="376SzOaAtkB" role="17Ukqm">
          <property role="TrG5h" value="Perseguir" />
        </node>
        <node concept="17UkqR" id="376SzOaAtkC" role="17Ukqm">
          <property role="TrG5h" value="Atacar" />
        </node>
        <node concept="17UkqR" id="376SzOaAtkD" role="17Ukqm">
          <property role="TrG5h" value="Huir" />
        </node>
        <node concept="17UkqO" id="376SzOaAtkE" role="17Ukqm">
          <property role="TrG5h" value="Muerto" />
        </node>
        <node concept="17UkqU" id="376SzOaAtkF" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtkG" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtkA" resolve="Patrullar" />
          </node>
          <node concept="VG3j_" id="376SzOaAtkH" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtky" resolve="verJugador" />
          </node>
          <node concept="VG3j$" id="376SzOaAtkI" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAtkJ" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtkB" resolve="Perseguir" />
          </node>
          <node concept="VG3jB" id="376SzOaAtkK" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAtkL" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtkM" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtkB" resolve="Perseguir" />
          </node>
          <node concept="VG3j_" id="376SzOaAtkN" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtky" resolve="verJugador" />
          </node>
          <node concept="VG3j$" id="376SzOaAtkO" role="VG3je">
            <node concept="17Ukqy" id="376SzOaAtkP" role="VG3jz">
              <ref role="17Ukq0" node="376SzOaAtkv" resolve="tieneArma" />
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtkQ" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtkC" resolve="Atacar" />
          </node>
          <node concept="VG3jB" id="376SzOaAtkR" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAtkS" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtkT" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtkB" resolve="Perseguir" />
          </node>
          <node concept="VG3j_" id="376SzOaAtkU" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtkz" resolve="perderJugador" />
          </node>
          <node concept="VG3j$" id="376SzOaAtkV" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAtkW" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtkA" resolve="Patrullar" />
          </node>
          <node concept="VG3jB" id="376SzOaAtkX" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAtkY" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtkZ" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtkC" resolve="Atacar" />
          </node>
          <node concept="VG3j_" id="376SzOaAtl0" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtk$" resolve="recibirGolpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAtl1" role="VG3je">
            <node concept="17UkqB" id="376SzOaAtl2" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAtl3" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAtks" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAtl4" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtl5" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtkC" resolve="Atacar" />
          </node>
          <node concept="VG3jB" id="376SzOaAtl6" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAtl7" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAtks" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAtl8" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAtl9" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAtks" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAtla" role="17Ukq6">
                  <property role="17Ukq2" value="20" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAtlb" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtlc" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtkC" resolve="Atacar" />
          </node>
          <node concept="VG3j_" id="376SzOaAtld" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtk$" resolve="recibirGolpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAtle" role="VG3je">
            <node concept="17UkqA" id="376SzOaAtlf" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAtlg" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAtks" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAtlh" role="17Ukq6">
                <property role="17Ukq2" value="30" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtli" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtkD" resolve="Huir" />
          </node>
          <node concept="VG3jB" id="376SzOaAtlj" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAtlk" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAtks" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAtll" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAtlm" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAtks" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAtln" role="17Ukq6">
                  <property role="17Ukq2" value="20" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAtlo" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtlp" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtkD" resolve="Huir" />
          </node>
          <node concept="VG3j_" id="376SzOaAtlq" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtk$" resolve="recibirGolpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAtlr" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAtls" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtkE" resolve="Muerto" />
          </node>
          <node concept="VG3jB" id="376SzOaAtlt" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAtlu" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtlv" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtkD" resolve="Huir" />
          </node>
          <node concept="VG3j_" id="376SzOaAtlw" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtk_" resolve="tiempoAgotado" />
          </node>
          <node concept="VG3j$" id="376SzOaAtlx" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAtly" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtkA" resolve="Patrullar" />
          </node>
          <node concept="VG3jB" id="376SzOaAtlz" role="VG3j4" />
        </node>
        <node concept="3xLA65" id="376SzOaAtl$" role="lGtFl">
          <property role="TrG5h" value="goblin" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAtl_" role="1SKRRt">
      <node concept="17UkqG" id="376SzOaAtlA" role="1qenE9">
        <property role="TrG5h" value="Pelea" />
        <ref role="17Ukqa" node="376SzOaAtkm" resolve="Goblin" />
        <node concept="17UkqH" id="376SzOaAtlB" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtky" resolve="verJugador" />
        </node>
        <node concept="17UkqH" id="376SzOaAtlC" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtky" resolve="verJugador" />
        </node>
        <node concept="17UkqH" id="376SzOaAtlD" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtk$" resolve="recibirGolpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtlE" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtk$" resolve="recibirGolpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtlF" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtk$" resolve="recibirGolpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtlG" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtk$" resolve="recibirGolpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtlH" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtk$" resolve="recibirGolpe" />
        </node>
        <node concept="3xLA65" id="376SzOaAtlI" role="lGtFl">
          <property role="TrG5h" value="pelea" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAtlJ" role="1SKRRt">
      <node concept="17UkqK" id="376SzOaAtlK" role="1qenE9">
        <property role="TrG5h" value="JefeFinal" />
        <node concept="VG3jA" id="376SzOaAtlL" role="VG3j1">
          <property role="VG3jt" value="Desde" />
        </node>
        <node concept="VG3jA" id="376SzOaAtlM" role="VG3j1">
          <property role="VG3jt" value="Evento" />
        </node>
        <node concept="VG3jA" id="376SzOaAtlN" role="VG3j1">
          <property role="VG3jt" value="Guarda" />
        </node>
        <node concept="VG3jA" id="376SzOaAtlO" role="VG3j1">
          <property role="VG3jt" value="Hacia" />
        </node>
        <node concept="VG3jA" id="376SzOaAtlP" role="VG3j1">
          <property role="VG3jt" value="Accion" />
        </node>
        <node concept="17UkqV" id="376SzOaAtlQ" role="17Ukqg">
          <property role="TrG5h" value="vida" />
          <node concept="17UkqT" id="376SzOaAtlR" role="17Ukqi" />
          <node concept="17UkqW" id="376SzOaAtlS" role="17Ukqt">
            <property role="17Ukq2" value="300" />
          </node>
        </node>
        <node concept="17UkqV" id="376SzOaAtlT" role="17Ukqg">
          <property role="TrG5h" value="enrage" />
          <node concept="17UkqY" id="376SzOaAtlU" role="17Ukqi" />
          <node concept="17UkqX" id="376SzOaAtlV" role="17Ukqt">
            <property role="17Ukq3" value="false" />
          </node>
        </node>
        <node concept="17UkqP" id="376SzOaAtlW" role="17Ukqh">
          <property role="TrG5h" value="golpe" />
        </node>
        <node concept="17UkqP" id="376SzOaAtlX" role="17Ukqh">
          <property role="TrG5h" value="curarse" />
        </node>
        <node concept="17UkqP" id="376SzOaAtlY" role="17Ukqh">
          <property role="TrG5h" value="tiempo" />
        </node>
        <node concept="17UkqQ" id="376SzOaAtlZ" role="17Ukqm">
          <property role="TrG5h" value="Fase1" />
        </node>
        <node concept="17UkqR" id="376SzOaAtm0" role="17Ukqm">
          <property role="TrG5h" value="Fase2" />
        </node>
        <node concept="17UkqR" id="376SzOaAtm1" role="17Ukqm">
          <property role="TrG5h" value="Fase3" />
        </node>
        <node concept="17UkqO" id="376SzOaAtm2" role="17Ukqm">
          <property role="TrG5h" value="Derrotado" />
        </node>
        <node concept="17UkqU" id="376SzOaAtm3" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtm4" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtlZ" resolve="Fase1" />
          </node>
          <node concept="VG3j_" id="376SzOaAtm5" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtlW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAtm6" role="VG3je">
            <node concept="17UkqB" id="376SzOaAtm7" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAtm8" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAtm9" role="17Ukq6">
                <property role="17Ukq2" value="200" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtma" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtlZ" resolve="Fase1" />
          </node>
          <node concept="VG3jB" id="376SzOaAtmb" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAtmc" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAtlQ" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAtmd" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAtme" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAtmf" role="17Ukq6">
                  <property role="17Ukq2" value="50" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAtmg" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtmh" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtlZ" resolve="Fase1" />
          </node>
          <node concept="VG3j_" id="376SzOaAtmi" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtlW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAtmj" role="VG3je">
            <node concept="17UkqA" id="376SzOaAtmk" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAtml" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAtmm" role="17Ukq6">
                <property role="17Ukq2" value="200" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtmn" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtm0" resolve="Fase2" />
          </node>
          <node concept="VG3jB" id="376SzOaAtmo" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAtmp" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAtlQ" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAtmq" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAtmr" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAtms" role="17Ukq6">
                  <property role="17Ukq2" value="50" />
                </node>
              </node>
            </node>
            <node concept="17UkqJ" id="376SzOaAtmt" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAtlT" resolve="enrage" />
              <node concept="17UkqX" id="376SzOaAtmu" role="17Ukq4">
                <property role="17Ukq3" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAtmv" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtmw" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtm0" resolve="Fase2" />
          </node>
          <node concept="VG3j_" id="376SzOaAtmx" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtlW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAtmy" role="VG3je">
            <node concept="17UkqI" id="376SzOaAtmz" role="VG3jz">
              <node concept="17UkqB" id="376SzOaAtm$" role="17Ukq1">
                <node concept="17Ukqy" id="376SzOaAtm_" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAtmA" role="17Ukq6">
                  <property role="17Ukq2" value="100" />
                </node>
              </node>
              <node concept="17Ukqy" id="376SzOaAtmB" role="17Ukq6">
                <ref role="17Ukq0" node="376SzOaAtlT" resolve="enrage" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtmC" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtm0" resolve="Fase2" />
          </node>
          <node concept="VG3jB" id="376SzOaAtmD" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAtmE" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAtlQ" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAtmF" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAtmG" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAtmH" role="17Ukq6">
                  <property role="17Ukq2" value="40" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAtmI" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtmJ" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtm0" resolve="Fase2" />
          </node>
          <node concept="VG3j_" id="376SzOaAtmK" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtlW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAtmL" role="VG3je">
            <node concept="17UkqA" id="376SzOaAtmM" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAtmN" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAtmO" role="17Ukq6">
                <property role="17Ukq2" value="100" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtmP" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtm1" resolve="Fase3" />
          </node>
          <node concept="VG3jB" id="376SzOaAtmQ" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAtmR" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAtlQ" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAtmS" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAtmT" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAtmU" role="17Ukq6">
                  <property role="17Ukq2" value="40" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAtmV" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtmW" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtm0" resolve="Fase2" />
          </node>
          <node concept="VG3j_" id="376SzOaAtmX" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtlX" resolve="curarse" />
          </node>
          <node concept="VG3j$" id="376SzOaAtmY" role="VG3je">
            <node concept="17Ukq_" id="376SzOaAtmZ" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAtn0" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAtlT" resolve="enrage" />
              </node>
              <node concept="17UkqX" id="376SzOaAtn1" role="17Ukq6">
                <property role="17Ukq3" value="false" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtn2" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtlZ" resolve="Fase1" />
          </node>
          <node concept="VG3jB" id="376SzOaAtn3" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAtn4" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAtlQ" resolve="vida" />
              <node concept="17UkqC" id="376SzOaAtn5" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAtn6" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAtn7" role="17Ukq6">
                  <property role="17Ukq2" value="50" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAtn8" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtn9" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtm1" resolve="Fase3" />
          </node>
          <node concept="VG3j_" id="376SzOaAtna" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtlW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAtnb" role="VG3je">
            <node concept="17UkqB" id="376SzOaAtnc" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAtnd" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAtne" role="17Ukq6">
                <property role="17Ukq2" value="0" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtnf" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtm1" resolve="Fase3" />
          </node>
          <node concept="VG3jB" id="376SzOaAtng" role="VG3j4">
            <node concept="17UkqJ" id="376SzOaAtnh" role="VG3jy">
              <ref role="17Ukq7" node="376SzOaAtlQ" resolve="vida" />
              <node concept="17UkqD" id="376SzOaAtni" role="17Ukq4">
                <node concept="17Ukqy" id="376SzOaAtnj" role="17Ukq1">
                  <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
                </node>
                <node concept="17UkqW" id="376SzOaAtnk" role="17Ukq6">
                  <property role="17Ukq2" value="30" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17UkqU" id="376SzOaAtnl" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtnm" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtm1" resolve="Fase3" />
          </node>
          <node concept="VG3j_" id="376SzOaAtnn" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtlW" resolve="golpe" />
          </node>
          <node concept="VG3j$" id="376SzOaAtno" role="VG3je">
            <node concept="17UkqA" id="376SzOaAtnp" role="VG3jz">
              <node concept="17Ukqy" id="376SzOaAtnq" role="17Ukq1">
                <ref role="17Ukq0" node="376SzOaAtlQ" resolve="vida" />
              </node>
              <node concept="17UkqW" id="376SzOaAtnr" role="17Ukq6">
                <property role="17Ukq2" value="0" />
              </node>
            </node>
          </node>
          <node concept="VG3jE" id="376SzOaAtns" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtm2" resolve="Derrotado" />
          </node>
          <node concept="VG3jB" id="376SzOaAtnt" role="VG3j4" />
        </node>
        <node concept="17UkqU" id="376SzOaAtnu" role="17Ukqn">
          <node concept="VG3jE" id="376SzOaAtnv" role="VG3jg">
            <ref role="VG3jx" node="376SzOaAtm1" resolve="Fase3" />
          </node>
          <node concept="VG3j_" id="376SzOaAtnw" role="VG3jd">
            <ref role="VG3jw" node="376SzOaAtlY" resolve="tiempo" />
          </node>
          <node concept="VG3j$" id="376SzOaAtnx" role="VG3je" />
          <node concept="VG3jE" id="376SzOaAtny" role="VG3jb">
            <ref role="VG3jx" node="376SzOaAtm0" resolve="Fase2" />
          </node>
          <node concept="VG3jB" id="376SzOaAtnz" role="VG3j4" />
        </node>
        <node concept="3xLA65" id="376SzOaAtn$" role="lGtFl">
          <property role="TrG5h" value="jefe" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="376SzOaAtn_" role="1SKRRt">
      <node concept="17UkqG" id="376SzOaAtnA" role="1qenE9">
        <property role="TrG5h" value="BatallaFinal" />
        <ref role="17Ukqa" node="376SzOaAtlK" resolve="JefeFinal" />
        <node concept="17UkqH" id="376SzOaAtnB" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtlW" resolve="golpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtnC" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtlW" resolve="golpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtnD" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtlW" resolve="golpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtnE" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtlW" resolve="golpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtnF" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtlW" resolve="golpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtnG" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtlW" resolve="golpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtnH" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtlW" resolve="golpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtnI" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtlW" resolve="golpe" />
        </node>
        <node concept="17UkqH" id="376SzOaAtnJ" role="17Ukqb">
          <ref role="17Ukq8" node="376SzOaAtlW" resolve="golpe" />
        </node>
        <node concept="3xLA65" id="376SzOaAtnK" role="lGtFl">
          <property role="TrG5h" value="batalla" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="376SzOaAu75" role="1SL9yI">
      <property role="TrG5h" value="alcanzablesGoblin" />
      <node concept="3cqZAl" id="376SzOaAu77" role="3clF45" />
      <node concept="3clFbS" id="376SzOaAu78" role="3clF47">
        <node concept="3vlDli" id="376SzOaAu79" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOaAuaG" role="3tpDZB">
            <node concept="2YIFZM" id="376SzOaAu8d" role="2Oq$k0">
              <ref role="1Pybhc" to="pkeo:376SzOawh4I" resolve="Razonador" />
              <ref role="37wK5l" to="pkeo:376SzOawh4K" resolve="reachable" />
              <node concept="3xONca" id="376SzOaAvwb" role="37wK5m">
                <ref role="3xOPvv" node="376SzOaAtl$" resolve="goblin" />
              </node>
            </node>
            <node concept="liA8E" id="376SzOaAuaH" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
            </node>
          </node>
          <node concept="3cmrfG" id="376SzOaAvw7" role="3tpDZA">
            <property role="3cmrfH" value="5" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="376SzOaAu7c" role="1SL9yI">
      <property role="TrG5h" value="goblinEsDeterminista" />
      <node concept="3cqZAl" id="376SzOaAu7e" role="3clF45" />
      <node concept="3clFbS" id="376SzOaAu7f" role="3clF47">
        <node concept="3vlDli" id="376SzOaAu7g" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOaAutF" role="3tpDZB">
            <node concept="2YIFZM" id="376SzOaAuqP" role="2Oq$k0">
              <ref role="1Pybhc" to="pkeo:376SzOawh4I" resolve="Razonador" />
              <ref role="37wK5l" to="pkeo:376SzOawh8f" resolve="nodes" />
              <node concept="3xONca" id="376SzOaAvwc" role="37wK5m">
                <ref role="3xOPvv" node="376SzOaAtl$" resolve="goblin" />
              </node>
              <node concept="Xl_RD" id="376SzOaAuqR" role="37wK5m">
                <property role="Xl_RC" value="error" />
              </node>
            </node>
            <node concept="liA8E" id="376SzOaAutG" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
            </node>
          </node>
          <node concept="3cmrfG" id="376SzOaAvw8" role="3tpDZA">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="376SzOaAu7j" role="1SL9yI">
      <property role="TrG5h" value="simulacionPeleaTerminaEnHuir" />
      <node concept="3cqZAl" id="376SzOaAu7l" role="3clF45" />
      <node concept="3clFbS" id="376SzOaAu7m" role="3clF47">
        <node concept="3vlDli" id="376SzOaAu7n" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOaAuPa" role="3tpDZB">
            <ref role="1Pybhc" to="pkeo:376SzOawh4I" resolve="Razonador" />
            <ref role="37wK5l" to="pkeo:376SzOawhuK" resolve="finalStateName" />
            <node concept="3xONca" id="376SzOaAvwd" role="37wK5m">
              <ref role="3xOPvv" node="376SzOaAtlI" resolve="pelea" />
            </node>
          </node>
          <node concept="Xl_RD" id="376SzOaAvw9" role="3tpDZA">
            <property role="Xl_RC" value="Huir" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="376SzOaAu7q" role="1SL9yI">
      <property role="TrG5h" value="simulacionJefeTerminaDerrotado" />
      <node concept="3cqZAl" id="376SzOaAu7s" role="3clF45" />
      <node concept="3clFbS" id="376SzOaAu7t" role="3clF47">
        <node concept="3vlDli" id="376SzOaAu7u" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOaAvak" role="3tpDZB">
            <ref role="1Pybhc" to="pkeo:376SzOawh4I" resolve="Razonador" />
            <ref role="37wK5l" to="pkeo:376SzOawhuK" resolve="finalStateName" />
            <node concept="3xONca" id="376SzOaAvwe" role="37wK5m">
              <ref role="3xOPvv" node="376SzOaAtnK" resolve="batalla" />
            </node>
          </node>
          <node concept="Xl_RD" id="376SzOaAvwa" role="3tpDZA">
            <property role="Xl_RC" value="Derrotado" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

