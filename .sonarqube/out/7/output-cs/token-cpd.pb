��
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
InvariantCulture	55p �
)
55� �
:
55� �
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
InvariantCulture	66z �
)
66� �
)
66� �
,
66� �
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
InvariantCulture	mmx �
)
mm� �
)
mm� �
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
)	nn �
)
nn� �
.
nn� �
ToString
nn� �
(
nn� �
)
nn� �
;
nn� �
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
)	|| �
;
||� �
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
�� "
.
��" #
JornadaRecaudo
��# 1
=
��2 3
Obj
��4 7
.
��7 8
jornadaRecaudo
��8 F
;
��F G 
_DTOObjetoGeneral1
�� "
.
��" #
NumeroCheque
��# /
=
��0 1
Obj
��2 5
.
��5 6
numeroCheque
��6 B
;
��B C 
_DTOObjetoGeneral1
�� "
.
��" #
NumeroConvenio
��# 1
=
��2 3
Obj
��4 7
.
��7 8
numeroConvenio
��8 F
;
��F G 
_DTOObjetoGeneral1
�� "
.
��" #
Oficina
��# *
=
��+ ,
Obj
��- 0
.
��0 1
oficinaRecaudo
��1 ?
;
��? @ 
_DTOObjetoGeneral1
�� "
.
��" #
Referencia1
��# .
=
��/ 0
Obj
��1 4
.
��4 5
referencia1
��5 @
.
��@ A
	TrimStart
��A J
(
��J K
$char
��K N
)
��N O
;
��O P 
_DTOObjetoGeneral1
�� "
.
��" #
Referencia2
��# .
=
��/ 0
Obj
��1 4
.
��4 5
referencia2
��5 @
.
��@ A
	TrimStart
��A J
(
��J K
$char
��K N
)
��N O
;
��O P 
_DTOObjetoGeneral1
�� "
.
��" #
TerminalRecaudo
��# 2
=
��3 4
Obj
��5 8
.
��8 9
terminalRecaudo
��9 H
;
��H I 
_DTOObjetoGeneral1
�� "
.
��" #
	TipoCanje
��# ,
=
��- .
Obj
��/ 2
.
��2 3
	tipoCanje
��3 <
;
��< = 
_DTOObjetoGeneral1
�� "
.
��" #

TipoMoneda
��# -
=
��. /
Obj
��0 3
.
��3 4

tipoMoneda
��4 >
;
��> ? 
_DTOObjetoGeneral1
�� "
.
��" #
ValorCheque
��# .
=
��/ 0
Obj
��1 4
.
��4 5
valorCheque
��5 @
;
��@ A 
_DTOObjetoGeneral1
�� "
.
��" #
ValorEfectivo
��# 0
=
��1 2
	ValorCero
��3 <
;
��< = 
_DTOObjetoGeneral1
�� "
.
��" #
ValorFactura
��# /
=
��0 1
Obj
��2 5
.
��5 6
valorFactura
��6 B
;
��B C 
_DTOObjetoGeneral1
�� "
.
��" #
TotalRecaudado
��# 1
=
��2 3
Decimal
��4 ;
.
��; <
Parse
��< A
(
��A B
Obj
��B E
.
��E F
valorCheque
��F Q
,
��Q R
NumberStyles
��S _
.
��_ `
AllowDecimalPoint
��` q
)
��q r
;
��r s 
_DTOObjetoGeneral1
�� "
.
��" #
TipoRegistro
��# /
=
��0 1
(
��2 3
(
��3 4
int
��4 7
)
��7 8
TipoRegistro
��8 D
.
��D E
Contingencia
��E Q
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
;
��] ^ 
_DTOObjetoGeneral1
�� "
.
��" #
EstadoRecaudo
��# 0
=
��1 2
(
��3 4
(
��4 5
int
��5 8
)
��8 9
EstadoRecaudo
��9 F
.
��F G
BloqueadoCheque
��G V
)
��V W
.
��W X
ToString
��X `
(
��` a
)
��a b
;
��b c
responseData
�� 
.
�� 
Add
��  
(
��  ! 
_DTOObjetoGeneral1
��! 3
)
��3 4
;
��4 5
}
�� 
DTOObjetoGeneral
�� 
_DTOObjetoGeneral
�� .
=
��/ 0
new
��1 4
DTOObjetoGeneral
��5 E
(
��E F
)
��F G
;
��G H
_DTOObjetoGeneral
�� 
.
�� 
CanalRecaudo
�� *
=
��+ ,
Obj
��- 0
.
��0 1
canalRecaudo
��1 =
;
��= >
_DTOObjetoGeneral
�� 
.
�� 
CodigoBanco
�� )
=
��* +
Obj
��, /
.
��/ 0
codigoBanco
��0 ;
;
��; <
_DTOObjetoGeneral
�� 
.
�� '
CodigoConfirmacionRecaudo
�� 7
=
��8 9
Obj
��: =
.
��= >'
codigoConfirmacionRecaudo
��> W
;
��W X
_DTOObjetoGeneral
�� 
.
�� 
CodigoProducto
�� ,
=
��- .
Obj
��/ 2
.
��2 3
	codigoIAC
