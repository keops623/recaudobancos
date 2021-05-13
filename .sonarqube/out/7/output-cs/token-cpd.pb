…“
oC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\Corona.RecaudoPagos.Facade\Conversiones\Conversion.cs
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
 
Facade

 $
.

$ %
Conversiones

% 1
{ 
public 

class 

Conversion 
{ 
public 
List 
< 

DTOCliente 
> .
"ConvertirObjetoClienteToDTOCliente  B
(B C
ListC G
<G H

ClienteDtoH R
>R S
dtoT W
)W X
{ 	
List 
< 

DTOCliente 
> 
DTOLCliente (
=) *
new+ .
List/ 3
<3 4

DTOCliente4 >
>> ?
(? @
)@ A
;A B
DTOLCliente 
= 
dto 
. 
Select $
($ %
cliente% ,
=>- /
new0 3

DTOCliente4 >
(> ?
)? @
{ 
Sociedad 
= 
cliente "
." #

IdSociedad# -
,- .
NIT 
= 
cliente 
. 
NroIdentificacion /
,/ 0
Cliente 
= 
cliente !
.! "
	IdCliente" +
,+ ,
Central 
= 
cliente !
.! "
	IdCentral" +
,+ ,
} 
) 
. 
ToList 
( 
) 
; 
return   
DTOLCliente   
;   
}!! 	
public++ 
DTOObjetoGeneral++ /
#ConvertirObjetoConsultaToDTOGeneral++  C
(++C D
ConsultaDto++D O
dto++P S
)++S T
{,, 	
DTOConfiguraciones-- 
Configuraciones-- .
=--/ 0
new--1 4
DTOConfiguraciones--5 G
(--G H
)--H I
;--I J
DTOObjetoGeneral.. 
responseData.. )
=..* +
new.., /
DTOObjetoGeneral..0 @
{// 
CanalRecaudo00 
=00 
dto00 "
.00" #
canal00# (
,00( )
CodigoBanco11 
=11 
dto11 !
.11! "
codigoBanco11" -
,11- .
	CodigoIAC22 
=22 
(22 
dto22  
.22  !
numeroConvenio22! /
!=220 2
Configuraciones223 B
.22B C'
CodigoConvenioRecaudoBarras22C ^
?22_ `
$str22a d
:22e f
dto22g j
.22j k
	codigoIAC22k t
)22t u
,22u v
FechaVencimiento33  
=33! "
(33# $
dto33$ '
.33' (
numeroConvenio33( 6
!=337 9
Configuraciones33: I
.33I J'
CodigoConvenioRecaudoBarras33J e
||444 6
string447 =
.44= >
IsNullOrEmpty44> K
(44K L
dto44L O
.44O P
fechaVencimiento44P `
.44` a
Trim44a e
(44e f
)44f g
)44g h
?44i j
DateTime558 @
.55@ A

ParseExact55A K
(55K L
$str55L V
,55V W
$str55X b
,55b c
CultureInfo55d o
.55o p
InvariantCulture	55p Ä
)
55Ä Å
:
55Ç É
DateTime668 @
.66@ A

ParseExact66A K
(66K L
dto66L O
.66O P
fechaVencimiento66P `
,66` a
$str66b l
,66l m
CultureInfo66n y
.66y z
InvariantCulture	66z ä
)
66ä ã
)
66ã å
,
66å ç
JornadaRecaudo77 
=77  
dto77! $
.77$ %
jornadaPago77% 0
,770 1
NumeroConvenio88 
=88  
dto88! $
.88$ %
numeroConvenio88% 3
,883 4
Referencia199 
=99 
dto99 !
.99! "
referencia199" -
.99- .
	TrimStart99. 7
(997 8
$char998 ;
)99; <
,99< =
Referencia2:: 
=:: 
dto:: !
.::! "
referencia2::" -
.::- .
	TrimStart::. 7
(::7 8
$char::8 ;
)::; <
,::< =
TerminalRecaudo;; 
=;;  !
dto;;" %
.;;% &
terminalRecaudo;;& 5
,;;5 6

TipoMoneda<< 
=<< 
dto<<  
.<<  !

tipoMoneda<<! +
,<<+ ,
ValorFactura== 
=== 
(==  
dto==  #
.==# $
numeroConvenio==$ 2
!===3 5
Configuraciones==6 E
.==E F'
CodigoConvenioRecaudoBarras==F a
||>>4 6
dto>>7 :
.>>: ;
valorFactura>>; G
.>>G H
Trim>>H L
(>>L M
)>>M N
.>>N O
Equals>>O U
(>>U V
$str>>V Y
)>>Y Z
?>>[ \
$str>>] c
:>>d e
dto>>f i
.>>i j
valorFactura>>j v
)>>v w
,>>w x
}@@ 
;@@ 
returnAA 
responseDataAA 
;AA  
}BB 	
publicII 
@returnII .
"ConvertirDTOSalidaToObjetoConsultaII 9
(II9 :"
DTOObjetoGeneralSalidaII: P
ObjetoSalidaIIQ ]
)II] ^
{JJ 	
@returnKK 
	dtoReturnKK 
=KK 
newKK  #
@returnKK$ +
{LL #
codigoRespuestaConsultaMM '
=MM( )
ObjetoSalidaMM* 6
.MM6 7
CodigoErrorMM7 B
.MMB C
PadLeftMMC J
(MMJ K
$numMMK L
,MML M
$charMMN Q
)MMQ R
,MMR S
estadoFacturaNN 
=NN 
ObjetoSalidaNN  ,
.NN, -
EstadoNN- 3
,NN3 4
fechaVencimientoOO  
=OO! "
ObjetoSalidaOO# /
.OO/ 0
FechaVencimientoOO0 @
,OO@ A"
indicadorFacturaValidaPP &
=PP' (
ObjetoSalidaPP) 5
.PP5 6
EstadoOperacionPP6 E
.PPE F
ToStringPPF N
(PPN O
)PPO P
,PPP Q$
mensajeRespuestaConsultaQQ (
=QQ) *
ObjetoSalidaQQ+ 7
.QQ7 8
DescripcionErrorQQ8 H
}RR 
;RR 
decimalTT 
saldoTT 
=TT 
$numTT 
;TT 
ifUU 
(UU 
ObjetoSalidaUU 
.UU 
ValorFacturaUU )
!=UU* ,
$numUU- .
)UU. /
{VV 
saldoWW 
=WW 
decimalWW 
.WW  
ParseWW  %
(WW% &
ObjetoSalidaWW& 2
.WW2 3
ValorFacturaWW3 ?
.WW? @
ToStringWW@ H
(WWH I
)WWI J
)WWJ K
;WWK L
}XX 
varZZ 
curSaldoZZ 
=ZZ 
stringZZ !
.ZZ! "
FormatZZ" (
(ZZ( )
$strZZ) 3
,ZZ3 4
saldoZZ5 :
)ZZ: ;
;ZZ; <
	dtoReturn[[ 
.[[ 
valorFactura[[ "
=[[# $
([[% &
curSaldo[[& .
)[[. /
.[[/ 0
ToString[[0 8
([[8 9
)[[9 :
.[[: ;
Replace[[; B
([[B C
$char[[C F
,[[F G
$char[[H K
)[[K L
;[[L M
return]] 
	dtoReturn]] 
;]] 
}^^ 	
publichh 
Listhh 
<hh 
DTOObjetoGeneralhh $
>hh$ %.
"ConvertirObjetoRecaudoToDTOGeneralhh& H
(hhH I

RecaudoDtohhI S
ObjhhT W
)hhW X
{ii 	
DTOConfiguracionesjj 
Configuracionesjj .
=jj/ 0
newjj1 4
DTOConfiguracionesjj5 G
(jjG H
)jjH I
;jjI J
Listkk 
<kk 
DTOObjetoGeneralkk !
>kk! "
responseDatakk# /
=kk0 1
newkk2 5
Listkk6 :
<kk: ;
DTOObjetoGeneralkk; K
>kkK L
(kkL M
)kkM N
;kkN O
stringmm 
valorEfectivomm  
=mm! "
(mm# $
(mm$ %
Decimalmm% ,
.mm, -
Parsemm- 2
(mm2 3
Objmm3 6
.mm6 7
valorTotalRecaudadomm7 J
,mmJ K
NumberStylesmmL X
.mmX Y
AllowDecimalPointmmY j
,mmj k
CultureInfomml w
.mmw x
InvariantCulture	mmx à
)
mmà â
)
mmâ ä
-nn  !
(nn" #
Decimalnn# *
.nn* +
Parsenn+ 0
(nn0 1
Objnn1 4
.nn4 5
valorChequenn5 @
,nn@ A
NumberStylesnnB N
.nnN O
AllowDecimalPointnnO `
,nn` a
CultureInfonnb m
.nnm n
InvariantCulturennn ~
)nn~ 
)	nn Ä
)
nnÄ Å
.
nnÅ Ç
ToString
nnÇ ä
(
nnä ã
)
nnã å
;
nnå ç
ifqq 
(qq 
Objqq 
.qq 
	formaPagoqq 
.qq 
	TrimStartqq '
(qq' (
$charqq( +
)qq+ ,
.qq, -
Equalsqq- 3
(qq3 4
$strqq4 7
)qq7 8
)qq8 9
{rr 
DTOObjetoGeneralss  
_DTOObjetoGeneral1ss! 3
=ss4 5
newss6 9
DTOObjetoGeneralss: J
(ssJ K
)ssK L
;ssL M
_DTOObjetoGeneral1tt "
.tt" #
CanalRecaudott# /
=tt0 1
Objtt2 5
.tt5 6
canalRecaudott6 B
;ttB C
_DTOObjetoGeneral1uu "
.uu" #
CodigoBancouu# .
=uu/ 0
Objuu1 4
.uu4 5
codigoBancouu5 @
;uu@ A
_DTOObjetoGeneral1vv "
.vv" #%
CodigoConfirmacionRecaudovv# <
=vv= >
Objvv? B
.vvB C%
codigoConfirmacionRecaudovvC \
;vv\ ]
_DTOObjetoGeneral1ww "
.ww" #
CodigoProductoww# 1
=ww2 3
Objww4 7
.ww7 8
	codigoIACww8 A
;wwA B
_DTOObjetoGeneral1xx "
.xx" #
FechaRecaudoxx# /
=xx0 1
Objxx2 5
.xx5 6
fechaRecaudoxx6 B
;xxB C
_DTOObjetoGeneral1yy "
.yy" #
FechaVencimientoyy# 3
=yy4 5
(yy6 7
Objyy7 :
.yy: ;
numeroConvenioyy; I
!=yyJ L
ConfiguracionesyyM \
.yy\ ]'
CodigoConvenioRecaudoBarrasyy] x
||zz, .
stringzz/ 5
.zz5 6
IsNullOrEmptyzz6 C
(zzC D
ObjzzD G
.zzG H
fechaVencimientozzH X
.zzX Y
TrimzzY ]
(zz] ^
)zz^ _
)zz_ `
?zza b
DateTime{{, 4
.{{4 5

ParseExact{{5 ?
({{? @
$str{{@ J
,{{J K
$str{{L V
,{{V W
CultureInfo{{X c
.{{c d
InvariantCulture{{d t
){{t u
:{{v w
DateTime||, 4
.||4 5

ParseExact||5 ?
(||? @
Obj||@ C
.||C D
fechaVencimiento||D T
,||T U
$str||V `
,||` a
CultureInfo||b m
.||m n
InvariantCulture||n ~
)||~ 
)	|| Ä
;
||Ä Å
_DTOObjetoGeneral1}} "
.}}" #
	FechaPago}}# ,
=}}- .
DateTime}}/ 7
.}}7 8

ParseExact}}8 B
(}}B C
Obj}}C F
.}}F G
fechaRecaudo}}G S
,}}S T
$str}}U _
,}}_ `
CultureInfo}}a l
.}}l m
InvariantCulture}}m }
)}}} ~
;}}~ 
_DTOObjetoGeneral1~~ "
.~~" #
	FormaPago~~# ,
=~~- .
(~~/ 0
(~~0 1
int~~1 4
)~~4 5
	FormaPago~~5 >
.~~> ?

PagoCheque~~? I
)~~I J
.~~J K
ToString~~K S
(~~S T
)~~T U
;~~U V
_DTOObjetoGeneral1 "
." #
HoraRecaudo# .
=/ 0
DateTime1 9
.9 :

ParseExact: D
(D E
ObjE H
.H I
horaRecaudoI T
,T U
$strV ^
,^ _
null` d
)d e
.e f
ToStringf n
(n o
$stro y
)y z
;z { 
_DTOObjetoGeneral1
ÄÄ "
.
ÄÄ" #
JornadaRecaudo
ÄÄ# 1
=
ÄÄ2 3
Obj
ÄÄ4 7
.
ÄÄ7 8
jornadaRecaudo
ÄÄ8 F
;
ÄÄF G 
_DTOObjetoGeneral1
ÅÅ "
.
ÅÅ" #
NumeroCheque
ÅÅ# /
=
ÅÅ0 1
Obj
ÅÅ2 5
.
ÅÅ5 6
numeroCheque
ÅÅ6 B
;
ÅÅB C 
_DTOObjetoGeneral1
ÇÇ "
.
ÇÇ" #
NumeroConvenio
ÇÇ# 1
=
ÇÇ2 3
Obj
ÇÇ4 7
.
ÇÇ7 8
numeroConvenio
ÇÇ8 F
;
ÇÇF G 
_DTOObjetoGeneral1
ÉÉ "
.
ÉÉ" #
Oficina
ÉÉ# *
=
ÉÉ+ ,
Obj
ÉÉ- 0
.
ÉÉ0 1
oficinaRecaudo
ÉÉ1 ?
;
ÉÉ? @ 
_DTOObjetoGeneral1
ÑÑ "
.
ÑÑ" #
Referencia1
ÑÑ# .
=
ÑÑ/ 0
Obj
ÑÑ1 4
.
ÑÑ4 5
referencia1
ÑÑ5 @
.
ÑÑ@ A
	TrimStart
ÑÑA J
(
ÑÑJ K
$char
ÑÑK N
)
ÑÑN O
;
ÑÑO P 
_DTOObjetoGeneral1
ÖÖ "
.
ÖÖ" #
Referencia2
ÖÖ# .
=
ÖÖ/ 0
Obj
ÖÖ1 4
.
ÖÖ4 5
referencia2
ÖÖ5 @
.
ÖÖ@ A
	TrimStart
ÖÖA J
(
ÖÖJ K
$char
ÖÖK N
)
ÖÖN O
;
ÖÖO P 
_DTOObjetoGeneral1
ÜÜ "
.
ÜÜ" #
TerminalRecaudo
ÜÜ# 2
=
ÜÜ3 4
Obj
ÜÜ5 8
.
ÜÜ8 9
terminalRecaudo
ÜÜ9 H
;
ÜÜH I 
_DTOObjetoGeneral1
áá "
.
áá" #
	TipoCanje
áá# ,
=
áá- .
Obj
áá/ 2
.
áá2 3
	tipoCanje
áá3 <
;
áá< = 
_DTOObjetoGeneral1
àà "
.
àà" #

TipoMoneda
àà# -
=
àà. /
Obj
àà0 3
.
àà3 4

tipoMoneda
àà4 >
;
àà> ? 
_DTOObjetoGeneral1
ââ "
.
ââ" #
ValorCheque
ââ# .
=
ââ/ 0
Obj
ââ1 4
.
ââ4 5
valorCheque
ââ5 @
;
ââ@ A 
_DTOObjetoGeneral1
ää "
.
ää" #
ValorEfectivo
ää# 0
=
ää1 2
	ValorCero
ää3 <
;
ää< = 
_DTOObjetoGeneral1
ãã "
.
ãã" #
ValorFactura
ãã# /
=
ãã0 1
Obj
ãã2 5
.
ãã5 6
valorFactura
ãã6 B
;
ããB C 
_DTOObjetoGeneral1
åå "
.
åå" #
TotalRecaudado
åå# 1
=
åå2 3
Decimal
åå4 ;
.
åå; <
Parse
åå< A
(
ååA B
Obj
ååB E
.
ååE F
valorCheque
ååF Q
,
ååQ R
NumberStyles
ååS _
.
åå_ `
AllowDecimalPoint
åå` q
)
ååq r
;
åår s 
_DTOObjetoGeneral1
éé "
.
éé" #
TipoRegistro
éé# /
=
éé0 1
(
éé2 3
(
éé3 4
int
éé4 7
)
éé7 8
TipoRegistro
éé8 D
.
ééD E
Contingencia
ééE Q
)
ééQ R
.
ééR S
ToString
ééS [
(
éé[ \
)
éé\ ]
;
éé] ^ 
_DTOObjetoGeneral1
èè "
.
èè" #
EstadoRecaudo
èè# 0
=
èè1 2
(
èè3 4
(
èè4 5
int
èè5 8
)
èè8 9
EstadoRecaudo
èè9 F
.
èèF G
BloqueadoCheque
èèG V
)
èèV W
.
èèW X
ToString
èèX `
(
èè` a
)
èèa b
;
èèb c
responseData
ëë 
.
ëë 
Add
ëë  
(
ëë  ! 
_DTOObjetoGeneral1
ëë! 3
)
ëë3 4
;
ëë4 5
}
íí 
DTOObjetoGeneral
îî 
_DTOObjetoGeneral
îî .
=
îî/ 0
new
îî1 4
DTOObjetoGeneral
îî5 E
(
îîE F
)
îîF G
;
îîG H
_DTOObjetoGeneral
ññ 
.
ññ 
CanalRecaudo
ññ *
=
ññ+ ,
Obj
ññ- 0
.
ññ0 1
canalRecaudo
ññ1 =
;
ññ= >
_DTOObjetoGeneral
óó 
.
óó 
CodigoBanco
óó )
=
óó* +
Obj
óó, /
.
óó/ 0
codigoBanco
óó0 ;
;
óó; <
_DTOObjetoGeneral
òò 
.
òò '
CodigoConfirmacionRecaudo
òò 7
=
òò8 9
Obj
òò: =
.
òò= >'
codigoConfirmacionRecaudo
òò> W
;
òòW X
_DTOObjetoGeneral
ôô 
.
ôô 
CodigoProducto
ôô ,
=
ôô- .
Obj
ôô/ 2
.
ôô2 3
	codigoIAC
