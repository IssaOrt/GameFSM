<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5a88edf4-6ce3-4f69-a89e-a5cfc56fc670(gamefsm.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="uzwb" ref="r:476a94d4-63d0-45c7-958e-14e2803e5fca(gamefsm.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="2791683072064593257" name="packageName" index="2HnT6v" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="376SzOavlJj">
    <property role="TrG5h" value="GameFsmScopes" />
    <property role="2HnT6v" value="gamefsm.constraints" />
    <node concept="3Tm1VV" id="376SzOavlJk" role="1B3o_S" />
    <node concept="3UR2Jj" id="376SzOavlLN" role="lGtFl">
      <node concept="1PaTwC" id="376SzOavlLO" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOavlLP" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="376SzOavlLW" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOavlLX" role="1PaTwD">
          <property role="3oM_SC" value="Scoping" />
        </node>
        <node concept="3oM_SD" id="376SzOavlLY" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="376SzOavlLZ" role="1PaTwD">
          <property role="3oM_SC" value="GameFSM:" />
        </node>
        <node concept="3oM_SD" id="376SzOavlM0" role="1PaTwD">
          <property role="3oM_SC" value="calcula" />
        </node>
        <node concept="3oM_SD" id="376SzOavlM1" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="376SzOavlM2" role="1PaTwD">
          <property role="3oM_SC" value="que" />
        </node>
        <node concept="3oM_SD" id="376SzOavlM3" role="1PaTwD">
          <property role="3oM_SC" value="nodos" />
        </node>
        <node concept="3oM_SD" id="376SzOavlM4" role="1PaTwD">
          <property role="3oM_SC" value="puede" />
        </node>
        <node concept="3oM_SD" id="376SzOavlM5" role="1PaTwD">
          <property role="3oM_SC" value="apuntar" />
        </node>
        <node concept="3oM_SD" id="376SzOavlM6" role="1PaTwD">
          <property role="3oM_SC" value="cada" />
        </node>
        <node concept="3oM_SD" id="376SzOavlM7" role="1PaTwD">
          <property role="3oM_SC" value="referencia." />
        </node>
      </node>
      <node concept="1PaTwC" id="376SzOavlM8" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOavlM9" role="1PaTwD">
          <property role="3oM_SC" value="Regla:" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMa" role="1PaTwD">
          <property role="3oM_SC" value="un" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMb" role="1PaTwD">
          <property role="3oM_SC" value="estado," />
        </node>
        <node concept="3oM_SD" id="376SzOavlMc" role="1PaTwD">
          <property role="3oM_SC" value="evento" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMd" role="1PaTwD">
          <property role="3oM_SC" value="o" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMe" role="1PaTwD">
          <property role="3oM_SC" value="variable" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMf" role="1PaTwD">
          <property role="3oM_SC" value="solo" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMg" role="1PaTwD">
          <property role="3oM_SC" value="se" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMh" role="1PaTwD">
          <property role="3oM_SC" value="puede" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMi" role="1PaTwD">
          <property role="3oM_SC" value="usar" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMj" role="1PaTwD">
          <property role="3oM_SC" value="dentro" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMk" role="1PaTwD">
          <property role="3oM_SC" value="del" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMl" role="1PaTwD">
          <property role="3oM_SC" value="MISMO" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMm" role="1PaTwD">
          <property role="3oM_SC" value="personaje" />
        </node>
      </node>
      <node concept="1PaTwC" id="376SzOavlMn" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOavlMo" role="1PaTwD">
          <property role="3oM_SC" value="donde" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMp" role="1PaTwD">
          <property role="3oM_SC" value="fue" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMq" role="1PaTwD">
          <property role="3oM_SC" value="declarado" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMr" role="1PaTwD">
          <property role="3oM_SC" value="(sensibilidad" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMs" role="1PaTwD">
          <property role="3oM_SC" value="al" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMt" role="1PaTwD">
          <property role="3oM_SC" value="contexto," />
        </node>
        <node concept="3oM_SD" id="376SzOavlMu" role="1PaTwD">
          <property role="3oM_SC" value="algo" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMv" role="1PaTwD">
          <property role="3oM_SC" value="que" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMw" role="1PaTwD">
          <property role="3oM_SC" value="una" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMx" role="1PaTwD">
          <property role="3oM_SC" value="gramatica" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMy" role="1PaTwD">
          <property role="3oM_SC" value="libre" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMz" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
      </node>
      <node concept="1PaTwC" id="376SzOavlM$" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOavlM_" role="1PaTwD">
          <property role="3oM_SC" value="contexto" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMA" role="1PaTwD">
          <property role="3oM_SC" value="no" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMB" role="1PaTwD">
          <property role="3oM_SC" value="puede" />
        </node>
        <node concept="3oM_SD" id="376SzOavlMC" role="1PaTwD">
          <property role="3oM_SC" value="expresar)." />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOavlJl" role="jymVt">
      <property role="TrG5h" value="enclosingCharacter" />
      <node concept="37vLTG" id="376SzOavlJm" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="376SzOavlJn" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOavlJo" role="3clF47">
        <node concept="3cpWs8" id="376SzOavlJq" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOavlJp" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3uibUv" id="376SzOavlJr" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="376SzOavlJs" role="33vP2m">
              <ref role="3cqZAo" node="376SzOavlJm" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="376SzOavlJU" role="3cqZAp">
          <node concept="3y3z36" id="376SzOavlJt" role="2$JKZa">
            <node concept="37vLTw" id="376SzOavlJu" role="3uHU7B">
              <ref role="3cqZAo" node="376SzOavlJp" resolve="current" />
            </node>
            <node concept="10Nm6u" id="376SzOavlJv" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="376SzOavlJx" role="2LFqv$">
            <node concept="3clFbJ" id="376SzOavlJy" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOavlXs" role="3clFbw">
                <node concept="2OqwBi" id="376SzOavlV2" role="2Oq$k0">
                  <node concept="2OqwBi" id="376SzOavlQ3" role="2Oq$k0">
                    <node concept="37vLTw" id="376SzOavlO9" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOavlJp" resolve="current" />
                    </node>
                    <node concept="liA8E" id="376SzOavlQ4" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                  <node concept="liA8E" id="376SzOavlV3" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="liA8E" id="376SzOavlXt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="Xl_RD" id="376SzOavlXu" role="37wK5m">
                    <property role="Xl_RC" value="Character" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="376SzOavlJC" role="3clFbx">
                <node concept="3cpWs6" id="376SzOavlJD" role="3cqZAp">
                  <node concept="37vLTw" id="376SzOavlJE" role="3cqZAk">
                    <ref role="3cqZAo" node="376SzOavlJp" resolve="current" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="376SzOavlJF" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOavlY1" role="3clFbw">
                <node concept="2OqwBi" id="376SzOavlVw" role="2Oq$k0">
                  <node concept="2OqwBi" id="376SzOavlQv" role="2Oq$k0">
                    <node concept="37vLTw" id="376SzOavlOt" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOavlJp" resolve="current" />
                    </node>
                    <node concept="liA8E" id="376SzOavlQw" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                  <node concept="liA8E" id="376SzOavlVx" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="liA8E" id="376SzOavlY2" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="Xl_RD" id="376SzOavlY3" role="37wK5m">
                    <property role="Xl_RC" value="Scenario" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="376SzOavlJL" role="3clFbx">
                <node concept="3cpWs6" id="376SzOavlJM" role="3cqZAp">
                  <node concept="1rXfSq" id="376SzOavlJN" role="3cqZAk">
                    <ref role="37wK5l" node="376SzOavlLo" resolve="referenceTarget" />
                    <node concept="37vLTw" id="376SzOavlJO" role="37wK5m">
                      <ref role="3cqZAo" node="376SzOavlJp" resolve="current" />
                    </node>
                    <node concept="Xl_RD" id="376SzOavlJP" role="37wK5m">
                      <property role="Xl_RC" value="character" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="376SzOavlJQ" role="3cqZAp">
              <node concept="37vLTI" id="376SzOavlJR" role="3clFbG">
                <node concept="37vLTw" id="376SzOavlJS" role="37vLTJ">
                  <ref role="3cqZAo" node="376SzOavlJp" resolve="current" />
                </node>
                <node concept="2OqwBi" id="376SzOavlQF" role="37vLTx">
                  <node concept="37vLTw" id="376SzOavlOx" role="2Oq$k0">
                    <ref role="3cqZAo" node="376SzOavlJp" resolve="current" />
                  </node>
                  <node concept="liA8E" id="376SzOavlQG" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="376SzOavlJV" role="3cqZAp">
          <node concept="10Nm6u" id="376SzOavlJW" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOavlJX" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOavlJY" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="P$JXv" id="376SzOavlJZ" role="lGtFl">
        <node concept="1PaTwC" id="376SzOavlK0" role="1Vez_I">
          <node concept="3oM_SD" id="376SzOavlK1" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="376SzOavlMD" role="1Vez_I">
          <node concept="3oM_SD" id="376SzOavlME" role="1PaTwD">
            <property role="3oM_SC" value="Sube" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMF" role="1PaTwD">
            <property role="3oM_SC" value="por" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMG" role="1PaTwD">
            <property role="3oM_SC" value="el" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMH" role="1PaTwD">
            <property role="3oM_SC" value="arbol" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMI" role="1PaTwD">
            <property role="3oM_SC" value="hasta" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMJ" role="1PaTwD">
            <property role="3oM_SC" value="encontrar" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMK" role="1PaTwD">
            <property role="3oM_SC" value="el" />
          </node>
          <node concept="3oM_SD" id="376SzOavlML" role="1PaTwD">
            <property role="3oM_SC" value="personaje" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMM" role="1PaTwD">
            <property role="3oM_SC" value="(Character)" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMN" role="1PaTwD">
            <property role="3oM_SC" value="que" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMO" role="1PaTwD">
            <property role="3oM_SC" value="contiene" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMP" role="1PaTwD">
            <property role="3oM_SC" value="al" />
          </node>
          <node concept="3oM_SD" id="376SzOavlMQ" role="1PaTwD">
            <property role="3oM_SC" value="nodo." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOavlK2" role="jymVt">
      <property role="TrG5h" value="states" />
      <node concept="37vLTG" id="376SzOavlK3" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="376SzOavlK4" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOavlK5" role="3clF47">
        <node concept="3cpWs6" id="376SzOavlK6" role="3cqZAp">
          <node concept="1rXfSq" id="376SzOavlK7" role="3cqZAk">
            <ref role="37wK5l" node="376SzOavlKA" resolve="childrenOf" />
            <node concept="1rXfSq" id="376SzOavlK8" role="37wK5m">
              <ref role="37wK5l" node="376SzOavlJl" resolve="enclosingCharacter" />
              <node concept="37vLTw" id="376SzOavlK9" role="37wK5m">
                <ref role="3cqZAo" node="376SzOavlK3" resolve="context" />
              </node>
            </node>
            <node concept="Xl_RD" id="376SzOavlKa" role="37wK5m">
              <property role="Xl_RC" value="states" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOavlKb" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOavlKc" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="376SzOavlKd" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOavlKe" role="jymVt">
      <property role="TrG5h" value="events" />
      <node concept="37vLTG" id="376SzOavlKf" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="376SzOavlKg" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOavlKh" role="3clF47">
        <node concept="3cpWs6" id="376SzOavlKi" role="3cqZAp">
          <node concept="1rXfSq" id="376SzOavlKj" role="3cqZAk">
            <ref role="37wK5l" node="376SzOavlKA" resolve="childrenOf" />
            <node concept="1rXfSq" id="376SzOavlKk" role="37wK5m">
              <ref role="37wK5l" node="376SzOavlJl" resolve="enclosingCharacter" />
              <node concept="37vLTw" id="376SzOavlKl" role="37wK5m">
                <ref role="3cqZAo" node="376SzOavlKf" resolve="context" />
              </node>
            </node>
            <node concept="Xl_RD" id="376SzOavlKm" role="37wK5m">
              <property role="Xl_RC" value="events" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOavlKn" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOavlKo" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="376SzOavlKp" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOavlKq" role="jymVt">
      <property role="TrG5h" value="variables" />
      <node concept="37vLTG" id="376SzOavlKr" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="376SzOavlKs" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOavlKt" role="3clF47">
        <node concept="3cpWs6" id="376SzOavlKu" role="3cqZAp">
          <node concept="1rXfSq" id="376SzOavlKv" role="3cqZAk">
            <ref role="37wK5l" node="376SzOavlKA" resolve="childrenOf" />
            <node concept="1rXfSq" id="376SzOavlKw" role="37wK5m">
              <ref role="37wK5l" node="376SzOavlJl" resolve="enclosingCharacter" />
              <node concept="37vLTw" id="376SzOavlKx" role="37wK5m">
                <ref role="3cqZAo" node="376SzOavlKr" resolve="context" />
              </node>
            </node>
            <node concept="Xl_RD" id="376SzOavlKy" role="37wK5m">
              <property role="Xl_RC" value="variables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOavlKz" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOavlK$" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="376SzOavlK_" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOavlKA" role="jymVt">
      <property role="TrG5h" value="childrenOf" />
      <node concept="37vLTG" id="376SzOavlKB" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="376SzOavlKC" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="376SzOavlKD" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="376SzOavlKE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOavlKF" role="3clF47">
        <node concept="3cpWs8" id="376SzOavlKH" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOavlKG" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="376SzOavlKI" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="376SzOavlKJ" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="376SzOavlOz" role="33vP2m">
              <node concept="1pGfFk" id="376SzOavlOC" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="376SzOavlOD" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="376SzOavlKM" role="3cqZAp">
          <node concept="3clFbC" id="376SzOavlKN" role="3clFbw">
            <node concept="37vLTw" id="376SzOavlKO" role="3uHU7B">
              <ref role="3cqZAo" node="376SzOavlKB" resolve="node" />
            </node>
            <node concept="10Nm6u" id="376SzOavlKP" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="376SzOavlKR" role="3clFbx">
            <node concept="3cpWs6" id="376SzOavlKS" role="3cqZAp">
              <node concept="37vLTw" id="376SzOavlKT" role="3cqZAk">
                <ref role="3cqZAo" node="376SzOavlKG" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOavlKU" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOavlVN" role="1DdaDG">
            <node concept="2OqwBi" id="376SzOavlQY" role="2Oq$k0">
              <node concept="37vLTw" id="376SzOavlOO" role="2Oq$k0">
                <ref role="3cqZAo" node="376SzOavlKB" resolve="node" />
              </node>
              <node concept="liA8E" id="376SzOavlQZ" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
            <node concept="liA8E" id="376SzOavlVO" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOavlLe" role="1Duv9x">
            <property role="TrG5h" value="l" />
            <node concept="3uibUv" id="376SzOavlLg" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOavlKW" role="2LFqv$">
            <node concept="3clFbJ" id="376SzOavlKX" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOavlWb" role="3clFbw">
                <node concept="2OqwBi" id="376SzOavlRh" role="2Oq$k0">
                  <node concept="37vLTw" id="376SzOavlP0" role="2Oq$k0">
                    <ref role="3cqZAo" node="376SzOavlLe" resolve="l" />
                  </node>
                  <node concept="liA8E" id="376SzOavlRi" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="liA8E" id="376SzOavlWc" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="376SzOavlWd" role="37wK5m">
                    <ref role="3cqZAo" node="376SzOavlKD" resolve="role" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="376SzOavlL2" role="3clFbx">
                <node concept="1DcWWT" id="376SzOavlL3" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOavlRs" role="1DdaDG">
                    <node concept="37vLTw" id="376SzOavlP4" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOavlKB" resolve="node" />
                    </node>
                    <node concept="liA8E" id="376SzOavlRt" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                      <node concept="37vLTw" id="376SzOavlRu" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOavlLe" resolve="l" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="376SzOavlL9" role="1Duv9x">
                    <property role="TrG5h" value="c" />
                    <node concept="3uibUv" id="376SzOavlLb" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="376SzOavlL5" role="2LFqv$">
                    <node concept="3clFbF" id="376SzOavlL6" role="3cqZAp">
                      <node concept="2OqwBi" id="376SzOavlTL" role="3clFbG">
                        <node concept="37vLTw" id="376SzOavlP9" role="2Oq$k0">
                          <ref role="3cqZAo" node="376SzOavlKG" resolve="result" />
                        </node>
                        <node concept="liA8E" id="376SzOavlTM" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="376SzOavlTN" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOavlL9" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="376SzOavlLj" role="3cqZAp">
          <node concept="37vLTw" id="376SzOavlLk" role="3cqZAk">
            <ref role="3cqZAo" node="376SzOavlKG" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="376SzOavlLl" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOavlLm" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="376SzOavlLn" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOavlLo" role="jymVt">
      <property role="TrG5h" value="referenceTarget" />
      <node concept="37vLTG" id="376SzOavlLp" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="376SzOavlLq" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="376SzOavlLr" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="376SzOavlLs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOavlLt" role="3clF47">
        <node concept="1DcWWT" id="376SzOavlLu" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOavlWv" role="1DdaDG">
            <node concept="2OqwBi" id="376SzOavlU5" role="2Oq$k0">
              <node concept="37vLTw" id="376SzOavlPm" role="2Oq$k0">
                <ref role="3cqZAo" node="376SzOavlLp" resolve="node" />
              </node>
              <node concept="liA8E" id="376SzOavlU6" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
            <node concept="liA8E" id="376SzOavlWw" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOavlLE" role="1Duv9x">
            <property role="TrG5h" value="l" />
            <node concept="3uibUv" id="376SzOavlLG" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOavlLw" role="2LFqv$">
            <node concept="3clFbJ" id="376SzOavlLx" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOavlWR" role="3clFbw">
                <node concept="2OqwBi" id="376SzOavlUo" role="2Oq$k0">
                  <node concept="37vLTw" id="376SzOavlPy" role="2Oq$k0">
                    <ref role="3cqZAo" node="376SzOavlLE" resolve="l" />
                  </node>
                  <node concept="liA8E" id="376SzOavlUp" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="liA8E" id="376SzOavlWS" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="376SzOavlWT" role="37wK5m">
                    <ref role="3cqZAo" node="376SzOavlLr" resolve="role" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="376SzOavlLA" role="3clFbx">
                <node concept="3cpWs6" id="376SzOavlLB" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOavlUz" role="3cqZAk">
                    <node concept="37vLTw" id="376SzOavlPA" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOavlLp" resolve="node" />
                    </node>
                    <node concept="liA8E" id="376SzOavlU$" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                      <node concept="37vLTw" id="376SzOavlU_" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOavlLE" resolve="l" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="376SzOavlLJ" role="3cqZAp">
          <node concept="10Nm6u" id="376SzOavlLK" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="376SzOavlLL" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOavlLM" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="376SzOavnV9">
    <ref role="1M2myG" to="uzwb:376SzOatHrn" resolve="StateRef" />
    <node concept="1N5Pfh" id="376SzOavnVa" role="1Mr941">
      <ref role="1N5Vy1" to="uzwb:376SzOatHrs" resolve="state" />
      <node concept="3dgokm" id="376SzOavnVb" role="1N6uqs">
        <node concept="3clFbS" id="376SzOavnVc" role="2VODD2">
          <node concept="3cpWs6" id="376SzOavnVw" role="3cqZAp">
            <node concept="2YIFZM" id="376SzOavnV_" role="3cqZAk">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2YIFZM" id="376SzOavnVC" role="37wK5m">
                <ref role="1Pybhc" node="376SzOavlJj" resolve="GameFsmScopes" />
                <ref role="37wK5l" node="376SzOavlK2" resolve="states" />
                <node concept="2rP1CM" id="376SzOavnVD" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="376SzOavnVd">
    <ref role="1M2myG" to="uzwb:376SzOatHro" resolve="EventRef" />
    <node concept="1N5Pfh" id="376SzOavnVe" role="1Mr941">
      <ref role="1N5Vy1" to="uzwb:376SzOatHrt" resolve="event" />
      <node concept="3dgokm" id="376SzOavnVf" role="1N6uqs">
        <node concept="3clFbS" id="376SzOavnVg" role="2VODD2">
          <node concept="3cpWs6" id="376SzOavoFp" role="3cqZAp">
            <node concept="2YIFZM" id="376SzOavoFu" role="3cqZAk">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2YIFZM" id="376SzOavoFx" role="37wK5m">
                <ref role="1Pybhc" node="376SzOavlJj" resolve="GameFsmScopes" />
                <ref role="37wK5l" node="376SzOavlKe" resolve="events" />
                <node concept="2rP1CM" id="376SzOavoFy" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="376SzOavnVh">
    <ref role="1M2myG" to="uzwb:4s$SF80Nqgv" resolve="ScenarioStep" />
    <node concept="1N5Pfh" id="376SzOavnVi" role="1Mr941">
      <ref role="1N5Vy1" to="uzwb:4s$SF80NqgU" resolve="event" />
      <node concept="3dgokm" id="376SzOavnVj" role="1N6uqs">
        <node concept="3clFbS" id="376SzOavnVk" role="2VODD2">
          <node concept="3cpWs6" id="376SzOavper" role="3cqZAp">
            <node concept="2YIFZM" id="376SzOavpew" role="3cqZAk">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2YIFZM" id="376SzOavpez" role="37wK5m">
                <ref role="1Pybhc" node="376SzOavlJj" resolve="GameFsmScopes" />
                <ref role="37wK5l" node="376SzOavlKe" resolve="events" />
                <node concept="2rP1CM" id="376SzOavpe$" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="376SzOavnVl">
    <ref role="1M2myG" to="uzwb:4s$SF80Nqgg" resolve="VariableRef" />
    <node concept="1N5Pfh" id="376SzOavnVm" role="1Mr941">
      <ref role="1N5Vy1" to="uzwb:4s$SF80NqgM" resolve="variable" />
      <node concept="3dgokm" id="376SzOavnVn" role="1N6uqs">
        <node concept="3clFbS" id="376SzOavnVo" role="2VODD2">
          <node concept="3cpWs6" id="376SzOavpLt" role="3cqZAp">
            <node concept="2YIFZM" id="376SzOavpLy" role="3cqZAk">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2YIFZM" id="376SzOavpL_" role="37wK5m">
                <ref role="1Pybhc" node="376SzOavlJj" resolve="GameFsmScopes" />
                <ref role="37wK5l" node="376SzOavlKq" resolve="variables" />
                <node concept="2rP1CM" id="376SzOavpLA" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="376SzOavnVp">
    <ref role="1M2myG" to="uzwb:4s$SF80Nqgt" resolve="Assignment" />
    <node concept="1N5Pfh" id="376SzOavnVq" role="1Mr941">
      <ref role="1N5Vy1" to="uzwb:4s$SF80NqgP" resolve="variable" />
      <node concept="3dgokm" id="376SzOavnVr" role="1N6uqs">
        <node concept="3clFbS" id="376SzOavnVs" role="2VODD2">
          <node concept="3cpWs6" id="376SzOavqkv" role="3cqZAp">
            <node concept="2YIFZM" id="376SzOavqk$" role="3cqZAk">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2YIFZM" id="376SzOavqkB" role="37wK5m">
                <ref role="1Pybhc" node="376SzOavlJj" resolve="GameFsmScopes" />
                <ref role="37wK5l" node="376SzOavlKq" resolve="variables" />
                <node concept="2rP1CM" id="376SzOavqkC" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

