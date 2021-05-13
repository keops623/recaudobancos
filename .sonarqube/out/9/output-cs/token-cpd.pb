à	
ëC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.ServicioRecaudosBancarios\Controllers\IServicioRecaudosBancarios.cs
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
} Öñ
éC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.ServicioRecaudosBancarios\Controllers\ServicioRecaudoBancario.cs
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
ÄÄ 
=
ÄÄ 

DTOMensaje
ÄÄ 
.
ÄÄ 

GetMensaje
ÄÄ '
(
ÄÄ' (
DTOCodigoMensajes
ÄÄ( 9
.
ÄÄ9 :
BANCO_MENSAJE12
ÄÄ: I
,
ÄÄI J
TipoMensaje
ÄÄK V
.
ÄÄV W
Banco
ÄÄW \
)
ÄÄ\ ]
;
ÄÄ] ^
ObjetoSalida
ÅÅ 
=
ÅÅ 
new
ÅÅ $
DTOObjetoGeneralSalida
ÅÅ .
{
ÇÇ 
DescripcionError
ÉÉ 
=
ÉÉ 

objMensaje
ÉÉ #
.
ÉÉ# $
Texto
ÉÉ$ )
,
ÉÉ) *
CodigoError
ÑÑ 
=
ÑÑ 

objMensaje
ÑÑ 
.
ÑÑ 
Valor
ÑÑ $
}
ÖÖ 
;
ÖÖ 
responseData
ÜÜ 
.
ÜÜ )
codigoRespuestaNotificacion
ÜÜ -
=
ÜÜ. /
ObjetoSalida
ÜÜ0 <
.
ÜÜ< =
CodigoError
ÜÜ= H
;
ÜÜH I
}
áá 
else
àà 
{
ââ 
ObjetoEntrada
ää 
=
ää 
	Convertir
ää 
.
ää 0
"ConvertirObjetoRecaudoToDTOGeneral
ää A
(
ääA B
dto
ääB E
)
ääE F
;
ääF G
DateTime
ãã 
time
ãã 
=
ãã 
DateTime
ãã 
.
ãã 
Now
ãã !
;
ãã! "
foreach
åå 
(
åå 
DTOObjetoGeneral
åå 
objetoGeneral
åå ,
in
åå- /
ObjetoEntrada
åå0 =
)
åå= >
{
çç 
ObjetoSalida
éé 
=
éé 
new
éé 
	BMRecaudo
éé "
(
éé" #
)
éé# $
.
éé$ %
RealizarRecaudo
éé% 4
(
éé4 5
objetoGeneral
éé5 B
,
ééB C
time
ééD H
)
ééH I
;
ééI J
using
êê 
(
êê 
StringWriter
êê 
stringwriter
êê &
=
êê' (
new
êê) ,
StringWriter
êê- 9
(
êê9 :
)
êê: ;
)
êê; <
{
ëë 
XmlSerializer
íí 

serializer
íí 
=
íí  !
new
íí" %
XmlSerializer
íí& 3
(
íí3 4
typeof
íí4 :
(
íí: ;

RecaudoDto
íí; E
)
ííE F
)
ííF G
;
ííG H

serializer
ìì 
.
ìì 
	Serialize
ìì 
(
ìì 
stringwriter
ìì (
,
ìì( )
dto
ìì* -
)
ìì- .
;
ìì. /
string
ïï 
mensajeAdicional
ïï 
=
ïï  
$str
ïï! 7
+
ïï8 9
objetoGeneral
ïï: G
.
ïïG H'
CodigoConfirmacionRecaudo
ïïH a
;
ïïa b
if
óó 	
(
óó
 
objetoGeneral
óó 
.
óó 
EstadoRecaudo
óó &
.
óó& '
Equals
óó' -
(
óó- .
(
óó. /
(
óó/ 0
int
óó0 3
)
óó3 4
EstadoRecaudo
óó4 A
.
óóA B
BloqueadoCheque
óóB Q
)
óóQ R
.
óóR S
ToString
óóS [
(
óó[ \
)
óó\ ]
)
óó] ^
)
óó^ _
{
òò 
mensajeAdicional
öö 
=
öö 
$str
öö =
+
öö> ?
mensajeAdicional
öö@ P
;
ööP Q
}
õõ 
new
ùù 

BMAuditoria
ùù 
(
ùù 
)
ùù 
.
ùù 
InsertarAuditoria
ùù *
(
ùù* +
new
ùù+ .
DTOAuditoria
ùù/ ;
(
ùù; <
)
ùù< =
{
ûû 
	Solicitud
üü 
=
üü 
stringwriter
üü  
.
üü  !
ToString
üü! )
(
üü) *
)
üü* +
,
üü+ ,
	Respuesta
†† 
=
†† 
ObjetoSalida
††  
.
††  !
DescripcionError
††! 1
+
††2 3
mensajeAdicional
††4 D
,
††D E
Estado
°° 
=
°° 
ObjetoSalida
°° 
.
°° 
EstadoOperacion
°° -
,
°°- .
Fecha
¢¢ 
=
¢¢ 
DateTime
¢¢ 
.
¢¢ 
Now
¢¢ 
,
¢¢ 

Recaudo_ID
££ 
=
££ 
	RecaudoId
££ 
.
££ 
ToString
££ '
(
££' (
)
££( )
,
££) *
}
§§ 
)
§§ 	
;
§§	 

}
•• 
}
¶¶ 
}
ßß 
responseData
®® 
=
®® 
	Convertir