��3 <
;
��< =
_DTOObjetoGeneral
�� 
.
�� 
FechaRecaudo
�� *
=
��+ ,
Obj
��- 0
.
��0 1
fechaRecaudo
��1 =
;
��= >
_DTOObjetoGeneral
�� 
.
�� 
FechaVencimiento
�� .
=
��/ 0
(
��1 2
Obj
��2 5
.
��5 6
numeroConvenio
��6 D
!=
��E G
Configuraciones
��H W
.
��W X)
CodigoConvenioRecaudoBarras
��X s
||
��, .
string
��/ 5
.
��5 6
IsNullOrEmpty
��6 C
(
��C D
Obj
��D G
.
��G H
fechaVencimiento
��H X
.
��X Y
Trim
��Y ]
(
��] ^
)
��^ _
)
��_ `
?
��a b
DateTime
��, 4
.
��4 5

ParseExact
��5 ?
(
��? @
$str
��@ J
,
��J K
$str
��L V
,
��V W
CultureInfo
��X c
.
��c d
InvariantCulture
��d t
)
��t u
:
��v w
DateTime
��, 4
.
��4 5

ParseExact
��5 ?
(
��? @
Obj
��@ C
.
��C D
fechaVencimiento
��D T
,
��T U
$str
��V `
,
��` a
CultureInfo
��b m
.
��m n
InvariantCulture
��n ~
)
��~ 
)�� �
;��� �
_DTOObjetoGeneral
�� 
.
�� 
	FechaPago
�� '
=
��( )
DateTime
��* 2
.
��2 3

ParseExact
��3 =
(
��= >
Obj
��> A
.
��A B
fechaRecaudo
��B N
,
��N O
$str
��P Z
,
��Z [
CultureInfo
��\ g
.
��g h
InvariantCulture
��h x
)
��x y
;
��y z
_DTOObjetoGeneral
�� 
.
�� 
	FormaPago
�� '
=
��( )
(
��* +
Obj
��+ .
.
��. /
	formaPago
��/ 8
.
��8 9
	TrimStart
��9 B
(
��B C
$char
��C F
)
��F G
.
��G H
Equals
��H N
(
��N O
$str
��O R
)
��R S
?
��T U
(
��V W
(
��W X
int
��X [
)
��[ \
	FormaPago
��\ e
.
��e f

PagoCheque
��f p
)
��p q
.
��q r
ToString
��r z
(
��z {
)
��{ |
:
��} ~
(�� �
(��� �
int��� �
)��� �
	FormaPago��� �
.��� �
PagoEfectivo��� �
)��� �
.��� �
ToString��� �
(��� �
)��� �
)��� �
;��� �
_DTOObjetoGeneral
�� 
.
�� 
HoraRecaudo
�� )
=
��* +
DateTime
��, 4
.
��4 5

ParseExact
��5 ?
(
��? @
Obj
��@ C
.
��C D
horaRecaudo
��D O
,
��O P
$str
��Q Y
,
��Y Z
null
��[ _
)
��_ `
.
��` a
ToString
��a i
(
��i j
$str
��j t
)
��t u
;
��u v
_DTOObjetoGeneral
�� 
.
�� 
JornadaRecaudo
�� ,
=
��- .
Obj
��/ 2
.
��2 3
jornadaRecaudo
��3 A
;
��A B
_DTOObjetoGeneral
�� 
.
�� 
NumeroCheque
�� *
=
��+ ,
(
��- .
Obj
��. 1
.
��1 2
	formaPago
��2 ;
.
��; <
	TrimStart
��< E
(
��E F
$char
��F I
)
��I J
.
��J K
Equals
��K Q
(
��Q R
$str
��R U
)
��U V
?
��W X
Obj
��Y \
.
��\ ]
numeroCheque
��] i
:
��j k
$str
��l n
)
��n o
;
��o p
_DTOObjetoGeneral
�� 
.
�� 
NumeroConvenio
�� ,
=
��- .
Obj
��/ 2
.
��2 3
numeroConvenio
��3 A
;
��A B
_DTOObjetoGeneral
�� 
.
�� 
Oficina
�� %
=
��& '
Obj
��( +
.
��+ ,
oficinaRecaudo
��, :
.
��: ;
ToString
��; C
(
��C D
)
��D E
;
��E F
_DTOObjetoGeneral
�� 
.
�� 
Referencia1
�� )
=
��* +
Obj
��, /
.
��/ 0
referencia1
��0 ;
.
��; <
	TrimStart
��< E
(
��E F
$char
��F I
)
��I J
;
��J K
_DTOObjetoGeneral
�� 
.
�� 
Referencia2
�� )
=
��* +
Obj
��, /
.
��/ 0
referencia2
��0 ;
.
��; <
	TrimStart
��< E
(
��E F
$char
��F I
)
��I J
;
��J K
_DTOObjetoGeneral
�� 
.
�� 
TerminalRecaudo
�� -
=
��. /
Obj
��0 3
.
��3 4
terminalRecaudo
��4 C
;
��C D
_DTOObjetoGeneral
�� 
.
�� 
	TipoCanje
�� '
=
��( )
Obj
��* -
.
��- .
	tipoCanje
��. 7
;
��7 8
_DTOObjetoGeneral
�� 
.
�� 

TipoMoneda
�� (
=
��) *
Obj
��+ .
.
��. /

tipoMoneda
��/ 9
;
��9 :
_DTOObjetoGeneral
�� 
.
�� 
ValorCheque
�� )
=
��* +
Obj
��, /
.
��/ 0
valorCheque
��0 ;
;
��; <
_DTOObjetoGeneral
�� 
.
�� 
ValorEfectivo
�� +
=
��, -
valorEfectivo
��. ;
;
��; <
_DTOObjetoGeneral
�� 
.
�� 
ValorFactura
�� *
=
��+ ,
Obj
��- 0
.
��0 1
valorFactura
��1 =
;
��= >
_DTOObjetoGeneral
�� 
.
�� 
TotalRecaudado
�� ,
=
��- .
(
��/ 0
Obj
��0 3
.
��3 4
	formaPago
��4 =
.
��= >
	TrimStart
��> G
(
��G H
$char
��H K
)
��K L
.
��L M
Equals
��M S
(
��S T
$str
��T W
)
��W X
?
��Y Z
Decimal
��[ b
.
��b c
Parse
��c h
(
��h i
Obj
��i l
.
��l m
valorCheque
��m x
,
��x y
NumberStyles��z �
.��� �!
AllowDecimalPoint��� �
,��� �
CultureInfo��� �
.��� � 
InvariantCulture��� �
)��� �
:��� �
Decimal
��8 ?
.
��? @
Parse
��@ E
(
��E F
valorEfectivo
��F S
,
��S T
NumberStyles
��U a
.
��a b
AllowDecimalPoint
��b s
)
��s t
)
��t u
;
��u v
_DTOObjetoGeneral
�� 
.
�� 
TipoRegistro
�� *
=
��+ ,
(
��- .
(
��. /
int
��/ 2
)
��2 3
TipoRegistro
��3 ?
.
��? @
Recaudo
��@ G
)
��G H
.
��H I
ToString
��I Q
(
��Q R
)
��R S
;
��S T
_DTOObjetoGeneral
�� 
.
�� 
EstadoRecaudo
�� +
=
��, -
(
��. /
Obj
��/ 2
.
��2 3
	formaPago
��3 <
.
��< =
Trim
��= A
(
��A B
)
��B C
.
��C D
	TrimStart
��D M
(
��M N
$char
��N Q
)
��Q R
.
��R S
Equals
��S Y
(
��Y Z
$str
��Z ]
)
��] ^
?
��_ `
(
��a b
(
��b c
int
��c f
)
��f g
EstadoRecaudo
��g t
.
��t u
BloqueadoCheque��u �
)��� �
.��� �
ToString��� �
(��� �
)��� �
:��� �
(��� �
(��� �
int��� �
)��� �
EstadoRecaudo��� �
.��� �
SinNotificarWs��� �
)��� �
.��� �
ToString��� �
(��� �
)��� �
)��� �
;��� �
responseData
�� 
.
�� 
Add
�� 
(
�� 
_DTOObjetoGeneral
�� .
)
��. /
;
��/ 0
return
�� 
responseData
�� 
;
��  
}
�� 	
public
�� 
@return
�� ,
ConvertirDTOSalidaToObjetoPago
�� 5
(
��5 6$
DTOObjetoGeneralSalida
��6 L
ObjetoSalida
��M Y
)
��Y Z
{
�� 	
@return
�� 
	dtoReturn
�� 
=
�� 
new
��  #
@return
��$ +
{
�� )
codigoRespuestaNotificacion
�� +
=
��, -
ObjetoSalida
��. :
.
��: ;
CodigoError
��; F
,
��F G
estadoFactura
�� 
=
�� 
ObjetoSalida
��  ,
.
��, -
Estado
��- 3
,
��3 4
fechaVencimiento
��  
=
��! "
ObjetoSalida
��# /
.
��/ 0
FechaVencimiento
��0 @
,
��@ A'
indicadorNotificacionPago
�� )
=
��* +
ObjetoSalida
��, 8
.
��8 9
EstadoOperacion
��9 H
.
��H I
ToString
��I Q
(
��Q R
)
��R S
,
��S T*
mensajeRespuestaNotificacion
�� ,
=
��- .
ObjetoSalida
��/ ;
.
��; <
DescripcionError
��< L
,
��L M
valorFactura
�� 
=
�� 
ObjetoSalida
�� +
.
��+ ,
ValorFactura
��, 8
.
��8 9
ToString
��9 A
(
��A B
)
��B C
}
�� 
;
�� 
return
�� 
	dtoReturn
�� 
;
�� 
}
�� 	
}
�� 
}�� 