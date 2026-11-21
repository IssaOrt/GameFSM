# Genera languages/gamefsm/models/gamefsm.structure.mps (persistencia MPS v9)
param([string]$OutFile)

$alpha = '0123456789abcdefghijklmnopqrstuvwxyz$_ABCDEFGHIJKLMNOPQRSTUVWXYZ'
function Enc([System.Numerics.BigInteger]$n) { $s = ''; do { $s = $alpha[[int]($n % 64)] + $s; $n = [System.Numerics.BigInteger]::Divide($n, 64) } while ($n -gt 0); $s }

# Base fija para que los IDs sean estables si se regenera el archivo
$script:next = [System.Numerics.BigInteger]::Parse('5126471530000000000')
function NewId { $script:next = $script:next + 1; return $script:next }

# ---------- Especificación del AST ----------
# kind: concept | interface ; ext: concepto padre (BaseConcept por defecto)
# impl: interfaces ; links: @(rol, destino, card, tipo agg|ref) ; props: @(nombre, tipo)
$AST = [ordered]@{}
function Def($name, $h) { $h.name = $name; $AST[$name] = $h }

Def 'ITyped'          @{ kind='interface'; links=@(,@('type','Type','1','agg')) }
Def 'Character'       @{ root=$true; alias='personaje'; impl=@('INamedConcept'); links=@(
                           @('variables','Variable','0..n','agg'),
                           @('events','Event','1..n','agg'),
                           @('states','State','1..n','agg'),
                           @('transitions','Transition','0..n','agg')) }
Def 'State'           @{ abstract=$true; impl=@('INamedConcept') }
Def 'InitialState'    @{ ext='State'; alias='estado inicial' }
Def 'NormalState'     @{ ext='State'; alias='estado' }
Def 'FinalState'      @{ ext='State'; alias='estado final' }
Def 'Event'           @{ alias='evento'; impl=@('INamedConcept') }
Def 'Transition'      @{ alias='transicion'; links=@(
                           @('source','State','1','ref'),
                           @('event','Event','1','ref'),
                           @('guard','Expression','0..1','agg'),
                           @('target','State','1','ref'),
                           @('actions','Assignment','0..n','agg')) }
Def 'Variable'        @{ alias='variable'; impl=@('INamedConcept','ITyped'); links=@(,@('initialValue','Expression','1','agg')) }
Def 'Type'            @{ abstract=$true }
Def 'IntType'         @{ ext='Type'; alias='entero' }
Def 'BoolType'        @{ ext='Type'; alias='booleano' }
Def 'Expression'      @{ abstract=$true }
Def 'IntLiteral'      @{ ext='Expression'; alias='numero'; props=@(,@('value','integer')) }
Def 'BoolLiteral'     @{ ext='Expression'; alias='logico'; props=@(,@('value','boolean')) }
Def 'VariableRef'     @{ ext='Expression'; links=@(,@('variable','Variable','1','ref')) }
Def 'BinaryExpression'@{ abstract=$true; ext='Expression'; links=@(
                           @('left','Expression','1','agg'),
                           @('right','Expression','1','agg')) }
Def 'ComparisonExpr'  @{ abstract=$true; ext='BinaryExpression' }
Def 'LessExpr'        @{ ext='ComparisonExpr'; alias='<' }
Def 'LessEqExpr'      @{ ext='ComparisonExpr'; alias='<=' }
Def 'GreaterExpr'     @{ ext='ComparisonExpr'; alias='>' }
Def 'GreaterEqExpr'   @{ ext='ComparisonExpr'; alias='>=' }
Def 'EqualsExpr'      @{ ext='ComparisonExpr'; alias='==' }
Def 'NotEqualsExpr'   @{ ext='ComparisonExpr'; alias='!=' }
Def 'ArithmeticExpr'  @{ abstract=$true; ext='BinaryExpression' }
Def 'PlusExpr'        @{ ext='ArithmeticExpr'; alias='+' }
Def 'MinusExpr'       @{ ext='ArithmeticExpr'; alias='-' }
Def 'AndExpr'         @{ ext='BinaryExpression'; alias='and' }
Def 'Assignment'      @{ links=@(
                           @('variable','Variable','1','ref'),
                           @('value','Expression','1','agg')) }
Def 'Scenario'        @{ root=$true; alias='escenario'; impl=@('INamedConcept'); links=@(
                           @('character','Character','1','ref'),
                           @('steps','ScenarioStep','1..n','agg')) }
Def 'ScenarioStep'    @{ links=@(,@('event','Event','1','ref')) }

# ---------- Constantes de lang.core (tpck) ----------
$core = @{ 'BaseConcept'='gw2VY9q'; 'INamedConcept'='h0TrEE$'; 'integer'='fKAQMTA'; 'boolean'='fKAQMTB'; 'string'='fKAOsGN' }
$card = @{ '1'='fLJekj4/1'; '0..n'='fLJekj5/0..n'; '1..n'='fLJekj6/1..n' }   # 0..1 es el valor por defecto (no se escribe)

