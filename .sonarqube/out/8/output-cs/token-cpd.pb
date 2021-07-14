�
iC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.BM\Auditoria\BMAuditoria.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. 
BM  
.  !
	Auditoria! *
{ 
public 

class 
BMAuditoria 
{ 
public 
bool 
InsertarAuditoria %
(% &
DTOAuditoria& 2
dto3 6
)6 7
{ 	
try 
{ 
return 
new 
DMAuditoria &
(& '
)' (
.( )
RegistrarAuditoria) ;
(; <
dto< ?
)? @
;@ A
} 
catch 
( 
	Exception 
) 
{ 
return 
false 
; 
} 
} 	
} 
} �Q
fC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.BM\Clientes\BMCliente.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. 
BM  
.  !
Clientes! )
{ 
public 

class 
	BMCliente 
: 

IBMCliente '
{ "
DTOObjetoGeneralSalida 
ObjetoSalida +
=, -
new. 1"
DTOObjetoGeneralSalida2 H
(H I
)I J
;J K
public "
DTOObjetoGeneralSalida %
ConsultarCliente& 6
(6 7
DTOObjetoGeneral7 G
objDatosH P
)P Q
{ 	
try 
{ 
ObjetoSalida 
. 
FechaTransaccion -
=. /
objDatos0 8
.8 9
FechaRecaudo9 E
;E F
DTOParametro 
dtoParametro )
=* +
new, /
DTOParametro0 <
{ 
	COD_BANCO 
= 
objDatos  (
.( )
CodigoBanco) 4
,4 5
CONVENIO 
= 
objDatos '
.' (
NumeroConvenio( 6
} 
; 
objDatos 
. 
Sociedad !
=" #
new$ '
BMParametro( 3
(3 4
)4 5
.5 6
ConsultarSociedad6 G
(G H
dtoParametroH T
)T U
;U V
if 
( 
string 
. 
IsNullOrEmpty (
(( )
objDatos) 1
.1 2
Sociedad2 :
): ;
); <
{ 

DTOMensaje 

objMensaje )
=* +

DTOMensaje, 6
.6 7

GetMensaje7 A
(A B
DTOCodigoMensajesB S
.S T
BANCO_MENSAJE2T b
,b c
TipoMensajed o
.o p
Bancop u
)u v
;v w
ObjetoSalida  
=! "
new# &"
DTOObjetoGeneralSalida' =
{   
CodigoError!! #
=!!$ %

objMensaje!!& 0
.!!0 1
Valor!!1 6
,!!6 7
EstadoOperacion"" '
=""( )
false""* /
,""/ 0
DescripcionError## (
=##) *

objMensaje##+ 5
.##5 6
Texto##6 ;
,##; <
Estado$$ 
=$$  
$str$$! $
,$$$ %
FechaVencimiento%% (
=%%) *
DTOComponentes%%+ 9
.%%9 :
	FechaCero%%: C
}&& 
;&& 
return'' 
ObjetoSalida'' '
;''' (
}(( 
	DMCliente** 
	dmCliente** #
=**$ %
new**& )
	DMCliente*** 3
(**3 4
)**4 5
;**5 6
ObjetoSalida++ 
=++ 
	dmCliente++ (
.++( )
ConsultarCliente++) 9
(++9 :
objDatos++: B
)++B C
;++C D
if,, 
(,, 
ObjetoSalida,,  
!=,,! #
null,,$ (
),,( )
{-- 

DTOMensaje.. 

objMensaje.. )
=..* +

DTOMensaje.., 6
...6 7

GetMensaje..7 A
(..A B
DTOCodigoMensajes..B S
...S T
BANCO_MENSAJE0..T b
,..b c
TipoMensaje..d o
...o p
Banco..p u
)..u v
;..v w
ObjetoSalida//  
.//  !
CodigoError//! ,
=//- .

objMensaje/// 9
.//9 :
Valor//: ?
;//? @
ObjetoSalida00  
.00  !
EstadoOperacion00! 0
=001 2
true003 7
;007 8
ObjetoSalida11  
.11  !
DescripcionError11! 1
=112 3

objMensaje114 >
.11> ?
Texto11? D
;11D E
ObjetoSalida22  
.22  !
Estado22! '
=22( )
$str22* -
;22- .
ObjetoSalida33  
.33  !
FechaVencimiento33! 1
=332 3
DTOComponentes334 B
.33B C
	FechaCero33C L
;33L M
}44 
else55 
{66 

DTOMensaje77 

objMensaje77 )
=77* +

DTOMensaje77, 6
.776 7

GetMensaje777 A
(77A B
DTOCodigoMensajes77B S
.77S T
BANCO_MENSAJE177T b
,77b c
TipoMensaje77d o
.77o p
Banco77p u
)77u v
;77v w
ObjetoSalida88  
=88! "
new88# &"
DTOObjetoGeneralSalida88' =
{99 
CodigoError:: #
=::$ %

objMensaje::& 0
.::0 1
Valor::1 6
,::6 7
EstadoOperacion;; '
=;;( )
false;;* /
,;;/ 0
DescripcionError<< (
=<<) *

objMensaje<<+ 5
.<<5 6
Texto<<6 ;
,<<; <
Estado== 
===  
$str==! $
,==$ %
FechaVencimiento>> (
=>>) *
DTOComponentes>>+ 9
.>>9 :
	FechaCero>>: C
}?? 
;?? 
}@@ 
returnAA 
ObjetoSalidaAA #
;AA# $
}CC 
catchDD 
(DD 
	ExceptionDD 
exDD 
)DD  
{EE 
ObjetoSalidaFF 
.FF 
TipoRegistroFF )
=FF* +
objDatosFF, 4
.FF4 5
TipoRegistroFF5 A
;FFA B
ObjetoSalidaGG 
.GG 
CodigoErrorGG (
=GG) *
DTOCodigoMensajesGG+ <
.GG< =
GENERAL_MENSAJE11GG= N
.GGN O
ToStringGGO W
(GGW X
)GGX Y
;GGY Z
ObjetoSalidaHH 
.HH 
DescripcionErrorHH -
=HH. /
exHH0 2
.HH2 3
MessageHH3 :
;HH: ;
returnII 
ObjetoSalidaII #
;II# $
}JJ 
}KK 	
publicMM "
DTOObjetoGeneralSalidaMM %
InsertarClienteMM& 5
(MM5 6
ListMM6 :
<MM: ;

DTOClienteMM; E
>MME F

dtoClienteMMG Q
)MMQ R
{NN 	
tryOO 
{PP 
StringBuilderQQ 
xmlQQ !
=QQ" #
newQQ$ '
StringBuilderQQ( 5
(QQ5 6
)QQ6 7
;QQ7 8
xmlRR 
.RR 
AppendRR 
(RR 
$strRR #
)RR# $
;RR$ %
foreachSS 
(SS 

DTOClienteSS #
dtSS$ &
inSS' )

dtoClienteSS* 4
)SS4 5
{TT 
xmlUU 
.UU 
AppendUU 
(UU 
$strUU &
)UU& '
;UU' (
xmlVV 
.VV 
AppendVV 
(VV 
stringVV %
.VV% &
FormatVV& ,
(VV, -
$strVV- G
,VVG H
dtVVI K
.VVK L
SociedadVVL T
)VVT U
)VVU V
;VVV W
xmlWW 
.WW 
AppendWW 
(WW 
stringWW %
.WW% &
FormatWW& ,
(WW, -
$strWW- =
,WW= >
dtWW? A
.WWA B
NITWWB E
)WWE F
)WWF G
;WWG H
xmlXX 
.XX 
AppendXX 
(XX 
stringXX %
.XX% &
FormatXX& ,
(XX, -
$strXX- E
,XXE F
dtXXG I
.XXI J
ClienteXXJ Q
)XXQ R
)XXR S
;XXS T
xmlYY 
.YY 
AppendYY 
(YY 
stringYY %
.YY% &
FormatYY& ,
(YY, -
$strYY- E
,YYE F
dtYYG I
.YYI J
CentralYYJ Q
)YYQ R
)YYR S
;YYS T
xmlZZ 
.ZZ 
AppendZZ 
(ZZ 
$strZZ '
)ZZ' (
;ZZ( )
}[[ 
xml\\ 
.\\ 
Append\\ 
(\\ 
$str\\ $
)\\$ %
;\\% &
ObjetoSalida^^ 
.^^ 
EstadoOperacion^^ ,
=^^- .
new^^/ 2
	DMCliente^^3 <
(^^< =
)^^= >
.^^> ?
InsertarCliente^^? N
(^^N O
xml^^O R
)^^R S
;^^S T

DTOMensaje__ 

objMensaje__ %
=__& '
new__( +

DTOMensaje__, 6
(__6 7
)__7 8
;__8 9
if`` 
(`` 
ObjetoSalida``  
.``  !
EstadoOperacion``! 0
)``0 1
{aa 

objMensajebb 
=bb  

DTOMensajebb! +
.bb+ ,

GetMensajebb, 6
(bb6 7
DTOCodigoMensajesbb7 H
.bbH I
BANCO_MENSAJE0bbI W
,bbW X
TipoMensajebbY d
.bbd e
Bancobbe j
)bbj k
;bbk l
}cc 
elsedd 
{ee 

objMensajeff 
=ff  

DTOMensajeff! +
.ff+ ,

GetMensajeff, 6
(ff6 7
DTOCodigoMensajesff7 H
.ffH I
GENERAL_MENSAJE11ffI Z
,ffZ [
TipoMensajeff\ g
.ffg h
Generalffh o
)ffo p
;ffp q
}gg 
ObjetoSalidahh 
.hh 
CodigoErrorhh (
=hh) *

objMensajehh+ 5
.hh5 6
Valorhh6 ;
;hh; <
ObjetoSalidaii 
.ii 
DescripcionErrorii -
=ii. /

objMensajeii0 :
.ii: ;
Textoii; @
;ii@ A
returnkk 
ObjetoSalidakk #
;kk# $
}ll 
catchmm 
(mm 
	Exceptionmm 
exmm 
)mm  
{nn 
ObjetoSalidaoo 
.oo 
CodigoErroroo (
=oo) *
DTOCodigoMensajesoo+ <
.oo< =
GENERAL_MENSAJE11oo= N
.ooN O
ToStringooO W
(ooW X
)ooX Y
;ooY Z
ObjetoSalidapp 
.pp 
DescripcionErrorpp -
=pp. /
expp0 2
.pp2 3
Messagepp3 :
;pp: ;
returnqq 
ObjetoSalidaqq #
;qq# $
}rr 
}ss 	
}tt 
}uu �
gC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.BM\Clientes\IBMCliente.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. 
BM  
.  !
Clientes! )
{ 
public 

	interface 

IBMCliente 
{ "
DTOObjetoGeneralSalida		 
InsertarCliente		 .
(		. /
List		/ 3
<		3 4

DTOCliente		4 >
>		> ?

dtoCliente		@ J
)		J K
;		K L"
DTOObjetoGeneralSalida

 
ConsultarCliente

 /
(

/ 0
DTOObjetoGeneral

0 @
objDatos

A I
)

I J
;

J K
} 
} �
iC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.BM\Parametro\BMParametro.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. 
BM  
.  !
	Parametro! *
{ 
public 

class 
BMParametro 
{ 
public 
string 
ConsultarSociedad '
(' (
DTOParametro( 4
dtoParametro5 A
)A B
{ 	
return 
new 
DMParametro "
(" #
)# $
.$ %
ConsultarSociedad% 6
(6 7
dtoParametro7 C
)C D
;D E
} 	
} 
} ͺ
eC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.BM\Recaudo\BMRecaudo.cs
	namespace

 	
Corona


 
.

 
RecaudoPagos

 
.

 
BM

  
.

  !
Recaudo

! (
{ 
public 

class 
	BMRecaudo 
{ 
public "
DTOObjetoGeneralSalida %
RealizarRecaudo& 5
(5 6
DTOObjetoGeneral6 F
objDatosG O
,O P
DateTimeQ Y
TimeZ ^
)^ _
{ 	"
DTOObjetoGeneralSalida "
ObjetoSalida# /
=0 1
new2 5"
DTOObjetoGeneralSalida6 L
(L M
)M N
;N O
DTOConfiguraciones 
Configuraciones .
=/ 0
new1 4
DTOConfiguraciones5 G
(G H
)H I
;I J
try 
{ 
int 
segundos 
= 
Configuraciones .
.. /
numMinTimeout/ <
;< =
using 
( 
TransactionScope '
objTransaction( 6
=7 8
new9 <
TransactionScope= M
(M N"
TransactionScopeOptionN d
.d e
Requirede m
,m n
newo r
TransactionOptions	s �
{
� �
Timeout
� �
=
� �
new
� �
TimeSpan
� �
(
� �
$num
� �
,
� �
$num
� �
,
� �
segundos
� �
)
� �
}
� �
)
� �
)
� �
{ 

DataStatus 
statusResult +
=, -"
ValidarDatosRequeridos. D
(D E
objDatosE M
)M N
;N O
if 
( 
statusResult $
.$ %
Result% +
)+ ,
{   
ObjetoSalida!! $
=!!% &
RegistrarRecaudo!!' 7
(!!7 8
objDatos!!8 @
)!!@ A
;!!A B
}"" 
else## 
if## 
(## 
statusResult## )
.##) *
	TipoError##* 3
==##4 6
	Severidad##7 @
.##@ A
Servicio##A I
)##I J
{$$ 
ObjetoSalida%% $
.%%$ %
TipoSeveridad%%% 2
=%%3 4
$num%%5 6
;%%6 7
ObjetoSalida&& $
.&&$ %
EstadoOperacion&&% 4
=&&5 6
false&&7 <
;&&< =
ObjetoSalida'' $
.''$ %
TipoRegistro''% 1
=''2 3
objDatos''4 <
.''< =
TipoRegistro''= I
;''I J
ObjetoSalida(( $
.(($ %
CodigoError((% 0
=((1 2
statusResult((3 ?
.((? @
Mensaje((@ G
.((G H
Valor((H M
;((M N
ObjetoSalida)) $
.))$ %
DescripcionError))% 5
=))6 7
statusResult))8 D
.))D E
Mensaje))E L
.))L M
Texto))M R
;))R S
ObjetoSalida** $
.**$ %
NumeroTransaccion**% 6
=**7 8
objDatos**9 A
.**A B
NumeroAutorizacion**B T
;**T U
ObjetoSalida++ $
.++$ %
ValorFactura++% 1
=++2 3
$num++4 5
;++5 6
ObjetoSalida,, $
.,,$ %
Estado,,% +
=,,, -
$str,,. 2
;,,2 3
}-- 
else.. 
{// 
ObjetoSalida00 $
.00$ %
TipoSeveridad00% 2
=003 4
$num005 6
;006 7
ObjetoSalida11 $
.11$ %
EstadoOperacion11% 4
=115 6
false117 <
;11< =
ObjetoSalida22 $
.22$ %
TipoRegistro22% 1
=222 3
objDatos224 <
.22< =
TipoRegistro22= I
;22I J
ObjetoSalida33 $
.33$ %
EstadoOperacion33% 4
=335 6
statusResult337 C
.33C D
Result33D J
;33J K
ObjetoSalida44 $
.44$ %
CodigoError44% 0
=441 2
statusResult443 ?
.44? @
Mensaje44@ G
.44G H
Valor44H M
;44M N
ObjetoSalida55 $
.55$ %
DescripcionError55% 5
=556 7
statusResult558 D
.55D E
Mensaje55E L
.55L M
Texto55M R
;55R S
ObjetoSalida66 $
.66$ %
NumeroTransaccion66% 6
=667 8
objDatos669 A
.66A B
NumeroAutorizacion66B T
;66T U
}77 
ObjetoSalida99  
.99  !
FechaTransaccion99! 1
=992 3
objDatos994 <
.99< =
FechaRecaudo99= I
;99I J
if;; 
(;; 
DateTime;;  
.;;  !
Now;;! $
<;;% &
Time;;' +
.;;+ ,

AddSeconds;;, 6
(;;6 7
Configuraciones;;7 F
.;;F G
SegundosTimeOut;;G V
);;V W
);;W X
{<< 
objTransaction== &
.==& '
Complete==' /
(==/ 0
)==0 1
;==1 2
return>> 
ObjetoSalida>> +
;>>+ ,
}?? 
else@@ 
{AA 
objTransactionBB &
.BB& '
DisposeBB' .
(BB. /
)BB/ 0
;BB0 1
throwCC 
newCC !
TimeoutExceptionCC" 2
(CC2 3
$strCC3 E
+CCF G
$strCCH S
+CCT U
objDatosCCV ^
.CC^ _
Referencia1CC_ j
)CCj k
;CCk l
}DD 
}EE 
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG  
{HH 
ObjetoSalidaII 
.II 
CodigoErrorII (
=II) *
DTOCodigoMensajesII+ <
.II< =
BANCO_MENSAJE1II= K
.IIK L
ToStringIIL T
(IIT U
)IIU V
;IIV W
ObjetoSalidaJJ 
.JJ 
TipoRegistroJJ )
=JJ* +
objDatosJJ, 4
.JJ4 5
TipoRegistroJJ5 A
;JJA B
ObjetoSalidaKK 
.KK 
DescripcionErrorKK -
=KK. /
exKK0 2
.KK2 3
MessageKK3 :
;KK: ;
ObjetoSalidaLL 
.LL 
EstadoOperacionLL ,
=LL- .
falseLL/ 4
;LL4 5
ObjetoSalidaMM 
.MM 
NumeroTransaccionMM .
=MM/ 0
$strMM1 4
;MM4 5
returnNN 
ObjetoSalidaNN #
;NN# $
}OO 
}PP 	
publicWW 

DataStatusWW "
ValidarDatosRequeridosWW 0
(WW0 1
DTOObjetoGeneralWW1 A
objDatosWWB J
)WWJ K
{XX 	

DataStatusYY 
ResultYY 
=YY 
newYY  #

DataStatusYY$ .
(YY. /
)YY/ 0
;YY0 1

DTOMensajeZZ 

objMensajeZZ !
=ZZ" #
newZZ$ '

DTOMensajeZZ( 2
(ZZ2 3
)ZZ3 4
;ZZ4 5
if\\ 
(\\ 
objDatos\\ 
!=\\ 
null\\  
)\\  !
{]] 
try^^ 
{__ 
DTOParametro``  
dtoParametro``! -
=``. /
new``0 3
DTOParametro``4 @
{aa 
	COD_BANCObb !
=bb" #
objDatosbb$ ,
.bb, -
CodigoBancobb- 8
,bb8 9
CONVENIOcc  
=cc! "
objDatoscc# +
.cc+ ,
NumeroConveniocc, :
}dd 
;dd 
objDatosee 
.ee 
Sociedadee %
=ee& '
newee( +
BMParametroee, 7
(ee7 8
)ee8 9
.ee9 :
ConsultarSociedadee: K
(eeK L
dtoParametroeeL X
)eeX Y
;eeY Z
ifff 
(ff 
stringff 
.ff 
IsNullOrEmptyff ,
(ff, -
objDatosff- 5
.ff5 6
Sociedadff6 >
)ff> ?
)ff? @
{gg 

objMensajehh "
=hh# $

DTOMensajehh% /
.hh/ 0

GetMensajehh0 :
(hh: ;
DTOCodigoMensajeshh; L
.hhL M
BANCO_MENSAJE2hhM [
,hh[ \
TipoMensajehh] h
.hhh i
Bancohhi n
)hhn o
;hho p
Resultii 
.ii 
	TipoErrorii (
=ii) *
	Severidadii+ 4
.ii4 5
Negocioii5 <
;ii< =
Resultjj 
.jj 
Mensajejj &
=jj' (

objMensajejj) 3
;jj3 4
Resultkk 
.kk 
Resultkk %
=kk& '
falsekk( -
;kk- .
returnll 
Resultll %
;ll% &
}mm 
ifoo 
(oo 
objDatosoo  
.oo  !
TotalRecaudadooo! /
<=oo0 2
$numoo3 4
)oo4 5
{pp 

objMensajeqq "
=qq# $

DTOMensajeqq% /
.qq/ 0

GetMensajeqq0 :
(qq: ;
DTOCodigoMensajesqq; L
.qqL M
BANCO_MENSAJE1qqM [
,qq[ \
newqq] `
stringqqa g
[qqg h
]qqh i
{qqj k
$strqql 
}
qq� �
)
qq� �
;
qq� �
Resultrr 
.rr 
	TipoErrorrr (
=rr) *
	Severidadrr+ 4
.rr4 5
Serviciorr5 =
;rr= >
Resultss 
.ss 
Mensajess &
=ss' (

objMensajess) 3
;ss3 4
Resulttt 
.tt 
Resulttt %
=tt& '
falsett( -
;tt- .
returnuu 
Resultuu %
;uu% &
}vv 
ifxx 
(xx 
stringxx 
.xx 
IsNullOrEmptyxx ,
(xx, -
objDatosxx- 5
.xx5 6
CodigoBancoxx6 A
)xxA B
)xxB C
{yy 

objMensajezz "
=zz# $

DTOMensajezz% /
.zz/ 0

GetMensajezz0 :
(zz: ;
DTOCodigoMensajeszz; L
.zzL M
BANCO_MENSAJE1zzM [
,zz[ \
newzz] `
stringzza g
[zzg h
]zzh i
{zzj k
$strzzl ~
}	zz �
)
zz� �
;
zz� �
Result|| 
.|| 
	TipoError|| (
=||) *
	Severidad||+ 4
.||4 5
Negocio||5 <
;||< =
Result}} 
.}} 
Mensaje}} &
=}}' (

objMensaje}}) 3
;}}3 4
Result~~ 
.~~ 
Result~~ %
=~~& '
false~~( -
;~~- .
return 
Result %
;% &
}
�� 
if
�� 
(
�� 
objDatos
��  
.
��  !
CodigoBanco
��! ,
.
��, -
Length
��- 3
!=
��4 6
$num
��7 8
)
��8 9
{
�� 

objMensaje
�� "
=
��# $

DTOMensaje
��% /
.
��/ 0

GetMensaje
��0 :
(
��: ;
DTOCodigoMensajes
��; L
.
��L M
BANCO_MENSAJE1
��M [
,
��[ \
new
��] `
string
��a g
[
��g h
]
��h i
{
��j k
$str
��l ~
}�� �
)��� �
;��� �
Result
�� 
.
�� 
	TipoError
�� (
=
��) *
	Severidad
��+ 4
.
��4 5
Negocio
��5 <
;
��< =
Result
�� 
.
�� 
Mensaje
�� &
=
��' (

objMensaje
��) 3
;
��3 4
Result
�� 
.
�� 
Result
�� %
=
��& '
false
��( -
;
��- .
return
�� 
Result
�� %
;
��% &
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� ,
(
��, -
objDatos
��- 5
.
��5 6
Referencia1
��6 A
)
��A B
)
��B C
{
�� 

objMensaje
�� "
=
��# $

DTOMensaje
��% /
.
��/ 0

GetMensaje
��0 :
(
��: ;
DTOCodigoMensajes
��; L
.
��L M
BANCO_MENSAJE1
��M [
,
��[ \
new
��] `
string
��a g
[
��g h
]
��h i
{
��j k
$str
��l t
}
��u v
)
��v w
;
��w x
Result
�� 
.
�� 
	TipoError
�� (
=
��) *
	Severidad
��+ 4
.
��4 5
Negocio
��5 <
;
��< =
Result
�� 
.
�� 
Mensaje
�� &
=
��' (

objMensaje
��) 3
;
��3 4
Result
�� 
.
�� 
Result
�� %
=
��& '
false
��( -
;
��- .
return
�� 
Result
�� %
;
��% &
}
�� 
if
�� 
(
�� 
new
�� 
	DMCliente
�� %
(
��% &
)
��& '
.
��' (
ConsultarCliente
��( 8
(
��8 9
objDatos
��9 A
)
��A B
==
��C E
null
��F J
)
��J K
{
�� 

objMensaje
�� "
=
��# $

DTOMensaje
��% /
.
��/ 0

GetMensaje
��0 :
(
��: ;
DTOCodigoMensajes
��; L
.
��L M
BANCO_MENSAJE1
��M [
,
��[ \
TipoMensaje
��] h
.
��h i
Banco
��i n
)
��n o
;
��o p
Result
�� 
.
�� 
	TipoError
�� (
=
��) *
	Severidad
��+ 4
.
��4 5
Servicio
��5 =
;
��= >
Result
�� 
.
�� 
Mensaje
�� &
=
��' (

objMensaje
��) 3
;
��3 4
Result
�� 
.
�� 
Result
�� %
=
��& '
false
��( -
;
��- .
return
�� 
Result
�� %
;
��% &
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� ,
(
��, -
objDatos
��- 5
.
��5 6
FechaRecaudo
��6 B
)
��B C
)
��C D
{
�� 

objMensaje
�� "
=
��# $

DTOMensaje
��% /
.
��/ 0

GetMensaje
��0 :
(
��: ;
DTOCodigoMensajes
��; L
.
��L M
BANCO_MENSAJE1
��M [
,
��[ \
new
��] `
string
��a g
[
��g h
]
��h i
{
��j k
$str
��l 
}��� �
)��� �
;��� �
Result
�� 
.
�� 
	TipoError
�� (
=
��) *
	Severidad
��+ 4
.
��4 5
Negocio
��5 <
;
��< =
Result
�� 
.
�� 
Mensaje
�� &
=
��' (

objMensaje
��) 3
;
��3 4
Result
�� 
.
�� 
Result
�� %
=
��& '
false
��( -
;
��- .
return
�� 
Result
�� %
;
��% &
}
�� 
if
�� 
(
�� 
objDatos
��  
.
��  !
TotalRecaudado
��! /
==
��0 2
$num
��3 4
)
��4 5
{
�� 

objMensaje
�� "
=
��# $

DTOMensaje
��% /
.
��/ 0

GetMensaje
��0 :
(
��: ;
DTOCodigoMensajes
��; L
.
��L M
BANCO_MENSAJE1
��M [
,
��[ \
new
��] `
string
��a g
[
��g h
]
��h i
{
��j k
$str
��l 
}��� �
)��� �
;��� �
Result
�� 
.
�� 
	TipoError
�� (
=
��) *
	Severidad
��+ 4
.
��4 5
Negocio
��5 <
;
��< =
Result
�� 
.
�� 
Mensaje
�� &
=
��' (

objMensaje
��) 3
;
��3 4
Result
�� 
.
�� 
Result
�� %
=
��& '
false
��( -
;
��- .
return
�� 
Result
�� %
;
��% &
}
�� 
if
�� 
(
�� 
Convert
�� 
.
��  

ToDateTime
��  *
(
��* +
objDatos
��+ 3
.
��3 4
	FechaPago
��4 =
)
��= >
>
��? @
DateTime
��A I
.
��I J
Now
��J M
)
��M N
{
�� 

objMensaje
�� "
=
��# $

DTOMensaje
��% /
.
��/ 0

GetMensaje
��0 :
(
��: ;
DTOCodigoMensajes
��; L
.
��L M
BANCO_MENSAJE1
��M [
,
��[ \
new
��] `
string
��a g
[
��g h
]
��h i
{
��j k
$str
��l 
}��� �
)��� �
;��� �
Result
�� 
.
�� 
	TipoError
�� (
=
��) *
	Severidad
��+ 4
.
��4 5
Negocio
��5 <
;
��< =
Result
�� 
.
�� 
Mensaje
�� &
=
��' (

objMensaje
��) 3
;
��3 4
Result
�� 
.
�� 
Result
�� %
=
��& '
false
��( -
;
��- .
return
�� 
Result
�� %
;
��% &
}
�� 
Result
�� 
.
�� 
Result
�� !
=
��" #
true
��$ (
;
��( )
return
�� 
Result
�� !
;
��! "
}
�� 
catch
�� 
(
�� 
	Exception
��  
)
��  !
{
�� 

objMensaje
�� 
=
��  

DTOMensaje
��! +
.
��+ ,

GetMensaje
��, 6
(
��6 7
DTOCodigoMensajes
��7 H
.
��H I
BANCO_MENSAJE1
��I W
,
��W X
TipoMensaje
��Y d
.
��d e
Banco
��e j
)
��j k
;
��k l
Result
�� 
.
�� 
	TipoError
�� $
=
��% &
	Severidad
��' 0
.
��0 1
	Excepcion
��1 :
;
��: ;
Result
�� 
.
�� 
Mensaje
�� "
=
��# $

objMensaje
��% /
;
��/ 0
Result
�� 
.
�� 
Result
�� !
=
��" #
false
��$ )
;
��) *
return
�� 
Result
�� !
;
��! "
}
�� 
}
�� 
else
�� 
{
�� 

objMensaje
�� 
=
�� 

DTOMensaje
�� '
.
��' (

GetMensaje
��( 2
(
��2 3
DTOCodigoMensajes
��3 D
.
��D E
BANCO_MENSAJE1
��E S
,
��S T
TipoMensaje
��U `
.
��` a
Banco
��a f
)
��f g
;
��g h
Result
�� 
.
�� 
	TipoError
��  
=
��! "
	Severidad
��# ,
.
��, -
	Excepcion
��- 6
;
��6 7
Result
�� 
.
�� 
Mensaje
�� 
=
��  

objMensaje
��! +
;
��+ ,
Result
�� 
.
�� 
Result
�� 
=
�� 
false
��  %
;
��% &
return
�� 
Result
�� 
;
�� 
}
�� 
}
�� 	
public
�� $
DTOObjetoGeneralSalida
�� %
RegistrarRecaudo
��& 6
(
��6 7
DTOObjetoGeneral
��7 G
objDatos
��H P
)
��P Q
{
�� 	$
DTOObjetoGeneralSalida
�� "
ObjetoSalida
��# /
=
��0 1
new
��2 5$
DTOObjetoGeneralSalida
��6 L
(
��L M
)
��M N
;
��N O

DTOMensaje
�� 

objMensaje
�� !
=
��" #
new
��$ '

DTOMensaje
��( 2
(
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
!
�� !
ValidaPagoDuplicado
�� $
(
��$ %
objDatos
��% -
)
��- .
)
��. /
{
�� 
ObjetoSalida
�� 
.
�� 
EstadoOperacion
�� ,
=
��- .
new
��/ 2
	DMRecaudo
��3 <
(
��< =
)
��= >
.
��> ?
RegistrarRecaudo
��? O
(
��O P
objDatos
��P X
)
��X Y
;
��Y Z
ObjetoSalida
�� 
.
�� 
TipoRegistro
�� )
=
��* +
objDatos
��, 4
.
��4 5
TipoRegistro
��5 A
;
��A B
ObjetoSalida
�� 
.
�� 
TipoSeveridad
�� *
=
��+ ,
$num
��- .
;
��. /

objMensaje
�� 
=
�� 

DTOMensaje
�� '
.
��' (

GetMensaje
��( 2
(
��2 3
(
��3 4
ObjetoSalida
��4 @
.
��@ A
EstadoOperacion
��A P
?
��Q R
DTOCodigoMensajes
��S d
.
��d e
BANCO_MENSAJE0
��e s
:
�� 
DTOCodigoMensajes
�� '
.
��' (
BANCO_MENSAJE10
��( 7
)
��7 8
,
��8 9
TipoMensaje
��: E
.
��E F
Banco
��F K
)
��K L
;
��L M
ObjetoSalida
�� 
.
�� 
DescripcionError
�� -
=
��. /

objMensaje
��0 :
.
��: ;
Texto
��; @
;
��@ A
ObjetoSalida
�� 
.
�� 
CodigoError
�� (
=
��) *

objMensaje
��+ 5
.
��5 6
Valor
��6 ;
;
��; <
}
�� 
else
�� 
{
�� 

objMensaje
�� 
=
�� 

DTOMensaje
�� '
.
��' (

GetMensaje
��( 2
(
��2 3
DTOCodigoMensajes
��3 D
.
��D E
BANCO_MENSAJE4
��E S
,
��S T
TipoMensaje
��U `
.
��` a
Banco
��a f
)
��f g
;
��g h
ObjetoSalida
�� 
.
�� 
NumeroTransaccion
�� .
=
��/ 0
objDatos
��1 9
.
��9 : 
NumeroAutorizacion
��: L
;
��L M
ObjetoSalida
�� 
.
�� 
DescripcionError
�� -
=
��. /

objMensaje
��0 :
.
��: ;
Texto
��; @
;
��@ A
ObjetoSalida
�� 
.
�� 
TipoRegistro
�� )
=
��* +
objDatos
��, 4
.
��4 5
TipoRegistro
��5 A
;
��A B
ObjetoSalida
�� 
.
�� 
DescripcionError
�� -
=
��. /

objMensaje
��0 :
.
��: ;
Texto
��; @
;
��@ A
ObjetoSalida
�� 
.
�� 
FechaVencimiento
�� -
=
��. /
string
��0 6
.
��6 7
Empty
��7 <
;
��< =
ObjetoSalida
�� 
.
�� 
CodigoError
�� (
=
��) *

objMensaje
��+ 5
.
��5 6
Valor
��6 ;
;
��; <
ObjetoSalida
�� 
.
�� 
EstadoOperacion
�� ,
=
��- .
false
��/ 4
;
��4 5
}
�� 
return
�� 
ObjetoSalida
�� 
;
��  
}
�� 	
public
�� 
bool
�� !
ValidaPagoDuplicado
�� '
(
��' (
DTOObjetoGeneral
��( 8
objDatos
��9 A
)
��A B
{
�� 	
return
�� 
new
�� 
	DMRecaudo
��  
(
��  !
)
��! "
.
��" #!
ValidaPagoDuplicado
��# 6
(
��6 7
objDatos
��7 ?
)
��? @
;
��@ A
}
�� 	
}
�� 
}�� �
qC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.BM\UsuarioAcceso\BMUsuarioAcceso.cs
	namespace 	
Corona
 
. 
RecaudoPagos 
. 
BM  
.  !
UsuarioAcceso! .
{ 
public 

class 
BMUsuarioAcceso  
{ 
public 
bool "
ConsultarUsuarioAcceso *
(* +
string+ 1
usuario2 9
,9 :
string; A
claveB G
)G H
{ 	
return 
new 
DMUsuarioAcceso &
(& '
)' (
.( )"
ConsultarUsuarioAcceso) ?
(? @
usuario@ G
,G H
claveI N
)N O
;O P
} 	
} 
} 