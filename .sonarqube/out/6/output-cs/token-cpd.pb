�\
oC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.DM\AccesoDM\DMAccesoDatosMySql.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. 
DM  
.  !
AccesoDM! )
{ 
public		 

class		 
DMAccesoDatosMySql		 #
{

 
private 
IList 
< 
DTOParametroBD $
>$ %
DTParametros& 2
=3 4
new5 8
List9 =
<= >
DTOParametroBD> L
>L M
(M N
)N O
;O P
private 
readonly 
string 
timeout  '
=( )
Environment* 5
.5 6"
GetEnvironmentVariable6 L
(L M
$strM ^
)^ _
;_ `
private 
static 
string (
ObtenerNombreCadenaBaseDatos :
(: ;
); <
{ 	
var 
Cadena 
= 
Environment $
.$ %"
GetEnvironmentVariable% ;
(; <
$str< N
)N O
;O P
return 
Cadena 
; 
} 	
private'' 
MySqlCommand'' 
PrepararComando'' ,
('', -
MySqlConnection''- <
mySqlConnection''= L
,''L M
string''N T
comando''U \
)''\ ]
{(( 	
return)) 
PrepararComando)) "
())" #
mySqlConnection))# 2
,))2 3
CommandType))4 ?
.))? @
Text))@ D
,))D E
comando))F M
)))M N
;))N O
}** 	
private33 
MySqlCommand33 
PrepararComando33 ,
(33, -
MySqlConnection33- <
mySqlConnection33= L
,33L M
CommandType33N Y
commandType33Z e
,33e f
string33g m
comando33n u
)33u v
{44 	
MySqlCommand55 
mySqlCommand55 %
=55& '
new55( +
MySqlCommand55, 8
{66 

Connection77 
=77 
mySqlConnection77 ,
,77, -
CommandText88 
=88 
comando88 %
,88% &
CommandTimeout99 
=99  
int99! $
.99$ %
Parse99% *
(99* +
timeout99+ 2
)992 3
,993 4
CommandType:: 
=:: 
commandType:: )
,::) *
};; 
;;; 
if>> 
(>> 
DTParametros>> 
.>> 
Count>> "
>>># $
$num>>% &
)>>& '
{?? 
foreach@@ 
(@@ 
DTOParametroBD@@ '
param@@( -
in@@. 0
DTParametros@@1 =
)@@= >
{AA 
MySqlParameterBB "
	parameterBB# ,
=BB- .
newBB/ 2
MySqlParameterBB3 A
(BBA B
)BBB C
{CC 
MySqlDbTypeDD #
=DD$ %
paramDD& +
.DD+ ,
MySqlDbTypeDD, 7
,DD7 8
ParameterNameEE %
=EE& '
paramEE( -
.EE- .
ParameterNameEE. ;
,EE; <
ValueFF 
=FF 
paramFF  %
.FF% &
ValueFF& +
,FF+ ,
	DirectionGG !
=GG" #
(GG$ %
paramGG% *
.GG* +
	DirectionGG+ 4
!=GG5 7
$numGG8 9
?GG: ;
paramGG< A
.GGA B
	DirectionGGB K
:GGL M
ParameterDirectionGGN `
.GG` a
InputGGa f
)GGf g
,GGg h
}HH 
;HH 
mySqlCommandII  
.II  !

ParametersII! +
.II+ ,
AddII, /
(II/ 0
	parameterII0 9
)II9 :
;II: ;
}JJ 
}KK 
returnLL 
mySqlCommandLL 
;LL  
}MM 	
publicZZ 
voidZZ 
AgregarParametroZZ $
(ZZ$ %
stringZZ% +
nombreZZ, 2
,ZZ2 3
MySqlDbTypeZZ4 ?
tipoZZ@ D
,ZZD E
objectZZF L
valorZZM R
)ZZR S
{[[ 	
DTOParametroBD\\ 
DTOParametro\\ '
=\\( )
new\\* -
DTOParametroBD\\. <
(\\< =
nombre\\= C
,\\C D
tipo\\E I
,\\I J
valor\\K P
)\\P Q
;\\Q R
DTParametros]] 
.]] 
Add]] 
(]] 
DTOParametro]] )
)]]) *
;]]* +
}^^ 	
publicgg 
voidgg 
AgregarParametrogg $
(gg$ %
stringgg% +
nombregg, 2
,gg2 3
MySqlDbTypegg4 ?
tipogg@ D
,ggD E
objectggF L
valorggM R
,ggR S
ParameterDirectionggT f
parameterDirectionggg y
)ggy z
{hh 	
DTOParametroBDii 
DTOParametroii '
=ii( )
newii* -
DTOParametroBDii. <
(ii< =
nombreii= C
,iiC D
tipoiiE I
,iiI J
valoriiK P
,iiP Q
parameterDirectioniiR d
)iid e
;iie f
DTParametrosjj 
.jj 
Addjj 
(jj 
DTOParametrojj )
)jj) *
;jj* +
}kk 	
publicpp 
voidpp  
LimpiarDTOParametrospp (
(pp( )
)pp) *
{qq 	
DTParametrosrr 
.rr 
Clearrr 
(rr 
)rr  
;rr  !
}ss 	
publiczz 
DataSetzz '
EjecutarReaderProcedimientozz 2
(zz2 3
stringzz3 9
Procedimientozz: G
)zzG H
{{{ 	
DataSet|| 
dataSet|| 
=|| 
new|| !
DataSet||" )
(||) *
)||* +
{||, -
EnforceConstraints||. @
=||A B
false||C H
}||I J
;||J K
using}} 
(}} 
MySqlConnection}} "
mySqlConnection}}# 2
=}}3 4
new}}5 8
MySqlConnection}}9 H
(}}H I(
ObtenerNombreCadenaBaseDatos}}I e
(}}e f
)}}f g
)}}g h
)}}h i
{~~ 
mySqlConnection 
.  
Open  $
($ %
)% &
;& '
MySqlCommand
�� 
mySqlCommand
�� )
=
��* +
PrepararComando
��, ;
(
��; <
mySqlConnection
��< K
,
��K L
CommandType
��M X
.
��X Y
StoredProcedure
��Y h
,
��h i
Procedimiento
��j w
)
��w x
;
��x y
MySqlDataReader
�� 
mySqlDataReader
��  /
=
��0 1
mySqlCommand
��2 >
.
��> ?
ExecuteReader
��? L
(
��L M
)
��M N
;
��N O
while
�� 
(
�� 
!
�� 
mySqlDataReader
�� '
.
��' (
IsClosed
��( 0
)
��0 1
dataSet
�� 
.
�� 
Tables
�� "
.
��" #
Add
��# &
(
��& '
)
��' (
.
��( )
Load
��) -
(
��- .
mySqlDataReader
��. =
)
��= >
;
��> ?
mySqlDataReader
�� 
.
��  
Close
��  %
(
��% &
)
��& '
;
��' (
}
�� 
return
�� 
dataSet
�� 
;
�� 
}
�� 	
public
�� 
DataSet
�� 
EjecutarReader
�� %
(
��% &
string
��& ,
Query
��- 2
)
��2 3
{
�� 	
DataSet
�� 
ds
�� 
=
�� 
new
�� 
DataSet
�� $
(
��$ %
)
��% &
{
��' ( 
EnforceConstraints
��) ;
=
��< =
false
��> C
}
��D E
;
��E F
using
�� 
(
�� 
MySqlConnection
�� "
mySqlConnection
��# 2
=
��3 4
new
��5 8
MySqlConnection
��9 H
(
��H I*
ObtenerNombreCadenaBaseDatos
��I e
(
��e f
)
��f g
)
��g h
)
��h i
{
�� 
mySqlConnection
�� 
.
��  
Open
��  $
(
��$ %
)
��% &
;
��& '
MySqlCommand
�� 
mySqlCommand
�� )
=
��* +
PrepararComando
��, ;
(
��; <
mySqlConnection
��< K
,
��K L
CommandType
��M X
.
��X Y
Text
��Y ]
,
��] ^
Query
��_ d
)
��d e
;
��e f
MySqlDataReader
�� 
reader
��  &
=
��' (
mySqlCommand
��) 5
.
��5 6
ExecuteReader
��6 C
(
��C D
)
��D E
;
��E F
while
�� 
(
�� 
!
�� 
reader
�� 
.
�� 
IsClosed
�� '
)
��' (
ds
�� 
.
�� 
Tables
�� 
.
�� 
Add
�� !
(
��! "
)
��" #
.
��# $
Load
��$ (
(
��( )
reader
��) /
)
��/ 0
;
��0 1
reader
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
return
�� 
ds
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
EjecutarNonQuery
�� #
(
��# $
string
��$ *
comando
��+ 2
,
��2 3
CommandType
��4 ?
commandType
��@ K
)
��K L
{
�� 	
using
�� 
(
�� 
MySqlConnection
�� "
mySqlConnection
��# 2
=
��3 4
new
��5 8
MySqlConnection
��9 H
(
��H I*
ObtenerNombreCadenaBaseDatos
��I e
(
��e f
)
��f g
)
��g h
)
��h i
{
�� 
mySqlConnection
�� 
.
��  
Open
��  $
(
��$ %
)
��% &
;
��& '
MySqlCommand
�� 
mySqlCommand
�� )
=
��* +
PrepararComando
��, ;
(
��; <
mySqlConnection
��< K
,
��K L
commandType
��M X
,
��X Y
comando
��Z a
)
��a b
;
��b c
return
�� 
mySqlCommand
�� #
.
��# $
ExecuteNonQuery
��$ 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
}
�� 	
public
�� 
object
�� 
EjecutarScalar
�� $
(
��$ %
string
��% +
procedimiento
��, 9
)
��9 :
{
�� 	
using
�� 
(
�� 
MySqlConnection
�� "
mySqlConnection
��# 2
=
��3 4
new
��5 8
MySqlConnection
��9 H
(
��H I*
ObtenerNombreCadenaBaseDatos
��I e
(
��e f
)
��f g
)
��g h
)
��h i
{
�� 
mySqlConnection
�� 
.
��  
Open
��  $
(
��$ %
)
��% &
;
��& '
MySqlCommand
�� 
mySqlCommand
�� )
=
��* +
PrepararComando
��, ;
(
��; <
mySqlConnection
��< K
,
��K L
CommandType
��M X
.
��X Y
StoredProcedure
��Y h
,
��h i
procedimiento
��j w
)
��w x
;
��x y
return
�� 
mySqlCommand
�� #
.
��# $
ExecuteScalar
��$ 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
}
�� 
}�� �
eC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.DM\Datos\DMAuditoria.cs
	namespace		 	
Corona		
 
.		 
RecaudoPagos		 
.		 
DM		  
.		  !
Datos		! &
{

 
public 

class 
DMAuditoria 
{ 
public 
bool 
RegistrarAuditoria &
(& '
DTOAuditoria' 3
Datos4 9
)9 :
{ 	
DMAccesoDatosMySql 
gestorDB '
=( )
new* -
DMAccesoDatosMySql. @
(@ A
)A B
;B C
gestorDB 
.  
LimpiarDTOParametros )
() *
)* +
;+ ,
gestorDB 
. 
AgregarParametro %
(% &
$str& 6
,6 7
MySqlDbType8 C
.C D
Int64D I
,I J
DatosK P
.P Q

Recaudo_IDQ [
)[ \
;\ ]
gestorDB 
. 
AgregarParametro %
(% &
$str& 2
,2 3
MySqlDbType4 ?
.? @
Bit@ C
,C D
DatosE J
.J K
EstadoK Q
)Q R
;R S
gestorDB 
. 
AgregarParametro %
(% &
$str& 5
,5 6
MySqlDbType7 B
.B C
VarCharC J
,J K
DatosL Q
.Q R
	SolicitudR [
)[ \
;\ ]
gestorDB 
. 
AgregarParametro %
(% &
$str& 5
,5 6
MySqlDbType7 B
.B C
VarCharC J
,J K
DatosL Q
.Q R
	RespuestaR [
)[ \
;\ ]
gestorDB 
. 
AgregarParametro %
(% &
$str& 1
,1 2
MySqlDbType3 >
.> ?
DateTime? G
,G H
DatosI N
.N O
FechaO T
!=U W
nullX \
?] ^
Datos_ d
.d e
Fechae j
:k l
Convertm t
.t u
DBNullu {
){ |
;| }
gestorDB 
. 
AgregarParametro %
(% &
$str& 5
,5 6
MySqlDbType7 B
.B C
BitC F
,F G
DatosH M
.M N
	ProcesadoN W
!=X Z
null[ _
?` a
Datosb g
.g h
	Procesadoh q
:r s
Convertt {
.{ |
DBNull	| �
)
� �
;
� �
gestorDB 
. 
AgregarParametro %
(% &
$str& =
,= >
MySqlDbType? J
.J K
VarCharK R
,R S
DatosT Y
.Y Z
Usuario_ProcesadoZ k
!=l n
nullo s
?t u
Datosv {
.{ |
Usuario_Procesado	| �
:
� �
Convert
� �
.
� �
DBNull
� �
)
� �
;
� �
if 
( 
gestorDB 
. 
EjecutarNonQuery )
() *
	Resources* 3
.3 4%
ProcedimientosAlmacenados4 M
.M N 
SP_INSERTA_AUDITORIAN b
,b c
CommandTyped o
.o p
StoredProcedurep 
)	 �
!=
� �
-
� �
$num
� �
)
� �
return 
true 
; 
else 
return 
false 
; 
}   	
}!! 
}"" �0
cC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.DM\Datos\DMCliente.cs
	namespace		 	
