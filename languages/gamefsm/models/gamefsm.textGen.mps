<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f7f75258-cd79-4e3b-9a31-fb43dbd0d24e(gamefsm.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="uzwb" ref="r:476a94d4-63d0-45c7-958e-14e2803e5fca(gamefsm.structure)" />
    <import index="pkeo" ref="r:8aff1e57-60c2-4568-9992-8a7c653765d3(gamefsm.typesystem)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
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
  <node concept="312cEu" id="376SzOa$Oj0">
    <property role="TrG5h" value="CodeGen" />
    <property role="2HnT6v" value="gamefsm.textGen" />
    <node concept="3Tm1VV" id="376SzOa$Oj1" role="1B3o_S" />
    <node concept="3UR2Jj" id="376SzOa$Oxi" role="lGtFl">
      <node concept="1PaTwC" id="376SzOa$Oxj" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOa$Oxk" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="376SzOa$Oxt" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOa$Oxu" role="1PaTwD">
          <property role="3oM_SC" value="Generador" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oxv" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oxw" role="1PaTwD">
          <property role="3oM_SC" value="GameFSM" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oxx" role="1PaTwD">
          <property role="3oM_SC" value="(traduccion" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oxy" role="1PaTwD">
          <property role="3oM_SC" value="dirigida" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oxz" role="1PaTwD">
          <property role="3oM_SC" value="por" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Ox$" role="1PaTwD">
          <property role="3oM_SC" value="la" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Ox_" role="1PaTwD">
          <property role="3oM_SC" value="sintaxis):" />
        </node>
      </node>
      <node concept="1PaTwC" id="376SzOa$OxA" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOa$OxB" role="1PaTwD">
          <property role="3oM_SC" value="cada" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxC" role="1PaTwD">
          <property role="3oM_SC" value="concepto" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxD" role="1PaTwD">
          <property role="3oM_SC" value="del" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxE" role="1PaTwD">
          <property role="3oM_SC" value="AST" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxF" role="1PaTwD">
          <property role="3oM_SC" value="se" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxG" role="1PaTwD">
          <property role="3oM_SC" value="traduce" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxH" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxI" role="1PaTwD">
          <property role="3oM_SC" value="un" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxJ" role="1PaTwD">
          <property role="3oM_SC" value="fragmento" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxK" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxL" role="1PaTwD">
          <property role="3oM_SC" value="texto" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxM" role="1PaTwD">
          <property role="3oM_SC" value="segun" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxN" role="1PaTwD">
          <property role="3oM_SC" value="su" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxO" role="1PaTwD">
          <property role="3oM_SC" value="tipo." />
        </node>
      </node>
      <node concept="1PaTwC" id="376SzOa$OxP" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOa$OxQ" role="1PaTwD">
          <property role="3oM_SC" value="Character" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxR" role="1PaTwD">
          <property role="3oM_SC" value="-&gt;" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxS" role="1PaTwD">
          <property role="3oM_SC" value="clase" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxT" role="1PaTwD">
          <property role="3oM_SC" value="Java" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxU" role="1PaTwD">
          <property role="3oM_SC" value="ejecutable" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxV" role="1PaTwD">
          <property role="3oM_SC" value="&lt;Nombre&gt;FSM.java" />
        </node>
      </node>
      <node concept="1PaTwC" id="376SzOa$OxW" role="1Vez_I">
        <node concept="3oM_SD" id="376SzOa$OxX" role="1PaTwD">
          <property role="3oM_SC" value="Scenario" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxY" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="376SzOa$OxZ" role="1PaTwD">
          <property role="3oM_SC" value="-&gt;" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oy0" role="1PaTwD">
          <property role="3oM_SC" value="reporte" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oy1" role="1PaTwD">
          <property role="3oM_SC" value="Markdown" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oy2" role="1PaTwD">
          <property role="3oM_SC" value="&lt;Nombre&gt;_reporte.md" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oy3" role="1PaTwD">
          <property role="3oM_SC" value="(razonador" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oy4" role="1PaTwD">
          <property role="3oM_SC" value="+" />
        </node>
        <node concept="3oM_SD" id="376SzOa$Oy5" role="1PaTwD">
          <property role="3oM_SC" value="simulacion)" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOa$Oj2" role="jymVt">
      <property role="TrG5h" value="javaFileName" />
      <node concept="37vLTG" id="376SzOa$Oj3" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="376SzOa$Oj4" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOa$Oj5" role="3clF47">
        <node concept="3cpWs6" id="376SzOa$Oj6" role="3cqZAp">
          <node concept="3cpWs3" id="376SzOa$Oj7" role="3cqZAk">
            <node concept="2YIFZM" id="376SzOa$Ozp" role="3uHU7B">
              <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
              <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
              <node concept="37vLTw" id="376SzOa$Ozq" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$Oj3" resolve="c" />
              </node>
            </node>
            <node concept="Xl_RD" id="376SzOa$Oja" role="3uHU7w">
              <property role="Xl_RC" value="FSM" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOa$Ojb" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOa$Ojc" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOa$Ojd" role="jymVt">
      <property role="TrG5h" value="constant" />
      <node concept="37vLTG" id="376SzOa$Oje" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="376SzOa$Ojf" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOa$Ojg" role="3clF47">
        <node concept="3cpWs6" id="376SzOa$Ojh" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OLH" role="3cqZAk">
            <node concept="2YIFZM" id="376SzOa$Oz_" role="2Oq$k0">
              <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
              <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
              <node concept="37vLTw" id="376SzOa$OzA" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$Oje" resolve="state" />
              </node>
            </node>
            <node concept="liA8E" id="376SzOa$OLI" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.toUpperCase()" resolve="toUpperCase" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOa$Ojl" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOa$Ojm" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOa$Ojn" role="jymVt">
      <property role="TrG5h" value="expr" />
      <node concept="37vLTG" id="376SzOa$Ojo" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="376SzOa$Ojp" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOa$Ojq" role="3clF47">
        <node concept="3cpWs8" id="376SzOa$Ojs" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$Ojr" role="3cpWs9">
            <property role="TrG5h" value="k" />
            <node concept="3uibUv" id="376SzOa$Ojt" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="376SzOa$OzD" role="33vP2m">
              <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
              <ref role="37wK5l" to="pkeo:376SzOavTPH" resolve="kind" />
              <node concept="37vLTw" id="376SzOa$OzE" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$Ojo" resolve="e" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="376SzOa$Ojw" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OLX" role="3clFbw">
            <node concept="37vLTw" id="376SzOa$OzH" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$Ojr" resolve="k" />
            </node>
            <node concept="liA8E" id="376SzOa$OLY" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="376SzOa$OLZ" role="37wK5m">
                <property role="Xl_RC" value="IntLiteral" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Oj$" role="3clFbx">
            <node concept="3cpWs6" id="376SzOa$Oj_" role="3cqZAp">
              <node concept="2YIFZM" id="376SzOa$OzM" role="3cqZAk">
                <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                <ref role="37wK5l" to="pkeo:376SzOavTRO" resolve="prop" />
                <node concept="37vLTw" id="376SzOa$OzN" role="37wK5m">
                  <ref role="3cqZAo" node="376SzOa$Ojo" resolve="e" />
                </node>
                <node concept="Xl_RD" id="376SzOa$OzO" role="37wK5m">
                  <property role="Xl_RC" value="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="376SzOa$OjD" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OMe" role="3clFbw">
            <node concept="37vLTw" id="376SzOa$OzR" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$Ojr" resolve="k" />
            </node>
            <node concept="liA8E" id="376SzOa$OMf" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="376SzOa$OMg" role="37wK5m">
                <property role="Xl_RC" value="BoolLiteral" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$OjH" role="3clFbx">
            <node concept="3cpWs6" id="376SzOa$OjI" role="3cqZAp">
              <node concept="1eOMI4" id="376SzOa$OjR" role="3cqZAk">
                <node concept="3K4zz7" id="376SzOa$OjQ" role="1eOMHV">
                  <node concept="2OqwBi" id="376SzOa$O$8" role="3K4Cdx">
                    <node concept="Xl_RD" id="376SzOa$OjK" role="2Oq$k0">
                      <property role="Xl_RC" value="true" />
                    </node>
                    <node concept="liA8E" id="376SzOa$O$9" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2YIFZM" id="376SzOa$OMj" role="37wK5m">
                        <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                        <ref role="37wK5l" to="pkeo:376SzOavTRO" resolve="prop" />
                        <node concept="37vLTw" id="376SzOa$OMk" role="37wK5m">
                          <ref role="3cqZAo" node="376SzOa$Ojo" resolve="e" />
                        </node>
                        <node concept="Xl_RD" id="376SzOa$OMl" role="37wK5m">
                          <property role="Xl_RC" value="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="376SzOa$OjO" role="3K4E3e">
                    <property role="Xl_RC" value="true" />
                  </node>
                  <node concept="Xl_RD" id="376SzOa$OjP" role="3K4GZi">
                    <property role="Xl_RC" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="376SzOa$OjS" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OM$" role="3clFbw">
            <node concept="37vLTw" id="376SzOa$O$f" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$Ojr" resolve="k" />
            </node>
            <node concept="liA8E" id="376SzOa$OM_" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="376SzOa$OMA" role="37wK5m">
                <property role="Xl_RC" value="VariableRef" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$OjW" role="3clFbx">
            <node concept="3cpWs6" id="376SzOa$OjX" role="3cqZAp">
              <node concept="2YIFZM" id="376SzOa$O$k" role="3cqZAk">
                <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                <node concept="2YIFZM" id="376SzOa$OMD" role="37wK5m">
                  <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                  <ref role="37wK5l" to="pkeo:376SzOavTRh" resolve="ref" />
                  <node concept="37vLTw" id="376SzOa$OME" role="37wK5m">
                    <ref role="3cqZAo" node="376SzOa$Ojo" resolve="e" />
                  </node>
                  <node concept="Xl_RD" id="376SzOa$OMF" role="37wK5m">
                    <property role="Xl_RC" value="variable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$Ok3" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$Ok2" role="3cpWs9">
            <property role="TrG5h" value="op" />
            <node concept="3uibUv" id="376SzOa$Ok4" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="376SzOa$O$q" role="33vP2m">
              <ref role="1Pybhc" to="pkeo:376SzOavYL0" resolve="GameFsmChecks" />
              <ref role="37wK5l" to="pkeo:376SzOavYN0" resolve="operator" />
              <node concept="37vLTw" id="376SzOa$O$r" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$Ojr" resolve="k" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="376SzOa$Ok7" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OMU" role="3clFbw">
            <node concept="37vLTw" id="376SzOa$O$u" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$Ok2" resolve="op" />
            </node>
            <node concept="liA8E" id="376SzOa$OMV" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="376SzOa$OMW" role="37wK5m">
                <property role="Xl_RC" value="and" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Okb" role="3clFbx">
            <node concept="3clFbF" id="376SzOa$Okc" role="3cqZAp">
              <node concept="37vLTI" id="376SzOa$Okd" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$Oke" role="37vLTJ">
                  <ref role="3cqZAo" node="376SzOa$Ok2" resolve="op" />
                </node>
                <node concept="Xl_RD" id="376SzOa$Okf" role="37vLTx">
                  <property role="Xl_RC" value="&amp;&amp;" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="376SzOa$Okg" role="3cqZAp">
          <node concept="3cpWs3" id="376SzOa$Okh" role="3cqZAk">
            <node concept="3cpWs3" id="376SzOa$Oki" role="3uHU7B">
              <node concept="3cpWs3" id="376SzOa$Okj" role="3uHU7B">
                <node concept="3cpWs3" id="376SzOa$Okk" role="3uHU7B">
                  <node concept="3cpWs3" id="376SzOa$Okl" role="3uHU7B">
                    <node concept="3cpWs3" id="376SzOa$Okm" role="3uHU7B">
                      <node concept="Xl_RD" id="376SzOa$Okn" role="3uHU7B">
                        <property role="Xl_RC" value="(" />
                      </node>
                      <node concept="1rXfSq" id="376SzOa$Oko" role="3uHU7w">
                        <ref role="37wK5l" node="376SzOa$Ojn" resolve="expr" />
                        <node concept="2YIFZM" id="376SzOa$O$z" role="37wK5m">
                          <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                          <ref role="37wK5l" to="pkeo:376SzOavTQV" resolve="child" />
                          <node concept="37vLTw" id="376SzOa$O$$" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOa$Ojo" resolve="e" />
                          </node>
                          <node concept="Xl_RD" id="376SzOa$O$_" role="37wK5m">
                            <property role="Xl_RC" value="left" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="376SzOa$Oks" role="3uHU7w">
                      <property role="Xl_RC" value=" " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="376SzOa$Okt" role="3uHU7w">
                    <ref role="3cqZAo" node="376SzOa$Ok2" resolve="op" />
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$Oku" role="3uHU7w">
                  <property role="Xl_RC" value=" " />
                </node>
              </node>
              <node concept="1rXfSq" id="376SzOa$Okv" role="3uHU7w">
                <ref role="37wK5l" node="376SzOa$Ojn" resolve="expr" />
                <node concept="2YIFZM" id="376SzOa$O$C" role="37wK5m">
                  <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                  <ref role="37wK5l" to="pkeo:376SzOavTQV" resolve="child" />
                  <node concept="37vLTw" id="376SzOa$O$D" role="37wK5m">
                    <ref role="3cqZAo" node="376SzOa$Ojo" resolve="e" />
                  </node>
                  <node concept="Xl_RD" id="376SzOa$O$E" role="37wK5m">
                    <property role="Xl_RC" value="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="376SzOa$Okz" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOa$Ok$" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOa$Ok_" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="P$JXv" id="376SzOa$OkA" role="lGtFl">
        <node concept="1PaTwC" id="376SzOa$OkB" role="1Vez_I">
          <node concept="3oM_SD" id="376SzOa$OkC" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="376SzOa$Oy6" role="1Vez_I">
          <node concept="3oM_SD" id="376SzOa$Oy7" role="1PaTwD">
            <property role="3oM_SC" value="Traduce" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oy8" role="1PaTwD">
            <property role="3oM_SC" value="una" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oy9" role="1PaTwD">
            <property role="3oM_SC" value="expresion" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oya" role="1PaTwD">
            <property role="3oM_SC" value="del" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyb" role="1PaTwD">
            <property role="3oM_SC" value="DSL" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyc" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyd" role="1PaTwD">
            <property role="3oM_SC" value="una" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oye" role="1PaTwD">
            <property role="3oM_SC" value="expresion" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyf" role="1PaTwD">
            <property role="3oM_SC" value="Java." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOa$OkD" role="jymVt">
      <property role="TrG5h" value="javaType" />
      <node concept="37vLTG" id="376SzOa$OkE" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3uibUv" id="376SzOa$OkF" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOa$OkG" role="3clF47">
        <node concept="3cpWs6" id="376SzOa$OkH" role="3cqZAp">
          <node concept="1eOMI4" id="376SzOa$OkO" role="3cqZAk">
            <node concept="3K4zz7" id="376SzOa$OkN" role="1eOMHV">
              <node concept="2OqwBi" id="376SzOa$ONf" role="3K4Cdx">
                <node concept="10M0yZ" id="376SzOa$O$H" role="2Oq$k0">
                  <ref role="1PxDUh" to="pkeo:376SzOavYL0" resolve="GameFsmChecks" />
                  <ref role="3cqZAo" to="pkeo:376SzOavYL6" resolve="BOOLEANO" />
                </node>
                <node concept="liA8E" id="376SzOa$ONg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2YIFZM" id="376SzOa$PnO" role="37wK5m">
                    <ref role="1Pybhc" to="pkeo:376SzOavYL0" resolve="GameFsmChecks" />
                    <ref role="37wK5l" to="pkeo:376SzOavYM1" resolve="declaredType" />
                    <node concept="37vLTw" id="376SzOa$PnP" role="37wK5m">
                      <ref role="3cqZAo" node="376SzOa$OkE" resolve="variable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="376SzOa$OkL" role="3K4E3e">
                <property role="Xl_RC" value="boolean" />
              </node>
              <node concept="Xl_RD" id="376SzOa$OkM" role="3K4GZi">
                <property role="Xl_RC" value="int" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOa$OkP" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOa$OkQ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOa$OkR" role="jymVt">
      <property role="TrG5h" value="scenariosOf" />
      <node concept="37vLTG" id="376SzOa$OkS" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="376SzOa$OkT" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="4OKLEQ2xc2O" role="3clF47">
        <node concept="3cpWs8" id="4OKLEQ2xc2d" role="3cqZAp">
          <node concept="3cpWsn" id="4OKLEQ2xc2c" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4OKLEQ2xc2e" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="4OKLEQ2xc2f" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="4OKLEQ2xc2P" role="33vP2m">
              <node concept="1pGfFk" id="4OKLEQ2xc2U" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="4OKLEQ2xc2V" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4OKLEQ2xc2j" role="3cqZAp">
          <node concept="3cpWsn" id="4OKLEQ2xc2i" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="4OKLEQ2xc2k" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="4OKLEQ2xc3s" role="33vP2m">
              <node concept="37vLTw" id="4OKLEQ2xc2Y" role="2Oq$k0">
                <ref role="3cqZAo" node="376SzOa$OkS" resolve="c" />
              </node>
              <node concept="liA8E" id="4OKLEQ2xc3t" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4OKLEQ2xc2m" role="3cqZAp">
          <node concept="3y3z36" id="4OKLEQ2xc2n" role="3clFbw">
            <node concept="37vLTw" id="4OKLEQ2xc2o" role="3uHU7B">
              <ref role="3cqZAo" node="4OKLEQ2xc2i" resolve="model" />
            </node>
            <node concept="10Nm6u" id="4OKLEQ2xc2p" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4OKLEQ2xc2r" role="3clFbx">
            <node concept="1DcWWT" id="4OKLEQ2xc2s" role="3cqZAp">
              <node concept="2OqwBi" id="4OKLEQ2xc3C" role="1DdaDG">
                <node concept="37vLTw" id="4OKLEQ2xc32" role="2Oq$k0">
                  <ref role="3cqZAo" node="4OKLEQ2xc2i" resolve="model" />
                </node>
                <node concept="liA8E" id="4OKLEQ2xc3D" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                </node>
              </node>
              <node concept="3cpWsn" id="4OKLEQ2xc2I" role="1Duv9x">
                <property role="TrG5h" value="root" />
                <node concept="3uibUv" id="4OKLEQ2xc2K" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="3clFbS" id="4OKLEQ2xc2u" role="2LFqv$">
                <node concept="3clFbJ" id="4OKLEQ2xc2v" role="3cqZAp">
                  <node concept="1Wc70l" id="4OKLEQ2xc2w" role="3clFbw">
                    <node concept="2YIFZM" id="4OKLEQ2xc36" role="3uHU7B">
                      <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                      <ref role="37wK5l" to="pkeo:376SzOavTPW" resolve="is" />
                      <node concept="37vLTw" id="4OKLEQ2xc37" role="37wK5m">
                        <ref role="3cqZAo" node="4OKLEQ2xc2I" resolve="root" />
                      </node>
                      <node concept="Xl_RD" id="4OKLEQ2xc38" role="37wK5m">
                        <property role="Xl_RC" value="Scenario" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="4OKLEQ2xc2$" role="3uHU7w">
                      <node concept="2YIFZM" id="4OKLEQ2xc3b" role="3uHU7B">
                        <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                        <ref role="37wK5l" to="pkeo:376SzOavTRh" resolve="ref" />
                        <node concept="37vLTw" id="4OKLEQ2xc3c" role="37wK5m">
                          <ref role="3cqZAo" node="4OKLEQ2xc2I" resolve="root" />
                        </node>
                        <node concept="Xl_RD" id="4OKLEQ2xc3d" role="37wK5m">
                          <property role="Xl_RC" value="character" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4OKLEQ2xc2C" role="3uHU7w">
                        <ref role="3cqZAo" node="376SzOa$OkS" resolve="c" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="4OKLEQ2xc2E" role="3clFbx">
                    <node concept="3clFbF" id="4OKLEQ2xc2F" role="3cqZAp">
                      <node concept="2OqwBi" id="4OKLEQ2xc5W" role="3clFbG">
                        <node concept="37vLTw" id="4OKLEQ2xc3g" role="2Oq$k0">
                          <ref role="3cqZAo" node="4OKLEQ2xc2c" resolve="result" />
                        </node>
                        <node concept="liA8E" id="4OKLEQ2xc5X" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="4OKLEQ2xc5Y" role="37wK5m">
                            <ref role="3cqZAo" node="4OKLEQ2xc2I" resolve="root" />
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
        <node concept="3cpWs6" id="4OKLEQ2xc2M" role="3cqZAp">
          <node concept="37vLTw" id="4OKLEQ2xc2N" role="3cqZAk">
            <ref role="3cqZAo" node="4OKLEQ2xc2c" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOa$Oly" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOa$Olz" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="376SzOa$Ol$" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="P$JXv" id="376SzOa$Ol_" role="lGtFl">
        <node concept="1PaTwC" id="376SzOa$OlA" role="1Vez_I">
          <node concept="3oM_SD" id="376SzOa$OlB" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="376SzOa$Oyg" role="1Vez_I">
          <node concept="3oM_SD" id="376SzOa$Oyh" role="1PaTwD">
            <property role="3oM_SC" value="Escenarios" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyi" role="1PaTwD">
            <property role="3oM_SC" value="del" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyj" role="1PaTwD">
            <property role="3oM_SC" value="mismo" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyk" role="1PaTwD">
            <property role="3oM_SC" value="modelo" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyl" role="1PaTwD">
            <property role="3oM_SC" value="que" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oym" role="1PaTwD">
            <property role="3oM_SC" value="simulan" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyn" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyo" role="1PaTwD">
            <property role="3oM_SC" value="este" />
          </node>
          <node concept="3oM_SD" id="376SzOa$Oyp" role="1PaTwD">
            <property role="3oM_SC" value="personaje." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOa$OlC" role="jymVt">
      <property role="TrG5h" value="javaClass" />
      <node concept="37vLTG" id="376SzOa$OlD" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="376SzOa$OlE" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOa$OlF" role="3clF47">
        <node concept="3cpWs8" id="376SzOa$OlH" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$OlG" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3uibUv" id="376SzOa$OlI" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="1rXfSq" id="376SzOa$OlJ" role="33vP2m">
              <ref role="37wK5l" node="376SzOa$Oj2" resolve="javaFileName" />
              <node concept="37vLTw" id="376SzOa$OlK" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$OlM" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$OlL" role="3cpWs9">
            <property role="TrG5h" value="q0" />
            <node concept="3uibUv" id="376SzOa$OlN" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2YIFZM" id="376SzOa$O_p" role="33vP2m">
              <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
              <ref role="37wK5l" to="pkeo:376SzOavTUo" resolve="initialState" />
              <node concept="37vLTw" id="376SzOa$O_q" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$OlR" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$OlQ" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="376SzOa$OlS" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="376SzOa$O_r" role="33vP2m">
              <node concept="1pGfFk" id="376SzOa$O_w" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OlU" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OQf" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$O_z" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OQg" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$OQh" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$OQi" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$OQj" role="3uHU7B">
                    <property role="Xl_RC" value="// Generado automaticamente por GameFSM a partir del personaje '" />
                  </node>
                  <node concept="2YIFZM" id="376SzOa$Pob" role="3uHU7w">
                    <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                    <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                    <node concept="37vLTw" id="376SzOa$Poc" role="37wK5m">
                      <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$OQm" role="3uHU7w">
                  <property role="Xl_RC" value="'. No editar a mano.\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Om2" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OQw" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$O_H" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OQx" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$OQy" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$OQz" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$OQ$" role="3uHU7B">
                    <property role="Xl_RC" value="public class " />
                  </node>
                  <node concept="37vLTw" id="376SzOa$OQ_" role="3uHU7w">
                    <ref role="3cqZAo" node="376SzOa$OlG" resolve="cls" />
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$OQA" role="3uHU7w">
                  <property role="Xl_RC" value=" {\n\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="376SzOa$Oyq" role="3cqZAp">
          <node concept="1PaTwC" id="376SzOa$Oyr" role="1aUNEU">
            <node concept="3oM_SD" id="376SzOa$Oyt" role="1PaTwD">
              <property role="3oM_SC" value="Q" />
            </node>
            <node concept="3oM_SD" id="376SzOa$Oyu" role="1PaTwD">
              <property role="3oM_SC" value="como" />
            </node>
            <node concept="3oM_SD" id="376SzOa$Oyv" role="1PaTwD">
              <property role="3oM_SC" value="enum" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Om9" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OQK" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$O_Q" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OQL" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OQM" role="37wK5m">
                <property role="Xl_RC" value="  public enum Estado {" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$Omd" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$Omc" role="3cpWs9">
            <property role="TrG5h" value="sep" />
            <node concept="3uibUv" id="376SzOa$Ome" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="376SzOa$Omf" role="33vP2m">
              <property role="Xl_RC" value=" " />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$Omg" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOa$O_V" role="1DdaDG">
            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
            <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
            <node concept="37vLTw" id="376SzOa$O_W" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
            </node>
            <node concept="Xl_RD" id="376SzOa$O_X" role="37wK5m">
              <property role="Xl_RC" value="states" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOa$Omt" role="1Duv9x">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="376SzOa$Omv" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Omi" role="2LFqv$">
            <node concept="3clFbF" id="376SzOa$Omj" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$OQW" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OA0" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$OQX" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="376SzOa$OQY" role="37wK5m">
                    <node concept="37vLTw" id="376SzOa$OQZ" role="3uHU7B">
                      <ref role="3cqZAo" node="376SzOa$Omc" resolve="sep" />
                    </node>
                    <node concept="1rXfSq" id="376SzOa$OR0" role="3uHU7w">
                      <ref role="37wK5l" node="376SzOa$Ojd" resolve="constant" />
                      <node concept="37vLTw" id="376SzOa$OR1" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOa$Omt" resolve="s" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="376SzOa$Omp" role="3cqZAp">
              <node concept="37vLTI" id="376SzOa$Omq" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$Omr" role="37vLTJ">
                  <ref role="3cqZAo" node="376SzOa$Omc" resolve="sep" />
                </node>
                <node concept="Xl_RD" id="376SzOa$Oms" role="37vLTx">
                  <property role="Xl_RC" value=", " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Omz" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$ORb" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OAc" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$ORc" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$ORd" role="37wK5m">
                <property role="Xl_RC" value=" }\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OmA" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$ORn" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OAh" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$ORo" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$ORp" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$ORq" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$ORr" role="3uHU7B">
                    <property role="Xl_RC" value="  private Estado estado = " />
                  </node>
                  <node concept="1eOMI4" id="376SzOa$ORs" role="3uHU7w">
                    <node concept="3K4zz7" id="376SzOa$ORt" role="1eOMHV">
                      <node concept="3clFbC" id="376SzOa$ORu" role="3K4Cdx">
                        <node concept="37vLTw" id="376SzOa$ORv" role="3uHU7B">
                          <ref role="3cqZAo" node="376SzOa$OlL" resolve="q0" />
                        </node>
                        <node concept="10Nm6u" id="376SzOa$ORw" role="3uHU7w" />
                      </node>
                      <node concept="Xl_RD" id="376SzOa$ORx" role="3K4E3e">
                        <property role="Xl_RC" value="null" />
                      </node>
                      <node concept="3cpWs3" id="376SzOa$ORy" role="3K4GZi">
                        <node concept="Xl_RD" id="376SzOa$ORz" role="3uHU7B">
                          <property role="Xl_RC" value="Estado." />
                        </node>
                        <node concept="1rXfSq" id="376SzOa$OR$" role="3uHU7w">
                          <ref role="37wK5l" node="376SzOa$Ojd" resolve="constant" />
                          <node concept="37vLTw" id="376SzOa$OR_" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOa$OlL" resolve="q0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$ORA" role="3uHU7w">
                  <property role="Xl_RC" value=";\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="376SzOa$Oyw" role="3cqZAp">
          <node concept="1PaTwC" id="376SzOa$Oyx" role="1aUNEU">
            <node concept="3oM_SD" id="376SzOa$Oyz" role="1PaTwD">
              <property role="3oM_SC" value="variables" />
            </node>
            <node concept="3oM_SD" id="376SzOa$Oy$" role="1PaTwD">
              <property role="3oM_SC" value="(sigma" />
            </node>
            <node concept="3oM_SD" id="376SzOa$Oy_" role="1PaTwD">
              <property role="3oM_SC" value="inicial)" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$OmQ" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOa$OAB" role="1DdaDG">
            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
            <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
            <node concept="37vLTw" id="376SzOa$OAC" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
            </node>
            <node concept="Xl_RD" id="376SzOa$OAD" role="37wK5m">
              <property role="Xl_RC" value="variables" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOa$Ond" role="1Duv9x">
            <property role="TrG5h" value="v" />
            <node concept="3uibUv" id="376SzOa$Onf" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$OmS" role="2LFqv$">
            <node concept="3clFbF" id="376SzOa$OmT" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$ORK" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OAG" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$ORL" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="376SzOa$ORM" role="37wK5m">
                    <node concept="3cpWs3" id="376SzOa$ORN" role="3uHU7B">
                      <node concept="3cpWs3" id="376SzOa$ORO" role="3uHU7B">
                        <node concept="3cpWs3" id="376SzOa$ORP" role="3uHU7B">
                          <node concept="3cpWs3" id="376SzOa$ORQ" role="3uHU7B">
                            <node concept="3cpWs3" id="376SzOa$ORR" role="3uHU7B">
                              <node concept="Xl_RD" id="376SzOa$ORS" role="3uHU7B">
                                <property role="Xl_RC" value="  private " />
                              </node>
                              <node concept="1rXfSq" id="376SzOa$ORT" role="3uHU7w">
                                <ref role="37wK5l" node="376SzOa$OkD" resolve="javaType" />
                                <node concept="37vLTw" id="376SzOa$ORU" role="37wK5m">
                                  <ref role="3cqZAo" node="376SzOa$Ond" resolve="v" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="376SzOa$ORV" role="3uHU7w">
                              <property role="Xl_RC" value=" " />
                            </node>
                          </node>
                          <node concept="2YIFZM" id="376SzOa$Pof" role="3uHU7w">
                            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                            <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                            <node concept="37vLTw" id="376SzOa$Pog" role="37wK5m">
                              <ref role="3cqZAo" node="376SzOa$Ond" resolve="v" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="376SzOa$ORY" role="3uHU7w">
                          <property role="Xl_RC" value=" = " />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="376SzOa$ORZ" role="3uHU7w">
                        <ref role="37wK5l" node="376SzOa$Ojn" resolve="expr" />
                        <node concept="2YIFZM" id="376SzOa$Poj" role="37wK5m">
                          <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                          <ref role="37wK5l" to="pkeo:376SzOavTQV" resolve="child" />
                          <node concept="37vLTw" id="376SzOa$Pok" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOa$Ond" resolve="v" />
                          </node>
                          <node concept="Xl_RD" id="376SzOa$Pol" role="37wK5m">
                            <property role="Xl_RC" value="initialValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="376SzOa$OS3" role="3uHU7w">
                      <property role="Xl_RC" value=";\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="376SzOa$OyA" role="3cqZAp">
          <node concept="1PaTwC" id="376SzOa$OyB" role="1aUNEU">
            <node concept="3oM_SD" id="376SzOa$OyD" role="1PaTwD">
              <property role="3oM_SC" value="delta" />
            </node>
            <node concept="3oM_SD" id="376SzOa$OyE" role="1PaTwD">
              <property role="3oM_SC" value="como" />
            </node>
            <node concept="3oM_SD" id="376SzOa$OyF" role="1PaTwD">
              <property role="3oM_SC" value="switch" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Onj" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OSd" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OBa" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OSe" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OSf" role="37wK5m">
                <property role="Xl_RC" value="\n  /** Funcion de transicion: aplica un evento al estado actual. */\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Onm" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OSp" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OBf" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OSq" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OSr" role="37wK5m">
                <property role="Xl_RC" value="  public void onEvent(String evento) {\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Onp" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OS_" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OBk" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OSA" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OSB" role="37wK5m">
                <property role="Xl_RC" value="    switch (estado) {\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$Ons" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOa$OBp" role="1DdaDG">
            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
            <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
            <node concept="37vLTw" id="376SzOa$OBq" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
            </node>
            <node concept="Xl_RD" id="376SzOa$OBr" role="37wK5m">
              <property role="Xl_RC" value="states" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOa$OpQ" role="1Duv9x">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="376SzOa$OpS" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Onu" role="2LFqv$">
            <node concept="3clFbF" id="376SzOa$Onv" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$OSL" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OBu" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$OSM" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="376SzOa$OSN" role="37wK5m">
                    <node concept="3cpWs3" id="376SzOa$OSO" role="3uHU7B">
                      <node concept="Xl_RD" id="376SzOa$OSP" role="3uHU7B">
                        <property role="Xl_RC" value="      case " />
                      </node>
                      <node concept="1rXfSq" id="376SzOa$OSQ" role="3uHU7w">
                        <ref role="37wK5l" node="376SzOa$Ojd" resolve="constant" />
                        <node concept="37vLTw" id="376SzOa$OSR" role="37wK5m">
                          <ref role="3cqZAo" node="376SzOa$OpQ" resolve="s" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="376SzOa$OSS" role="3uHU7w">
                      <property role="Xl_RC" value=":\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="376SzOa$OnB" role="3cqZAp">
              <node concept="2YIFZM" id="376SzOa$OBG" role="1DdaDG">
                <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
                <node concept="37vLTw" id="376SzOa$OBH" role="37wK5m">
                  <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
                </node>
                <node concept="Xl_RD" id="376SzOa$OBI" role="37wK5m">
                  <property role="Xl_RC" value="transitions" />
                </node>
              </node>
              <node concept="3cpWsn" id="376SzOa$OpH" role="1Duv9x">
                <property role="TrG5h" value="t" />
                <node concept="3uibUv" id="376SzOa$OpJ" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="3clFbS" id="376SzOa$OnD" role="2LFqv$">
                <node concept="3clFbJ" id="376SzOa$OnE" role="3cqZAp">
                  <node concept="22lmx$" id="376SzOa$OnF" role="3clFbw">
                    <node concept="22lmx$" id="376SzOa$OnG" role="3uHU7B">
                      <node concept="3y3z36" id="376SzOa$OnH" role="3uHU7B">
                        <node concept="2YIFZM" id="376SzOa$OBL" role="3uHU7B">
                          <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                          <ref role="37wK5l" to="pkeo:376SzOavTTo" resolve="source" />
                          <node concept="37vLTw" id="376SzOa$OBM" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOa$OpH" resolve="t" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="376SzOa$OnK" role="3uHU7w">
                          <ref role="3cqZAo" node="376SzOa$OpQ" resolve="s" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="376SzOa$OnL" role="3uHU7w">
                        <node concept="2YIFZM" id="376SzOa$OBP" role="3uHU7B">
                          <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                          <ref role="37wK5l" to="pkeo:376SzOavTTN" resolve="event" />
                          <node concept="37vLTw" id="376SzOa$OBQ" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOa$OpH" resolve="t" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="376SzOa$OnO" role="3uHU7w" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="376SzOa$OnP" role="3uHU7w">
                      <node concept="2YIFZM" id="376SzOa$OBT" role="3uHU7B">
                        <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                        <ref role="37wK5l" to="pkeo:376SzOavTTB" resolve="target" />
                        <node concept="37vLTw" id="376SzOa$OBU" role="37wK5m">
                          <ref role="3cqZAo" node="376SzOa$OpH" resolve="t" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="376SzOa$OnS" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="376SzOa$OnU" role="3clFbx">
                    <node concept="3N13vt" id="376SzOa$OnV" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3cpWs8" id="376SzOa$OnX" role="3cqZAp">
                  <node concept="3cpWsn" id="376SzOa$OnW" role="3cpWs9">
                    <property role="TrG5h" value="cond" />
                    <node concept="3uibUv" id="376SzOa$OnY" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3cpWs3" id="376SzOa$OnZ" role="33vP2m">
                      <node concept="3cpWs3" id="376SzOa$Oo0" role="3uHU7B">
                        <node concept="Xl_RD" id="376SzOa$Oo1" role="3uHU7B">
                          <property role="Xl_RC" value="evento.equals(\&quot;" />
                        </node>
                        <node concept="2YIFZM" id="376SzOa$OBX" role="3uHU7w">
                          <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                          <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                          <node concept="2YIFZM" id="376SzOa$OSV" role="37wK5m">
                            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                            <ref role="37wK5l" to="pkeo:376SzOavTTN" resolve="event" />
                            <node concept="37vLTw" id="376SzOa$OSW" role="37wK5m">
                              <ref role="3cqZAo" node="376SzOa$OpH" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="376SzOa$Oo5" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot;)" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="376SzOa$Oo6" role="3cqZAp">
                  <node concept="3y3z36" id="376SzOa$Oo7" role="3clFbw">
                    <node concept="2YIFZM" id="376SzOa$OC2" role="3uHU7B">
                      <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                      <ref role="37wK5l" to="pkeo:376SzOavTTZ" resolve="guard" />
                      <node concept="37vLTw" id="376SzOa$OC3" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOa$OpH" resolve="t" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="376SzOa$Ooa" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="376SzOa$Ooc" role="3clFbx">
                    <node concept="3clFbF" id="376SzOa$Ood" role="3cqZAp">
                      <node concept="37vLTI" id="376SzOa$Ooe" role="3clFbG">
                        <node concept="37vLTw" id="376SzOa$Oof" role="37vLTJ">
                          <ref role="3cqZAo" node="376SzOa$OnW" resolve="cond" />
                        </node>
                        <node concept="3cpWs3" id="376SzOa$Oog" role="37vLTx">
                          <node concept="3cpWs3" id="376SzOa$Ooh" role="3uHU7B">
                            <node concept="37vLTw" id="376SzOa$Ooi" role="3uHU7B">
                              <ref role="3cqZAo" node="376SzOa$OnW" resolve="cond" />
                            </node>
                            <node concept="Xl_RD" id="376SzOa$Ooj" role="3uHU7w">
                              <property role="Xl_RC" value=" &amp;&amp; " />
                            </node>
                          </node>
                          <node concept="1rXfSq" id="376SzOa$Ook" role="3uHU7w">
                            <ref role="37wK5l" node="376SzOa$Ojn" resolve="expr" />
                            <node concept="2YIFZM" id="376SzOa$OC6" role="37wK5m">
                              <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                              <ref role="37wK5l" to="pkeo:376SzOavTTZ" resolve="guard" />
                              <node concept="37vLTw" id="376SzOa$OC7" role="37wK5m">
                                <ref role="3cqZAo" node="376SzOa$OpH" resolve="t" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="376SzOa$Oon" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOa$OT6" role="3clFbG">
                    <node concept="37vLTw" id="376SzOa$OCa" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="376SzOa$OT7" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="3cpWs3" id="376SzOa$OT8" role="37wK5m">
                        <node concept="3cpWs3" id="376SzOa$OT9" role="3uHU7B">
                          <node concept="Xl_RD" id="376SzOa$OTa" role="3uHU7B">
                            <property role="Xl_RC" value="        if (" />
                          </node>
                          <node concept="37vLTw" id="376SzOa$OTb" role="3uHU7w">
                            <ref role="3cqZAo" node="376SzOa$OnW" resolve="cond" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="376SzOa$OTc" role="3uHU7w">
                          <property role="Xl_RC" value=") {\n" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="376SzOa$Oov" role="3cqZAp">
                  <node concept="3cpWsn" id="376SzOa$Oou" role="3cpWs9">
                    <property role="TrG5h" value="asg" />
                    <node concept="3uibUv" id="376SzOa$Oow" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="376SzOa$Oox" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="376SzOa$OCj" role="33vP2m">
                      <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                      <ref role="37wK5l" to="pkeo:376SzOavTUb" resolve="assignments" />
                      <node concept="37vLTw" id="376SzOa$OCk" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOa$OpH" resolve="t" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="376SzOa$Oo$" role="3cqZAp">
                  <node concept="37vLTw" id="376SzOa$Op4" role="1DdaDG">
                    <ref role="3cqZAo" node="376SzOa$Oou" resolve="asg" />
                  </node>
                  <node concept="3cpWsn" id="376SzOa$Op1" role="1Duv9x">
                    <property role="TrG5h" value="a" />
                    <node concept="3uibUv" id="376SzOa$Op3" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="376SzOa$OoA" role="2LFqv$">
                    <node concept="3cpWs8" id="376SzOa$OoC" role="3cqZAp">
                      <node concept="3cpWsn" id="376SzOa$OoB" role="3cpWs9">
                        <property role="TrG5h" value="v" />
                        <node concept="3uibUv" id="376SzOa$OoD" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2YIFZM" id="376SzOa$OCn" role="33vP2m">
                          <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                          <ref role="37wK5l" to="pkeo:376SzOavTRh" resolve="ref" />
                          <node concept="37vLTw" id="376SzOa$OCo" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOa$Op1" resolve="a" />
                          </node>
                          <node concept="Xl_RD" id="376SzOa$OCp" role="37wK5m">
                            <property role="Xl_RC" value="variable" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="376SzOa$OoH" role="3cqZAp">
                      <node concept="2OqwBi" id="376SzOa$OTm" role="3clFbG">
                        <node concept="37vLTw" id="376SzOa$OCs" role="2Oq$k0">
                          <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                        </node>
                        <node concept="liA8E" id="376SzOa$OTn" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="3cpWs3" id="376SzOa$OTo" role="37wK5m">
                            <node concept="3cpWs3" id="376SzOa$OTp" role="3uHU7B">
                              <node concept="3cpWs3" id="376SzOa$OTq" role="3uHU7B">
                                <node concept="3cpWs3" id="376SzOa$OTr" role="3uHU7B">
                                  <node concept="3cpWs3" id="376SzOa$OTs" role="3uHU7B">
                                    <node concept="3cpWs3" id="376SzOa$OTt" role="3uHU7B">
                                      <node concept="Xl_RD" id="376SzOa$OTu" role="3uHU7B">
                                        <property role="Xl_RC" value="          " />
                                      </node>
                                      <node concept="1rXfSq" id="376SzOa$OTv" role="3uHU7w">
                                        <ref role="37wK5l" node="376SzOa$OkD" resolve="javaType" />
                                        <node concept="37vLTw" id="376SzOa$OTw" role="37wK5m">
                                          <ref role="3cqZAo" node="376SzOa$OoB" resolve="v" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="376SzOa$OTx" role="3uHU7w">
                                      <property role="Xl_RC" value=" nuevo_" />
                                    </node>
                                  </node>
                                  <node concept="2YIFZM" id="376SzOa$Poo" role="3uHU7w">
                                    <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                                    <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                                    <node concept="37vLTw" id="376SzOa$Pop" role="37wK5m">
                                      <ref role="3cqZAo" node="376SzOa$OoB" resolve="v" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="376SzOa$OT$" role="3uHU7w">
                                  <property role="Xl_RC" value=" = " />
                                </node>
                              </node>
                              <node concept="1rXfSq" id="376SzOa$OT_" role="3uHU7w">
                                <ref role="37wK5l" node="376SzOa$Ojn" resolve="expr" />
                                <node concept="2YIFZM" id="376SzOa$Pos" role="37wK5m">
                                  <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                                  <ref role="37wK5l" to="pkeo:376SzOavTQV" resolve="child" />
                                  <node concept="37vLTw" id="376SzOa$Pot" role="37wK5m">
                                    <ref role="3cqZAo" node="376SzOa$Op1" resolve="a" />
                                  </node>
                                  <node concept="Xl_RD" id="376SzOa$Pou" role="37wK5m">
                                    <property role="Xl_RC" value="value" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="376SzOa$OTD" role="3uHU7w">
                              <property role="Xl_RC" value=";\n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="376SzOa$Op5" role="3cqZAp">
                  <node concept="37vLTw" id="376SzOa$Opt" role="1DdaDG">
                    <ref role="3cqZAo" node="376SzOa$Oou" resolve="asg" />
                  </node>
                  <node concept="3cpWsn" id="376SzOa$Opq" role="1Duv9x">
                    <property role="TrG5h" value="a" />
                    <node concept="3uibUv" id="376SzOa$Ops" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="376SzOa$Op7" role="2LFqv$">
                    <node concept="3cpWs8" id="376SzOa$Op9" role="3cqZAp">
                      <node concept="3cpWsn" id="376SzOa$Op8" role="3cpWs9">
                        <property role="TrG5h" value="n" />
                        <node concept="3uibUv" id="376SzOa$Opa" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="2YIFZM" id="376SzOa$OCU" role="33vP2m">
                          <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                          <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                          <node concept="2YIFZM" id="376SzOa$OTG" role="37wK5m">
                            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                            <ref role="37wK5l" to="pkeo:376SzOavTRh" resolve="ref" />
                            <node concept="37vLTw" id="376SzOa$OTH" role="37wK5m">
                              <ref role="3cqZAo" node="376SzOa$Opq" resolve="a" />
                            </node>
                            <node concept="Xl_RD" id="376SzOa$OTI" role="37wK5m">
                              <property role="Xl_RC" value="variable" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="376SzOa$Opf" role="3cqZAp">
                      <node concept="2OqwBi" id="376SzOa$OTS" role="3clFbG">
                        <node concept="37vLTw" id="376SzOa$OD0" role="2Oq$k0">
                          <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                        </node>
                        <node concept="liA8E" id="376SzOa$OTT" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="3cpWs3" id="376SzOa$OTU" role="37wK5m">
                            <node concept="3cpWs3" id="376SzOa$OTV" role="3uHU7B">
                              <node concept="3cpWs3" id="376SzOa$OTW" role="3uHU7B">
                                <node concept="3cpWs3" id="376SzOa$OTX" role="3uHU7B">
                                  <node concept="Xl_RD" id="376SzOa$OTY" role="3uHU7B">
                                    <property role="Xl_RC" value="          " />
                                  </node>
                                  <node concept="37vLTw" id="376SzOa$OTZ" role="3uHU7w">
                                    <ref role="3cqZAo" node="376SzOa$Op8" resolve="n" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="376SzOa$OU0" role="3uHU7w">
                                  <property role="Xl_RC" value=" = nuevo_" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="376SzOa$OU1" role="3uHU7w">
                                <ref role="3cqZAo" node="376SzOa$Op8" resolve="n" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="376SzOa$OU2" role="3uHU7w">
                              <property role="Xl_RC" value=";\n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="376SzOa$Opu" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOa$OUc" role="3clFbG">
                    <node concept="37vLTw" id="376SzOa$ODd" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="376SzOa$OUd" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="3cpWs3" id="376SzOa$OUe" role="37wK5m">
                        <node concept="3cpWs3" id="376SzOa$OUf" role="3uHU7B">
                          <node concept="Xl_RD" id="376SzOa$OUg" role="3uHU7B">
                            <property role="Xl_RC" value="          estado = Estado." />
                          </node>
                          <node concept="1rXfSq" id="376SzOa$OUh" role="3uHU7w">
                            <ref role="37wK5l" node="376SzOa$Ojd" resolve="constant" />
                            <node concept="2YIFZM" id="376SzOa$Pox" role="37wK5m">
                              <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                              <ref role="37wK5l" to="pkeo:376SzOavTTB" resolve="target" />
                              <node concept="37vLTw" id="376SzOa$Poy" role="37wK5m">
                                <ref role="3cqZAo" node="376SzOa$OpH" resolve="t" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="376SzOa$OUk" role="3uHU7w">
                          <property role="Xl_RC" value=";\n" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="376SzOa$OpB" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOa$OUu" role="3clFbG">
                    <node concept="37vLTw" id="376SzOa$ODs" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="376SzOa$OUv" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="376SzOa$OUw" role="37wK5m">
                        <property role="Xl_RC" value="          return;\n" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="376SzOa$OpE" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOa$OUE" role="3clFbG">
                    <node concept="37vLTw" id="376SzOa$ODx" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="376SzOa$OUF" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="376SzOa$OUG" role="37wK5m">
                        <property role="Xl_RC" value="        }\n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="376SzOa$OpN" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$OUQ" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$ODA" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$OUR" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="376SzOa$OUS" role="37wK5m">
                    <property role="Xl_RC" value="        break;\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OpW" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OV2" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$ODF" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OV3" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OV4" role="37wK5m">
                <property role="Xl_RC" value="      default:\n        break;\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OpZ" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OVe" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$ODK" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OVf" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OVg" role="37wK5m">
                <property role="Xl_RC" value="    }\n  }\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Oq2" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OVq" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$ODP" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OVr" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OVs" role="37wK5m">
                <property role="Xl_RC" value="  public Estado getEstado() {\n    return estado;\n  }\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="376SzOa$OyG" role="3cqZAp">
          <node concept="1PaTwC" id="376SzOa$OyH" role="1aUNEU">
            <node concept="3oM_SD" id="376SzOa$OyJ" role="1PaTwD">
              <property role="3oM_SC" value="F" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Oq5" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OVA" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$ODU" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OVB" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OVC" role="37wK5m">
                <property role="Xl_RC" value="  public boolean terminado() {\n    return false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$Oq8" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOa$ODZ" role="1DdaDG">
            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
            <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
            <node concept="37vLTw" id="376SzOa$OE0" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
            </node>
            <node concept="Xl_RD" id="376SzOa$OE1" role="37wK5m">
              <property role="Xl_RC" value="states" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOa$Oqn" role="1Duv9x">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="376SzOa$Oqp" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Oqa" role="2LFqv$">
            <node concept="3clFbJ" id="376SzOa$Oqb" role="3cqZAp">
              <node concept="2YIFZM" id="376SzOa$OE4" role="3clFbw">
                <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                <ref role="37wK5l" to="pkeo:376SzOavTPW" resolve="is" />
                <node concept="37vLTw" id="376SzOa$OE5" role="37wK5m">
                  <ref role="3cqZAo" node="376SzOa$Oqn" resolve="s" />
                </node>
                <node concept="Xl_RD" id="376SzOa$OE6" role="37wK5m">
                  <property role="Xl_RC" value="FinalState" />
                </node>
              </node>
              <node concept="3clFbS" id="376SzOa$Oqg" role="3clFbx">
                <node concept="3clFbF" id="376SzOa$Oqh" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOa$OVM" role="3clFbG">
                    <node concept="37vLTw" id="376SzOa$OE9" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="376SzOa$OVN" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="3cpWs3" id="376SzOa$OVO" role="37wK5m">
                        <node concept="Xl_RD" id="376SzOa$OVP" role="3uHU7B">
                          <property role="Xl_RC" value=" || estado == Estado." />
                        </node>
                        <node concept="1rXfSq" id="376SzOa$OVQ" role="3uHU7w">
                          <ref role="37wK5l" node="376SzOa$Ojd" resolve="constant" />
                          <node concept="37vLTw" id="376SzOa$OVR" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOa$Oqn" resolve="s" />
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
        <node concept="3clFbF" id="376SzOa$Oqt" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OW1" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OEl" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OW2" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OW3" role="37wK5m">
                <property role="Xl_RC" value=";\n  }\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Oqw" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OWd" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OEq" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OWe" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OWf" role="37wK5m">
                <property role="Xl_RC" value="  @Override\n  public String toString() {\n    return estado + \&quot;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$Oqz" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOa$OEv" role="1DdaDG">
            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
            <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
            <node concept="37vLTw" id="376SzOa$OEw" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
            </node>
            <node concept="Xl_RD" id="376SzOa$OEx" role="37wK5m">
              <property role="Xl_RC" value="variables" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOa$OqN" role="1Duv9x">
            <property role="TrG5h" value="v" />
            <node concept="3uibUv" id="376SzOa$OqP" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Oq_" role="2LFqv$">
            <node concept="3clFbF" id="376SzOa$OqA" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$OWp" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OE$" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$OWq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="376SzOa$OWr" role="37wK5m">
                    <node concept="3cpWs3" id="376SzOa$OWs" role="3uHU7B">
                      <node concept="3cpWs3" id="376SzOa$OWt" role="3uHU7B">
                        <node concept="3cpWs3" id="376SzOa$OWu" role="3uHU7B">
                          <node concept="Xl_RD" id="376SzOa$OWv" role="3uHU7B">
                            <property role="Xl_RC" value=" " />
                          </node>
                          <node concept="2YIFZM" id="376SzOa$Po_" role="3uHU7w">
                            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                            <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                            <node concept="37vLTw" id="376SzOa$PoA" role="37wK5m">
                              <ref role="3cqZAo" node="376SzOa$OqN" resolve="v" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="376SzOa$OWy" role="3uHU7w">
                          <property role="Xl_RC" value="=\&quot; + " />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="376SzOa$PoD" role="3uHU7w">
                        <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                        <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                        <node concept="37vLTw" id="376SzOa$PoE" role="37wK5m">
                          <ref role="3cqZAo" node="376SzOa$OqN" resolve="v" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="376SzOa$OW_" role="3uHU7w">
                      <property role="Xl_RC" value=" + \&quot;" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OqT" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OWJ" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OEN" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OWK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OWL" role="37wK5m">
                <property role="Xl_RC" value="\&quot;;\n  }\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="376SzOa$OyK" role="3cqZAp">
          <node concept="1PaTwC" id="376SzOa$OyL" role="1aUNEU">
            <node concept="3oM_SD" id="376SzOa$OyN" role="1PaTwD">
              <property role="3oM_SC" value="main:" />
            </node>
            <node concept="3oM_SD" id="376SzOa$OyO" role="1PaTwD">
              <property role="3oM_SC" value="corre" />
            </node>
            <node concept="3oM_SD" id="376SzOa$OyP" role="1PaTwD">
              <property role="3oM_SC" value="el" />
            </node>
            <node concept="3oM_SD" id="376SzOa$OyQ" role="1PaTwD">
              <property role="3oM_SC" value="escenario" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$OqX" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$OqW" role="3cpWs9">
            <property role="TrG5h" value="scs" />
            <node concept="3uibUv" id="376SzOa$OqY" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="376SzOa$OqZ" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="1rXfSq" id="376SzOa$Or0" role="33vP2m">
              <ref role="37wK5l" node="376SzOa$OkR" resolve="scenariosOf" />
              <node concept="37vLTw" id="376SzOa$Or1" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$OlD" resolve="c" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Or2" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OWV" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OES" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OWW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OWX" role="37wK5m">
                <property role="Xl_RC" value="  public static void main(String[] args) {\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Or5" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$OX7" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OEX" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$OX8" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$OX9" role="37wK5m">
                <property role="Xl_RC" value="    String[] escenario = args;\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="376SzOa$Or8" role="3cqZAp">
          <node concept="3fqX7Q" id="376SzOa$Or9" role="3clFbw">
            <node concept="1eOMI4" id="376SzOa$Orb" role="3fr31v">
              <node concept="2OqwBi" id="376SzOa$OZs" role="1eOMHV">
                <node concept="37vLTw" id="376SzOa$OF2" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OqW" resolve="scs" />
                </node>
                <node concept="liA8E" id="376SzOa$OZt" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Ord" role="3clFbx">
            <node concept="3clFbF" id="376SzOa$Ore" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$OZB" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OF6" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$OZC" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="376SzOa$OZD" role="37wK5m">
                    <node concept="3cpWs3" id="376SzOa$OZE" role="3uHU7B">
                      <node concept="Xl_RD" id="376SzOa$OZF" role="3uHU7B">
                        <property role="Xl_RC" value="    if (escenario.length == 0) {\n      // escenario '" />
                      </node>
                      <node concept="2YIFZM" id="376SzOa$PoH" role="3uHU7w">
                        <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                        <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                        <node concept="2OqwBi" id="376SzOa$PxN" role="37wK5m">
                          <node concept="37vLTw" id="376SzOa$Ps8" role="2Oq$k0">
                            <ref role="3cqZAo" node="376SzOa$OqW" resolve="scs" />
                          </node>
                          <node concept="liA8E" id="376SzOa$PxO" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="376SzOa$PxP" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="376SzOa$OZJ" role="3uHU7w">
                      <property role="Xl_RC" value="' del modelo\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="376SzOa$Orn" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$OZT" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OFh" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$OZU" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="376SzOa$OZV" role="37wK5m">
                    <property role="Xl_RC" value="      escenario = new String[]{" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="376SzOa$Orq" role="3cqZAp">
              <node concept="37vLTI" id="376SzOa$Orr" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$Ors" role="37vLTJ">
                  <ref role="3cqZAo" node="376SzOa$Omc" resolve="sep" />
                </node>
                <node concept="Xl_RD" id="376SzOa$Ort" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="376SzOa$Oru" role="3cqZAp">
              <node concept="2YIFZM" id="376SzOa$OFm" role="1DdaDG">
                <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
                <node concept="2OqwBi" id="376SzOa$Pr2" role="37wK5m">
                  <node concept="37vLTw" id="376SzOa$OZY" role="2Oq$k0">
                    <ref role="3cqZAo" node="376SzOa$OqW" resolve="scs" />
                  </node>
                  <node concept="liA8E" id="376SzOa$Pr3" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="376SzOa$Pr4" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$OFp" role="37wK5m">
                  <property role="Xl_RC" value="steps" />
                </node>
              </node>
              <node concept="3cpWsn" id="376SzOa$OrL" role="1Duv9x">
                <property role="TrG5h" value="step" />
                <node concept="3uibUv" id="376SzOa$OrN" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="3clFbS" id="376SzOa$Orw" role="2LFqv$">
                <node concept="3clFbF" id="376SzOa$Orx" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOa$P0a" role="3clFbG">
                    <node concept="37vLTw" id="376SzOa$OFs" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="376SzOa$P0b" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="3cpWs3" id="376SzOa$P0c" role="37wK5m">
                        <node concept="3cpWs3" id="376SzOa$P0d" role="3uHU7B">
                          <node concept="3cpWs3" id="376SzOa$P0e" role="3uHU7B">
                            <node concept="37vLTw" id="376SzOa$P0f" role="3uHU7B">
                              <ref role="3cqZAo" node="376SzOa$Omc" resolve="sep" />
                            </node>
                            <node concept="Xl_RD" id="376SzOa$P0g" role="3uHU7w">
                              <property role="Xl_RC" value="\&quot;" />
                            </node>
                          </node>
                          <node concept="2YIFZM" id="376SzOa$Pr7" role="3uHU7w">
                            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                            <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                            <node concept="2YIFZM" id="376SzOa$Psd" role="37wK5m">
                              <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                              <ref role="37wK5l" to="pkeo:376SzOavTRh" resolve="ref" />
                              <node concept="37vLTw" id="376SzOa$Pse" role="37wK5m">
                                <ref role="3cqZAo" node="376SzOa$OrL" resolve="step" />
                              </node>
                              <node concept="Xl_RD" id="376SzOa$Psf" role="37wK5m">
                                <property role="Xl_RC" value="event" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="376SzOa$P0l" role="3uHU7w">
                          <property role="Xl_RC" value="\&quot;" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="376SzOa$OrH" role="3cqZAp">
                  <node concept="37vLTI" id="376SzOa$OrI" role="3clFbG">
                    <node concept="37vLTw" id="376SzOa$OrJ" role="37vLTJ">
                      <ref role="3cqZAo" node="376SzOa$Omc" resolve="sep" />
                    </node>
                    <node concept="Xl_RD" id="376SzOa$OrK" role="37vLTx">
                      <property role="Xl_RC" value=", " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="376SzOa$OrS" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$P0v" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OFE" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$P0w" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="376SzOa$P0x" role="37wK5m">
                    <property role="Xl_RC" value="};\n    }\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OrV" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P0F" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OFJ" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P0G" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$P0H" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$P0I" role="3uHU7B">
                  <node concept="3cpWs3" id="376SzOa$P0J" role="3uHU7B">
                    <node concept="3cpWs3" id="376SzOa$P0K" role="3uHU7B">
                      <node concept="Xl_RD" id="376SzOa$P0L" role="3uHU7B">
                        <property role="Xl_RC" value="    " />
                      </node>
                      <node concept="37vLTw" id="376SzOa$P0M" role="3uHU7w">
                        <ref role="3cqZAo" node="376SzOa$OlG" resolve="cls" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="376SzOa$P0N" role="3uHU7w">
                      <property role="Xl_RC" value=" fsm = new " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="376SzOa$P0O" role="3uHU7w">
                    <ref role="3cqZAo" node="376SzOa$OlG" resolve="cls" />
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$P0P" role="3uHU7w">
                  <property role="Xl_RC" value="();\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Os6" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P0Z" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OFW" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P10" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$P11" role="37wK5m">
                <property role="Xl_RC" value="    System.out.println(\&quot;Inicio: \&quot; + fsm);\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Os9" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P1b" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OG1" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P1c" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$P1d" role="37wK5m">
                <property role="Xl_RC" value="    for (String e : escenario) {\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Osc" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P1n" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OG6" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P1o" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$P1p" role="37wK5m">
                <property role="Xl_RC" value="      if (fsm.terminado()) {\n        System.out.println(\&quot;Estado final alcanzado: se detiene\&quot;);\n        break;\n      }\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Osf" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P1z" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OGb" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P1$" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$P1_" role="37wK5m">
                <property role="Xl_RC" value="      fsm.onEvent(e);\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Osi" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P1J" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OGg" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P1K" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$P1L" role="37wK5m">
                <property role="Xl_RC" value="      System.out.println(e + \&quot; -&gt; \&quot; + fsm);\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Osl" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P1V" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OGl" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P1W" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$P1X" role="37wK5m">
                <property role="Xl_RC" value="    }\n  }\n}\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="376SzOa$Oso" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P27" role="3cqZAk">
            <node concept="37vLTw" id="376SzOa$OGq" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OlQ" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P28" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOa$Osq" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOa$Osr" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOa$Oss" role="jymVt">
      <property role="TrG5h" value="reportFileName" />
      <node concept="37vLTG" id="376SzOa$Ost" role="3clF46">
        <property role="TrG5h" value="scenario" />
        <node concept="3uibUv" id="376SzOa$Osu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOa$Osv" role="3clF47">
        <node concept="3cpWs6" id="376SzOa$Osw" role="3cqZAp">
          <node concept="3cpWs3" id="376SzOa$Osx" role="3cqZAk">
            <node concept="2YIFZM" id="376SzOa$OGu" role="3uHU7B">
              <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
              <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
              <node concept="37vLTw" id="376SzOa$OGv" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$Ost" resolve="scenario" />
              </node>
            </node>
            <node concept="Xl_RD" id="376SzOa$Os$" role="3uHU7w">
              <property role="Xl_RC" value="_reporte" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOa$Os_" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOa$OsA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOa$OsB" role="jymVt">
      <property role="TrG5h" value="names" />
      <node concept="37vLTG" id="376SzOa$OsC" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="376SzOa$OsD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="376SzOa$OsE" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="376SzOa$OsF" role="3clF47">
        <node concept="3cpWs8" id="376SzOa$OsH" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$OsG" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="376SzOa$OsI" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="376SzOa$OsJ" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$OsK" role="3cqZAp">
          <node concept="37vLTw" id="376SzOa$Ot3" role="1DdaDG">
            <ref role="3cqZAo" node="376SzOa$OsC" resolve="nodes" />
          </node>
          <node concept="3cpWsn" id="376SzOa$Ot0" role="1Duv9x">
            <property role="TrG5h" value="n" />
            <node concept="3uibUv" id="376SzOa$Ot2" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$OsM" role="2LFqv$">
            <node concept="3clFbF" id="376SzOa$OsN" role="3cqZAp">
              <node concept="37vLTI" id="376SzOa$OsO" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OsP" role="37vLTJ">
                  <ref role="3cqZAo" node="376SzOa$OsG" resolve="result" />
                </node>
                <node concept="3cpWs3" id="376SzOa$OsQ" role="37vLTx">
                  <node concept="3cpWs3" id="376SzOa$OsR" role="3uHU7B">
                    <node concept="37vLTw" id="376SzOa$OsS" role="3uHU7B">
                      <ref role="3cqZAo" node="376SzOa$OsG" resolve="result" />
                    </node>
                    <node concept="1eOMI4" id="376SzOa$OsX" role="3uHU7w">
                      <node concept="3K4zz7" id="376SzOa$OsW" role="1eOMHV">
                        <node concept="2OqwBi" id="376SzOa$P2n" role="3K4Cdx">
                          <node concept="37vLTw" id="376SzOa$OGy" role="2Oq$k0">
                            <ref role="3cqZAo" node="376SzOa$OsG" resolve="result" />
                          </node>
                          <node concept="liA8E" id="376SzOa$P2o" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="376SzOa$OsU" role="3K4E3e">
                          <property role="Xl_RC" value="" />
                        </node>
                        <node concept="Xl_RD" id="376SzOa$OsV" role="3K4GZi">
                          <property role="Xl_RC" value=", " />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="376SzOa$OGA" role="3uHU7w">
                    <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                    <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                    <node concept="37vLTw" id="376SzOa$OGB" role="37wK5m">
                      <ref role="3cqZAo" node="376SzOa$Ot0" resolve="n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="376SzOa$Ot4" role="3cqZAp">
          <node concept="1eOMI4" id="376SzOa$Ot9" role="3cqZAk">
            <node concept="3K4zz7" id="376SzOa$Ot8" role="1eOMHV">
              <node concept="2OqwBi" id="376SzOa$P2B" role="3K4Cdx">
                <node concept="37vLTw" id="376SzOa$OGE" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OsG" resolve="result" />
                </node>
                <node concept="liA8E" id="376SzOa$P2C" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="Xl_RD" id="376SzOa$Ot6" role="3K4E3e">
                <property role="Xl_RC" value="(ninguno)" />
              </node>
              <node concept="37vLTw" id="376SzOa$Ot7" role="3K4GZi">
                <ref role="3cqZAo" node="376SzOa$OsG" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="376SzOa$Ota" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOa$Otb" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="376SzOa$Otc" role="jymVt">
      <property role="TrG5h" value="bullets" />
      <node concept="37vLTG" id="376SzOa$Otd" role="3clF46">
        <property role="TrG5h" value="sb" />
        <node concept="3uibUv" id="376SzOa$Ote" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="376SzOa$Otf" role="3clF46">
        <property role="TrG5h" value="msgs" />
        <node concept="3uibUv" id="376SzOa$Otg" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="376SzOa$Oth" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="376SzOa$Oti" role="3clF47">
        <node concept="3clFbJ" id="376SzOa$Otj" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P4U" role="3clFbw">
            <node concept="37vLTw" id="376SzOa$OGI" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$Otf" resolve="msgs" />
            </node>
            <node concept="liA8E" id="376SzOa$P4V" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Otm" role="3clFbx">
            <node concept="3clFbF" id="376SzOa$Otn" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$P54" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OGM" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$Otd" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$P55" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="376SzOa$P56" role="37wK5m">
                    <property role="Xl_RC" value="- Ninguno\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$Otq" role="3cqZAp">
          <node concept="37vLTw" id="376SzOa$OtB" role="1DdaDG">
            <ref role="3cqZAo" node="376SzOa$Otf" resolve="msgs" />
          </node>
          <node concept="3cpWsn" id="376SzOa$Ot$" role="1Duv9x">
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="376SzOa$OtA" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Ots" role="2LFqv$">
            <node concept="3clFbF" id="376SzOa$Ott" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$P5f" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OGR" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$Otd" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$P5g" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="376SzOa$P5h" role="37wK5m">
                    <node concept="3cpWs3" id="376SzOa$P5i" role="3uHU7B">
                      <node concept="Xl_RD" id="376SzOa$P5j" role="3uHU7B">
                        <property role="Xl_RC" value="- " />
                      </node>
                      <node concept="37vLTw" id="376SzOa$P5k" role="3uHU7w">
                        <ref role="3cqZAo" node="376SzOa$Ot$" resolve="m" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="376SzOa$P5l" role="3uHU7w">
                      <property role="Xl_RC" value="\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="376SzOa$OtC" role="1B3o_S" />
      <node concept="3cqZAl" id="376SzOa$OtD" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="376SzOa$OtE" role="jymVt">
      <property role="TrG5h" value="report" />
      <node concept="37vLTG" id="376SzOa$OtF" role="3clF46">
        <property role="TrG5h" value="scenario" />
        <node concept="3uibUv" id="376SzOa$OtG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="376SzOa$OtH" role="3clF47">
        <node concept="3cpWs8" id="376SzOa$OtJ" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$OtI" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="376SzOa$OtK" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2YIFZM" id="376SzOa$OH0" role="33vP2m">
              <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
              <ref role="37wK5l" to="pkeo:376SzOavTRh" resolve="ref" />
              <node concept="37vLTw" id="376SzOa$OH1" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$OtF" resolve="scenario" />
              </node>
              <node concept="Xl_RD" id="376SzOa$OH2" role="37wK5m">
                <property role="Xl_RC" value="character" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$OtP" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$OtO" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="376SzOa$OtQ" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="376SzOa$OH3" role="33vP2m">
              <node concept="1pGfFk" id="376SzOa$OH8" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OtS" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P5v" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OHb" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P5w" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$P5x" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$P5y" role="3uHU7B">
                  <node concept="3cpWs3" id="376SzOa$P5z" role="3uHU7B">
                    <node concept="3cpWs3" id="376SzOa$P5$" role="3uHU7B">
                      <node concept="Xl_RD" id="376SzOa$P5_" role="3uHU7B">
                        <property role="Xl_RC" value="# Reporte del razonador: " />
                      </node>
                      <node concept="2YIFZM" id="376SzOa$Prd" role="3uHU7w">
                        <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                        <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                        <node concept="37vLTw" id="376SzOa$Pre" role="37wK5m">
                          <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="376SzOa$P5C" role="3uHU7w">
                      <property role="Xl_RC" value=" (escenario " />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="376SzOa$Prh" role="3uHU7w">
                    <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                    <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                    <node concept="37vLTw" id="376SzOa$Pri" role="37wK5m">
                      <ref role="3cqZAo" node="376SzOa$OtF" resolve="scenario" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$P5F" role="3uHU7w">
                  <property role="Xl_RC" value=")\n\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Ou5" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P5P" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OHq" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P5Q" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$P5R" role="37wK5m">
                <property role="Xl_RC" value="_Generado automaticamente por GameFSM._\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Ou8" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P61" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OHv" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P62" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$P63" role="37wK5m">
                <property role="Xl_RC" value="## 1. Automata M = (Q, Sigma, delta, q0, F)\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$Ouc" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$Oub" role="3cpWs9">
            <property role="TrG5h" value="finals" />
            <node concept="3uibUv" id="376SzOa$Oud" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="376SzOa$Oue" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="376SzOa$OHy" role="33vP2m">
              <node concept="1pGfFk" id="376SzOa$OHB" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="376SzOa$OHC" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$Ouh" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOa$OHF" role="1DdaDG">
            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
            <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
            <node concept="37vLTw" id="376SzOa$OHG" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
            </node>
            <node concept="Xl_RD" id="376SzOa$OHH" role="37wK5m">
              <property role="Xl_RC" value="states" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOa$Out" role="1Duv9x">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="376SzOa$Ouv" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$Ouj" role="2LFqv$">
            <node concept="3clFbJ" id="376SzOa$Ouk" role="3cqZAp">
              <node concept="2YIFZM" id="376SzOa$OHK" role="3clFbw">
                <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                <ref role="37wK5l" to="pkeo:376SzOavTPW" resolve="is" />
                <node concept="37vLTw" id="376SzOa$OHL" role="37wK5m">
                  <ref role="3cqZAo" node="376SzOa$Out" resolve="s" />
                </node>
                <node concept="Xl_RD" id="376SzOa$OHM" role="37wK5m">
                  <property role="Xl_RC" value="FinalState" />
                </node>
              </node>
              <node concept="3clFbS" id="376SzOa$Oup" role="3clFbx">
                <node concept="3clFbF" id="376SzOa$Ouq" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOa$P8m" role="3clFbG">
                    <node concept="37vLTw" id="376SzOa$OHP" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOa$Oub" resolve="finals" />
                    </node>
                    <node concept="liA8E" id="376SzOa$P8n" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="376SzOa$P8o" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOa$Out" resolve="s" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Ouz" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P8y" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OHU" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P8z" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$P8$" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$P8_" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$P8A" role="3uHU7B">
                    <property role="Xl_RC" value="- **Q** (estados) = { " />
                  </node>
                  <node concept="1rXfSq" id="376SzOa$P8B" role="3uHU7w">
                    <ref role="37wK5l" node="376SzOa$OsB" resolve="names" />
                    <node concept="2YIFZM" id="376SzOa$Prl" role="37wK5m">
                      <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                      <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
                      <node concept="37vLTw" id="376SzOa$Prm" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
                      </node>
                      <node concept="Xl_RD" id="376SzOa$Prn" role="37wK5m">
                        <property role="Xl_RC" value="states" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$P8F" role="3uHU7w">
                  <property role="Xl_RC" value=" }\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OuH" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P8P" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OIa" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P8Q" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$P8R" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$P8S" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$P8T" role="3uHU7B">
                    <property role="Xl_RC" value="- **Sigma** (eventos) = { " />
                  </node>
                  <node concept="1rXfSq" id="376SzOa$P8U" role="3uHU7w">
                    <ref role="37wK5l" node="376SzOa$OsB" resolve="names" />
                    <node concept="2YIFZM" id="376SzOa$Prq" role="37wK5m">
                      <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                      <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
                      <node concept="37vLTw" id="376SzOa$Prr" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
                      </node>
                      <node concept="Xl_RD" id="376SzOa$Prs" role="37wK5m">
                        <property role="Xl_RC" value="events" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$P8Y" role="3uHU7w">
                  <property role="Xl_RC" value=" }\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OuR" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P98" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OIq" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P99" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$P9a" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$P9b" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$P9c" role="3uHU7B">
                    <property role="Xl_RC" value="- **q0** (inicial) = " />
                  </node>
                  <node concept="1eOMI4" id="376SzOa$P9d" role="3uHU7w">
                    <node concept="3K4zz7" id="376SzOa$P9e" role="1eOMHV">
                      <node concept="3clFbC" id="376SzOa$P9f" role="3K4Cdx">
                        <node concept="2YIFZM" id="376SzOa$Prv" role="3uHU7B">
                          <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                          <ref role="37wK5l" to="pkeo:376SzOavTUo" resolve="initialState" />
                          <node concept="37vLTw" id="376SzOa$Prw" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="376SzOa$P9i" role="3uHU7w" />
                      </node>
                      <node concept="Xl_RD" id="376SzOa$P9j" role="3K4E3e">
                        <property role="Xl_RC" value="(no hay)" />
                      </node>
                      <node concept="2YIFZM" id="376SzOa$Prz" role="3K4GZi">
                        <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                        <ref role="37wK5l" to="pkeo:376SzOavTSn" resolve="name" />
                        <node concept="2YIFZM" id="376SzOa$Psi" role="37wK5m">
                          <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                          <ref role="37wK5l" to="pkeo:376SzOavTUo" resolve="initialState" />
                          <node concept="37vLTw" id="376SzOa$Psj" role="37wK5m">
                            <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$P9n" role="3uHU7w">
                  <property role="Xl_RC" value="\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Ov7" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P9x" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OIG" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P9y" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$P9z" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$P9$" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$P9_" role="3uHU7B">
                    <property role="Xl_RC" value="- **F** (finales) = { " />
                  </node>
                  <node concept="1rXfSq" id="376SzOa$P9A" role="3uHU7w">
                    <ref role="37wK5l" node="376SzOa$OsB" resolve="names" />
                    <node concept="37vLTw" id="376SzOa$P9B" role="37wK5m">
                      <ref role="3cqZAo" node="376SzOa$Oub" resolve="finals" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$P9C" role="3uHU7w">
                  <property role="Xl_RC" value=" }\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Ovf" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$P9M" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OIU" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$P9N" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$P9O" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$P9P" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$P9Q" role="3uHU7B">
                    <property role="Xl_RC" value="- **|delta|** (transiciones) = " />
                  </node>
                  <node concept="2OqwBi" id="376SzOa$Pvv" role="3uHU7w">
                    <node concept="2YIFZM" id="376SzOa$PrK" role="2Oq$k0">
                      <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
                      <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
                      <node concept="37vLTw" id="376SzOa$PrL" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
                      </node>
                      <node concept="Xl_RD" id="376SzOa$PrM" role="37wK5m">
                        <property role="Xl_RC" value="transitions" />
                      </node>
                    </node>
                    <node concept="liA8E" id="376SzOa$Pvw" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$P9V" role="3uHU7w">
                  <property role="Xl_RC" value="\n\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Ovp" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$Pa5" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OJ6" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$Pa6" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$Pa7" role="37wK5m">
                <property role="Xl_RC" value="## 2. Verificacion de consistencia\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$Ovt" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$Ovs" role="3cpWs9">
            <property role="TrG5h" value="reach" />
            <node concept="3uibUv" id="376SzOa$Ovu" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="376SzOa$Ovv" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2YIFZM" id="376SzOa$OJb" role="33vP2m">
              <ref role="1Pybhc" to="pkeo:376SzOawh4I" resolve="Razonador" />
              <ref role="37wK5l" to="pkeo:376SzOawh4K" resolve="reachable" />
              <node concept="37vLTw" id="376SzOa$OJc" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$Ovz" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$Ovy" role="3cpWs9">
            <property role="TrG5h" value="unreachable" />
            <node concept="3uibUv" id="376SzOa$Ov$" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="376SzOa$Ov_" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="376SzOa$OJd" role="33vP2m">
              <node concept="1pGfFk" id="376SzOa$OJi" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="376SzOa$OJj" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$OvC" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOa$OJm" role="1DdaDG">
            <ref role="1Pybhc" to="pkeo:376SzOavTPF" resolve="Ast" />
            <ref role="37wK5l" to="pkeo:376SzOavTQ9" resolve="children" />
            <node concept="37vLTw" id="376SzOa$OJn" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
            </node>
            <node concept="Xl_RD" id="376SzOa$OJo" role="37wK5m">
              <property role="Xl_RC" value="states" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOa$OvP" role="1Duv9x">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="376SzOa$OvR" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$OvE" role="2LFqv$">
            <node concept="3clFbJ" id="376SzOa$OvF" role="3cqZAp">
              <node concept="3fqX7Q" id="376SzOa$OvG" role="3clFbw">
                <node concept="1eOMI4" id="376SzOa$OvJ" role="3fr31v">
                  <node concept="2OqwBi" id="376SzOa$Pcd" role="1eOMHV">
                    <node concept="37vLTw" id="376SzOa$OJr" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOa$Ovs" resolve="reach" />
                    </node>
                    <node concept="liA8E" id="376SzOa$Pce" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                      <node concept="37vLTw" id="376SzOa$Pcf" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOa$OvP" resolve="s" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="376SzOa$OvL" role="3clFbx">
                <node concept="3clFbF" id="376SzOa$OvM" role="3cqZAp">
                  <node concept="2OqwBi" id="376SzOa$Pey" role="3clFbG">
                    <node concept="37vLTw" id="376SzOa$OJw" role="2Oq$k0">
                      <ref role="3cqZAo" node="376SzOa$Ovy" resolve="unreachable" />
                    </node>
                    <node concept="liA8E" id="376SzOa$Pez" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="376SzOa$Pe$" role="37wK5m">
                        <ref role="3cqZAo" node="376SzOa$OvP" resolve="s" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OvV" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$PeI" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OJ_" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$PeJ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$PeK" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$PeL" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$PeM" role="3uHU7B">
                    <property role="Xl_RC" value="- Estados alcanzables desde q0 (BFS): " />
                  </node>
                  <node concept="1rXfSq" id="376SzOa$PeN" role="3uHU7w">
                    <ref role="37wK5l" node="376SzOa$OsB" resolve="names" />
                    <node concept="37vLTw" id="376SzOa$PeO" role="37wK5m">
                      <ref role="3cqZAo" node="376SzOa$Ovs" resolve="reach" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$PeP" role="3uHU7w">
                  <property role="Xl_RC" value="\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Ow3" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$PeZ" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OJN" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$Pf0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$Pf1" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$Pf2" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$Pf3" role="3uHU7B">
                    <property role="Xl_RC" value="- Estados inalcanzables: " />
                  </node>
                  <node concept="1rXfSq" id="376SzOa$Pf4" role="3uHU7w">
                    <ref role="37wK5l" node="376SzOa$OsB" resolve="names" />
                    <node concept="37vLTw" id="376SzOa$Pf5" role="37wK5m">
                      <ref role="3cqZAo" node="376SzOa$Ovy" resolve="unreachable" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$Pf6" role="3uHU7w">
                  <property role="Xl_RC" value="\n\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="376SzOa$Owc" role="3cqZAp">
          <node concept="3cpWsn" id="376SzOa$Owb" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="3uibUv" id="376SzOa$Owd" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="376SzOa$Owe" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="376SzOa$OJZ" role="33vP2m">
              <node concept="1pGfFk" id="376SzOa$OK4" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="376SzOa$OK5" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Owh" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$Php" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OK8" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$Owb" resolve="errors" />
            </node>
            <node concept="liA8E" id="376SzOa$Phq" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="2YIFZM" id="376SzOa$PrP" role="37wK5m">
                <ref role="1Pybhc" to="pkeo:376SzOavYL0" resolve="GameFsmChecks" />
                <ref role="37wK5l" to="pkeo:376SzOavYOt" resolve="messages" />
                <node concept="37vLTw" id="376SzOa$PrQ" role="37wK5m">
                  <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
                </node>
                <node concept="Xl_RD" id="376SzOa$PrR" role="37wK5m">
                  <property role="Xl_RC" value="tipos" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Owm" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$PjK" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OKf" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$Owb" resolve="errors" />
            </node>
            <node concept="liA8E" id="376SzOa$PjL" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="2YIFZM" id="376SzOa$PrU" role="37wK5m">
                <ref role="1Pybhc" to="pkeo:376SzOavYL0" resolve="GameFsmChecks" />
                <ref role="37wK5l" to="pkeo:376SzOavYOt" resolve="messages" />
                <node concept="37vLTw" id="376SzOa$PrV" role="37wK5m">
                  <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
                </node>
                <node concept="Xl_RD" id="376SzOa$PrW" role="37wK5m">
                  <property role="Xl_RC" value="semantica" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Owr" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$Pm7" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OKm" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$Owb" resolve="errors" />
            </node>
            <node concept="liA8E" id="376SzOa$Pm8" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="2YIFZM" id="376SzOa$PrZ" role="37wK5m">
                <ref role="1Pybhc" to="pkeo:376SzOawh4I" resolve="Razonador" />
                <ref role="37wK5l" to="pkeo:376SzOawh8G" resolve="messages" />
                <node concept="37vLTw" id="376SzOa$Ps0" role="37wK5m">
                  <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
                </node>
                <node concept="Xl_RD" id="376SzOa$Ps1" role="37wK5m">
                  <property role="Xl_RC" value="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Oww" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$Pml" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OKt" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$Pmm" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$Pmn" role="37wK5m">
                <property role="Xl_RC" value="### Errores\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Owz" role="3cqZAp">
          <node concept="1rXfSq" id="376SzOa$Ow$" role="3clFbG">
            <ref role="37wK5l" node="376SzOa$Otc" resolve="bullets" />
            <node concept="37vLTw" id="376SzOa$Ow_" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="37vLTw" id="376SzOa$OwA" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$Owb" resolve="errors" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OwB" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$Pmx" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OKy" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$Pmy" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$Pmz" role="37wK5m">
                <property role="Xl_RC" value="\n### Avisos\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OwE" role="3cqZAp">
          <node concept="1rXfSq" id="376SzOa$OwF" role="3clFbG">
            <ref role="37wK5l" node="376SzOa$Otc" resolve="bullets" />
            <node concept="37vLTw" id="376SzOa$OwG" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="2YIFZM" id="376SzOa$OKB" role="37wK5m">
              <ref role="1Pybhc" to="pkeo:376SzOawh4I" resolve="Razonador" />
              <ref role="37wK5l" to="pkeo:376SzOawh8G" resolve="messages" />
              <node concept="37vLTw" id="376SzOa$OKC" role="37wK5m">
                <ref role="3cqZAo" node="376SzOa$OtI" resolve="c" />
              </node>
              <node concept="Xl_RD" id="376SzOa$OKD" role="37wK5m">
                <property role="Xl_RC" value="warning" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OwK" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$PmH" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OKG" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$PmI" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$PmJ" role="37wK5m">
                <property role="Xl_RC" value="\n## 3. Simulacion (semantica operacional small-step)\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OwN" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$PmT" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OKL" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$PmU" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$PmV" role="37wK5m">
                <property role="Xl_RC" value="| Paso | Evento | Transicion | Estado | Variables |\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$OwQ" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$Pn5" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OKQ" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$Pn6" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="Xl_RD" id="376SzOa$Pn7" role="37wK5m">
                <property role="Xl_RC" value="|---|---|---|---|---|\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="376SzOa$OwT" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOa$OKV" role="1DdaDG">
            <ref role="1Pybhc" to="pkeo:376SzOawh4I" resolve="Razonador" />
            <ref role="37wK5l" to="pkeo:376SzOawhqu" resolve="simulate" />
            <node concept="37vLTw" id="376SzOa$OKW" role="37wK5m">
              <ref role="3cqZAo" node="376SzOa$OtF" resolve="scenario" />
            </node>
          </node>
          <node concept="3cpWsn" id="376SzOa$Ox1" role="1Duv9x">
            <property role="TrG5h" value="line" />
            <node concept="3uibUv" id="376SzOa$Ox3" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="3clFbS" id="376SzOa$OwV" role="2LFqv$">
            <node concept="3clFbF" id="376SzOa$OwW" role="3cqZAp">
              <node concept="2OqwBi" id="376SzOa$Pnh" role="3clFbG">
                <node concept="37vLTw" id="376SzOa$OKZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
                </node>
                <node concept="liA8E" id="376SzOa$Pni" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="376SzOa$Pnj" role="37wK5m">
                    <node concept="37vLTw" id="376SzOa$Pnk" role="3uHU7B">
                      <ref role="3cqZAo" node="376SzOa$Ox1" resolve="line" />
                    </node>
                    <node concept="Xl_RD" id="376SzOa$Pnl" role="3uHU7w">
                      <property role="Xl_RC" value="\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="376SzOa$Ox6" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$Pnv" role="3clFbG">
            <node concept="37vLTw" id="376SzOa$OL6" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$Pnw" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="3cpWs3" id="376SzOa$Pnx" role="37wK5m">
                <node concept="3cpWs3" id="376SzOa$Pny" role="3uHU7B">
                  <node concept="Xl_RD" id="376SzOa$Pnz" role="3uHU7B">
                    <property role="Xl_RC" value="\nEstado final del escenario: **" />
                  </node>
                  <node concept="2YIFZM" id="376SzOa$Ps4" role="3uHU7w">
                    <ref role="1Pybhc" to="pkeo:376SzOawh4I" resolve="Razonador" />
                    <ref role="37wK5l" to="pkeo:376SzOawhuK" resolve="finalStateName" />
                    <node concept="37vLTw" id="376SzOa$Ps5" role="37wK5m">
                      <ref role="3cqZAo" node="376SzOa$OtF" resolve="scenario" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="376SzOa$PnA" role="3uHU7w">
                  <property role="Xl_RC" value="**\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="376SzOa$Oxe" role="3cqZAp">
          <node concept="2OqwBi" id="376SzOa$PnK" role="3cqZAk">
            <node concept="37vLTw" id="376SzOa$OLg" role="2Oq$k0">
              <ref role="3cqZAo" node="376SzOa$OtO" resolve="sb" />
            </node>
            <node concept="liA8E" id="376SzOa$PnL" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="376SzOa$Oxg" role="1B3o_S" />
      <node concept="3uibUv" id="376SzOa$Oxh" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="376SzOaA4qn">
    <property role="TrG5h" value="Character_TextGen" />
    <ref role="WuzLi" to="uzwb:4s$SF80Nqg2" resolve="Character" />
    <node concept="9MYSb" id="376SzOaA4qo" role="33IsuW">
      <node concept="3clFbS" id="376SzOaA4qp" role="2VODD2">
        <node concept="3cpWs6" id="376SzOaA4r4" role="3cqZAp">
          <node concept="Xl_RD" id="376SzOaA4r5" role="3cqZAk">
            <property role="Xl_RC" value="java" />
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="376SzOaA4qq" role="29tGrW">
      <node concept="3clFbS" id="376SzOaA4qr" role="2VODD2">
        <node concept="3cpWs6" id="376SzOaA4Dr" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOaA4Dv" role="3cqZAk">
            <ref role="1Pybhc" node="376SzOa$Oj0" resolve="CodeGen" />
            <ref role="37wK5l" node="376SzOa$Oj2" resolve="javaFileName" />
            <node concept="117lpO" id="376SzOaA4Dw" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="376SzOaA4qs" role="11c4hB">
      <node concept="3clFbS" id="376SzOaA4qt" role="2VODD2">
        <node concept="lc7rE" id="376SzOaA4qu" role="3cqZAp">
          <node concept="l9hG8" id="376SzOaA4qv" role="lcghm">
            <node concept="2YIFZM" id="376SzOaA4Vb" role="lb14g">
              <ref role="1Pybhc" node="376SzOa$Oj0" resolve="CodeGen" />
              <ref role="37wK5l" node="376SzOa$OlC" resolve="javaClass" />
              <node concept="117lpO" id="376SzOaA4Vc" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="376SzOaA4qx">
    <property role="TrG5h" value="Scenario_TextGen" />
    <ref role="WuzLi" to="uzwb:4s$SF80Nqgu" resolve="Scenario" />
    <node concept="9MYSb" id="376SzOaA4qy" role="33IsuW">
      <node concept="3clFbS" id="376SzOaA4qz" role="2VODD2">
        <node concept="3cpWs6" id="376SzOaA5eA" role="3cqZAp">
          <node concept="Xl_RD" id="376SzOaA5eB" role="3cqZAk">
            <property role="Xl_RC" value="md" />
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="376SzOaA4q$" role="29tGrW">
      <node concept="3clFbS" id="376SzOaA4q_" role="2VODD2">
        <node concept="3cpWs6" id="376SzOaA5sX" role="3cqZAp">
          <node concept="2YIFZM" id="376SzOaA5t1" role="3cqZAk">
            <ref role="1Pybhc" node="376SzOa$Oj0" resolve="CodeGen" />
            <ref role="37wK5l" node="376SzOa$Oss" resolve="reportFileName" />
            <node concept="117lpO" id="376SzOaA5t2" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="376SzOaA4qA" role="11c4hB">
      <node concept="3clFbS" id="376SzOaA4qB" role="2VODD2">
        <node concept="lc7rE" id="376SzOaA4qC" role="3cqZAp">
          <node concept="l9hG8" id="376SzOaA4qD" role="lcghm">
            <node concept="2YIFZM" id="376SzOaA5Io" role="lb14g">
              <ref role="1Pybhc" node="376SzOa$Oj0" resolve="CodeGen" />
              <ref role="37wK5l" node="376SzOa$OtE" resolve="report" />
              <node concept="117lpO" id="376SzOaA5Ip" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

