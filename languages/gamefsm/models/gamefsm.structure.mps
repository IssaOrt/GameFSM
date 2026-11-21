<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:476a94d4-63d0-45c7-958e-14e2803e5fca(gamefsm.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="PlHQZ" id="4s$SF80Nqg1">
    <property role="TrG5h" value="ITyped" />
    <property role="EcuMT" value="5126471530000000001" />
    <node concept="1TJgyj" id="4s$SF80Nqgw" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000032" />
      <ref role="20lvS9" node="4s$SF80Nqga" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqg2">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Character" />
    <property role="34LRSv" value="personaje" />
    <property role="EcuMT" value="5126471530000000002" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4s$SF80Nqgx" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="4s$SF80Nqgy" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variables" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5126471530000000034" />
      <ref role="20lvS9" node="4s$SF80Nqg9" resolve="Variable" />
    </node>
    <node concept="1TJgyj" id="4s$SF80Nqgz" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="events" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <property role="IQ2ns" value="5126471530000000035" />
      <ref role="20lvS9" node="4s$SF80Nqg7" resolve="Event" />
    </node>
    <node concept="1TJgyj" id="4s$SF80Nqg$" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="states" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <property role="IQ2ns" value="5126471530000000036" />
      <ref role="20lvS9" node="4s$SF80Nqg3" resolve="State" />
    </node>
    <node concept="1TJgyj" id="4s$SF80Nqg_" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="transitions" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5126471530000000037" />
      <ref role="20lvS9" node="4s$SF80Nqg8" resolve="Transition" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqg3">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="State" />
    <property role="EcuMT" value="5126471530000000003" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4s$SF80NqgA" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqg4">
    <property role="TrG5h" value="InitialState" />
    <property role="34LRSv" value="estado inicial" />
    <property role="EcuMT" value="5126471530000000004" />
    <ref role="1TJDcQ" node="4s$SF80Nqg3" resolve="State" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqg5">
    <property role="TrG5h" value="NormalState" />
    <property role="34LRSv" value="estado" />
    <property role="EcuMT" value="5126471530000000005" />
    <ref role="1TJDcQ" node="4s$SF80Nqg3" resolve="State" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqg6">
    <property role="TrG5h" value="FinalState" />
    <property role="34LRSv" value="estado final" />
    <property role="EcuMT" value="5126471530000000006" />
    <ref role="1TJDcQ" node="4s$SF80Nqg3" resolve="State" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqg7">
    <property role="TrG5h" value="Event" />
    <property role="34LRSv" value="evento" />
    <property role="EcuMT" value="5126471530000000007" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4s$SF80NqgB" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqg8">
    <property role="TrG5h" value="Transition" />
    <property role="34LRSv" value="transicion" />
    <property role="EcuMT" value="5126471530000000008" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4s$SF80NqgC" role="1TKVEi">
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000040" />
      <ref role="20lvS9" node="4s$SF80Nqg3" resolve="State" />
    </node>
    <node concept="1TJgyj" id="4s$SF80NqgD" role="1TKVEi">
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000041" />
      <ref role="20lvS9" node="4s$SF80Nqg7" resolve="Event" />
    </node>
    <node concept="1TJgyj" id="4s$SF80NqgE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="guard" />
      <property role="IQ2ns" value="5126471530000000042" />
      <ref role="20lvS9" node="4s$SF80Nqgd" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="4s$SF80NqgF" role="1TKVEi">
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000043" />
      <ref role="20lvS9" node="4s$SF80Nqg3" resolve="State" />
    </node>
    <node concept="1TJgyj" id="4s$SF80NqgG" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="fLJekj5/0..n" />
      <property role="IQ2ns" value="5126471530000000044" />
      <ref role="20lvS9" node="4s$SF80Nqgt" resolve="Assignment" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqg9">
    <property role="TrG5h" value="Variable" />
    <property role="34LRSv" value="variable" />
    <property role="EcuMT" value="5126471530000000009" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4s$SF80NqgH" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="4s$SF80NqgI" role="PzmwI">
      <ref role="PrY4T" node="4s$SF80Nqg1" resolve="ITyped" />
    </node>
    <node concept="1TJgyj" id="4s$SF80NqgJ" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initialValue" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000047" />
      <ref role="20lvS9" node="4s$SF80Nqgd" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqga">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="Type" />
    <property role="EcuMT" value="5126471530000000010" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgb">
    <property role="TrG5h" value="IntType" />
    <property role="34LRSv" value="entero" />
    <property role="EcuMT" value="5126471530000000011" />
    <ref role="1TJDcQ" node="4s$SF80Nqga" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgc">
    <property role="TrG5h" value="BoolType" />
    <property role="34LRSv" value="booleano" />
    <property role="EcuMT" value="5126471530000000012" />
    <ref role="1TJDcQ" node="4s$SF80Nqga" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgd">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="Expression" />
    <property role="EcuMT" value="5126471530000000013" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqge">
    <property role="TrG5h" value="IntLiteral" />
    <property role="34LRSv" value="numero" />
    <property role="EcuMT" value="5126471530000000014" />
    <ref role="1TJDcQ" node="4s$SF80Nqgd" resolve="Expression" />
    <node concept="1TJgyi" id="4s$SF80NqgK" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="5126471530000000048" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgf">
    <property role="TrG5h" value="BoolLiteral" />
    <property role="34LRSv" value="logico" />
    <property role="EcuMT" value="5126471530000000015" />
    <ref role="1TJDcQ" node="4s$SF80Nqgd" resolve="Expression" />
    <node concept="1TJgyi" id="4s$SF80NqgL" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="5126471530000000049" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgg">
    <property role="TrG5h" value="VariableRef" />
    <property role="EcuMT" value="5126471530000000016" />
    <ref role="1TJDcQ" node="4s$SF80Nqgd" resolve="Expression" />
    <node concept="1TJgyj" id="4s$SF80NqgM" role="1TKVEi">
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000050" />
      <ref role="20lvS9" node="4s$SF80Nqg9" resolve="Variable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgh">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="BinaryExpression" />
    <property role="EcuMT" value="5126471530000000017" />
    <ref role="1TJDcQ" node="4s$SF80Nqgd" resolve="Expression" />
    <node concept="1TJgyj" id="4s$SF80NqgN" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000051" />
      <ref role="20lvS9" node="4s$SF80Nqgd" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="4s$SF80NqgO" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000052" />
      <ref role="20lvS9" node="4s$SF80Nqgd" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgi">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="ComparisonExpr" />
    <property role="EcuMT" value="5126471530000000018" />
    <ref role="1TJDcQ" node="4s$SF80Nqgh" resolve="BinaryExpression" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgj">
    <property role="TrG5h" value="LessExpr" />
    <property role="34LRSv" value="&lt;" />
    <property role="EcuMT" value="5126471530000000019" />
    <ref role="1TJDcQ" node="4s$SF80Nqgi" resolve="ComparisonExpr" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgk">
    <property role="TrG5h" value="LessEqExpr" />
    <property role="34LRSv" value="&lt;=" />
    <property role="EcuMT" value="5126471530000000020" />
    <ref role="1TJDcQ" node="4s$SF80Nqgi" resolve="ComparisonExpr" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgl">
    <property role="TrG5h" value="GreaterExpr" />
    <property role="34LRSv" value="&gt;" />
    <property role="EcuMT" value="5126471530000000021" />
    <ref role="1TJDcQ" node="4s$SF80Nqgi" resolve="ComparisonExpr" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgm">
    <property role="TrG5h" value="GreaterEqExpr" />
    <property role="34LRSv" value="&gt;=" />
    <property role="EcuMT" value="5126471530000000022" />
    <ref role="1TJDcQ" node="4s$SF80Nqgi" resolve="ComparisonExpr" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgn">
    <property role="TrG5h" value="EqualsExpr" />
    <property role="34LRSv" value="==" />
    <property role="EcuMT" value="5126471530000000023" />
    <ref role="1TJDcQ" node="4s$SF80Nqgi" resolve="ComparisonExpr" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgo">
    <property role="TrG5h" value="NotEqualsExpr" />
    <property role="34LRSv" value="!=" />
    <property role="EcuMT" value="5126471530000000024" />
    <ref role="1TJDcQ" node="4s$SF80Nqgi" resolve="ComparisonExpr" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgp">
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="ArithmeticExpr" />
    <property role="EcuMT" value="5126471530000000025" />
    <ref role="1TJDcQ" node="4s$SF80Nqgh" resolve="BinaryExpression" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgq">
    <property role="TrG5h" value="PlusExpr" />
    <property role="34LRSv" value="+" />
    <property role="EcuMT" value="5126471530000000026" />
    <ref role="1TJDcQ" node="4s$SF80Nqgp" resolve="ArithmeticExpr" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgr">
    <property role="TrG5h" value="MinusExpr" />
    <property role="34LRSv" value="-" />
    <property role="EcuMT" value="5126471530000000027" />
    <ref role="1TJDcQ" node="4s$SF80Nqgp" resolve="ArithmeticExpr" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgs">
    <property role="TrG5h" value="AndExpr" />
    <property role="34LRSv" value="and" />
    <property role="EcuMT" value="5126471530000000028" />
    <ref role="1TJDcQ" node="4s$SF80Nqgh" resolve="BinaryExpression" />
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgt">
    <property role="TrG5h" value="Assignment" />
    <property role="EcuMT" value="5126471530000000029" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4s$SF80NqgP" role="1TKVEi">
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000053" />
      <ref role="20lvS9" node="4s$SF80Nqg9" resolve="Variable" />
    </node>
    <node concept="1TJgyj" id="4s$SF80NqgQ" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000054" />
      <ref role="20lvS9" node="4s$SF80Nqgd" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgu">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Scenario" />
    <property role="34LRSv" value="escenario" />
    <property role="EcuMT" value="5126471530000000030" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4s$SF80NqgR" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="4s$SF80NqgS" role="1TKVEi">
      <property role="20kJfa" value="character" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000056" />
      <ref role="20lvS9" node="4s$SF80Nqg2" resolve="Character" />
    </node>
    <node concept="1TJgyj" id="4s$SF80NqgT" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="steps" />
      <property role="20lbJX" value="fLJekj6/1..n" />
      <property role="IQ2ns" value="5126471530000000057" />
      <ref role="20lvS9" node="4s$SF80Nqgv" resolve="ScenarioStep" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s$SF80Nqgv">
    <property role="TrG5h" value="ScenarioStep" />
    <property role="EcuMT" value="5126471530000000031" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4s$SF80NqgU" role="1TKVEi">
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5126471530000000058" />
      <ref role="20lvS9" node="4s$SF80Nqg7" resolve="Event" />
    </node>
  </node>
</model>