# Asignar IDs a cada concepto
foreach ($k in $AST.Keys) { $id = NewId; $AST[$k].cid = $id; $AST[$k].nid = Enc $id }
function RefTo($target) { if ($AST.Contains($target)) { "node=`"$($AST[$target].nid)`" resolve=`"$target`"" } else { "to=`"tpck:$($core[$target])`" resolve=`"$target`"" } }
function X([string]$s) { $s.Replace('&','&amp;').Replace('<','&lt;').Replace('>','&gt;').Replace('"','&quot;') }

$sb = New-Object System.Text.StringBuilder
function W($line) { [void]$sb.Append($line + "`n") }

W '<?xml version="1.0" encoding="UTF-8"?>'
W '<model ref="r:476a94d4-63d0-45c7-958e-14e2803e5fca(gamefsm.structure)">'
W '  <persistence version="9" />'
W '  <languages>'
W '    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />'
W '  </languages>'
W '  <imports>'
W '    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />'
W '  </imports>'
W '  <registry>'
W '    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">'
W '      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">'
W '        <property id="6714410169261853888" name="conceptId" index="EcuMT" />'
W '        <property id="4628067390765956807" name="final" index="R5$K2" />'
W '        <property id="4628067390765956802" name="abstract" index="R5$K7" />'
W '        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />'
W '        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />'
W '        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />'
W '      </concept>'
W '      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />'
W '      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">'
W '        <reference id="1169127628841" name="intfc" index="PrY4T" />'
W '      </concept>'
W '      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">'
W '        <property id="1096454100552" name="rootable" index="19KtqR" />'
W '        <reference id="1071489389519" name="extends" index="1TJDcQ" />'
W '        <child id="1169129564478" name="implements" index="PzmwI" />'
W '      </concept>'
W '      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">'
W '        <property id="241647608299431129" name="propertyId" index="IQ2nx" />'
W '        <reference id="1082985295845" name="dataType" index="AX2Wp" />'
W '      </concept>'
W '      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">'
W '        <property id="1071599776563" name="role" index="20kJfa" />'
W '        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />'
W '        <property id="1071599937831" name="metaClass" index="20lmBu" />'
W '        <property id="241647608299431140" name="linkId" index="IQ2ns" />'
W '        <reference id="1071599976176" name="target" index="20lvS9" />'
W '      </concept>'
W '    </language>'
W '    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">'
W '      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">'
W '        <property id="1169194664001" name="name" index="TrG5h" />'
W '      </concept>'
W '    </language>'
W '  </registry>'

foreach ($k in $AST.Keys) {
  $c = $AST[$k]
  if ($c.kind -eq 'interface') {
    W "  <node concept=`"PlHQZ`" id=`"$($c.nid)`">"
  } else {
    W "  <node concept=`"1TIwiD`" id=`"$($c.nid)`">"
    if ($c.root) { W '    <property role="19KtqR" value="true" />' }
    if ($c.abstract) { W '    <property role="R5$K7" value="true" />' }
  }
  W "    <property role=`"TrG5h`" value=`"$($c.name)`" />"
  if ($c.alias) { W "    <property role=`"34LRSv`" value=`"$(X $c.alias)`" />" }
  W "    <property role=`"EcuMT`" value=`"$($c.cid)`" />"
  if ($c.kind -ne 'interface') {
    $ext = 'BaseConcept'; if ($c.ext) { $ext = $c.ext }
    W "    <ref role=`"1TJDcQ`" $(RefTo $ext) />"
  }
  foreach ($i in @($c.impl)) { if (-not $i) { continue }
    $iid = Enc (NewId)
    W "    <node concept=`"PrWs8`" id=`"$iid`" role=`"PzmwI`">"
    W "      <ref role=`"PrY4T`" $(RefTo $i) />"
    W '    </node>'
  }
  foreach ($l in @($c.links)) { if (-not $l) { continue }
    $lid = NewId
    W "    <node concept=`"1TJgyj`" id=`"$(Enc $lid)`" role=`"1TKVEi`">"
    if ($l[3] -eq 'agg') { W '      <property role="20lmBu" value="fLJjDmT/aggregation" />' }
    W "      <property role=`"20kJfa`" value=`"$($l[0])`" />"
    if ($l[2] -ne '0..1') { W "      <property role=`"20lbJX`" value=`"$($card[$l[2]])`" />" }
    W "      <property role=`"IQ2ns`" value=`"$lid`" />"
    W "      <ref role=`"20lvS9`" $(RefTo $l[1]) />"
    W '    </node>'
  }
  foreach ($p in @($c.props)) { if (-not $p) { continue }
    $propId = NewId
    W "    <node concept=`"1TJgyi`" id=`"$(Enc $propId)`" role=`"1TKVEl`">"
    W "      <property role=`"TrG5h`" value=`"$($p[0])`" />"
    W "      <property role=`"IQ2nx`" value=`"$propId`" />"
    W "      <ref role=`"AX2Wp`" $(RefTo $p[1]) />"
    W '    </node>'
  }
  W '  </node>'
}
W '</model>'
W ''

[IO.File]::WriteAllText($OutFile, $sb.ToString(), (New-Object System.Text.UTF8Encoding($false)))
"Conceptos generados: $($AST.Count)"