Corona		
 
.		 
RecaudoPagos		 
.		 
DM		  
.		  !
Datos		! &
{

 
public 

class 
	DMCliente 
{ 
public 
bool 
InsertarCliente #
(# $
StringBuilder$ 1
xmlClientes2 =
)= >
{ 	
DMAccesoDatosMySql 
gestorDB '
=( )
new* -
DMAccesoDatosMySql. @
(@ A
)A B
;B C
gestorDB 
.  
LimpiarDTOParametros )
() *
)* +
;+ ,
gestorDB 
. 
AgregarParametro %
(% &
$str& 7
,7 8
MySqlDbType9 D
.D E
TextE I
,I J
stringK Q
.Q R
IsNullOrEmptyR _
(_ `
xmlClientes` k
.k l
ToStringl t
(t u
)u v
)v w
?x y
Convert	z �
.
� �
DBNull
� �
:
� �
xmlClientes
� �
.
� �
ToString
� �
(
� �
)
� �
)
� �
;
� �
gestorDB 
. 
AgregarParametro %
(% &
$str& 1
,1 2
MySqlDbType3 >
.> ?
VarChar? F
,F G
newH K
DTOConfiguracionesL ^
(^ _
)_ `
.` a

TextoClavea k
)k l
;l m
if 
( 
gestorDB 
. 
EjecutarNonQuery )
() *
	Resources* 3
.3 4%
ProcedimientosAlmacenados4 M
.M N
SP_INSERTA_CLIENTEN `
,` a
CommandTypeb m
.m n
StoredProceduren }
)} ~
!=	 �
-
� �
$num
� �
)
� �
return 
true 
; 
else 
return 
false 
; 
} 	
public "
DTOObjetoGeneralSalida %
ConsultarCliente& 6
(6 7
DTOObjetoGeneral7 G

objClienteH R
)R S
{   	"
DTOObjetoGeneralSalida"" "
	resultado""# ,
=""- .
null""/ 3
;""3 4
DMAccesoDatosMySql## 
gestorDB## '
=##( )
new##* -
DMAccesoDatosMySql##. @
(##@ A
)##A B
;##B C
gestorDB$$ 
.$$ 
AgregarParametro$$ %
($$% &
$str$$& /
,$$/ 0
MySqlDbType$$1 <
.$$< =
VarChar$$= D
,$$D E
($$F G
string$$G M
.$$M N
IsNullOrEmpty$$N [
($$[ \

objCliente$$\ f
.$$f g
Referencia1$$g r
)$$r s
?$$t u
Convert$$v }
.$$} ~
DBNull	$$~ �
:
$$� �

objCliente
$$� �
.
$$� �
Referencia1
$$� �
)
$$� �
)
$$� �
;
$$� �
gestorDB%% 
.%% 
AgregarParametro%% %
(%%% &
$str%%& 3
,%%3 4
MySqlDbType%%5 @
.%%@ A
VarChar%%A H
,%%H I
(%%J K
string%%K Q
.%%Q R
IsNullOrEmpty%%R _
(%%_ `

objCliente%%` j
.%%j k
Referencia2%%k v
)%%v w
?%%x y
Convert	%%z �
.
%%� �
DBNull
%%� �
:
%%� �

objCliente
%%� �
.
%%� �
Referencia2
%%� �
)
%%� �
)
%%� �
;
%%� �
gestorDB&& 
.&& 
AgregarParametro&& %
(&&% &
$str&&& 4
,&&4 5
MySqlDbType&&6 A
.&&A B
VarChar&&B I
,&&I J

objCliente&&K U
.&&U V
Sociedad&&V ^
)&&^ _
;&&_ `
gestorDB'' 
.'' 
AgregarParametro'' %
(''% &
$str''& 1
,''1 2
MySqlDbType''3 >
.''> ?
VarChar''? F
,''F G
new''H K
DTOConfiguraciones''L ^
(''^ _
)''_ `
.''` a

TextoClave''a k
)''k l
;''l m
using)) 
()) 
DataSet)) 
datos))  
=))! "
gestorDB))# +
.))+ ,'
EjecutarReaderProcedimiento)), G
())G H
	Resources))H Q
.))Q R%
ProcedimientosAlmacenados))R k
.))k l
SP_CONSULTA_CLIENTE))l 
)	)) �
)
))� �
{** 
if++ 
(++ 
datos++ 
!=++ 
null++ !
&&++" $
datos++% *
.++* +
Tables+++ 1
[++1 2
$num++2 3
]++3 4
.++4 5
Rows++5 9
.++9 :
Count++: ?
>++@ A
$num++B C
)++C D
	resultado-- 
=-- 
(--  !
from--! %
item--& *
in--+ -
datos--. 3
.--3 4
Tables--4 :
[--: ;
$num--; <
]--< =
.--= >
AsEnumerable--> J
(--J K
)--K L
select..! '
new..( +"
DTOObjetoGeneralSalida.., B
{//! "
Referencia100% 0
=001 2
item003 7
.007 8
Field008 =
<00= >
string00> D
>00D E
(00E F
$str00F K
)00K L
,00L M
Referencia211% 0
=111 2
item113 7
.117 8
Field118 =
<11= >
string11> D
>11D E
(11E F
$str11F O
)11O P
,11P Q
}22! "
)22" #
.22# $
FirstOrDefault22$ 2
(222 3
)223 4
;224 5
}33 
return44 
	resultado44 
;44 
}55 	
}77 
}88 �
eC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.DM\Datos\DMParametro.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. 
DM  
.  !
Datos! &
{		 
public

 

class

 
DMParametro

 
{ 
public 
string 
ConsultarSociedad '
(' (
DTOParametro( 4
dTOParametro5 A
)A B
{ 	
DMAccesoDatosMySql 
gestorDB '
=( )
new* -
DMAccesoDatosMySql. @
(@ A
)A B
;B C
gestorDB 
. 
AgregarParametro %
(% &
$str& 5
,5 6
MySqlDbType7 B
.B C
VarCharC J
,J K
dTOParametroL X
.X Y
	COD_BANCOY b
)b c
;c d
gestorDB 
. 
AgregarParametro %
(% &
$str& 4
,4 5
MySqlDbType6 A
.A B
VarCharB I
,I J
dTOParametroK W
.W X
CONVENIOX `
)` a
;a b
return 
gestorDB 
. 
EjecutarScalar *
(* +
	Resources+ 4
.4 5%
ProcedimientosAlmacenados5 N
.N O 
SP_CONSULTA_SOCIEDADO c
)c d
?d e
.e f
ToStringf n
(n o
)o p
.p q
Trimq u
(u v
)v w
;w x
} 	
} 
} �`
cC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.DM\Datos\DMRecaudo.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. 
DM  
.  !
Datos! &
{ 
public		 

class		 
	DMRecaudo		 
{

 
public 
bool 
RegistrarRecaudo $
($ %
DTOObjetoGeneral% 5
Datos6 ;
); <
{ 	
DMAccesoDatosMySql 
gestorDB '
=( )
new* -
DMAccesoDatosMySql. @
(@ A
)A B
;B C
gestorDB 
.  
LimpiarDTOParametros )
() *
)* +
;+ ,
gestorDB 
. 
AgregarParametro %
(% &
$str& 9
,9 :
MySqlDbType; F
.F G
VarCharG N
,N O
stringP V
.V W
IsNullOrEmptyW d
(d e
Datose j
.j k
CanalRecaudok w
?w x
.x y
Trimy }
(} ~
)~ 
)	 �
?
� �
Convert
� �
.
� �
DBNull
� �
:
� �
Datos
� �
.
� �
CanalRecaudo
� �
.
� �
Trim
� �
(
� �
)
� �
)
� �
;
� �
gestorDB 
. 
AgregarParametro %
(% &
$str& 5
,5 6
MySqlDbType7 B
.B C
VarCharC J
,J K
DatosL Q
.Q R
CodigoBancoR ]
)] ^
;^ _
gestorDB 
. 
AgregarParametro %
(% &
$str& @
,@ A
MySqlDbTypeB M
.M N
VarCharN U
,U V
DatosW \
.\ ]%
CodigoConfirmacionRecaudo] v
)v w
;w x
gestorDB 
. 
AgregarParametro %
(% &
$str& 3
,3 4
MySqlDbType5 @
.@ A
VarCharA H
,H I
DatosJ O
.O P
CodigoProductoP ^
)^ _
;_ `
gestorDB 
. 
AgregarParametro %
(% &
$str& 7
,7 8
MySqlDbType9 D
.D E
DateTimeE M
,M N
DatosO T
.T U
	FechaPagoU ^
)^ _
;_ `
gestorDB 
. 
AgregarParametro %
(% &
$str& ;
,; <
MySqlDbType= H
.H I
DateTimeI Q
,Q R
DatosS X
.X Y
FechaVencimientoY i
)i j
;j k
gestorDB 
. 
AgregarParametro %
(% &
$str& 6
,6 7
MySqlDbType8 C
.C D
VarCharD K
,K L
DatosM R
.R S
	FormaPagoS \
)\ ]
;] ^
gestorDB 
. 
AgregarParametro %
(% &
$str& 8
,8 9
MySqlDbType: E
.E F
VarCharF M
,M N
DatosO T
.T U
HoraRecaudoU `
)` a
;a b
gestorDB 
. 
AgregarParametro %
(% &
$str& 8
,8 9
MySqlDbType: E
.E F
VarCharF M
,M N
DatosO T
.T U
JornadaRecaudoU c
)c d
;d e
gestorDB 
. 
AgregarParametro %
(% &
$str& 6
,6 7
MySqlDbType8 C
.C D
VarCharD K
,K L
DatosM R
.R S
NumeroChequeS _
)_ `
;` a
gestorDB 
. 
AgregarParametro %
(% &
$str& 4
,4 5
MySqlDbType6 A
.A B
VarCharB I
,I J
DatosK P
.P Q
NumeroConvenioQ _
)_ `
;` a
gestorDB   
.   
AgregarParametro   %
(  % &
$str  & 7
,  7 8
MySqlDbType  9 D
.  D E
VarChar  E L
,  L M
Datos  N S
.  S T
Oficina  T [
)  [ \
;  \ ]
gestorDB!! 
.!! 
AgregarParametro!! %
(!!% &
$str!!& 7
,!!7 8
MySqlDbType!!9 D
.!!D E
VarChar!!E L
,!!L M
Datos!!N S
.!!S T
Referencia1!!T _
)!!_ `
;!!` a
gestorDB"" 
."" 
AgregarParametro"" %
(""% &
$str""& 7
,""7 8
MySqlDbType""9 D
.""D E
VarChar""E L
,""L M
string""N T
.""T U
IsNullOrEmpty""U b
(""b c
Datos""c h
.""h i
Referencia2""i t
?""t u
.""u v
Trim""v z
(""z {
)""{ |
)""| }
?""~ 
Convert
""� �
.
""� �
DBNull
""� �
:
""� �
Datos
""� �
.
""� �
Referencia2
""� �
.
""� �
Trim
""� �
(
""� �
)
""� �
)
""� �
;
""� �
gestorDB## 
.## 
AgregarParametro## %
(##% &
$str##& 9
,##9 :
MySqlDbType##; F
.##F G
VarChar##G N
,##N O
Datos##P U
.##U V
TerminalRecaudo##V e
)##e f
;##f g
gestorDB$$ 
.$$ 
AgregarParametro$$ %
($$% &
$str$$& 6
,$$6 7
MySqlDbType$$8 C
.$$C D
VarChar$$D K
,$$K L
Datos$$M R
.$$R S
	TipoCanje$$S \
)$$\ ]
;$$] ^
gestorDB%% 
.%% 
AgregarParametro%% %
(%%% &
$str%%& 2
,%%2 3
MySqlDbType%%4 ?
.%%? @
VarChar%%@ G
,%%G H
Datos%%I N
.%%N O

TipoMoneda%%O Y
)%%Y Z
;%%Z [
gestorDB&& 
.&& 
AgregarParametro&& %
(&&% &
$str&&& 8
,&&8 9
MySqlDbType&&: E
.&&E F
Decimal&&F M
,&&M N
Datos&&O T
.&&T U
ValorCheque&&U `
)&&` a
;&&a b
gestorDB'' 
.'' 
AgregarParametro'' %
(''% &
$str''& :
,'': ;
MySqlDbType''< G
.''G H
Decimal''H O
,''O P
Datos''Q V
.''V W
ValorEfectivo''W d
)''d e
;''e f
gestorDB(( 
.(( 
AgregarParametro(( %
(((% &
$str((& 7
,((7 8
MySqlDbType((9 D
.((D E
Decimal((E L
,((L M
Datos((N S
.((S T
ValorFactura((T `
)((` a
;((a b
gestorDB)) 
.)) 
AgregarParametro)) %
())% &
$str))& ;
,)); <
MySqlDbType))= H
.))H I
Decimal))I P
,))P Q
Datos))R W
.))W X
TotalRecaudado))X f
)))f g
;))g h
gestorDB** 
.** 
AgregarParametro** %
(**% &
$str**& 7
,**7 8
MySqlDbType**9 D
.**D E
VarChar**E L
,**L M
Datos**N S
.**S T
TipoRegistro**T `
)**` a
;**a b
gestorDB++ 
.++ 
AgregarParametro++ %
(++% &
$str++& :
,++: ;
MySqlDbType++< G
.++G H
VarChar++H O
,++O P
Datos++Q V
.++V W
EstadoRecaudo++W d
)++d e
;++e f
gestorDB,, 
.,, 
AgregarParametro,, %
(,,% &
$str,,& 1
,,,1 2
MySqlDbType,,3 >
.,,> ?
VarChar,,? F
,,,F G
new,,H K
DTOConfiguraciones,,L ^
(,,^ _
),,_ `
.,,` a

TextoClave,,a k
),,k l
;,,l m
int-- 
	RecaudoId-- 
;-- 
int.. 
... 
TryParse.. 
(.. 
gestorDB.. !
...! "
EjecutarScalar.." 0
(..0 1
	Resources..1 :
...: ;%
ProcedimientosAlmacenados..; T
...T U
SP_INSERTA_RECAUDO..U g
)..g h
...h i
ToString..i q
(..q r
)..r s
,..s t
out..u x
	RecaudoId	..y �
)
..� �
;
..� �
return// 
(// 
	RecaudoId// 
>=//  
$num//! "
)//" #
;//# $
}00 	
public77 
bool77 
ValidaPagoDuplicado77 '
(77' (
DTOObjetoGeneral77( 8
objDato779 @
)77@ A
{88 	
DMAccesoDatosMySql99 
gestorDB99 '
=99( )
new99* -
DMAccesoDatosMySql99. @
(99@ A
)99A B
;99B C
gestorDB:: 
.:: 
AgregarParametro:: %
(::% &
$str::& 5
,::5 6
MySqlDbType::7 B
.::B C
VarChar::C J
,::J K
objDato::L S
.::S T
CodigoBanco::T _
)::_ `
;::` a
gestorDB;; 
.;; 
AgregarParametro;; %
(;;% &
$str;;& 7
,;;7 8
MySqlDbType;;9 D
.;;D E
VarChar;;E L
,;;L M
objDato;;N U
.;;U V
Referencia1;;V a
);;a b
;;;b c
gestorDB<< 
.<< 
AgregarParametro<< %
(<<% &
$str<<& 7
,<<7 8
MySqlDbType<<9 D
.<<D E
DateTime<<E M
,<<M N
objDato<<O V
.<<V W
	FechaPago<<W `
)<<` a
;<<a b
gestorDB== 
.== 
AgregarParametro== %
(==% &
$str==& ;
,==; <
MySqlDbType=== H
.==H I
Decimal==I P
,==P Q
objDato==R Y
.==Y Z
TotalRecaudado==Z h
)==h i
;==i j
gestorDB>> 
.>> 
AgregarParametro>> %
(>>% &
$str>>& @
,>>@ A
MySqlDbType>>B M
.>>M N
VarChar>>N U
,>>U V
string>>W ]
.>>] ^
IsNullOrEmpty>>^ k
(>>k l
objDato>>l s
.>>s t&
CodigoConfirmacionRecaudo	>>t �
)
>>� �
?
>>� �
Convert
>>� �
.
>>� �
DBNull
>>� �
:
>>� �
objDato
>>� �
.
>>� �'
CodigoConfirmacionRecaudo
>>� �
)
>>� �
;
>>� �
gestorDB?? 
.?? 
AgregarParametro?? %
(??% &
$str??& 6
,??6 7
MySqlDbType??8 C
.??C D
VarChar??D K
,??K L
objDato??M T
.??T U
NumeroCheque??U a
)??a b
;??b c
gestorDB@@ 
.@@ 
AgregarParametro@@ %
(@@% &
$str@@& 1
,@@1 2
MySqlDbType@@3 >
.@@> ?
VarChar@@? F
,@@F G
new@@H K
DTOConfiguraciones@@L ^
(@@^ _
)@@_ `
.@@` a

TextoClave@@a k
)@@k l
;@@l m
intAA 
	RecaudoIdAA 
;AA 
intBB 
.BB 
TryParseBB 
(BB 
gestorDBBB !
.BB! "
EjecutarScalarBB" 0
(BB0 1
	ResourcesBB1 :
.BB: ;%
ProcedimientosAlmacenadosBB; T
.BBT U'
SP_VALIDA_RECAUDO_DUPLICADOBBU p
)BBp q
?BBq r
.BBr s
ToStringBBs {
(BB{ |
)BB| }
,BB} ~
out	BB �
	RecaudoId
BB� �
)
BB� �
;
BB� �
returnCC 
(CC 
	RecaudoIdCC 
>=CC  
$numCC! "
)CC" #
;CC# $
}DD 	
}EE 
}FF �
iC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.DM\Datos\DMUsuarioAcceso.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. 
DM  
.  !
Datos! &
{ 
public 

class 
DMUsuarioAcceso  
{ 
public 
bool "
ConsultarUsuarioAcceso *
(* +
string+ 1
usuario2 9
,9 :
string; A
claveB G
)G H
{ 	
DMAccesoDatosMySql 
gestorDB '
=( )
new* -
DMAccesoDatosMySql. @
(@ A
)A B
;B C
gestorDB 
. 
AgregarParametro %
(% &
$str& 3
,3 4
MySqlDbType5 @
.@ A
VarCharA H
,H I
usuarioJ Q
)Q R
;R S
gestorDB 
. 
AgregarParametro %
(% &
$str& 1
,1 2
MySqlDbType3 >
.> ?
VarChar? F
,F G
claveH M
)M N
;N O
DataSet 
datos 
= 
gestorDB $
.$ %'
EjecutarReaderProcedimiento% @
(@ A
	ResourcesA J
.J K%
ProcedimientosAlmacenadosK d
.d e&
SP_CONSULTA_USUARIO_ACCESOe 
)	 �
;
� �
if 
( 
datos 
. 
Tables 
[ 
$num 
] 
.  
Rows  $
.$ %
Count% *
>+ ,
$num- .
). /
return 
true 
; 
else 
return 
false 
; 
} 	
} 
} 