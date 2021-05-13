�	
�C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.ServicioRecaudosBancarios\Controllers\IServicioRecaudosBancarios.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. %
ServicioRecaudosBancarios 7
.7 8
Controllers8 C
{ 
[ 
ServiceContract 
] 
public 
	interface &
IServicioRecaudosBancarios ,
{		 
[ 
OperationContract 
] 
@return 	
consultaRecaudo
 
( 
ConsultaDto %
dto& )
)) *
;* +
[ 
OperationContract 
] 
@return 	
notificacionRecaudo
 
( 

RecaudoDto (
dto) ,
), -
;- .
[ 
OperationContract 
] &
VerificarEstadoResponseDto %
VerificarEstadoWebService 6
(6 7
VerificarEstadoDto7 I
SignonRqJ R
)R S
;S T
} 
} ��
�C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.ServicioRecaudosBancarios\Controllers\ServicioRecaudoBancario.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. %
ServicioRecaudosBancarios 7
.7 8
Controllers8 C
{ 
public 
class #
ServicioRecaudoBancario %
:& '&
IServicioRecaudosBancarios( B
{ 
private 	
bool
 
autenticado 
= 
false #
;# $
private 	
readonly
  
IHttpContextAccessor (
	_accessor) 2
;2 3
public #
ServicioRecaudoBancario	  
(  ! 
IHttpContextAccessor! 5
accessor6 >
)> ?
{ 
	_accessor 
= 
accessor 
; 
} 
public   
bool  	 '
ServicioRecaudoBancarioAuth   )
(  ) *
)  * +
{!! 
try"" 
{## 
var%% 
ctx%% 
=%% 
	_accessor%% 
.%% 
HttpContext%% #
;%%# $
if&& 
(&& 
ctx&& 
!=&& 
null&& 
&&&& 
ctx&& 
.&& 
Request&& "
!=&&# %
null&&& *
&&&&+ -
ctx&&. 1
.&&1 2
Request&&2 9
.&&9 :
Headers&&: A
!=&&B D
null&&E I
)&&I J
{'' 
string(( 
authentication(( 
=(( 
ctx((  
.((  !
Request((! (
.((( )
Headers(() 0
.((0 1
FirstOrDefault((1 ?
(((? @
x((@ A
=>((B D
x((E F
.((F G
Key((G J
==((K M
$str((N ]
)((] ^
.((^ _
Value((_ d
.((d e
FirstOrDefault((e s
(((s t
)((t u
;((u v
if)) 
()) 	
!))	 

string))
 
.)) 
IsNullOrEmpty)) 
()) 
authentication)) -
)))- .
))). /
{** 
var++ 	
authHeaderVal++
 
=++ %
AuthenticationHeaderValue++ 3
.++3 4
Parse++4 9
(++9 :
authentication++: H
)++H I
;++I J
if-- 
(--	 

authHeaderVal--
 
.-- 
Scheme-- 
.-- 
Equals-- %
(--% &
$str--& -
,--- .
StringComparison--/ ?
.--? @
OrdinalIgnoreCase--@ Q
)--Q R
&&--S U
authHeaderVal--V c
.--c d
	Parameter--d m
!=--n p
null--q u
)--u v
{.. 
var// 

credentials// 
=// 
authHeaderVal// &
.//& '
	Parameter//' 0
;//0 1
var11 

encoding11 
=11 
Encoding11 
.11 
GetEncoding11 *
(11* +
$str11+ 7
)117 8
;118 9
credentials22 
=22 
encoding22 
.22 
	GetString22 '
(22' (
Convert22( /
.22/ 0
FromBase64String220 @
(22@ A
credentials22A L
)22L M
)22M N
;22N O
int44 

	separator44 
=44 
credentials44 "
.44" #
IndexOf44# *
(44* +
$char44+ .
)44. /
;44/ 0
string55 
name55 
=55 
credentials55  
.55  !
	Substring55! *
(55* +
$num55+ ,
,55, -
	separator55. 7
)557 8
;558 9
string66 
password66 
=66 
credentials66 $
.66$ %
	Substring66% .
(66. /
	separator66/ 8
+669 :
$num66; <
)66< =
;66= >
bool77 
	Respuesta77 
=77 
new77 
BMUsuarioAcceso77 +
(77+ ,
)77, -
.77- ."
ConsultarUsuarioAcceso77. D
(77D E
name77E I
,77I J
password77K S
)77S T
;77T U
if88 	
(88
 
	Respuesta88 
)88 
{99 
autenticado:: 
=:: 
true:: 
;:: 
};; 
}== 
}>> 
else>> 
{>> 
autenticado?? 
=?? 
false?? 
;?? 
}@@ 
}AA 
}BB 
catchCC 
(CC	 

	ExceptionCC
 
)CC 
{DD 
autenticadoEE 
=EE 
falseEE 
;EE 
}FF 
returnHH 	
autenticadoHH
 
;HH 
}II 
[KK 
HttpPostKK 
]KK 
[LL 
RouteLL 
(LL 	
$strLL	 
)LL 
]LL 
publicMM 
@returnMM	 
consultaRecaudoMM  
(MM  !
ConsultaDtoMM! ,
dtoMM- 0
)MM0 1
{NN 

DTOMensajeOO 

objMensajeOO 
=OO 
newOO 

DTOMensajeOO )
(OO) *
)OO* +
;OO+ ,
@returnPP 

responseDataPP 
=PP 
newPP 
@returnPP %
(PP% &
)PP& '
;PP' (
tryQQ 
{RR 
boolSS 
UserAutenticadoSS	 
=SS '
ServicioRecaudoBancarioAuthSS 7
(SS7 8
)SS8 9
;SS9 :"
DTOObjetoGeneralSalidaUU 
ObjetoSalidaUU '
=UU( )
newUU* -"
DTOObjetoGeneralSalidaUU. D
(UUD E
)UUE F
;UUF G

ConversionVV 
	ConvertirVV 
=VV 
newVV 

ConversionVV )
(VV) *
)VV* +
;VV+ ,
ifWW 
(WW 
!WW 	
UserAutenticadoWW	 
)WW 
{XX 

objMensajeYY 
=YY 

DTOMensajeYY 
.YY 

GetMensajeYY '
(YY' (
DTOCodigoMensajesYY( 9
.YY9 :
BANCO_MENSAJE12YY: I
,YYI J
TipoMensajeYYK V
.YYV W
BancoYYW \
)YY\ ]
;YY] ^
ObjetoSalidaZZ 
=ZZ 
newZZ "
DTOObjetoGeneralSalidaZZ .
{[[ 
DescripcionError\\ 
=\\ 

objMensaje\\ #
.\\# $
Texto\\$ )
,\\) *
CodigoError]] 
=]] 

objMensaje]] 
.]] 
Valor]] $
}^^ 
;^^ 
}__ 
else`` 
{aa 
DTOObjetoGeneralbb 
ObjetoEntradabb #
=bb$ %
	Convertirbb& /
.bb/ 0/
#ConvertirObjetoConsultaToDTOGeneralbb0 S
(bbS T
dtobbT W
)bbW X
;bbX Y
ObjetoSalidacc 
=cc 
newcc 
	BMClientecc !
(cc! "
)cc" #
.cc# $
ConsultarClientecc$ 4
(cc4 5
ObjetoEntradacc5 B
)ccB C
;ccC D
}dd 
responseDataee 
=ee 
	Convertiree 
.ee .
"ConvertirDTOSalidaToObjetoConsultaee ?
(ee? @
ObjetoSalidaee@ L
)eeL M
;eeM N
returnff 

responseDataff 
;ff 
}gg 
catchhh 
(hh	 

	Exceptionhh
 
exhh 
)hh 
{ii 

objMensajejj 
=jj 

DTOMensajejj 
.jj 

GetMensajejj &
(jj& '
DTOCodigoMensajesjj' 8
.jj8 9
BANCO_MENSAJE10jj9 H
,jjH I
TipoMensajejjJ U
.jjU V
BancojjV [
)jj[ \
;jj\ ]
responseDatakk 
.kk '
codigoRespuestaNotificacionkk ,
=kk- .

objMensajekk/ 9
.kk9 :
Valorkk: ?
+kk@ A
$strkkC Q
+kkR S
exkkT V
;kkV W
returnll 

responseDatall 
;ll 
}mm 
}nn 
[qq 
HttpPostqq 
]qq 
[rr 
Routerr 
(rr 	
$strrr	 
)rr 
]rr  
publicss 
@returnss	 
notificacionRecaudoss $
(ss$ %

RecaudoDtoss% /
dtoss0 3
)ss3 4
{tt 

DTOMensajeuu 

objMensajeuu 
=uu 
newuu 

DTOMensajeuu )
(uu) *
)uu* +
;uu+ ,
@returnvv 

responseDatavv 
=vv 
newvv 
@returnvv %
(vv% &
)vv& '
;vv' (
tryww 
{xx 
boolyy 
UserAutenticadoyy	 
=yy '
ServicioRecaudoBancarioAuthyy 6
(yy6 7
)yy7 8
;yy8 9"
DTOObjetoGeneralSalida{{ 
ObjetoSalida{{ '
={{( )
new{{* -"
DTOObjetoGeneralSalida{{. D
({{D E
){{E F
;{{F G
List|| 
<|| 	
DTOObjetoGeneral||	 
>|| 
ObjetoEntrada|| (
=||) *
new||+ .
List||/ 3
<||3 4
DTOObjetoGeneral||4 D
>||D E
(||E F
)||F G
;||G H

Conversion}} 
	Convertir}} 
=}} 
new}} 

Conversion}} )
(}}) *
)}}* +
;}}+ ,
if~~ 
(~~ 
!~~ 	
UserAutenticado~~	 
)~~ 
{ 

objMensaje
�� 
=
�� 

DTOMensaje
�� 
.
�� 

GetMensaje
�� '
(
��' (
DTOCodigoMensajes
��( 9
.
��9 :
BANCO_MENSAJE12
��: I
,
��I J
TipoMensaje
��K V
.
��V W
Banco
��W \
)
��\ ]
;
��] ^
ObjetoSalida
�� 
=
�� 
new
�� $
DTOObjetoGeneralSalida
�� .
{
�� 
DescripcionError
�� 
=
�� 

objMensaje
�� #
.
��# $
Texto
��$ )
,
��) *
CodigoError
�� 
=
�� 

objMensaje
�� 
.
�� 
Valor
�� $
}
�� 
;
�� 
responseData
�� 
.
�� )
codigoRespuestaNotificacion
�� -
=
��. /
ObjetoSalida
��0 <
.
��< =
CodigoError
��= H
;
��H I
}
�� 
else
�� 
{
�� 
ObjetoEntrada
�� 
=
�� 
	Convertir
�� 
.
�� 0
"ConvertirObjetoRecaudoToDTOGeneral
�� A
(
��A B
dto
��B E
)
��E F
;
��F G
DateTime
�� 
time
�� 
=
�� 
DateTime
�� 
.
�� 
Now
�� !
;
��! "
foreach
�� 
(
�� 
DTOObjetoGeneral
�� 
objetoGeneral
�� ,
in
��- /
ObjetoEntrada
��0 =
)
��= >
{
�� 
ObjetoSalida
�� 
=
�� 
new
�� 
	BMRecaudo
�� "
(
��" #
)
��# $
.
��$ %
RealizarRecaudo
��% 4
(
��4 5
objetoGeneral
��5 B
,
��B C
time
��D H
)
��H I
;
��I J
using
�� 
(
�� 
StringWriter
�� 
stringwriter
�� &
=
��' (
new
��) ,
StringWriter
��- 9
(
��9 :
)
��: ;
)
��; <
{
�� 
XmlSerializer
�� 

serializer
�� 
=
��  !
new
��" %
XmlSerializer
��& 3
(
��3 4
typeof
��4 :
(
��: ;

RecaudoDto
��; E
)
��E F
)
��F G
;
��G H

serializer
�� 
.
�� 
	Serialize
�� 
(
�� 
stringwriter
�� (
,
��( )
dto
��* -
)
��- .
;
��. /
string
�� 
mensajeAdicional
�� 
=
��  
$str
��! 7
+
��8 9
objetoGeneral
��: G
.
��G H'
CodigoConfirmacionRecaudo
��H a
;
��a b
if
�� 	
(
��
 
objetoGeneral
�� 
.
�� 
EstadoRecaudo
�� &
.
��& '
Equals
��' -
(
��- .
(
��. /
(
��/ 0
int
��0 3
)
��3 4
EstadoRecaudo
��4 A
.
��A B
BloqueadoCheque
��B Q
)
��Q R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
)
��] ^
)
��^ _
{
�� 
mensajeAdicional
�� 
=
�� 
$str
�� =
+
��> ?
mensajeAdicional
��@ P
;
��P Q
}
�� 
new
�� 

BMAuditoria
�� 
(
�� 
)
�� 
.
�� 
InsertarAuditoria
�� *
(
��* +
new
��+ .
DTOAuditoria
��/ ;
(
��; <
)
��< =
{
�� 
	Solicitud
�� 
=
�� 
stringwriter
��  
.
��  !
ToString
��! )
(
��) *
)
��* +
,
��+ ,
	Respuesta
�� 
=
�� 
ObjetoSalida
��  
.
��  !
DescripcionError
��! 1
+
��2 3
mensajeAdicional
��4 D
,
��D E
Estado
�� 
=
�� 
ObjetoSalida
�� 
.
�� 
EstadoOperacion
�� -
,
��- .
Fecha
�� 
=
�� 
DateTime
�� 
.
�� 
Now
�� 
,
�� 

Recaudo_ID
�� 
=
�� 
	RecaudoId
�� 
.
�� 
ToString
�� '
(
��' (
)
��( )
,
��) *
}
�� 
)
�� 	
;
��	 

}
�� 
}
�� 
}
�� 
responseData
�� 
=
�� 
	Convertir
�� 
.
�� ,
ConvertirDTOSalidaToObjetoPago
�� ;
(
��; <
ObjetoSalida
��< H
)
��H I
;
��I J
return
�� 

responseData
�� 
;
�� 
}
�� 
catch
�� 
(
��	 

	Exception
��
 
ex
�� 
)
�� 
{
�� 

objMensaje
�� 
=
�� 

DTOMensaje
�� 
.
�� 

GetMensaje
�� &
(
��& '
DTOCodigoMensajes
��' 8
.
��8 9
BANCO_MENSAJE10
��9 H
,
��H I
TipoMensaje
��J U
.
��U V
Banco
��V [
)
��[ \
;
��\ ]
responseData
�� 
.
�� )
codigoRespuestaNotificacion
�� ,
=
��- .

objMensaje
��/ 9
.
��9 :
Valor
��: ?
+
��@ A
$str
��B P
+
��Q R
ex
��S U
;
��U V
return
�� 

responseData
�� 
;
�� 
}
�� 
}
�� 
[
�� 
HttpPost
�� 
]
�� 
[
�� 
Route
�� 
(
�� 	
$str
��	 $
)
��$ %
]
��% &
public
�� (
VerificarEstadoResponseDto
��	 #'
VerificarEstadoWebService
��$ =
(
��= > 
VerificarEstadoDto
��> P
SignonRq
��Q Y
)
��Y Z
{
�� (
VerificarEstadoResponseDto
�� 
responseData
�� *
=
��+ ,
new
��- 0(
VerificarEstadoResponseDto
��1 K
(
��K L
)
��L M
;
��M N
try
�� 
{
�� 
bool
�� 
UserAutenticado
��	 
=
�� )
ServicioRecaudoBancarioAuth
�� 6
(
��6 7
)
��7 8
;
��8 9$
DTOObjetoGeneralSalida
�� 
ObjetoSalida
�� '
=
��( )
new
��* -$
DTOObjetoGeneralSalida
��. D
(
��D E
)
��E F
;
��F G

DTOMensaje
�� 

objMensaje
�� 
=
�� 
new
�� 

DTOMensaje
��  *
(
��* +
)
��+ ,
;
��, -
responseData
�� 
.
�� 
ServerDt
�� 
=
�� 
DateTime
�� $
.
��$ %
Now
��% (
;
��( )
if
�� 
(
�� 
!
�� 	
UserAutenticado
��	 
)
�� 
{
�� 

objMensaje
�� 
=
�� 

DTOMensaje
�� 
.
�� 

GetMensaje
�� '
(
��' (
DTOCodigoMensajes
��( 9
.
��9 :
BANCO_MENSAJE12
��: I
,
��I J
TipoMensaje
��K V
.
��V W
Banco
��W \
)
��\ ]
;
��] ^
ObjetoSalida
�� 
=
�� 
new
�� $
DTOObjetoGeneralSalida
�� .
{
�� 
DescripcionError
�� 
=
�� 

objMensaje
�� #
.
��# $
Texto
��$ )
,
��) *
CodigoError
�� 
=
�� 

objMensaje
�� 
.
�� 
Valor
�� $
}
�� 
;
�� 
responseData
�� 
.
�� 
codigoRespuesta
�� !
=
��" #
ObjetoSalida
��$ 0
.
��0 1
CodigoError
��1 <
;
��< =
}
�� 
else
�� 
{
�� 

objMensaje
�� 
=
�� 

DTOMensaje
�� 
.
�� 

GetMensaje
�� '
(
��' (
DTOCodigoMensajes
��( 9
.
��9 :
BANCO_MENSAJE0
��: H
,
��H I
TipoMensaje
��J U
.
��U V
Banco
��V [
)
��[ \
;
��\ ]
responseData
�� 
.
�� 
codigoRespuesta
�� !
=
��" #

objMensaje
��$ .
.
��. /
Valor
��/ 4
;
��4 5
}
�� 
return
�� 

responseData
�� 
;
�� 
}
�� 
catch
�� 
(
��	 

	Exception
��
 
ex
�� 
)
�� 
{
�� 

DTOMensaje
�� 

objMensaje
�� 
=
�� 
new
�� 

DTOMensaje
��  *
(
��* +
)
��+ ,
;
��, -

objMensaje
�� 
=
�� 

DTOMensaje
�� 
.
�� 

GetMensaje
�� &
(
��& '
DTOCodigoMensajes
��' 8
.
��8 9
BANCO_MENSAJE10
��9 H
,
��H I
TipoMensaje
��J U
.
��U V
Banco
��V [
)
��[ \
;
��\ ]
responseData
�� 
.
�� 
codigoRespuesta
��  
=
��! "

objMensaje
��# -
.
��- .
Valor
��. 3
+
��4 5
$str
��6 D
+
��E F
ex
��G I
;
��I J
return
�� 

responseData
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}�� �
rC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.ServicioRecaudosBancarios\Program.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. %
ServicioRecaudosBancarios 7
{ 
public 
class 
Program 
{ 
public		 
static			 
void		 
Main		 
(		 
string		  
[		  !
]		! "
args		# '
)		' (
{

 
CreateHostBuilder 
( 
args 
) 
. 
Build  
(  !
)! "
." #
Run# &
(& '
)' (
;( )
} 
public 
static	 
IHostBuilder 
CreateHostBuilder .
(. /
string/ 5
[5 6
]6 7
args8 <
)< =
=>> @
Host 
.  
CreateDefaultBuilder 
( 
args !
)! "
. 
ConfigureLogging 
( 
logging 
=>  
{ 
logging 
. 

AddConsole 
( 
) 
; 
} 
) 
. $
ConfigureWebHostDefaults 
( 

webBuilder (
=>) +
{ 

webBuilder 
. 

UseStartup 
< 
Startup "
>" #
(# $
)$ %
;% &
} 
) 
; 
} 
} �)
rC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.ServicioRecaudosBancarios\Startup.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. %
ServicioRecaudosBancarios 7
{ 
public 
class 
Startup 
{ 
private 	
readonly
 
IHostingEnvironment &
_hostingEnvironment' :
;: ;
public 
Startup	 
( 
IConfiguration 
configuration  -
,- .
IHostingEnvironment/ B
hostingEnvironmentC U
)U V
{ 
Configuration 
= 
configuration  
;  !
_hostingEnvironment 
= 
hostingEnvironment +
;+ ,
} 
public 
IConfiguration	 
Configuration %
{& '
get( +
;+ ,
}- .
public 
void	 
ConfigureServices 
(  
IServiceCollection  2
services3 ;
); <
{ 	
services 
. 
TryAddSingleton $
<$ %&
IServicioRecaudosBancarios% ?
,? @#
ServicioRecaudoBancarioA X
>X Y
(Y Z
)Z [
;[ \
services   
.   
AddMvc   
(   
x   
=>    
x  ! "
.  " #!
EnableEndpointRouting  # 8
=  9 :
false  ; @
)  @ A
;  A B
services!! 
.!! 
AddSoapCore!!  
(!!  !
)!!! "
;!!" #
services%% 
.%% 
	Configure%% 
<%% &
RequestLocalizationOptions%% 0
>%%0 1
(%%1 2
options%%2 9
=>%%: <
{&& 
options'' 
.'' !
DefaultRequestCulture'' !
=''" #
new''$ '
	Microsoft''( 1
.''1 2

AspNetCore''2 <
.''< =
Localization''= I
.''I J
RequestCulture''J X
(''X Y
$str''Y `
)''` a
;''a b
options(( 
.(( 
SupportedCultures(( 
=(( 
new((  #
List(($ (
<((( )
CultureInfo(() 4
>((4 5
{((6 7
new((8 ;
CultureInfo((< G
(((G H
$str((H O
)((O P
}((Q R
;((R S
})) 
))) 
;)) 
services-- 
.-- 
AddCors-- 
(-- 
options-- 
=>-- 
{.. 
options// 
.// 
	AddPolicy// 
(// 
$str//  
,//  !
p//" #
=>//$ &
p//' (
.//( )
AllowAnyOrigin//) 7
(//7 8
)//8 9
.//9 :
AllowAnyMethod//: H
(//H I
)//I J
.//J K
AllowAnyHeader//K Y
(//Y Z
)//Z [
)//[ \
;//\ ]
}00 
)00 
;00 
services22 
.22 
AddSingleton22 
<22  
IHttpContextAccessor22 -
,22- .
HttpContextAccessor22/ B
>22B C
(22C D
)22D E
;22E F
}33 
public66 
void66 
	Configure66 
(66 
IApplicationBuilder66 1
app662 5
,665 6
IHostingEnvironment667 J
env66K N
)66N O
{77 	
if88 
(88 
env88 

.88
 
IsDevelopment88 
(88 
)88 
)88 
{99 
app:: 
.:: %
UseDeveloperExceptionPage:: !
(::! "
)::" #
;::# $
};; 
app== 
.== 
UseSoapEndpoint== 
<== &
IServicioRecaudosBancarios== 1
>==1 2
(==2 3
$str==3 S
,==S T
new==U X
BasicHttpBinding==Y i
(==i j
)==j k
,==k l
SoapSerializer==m {
.=={ |#
DataContractSerializer	==| �
)
==� �
;
==� �
app>> 
.>> 
UseSoapEndpoint>> 
<>>  &
IServicioRecaudosBancarios>>  :
>>>: ;
(>>; <
$str>>< ]
,>>] ^
new>>_ b
BasicHttpBinding>>c s
(>>s t
)>>t u
,>>u v
SoapSerializer	>>w �
.
>>� �
XmlSerializer
>>� �
)
>>� �
;
>>� �
app?? 
.?? 
UseMvc?? 
(?? 
)?? 
;?? 
appAA 
.AA 
UseHttpsRedirectionAA 
(AA 
)AA 
;AA 
appBB 
.BB "
UseRequestLocalizationBB 
(BB 
)BB 
;BB  
appCC 
.CC 

UseRoutingCC 
(CC 
)CC 
;CC 
appDD 
.DD 
UseCorsDD 
(DD 
$strDD 
)DD 
;DD 
}EE 
}FF 
}GG 