®® 
.
®® ,
ConvertirDTOSalidaToObjetoPago
®® ;
(
®®; <
ObjetoSalida
®®< H
)
®®H I
;
®®I J
return
©© 

responseData
©© 
;
©© 
}
™™ 
catch
´´ 
(
´´	 

	Exception
´´
 
ex
´´ 
)
´´ 
{
¨¨ 

objMensaje
≠≠ 
=
≠≠ 

DTOMensaje
≠≠ 
.
≠≠ 

GetMensaje
≠≠ &
(
≠≠& '
DTOCodigoMensajes
≠≠' 8
.
≠≠8 9
BANCO_MENSAJE10
≠≠9 H
,
≠≠H I
TipoMensaje
≠≠J U
.
≠≠U V
Banco
≠≠V [
)
≠≠[ \
;
≠≠\ ]
responseData
ÆÆ 
.
ÆÆ )
codigoRespuestaNotificacion
ÆÆ ,
=
ÆÆ- .

objMensaje
ÆÆ/ 9
.
ÆÆ9 :
Valor
ÆÆ: ?
+
ÆÆ@ A
$str
ÆÆB P
+
ÆÆQ R
ex
ÆÆS U
;
ÆÆU V
return
ØØ 

responseData
ØØ 
;
ØØ 
}
∞∞ 
}
±± 
[
≥≥ 
HttpPost
≥≥ 
]
≥≥ 
[
¥¥ 
Route
¥¥ 
(
¥¥ 	
$str
¥¥	 $
)
¥¥$ %
]
¥¥% &
public
µµ (
VerificarEstadoResponseDto
µµ	 #'
VerificarEstadoWebService
µµ$ =
(
µµ= > 
VerificarEstadoDto
µµ> P
SignonRq
µµQ Y
)
µµY Z
{
∂∂ (
VerificarEstadoResponseDto
∑∑ 
responseData
∑∑ *
=
∑∑+ ,
new
∑∑- 0(
VerificarEstadoResponseDto
∑∑1 K
(
∑∑K L
)
∑∑L M
;
∑∑M N
try
∏∏ 
{
ππ 
bool
∫∫ 
UserAutenticado
∫∫	 
=
∫∫ )
ServicioRecaudoBancarioAuth
∫∫ 6
(
∫∫6 7
)
∫∫7 8
;
∫∫8 9$
DTOObjetoGeneralSalida
ºº 
ObjetoSalida
ºº '
=
ºº( )
new
ºº* -$
DTOObjetoGeneralSalida
ºº. D
(
ººD E
)
ººE F
;
ººF G

DTOMensaje
ΩΩ 

objMensaje
ΩΩ 
=
ΩΩ 
new
ΩΩ 

DTOMensaje
ΩΩ  *
(
ΩΩ* +
)
ΩΩ+ ,
;
ΩΩ, -
responseData
ææ 
.
ææ 
ServerDt
ææ 
=
ææ 
DateTime
ææ $
.
ææ$ %
Now
ææ% (
;
ææ( )
if
øø 
(
øø 
!
øø 	
UserAutenticado
øø	 
)
øø 
{
¿¿ 

objMensaje
¡¡ 
=
¡¡ 

DTOMensaje
¡¡ 
.
¡¡ 

GetMensaje
¡¡ '
(
¡¡' (
DTOCodigoMensajes
¡¡( 9
.
¡¡9 :
BANCO_MENSAJE12
¡¡: I
,
¡¡I J
TipoMensaje
¡¡K V
.
¡¡V W
Banco
¡¡W \
)
¡¡\ ]
;
¡¡] ^
ObjetoSalida
¬¬ 
=
¬¬ 
new
¬¬ $
DTOObjetoGeneralSalida
¬¬ .
{
√√ 
DescripcionError
ƒƒ 
=
ƒƒ 

objMensaje
ƒƒ #
.
ƒƒ# $
Texto
ƒƒ$ )
,
ƒƒ) *
CodigoError
≈≈ 
=
≈≈ 

objMensaje
≈≈ 
.
≈≈ 
Valor
≈≈ $
}
∆∆ 
;
∆∆ 
responseData
«« 
.
«« 
codigoRespuesta
«« !
=
««" #
ObjetoSalida
««$ 0
.
««0 1
CodigoError
««1 <
;
««< =
}
»» 
else
…… 
{
   

objMensaje
ÀÀ 
=
ÀÀ 

DTOMensaje
ÀÀ 
.
ÀÀ 

GetMensaje
ÀÀ '
(
ÀÀ' (
DTOCodigoMensajes
ÀÀ( 9
.
ÀÀ9 :
BANCO_MENSAJE0
ÀÀ: H
,
ÀÀH I
TipoMensaje
ÀÀJ U
.
ÀÀU V
Banco
ÀÀV [
)
ÀÀ[ \
;
ÀÀ\ ]
responseData
ÃÃ 
.
ÃÃ 
codigoRespuesta
ÃÃ !
=
ÃÃ" #

objMensaje
ÃÃ$ .
.
ÃÃ. /
Valor
ÃÃ/ 4
;
ÃÃ4 5
}
ÕÕ 
return
ŒŒ 

responseData
ŒŒ 
;
ŒŒ 
}
œœ 
catch
–– 
(
––	 

	Exception
––
 
ex
–– 
)
–– 
{
—— 

DTOMensaje
““ 

objMensaje
““ 
=
““ 
new
““ 

DTOMensaje
““  *
(
““* +
)
““+ ,
;
““, -

objMensaje
”” 
=
”” 

DTOMensaje
”” 
.
”” 

GetMensaje
”” &
(
””& '
DTOCodigoMensajes
””' 8
.
””8 9
BANCO_MENSAJE10
””9 H
,
””H I
TipoMensaje
””J U
.
””U V
Banco
””V [
)
””[ \
;
””\ ]
responseData
‘‘ 
.
‘‘ 
codigoRespuesta
‘‘  
=
‘‘! "

objMensaje
‘‘# -
.
‘‘- .
Valor
‘‘. 3
+
‘‘4 5
$str
‘‘6 D
+
‘‘E F
ex
‘‘G I
;
‘‘I J
return
’’ 

responseData
’’ 
;
’’ 
}
÷÷ 
}
◊◊ 
}
ÿÿ 
}ŸŸ ú
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
} ó)
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
DataContractSerializer	==| í
)
==í ì
;
==ì î
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
SoapSerializer	>>w Ö
.
>>Ö Ü
XmlSerializer
>>Ü ì
)
>>ì î
;
>>î ï
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