ôô3 <
;
ôô< =
_DTOObjetoGeneral
öö 
.
öö 
FechaRecaudo
öö *
=
öö+ ,
Obj
öö- 0
.
öö0 1
fechaRecaudo
öö1 =
;
öö= >
_DTOObjetoGeneral
õõ 
.
õõ 
FechaVencimiento
õõ .
=
õõ/ 0
(
õõ1 2
Obj
õõ2 5
.
õõ5 6
numeroConvenio
õõ6 D
!=
õõE G
Configuraciones
õõH W
.
õõW X)
CodigoConvenioRecaudoBarras
õõX s
||
úú, .
string
úú/ 5
.
úú5 6
IsNullOrEmpty
úú6 C
(
úúC D
Obj
úúD G
.
úúG H
fechaVencimiento
úúH X
.
úúX Y
Trim
úúY ]
(
úú] ^
)
úú^ _
)
úú_ `
?
úúa b
DateTime
ùù, 4
.
ùù4 5

ParseExact
ùù5 ?
(
ùù? @
$str
ùù@ J
,
ùùJ K
$str
ùùL V
,
ùùV W
CultureInfo
ùùX c
.
ùùc d
InvariantCulture
ùùd t
)
ùùt u
:
ùùv w
DateTime
ûû, 4
.
ûû4 5

ParseExact
ûû5 ?
(
ûû? @
Obj
ûû@ C
.
ûûC D
fechaVencimiento
ûûD T
,
ûûT U
$str
ûûV `
,
ûû` a
CultureInfo
ûûb m
.
ûûm n
InvariantCulture
ûûn ~
)
ûû~ 
)ûû Ä
;ûûÄ Å
_DTOObjetoGeneral
üü 
.
üü 
	FechaPago
üü '
=
üü( )
DateTime
üü* 2
.
üü2 3

ParseExact
üü3 =
(
üü= >
Obj
üü> A
.
üüA B
fechaRecaudo
üüB N
,
üüN O
$str
üüP Z
,
üüZ [
CultureInfo
üü\ g
.
üüg h
InvariantCulture
üüh x
)
üüx y
;
üüy z
_DTOObjetoGeneral
†† 
.
†† 
	FormaPago
†† '
=
††( )
(
††* +
Obj
††+ .
.
††. /
	formaPago
††/ 8
.
††8 9
	TrimStart
††9 B
(
††B C
$char
††C F
)
††F G
.
††G H
Equals
††H N
(
††N O
$str
††O R
)
††R S
?
††T U
(
††V W
(
††W X
int
††X [
)
††[ \
	FormaPago
††\ e
.
††e f

PagoCheque
††f p
)
††p q
.
††q r
ToString
††r z
(
††z {
)
††{ |
:
††} ~
(†† Ä
(††Ä Å
int††Å Ñ
)††Ñ Ö
	FormaPago††Ö é
.††é è
PagoEfectivo††è õ
)††õ ú
.††ú ù
ToString††ù •
(††• ¶
)††¶ ß
)††ß ®
;††® ©
_DTOObjetoGeneral
°° 
.
°° 
HoraRecaudo
°° )
=
°°* +
DateTime
°°, 4
.
°°4 5

ParseExact
°°5 ?
(
°°? @
Obj
°°@ C
.
°°C D
horaRecaudo
°°D O
,
°°O P
$str
°°Q Y
,
°°Y Z
null
°°[ _
)
°°_ `
.
°°` a
ToString
°°a i
(
°°i j
$str
°°j t
)
°°t u
;
°°u v
_DTOObjetoGeneral
¢¢ 
.
¢¢ 
JornadaRecaudo
¢¢ ,
=
¢¢- .
Obj
¢¢/ 2
.
¢¢2 3
jornadaRecaudo
¢¢3 A
;
¢¢A B
_DTOObjetoGeneral
££ 
.
££ 
NumeroCheque
££ *
=
££+ ,
(
££- .
Obj
££. 1
.
££1 2
	formaPago
££2 ;
.
££; <
	TrimStart
££< E
(
££E F
$char
££F I
)
££I J
.
££J K
Equals
££K Q
(
££Q R
$str
££R U
)
££U V
?
££W X
Obj
££Y \
.
££\ ]
numeroCheque
££] i
:
££j k
$str
££l n
)
££n o
;
££o p
_DTOObjetoGeneral
§§ 
.
§§ 
NumeroConvenio
§§ ,
=
§§- .
Obj
§§/ 2
.
§§2 3
numeroConvenio
§§3 A
;
§§A B
_DTOObjetoGeneral
•• 
.
•• 
Oficina
•• %
=
••& '
Obj
••( +
.
••+ ,
oficinaRecaudo
••, :
.
••: ;
ToString
••; C
(
••C D
)
••D E
;
••E F
_DTOObjetoGeneral
¶¶ 
.
¶¶ 
Referencia1
¶¶ )
=
¶¶* +
Obj
¶¶, /
.
¶¶/ 0
referencia1
¶¶0 ;
.
¶¶; <
	TrimStart
¶¶< E
(
¶¶E F
$char
¶¶F I
)
¶¶I J
;
¶¶J K
_DTOObjetoGeneral
ßß 
.
ßß 
Referencia2
ßß )
=
ßß* +
Obj
ßß, /
.
ßß/ 0
referencia2
ßß0 ;
.
ßß; <
	TrimStart
ßß< E
(
ßßE F
$char
ßßF I
)
ßßI J
;
ßßJ K
_DTOObjetoGeneral
®® 
.
®® 
TerminalRecaudo
®® -
=
®®. /
Obj
®®0 3
.
®®3 4
terminalRecaudo
®®4 C
;
®®C D
_DTOObjetoGeneral
©© 
.
©© 
	TipoCanje
©© '
=
©©( )
Obj
©©* -
.
©©- .
	tipoCanje
©©. 7
;
©©7 8
_DTOObjetoGeneral
™™ 
.
™™ 

TipoMoneda
™™ (
=
™™) *
Obj
™™+ .
.
™™. /

tipoMoneda
™™/ 9
;
™™9 :
_DTOObjetoGeneral
´´ 
.
´´ 
ValorCheque
´´ )
=
´´* +
Obj
´´, /
.
´´/ 0
valorCheque
´´0 ;
;
´´; <
_DTOObjetoGeneral
¨¨ 
.
¨¨ 
ValorEfectivo
¨¨ +
=
¨¨, -
valorEfectivo
¨¨. ;
;
¨¨; <
_DTOObjetoGeneral
≠≠ 
.
≠≠ 
ValorFactura
≠≠ *
=
≠≠+ ,
Obj
≠≠- 0
.
≠≠0 1
valorFactura
≠≠1 =
;
≠≠= >
_DTOObjetoGeneral
ÆÆ 
.
ÆÆ 
TotalRecaudado
ÆÆ ,
=
ÆÆ- .
(
ÆÆ/ 0
Obj
ÆÆ0 3
.
ÆÆ3 4
	formaPago
ÆÆ4 =
.
ÆÆ= >
	TrimStart
ÆÆ> G
(
ÆÆG H
$char
ÆÆH K
)
ÆÆK L
.
ÆÆL M
Equals
ÆÆM S
(
ÆÆS T
$str
ÆÆT W
)
ÆÆW X
?
ÆÆY Z
Decimal
ÆÆ[ b
.
ÆÆb c
Parse
ÆÆc h
(
ÆÆh i
Obj
ÆÆi l
.
ÆÆl m
valorCheque
ÆÆm x
,
ÆÆx y
NumberStylesÆÆz Ü
.ÆÆÜ á!
AllowDecimalPointÆÆá ò
,ÆÆò ô
CultureInfoÆÆö •
.ÆÆ• ¶ 
InvariantCultureÆÆ¶ ∂
)ÆÆ∂ ∑
:ÆÆ∏ π
Decimal
ØØ8 ?
.
ØØ? @
Parse
ØØ@ E
(
ØØE F
valorEfectivo
ØØF S
,
ØØS T
NumberStyles
ØØU a
.
ØØa b
AllowDecimalPoint
ØØb s
)
ØØs t
)
ØØt u
;
ØØu v
_DTOObjetoGeneral
±± 
.
±± 
TipoRegistro
±± *
=
±±+ ,
(
±±- .
(
±±. /
int
±±/ 2
)
±±2 3
TipoRegistro
±±3 ?
.
±±? @
Recaudo
±±@ G
)
±±G H
.
±±H I
ToString
±±I Q
(
±±Q R
)
±±R S
;
±±S T
_DTOObjetoGeneral
≤≤ 
.
≤≤ 
EstadoRecaudo
≤≤ +
=
≤≤, -
(
≤≤. /
Obj
≤≤/ 2
.
≤≤2 3
	formaPago
≤≤3 <
.
≤≤< =
Trim
≤≤= A
(
≤≤A B
)
≤≤B C
.
≤≤C D
	TrimStart
≤≤D M
(
≤≤M N
$char
≤≤N Q
)
≤≤Q R
.
≤≤R S
Equals
≤≤S Y
(
≤≤Y Z
$str
≤≤Z ]
)
≤≤] ^
?
≤≤_ `
(
≤≤a b
(
≤≤b c
int
≤≤c f
)
≤≤f g
EstadoRecaudo
≤≤g t
.
≤≤t u
BloqueadoCheque≤≤u Ñ
)≤≤Ñ Ö
.≤≤Ö Ü
ToString≤≤Ü é
(≤≤é è
)≤≤è ê
:≤≤ë í
(≤≤ì î
(≤≤î ï
int≤≤ï ò
)≤≤ò ô
EstadoRecaudo≤≤ô ¶
.≤≤¶ ß
SinNotificarWs≤≤ß µ
)≤≤µ ∂
.≤≤∂ ∑
ToString≤≤∑ ø
(≤≤ø ¿
)≤≤¿ ¡
)≤≤¡ ¬
;≤≤¬ √
responseData
¥¥ 
.
¥¥ 
Add
¥¥ 
(
¥¥ 
_DTOObjetoGeneral
¥¥ .
)
¥¥. /
;
¥¥/ 0
return
µµ 
responseData
µµ 
;
µµ  
}
∂∂ 	
public
ΩΩ 
@return
ΩΩ ,
ConvertirDTOSalidaToObjetoPago
ΩΩ 5
(
ΩΩ5 6$
DTOObjetoGeneralSalida
ΩΩ6 L
ObjetoSalida
ΩΩM Y
)
ΩΩY Z
{
ææ 	
@return
øø 
	dtoReturn
øø 
=
øø 
new
øø  #
@return
øø$ +
{
¿¿ )
codigoRespuestaNotificacion
¡¡ +
=
¡¡, -
ObjetoSalida
¡¡. :
.
¡¡: ;
CodigoError
¡¡; F
,
¡¡F G
estadoFactura
¬¬ 
=
¬¬ 
ObjetoSalida
¬¬  ,
.
¬¬, -
Estado
¬¬- 3
,
¬¬3 4
fechaVencimiento
√√  
=
√√! "
ObjetoSalida
√√# /
.
√√/ 0
FechaVencimiento
√√0 @
,
√√@ A'
indicadorNotificacionPago
ƒƒ )
=
ƒƒ* +
ObjetoSalida
ƒƒ, 8
.
ƒƒ8 9
EstadoOperacion
ƒƒ9 H
.
ƒƒH I
ToString
ƒƒI Q
(
ƒƒQ R
)
ƒƒR S
,
ƒƒS T*
mensajeRespuestaNotificacion
≈≈ ,
=
≈≈- .
ObjetoSalida
≈≈/ ;
.
≈≈; <
DescripcionError
≈≈< L
,
≈≈L M
valorFactura
∆∆ 
=
∆∆ 
ObjetoSalida
∆∆ +
.
∆∆+ ,
ValorFactura
∆∆, 8
.
∆∆8 9
ToString
∆∆9 A
(
∆∆A B
)
∆∆B C
}
«« 
;
«« 
return
»» 
	dtoReturn
»» 
;
»» 
}
…… 	
}
ÃÃ 
}ÕÕ 