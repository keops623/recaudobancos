∂
YC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\CachedXmlSerializer.cs
	namespace		 	
SoapCore		
 
{

 
public 
static 
class 
CachedXmlSerializer (
{ 
private 	
static
 
readonly  
ConcurrentDictionary .
<. /
string/ 5
,5 6
XmlSerializer7 D
>D E
CachedSerializersF W
=X Y
newZ ] 
ConcurrentDictionary^ r
<r s
strings y
,y z
XmlSerializer	{ à
>
à â
(
â ä
)
ä ã
;
ã å
public 
static	 
XmlSerializer 
GetXmlSerializer .
(. /
Type/ 3
elementType4 ?
,? @
stringA G
parameterNameH U
,U V
stringW ]
parameterNs^ i
)i j
{ 
var 
key 

= 
$" 
{ 
elementType 
} 
| 
{ 
parameterName +
}+ ,
|, -
{- .
parameterNs. 9
}9 :
": ;
;; <
return 	
CachedSerializers
 
. 
GetOrAdd $
($ %
key% (
,( )
_* +
=>, .
new/ 2
XmlSerializer3 @
(@ A
elementTypeA L
,L M
nullN R
,R S
ArrayT Y
.Y Z
EmptyZ _
<_ `
Type` d
>d e
(e f
)f g
,g h
newi l
XmlRootAttributem }
(} ~
parameterName	~ ã
)
ã å
,
å ç
parameterNs
é ô
)
ô ö
)
ö õ
;
õ ú
} 
} 
} Ò)
SC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\CustomMessage.cs
	namespace 	
SoapCore
 
{ 
public 
class 
CustomMessage 
: 
Message %
{ 
public		 
CustomMessage			 
(		 
)		 
{

 
} 
public 
CustomMessage	 
( 
Message 
message &
)& '
{ 
Message 

= 
message 
; 
} 
public 
Message	 
Message 
{ 
get 
; 
internal  (
set) ,
;, -
}. /
public 
XmlNamespaceManager	 
NamespaceManager -
{. /
get0 3
;3 4
internal5 =
set> A
;A B
}C D
=E F

NamespacesG Q
.Q R,
 CreateDefaultXmlNamespaceManagerR r
(r s
)s t
;t u
public 
override	 
MessageHeaders  
Headers! (
{ 
get 
{ 
return	 
Message 
. 
Headers 
;  
}! "
} 
public 
override	 
MessageProperties #

Properties$ .
{ 
get 
{ 
return	 
Message 
. 

Properties "
;" #
}$ %
} 
public   
override  	 
MessageVersion    
Version  ! (
{!! 
get"" 
{"" 
return""	 
Message"" 
."" 
Version"" 
;""  
}""! "
}## 
	protected%% 
override%% 
void%%  
OnWriteStartEnvelope%% .
(%%. /
XmlDictionaryWriter%%/ B
writer%%C I
)%%I J
{&& 
var'' 

namespaces'' 
='' 
NamespaceManager'' $
??''% '

Namespaces''( 2
.''2 3,
 CreateDefaultXmlNamespaceManager''3 S
(''S T
)''T U
;''U V
writer(( 	
.((	 

WriteStartDocument((
 
((( 
)(( 
;(( 
var)) 
prefix)) 
=)) 
Version)) 
.)) 
Envelope))  
.))  !
NamespacePrefix))! 0
())0 1

namespaces))1 ;
))); <
;))< =
writer** 	
.**	 

WriteStartElement**
 
(** 
prefix** "
,**" #
$str**$ .
,**. /
Version**0 7
.**7 8
Envelope**8 @
.**@ A
	Namespace**A J
(**J K
)**K L
)**L M
;**M N
writer++ 	
.++	 

WriteXmlnsAttribute++
 
(++ 
prefix++ $
,++$ %
Version++& -
.++- .
Envelope++. 6
.++6 7
	Namespace++7 @
(++@ A
)++A B
)++B C
;++C D
var-- 
	xsdPrefix-- 
=-- 

Namespaces-- 
.-- 7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix-- I
(--I J

namespaces--J T
,--T U
$str--V [
,--[ \

Namespaces--] g
.--g h
	XMLNS_XSD--h q
)--q r
;--r s
writer.. 	
...	 

WriteXmlnsAttribute..
 
(.. 
	xsdPrefix.. '
,..' (

Namespaces..) 3
...3 4
	XMLNS_XSD..4 =
)..= >
;..> ?
var00 
	xsiPrefix00 
=00 

Namespaces00 
.00 7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix00 I
(00I J

namespaces00J T
,00T U
$str00V [
,00[ \

Namespaces00] g
.00g h
	XMLNS_XSI00h q
)00q r
;00r s
writer11 	
.11	 

WriteXmlnsAttribute11
 
(11 
	xsiPrefix11 '
,11' (

Namespaces11) 3
.113 4
	XMLNS_XSI114 =
)11= >
;11> ?
}22 
	protected44 
override44 
void44 
OnWriteStartBody44 *
(44* +
XmlDictionaryWriter44+ >
writer44? E
)44E F
{55 
writer66 	
.66	 

WriteStartElement66
 
(66 
Version66 #
.66# $
Envelope66$ ,
.66, -
NamespacePrefix66- <
(66< =
NamespaceManager66= M
)66M N
,66N O
$str66P V
,66V W
Version66X _
.66_ `
Envelope66` h
.66h i
	Namespace66i r
(66r s
)66s t
)66t u
;66u v
}77 
	protected99 
override99 
void99 
OnWriteBodyContents99 -
(99- .
XmlDictionaryWriter99. A
writer99B H
)99H I
{:: 
Message;; 

.;;
 
WriteBodyContents;; 
(;; 
writer;; #
);;# $
;;;$ %
}<< 
}== 
}>> ß
fC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\DefaultFaultExceptionTransformer.cs
	namespace 	
SoapCore
 
{ 
public 
class ,
 DefaultFaultExceptionTransformer .
<. /
	T_MESSAGE/ 8
>8 9
:: ;&
IFaultExceptionTransformer< V
where 
	T_MESSAGE 
: 
CustomMessage !
,! "
new# &
(& '
)' (
{ 
private 	
readonly
  
ExceptionTransformer '!
_exceptionTransformer( =
;= >
public ,
 DefaultFaultExceptionTransformer	 )
() *
)* +
{ !
_exceptionTransformer 
= 
null 
;  
} 
public ,
 DefaultFaultExceptionTransformer	 )
() * 
ExceptionTransformer* > 
exceptionTransformer? S
)S T
{ !
_exceptionTransformer 
=  
exceptionTransformer /
;/ 0
} 
public 
Message	 
ProvideFault 
( 
	Exception '
	exception( 1
,1 2
MessageVersion3 A
messageVersionB P
,P Q
MessageR Y
requestMessageZ h
,h i
XmlNamespaceManagerj } 
xmlNamespaceManager	~ ë
)
ë í
{ 
var 

bodyWriter 
= !
_exceptionTransformer )
==* ,
null- 1
?2 3
new 
FaultBodyWriter 
( 
	exception !
,! "
messageVersion# 1
)1 2
:3 4
new 
FaultBodyWriter 
( 
	exception !
,! "
messageVersion# 1
,1 2
faultStringOverride3 F
:F G!
_exceptionTransformerH ]
.] ^
	Transform^ g
(g h
	exceptionh q
)q r
)r s
;s t
var!!  
soapCoreFaultMessage!! 
=!! 
Message!! %
.!!% &
CreateMessage!!& 3
(!!3 4
messageVersion!!4 B
,!!B C
null!!D H
,!!H I

bodyWriter!!J T
)!!T U
;!!U V
	T_MESSAGE## 
customMessage## 
=## 
new##  
	T_MESSAGE##! *
{$$ 
Message%% 
=%%  
soapCoreFaultMessage%% "
,%%" #
NamespaceManager&& 
=&& 
xmlNamespaceManager&& *
}'' 
;'' 
return)) 	
customMessage))
 
;)) 
}** 
}++ 
},, ò
]C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\DefaultOperationInvoker.cs
	namespace		 	
SoapCore		
 
{

 
public 
class #
DefaultOperationInvoker %
:& '
IOperationInvoker( 9
{ 
public 
async	 
Task 
< 
object 
> 
InvokeAsync '
(' (

MethodInfo( 2

methodInfo3 =
,= >
object? E
serviceInstanceF U
,U V
objectW ]
[] ^
]^ _
	arguments` i
)i j
{ 
var 
responseObject 
= 

methodInfo "
." #
Invoke# )
() *
serviceInstance* 9
,9 :
	arguments; D
)D E
;E F
if 
( 

methodInfo 
. 

ReturnType 
. $
IsConstructedGenericType 5
&&6 8

methodInfo9 C
.C D

ReturnTypeD N
.N O$
GetGenericTypeDefinitionO g
(g h
)h i
==j l
typeofm s
(s t
Taskt x
<x y
>y z
)z {
){ |
{ 
var 
responseTask 
= 
( 
Task 
) 
responseObject +
;+ ,
await 	
responseTask
 
; 
responseObject 
= 
responseTask !
.! "
GetType" )
() *
)* +
.+ ,
GetProperty, 7
(7 8
$str8 @
)@ A
.A B
GetValueB J
(J K
responseTaskK W
)W X
;X Y
} 
else 
if 

( 
responseObject 
is 
Task "
responseTask# /
)/ 0
{ 
await 	
responseTask
 
; 
responseObject 
= 
null 
; 
} 
return 	
responseObject
 
; 
}   
}!! 
}"" ì
_C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\EnvelopeVersionExtentions.cs
	namespace 	
SoapCore
 
{ 
public 
static 
class %
EnvelopeVersionExtentions .
{ 
public 
static	 
string 
	Namespace  
(  !
this! %
EnvelopeVersion& 5
envelopeVersion6 E
)E F
{		 
if

 
(

 
envelopeVersion

 
==

 
EnvelopeVersion

 )
.

) *
Soap11

* 0
)

0 1
{ 
return 


Namespaces 
. 
SOAP11_ENVELOPE_NS (
;( )
} 
return 	

Namespaces
 
. 
SOAP12_ENVELOPE_NS '
;' (
} 
public 
static	 
string 
NamespacePrefix &
(& '
this' +
EnvelopeVersion, ;
envelopeVersion< K
,K L
XmlNamespaceManagerM `

namespacesa k
)k l
{ 
string 	
prefix
 
; 
if 
( 
envelopeVersion 
== 
EnvelopeVersion )
.) *
Soap11* 0
)0 1
{ 
prefix 

= 

Namespaces 
. 7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix C
(C D

namespacesD N
,N O
$strP S
,S T

NamespacesU _
._ `
SOAP11_ENVELOPE_NS` r
)r s
;s t
return 

prefix 
; 
} 
prefix 	
=
 

Namespaces 
. 7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix B
(B C

namespacesC M
,M N
$strO R
,R S

NamespacesT ^
.^ _
SOAP12_ENVELOPE_NS_ q
)q r
;r s
return 	
prefix
 
; 
} 
} 
} —
hC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\ExceptionTransformer.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public 
class  
ExceptionTransformer "
{ 
private 	
readonly
 
Func 
< 
	Exception !
,! "
string# )
>) *
_transformer+ 7
;7 8
public		  
ExceptionTransformer			 
(		 
Func		 "
<		" #
	Exception		# ,
,		, -
string		. 4
>		4 5
transformer		6 A
)		A B
{

 
_transformer 
= 
transformer 
; 
} 
public 
string	 
	Transform 
( 
	Exception #
ex$ &
)& '
{ 
return 	
_transformer
 
( 
ex 
) 
; 
} 
} 
} ’
gC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\IAsyncMessageFilter.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public 
	interface 
IAsyncMessageFilter %
{ 
Task 
OnRequestExecuting 
( 
Message !
message" )
)) *
;* +
Task		 
OnResponseExecuting		 
(		 
Message		 "
message		# *
)		* +
;		+ ,
}

 
} ∑
nC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\IFaultExceptionTransformer.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public

 
	interface

 &
IFaultExceptionTransformer

 ,
{ 
Message 	
ProvideFault
 
( 
	Exception  
	exception! *
,* +
MessageVersion, :
messageVersion; I
,I J
MessageK R
requestMessageS a
,a b
XmlNamespaceManagerc v 
xmlNamespaceManager	w ä
)
ä ã
;
ã å
} 
} À
bC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\IMessageFilter.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public 
	interface 
IMessageFilter  
{ 
void 
OnRequestExecuting 
( 
Message !
message" )
)) *
;* +
void 
OnResponseExecuting 
( 
Message "
message# *
)* +
;+ ,
}		 
}

 ±
eC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\IMessageInspector.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public 
	interface 
IMessageInspector #
{ 
object 
AfterReceiveRequest	 
( 
ref  
Message! (
message) 0
)0 1
;1 2
void 
BeforeSendReply 
( 
ref 
Message "
reply# (
,( )
object* 0
correlationState1 A
)A B
;B C
}		 
}

 —
fC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\IMessageInspector2.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public 
	interface 
IMessageInspector2 $
{ 
object 
AfterReceiveRequest	 
( 
ref  
Message! (
message) 0
,0 1
ServiceDescription2 D
serviceDescriptionE W
)W X
;X Y
void		 
BeforeSendReply		 
(		 
ref		 
Message		 "
reply		# (
,		( )
ServiceDescription		* <
serviceDescription		= O
,		O P
object		Q W
correlationState		X h
)		h i
;		i j
}

 
} å
gC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\IModelBindingFilter.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public 
	interface 
IModelBindingFilter %
{ 
List 
< 
Type 
> 

ModelTypes 
{ 
get 
; 
set "
;" #
}$ %
void		 
OnModelBound		 
(		 
object		 
model		  
,		  !
IServiceProvider		" 2
serviceProvider		3 B
,		B C
out		D G
object		H N
output		O U
)		U V
;		V W
}

 
} Ü
eC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\IOperationInvoker.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public 
	interface 
IOperationInvoker #
{ 
Task 
< 
object 
> 
InvokeAsync 
( 

MethodInfo %

methodInfo& 0
,0 1
object2 8
instance9 A
,A B
objectC I
[I J
]J K
inputsL R
)R S
;S T
}		 
}

 ”
jC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\IServiceOperationTuner.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public		 
	interface		 "
IServiceOperationTuner		 (
{

 
void 
Tune 
( 
HttpContext 
httpContext #
,# $
object% +
serviceInstance, ;
,; < 
OperationDescription= Q
	operationR [
)[ \
;\ ]
} 
} ö
eC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Extensibility\ISoapModelBounder.cs
	namespace 	
SoapCore
 
. 
Extensibility  
{ 
public 
	interface 
ISoapModelBounder #
{ 
void 
OnModelBound 
( 

MethodInfo 

methodInfo )
,) *
object+ 1
[1 2
]2 3
prms4 8
)8 9
;9 :
} 
}		 îp
UC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\FaultBodyWriter.cs
	namespace		 	
SoapCore		
 
{

 
public 
class 
FaultBodyWriter 
: 

BodyWriter  *
{ 
private 	
readonly
 
MessageVersion !
_version" *
;* +
private 	
readonly
 
	Exception 

_exception '
;' (
private 	
readonly
 
string  
_faultStringOverride .
;. /
public 
FaultBodyWriter	 
( 
	Exception "
	exception# ,
,, -
MessageVersion. <
version= D
,D E
boolF J

isBufferedK U
=V W
trueX \
,\ ]
string^ d
faultStringOverridee x
=y z
null{ 
)	 Ä
:
Å Ç
base
É á
(
á à

isBuffered
à í
)
í ì
{ 
_version 
= 
version 
; 

_exception 
= 
	exception 
;  
_faultStringOverride 
= 
faultStringOverride -
;- .
} 
	protected 
override 
void 
OnWriteBodyContents -
(- .
XmlDictionaryWriter. A
writerB H
)H I
{ 
if 
( 
_version 
. 
Envelope 
== 
EnvelopeVersion +
.+ ,
Soap12, 2
)2 3
{ 
WriteSoap12Fault 
( 
writer 
) 
; 
} 
else 
if 

( 
_version 
. 
Envelope 
==  
EnvelopeVersion! 0
.0 1
Soap111 7
)7 8
{ 
WriteSoap11Fault   
(   
writer   
)   
;   
}!! 
else"" 
{## 
WriteSoap11Fault&& 
(&& 
writer&& 
)&& 
;&& 
}'' 
}(( 
private** 	
void**
 
WriteSoap12Fault** 
(**  
XmlDictionaryWriter**  3
writer**4 :
)**: ;
{++ 
var.. 
defaultCulture.. 
=.. 
CultureInfo.. #
...# $
CurrentCulture..$ 2
;..2 3
var00 
faultString00 
=00  
_faultStringOverride00 )
??00* ,
(00- .

_exception00. 8
.008 9
InnerException009 G
!=00H J
null00K O
?00P Q

_exception00R \
.00\ ]
InnerException00] k
.00k l
Message00l s
:00t u

_exception	00v Ä
.
00Ä Å
Message
00Å à
)
00à â
;
00â ä
var11 
faultDetail11 
=11 +
ExtractFaultDetailsAsXmlElement11 4
(114 5

_exception115 ?
)11? @
;11@ A
var22 
prefix22 
=22 
writer22 
.22 
LookupPrefix22 #
(22# $

Namespaces22$ .
.22. /
SOAP12_ENVELOPE_NS22/ A
)22A B
??22C E
$str22F I
;22I J
writer44 	
.44	 

WriteStartElement44
 
(44 
prefix44 "
,44" #
$str44$ +
,44+ ,

Namespaces44- 7
.447 8
SOAP12_ENVELOPE_NS448 J
)44J K
;44K L
writer66 	
.66	 

WriteStartElement66
 
(66 
prefix66 "
,66" #
$str66$ *
,66* +

Namespaces66, 6
.666 7
SOAP12_ENVELOPE_NS667 I
)66I J
;66J K
writer77 	
.77	 

WriteStartElement77
 
(77 
prefix77 "
,77" #
$str77$ +
,77+ ,

Namespaces77- 7
.777 8
SOAP12_ENVELOPE_NS778 J
)77J K
;77K L
writer88 	
.88	 

WriteString88
 
(88 
prefix88 
+88 
$str88 (
)88( )
;88) *
writer99 	
.99	 

WriteEndElement99
 
(99 
)99 
;99 
writer:: 	
.::	 

WriteEndElement::
 
(:: 
):: 
;:: 
writer<< 	
.<<	 

WriteStartElement<<
 
(<< 
prefix<< "
,<<" #
$str<<$ ,
,<<, -

Namespaces<<. 8
.<<8 9
SOAP12_ENVELOPE_NS<<9 K
)<<K L
;<<L M
writer== 	
.==	 

WriteStartElement==
 
(== 
prefix== "
,==" #
$str==$ *
,==* +

Namespaces==, 6
.==6 7
SOAP12_ENVELOPE_NS==7 I
)==I J
;==J K
writer?? 	
.??	 
 
WriteAttributeString??
 
(?? 
$str?? $
,??$ %
$str??& ,
,??, -
null??. 2
,??2 3
defaultCulture??4 B
.??B C
IetfLanguageTag??C R
)??R S
;??S T
writer@@ 	
.@@	 

WriteString@@
 
(@@ 
faultString@@ !
)@@! "
;@@" #
writerBB 	
.BB	 

WriteEndElementBB
 
(BB 
)BB 
;BB 
writerCC 	
.CC	 

WriteEndElementCC
 
(CC 
)CC 
;CC 
ifEE 
(EE 
faultDetailEE 
!=EE 
nullEE 
)EE 
{FF 
writerGG 

.GG
 
WriteStartElementGG 
(GG 
prefixGG #
,GG# $
$strGG% -
,GG- .

NamespacesGG/ 9
.GG9 :
SOAP12_ENVELOPE_NSGG: L
)GGL M
;GGM N
faultDetailHH 
.HH 
WriteToHH 
(HH 
writerHH 
)HH 
;HH  
writerII 

.II
 
WriteEndElementII 
(II 
)II 
;II 
}JJ 
writerLL 	
.LL	 

WriteEndElementLL
 
(LL 
)LL 
;LL 
}MM 
privateOO 	
voidOO
 
WriteSoap11FaultOO 
(OO  
XmlDictionaryWriterOO  3
writerOO4 :
)OO: ;
{PP 
varQQ 
faultStringQQ 
=QQ  
_faultStringOverrideQQ )
??QQ* ,
(QQ- .

_exceptionQQ. 8
.QQ8 9
InnerExceptionQQ9 G
!=QQH J
nullQQK O
?QQP Q

_exceptionQQR \
.QQ\ ]
InnerExceptionQQ] k
.QQk l
MessageQQl s
:QQt u

_exception	QQv Ä
.
QQÄ Å
Message
QQÅ à
)
QQà â
;
QQâ ä
varRR 
faultDetailRR 
=RR +
ExtractFaultDetailsAsXmlElementRR 4
(RR4 5

_exceptionRR5 ?
)RR? @
;RR@ A
writerTT 	
.TT	 

WriteStartElementTT
 
(TT 
$strTT #
,TT# $

NamespacesTT% /
.TT/ 0
SOAP11_ENVELOPE_NSTT0 B
)TTB C
;TTC D
ifVV 
(VV 

_exceptionVV 
isVV 
FaultExceptionVV #
)VV# $
{WW 
varXX 
faultExceptionXX 
=XX 
(XX 
FaultExceptionXX (
)XX( )

_exceptionXX) 3
;XX3 4
ifYY 
(YY 
faultExceptionYY 
!=YY 
nullYY 
&&YY !
faultExceptionYY" 0
.YY0 1
CodeYY1 5
!=YY6 8
nullYY9 =
&&YY> @
!YYA B
stringYYB H
.YYH I
IsNullOrEmptyYYI V
(YYV W
faultExceptionYYW e
.YYe f
CodeYYf j
.YYj k
NameYYk o
)YYo p
)YYp q
{ZZ 
if[[ 
([[ 	
![[	 

string[[
 
.[[ 
IsNullOrEmpty[[ 
([[ 
faultException[[ -
.[[- .
Code[[. 2
.[[2 3
	Namespace[[3 <
)[[< =
)[[= >
{\\ 
writer]] 
.]] 
WriteElementString]] 
(]]  
$str]]  #
,]]# $
$str]]% 0
,]]0 1
faultException]]2 @
.]]@ A
Code]]A E
.]]E F
	Namespace]]F O
,]]O P
$str]]Q U
+]]V W
faultException]]X f
.]]f g
Code]]g k
.]]k l
Name]]l p
)]]p q
;]]q r
}^^ 
else__ 	
{`` 
writeraa 
.aa 
WriteElementStringaa 
(aa  
$straa  +
,aa+ ,
$straa- 1
+aa2 3
faultExceptionaa4 B
.aaB C
CodeaaC G
.aaG H
NameaaH L
)aaL M
;aaM N
}bb 
}cc 
elsedd 
{ee 
writerff 
.ff 
WriteElementStringff 
(ff 
$strff *
,ff* +
$strff, 6
)ff6 7
;ff7 8
}gg 
}hh 
elseii 
{jj 
writerkk 

.kk
 
WriteElementStringkk 
(kk 
$strkk )
,kk) *
$strkk+ 5
)kk5 6
;kk6 7
}ll 
writernn 	
.nn	 

WriteElementStringnn
 
(nn 
$strnn *
,nn* +
faultStringnn, 7
)nn7 8
;nn8 9
ifpp 
(pp 
faultDetailpp 
!=pp 
nullpp 
)pp 
{qq 
writerrr 

.rr
 
WriteStartElementrr 
(rr 
$strrr %
)rr% &
;rr& '
faultDetailss 
.ss 
WriteToss 
(ss 
writerss 
)ss 
;ss  
writertt 

.tt
 
WriteEndElementtt 
(tt 
)tt 
;tt 
}uu 
writerww 	
.ww	 

WriteEndElementww
 
(ww 
)ww 
;ww 
}xx 
privatezz 	

XmlElementzz
 +
ExtractFaultDetailsAsXmlElementzz 4
(zz4 5
	Exceptionzz5 >
exzz? A
)zzA B
{{{ 
var|| 
detailObject|| 
=|| 
ExtractFaultDetail|| (
(||( )
ex||) +
)||+ ,
;||, -
if~~ 
(~~ 
detailObject~~ 
==~~ 
null~~ 
)~~ 
{ 
return
ÄÄ 

null
ÄÄ 
;
ÄÄ 
}
ÅÅ 
using
ÉÉ 
(
ÉÉ	 

var
ÉÉ
 
ms
ÉÉ 
=
ÉÉ 
new
ÉÉ 
MemoryStream
ÉÉ #
(
ÉÉ# $
)
ÉÉ$ %
)
ÉÉ% &
{
ÑÑ 
var
ÖÖ 

serializer
ÖÖ 
=
ÖÖ 
new
ÖÖ $
DataContractSerializer
ÖÖ /
(
ÖÖ/ 0
detailObject
ÖÖ0 <
.
ÖÖ< =
GetType
ÖÖ= D
(
ÖÖD E
)
ÖÖE F
)
ÖÖF G
;
ÖÖG H

serializer
ÜÜ 
.
ÜÜ 
WriteObject
ÜÜ 
(
ÜÜ 
ms
ÜÜ 
,
ÜÜ 
detailObject
ÜÜ +
)
ÜÜ+ ,
;
ÜÜ, -
ms
áá 
.
áá 
Position
áá 
=
áá 
$num
áá 
;
áá 
var
àà 
doc
àà 
=
àà 
new
àà 
XmlDocument
àà 
(
àà 
)
àà 
;
àà  
doc
ââ 
.
ââ 
Load
ââ 
(
ââ 
ms
ââ 
)
ââ 
;
ââ 
return
ää 

doc
ää 
.
ää 
DocumentElement
ää 
;
ää 
}
ãã 
}
åå 
private
òò 	
object
òò
  
ExtractFaultDetail
òò #
(
òò# $
	Exception
òò$ -
	exception
òò. 7
)
òò7 8
{
ôô 
try
öö 
{
õõ 
var
úú 
currentException
úú 
=
úú 
	exception
úú $
;
úú$ %
while
ûû 	
(
ûû
 
currentException
ûû 
!=
ûû 
null
ûû #
)
ûû# $
{
üü 
var
†† 
type
††	 
=
†† 
currentException
††  
.
††  !
GetType
††! (
(
††( )
)
††) *
;
††* +
if
¢¢ 
(
¢¢ 	
type
¢¢	 
.
¢¢ 
IsGenericType
¢¢ 
&&
¢¢ 
type
¢¢ #
.
¢¢# $&
GetGenericTypeDefinition
¢¢$ <
(
¢¢< =
)
¢¢= >
==
¢¢? A
typeof
¢¢B H
(
¢¢H I
FaultException
¢¢I W
<
¢¢W X
>
¢¢X Y
)
¢¢Y Z
)
¢¢Z [
{
££ 
var
§§ 	

detailInfo
§§
 
=
§§ 
type
§§ 
.
§§ 
GetProperty
§§ '
(
§§' (
$str
§§( 0
)
§§0 1
;
§§1 2
var
•• 	
value
••
 
=
•• 

detailInfo
•• 
?
•• 
.
•• 
GetValue
•• &
(
••& '
currentException
••' 7
)
••7 8
;
••8 9
if
ßß 
(
ßß	 

value
ßß
 
!=
ßß 
null
ßß 
)
ßß 
{
®® 
return
©© 
value
©© 
;
©© 
}
™™ 
}
´´ 
currentException
≠≠ 
=
≠≠ 
currentException
≠≠ (
.
≠≠( )
InnerException
≠≠) 7
;
≠≠7 8
}
ÆÆ 
}
ØØ 
catch
∞∞ 
{
±± 
return
≤≤ 

null
≤≤ 
;
≤≤ 
}
≥≥ 
return
µµ 	
null
µµ
 
;
µµ 
}
∂∂ 
}
∑∑ 
}∏∏ õA
SC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\HeadersHelper.cs
	namespace 	
SoapCore
 
{ 
internal		 	
static		
 
class		 
HeadersHelper		 $
{

 
private 	
static
 
readonly 
char 
[ 
]  !
ContentTypeSeparators! 6
=7 8
new9 <
[< =
]= >
{? @
$charA D
}E F
;F G
[ 

MethodImpl 
( 
MethodImplOptions 
.  
AggressiveInlining  2
)2 3
]3 4
public 
static	 
string 
GetSoapAction $
($ %
HttpContext% 0
httpContext1 <
,< =
System> D
.D E
XmlE H
.H I
XmlDictionaryReaderI \
reader] c
)c d
{ 
var 

soapAction 
= 
httpContext 
.  
Request  '
.' (
Headers( /
[/ 0
$str0 <
]< =
.= >
FirstOrDefault> L
(L M
)M N
;N O
if 
( 

soapAction 
== 
$str 
) 
{ 

soapAction 
= 
string 
. 
Empty 
; 
} 
if 
( 
string 
. 
IsNullOrEmpty 
( 

soapAction &
)& '
)' (
{ 
var 
contentTypes 
= 
GetContentTypes &
(& '
httpContext' 2
)2 3
;3 4
foreach 
( 
string 

headerItem 
in !
contentTypes" .
). /
{ 
int 
i	 

= 
$num 
; 
while   

(   
i   
<   

headerItem   
.   
Length   !
&&  " $

headerItem  % /
[  / 0
i  0 1
]  1 2
==  3 5
$char  6 9
)  9 :
{!! 
i"" 
++"" 	
;""	 

}## 
if%% 
(%% 	

headerItem%%	 
.%% 
Length%% 
-%% 
i%% 
<%%  
$num%%! "
)%%" #
{&& 
continue'' 
;'' 
}(( 
if++ 
(++ 	

headerItem++	 
[++ 
i++ 
+++ 
$num++ 
]++ 
==++ 
$char++ !
&&,, 

headerItem,,	 
[,, 
i,, 
+,, 
$num,, 
],, 
==,, 
$char,, !
&&-- 

headerItem--	 
[-- 
i-- 
+-- 
$num-- 
]-- 
==-- 
$char-- !
&&.. 

headerItem..	 
[.. 
i.. 
+.. 
$num.. 
].. 
==.. 
$char.. !
&&// 

headerItem//	 
[// 
i// 
+// 
$num// 
]// 
==// 
$char// !
&&00 

headerItem00	 
[00 
i00 
+00 
$num00 
]00 
==00 
$char00 !
)00! "
{11 
i22 
+=22 

$num22 
;22 
while55 
(55 
i55 
<55 

headerItem55 
.55 
Length55 "
&&55# %

headerItem55& 0
[550 1
i551 2
]552 3
==554 6
$char557 :
)55: ;
{66 
i77 
++77 

;77
 
}88 
if:: 
(::	 


headerItem::
 
[:: 
i:: 
]:: 
==:: 
$char:: 
):: 
{;; 
i<< 
++<< 

;<<
 
while?? 
(?? 
i?? 
<?? 

headerItem?? 
.?? 
Length?? #
&&??$ &

headerItem??' 1
[??1 2
i??2 3
]??3 4
==??5 7
$char??8 ;
)??; <
{@@ 
iAA 	
++AA	 
;AA 
}BB 
ifEE 	
(EE
 

headerItemEE 
[EE 
iEE 
]EE 
==EE 
$charEE 
)EE  
{FF 
iGG 	
++GG	 
;GG 
intHH 
offsetHH 
=HH 
iHH 
;HH 
whileII 
(II 
iII 
<II 

headerItemII 
.II 
LengthII $
&&II% '

headerItemII( 2
[II2 3
iII3 4
]II4 5
!=II6 8
$charII9 <
)II< =
{JJ 	
iKK	 

++KK
 
;KK 
}LL 	
ifNN 

(NN 
iNN 
<NN 

headerItemNN 
.NN 
LengthNN !
&&NN" $

headerItemNN% /
[NN/ 0
iNN0 1
]NN1 2
==NN3 5
$charNN6 9
)NN9 :
{OO 	
varPP	 
charrayPP 
=PP 

headerItemPP !
.PP! "
ToCharArrayPP" -
(PP- .
)PP. /
;PP/ 0

soapActionQQ	 
=QQ 
newQQ 
stringQQ  
(QQ  !
charrayQQ! (
,QQ( )
offsetQQ* 0
,QQ0 1
iQQ2 3
-QQ4 5
offsetQQ6 <
)QQ< =
;QQ= >
breakRR	 
;RR 
}SS 	
}TT 
}UU 
}VV 
}WW 
ifYY 
(YY 
stringYY 
.YY 
IsNullOrEmptyYY 
(YY 

soapActionYY '
)YY' (
&&YY) +
readerYY, 2
!=YY3 5
nullYY6 :
)YY: ;
{ZZ 

soapAction[[ 
=[[ 
reader[[ 
.[[ 
	LocalName[[ "
;[[" #
}\\ 
}]] 
if__ 
(__ 
!__ 
string__ 
.__ 
IsNullOrEmpty__ 
(__ 

soapAction__ '
)__' (
)__( )
{`` 

soapActionbb 
=bb 

soapActionbb 
.bb 
Trimbb  
(bb  !
$charbb! $
)bb$ %
;bb% &
}cc 
returnee 	

soapActionee
 
;ee 
}ff 
publichh 
statichh	 
stringhh  
GetTrimmedSoapActionhh +
(hh+ ,
stringhh, 2
inSoapActionhh3 ?
)hh? @
{ii 
stringjj 	

soapActionjj
 
=jj 
inSoapActionjj #
;jj# $
ifkk 
(kk 

soapActionkk 
.kk 
Containskk 
(kk 
$charkk 
)kk 
)kk  
{ll 

soapActionnn 
=nn 

soapActionnn 
.nn 
Splitnn !
(nn! "
$charnn" %
)nn% &
.nn& '
Lastnn' +
(nn+ ,
)nn, -
;nn- .
}oo 
returnqq 	

soapActionqq
 
;qq 
}rr 
privatett 	
statictt
 
IEnumerablett 
<tt 
stringtt #
>tt# $
GetContentTypestt% 4
(tt4 5
HttpContexttt5 @
httpContextttA L
)ttL M
{uu 
returnww 	
httpContextww
 
.ww 
Requestww 
.ww 
Headersww %
[ww% &
$strww& 4
]ww4 5
.xx 

SelectManyxx 
(xx 
cxx 
=>xx 
cxx 
.xx 
Splitxx 
(xx !
ContentTypeSeparatorsxx 2
,xx2 3
StringSplitOptionsxx4 F
.xxF G
RemoveEmptyEntriesxxG Y
)xxY Z
)xxZ [
;xx[ \
}yy 
}zz 
}{{ øÅ
eC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\MessageEncoder\BufferTextWriter.cs
	namespace 	
SoapCore
 
. 
MessageEncoder !
{ 
public 
class 
BufferTextWriter 
:  

TextWriter! +
{ 
private 	
readonly
 
char 
[ 
] 
_charBuffer %
=& '
new( +
char, 0
[0 1
$num1 4
]4 5
;5 6
private   	
IBufferWriter  
 
<   
byte   
>   
_bufferWriter   +
;  + ,
private%% 	
Memory%%
 
<%% 
byte%% 
>%% 
_memory%% 
;%% 
private** 	
int**
 
_memoryPosition** 
;** 
private// 	
int//
 
_charBufferPosition// !
;//! "
private44 	
bool44
 
_preambleWritten44 
;44  
private99 	
Encoding99
 
	_encoding99 
;99 
privateBB 	
ReadOnlyMemoryBB
 
<BB 
byteBB 
>BB 
_encodingPreambleBB 0
;BB0 1
privateGG 	
EncoderGG
 
_encoderGG 
;GG 
publicNN 
BufferTextWriterNN	 
(NN 
IBufferWriterNN '
<NN' (
byteNN( ,
>NN, -
bufferWriterNN. :
,NN: ;
EncodingNN< D
encodingNNE M
)NNM N
{OO 

InitializePP 
(PP 
bufferWriterPP 
,PP 
encodingPP $
)PP$ %
;PP% &
}QQ 
publicTT 
overrideTT	 
EncodingTT 
EncodingTT #
=>TT$ &
	_encodingTT' 0
;TT0 1
privateYY 	
intYY
 
CharBufferSlackYY 
=>YY  
_charBufferYY! ,
.YY, -
LengthYY- 3
-YY4 5
_charBufferPositionYY6 I
;YYI J
public`` 
void``	 

Initialize`` 
(`` 
IBufferWriter`` &
<``& '
byte``' +
>``+ ,
bufferWriter``- 9
,``9 :
Encoding``; C
encoding``D L
)``L M
{aa 
Requiresbb 
.bb 
NotNullbb 
(bb 
bufferWriterbb  
,bb  !
nameofbb" (
(bb( )
bufferWriterbb) 5
)bb5 6
)bb6 7
;bb7 8
Requirescc 
.cc 
NotNullcc 
(cc 
encodingcc 
,cc 
nameofcc $
(cc$ %
encodingcc% -
)cc- .
)cc. /
;cc/ 0
Verifyee 	
.ee	 

	Operationee
 
(ee 
_memoryPositionee #
==ee$ &
$numee' (
&&ee) +
_charBufferPositionee, ?
==ee@ B
$numeeC D
,eeD E
$str	eeF Å
)
eeÅ Ç
;
eeÇ É
_preambleWrittengg 
=gg 
falsegg 
;gg 
_bufferWriterhh 
=hh 
bufferWriterhh 
;hh  
ifii 
(ii 
encodingii 
!=ii 
	_encodingii 
)ii 
{jj 
	_encodingkk 
=kk 
encodingkk 
;kk 
_encoderll 
=ll 
	_encodingll 
.ll 

GetEncoderll #
(ll# $
)ll$ %
;ll% &
_encodingPreamblemm 
=mm 
	_encodingmm !
.mm! "
GetPreamblemm" -
(mm- .
)mm. /
;mm/ 0
}nn 
elseoo 
{pp 
_encoderrr 
.rr 
Resetrr 
(rr 
)rr 
;rr 
}ss 
}tt 
publicyy 
voidyy	 
Resetyy 
(yy 
)yy 
{zz 
_bufferWriter{{ 
={{ 
null{{ 
;{{ 
}|| 
public 
override	 
void 
Flush 
( 
) 
{
ÄÄ #
ThrowIfNotInitialized
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
EncodeCharacters
ÇÇ 
(
ÇÇ 
flushEncoder
ÇÇ  
:
ÇÇ  !
true
ÇÇ" &
)
ÇÇ& '
;
ÇÇ' (
CommitBytes
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
}
ÑÑ 
public
áá 
override
áá	 
Task
áá 

FlushAsync
áá !
(
áá! "
)
áá" #
{
àà 
try
ââ 
{
ää 
Flush
ãã 	
(
ãã	 

)
ãã
 
;
ãã 
return
åå 

Task
åå 
.
åå 
CompletedTask
åå 
;
åå 
}
çç 
catch
éé 
(
éé	 

	Exception
éé
 
ex
éé 
)
éé 
{
èè 
return
êê 

Task
êê 
.
êê 
FromException
êê 
(
êê 
ex
êê  
)
êê  !
;
êê! "
}
ëë 
}
íí 
public
ïï 
override
ïï	 
void
ïï 
Write
ïï 
(
ïï 
char
ïï !
value
ïï" '
)
ïï' (
{
ññ #
ThrowIfNotInitialized
óó 
(
óó 
)
óó 
;
óó 
_charBuffer
òò 
[
òò !
_charBufferPosition
òò "
++
òò" $
]
òò$ %
=
òò& '
value
òò( -
;
òò- .*
EncodeCharactersIfBufferFull
ôô 
(
ôô  
)
ôô  !
;
ôô! "
}
öö 
public
ùù 
override
ùù	 
void
ùù 
Write
ùù 
(
ùù 
string
ùù #
value
ùù$ )
)
ùù) *
{
ûû 
if
üü 
(
üü 
value
üü 
==
üü 
null
üü 
)
üü 
{
†† 
return
°° 

;
°°
 
}
¢¢ 
Write
§§ 
(
§§ 	
value
§§	 
.
§§ 
AsSpan
§§ 
(
§§ 
)
§§ 
)
§§ 
;
§§ 
}
•• 
public
®® 
override
®®	 
void
®® 
Write
®® 
(
®® 
char
®® !
[
®®! "
]
®®" #
buffer
®®$ *
,
®®* +
int
®®, /
index
®®0 5
,
®®5 6
int
®®7 :
count
®®; @
)
®®@ A
=>
®®B D
Write
®®E J
(
®®J K
Requires
®®K S
.
®®S T
NotNull
®®T [
(
®®[ \
buffer
®®\ b
,
®®b c
nameof
®®d j
(
®®j k
buffer
®®k q
)
®®q r
)
®®r s
.
®®s t
AsSpan
®®t z
(
®®z {
index®®{ Ä
,®®Ä Å
count®®Ç á
)®®á à
)®®à â
;®®â ä
public
¨¨ 
override
¨¨	 
void
¨¨ 
Write
¨¨ 
(
¨¨ 
ReadOnlySpan
¨¨ )
<
¨¨) *
char
¨¨* .
>
¨¨. /
buffer
¨¨0 6
)
¨¨6 7
{
¥¥ #
ThrowIfNotInitialized
µµ 
(
µµ 
)
µµ 
;
µµ 
if
∏∏ 
(
∏∏ 
buffer
∏∏ 
.
∏∏ 
Length
∏∏ 
<=
∏∏ 
CharBufferSlack
∏∏ '
)
∏∏' (
{
ππ 
buffer
∫∫ 

.
∫∫
 
CopyTo
∫∫ 
(
∫∫ 
_charBuffer
∫∫ 
.
∫∫ 
AsSpan
∫∫ $
(
∫∫$ %!
_charBufferPosition
∫∫% 8
)
∫∫8 9
)
∫∫9 :
;
∫∫: ;!
_charBufferPosition
ªª 
+=
ªª 
buffer
ªª !
.
ªª! "
Length
ªª" (
;
ªª( )*
EncodeCharactersIfBufferFull
ºº  
(
ºº  !
)
ºº! "
;
ºº" #
}
ΩΩ 
else
ææ 
{
øø 
int
¿¿ 
charsCopied
¿¿ 
=
¿¿ 
$num
¿¿ 
;
¿¿ 
while
¡¡ 	
(
¡¡
 
charsCopied
¡¡ 
<
¡¡ 
buffer
¡¡ 
.
¡¡  
Length
¡¡  &
)
¡¡& '
{
¬¬ 
int
√√ 
charsToCopy
√√	 
=
√√ 
Math
√√ 
.
√√ 
Min
√√ 
(
√√  
buffer
√√  &
.
√√& '
Length
√√' -
-
√√. /
charsCopied
√√0 ;
,
√√; <
CharBufferSlack
√√= L
)
√√L M
;
√√M N
buffer
ƒƒ 
.
ƒƒ 
Slice
ƒƒ 
(
ƒƒ 
charsCopied
ƒƒ 
,
ƒƒ 
charsToCopy
ƒƒ *
)
ƒƒ* +
.
ƒƒ+ ,
CopyTo
ƒƒ, 2
(
ƒƒ2 3
_charBuffer
ƒƒ3 >
.
ƒƒ> ?
AsSpan
ƒƒ? E
(
ƒƒE F!
_charBufferPosition
ƒƒF Y
)
ƒƒY Z
)
ƒƒZ [
;
ƒƒ[ \
charsCopied
≈≈ 
+=
≈≈ 
charsToCopy
≈≈ 
;
≈≈  !
_charBufferPosition
∆∆ 
+=
∆∆ 
charsToCopy
∆∆ '
;
∆∆' (*
EncodeCharactersIfBufferFull
«« !
(
««! "
)
««" #
;
««# $
}
»» 
}
…… 
}
   
public
ŒŒ 
override
ŒŒ	 
void
ŒŒ 
	WriteLine
ŒŒ  
(
ŒŒ  !
ReadOnlySpan
ŒŒ! -
<
ŒŒ- .
char
ŒŒ. 2
>
ŒŒ2 3
buffer
ŒŒ4 :
)
ŒŒ: ;
{
÷÷ 
Write
◊◊ 
(
◊◊ 	
buffer
◊◊	 
)
◊◊ 
;
◊◊ 
	WriteLine
ÿÿ 
(
ÿÿ 
)
ÿÿ 
;
ÿÿ 
}
ŸŸ 
private
ﬁﬁ 	
void
ﬁﬁ
 *
EncodeCharactersIfBufferFull
ﬁﬁ +
(
ﬁﬁ+ ,
)
ﬁﬁ, -
{
ﬂﬂ 
if
‡‡ 
(
‡‡ !
_charBufferPosition
‡‡ 
==
‡‡ 
_charBuffer
‡‡ )
.
‡‡) *
Length
‡‡* 0
)
‡‡0 1
{
·· 
EncodeCharacters
‚‚ 
(
‚‚ 
flushEncoder
‚‚ !
:
‚‚! "
false
‚‚# (
)
‚‚( )
;
‚‚) *
}
„„ 
}
‰‰ 
private
ÍÍ 	
void
ÍÍ
 
EncodeCharacters
ÍÍ 
(
ÍÍ  
bool
ÍÍ  $
flushEncoder
ÍÍ% 1
)
ÍÍ1 2
{
ÎÎ 
if
ÏÏ 
(
ÏÏ !
_charBufferPosition
ÏÏ 
>
ÏÏ 
$num
ÏÏ 
)
ÏÏ 
{
ÌÌ 
int
ÓÓ 
maxBytesLength
ÓÓ 
=
ÓÓ 
Encoding
ÓÓ !
.
ÓÓ! "
GetMaxByteCount
ÓÓ" 1
(
ÓÓ1 2!
_charBufferPosition
ÓÓ2 E
)
ÓÓE F
;
ÓÓF G
if
ÔÔ 
(
ÔÔ 
!
ÔÔ 	
_preambleWritten
ÔÔ	 
)
ÔÔ 
{
 
maxBytesLength
ÒÒ 
+=
ÒÒ 
_encodingPreamble
ÒÒ (
.
ÒÒ( )
Length
ÒÒ) /
;
ÒÒ/ 0
}
ÚÚ 
if
ÙÙ 
(
ÙÙ 
_memory
ÙÙ 
.
ÙÙ 
Length
ÙÙ 
-
ÙÙ 
_memoryPosition
ÙÙ (
<
ÙÙ) *
maxBytesLength
ÙÙ+ 9
)
ÙÙ9 :
{
ıı 
CommitBytes
ˆˆ 
(
ˆˆ 
)
ˆˆ 
;
ˆˆ 
_memory
˜˜ 
=
˜˜ 
_bufferWriter
˜˜ 
.
˜˜ 
	GetMemory
˜˜ &
(
˜˜& '
maxBytesLength
˜˜' 5
)
˜˜5 6
;
˜˜6 7
}
¯¯ 
if
˙˙ 
(
˙˙ 
!
˙˙ 	
_preambleWritten
˙˙	 
)
˙˙ 
{
˚˚ 
_encodingPreamble
¸¸ 
.
¸¸ 
Span
¸¸ 
.
¸¸ 
CopyTo
¸¸ "
(
¸¸" #
_memory
¸¸# *
.
¸¸* +
Span
¸¸+ /
.
¸¸/ 0
Slice
¸¸0 5
(
¸¸5 6
_memoryPosition
¸¸6 E
)
¸¸E F
)
¸¸F G
;
¸¸G H
_memoryPosition
˝˝ 
+=
˝˝ 
_encodingPreamble
˝˝ )
.
˝˝) *
Length
˝˝* 0
;
˝˝0 1
_preambleWritten
˛˛ 
=
˛˛ 
true
˛˛ 
;
˛˛ 
}
ˇˇ 
if
ÅÅ 
(
ÅÅ 
MemoryMarshal
ÅÅ 
.
ÅÅ 
TryGetArray
ÅÅ !
(
ÅÅ! "
_memory
ÅÅ" )
,
ÅÅ) *
out
ÅÅ+ .
ArraySegment
ÅÅ/ ;
<
ÅÅ; <
byte
ÅÅ< @
>
ÅÅ@ A
segment
ÅÅB I
)
ÅÅI J
)
ÅÅJ K
{
ÇÇ 
_memoryPosition
ÉÉ 
+=
ÉÉ 
_encoder
ÉÉ  
.
ÉÉ  !
GetBytes
ÉÉ! )
(
ÉÉ) *
_charBuffer
ÉÉ* 5
,
ÉÉ5 6
$num
ÉÉ7 8
,
ÉÉ8 9!
_charBufferPosition
ÉÉ: M
,
ÉÉM N
segment
ÉÉO V
.
ÉÉV W
Array
ÉÉW \
,
ÉÉ\ ]
segment
ÉÉ^ e
.
ÉÉe f
Offset
ÉÉf l
+
ÉÉm n
_memoryPosition
ÉÉo ~
,
ÉÉ~ 
flushÉÉÄ Ö
:ÉÉÖ Ü
flushEncoderÉÉá ì
)ÉÉì î
;ÉÉî ï
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
byte
áá 	
[
áá	 

]
áá
 
rentedByteBuffer
áá 
=
áá 
	ArrayPool
áá (
<
áá( )
byte
áá) -
>
áá- .
.
áá. /
Shared
áá/ 5
.
áá5 6
Rent
áá6 :
(
áá: ;
maxBytesLength
áá; I
)
ááI J
;
ááJ K
try
àà 
{
ââ 
int
ää 	
bytesWritten
ää
 
=
ää 
_encoder
ää !
.
ää! "
GetBytes
ää" *
(
ää* +
_charBuffer
ää+ 6
,
ää6 7
$num
ää8 9
,
ää9 :!
_charBufferPosition
ää; N
,
ääN O
rentedByteBuffer
ääP `
,
ää` a
$num
ääb c
,
ääc d
flush
ääe j
:
ääj k
flushEncoder
ääl x
)
ääx y
;
ääy z
rentedByteBuffer
ãã 
.
ãã 
CopyTo
ãã 
(
ãã 
_memory
ãã %
.
ãã% &
Span
ãã& *
.
ãã* +
Slice
ãã+ 0
(
ãã0 1
_memoryPosition
ãã1 @
)
ãã@ A
)
ããA B
;
ããB C
_memoryPosition
åå 
+=
åå 
bytesWritten
åå %
;
åå% &
}
çç 
finally
éé 
{
èè 
	ArrayPool
êê 
<
êê 
byte
êê 
>
êê 
.
êê 
Shared
êê 
.
êê 
Return
êê #
(
êê# $
rentedByteBuffer
êê$ 4
)
êê4 5
;
êê5 6
}
ëë 
}
íí !
_charBufferPosition
îî 
=
îî 
$num
îî 
;
îî 
if
ññ 
(
ññ 
_memoryPosition
ññ 
==
ññ 
_memory
ññ "
.
ññ" #
Length
ññ# )
)
ññ) *
{
óó 
Flush
òò 

(
òò
 
)
òò 
;
òò 
}
ôô 
}
öö 
}
õõ 
private
†† 	
void
††
 
CommitBytes
†† 
(
†† 
)
†† 
{
°° 
if
¢¢ 
(
¢¢ 
_memoryPosition
¢¢ 
>
¢¢ 
$num
¢¢ 
)
¢¢ 
{
££ 
_bufferWriter
§§ 
.
§§ 
Advance
§§ 
(
§§ 
_memoryPosition
§§ )
)
§§) *
;
§§* +
_memoryPosition
•• 
=
•• 
$num
•• 
;
•• 
_memory
¶¶ 
=
¶¶ 
default
¶¶ 
;
¶¶ 
}
ßß 
}
®® 
private
™™ 	
void
™™
 #
ThrowIfNotInitialized
™™ $
(
™™$ %
)
™™% &
{
´´ 
if
¨¨ 
(
¨¨ 
_bufferWriter
¨¨ 
==
¨¨ 
null
¨¨ 
)
¨¨ 
{
≠≠ 
throw
ÆÆ 	
new
ÆÆ
 '
InvalidOperationException
ÆÆ '
(
ÆÆ' (
$str
ÆÆ( /
+
ÆÆ0 1
nameof
ÆÆ2 8
(
ÆÆ8 9

Initialize
ÆÆ9 C
)
ÆÆC D
+
ÆÆE F
$str
ÆÆG P
)
ÆÆP Q
;
ÆÆQ R
}
ØØ 
}
∞∞ 
}
±± 
}≤≤ ¬£
_C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\MessageEncoder\PipeStream.cs
	namespace 	
SoapCore
 
. 
MessageEncoder !
{ 
internal 	
partial
 
class 

PipeStream "
:# $
Stream% +
,+ ,!
IDisposableObservable- B
{ 
private 	
readonly
 

PipeWriter 
? 
_writer &
;& '
private 	
readonly
 

PipeReader 
? 
_reader &
;& '
private## 	
readonly##
 
bool## 
	_ownsPipe## !
;##! "
private(( 	
bool((
 
_readingCompleted((  
;((  !
internal// 


PipeStream// 
(// 

PipeWriter//  
writer//! '
,//' (
bool//) -
ownsPipe//. 6
)//6 7
{00 
Requires11 
.11 
NotNull11 
(11 
writer11 
,11 
nameof11 "
(11" #
writer11# )
)11) *
)11* +
;11+ ,
_writer22 

=22 
writer22 
;22 
	_ownsPipe33 
=33 
ownsPipe33 
;33 
}44 
internal;; 


PipeStream;; 
(;; 

PipeReader;;  
reader;;! '
,;;' (
bool;;) -
ownsPipe;;. 6
);;6 7
{<< 
Requires== 
.== 
NotNull== 
(== 
reader== 
,== 
nameof== "
(==" #
reader==# )
)==) *
)==* +
;==+ ,
_reader>> 

=>> 
reader>> 
;>> 
	_ownsPipe?? 
=?? 
ownsPipe?? 
;?? 
}@@ 
internalGG 


PipeStreamGG 
(GG 
IDuplexPipeGG !
pipeGG" &
,GG& '
boolGG( ,
ownsPipeGG- 5
)GG5 6
{HH 
RequiresII 
.II 
NotNullII 
(II 
pipeII 
,II 
nameofII  
(II  !
pipeII! %
)II% &
)II& '
;II' (
_writerKK 

=KK 
pipeKK 
.KK 
OutputKK 
;KK 
_readerLL 

=LL 
pipeLL 
.LL 
InputLL 
;LL 
	_ownsPipeMM 
=MM 
ownsPipeMM 
;MM 
}NN 
publicQQ 
boolQQ	 

IsDisposedQQ 
{QQ 
getQQ 
;QQ 
privateQQ  '
setQQ( +
;QQ+ ,
}QQ- .
publicTT 
overrideTT	 
boolTT 
CanReadTT 
=>TT !
!TT" #

IsDisposedTT# -
&&TT. 0
_readerTT1 8
!=TT9 ;
nullTT< @
;TT@ A
publicWW 
overrideWW	 
boolWW 
CanSeekWW 
=>WW !
falseWW" '
;WW' (
publicZZ 
overrideZZ	 
boolZZ 
CanWriteZZ 
=>ZZ  "
!ZZ# $

IsDisposedZZ$ .
&&ZZ/ 1
_writerZZ2 9
!=ZZ: <
nullZZ= A
;ZZA B
public]] 
override]]	 
long]] 
Length]] 
=>]]  
throw]]! &
ThrowDisposedOr]]' 6
(]]6 7
new]]7 :!
NotSupportedException]]; P
(]]P Q
)]]Q R
)]]R S
;]]S T
public`` 
override``	 
long`` 
Position`` 
{aa 
getbb 
=>bb 	
throwbb
 
ThrowDisposedOrbb 
(bb  
newbb  #!
NotSupportedExceptionbb$ 9
(bb9 :
)bb: ;
)bb; <
;bb< =
setcc 
=>cc 	
throwcc
 
ThrowDisposedOrcc 
(cc  
newcc  #!
NotSupportedExceptioncc$ 9
(cc9 :
)cc: ;
)cc; <
;cc< =
}dd 
internalkk 


PipeReaderkk 
?kk  
UnderlyingPipeReaderkk +
=>kk, .
_readerkk/ 6
;kk6 7
internalpp 


PipeWriterpp 
?pp  
UnderlyingPipeWriterpp +
=>pp, .
_writerpp/ 6
;pp6 7
publictt 
overridett	 
asynctt 
Tasktt 

FlushAsynctt '
(tt' (
CancellationTokentt( 9
cancellationTokentt: K
)ttK L
{uu 
ifvv 
(vv 
_writervv 
==vv 
nullvv 
)vv 
{ww 
throwxx 	
newxx
 !
NotSupportedExceptionxx #
(xx# $
)xx$ %
;xx% &
}yy 
await{{ 
_writer{{	 
.{{ 

FlushAsync{{ 
({{ 
cancellationToken{{ -
){{- .
.{{. /
ConfigureAwait{{/ =
({{= >
false{{> C
){{C D
;{{D E
}|| 
public 
override	 
long 
Seek 
( 
long  
offset! '
,' (

SeekOrigin) 3
origin4 :
): ;
=>< >
throw? D
ThrowDisposedOrE T
(T U
newU X!
NotSupportedExceptionY n
(n o
)o p
)p q
;q r
public
ÇÇ 
override
ÇÇ	 
void
ÇÇ 
	SetLength
ÇÇ  
(
ÇÇ  !
long
ÇÇ! %
value
ÇÇ& +
)
ÇÇ+ ,
=>
ÇÇ- /
throw
ÇÇ0 5
ThrowDisposedOr
ÇÇ6 E
(
ÇÇE F
new
ÇÇF I#
NotSupportedException
ÇÇJ _
(
ÇÇ_ `
)
ÇÇ` a
)
ÇÇa b
;
ÇÇb c
public
ÖÖ 
override
ÖÖ	 
Task
ÖÖ 

WriteAsync
ÖÖ !
(
ÖÖ! "
byte
ÖÖ" &
[
ÖÖ& '
]
ÖÖ' (
buffer
ÖÖ) /
,
ÖÖ/ 0
int
ÖÖ1 4
offset
ÖÖ5 ;
,
ÖÖ; <
int
ÖÖ= @
count
ÖÖA F
,
ÖÖF G
CancellationToken
ÖÖH Y
cancellationToken
ÖÖZ k
)
ÖÖk l
{
ÜÜ 
throw
áá 
new
áá	 %
NotImplementedException
áá $
(
áá$ %
)
áá% &
;
áá& '
}
àà 
public
ãã 
override
ãã	 
async
ãã 
Task
ãã 
<
ãã 
int
ãã  
>
ãã  !
	ReadAsync
ãã" +
(
ãã+ ,
byte
ãã, 0
[
ãã0 1
]
ãã1 2
buffer
ãã3 9
,
ãã9 :
int
ãã; >
offset
ãã? E
,
ããE F
int
ããG J
count
ããK P
,
ããP Q
CancellationToken
ããR c
cancellationToken
ããd u
)
ããu v
{
åå 
Requires
çç 
.
çç 
NotNull
çç 
(
çç 
buffer
çç 
,
çç 
nameof
çç "
(
çç" #
buffer
çç# )
)
çç) *
)
çç* +
;
çç+ ,
Requires
éé 
.
éé 
Range
éé 
(
éé 
offset
éé 
+
éé 
count
éé  
<=
éé! #
buffer
éé$ *
.
éé* +
Length
éé+ 1
,
éé1 2
nameof
éé3 9
(
éé9 :
count
éé: ?
)
éé? @
)
éé@ A
;
ééA B
Requires
èè 
.
èè 
Range
èè 
(
èè 
offset
èè 
>=
èè 
$num
èè 
,
èè 
nameof
èè %
(
èè% &
offset
èè& ,
)
èè, -
)
èè- .
;
èè. /
Requires
êê 
.
êê 
Range
êê 
(
êê 
count
êê 
>
êê 
$num
êê 
,
êê 
nameof
êê #
(
êê# $
count
êê$ )
)
êê) *
)
êê* +
;
êê+ ,
Verify
ëë 	
.
ëë	 

NotDisposed
ëë
 
(
ëë 
this
ëë 
)
ëë 
;
ëë 
if
ìì 
(
ìì 
_reader
ìì 
==
ìì 
null
ìì 
)
ìì 
{
îî 
throw
ïï 	
new
ïï
 #
NotSupportedException
ïï #
(
ïï# $
)
ïï$ %
;
ïï% &
}
ññ 
if
òò 
(
òò 
_readingCompleted
òò 
)
òò 
{
ôô 
return
öö 

$num
öö 
;
öö 
}
õõ 

ReadResult
ùù 

readResult
ùù 
=
ùù 
await
ùù  
_reader
ùù! (
.
ùù( )
	ReadAsync
ùù) 2
(
ùù2 3
cancellationToken
ùù3 D
)
ùùD E
.
ùùE F
ConfigureAwait
ùùF T
(
ùùT U
false
ùùU Z
)
ùùZ [
;
ùù[ \
return
ûû 	

ReadHelper
ûû
 
(
ûû 
buffer
ûû 
.
ûû 
AsSpan
ûû "
(
ûû" #
offset
ûû# )
,
ûû) *
count
ûû+ 0
)
ûû0 1
,
ûû1 2

readResult
ûû3 =
)
ûû= >
;
ûû> ?
}
üü 
public
££ 
override
££	 
async
££ 
	ValueTask
££ !
<
££! "
int
££" %
>
££% &
	ReadAsync
££' 0
(
££0 1
Memory
££1 7
<
££7 8
byte
££8 <
>
££< =
buffer
££> D
,
££D E
CancellationToken
££F W
cancellationToken
££X i
=
££j k
default
££l s
)
££s t
{
§§ 
cancellationToken
•• 
.
•• *
ThrowIfCancellationRequested
•• 1
(
••1 2
)
••2 3
;
••3 4
Verify
¶¶ 	
.
¶¶	 

NotDisposed
¶¶
 
(
¶¶ 
this
¶¶ 
)
¶¶ 
;
¶¶ 
if
®® 
(
®® 
_reader
®® 
==
®® 
null
®® 
)
®® 
{
©© 
throw
™™ 	
new
™™
 #
NotSupportedException
™™ #
(
™™# $
)
™™$ %
;
™™% &
}
´´ 
if
≠≠ 
(
≠≠ 
_readingCompleted
≠≠ 
)
≠≠ 
{
ÆÆ 
return
ØØ 

$num
ØØ 
;
ØØ 
}
∞∞ 

ReadResult
≤≤ 

readResult
≤≤ 
=
≤≤ 
await
≤≤  
_reader
≤≤! (
.
≤≤( )
	ReadAsync
≤≤) 2
(
≤≤2 3
cancellationToken
≤≤3 D
)
≤≤D E
.
≤≤E F
ConfigureAwait
≤≤F T
(
≤≤T U
false
≤≤U Z
)
≤≤Z [
;
≤≤[ \
return
≥≥ 	

ReadHelper
≥≥
 
(
≥≥ 
buffer
≥≥ 
.
≥≥ 
Span
≥≥  
,
≥≥  !

readResult
≥≥" ,
)
≥≥, -
;
≥≥- .
}
¥¥ 
public
∑∑ 
override
∑∑	 
int
∑∑ 
Read
∑∑ 
(
∑∑ 
Span
∑∑ 
<
∑∑  
byte
∑∑  $
>
∑∑$ %
buffer
∑∑& ,
)
∑∑, -
{
∏∏ 
Verify
ππ 	
.
ππ	 

NotDisposed
ππ
 
(
ππ 
this
ππ 
)
ππ 
;
ππ 
if
∫∫ 
(
∫∫ 
_reader
∫∫ 
==
∫∫ 
null
∫∫ 
)
∫∫ 
{
ªª 
throw
ºº 	
new
ºº
 #
NotSupportedException
ºº #
(
ºº# $
)
ºº$ %
;
ºº% &
}
ΩΩ 

ReadResult
øø 

readResult
øø 
=
øø 
_reader
øø "
.
øø" #
	ReadAsync
øø# ,
(
øø, -
)
øø- .
.
øø. /

GetAwaiter
øø/ 9
(
øø9 :
)
øø: ;
.
øø; <
	GetResult
øø< E
(
øøE F
)
øøF G
;
øøG H
return
¿¿ 	

ReadHelper
¿¿
 
(
¿¿ 
buffer
¿¿ 
,
¿¿ 

readResult
¿¿ '
)
¿¿' (
;
¿¿( )
}
¡¡ 
public
ƒƒ 
override
ƒƒ	 
	ValueTask
ƒƒ 

WriteAsync
ƒƒ &
(
ƒƒ& '
ReadOnlyMemory
ƒƒ' 5
<
ƒƒ5 6
byte
ƒƒ6 :
>
ƒƒ: ;
buffer
ƒƒ< B
,
ƒƒB C
CancellationToken
ƒƒD U
cancellationToken
ƒƒV g
=
ƒƒh i
default
ƒƒj q
)
ƒƒq r
{
≈≈ 
cancellationToken
∆∆ 
.
∆∆ *
ThrowIfCancellationRequested
∆∆ 1
(
∆∆1 2
)
∆∆2 3
;
∆∆3 4
Verify
«« 	
.
««	 

NotDisposed
««
 
(
«« 
this
«« 
)
«« 
;
«« 
if
»» 
(
»» 
_writer
»» 
==
»» 
null
»» 
)
»» 
{
…… 
throw
   	
new
  
 #
NotSupportedException
   #
(
  # $
)
  $ %
;
  % &
}
ÀÀ 
_writer
ÕÕ 

.
ÕÕ
 
Write
ÕÕ 
(
ÕÕ 
buffer
ÕÕ 
.
ÕÕ 
Span
ÕÕ 
)
ÕÕ 
;
ÕÕ 
return
ŒŒ 	
default
ŒŒ
 
;
ŒŒ 
}
œœ 
public
““ 
override
““	 
void
““ 
Write
““ 
(
““ 
ReadOnlySpan
““ )
<
““) *
byte
““* .
>
““. /
buffer
““0 6
)
““6 7
{
”” 
Verify
‘‘ 	
.
‘‘	 

NotDisposed
‘‘
 
(
‘‘ 
this
‘‘ 
)
‘‘ 
;
‘‘ 
if
’’ 
(
’’ 
_writer
’’ 
==
’’ 
null
’’ 
)
’’ 
{
÷÷ 
throw
◊◊ 	
new
◊◊
 #
NotSupportedException
◊◊ #
(
◊◊# $
)
◊◊$ %
;
◊◊% &
}
ÿÿ 
_writer
⁄⁄ 

.
⁄⁄
 
Write
⁄⁄ 
(
⁄⁄ 
buffer
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
}
€€ 
public
‡‡ 
override
‡‡	 
void
‡‡ 
Flush
‡‡ 
(
‡‡ 
)
‡‡ 
{
·· 
if
‚‚ 
(
‚‚ 
_writer
‚‚ 
==
‚‚ 
null
‚‚ 
)
‚‚ 
{
„„ 
throw
‰‰ 	
new
‰‰
 #
NotSupportedException
‰‰ #
(
‰‰# $
)
‰‰$ %
;
‰‰% &
}
ÂÂ 
_writer
ÁÁ 

.
ÁÁ
 

FlushAsync
ÁÁ 
(
ÁÁ 
)
ÁÁ 
.
ÁÁ 

GetAwaiter
ÁÁ "
(
ÁÁ" #
)
ÁÁ# $
.
ÁÁ$ %
	GetResult
ÁÁ% .
(
ÁÁ. /
)
ÁÁ/ 0
;
ÁÁ0 1
}
ËË 
public
ÎÎ 
override
ÎÎ	 
int
ÎÎ 
Read
ÎÎ 
(
ÎÎ 
byte
ÎÎ 
[
ÎÎ  
]
ÎÎ  !
buffer
ÎÎ" (
,
ÎÎ( )
int
ÎÎ* -
offset
ÎÎ. 4
,
ÎÎ4 5
int
ÎÎ6 9
count
ÎÎ: ?
)
ÎÎ? @
=>
ÎÎA C
	ReadAsync
ÎÎD M
(
ÎÎM N
buffer
ÎÎN T
,
ÎÎT U
offset
ÎÎV \
,
ÎÎ\ ]
count
ÎÎ^ c
)
ÎÎc d
.
ÎÎd e

GetAwaiter
ÎÎe o
(
ÎÎo p
)
ÎÎp q
.
ÎÎq r
	GetResult
ÎÎr {
(
ÎÎ{ |
)
ÎÎ| }
;
ÎÎ} ~
public
ÓÓ 
override
ÓÓ	 
void
ÓÓ 
Write
ÓÓ 
(
ÓÓ 
byte
ÓÓ !
[
ÓÓ! "
]
ÓÓ" #
buffer
ÓÓ$ *
,
ÓÓ* +
int
ÓÓ, /
offset
ÓÓ0 6
,
ÓÓ6 7
int
ÓÓ8 ;
count
ÓÓ< A
)
ÓÓA B
=>
ÓÓC E

WriteAsync
ÓÓF P
(
ÓÓP Q
buffer
ÓÓQ W
,
ÓÓW X
offset
ÓÓY _
,
ÓÓ_ `
count
ÓÓa f
)
ÓÓf g
.
ÓÓg h

GetAwaiter
ÓÓh r
(
ÓÓr s
)
ÓÓs t
.
ÓÓt u
	GetResult
ÓÓu ~
(
ÓÓ~ 
)ÓÓ Ä
;ÓÓÄ Å
	protected
ÒÒ 
override
ÒÒ 
void
ÒÒ 
Dispose
ÒÒ !
(
ÒÒ! "
bool
ÒÒ" &
	disposing
ÒÒ' 0
)
ÒÒ0 1
{
ÚÚ 

IsDisposed
ÛÛ 
=
ÛÛ 
true
ÛÛ 
;
ÛÛ 
_reader
ÙÙ 

?
ÙÙ
 
.
ÙÙ 
CancelPendingRead
ÙÙ 
(
ÙÙ 
)
ÙÙ 
;
ÙÙ  
_writer
ıı 

?
ıı
 
.
ıı  
CancelPendingFlush
ıı 
(
ıı 
)
ıı  
;
ıı  !
if
ˆˆ 
(
ˆˆ 
	_ownsPipe
ˆˆ 
)
ˆˆ 
{
˜˜ 
_reader
¯¯ 
?
¯¯ 
.
¯¯ 
Complete
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯ 
_writer
˘˘ 
?
˘˘ 
.
˘˘ 
Complete
˘˘ 
(
˘˘ 
)
˘˘ 
;
˘˘ 
}
˙˙ 
base
¸¸ 
.
¸¸ 
Dispose
¸¸ 
(
¸¸ 
	disposing
¸¸ 
)
¸¸ 
;
¸¸ 
}
˝˝ 
private
ˇˇ 	
T
ˇˇ
 !
ReturnIfNotDisposed
ˇˇ 
<
ˇˇ  
T
ˇˇ  !
>
ˇˇ! "
(
ˇˇ" #
T
ˇˇ# $
value
ˇˇ% *
)
ˇˇ* +
{
ÄÄ 
Verify
ÅÅ 	
.
ÅÅ	 

NotDisposed
ÅÅ
 
(
ÅÅ 
this
ÅÅ 
)
ÅÅ 
;
ÅÅ 
return
ÇÇ 	
value
ÇÇ
 
;
ÇÇ 
}
ÉÉ 
private
ÖÖ 	
	Exception
ÖÖ
 
ThrowDisposedOr
ÖÖ #
(
ÖÖ# $
	Exception
ÖÖ$ -
ex
ÖÖ. 0
)
ÖÖ0 1
{
ÜÜ 
Verify
áá 	
.
áá	 

NotDisposed
áá
 
(
áá 
this
áá 
)
áá 
;
áá 
throw
àà 
ex
àà	 
;
àà 
}
ââ 
private
ãã 	
int
ãã
 

ReadHelper
ãã 
(
ãã 
Span
ãã 
<
ãã 
byte
ãã "
>
ãã" #
buffer
ãã$ *
,
ãã* +

ReadResult
ãã, 6

readResult
ãã7 A
)
ããA B
{
åå 
if
çç 
(
çç 

readResult
çç 
.
çç 

IsCanceled
çç 
&&
çç 

IsDisposed
çç  *
)
çç* +
{
éé 
return
èè 

$num
èè 
;
èè 
}
êê 
long
íí 
bytesToCopyCount
íí 
=
íí 
Math
íí 
.
íí  
Min
íí  #
(
íí# $
buffer
íí$ *
.
íí* +
Length
íí+ 1
,
íí1 2

readResult
íí3 =
.
íí= >
Buffer
íí> D
.
ííD E
Length
ííE K
)
ííK L
;
ííL M
ReadOnlySequence
ìì 
<
ìì 
byte
ìì 
>
ìì 
slice
ìì 
=
ìì  !

readResult
ìì" ,
.
ìì, -
Buffer
ìì- 3
.
ìì3 4
Slice
ìì4 9
(
ìì9 :
$num
ìì: ;
,
ìì; <
bytesToCopyCount
ìì= M
)
ììM N
;
ììN O
var
îî 
isCompleted
îî 
=
îî 

readResult
îî 
.
îî  
IsCompleted
îî  +
&&
îî, .
slice
îî/ 4
.
îî4 5
End
îî5 8
.
îî8 9
Equals
îî9 ?
(
îî? @

readResult
îî@ J
.
îîJ K
Buffer
îîK Q
.
îîQ R
End
îîR U
)
îîU V
;
îîV W
slice
ïï 
.
ïï 	
CopyTo
ïï	 
(
ïï 
buffer
ïï 
)
ïï 
;
ïï 
_reader
ññ 

!
ññ
 
.
ññ 
	AdvanceTo
ññ 
(
ññ 
slice
ññ 
.
ññ 
End
ññ 
)
ññ  
;
ññ  !

readResult
óó 
.
óó !
ScrubAfterAdvanceTo
óó !
(
óó! "
)
óó" #
;
óó# $
slice
òò 
=
òò	 

default
òò 
;
òò 
if
öö 
(
öö 
isCompleted
öö 
)
öö 
{
õõ 
if
úú 
(
úú 
	_ownsPipe
úú 
)
úú 
{
ùù 
_reader
ûû 
.
ûû 
Complete
ûû 
(
ûû 
)
ûû 
;
ûû 
}
üü 
_readingCompleted
°° 
=
°° 
true
°° 
;
°° 
}
¢¢ 
return
§§ 	
(
§§
 
int
§§ 
)
§§ 
bytesToCopyCount
§§ 
;
§§  
}
•• 
}
¶¶ 
}ßß ‹
^C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\MessageEncoder\PipeUtils.cs
	namespace 	
SoapCore
 
. 
MessageEncoder !
{ 
internal 	
static
 
class 
	PipeUtils  
{ 
internal 

static 
void 
ScrubAfterAdvanceTo *
(* +
this+ /
ref0 3

ReadResult4 >

readResult? I
)I J
=>K M

readResultN X
=Y Z
new[ ^

ReadResult_ i
(i j
defaultj q
,q r

readResults }
.} ~

IsCanceled	~ à
,
à â

readResult
ä î
.
î ï
IsCompleted
ï †
)
† °
;
° ¢
} 
}		 —Ã
gC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\MessageEncoder\SoapMessageEncoder.cs
	namespace 	
SoapCore
 
. 
MessageEncoder !
{ 
public 
class 
SoapMessageEncoder  
{ 
internal 

const 
string 
Soap11MediaType '
=( )
$str* 4
;4 5
internal 

const 
string 
Soap12MediaType '
=( )
$str* @
;@ A
private 	
const
 
string 
XmlMediaType #
=$ %
$str& 7
;7 8
private 	
readonly
 
Encoding 
_writeEncoding *
;* +
private 	
readonly
 
bool !
_optimizeWriteForUtf8 -
;- .
private 	
readonly
 
bool 
_omitXmlDeclaration +
;+ ,
private 	
readonly
 
bool 

_indentXml "
;" #
private 	
readonly
 
bool '
_supportXmlDictionaryReader 3
;3 4
public   
SoapMessageEncoder  	 
(   
MessageVersion   *
version  + 2
,  2 3
Encoding  4 <
writeEncoding  = J
,  J K%
XmlDictionaryReaderQuotas  L e
quotas  f l
,  l m
bool  n r
omitXmlDeclaration	  s Ö
,
  Ö Ü
bool
  á ã
	indentXml
  å ï
)
  ï ñ
{!! 

_indentXml"" 
="" 
	indentXml"" 
;"" 
_omitXmlDeclaration## 
=## 
omitXmlDeclaration## +
;##+ ,
if$$ 
($$ 
writeEncoding$$ 
==$$ 
null$$ 
)$$ 
{%% 
throw&& 	
new&&
 !
ArgumentNullException&& #
(&&# $
nameof&&$ *
(&&* +
writeEncoding&&+ 8
)&&8 9
)&&9 :
;&&: ;
}'' '
_supportXmlDictionaryReader)) 
=))  &
SoapMessageEncoderDefaults))! ;
.)); <
TryValidateEncoding))< O
())O P
writeEncoding))P ]
,))] ^
out))_ b
_))c d
)))d e
;))e f
_writeEncoding++ 
=++ 
writeEncoding++ !
;++! "!
_optimizeWriteForUtf8,, 
=,, 
IsUtf8Encoding,, )
(,,) *
writeEncoding,,* 7
),,7 8
;,,8 9
MessageVersion.. 
=.. 
version.. 
??.. 
throw.. $
new..% (!
ArgumentNullException..) >
(..> ?
nameof..? E
(..E F
version..F M
)..M N
)..N O
;..O P
ReaderQuotas00 
=00 
new00 %
XmlDictionaryReaderQuotas00 /
(00/ 0
)000 1
;001 2
(11 
quotas11 

??11 %
XmlDictionaryReaderQuotas11 '
.11' (
Max11( +
)11+ ,
.11, -
CopyTo11- 3
(113 4
ReaderQuotas114 @
)11@ A
;11A B
	MediaType33 
=33 
GetMediaType33 
(33 
version33 #
)33# $
;33$ %
CharSet44 

=44 &
SoapMessageEncoderDefaults44 '
.44' (
EncodingToCharSet44( 9
(449 :
writeEncoding44: G
)44G H
;44H I
ContentType55 
=55 
GetContentType55 
(55  
	MediaType55  )
,55) *
CharSet55+ 2
)552 3
;553 4
}66 
public88 
string88	 
ContentType88 
{88 
get88 !
;88! "
}88# $
public:: 
string::	 
	MediaType:: 
{:: 
get:: 
;::  
}::! "
public<< 
string<<	 
CharSet<< 
{<< 
get<< 
;<< 
}<<  
public>> 
MessageVersion>>	 
MessageVersion>> &
{>>' (
get>>) ,
;>>, -
}>>. /
public@@ %
XmlDictionaryReaderQuotas@@	 "
ReaderQuotas@@# /
{@@0 1
get@@2 5
;@@5 6
}@@7 8
publicBB 
boolBB	 "
IsContentTypeSupportedBB $
(BB$ %
stringBB% +
contentTypeBB, 7
)BB7 8
{CC 
ifDD 
(DD 
contentTypeDD 
==DD 
nullDD 
)DD 
{EE 
throwFF 	
newFF
 !
ArgumentNullExceptionFF #
(FF# $
nameofFF$ *
(FF* +
contentTypeFF+ 6
)FF6 7
)FF7 8
;FF8 9
}GG 
ifII 
(II "
IsContentTypeSupportedII 
(II 
contentTypeII )
,II) *
ContentTypeII+ 6
,II6 7
	MediaTypeII8 A
)IIA B
)IIB C
{JJ 
returnKK 

trueKK 
;KK 
}LL 
ifOO 
(OO 
MessageVersionOO 
.OO 
EqualsOO 
(OO 
MessageVersionOO +
.OO+ ,
NoneOO, 0
)OO0 1
)OO1 2
{PP 
constQQ 	
stringQQ
 
rss1MediaTypeQQ 
=QQ  
$strQQ! +
;QQ+ ,
constRR 	
stringRR
 
rss2MediaTypeRR 
=RR  
$strRR! 6
;RR6 7
constSS 	
stringSS
 
atomMediaTypeSS 
=SS  
$strSS! 7
;SS7 8
constTT 	
stringTT
 
htmlMediaTypeTT 
=TT  
$strTT! ,
;TT, -
ifVV 
(VV "
IsContentTypeSupportedVV 
(VV 
contentTypeVV *
,VV* +
rss1MediaTypeVV, 9
,VV9 :
rss1MediaTypeVV; H
)VVH I
)VVI J
{WW 
returnXX 
trueXX 
;XX 
}YY 
if[[ 
([[ "
IsContentTypeSupported[[ 
([[ 
contentType[[ *
,[[* +
rss2MediaType[[, 9
,[[9 :
rss2MediaType[[; H
)[[H I
)[[I J
{\\ 
return]] 
true]] 
;]] 
}^^ 
if`` 
(`` "
IsContentTypeSupported`` 
(`` 
contentType`` *
,``* +
htmlMediaType``, 9
,``9 :
atomMediaType``; H
)``H I
)``I J
{aa 
returnbb 
truebb 
;bb 
}cc 
ifee 
(ee "
IsContentTypeSupportedee 
(ee 
contentTypeee *
,ee* +
atomMediaTypeee, 9
,ee9 :
atomMediaTypeee; H
)eeH I
)eeI J
{ff 
returngg 
truegg 
;gg 
}hh 
}ii 
returnkk 	
falsekk
 
;kk 
}ll 
publicnn 
asyncnn	 
Tasknn 
<nn 
Messagenn 
>nn 
ReadMessageAsyncnn -
(nn- .

PipeReadernn. 8

pipeReadernn9 C
,nnC D
intnnE H
maxSizeOfHeadersnnI Y
,nnY Z
stringnn[ a
contentTypennb m
)nnm n
{oo 
ifpp 
(pp 

pipeReaderpp 
==pp 
nullpp 
)pp 
{qq 
throwrr 	
newrr
 !
ArgumentNullExceptionrr #
(rr# $
nameofrr$ *
(rr* +

pipeReaderrr+ 5
)rr5 6
)rr6 7
;rr7 8
}ss 
varuu 
streamuu 
=uu 
newuu 

PipeStreamuu 
(uu 

pipeReaderuu )
,uu) *
falseuu+ 0
)uu0 1
;uu1 2
returnvv 	
awaitvv
 
ReadMessageAsyncvv  
(vv  !
streamvv! '
,vv' (
maxSizeOfHeadersvv) 9
,vv9 :
contentTypevv; F
)vvF G
;vvG H
}ww 
publicyy 
Taskyy	 
<yy 
Messageyy 
>yy 
ReadMessageAsyncyy '
(yy' (
Streamyy( .
streamyy/ 5
,yy5 6
intyy7 :
maxSizeOfHeadersyy; K
,yyK L
stringyyM S
contentTypeyyT _
)yy_ `
{zz 
if{{ 
({{ 
stream{{ 
=={{ 
null{{ 
){{ 
{|| 
throw}} 	
new}}
 !
ArgumentNullException}} #
(}}# $
nameof}}$ *
(}}* +
stream}}+ 1
)}}1 2
)}}2 3
;}}3 4
}~~ 
	XmlReader
ÄÄ 
reader
ÄÄ 
=
ÄÄ )
_supportXmlDictionaryReader
ÄÄ 1
?
ÄÄ2 3!
XmlDictionaryReader
ÅÅ 
.
ÅÅ 
CreateTextReader
ÅÅ )
(
ÅÅ) *
stream
ÅÅ* 0
,
ÅÅ0 1
_writeEncoding
ÅÅ2 @
,
ÅÅ@ A
ReaderQuotas
ÅÅB N
,
ÅÅN O
dictionaryReader
ÅÅP `
=>
ÅÅa c
{
ÅÅd e
}
ÅÅf g
)
ÅÅg h
:
ÅÅi j
	XmlReader
ÇÇ 
.
ÇÇ 
Create
ÇÇ 
(
ÇÇ 
stream
ÇÇ 
,
ÇÇ 
new
ÇÇ  
XmlReaderSettings
ÇÇ! 2
(
ÇÇ2 3
)
ÇÇ3 4
)
ÇÇ4 5
;
ÇÇ5 6
Message
ÑÑ 

message
ÑÑ 
=
ÑÑ 
Message
ÑÑ 
.
ÑÑ 
CreateMessage
ÑÑ *
(
ÑÑ* +
reader
ÑÑ+ 1
,
ÑÑ1 2
maxSizeOfHeaders
ÑÑ3 C
,
ÑÑC D
MessageVersion
ÑÑE S
)
ÑÑS T
;
ÑÑT U
return
ÜÜ 	
Task
ÜÜ
 
.
ÜÜ 

FromResult
ÜÜ 
(
ÜÜ 
message
ÜÜ !
)
ÜÜ! "
;
ÜÜ" #
}
áá 
public
ââ 
virtual
ââ	 
async
ââ 
Task
ââ 
WriteMessageAsync
ââ -
(
ââ- .
Message
ââ. 5
message
ââ6 =
,
ââ= >

PipeWriter
ââ? I

pipeWriter
ââJ T
)
ââT U
{
ää 
if
ãã 
(
ãã 
message
ãã 
==
ãã 
null
ãã 
)
ãã 
{
åå 
throw
çç 	
new
çç
 #
ArgumentNullException
çç #
(
çç# $
nameof
çç$ *
(
çç* +
message
çç+ 2
)
çç2 3
)
çç3 4
;
çç4 5
}
éé 
if
êê 
(
êê 

pipeWriter
êê 
==
êê 
null
êê 
)
êê 
{
ëë 
throw
íí 	
new
íí
 #
ArgumentNullException
íí #
(
íí# $
nameof
íí$ *
(
íí* +

pipeWriter
íí+ 5
)
íí5 6
)
íí6 7
;
íí7 8
}
ìì -
ThrowIfMismatchedMessageVersion
ïï "
(
ïï" #
message
ïï# *
)
ïï* +
;
ïï+ ,
using
óó 
var
óó	 
bufferTextWriter
óó 
=
óó 
new
óó  #
BufferTextWriter
óó$ 4
(
óó4 5

pipeWriter
óó5 ?
,
óó? @
_writeEncoding
óóA O
)
óóO P
;
óóP Q
using
òò 
var
òò	 
xmlTextWriter
òò 
=
òò 
	XmlWriter
òò &
.
òò& '
Create
òò' -
(
òò- .
bufferTextWriter
òò. >
,
òò> ?
new
òò@ C
XmlWriterSettings
òòD U
{
ôô  
OmitXmlDeclaration
öö 
=
öö #
_optimizeWriteForUtf8
öö .
&&
öö/ 1!
_omitXmlDeclaration
öö2 E
,
ööE F
Indent
õõ 

=
õõ 

_indentXml
õõ 
,
õõ 
Encoding
úú 
=
úú 
_writeEncoding
úú 
}
ùù 
)
ùù 
;
ùù 
var
ûû 
	xmlWriter
ûû 
=
ûû !
XmlDictionaryWriter
ûû &
.
ûû& '$
CreateDictionaryWriter
ûû' =
(
ûû= >
xmlTextWriter
ûû> K
)
ûûK L
;
ûûL M
WriteXmlCore
üü 
(
üü 
message
üü 
,
üü 
	xmlWriter
üü "
)
üü" #
;
üü# $
await
°° 

pipeWriter
°°	 
.
°° 

FlushAsync
°° 
(
°° 
)
°°  
;
°°  !
}
¢¢ 
public
§§ 
virtual
§§	 
Task
§§ 
WriteMessageAsync
§§ '
(
§§' (
Message
§§( /
message
§§0 7
,
§§7 8
Stream
§§9 ?
stream
§§@ F
)
§§F G
{
•• 
if
¶¶ 
(
¶¶ 
message
¶¶ 
==
¶¶ 
null
¶¶ 
)
¶¶ 
{
ßß 
throw
®® 	
new
®®
 #
ArgumentNullException
®® #
(
®®# $
nameof
®®$ *
(
®®* +
message
®®+ 2
)
®®2 3
)
®®3 4
;
®®4 5
}
©© 
if
´´ 
(
´´ 
stream
´´ 
==
´´ 
null
´´ 
)
´´ 
{
¨¨ 
throw
≠≠ 	
new
≠≠
 #
ArgumentNullException
≠≠ #
(
≠≠# $
nameof
≠≠$ *
(
≠≠* +
stream
≠≠+ 1
)
≠≠1 2
)
≠≠2 3
;
≠≠3 4
}
ÆÆ -
ThrowIfMismatchedMessageVersion
∞∞ "
(
∞∞" #
message
∞∞# *
)
∞∞* +
;
∞∞+ ,
using
≤≤ 
var
≤≤	 
xmlTextWriter
≤≤ 
=
≤≤ 
	XmlWriter
≤≤ &
.
≤≤& '
Create
≤≤' -
(
≤≤- .
stream
≤≤. 4
,
≤≤4 5
new
≤≤6 9
XmlWriterSettings
≤≤: K
{
≥≥  
OmitXmlDeclaration
¥¥ 
=
¥¥ #
_optimizeWriteForUtf8
¥¥ .
&&
¥¥/ 1!
_omitXmlDeclaration
¥¥2 E
,
¥¥E F
Indent
µµ 

=
µµ 

_indentXml
µµ 
,
µµ 
Encoding
∂∂ 
=
∂∂ 
_writeEncoding
∂∂ 
,
∂∂ 
CloseOutput
∑∑ 
=
∑∑ 
false
∑∑ 
}
∏∏ 
)
∏∏ 
;
∏∏ 
var
ππ 
	xmlWriter
ππ 
=
ππ !
XmlDictionaryWriter
ππ &
.
ππ& '$
CreateDictionaryWriter
ππ' =
(
ππ= >
xmlTextWriter
ππ> K
)
ππK L
;
ππL M
WriteXmlCore
ªª 
(
ªª 
message
ªª 
,
ªª 
	xmlWriter
ªª "
)
ªª" #
;
ªª# $
return
ΩΩ 	
Task
ΩΩ
 
.
ΩΩ 
CompletedTask
ΩΩ 
;
ΩΩ 
}
ææ 
internal
¿¿ 

static
¿¿ 
string
¿¿ 
GetMediaType
¿¿ %
(
¿¿% &
MessageVersion
¿¿& 4
version
¿¿5 <
)
¿¿< =
{
¡¡ 
string
¬¬ 	
	mediaType
¬¬
 
;
¬¬ 
if
ƒƒ 
(
ƒƒ 
version
ƒƒ 
.
ƒƒ 
Envelope
ƒƒ 
==
ƒƒ 
EnvelopeVersion
ƒƒ *
.
ƒƒ* +
Soap12
ƒƒ+ 1
)
ƒƒ1 2
{
≈≈ 
	mediaType
∆∆ 
=
∆∆ 
Soap12MediaType
∆∆ 
;
∆∆  
}
«« 
else
»» 
if
»» 

(
»» 
version
»» 
.
»» 
Envelope
»» 
==
»» 
EnvelopeVersion
»»  /
.
»»/ 0
Soap11
»»0 6
)
»»6 7
{
…… 
	mediaType
   
=
   
Soap11MediaType
   
;
    
}
ÀÀ 
else
ÃÃ 
if
ÃÃ 

(
ÃÃ 
version
ÃÃ 
.
ÃÃ 
Envelope
ÃÃ 
==
ÃÃ 
EnvelopeVersion
ÃÃ  /
.
ÃÃ/ 0
None
ÃÃ0 4
)
ÃÃ4 5
{
ÕÕ 
	mediaType
ŒŒ 
=
ŒŒ 
XmlMediaType
ŒŒ 
;
ŒŒ 
}
œœ 
else
–– 
{
—— 
throw
““ 	
new
““
 '
InvalidOperationException
““ '
(
““' (
$"
““( * 
Envelope Version '
““* <
{
““< =
version
““= D
.
““D E
Envelope
““E M
}
““M N!
' is not supported.
““N a
"
““a b
)
““b c
;
““c d
}
”” 
return
’’ 	
	mediaType
’’
 
;
’’ 
}
÷÷ 
internal
ÿÿ 

static
ÿÿ 
string
ÿÿ 
GetContentType
ÿÿ '
(
ÿÿ' (
string
ÿÿ( .
	mediaType
ÿÿ/ 8
,
ÿÿ8 9
string
ÿÿ: @
charSet
ÿÿA H
)
ÿÿH I
{
ŸŸ 
return
⁄⁄ 	
string
⁄⁄
 
.
⁄⁄ 
Format
⁄⁄ 
(
⁄⁄ 
CultureInfo
⁄⁄ #
.
⁄⁄# $
InvariantCulture
⁄⁄$ 4
,
⁄⁄4 5
$str
⁄⁄6 H
,
⁄⁄H I
	mediaType
⁄⁄J S
,
⁄⁄S T
charSet
⁄⁄U \
)
⁄⁄\ ]
;
⁄⁄] ^
}
€€ 
internal
›› 

bool
›› $
IsContentTypeSupported
›› &
(
››& '
string
››' -
contentType
››. 9
,
››9 :
string
››; A"
supportedContentType
››B V
,
››V W
string
››X ^ 
supportedMediaType
››_ q
)
››q r
{
ﬁﬁ 
if
ﬂﬂ 
(
ﬂﬂ "
supportedContentType
ﬂﬂ 
==
ﬂﬂ 
contentType
ﬂﬂ *
)
ﬂﬂ* +
{
‡‡ 
return
·· 

true
·· 
;
·· 
}
‚‚ 
if
‰‰ 
(
‰‰ 
contentType
‰‰ 
.
‰‰ 
Length
‰‰ 
>
‰‰ "
supportedContentType
‰‰ 0
.
‰‰0 1
Length
‰‰1 7
&&
‰‰8 :
contentType
ÂÂ 
.
ÂÂ 

StartsWith
ÂÂ 
(
ÂÂ "
supportedContentType
ÂÂ /
,
ÂÂ/ 0
StringComparison
ÂÂ1 A
.
ÂÂA B
Ordinal
ÂÂB I
)
ÂÂI J
&&
ÂÂK M
contentType
ÊÊ 
[
ÊÊ "
supportedContentType
ÊÊ $
.
ÊÊ$ %
Length
ÊÊ% +
]
ÊÊ+ ,
==
ÊÊ- /
$char
ÊÊ0 3
)
ÊÊ3 4
{
ÁÁ 
return
ËË 

true
ËË 
;
ËË 
}
ÈÈ 
if
ÏÏ 
(
ÏÏ 
contentType
ÏÏ 
.
ÏÏ 

StartsWith
ÏÏ 
(
ÏÏ "
supportedContentType
ÏÏ 2
,
ÏÏ2 3
StringComparison
ÏÏ4 D
.
ÏÏD E
OrdinalIgnoreCase
ÏÏE V
)
ÏÏV W
)
ÏÏW X
{
ÌÌ 
if
ÓÓ 
(
ÓÓ 
contentType
ÓÓ 
.
ÓÓ 
Length
ÓÓ 
==
ÓÓ "
supportedContentType
ÓÓ 2
.
ÓÓ2 3
Length
ÓÓ3 9
)
ÓÓ9 :
{
ÔÔ 
return
 
true
 
;
 
}
ÒÒ 
else
ÚÚ 
if
ÚÚ	 
(
ÚÚ 
contentType
ÚÚ 
.
ÚÚ 
Length
ÚÚ 
>
ÚÚ  !"
supportedContentType
ÚÚ" 6
.
ÚÚ6 7
Length
ÚÚ7 =
)
ÚÚ= >
{
ÛÛ 
char
ÙÙ 	
ch
ÙÙ
 
=
ÙÙ 
contentType
ÙÙ 
[
ÙÙ "
supportedContentType
ÙÙ /
.
ÙÙ/ 0
Length
ÙÙ0 6
]
ÙÙ6 7
;
ÙÙ7 8
if
¯¯ 
(
¯¯ 	
ch
¯¯	 
==
¯¯ 
$char
¯¯ 
)
¯¯ 
{
˘˘ 
return
˙˙ 
true
˙˙ 
;
˙˙ 
}
˚˚ 
int
˛˛ 
i
˛˛	 

=
˛˛ "
supportedContentType
˛˛ !
.
˛˛! "
Length
˛˛" (
;
˛˛( )
if
ˇˇ 
(
ˇˇ 	
ch
ˇˇ	 
==
ˇˇ 
$char
ˇˇ 
&&
ˇˇ 
contentType
ˇˇ "
.
ˇˇ" #
Length
ˇˇ# )
>
ˇˇ* +"
supportedContentType
ˇˇ, @
.
ˇˇ@ A
Length
ˇˇA G
+
ˇˇH I
$num
ˇˇJ K
&&
ˇˇL N
contentType
ˇˇO Z
[
ˇˇZ [
i
ˇˇ[ \
+
ˇˇ] ^
$num
ˇˇ_ `
]
ˇˇ` a
==
ˇˇb d
$char
ˇˇe i
)
ˇˇi j
{
ÄÄ 
i
ÅÅ 
+=
ÅÅ 

$num
ÅÅ 
;
ÅÅ 
ch
ÇÇ 
=
ÇÇ	 

contentType
ÇÇ 
[
ÇÇ 
i
ÇÇ 
]
ÇÇ 
;
ÇÇ 
}
ÉÉ 
if
ÜÜ 
(
ÜÜ 	
ch
ÜÜ	 
==
ÜÜ 
$char
ÜÜ 
||
ÜÜ 
ch
ÜÜ 
==
ÜÜ 
$char
ÜÜ  
)
ÜÜ  !
{
áá 
i
àà 
++
àà 	
;
àà	 

while
ââ 
(
ââ 
i
ââ 
<
ââ 
contentType
ââ 
.
ââ 
Length
ââ #
)
ââ# $
{
ää 
ch
ãã 	
=
ãã
 
contentType
ãã 
[
ãã 
i
ãã 
]
ãã 
;
ãã 
if
åå 	
(
åå
 
ch
åå 
!=
åå 
$char
åå 
&&
åå 
ch
åå 
!=
åå 
$char
åå "
)
åå" #
{
çç 
break
éé 
;
éé 
}
èè 
++
ëë 	
i
ëë	 

;
ëë
 
}
íí 
}
ìì 
if
ïï 
(
ïï 	
ch
ïï	 
==
ïï 
$char
ïï 
||
ïï 
i
ïï 
==
ïï 
contentType
ïï &
.
ïï& '
Length
ïï' -
)
ïï- .
{
ññ 
return
óó 
true
óó 
;
óó 
}
òò 
}
ôô 
}
öö 
try
ûû 
{
üü "
MediaTypeHeaderValue
†† 
parsedContentType
†† *
=
††+ ,"
MediaTypeHeaderValue
††- A
.
††A B
Parse
††B G
(
††G H
contentType
††H S
)
††S T
;
††T U
if
¢¢ 
(
¢¢  
supportedMediaType
¢¢ 
.
¢¢ 
Length
¢¢ !
>
¢¢" #
$num
¢¢$ %
&&
¢¢& (
!
¢¢) * 
supportedMediaType
¢¢* <
.
¢¢< =
Equals
¢¢= C
(
¢¢C D
parsedContentType
¢¢D U
.
¢¢U V
	MediaType
¢¢V _
,
¢¢_ `
StringComparison
¢¢a q
.
¢¢q r 
OrdinalIgnoreCase¢¢r É
)¢¢É Ñ
)¢¢Ñ Ö
{
££ 
return
§§ 
false
§§ 
;
§§ 
}
•• 
if
ßß 
(
ßß 
!
ßß 	 
IsCharSetSupported
ßß	 
(
ßß 
parsedContentType
ßß -
.
ßß- .
CharSet
ßß. 5
)
ßß5 6
)
ßß6 7
{
®® 
return
©© 
false
©© 
;
©© 
}
™™ 
}
´´ 
catch
¨¨ 
(
¨¨	 

FormatException
¨¨
 
)
¨¨ 
{
≠≠ 
return
ØØ 

false
ØØ 
;
ØØ 
}
∞∞ 
return
≤≤ 	
true
≤≤
 
;
≤≤ 
}
≥≥ 
internal
µµ 

virtual
µµ 
bool
µµ  
IsCharSetSupported
µµ *
(
µµ* +
string
µµ+ 1
charset
µµ2 9
)
µµ9 :
{
∂∂ 
return
∑∑ 	
CharSet
∑∑
 
?
∑∑ 
.
∑∑ 
Equals
∑∑ 
(
∑∑ 
charset
∑∑ !
,
∑∑! "
StringComparison
∑∑# 3
.
∑∑3 4
OrdinalIgnoreCase
∑∑4 E
)
∑∑E F
??
∏∏
 
false
∏∏ 
;
∏∏ 
}
ππ 
private
ªª 	
static
ªª
 
bool
ªª 
IsUtf8Encoding
ªª $
(
ªª$ %
Encoding
ªª% -
encoding
ªª. 6
)
ªª6 7
{
ºº 
return
ΩΩ 	
encoding
ΩΩ
 
.
ΩΩ 
WebName
ΩΩ 
==
ΩΩ 
$str
ΩΩ %
;
ΩΩ% &
}
ææ 
private
¿¿ 	
void
¿¿
 -
ThrowIfMismatchedMessageVersion
¿¿ .
(
¿¿. /
Message
¿¿/ 6
message
¿¿7 >
)
¿¿> ?
{
¡¡ 
if
¬¬ 
(
¬¬ 
!
¬¬ 
message
¬¬ 
.
¬¬ 
Version
¬¬ 
.
¬¬ 
Equals
¬¬ 
(
¬¬ 
MessageVersion
¬¬ -
)
¬¬- .
)
¬¬. /
{
√√ 
throw
ƒƒ 	
new
ƒƒ
 '
InvalidOperationException
ƒƒ '
(
ƒƒ' (
$"
ƒƒ( *
Message version 
ƒƒ* :
{
ƒƒ: ;
message
ƒƒ; B
.
ƒƒB C
Version
ƒƒC J
.
ƒƒJ K
Envelope
ƒƒK S
}
ƒƒS T-
 doesn't match encoder version 
ƒƒT s
{
ƒƒs t
message
ƒƒt {
.
ƒƒ{ |
Versionƒƒ| É
.ƒƒÉ Ñ
EnvelopeƒƒÑ å
}ƒƒå ç
"ƒƒç é
)ƒƒé è
;ƒƒè ê
}
≈≈ 
}
∆∆ 
private
»» 	
void
»»
 
WriteXmlCore
»» 
(
»» 
Message
»» #
message
»»$ +
,
»»+ ,
	XmlWriter
»»- 6
	xmlWriter
»»7 @
)
»»@ A
{
…… 
message
   

.
  
 
WriteMessage
   
(
   
	xmlWriter
   !
)
  ! "
;
  " #
	xmlWriter
ÀÀ 
.
ÀÀ 
WriteEndDocument
ÀÀ 
(
ÀÀ 
)
ÀÀ 
;
ÀÀ  
	xmlWriter
ÃÃ 
.
ÃÃ 
Flush
ÃÃ 
(
ÃÃ 
)
ÃÃ 
;
ÃÃ 
	xmlWriter
ÕÕ 
.
ÕÕ 
Dispose
ÕÕ 
(
ÕÕ 
)
ÕÕ 
;
ÕÕ 
}
ŒŒ 
}
œœ 
}–– È,
oC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\MessageEncoder\SoapMessageEncoderDefaults.cs
	namespace 	
SoapCore
 
. 
MessageEncoder !
{		 
internal

 	
class


 &
SoapMessageEncoderDefaults

 *
{ 
public 
static	 
readonly 
Encoding !
[! "
]" #
SupportedEncodings$ 6
=7 8
{9 :
Encoding; C
.C D
UTF8D H
,H I
EncodingJ R
.R S
UnicodeS Z
,Z [
Encoding\ d
.d e
BigEndianUnicodee u
}v w
;w x
public 
static	 
readonly 
CharSetEncoding (
[( )
]) *
CharSetEncodings+ ;
=< =
{ 
new 
CharSetEncoding 
( 
$str 
, 
Encoding  (
.( )
UTF8) -
)- .
,. /
new 
CharSetEncoding 
( 
$str !
,! "
Encoding# +
.+ ,
Unicode, 3
)3 4
,4 5
new 
CharSetEncoding 
( 
$str !
,! "
Encoding# +
.+ ,
BigEndianUnicode, <
)< =
,= >
new 
CharSetEncoding 
( 
$str 
,  
null! %
)% &
,& '
new 
CharSetEncoding 
( 
null 
, 
null !
)! "
," #
} 
; 
public 
static	 
void 
ValidateEncoding %
(% &
Encoding& .
encoding/ 7
)7 8
{ 
if 
( 
TryValidateEncoding 
( 
encoding #
,# $
out% (
var) ,
error- 2
)2 3
==4 6
false7 <
)< =
{ 
throw 	
error
 
; 
} 
} 
public 
static	 
bool 
TryValidateEncoding (
(( )
Encoding) 1
encoding2 :
,: ;
out< ?
	Exception@ I
	exceptionJ S
)S T
{   
string!! 	
charSet!!
 
=!! 
encoding!! 
.!! 
WebName!! $
;!!$ %
Encoding"" 
["" 
]"" 
supportedEncodings""  
=""! "
SupportedEncodings""# 5
;""5 6
for$$ 
($$ 
int$$ 
i$$ 
=$$ 
$num$$ 
;$$ 
i$$ 
<$$ 
supportedEncodings$$ )
.$$) *
Length$$* 0
;$$0 1
i$$2 3
++$$3 5
)$$5 6
{%% 
if&& 
(&& 
charSet&& 
==&& 
supportedEncodings&& %
[&&% &
i&&& '
]&&' (
.&&( )
WebName&&) 0
)&&0 1
{'' 
	exception(( 
=(( 
null(( 
;(( 
return)) 
true)) 
;)) 
}** 
}++ 
	exception-- 
=-- 
new-- 
ArgumentException-- $
(--$ %
$"--% '
The text encoding '--' :
{--: ;
charSet--; B
}--B C?
3' used in the text message format is not supported.--C v
"--v w
,--w x
nameof--y 
(	-- Ä
encoding
--Ä à
)
--à â
)
--â ä
;
--ä ã
return.. 	
false..
 
;.. 
}// 
public11 
static11	 
string11 
EncodingToCharSet11 (
(11( )
Encoding11) 1
encoding112 :
)11: ;
{22 
string33 	
webName33
 
=33 
encoding33 
.33 
WebName33 $
;33$ %
foreach55 

(55 
var55 
charSetEncoding55 
in55  "
CharSetEncodings55# 3
)553 4
{66 
if77 
(77 
charSetEncoding77 
.77 
Encoding77  
==77! #
null77$ (
)77( )
{88 
continue99 
;99 
}:: 
if<< 
(<< 
charSetEncoding<< 
.<< 
Encoding<<  
.<<  !
WebName<<! (
==<<) +
webName<<, 3
)<<3 4
{== 
return>> 
charSetEncoding>> 
.>> 
CharSet>> #
;>># $
}?? 
}@@ 
returnBB 	
nullBB
 
;BB 
}CC 
publicEE 
classEE	 
CharSetEncodingEE 
{FF 
publicGG 	
CharSetEncodingGG
 
(GG 
stringGG  
charSetGG! (
,GG( )
EncodingGG* 2
encGG3 6
)GG6 7
{HH 
CharSetII 
=II 
charSetII 
;II 
EncodingJJ 
=JJ 
encJJ 
;JJ 
}KK 
publicMM 	
stringMM
 
CharSetMM 
{MM 
getMM 
;MM 
}MM  !
publicNN 	
EncodingNN
 
EncodingNN 
{NN 
getNN !
;NN! "
}NN# $
}OO 
}PP 
}QQ Î
\C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\MessageFaultBodyWriter.cs
	namespace 	
SoapCore
 
{ 
public

 
class

 "
MessageFaultBodyWriter

 $
:

% &

BodyWriter

' 1
{ 
private 	
readonly
 
MessageFault 
_fault  &
;& '
private 	
readonly
 
MessageVersion !
_messageVersion" 1
;1 2
public "
MessageFaultBodyWriter	 
(  
MessageFault  ,
fault- 2
,2 3
MessageVersion4 B
messageVersionC Q
,Q R
boolS W

isBufferedX b
=c d
truee i
)i j
:k l
basem q
(q r

isBufferedr |
)| }
{ 
_fault 	
=
 
fault 
; 
_messageVersion 
= 
messageVersion #
;# $
} 
	protected 
override 
void 
OnWriteBodyContents -
(- .
XmlDictionaryWriter. A
writerB H
)H I
{ 
var 
writeToMethod 
= 
_fault 
. 
GetType %
(% &
)& '
.' (
	GetMethod( 1
(1 2
$str2 ;
,; <
new= @
[@ A
]A B
{C D
typeofE K
(K L
XmlDictionaryWriterL _
)_ `
,` a
typeofb h
(h i
EnvelopeVersioni x
)x y
}z {
){ |
;| }
writeToMethod 
. 
Invoke 
( 
_fault 
, 
new  #
object$ *
[* +
]+ ,
{- .
writer/ 5
,5 6
_messageVersion7 F
.F G
EnvelopeG O
}P Q
)Q R
;R S
} 
} 
} Ô	
\C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Meta\BindingExtensions.cs
	namespace 	
SoapCore
 
. 
Meta 
{ 
internal 	
static
 
class 
BindingExtensions (
{ 
public 
static	 
bool 
HasBasicAuth !
(! "
this" &
Binding' .
binding/ 6
)6 7
{		 
var

 #
transportBindingElement

 
=

  
binding

! (
?

( )
.

) *!
CreateBindingElements

* ?
(

? @
)

@ A
.

A B
Find

B F
<

F G'
HttpTransportBindingElement

G b
>

b c
(

c d
)

d e
;

e f
if 
( #
transportBindingElement 
!= !
null" &
)& '
{ 
return 
#
transportBindingElement "
." # 
AuthenticationScheme# 7
==8 :!
AuthenticationSchemes; P
.P Q
BasicQ V
;V W
} 
return 	
false
 
; 
} 
} 
} Êå
_C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Meta\BodyWriterExtensions.cs
	namespace 	
SoapCore
 
. 
Meta 
{ 
public 
static 
class  
BodyWriterExtensions )
{ 
private 	
static
 
readonly 
bool  
UseXmlSchemaProvider 3
=4 5
true6 :
;: ;
private 	
static
 
readonly 
bool $
UseXmlReflectionImporter 7
=8 9
false: ?
;? @
public 
static	 
bool :
.TryAddSchemaTypeFromXmlSchemaProviderAttribute C
(C D
thisD H
XmlDictionaryWriterI \
writer] c
,c d
Typee i
typej n
,n o
stringp v
namew {
,{ |
SoapSerializer	} ã

serializer
å ñ
,
ñ ó!
XmlNamespaceManager
ò ´!
xmlNamespaceManager
¨ ø
=
¿ ¡
null
¬ ∆
)
∆ «
{ 
if 
( 
!  
UseXmlSchemaProvider 
&& 
!  !$
UseXmlReflectionImporter! 9
)9 :
{ 
return 

false 
; 
} 
if 
( $
UseXmlReflectionImporter 
)  
{ 
var 
schemas 
= 
new 

XmlSchemas  
(  !
)! "
;" #
var 
xmlImporter 
= 
new !
XmlReflectionImporter /
(/ 0
)0 1
;1 2
var 
exporter 
= 
new 
XmlSchemaExporter (
(( )
schemas) 0
)0 1
;1 2
var 
xmlTypeMapping 
= 
xmlImporter $
.$ %
ImportTypeMapping% 6
(6 7
type7 ;
,; <
new= @
XmlRootAttributeA Q
(Q R
)R S
{T U
ElementNameV a
=b c
named h
}i j
)j k
;k l
exporter   
.   
ExportTypeMapping   
(   
xmlTypeMapping   -
)  - .
;  . /
schemas!! 
.!! 
Compile!! 
(!! 
null!! 
,!! 
true!! 
)!! 
;!!  
var## 
memoryStream## 
=## 
new## 
MemoryStream## '
(##' (
)##( )
;##) *
foreach$$ 
($$ 
	XmlSchema$$ 
schema$$ 
in$$  
schemas$$! (
)$$( )
{%% 
schema&& 
.&& 
Write&& 
(&& 
memoryStream&& 
)&& 
;&&  
}'' 
memoryStream)) 
.)) 
Position)) 
=)) 
$num)) 
;)) 
var++ 
streamReader++ 
=++ 
new++ 
StreamReader++ '
(++' (
memoryStream++( 4
)++4 5
;++5 6
var,, 
result,, 
=,, 
streamReader,, 
.,, 
	ReadToEnd,, '
(,,' (
),,( )
;,,) *
var.. 
doc.. 
=.. 
new.. 
XmlDocument.. 
(.. 
).. 
;..  
doc// 
.// 
LoadXml// 
(// 
result// 
)// 
;// 
doc00 
.00 
DocumentElement00 
.00 
WriteContentTo00 &
(00& '
writer00' -
)00- .
;00. /
return22 

true22 
;22 
}33 
var55 
xmlSchemaSet55 
=55 
xmlNamespaceManager55 )
==55* ,
null55- 1
?552 3
new554 7
XmlSchemaSet558 D
(55D E
)55E F
:55G H
new55I L
XmlSchemaSet55M Y
(55Y Z
xmlNamespaceManager55Z m
.55m n
	NameTable55n w
)55w x
;55x y
var66 &
xmlSchemaProviderAttribute66 !
=66" #
type66$ (
.66( )
GetCustomAttribute66) ;
<66; <&
XmlSchemaProviderAttribute66< V
>66V W
(66W X
true66X \
)66\ ]
;66] ^
if77 
(77 &
xmlSchemaProviderAttribute77 !
!=77" $
null77% )
&&77* ,
true77- 1
)771 2
{88 
	XmlSchema99 
schema99 
=99 
new99 
	XmlSchema99 $
(99$ %
)99% &
;99& '
if:: 
(:: 
xmlNamespaceManager:: 
!=:: 
null:: #
)::# $
{;; 
schema<< 
.<< 

Namespaces<< 
=<< 
xmlNamespaceManager<< ,
.<<, -
Convert<<- 4
(<<4 5
)<<5 6
;<<6 7
}== 
if?? 
(?? &
xmlSchemaProviderAttribute?? "
.??" #
IsAny??# (
)??( )
{@@ 
varAA 
sequenceAA	 
=AA 
newAA 
XmlSchemaSequenceAA )
(AA) *
)AA* +
;AA+ ,
sequenceBB 
.BB 
ItemsBB 
.BB 
AddBB 
(BB 
newBB 
XmlSchemaAnyBB (
(BB( )
)BB) *
{BB+ ,
ProcessContentsBB- <
=BB= >&
XmlSchemaContentProcessingBB? Y
.BBY Z
LaxBBZ ]
}BB^ _
)BB_ `
;BB` a
varCC 
complexCC	 
=CC 
newCC  
XmlSchemaComplexTypeCC +
(CC+ ,
)CC, -
{DD 
ParticleEE 
=EE 
sequenceEE 
}FF 
;FF 
varGG 
elementGG	 
=GG 
newGG 
XmlSchemaElementGG '
(GG' (
)GG( )
{HH 
	MinOccursII 
=II 
$numII 
,II 
	MaxOccursJJ 
=JJ 
$numJJ 
,JJ 
NameKK 

=KK 
nameKK 
,KK 

IsNillableLL 
=LL 

serializerLL 
==LL  
SoapSerializerLL! /
.LL/ 0"
DataContractSerializerLL0 F
,LLF G

SchemaTypeMM 
=MM 
complexMM 
}NN 
;NN 
schemaOO 
.OO 
ItemsOO 
.OO 
AddOO 
(OO 
elementOO 
)OO 
;OO 
}PP 
elseQQ 
{RR 
varSS 

methodInfoSS	 
=SS 
typeSS 
.SS 
	GetMethodSS $
(SS$ %&
xmlSchemaProviderAttributeSS% ?
.SS? @

MethodNameSS@ J
,SSJ K
BindingFlagsSSL X
.SSX Y
StaticSSY _
|SS` a
BindingFlagsSSb n
.SSn o
PublicSSo u
)SSu v
;SSv w
varTT 
xmlSchemaTypeTT	 
=TT 
(TT 
XmlSchemaTypeTT '
)TT' (

methodInfoTT( 2
.TT2 3
InvokeTT3 9
(TT9 :
nullTT: >
,TT> ?
newTT@ C
objectTTD J
[TTJ K
]TTK L
{TTM N
xmlSchemaSetTTO [
}TT\ ]
)TT] ^
;TT^ _
varUU 
elementUU	 
=UU 
newUU 
XmlSchemaElementUU '
(UU' (
)UU( )
{VV 
	MinOccursWW 
=WW 
$numWW 
,WW 
	MaxOccursXX 
=XX 
$numXX 
,XX 
NameYY 

=YY 
nameYY 
,YY 

SchemaTypeZZ 
=ZZ 
xmlSchemaTypeZZ  
}[[ 
;[[ 
schema\\ 
.\\ 
Items\\ 
.\\ 
Add\\ 
(\\ 
element\\ 
)\\ 
;\\ 
}]] 
var__ 
memoryStream__ 
=__ 
new__ 
MemoryStream__ '
(__' (
)__( )
;__) *
schema`` 

.``
 
Write`` 
(`` 
memoryStream`` 
)`` 
;`` 
memoryStreamaa 
.aa 
Positionaa 
=aa 
$numaa 
;aa 
varcc 
streamReadercc 
=cc 
newcc 
StreamReadercc '
(cc' (
memoryStreamcc( 4
)cc4 5
;cc5 6
vardd 
resultdd 
=dd 
streamReaderdd 
.dd 
	ReadToEnddd '
(dd' (
)dd( )
;dd) *
varff 
docff 
=ff 
newff 
XmlDocumentff 
(ff 
)ff 
;ff  
docgg 
.gg 
LoadXmlgg 
(gg 
resultgg 
)gg 
;gg 
dochh 
.hh 
DocumentElementhh 
.hh 
WriteContentTohh &
(hh& '
writerhh' -
)hh- .
;hh. /
returnjj 

truejj 
;jj 
}kk 
returnmm 	
falsemm
 
;mm 
}nn 
publicpp 
staticpp	 
boolpp 
IsChoicepp 
(pp 
thispp "
PropertyInfopp# /
propertypp0 8
)pp8 9
{qq 
varrr 

choiceItemrr 
=rr 
propertyrr 
.rr 
GetCustomAttributerr /
<rr/ 0(
XmlChoiceIdentifierAttributerr0 L
>rrL M
(rrM N
)rrN O
;rrO P
returnss 	

choiceItemss
 
!=ss 
nullss 
;ss 
}tt 
publicvv 
staticvv	 
boolvv 
IsAttributevv  
(vv  !
thisvv! %
PropertyInfovv& 2
propertyvv3 ;
)vv; <
{ww 
varxx 
attributeItemxx 
=xx 
propertyxx 
.xx  
GetCustomAttributexx  2
<xx2 3!
XmlAttributeAttributexx3 H
>xxH I
(xxI J
)xxJ K
;xxK L
returnyy 	
attributeItemyy
 
!=yy 
nullyy 
;yy  
}zz 
public|| 
static||	 
bool|| 
	IsIgnored|| 
(|| 
this|| #
PropertyInfo||$ 0
property||1 9
)||9 :
{}} 
return~~ 	
property~~
 
. 
CustomAttributes 
.
ÄÄ 
Any
ÄÄ 
(
ÄÄ 	
attr
ÄÄ	 
=>
ÄÄ 
attr
ÅÅ 	
.
ÅÅ	 

AttributeType
ÅÅ
 
==
ÅÅ 
typeof
ÅÅ !
(
ÅÅ! "'
IgnoreDataMemberAttribute
ÅÅ" ;
)
ÅÅ; <
||
ÅÅ= ?
attr
ÇÇ 	
.
ÇÇ	 

AttributeType
ÇÇ
 
==
ÇÇ 
typeof
ÇÇ !
(
ÇÇ! " 
XmlIgnoreAttribute
ÇÇ" 4
)
ÇÇ4 5
)
ÇÇ5 6
;
ÇÇ6 7
}
ÉÉ 
public
ÖÖ 
static
ÖÖ	 
bool
ÖÖ 
IsEnumerableType
ÖÖ %
(
ÖÖ% &
this
ÖÖ& *
Type
ÖÖ+ /
collectionType
ÖÖ0 >
)
ÖÖ> ?
{
ÜÜ 
if
áá 
(
áá 
collectionType
áá 
.
áá 
IsArray
áá 
)
áá 
{
àà 
return
ââ 

true
ââ 
;
ââ 
}
ää 
return
åå 	
typeof
åå
 
(
åå 
IEnumerable
åå 
)
åå 
.
åå 
IsAssignableFrom
åå .
(
åå. /
collectionType
åå/ =
)
åå= >
;
åå> ?
}
çç 
public
èè 
static
èè	 
Type
èè 
GetGenericType
èè #
(
èè# $
this
èè$ (
Type
èè) -
collectionType
èè. <
)
èè< =
{
êê 
var
íí 
baseType
íí 
=
íí 
collectionType
íí  
;
íí  !
var
ìì 
baseTypeInfo
ìì 
=
ìì 
collectionType
ìì $
.
ìì$ %
GetTypeInfo
ìì% 0
(
ìì0 1
)
ìì1 2
;
ìì2 3
while
îî 
(
îî	 

!
îî
 
baseTypeInfo
îî 
.
îî 
IsGenericType
îî %
&&
îî& (
baseTypeInfo
îî) 5
.
îî5 6
BaseType
îî6 >
!=
îî? A
null
îîB F
)
îîF G
{
ïï 
baseType
ññ 
=
ññ 
baseTypeInfo
ññ 
.
ññ 
BaseType
ññ $
;
ññ$ %
baseTypeInfo
óó 
=
óó 
baseType
óó 
.
óó 
GetTypeInfo
óó '
(
óó' (
)
óó( )
;
óó) *
}
òò 
return
öö 	
baseType
öö
 
.
öö 
GetTypeInfo
öö 
(
öö 
)
öö  
.
öö  !!
GetGenericArguments
öö! 4
(
öö4 5
)
öö5 6
.
öö6 7
DefaultIfEmpty
öö7 E
(
ööE F
typeof
ööF L
(
ööL M
object
ööM S
)
ööS T
)
ööT U
.
ööU V
FirstOrDefault
ööV d
(
ööd e
)
ööe f
;
ööf g
}
õõ 
public
ùù 
static
ùù	 
string
ùù #
GetSerializedTypeName
ùù ,
(
ùù, -
this
ùù- 1
Type
ùù2 6
type
ùù7 ;
)
ùù; <
{
ûû 
var
üü 
	namedType
üü 
=
üü 
type
üü 
;
üü 
if
†† 
(
†† 
type
†† 
.
†† 
IsArray
†† 
)
†† 
{
°° 
	namedType
¢¢ 
=
¢¢ 
type
¢¢ 
.
¢¢ 
GetElementType
¢¢ #
(
¢¢# $
)
¢¢$ %
;
¢¢% &
}
££ 
else
§§ 
if
§§ 

(
§§ 
typeof
§§ 
(
§§ 
IEnumerable
§§ 
)
§§ 
.
§§  
IsAssignableFrom
§§  0
(
§§0 1
type
§§1 5
)
§§5 6
&&
§§7 9
type
§§: >
.
§§> ?
IsGenericType
§§? L
)
§§L M
{
•• 
	namedType
¶¶ 
=
¶¶ 
GetGenericType
¶¶ 
(
¶¶ 
type
¶¶ #
)
¶¶# $
;
¶¶$ %
}
ßß 
string
©© 	
typeName
©©
 
=
©© 
	namedType
©© 
.
©© 
Name
©© #
;
©©# $
var
™™ 
xmlTypeAttribute
™™ 
=
™™ 
	namedType
™™ #
.
™™# $ 
GetCustomAttribute
™™$ 6
<
™™6 7
XmlTypeAttribute
™™7 G
>
™™G H
(
™™H I
true
™™I M
)
™™M N
;
™™N O
if
´´ 
(
´´ 
xmlTypeAttribute
´´ 
!=
´´ 
null
´´ 
&&
´´  "
!
´´# $
string
´´$ *
.
´´* + 
IsNullOrWhiteSpace
´´+ =
(
´´= >
xmlTypeAttribute
´´> N
.
´´N O
TypeName
´´O W
)
´´W X
)
´´X Y
{
¨¨ 
typeName
≠≠ 
=
≠≠ 
xmlTypeAttribute
≠≠ 
.
≠≠  
TypeName
≠≠  (
;
≠≠( )
}
ÆÆ 
if
∞∞ 
(
∞∞ 
type
∞∞ 
.
∞∞ 
IsArray
∞∞ 
)
∞∞ 
{
±± 
typeName
≤≤ 
=
≤≤ 
$str
≤≤ 
+
≤≤ 
typeName
≤≤ #
.
≤≤# $
Replace
≤≤$ +
(
≤≤+ ,
$str
≤≤, 0
,
≤≤0 1
string
≤≤2 8
.
≤≤8 9
Empty
≤≤9 >
)
≤≤> ?
;
≤≤? @
}
≥≥ 
if
µµ 
(
µµ 
typeof
µµ 
(
µµ 
IEnumerable
µµ 
)
µµ 
.
µµ 
IsAssignableFrom
µµ +
(
µµ+ ,
type
µµ, 0
)
µµ0 1
&&
µµ2 4
type
µµ5 9
.
µµ9 :
IsGenericType
µµ: G
)
µµG H
{
∂∂ 
typeName
∑∑ 
=
∑∑ 
$str
∑∑ 
+
∑∑ 
typeName
∑∑ #
;
∑∑# $
}
∏∏ 
return
∫∫ 	
typeName
∫∫
 
;
∫∫ 
}
ªª 
private
ΩΩ 	
static
ΩΩ
 %
XmlSerializerNamespaces
ΩΩ (
Convert
ΩΩ) 0
(
ΩΩ0 1
this
ΩΩ1 5!
XmlNamespaceManager
ΩΩ6 I!
xmlNamespaceManager
ΩΩJ ]
)
ΩΩ] ^
{
ææ %
XmlSerializerNamespaces
øø %
xmlSerializerNamespaces
øø 2
=
øø3 4
new
øø5 8%
XmlSerializerNamespaces
øø9 P
(
øøP Q
)
øøQ R
;
øøR S
foreach
¿¿ 

(
¿¿ 
var
¿¿ 
ns
¿¿ 
in
¿¿ !
xmlNamespaceManager
¿¿ )
.
¿¿) *"
GetNamespacesInScope
¿¿* >
(
¿¿> ?
XmlNamespaceScope
¿¿? P
.
¿¿P Q
Local
¿¿Q V
)
¿¿V W
)
¿¿W X
{
¡¡ %
xmlSerializerNamespaces
¬¬ 
.
¬¬ 
Add
¬¬ 
(
¬¬  
ns
¬¬  "
.
¬¬" #
Key
¬¬# &
,
¬¬& '
ns
¬¬( *
.
¬¬* +
Value
¬¬+ 0
)
¬¬0 1
;
¬¬1 2
}
√√ 
return
≈≈ 	%
xmlSerializerNamespaces
≈≈
 !
;
≈≈! "
}
∆∆ 
}
«« 
}»» Õâ
YC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Meta\MetaBodyWriter.cs
	namespace 	
SoapCore
 
. 
Meta 
{ 
public 
class 
MetaBodyWriter 
: 

BodyWriter )
{ 
private 	
static
 
int 
_namespaceCounter &
=' (
$num) *
;* +
private 	
readonly
 
ServiceDescription %
_service& .
;. /
private 	
readonly
 
string 
_baseUrl "
;" #
private 	
readonly
 
XmlNamespaceManager & 
_xmlNamespaceManager' ;
;; <
private 	
readonly
 
Queue 
< 
Type 
> 
_enumToBuild +
;+ ,
private 	
readonly
 
Queue 
< 
TypeToBuild $
>$ %
_complexTypeToBuild& 9
;9 :
private 	
readonly
 
Queue 
< 
Type 
> 
_arrayToBuild ,
;, -
private 	
readonly
 
HashSet 
< 
string !
>! "
_builtEnumTypes# 2
;2 3
private 	
readonly
 
HashSet 
< 
string !
>! "
_builtComplexTypes# 5
;5 6
private 	
readonly
 
HashSet 
< 
string !
>! "
_buildArrayTypes# 3
;3 4
private 	
readonly
 

Dictionary 
< 
string $
,$ %

Dictionary& 0
<0 1
string1 7
,7 8
string9 ?
>? @
>@ A"
_requestedDynamicTypesB X
;X Y
private!! 	
readonly!!
 
MessageVersion!! !
_version!!" *
;!!* +
private"" 	
readonly""
 
bool"" 
	_isSoap12"" !
=""" #
true""$ (
;""( )
private$$ 	
bool$$
  
_buildDateTimeOffset$$ #
;$$# $
public&& 
MetaBodyWriter&&	 
(&& 
ServiceDescription&& *
service&&+ 2
,&&2 3
string&&4 :
baseUrl&&; B
,&&B C
Binding&&D K
binding&&L S
,&&S T
XmlNamespaceManager&&U h
xmlNamespaceManager&&i |
=&&} ~
null	&& É
)
&&É Ñ
:
&&Ö Ü
base
&&á ã
(
&&ã å

isBuffered
&&å ñ
:
&&ñ ó
true
&&ò ú
)
&&ú ù
{'' 
_service(( 
=(( 
service(( 
;(( 
_baseUrl)) 
=)) 
baseUrl)) 
;))  
_xmlNamespaceManager** 
=** 
xmlNamespaceManager** -
??**. 0
new**1 4
XmlNamespaceManager**5 H
(**H I
new**I L
	NameTable**M V
(**V W
)**W X
)**X Y
;**Y Z
_enumToBuild,, 
=,, 
new,, 
Queue,, 
<,, 
Type,,  
>,,  !
(,,! "
),," #
;,,# $
_complexTypeToBuild-- 
=-- 
new-- 
Queue-- "
<--" #
TypeToBuild--# .
>--. /
(--/ 0
)--0 1
;--1 2
_arrayToBuild.. 
=.. 
new.. 
Queue.. 
<.. 
Type.. !
>..! "
(.." #
)..# $
;..$ %
_builtEnumTypes// 
=// 
new// 
HashSet//  
<//  !
string//! '
>//' (
(//( )
)//) *
;//* +
_builtComplexTypes00 
=00 
new00 
HashSet00 #
<00# $
string00$ *
>00* +
(00+ ,
)00, -
;00- .
_buildArrayTypes11 
=11 
new11 
HashSet11 !
<11! "
string11" (
>11( )
(11) *
)11* +
;11+ ,"
_requestedDynamicTypes22 
=22 
new22 

Dictionary22  *
<22* +
string22+ 1
,221 2

Dictionary223 =
<22= >
string22> D
,22D E
string22F L
>22L M
>22M N
(22N O
)22O P
;22P Q
if44 
(44 
binding44 
!=44 
null44 
)44 
{55 
BindingName66 
=66 
binding66 
.66 
Name66 
;66 
PortName77 
=77 
binding77 
.77 
Name77 
;77 
_version88 
=88 
binding88 
.88 
MessageVersion88 %
;88% &
	_isSoap1299 
=99 
_version99 
==99 
MessageVersion99 *
.99* + 
Soap12WSAddressing1099+ ?
||99@ B
_version99C K
==99L N
MessageVersion99O ]
.99] ^(
Soap12WSAddressingAugust200499^ z
;99z {
}:: 
else;; 
{<< 
BindingName== 
=== 
$str== %
+==& '
_service==( 0
.==0 1
	Contracts==1 :
.==: ;
First==; @
(==@ A
)==A B
.==B C
Name==C G
;==G H
PortName>> 
=>> 
$str>> "
+>># $
_service>>% -
.>>- .
	Contracts>>. 7
.>>7 8
First>>8 =
(>>= >
)>>> ?
.>>? @
Name>>@ D
;>>D E
}?? 
}@@ 
privateBB 	
stringBB
 
BindingNameBB 
{BB 
getBB "
;BB" #
}BB$ %
privateCC 	
stringCC
 
BindingTypeCC 
=>CC 
_serviceCC  (
.CC( )
	ContractsCC) 2
.CC2 3
FirstCC3 8
(CC8 9
)CC9 :
.CC: ;
NameCC; ?
;CC? @
privateDD 	
stringDD
 
PortNameDD 
{DD 
getDD 
;DD  
}DD! "
privateFF 	
stringFF
 
TargetNameSpaceFF  
=>FF! #
_serviceFF$ ,
.FF, -
	ContractsFF- 6
.FF6 7
FirstFF7 <
(FF< =
)FF= >
.FF> ?
	NamespaceFF? H
;FFH I
	protectedHH 
overrideHH 
voidHH 
OnWriteBodyContentsHH -
(HH- .
XmlDictionaryWriterHH. A
writerHHB H
)HHH I
{II 
AddTypesJJ 
(JJ 
writerJJ 
)JJ 
;JJ 

AddMessageLL 
(LL 
writerLL 
)LL 
;LL 
AddPortTypeNN 
(NN 
writerNN 
)NN 
;NN 

AddBindingPP 
(PP 
writerPP 
)PP 
;PP 

AddServiceRR 
(RR 
writerRR 
)RR 
;RR 
}SS 
privateUU 	
staticUU
 
boolUU (
IsWrappedMessageContractTypeUU 2
(UU2 3
TypeUU3 7
typeUU8 <
)UU< =
{VV 
varWW $
messageContractAttributeWW 
=WW  !
typeWW" &
.WW& '
GetCustomAttributeWW' 9
<WW9 :$
MessageContractAttributeWW: R
>WWR S
(WWS T
)WWT U
;WWU V
ifYY 
(YY $
messageContractAttributeYY 
!=YY  "
nullYY# '
)YY' (
{ZZ 
return[[ 
$
messageContractAttribute[[ #
.[[# $
	IsWrapped[[$ -
;[[- .
}\\ 
return^^ 	
false^^
 
;^^ 
}__ 
privateaa 	
staticaa
 
Typeaa &
GetMessageContractBodyTypeaa 0
(aa0 1
Typeaa1 5
typeaa6 :
)aa: ;
{bb 
ifcc 
(cc 
!cc )
TryGetMessageContractBodyTypecc %
(cc% &
typecc& *
,cc* +
outcc, /
varcc0 3
bodyTypecc4 <
)cc< =
)cc= >
{dd 
throwee 	
newee
 %
InvalidOperationExceptionee '
(ee' (
nameofee( .
(ee. /
typeee/ 3
)ee3 4
)ee4 5
;ee5 6
}ff 
returnhh 	
bodyTypehh
 
;hh 
}ii 
privatekk 	
statickk
 
stringkk &
GetMessageContractBodyNamekk 2
(kk2 3
Typekk3 7
typekk8 <
)kk< =
{ll 
ifmm 
(mm 
!mm /
#TryGetMessageContractBodyMemberInfomm +
(mm+ ,
typemm, 0
,mm0 1
outmm2 5
varmm6 9

memberInfomm: D
)mmD E
)mmE F
{nn 
throwoo 	
newoo
 %
InvalidOperationExceptionoo '
(oo' (
nameofoo( .
(oo. /
typeoo/ 3
)oo3 4
)oo4 5
;oo5 6
}pp 
returnrr 	

memberInforr
 
.rr 
Namerr 
;rr 
}ss 
privateuu 	
staticuu
 
booluu )
TryGetMessageContractBodyTypeuu 3
(uu3 4
Typeuu4 8
typeuu9 =
,uu= >
outuu? B
TypeuuC G
bodyTypeuuH P
)uuP Q
{vv 
varww $
messageContractAttributeww 
=ww  !
typeww" &
.ww& '
GetCustomAttributeww' 9
<ww9 :$
MessageContractAttributeww: R
>wwR S
(wwS T
)wwT U
;wwU V
ifyy 
(yy $
messageContractAttributeyy 
!=yy  "
nullyy# '
&&yy( *
!yy+ ,$
messageContractAttributeyy, D
.yyD E
	IsWrappedyyE N
)yyN O
{zz 
var{{ 
messageBodyMembers{{ 
={{ 
type|| 	
.}} %
GetPropertyOrFieldMembers}}  
(}}  !
)}}! "
.~~ 
Select~~ 
(~~ 
mi~~ 
=>~~ 
new~~ 
{ 
Member
ÄÄ 
=
ÄÄ 
mi
ÄÄ 
,
ÄÄ (
MessageBodyMemberAttribute
ÅÅ !
=
ÅÅ" #
mi
ÅÅ$ &
.
ÅÅ& ' 
GetCustomAttribute
ÅÅ' 9
<
ÅÅ9 :(
MessageBodyMemberAttribute
ÅÅ: T
>
ÅÅT U
(
ÅÅU V
)
ÅÅV W
}
ÇÇ 
)
ÇÇ 
.
ÉÉ 
Where
ÉÉ 
(
ÉÉ 
x
ÉÉ 
=>
ÉÉ 
x
ÉÉ 
.
ÉÉ (
MessageBodyMemberAttribute
ÉÉ .
!=
ÉÉ/ 1
null
ÉÉ2 6
)
ÉÉ6 7
.
ÑÑ 
OrderBy
ÑÑ 
(
ÑÑ 
x
ÑÑ 
=>
ÑÑ 
x
ÑÑ 
.
ÑÑ (
MessageBodyMemberAttribute
ÑÑ 0
.
ÑÑ0 1
Order
ÑÑ1 6
)
ÑÑ6 7
.
ÖÖ 
ToList
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
if
áá 
(
áá  
messageBodyMembers
áá 
.
áá 
Count
áá  
>
áá! "
$num
áá# $
)
áá$ %
{
àà 
bodyType
ââ 
=
ââ  
messageBodyMembers
ââ "
[
ââ" #
$num
ââ# $
]
ââ$ %
.
ââ% &
Member
ââ& ,
.
ââ, -$
GetPropertyOrFieldType
ââ- C
(
ââC D
)
ââD E
;
ââE F
return
ää 
true
ää 
;
ää 
}
ãã 
else
åå 
{
çç 
bodyType
éé 
=
éé 
null
éé 
;
éé 
return
èè 
false
èè 
;
èè 
}
êê 
}
ëë 
bodyType
ìì 
=
ìì 
type
ìì 
;
ìì 
return
îî 	
true
îî
 
;
îî 
}
ïï 
private
óó 	
static
óó
 
bool
óó 1
#TryGetMessageContractBodyMemberInfo
óó 9
(
óó9 :
Type
óó: >
type
óó? C
,
óóC D
out
óóE H

MemberInfo
óóI S
bodyType
óóT \
)
óó\ ]
{
òò 
var
ôô &
messageContractAttribute
ôô 
=
ôô  !
type
ôô" &
.
ôô& ' 
GetCustomAttribute
ôô' 9
<
ôô9 :&
MessageContractAttribute
ôô: R
>
ôôR S
(
ôôS T
)
ôôT U
;
ôôU V
if
õõ 
(
õõ &
messageContractAttribute
õõ 
!=
õõ  "
null
õõ# '
&&
õõ( *
!
õõ+ ,&
messageContractAttribute
õõ, D
.
õõD E
	IsWrapped
õõE N
)
õõN O
{
úú 
var
ùù  
messageBodyMembers
ùù 
=
ùù 
type
ûû 	
.
üü '
GetPropertyOrFieldMembers
üü  
(
üü  !
)
üü! "
.
†† 
Select
†† 
(
†† 
mi
†† 
=>
†† 
new
†† 
{
°° 
Member
¢¢ 
=
¢¢ 
mi
¢¢ 
,
¢¢ (
MessageBodyMemberAttribute
££ !
=
££" #
mi
££$ &
.
££& ' 
GetCustomAttribute
££' 9
<
££9 :(
MessageBodyMemberAttribute
££: T
>
££T U
(
££U V
)
££V W
}
§§ 
)
§§ 
.
•• 
Where
•• 
(
•• 
x
•• 
=>
•• 
x
•• 
.
•• (
MessageBodyMemberAttribute
•• .
!=
••/ 1
null
••2 6
)
••6 7
.
¶¶ 
OrderBy
¶¶ 
(
¶¶ 
x
¶¶ 
=>
¶¶ 
x
¶¶ 
.
¶¶ (
MessageBodyMemberAttribute
¶¶ 0
.
¶¶0 1
Order
¶¶1 6
)
¶¶6 7
.
ßß 
ToList
ßß 
(
ßß 
)
ßß 
;
ßß 
if
©© 
(
©©  
messageBodyMembers
©© 
.
©© 
Count
©©  
>
©©! "
$num
©©# $
)
©©$ %
{
™™ 
bodyType
´´ 
=
´´  
messageBodyMembers
´´ "
[
´´" #
$num
´´# $
]
´´$ %
.
´´% &
Member
´´& ,
;
´´, -
return
¨¨ 
true
¨¨ 
;
¨¨ 
}
≠≠ 
else
ÆÆ 
{
ØØ 
bodyType
∞∞ 
=
∞∞ 
null
∞∞ 
;
∞∞ 
return
±± 
false
±± 
;
±± 
}
≤≤ 
}
≥≥ 
bodyType
µµ 
=
µµ 
type
µµ 
;
µµ 
return
∂∂ 	
true
∂∂
 
;
∂∂ 
}
∑∑ 
private
ππ 	
XmlQualifiedName
ππ
 
ResolveType
ππ &
(
ππ& '
Type
ππ' +
type
ππ, 0
)
ππ0 1
{
∫∫ 
string
ªª 	
typeName
ªª
 
=
ªª 
type
ªª 
.
ªª 
IsEnum
ªª  
?
ªª! "
type
ªª# '
.
ªª' (#
GetEnumUnderlyingType
ªª( =
(
ªª= >
)
ªª> ?
.
ªª? @
Name
ªª@ D
:
ªªE F
type
ªªG K
.
ªªK L
Name
ªªL P
;
ªªP Q
string
ºº 	
resolvedType
ºº
 
=
ºº 
null
ºº 
;
ºº 
switch
ææ 	
(
ææ
 
typeName
ææ 
)
ææ 
{
øø 
case
¿¿ 
$str
¿¿	 
:
¿¿ 
resolvedType
¡¡ 
=
¡¡ 
$str
¡¡ 
;
¡¡ 
break
¬¬ 

;
¬¬
 
case
√√ 
$str
√√	 
:
√√ 
resolvedType
ƒƒ 
=
ƒƒ 
$str
ƒƒ "
;
ƒƒ" #
break
≈≈ 

;
≈≈
 
case
∆∆ 
$str
∆∆	 
:
∆∆ 
resolvedType
«« 
=
«« 
$str
«« 
;
«« 
break
»» 

;
»»
 
case
…… 
$str
……	 
:
…… 
resolvedType
   
=
   
$str
   
;
   
break
ÀÀ 

;
ÀÀ
 
case
ÃÃ 
$str
ÃÃ	 
:
ÃÃ 
resolvedType
ÕÕ 
=
ÕÕ 
$str
ÕÕ 
;
ÕÕ 
break
ŒŒ 

;
ŒŒ
 
case
œœ 
$str
œœ	 
:
œœ 
resolvedType
–– 
=
–– 
$str
–– 
;
–– 
break
—— 

;
——
 
case
““ 
$str
““	 
:
““ 
resolvedType
”” 
=
”” 
$str
”” #
;
””# $
break
‘‘ 

;
‘‘
 
case
’’ 
$str
’’	 
:
’’ 
resolvedType
÷÷ 
=
÷÷ 
$str
÷÷ !
;
÷÷! "
break
◊◊ 

;
◊◊
 
case
ÿÿ 
$str
ÿÿ	 
:
ÿÿ 
resolvedType
ŸŸ 
=
ŸŸ 
$str
ŸŸ "
;
ŸŸ" #
break
⁄⁄ 

;
⁄⁄
 
case
€€ 
$str
€€	 
:
€€ 
resolvedType
‹‹ 
=
‹‹ 
$str
‹‹ 
;
‹‹ 
break
›› 

;
››
 
case
ﬁﬁ 
$str
ﬁﬁ	 
:
ﬁﬁ 
resolvedType
ﬂﬂ 
=
ﬂﬂ 
$str
ﬂﬂ 
;
ﬂﬂ 
break
‡‡ 

;
‡‡
 
case
·· 
$str
··	 
:
·· 
resolvedType
‚‚ 
=
‚‚ 
$str
‚‚ 
;
‚‚ 
break
„„ 

;
„„
 
case
‰‰ 
$str
‰‰	 
:
‰‰ 
resolvedType
ÂÂ 
=
ÂÂ 
$str
ÂÂ 
;
ÂÂ 
break
ÊÊ 

;
ÊÊ
 
case
ÁÁ 
$str
ÁÁ	 
:
ÁÁ 
resolvedType
ËË 
=
ËË 
$str
ËË 
;
ËË 
break
ÈÈ 

;
ÈÈ
 
case
ÍÍ 
$str
ÍÍ	 
:
ÍÍ 
resolvedType
ÎÎ 
=
ÎÎ 
$str
ÎÎ 
;
ÎÎ 
break
ÏÏ 

;
ÏÏ
 
case
ÌÌ 
$str
ÌÌ	 
:
ÌÌ 
resolvedType
ÓÓ 
=
ÓÓ 
$str
ÓÓ 
;
ÓÓ 
break
ÔÔ 

;
ÔÔ
 
case
 
$str
	 
:
 
resolvedType
ÒÒ 
=
ÒÒ 
$str
ÒÒ 
;
ÒÒ 
break
ÚÚ 

;
ÚÚ
 
case
ÛÛ 
$str
ÛÛ	 
:
ÛÛ 
resolvedType
ÙÙ 
=
ÙÙ 
$str
ÙÙ "
;
ÙÙ" #
break
ıı 

;
ıı
 
}
ˆˆ 
if
¯¯ 
(
¯¯ 
string
¯¯ 
.
¯¯ 
IsNullOrEmpty
¯¯ 
(
¯¯ 
resolvedType
¯¯ (
)
¯¯( )
)
¯¯) *
{
˘˘ 
throw
˙˙ 	
new
˙˙
 
ArgumentException
˙˙ 
(
˙˙  
$"
˙˙  "

.NET type 
˙˙" ,
{
˙˙, -
typeName
˙˙- 5
}
˙˙5 66
( cannot be resolved into XML schema type
˙˙6 ^
"
˙˙^ _
)
˙˙_ `
;
˙˙` a
}
˚˚ 
return
˝˝ 	
new
˝˝
 
XmlQualifiedName
˝˝ 
(
˝˝ 
resolvedType
˝˝ +
,
˝˝+ ,

Namespaces
˝˝- 7
.
˝˝7 8
	XMLNS_XSD
˝˝8 A
)
˝˝A B
;
˝˝B C
}
˛˛ 
private
ÄÄ 	
void
ÄÄ
 
WriteParameters
ÄÄ 
(
ÄÄ !
XmlDictionaryWriter
ÄÄ 2
writer
ÄÄ3 9
,
ÄÄ9 :%
SoapMethodParameterInfo
ÄÄ; R
[
ÄÄR S
]
ÄÄS T
parameterInfos
ÄÄU c
,
ÄÄc d
bool
ÄÄe i
isMessageContract
ÄÄj {
)
ÄÄ{ |
{
ÅÅ 
var
ÇÇ 
hasWrittenSchema
ÇÇ 
=
ÇÇ 
false
ÇÇ 
;
ÇÇ  
var
ÉÉ 
doWriteInlineType
ÉÉ 
=
ÉÉ 
true
ÉÉ 
;
ÉÉ  
foreach
ÑÑ 

(
ÑÑ 
var
ÑÑ 
parameterInfo
ÑÑ 
in
ÑÑ  
parameterInfos
ÑÑ! /
)
ÑÑ/ 0
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
isMessageContract
ÜÜ 
)
ÜÜ 
{
áá 
doWriteInlineType
àà 
=
àà *
IsWrappedMessageContractType
àà 5
(
àà5 6
parameterInfo
àà6 C
.
ààC D
	Parameter
ààD M
.
ààM N
ParameterType
ààN [
)
àà[ \
;
àà\ ]
}
ââ 
if
ãã 
(
ãã 
doWriteInlineType
ãã 
)
ãã 
{
åå 
if
çç 
(
çç 	
!
çç	 

hasWrittenSchema
çç
 
)
çç 
{
éé 
writer
èè 
.
èè 
WriteStartElement
èè 
(
èè 
$str
èè ,
,
èè, -

Namespaces
èè. 8
.
èè8 9
	XMLNS_XSD
èè9 B
)
èèB C
;
èèC D
writer
êê 
.
êê 
WriteStartElement
êê 
(
êê 
$str
êê )
,
êê) *

Namespaces
êê+ 5
.
êê5 6
	XMLNS_XSD
êê6 ?
)
êê? @
;
êê@ A
hasWrittenSchema
ëë 
=
ëë 
true
ëë 
;
ëë 
}
íí 
var
îî 
elementAttribute
îî	 
=
îî 
parameterInfo
îî )
.
îî) *
	Parameter
îî* 3
.
îî3 4 
GetCustomAttribute
îî4 F
<
îîF G!
XmlElementAttribute
îîG Z
>
îîZ [
(
îî[ \
)
îî\ ]
;
îî] ^
var
ïï 
elementName
ïï	 
=
ïï 
string
ïï 
.
ïï  
IsNullOrWhiteSpace
ïï 0
(
ïï0 1
elementAttribute
ïï1 A
?
ïïA B
.
ïïB C
ElementName
ïïC N
)
ïïN O
?
ïïP Q
null
ïïR V
:
ïïW X
elementAttribute
ïïY i
.
ïïi j
ElementName
ïïj u
;
ïïu v
var
óó 
xmlRootAttr
óó	 
=
óó 
parameterInfo
óó $
.
óó$ %
	Parameter
óó% .
.
óó. /
ParameterType
óó/ <
.
óó< =!
GetCustomAttributes
óó= P
<
óóP Q
XmlRootAttribute
óóQ a
>
óóa b
(
óób c
)
óóc d
.
óód e
FirstOrDefault
óóe s
(
óós t
)
óót u
;
óóu v
var
òò 
typeRootName
òò	 
=
òò 
string
òò 
.
òò  
IsNullOrWhiteSpace
òò 1
(
òò1 2
xmlRootAttr
òò2 =
?
òò= >
.
òò> ?
ElementName
òò? J
)
òòJ K
?
òòL M
null
òòN R
:
òòS T
xmlRootAttr
òòU `
.
òò` a
ElementName
òòa l
;
òòl m
var
öö 
parameterName
öö	 
=
öö 
elementName
öö $
??
õõ
 
parameterInfo
õõ 
.
õõ 
	Parameter
õõ $
.
õõ$ % 
GetCustomAttribute
õõ% 7
<
õõ7 8'
MessageParameterAttribute
õõ8 Q
>
õõQ R
(
õõR S
)
õõS T
?
õõT U
.
õõU V
Name
õõV Z
??
úú
 
typeRootName
úú 
??
ùù
 
parameterInfo
ùù 
.
ùù 
	Parameter
ùù $
.
ùù$ %
Name
ùù% )
;
ùù) *
AddSchemaType
üü 
(
üü 
writer
üü 
,
üü 
parameterInfo
üü (
.
üü( )
	Parameter
üü) 2
.
üü2 3
ParameterType
üü3 @
,
üü@ A
parameterName
üüB O
,
üüO P

@namespace
üüQ [
:
üü[ \
elementAttribute
üü] m
?
üüm n
.
üün o
	Namespace
üüo x
)
üüx y
;
üüy z
}
†† 
else
°° 
{
¢¢ 
if
££ 
(
££ 	+
TryGetMessageContractBodyType
££	 &
(
££& '
parameterInfo
££' 4
.
££4 5
	Parameter
££5 >
.
££> ?
ParameterType
££? L
,
££L M
out
££N Q
var
££R U
messageBodyType
££V e
)
££e f
)
££f g
{
§§ 
writer
•• 
.
•• "
WriteAttributeString
•• !
(
••! "
$str
••" (
,
••( )
$str
••* 0
+
••1 2
messageBodyType
••3 B
.
••B C
Name
••C G
)
••G H
;
••H I!
_complexTypeToBuild
¶¶ 
.
¶¶ 
Enqueue
¶¶ !
(
¶¶! "
new
¶¶" %
TypeToBuild
¶¶& 1
(
¶¶1 2
messageBodyType
¶¶2 A
)
¶¶A B
)
¶¶B C
;
¶¶C D
}
ßß 
}
®® 
}
©© 
if
´´ 
(
´´ 
hasWrittenSchema
´´ 
)
´´ 
{
¨¨ 
writer
≠≠ 

.
≠≠
 
WriteEndElement
≠≠ 
(
≠≠ 
)
≠≠ 
;
≠≠ 
writer
ÆÆ 

.
ÆÆ
 
WriteEndElement
ÆÆ 
(
ÆÆ 
)
ÆÆ 
;
ÆÆ 
}
ØØ 
}
∞∞ 
private
≤≤ 	
void
≤≤
 
AddTypes
≤≤ 
(
≤≤ !
XmlDictionaryWriter
≤≤ +
writer
≤≤, 2
)
≤≤2 3
{
≥≥ 
writer
¥¥ 	
.
¥¥	 

WriteStartElement
¥¥
 
(
¥¥ 
$str
¥¥ "
,
¥¥" #
$str
¥¥$ +
,
¥¥+ ,

Namespaces
¥¥- 7
.
¥¥7 8
WSDL_NS
¥¥8 ?
)
¥¥? @
;
¥¥@ A
writer
µµ 	
.
µµ	 

WriteStartElement
µµ
 
(
µµ 
$str
µµ $
,
µµ$ %

Namespaces
µµ& 0
.
µµ0 1
	XMLNS_XSD
µµ1 :
)
µµ: ;
;
µµ; <
writer
∂∂ 	
.
∂∂	 
"
WriteAttributeString
∂∂
 
(
∂∂ 
$str
∂∂ 3
,
∂∂3 4
$str
∂∂5 @
)
∂∂@ A
;
∂∂A B
writer
∑∑ 	
.
∑∑	 
"
WriteAttributeString
∑∑
 
(
∑∑ 
$str
∑∑ 0
,
∑∑0 1
TargetNameSpace
∑∑2 A
)
∑∑A B
;
∑∑B C
writer
ππ 	
.
ππ	 

WriteStartElement
ππ
 
(
ππ 
$str
ππ $
,
ππ$ %

Namespaces
ππ& 0
.
ππ0 1
	XMLNS_XSD
ππ1 :
)
ππ: ;
;
ππ; <
writer
∫∫ 	
.
∫∫	 
"
WriteAttributeString
∫∫
 
(
∫∫ 
$str
∫∫ *
,
∫∫* +

Namespaces
∫∫, 6
.
∫∫6 7
	ARRAYS_NS
∫∫7 @
)
∫∫@ A
;
∫∫A B
writer
ªª 	
.
ªª	 

WriteEndElement
ªª
 
(
ªª 
)
ªª 
;
ªª 
writer
ΩΩ 	
.
ΩΩ	 

WriteStartElement
ΩΩ
 
(
ΩΩ 
$str
ΩΩ $
,
ΩΩ$ %

Namespaces
ΩΩ& 0
.
ΩΩ0 1
	XMLNS_XSD
ΩΩ1 :
)
ΩΩ: ;
;
ΩΩ; <
writer
ææ 	
.
ææ	 
"
WriteAttributeString
ææ
 
(
ææ 
$str
ææ *
,
ææ* +

Namespaces
ææ, 6
.
ææ6 7
	SYSTEM_NS
ææ7 @
)
ææ@ A
;
ææA B
writer
øø 	
.
øø	 

WriteEndElement
øø
 
(
øø 
)
øø 
;
øø 
foreach
¡¡ 

(
¡¡ 
var
¡¡ 
	operation
¡¡ 
in
¡¡ 
_service
¡¡ %
.
¡¡% &

Operations
¡¡& 0
)
¡¡0 1
{
¬¬ 
writer
ƒƒ 

.
ƒƒ
 
WriteStartElement
ƒƒ 
(
ƒƒ 
$str
ƒƒ &
,
ƒƒ& '

Namespaces
ƒƒ( 2
.
ƒƒ2 3
	XMLNS_XSD
ƒƒ3 <
)
ƒƒ< =
;
ƒƒ= >
writer
≈≈ 

.
≈≈
 "
WriteAttributeString
≈≈ 
(
≈≈  
$str
≈≈  &
,
≈≈& '
	operation
≈≈( 1
.
≈≈1 2
Name
≈≈2 6
)
≈≈6 7
;
≈≈7 8
if
«« 
(
«« 
!
«« 	
	operation
««	 
.
«« &
IsMessageContractRequest
«« +
&&
««, .
	operation
««/ 8
.
««8 9
InParameters
««9 E
.
««E F
Length
««F L
==
««M O
$num
««P Q
)
««Q R
{
»» 
writer
…… 
.
…… 
WriteStartElement
…… 
(
…… 
$str
…… +
,
……+ ,

Namespaces
……- 7
.
……7 8
	XMLNS_XSD
……8 A
)
……A B
;
……B C
writer
   
.
   
WriteEndElement
   
(
   
)
   
;
   
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
WriteParameters
ŒŒ 
(
ŒŒ 
writer
ŒŒ 
,
ŒŒ 
	operation
ŒŒ &
.
ŒŒ& '
InParameters
ŒŒ' 3
,
ŒŒ3 4
	operation
ŒŒ5 >
.
ŒŒ> ?&
IsMessageContractRequest
ŒŒ? W
)
ŒŒW X
;
ŒŒX Y
}
œœ 
writer
—— 

.
——
 
WriteEndElement
—— 
(
—— 
)
—— 
;
—— 
writer
‘‘ 

.
‘‘
 
WriteStartElement
‘‘ 
(
‘‘ 
$str
‘‘ &
,
‘‘& '

Namespaces
‘‘( 2
.
‘‘2 3
	XMLNS_XSD
‘‘3 <
)
‘‘< =
;
‘‘= >
string
’’ 

responseName
’’ 
=
’’ 
	operation
’’ #
.
’’# $
Name
’’$ (
+
’’) *
$str
’’+ 5
;
’’5 6
if
÷÷ 
(
÷÷ 
	operation
÷÷ 
.
÷÷ &
IsMessageContractRequest
÷÷ *
&&
÷÷+ -
	operation
÷÷. 7
.
÷÷7 8
InParameters
÷÷8 D
.
÷÷D E
Length
÷÷E K
>
÷÷L M
$num
÷÷N O
)
÷÷O P
{
◊◊ 
if
ÿÿ 
(
ÿÿ 	
!
ÿÿ	 
*
IsWrappedMessageContractType
ÿÿ
 &
(
ÿÿ& '
	operation
ÿÿ' 0
.
ÿÿ0 1
InParameters
ÿÿ1 =
[
ÿÿ= >
$num
ÿÿ> ?
]
ÿÿ? @
.
ÿÿ@ A
	Parameter
ÿÿA J
.
ÿÿJ K
ParameterType
ÿÿK X
)
ÿÿX Y
)
ÿÿY Z
{
ŸŸ 
responseName
⁄⁄ 
=
⁄⁄ (
GetMessageContractBodyName
⁄⁄ /
(
⁄⁄/ 0
	operation
⁄⁄0 9
.
⁄⁄9 :

ReturnType
⁄⁄: D
)
⁄⁄D E
;
⁄⁄E F
}
€€ 
}
‹‹ 
writer
ﬁﬁ 

.
ﬁﬁ
 "
WriteAttributeString
ﬁﬁ 
(
ﬁﬁ  
$str
ﬁﬁ  &
,
ﬁﬁ& '
responseName
ﬁﬁ( 4
)
ﬁﬁ4 5
;
ﬁﬁ5 6
if
‡‡ 
(
‡‡ 
	operation
‡‡ 
.
‡‡ 
DispatchMethod
‡‡  
.
‡‡  !

ReturnType
‡‡! +
!=
‡‡, .
typeof
‡‡/ 5
(
‡‡5 6
void
‡‡6 :
)
‡‡: ;
&&
‡‡< >
	operation
‡‡? H
.
‡‡H I
DispatchMethod
‡‡I W
.
‡‡W X

ReturnType
‡‡X b
!=
‡‡c e
typeof
‡‡f l
(
‡‡l m
Task
‡‡m q
)
‡‡q r
)
‡‡r s
{
·· 
var
‚‚ 

returnType
‚‚	 
=
‚‚ 
	operation
‚‚ 
.
‚‚  
DispatchMethod
‚‚  .
.
‚‚. /

ReturnType
‚‚/ 9
;
‚‚9 :
if
„„ 
(
„„ 	

returnType
„„	 
.
„„ &
IsConstructedGenericType
„„ ,
&&
„„- /

returnType
„„0 :
.
„„: ;&
GetGenericTypeDefinition
„„; S
(
„„S T
)
„„T U
==
„„V X
typeof
„„Y _
(
„„_ `
Task
„„` d
<
„„d e
>
„„e f
)
„„f g
)
„„g h
{
‰‰ 

returnType
ÂÂ 
=
ÂÂ 

returnType
ÂÂ 
.
ÂÂ !
GetGenericArguments
ÂÂ 1
(
ÂÂ1 2
)
ÂÂ2 3
.
ÂÂ3 4
First
ÂÂ4 9
(
ÂÂ9 :
)
ÂÂ: ;
;
ÂÂ; <
}
ÊÊ 
var
ËË 
doWriteInlineType
ËË	 
=
ËË 
true
ËË !
;
ËË! "
if
ÍÍ 
(
ÍÍ 	
	operation
ÍÍ	 
.
ÍÍ '
IsMessageContractResponse
ÍÍ ,
)
ÍÍ, -
{
ÎÎ 
doWriteInlineType
ÏÏ 
=
ÏÏ *
IsWrappedMessageContractType
ÏÏ 6
(
ÏÏ6 7

returnType
ÏÏ7 A
)
ÏÏA B
;
ÏÏB C
}
ÌÌ 
if
ÔÔ 
(
ÔÔ 	
doWriteInlineType
ÔÔ	 
)
ÔÔ 
{
 
var
ÒÒ 	
elementAttribute
ÒÒ
 
=
ÒÒ 
	operation
ÒÒ &
.
ÒÒ& '
DispatchMethod
ÒÒ' 5
.
ÒÒ5 6

ReturnType
ÒÒ6 @
.
ÒÒ@ A 
GetCustomAttribute
ÒÒA S
<
ÒÒS T!
XmlElementAttribute
ÒÒT g
>
ÒÒg h
(
ÒÒh i
)
ÒÒi j
;
ÒÒj k
var
ÚÚ 	
elementName
ÚÚ
 
=
ÚÚ 
string
ÚÚ 
.
ÚÚ  
IsNullOrWhiteSpace
ÚÚ 1
(
ÚÚ1 2
elementAttribute
ÚÚ2 B
?
ÚÚB C
.
ÚÚC D
ElementName
ÚÚD O
)
ÚÚO P
?
ÚÚQ R
null
ÚÚS W
:
ÚÚX Y
elementAttribute
ÚÚZ j
.
ÚÚj k
ElementName
ÚÚk v
;
ÚÚv w
var
ÙÙ 	
xmlRootAttr
ÙÙ
 
=
ÙÙ 

returnType
ÙÙ "
.
ÙÙ" #
GetTypeInfo
ÙÙ# .
(
ÙÙ. /
)
ÙÙ/ 0
.
ÙÙ0 1!
GetCustomAttributes
ÙÙ1 D
<
ÙÙD E
XmlRootAttribute
ÙÙE U
>
ÙÙU V
(
ÙÙV W
)
ÙÙW X
.
ÙÙX Y
FirstOrDefault
ÙÙY g
(
ÙÙg h
)
ÙÙh i
;
ÙÙi j
var
ıı 	
typeRootName
ıı
 
=
ıı 
string
ıı 
.
ıı   
IsNullOrWhiteSpace
ıı  2
(
ıı2 3
xmlRootAttr
ıı3 >
?
ıı> ?
.
ıı? @
ElementName
ıı@ K
)
ııK L
?
ııM N
null
ııO S
:
ııT U
xmlRootAttr
ııV a
.
ııa b
ElementName
ııb m
;
ıım n
var
˜˜ 	

returnName
˜˜
 
=
˜˜ 
elementName
˜˜ "
??
¯¯
 
	operation
¯¯ 
.
¯¯ 
DispatchMethod
¯¯ %
.
¯¯% &
ReturnParameter
¯¯& 5
.
¯¯5 6 
GetCustomAttribute
¯¯6 H
<
¯¯H I'
MessageParameterAttribute
¯¯I b
>
¯¯b c
(
¯¯c d
)
¯¯d e
?
¯¯e f
.
¯¯f g
Name
¯¯g k
??
˘˘
 
typeRootName
˘˘ 
??
˙˙
 
	operation
˙˙ 
.
˙˙ 
Name
˙˙ 
+
˙˙ 
$str
˙˙ &
;
˙˙& '
writer
¸¸ 
.
¸¸ 
WriteStartElement
¸¸ 
(
¸¸ 
$str
¸¸ ,
,
¸¸, -

Namespaces
¸¸. 8
.
¸¸8 9
	XMLNS_XSD
¸¸9 B
)
¸¸B C
;
¸¸C D
writer
˝˝ 
.
˝˝ 
WriteStartElement
˝˝ 
(
˝˝ 
$str
˝˝ )
,
˝˝) *

Namespaces
˝˝+ 5
.
˝˝5 6
	XMLNS_XSD
˝˝6 ?
)
˝˝? @
;
˝˝@ A
AddSchemaType
˛˛ 
(
˛˛ 
writer
˛˛ 
,
˛˛ 

returnType
˛˛ &
,
˛˛& '

returnName
˛˛( 2
)
˛˛2 3
;
˛˛3 4
writer
ˇˇ 
.
ˇˇ 
WriteEndElement
ˇˇ 
(
ˇˇ 
)
ˇˇ 
;
ˇˇ 
writer
ÄÄ 
.
ÄÄ 
WriteEndElement
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 
else
ÇÇ 	
{
ÉÉ 
var
ÑÑ 	
type
ÑÑ
 
=
ÑÑ (
GetMessageContractBodyType
ÑÑ +
(
ÑÑ+ ,

returnType
ÑÑ, 6
)
ÑÑ6 7
;
ÑÑ7 8
if
ÜÜ 
(
ÜÜ	 


returnType
ÜÜ
 
.
ÜÜ &
IsConstructedGenericType
ÜÜ -
)
ÜÜ- .
{
áá 
writer
àà 
.
àà "
WriteAttributeString
àà "
(
àà" #
$str
àà# )
,
àà) *

Namespaces
àà+ 5
.
àà5 6
	XMLNS_XSD
àà6 ?
+
àà@ A
type
ààB F
.
ààF G
Name
ààG K
)
ààK L
;
ààL M
}
ââ 
else
ää 

{
ãã 
writer
åå 
.
åå "
WriteAttributeString
åå #
(
åå# $
$str
åå$ *
,
åå* +
$str
åå, 2
+
åå3 4
type
åå5 9
.
åå9 :
Name
åå: >
)
åå> ?
;
åå? @!
_complexTypeToBuild
çç 
.
çç 
Enqueue
çç #
(
çç# $
new
çç$ '
TypeToBuild
çç( 3
(
çç3 4
type
çç4 8
)
çç8 9
)
çç9 :
;
çç: ;
}
éé 
}
èè 
}
êê 
else
ëë 
{
íí 
if
ìì 
(
ìì 	
!
ìì	 

	operation
ìì
 
.
ìì '
IsMessageContractResponse
ìì -
)
ìì- .
{
îî 
writer
ïï 
.
ïï 
WriteStartElement
ïï 
(
ïï 
$str
ïï ,
,
ïï, -

Namespaces
ïï. 8
.
ïï8 9
	XMLNS_XSD
ïï9 B
)
ïïB C
;
ïïC D
writer
ññ 
.
ññ 
WriteEndElement
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 
}
òò 
WriteParameters
öö 
(
öö 
writer
öö 
,
öö 
	operation
öö %
.
öö% &
OutParameters
öö& 3
,
öö3 4
	operation
öö5 >
.
öö> ?'
IsMessageContractResponse
öö? X
)
ööX Y
;
ööY Z
writer
úú 

.
úú
 
WriteEndElement
úú 
(
úú 
)
úú 
;
úú 
}
ùù 
while
üü 
(
üü	 
!
_complexTypeToBuild
üü
 
.
üü 
Count
üü #
>
üü$ %
$num
üü& '
)
üü' (
{
†† 
var
°° 
toBuild
°° 
=
°° !
_complexTypeToBuild
°° %
.
°°% &
Dequeue
°°& -
(
°°- .
)
°°. /
;
°°/ 0"
AddSchemaComplexType
¢¢ 
(
¢¢ 
writer
¢¢ 
,
¢¢  
toBuild
¢¢! (
)
¢¢( )
;
¢¢) *
}
££ 
while
•• 
(
••	 

_enumToBuild
••
 
.
•• 
Count
•• 
>
•• 
$num
••  
)
••  !
{
¶¶ 
Type
ßß 
toBuild
ßß	 
=
ßß 
_enumToBuild
ßß 
.
ßß  
Dequeue
ßß  '
(
ßß' (
)
ßß( )
;
ßß) *
if
®® 
(
®® 
toBuild
®® 
.
®® 
IsByRef
®® 
)
®® 
{
©© 
toBuild
™™ 
=
™™ 
toBuild
™™ 
.
™™ 
GetElementType
™™ %
(
™™% &
)
™™& '
;
™™' (
}
´´ 
var
≠≠ 
typeName
≠≠ 
=
≠≠ 
toBuild
≠≠ 
.
≠≠ #
GetSerializedTypeName
≠≠ 0
(
≠≠0 1
)
≠≠1 2
;
≠≠2 3
if
ØØ 
(
ØØ 
!
ØØ 	
_builtEnumTypes
ØØ	 
.
ØØ 
Contains
ØØ !
(
ØØ! "
toBuild
ØØ" )
.
ØØ) *
Name
ØØ* .
)
ØØ. /
)
ØØ/ 0
{
∞∞ 
writer
±± 
.
±± 
WriteStartElement
±± 
(
±± 
$str
±± *
,
±±* +

Namespaces
±±, 6
.
±±6 7
	XMLNS_XSD
±±7 @
)
±±@ A
;
±±A B
writer
≤≤ 
.
≤≤ "
WriteAttributeString
≤≤  
(
≤≤  !
$str
≤≤! '
,
≤≤' (
typeName
≤≤) 1
)
≤≤1 2
;
≤≤2 3
writer
≥≥ 
.
≥≥ 
WriteStartElement
≥≥ 
(
≥≥ 
$str
≥≥ +
,
≥≥+ ,

Namespaces
≥≥- 7
.
≥≥7 8
	XMLNS_XSD
≥≥8 A
)
≥≥A B
;
≥≥B C
writer
¥¥ 
.
¥¥ "
WriteAttributeString
¥¥  
(
¥¥  !
$str
¥¥! '
,
¥¥' (
$"
¥¥) +
{
¥¥+ ,"
_xmlNamespaceManager
¥¥, @
.
¥¥@ A
LookupPrefix
¥¥A M
(
¥¥M N

Namespaces
¥¥N X
.
¥¥X Y
	XMLNS_XSD
¥¥Y b
)
¥¥b c
}
¥¥c d
:string
¥¥d k
"
¥¥k l
)
¥¥l m
;
¥¥m n
foreach
∂∂ 
(
∂∂ 
var
∂∂ 
value
∂∂ 
in
∂∂ 
Enum
∂∂ 
.
∂∂  
	GetValues
∂∂  )
(
∂∂) *
toBuild
∂∂* 1
)
∂∂1 2
)
∂∂2 3
{
∑∑ 
writer
∏∏ 
.
∏∏ 
WriteStartElement
∏∏ 
(
∏∏ 
$str
∏∏ ,
,
∏∏, -

Namespaces
∏∏. 8
.
∏∏8 9
	XMLNS_XSD
∏∏9 B
)
∏∏B C
;
∏∏C D
writer
ππ 
.
ππ "
WriteAttributeString
ππ !
(
ππ! "
$str
ππ" )
,
ππ) *
value
ππ+ 0
.
ππ0 1
ToString
ππ1 9
(
ππ9 :
)
ππ: ;
)
ππ; <
;
ππ< =
writer
∫∫ 
.
∫∫ 
WriteEndElement
∫∫ 
(
∫∫ 
)
∫∫ 
;
∫∫ 
}
ªª 
writer
ΩΩ 
.
ΩΩ 
WriteEndElement
ΩΩ 
(
ΩΩ 
)
ΩΩ 
;
ΩΩ 
writer
ææ 
.
ææ 
WriteEndElement
ææ 
(
ææ 
)
ææ 
;
ææ 
_builtEnumTypes
¿¿ 
.
¿¿ 
Add
¿¿ 
(
¿¿ 
toBuild
¿¿  
.
¿¿  !
Name
¿¿! %
)
¿¿% &
;
¿¿& '
}
¡¡ 
}
¬¬ 
writer
ƒƒ 	
.
ƒƒ	 

WriteEndElement
ƒƒ
 
(
ƒƒ 
)
ƒƒ 
;
ƒƒ 
while
∆∆ 
(
∆∆	 

_arrayToBuild
∆∆
 
.
∆∆ 
Count
∆∆ 
>
∆∆ 
$num
∆∆  !
)
∆∆! "
{
«« 
var
»» 
toBuild
»» 
=
»» 
_arrayToBuild
»» 
.
»»  
Dequeue
»»  '
(
»»' (
)
»»( )
;
»») *
var
…… 
toBuildName
…… 
=
…… 
toBuild
…… 
.
…… #
GetSerializedTypeName
…… 3
(
……3 4
)
……4 5
;
……5 6
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 	
_buildArrayTypes
ÀÀ	 
.
ÀÀ 
Contains
ÀÀ "
(
ÀÀ" #
toBuildName
ÀÀ# .
)
ÀÀ. /
)
ÀÀ/ 0
{
ÃÃ 
writer
ÕÕ 
.
ÕÕ 
WriteStartElement
ÕÕ 
(
ÕÕ 
$str
ÕÕ &
,
ÕÕ& '

Namespaces
ÕÕ( 2
.
ÕÕ2 3
	XMLNS_XSD
ÕÕ3 <
)
ÕÕ< =
;
ÕÕ= >
writer
ŒŒ 
.
ŒŒ !
WriteXmlnsAttribute
ŒŒ 
(
ŒŒ  
$str
ŒŒ  %
,
ŒŒ% &

Namespaces
ŒŒ' 1
.
ŒŒ1 2
	ARRAYS_NS
ŒŒ2 ;
)
ŒŒ; <
;
ŒŒ< =
writer
œœ 
.
œœ "
WriteAttributeString
œœ  
(
œœ  !
$str
œœ! 5
,
œœ5 6
$str
œœ7 B
)
œœB C
;
œœC D
writer
–– 
.
–– "
WriteAttributeString
––  
(
––  !
$str
––! 2
,
––2 3

Namespaces
––4 >
.
––> ?
	ARRAYS_NS
––? H
)
––H I
;
––I J
writer
““ 
.
““ 
WriteStartElement
““ 
(
““ 
$str
““ +
,
““+ ,

Namespaces
““- 7
.
““7 8
	XMLNS_XSD
““8 A
)
““A B
;
““B C
writer
”” 
.
”” "
WriteAttributeString
””  
(
””  !
$str
””! '
,
””' (
toBuildName
””) 4
)
””4 5
;
””5 6
writer
’’ 
.
’’ 
WriteStartElement
’’ 
(
’’ 
$str
’’ (
,
’’( )

Namespaces
’’* 4
.
’’4 5
	XMLNS_XSD
’’5 >
)
’’> ?
;
’’? @
AddSchemaType
÷÷ 
(
÷÷ 
writer
÷÷ 
,
÷÷ 
toBuild
÷÷ "
.
÷÷" #
GetGenericType
÷÷# 1
(
÷÷1 2
)
÷÷2 3
,
÷÷3 4
null
÷÷5 9
,
÷÷9 :
true
÷÷; ?
)
÷÷? @
;
÷÷@ A
writer
◊◊ 
.
◊◊ 
WriteEndElement
◊◊ 
(
◊◊ 
)
◊◊ 
;
◊◊ 
writer
ŸŸ 
.
ŸŸ 
WriteEndElement
ŸŸ 
(
ŸŸ 
)
ŸŸ 
;
ŸŸ 
writer
€€ 
.
€€ 
WriteStartElement
€€ 
(
€€ 
$str
€€ '
,
€€' (

Namespaces
€€) 3
.
€€3 4
	XMLNS_XSD
€€4 =
)
€€= >
;
€€> ?
writer
‹‹ 
.
‹‹ "
WriteAttributeString
‹‹  
(
‹‹  !
$str
‹‹! '
,
‹‹' (
toBuildName
‹‹) 4
)
‹‹4 5
;
‹‹5 6
writer
›› 
.
›› "
WriteAttributeString
››  
(
››  !
$str
››! +
,
››+ ,
$str
››- 3
)
››3 4
;
››4 5
writer
ﬁﬁ 
.
ﬁﬁ "
WriteAttributeString
ﬁﬁ  
(
ﬁﬁ  !
$str
ﬁﬁ! '
,
ﬁﬁ' (
$str
ﬁﬁ) /
+
ﬁﬁ0 1
toBuildName
ﬁﬁ2 =
)
ﬁﬁ= >
;
ﬁﬁ> ?
writer
ﬂﬂ 
.
ﬂﬂ 
WriteEndElement
ﬂﬂ 
(
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
writer
·· 
.
·· 
WriteEndElement
·· 
(
·· 
)
·· 
;
·· 
_buildArrayTypes
„„ 
.
„„ 
Add
„„ 
(
„„ 
toBuildName
„„ %
)
„„% &
;
„„& '
}
‰‰ 
}
ÂÂ 
if
ÁÁ 
(
ÁÁ "
_buildDateTimeOffset
ÁÁ 
)
ÁÁ 
{
ËË 
writer
ÈÈ 

.
ÈÈ
 
WriteStartElement
ÈÈ 
(
ÈÈ 
$str
ÈÈ %
,
ÈÈ% &

Namespaces
ÈÈ' 1
.
ÈÈ1 2
	XMLNS_XSD
ÈÈ2 ;
)
ÈÈ; <
;
ÈÈ< =
writer
ÍÍ 

.
ÍÍ
 !
WriteXmlnsAttribute
ÍÍ 
(
ÍÍ 
$str
ÍÍ $
,
ÍÍ$ %

Namespaces
ÍÍ& 0
.
ÍÍ0 1
	SYSTEM_NS
ÍÍ1 :
)
ÍÍ: ;
;
ÍÍ; <
writer
ÎÎ 

.
ÎÎ
 "
WriteAttributeString
ÎÎ 
(
ÎÎ  
$str
ÎÎ  4
,
ÎÎ4 5
$str
ÎÎ6 A
)
ÎÎA B
;
ÎÎB C
writer
ÏÏ 

.
ÏÏ
 "
WriteAttributeString
ÏÏ 
(
ÏÏ  
$str
ÏÏ  1
,
ÏÏ1 2

Namespaces
ÏÏ3 =
.
ÏÏ= >
	SYSTEM_NS
ÏÏ> G
)
ÏÏG H
;
ÏÏH I
writer
ÓÓ 

.
ÓÓ
 
WriteStartElement
ÓÓ 
(
ÓÓ 
$str
ÓÓ %
,
ÓÓ% &

Namespaces
ÓÓ' 1
.
ÓÓ1 2
	XMLNS_XSD
ÓÓ2 ;
)
ÓÓ; <
;
ÓÓ< =
writer
ÔÔ 

.
ÔÔ
 "
WriteAttributeString
ÔÔ 
(
ÔÔ  
$str
ÔÔ  +
,
ÔÔ+ ,

Namespaces
ÔÔ- 7
.
ÔÔ7 8
SERIALIZATION_NS
ÔÔ8 H
)
ÔÔH I
;
ÔÔI J
writer
 

.

 
WriteEndElement
 
(
 
)
 
;
 
writer
ÚÚ 

.
ÚÚ
 
WriteStartElement
ÚÚ 
(
ÚÚ 
$str
ÚÚ *
,
ÚÚ* +

Namespaces
ÚÚ, 6
.
ÚÚ6 7
	XMLNS_XSD
ÚÚ7 @
)
ÚÚ@ A
;
ÚÚA B
writer
ÛÛ 

.
ÛÛ
 "
WriteAttributeString
ÛÛ 
(
ÛÛ  
$str
ÛÛ  &
,
ÛÛ& '
$str
ÛÛ( 8
)
ÛÛ8 9
;
ÛÛ9 :
writer
ÙÙ 

.
ÙÙ
 
WriteStartElement
ÙÙ 
(
ÙÙ 
$str
ÙÙ )
,
ÙÙ) *

Namespaces
ÙÙ+ 5
.
ÙÙ5 6
	XMLNS_XSD
ÙÙ6 ?
)
ÙÙ? @
;
ÙÙ@ A
writer
ıı 

.
ıı
 
WriteStartElement
ıı 
(
ıı 
$str
ıı &
,
ıı& '

Namespaces
ıı( 2
.
ıı2 3
	XMLNS_XSD
ıı3 <
)
ıı< =
;
ıı= >
writer
˜˜ 

.
˜˜
  
WriteElementString
˜˜ 
(
˜˜ 
$str
˜˜ +
,
˜˜+ ,

Namespaces
˜˜- 7
.
˜˜7 8
SERIALIZATION_NS
˜˜8 H
,
˜˜H I
$str
˜˜J P
)
˜˜P Q
;
˜˜Q R
writer
¯¯ 

.
¯¯
 
WriteEndElement
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯ 
writer
˘˘ 

.
˘˘
 
WriteEndElement
˘˘ 
(
˘˘ 
)
˘˘ 
;
˘˘ 
writer
˚˚ 

.
˚˚
 
WriteStartElement
˚˚ 
(
˚˚ 
$str
˚˚ '
,
˚˚' (

Namespaces
˚˚) 3
.
˚˚3 4
	XMLNS_XSD
˚˚4 =
)
˚˚= >
;
˚˚> ?
AddSchemaType
¸¸ 
(
¸¸ 
writer
¸¸ 
,
¸¸ 
typeof
¸¸  
(
¸¸  !
DateTime
¸¸! )
)
¸¸) *
,
¸¸* +
$str
¸¸, 6
,
¸¸6 7
false
¸¸8 =
)
¸¸= >
;
¸¸> ?
AddSchemaType
˝˝ 
(
˝˝ 
writer
˝˝ 
,
˝˝ 
typeof
˝˝  
(
˝˝  !
short
˝˝! &
)
˝˝& '
,
˝˝' (
$str
˝˝) 8
,
˝˝8 9
false
˝˝: ?
)
˝˝? @
;
˝˝@ A
writer
˛˛ 

.
˛˛
 
WriteEndElement
˛˛ 
(
˛˛ 
)
˛˛ 
;
˛˛ 
writer
ÄÄ 

.
ÄÄ
 
WriteEndElement
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
writer
ÇÇ 

.
ÇÇ
 
WriteStartElement
ÇÇ 
(
ÇÇ 
$str
ÇÇ &
,
ÇÇ& '

Namespaces
ÇÇ( 2
.
ÇÇ2 3
	XMLNS_XSD
ÇÇ3 <
)
ÇÇ< =
;
ÇÇ= >
writer
ÉÉ 

.
ÉÉ
 "
WriteAttributeString
ÉÉ 
(
ÉÉ  
$str
ÉÉ  &
,
ÉÉ& '
$str
ÉÉ( 8
)
ÉÉ8 9
;
ÉÉ9 :
writer
ÑÑ 

.
ÑÑ
 "
WriteAttributeString
ÑÑ 
(
ÑÑ  
$str
ÑÑ  *
,
ÑÑ* +
$str
ÑÑ, 2
)
ÑÑ2 3
;
ÑÑ3 4
writer
ÖÖ 

.
ÖÖ
 "
WriteAttributeString
ÖÖ 
(
ÖÖ  
$str
ÖÖ  &
,
ÖÖ& '
$str
ÖÖ( <
)
ÖÖ< =
;
ÖÖ= >
writer
ÜÜ 

.
ÜÜ
 
WriteEndElement
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
writer
àà 

.
àà
 
WriteEndElement
àà 
(
àà 
)
àà 
;
àà 
}
ââ 
writer
ãã 	
.
ãã	 

WriteEndElement
ãã
 
(
ãã 
)
ãã 
;
ãã 
}
åå 
private
éé 	
void
éé
 

AddMessage
éé 
(
éé !
XmlDictionaryWriter
éé -
writer
éé. 4
)
éé4 5
{
èè 
foreach
êê 

(
êê 
var
êê 
	operation
êê 
in
êê 
_service
êê %
.
êê% &

Operations
êê& 0
)
êê0 1
{
ëë 
var
ìì 
hasRequestBody
ìì 
=
ìì 
false
ìì 
;
ìì 
var
îî 
requestTypeName
îî 
=
îî 
	operation
îî #
.
îî# $
Name
îî$ (
;
îî( )
if
óó 
(
óó 
	operation
óó 
.
óó &
IsMessageContractRequest
óó *
&&
óó+ -
	operation
óó. 7
.
óó7 8
InParameters
óó8 D
.
óóD E
Length
óóE K
>
óóL M
$num
óóN O
)
óóO P
{
òò 
hasRequestBody
ôô 
=
ôô +
TryGetMessageContractBodyType
ôô 3
(
ôô3 4
	operation
ôô4 =
.
ôô= >
InParameters
ôô> J
[
ôôJ K
$num
ôôK L
]
ôôL M
.
ôôM N
	Parameter
ôôN W
.
ôôW X
ParameterType
ôôX e
,
ôôe f
out
ôôg j
var
ôôk n
requestType
ôôo z
)
ôôz {
;
ôô{ |
}
öö 
writer
úú 

.
úú
 
WriteStartElement
úú 
(
úú 
$str
úú #
,
úú# $
$str
úú% .
,
úú. /

Namespaces
úú0 :
.
úú: ;
WSDL_NS
úú; B
)
úúB C
;
úúC D
writer
ùù 

.
ùù
 "
WriteAttributeString
ùù 
(
ùù  
$str
ùù  &
,
ùù& '
$"
ùù( *
{
ùù* +
BindingType
ùù+ 6
}
ùù6 7
_
ùù7 8
{
ùù8 9
	operation
ùù9 B
.
ùùB C
Name
ùùC G
}
ùùG H
_InputMessage
ùùH U
"
ùùU V
)
ùùV W
;
ùùW X
if
üü 
(
üü 
hasRequestBody
üü 
)
üü 
{
†† 
writer
°° 
.
°° 
WriteStartElement
°° 
(
°° 
$str
°° $
,
°°$ %
$str
°°& ,
,
°°, -

Namespaces
°°. 8
.
°°8 9
WSDL_NS
°°9 @
)
°°@ A
;
°°A B
writer
¢¢ 
.
¢¢ "
WriteAttributeString
¢¢  
(
¢¢  !
$str
¢¢! '
,
¢¢' (
$str
¢¢) 5
)
¢¢5 6
;
¢¢6 7
writer
££ 
.
££ "
WriteAttributeString
££  
(
££  !
$str
££! *
,
££* +
$str
££, 2
+
££3 4
requestTypeName
££5 D
)
££D E
;
££E F
writer
§§ 
.
§§ 
WriteEndElement
§§ 
(
§§ 
)
§§ 
;
§§ 
}
•• 
writer
ßß 

.
ßß
 
WriteEndElement
ßß 
(
ßß 
)
ßß 
;
ßß 
var
©© 
responseTypeName
©© 
=
©© 
	operation
©© $
.
©©$ %
Name
©©% )
+
©©* +
$str
©©, 6
;
©©6 7
if
´´ 
(
´´ 
	operation
´´ 
.
´´ 
DispatchMethod
´´  
.
´´  !

ReturnType
´´! +
!=
´´, .
typeof
´´/ 5
(
´´5 6
void
´´6 :
)
´´: ;
)
´´; <
{
¨¨ 
var
≠≠ 

returnType
≠≠	 
=
≠≠ 
	operation
≠≠ 
.
≠≠  
DispatchMethod
≠≠  .
.
≠≠. /

ReturnType
≠≠/ 9
;
≠≠9 :
if
ØØ 
(
ØØ 	

returnType
ØØ	 
.
ØØ &
IsConstructedGenericType
ØØ ,
&&
ØØ- /

returnType
ØØ0 :
.
ØØ: ;&
GetGenericTypeDefinition
ØØ; S
(
ØØS T
)
ØØT U
==
ØØV X
typeof
ØØY _
(
ØØ_ `
Task
ØØ` d
<
ØØd e
>
ØØe f
)
ØØf g
)
ØØg h
{
∞∞ 

returnType
±± 
=
±± 

returnType
±± 
.
±± !
GetGenericArguments
±± 1
(
±±1 2
)
±±2 3
.
±±3 4
First
±±4 9
(
±±9 :
)
±±: ;
;
±±; <
}
≤≤ 
if
¥¥ 
(
¥¥ 	
	operation
¥¥	 
.
¥¥ '
IsMessageContractResponse
¥¥ ,
&&
¥¥- /
!
¥¥0 1*
IsWrappedMessageContractType
¥¥1 M
(
¥¥M N

returnType
¥¥N X
)
¥¥X Y
)
¥¥Y Z
{
µµ 
responseTypeName
∂∂ 
=
∂∂ (
GetMessageContractBodyName
∂∂ 3
(
∂∂3 4

returnType
∂∂4 >
)
∂∂> ?
;
∂∂? @
}
∑∑ 
}
∏∏ 
if
∫∫ 
(
∫∫ 
	operation
∫∫ 
.
∫∫ '
IsMessageContractResponse
∫∫ +
&&
∫∫, .
	operation
∫∫/ 8
.
∫∫8 9
OutParameters
∫∫9 F
.
∫∫F G
Length
∫∫G M
>
∫∫N O
$num
∫∫P Q
)
∫∫Q R
{
ªª 
if
ºº 
(
ºº 	
!
ºº	 
*
IsWrappedMessageContractType
ºº
 &
(
ºº& '
	operation
ºº' 0
.
ºº0 1
OutParameters
ºº1 >
[
ºº> ?
$num
ºº? @
]
ºº@ A
.
ººA B
	Parameter
ººB K
.
ººK L
ParameterType
ººL Y
)
ººY Z
)
ººZ [
{
ΩΩ 
responseTypeName
ææ 
=
ææ (
GetMessageContractBodyType
ææ 3
(
ææ3 4
	operation
ææ4 =
.
ææ= >
OutParameters
ææ> K
[
ææK L
$num
ææL M
]
ææM N
.
ææN O
	Parameter
ææO X
.
ææX Y
ParameterType
ææY f
)
ææf g
.
ææg h
Name
ææh l
;
ææl m
}
øø 
}
¿¿ 
if
√√ 
(
√√ 
!
√√ 	
	operation
√√	 
.
√√ 
IsOneWay
√√ 
)
√√ 
{
ƒƒ 
writer
≈≈ 
.
≈≈ 
WriteStartElement
≈≈ 
(
≈≈ 
$str
≈≈ $
,
≈≈$ %
$str
≈≈& /
,
≈≈/ 0

Namespaces
≈≈1 ;
.
≈≈; <
WSDL_NS
≈≈< C
)
≈≈C D
;
≈≈D E
writer
∆∆ 
.
∆∆ "
WriteAttributeString
∆∆  
(
∆∆  !
$str
∆∆! '
,
∆∆' (
$"
∆∆) +
{
∆∆+ ,
BindingType
∆∆, 7
}
∆∆7 8
_
∆∆8 9
{
∆∆9 :
	operation
∆∆: C
.
∆∆C D
Name
∆∆D H
}
∆∆H I
_OutputMessage
∆∆I W
"
∆∆W X
)
∆∆X Y
;
∆∆Y Z
writer
«« 
.
«« 
WriteStartElement
«« 
(
«« 
$str
«« $
,
««$ %
$str
««& ,
,
««, -

Namespaces
««. 8
.
««8 9
WSDL_NS
««9 @
)
««@ A
;
««A B
writer
»» 
.
»» "
WriteAttributeString
»»  
(
»»  !
$str
»»! '
,
»»' (
$str
»») 5
)
»»5 6
;
»»6 7
writer
…… 
.
…… "
WriteAttributeString
……  
(
……  !
$str
……! *
,
……* +
$str
……, 2
+
……3 4
responseTypeName
……5 E
)
……E F
;
……F G
writer
   
.
   
WriteEndElement
   
(
   
)
   
;
   
writer
ÀÀ 
.
ÀÀ 
WriteEndElement
ÀÀ 
(
ÀÀ 
)
ÀÀ 
;
ÀÀ 
}
ÃÃ 
}
ÕÕ 
}
ŒŒ 
private
–– 	
void
––
 
AddPortType
–– 
(
–– !
XmlDictionaryWriter
–– .
writer
––/ 5
)
––5 6
{
—— 
writer
““ 	
.
““	 

WriteStartElement
““
 
(
““ 
$str
““ "
,
““" #
$str
““$ .
,
““. /

Namespaces
““0 :
.
““: ;
WSDL_NS
““; B
)
““B C
;
““C D
writer
”” 	
.
””	 
"
WriteAttributeString
””
 
(
”” 
$str
”” %
,
””% &
BindingType
””' 2
)
””2 3
;
””3 4
foreach
‘‘ 

(
‘‘ 
var
‘‘ 
	operation
‘‘ 
in
‘‘ 
_service
‘‘ %
.
‘‘% &

Operations
‘‘& 0
)
‘‘0 1
{
’’ 
writer
÷÷ 

.
÷÷
 
WriteStartElement
÷÷ 
(
÷÷ 
$str
÷÷ #
,
÷÷# $
$str
÷÷% 0
,
÷÷0 1

Namespaces
÷÷2 <
.
÷÷< =
WSDL_NS
÷÷= D
)
÷÷D E
;
÷÷E F
writer
◊◊ 

.
◊◊
 "
WriteAttributeString
◊◊ 
(
◊◊  
$str
◊◊  &
,
◊◊& '
	operation
◊◊( 1
.
◊◊1 2
Name
◊◊2 6
)
◊◊6 7
;
◊◊7 8
writer
ÿÿ 

.
ÿÿ
 
WriteStartElement
ÿÿ 
(
ÿÿ 
$str
ÿÿ #
,
ÿÿ# $
$str
ÿÿ% ,
,
ÿÿ, -

Namespaces
ÿÿ. 8
.
ÿÿ8 9
WSDL_NS
ÿÿ9 @
)
ÿÿ@ A
;
ÿÿA B
writer
ŸŸ 

.
ŸŸ
 "
WriteAttributeString
ŸŸ 
(
ŸŸ  
$str
ŸŸ  )
,
ŸŸ) *
$"
ŸŸ+ -
tns:
ŸŸ- 1
{
ŸŸ1 2
BindingType
ŸŸ2 =
}
ŸŸ= >
_
ŸŸ> ?
{
ŸŸ? @
	operation
ŸŸ@ I
.
ŸŸI J
Name
ŸŸJ N
}
ŸŸN O
_InputMessage
ŸŸO \
"
ŸŸ\ ]
)
ŸŸ] ^
;
ŸŸ^ _
writer
⁄⁄ 

.
⁄⁄
 
WriteEndElement
⁄⁄ 
(
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
if
€€ 
(
€€ 
!
€€ 	
	operation
€€	 
.
€€ 
IsOneWay
€€ 
)
€€ 
{
‹‹ 
writer
›› 
.
›› 
WriteStartElement
›› 
(
›› 
$str
›› $
,
››$ %
$str
››& .
,
››. /

Namespaces
››0 :
.
››: ;
WSDL_NS
››; B
)
››B C
;
››C D
writer
ﬁﬁ 
.
ﬁﬁ "
WriteAttributeString
ﬁﬁ  
(
ﬁﬁ  !
$str
ﬁﬁ! *
,
ﬁﬁ* +
$"
ﬁﬁ, .
tns:
ﬁﬁ. 2
{
ﬁﬁ2 3
BindingType
ﬁﬁ3 >
}
ﬁﬁ> ?
_
ﬁﬁ? @
{
ﬁﬁ@ A
	operation
ﬁﬁA J
.
ﬁﬁJ K
Name
ﬁﬁK O
}
ﬁﬁO P
_OutputMessage
ﬁﬁP ^
"
ﬁﬁ^ _
)
ﬁﬁ_ `
;
ﬁﬁ` a
writer
ﬂﬂ 
.
ﬂﬂ 
WriteEndElement
ﬂﬂ 
(
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
writer
‚‚ 

.
‚‚
 
WriteEndElement
‚‚ 
(
‚‚ 
)
‚‚ 
;
‚‚ 
}
„„ 
writer
ÂÂ 	
.
ÂÂ	 

WriteEndElement
ÂÂ
 
(
ÂÂ 
)
ÂÂ 
;
ÂÂ 
}
ÊÊ 
private
ËË 	
void
ËË
 

AddBinding
ËË 
(
ËË !
XmlDictionaryWriter
ËË -
writer
ËË. 4
)
ËË4 5
{
ÈÈ 
writer
ÍÍ 	
.
ÍÍ	 

WriteStartElement
ÍÍ
 
(
ÍÍ 
$str
ÍÍ "
,
ÍÍ" #
$str
ÍÍ$ -
,
ÍÍ- .

Namespaces
ÍÍ/ 9
.
ÍÍ9 :
WSDL_NS
ÍÍ: A
)
ÍÍA B
;
ÍÍB C
writer
ÎÎ 	
.
ÎÎ	 
"
WriteAttributeString
ÎÎ
 
(
ÎÎ 
$str
ÎÎ %
,
ÎÎ% &
BindingName
ÎÎ' 2
)
ÎÎ2 3
;
ÎÎ3 4
writer
ÏÏ 	
.
ÏÏ	 
"
WriteAttributeString
ÏÏ
 
(
ÏÏ 
$str
ÏÏ %
,
ÏÏ% &
$str
ÏÏ' -
+
ÏÏ. /
BindingType
ÏÏ0 ;
)
ÏÏ; <
;
ÏÏ< =
writer
ÌÌ 	
.
ÌÌ	 
"
WriteAttributeString
ÌÌ
 
(
ÌÌ 
$str
ÌÌ &
,
ÌÌ& '
$str
ÌÌ( 2
)
ÌÌ2 3
;
ÌÌ3 4
var
ÔÔ 
soap
ÔÔ 
=
ÔÔ 
	_isSoap12
ÔÔ 
?
ÔÔ 
$str
ÔÔ "
:
ÔÔ# $
$str
ÔÔ% +
;
ÔÔ+ ,
var
 
soapNamespace
 
=
 
	_isSoap12
  
?
! "

Namespaces
# -
.
- .
	SOAP12_NS
. 7
:
8 9

Namespaces
: D
.
D E
	SOAP11_NS
E N
;
N O
writer
ÒÒ 	
.
ÒÒ	 

WriteStartElement
ÒÒ
 
(
ÒÒ 
soap
ÒÒ  
,
ÒÒ  !
$str
ÒÒ" +
,
ÒÒ+ ,
soapNamespace
ÒÒ- :
)
ÒÒ: ;
;
ÒÒ; <
writer
ÚÚ 	
.
ÚÚ	 
"
WriteAttributeString
ÚÚ
 
(
ÚÚ 
$str
ÚÚ *
,
ÚÚ* +

Namespaces
ÚÚ, 6
.
ÚÚ6 7
TRANSPORT_SCHEMA
ÚÚ7 G
)
ÚÚG H
;
ÚÚH I
writer
ÛÛ 	
.
ÛÛ	 

WriteEndElement
ÛÛ
 
(
ÛÛ 
)
ÛÛ 
;
ÛÛ 
foreach
ıı 

(
ıı 
var
ıı 
	operation
ıı 
in
ıı 
_service
ıı %
.
ıı% &

Operations
ıı& 0
)
ıı0 1
{
ˆˆ 
writer
˜˜ 

.
˜˜
 
WriteStartElement
˜˜ 
(
˜˜ 
$str
˜˜ #
,
˜˜# $
$str
˜˜% 0
,
˜˜0 1

Namespaces
˜˜2 <
.
˜˜< =
WSDL_NS
˜˜= D
)
˜˜D E
;
˜˜E F
writer
¯¯ 

.
¯¯
 "
WriteAttributeString
¯¯ 
(
¯¯  
$str
¯¯  &
,
¯¯& '
	operation
¯¯( 1
.
¯¯1 2
Name
¯¯2 6
)
¯¯6 7
;
¯¯7 8
writer
˙˙ 

.
˙˙
 
WriteStartElement
˙˙ 
(
˙˙ 
soap
˙˙ !
,
˙˙! "
$str
˙˙# .
,
˙˙. /
soapNamespace
˙˙0 =
)
˙˙= >
;
˙˙> ?
writer
˚˚ 

.
˚˚
 "
WriteAttributeString
˚˚ 
(
˚˚  
$str
˚˚  ,
,
˚˚, -
	operation
˚˚. 7
.
˚˚7 8

SoapAction
˚˚8 B
)
˚˚B C
;
˚˚C D
writer
¸¸ 

.
¸¸
 "
WriteAttributeString
¸¸ 
(
¸¸  
$str
¸¸  '
,
¸¸' (
$str
¸¸) 3
)
¸¸3 4
;
¸¸4 5
writer
˝˝ 

.
˝˝
 
WriteEndElement
˝˝ 
(
˝˝ 
)
˝˝ 
;
˝˝ 
writer
ˇˇ 

.
ˇˇ
 
WriteStartElement
ˇˇ 
(
ˇˇ 
$str
ˇˇ #
,
ˇˇ# $
$str
ˇˇ% ,
,
ˇˇ, -

Namespaces
ˇˇ. 8
.
ˇˇ8 9
WSDL_NS
ˇˇ9 @
)
ˇˇ@ A
;
ˇˇA B
writer
ÄÄ 

.
ÄÄ
 
WriteStartElement
ÄÄ 
(
ÄÄ 
soap
ÄÄ !
,
ÄÄ! "
$str
ÄÄ# )
,
ÄÄ) *
soapNamespace
ÄÄ+ 8
)
ÄÄ8 9
;
ÄÄ9 :
writer
ÅÅ 

.
ÅÅ
 "
WriteAttributeString
ÅÅ 
(
ÅÅ  
$str
ÅÅ  %
,
ÅÅ% &
$str
ÅÅ' 0
)
ÅÅ0 1
;
ÅÅ1 2
writer
ÇÇ 

.
ÇÇ
 
WriteEndElement
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
writer
ÉÉ 

.
ÉÉ
 
WriteEndElement
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 	
	operation
ÖÖ	 
.
ÖÖ 
IsOneWay
ÖÖ 
)
ÖÖ 
{
ÜÜ 
writer
áá 
.
áá 
WriteStartElement
áá 
(
áá 
$str
áá $
,
áá$ %
$str
áá& .
,
áá. /

Namespaces
áá0 :
.
áá: ;
WSDL_NS
áá; B
)
ááB C
;
ááC D
writer
àà 
.
àà 
WriteStartElement
àà 
(
àà 
soap
àà "
,
àà" #
$str
àà$ *
,
àà* +
soapNamespace
àà, 9
)
àà9 :
;
àà: ;
writer
ââ 
.
ââ "
WriteAttributeString
ââ  
(
ââ  !
$str
ââ! &
,
ââ& '
$str
ââ( 1
)
ââ1 2
;
ââ2 3
writer
ää 
.
ää 
WriteEndElement
ää 
(
ää 
)
ää 
;
ää 
writer
ãã 
.
ãã 
WriteEndElement
ãã 
(
ãã 
)
ãã 
;
ãã 
}
åå 
writer
éé 

.
éé
 
WriteEndElement
éé 
(
éé 
)
éé 
;
éé 
}
èè 
writer
ëë 	
.
ëë	 

WriteEndElement
ëë
 
(
ëë 
)
ëë 
;
ëë 
}
íí 
private
îî 	
void
îî
 

AddService
îî 
(
îî !
XmlDictionaryWriter
îî -
writer
îî. 4
)
îî4 5
{
ïï 
var
ññ 
soap
ññ 
=
ññ 
	_isSoap12
ññ 
?
ññ 
$str
ññ "
:
ññ# $
$str
ññ% +
;
ññ+ ,
var
óó 
soapNamespace
óó 
=
óó 
	_isSoap12
óó  
?
óó! "

Namespaces
óó# -
.
óó- .
	SOAP12_NS
óó. 7
:
óó8 9

Namespaces
óó: D
.
óóD E
	SOAP11_NS
óóE N
;
óóN O
writer
ôô 	
.
ôô	 

WriteStartElement
ôô
 
(
ôô 
$str
ôô "
,
ôô" #
$str
ôô$ -
,
ôô- .

Namespaces
ôô/ 9
.
ôô9 :
WSDL_NS
ôô: A
)
ôôA B
;
ôôB C
writer
öö 	
.
öö	 
"
WriteAttributeString
öö
 
(
öö 
$str
öö %
,
öö% &
_service
öö' /
.
öö/ 0
ServiceType
öö0 ;
.
öö; <
Name
öö< @
)
öö@ A
;
ööA B
writer
úú 	
.
úú	 

WriteStartElement
úú
 
(
úú 
$str
úú "
,
úú" #
$str
úú$ *
,
úú* +

Namespaces
úú, 6
.
úú6 7
WSDL_NS
úú7 >
)
úú> ?
;
úú? @
writer
ùù 	
.
ùù	 
"
WriteAttributeString
ùù
 
(
ùù 
$str
ùù %
,
ùù% &
PortName
ùù' /
)
ùù/ 0
;
ùù0 1
writer
ûû 	
.
ûû	 
"
WriteAttributeString
ûû
 
(
ûû 
$str
ûû (
,
ûû( )
$str
ûû* 0
+
ûû1 2
BindingName
ûû3 >
)
ûû> ?
;
ûû? @
writer
†† 	
.
††	 

WriteStartElement
††
 
(
†† 
soap
††  
,
††  !
$str
††" +
,
††+ ,
soapNamespace
††- :
)
††: ;
;
††; <
writer
¢¢ 	
.
¢¢	 
"
WriteAttributeString
¢¢
 
(
¢¢ 
$str
¢¢ )
,
¢¢) *
_baseUrl
¢¢+ 3
)
¢¢3 4
;
¢¢4 5
writer
££ 	
.
££	 

WriteEndElement
££
 
(
££ 
)
££ 
;
££ 
writer
•• 	
.
••	 

WriteEndElement
••
 
(
•• 
)
•• 
;
•• 
}
¶¶ 
private
®® 	
void
®®
 "
AddSchemaComplexType
®® #
(
®®# $!
XmlDictionaryWriter
®®$ 7
writer
®®8 >
,
®®> ?
TypeToBuild
®®@ K
toBuild
®®L S
)
®®S T
{
©© 
var
™™ 
toBuildType
™™ 
=
™™ 
toBuild
™™ 
.
™™ 
Type
™™ !
;
™™! "
var
´´ 
toBuildBodyType
´´ 
=
´´ (
GetMessageContractBodyType
´´ 3
(
´´3 4
toBuildType
´´4 ?
)
´´? @
;
´´@ A
var
¨¨ 
isWrappedBodyType
¨¨ 
=
¨¨ *
IsWrappedMessageContractType
¨¨ 7
(
¨¨7 8
toBuildType
¨¨8 C
)
¨¨C D
;
¨¨D E
var
≠≠ 
toBuildName
≠≠ 
=
≠≠ 
toBuild
≠≠ 
.
≠≠ 
TypeName
≠≠ %
;
≠≠% &
if
ØØ 
(
ØØ 
toBuild
ØØ 
.
ØØ 
IsAnonumous
ØØ 
||
ØØ 
!
ØØ  
_builtComplexTypes
ØØ 1
.
ØØ1 2
Contains
ØØ2 :
(
ØØ: ;
toBuildName
ØØ; F
)
ØØF G
)
ØØG H
{
∞∞ 
writer
±± 

.
±±
 
WriteStartElement
±± 
(
±± 
$str
±± *
,
±±* +

Namespaces
±±, 6
.
±±6 7
	XMLNS_XSD
±±7 @
)
±±@ A
;
±±A B
if
≥≥ 
(
≥≥ 
!
≥≥ 	
toBuild
≥≥	 
.
≥≥ 
IsAnonumous
≥≥ 
)
≥≥ 
{
¥¥ 
writer
µµ 
.
µµ "
WriteAttributeString
µµ  
(
µµ  !
$str
µµ! '
,
µµ' (
toBuildName
µµ) 4
)
µµ4 5
;
µµ5 6
}
∂∂ 
if
∏∏ 
(
∏∏ 
toBuildType
∏∏ 
.
∏∏ 
IsArray
∏∏ 
)
∏∏ 
{
ππ 
writer
∫∫ 
.
∫∫ 
WriteStartElement
∫∫ 
(
∫∫ 
$str
∫∫ (
,
∫∫( )

Namespaces
∫∫* 4
.
∫∫4 5
	XMLNS_XSD
∫∫5 >
)
∫∫> ?
;
∫∫? @
AddSchemaType
ªª 
(
ªª 
writer
ªª 
,
ªª 
toBuildType
ªª &
.
ªª& '
GetElementType
ªª' 5
(
ªª5 6
)
ªª6 7
,
ªª7 8
toBuild
ªª9 @
.
ªª@ A
ChildElementName
ªªA Q
,
ªªQ R
true
ªªS W
)
ªªW X
;
ªªX Y
writer
ºº 
.
ºº 
WriteEndElement
ºº 
(
ºº 
)
ºº 
;
ºº 
}
ΩΩ 
else
ææ 
if
ææ	 
(
ææ 
typeof
ææ 
(
ææ 
IEnumerable
ææ 
)
ææ  
.
ææ  !
IsAssignableFrom
ææ! 1
(
ææ1 2
toBuildType
ææ2 =
)
ææ= >
)
ææ> ?
{
øø 
writer
¿¿ 
.
¿¿ 
WriteStartElement
¿¿ 
(
¿¿ 
$str
¿¿ (
,
¿¿( )

Namespaces
¿¿* 4
.
¿¿4 5
	XMLNS_XSD
¿¿5 >
)
¿¿> ?
;
¿¿? @
AddSchemaType
¡¡ 
(
¡¡ 
writer
¡¡ 
,
¡¡ 
toBuildType
¡¡ &
.
¡¡& '
GetGenericType
¡¡' 5
(
¡¡5 6
)
¡¡6 7
,
¡¡7 8
toBuild
¡¡9 @
.
¡¡@ A
ChildElementName
¡¡A Q
,
¡¡Q R
true
¡¡S W
)
¡¡W X
;
¡¡X Y
writer
¬¬ 
.
¬¬ 
WriteEndElement
¬¬ 
(
¬¬ 
)
¬¬ 
;
¬¬ 
}
√√ 
else
ƒƒ 
{
≈≈ 
if
∆∆ 
(
∆∆ 	
!
∆∆	 

isWrappedBodyType
∆∆
 
)
∆∆ 
{
«« 
var
»» 	

properties
»»
 
=
»» 
toBuildBodyType
»» &
.
»»& '
GetProperties
»»' 4
(
»»4 5
)
»»5 6
.
»»6 7
Where
»»7 <
(
»»< =
prop
»»= A
=>
»»B D
!
»»E F
prop
»»F J
.
»»J K
	IsIgnored
»»K T
(
»»T U
)
»»U V
)
»»V W
.
…… 
ToList
…… 
(
…… 
)
…… 
;
…… 
var
ÀÀ 	
elements
ÀÀ
 
=
ÀÀ 

properties
ÀÀ 
.
ÀÀ  
Where
ÀÀ  %
(
ÀÀ% &
t
ÀÀ& '
=>
ÀÀ( *
!
ÀÀ+ ,
t
ÀÀ, -
.
ÀÀ- .
IsAttribute
ÀÀ. 9
(
ÀÀ9 :
)
ÀÀ: ;
)
ÀÀ; <
.
ÀÀ< =
ToList
ÀÀ= C
(
ÀÀC D
)
ÀÀD E
;
ÀÀE F
if
ÃÃ 
(
ÃÃ	 

elements
ÃÃ
 
.
ÃÃ 
Any
ÃÃ 
(
ÃÃ 
)
ÃÃ 
)
ÃÃ 
{
ÕÕ 
writer
ŒŒ 
.
ŒŒ 
WriteStartElement
ŒŒ 
(
ŒŒ  
$str
ŒŒ  *
,
ŒŒ* +

Namespaces
ŒŒ, 6
.
ŒŒ6 7
	XMLNS_XSD
ŒŒ7 @
)
ŒŒ@ A
;
ŒŒA B
foreach
œœ 
(
œœ 
var
œœ 
element
œœ 
in
œœ 
elements
œœ '
)
œœ' (
{
–– #
AddSchemaTypeProperty
—— 
(
—— 
writer
—— $
,
——$ %
element
——& -
,
——- .
toBuild
——/ 6
)
——6 7
;
——7 8
}
““ 
writer
‘‘ 
.
‘‘ 
WriteEndElement
‘‘ 
(
‘‘ 
)
‘‘ 
;
‘‘  
}
’’ 
var
◊◊ 	

attributes
◊◊
 
=
◊◊ 

properties
◊◊ !
.
◊◊! "
Where
◊◊" '
(
◊◊' (
t
◊◊( )
=>
◊◊* ,
t
◊◊- .
.
◊◊. /
IsAttribute
◊◊/ :
(
◊◊: ;
)
◊◊; <
)
◊◊< =
;
◊◊= >
foreach
ÿÿ 
(
ÿÿ 
var
ÿÿ 
	attribute
ÿÿ 
in
ÿÿ 

attributes
ÿÿ  *
)
ÿÿ* +
{
ŸŸ #
AddSchemaTypeProperty
⁄⁄ 
(
⁄⁄ 
writer
⁄⁄ #
,
⁄⁄# $
	attribute
⁄⁄% .
,
⁄⁄. /
toBuild
⁄⁄0 7
)
⁄⁄7 8
;
⁄⁄8 9
}
€€ 
}
‹‹ 
else
›› 	
{
ﬁﬁ 
var
ﬂﬂ 	

properties
ﬂﬂ
 
=
ﬂﬂ 
toBuildType
ﬂﬂ "
.
ﬂﬂ" #
GetProperties
ﬂﬂ# 0
(
ﬂﬂ0 1
)
ﬂﬂ1 2
.
ﬂﬂ2 3
Where
ﬂﬂ3 8
(
ﬂﬂ8 9
prop
ﬂﬂ9 =
=>
ﬂﬂ> @
!
ﬂﬂA B
prop
ﬂﬂB F
.
ﬂﬂF G
	IsIgnored
ﬂﬂG P
(
ﬂﬂP Q
)
ﬂﬂQ R
)
ﬂﬂR S
.
‡‡ 
ToList
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡ 
var
‚‚ 	
elements
‚‚
 
=
‚‚ 

properties
‚‚ 
.
‚‚  
Where
‚‚  %
(
‚‚% &
t
‚‚& '
=>
‚‚( *
!
‚‚+ ,
t
‚‚, -
.
‚‚- .
IsAttribute
‚‚. 9
(
‚‚9 :
)
‚‚: ;
)
‚‚; <
.
‚‚< =
ToList
‚‚= C
(
‚‚C D
)
‚‚D E
;
‚‚E F
if
„„ 
(
„„	 

elements
„„
 
.
„„ 
Any
„„ 
(
„„ 
)
„„ 
)
„„ 
{
‰‰ 
writer
ÂÂ 
.
ÂÂ 
WriteStartElement
ÂÂ 
(
ÂÂ  
$str
ÂÂ  *
,
ÂÂ* +

Namespaces
ÂÂ, 6
.
ÂÂ6 7
	XMLNS_XSD
ÂÂ7 @
)
ÂÂ@ A
;
ÂÂA B
foreach
ÊÊ 
(
ÊÊ 
var
ÊÊ 
element
ÊÊ 
in
ÊÊ 
elements
ÊÊ '
)
ÊÊ' (
{
ÁÁ #
AddSchemaTypeProperty
ËË 
(
ËË 
writer
ËË $
,
ËË$ %
element
ËË& -
,
ËË- .
toBuild
ËË/ 6
)
ËË6 7
;
ËË7 8
}
ÈÈ 
writer
ÎÎ 
.
ÎÎ 
WriteEndElement
ÎÎ 
(
ÎÎ 
)
ÎÎ 
;
ÎÎ  
}
ÏÏ 
var
ÓÓ 	

attributes
ÓÓ
 
=
ÓÓ 

properties
ÓÓ !
.
ÓÓ! "
Where
ÓÓ" '
(
ÓÓ' (
t
ÓÓ( )
=>
ÓÓ* ,
t
ÓÓ- .
.
ÓÓ. /
IsAttribute
ÓÓ/ :
(
ÓÓ: ;
)
ÓÓ; <
)
ÓÓ< =
;
ÓÓ= >
foreach
ÔÔ 
(
ÔÔ 
var
ÔÔ 
	attribute
ÔÔ 
in
ÔÔ 

attributes
ÔÔ  *
)
ÔÔ* +
{
 #
AddSchemaTypeProperty
ÒÒ 
(
ÒÒ 
writer
ÒÒ #
,
ÒÒ# $
	attribute
ÒÒ% .
,
ÒÒ. /
toBuild
ÒÒ0 7
)
ÒÒ7 8
;
ÒÒ8 9
}
ÚÚ 
var
ÙÙ 	%
messageBodyMemberFields
ÙÙ
 !
=
ÙÙ" #
toBuildType
ÙÙ$ /
.
ÙÙ/ 0
	GetFields
ÙÙ0 9
(
ÙÙ9 :
)
ÙÙ: ;
.
ıı 
Where
ıı 
(
ıı 
field
ıı 
=>
ıı 
field
ıı 
.
ıı 
CustomAttributes
ıı -
.
ıı- .
Any
ıı. 1
(
ıı1 2
attr
ıı2 6
=>
ıı7 9
attr
ıı: >
.
ıı> ?
AttributeType
ıı? L
==
ııM O
typeof
ııP V
(
ııV W(
MessageBodyMemberAttribute
ııW q
)
ııq r
)
ıır s
)
ııs t
.
ˆˆ 
OrderBy
ˆˆ 
(
ˆˆ 
field
ˆˆ 
=>
ˆˆ 
field
ˆˆ 
.
ˆˆ  
GetCustomAttribute
ˆˆ 1
<
ˆˆ1 2(
MessageBodyMemberAttribute
ˆˆ2 L
>
ˆˆL M
(
ˆˆM N
)
ˆˆN O
.
ˆˆO P
Order
ˆˆP U
)
ˆˆU V
;
ˆˆV W
foreach
¯¯ 
(
¯¯ 
var
¯¯ 
field
¯¯ 
in
¯¯ %
messageBodyMemberFields
¯¯ 3
)
¯¯3 4
{
˘˘ 
var
˙˙ 

messageBodyMember
˙˙ 
=
˙˙ 
field
˙˙ $
.
˙˙$ % 
GetCustomAttribute
˙˙% 7
<
˙˙7 8(
MessageBodyMemberAttribute
˙˙8 R
>
˙˙R S
(
˙˙S T
)
˙˙T U
;
˙˙U V
var
¸¸ 

	fieldName
¸¸ 
=
¸¸ 
messageBodyMember
¸¸ (
.
¸¸( )
Name
¸¸) -
??
¸¸. 0
field
¸¸1 6
.
¸¸6 7
Name
¸¸7 ;
;
¸¸; <
AddSchemaType
˛˛ 
(
˛˛ 
writer
˛˛ 
,
˛˛ 
field
˛˛ "
.
˛˛" #
	FieldType
˛˛# ,
,
˛˛, -
	fieldName
˛˛. 7
)
˛˛7 8
;
˛˛8 9
}
ˇˇ 
}
ÄÄ 
}
ÅÅ 
writer
ÉÉ 

.
ÉÉ
 
WriteEndElement
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
if
ÖÖ 
(
ÖÖ 
isWrappedBodyType
ÖÖ 
)
ÖÖ 
{
ÜÜ 
writer
áá 
.
áá 
WriteStartElement
áá 
(
áá 
$str
áá '
,
áá' (

Namespaces
áá) 3
.
áá3 4
	XMLNS_XSD
áá4 =
)
áá= >
;
áá> ?
writer
àà 
.
àà "
WriteAttributeString
àà  
(
àà  !
$str
àà! '
,
àà' (
toBuildName
àà) 4
)
àà4 5
;
àà5 6
writer
ââ 
.
ââ "
WriteAttributeString
ââ  
(
ââ  !
$str
ââ! +
,
ââ+ ,
$str
ââ- 3
)
ââ3 4
;
ââ4 5
writer
ää 
.
ää "
WriteAttributeString
ää  
(
ää  !
$str
ää! '
,
ää' (
$str
ää) /
+
ää0 1
toBuildName
ää2 =
)
ää= >
;
ää> ?
writer
ãã 
.
ãã 
WriteEndElement
ãã 
(
ãã 
)
ãã 
;
ãã 
}
åå  
_builtComplexTypes
éé 
.
éé 
Add
éé 
(
éé 
toBuildName
éé &
)
éé& '
;
éé' (
}
èè 
}
êê 
private
íí 	
void
íí
 #
AddSchemaTypeProperty
íí $
(
íí$ %!
XmlDictionaryWriter
íí% 8
writer
íí9 ?
,
íí? @
PropertyInfo
ííA M
property
ííN V
,
ííV W
TypeToBuild
ííX c
parentTypeToBuild
ííd u
)
ííu v
{
ìì 
if
îî 
(
îî 
property
îî 
.
îî 
IsChoice
îî 
(
îî 
)
îî 
)
îî 
{
ïï 
writer
ññ 

.
ññ
 
WriteStartElement
ññ 
(
ññ 
$str
ññ %
,
ññ% &

Namespaces
ññ' 1
.
ññ1 2
	XMLNS_XSD
ññ2 ;
)
ññ; <
;
ññ< =
if
òò 
(
òò 
property
òò 
.
òò 
PropertyType
òò 
.
òò 
IsEnumerableType
òò .
(
òò. /
)
òò/ 0
)
òò0 1
{
ôô 
writer
öö 
.
öö "
WriteAttributeString
öö  
(
öö  !
$str
öö! ,
,
öö, -
$str
öö. 1
)
öö1 2
;
öö2 3
writer
õõ 
.
õõ "
WriteAttributeString
õõ  
(
õõ  !
$str
õõ! ,
,
õõ, -
$str
õõ. 9
)
õõ9 :
;
õõ: ;
}
úú 
var
ûû 
choiceElements
ûû 
=
ûû 
property
ûû !
.
ûû! "!
GetCustomAttributes
ûû" 5
<
ûû5 6!
XmlElementAttribute
ûû6 I
>
ûûI J
(
ûûJ K
)
ûûK L
;
ûûL M
foreach
üü 
(
üü 
var
üü 
choiceElement
üü 
in
üü !
choiceElements
üü" 0
)
üü0 1
{
†† 
if
°° 
(
°° 	
choiceElement
°°	 
!=
°° 
null
°° 
)
°° 
{
¢¢ 
AddSchemaType
££ 
(
££ 
writer
££ 
,
££ 
choiceElement
££ )
.
££) *
Type
££* .
??
££/ 1
property
££2 :
.
££: ;
PropertyType
££; G
,
££G H
choiceElement
££I V
.
££V W
ElementName
££W b
??
££c e
property
££f n
.
££n o
Name
££o s
)
££s t
;
££t u
}
§§ 
}
•• 
writer
ßß 

.
ßß
 
WriteEndElement
ßß 
(
ßß 
)
ßß 
;
ßß 
return
®® 

;
®®
 
}
©© 
var
´´ (
createListWithoutProxyType
´´ !
=
´´" #
false
´´$ )
;
´´) *
var
¨¨ 
toBuild
¨¨ 
=
¨¨ 
new
¨¨ 
TypeToBuild
¨¨  
(
¨¨  !
property
¨¨! )
.
¨¨) *
PropertyType
¨¨* 6
)
¨¨6 7
;
¨¨7 8
var
ÆÆ 
	arrayItem
ÆÆ 
=
ÆÆ 
property
ÆÆ 
.
ÆÆ  
GetCustomAttribute
ÆÆ .
<
ÆÆ. /#
XmlArrayItemAttribute
ÆÆ/ D
>
ÆÆD E
(
ÆÆE F
)
ÆÆF G
;
ÆÆG H
if
ØØ 
(
ØØ 
	arrayItem
ØØ 
!=
ØØ 
null
ØØ 
&&
ØØ 
!
ØØ 
string
ØØ #
.
ØØ# $ 
IsNullOrWhiteSpace
ØØ$ 6
(
ØØ6 7
	arrayItem
ØØ7 @
.
ØØ@ A
ElementName
ØØA L
)
ØØL M
)
ØØM N
{
∞∞ 
toBuild
±± 
.
±± 
ChildElementName
±± 
=
±± 
	arrayItem
±± (
.
±±( )
ElementName
±±) 4
;
±±4 5
}
≤≤ 
var
¥¥ 
elementItem
¥¥ 
=
¥¥ 
property
¥¥ 
.
¥¥  
GetCustomAttribute
¥¥ 0
<
¥¥0 1!
XmlElementAttribute
¥¥1 D
>
¥¥D E
(
¥¥E F
)
¥¥F G
;
¥¥G H
if
µµ 
(
µµ 
elementItem
µµ 
!=
µµ 
null
µµ 
&&
µµ 
!
µµ 
string
µµ %
.
µµ% & 
IsNullOrWhiteSpace
µµ& 8
(
µµ8 9
elementItem
µµ9 D
.
µµD E
ElementName
µµE P
)
µµP Q
)
µµQ R
{
∂∂ 
toBuild
∑∑ 
.
∑∑ 
ChildElementName
∑∑ 
=
∑∑ 
elementItem
∑∑ *
.
∑∑* +
ElementName
∑∑+ 6
;
∑∑6 7(
createListWithoutProxyType
∏∏ 
=
∏∏  
toBuild
∏∏! (
.
∏∏( )
Type
∏∏) -
.
∏∏- .
IsEnumerableType
∏∏. >
(
∏∏> ?
)
∏∏? @
;
∏∏@ A
}
ππ 
var
ªª 
attributeItem
ªª 
=
ªª 
property
ªª 
.
ªª   
GetCustomAttribute
ªª  2
<
ªª2 3#
XmlAttributeAttribute
ªª3 H
>
ªªH I
(
ªªI J
)
ªªJ K
;
ªªK L
var
ºº (
messageBodyMemberAttribute
ºº !
=
ºº" #
property
ºº$ ,
.
ºº, - 
GetCustomAttribute
ºº- ?
<
ºº? @(
MessageBodyMemberAttribute
ºº@ Z
>
ººZ [
(
ºº[ \
)
ºº\ ]
;
ºº] ^
if
ΩΩ 
(
ΩΩ 
attributeItem
ΩΩ 
!=
ΩΩ 
null
ΩΩ 
)
ΩΩ 
{
ææ 
var
øø 
name
øø 
=
øø 
attributeItem
øø 
.
øø 
AttributeName
øø *
;
øø* +
if
¿¿ 
(
¿¿ 
string
¿¿ 
.
¿¿  
IsNullOrWhiteSpace
¿¿ !
(
¿¿! "
name
¿¿" &
)
¿¿& '
)
¿¿' (
{
¡¡ 
name
¬¬ 	
=
¬¬
 
property
¬¬ 
.
¬¬ 
Name
¬¬ 
;
¬¬ 
}
√√ 
AddSchemaType
≈≈ 
(
≈≈ 
writer
≈≈ 
,
≈≈ 
toBuild
≈≈ !
,
≈≈! "
name
≈≈# '
,
≈≈' (
isAttribute
≈≈) 4
:
≈≈4 5
true
≈≈6 :
)
≈≈: ;
;
≈≈; <
}
∆∆ 
else
«« 
if
«« 

(
«« (
messageBodyMemberAttribute
«« &
!=
««' )
null
««* .
)
««. /
{
»» 
var
…… 
name
…… 
=
…… (
messageBodyMemberAttribute
…… )
.
……) *
Name
……* .
;
……. /
if
   
(
   
string
   
.
    
IsNullOrWhiteSpace
   !
(
  ! "
name
  " &
)
  & '
)
  ' (
{
ÀÀ 
name
ÃÃ 	
=
ÃÃ
 
property
ÃÃ 
.
ÃÃ 
Name
ÃÃ 
;
ÃÃ 
}
ÕÕ 
AddSchemaType
œœ 
(
œœ 
writer
œœ 
,
œœ 
toBuild
œœ !
,
œœ! "
name
œœ# '
,
œœ' (
isArray
œœ) 0
:
œœ0 1(
createListWithoutProxyType
œœ2 L
,
œœL M"
isListWithoutWrapper
œœN b
:
œœb c(
createListWithoutProxyType
œœd ~
)
œœ~ 
;œœ Ä
}
–– 
else
—— 
{
““ 
AddSchemaType
”” 
(
”” 
writer
”” 
,
”” 
toBuild
”” !
,
””! "
parentTypeToBuild
””# 4
.
””4 5
ChildElementName
””5 E
??
””F H
property
””I Q
.
””Q R
Name
””R V
,
””V W
isArray
””X _
:
””_ `(
createListWithoutProxyType
””a {
,
””{ |#
isListWithoutWrapper””} ë
:””ë í*
createListWithoutProxyType””ì ≠
)””≠ Æ
;””Æ Ø
}
‘‘ 
}
’’ 
private
◊◊ 	
void
◊◊
 
AddSchemaType
◊◊ 
(
◊◊ !
XmlDictionaryWriter
◊◊ 0
writer
◊◊1 7
,
◊◊7 8
Type
◊◊9 =
type
◊◊> B
,
◊◊B C
string
◊◊D J
name
◊◊K O
,
◊◊O P
bool
◊◊Q U
isArray
◊◊V ]
=
◊◊^ _
false
◊◊` e
,
◊◊e f
string
◊◊g m

@namespace
◊◊n x
=
◊◊y z
null
◊◊{ 
,◊◊ Ä
bool◊◊Å Ö
isAttribute◊◊Ü ë
=◊◊í ì
false◊◊î ô
)◊◊ô ö
{
ÿÿ 
AddSchemaType
ŸŸ 
(
ŸŸ 
writer
ŸŸ 
,
ŸŸ 
new
ŸŸ 
TypeToBuild
ŸŸ (
(
ŸŸ( )
type
ŸŸ) -
)
ŸŸ- .
,
ŸŸ. /
name
ŸŸ0 4
,
ŸŸ4 5
isArray
ŸŸ6 =
,
ŸŸ= >

@namespace
ŸŸ? I
,
ŸŸI J
isAttribute
ŸŸK V
)
ŸŸV W
;
ŸŸW X
}
⁄⁄ 
private
‹‹ 	
void
‹‹
 
AddSchemaType
‹‹ 
(
‹‹ !
XmlDictionaryWriter
‹‹ 0
writer
‹‹1 7
,
‹‹7 8
TypeToBuild
‹‹9 D
toBuild
‹‹E L
,
‹‹L M
string
‹‹N T
name
‹‹U Y
,
‹‹Y Z
bool
‹‹[ _
isArray
‹‹` g
=
‹‹h i
false
‹‹j o
,
‹‹o p
string
‹‹q w

@namespace‹‹x Ç
=‹‹É Ñ
null‹‹Ö â
,‹‹â ä
bool‹‹ã è
isAttribute‹‹ê õ
=‹‹ú ù
false‹‹û £
,‹‹£ §
bool‹‹• ©$
isListWithoutWrapper‹‹™ æ
=‹‹ø ¿
false‹‹¡ ∆
)‹‹∆ «
{
›› 
var
ﬁﬁ 
type
ﬁﬁ 
=
ﬁﬁ 
toBuild
ﬁﬁ 
.
ﬁﬁ 
Type
ﬁﬁ 
;
ﬁﬁ 
var
ﬂﬂ 
typeInfo
ﬂﬂ 
=
ﬂﬂ 
type
ﬂﬂ 
.
ﬂﬂ 
GetTypeInfo
ﬂﬂ "
(
ﬂﬂ" #
)
ﬂﬂ# $
;
ﬂﬂ$ %
if
‡‡ 
(
‡‡ 
typeInfo
‡‡ 
.
‡‡ 
IsByRef
‡‡ 
)
‡‡ 
{
·· 
type
‚‚ 
=
‚‚	 

typeInfo
‚‚ 
.
‚‚ 
GetElementType
‚‚ "
(
‚‚" #
)
‚‚# $
;
‚‚$ %
}
„„ 
var
ÂÂ 
typeName
ÂÂ 
=
ÂÂ 
type
ÂÂ 
.
ÂÂ #
GetSerializedTypeName
ÂÂ ,
(
ÂÂ, -
)
ÂÂ- .
;
ÂÂ. /
if
ÁÁ 
(
ÁÁ 
writer
ÁÁ 
.
ÁÁ <
.TryAddSchemaTypeFromXmlSchemaProviderAttribute
ÁÁ <
(
ÁÁ< =
type
ÁÁ= A
,
ÁÁA B
name
ÁÁC G
,
ÁÁG H
SoapSerializer
ÁÁI W
.
ÁÁW X
XmlSerializer
ÁÁX e
,
ÁÁe f"
_xmlNamespaceManager
ÁÁg {
)
ÁÁ{ |
)
ÁÁ| }
{
ËË 
return
ÈÈ 

;
ÈÈ
 
}
ÍÍ 
var
ÏÏ 
underlyingType
ÏÏ 
=
ÏÏ 
Nullable
ÏÏ  
.
ÏÏ  !
GetUnderlyingType
ÏÏ! 2
(
ÏÏ2 3
type
ÏÏ3 7
)
ÏÏ7 8
;
ÏÏ8 9
if
ÔÔ 
(
ÔÔ 
underlyingType
ÔÔ 
?
ÔÔ 
.
ÔÔ 
IsValueType
ÔÔ "
==
ÔÔ# %
true
ÔÔ& *
&&
ÔÔ+ -
!
ÔÔ. /
underlyingType
ÔÔ/ =
.
ÔÔ= >
IsEnum
ÔÔ> D
&&
ÔÔE G
underlyingType
ÔÔH V
.
ÔÔV W
	Namespace
ÔÔW `
!=
ÔÔa c
null
ÔÔd h
&&
ÔÔi k
underlyingType
ÔÔl z
.
ÔÔz {
	NamespaceÔÔ{ Ñ
!=ÔÔÖ á
$strÔÔà ê
&&ÔÔë ì
!ÔÔî ï
underlyingTypeÔÔï £
.ÔÔ£ §
	NamespaceÔÔ§ ≠
.ÔÔ≠ Æ

StartsWithÔÔÆ ∏
(ÔÔ∏ π
$strÔÔπ ¬
)ÔÔ¬ √
)ÔÔ√ ƒ
{
 
AddSchemaType
ÒÒ 
(
ÒÒ 
writer
ÒÒ 
,
ÒÒ 
new
ÒÒ 
TypeToBuild
ÒÒ )
(
ÒÒ) *
underlyingType
ÒÒ* 8
)
ÒÒ8 9
{
ÒÒ: ;
ChildElementName
ÒÒ< L
=
ÒÒM N
toBuild
ÒÒO V
.
ÒÒV W
TypeName
ÒÒW _
}
ÒÒ` a
,
ÒÒa b
name
ÒÒc g
,
ÒÒg h
isArray
ÒÒi p
,
ÒÒp q

@namespace
ÒÒr |
,
ÒÒ| }
isAttributeÒÒ~ â
)ÒÒâ ä
;ÒÒä ã
return
ÚÚ 

;
ÚÚ
 
}
ÛÛ 
writer
ıı 	
.
ıı	 

WriteStartElement
ıı
 
(
ıı 
isAttribute
ıı '
?
ıı( )
$str
ıı* 5
:
ıı6 7
$str
ıı8 A
,
ııA B

Namespaces
ııC M
.
ııM N
	XMLNS_XSD
ııN W
)
ııW X
;
ııX Y
if
¯¯ 
(
¯¯ 

@namespace
¯¯ 
!=
¯¯ 
null
¯¯ 
)
¯¯ 
{
˘˘ 
writer
˙˙ 

.
˙˙
 "
WriteAttributeString
˙˙ 
(
˙˙  
$str
˙˙  1
,
˙˙1 2

@namespace
˙˙3 =
)
˙˙= >
;
˙˙> ?
}
˚˚ 
else
¸¸ 
if
¸¸ 

(
¸¸ 
typeInfo
¸¸ 
.
¸¸ 
IsEnum
¸¸ 
||
¸¸ 
underlyingType
¸¸ -
?
¸¸- .
.
¸¸. /
IsEnum
¸¸/ 5
==
¸¸6 8
true
¸¸9 =
||
˝˝ 
(
˝˝ 
typeInfo
˝˝ 
.
˝˝ 
IsValueType
˝˝ 
&&
˝˝ 
typeInfo
˝˝  (
.
˝˝( )
	Namespace
˝˝) 2
!=
˝˝3 5
null
˝˝6 :
&&
˝˝; =
(
˝˝> ?
typeInfo
˝˝? G
.
˝˝G H
	Namespace
˝˝H Q
==
˝˝R T
$str
˝˝U ]
||
˝˝^ `
typeInfo
˝˝a i
.
˝˝i j
	Namespace
˝˝j s
.
˝˝s t

StartsWith
˝˝t ~
(
˝˝~ 
$str˝˝ à
)˝˝à â
)˝˝â ä
)˝˝ä ã
||
˛˛ 
(
˛˛ 
type
˛˛ 
.
˛˛ 
Name
˛˛ 
==
˛˛ 
$str
˛˛ 
)
˛˛ 
||
ˇˇ 
(
ˇˇ 
type
ˇˇ 
.
ˇˇ 
Name
ˇˇ 
==
ˇˇ 
$str
ˇˇ 
)
ˇˇ 
)
ˇˇ 
{
ÄÄ 
XmlQualifiedName
ÅÅ 

xsTypename
ÅÅ 
;
ÅÅ  
if
ÇÇ 
(
ÇÇ 
typeof
ÇÇ 
(
ÇÇ 
DateTimeOffset
ÇÇ 
)
ÇÇ 
.
ÇÇ 
IsAssignableFrom
ÇÇ /
(
ÇÇ/ 0
type
ÇÇ0 4
)
ÇÇ4 5
)
ÇÇ5 6
{
ÉÉ 
if
ÑÑ 
(
ÑÑ 	
string
ÑÑ	 
.
ÑÑ 
IsNullOrEmpty
ÑÑ 
(
ÑÑ 
name
ÑÑ "
)
ÑÑ" #
)
ÑÑ# $
{
ÖÖ 
name
ÜÜ 

=
ÜÜ 
typeName
ÜÜ 
;
ÜÜ 
}
áá 

Namespaces
ââ 
.
ââ 9
+AddNamespaceIfNotAlreadyPresentAndGetPrefix
ââ ;
(
ââ; <"
_xmlNamespaceManager
ââ< P
,
ââP Q
$str
ââR Y
,
ââY Z

Namespaces
ââ[ e
.
ââe f
	SYSTEM_NS
ââf o
)
ââo p
;
ââp q

xsTypename
ää 
=
ää 
new
ää 
XmlQualifiedName
ää &
(
ää& '
typeName
ää' /
,
ää/ 0

Namespaces
ää1 ;
.
ää; <
	SYSTEM_NS
ää< E
)
ääE F
;
ääF G"
_buildDateTimeOffset
åå 
=
åå 
true
åå  
;
åå  !
}
çç 
else
éé 
if
éé	 
(
éé 
typeInfo
éé 
.
éé 
IsEnum
éé 
)
éé 
{
èè 

xsTypename
êê 
=
êê 
new
êê 
XmlQualifiedName
êê &
(
êê& '
typeName
êê' /
,
êê/ 0"
_xmlNamespaceManager
êê1 E
.
êêE F
LookupNamespace
êêF U
(
êêU V
$str
êêV [
)
êê[ \
)
êê\ ]
;
êê] ^
_enumToBuild
ëë 
.
ëë 
Enqueue
ëë 
(
ëë 
type
ëë 
)
ëë 
;
ëë  
}
íí 
else
ìì 
if
ìì	 
(
ìì 
underlyingType
ìì 
?
ìì 
.
ìì 
IsEnum
ìì #
==
ìì$ &
true
ìì' +
)
ìì+ ,
{
îî 

xsTypename
ïï 
=
ïï 
new
ïï 
XmlQualifiedName
ïï &
(
ïï& '
underlyingType
ïï' 5
.
ïï5 6#
GetSerializedTypeName
ïï6 K
(
ïïK L
)
ïïL M
,
ïïM N"
_xmlNamespaceManager
ïïO c
.
ïïc d
LookupNamespace
ïïd s
(
ïïs t
$str
ïït y
)
ïïy z
)
ïïz {
;
ïï{ |
_enumToBuild
ññ 
.
ññ 
Enqueue
ññ 
(
ññ 
underlyingType
ññ (
)
ññ( )
;
ññ) *
}
óó 
else
òò 
{
ôô 
if
öö 
(
öö 	
underlyingType
öö	 
!=
öö 
null
öö 
)
öö  
{
õõ 

xsTypename
úú 
=
úú 
ResolveType
úú 
(
úú 
underlyingType
úú -
)
úú- .
;
úú. /
writer
ùù 
.
ùù "
WriteAttributeString
ùù !
(
ùù! "
$str
ùù" ,
,
ùù, -
$str
ùù. 4
)
ùù4 5
;
ùù5 6
}
ûû 
else
üü 	
{
†† 

xsTypename
°° 
=
°° 
ResolveType
°° 
(
°° 
type
°° #
)
°°# $
;
°°$ %
}
¢¢ 
}
££ 
if
•• 
(
•• 
isAttribute
•• 
)
•• 
{
¶¶ 
}
®® 
else
©© 
if
©©	 
(
©© 
isArray
©© 
)
©© 
{
™™ 
writer
´´ 
.
´´ "
WriteAttributeString
´´  
(
´´  !
$str
´´! ,
,
´´, -
$str
´´. 1
)
´´1 2
;
´´2 3
writer
¨¨ 
.
¨¨ "
WriteAttributeString
¨¨  
(
¨¨  !
$str
¨¨! ,
,
¨¨, -
$str
¨¨. 9
)
¨¨9 :
;
¨¨: ;
writer
≠≠ 
.
≠≠ "
WriteAttributeString
≠≠  
(
≠≠  !
$str
≠≠! +
,
≠≠+ ,
$str
≠≠- 3
)
≠≠3 4
;
≠≠4 5
}
ÆÆ 
else
ØØ 
{
∞∞ 
writer
±± 
.
±± "
WriteAttributeString
±±  
(
±±  !
$str
±±! ,
,
±±, -
type
±±. 2
.
±±2 3
IsValueType
±±3 >
?
±±? @
$str
±±A D
:
±±E F
$str
±±G J
)
±±J K
;
±±K L
writer
≤≤ 
.
≤≤ "
WriteAttributeString
≤≤  
(
≤≤  !
$str
≤≤! ,
,
≤≤, -
$str
≤≤. 1
)
≤≤1 2
;
≤≤2 3
}
≥≥ 
if
µµ 
(
µµ 
string
µµ 
.
µµ 
IsNullOrEmpty
µµ 
(
µµ 
name
µµ !
)
µµ! "
)
µµ" #
{
∂∂ 
name
∑∑ 	
=
∑∑
 

xsTypename
∑∑ 
.
∑∑ 
Name
∑∑ 
;
∑∑ 
}
∏∏ 
writer
∫∫ 

.
∫∫
 "
WriteAttributeString
∫∫ 
(
∫∫  
$str
∫∫  &
,
∫∫& '
name
∫∫( ,
)
∫∫, -
;
∫∫- .
writer
ªª 

.
ªª
 "
WriteAttributeString
ªª 
(
ªª  
$str
ªª  &
,
ªª& '
$"
ªª( *
{
ªª* +"
_xmlNamespaceManager
ªª+ ?
.
ªª? @
LookupPrefix
ªª@ L
(
ªªL M

xsTypename
ªªM W
.
ªªW X
	Namespace
ªªX a
)
ªªa b
}
ªªb c
:
ªªc d
{
ªªd e

xsTypename
ªªe o
.
ªªo p
Name
ªªp t
}
ªªt u
"
ªªu v
)
ªªv w
;
ªªw x
}
ºº 
else
ΩΩ 
{
ææ 
var
øø 
newTypeToBuild
øø 
=
øø 
new
øø 
TypeToBuild
øø (
(
øø( )
type
øø) -
)
øø- .
;
øø. /
if
¡¡ 
(
¡¡ 
!
¡¡ 	
string
¡¡	 
.
¡¡  
IsNullOrWhiteSpace
¡¡ "
(
¡¡" #
toBuild
¡¡# *
.
¡¡* +
ChildElementName
¡¡+ ;
)
¡¡; <
)
¡¡< =
{
¬¬ 
newTypeToBuild
√√ 
.
√√ 
ChildElementName
√√ $
=
√√% &
toBuild
√√' .
.
√√. /
ChildElementName
√√/ ?
;
√√? @)
SetUniqueNameForDynamicType
ƒƒ  
(
ƒƒ  !
newTypeToBuild
ƒƒ! /
)
ƒƒ/ 0
;
ƒƒ0 1
}
≈≈ 
writer
«« 

.
««
 "
WriteAttributeString
«« 
(
««  
$str
««  +
,
««+ ,
$str
««- 0
)
««0 1
;
««1 2
if
»» 
(
»» 
isArray
»» 
)
»» 
{
…… 
writer
   
.
   "
WriteAttributeString
    
(
    !
$str
  ! ,
,
  , -
$str
  . 9
)
  9 :
;
  : ;
writer
ÀÀ 
.
ÀÀ "
WriteAttributeString
ÀÀ  
(
ÀÀ  !
$str
ÀÀ! +
,
ÀÀ+ ,
$str
ÀÀ- 3
)
ÀÀ3 4
;
ÀÀ4 5
}
ÃÃ 
else
ÕÕ 
{
ŒŒ 
writer
œœ 
.
œœ "
WriteAttributeString
œœ  
(
œœ  !
$str
œœ! ,
,
œœ, -
$str
œœ. 1
)
œœ1 2
;
œœ2 3
}
–– 
if
““ 
(
““ 
type
““ 
==
““ 
typeof
““ 
(
““ 
Stream
““ 
)
““ 
||
““ !
typeof
““" (
(
““( )
Stream
““) /
)
““/ 0
.
““0 1
IsAssignableFrom
““1 A
(
““A B
type
““B F
)
““F G
)
““G H
{
”” 
name
‘‘ 	
=
‘‘
 
$str
‘‘ 
;
‘‘ 
writer
÷÷ 
.
÷÷ "
WriteAttributeString
÷÷  
(
÷÷  !
$str
÷÷! '
,
÷÷' (
name
÷÷) -
)
÷÷- .
;
÷÷. /
writer
◊◊ 
.
◊◊ "
WriteAttributeString
◊◊  
(
◊◊  !
$str
◊◊! '
,
◊◊' (
$"
◊◊) +
{
◊◊+ ,"
_xmlNamespaceManager
◊◊, @
.
◊◊@ A
LookupPrefix
◊◊A M
(
◊◊M N

Namespaces
◊◊N X
.
◊◊X Y
	XMLNS_XSD
◊◊Y b
)
◊◊b c
}
◊◊c d
:base64Binary
◊◊d q
"
◊◊q r
)
◊◊r s
;
◊◊s t
}
ÿÿ 
else
ŸŸ 
if
ŸŸ	 
(
ŸŸ 
type
ŸŸ 
.
ŸŸ 
IsArray
ŸŸ 
)
ŸŸ 
{
⁄⁄ 
if
€€ 
(
€€ 	
string
€€	 
.
€€ 
IsNullOrEmpty
€€ 
(
€€ 
name
€€ "
)
€€" #
)
€€# $
{
‹‹ 
name
›› 

=
›› 
typeName
›› 
;
›› 
}
ﬁﬁ 
writer
‡‡ 
.
‡‡ "
WriteAttributeString
‡‡  
(
‡‡  !
$str
‡‡! '
,
‡‡' (
name
‡‡) -
)
‡‡- .
;
‡‡. /
writer
·· 
.
·· "
WriteAttributeString
··  
(
··  !
$str
··! '
,
··' (
$str
··) /
+
··0 1
newTypeToBuild
··2 @
.
··@ A
TypeName
··A I
)
··I J
;
··J K!
_complexTypeToBuild
„„ 
.
„„ 
Enqueue
„„  
(
„„  !
newTypeToBuild
„„! /
)
„„/ 0
;
„„0 1
}
‰‰ 
else
ÂÂ 
if
ÂÂ	 
(
ÂÂ 
typeof
ÂÂ 
(
ÂÂ 
IEnumerable
ÂÂ 
)
ÂÂ  
.
ÂÂ  !
IsAssignableFrom
ÂÂ! 1
(
ÂÂ1 2
type
ÂÂ2 6
)
ÂÂ6 7
)
ÂÂ7 8
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 	
type
ÁÁ	 
.
ÁÁ 
GetGenericType
ÁÁ 
(
ÁÁ 
)
ÁÁ 
.
ÁÁ 
Name
ÁÁ #
==
ÁÁ$ &
$str
ÁÁ' /
)
ÁÁ/ 0
{
ËË 
if
ÈÈ 
(
ÈÈ	 

string
ÈÈ
 
.
ÈÈ 
IsNullOrEmpty
ÈÈ 
(
ÈÈ 
name
ÈÈ #
)
ÈÈ# $
)
ÈÈ$ %
{
ÍÍ 
name
ÎÎ 
=
ÎÎ 
typeName
ÎÎ 
;
ÎÎ 
}
ÏÏ 
var
ÓÓ 	
ns
ÓÓ
 
=
ÓÓ 
$"
ÓÓ 
q
ÓÓ 
{
ÓÓ 
_namespaceCounter
ÓÓ $
++
ÓÓ$ &
}
ÓÓ& '
"
ÓÓ' (
;
ÓÓ( )
writer
 
.
 !
WriteXmlnsAttribute
  
(
  !
ns
! #
,
# $

Namespaces
% /
.
/ 0
	ARRAYS_NS
0 9
)
9 :
;
: ;
writer
ÒÒ 
.
ÒÒ "
WriteAttributeString
ÒÒ !
(
ÒÒ! "
$str
ÒÒ" (
,
ÒÒ( )
name
ÒÒ* .
)
ÒÒ. /
;
ÒÒ/ 0
writer
ÚÚ 
.
ÚÚ "
WriteAttributeString
ÚÚ !
(
ÚÚ! "
$str
ÚÚ" ,
,
ÚÚ, -
$str
ÚÚ. 4
)
ÚÚ4 5
;
ÚÚ5 6
writer
ÙÙ 
.
ÙÙ "
WriteAttributeString
ÙÙ !
(
ÙÙ! "
$str
ÙÙ" (
,
ÙÙ( )
$"
ÙÙ* ,
{
ÙÙ, -
ns
ÙÙ- /
}
ÙÙ/ 0
:
ÙÙ0 1
{
ÙÙ1 2
newTypeToBuild
ÙÙ2 @
.
ÙÙ@ A
TypeName
ÙÙA I
}
ÙÙI J
"
ÙÙJ K
)
ÙÙK L
;
ÙÙL M
_arrayToBuild
ˆˆ 
.
ˆˆ 
Enqueue
ˆˆ 
(
ˆˆ 
type
ˆˆ  
)
ˆˆ  !
;
ˆˆ! "
}
˜˜ 
else
¯¯ 	
{
˘˘ 
if
˙˙ 
(
˙˙	 

string
˙˙
 
.
˙˙ 
IsNullOrEmpty
˙˙ 
(
˙˙ 
name
˙˙ #
)
˙˙# $
)
˙˙$ %
{
˚˚ 
name
¸¸ 
=
¸¸ 
typeName
¸¸ 
;
¸¸ 
}
˝˝ 
writer
ˇˇ 
.
ˇˇ "
WriteAttributeString
ˇˇ !
(
ˇˇ! "
$str
ˇˇ" (
,
ˇˇ( )
name
ˇˇ* .
)
ˇˇ. /
;
ˇˇ/ 0
if
ÅÅ 
(
ÅÅ	 

!
ÅÅ
 
isArray
ÅÅ 
)
ÅÅ 
{
ÇÇ 
writer
ÉÉ 
.
ÉÉ "
WriteAttributeString
ÉÉ "
(
ÉÉ" #
$str
ÉÉ# -
,
ÉÉ- .
$str
ÉÉ/ 5
)
ÉÉ5 6
;
ÉÉ6 7
}
ÑÑ 
if
ÜÜ 
(
ÜÜ	 
"
isListWithoutWrapper
ÜÜ
 
)
ÜÜ 
{
áá 
newTypeToBuild
àà 
=
àà 
new
àà 
TypeToBuild
àà '
(
àà' (
newTypeToBuild
àà( 6
.
àà6 7
Type
àà7 ;
.
àà; <
GetGenericType
àà< J
(
ààJ K
)
ààK L
)
ààL M
;
ààM N
}
ââ 
if
ãã 
(
ãã	 

newTypeToBuild
ãã
 
.
ãã 
IsAnonumous
ãã $
)
ãã$ %
{
åå "
AddSchemaComplexType
çç 
(
çç 
writer
çç "
,
çç" #
newTypeToBuild
çç$ 2
)
çç2 3
;
çç3 4
}
éé 
else
èè 

{
êê 
writer
ëë 
.
ëë "
WriteAttributeString
ëë "
(
ëë" #
$str
ëë# )
,
ëë) *
$str
ëë+ 1
+
ëë2 3
newTypeToBuild
ëë4 B
.
ëëB C
TypeName
ëëC K
)
ëëK L
;
ëëL M!
_complexTypeToBuild
ìì 
.
ìì 
Enqueue
ìì "
(
ìì" #
newTypeToBuild
ìì# 1
)
ìì1 2
;
ìì2 3
}
îî 
}
ïï 
}
ññ 
else
óó 
if
óó	 
(
óó 
toBuild
óó 
.
óó 
IsAnonumous
óó  
)
óó  !
{
òò 
writer
ôô 
.
ôô "
WriteAttributeString
ôô  
(
ôô  !
$str
ôô! '
,
ôô' (
name
ôô) -
)
ôô- .
;
ôô. /"
AddSchemaComplexType
öö 
(
öö 
writer
öö  
,
öö  !
newTypeToBuild
öö" 0
)
öö0 1
;
öö1 2
}
õõ 
else
úú 
{
ùù 
if
ûû 
(
ûû 	
string
ûû	 
.
ûû 
IsNullOrEmpty
ûû 
(
ûû 
name
ûû "
)
ûû" #
)
ûû# $
{
üü 
name
†† 

=
†† 
typeName
†† 
;
†† 
}
°° 
writer
££ 
.
££ "
WriteAttributeString
££  
(
££  !
$str
££! '
,
££' (
name
££) -
)
££- .
;
££. /
writer
§§ 
.
§§ "
WriteAttributeString
§§  
(
§§  !
$str
§§! '
,
§§' (
$str
§§) /
+
§§0 1
newTypeToBuild
§§2 @
.
§§@ A
TypeName
§§A I
)
§§I J
;
§§J K!
_complexTypeToBuild
¶¶ 
.
¶¶ 
Enqueue
¶¶  
(
¶¶  !
newTypeToBuild
¶¶! /
)
¶¶/ 0
;
¶¶0 1
}
ßß 
}
®® 
writer
™™ 	
.
™™	 

WriteEndElement
™™
 
(
™™ 
)
™™ 
;
™™ 
}
´´ 
private
≠≠ 	
void
≠≠
 )
SetUniqueNameForDynamicType
≠≠ *
(
≠≠* +
TypeToBuild
≠≠+ 6
dynamicType
≠≠7 B
)
≠≠B C
{
ÆÆ 
if
ØØ 
(
ØØ 
!
ØØ $
_requestedDynamicTypes
ØØ 
.
ØØ 
TryGetValue
ØØ *
(
ØØ* +
dynamicType
ØØ+ 6
.
ØØ6 7
TypeName
ØØ7 ?
,
ØØ? @
out
ØØA D
var
ØØE H
elementsList
ØØI U
)
ØØU V
)
ØØV W
{
∞∞ 
var
±± 
elementsMap
±± 
=
±± 
new
±± 

Dictionary
±± $
<
±±$ %
string
±±% +
,
±±+ ,
string
±±- 3
>
±±3 4
{
±±5 6
{
±±7 8
dynamicType
±±9 D
.
±±D E
ChildElementName
±±E U
,
±±U V
string
±±W ]
.
±±] ^
Empty
±±^ c
}
±±d e
}
±±f g
;
±±g h$
_requestedDynamicTypes
≤≤ 
.
≤≤ 
Add
≤≤ 
(
≤≤ 
dynamicType
≤≤ *
.
≤≤* +
TypeName
≤≤+ 3
,
≤≤3 4
elementsMap
≤≤5 @
)
≤≤@ A
;
≤≤A B
return
≥≥ 

;
≥≥
 
}
¥¥ 
if
∂∂ 
(
∂∂ 
elementsList
∂∂ 
.
∂∂ 
TryGetValue
∂∂ 
(
∂∂  
dynamicType
∂∂  +
.
∂∂+ ,
ChildElementName
∂∂, <
,
∂∂< =
out
∂∂> A
var
∂∂B E
assotiatedPostfix
∂∂F W
)
∂∂W X
)
∂∂X Y
{
∑∑ 
dynamicType
∏∏ 
.
∏∏ 
TypeName
∏∏ 
+=
∏∏ 
$"
∏∏ 
{
∏∏ 
assotiatedPostfix
∏∏ 0
}
∏∏0 1
"
∏∏1 2
;
∏∏2 3
}
ππ 
else
∫∫ 
{
ªª 
var
ºº 

newPostfix
ºº 
=
ºº 
$"
ºº 
{
ºº 
elementsList
ºº $
.
ºº$ %
Count
ºº% *
}
ºº* +
"
ºº+ ,
;
ºº, -
dynamicType
ΩΩ 
.
ΩΩ 
TypeName
ΩΩ 
+=
ΩΩ 
$"
ΩΩ 
{
ΩΩ 

newPostfix
ΩΩ )
}
ΩΩ) *
"
ΩΩ* +
;
ΩΩ+ ,
elementsList
ææ 
.
ææ 
Add
ææ 
(
ææ 
dynamicType
ææ  
.
ææ  !
ChildElementName
ææ! 1
,
ææ1 2

newPostfix
ææ3 =
)
ææ= >
;
ææ> ?
}
øø 
}
¿¿ 
}
¡¡ 
}¬¬ ‹U
WC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Meta\MetaFromFile.cs
	namespace 	
SoapCore
 
. 
Meta 
{ 
public		 
class		 
MetaFromFile		 
{

 
public 
MetaFromFile	 
( 
) 
{ 
} 
public 
string	 
CurrentWebService !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string	 
CurrentWebServer  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string	 
	XsdFolder 
{ 
get 
;  
set! $
;$ %
}& '
public!! 
string!!	 

WSDLFolder!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
public&& 
string&&	 
	ServerUrl&& 
{&& 
get&& 
;&&  
set&&! $
;&&$ %
}&&& '
public(( 
string((	 
ReadLocalFile(( 
((( 
string(( $
path((% )
)(() *
{)) 
if** 
(** 
!** 
File** 
.** 
Exists** 
(** 
path** 
)** 
)** 
{++ 
return,, 

string,, 
.,, 
Empty,, 
;,, 
}-- 
using00 
var00	 
reader00 
=00 
new00 
StreamReader00 &
(00& '
path00' +
)00+ ,
;00, -
var11 
fileContents11 
=11 
reader11 
.11 
	ReadToEnd11 &
(11& '
)11' (
;11( )
return22 	
fileContents22
 
;22 
}33 
public55 
string55	 (
ModifyWSDLAddRightSchemaPath55 ,
(55, -
string55- 3
	xmlString554 =
)55= >
{66 
XmlDocument77 
xmlDoc77 
=77 
new77 
XmlDocument77 '
(77' (
)77( )
;77) *
xmlDoc88 	
.88	 

LoadXml88
 
(88 
	xmlString88 
)88 
;88 
foreach:: 

(:: 
XmlNode:: 
node:: 
in:: 
xmlDoc:: "
.::" #
DocumentElement::# 2
.::2 3

ChildNodes::3 =
)::= >
{;; 
if<< 
(<< 
node<< 
.<< 
Name<< 
==<< 
(<< 
!<< 
string<< 
.<< 
IsNullOrWhiteSpace<< 0
(<<0 1
xmlDoc<<1 7
.<<7 8
DocumentElement<<8 G
.<<G H
Prefix<<H N
)<<N O
?<<P Q
xmlDoc<<R X
.<<X Y
DocumentElement<<Y h
.<<h i
Prefix<<i o
+<<p q
$str<<r u
:<<v w
xmlDoc<<x ~
.<<~ 
DocumentElement	<< é
.
<<é è
Prefix
<<è ï
)
<<ï ñ
+
<<ó ò
$str
<<ô †
)
<<† °
{== 
foreach>> 
(>> 
XmlNode>> 

schemaNode>>  
in>>! #
node>>$ (
.>>( )

ChildNodes>>) 3
)>>3 4
{?? 
if@@ 
(@@	 


schemaNode@@
 
.@@ 
Name@@ 
==@@ 
(@@ 
!@@ 
string@@ %
.@@% &
IsNullOrWhiteSpace@@& 8
(@@8 9

schemaNode@@9 C
.@@C D
Prefix@@D J
)@@J K
?@@L M

schemaNode@@N X
.@@X Y
Prefix@@Y _
+@@` a
$str@@b e
:@@f g

schemaNode@@h r
.@@r s
Prefix@@s y
)@@y z
+@@{ |
$str	@@} Ö
)
@@Ö Ü
{AA 
foreachBB 
(BB 
XmlNodeBB 

importNodeBB "
inBB# %

schemaNodeBB& 0
.BB0 1

ChildNodesBB1 ;
)BB; <
{CC 
ifDD 

(DD 

importNodeDD 
.DD 
NameDD 
==DD 
(DD  
!DD  !
stringDD! '
.DD' (
IsNullOrWhiteSpaceDD( :
(DD: ;

importNodeDD; E
.DDE F
PrefixDDF L
)DDL M
?DDN O

importNodeDDP Z
.DDZ [
PrefixDD[ a
+DDb c
$strDDd g
:DDh i

importNodeDDj t
.DDt u
PrefixDDu {
)DD{ |
+DD} ~
$str	DD á
)
DDá à
{EE 	
ifFF	 
(FF 

importNodeFF 
.FF 

AttributesFF "
[FF" #
$strFF# 3
]FF3 4
==FF5 7
nullFF8 <
)FF< =
{GG	 


importNodeHH
 
.HH 

AttributesHH 
.HH  
AppendHH  &
(HH& '
xmlDocHH' -
.HH- .
CreateAttributeHH. =
(HH= >
$strHH> N
)HHN O
)HHO P
;HHP Q
}II	 

stringKK	 
nameKK 
=KK 

importNodeKK !
.KK! "

AttributesKK" ,
[KK, -
$strKK- =
]KK= >
.KK> ?
	InnerTextKK? H
;KKH I

importNodeLL	 
.LL 

AttributesLL 
[LL 
$strLL /
]LL/ 0
.LL0 1
	InnerTextLL1 :
=LL; <
SchemaLocationLL= K
(LLK L
)LLL M
+LLN O
$strLLP X
+LLY Z
nameLL[ _
.LL_ `
ReplaceLL` g
(LLg h
$strLLh l
,LLl m
stringLLn t
.LLt u
EmptyLLu z
)LLz {
;LL{ |
}MM 	
}NN 
}OO 
}PP 
}QQ 
ifSS 
(SS 
nodeSS 
.SS 
NameSS 
==SS 
(SS 
!SS 
stringSS 
.SS 
IsNullOrWhiteSpaceSS 0
(SS0 1
xmlDocSS1 7
.SS7 8
DocumentElementSS8 G
.SSG H
PrefixSSH N
)SSN O
?SSP Q
xmlDocSSR X
.SSX Y
DocumentElementSSY h
.SSh i
PrefixSSi o
+SSp q
$strSSr u
:SSv w
xmlDocSSx ~
.SS~ 
DocumentElement	SS é
.
SSé è
Prefix
SSè ï
)
SSï ñ
+
SSó ò
$str
SSô ¢
)
SS¢ £
{TT 
foreachUU 
(UU 
XmlNodeUU 

schemaNodeUU  
inUU! #
nodeUU$ (
.UU( )

ChildNodesUU) 3
)UU3 4
{VV 
ifWW 
(WW	 


schemaNodeWW
 
.WW 
NameWW 
==WW 
(WW 
!WW 
stringWW %
.WW% &
IsNullOrWhiteSpaceWW& 8
(WW8 9

schemaNodeWW9 C
.WWC D
PrefixWWD J
)WWJ K
?WWL M

schemaNodeWWN X
.WWX Y
PrefixWWY _
+WW` a
$strWWb e
:WWf g

schemaNodeWWh r
.WWr s
PrefixWWs y
)WWy z
+WW{ |
$str	WW} É
)
WWÉ Ñ
{XX 
foreachYY 
(YY 
XmlNodeYY 
soapAdressNodeYY &
inYY' )

schemaNodeYY* 4
.YY4 5

ChildNodesYY5 ?
)YY? @
{ZZ 
soapAdressNode[[ 
.[[ 

Attributes[[ !
[[[! "
$str[[" ,
][[, -
.[[- .
	InnerText[[. 7
=[[8 9
WebServiceLocation[[: L
([[L M
)[[M N
;[[N O
break\\ 
;\\ 
}]] 
}^^ 
}__ 
}`` 
}aa 
returncc 	
xmlDoccc
 
.cc 
InnerXmlcc 
;cc 
}dd 
publicff 
stringff	 '
ModifyXSDAddRightSchemaPathff +
(ff+ ,
stringff, 2
	xmlStringff3 <
)ff< =
{gg 
XmlDocumenthh 
xmlDochh 
=hh 
newhh 
XmlDocumenthh '
(hh' (
)hh( )
;hh) *
xmlDocii 	
.ii	 

LoadXmlii
 
(ii 
	xmlStringii 
)ii 
;ii 
foreachkk 

(kk 
XmlNodekk 
nodekk 
inkk 
xmlDockk "
.kk" #
DocumentElementkk# 2
.kk2 3

ChildNodeskk3 =
)kk= >
{ll 
ifmm 
(mm 
nodemm 
.mm 
Namemm 
==mm 
(mm 
!mm 
stringmm 
.mm 
IsNullOrWhiteSpacemm 0
(mm0 1
nodemm1 5
.mm5 6
Prefixmm6 <
)mm< =
?mm> ?
nodemm@ D
.mmD E
PrefixmmE K
+mmL M
$strmmN Q
:mmR S
nodemmT X
.mmX Y
PrefixmmY _
)mm_ `
+mma b
$strmmc k
)mmk l
{nn 
stringoo 
nameoo 
=oo 
nodeoo 
.oo 

Attributesoo "
[oo" #
$stroo# 3
]oo3 4
.oo4 5
	InnerTextoo5 >
;oo> ?
nodepp 	
.pp	 


Attributespp
 
[pp 
$strpp %
]pp% &
.pp& '
	InnerTextpp' 0
=pp1 2
SchemaLocationpp3 A
(ppA B
)ppB C
+ppD E
$strppF N
+ppO P
nameppQ U
.ppU V
ReplaceppV ]
(pp] ^
$strpp^ b
,ppb c
stringppd j
.ppj k
Emptyppk p
)ppp q
;ppq r
}qq 
}rr 
returntt 	
xmlDoctt
 
.tt 
InnerXmltt 
;tt 
}uu 
privateww 	
stringww
 
SchemaLocationww 
(ww  
)ww  !
{xx 
varyy 
schemaLocationyy 
=yy 
	ServerUrlyy !
+yy" #
CurrentWebServeryy$ 4
+yy5 6
CurrentWebServiceyy7 H
+yyI J
$stryyK Q
;yyQ R
return{{ 	
schemaLocation{{
 
;{{ 
}|| 
private~~ 	
string~~
 
WebServiceLocation~~ #
(~~# $
)~~$ %
{ 
var
ÄÄ  
webServiceLocation
ÄÄ 
=
ÄÄ 
	ServerUrl
ÄÄ %
+
ÄÄ& '
CurrentWebServer
ÄÄ( 8
+
ÄÄ9 :
CurrentWebService
ÄÄ; L
;
ÄÄL M
return
ÇÇ 	 
webServiceLocation
ÇÇ
 
;
ÇÇ 
}
ÉÉ 
}
ÑÑ 
}ÖÖ ·K
VC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Meta\MetaMessage.cs
	namespace 	
SoapCore
 
. 
Meta 
{ 
public 
class 
MetaMessage 
: 
Message #
{		 
private

 	
readonly


 
Message

 
_message

 #
;

# $
private 	
readonly
 
ServiceDescription %
_service& .
;. /
private 	
readonly
 
Binding 
_binding #
;# $
private 	
readonly
 
XmlNamespaceManager & 
_xmlNamespaceManager' ;
;; <
public 
MetaMessage	 
( 
Message 
message $
,$ %
ServiceDescription& 8
service9 @
,@ A
BindingB I
bindingJ Q
,Q R
XmlNamespaceManagerS f
xmlNamespaceManagerg z
)z {
{  
_xmlNamespaceManager 
= 
xmlNamespaceManager -
;- .
_message 
= 
message 
; 
_service 
= 
service 
; 
_binding 
= 
binding 
; 
} 
public 
override	 
MessageHeaders  
Headers! (
{ 
get 
{ 
return	 
_message 
. 
Headers  
;  !
}" #
} 
public 
override	 
MessageProperties #

Properties$ .
{ 
get 
{ 
return	 
_message 
. 

Properties #
;# $
}% &
} 
public!! 
override!!	 
MessageVersion!!  
Version!!! (
{"" 
get## 
{## 
return##	 
_message## 
.## 
Version##  
;##  !
}##" #
}$$ 
	protected&& 
override&& 
void&&  
OnWriteStartEnvelope&& .
(&&. /
XmlDictionaryWriter&&/ B
writer&&C I
)&&I J
{'' 
writer(( 	
.((	 

WriteStartElement((
 
(((  
_xmlNamespaceManager(( 0
.((0 1
LookupPrefix((1 =
(((= >

Namespaces((> H
.((H I
WSDL_NS((I P
)((P Q
,((Q R
$str((S `
,((` a

Namespaces((b l
.((l m
WSDL_NS((m t
)((t u
;((u v
if++ 
(++ 
Version++ 
==++ 
MessageVersion++  
.++  !
Soap11++! '
||++( *
Version+++ 2
==++3 5
MessageVersion++6 D
.++D E(
Soap11WSAddressingAugust2004++E a
||++b d
Version++e l
==++m o
MessageVersion++p ~
.++~ )
Soap11WSAddressingAugust2004	++ õ
)
++õ ú
{,, 
WriteXmlnsAttribute-- 
(-- 
writer-- 
,-- 

Namespaces--  *
.--* +
	SOAP11_NS--+ 4
)--4 5
;--5 6
}.. 
else11 
if11 

(11 
Version11 
==11 
MessageVersion11 %
.11% & 
Soap12WSAddressing1011& :
||11; =
Version11> E
==11F H
MessageVersion11I W
.11W X(
Soap12WSAddressingAugust200411X t
)11t u
{22 
WriteXmlnsAttribute33 
(33 
writer33 
,33 

Namespaces33  *
.33* +
	SOAP12_NS33+ 4
)334 5
;335 6
}44 
else55 
{66 
throw77 	
new77
 '
ArgumentOutOfRangeException77 )
(77) *
nameof77* 0
(770 1
Version771 8
)778 9
,779 :
$str77; {
)77{ |
;77| }
}88  
_xmlNamespaceManager:: 
.:: 
AddNamespace:: $
(::$ %
$str::% *
,::* +
_service::, 4
.::4 5
GeneralContract::5 D
.::D E
	Namespace::E N
)::N O
;::O P
WriteXmlnsAttribute;; 
(;; 
writer;; 
,;; 
_service;; '
.;;' (
GeneralContract;;( 7
.;;7 8
	Namespace;;8 A
);;A B
;;;B C
WriteXmlnsAttribute<< 
(<< 
writer<< 
,<< 

Namespaces<< )
.<<) *
	XMLNS_XSD<<* 3
)<<3 4
;<<4 5
WriteXmlnsAttribute== 
(== 
writer== 
,== 

Namespaces== )
.==) *
HTTP_NS==* 1
)==1 2
;==2 3
WriteXmlnsAttribute>> 
(>> 
writer>> 
,>> 

Namespaces>> )
.>>) *
MSC_NS>>* 0
)>>0 1
;>>1 2
WriteXmlnsAttribute?? 
(?? 
writer?? 
,?? 

Namespaces?? )
.??) *
WSP_NS??* 0
)??0 1
;??1 2
WriteXmlnsAttribute@@ 
(@@ 
writer@@ 
,@@ 

Namespaces@@ )
.@@) *
WSU_NS@@* 0
)@@0 1
;@@1 2
WriteXmlnsAttributeAA 
(AA 
writerAA 
,AA 

NamespacesAA )
.AA) *
WSAM_NSAA* 1
)AA1 2
;AA2 3
writerBB 	
.BB	 
 
WriteAttributeStringBB
 
(BB 
$strBB 0
,BB0 1
_serviceBB2 :
.BB: ;
GeneralContractBB; J
.BBJ K
	NamespaceBBK T
)BBT U
;BBU V
writerCC 	
.CC	 
 
WriteAttributeStringCC
 
(CC 
$strCC %
,CC% &
_serviceCC' /
.CC/ 0
ServiceTypeCC0 ;
.CC; <
NameCC< @
)CC@ A
;CCA B
WriteXmlnsAttributeDD 
(DD 
writerDD 
,DD 

NamespacesDD )
.DD) *
WSDL_NSDD* 1
)DD1 2
;DD2 3
ifFF 
(FF 
_bindingFF 
!=FF 
nullFF 
&&FF 
_bindingFF #
.FF# $
HasBasicAuthFF$ 0
(FF0 1
)FF1 2
)FF2 3
{GG 
writerHH 

.HH
 
WriteStartElementHH 
(HH 
$strHH %
,HH% &

NamespacesHH' 1
.HH1 2
WSP_NSHH2 8
)HH8 9
;HH9 :
writerII 

.II
  
WriteAttributeStringII 
(II  
$strII  $
,II$ % 
_xmlNamespaceManagerII& :
.II: ;
LookupPrefixII; G
(IIG H

NamespacesIIH R
.IIR S
WSU_NSIIS Y
)IIY Z
,IIZ [
$"II\ ^
{II^ _
_bindingII_ g
.IIg h
NameIIh l
}IIl m
_IIm n
{IIn o
_serviceIIo w
.IIw x
GeneralContract	IIx á
.
IIá à
Name
IIà å
}
IIå ç
_policy
IIç î
"
IIî ï
)
IIï ñ
;
IIñ ó
writerJJ 

.JJ
 
WriteStartElementJJ 
(JJ 
$strJJ )
,JJ) *

NamespacesJJ+ 5
.JJ5 6
WSP_NSJJ6 <
)JJ< =
;JJ= >
writerKK 

.KK
 
WriteStartElementKK 
(KK 
$strKK "
,KK" #

NamespacesKK$ .
.KK. /
WSP_NSKK/ 5
)KK5 6
;KK6 7
writerLL 

.LL
 
WriteStartElementLL 
(LL 
$strLL 2
,LL2 3

NamespacesLL4 >
.LL> ?
HTTP_NSLL? F
)LLF G
;LLG H
writerMM 

.MM
 
WriteEndElementMM 
(MM 
)MM 
;MM 
writerNN 

.NN
 
WriteEndElementNN 
(NN 
)NN 
;NN 
writerOO 

.OO
 
WriteEndElementOO 
(OO 
)OO 
;OO 
writerPP 

.PP
 
WriteEndElementPP 
(PP 
)PP 
;PP 
}QQ 
}RR 
	protectedTT 
overrideTT 
voidTT 
OnWriteStartBodyTT *
(TT* +
XmlDictionaryWriterTT+ >
writerTT? E
)TTE F
{UU 
}VV 
	protectedXX 
overrideXX 
voidXX 
OnWriteBodyContentsXX -
(XX- .
XmlDictionaryWriterXX. A
writerXXB H
)XXH I
{YY 
_messageZZ 
.ZZ 
WriteBodyContentsZZ 
(ZZ 
writerZZ $
)ZZ$ %
;ZZ% &
}[[ 
private]] 	
void]]
 
WriteXmlnsAttribute]] "
(]]" #
XmlDictionaryWriter]]# 6
writer]]7 =
,]]= >
string]]? E
namespaceUri]]F R
)]]R S
{^^ 
string__ 	
prefix__
 
=__  
_xmlNamespaceManager__ '
.__' (
LookupPrefix__( 4
(__4 5
namespaceUri__5 A
)__A B
;__B C
writer`` 	
.``	 

WriteXmlnsAttribute``
 
(`` 
prefix`` $
,``$ %
namespaceUri``& 2
)``2 3
;``3 4
}aa 
}bb 
}cc ¶Ñ
\C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Meta\MetaWCFBodyWriter.cs
	namespace 	
SoapCore
 
. 
Meta 
{ 
internal 	
class
 
MetaWCFBodyWriter !
:" #

BodyWriter$ .
{ 
private 	
static
 
readonly 

Dictionary $
<$ %
string% +
,+ ,
(- .
string. 4
,4 5
string6 <
)< =
>= >

SysTypeDic? I
=J K
newL O

DictionaryP Z
<Z [
string[ a
,a b
(c d
stringd j
,j k
stringl r
)r s
>s t
(t u
)u v
{ 
[ 
$str 
] 
= 
( 
$str  
,  !

Namespaces" ,
., -
	SYSTEM_NS- 6
)6 7
,7 8
[ 
$str 
] 
= 
( 
$str "
," #

Namespaces$ .
.. /
	SYSTEM_NS/ 8
)8 9
,9 :
[ 
$str 
] 
= 
( 
$str 
, 

Namespaces  *
.* +
	SYSTEM_NS+ 4
)4 5
,5 6
[ 
$str 
] 
= 
( 
$str 
, 

Namespaces (
.( )
	SYSTEM_NS) 2
)2 3
,3 4
[ 
$str 
] 
= 
( 
$str 
, 

Namespaces )
.) *
	SYSTEM_NS* 3
)3 4
,4 5
[ 
$str 
] 
= 
( 
$str 
, 

Namespaces (
.( )
	SYSTEM_NS) 2
)2 3
,3 4
[ 
$str 
] 
= 
( 
$str 
, 

Namespaces )
.) *
	SYSTEM_NS* 3
)3 4
,4 5
[ 
$str 
] 
= 
( 
$str '
,' (

Namespaces) 3
.3 4
	SYSTEM_NS4 =
)= >
,> ?
[   
$str   
]   
=   
(   
$str   %
,  % &

Namespaces  ' 1
.  1 2
	SYSTEM_NS  2 ;
)  ; <
,  < =
[!! 
$str!! 
]!! 
=!! 
(!! 
$str!! &
,!!& '

Namespaces!!( 2
.!!2 3
	SYSTEM_NS!!3 <
)!!< =
,!!= >
["" 
$str"" 
]"" 
="" 
("" 
$str"" "
,""" #

Namespaces""$ .
."". /
	SYSTEM_NS""/ 8
)""8 9
,""9 :
[## 
$str## 
]## 
=## 
(## 
$str##  
,##  !

Namespaces##" ,
.##, -
	SYSTEM_NS##- 6
)##6 7
,##7 8
[$$ 
$str$$ 
]$$ 
=$$ 
($$ 
$str$$ 
,$$  

Namespaces$$! +
.$$+ ,
	SYSTEM_NS$$, 5
)$$5 6
,$$6 7
[%% 
$str%% 
]%% 
=%% 
(%% 
$str%% $
,%%$ %

Namespaces%%& 0
.%%0 1
	SYSTEM_NS%%1 :
)%%: ;
,%%; <
[&& 
$str&& 
]&& 
=&& 
(&& 
$str&& 
,&& 

Namespaces&& (
.&&( )
SERIALIZATION_NS&&) 9
)&&9 :
,&&: ;
['' 
$str'' 
]'' 
='' 
('' 
$str'' 
,'' 

Namespaces'' (
.''( )
SERIALIZATION_NS'') 9
)''9 :
,'': ;
[(( 
$str(( 
](( 
=(( 
((( 
$str(( $
,(($ %

Namespaces((& 0
.((0 1
SERIALIZATION_NS((1 A
)((A B
,((B C
[)) 
$str)) 
])) 
=)) 
()) 
$str)) !
,))! "

Namespaces))# -
.))- .
SERIALIZATION_NS)). >
)))> ?
,))? @
[** 
$str** 
]** 
=** 
(** 
$str** 
,** 

Namespaces** )
.**) *
SERIALIZATION_NS*** :
)**: ;
,**; <
}++ 
;++ 
private// 	
static//
 
int// 
_namespaceCounter// &
=//' (
$num//) *
;//* +
private11 	
readonly11
 
ServiceDescription11 %
_service11& .
;11. /
private22 	
readonly22
 
string22 
_baseUrl22 "
;22" #
private33 	
readonly33
 
Binding33 
_binding33 #
;33# $
private55 	
readonly55
 
string55 
[55 
]55 
_numbers55 $
=55% &
new55' *
string55+ 1
[551 2
]552 3
{554 5
$str556 9
,559 :
$str55; >
,55> ?
$str55@ C
,55C D
$str55E H
,55H I
$str55J M
,55M N
$str55O R
,55R S
$str55T W
,55W X
$str55Y \
,55\ ]
$str55^ a
,55a b
$str55c f
}55g h
;55h i
private77 	
readonly77
 

Dictionary77 
<77 
Type77 "
,77" #
string77$ *
>77* +
_complexTypeToBuild77, ?
=77@ A
new77B E

Dictionary77F P
<77P Q
Type77Q U
,77U V
string77W ]
>77] ^
(77^ _
)77_ `
;77` a
private88 	
readonly88
 
HashSet88 
<88 
Type88 
>88  !
_complexTypeProcessed88! 6
=887 8
new889 <
HashSet88= D
<88D E
Type88E I
>88I J
(88J K
)88K L
;88L M
private99 	
readonly99
 
Queue99 
<99 
Type99 
>99 
_arrayToBuild99 ,
;99, -
private;; 	
readonly;;
 
HashSet;; 
<;; 
string;; !
>;;! "
_builtEnumTypes;;# 2
;;;2 3
private<< 	
readonly<<
 
HashSet<< 
<<< 
string<< !
><<! "
_builtComplexTypes<<# 5
;<<5 6
private== 	
readonly==
 
HashSet== 
<== 
string== !
>==! "
_buildArrayTypes==# 3
;==3 4
private>> 	
readonly>>
 
HashSet>> 
<>> 
string>> !
>>>! "'
_builtSerializationElements>># >
;>>> ?
private@@ 	
bool@@
  
_buildDateTimeOffset@@ #
;@@# $
privateAA 	
boolAA
 
_buildDataTableAA 
;AA 
privateBB 	
stringBB
 
_schemaNamespaceBB !
;BB! "
publicDD 
MetaWCFBodyWriterDD	 
(DD 
ServiceDescriptionDD -
serviceDD. 5
,DD5 6
stringDD7 =
baseUrlDD> E
,DDE F
BindingDDG N
bindingDDO V
)DDV W
:DDX Y
baseDDZ ^
(DD^ _

isBufferedDD_ i
:DDi j
trueDDk o
)DDo p
{EE 
_serviceFF 
=FF 
serviceFF 
;FF 
_baseUrlGG 
=GG 
baseUrlGG 
;GG 
_bindingHH 
=HH 
bindingHH 
;HH 
_arrayToBuildJJ 
=JJ 
newJJ 
QueueJJ 
<JJ 
TypeJJ !
>JJ! "
(JJ" #
)JJ# $
;JJ$ %
_builtEnumTypesKK 
=KK 
newKK 
HashSetKK  
<KK  !
stringKK! '
>KK' (
(KK( )
)KK) *
;KK* +
_builtComplexTypesLL 
=LL 
newLL 
HashSetLL #
<LL# $
stringLL$ *
>LL* +
(LL+ ,
)LL, -
;LL- .
_buildArrayTypesMM 
=MM 
newMM 
HashSetMM !
<MM! "
stringMM" (
>MM( )
(MM) *
)MM* +
;MM+ ,'
_builtSerializationElementsNN 
=NN  
newNN! $
HashSetNN% ,
<NN, -
stringNN- 3
>NN3 4
(NN4 5
)NN5 6
;NN6 7
BindingTypePP 
=PP 
servicePP 
.PP 
GeneralContractPP (
.PP( )
NamePP) -
;PP- .
TargetNameSpaceQQ 
=QQ 
serviceQQ 
.QQ 
GeneralContractQQ ,
.QQ, -
	NamespaceQQ- 6
;QQ6 7
ifSS 
(SS 
bindingSS 
!=SS 
nullSS 
)SS 
{TT 
BindingNameUU 
=UU 
bindingUU 
.UU 
NameUU 
;UU 
PortNameVV 
=VV 
bindingVV 
.VV 
NameVV 
;VV 
}WW 
elseXX 
{YY 
BindingNameZZ 
=ZZ 
$strZZ %
+ZZ& '
BindingTypeZZ( 3
;ZZ3 4
PortName[[ 
=[[ 
$str[[ "
+[[# $
BindingType[[% 0
;[[0 1
}\\ 
}]] 
private__ 	
string__
 
BindingName__ 
{__ 
get__ "
;__" #
}__$ %
private`` 	
string``
 
BindingType`` 
{`` 
get`` "
;``" #
}``$ %
privateaa 	
stringaa
 
PortNameaa 
{aa 
getaa 
;aa  
}aa! "
privatebb 	
stringbb
 
TargetNameSpacebb  
{bb! "
getbb# &
;bb& '
}bb( )
	protecteddd 
overridedd 
voiddd 
OnWriteBodyContentsdd -
(dd- .
XmlDictionaryWriterdd. A
writerddB H
)ddH I
{ee 
AddTypesff 
(ff 
writerff 
)ff 
;ff 
AddMessageshh 
(hh 
writerhh 
)hh 
;hh 
AddPortTypejj 
(jj 
writerjj 
)jj 
;jj 

AddBindingll 
(ll 
writerll 
)ll 
;ll 

AddServicenn 
(nn 
writernn 
)nn 
;nn 
}oo 
privateqq 	
staticqq
 
stringqq 
GetModelNamespaceqq )
(qq) *
stringqq* 0

@namespaceqq1 ;
)qq; <
{rr 
ifss 
(ss 

@namespacess 
.ss 

StartsWithss 
(ss 
$strss #
)ss# $
)ss$ %
{tt 
returnuu 


@namespaceuu 
;uu 
}vv 
returnxx 	
$"xx
 
{xx 

Namespacesxx 
.xx !
DataContractNamespacexx -
}xx- .
{xx. /

@namespacexx/ 9
}xx9 :
"xx: ;
;xx; <
}yy 
private{{ 	
static{{
 
string{{ $
GetDataContractNamespace{{ 0
({{0 1
Type{{1 5
type{{6 :
){{: ;
{|| 
if}} 
(}} 
type}} 
.}} 
IsArray}} 
||}} 
typeof}} 
(}} 
IEnumerable}} )
)}}) *
.}}* +
IsAssignableFrom}}+ ;
(}}; <
type}}< @
)}}@ A
)}}A B
{~~ 
var +
collectionDataContractAttribute '
=( )
type* .
.. /
GetCustomAttribute/ A
<A B+
CollectionDataContractAttributeB a
>a b
(b c
)c d
;d e
if
ÄÄ 
(
ÄÄ -
collectionDataContractAttribute
ÄÄ '
!=
ÄÄ( *
null
ÄÄ+ /
&&
ÄÄ0 2-
collectionDataContractAttribute
ÄÄ3 R
.
ÄÄR S&
IsNamespaceSetExplicitly
ÄÄS k
)
ÄÄk l
{
ÅÅ 
return
ÇÇ -
collectionDataContractAttribute
ÇÇ +
.
ÇÇ+ ,
	Namespace
ÇÇ, 5
;
ÇÇ5 6
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
type
ÜÜ 	
=
ÜÜ
 
type
ÜÜ 
.
ÜÜ 
IsArray
ÜÜ 
?
ÜÜ 
type
ÜÜ 
.
ÜÜ  
GetElementType
ÜÜ  .
(
ÜÜ. /
)
ÜÜ/ 0
:
ÜÜ1 2
GetGenericType
ÜÜ3 A
(
ÜÜA B
type
ÜÜB F
)
ÜÜF G
;
ÜÜG H
}
áá 
}
àà 
var
ää #
dataContractAttribute
ää 
=
ää 
type
ää #
.
ää# $ 
GetCustomAttribute
ää$ 6
<
ää6 7#
DataContractAttribute
ää7 L
>
ääL M
(
ääM N
)
ääN O
;
ääO P
if
ãã 
(
ãã #
dataContractAttribute
ãã 
!=
ãã 
null
ãã  $
&&
ãã% '#
dataContractAttribute
ãã( =
.
ãã= >&
IsNamespaceSetExplicitly
ãã> V
)
ããV W
{
åå 
return
çç 
#
dataContractAttribute
çç  
.
çç  !
	Namespace
çç! *
;
çç* +
}
éé 
return
êê 	
GetModelNamespace
êê
 
(
êê 
type
êê  
.
êê  !
	Namespace
êê! *
)
êê* +
;
êê+ ,
}
ëë 
private
ìì 	
static
ìì
 
Type
ìì 
GetGenericType
ìì $
(
ìì$ %
Type
ìì% )
collectionType
ìì* 8
)
ìì8 9
{
îî 
return
ïï 	
GetGenericTypes
ïï
 
(
ïï 
collectionType
ïï (
)
ïï( )
.
ïï) *
DefaultIfEmpty
ïï* 8
(
ïï8 9
typeof
ïï9 ?
(
ïï? @
object
ïï@ F
)
ïïF G
)
ïïG H
.
ïïH I
FirstOrDefault
ïïI W
(
ïïW X
)
ïïX Y
;
ïïY Z
}
ññ 
private
òò 	
static
òò
 
Type
òò 
[
òò 
]
òò 
GetGenericTypes
òò '
(
òò' (
Type
òò( ,
collectionType
òò- ;
)
òò; <
{
ôô 
var
õõ 
baseType
õõ 
=
õõ 
collectionType
õõ  
;
õõ  !
var
ùù )
collectionInterfaceTypeInfo
ùù "
=
ùù# $
baseType
ùù% -
.
ùù- .
GetInterfaces
ùù. ;
(
ùù; <
)
ùù< =
.
ùù= >
Where
ùù> C
(
ùùC D
a
ùùD E
=>
ùùF H
a
ùùI J
.
ùùJ K
Name
ùùK O
==
ùùP R
$str
ùùS b
)
ùùb c
.
ùùc d
FirstOrDefault
ùùd r
(
ùùr s
)
ùùs t
;
ùùt u
if
ûû 
(
ûû )
collectionInterfaceTypeInfo
ûû "
!=
ûû# %
null
ûû& *
)
ûû* +
{
üü 
return
°° 
)
collectionInterfaceTypeInfo
°° &
.
°°& '!
GetGenericArguments
°°' :
(
°°: ;
)
°°; <
;
°°< =
}
¢¢ 
var
§§ 
baseTypeInfo
§§ 
=
§§ 
collectionType
§§ $
.
§§$ %
GetTypeInfo
§§% 0
(
§§0 1
)
§§1 2
;
§§2 3
while
•• 
(
••	 

!
••
 
baseTypeInfo
•• 
.
•• 
IsGenericType
•• %
&&
••& (
baseTypeInfo
••) 5
.
••5 6
BaseType
••6 >
!=
••? A
null
••B F
)
••F G
{
¶¶ 
baseType
ßß 
=
ßß 
baseTypeInfo
ßß 
.
ßß 
BaseType
ßß $
;
ßß$ %
baseTypeInfo
®® 
=
®® 
baseType
®® 
.
®® 
GetTypeInfo
®® '
(
®®' (
)
®®( )
;
®®) *
}
©© 
return
´´ 	
baseType
´´
 
.
´´ 
GetTypeInfo
´´ 
(
´´ 
)
´´  
.
´´  !!
GetGenericArguments
´´! 4
(
´´4 5
)
´´5 6
;
´´6 7
}
¨¨ 
private
ÆÆ 	
string
ÆÆ
 
GetModelNamespace
ÆÆ "
(
ÆÆ" #
Type
ÆÆ# '
type
ÆÆ( ,
)
ÆÆ, -
{
ØØ 
if
∞∞ 
(
∞∞ 
type
∞∞ 
!=
∞∞ 
null
∞∞ 
&&
∞∞ 
type
∞∞ 
.
∞∞ 
	Namespace
∞∞ %
!=
∞∞& (
_service
∞∞) 1
.
∞∞1 2
ServiceType
∞∞2 =
.
∞∞= >
	Namespace
∞∞> G
)
∞∞G H
{
±± 
return
≤≤ 

$"
≤≤ 
{
≤≤ 

Namespaces
≤≤ 
.
≤≤ #
DataContractNamespace
≤≤ .
}
≤≤. /
{
≤≤/ 0
type
≤≤0 4
.
≤≤4 5
	Namespace
≤≤5 >
}
≤≤> ?
"
≤≤? @
;
≤≤@ A
}
≥≥ 
return
µµ 	
$"
µµ
 
{
µµ 

Namespaces
µµ 
.
µµ #
DataContractNamespace
µµ -
}
µµ- .
{
µµ. /
_service
µµ/ 7
.
µµ7 8
ServiceType
µµ8 C
.
µµC D
	Namespace
µµD M
}
µµM N
"
µµN O
;
µµO P
}
∂∂ 
private
∏∏ 	
void
∏∏
 
WriteParameters
∏∏ 
(
∏∏ !
XmlDictionaryWriter
∏∏ 2
writer
∏∏3 9
,
∏∏9 :%
SoapMethodParameterInfo
∏∏; R
[
∏∏R S
]
∏∏S T
parameterInfos
∏∏U c
)
∏∏c d
{
ππ 
foreach
∫∫ 

(
∫∫ 
var
∫∫ 
parameterInfo
∫∫ 
in
∫∫  
parameterInfos
∫∫! /
)
∫∫/ 0
{
ªª 
var
ºº 
elementAttribute
ºº 
=
ºº 
parameterInfo
ºº (
.
ºº( )
	Parameter
ºº) 2
.
ºº2 3 
GetCustomAttribute
ºº3 E
<
ººE F!
XmlElementAttribute
ººF Y
>
ººY Z
(
ººZ [
)
ºº[ \
;
ºº\ ]
var
ΩΩ 
parameterName
ΩΩ 
=
ΩΩ 
!
ΩΩ 
string
ΩΩ 
.
ΩΩ  
IsNullOrEmpty
ΩΩ  -
(
ΩΩ- .
elementAttribute
ΩΩ. >
?
ΩΩ> ?
.
ΩΩ? @
ElementName
ΩΩ@ K
)
ΩΩK L
?
ææ
 
elementAttribute
ææ 
.
ææ 
ElementName
ææ (
:
øø
 
parameterInfo
øø 
.
øø 
	Parameter
øø #
.
øø# $ 
GetCustomAttribute
øø$ 6
<
øø6 7'
MessageParameterAttribute
øø7 P
>
øøP Q
(
øøQ R
)
øøR S
?
øøS T
.
øøT U
Name
øøU Y
??
øøZ \
parameterInfo
øø] j
.
øøj k
	Parameter
øøk t
.
øøt u
Name
øøu y
;
øøy z
var
¿¿ 

isRequired
¿¿ 
=
¿¿ 
!
¿¿ 
parameterInfo
¿¿ #
.
¿¿# $
	Parameter
¿¿$ -
.
¿¿- .

IsOptional
¿¿. 8
;
¿¿8 9
AddSchemaType
¡¡ 
(
¡¡ 
writer
¡¡ 
,
¡¡ 
parameterInfo
¡¡ '
.
¡¡' (
	Parameter
¡¡( 1
.
¡¡1 2
ParameterType
¡¡2 ?
,
¡¡? @
parameterName
¡¡A N
,
¡¡N O
objectNamespace
¡¡P _
:
¡¡_ `
elementAttribute
¡¡a q
?
¡¡q r
.
¡¡r s
	Namespace
¡¡s |
??
¡¡} 
(¡¡Ä Å
parameterInfo¡¡Å é
.¡¡é è
	Namespace¡¡è ò
!=¡¡ô õ
$str¡¡ú ±
?¡¡≤ ≥
parameterInfo¡¡¥ ¡
.¡¡¡ ¬
	Namespace¡¡¬ À
:¡¡Ã Õ
null¡¡Œ “
)¡¡“ ”
,¡¡” ‘

isRequired¡¡’ ﬂ
:¡¡ﬂ ‡

isRequired¡¡· Î
)¡¡Î Ï
;¡¡Ï Ì
}
¬¬ 
}
√√ 
private
≈≈ 	
void
≈≈
 %
EnsureServiceKnownTypes
≈≈ &
(
≈≈& '
IEnumerable
≈≈' 2
<
≈≈2 3'
ServiceKnownTypeAttribute
≈≈3 L
>
≈≈L M
serviceKnownTypes
≈≈N _
)
≈≈_ `
{
∆∆ 
foreach
«« 

(
«« '
ServiceKnownTypeAttribute
«« %
	knownType
««& /
in
««0 2
serviceKnownTypes
««3 D
)
««D E
{
»» 
if
…… 
(
…… 
	knownType
…… 
.
…… 
Type
…… 
is
…… 
null
…… 
)
…… 
{
   
throw
ÀÀ 

new
ÀÀ #
NotSupportedException
ÀÀ $
(
ÀÀ$ %
$"
ÀÀ% '%
Only type property of `
ÀÀ' >
{
ÀÀ> ?
nameof
ÀÀ? E
(
ÀÀE F'
ServiceKnownTypeAttribute
ÀÀF _
)
ÀÀ_ `
}
ÀÀ` a
` is supported.
ÀÀa p
"
ÀÀp q
)
ÀÀq r
;
ÀÀr s
}
ÃÃ !
_complexTypeToBuild
œœ 
[
œœ 
	knownType
œœ !
.
œœ! "
Type
œœ" &
]
œœ& '
=
œœ( )&
GetDataContractNamespace
œœ* B
(
œœB C
	knownType
œœC L
.
œœL M
Type
œœM Q
)
œœQ R
;
œœR S
DiscoverTypes
““ 
(
““ 
	knownType
““ 
.
““ 
Type
““  
,
““  !
false
““" '
)
““' (
;
““( )
}
”” 
}
‘‘ 
private
÷÷ 	
void
÷÷
 #
AddContractOperations
÷÷ $
(
÷÷$ %!
XmlDictionaryWriter
÷÷% 8
writer
÷÷9 ?
,
÷÷? @!
ContractDescription
÷÷A T
contract
÷÷U ]
)
÷÷] ^
{
◊◊ 
IEnumerable
ÿÿ 
<
ÿÿ "
OperationDescription
ÿÿ #
>
ÿÿ# $

operations
ÿÿ% /
=
ÿÿ0 1
contract
ÿÿ2 :
.
ÿÿ: ;

Operations
ÿÿ; E
;
ÿÿE F
writer
⁄⁄ 	
.
⁄⁄	 

WriteStartElement
⁄⁄
 
(
⁄⁄ 
$str
⁄⁄  
,
⁄⁄  !
$str
⁄⁄" *
,
⁄⁄* +

Namespaces
⁄⁄, 6
.
⁄⁄6 7
	XMLNS_XSD
⁄⁄7 @
)
⁄⁄@ A
;
⁄⁄A B
writer
€€ 	
.
€€	 
"
WriteAttributeString
€€
 
(
€€ 
$str
€€ 3
,
€€3 4
$str
€€5 @
)
€€@ A
;
€€A B
writer
‹‹ 	
.
‹‹	 
"
WriteAttributeString
‹‹
 
(
‹‹ 
$str
‹‹ 0
,
‹‹0 1
contract
‹‹2 :
.
‹‹: ;
	Namespace
‹‹; D
)
‹‹D E
;
‹‹E F
writer
›› 	
.
››	 
!
WriteXmlnsAttribute
››
 
(
›› 
$str
›› "
,
››" #

Namespaces
››$ .
.
››. /
	XMLNS_XSD
››/ 8
)
››8 9
;
››9 :
writer
ﬁﬁ 	
.
ﬁﬁ	 
!
WriteXmlnsAttribute
ﬁﬁ
 
(
ﬁﬁ 
$str
ﬁﬁ #
,
ﬁﬁ# $

Namespaces
ﬁﬁ% /
.
ﬁﬁ/ 0
SERIALIZATION_NS
ﬁﬁ0 @
)
ﬁﬁ@ A
;
ﬁﬁA B
_schemaNamespace
‡‡ 
=
‡‡ 
TargetNameSpace
‡‡ %
;
‡‡% &
_namespaceCounter
·· 
=
·· 
$num
·· 
;
·· 
foreach
‰‰ 

(
‰‰ "
OperationDescription
‰‰  
	operation
‰‰! *
in
‰‰+ -

operations
‰‰. 8
)
‰‰8 9
{
ÂÂ %
EnsureServiceKnownTypes
ÁÁ 
(
ÁÁ 
	operation
ÁÁ %
.
ÁÁ% &
ServiceKnownTypes
ÁÁ& 7
)
ÁÁ7 8
;
ÁÁ8 9
foreach
ÈÈ 
(
ÈÈ 
var
ÈÈ 
	parameter
ÈÈ 
in
ÈÈ 
	operation
ÈÈ '
.
ÈÈ' (
AllParameters
ÈÈ( 5
)
ÈÈ5 6
{
ÍÍ 
var
ÎÎ 
type
ÎÎ	 
=
ÎÎ 
	parameter
ÎÎ 
.
ÎÎ 
	Parameter
ÎÎ #
.
ÎÎ# $
ParameterType
ÎÎ$ 1
;
ÎÎ1 2
var
ÏÏ 
typeInfo
ÏÏ	 
=
ÏÏ 
type
ÏÏ 
.
ÏÏ 
GetTypeInfo
ÏÏ $
(
ÏÏ$ %
)
ÏÏ% &
;
ÏÏ& '
if
ÌÌ 
(
ÌÌ 	
typeInfo
ÌÌ	 
.
ÌÌ 
IsByRef
ÌÌ 
)
ÌÌ 
{
ÓÓ 
type
ÔÔ 

=
ÔÔ 
typeInfo
ÔÔ 
.
ÔÔ 
GetElementType
ÔÔ $
(
ÔÔ$ %
)
ÔÔ% &
;
ÔÔ& '
}
 
if
ÚÚ 
(
ÚÚ 	"
TypeIsComplexForWsdl
ÚÚ	 
(
ÚÚ 
type
ÚÚ "
,
ÚÚ" #
out
ÚÚ$ '
type
ÚÚ( ,
)
ÚÚ, -
)
ÚÚ- .
{
ÛÛ !
_complexTypeToBuild
ÙÙ 
[
ÙÙ 
type
ÙÙ 
]
ÙÙ 
=
ÙÙ  !&
GetDataContractNamespace
ÙÙ" :
(
ÙÙ: ;
type
ÙÙ; ?
)
ÙÙ? @
;
ÙÙ@ A
DiscoverTypes
ıı 
(
ıı 
type
ıı 
,
ıı 
true
ıı 
)
ıı 
;
ıı  
}
ˆˆ 
else
˜˜ 	
if
˜˜
 
(
˜˜ 
type
˜˜ 
.
˜˜ 
IsEnum
˜˜ 
||
˜˜ 
Nullable
˜˜ %
.
˜˜% &
GetUnderlyingType
˜˜& 7
(
˜˜7 8
type
˜˜8 <
)
˜˜< =
?
˜˜= >
.
˜˜> ?
IsEnum
˜˜? E
==
˜˜F H
true
˜˜I M
)
˜˜M N
{
¯¯ !
_complexTypeToBuild
˘˘ 
[
˘˘ 
type
˘˘ 
]
˘˘ 
=
˘˘  !&
GetDataContractNamespace
˘˘" :
(
˘˘: ;
type
˘˘; ?
)
˘˘? @
;
˘˘@ A
DiscoverTypes
˙˙ 
(
˙˙ 
type
˙˙ 
,
˙˙ 
true
˙˙ 
)
˙˙ 
;
˙˙  
}
˚˚ 
}
¸¸ 
if
˛˛ 
(
˛˛ 
	operation
˛˛ 
.
˛˛ 
DispatchMethod
˛˛  
.
˛˛  !

ReturnType
˛˛! +
!=
˛˛, .
typeof
˛˛/ 5
(
˛˛5 6
void
˛˛6 :
)
˛˛: ;
&&
˛˛< >
	operation
˛˛? H
.
˛˛H I
DispatchMethod
˛˛I W
.
˛˛W X

ReturnType
˛˛X b
!=
˛˛c e
typeof
˛˛f l
(
˛˛l m
Task
˛˛m q
)
˛˛q r
)
˛˛r s
{
ˇˇ 
var
ÄÄ 

returnType
ÄÄ	 
=
ÄÄ 
	operation
ÄÄ 
.
ÄÄ  
DispatchMethod
ÄÄ  .
.
ÄÄ. /

ReturnType
ÄÄ/ 9
;
ÄÄ9 :
if
ÅÅ 
(
ÅÅ 	

returnType
ÅÅ	 
.
ÅÅ &
IsConstructedGenericType
ÅÅ ,
&&
ÅÅ- /

returnType
ÅÅ0 :
.
ÅÅ: ;&
GetGenericTypeDefinition
ÅÅ; S
(
ÅÅS T
)
ÅÅT U
==
ÅÅV X
typeof
ÅÅY _
(
ÅÅ_ `
Task
ÅÅ` d
<
ÅÅd e
>
ÅÅe f
)
ÅÅf g
)
ÅÅg h
{
ÇÇ 

returnType
ÉÉ 
=
ÉÉ 

returnType
ÉÉ 
.
ÉÉ !
GetGenericArguments
ÉÉ 1
(
ÉÉ1 2
)
ÉÉ2 3
.
ÉÉ3 4
First
ÉÉ4 9
(
ÉÉ9 :
)
ÉÉ: ;
;
ÉÉ; <
}
ÑÑ 
if
ÜÜ 
(
ÜÜ 	"
TypeIsComplexForWsdl
ÜÜ	 
(
ÜÜ 

returnType
ÜÜ (
,
ÜÜ( )
out
ÜÜ* -

returnType
ÜÜ. 8
)
ÜÜ8 9
)
ÜÜ9 :
{
áá !
_complexTypeToBuild
àà 
[
àà 

returnType
àà $
]
àà$ %
=
àà& '&
GetDataContractNamespace
àà( @
(
àà@ A

returnType
ààA K
)
ààK L
;
ààL M
DiscoverTypes
ââ 
(
ââ 

returnType
ââ 
,
ââ 
true
ââ  $
)
ââ$ %
;
ââ% &
}
ää 
else
ãã 	
if
ãã
 
(
ãã 

returnType
ãã 
.
ãã 
IsEnum
ãã 
||
ãã  "
Nullable
ãã# +
.
ãã+ ,
GetUnderlyingType
ãã, =
(
ãã= >

returnType
ãã> H
)
ããH I
?
ããI J
.
ããJ K
IsEnum
ããK Q
==
ããR T
true
ããU Y
)
ããY Z
{
åå !
_complexTypeToBuild
çç 
[
çç 

returnType
çç $
]
çç$ %
=
çç& '&
GetDataContractNamespace
çç( @
(
çç@ A

returnType
ççA K
)
ççK L
;
ççL M
DiscoverTypes
éé 
(
éé 

returnType
éé 
,
éé 
true
éé  $
)
éé$ %
;
éé% &
}
èè 
}
êê 
}
ëë 
var
ìì  
groupedByNamespace
ìì 
=
ìì !
_complexTypeToBuild
ìì /
.
ìì/ 0
GroupBy
ìì0 7
(
ìì7 8
x
ìì8 9
=>
ìì: <
x
ìì= >
.
ìì> ?
Value
ìì? D
)
ììD E
.
ììE F
ToDictionary
ììF R
(
ììR S
x
ììS T
=>
ììU W
x
ììX Y
.
ììY Z
Key
ììZ ]
,
ìì] ^
x
ìì_ `
=>
ììa c
x
ììd e
.
ììe f
Select
ììf l
(
ììl m
k
ììm n
=>
ììo q
k
ììr s
.
ììs t
Key
ììt w
)
ììw x
)
ììx y
;
ììy z
foreach
ïï 

(
ïï 
var
ïï 

@namespace
ïï 
in
ïï  
groupedByNamespace
ïï 0
.
ïï0 1
Keys
ïï1 5
.
ïï5 6
Where
ïï6 ;
(
ïï; <
x
ïï< =
=>
ïï> @
x
ïïA B
!=
ïïC E
null
ïïF J
&&
ïïK M
x
ïïN O
!=
ïïP R
_service
ïïS [
.
ïï[ \
ServiceType
ïï\ g
.
ïïg h
	Namespace
ïïh q
)
ïïq r
.
ïïr s
Distinct
ïïs {
(
ïï{ |
)
ïï| }
)
ïï} ~
{
ññ 
writer
óó 

.
óó
 
WriteStartElement
óó 
(
óó 
$str
óó !
,
óó! "
$str
óó# +
,
óó+ ,

Namespaces
óó- 7
.
óó7 8
	XMLNS_XSD
óó8 A
)
óóA B
;
óóB C
writer
òò 

.
òò
 "
WriteAttributeString
òò 
(
òò  
$str
òò  +
,
òò+ ,

@namespace
òò- 7
)
òò7 8
;
òò8 9
writer
ôô 

.
ôô
 
WriteEndElement
ôô 
(
ôô 
)
ôô 
;
ôô 
}
öö 
foreach
úú 

(
úú "
OperationDescription
úú  
	operation
úú! *
in
úú+ -

operations
úú. 8
)
úú8 9
{
ùù 
writer
üü 

.
üü
 
WriteStartElement
üü 
(
üü 
$str
üü !
,
üü! "
$str
üü# ,
,
üü, -

Namespaces
üü. 8
.
üü8 9
	XMLNS_XSD
üü9 B
)
üüB C
;
üüC D
writer
†† 

.
††
 "
WriteAttributeString
†† 
(
††  
$str
††  &
,
††& '
	operation
††( 1
.
††1 2
Name
††2 6
)
††6 7
;
††7 8
writer
°° 

.
°°
 
WriteStartElement
°° 
(
°° 
$str
°° !
,
°°! "
$str
°°# 0
,
°°0 1

Namespaces
°°2 <
.
°°< =
	XMLNS_XSD
°°= F
)
°°F G
;
°°G H
writer
¢¢ 

.
¢¢
 
WriteStartElement
¢¢ 
(
¢¢ 
$str
¢¢ !
,
¢¢! "
$str
¢¢# -
,
¢¢- .

Namespaces
¢¢/ 9
.
¢¢9 :
	XMLNS_XSD
¢¢: C
)
¢¢C D
;
¢¢D E
WriteParameters
§§ 
(
§§ 
writer
§§ 
,
§§ 
	operation
§§ %
.
§§% &
InParameters
§§& 2
)
§§2 3
;
§§3 4
writer
¶¶ 

.
¶¶
 
WriteEndElement
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶ 
writer
ßß 

.
ßß
 
WriteEndElement
ßß 
(
ßß 
)
ßß 
;
ßß 
writer
®® 

.
®®
 
WriteEndElement
®® 
(
®® 
)
®® 
;
®® 
writer
´´ 

.
´´
 
WriteStartElement
´´ 
(
´´ 
$str
´´ !
,
´´! "
$str
´´# ,
,
´´, -

Namespaces
´´. 8
.
´´8 9
	XMLNS_XSD
´´9 B
)
´´B C
;
´´C D
writer
¨¨ 

.
¨¨
 "
WriteAttributeString
¨¨ 
(
¨¨  
$str
¨¨  &
,
¨¨& '
	operation
¨¨( 1
.
¨¨1 2
Name
¨¨2 6
+
¨¨7 8
$str
¨¨9 C
)
¨¨C D
;
¨¨D E
writer
≠≠ 

.
≠≠
 
WriteStartElement
≠≠ 
(
≠≠ 
$str
≠≠ !
,
≠≠! "
$str
≠≠# 0
,
≠≠0 1

Namespaces
≠≠2 <
.
≠≠< =
	XMLNS_XSD
≠≠= F
)
≠≠F G
;
≠≠G H
writer
ÆÆ 

.
ÆÆ
 
WriteStartElement
ÆÆ 
(
ÆÆ 
$str
ÆÆ !
,
ÆÆ! "
$str
ÆÆ# -
,
ÆÆ- .

Namespaces
ÆÆ/ 9
.
ÆÆ9 :
	XMLNS_XSD
ÆÆ: C
)
ÆÆC D
;
ÆÆD E
if
∞∞ 
(
∞∞ 
	operation
∞∞ 
.
∞∞ 
DispatchMethod
∞∞  
.
∞∞  !

ReturnType
∞∞! +
!=
∞∞, .
typeof
∞∞/ 5
(
∞∞5 6
void
∞∞6 :
)
∞∞: ;
&&
∞∞< >
	operation
∞∞? H
.
∞∞H I
DispatchMethod
∞∞I W
.
∞∞W X

ReturnType
∞∞X b
!=
∞∞c e
typeof
∞∞f l
(
∞∞l m
Task
∞∞m q
)
∞∞q r
)
∞∞r s
{
±± 
var
≤≤ 

returnType
≤≤	 
=
≤≤ 
	operation
≤≤ 
.
≤≤  
DispatchMethod
≤≤  .
.
≤≤. /

ReturnType
≤≤/ 9
;
≤≤9 :
if
≥≥ 
(
≥≥ 	

returnType
≥≥	 
.
≥≥ &
IsConstructedGenericType
≥≥ ,
&&
≥≥- /

returnType
≥≥0 :
.
≥≥: ;&
GetGenericTypeDefinition
≥≥; S
(
≥≥S T
)
≥≥T U
==
≥≥V X
typeof
≥≥Y _
(
≥≥_ `
Task
≥≥` d
<
≥≥d e
>
≥≥e f
)
≥≥f g
)
≥≥g h
{
¥¥ 

returnType
µµ 
=
µµ 

returnType
µµ 
.
µµ !
GetGenericArguments
µµ 1
(
µµ1 2
)
µµ2 3
.
µµ3 4
First
µµ4 9
(
µµ9 :
)
µµ: ;
;
µµ; <
}
∂∂ 
var
∏∏ 

returnName
∏∏	 
=
∏∏ 
	operation
∏∏ 
.
∏∏  
DispatchMethod
∏∏  .
.
∏∏. /
ReturnParameter
∏∏/ >
.
∏∏> ? 
GetCustomAttribute
∏∏? Q
<
∏∏Q R'
MessageParameterAttribute
∏∏R k
>
∏∏k l
(
∏∏l m
)
∏∏m n
?
∏∏n o
.
∏∏o p
Name
∏∏p t
??
∏∏u w
	operation∏∏x Å
.∏∏Å Ç
Name∏∏Ç Ü
+∏∏á à
$str∏∏â ë
;∏∏ë í
var
ππ 

isRequired
ππ	 
=
ππ 
!
ππ 
	operation
ππ  
.
ππ  !
DispatchMethod
ππ! /
.
ππ/ 0
ReturnParameter
ππ0 ?
.
ππ? @

IsOptional
ππ@ J
;
ππJ K
AddSchemaType
∫∫ 
(
∫∫ 
writer
∫∫ 
,
∫∫ 

returnType
∫∫ %
,
∫∫% &

returnName
∫∫' 1
,
∫∫1 2
false
∫∫3 8
,
∫∫8 9&
GetDataContractNamespace
∫∫: R
(
∫∫R S

returnType
∫∫S ]
)
∫∫] ^
,
∫∫^ _

isRequired
∫∫` j
:
∫∫j k

isRequired
∫∫l v
)
∫∫v w
;
∫∫w x
}
ªª 
WriteParameters
ΩΩ 
(
ΩΩ 
writer
ΩΩ 
,
ΩΩ 
	operation
ΩΩ %
.
ΩΩ% &
OutParameters
ΩΩ& 3
)
ΩΩ3 4
;
ΩΩ4 5
writer
øø 

.
øø
 
WriteEndElement
øø 
(
øø 
)
øø 
;
øø 
writer
¿¿ 

.
¿¿
 
WriteEndElement
¿¿ 
(
¿¿ 
)
¿¿ 
;
¿¿ 
writer
¡¡ 

.
¡¡
 
WriteEndElement
¡¡ 
(
¡¡ 
)
¡¡ 
;
¡¡ 
AddFaultTypes
√√ 
(
√√ 
writer
√√ 
,
√√ 
	operation
√√ #
)
√√# $
;
√√$ %
}
ƒƒ 
writer
∆∆ 	
.
∆∆	 

WriteEndElement
∆∆
 
(
∆∆ 
)
∆∆ 
;
∆∆ 
}
«« 
private
…… 	
void
……
 
AddFaultTypes
…… 
(
…… !
XmlDictionaryWriter
…… 0
writer
……1 7
,
……7 8"
OperationDescription
……9 M
	operation
……N W
)
……W X
{
   
foreach
ÀÀ 

(
ÀÀ 
var
ÀÀ 
	faultType
ÀÀ 
in
ÀÀ 
	operation
ÀÀ &
.
ÀÀ& '
Faults
ÀÀ' -
)
ÀÀ- .
{
ÃÃ 
if
ÕÕ 
(
ÕÕ #
_complexTypeProcessed
ÕÕ 
.
ÕÕ 
Contains
ÕÕ &
(
ÕÕ& '
	faultType
ÕÕ' 0
)
ÕÕ0 1
)
ÕÕ1 2
{
ŒŒ 
continue
œœ 
;
œœ 
}
–– !
_complexTypeToBuild
““ 
[
““ 
	faultType
““ !
]
““! "
=
““# $&
GetDataContractNamespace
““% =
(
““= >
	faultType
““> G
)
““G H
;
““H I
DiscoverTypes
”” 
(
”” 
	faultType
”” 
,
”” 
true
”” !
)
””! "
;
””" #
}
‘‘ 
}
’’ 
private
◊◊ 	
void
◊◊
 
AddTypes
◊◊ 
(
◊◊ !
XmlDictionaryWriter
◊◊ +
writer
◊◊, 2
)
◊◊2 3
{
ÿÿ 
writer
ŸŸ 	
.
ŸŸ	 

WriteStartElement
ŸŸ
 
(
ŸŸ 
$str
ŸŸ "
,
ŸŸ" #
$str
ŸŸ$ +
,
ŸŸ+ ,

Namespaces
ŸŸ- 7
.
ŸŸ7 8
WSDL_NS
ŸŸ8 ?
)
ŸŸ? @
;
ŸŸ@ A%
EnsureServiceKnownTypes
›› 
(
›› 
_service
›› #
.
››# $
ServiceKnownTypes
››$ 5
)
››5 6
;
››6 7%
EnsureServiceKnownTypes
‡‡ 
(
‡‡ 
_service
‡‡ #
.
‡‡# $
	Contracts
‡‡$ -
.
‡‡- .

SelectMany
‡‡. 8
(
‡‡8 9
x
‡‡9 :
=>
‡‡; =
x
‡‡> ?
.
‡‡? @
ServiceKnownTypes
‡‡@ Q
)
‡‡Q R
)
‡‡R S
;
‡‡S T
foreach
‚‚ 

(
‚‚ !
ContractDescription
‚‚ 
contract
‚‚  (
in
‚‚) +
_service
‚‚, 4
.
‚‚4 5
	Contracts
‚‚5 >
)
‚‚> ?
{
„„ #
AddContractOperations
‰‰ 
(
‰‰ 
writer
‰‰  
,
‰‰  !
contract
‰‰" *
)
‰‰* +
;
‰‰+ ,
}
ÂÂ  
AddMSSerialization
ÁÁ 
(
ÁÁ 
writer
ÁÁ 
)
ÁÁ 
;
ÁÁ 
AddComplexTypes
ËË 
(
ËË 
writer
ËË 
)
ËË 
;
ËË 
AddArrayTypes
ÈÈ 
(
ÈÈ 
writer
ÈÈ 
)
ÈÈ 
;
ÈÈ 
AddSystemTypes
ÍÍ 
(
ÍÍ 
writer
ÍÍ 
)
ÍÍ 
;
ÍÍ 
writer
ÏÏ 	
.
ÏÏ	 

WriteEndElement
ÏÏ
 
(
ÏÏ 
)
ÏÏ 
;
ÏÏ 
}
ÌÌ 
private
ÔÔ 	
void
ÔÔ
 
AddSystemTypes
ÔÔ 
(
ÔÔ !
XmlDictionaryWriter
ÔÔ 1
writer
ÔÔ2 8
)
ÔÔ8 9
{
 
if
ÒÒ 
(
ÒÒ "
_buildDateTimeOffset
ÒÒ 
)
ÒÒ 
{
ÚÚ 
writer
ÛÛ 

.
ÛÛ
 
WriteStartElement
ÛÛ 
(
ÛÛ 
$str
ÛÛ !
,
ÛÛ! "
$str
ÛÛ# +
,
ÛÛ+ ,

Namespaces
ÛÛ- 7
.
ÛÛ7 8
	XMLNS_XSD
ÛÛ8 A
)
ÛÛA B
;
ÛÛB C
writer
ÙÙ 

.
ÙÙ
 !
WriteXmlnsAttribute
ÙÙ 
(
ÙÙ 
$str
ÙÙ #
,
ÙÙ# $

Namespaces
ÙÙ% /
.
ÙÙ/ 0
	XMLNS_XSD
ÙÙ0 9
)
ÙÙ9 :
;
ÙÙ: ;
writer
ıı 

.
ıı
 !
WriteXmlnsAttribute
ıı 
(
ıı 
$str
ıı $
,
ıı$ %

Namespaces
ıı& 0
.
ıı0 1
	SYSTEM_NS
ıı1 :
)
ıı: ;
;
ıı; <
writer
ˆˆ 

.
ˆˆ
 "
WriteAttributeString
ˆˆ 
(
ˆˆ  
$str
ˆˆ  4
,
ˆˆ4 5
$str
ˆˆ6 A
)
ˆˆA B
;
ˆˆB C
writer
˜˜ 

.
˜˜
 "
WriteAttributeString
˜˜ 
(
˜˜  
$str
˜˜  1
,
˜˜1 2

Namespaces
˜˜3 =
.
˜˜= >
	SYSTEM_NS
˜˜> G
)
˜˜G H
;
˜˜H I
writer
˘˘ 

.
˘˘
 
WriteStartElement
˘˘ 
(
˘˘ 
$str
˘˘ !
,
˘˘! "
$str
˘˘# +
,
˘˘+ ,

Namespaces
˘˘- 7
.
˘˘7 8
	XMLNS_XSD
˘˘8 A
)
˘˘A B
;
˘˘B C
writer
˙˙ 

.
˙˙
 "
WriteAttributeString
˙˙ 
(
˙˙  
$str
˙˙  +
,
˙˙+ ,

Namespaces
˙˙- 7
.
˙˙7 8
SERIALIZATION_NS
˙˙8 H
)
˙˙H I
;
˙˙I J
writer
˚˚ 

.
˚˚
 
WriteEndElement
˚˚ 
(
˚˚ 
)
˚˚ 
;
˚˚ 
writer
˝˝ 

.
˝˝
 
WriteStartElement
˝˝ 
(
˝˝ 
$str
˝˝ !
,
˝˝! "
$str
˝˝# 0
,
˝˝0 1

Namespaces
˝˝2 <
.
˝˝< =
	XMLNS_XSD
˝˝= F
)
˝˝F G
;
˝˝G H
writer
˛˛ 

.
˛˛
 "
WriteAttributeString
˛˛ 
(
˛˛  
$str
˛˛  &
,
˛˛& '
$str
˛˛( 8
)
˛˛8 9
;
˛˛9 :
writer
ˇˇ 

.
ˇˇ
 
WriteStartElement
ˇˇ 
(
ˇˇ 
$str
ˇˇ !
,
ˇˇ! "
$str
ˇˇ# /
,
ˇˇ/ 0

Namespaces
ˇˇ1 ;
.
ˇˇ; <
	XMLNS_XSD
ˇˇ< E
)
ˇˇE F
;
ˇˇF G
writer
ÄÄ 

.
ÄÄ
 
WriteStartElement
ÄÄ 
(
ÄÄ 
$str
ÄÄ !
,
ÄÄ! "
$str
ÄÄ# ,
,
ÄÄ, -

Namespaces
ÄÄ. 8
.
ÄÄ8 9
	XMLNS_XSD
ÄÄ9 B
)
ÄÄB C
;
ÄÄC D
writer
ÇÇ 

.
ÇÇ
  
WriteElementString
ÇÇ 
(
ÇÇ 
$str
ÇÇ +
,
ÇÇ+ ,

Namespaces
ÇÇ- 7
.
ÇÇ7 8
SERIALIZATION_NS
ÇÇ8 H
,
ÇÇH I
$str
ÇÇJ P
)
ÇÇP Q
;
ÇÇQ R
writer
ÉÉ 

.
ÉÉ
 
WriteEndElement
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
writer
ÑÑ 

.
ÑÑ
 
WriteEndElement
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
writer
ÜÜ 

.
ÜÜ
 
WriteStartElement
ÜÜ 
(
ÜÜ 
$str
ÜÜ !
,
ÜÜ! "
$str
ÜÜ# -
,
ÜÜ- .

Namespaces
ÜÜ/ 9
.
ÜÜ9 :
	XMLNS_XSD
ÜÜ: C
)
ÜÜC D
;
ÜÜD E
writer
àà 

.
àà
 
WriteStartElement
àà 
(
àà 
$str
àà !
,
àà! "
$str
àà# ,
,
àà, -

Namespaces
àà. 8
.
àà8 9
	XMLNS_XSD
àà9 B
)
ààB C
;
ààC D
writer
ââ 

.
ââ
 "
WriteAttributeString
ââ 
(
ââ  
$str
ââ  &
,
ââ& '
$str
ââ( 2
)
ââ2 3
;
ââ3 4
writer
ää 

.
ää
 "
WriteAttributeString
ää 
(
ää  
$str
ää  &
,
ää& '
$str
ää( 5
)
ää5 6
;
ää6 7
writer
ãã 

.
ãã
 
WriteEndElement
ãã 
(
ãã 
)
ãã 
;
ãã 
writer
çç 

.
çç
 
WriteStartElement
çç 
(
çç 
$str
çç !
,
çç! "
$str
çç# ,
,
çç, -

Namespaces
çç. 8
.
çç8 9
	XMLNS_XSD
çç9 B
)
ççB C
;
ççC D
writer
éé 

.
éé
 "
WriteAttributeString
éé 
(
éé  
$str
éé  &
,
éé& '
$str
éé( 7
)
éé7 8
;
éé8 9
writer
èè 

.
èè
 "
WriteAttributeString
èè 
(
èè  
$str
èè  &
,
èè& '
$str
èè( 2
)
èè2 3
;
èè3 4
writer
êê 

.
êê
 
WriteEndElement
êê 
(
êê 
)
êê 
;
êê 
writer
íí 

.
íí
 
WriteEndElement
íí 
(
íí 
)
íí 
;
íí 
writer
îî 

.
îî
 
WriteEndElement
îî 
(
îî 
)
îî 
;
îî 
writer
ññ 

.
ññ
 
WriteStartElement
ññ 
(
ññ 
$str
ññ !
,
ññ! "
$str
ññ# ,
,
ññ, -

Namespaces
ññ. 8
.
ññ8 9
	XMLNS_XSD
ññ9 B
)
ññB C
;
ññC D
writer
óó 

.
óó
 "
WriteAttributeString
óó 
(
óó  
$str
óó  &
,
óó& '
$str
óó( 8
)
óó8 9
;
óó9 :
writer
òò 

.
òò
 "
WriteAttributeString
òò 
(
òò  
$str
òò  *
,
òò* +
$str
òò, 2
)
òò2 3
;
òò3 4
writer
ôô 

.
ôô
 "
WriteAttributeString
ôô 
(
ôô  
$str
ôô  &
,
ôô& '
$str
ôô( <
)
ôô< =
;
ôô= >
writer
öö 

.
öö
 
WriteEndElement
öö 
(
öö 
)
öö 
;
öö 
writer
úú 

.
úú
 
WriteEndElement
úú 
(
úú 
)
úú 
;
úú 
}
ùù 
if
üü 
(
üü 
_buildDataTable
üü 
)
üü 
{
†† 
writer
°° 

.
°°
 
WriteStartElement
°° 
(
°° 
$str
°° !
,
°°! "
$str
°°# +
,
°°+ ,

Namespaces
°°- 7
.
°°7 8
	XMLNS_XSD
°°8 A
)
°°A B
;
°°B C
writer
¢¢ 

.
¢¢
 "
WriteAttributeString
¢¢ 
(
¢¢  
$str
¢¢  4
,
¢¢4 5
$str
¢¢6 A
)
¢¢A B
;
¢¢B C
writer
££ 

.
££
 "
WriteAttributeString
££ 
(
££  
$str
££  1
,
££1 2

Namespaces
££3 =
.
££= >
SystemData_NS
££> K
)
££K L
;
££L M
writer
§§ 

.
§§
 !
WriteXmlnsAttribute
§§ 
(
§§ 
$str
§§ #
,
§§# $

Namespaces
§§% /
.
§§/ 0
	XMLNS_XSD
§§0 9
)
§§9 :
;
§§: ;
writer
•• 

.
••
 !
WriteXmlnsAttribute
•• 
(
•• 
$str
•• $
,
••$ %

Namespaces
••& 0
.
••0 1
SystemData_NS
••1 >
)
••> ?
;
••? @
writer
ßß 

.
ßß
 
WriteStartElement
ßß 
(
ßß 
$str
ßß !
,
ßß! "
$str
ßß# ,
,
ßß, -

Namespaces
ßß. 8
.
ßß8 9
	XMLNS_XSD
ßß9 B
)
ßßB C
;
ßßC D
writer
®® 

.
®®
 "
WriteAttributeString
®® 
(
®®  
$str
®®  &
,
®®& '
$str
®®( 3
)
®®3 4
;
®®4 5
writer
©© 

.
©©
 "
WriteAttributeString
©© 
(
©©  
$str
©©  *
,
©©* +
$str
©©, 2
)
©©2 3
;
©©3 4
writer
´´ 

.
´´
 
WriteStartElement
´´ 
(
´´ 
$str
´´ !
,
´´! "
$str
´´# 0
,
´´0 1

Namespaces
´´2 <
.
´´< =
	XMLNS_XSD
´´= F
)
´´F G
;
´´G H
writer
¨¨ 

.
¨¨
 
WriteStartElement
¨¨ 
(
¨¨ 
$str
¨¨ !
,
¨¨! "
$str
¨¨# /
,
¨¨/ 0

Namespaces
¨¨1 ;
.
¨¨; <
	XMLNS_XSD
¨¨< E
)
¨¨E F
;
¨¨F G
writer
ÆÆ 

.
ÆÆ
 
WriteStartElement
ÆÆ 
(
ÆÆ 
$str
ÆÆ !
,
ÆÆ! "
$str
ÆÆ# ,
,
ÆÆ, -

Namespaces
ÆÆ. 8
.
ÆÆ8 9
	XMLNS_XSD
ÆÆ9 B
)
ÆÆB C
;
ÆÆC D
writer
ØØ 

.
ØØ
 
WriteStartElement
ØØ 
(
ØØ 
$str
ØØ )
)
ØØ) *
;
ØØ* +
writer
∞∞ 

.
∞∞
 "
WriteAttributeString
∞∞ 
(
∞∞  
$str
∞∞  '
,
∞∞' (

Namespaces
∞∞) 3
.
∞∞3 4
SERIALIZATION_NS
∞∞4 D
)
∞∞D E
;
∞∞E F
writer
±± 

.
±±
 "
WriteAttributeString
±± 
(
±±  
$str
±±  &
,
±±& '
$str
±±( 3
)
±±3 4
;
±±4 5
writer
≤≤ 

.
≤≤
 "
WriteAttributeString
≤≤ 
(
≤≤  
$str
≤≤  +
,
≤≤+ ,

Namespaces
≤≤- 7
.
≤≤7 8
SystemData_NS
≤≤8 E
)
≤≤E F
;
≤≤F G
writer
≥≥ 

.
≥≥
 
WriteEndElement
≥≥ 
(
≥≥ 
)
≥≥ 
;
≥≥ 
writer
¥¥ 

.
¥¥
 
WriteEndElement
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 
writer
µµ 

.
µµ
 
WriteEndElement
µµ 
(
µµ 
)
µµ 
;
µµ 
writer
∑∑ 

.
∑∑
 
WriteStartElement
∑∑ 
(
∑∑ 
$str
∑∑ !
,
∑∑! "
$str
∑∑# -
,
∑∑- .

Namespaces
∑∑/ 9
.
∑∑9 :
	XMLNS_XSD
∑∑: C
)
∑∑C D
;
∑∑D E
writer
ππ 

.
ππ
 
WriteStartElement
ππ 
(
ππ 
$str
ππ !
,
ππ! "
$str
ππ# (
,
ππ( )

Namespaces
ππ* 4
.
ππ4 5
	XMLNS_XSD
ππ5 >
)
ππ> ?
;
ππ? @
writer
∫∫ 

.
∫∫
 "
WriteAttributeString
∫∫ 
(
∫∫  
$str
∫∫  +
,
∫∫+ ,
$str
∫∫- 0
)
∫∫0 1
;
∫∫1 2
writer
ªª 

.
ªª
 "
WriteAttributeString
ªª 
(
ªª  
$str
ªª  +
,
ªª+ ,
$str
ªª- 8
)
ªª8 9
;
ªª9 :
writer
ºº 

.
ºº
 "
WriteAttributeString
ºº 
(
ºº  
$str
ºº  +
,
ºº+ ,

Namespaces
ºº- 7
.
ºº7 8
	XMLNS_XSD
ºº8 A
)
ººA B
;
ººB C
writer
ΩΩ 

.
ΩΩ
 "
WriteAttributeString
ΩΩ 
(
ΩΩ  
$str
ΩΩ  1
,
ΩΩ1 2
$str
ΩΩ3 8
)
ΩΩ8 9
;
ΩΩ9 :
writer
ææ 

.
ææ
 
WriteEndElement
ææ 
(
ææ 
)
ææ 
;
ææ 
writer
¿¿ 

.
¿¿
 
WriteStartElement
¿¿ 
(
¿¿ 
$str
¿¿ !
,
¿¿! "
$str
¿¿# (
,
¿¿( )

Namespaces
¿¿* 4
.
¿¿4 5
	XMLNS_XSD
¿¿5 >
)
¿¿> ?
;
¿¿? @
writer
¡¡ 

.
¡¡
 "
WriteAttributeString
¡¡ 
(
¡¡  
$str
¡¡  +
,
¡¡+ ,
$str
¡¡- 0
)
¡¡0 1
;
¡¡1 2
writer
¬¬ 

.
¬¬
 "
WriteAttributeString
¬¬ 
(
¬¬  
$str
¬¬  +
,
¬¬+ ,
$str
¬¬- X
)
¬¬X Y
;
¬¬Y Z
writer
√√ 

.
√√
 "
WriteAttributeString
√√ 
(
√√  
$str
√√  1
,
√√1 2
$str
√√3 8
)
√√8 9
;
√√9 :
writer
ƒƒ 

.
ƒƒ
 
WriteEndElement
ƒƒ 
(
ƒƒ 
)
ƒƒ 
;
ƒƒ 
writer
∆∆ 

.
∆∆
 
WriteEndElement
∆∆ 
(
∆∆ 
)
∆∆ 
;
∆∆ 
writer
»» 

.
»»
 
WriteEndElement
»» 
(
»» 
)
»» 
;
»» 
writer
   

.
  
 
WriteEndElement
   
(
   
)
   
;
   
writer
ÃÃ 

.
ÃÃ
 
WriteEndElement
ÃÃ 
(
ÃÃ 
)
ÃÃ 
;
ÃÃ 
}
ÕÕ 
}
ŒŒ 
private
–– 	
void
––
 
AddArrayTypes
–– 
(
–– !
XmlDictionaryWriter
–– 0
writer
––1 7
)
––7 8
{
—— 
writer
““ 	
.
““	 

WriteStartElement
““
 
(
““ 
$str
““  
,
““  !
$str
““" *
,
““* +

Namespaces
““, 6
.
““6 7
	XMLNS_XSD
““7 @
)
““@ A
;
““A B
writer
”” 	
.
””	 
!
WriteXmlnsAttribute
””
 
(
”” 
$str
”” "
,
””" #

Namespaces
””$ .
.
””. /
	XMLNS_XSD
””/ 8
)
””8 9
;
””9 :
writer
‘‘ 	
.
‘‘	 
!
WriteXmlnsAttribute
‘‘
 
(
‘‘ 
$str
‘‘ #
,
‘‘# $

Namespaces
‘‘% /
.
‘‘/ 0
	ARRAYS_NS
‘‘0 9
)
‘‘9 :
;
‘‘: ;
writer
’’ 	
.
’’	 
!
WriteXmlnsAttribute
’’
 
(
’’ 
$str
’’ #
,
’’# $

Namespaces
’’% /
.
’’/ 0
SERIALIZATION_NS
’’0 @
)
’’@ A
;
’’A B
writer
÷÷ 	
.
÷÷	 
"
WriteAttributeString
÷÷
 
(
÷÷ 
$str
÷÷ 3
,
÷÷3 4
$str
÷÷5 @
)
÷÷@ A
;
÷÷A B
writer
◊◊ 	
.
◊◊	 
"
WriteAttributeString
◊◊
 
(
◊◊ 
$str
◊◊ 0
,
◊◊0 1

Namespaces
◊◊2 <
.
◊◊< =
	ARRAYS_NS
◊◊= F
)
◊◊F G
;
◊◊G H
_namespaceCounter
ÿÿ 
=
ÿÿ 
$num
ÿÿ 
;
ÿÿ 
_schemaNamespace
ŸŸ 
=
ŸŸ 

Namespaces
ŸŸ  
.
ŸŸ  !
	ARRAYS_NS
ŸŸ! *
;
ŸŸ* +
writer
€€ 	
.
€€	 

WriteStartElement
€€
 
(
€€ 
$str
€€  
,
€€  !
$str
€€" *
,
€€* +

Namespaces
€€, 6
.
€€6 7
	XMLNS_XSD
€€7 @
)
€€@ A
;
€€A B
writer
‹‹ 	
.
‹‹	 
"
WriteAttributeString
‹‹
 
(
‹‹ 
$str
‹‹ *
,
‹‹* +

Namespaces
‹‹, 6
.
‹‹6 7
SERIALIZATION_NS
‹‹7 G
)
‹‹G H
;
‹‹H I
writer
›› 	
.
››	 

WriteEndElement
››
 
(
›› 
)
›› 
;
›› 
while
ﬂﬂ 
(
ﬂﬂ	 

_arrayToBuild
ﬂﬂ
 
.
ﬂﬂ 
Count
ﬂﬂ 
>
ﬂﬂ 
$num
ﬂﬂ  !
)
ﬂﬂ! "
{
‡‡ 
var
·· 
toBuild
·· 
=
·· 
_arrayToBuild
·· 
.
··  
Dequeue
··  '
(
··' (
)
··( )
;
··) *
var
‚‚ 
elType
‚‚ 
=
‚‚ 
toBuild
‚‚ 
.
‚‚ 
IsArray
‚‚  
?
‚‚! "
toBuild
‚‚# *
.
‚‚* +
GetElementType
‚‚+ 9
(
‚‚9 :
)
‚‚: ;
:
‚‚< =
GetGenericType
‚‚> L
(
‚‚L M
toBuild
‚‚M T
)
‚‚T U
;
‚‚U V
var
„„ 
sysType
„„ 
=
„„ 
ResolveSystemType
„„ #
(
„„# $
elType
„„$ *
)
„„* +
;
„„+ ,
var
‰‰ 
toBuildName
‰‰ 
=
‰‰ 
$str
‰‰ 
+
‰‰  !
sysType
‰‰" )
.
‰‰) *
name
‰‰* .
;
‰‰. /
if
ÊÊ 
(
ÊÊ 
!
ÊÊ 	
_buildArrayTypes
ÊÊ	 
.
ÊÊ 
Contains
ÊÊ "
(
ÊÊ" #
toBuildName
ÊÊ# .
)
ÊÊ. /
)
ÊÊ/ 0
{
ÁÁ 
writer
ËË 
.
ËË 
WriteStartElement
ËË 
(
ËË 
$str
ËË "
,
ËË" #
$str
ËË$ 1
,
ËË1 2

Namespaces
ËË3 =
.
ËË= >
	XMLNS_XSD
ËË> G
)
ËËG H
;
ËËH I
writer
ÈÈ 
.
ÈÈ "
WriteAttributeString
ÈÈ  
(
ÈÈ  !
$str
ÈÈ! '
,
ÈÈ' (
toBuildName
ÈÈ) 4
)
ÈÈ4 5
;
ÈÈ5 6
writer
ÎÎ 
.
ÎÎ 
WriteStartElement
ÎÎ 
(
ÎÎ 
$str
ÎÎ "
,
ÎÎ" #
$str
ÎÎ$ .
,
ÎÎ. /

Namespaces
ÎÎ0 :
.
ÎÎ: ;
	XMLNS_XSD
ÎÎ; D
)
ÎÎD E
;
ÎÎE F
AddSchemaType
ÏÏ 
(
ÏÏ 
writer
ÏÏ 
,
ÏÏ 
elType
ÏÏ !
,
ÏÏ! "
null
ÏÏ# '
,
ÏÏ' (
true
ÏÏ) -
)
ÏÏ- .
;
ÏÏ. /
writer
ÌÌ 
.
ÌÌ 
WriteEndElement
ÌÌ 
(
ÌÌ 
)
ÌÌ 
;
ÌÌ 
writer
ÔÔ 
.
ÔÔ 
WriteEndElement
ÔÔ 
(
ÔÔ 
)
ÔÔ 
;
ÔÔ 
writer
ÒÒ 
.
ÒÒ 
WriteStartElement
ÒÒ 
(
ÒÒ 
$str
ÒÒ "
,
ÒÒ" #
$str
ÒÒ$ -
,
ÒÒ- .

Namespaces
ÒÒ/ 9
.
ÒÒ9 :
	XMLNS_XSD
ÒÒ: C
)
ÒÒC D
;
ÒÒD E
writer
ÚÚ 
.
ÚÚ "
WriteAttributeString
ÚÚ  
(
ÚÚ  !
$str
ÚÚ! '
,
ÚÚ' (
toBuildName
ÚÚ) 4
)
ÚÚ4 5
;
ÚÚ5 6
writer
ÛÛ 
.
ÛÛ "
WriteAttributeString
ÛÛ  
(
ÛÛ  !
$str
ÛÛ! +
,
ÛÛ+ ,
$str
ÛÛ- 3
)
ÛÛ3 4
;
ÛÛ4 5
writer
ÙÙ 
.
ÙÙ "
WriteAttributeString
ÙÙ  
(
ÙÙ  !
$str
ÙÙ! '
,
ÙÙ' (
$str
ÙÙ) /
+
ÙÙ0 1
toBuildName
ÙÙ2 =
)
ÙÙ= >
;
ÙÙ> ?
writer
ıı 
.
ıı 
WriteEndElement
ıı 
(
ıı 
)
ıı 
;
ıı 
_buildArrayTypes
ˆˆ 
.
ˆˆ 
Add
ˆˆ 
(
ˆˆ 
toBuildName
ˆˆ %
)
ˆˆ% &
;
ˆˆ& '
}
˜˜ 
}
¯¯ 
writer
˙˙ 	
.
˙˙	 

WriteEndElement
˙˙
 
(
˙˙ 
)
˙˙ 
;
˙˙ 
}
˚˚ 
private
˝˝ 	
void
˝˝
  
AddMSSerialization
˝˝ !
(
˝˝! "!
XmlDictionaryWriter
˝˝" 5
writer
˝˝6 <
)
˝˝< =
{
˛˛ 
writer
ˇˇ 	
.
ˇˇ	 

WriteStartElement
ˇˇ
 
(
ˇˇ 
$str
ˇˇ  
,
ˇˇ  !
$str
ˇˇ" *
,
ˇˇ* +

Namespaces
ˇˇ, 6
.
ˇˇ6 7
	XMLNS_XSD
ˇˇ7 @
)
ˇˇ@ A
;
ˇˇA B
writer
ÄÄ 	
.
ÄÄ	 
"
WriteAttributeString
ÄÄ
 
(
ÄÄ 
$str
ÄÄ 5
,
ÄÄ5 6
$str
ÄÄ7 B
)
ÄÄB C
;
ÄÄC D
writer
ÅÅ 	
.
ÅÅ	 
"
WriteAttributeString
ÅÅ
 
(
ÅÅ 
$str
ÅÅ 3
,
ÅÅ3 4
$str
ÅÅ5 @
)
ÅÅ@ A
;
ÅÅA B
writer
ÇÇ 	
.
ÇÇ	 
"
WriteAttributeString
ÇÇ
 
(
ÇÇ 
$str
ÇÇ 0
,
ÇÇ0 1

Namespaces
ÇÇ2 <
.
ÇÇ< =
SERIALIZATION_NS
ÇÇ= M
)
ÇÇM N
;
ÇÇN O
writer
ÉÉ 	
.
ÉÉ	 
!
WriteXmlnsAttribute
ÉÉ
 
(
ÉÉ 
$str
ÉÉ "
,
ÉÉ" #

Namespaces
ÉÉ$ .
.
ÉÉ. /
	XMLNS_XSD
ÉÉ/ 8
)
ÉÉ8 9
;
ÉÉ9 :
writer
ÑÑ 	
.
ÑÑ	 
!
WriteXmlnsAttribute
ÑÑ
 
(
ÑÑ 
$str
ÑÑ #
,
ÑÑ# $

Namespaces
ÑÑ% /
.
ÑÑ/ 0
SERIALIZATION_NS
ÑÑ0 @
)
ÑÑ@ A
;
ÑÑA B'
WriteSerializationElement
ÖÖ 
(
ÖÖ 
writer
ÖÖ #
,
ÖÖ# $
$str
ÖÖ% .
,
ÖÖ. /
$str
ÖÖ0 <
,
ÖÖ< =
true
ÖÖ> B
)
ÖÖB C
;
ÖÖC D'
WriteSerializationElement
ÜÜ 
(
ÜÜ 
writer
ÜÜ #
,
ÜÜ# $
$str
ÜÜ% -
,
ÜÜ- .
$str
ÜÜ/ :
,
ÜÜ: ;
true
ÜÜ< @
)
ÜÜ@ A
;
ÜÜA B'
WriteSerializationElement
áá 
(
áá 
writer
áá #
,
áá# $
$str
áá% 3
,
áá3 4
$str
áá5 F
,
ááF G
true
ááH L
)
ááL M
;
ááM N'
WriteSerializationElement
àà 
(
àà 
writer
àà #
,
àà# $
$str
àà% .
,
àà. /
$str
àà0 <
,
àà< =
true
àà> B
)
ààB C
;
ààC D'
WriteSerializationElement
ââ 
(
ââ 
writer
ââ #
,
ââ# $
$str
ââ% +
,
ââ+ ,
$str
ââ- 6
,
ââ6 7
true
ââ8 <
)
ââ< =
;
ââ= >'
WriteSerializationElement
ää 
(
ää 
writer
ää #
,
ää# $
$str
ää% /
,
ää/ 0
$str
ää1 >
,
ää> ?
true
ää@ D
)
ääD E
;
ääE F'
WriteSerializationElement
ãã 
(
ãã 
writer
ãã #
,
ãã# $
$str
ãã% .
,
ãã. /
$str
ãã0 <
,
ãã< =
true
ãã> B
)
ããB C
;
ããC D'
WriteSerializationElement
åå 
(
åå 
writer
åå #
,
åå# $
$str
åå% -
,
åå- .
$str
åå/ :
,
åå: ;
true
åå< @
)
åå@ A
;
ååA B'
WriteSerializationElement
çç 
(
çç 
writer
çç #
,
çç# $
$str
çç% ,
,
çç, -
$str
çç. 8
,
çç8 9
true
çç: >
)
çç> ?
;
çç? @'
WriteSerializationElement
éé 
(
éé 
writer
éé #
,
éé# $
$str
éé% *
,
éé* +
$str
éé, 4
,
éé4 5
true
éé6 :
)
éé: ;
;
éé; <'
WriteSerializationElement
èè 
(
èè 
writer
èè #
,
èè# $
$str
èè% +
,
èè+ ,
$str
èè- 6
,
èè6 7
true
èè8 <
)
èè< =
;
èè= >'
WriteSerializationElement
êê 
(
êê 
writer
êê #
,
êê# $
$str
êê% ,
,
êê, -
$str
êê. 8
,
êê8 9
true
êê: >
)
êê> ?
;
êê? @'
WriteSerializationElement
ëë 
(
ëë 
writer
ëë #
,
ëë# $
$str
ëë% ,
,
ëë, -
$str
ëë. 8
,
ëë8 9
true
ëë: >
)
ëë> ?
;
ëë? @'
WriteSerializationElement
íí 
(
íí 
writer
íí #
,
íí# $
$str
íí% -
,
íí- .
$str
íí/ :
,
íí: ;
true
íí< @
)
íí@ A
;
ííA B'
WriteSerializationElement
ìì 
(
ìì 
writer
ìì #
,
ìì# $
$str
ìì% 3
,
ìì3 4
$str
ìì5 F
,
ììF G
true
ììH L
)
ììL M
;
ììM N'
WriteSerializationElement
îî 
(
îî 
writer
îî #
,
îî# $
$str
îî% 2
,
îî2 3
$str
îî4 D
,
îîD E
true
îîF J
)
îîJ K
;
îîK L'
WriteSerializationElement
ïï 
(
ïï 
writer
ïï #
,
ïï# $
$str
ïï% 3
,
ïï3 4
$str
ïï5 F
,
ïïF G
true
ïïH L
)
ïïL M
;
ïïM N'
WriteSerializationElement
ññ 
(
ññ 
writer
ññ #
,
ññ# $
$str
ññ% 4
,
ññ4 5
$str
ññ6 H
,
ññH I
true
ññJ N
)
ññN O
;
ññO P'
WriteSerializationElement
òò 
(
òò 
writer
òò #
,
òò# $
$str
òò% +
,
òò+ ,
$str
òò- 7
,
òò7 8
true
òò9 =
)
òò= >
;
òò> ?
writer
ôô 	
.
ôô	 

WriteStartElement
ôô
 
(
ôô 
$str
ôô  
,
ôô  !
$str
ôô" .
,
ôô. /

Namespaces
ôô0 :
.
ôô: ;
	XMLNS_XSD
ôô; D
)
ôôD E
;
ôôE F
writer
öö 	
.
öö	 
"
WriteAttributeString
öö
 
(
öö 
$str
öö %
,
öö% &
$str
öö' -
)
öö- .
;
öö. /
writer
õõ 	
.
õõ	 

WriteStartElement
õõ
 
(
õõ 
$str
õõ  
,
õõ  !
$str
õõ" /
,
õõ/ 0

Namespaces
õõ1 ;
.
õõ; <
	XMLNS_XSD
õõ< E
)
õõE F
;
õõF G
writer
úú 	
.
úú	 
"
WriteAttributeString
úú
 
(
úú 
$str
úú %
,
úú% &
$str
úú' /
)
úú/ 0
;
úú0 1
writer
ùù 	
.
ùù	 

WriteEndElement
ùù
 
(
ùù 
)
ùù 
;
ùù 
writer
ûû 	
.
ûû	 

WriteEndElement
ûû
 
(
ûû 
)
ûû 
;
ûû '
WriteSerializationElement
†† 
(
†† 
writer
†† #
,
††# $
$str
††% /
,
††/ 0
$str
††1 ?
,
††? @
true
††A E
)
††E F
;
††F G
writer
°° 	
.
°°	 

WriteStartElement
°°
 
(
°° 
$str
°°  
,
°°  !
$str
°°" .
,
°°. /

Namespaces
°°0 :
.
°°: ;
	XMLNS_XSD
°°; D
)
°°D E
;
°°E F
writer
¢¢ 	
.
¢¢	 
"
WriteAttributeString
¢¢
 
(
¢¢ 
$str
¢¢ %
,
¢¢% &
$str
¢¢' 1
)
¢¢1 2
;
¢¢2 3
writer
££ 	
.
££	 

WriteStartElement
££
 
(
££ 
$str
££  
,
££  !
$str
££" /
,
££/ 0

Namespaces
££1 ;
.
££; <
	XMLNS_XSD
££< E
)
££E F
;
££F G
writer
§§ 	
.
§§	 
"
WriteAttributeString
§§
 
(
§§ 
$str
§§ %
,
§§% &
$str
§§' 4
)
§§4 5
;
§§5 6
writer
•• 	
.
••	 

WriteStartElement
••
 
(
•• 
$str
••  
,
••  !
$str
••" +
,
••+ ,

Namespaces
••- 7
.
••7 8
	XMLNS_XSD
••8 A
)
••A B
;
••B C
writer
¶¶ 	
.
¶¶	 
"
WriteAttributeString
¶¶
 
(
¶¶ 
$str
¶¶ &
,
¶¶& '
$str
¶¶( W
)
¶¶W X
;
¶¶X Y
writer
ßß 	
.
ßß	 

WriteEndElement
ßß
 
(
ßß 
)
ßß 
;
ßß 
writer
®® 	
.
®®	 

WriteStartElement
®®
 
(
®® 
$str
®®  
,
®®  !
$str
®®" 0
,
®®0 1

Namespaces
®®2 <
.
®®< =
	XMLNS_XSD
®®= F
)
®®F G
;
®®G H
writer
©© 	
.
©©	 
"
WriteAttributeString
©©
 
(
©© 
$str
©© &
,
©©& '
$str
©©( F
)
©©F G
;
©©G H
writer
™™ 	
.
™™	 

WriteEndElement
™™
 
(
™™ 
)
™™ 
;
™™ 
writer
´´ 	
.
´´	 

WriteStartElement
´´
 
(
´´ 
$str
´´  
,
´´  !
$str
´´" 0
,
´´0 1

Namespaces
´´2 <
.
´´< =
	XMLNS_XSD
´´= F
)
´´F G
;
´´G H
writer
¨¨ 	
.
¨¨	 
"
WriteAttributeString
¨¨
 
(
¨¨ 
$str
¨¨ &
,
¨¨& '
$str
¨¨( E
)
¨¨E F
;
¨¨F G
writer
≠≠ 	
.
≠≠	 

WriteEndElement
≠≠
 
(
≠≠ 
)
≠≠ 
;
≠≠ 
writer
ÆÆ 	
.
ÆÆ	 

WriteEndElement
ÆÆ
 
(
ÆÆ 
)
ÆÆ 
;
ÆÆ 
writer
ØØ 	
.
ØØ	 

WriteEndElement
ØØ
 
(
ØØ 
)
ØØ 
;
ØØ '
WriteSerializationElement
±± 
(
±± 
writer
±± #
,
±±# $
$str
±±% +
,
±±+ ,
$str
±±- 7
,
±±7 8
true
±±9 =
)
±±= >
;
±±> ?
writer
≤≤ 	
.
≤≤	 

WriteStartElement
≤≤
 
(
≤≤ 
$str
≤≤  
,
≤≤  !
$str
≤≤" .
,
≤≤. /

Namespaces
≤≤0 :
.
≤≤: ;
	XMLNS_XSD
≤≤; D
)
≤≤D E
;
≤≤E F
writer
≥≥ 	
.
≥≥	 
"
WriteAttributeString
≥≥
 
(
≥≥ 
$str
≥≥ %
,
≥≥% &
$str
≥≥' -
)
≥≥- .
;
≥≥. /
writer
¥¥ 	
.
¥¥	 

WriteStartElement
¥¥
 
(
¥¥ 
$str
¥¥  
,
¥¥  !
$str
¥¥" /
,
¥¥/ 0

Namespaces
¥¥1 ;
.
¥¥; <
	XMLNS_XSD
¥¥< E
)
¥¥E F
;
¥¥F G
writer
µµ 	
.
µµ	 
"
WriteAttributeString
µµ
 
(
µµ 
$str
µµ %
,
µµ% &
$str
µµ' 2
)
µµ2 3
;
µµ3 4
writer
∂∂ 	
.
∂∂	 

WriteStartElement
∂∂
 
(
∂∂ 
$str
∂∂  
,
∂∂  !
$str
∂∂" +
,
∂∂+ ,

Namespaces
∂∂- 7
.
∂∂7 8
	XMLNS_XSD
∂∂8 A
)
∂∂A B
;
∂∂B C
writer
∑∑ 	
.
∑∑	 
"
WriteAttributeString
∑∑
 
(
∑∑ 
$str
∑∑ &
,
∑∑& '
$str
∑∑( q
)
∑∑q r
;
∑∑r s
writer
∏∏ 	
.
∏∏	 

WriteEndElement
∏∏
 
(
∏∏ 
)
∏∏ 
;
∏∏ 
writer
ππ 	
.
ππ	 

WriteEndElement
ππ
 
(
ππ 
)
ππ 
;
ππ 
writer
∫∫ 	
.
∫∫	 

WriteEndElement
∫∫
 
(
∫∫ 
)
∫∫ 
;
∫∫ 
writer
ºº 	
.
ºº	 

WriteStartElement
ºº
 
(
ºº 
$str
ºº  
,
ºº  !
$str
ºº" -
,
ºº- .

Namespaces
ºº/ 9
.
ºº9 :
	XMLNS_XSD
ºº: C
)
ººC D
;
ººD E
writer
ΩΩ 	
.
ΩΩ	 
"
WriteAttributeString
ΩΩ
 
(
ΩΩ 
$str
ΩΩ %
,
ΩΩ% &
$str
ΩΩ' 4
)
ΩΩ4 5
;
ΩΩ5 6
writer
ææ 	
.
ææ	 
"
WriteAttributeString
ææ
 
(
ææ 
$str
ææ %
,
ææ% &
$str
ææ' 1
)
ææ1 2
;
ææ2 3
writer
øø 	
.
øø	 

WriteEndElement
øø
 
(
øø 
)
øø 
;
øø 
writer
¡¡ 	
.
¡¡	 

WriteStartElement
¡¡
 
(
¡¡ 
$str
¡¡  
,
¡¡  !
$str
¡¡" -
,
¡¡- .

Namespaces
¡¡/ 9
.
¡¡9 :
	XMLNS_XSD
¡¡: C
)
¡¡C D
;
¡¡D E
writer
¬¬ 	
.
¬¬	 
"
WriteAttributeString
¬¬
 
(
¬¬ 
$str
¬¬ %
,
¬¬% &
$str
¬¬' +
)
¬¬+ ,
;
¬¬, -
writer
√√ 	
.
√√	 
"
WriteAttributeString
√√
 
(
√√ 
$str
√√ %
,
√√% &
$str
√√' .
)
√√. /
;
√√/ 0
writer
ƒƒ 	
.
ƒƒ	 

WriteEndElement
ƒƒ
 
(
ƒƒ 
)
ƒƒ 
;
ƒƒ 
writer
∆∆ 	
.
∆∆	 

WriteStartElement
∆∆
 
(
∆∆ 
$str
∆∆  
,
∆∆  !
$str
∆∆" -
,
∆∆- .

Namespaces
∆∆/ 9
.
∆∆9 :
	XMLNS_XSD
∆∆: C
)
∆∆C D
;
∆∆D E
writer
«« 	
.
««	 
"
WriteAttributeString
««
 
(
«« 
$str
«« %
,
««% &
$str
««' ,
)
««, -
;
««- .
writer
»» 	
.
»»	 
"
WriteAttributeString
»»
 
(
»» 
$str
»» %
,
»»% &
$str
»»' 1
)
»»1 2
;
»»2 3
writer
…… 	
.
……	 

WriteEndElement
……
 
(
…… 
)
…… 
;
…… 
writer
ÀÀ 	
.
ÀÀ	 

WriteEndElement
ÀÀ
 
(
ÀÀ 
)
ÀÀ 
;
ÀÀ 
}
ÃÃ 
private
ŒŒ 	
void
ŒŒ
 '
WriteSerializationElement
ŒŒ (
(
ŒŒ( )!
XmlDictionaryWriter
ŒŒ) <
writer
ŒŒ= C
,
ŒŒC D
string
ŒŒE K
name
ŒŒL P
,
ŒŒP Q
string
ŒŒR X
type
ŒŒY ]
,
ŒŒ] ^
bool
ŒŒ_ c
nillable
ŒŒd l
)
ŒŒl m
{
œœ 
if
–– 
(
–– 
!
–– )
_builtSerializationElements
–– #
.
––# $
Contains
––$ ,
(
––, -
name
––- 1
)
––1 2
)
––2 3
{
—— 
writer
““ 

.
““
 
WriteStartElement
““ 
(
““ 
$str
““ !
,
““! "
$str
““# ,
,
““, -

Namespaces
““. 8
.
““8 9
	XMLNS_XSD
““9 B
)
““B C
;
““C D
writer
”” 

.
””
 "
WriteAttributeString
”” 
(
””  
$str
””  &
,
””& '
name
””( ,
)
””, -
;
””- .
writer
‘‘ 

.
‘‘
 "
WriteAttributeString
‘‘ 
(
‘‘  
$str
‘‘  *
,
‘‘* +
nillable
‘‘, 4
?
‘‘5 6
$str
‘‘7 =
:
‘‘> ?
$str
‘‘@ G
)
‘‘G H
;
‘‘H I
writer
’’ 

.
’’
 "
WriteAttributeString
’’ 
(
’’  
$str
’’  &
,
’’& '
type
’’( ,
)
’’, -
;
’’- .
writer
÷÷ 

.
÷÷
 
WriteEndElement
÷÷ 
(
÷÷ 
)
÷÷ 
;
÷÷ )
_builtSerializationElements
ÿÿ 
.
ÿÿ  
Add
ÿÿ  #
(
ÿÿ# $
name
ÿÿ$ (
)
ÿÿ( )
;
ÿÿ) *
}
ŸŸ 
}
⁄⁄ 
private
‹‹ 	
void
‹‹
 
AddComplexTypes
‹‹ 
(
‹‹ !
XmlDictionaryWriter
‹‹ 2
writer
‹‹3 9
)
‹‹9 :
{
›› 
foreach
ﬁﬁ 

(
ﬁﬁ 
var
ﬁﬁ 
type
ﬁﬁ 
in
ﬁﬁ !
_complexTypeToBuild
ﬁﬁ +
.
ﬁﬁ+ ,
ToArray
ﬁﬁ, 3
(
ﬁﬁ3 4
)
ﬁﬁ4 5
)
ﬁﬁ5 6
{
ﬂﬂ !
_complexTypeToBuild
‡‡ 
[
‡‡ 
type
‡‡ 
.
‡‡ 
Key
‡‡  
]
‡‡  !
=
‡‡" #&
GetDataContractNamespace
‡‡$ <
(
‡‡< =
type
‡‡= A
.
‡‡A B
Key
‡‡B E
)
‡‡E F
;
‡‡F G
DiscoverTypes
·· 
(
·· 
type
·· 
.
·· 
Key
·· 
,
·· 
true
··  
)
··  !
;
··! "
}
‚‚ 
var
‰‰  
groupedByNamespace
‰‰ 
=
‰‰ !
_complexTypeToBuild
‰‰ /
.
‰‰/ 0
GroupBy
‰‰0 7
(
‰‰7 8
x
‰‰8 9
=>
‰‰: <
x
‰‰= >
.
‰‰> ?
Value
‰‰? D
)
‰‰D E
.
‰‰E F
ToDictionary
‰‰F R
(
‰‰R S
x
‰‰S T
=>
‰‰U W
x
‰‰X Y
.
‰‰Y Z
Key
‰‰Z ]
,
‰‰] ^
x
‰‰_ `
=>
‰‰a c
x
‰‰d e
.
‰‰e f
Select
‰‰f l
(
‰‰l m
k
‰‰m n
=>
‰‰o q
k
‰‰r s
.
‰‰s t
Key
‰‰t w
)
‰‰w x
)
‰‰x y
;
‰‰y z
foreach
ÊÊ 

(
ÊÊ 
var
ÊÊ 
types
ÊÊ 
in
ÊÊ  
groupedByNamespace
ÊÊ +
.
ÊÊ+ ,
Distinct
ÊÊ, 4
(
ÊÊ4 5
)
ÊÊ5 6
)
ÊÊ6 7
{
ÁÁ 
writer
ËË 

.
ËË
 
WriteStartElement
ËË 
(
ËË 
$str
ËË !
,
ËË! "
$str
ËË# +
,
ËË+ ,

Namespaces
ËË- 7
.
ËË7 8
	XMLNS_XSD
ËË8 A
)
ËËA B
;
ËËB C
writer
ÈÈ 

.
ÈÈ
 "
WriteAttributeString
ÈÈ 
(
ÈÈ  
$str
ÈÈ  4
,
ÈÈ4 5
$str
ÈÈ6 A
)
ÈÈA B
;
ÈÈB C
writer
ÍÍ 

.
ÍÍ
 "
WriteAttributeString
ÍÍ 
(
ÍÍ  
$str
ÍÍ  1
,
ÍÍ1 2
GetModelNamespace
ÍÍ3 D
(
ÍÍD E
types
ÍÍE J
.
ÍÍJ K
Key
ÍÍK N
)
ÍÍN O
)
ÍÍO P
;
ÍÍP Q
writer
ÎÎ 

.
ÎÎ
 !
WriteXmlnsAttribute
ÎÎ 
(
ÎÎ 
$str
ÎÎ #
,
ÎÎ# $

Namespaces
ÎÎ% /
.
ÎÎ/ 0
	XMLNS_XSD
ÎÎ0 9
)
ÎÎ9 :
;
ÎÎ: ;
writer
ÏÏ 

.
ÏÏ
 !
WriteXmlnsAttribute
ÏÏ 
(
ÏÏ 
$str
ÏÏ $
,
ÏÏ$ %
GetModelNamespace
ÏÏ& 7
(
ÏÏ7 8
types
ÏÏ8 =
.
ÏÏ= >
Key
ÏÏ> A
)
ÏÏA B
)
ÏÏB C
;
ÏÏC D
writer
ÌÌ 

.
ÌÌ
 !
WriteXmlnsAttribute
ÌÌ 
(
ÌÌ 
$str
ÌÌ $
,
ÌÌ$ %

Namespaces
ÌÌ& 0
.
ÌÌ0 1
SERIALIZATION_NS
ÌÌ1 A
)
ÌÌA B
;
ÌÌB C
_namespaceCounter
ÔÔ 
=
ÔÔ 
$num
ÔÔ 
;
ÔÔ 
_schemaNamespace
 
=
 
GetModelNamespace
 (
(
( )
types
) .
.
. /
Key
/ 2
)
2 3
;
3 4
writer
ÚÚ 

.
ÚÚ
 
WriteStartElement
ÚÚ 
(
ÚÚ 
$str
ÚÚ !
,
ÚÚ! "
$str
ÚÚ# +
,
ÚÚ+ ,

Namespaces
ÚÚ- 7
.
ÚÚ7 8
	XMLNS_XSD
ÚÚ8 A
)
ÚÚA B
;
ÚÚB C
writer
ÛÛ 

.
ÛÛ
 "
WriteAttributeString
ÛÛ 
(
ÛÛ  
$str
ÛÛ  +
,
ÛÛ+ ,

Namespaces
ÛÛ- 7
.
ÛÛ7 8
	SYSTEM_NS
ÛÛ8 A
)
ÛÛA B
;
ÛÛB C
writer
ÙÙ 

.
ÙÙ
 
WriteEndElement
ÙÙ 
(
ÙÙ 
)
ÙÙ 
;
ÙÙ 
writer
ˆˆ 

.
ˆˆ
 
WriteStartElement
ˆˆ 
(
ˆˆ 
$str
ˆˆ !
,
ˆˆ! "
$str
ˆˆ# +
,
ˆˆ+ ,

Namespaces
ˆˆ- 7
.
ˆˆ7 8
	XMLNS_XSD
ˆˆ8 A
)
ˆˆA B
;
ˆˆB C
writer
˜˜ 

.
˜˜
 "
WriteAttributeString
˜˜ 
(
˜˜  
$str
˜˜  +
,
˜˜+ ,

Namespaces
˜˜- 7
.
˜˜7 8
	ARRAYS_NS
˜˜8 A
)
˜˜A B
;
˜˜B C
writer
¯¯ 

.
¯¯
 
WriteEndElement
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯ 
foreach
˙˙ 
(
˙˙ 
var
˙˙ 
type
˙˙ 
in
˙˙ 
types
˙˙ 
.
˙˙ 
Value
˙˙ $
.
˙˙$ %
Distinct
˙˙% -
(
˙˙- .
new
˙˙. 1
TypesComparer
˙˙2 ?
(
˙˙? @
GetTypeName
˙˙@ K
)
˙˙K L
)
˙˙L M
)
˙˙M N
{
˚˚ 
if
¸¸ 
(
¸¸ 	
type
¸¸	 
.
¸¸ 
IsEnum
¸¸ 
)
¸¸ 
{
˝˝ 
	WriteEnum
˛˛ 
(
˛˛ 
writer
˛˛ 
,
˛˛ 
type
˛˛ 
)
˛˛ 
;
˛˛ 
}
ˇˇ 
else
ÄÄ 	
{
ÅÅ 
WriteComplexType
ÇÇ 
(
ÇÇ 
writer
ÇÇ 
,
ÇÇ 
type
ÇÇ #
)
ÇÇ# $
;
ÇÇ$ %
}
ÉÉ 
writer
ÖÖ 
.
ÖÖ 
WriteStartElement
ÖÖ 
(
ÖÖ 
$str
ÖÖ "
,
ÖÖ" #
$str
ÖÖ$ -
,
ÖÖ- .

Namespaces
ÖÖ/ 9
.
ÖÖ9 :
	XMLNS_XSD
ÖÖ: C
)
ÖÖC D
;
ÖÖD E
writer
ÜÜ 
.
ÜÜ "
WriteAttributeString
ÜÜ  
(
ÜÜ  !
$str
ÜÜ! '
,
ÜÜ' (
GetTypeName
ÜÜ) 4
(
ÜÜ4 5
type
ÜÜ5 9
)
ÜÜ9 :
)
ÜÜ: ;
;
ÜÜ; <
if
áá 
(
áá 	
!
áá	 

type
áá
 
.
áá 
IsEnum
áá 
||
áá 
Nullable
áá !
.
áá! "
GetUnderlyingType
áá" 3
(
áá3 4
type
áá4 8
)
áá8 9
!=
áá: <
null
áá= A
)
ááA B
{
àà 
writer
ââ 
.
ââ "
WriteAttributeString
ââ !
(
ââ! "
$str
ââ" ,
,
ââ, -
$str
ââ. 4
)
ââ4 5
;
ââ5 6
}
ää 
writer
åå 
.
åå "
WriteAttributeString
åå  
(
åå  !
$str
åå! '
,
åå' (
$str
åå) /
+
åå0 1
GetTypeName
åå2 =
(
åå= >
type
åå> B
)
ååB C
)
ååC D
;
ååD E
writer
çç 
.
çç 
WriteEndElement
çç 
(
çç 
)
çç 
;
çç 
}
éé 
writer
êê 

.
êê
 
WriteEndElement
êê 
(
êê 
)
êê 
;
êê 
}
ëë 
}
íí 
private
îî 	
void
îî
 
DiscoverTypes
îî 
(
îî 
Type
îî !
type
îî" &
,
îî& '
bool
îî( ,

isRootType
îî- 7
)
îî7 8
{
ïï 
if
ôô 
(
ôô #
_complexTypeProcessed
ôô 
.
ôô 
Contains
ôô %
(
ôô% &
type
ôô& *
)
ôô* +
)
ôô+ ,
{
öö 
return
õõ 

;
õõ
 
}
úú 
if
ûû 
(
ûû 
type
ûû 
==
ûû 
typeof
ûû 
(
ûû 
DateTimeOffset
ûû $
)
ûû$ %
)
ûû% &
{
üü 
return
†† 

;
††
 
}
°° #
_complexTypeProcessed
§§ 
.
§§ 
Add
§§ 
(
§§ 
type
§§ !
)
§§! "
;
§§" #
IEnumerable
ßß 
<
ßß  
KnownTypeAttribute
ßß !
>
ßß! "

knownTypes
ßß# -
=
ßß. /
type
ßß0 4
.
ßß4 5!
GetCustomAttributes
ßß5 H
<
ßßH I 
KnownTypeAttribute
ßßI [
>
ßß[ \
(
ßß\ ]
inherit
ßß] d
:
ßßd e
false
ßßf k
)
ßßk l
;
ßßl m
foreach
®® 

(
®®  
KnownTypeAttribute
®® 
	knownType
®® (
in
®®) +

knownTypes
®®, 6
)
®®6 7
{
©© 
if
™™ 
(
™™ 
	knownType
™™ 
.
™™ 
Type
™™ 
is
™™ 
null
™™ 
)
™™ 
{
´´ 
throw
¨¨ 

new
¨¨ #
NotSupportedException
¨¨ $
(
¨¨$ %
$"
¨¨% '%
Only type property of `
¨¨' >
{
¨¨> ?
nameof
¨¨? E
(
¨¨E F 
KnownTypeAttribute
¨¨F X
)
¨¨X Y
}
¨¨Y Z
` is supported.
¨¨Z i
"
¨¨i j
)
¨¨j k
;
¨¨k l
}
≠≠ !
_complexTypeToBuild
∞∞ 
[
∞∞ 
	knownType
∞∞ !
.
∞∞! "
Type
∞∞" &
]
∞∞& '
=
∞∞( )&
GetDataContractNamespace
∞∞* B
(
∞∞B C
	knownType
∞∞C L
.
∞∞L M
Type
∞∞M Q
)
∞∞Q R
;
∞∞R S
DiscoverTypes
≥≥ 
(
≥≥ 
	knownType
≥≥ 
.
≥≥ 
Type
≥≥  
,
≥≥  !
false
≥≥" '
)
≥≥' (
;
≥≥( )
}
¥¥ 
if
∂∂ 
(
∂∂ 
HasBaseType
∂∂ 
(
∂∂ 
type
∂∂ 
)
∂∂ 
&&
∂∂ 
type
∂∂  
.
∂∂  !
BaseType
∂∂! )
!=
∂∂* ,
null
∂∂- 1
)
∂∂1 2
{
∑∑ !
_complexTypeToBuild
∏∏ 
[
∏∏ 
type
∏∏ 
.
∏∏ 
BaseType
∏∏ %
]
∏∏% &
=
∏∏' (&
GetDataContractNamespace
∏∏) A
(
∏∏A B
type
∏∏B F
.
∏∏F G
BaseType
∏∏G O
)
∏∏O P
;
∏∏P Q
DiscoverTypes
ππ 
(
ππ 
type
ππ 
.
ππ 
BaseType
ππ 
,
ππ  
false
ππ! &
)
ππ& '
;
ππ' (
}
∫∫ 
if
ºº 
(
ºº 
(
ºº 
type
ºº 
.
ºº 
IsArray
ºº 
||
ºº 
typeof
ºº 
(
ºº 
IEnumerable
ºº *
)
ºº* +
.
ºº+ ,
IsAssignableFrom
ºº, <
(
ºº< =
type
ºº= A
)
ººA B
)
ººB C
&&
ººD F
type
ººG K
.
ººK L
IsGenericType
ººL Y
)
ººY Z
{
ΩΩ 
var
ææ 
genericType
ææ 
=
ææ 
GetGenericType
ææ $
(
ææ$ %
type
ææ% )
)
ææ) *
;
ææ* +
var
øø 
(
øø 	
name
øø	 
,
øø 
_
øø 
)
øø 
=
øø 
ResolveSystemType
øø %
(
øø% &
genericType
øø& 1
)
øø1 2
;
øø2 3
if
¿¿ 
(
¿¿ 
string
¿¿ 
.
¿¿ 
IsNullOrEmpty
¿¿ 
(
¿¿ 
name
¿¿ !
)
¿¿! "
)
¿¿" #
{
¡¡ !
_complexTypeToBuild
¬¬ 
[
¬¬ 
genericType
¬¬ $
]
¬¬$ %
=
¬¬& '&
GetDataContractNamespace
¬¬( @
(
¬¬@ A
genericType
¬¬A L
)
¬¬L M
;
¬¬M N
DiscoverTypes
√√ 
(
√√ 
genericType
√√ 
,
√√ 
true
√√  $
)
√√$ %
;
√√% &
}
ƒƒ 
}
≈≈ 
foreach
«« 

(
«« 
var
«« 
property
«« 
in
«« 
type
««  
.
««  !
GetProperties
««! .
(
««. /
)
««/ 0
.
««0 1
Where
««1 6
(
««6 7
prop
««7 ;
=>
««< >
prop
»» 

.
»»
 
DeclaringType
»» 
==
»» 
type
»»  
&&
…… 
prop
……	 
.
…… 
CustomAttributes
…… 
.
…… 
All
…… "
(
……" #
attr
……# '
=>
……( *
attr
……+ /
.
……/ 0
AttributeType
……0 =
.
……= >
Name
……> B
!=
……C E
$str
……F a
)
……a b
&&
   
!
  	 

prop
  
 
.
   
PropertyType
   
.
   
IsPrimitive
   '
&&
ÀÀ 
!
ÀÀ	 


SysTypeDic
ÀÀ
 
.
ÀÀ 
ContainsKey
ÀÀ  
(
ÀÀ  !
prop
ÀÀ! %
.
ÀÀ% &
PropertyType
ÀÀ& 2
.
ÀÀ2 3
FullName
ÀÀ3 ;
)
ÀÀ; <
&&
ÃÃ 
prop
ÃÃ	 
.
ÃÃ 
PropertyType
ÃÃ 
!=
ÃÃ 
typeof
ÃÃ $
(
ÃÃ$ %
	ValueType
ÃÃ% .
)
ÃÃ. /
&&
ÕÕ 
prop
ÕÕ	 
.
ÕÕ 
PropertyType
ÕÕ 
!=
ÕÕ 
typeof
ÕÕ $
(
ÕÕ$ %
DateTimeOffset
ÕÕ% 3
)
ÕÕ3 4
)
ÕÕ4 5
)
ÕÕ5 6
{
ŒŒ 
Type
œœ 
propertyType
œœ	 
;
œœ 
var
–– 
underlyingType
–– 
=
–– 
Nullable
–– !
.
––! "
GetUnderlyingType
––" 3
(
––3 4
property
––4 <
.
––< =
PropertyType
––= I
)
––I J
;
––J K
if
““ 
(
““ 
Nullable
““ 
.
““ 
GetUnderlyingType
““ "
(
““" #
property
““# +
.
““+ ,
PropertyType
““, 8
)
““8 9
!=
““: <
null
““= A
)
““A B
{
”” 
propertyType
‘‘ 
=
‘‘ 
underlyingType
‘‘ "
;
‘‘" #
}
’’ 
else
÷÷ 
if
÷÷	 
(
÷÷ 
property
÷÷ 
.
÷÷ 
PropertyType
÷÷ "
.
÷÷" #
IsArray
÷÷# *
||
÷÷+ -
typeof
÷÷. 4
(
÷÷4 5
IEnumerable
÷÷5 @
)
÷÷@ A
.
÷÷A B
IsAssignableFrom
÷÷B R
(
÷÷R S
property
÷÷S [
.
÷÷[ \
PropertyType
÷÷\ h
)
÷÷h i
)
÷÷i j
{
◊◊ 
propertyType
ÿÿ 
=
ÿÿ 
property
ÿÿ 
.
ÿÿ 
PropertyType
ÿÿ )
.
ÿÿ) *
IsArray
ÿÿ* 1
?
ŸŸ 
property
ŸŸ 
.
ŸŸ 
PropertyType
ŸŸ 
.
ŸŸ 
GetElementType
ŸŸ ,
(
ŸŸ, -
)
ŸŸ- .
:
⁄⁄ 
GetGenericType
⁄⁄ 
(
⁄⁄ 
property
⁄⁄ 
.
⁄⁄  
PropertyType
⁄⁄  ,
)
⁄⁄, -
;
⁄⁄- .!
_complexTypeToBuild
€€ 
[
€€ 
property
€€ !
.
€€! "
PropertyType
€€" .
]
€€. /
=
€€0 1&
GetDataContractNamespace
€€2 J
(
€€J K
property
€€K S
.
€€S T
PropertyType
€€T `
)
€€` a
;
€€a b
}
‹‹ 
else
›› 
{
ﬁﬁ 
propertyType
ﬂﬂ 
=
ﬂﬂ 
property
ﬂﬂ 
.
ﬂﬂ 
PropertyType
ﬂﬂ )
;
ﬂﬂ) *
}
‡‡ 
if
‚‚ 
(
‚‚ 
propertyType
‚‚ 
!=
‚‚ 
null
‚‚ 
&&
‚‚ 
!
‚‚  !
propertyType
‚‚! -
.
‚‚- .
IsPrimitive
‚‚. 9
&&
‚‚: <
!
‚‚= >

SysTypeDic
‚‚> H
.
‚‚H I
ContainsKey
‚‚I T
(
‚‚T U
propertyType
‚‚U a
.
‚‚a b
FullName
‚‚b j
)
‚‚j k
)
‚‚k l
{
„„ 
if
‰‰ 
(
‰‰ 	
propertyType
‰‰	 
==
‰‰ 
type
‰‰ 
)
‰‰ 
{
ÂÂ 
continue
ÊÊ 
;
ÊÊ 
}
ÁÁ !
_complexTypeToBuild
ÈÈ 
[
ÈÈ 
propertyType
ÈÈ %
]
ÈÈ% &
=
ÈÈ' (&
GetDataContractNamespace
ÈÈ) A
(
ÈÈA B
propertyType
ÈÈB N
)
ÈÈN O
;
ÈÈO P
DiscoverTypes
ÍÍ 
(
ÍÍ 
propertyType
ÍÍ 
,
ÍÍ  
false
ÍÍ! &
)
ÍÍ& '
;
ÍÍ' (
}
ÎÎ 
}
ÏÏ 
}
ÌÌ 
private
ÔÔ 	
void
ÔÔ
 
	WriteEnum
ÔÔ 
(
ÔÔ !
XmlDictionaryWriter
ÔÔ ,
writer
ÔÔ- 3
,
ÔÔ3 4
Type
ÔÔ5 9
type
ÔÔ: >
)
ÔÔ> ?
{
 
if
ÒÒ 
(
ÒÒ 
type
ÒÒ 
.
ÒÒ 
IsByRef
ÒÒ 
)
ÒÒ 
{
ÚÚ 
type
ÛÛ 
=
ÛÛ	 

type
ÛÛ 
.
ÛÛ 
GetElementType
ÛÛ 
(
ÛÛ 
)
ÛÛ  
;
ÛÛ  !
}
ÙÙ 
var
ˆˆ 
typeName
ˆˆ 
=
ˆˆ 
GetTypeName
ˆˆ 
(
ˆˆ 
type
ˆˆ "
)
ˆˆ" #
;
ˆˆ# $
if
¯¯ 
(
¯¯ 
!
¯¯ 
_builtEnumTypes
¯¯ 
.
¯¯ 
Contains
¯¯  
(
¯¯  !
typeName
¯¯! )
)
¯¯) *
)
¯¯* +
{
˘˘ 
writer
˙˙ 

.
˙˙
 
WriteStartElement
˙˙ 
(
˙˙ 
$str
˙˙ !
,
˙˙! "
$str
˙˙# /
,
˙˙/ 0

Namespaces
˙˙1 ;
.
˙˙; <
	XMLNS_XSD
˙˙< E
)
˙˙E F
;
˙˙F G
writer
˚˚ 

.
˚˚
 "
WriteAttributeString
˚˚ 
(
˚˚  
$str
˚˚  &
,
˚˚& '
typeName
˚˚( 0
)
˚˚0 1
;
˚˚1 2
writer
¸¸ 

.
¸¸
 
WriteStartElement
¸¸ 
(
¸¸ 
$str
¸¸ !
,
¸¸! "
$str
¸¸# 0
,
¸¸0 1

Namespaces
¸¸2 <
.
¸¸< =
	XMLNS_XSD
¸¸= F
)
¸¸F G
;
¸¸G H
writer
˝˝ 

.
˝˝
 "
WriteAttributeString
˝˝ 
(
˝˝  
$str
˝˝  &
,
˝˝& '
$str
˝˝( 3
)
˝˝3 4
;
˝˝4 5
foreach
ˇˇ 
(
ˇˇ 
var
ˇˇ 
name
ˇˇ 
in
ˇˇ 
Enum
ˇˇ 
.
ˇˇ 
GetNames
ˇˇ &
(
ˇˇ& '
type
ˇˇ' +
)
ˇˇ+ ,
)
ˇˇ, -
{
ÄÄ 
writer
ÅÅ 
.
ÅÅ 
WriteStartElement
ÅÅ 
(
ÅÅ 
$str
ÅÅ "
,
ÅÅ" #
$str
ÅÅ$ 1
,
ÅÅ1 2

Namespaces
ÅÅ3 =
.
ÅÅ= >
	XMLNS_XSD
ÅÅ> G
)
ÅÅG H
;
ÅÅH I
var
ÑÑ !
enumMemberAttribute
ÑÑ	 
=
ÑÑ 
(
ÑÑ  
(
ÑÑ  !!
EnumMemberAttribute
ÑÑ! 4
[
ÑÑ4 5
]
ÑÑ5 6
)
ÑÑ6 7
type
ÑÑ7 ;
.
ÑÑ; <
GetField
ÑÑ< D
(
ÑÑD E
name
ÑÑE I
)
ÑÑI J
.
ÑÑJ K!
GetCustomAttributes
ÑÑK ^
(
ÑÑ^ _
typeof
ÑÑ_ e
(
ÑÑe f!
EnumMemberAttribute
ÑÑf y
)
ÑÑy z
,
ÑÑz {
trueÑÑ| Ä
)ÑÑÄ Å
)ÑÑÅ Ç
.ÑÑÇ É
SingleOrDefaultÑÑÉ í
(ÑÑí ì
)ÑÑì î
;ÑÑî ï
var
ÖÖ 
value
ÖÖ	 
=
ÖÖ !
enumMemberAttribute
ÖÖ $
is
ÖÖ% '
null
ÖÖ( ,
||
ÖÖ- /
!
ÖÖ0 1!
enumMemberAttribute
ÖÖ1 D
.
ÖÖD E"
IsValueSetExplicitly
ÖÖE Y
?
ÜÜ 
name
ÜÜ 
:
áá !
enumMemberAttribute
áá 
.
áá 
Value
áá !
;
áá! "
writer
ââ 
.
ââ "
WriteAttributeString
ââ  
(
ââ  !
$str
ââ! (
,
ââ( )
value
ââ* /
)
ââ/ 0
;
ââ0 1
writer
ää 
.
ää 
WriteEndElement
ää 
(
ää 
)
ää 
;
ää 
}
ãã 
writer
çç 

.
çç
 
WriteEndElement
çç 
(
çç 
)
çç 
;
çç 
writer
éé 

.
éé
 
WriteEndElement
éé 
(
éé 
)
éé 
;
éé 
_builtEnumTypes
êê 
.
êê 
Add
êê 
(
êê 
typeName
êê  
)
êê  !
;
êê! "
}
ëë 
}
íí 
private
îî 	
void
îî
 
WriteComplexType
îî 
(
îî  !
XmlDictionaryWriter
îî  3
writer
îî4 :
,
îî: ;
Type
îî< @
type
îîA E
)
îîE F
{
ïï 
var
ññ 
toBuildName
ññ 
=
ññ 
GetTypeName
ññ  
(
ññ  !
type
ññ! %
)
ññ% &
;
ññ& '
if
òò 
(
òò  
_builtComplexTypes
òò 
.
òò 
Contains
òò "
(
òò" #
toBuildName
òò# .
)
òò. /
)
òò/ 0
{
ôô 
return
öö 

;
öö
 
}
õõ 
writer
ùù 	
.
ùù	 

WriteStartElement
ùù
 
(
ùù 
$str
ùù  
,
ùù  !
$str
ùù" /
,
ùù/ 0

Namespaces
ùù1 ;
.
ùù; <
	XMLNS_XSD
ùù< E
)
ùùE F
;
ùùF G
writer
ûû 	
.
ûû	 
"
WriteAttributeString
ûû
 
(
ûû 
$str
ûû %
,
ûû% &
toBuildName
ûû' 2
)
ûû2 3
;
ûû3 4
writer
üü 	
.
üü	 
"
WriteAttributeString
üü
 
(
üü 
$str
üü &
,
üü& '
$str
üü( -
,
üü- .
null
üü/ 3
,
üü3 4

Namespaces
üü5 ?
.
üü? @
SERIALIZATION_NS
üü@ P
)
üüP Q
;
üüQ R
if
°° 
(
°° 
type
°° 
.
°° 
IsValueType
°° 
&&
°° 
ResolveSystemType
°° ,
(
°°, -
type
°°- 1
)
°°1 2
.
°°2 3
name
°°3 7
==
°°8 :
null
°°; ?
)
°°? @
{
¢¢ 
writer
££ 

.
££
 
WriteStartElement
££ 
(
££ 
$str
££ !
,
££! "
$str
££# /
,
££/ 0

Namespaces
££1 ;
.
££; <
	XMLNS_XSD
££< E
)
££E F
;
££F G
writer
§§ 

.
§§
 
WriteStartElement
§§ 
(
§§ 
$str
§§ !
,
§§! "
$str
§§# ,
,
§§, -

Namespaces
§§. 8
.
§§8 9
	XMLNS_XSD
§§9 B
)
§§B C
;
§§C D
writer
•• 

.
••
 
WriteStartElement
•• 
(
•• 
$str
•• *
,
••* +

Namespaces
••, 6
.
••6 7
SERIALIZATION_NS
••7 G
)
••G H
;
••H I
writer
¶¶ 

.
¶¶
 

WriteValue
¶¶ 
(
¶¶ 
true
¶¶ 
)
¶¶ 
;
¶¶ 
writer
ßß 

.
ßß
 
WriteEndElement
ßß 
(
ßß 
)
ßß 
;
ßß 
writer
®® 

.
®®
 
WriteEndElement
®® 
(
®® 
)
®® 
;
®® 
writer
©© 

.
©©
 
WriteEndElement
©© 
(
©© 
)
©© 
;
©© 
}
™™ 
var
¨¨ 
hasBaseType
¨¨ 
=
¨¨ 
HasBaseType
¨¨  
(
¨¨  !
type
¨¨! %
)
¨¨% &
;
¨¨& '
if
ÆÆ 
(
ÆÆ 
hasBaseType
ÆÆ 
)
ÆÆ 
{
ØØ 
writer
∞∞ 

.
∞∞
 
WriteStartElement
∞∞ 
(
∞∞ 
$str
∞∞ !
,
∞∞! "
$str
∞∞# 3
,
∞∞3 4

Namespaces
∞∞5 ?
.
∞∞? @
	XMLNS_XSD
∞∞@ I
)
∞∞I J
;
∞∞J K
writer
≤≤ 

.
≤≤
 "
WriteAttributeString
≤≤ 
(
≤≤  
$str
≤≤  '
,
≤≤' (
$str
≤≤) 0
)
≤≤0 1
;
≤≤1 2
writer
¥¥ 

.
¥¥
 
WriteStartElement
¥¥ 
(
¥¥ 
$str
¥¥ !
,
¥¥! "
$str
¥¥# .
,
¥¥. /

Namespaces
¥¥0 :
.
¥¥: ;
	XMLNS_XSD
¥¥; D
)
¥¥D E
;
¥¥E F
var
∂∂ 
modelNamespace
∂∂ 
=
∂∂ &
GetDataContractNamespace
∂∂ 1
(
∂∂1 2
type
∂∂2 6
.
∂∂6 7
BaseType
∂∂7 ?
)
∂∂? @
;
∂∂@ A
var
∏∏ 
typeName
∏∏ 
=
∏∏ 
GetTypeName
∏∏ 
(
∏∏ 
type
∏∏ #
.
∏∏# $
BaseType
∏∏$ ,
)
∏∏, -
;
∏∏- .
if
∫∫ 
(
∫∫ 
_schemaNamespace
∫∫ 
!=
∫∫ 
modelNamespace
∫∫ *
)
∫∫* +
{
ªª 
var
ºº 
ns
ºº	 
=
ºº 
$"
ºº 
q
ºº 
{
ºº 
_namespaceCounter
ºº #
++
ºº# %
}
ºº% &
"
ºº& '
;
ºº' (
writer
ΩΩ 
.
ΩΩ "
WriteAttributeString
ΩΩ  
(
ΩΩ  !
$str
ΩΩ! '
,
ΩΩ' (
$"
ΩΩ) +
{
ΩΩ+ ,
ns
ΩΩ, .
}
ΩΩ. /
:
ΩΩ/ 0
{
ΩΩ0 1
typeName
ΩΩ1 9
}
ΩΩ9 :
"
ΩΩ: ;
)
ΩΩ; <
;
ΩΩ< =
writer
ææ 
.
ææ "
WriteAttributeString
ææ  
(
ææ  !
$str
ææ! (
,
ææ( )
ns
ææ* ,
,
ææ, -
null
ææ. 2
,
ææ2 3
modelNamespace
ææ4 B
)
ææB C
;
ææC D
}
øø 
else
¿¿ 
{
¡¡ 
writer
¬¬ 
.
¬¬ "
WriteAttributeString
¬¬  
(
¬¬  !
$str
¬¬! '
,
¬¬' (
$"
¬¬) +
tns:
¬¬+ /
{
¬¬/ 0
typeName
¬¬0 8
}
¬¬8 9
"
¬¬9 :
)
¬¬: ;
;
¬¬; <
}
√√ 
}
ƒƒ 
writer
∆∆ 	
.
∆∆	 

WriteStartElement
∆∆
 
(
∆∆ 
$str
∆∆  
,
∆∆  !
$str
∆∆" ,
,
∆∆, -

Namespaces
∆∆. 8
.
∆∆8 9
	XMLNS_XSD
∆∆9 B
)
∆∆B C
;
∆∆C D
if
»» 
(
»» 
type
»» 
.
»» 
IsArray
»» 
||
»» 
typeof
»» 
(
»» 
IEnumerable
»» )
)
»») *
.
»»* +
IsAssignableFrom
»»+ ;
(
»»; <
type
»»< @
)
»»@ A
)
»»A B
{
…… 
var
   
elementType
   
=
   
type
   
.
   
IsArray
   "
?
  # $
type
  % )
.
  ) *
GetElementType
  * 8
(
  8 9
)
  9 :
:
  ; <
GetGenericType
  = K
(
  K L
type
  L P
)
  P Q
;
  Q R
string
ÃÃ 

elementName
ÃÃ 
=
ÃÃ 
null
ÃÃ 
;
ÃÃ 
var
ÕÕ -
collectionDataContractAttribute
ÕÕ '
=
ÕÕ( )
type
ÕÕ* .
.
ÕÕ. / 
GetCustomAttribute
ÕÕ/ A
<
ÕÕA B-
CollectionDataContractAttribute
ÕÕB a
>
ÕÕa b
(
ÕÕb c
)
ÕÕc d
;
ÕÕd e
if
ŒŒ 
(
ŒŒ -
collectionDataContractAttribute
ŒŒ '
!=
ŒŒ( *
null
ŒŒ+ /
&&
ŒŒ0 2-
collectionDataContractAttribute
ŒŒ3 R
.
ŒŒR S%
IsItemNameSetExplicitly
ŒŒS j
)
ŒŒj k
{
œœ 
elementName
–– 
=
–– -
collectionDataContractAttribute
–– 2
.
––2 3
ItemName
––3 ;
;
––; <
}
—— 
AddSchemaType
”” 
(
”” 
writer
”” 
,
”” 
elementType
”” %
,
””% &
elementName
””' 2
,
””2 3
true
””4 8
,
””8 9&
GetDataContractNamespace
””: R
(
””R S
type
””S W
)
””W X
)
””X Y
;
””Y Z
}
‘‘ 
else
’’ 
{
÷÷ 
var
◊◊ 

properties
◊◊ 
=
◊◊ 
type
◊◊ 
.
◊◊ 
GetProperties
◊◊ '
(
◊◊' (
)
◊◊( )
.
◊◊) *
Where
◊◊* /
(
◊◊/ 0
prop
◊◊0 4
=>
◊◊5 7
prop
ÿÿ 	
.
ÿÿ	 

DeclaringType
ÿÿ
 
==
ÿÿ 
type
ÿÿ 
&&
ÿÿ  "
prop
ŸŸ 	
.
ŸŸ	 

CustomAttributes
ŸŸ
 
.
ŸŸ 
All
ŸŸ 
(
ŸŸ 
attr
ŸŸ #
=>
ŸŸ$ &
attr
ŸŸ' +
.
ŸŸ+ ,
AttributeType
ŸŸ, 9
.
ŸŸ9 :
Name
ŸŸ: >
!=
ŸŸ? A
$str
ŸŸB ]
)
ŸŸ] ^
)
ŸŸ^ _
;
ŸŸ_ `
var
€€  
dataMembersToWrite
€€ 
=
€€ 
new
€€  
List
€€! %
<
€€% &#
DataMemberDescription
€€& ;
>
€€; <
(
€€< =
)
€€= >
;
€€> ?
foreach
ﬂﬂ 
(
ﬂﬂ 
var
ﬂﬂ 
property
ﬂﬂ 
in
ﬂﬂ 

properties
ﬂﬂ '
)
ﬂﬂ' (
{
‡‡ 
var
·· 
propertyName
··	 
=
·· 
property
··  
.
··  !
Name
··! %
;
··% &
var
„„ 

attributes
„„	 
=
„„ 
property
„„ 
.
„„ !
GetCustomAttributes
„„ 2
(
„„2 3
true
„„3 7
)
„„7 8
;
„„8 9
int
‰‰ 
order
‰‰	 
=
‰‰ 
$num
‰‰ 
;
‰‰ 
bool
ÂÂ 	

isRequired
ÂÂ
 
=
ÂÂ 
false
ÂÂ 
;
ÂÂ 
foreach
ÊÊ 
(
ÊÊ 
var
ÊÊ 
attr
ÊÊ 
in
ÊÊ 

attributes
ÊÊ $
)
ÊÊ$ %
{
ÁÁ 
if
ËË 
(
ËË	 

attr
ËË
 
is
ËË !
DataMemberAttribute
ËË %#
dataContractAttribute
ËË& ;
)
ËË; <
{
ÈÈ 
if
ÍÍ 	
(
ÍÍ
 #
dataContractAttribute
ÍÍ  
.
ÍÍ  !!
IsNameSetExplicitly
ÍÍ! 4
)
ÍÍ4 5
{
ÎÎ 
propertyName
ÏÏ 
=
ÏÏ #
dataContractAttribute
ÏÏ ,
.
ÏÏ, -
Name
ÏÏ- 1
;
ÏÏ1 2
}
ÌÌ 
if
ÔÔ 	
(
ÔÔ
 #
dataContractAttribute
ÔÔ  
.
ÔÔ  !
Order
ÔÔ! &
>
ÔÔ' (
$num
ÔÔ) *
)
ÔÔ* +
{
 
order
ÒÒ 
=
ÒÒ #
dataContractAttribute
ÒÒ %
.
ÒÒ% &
Order
ÒÒ& +
;
ÒÒ+ ,
}
ÚÚ 

isRequired
ÙÙ 
=
ÙÙ #
dataContractAttribute
ÙÙ )
.
ÙÙ) *

IsRequired
ÙÙ* 4
;
ÙÙ4 5
break
ˆˆ 
;
ˆˆ 
}
˜˜ 
}
¯¯  
dataMembersToWrite
˙˙ 
.
˙˙ 
Add
˙˙ 
(
˙˙ 
new
˙˙ #
DataMemberDescription
˙˙  5
{
˚˚ 
Name
¸¸ 

=
¸¸ 
propertyName
¸¸ 
,
¸¸ 
Type
˝˝ 

=
˝˝ 
property
˝˝ 
.
˝˝ 
PropertyType
˝˝ "
,
˝˝" #
Order
˛˛ 
=
˛˛ 
order
˛˛ 
,
˛˛ 

IsRequired
ˇˇ 
=
ˇˇ 

isRequired
ˇˇ 
}
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
p
ÉÉ 
in
ÉÉ  
dataMembersToWrite
ÉÉ (
.
ÉÉ( )
OrderBy
ÉÉ) 0
(
ÉÉ0 1
x
ÉÉ1 2
=>
ÉÉ3 5
x
ÉÉ6 7
.
ÉÉ7 8
Order
ÉÉ8 =
)
ÉÉ= >
.
ÉÉ> ?
ThenBy
ÉÉ? E
(
ÉÉE F
p
ÉÉF G
=>
ÉÉH J
p
ÉÉK L
.
ÉÉL M
Name
ÉÉM Q
,
ÉÉQ R
StringComparer
ÉÉS a
.
ÉÉa b
Ordinal
ÉÉb i
)
ÉÉi j
)
ÉÉj k
{
ÑÑ 
AddSchemaType
ÖÖ 
(
ÖÖ 
writer
ÖÖ 
,
ÖÖ 
p
ÖÖ 
.
ÖÖ 
Type
ÖÖ !
,
ÖÖ! "
p
ÖÖ# $
.
ÖÖ$ %
Name
ÖÖ% )
,
ÖÖ) *
false
ÖÖ+ 0
,
ÖÖ0 1&
GetDataContractNamespace
ÖÖ2 J
(
ÖÖJ K
p
ÖÖK L
.
ÖÖL M
Type
ÖÖM Q
)
ÖÖQ R
,
ÖÖR S
p
ÖÖT U
.
ÖÖU V

IsRequired
ÖÖV `
)
ÖÖ` a
;
ÖÖa b
}
ÜÜ 
}
áá 
writer
ââ 	
.
ââ	 

WriteEndElement
ââ
 
(
ââ 
)
ââ 
;
ââ 
if
ãã 
(
ãã 
hasBaseType
ãã 
)
ãã 
{
åå 
writer
çç 

.
çç
 
WriteEndElement
çç 
(
çç 
)
çç 
;
çç 
writer
éé 

.
éé
 
WriteEndElement
éé 
(
éé 
)
éé 
;
éé 
}
èè 
writer
ëë 	
.
ëë	 

WriteEndElement
ëë
 
(
ëë 
)
ëë 
;
ëë  
_builtComplexTypes
ìì 
.
ìì 
Add
ìì 
(
ìì 
toBuildName
ìì %
)
ìì% &
;
ìì& '
}
îî 
private
ññ 	
void
ññ
 
AddMessages
ññ 
(
ññ !
XmlDictionaryWriter
ññ .
writer
ññ/ 5
)
ññ5 6
{
óó 
foreach
òò 

(
òò 
var
òò 
	operation
òò 
in
òò 
_service
òò %
.
òò% &

Operations
òò& 0
)
òò0 1
{
ôô 
writer
õõ 

.
õõ
 
WriteStartElement
õõ 
(
õõ 
$str
õõ #
,
õõ# $
$str
õõ% .
,
õõ. /

Namespaces
õõ0 :
.
õõ: ;
WSDL_NS
õõ; B
)
õõB C
;
õõC D
writer
úú 

.
úú
 "
WriteAttributeString
úú 
(
úú  
$str
úú  &
,
úú& '
$"
úú( *
{
úú* +
BindingType
úú+ 6
}
úú6 7
_
úú7 8
{
úú8 9
	operation
úú9 B
.
úúB C
Name
úúC G
}
úúG H
_InputMessage
úúH U
"
úúU V
)
úúV W
;
úúW X
writer
ùù 

.
ùù
 
WriteStartElement
ùù 
(
ùù 
$str
ùù #
,
ùù# $
$str
ùù% +
,
ùù+ ,

Namespaces
ùù- 7
.
ùù7 8
WSDL_NS
ùù8 ?
)
ùù? @
;
ùù@ A
writer
ûû 

.
ûû
 "
WriteAttributeString
ûû 
(
ûû  
$str
ûû  &
,
ûû& '
$str
ûû( 4
)
ûû4 5
;
ûû5 6
string
†† 

inputElement
†† 
=
†† 
$str
††  
+
††! "
	operation
††# ,
.
††, -
Name
††- 1
;
††1 2
if
°° 
(
°° 
	operation
°° 
.
°° 
Contract
°° 
.
°° 
Name
°° 
!=
°°  "
BindingType
°°# .
)
°°. /
{
¢¢ 
var
££ 
ns
££	 
=
££ 
$"
££ 
q
££ 
{
££ 
_namespaceCounter
££ #
++
££# %
}
££% &
"
££& '
;
££' (
writer
§§ 
.
§§ !
WriteXmlnsAttribute
§§ 
(
§§  
$"
§§  "
{
§§" #
ns
§§# %
}
§§% &
"
§§& '
,
§§' (
	operation
§§) 2
.
§§2 3
Contract
§§3 ;
.
§§; <
	Namespace
§§< E
)
§§E F
;
§§F G
inputElement
¶¶ 
=
¶¶ 
$"
¶¶ 
{
¶¶ 
ns
¶¶ 
}
¶¶ 
:
¶¶ 
{
¶¶ 
	operation
¶¶ %
.
¶¶% &
Name
¶¶& *
}
¶¶* +
"
¶¶+ ,
;
¶¶, -
}
ßß 
writer
©© 

.
©©
 "
WriteAttributeString
©© 
(
©©  
$str
©©  )
,
©©) *
inputElement
©©+ 7
)
©©7 8
;
©©8 9
writer
™™ 

.
™™
 
WriteEndElement
™™ 
(
™™ 
)
™™ 
;
™™ 
writer
´´ 

.
´´
 
WriteEndElement
´´ 
(
´´ 
)
´´ 
;
´´ 
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 	
	operation
ÆÆ	 
.
ÆÆ 
IsOneWay
ÆÆ 
)
ÆÆ 
{
ØØ 
writer
∞∞ 
.
∞∞ 
WriteStartElement
∞∞ 
(
∞∞ 
$str
∞∞ $
,
∞∞$ %
$str
∞∞& /
,
∞∞/ 0

Namespaces
∞∞1 ;
.
∞∞; <
WSDL_NS
∞∞< C
)
∞∞C D
;
∞∞D E
writer
±± 
.
±± "
WriteAttributeString
±±  
(
±±  !
$str
±±! '
,
±±' (
$"
±±) +
{
±±+ ,
BindingType
±±, 7
}
±±7 8
_
±±8 9
{
±±9 :
	operation
±±: C
.
±±C D
Name
±±D H
}
±±H I
_OutputMessage
±±I W
"
±±W X
)
±±X Y
;
±±Y Z
writer
≤≤ 
.
≤≤ 
WriteStartElement
≤≤ 
(
≤≤ 
$str
≤≤ $
,
≤≤$ %
$str
≤≤& ,
,
≤≤, -

Namespaces
≤≤. 8
.
≤≤8 9
WSDL_NS
≤≤9 @
)
≤≤@ A
;
≤≤A B
writer
≥≥ 
.
≥≥ "
WriteAttributeString
≥≥  
(
≥≥  !
$str
≥≥! '
,
≥≥' (
$str
≥≥) 5
)
≥≥5 6
;
≥≥6 7
string
µµ 
outputElement
µµ 
=
µµ 
$str
µµ "
+
µµ# $
	operation
µµ% .
.
µµ. /
Name
µµ/ 3
+
µµ4 5
$str
µµ6 @
;
µµ@ A
if
∂∂ 
(
∂∂ 	
	operation
∂∂	 
.
∂∂ 
Contract
∂∂ 
.
∂∂ 
Name
∂∂  
!=
∂∂! #
BindingType
∂∂$ /
)
∂∂/ 0
{
∑∑ 
var
∏∏ 	
ns
∏∏
 
=
∏∏ 
$"
∏∏ 
q
∏∏ 
{
∏∏ 
_namespaceCounter
∏∏ $
++
∏∏$ &
}
∏∏& '
"
∏∏' (
;
∏∏( )
writer
ππ 
.
ππ !
WriteXmlnsAttribute
ππ  
(
ππ  !
$"
ππ! #
{
ππ# $
ns
ππ$ &
}
ππ& '
"
ππ' (
,
ππ( )
	operation
ππ* 3
.
ππ3 4
Contract
ππ4 <
.
ππ< =
	Namespace
ππ= F
)
ππF G
;
ππG H
outputElement
ªª 
=
ªª 
$"
ªª 
{
ªª 
ns
ªª 
}
ªª 
:
ªª 
{
ªª 
	operation
ªª '
.
ªª' (
Name
ªª( ,
}
ªª, -
Response
ªª- 5
"
ªª5 6
;
ªª6 7
}
ºº 
writer
ææ 
.
ææ "
WriteAttributeString
ææ  
(
ææ  !
$str
ææ! *
,
ææ* +
outputElement
ææ, 9
)
ææ9 :
;
ææ: ;
writer
øø 
.
øø 
WriteEndElement
øø 
(
øø 
)
øø 
;
øø 
writer
¿¿ 
.
¿¿ 
WriteEndElement
¿¿ 
(
¿¿ 
)
¿¿ 
;
¿¿ 
}
¡¡ 
AddMessageFaults
√√ 
(
√√ 
writer
√√ 
,
√√ 
	operation
√√ &
)
√√& '
;
√√' (
}
ƒƒ 
}
≈≈ 
private
«« 	
void
««
 
AddMessageFaults
«« 
(
««  !
XmlDictionaryWriter
««  3
writer
««4 :
,
««: ;"
OperationDescription
««< P
	operation
««Q Z
)
««Z [
{
»» 
foreach
…… 

(
…… 
Type
…… 
fault
…… 
in
…… 
	operation
…… #
.
……# $
Faults
……$ *
)
……* +
{
   
writer
ÀÀ 

.
ÀÀ
 
WriteStartElement
ÀÀ 
(
ÀÀ 
$str
ÀÀ #
,
ÀÀ# $
$str
ÀÀ% .
,
ÀÀ. /

Namespaces
ÀÀ0 :
.
ÀÀ: ;
WSDL_NS
ÀÀ; B
)
ÀÀB C
;
ÀÀC D
writer
ÃÃ 

.
ÃÃ
 "
WriteAttributeString
ÃÃ 
(
ÃÃ  
$str
ÃÃ  &
,
ÃÃ& '
$"
ÃÃ( *
{
ÃÃ* +
BindingType
ÃÃ+ 6
}
ÃÃ6 7
_
ÃÃ7 8
{
ÃÃ8 9
	operation
ÃÃ9 B
.
ÃÃB C
Name
ÃÃC G
}
ÃÃG H
_
ÃÃH I
{
ÃÃI J
fault
ÃÃJ O
.
ÃÃO P
Name
ÃÃP T
}
ÃÃT U 
Fault_FaultMessage
ÃÃU g
"
ÃÃg h
)
ÃÃh i
;
ÃÃi j
writer
ÕÕ 

.
ÕÕ
 
WriteStartElement
ÕÕ 
(
ÕÕ 
$str
ÕÕ #
,
ÕÕ# $
$str
ÕÕ% +
,
ÕÕ+ ,

Namespaces
ÕÕ- 7
.
ÕÕ7 8
WSDL_NS
ÕÕ8 ?
)
ÕÕ? @
;
ÕÕ@ A
writer
ŒŒ 

.
ŒŒ
 "
WriteAttributeString
ŒŒ 
(
ŒŒ  
$str
ŒŒ  &
,
ŒŒ& '
$str
ŒŒ( 0
)
ŒŒ0 1
;
ŒŒ1 2
var
œœ 
ns
œœ 

=
œœ 
$"
œœ 
q
œœ 
{
œœ 
_namespaceCounter
œœ "
++
œœ" $
}
œœ$ %
"
œœ% &
;
œœ& '
writer
–– 

.
––
 "
WriteAttributeString
–– 
(
––  
$str
––  )
,
––) *
$"
––+ -
{
––- .
ns
––. 0
}
––0 1
:
––1 2
{
––2 3
fault
––3 8
.
––8 9
Name
––9 =
}
––= >
"
––> ?
)
––? @
;
––@ A
writer
—— 

.
——
 "
WriteAttributeString
—— 
(
——  
$str
——  '
,
——' (
ns
——) +
,
——+ ,
null
——- 1
,
——1 2&
GetDataContractNamespace
——3 K
(
——K L
fault
——L Q
)
——Q R
)
——R S
;
——S T
writer
““ 

.
““
 
WriteEndElement
““ 
(
““ 
)
““ 
;
““ 
writer
”” 

.
””
 
WriteEndElement
”” 
(
”” 
)
”” 
;
”” 
}
‘‘ 
}
’’ 
private
◊◊ 	
void
◊◊
 
AddPortType
◊◊ 
(
◊◊ !
XmlDictionaryWriter
◊◊ .
writer
◊◊/ 5
)
◊◊5 6
{
ÿÿ 
writer
ŸŸ 	
.
ŸŸ	 

WriteStartElement
ŸŸ
 
(
ŸŸ 
$str
ŸŸ "
,
ŸŸ" #
$str
ŸŸ$ .
,
ŸŸ. /

Namespaces
ŸŸ0 :
.
ŸŸ: ;
WSDL_NS
ŸŸ; B
)
ŸŸB C
;
ŸŸC D
writer
⁄⁄ 	
.
⁄⁄	 
"
WriteAttributeString
⁄⁄
 
(
⁄⁄ 
$str
⁄⁄ %
,
⁄⁄% &
BindingType
⁄⁄' 2
)
⁄⁄2 3
;
⁄⁄3 4
foreach
€€ 

(
€€ 
var
€€ 
	operation
€€ 
in
€€ 
_service
€€ %
.
€€% &

Operations
€€& 0
)
€€0 1
{
‹‹ 
writer
›› 

.
››
 
WriteStartElement
›› 
(
›› 
$str
›› #
,
››# $
$str
››% 0
,
››0 1

Namespaces
››2 <
.
››< =
WSDL_NS
››= D
)
››D E
;
››E F
writer
ﬁﬁ 

.
ﬁﬁ
 "
WriteAttributeString
ﬁﬁ 
(
ﬁﬁ  
$str
ﬁﬁ  &
,
ﬁﬁ& '
	operation
ﬁﬁ( 1
.
ﬁﬁ1 2
Name
ﬁﬁ2 6
)
ﬁﬁ6 7
;
ﬁﬁ7 8
writer
ﬂﬂ 

.
ﬂﬂ
 
WriteStartElement
ﬂﬂ 
(
ﬂﬂ 
$str
ﬂﬂ #
,
ﬂﬂ# $
$str
ﬂﬂ% ,
,
ﬂﬂ, -

Namespaces
ﬂﬂ. 8
.
ﬂﬂ8 9
WSDL_NS
ﬂﬂ9 @
)
ﬂﬂ@ A
;
ﬂﬂA B
writer
‡‡ 

.
‡‡
 "
WriteAttributeString
‡‡ 
(
‡‡  
$str
‡‡  &
,
‡‡& '
$str
‡‡( 0
,
‡‡0 1

Namespaces
‡‡2 <
.
‡‡< =
WSAM_NS
‡‡= D
,
‡‡D E
	operation
‡‡F O
.
‡‡O P

SoapAction
‡‡P Z
)
‡‡Z [
;
‡‡[ \
writer
·· 

.
··
 "
WriteAttributeString
·· 
(
··  
$str
··  )
,
··) *
$"
··+ -
tns:
··- 1
{
··1 2
BindingType
··2 =
}
··= >
_
··> ?
{
··? @
	operation
··@ I
.
··I J
Name
··J N
}
··N O
_InputMessage
··O \
"
··\ ]
)
··] ^
;
··^ _
writer
‚‚ 

.
‚‚
 
WriteEndElement
‚‚ 
(
‚‚ 
)
‚‚ 
;
‚‚ 
if
‰‰ 
(
‰‰ 
!
‰‰ 	
	operation
‰‰	 
.
‰‰ 
IsOneWay
‰‰ 
)
‰‰ 
{
ÂÂ 
writer
ÊÊ 
.
ÊÊ 
WriteStartElement
ÊÊ 
(
ÊÊ 
$str
ÊÊ $
,
ÊÊ$ %
$str
ÊÊ& .
,
ÊÊ. /

Namespaces
ÊÊ0 :
.
ÊÊ: ;
WSDL_NS
ÊÊ; B
)
ÊÊB C
;
ÊÊC D
writer
ÁÁ 
.
ÁÁ "
WriteAttributeString
ÁÁ  
(
ÁÁ  !
$str
ÁÁ! '
,
ÁÁ' (
$str
ÁÁ) 1
,
ÁÁ1 2

Namespaces
ÁÁ3 =
.
ÁÁ= >
WSAM_NS
ÁÁ> E
,
ÁÁE F
	operation
ÁÁG P
.
ÁÁP Q

SoapAction
ÁÁQ [
+
ÁÁ\ ]
$str
ÁÁ^ h
)
ÁÁh i
;
ÁÁi j
writer
ËË 
.
ËË "
WriteAttributeString
ËË  
(
ËË  !
$str
ËË! *
,
ËË* +
$"
ËË, .
tns:
ËË. 2
{
ËË2 3
BindingType
ËË3 >
}
ËË> ?
_
ËË? @
{
ËË@ A
	operation
ËËA J
.
ËËJ K
Name
ËËK O
}
ËËO P
_OutputMessage
ËËP ^
"
ËË^ _
)
ËË_ `
;
ËË` a
writer
ÈÈ 
.
ÈÈ 
WriteEndElement
ÈÈ 
(
ÈÈ 
)
ÈÈ 
;
ÈÈ 
}
ÍÍ 
AddPortTypeFaults
ÏÏ 
(
ÏÏ 
writer
ÏÏ 
,
ÏÏ 
	operation
ÏÏ '
)
ÏÏ' (
;
ÏÏ( )
writer
ÓÓ 

.
ÓÓ
 
WriteEndElement
ÓÓ 
(
ÓÓ 
)
ÓÓ 
;
ÓÓ 
}
ÔÔ 
writer
ÒÒ 	
.
ÒÒ	 

WriteEndElement
ÒÒ
 
(
ÒÒ 
)
ÒÒ 
;
ÒÒ 
}
ÚÚ 
private
ÙÙ 	
void
ÙÙ
 
AddPortTypeFaults
ÙÙ  
(
ÙÙ  !!
XmlDictionaryWriter
ÙÙ! 4
writer
ÙÙ5 ;
,
ÙÙ; <"
OperationDescription
ÙÙ= Q
	operation
ÙÙR [
)
ÙÙ[ \
{
ıı 
foreach
ˆˆ 

(
ˆˆ 
Type
ˆˆ 
fault
ˆˆ 
in
ˆˆ 
	operation
ˆˆ #
.
ˆˆ# $
Faults
ˆˆ$ *
)
ˆˆ* +
{
˜˜ 
writer
¯¯ 

.
¯¯
 
WriteStartElement
¯¯ 
(
¯¯ 
$str
¯¯ #
,
¯¯# $
$str
¯¯% ,
,
¯¯, -

Namespaces
¯¯. 8
.
¯¯8 9
WSDL_NS
¯¯9 @
)
¯¯@ A
;
¯¯A B
writer
˘˘ 

.
˘˘
 "
WriteAttributeString
˘˘ 
(
˘˘  
$str
˘˘  &
,
˘˘& '
$str
˘˘( 0
,
˘˘0 1

Namespaces
˘˘2 <
.
˘˘< =
WSAM_NS
˘˘= D
,
˘˘D E
$"
˘˘F H
{
˘˘H I
	operation
˘˘I R
.
˘˘R S

SoapAction
˘˘S ]
}
˘˘] ^
{
˘˘^ _
fault
˘˘_ d
.
˘˘d e
Name
˘˘e i
}
˘˘i j
Fault
˘˘j o
"
˘˘o p
)
˘˘p q
;
˘˘q r
writer
˙˙ 

.
˙˙
 "
WriteAttributeString
˙˙ 
(
˙˙  
$str
˙˙  &
,
˙˙& '
$"
˙˙( *
{
˙˙* +
fault
˙˙+ 0
.
˙˙0 1
Name
˙˙1 5
}
˙˙5 6
Fault
˙˙6 ;
"
˙˙; <
)
˙˙< =
;
˙˙= >
writer
˚˚ 

.
˚˚
 "
WriteAttributeString
˚˚ 
(
˚˚  
$str
˚˚  )
,
˚˚) *
$"
˚˚+ -
tns:
˚˚- 1
{
˚˚1 2
_service
˚˚2 :
.
˚˚: ;
GeneralContract
˚˚; J
.
˚˚J K
Name
˚˚K O
}
˚˚O P
_
˚˚P Q
{
˚˚Q R
	operation
˚˚R [
.
˚˚[ \
Name
˚˚\ `
}
˚˚` a
_
˚˚a b
{
˚˚b c
fault
˚˚c h
.
˚˚h i
Name
˚˚i m
}
˚˚m n!
Fault_FaultMessage˚˚n Ä
"˚˚Ä Å
)˚˚Å Ç
;˚˚Ç É
writer
¸¸ 

.
¸¸
 
WriteEndElement
¸¸ 
(
¸¸ 
)
¸¸ 
;
¸¸ 
}
˝˝ 
}
˛˛ 
private
ÄÄ 	
void
ÄÄ
 

AddBinding
ÄÄ 
(
ÄÄ !
XmlDictionaryWriter
ÄÄ -
writer
ÄÄ. 4
)
ÄÄ4 5
{
ÅÅ 
writer
ÇÇ 	
.
ÇÇ	 

WriteStartElement
ÇÇ
 
(
ÇÇ 
$str
ÇÇ "
,
ÇÇ" #
$str
ÇÇ$ -
,
ÇÇ- .

Namespaces
ÇÇ/ 9
.
ÇÇ9 :
WSDL_NS
ÇÇ: A
)
ÇÇA B
;
ÇÇB C
writer
ÉÉ 	
.
ÉÉ	 
"
WriteAttributeString
ÉÉ
 
(
ÉÉ 
$str
ÉÉ %
,
ÉÉ% &
BindingName
ÉÉ' 2
)
ÉÉ2 3
;
ÉÉ3 4
writer
ÑÑ 	
.
ÑÑ	 
"
WriteAttributeString
ÑÑ
 
(
ÑÑ 
$str
ÑÑ %
,
ÑÑ% &
$str
ÑÑ' -
+
ÑÑ. /
BindingType
ÑÑ0 ;
)
ÑÑ; <
;
ÑÑ< =
if
ÜÜ 
(
ÜÜ 
_binding
ÜÜ 
.
ÜÜ 
HasBasicAuth
ÜÜ 
(
ÜÜ 
)
ÜÜ 
)
ÜÜ 
{
áá 
writer
àà 

.
àà
 
WriteStartElement
àà 
(
àà 
$str
àà "
,
àà" #
$str
àà$ 5
,
àà5 6

Namespaces
àà7 A
.
ààA B
WSP_NS
ààB H
)
ààH I
;
ààI J
writer
ââ 

.
ââ
 "
WriteAttributeString
ââ 
(
ââ  
$str
ââ  %
,
ââ% &
$"
ââ' )
#
ââ) *
{
ââ* +
_binding
ââ+ 3
.
ââ3 4
Name
ââ4 8
}
ââ8 9
_
ââ9 :
{
ââ: ;
BindingType
ââ; F
}
ââF G
_policy
ââG N
"
ââN O
)
ââO P
;
ââP Q
writer
ää 

.
ää
 
WriteEndElement
ää 
(
ää 
)
ää 
;
ää 
}
ãã 
writer
çç 	
.
çç	 

WriteStartElement
çç
 
(
çç 
$str
çç "
,
çç" #
$str
çç$ -
,
çç- .

Namespaces
çç/ 9
.
çç9 :
	SOAP11_NS
çç: C
)
ççC D
;
ççD E
writer
éé 	
.
éé	 
"
WriteAttributeString
éé
 
(
éé 
$str
éé *
,
éé* +

Namespaces
éé, 6
.
éé6 7
TRANSPORT_SCHEMA
éé7 G
)
ééG H
;
ééH I
writer
èè 	
.
èè	 

WriteEndElement
èè
 
(
èè 
)
èè 
;
èè 
foreach
ëë 

(
ëë 
var
ëë 
	operation
ëë 
in
ëë 
_service
ëë %
.
ëë% &

Operations
ëë& 0
)
ëë0 1
{
íí 
writer
ìì 

.
ìì
 
WriteStartElement
ìì 
(
ìì 
$str
ìì #
,
ìì# $
$str
ìì% 0
,
ìì0 1

Namespaces
ìì2 <
.
ìì< =
WSDL_NS
ìì= D
)
ììD E
;
ììE F
writer
îî 

.
îî
 "
WriteAttributeString
îî 
(
îî  
$str
îî  &
,
îî& '
	operation
îî( 1
.
îî1 2
Name
îî2 6
)
îî6 7
;
îî7 8
writer
ññ 

.
ññ
 
WriteStartElement
ññ 
(
ññ 
$str
ññ #
,
ññ# $
$str
ññ% 0
,
ññ0 1

Namespaces
ññ2 <
.
ññ< =
	SOAP11_NS
ññ= F
)
ññF G
;
ññG H
writer
óó 

.
óó
 "
WriteAttributeString
óó 
(
óó  
$str
óó  ,
,
óó, -
	operation
óó. 7
.
óó7 8

SoapAction
óó8 B
)
óóB C
;
óóC D
writer
òò 

.
òò
 "
WriteAttributeString
òò 
(
òò  
$str
òò  '
,
òò' (
$str
òò) 3
)
òò3 4
;
òò4 5
writer
ôô 

.
ôô
 
WriteEndElement
ôô 
(
ôô 
)
ôô 
;
ôô 
writer
õõ 

.
õõ
 
WriteStartElement
õõ 
(
õõ 
$str
õõ #
,
õõ# $
$str
õõ% ,
,
õõ, -

Namespaces
õõ. 8
.
õõ8 9
WSDL_NS
õõ9 @
)
õõ@ A
;
õõA B
writer
úú 

.
úú
 
WriteStartElement
úú 
(
úú 
$str
úú #
,
úú# $
$str
úú% +
,
úú+ ,

Namespaces
úú- 7
.
úú7 8
	SOAP11_NS
úú8 A
)
úúA B
;
úúB C
writer
ùù 

.
ùù
 "
WriteAttributeString
ùù 
(
ùù  
$str
ùù  %
,
ùù% &
$str
ùù' 0
)
ùù0 1
;
ùù1 2
writer
ûû 

.
ûû
 
WriteEndElement
ûû 
(
ûû 
)
ûû 
;
ûû 
writer
üü 

.
üü
 
WriteEndElement
üü 
(
üü 
)
üü 
;
üü 
if
°° 
(
°° 
!
°° 	
	operation
°°	 
.
°° 
IsOneWay
°° 
)
°° 
{
¢¢ 
writer
££ 
.
££ 
WriteStartElement
££ 
(
££ 
$str
££ $
,
££$ %
$str
££& .
,
££. /

Namespaces
££0 :
.
££: ;
WSDL_NS
££; B
)
££B C
;
££C D
writer
§§ 
.
§§ 
WriteStartElement
§§ 
(
§§ 
$str
§§ $
,
§§$ %
$str
§§& ,
,
§§, -

Namespaces
§§. 8
.
§§8 9
	SOAP11_NS
§§9 B
)
§§B C
;
§§C D
writer
•• 
.
•• "
WriteAttributeString
••  
(
••  !
$str
••! &
,
••& '
$str
••( 1
)
••1 2
;
••2 3
writer
¶¶ 
.
¶¶ 
WriteEndElement
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶ 
writer
ßß 
.
ßß 
WriteEndElement
ßß 
(
ßß 
)
ßß 
;
ßß 
}
®® 
AddBindingFaults
™™ 
(
™™ 
writer
™™ 
,
™™ 
	operation
™™ &
)
™™& '
;
™™' (
writer
¨¨ 

.
¨¨
 
WriteEndElement
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 
writer
ØØ 	
.
ØØ	 

WriteEndElement
ØØ
 
(
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 
private
≤≤ 	
void
≤≤
 
AddBindingFaults
≤≤ 
(
≤≤  !
XmlDictionaryWriter
≤≤  3
writer
≤≤4 :
,
≤≤: ;"
OperationDescription
≤≤< P
	operation
≤≤Q Z
)
≤≤Z [
{
≥≥ 
foreach
¥¥ 

(
¥¥ 
Type
¥¥ 
fault
¥¥ 
in
¥¥ 
	operation
¥¥ #
.
¥¥# $
Faults
¥¥$ *
)
¥¥* +
{
µµ 
writer
∂∂ 

.
∂∂
 
WriteStartElement
∂∂ 
(
∂∂ 
$str
∂∂ #
,
∂∂# $
$str
∂∂% ,
,
∂∂, -

Namespaces
∂∂. 8
.
∂∂8 9
WSDL_NS
∂∂9 @
)
∂∂@ A
;
∂∂A B
writer
∑∑ 

.
∑∑
 "
WriteAttributeString
∑∑ 
(
∑∑  
$str
∑∑  &
,
∑∑& '
$"
∑∑( *
{
∑∑* +
fault
∑∑+ 0
.
∑∑0 1
Name
∑∑1 5
}
∑∑5 6
Fault
∑∑6 ;
"
∑∑; <
)
∑∑< =
;
∑∑= >
writer
ππ 

.
ππ
 
WriteStartElement
ππ 
(
ππ 
$str
ππ #
,
ππ# $
$str
ππ% ,
,
ππ, -

Namespaces
ππ. 8
.
ππ8 9
	SOAP11_NS
ππ9 B
)
ππB C
;
ππC D
writer
∫∫ 

.
∫∫
 "
WriteAttributeString
∫∫ 
(
∫∫  
$str
∫∫  %
,
∫∫% &
$str
∫∫' 0
)
∫∫0 1
;
∫∫1 2
writer
ªª 

.
ªª
 "
WriteAttributeString
ªª 
(
ªª  
$str
ªª  &
,
ªª& '
$"
ªª( *
{
ªª* +
fault
ªª+ 0
.
ªª0 1
Name
ªª1 5
}
ªª5 6
Fault
ªª6 ;
"
ªª; <
)
ªª< =
;
ªª= >
writer
ºº 

.
ºº
 
WriteEndElement
ºº 
(
ºº 
)
ºº 
;
ºº 
writer
ææ 

.
ææ
 
WriteEndElement
ææ 
(
ææ 
)
ææ 
;
ææ 
}
øø 
}
¿¿ 
private
¬¬ 	
void
¬¬
 

AddService
¬¬ 
(
¬¬ !
XmlDictionaryWriter
¬¬ -
writer
¬¬. 4
)
¬¬4 5
{
√√ 
writer
ƒƒ 	
.
ƒƒ	 

WriteStartElement
ƒƒ
 
(
ƒƒ 
$str
ƒƒ "
,
ƒƒ" #
$str
ƒƒ$ -
,
ƒƒ- .

Namespaces
ƒƒ/ 9
.
ƒƒ9 :
WSDL_NS
ƒƒ: A
)
ƒƒA B
;
ƒƒB C
writer
≈≈ 	
.
≈≈	 
"
WriteAttributeString
≈≈
 
(
≈≈ 
$str
≈≈ %
,
≈≈% &
_service
≈≈' /
.
≈≈/ 0
ServiceType
≈≈0 ;
.
≈≈; <
Name
≈≈< @
)
≈≈@ A
;
≈≈A B
writer
«« 	
.
««	 

WriteStartElement
««
 
(
«« 
$str
«« "
,
««" #
$str
««$ *
,
««* +

Namespaces
««, 6
.
««6 7
WSDL_NS
««7 >
)
««> ?
;
««? @
writer
»» 	
.
»»	 
"
WriteAttributeString
»»
 
(
»» 
$str
»» %
,
»»% &
PortName
»»' /
)
»»/ 0
;
»»0 1
writer
…… 	
.
……	 
"
WriteAttributeString
……
 
(
…… 
$str
…… (
,
……( )
$str
……* 0
+
……1 2
BindingName
……3 >
)
……> ?
;
……? @
writer
ÀÀ 	
.
ÀÀ	 

WriteStartElement
ÀÀ
 
(
ÀÀ 
$str
ÀÀ "
,
ÀÀ" #
$str
ÀÀ$ -
,
ÀÀ- .

Namespaces
ÀÀ/ 9
.
ÀÀ9 :
	SOAP11_NS
ÀÀ: C
)
ÀÀC D
;
ÀÀD E
writer
ÕÕ 	
.
ÕÕ	 
"
WriteAttributeString
ÕÕ
 
(
ÕÕ 
$str
ÕÕ )
,
ÕÕ) *
_baseUrl
ÕÕ+ 3
)
ÕÕ3 4
;
ÕÕ4 5
writer
ŒŒ 	
.
ŒŒ	 

WriteEndElement
ŒŒ
 
(
ŒŒ 
)
ŒŒ 
;
ŒŒ 
writer
–– 	
.
––	 

WriteEndElement
––
 
(
–– 
)
–– 
;
–– 
}
—— 
private
”” 	
void
””
 
AddSchemaType
”” 
(
”” !
XmlDictionaryWriter
”” 0
writer
””1 7
,
””7 8
Type
””9 =
type
””> B
,
””B C
string
””D J
name
””K O
,
””O P
bool
””Q U
isArray
””V ]
=
””^ _
false
””` e
,
””e f
string
””g m
objectNamespace
””n }
=
””~ 
null””Ä Ñ
,””Ñ Ö
bool””Ü ä

isRequired””ã ï
=””ñ ó
false””ò ù
)””ù û
{
‘‘ 
var
’’ 
typeInfo
’’ 
=
’’ 
type
’’ 
.
’’ 
GetTypeInfo
’’ "
(
’’" #
)
’’# $
;
’’$ %
var
÷÷ 
typeName
÷÷ 
=
÷÷ 
GetTypeName
÷÷ 
(
÷÷ 
type
÷÷ "
)
÷÷" #
;
÷÷# $
if
ÿÿ 
(
ÿÿ 
typeInfo
ÿÿ 
.
ÿÿ 
IsByRef
ÿÿ 
)
ÿÿ 
{
ŸŸ 
type
⁄⁄ 
=
⁄⁄	 

typeInfo
⁄⁄ 
.
⁄⁄ 
GetElementType
⁄⁄ "
(
⁄⁄" #
)
⁄⁄# $
;
⁄⁄$ %
}
€€ 
if
›› 
(
›› 
writer
›› 
.
›› <
.TryAddSchemaTypeFromXmlSchemaProviderAttribute
›› <
(
››< =
type
››= A
,
››A B
name
››C G
,
››G H
SoapSerializer
››I W
.
››W X$
DataContractSerializer
››X n
)
››n o
)
››o p
{
ﬁﬁ 
return
ﬂﬂ 

;
ﬂﬂ
 
}
‡‡ 
writer
‚‚ 	
.
‚‚	 

WriteStartElement
‚‚
 
(
‚‚ 
$str
‚‚  
,
‚‚  !
$str
‚‚" +
,
‚‚+ ,

Namespaces
‚‚- 7
.
‚‚7 8
	XMLNS_XSD
‚‚8 A
)
‚‚A B
;
‚‚B C
if
‰‰ 
(
‰‰ 
objectNamespace
‰‰ 
==
‰‰ 
null
‰‰ 
)
‰‰ 
{
ÂÂ 
objectNamespace
ÊÊ 
=
ÊÊ 
GetModelNamespace
ÊÊ '
(
ÊÊ' (
type
ÊÊ( ,
)
ÊÊ, -
;
ÊÊ- .
}
ÁÁ 
if
ÈÈ 
(
ÈÈ 
typeInfo
ÈÈ 
.
ÈÈ 
IsEnum
ÈÈ 
||
ÈÈ 
Nullable
ÈÈ "
.
ÈÈ" #
GetUnderlyingType
ÈÈ# 4
(
ÈÈ4 5
typeInfo
ÈÈ5 =
)
ÈÈ= >
?
ÈÈ> ?
.
ÈÈ? @
IsEnum
ÈÈ@ F
==
ÈÈG I
true
ÈÈJ N
)
ÈÈN O
{
ÍÍ %
WriteComplexElementType
ÎÎ 
(
ÎÎ 
writer
ÎÎ "
,
ÎÎ" #
typeName
ÎÎ$ ,
,
ÎÎ, -
_schemaNamespace
ÎÎ. >
,
ÎÎ> ?
objectNamespace
ÎÎ@ O
,
ÎÎO P
type
ÎÎQ U
)
ÎÎU V
;
ÎÎV W
if
ÌÌ 
(
ÌÌ 
string
ÌÌ 
.
ÌÌ 
IsNullOrEmpty
ÌÌ 
(
ÌÌ 
name
ÌÌ !
)
ÌÌ! "
)
ÌÌ" #
{
ÓÓ 
name
ÔÔ 	
=
ÔÔ
 
typeName
ÔÔ 
;
ÔÔ 
}
 
writer
ÚÚ 

.
ÚÚ
 "
WriteAttributeString
ÚÚ 
(
ÚÚ  
$str
ÚÚ  &
,
ÚÚ& '
name
ÚÚ( ,
)
ÚÚ, -
;
ÚÚ- .
if
ÙÙ 
(
ÙÙ 
isArray
ÙÙ 
)
ÙÙ 
{
ıı 
writer
ˆˆ 
.
ˆˆ "
WriteAttributeString
ˆˆ  
(
ˆˆ  !
$str
ˆˆ! ,
,
ˆˆ, -

isRequired
ˆˆ. 8
?
ˆˆ9 :
$str
ˆˆ; >
:
ˆˆ? @
$str
ˆˆA D
)
ˆˆD E
;
ˆˆE F
writer
˜˜ 
.
˜˜ "
WriteAttributeString
˜˜  
(
˜˜  !
$str
˜˜! ,
,
˜˜, -
$str
˜˜. 9
)
˜˜9 :
;
˜˜: ;
}
¯¯ 
}
˘˘ 
else
˙˙ 
if
˙˙ 

(
˙˙ 
type
˙˙ 
.
˙˙ 
IsValueType
˙˙ 
)
˙˙ 
{
˚˚ 
string
¸¸ 


xsTypename
¸¸ 
;
¸¸ 
if
˝˝ 
(
˝˝ 
typeof
˝˝ 
(
˝˝ 
DateTimeOffset
˝˝ 
)
˝˝ 
.
˝˝ 
IsAssignableFrom
˝˝ /
(
˝˝/ 0
type
˝˝0 4
)
˝˝4 5
)
˝˝5 6
{
˛˛ 
if
ˇˇ 
(
ˇˇ 	
string
ˇˇ	 
.
ˇˇ 
IsNullOrEmpty
ˇˇ 
(
ˇˇ 
name
ˇˇ "
)
ˇˇ" #
)
ˇˇ# $
{
Ä	Ä	 
name
Å	Å	 

=
Å	Å	 
typeName
Å	Å	 
;
Å	Å	 
}
Ç	Ç	 
var
Ñ	Ñ	 
ns
Ñ	Ñ		 
=
Ñ	Ñ	 
$"
Ñ	Ñ	 
q
Ñ	Ñ	 
{
Ñ	Ñ	 
_namespaceCounter
Ñ	Ñ	 #
++
Ñ	Ñ	# %
}
Ñ	Ñ	% &
"
Ñ	Ñ	& '
;
Ñ	Ñ	' (

xsTypename
Ö	Ö	 
=
Ö	Ö	 
$"
Ö	Ö	 
{
Ö	Ö	 
ns
Ö	Ö	 
}
Ö	Ö	 
:
Ö	Ö	 
{
Ö	Ö	 
typeName
Ö	Ö	 "
}
Ö	Ö	" #
"
Ö	Ö	# $
;
Ö	Ö	$ %
writer
Ü	Ü	 
.
Ü	Ü	 !
WriteXmlnsAttribute
Ü	Ü	 
(
Ü	Ü	  
$"
Ü	Ü	  "
{
Ü	Ü	" #
ns
Ü	Ü	# %
}
Ü	Ü	% &
"
Ü	Ü	& '
,
Ü	Ü	' (

Namespaces
Ü	Ü	) 3
.
Ü	Ü	3 4
	SYSTEM_NS
Ü	Ü	4 =
)
Ü	Ü	= >
;
Ü	Ü	> ?"
_buildDateTimeOffset
à	à	 
=
à	à	 
true
à	à	  
;
à	à	  !
}
â	â	 
else
ä	ä	 
{
ã	ã	 
Type
å	å	 	
underlyingType
å	å	
 
=
å	å	 
Nullable
å	å	 #
.
å	å	# $
GetUnderlyingType
å	å	$ 5
(
å	å	5 6
type
å	å	6 :
)
å	å	: ;
;
å	å	; <
if
ç	ç	 
(
ç	ç	 	
underlyingType
ç	ç		 
!=
ç	ç	 
null
ç	ç	 
)
ç	ç	  
{
é	é	 
objectNamespace
è	è	 
=
è	è	 &
GetDataContractNamespace
è	è	 0
(
è	è	0 1
underlyingType
è	è	1 ?
)
è	è	? @
;
è	è	@ A
typeName
ê	ê	 
=
ê	ê	 
GetTypeName
ê	ê	 
(
ê	ê	 
underlyingType
ê	ê	 +
)
ê	ê	+ ,
;
ê	ê	, -
if
í	í	 
(
í	í		 

ResolveSystemType
í	í	
 
(
í	í	 
underlyingType
í	í	 *
)
í	í	* +
.
í	í	+ ,
name
í	í	, 0
!=
í	í	1 3
null
í	í	4 8
)
í	í	8 9
{
ì	ì	 
var
î	î	 

sysType
î	î	 
=
î	î	 
ResolveSystemType
î	î	 &
(
î	î	& '
underlyingType
î	î	' 5
)
î	î	5 6
;
î	î	6 7

xsTypename
ï	ï	 
=
ï	ï	 
$"
ï	ï	 
{
ï	ï	 
(
ï	ï	 
sysType
ï	ï	 
.
ï	ï	  
ns
ï	ï	  "
==
ï	ï	# %

Namespaces
ï	ï	& 0
.
ï	ï	0 1
SERIALIZATION_NS
ï	ï	1 A
?
ï	ï	B C
$str
ï	ï	D I
:
ï	ï	J K
$str
ï	ï	L P
)
ï	ï	P Q
}
ï	ï	Q R
:
ï	ï	R S
{
ï	ï	S T
sysType
ï	ï	T [
.
ï	ï	[ \
name
ï	ï	\ `
}
ï	ï	` a
"
ï	ï	a b
;
ï	ï	b c
writer
ñ	ñ	 
.
ñ	ñ	 "
WriteAttributeString
ñ	ñ	 "
(
ñ	ñ	" #
$str
ñ	ñ	# -
,
ñ	ñ	- .
$str
ñ	ñ	/ 5
)
ñ	ñ	5 6
;
ñ	ñ	6 7
}
ó	ó	 
else
ò	ò	 

if
ò	ò	 
(
ò	ò	 
_schemaNamespace
ò	ò	 
!=
ò	ò	  "
objectNamespace
ò	ò	# 2
)
ò	ò	2 3
{
ô	ô	 
var
ö	ö	 

ns
ö	ö	 
=
ö	ö	 
$"
ö	ö	 
q
ö	ö	 
{
ö	ö	 
_namespaceCounter
ö	ö	 %
++
ö	ö	% '
}
ö	ö	' (
"
ö	ö	( )
;
ö	ö	) *
writer
õ	õ	 
.
õ	õ	 !
WriteXmlnsAttribute
õ	õ	 !
(
õ	õ	! "
$"
õ	õ	" $
{
õ	õ	$ %
ns
õ	õ	% '
}
õ	õ	' (
"
õ	õ	( )
,
õ	õ	) *&
GetDataContractNamespace
õ	õ	+ C
(
õ	õ	C D
type
õ	õ	D H
)
õ	õ	H I
)
õ	õ	I J
;
õ	õ	J K

xsTypename
ù	ù	 
=
ù	ù	 
$"
ù	ù	 
{
ù	ù	 
ns
ù	ù	 
}
ù	ù	 
:
ù	ù	 
{
ù	ù	 
typeName
ù	ù	 $
}
ù	ù	$ %
"
ù	ù	% &
;
ù	ù	& '
}
û	û	 
else
ü	ü	 

{
†	†	 

xsTypename
°	°	 
=
°	°	 
$"
°	°	 
tns:
°	°	 
{
°	°	 
typeName
°	°	 #
}
°	°	# $
"
°	°	$ %
;
°	°	% &
}
¢	¢	 
}
£	£	 
else
§	§	 	
{
•	•	 
if
¶	¶	 
(
¶	¶		 

ResolveSystemType
¶	¶	
 
(
¶	¶	 
type
¶	¶	  
)
¶	¶	  !
.
¶	¶	! "
name
¶	¶	" &
!=
¶	¶	' )
null
¶	¶	* .
)
¶	¶	. /
{
ß	ß	 
var
®	®	 

sysType
®	®	 
=
®	®	 
ResolveSystemType
®	®	 &
(
®	®	& '
type
®	®	' +
)
®	®	+ ,
;
®	®	, -

xsTypename
©	©	 
=
©	©	 
$"
©	©	 
{
©	©	 
(
©	©	 
sysType
©	©	 
.
©	©	  
ns
©	©	  "
==
©	©	# %

Namespaces
©	©	& 0
.
©	©	0 1
SERIALIZATION_NS
©	©	1 A
?
©	©	B C
$str
©	©	D I
:
©	©	J K
$str
©	©	L P
)
©	©	P Q
}
©	©	Q R
:
©	©	R S
{
©	©	S T
sysType
©	©	T [
.
©	©	[ \
name
©	©	\ `
}
©	©	` a
"
©	©	a b
;
©	©	b c
}
™	™	 
else
´	´	 

if
´	´	 
(
´	´	 
_schemaNamespace
´	´	 
!=
´	´	  "
objectNamespace
´	´	# 2
)
´	´	2 3
{
¨	¨	 
var
≠	≠	 

ns
≠	≠	 
=
≠	≠	 
$"
≠	≠	 
q
≠	≠	 
{
≠	≠	 
_namespaceCounter
≠	≠	 %
++
≠	≠	% '
}
≠	≠	' (
"
≠	≠	( )
;
≠	≠	) *
writer
Æ	Æ	 
.
Æ	Æ	 !
WriteXmlnsAttribute
Æ	Æ	 !
(
Æ	Æ	! "
$"
Æ	Æ	" $
{
Æ	Æ	$ %
ns
Æ	Æ	% '
}
Æ	Æ	' (
"
Æ	Æ	( )
,
Æ	Æ	) *&
GetDataContractNamespace
Æ	Æ	+ C
(
Æ	Æ	C D
type
Æ	Æ	D H
)
Æ	Æ	H I
)
Æ	Æ	I J
;
Æ	Æ	J K

xsTypename
∞	∞	 
=
∞	∞	 
$"
∞	∞	 
{
∞	∞	 
ns
∞	∞	 
}
∞	∞	 
:
∞	∞	 
{
∞	∞	 
typeName
∞	∞	 $
}
∞	∞	$ %
"
∞	∞	% &
;
∞	∞	& '
}
±	±	 
else
≤	≤	 

{
≥	≥	 

xsTypename
¥	¥	 
=
¥	¥	 
$"
¥	¥	 
tns:
¥	¥	 
{
¥	¥	 
typeName
¥	¥	 #
}
¥	¥	# $
"
¥	¥	$ %
;
¥	¥	% &
}
µ	µ	 
}
∂	∂	 
}
∑	∑	 
writer
π	π	 

.
π	π	
 "
WriteAttributeString
π	π	 
(
π	π	  
$str
π	π	  +
,
π	π	+ ,

isRequired
π	π	- 7
?
π	π	8 9
$str
π	π	: =
:
π	π	> ?
$str
π	π	@ C
)
π	π	C D
;
π	π	D E
if
∫	∫	 
(
∫	∫	 
isArray
∫	∫	 
)
∫	∫	 
{
ª	ª	 
writer
º	º	 
.
º	º	 "
WriteAttributeString
º	º	  
(
º	º	  !
$str
º	º	! ,
,
º	º	, -
$str
º	º	. 9
)
º	º	9 :
;
º	º	: ;
}
Ω	Ω	 
if
ø	ø	 
(
ø	ø	 
string
ø	ø	 
.
ø	ø	 
IsNullOrEmpty
ø	ø	 
(
ø	ø	 
name
ø	ø	 !
)
ø	ø	! "
)
ø	ø	" #
{
¿	¿	 
name
¡	¡	 	
=
¡	¡	
 

xsTypename
¡	¡	 
.
¡	¡	 
Split
¡	¡	 
(
¡	¡	 
$char
¡	¡	  
)
¡	¡	  !
[
¡	¡	! "
$num
¡	¡	" #
]
¡	¡	# $
;
¡	¡	$ %
}
¬	¬	 
writer
ƒ	ƒ	 

.
ƒ	ƒ	
 "
WriteAttributeString
ƒ	ƒ	 
(
ƒ	ƒ	  
$str
ƒ	ƒ	  &
,
ƒ	ƒ	& '
name
ƒ	ƒ	( ,
)
ƒ	ƒ	, -
;
ƒ	ƒ	- .
writer
≈	≈	 

.
≈	≈	
 "
WriteAttributeString
≈	≈	 
(
≈	≈	  
$str
≈	≈	  &
,
≈	≈	& '

xsTypename
≈	≈	( 2
)
≈	≈	2 3
;
≈	≈	3 4
}
∆	∆	 
else
«	«	 
{
»	»	 
writer
…	…	 

.
…	…	
 "
WriteAttributeString
…	…	 
(
…	…	  
$str
…	…	  +
,
…	…	+ ,

isRequired
…	…	- 7
?
…	…	8 9
$str
…	…	: =
:
…	…	> ?
$str
…	…	@ C
)
…	…	C D
;
…	…	D E
if
 	 	 
(
 	 	 
isArray
 	 	 
)
 	 	 
{
À	À	 
writer
Ã	Ã	 
.
Ã	Ã	 "
WriteAttributeString
Ã	Ã	  
(
Ã	Ã	  !
$str
Ã	Ã	! ,
,
Ã	Ã	, -
$str
Ã	Ã	. 9
)
Ã	Ã	9 :
;
Ã	Ã	: ;
}
Õ	Õ	 
if
œ	œ	 
(
œ	œ	 
type
œ	œ	 
.
œ	œ	 
Name
œ	œ	 
==
œ	œ	 
$str
œ	œ	 
||
œ	œ	  
type
œ	œ	! %
.
œ	œ	% &
Name
œ	œ	& *
==
œ	œ	+ -
$str
œ	œ	. 7
)
œ	œ	7 8
{
–	–	 
if
—	—	 
(
—	—	 	
string
—	—		 
.
—	—	 
IsNullOrEmpty
—	—	 
(
—	—	 
name
—	—	 "
)
—	—	" #
)
—	—	# $
{
“	“	 
name
”	”	 

=
”	”	 
$str
”	”	 
;
”	”	 
}
‘	‘	 
writer
÷	÷	 
.
÷	÷	 "
WriteAttributeString
÷	÷	  
(
÷	÷	  !
$str
÷	÷	! '
,
÷	÷	' (
name
÷	÷	) -
)
÷	÷	- .
;
÷	÷	. /
writer
◊	◊	 
.
◊	◊	 "
WriteAttributeString
◊	◊	  
(
◊	◊	  !
$str
◊	◊	! +
,
◊	◊	+ ,
$str
◊	◊	- 3
)
◊	◊	3 4
;
◊	◊	4 5
writer
ÿ	ÿ	 
.
ÿ	ÿ	 "
WriteAttributeString
ÿ	ÿ	  
(
ÿ	ÿ	  !
$str
ÿ	ÿ	! '
,
ÿ	ÿ	' (
$str
ÿ	ÿ	) 4
)
ÿ	ÿ	4 5
;
ÿ	ÿ	5 6
}
Ÿ	Ÿ	 
else
⁄	⁄	 
if
⁄	⁄		 
(
⁄	⁄	 
type
⁄	⁄	 
.
⁄	⁄	 
Name
⁄	⁄	 
==
⁄	⁄	 
$str
⁄	⁄	 "
||
⁄	⁄	# %
type
⁄	⁄	& *
.
⁄	⁄	* +
Name
⁄	⁄	+ /
==
⁄	⁄	0 2
$str
⁄	⁄	3 <
)
⁄	⁄	< =
{
€	€	 
if
‹	‹	 
(
‹	‹	 	
string
‹	‹		 
.
‹	‹	 
IsNullOrEmpty
‹	‹	 
(
‹	‹	 
name
‹	‹	 "
)
‹	‹	" #
)
‹	‹	# $
{
›	›	 
name
ﬁ	ﬁ	 

=
ﬁ	ﬁ	 
$str
ﬁ	ﬁ	 
;
ﬁ	ﬁ	 
}
ﬂ	ﬂ	 
writer
·	·	 
.
·	·	 "
WriteAttributeString
·	·	  
(
·	·	  !
$str
·	·	! '
,
·	·	' (
name
·	·	) -
)
·	·	- .
;
·	·	. /
writer
‚	‚	 
.
‚	‚	 "
WriteAttributeString
‚	‚	  
(
‚	‚	  !
$str
‚	‚	! '
,
‚	‚	' (
$str
‚	‚	) 5
)
‚	‚	5 6
;
‚	‚	6 7
}
„	„	 
else
‰	‰	 
if
‰	‰		 
(
‰	‰	 
type
‰	‰	 
.
‰	‰	 
Name
‰	‰	 
==
‰	‰	 
$str
‰	‰	 
||
‰	‰	  "
type
‰	‰	# '
.
‰	‰	' (
Name
‰	‰	( ,
==
‰	‰	- /
$str
‰	‰	0 6
)
‰	‰	6 7
{
Â	Â	 
if
Ê	Ê	 
(
Ê	Ê	 	
string
Ê	Ê		 
.
Ê	Ê	 
IsNullOrEmpty
Ê	Ê	 
(
Ê	Ê	 
name
Ê	Ê	 "
)
Ê	Ê	" #
)
Ê	Ê	# $
{
Á	Á	 
name
Ë	Ë	 

=
Ë	Ë	 
$str
Ë	Ë	 
;
Ë	Ë	 
}
È	È	 
writer
Ï	Ï	 
.
Ï	Ï	 "
WriteAttributeString
Ï	Ï	  
(
Ï	Ï	  !
$str
Ï	Ï	! '
,
Ï	Ï	' (
name
Ï	Ï	) -
)
Ï	Ï	- .
;
Ï	Ï	. /
writer
Ì	Ì	 
.
Ì	Ì	 "
WriteAttributeString
Ì	Ì	  
(
Ì	Ì	  !
$str
Ì	Ì	! '
,
Ì	Ì	' (
$str
Ì	Ì	) 4
)
Ì	Ì	4 5
;
Ì	Ì	5 6
}
Ó	Ó	 
else
Ô	Ô	 
if
Ô	Ô		 
(
Ô	Ô	 
type
Ô	Ô	 
==
Ô	Ô	 
typeof
Ô	Ô	 
(
Ô	Ô	 
	DataTable
Ô	Ô	 %
)
Ô	Ô	% &
)
Ô	Ô	& '
{
		 
_buildDataTable
Ò	Ò	 
=
Ò	Ò	 
true
Ò	Ò	 
;
Ò	Ò	 
writer
Û	Û	 
.
Û	Û	 "
WriteAttributeString
Û	Û	  
(
Û	Û	  !
$str
Û	Û	! '
,
Û	Û	' (
name
Û	Û	) -
)
Û	Û	- .
;
Û	Û	. /
writer
Ù	Ù	 
.
Ù	Ù	 "
WriteAttributeString
Ù	Ù	  
(
Ù	Ù	  !
$str
Ù	Ù	! +
,
Ù	Ù	+ ,
$str
Ù	Ù	- 3
)
Ù	Ù	3 4
;
Ù	Ù	4 5
writer
ı	ı	 
.
ı	ı	 
WriteStartElement
ı	ı	 
(
ı	ı	 
$str
ı	ı	 "
,
ı	ı	" #
$str
ı	ı	$ 1
,
ı	ı	1 2

Namespaces
ı	ı	3 =
.
ı	ı	= >
	XMLNS_XSD
ı	ı	> G
)
ı	ı	G H
;
ı	ı	H I
writer
ˆ	ˆ	 
.
ˆ	ˆ	 
WriteStartElement
ˆ	ˆ	 
(
ˆ	ˆ	 
$str
ˆ	ˆ	 "
,
ˆ	ˆ	" #
$str
ˆ	ˆ	$ 0
,
ˆ	ˆ	0 1

Namespaces
ˆ	ˆ	2 <
.
ˆ	ˆ	< =
	XMLNS_XSD
ˆ	ˆ	= F
)
ˆ	ˆ	F G
;
ˆ	ˆ	G H
writer
˜	˜	 
.
˜	˜	 
WriteStartElement
˜	˜	 
(
˜	˜	 
$str
˜	˜	 "
,
˜	˜	" #
$str
˜	˜	$ -
,
˜	˜	- .

Namespaces
˜	˜	/ 9
.
˜	˜	9 :
	XMLNS_XSD
˜	˜	: C
)
˜	˜	C D
;
˜	˜	D E
writer
¯	¯	 
.
¯	¯	 
WriteStartElement
¯	¯	 
(
¯	¯	 
$str
¯	¯	 *
)
¯	¯	* +
;
¯	¯	+ ,
writer
˘	˘	 
.
˘	˘	 "
WriteAttributeString
˘	˘	  
(
˘	˘	  !
$str
˘	˘	! (
,
˘	˘	( )

Namespaces
˘	˘	* 4
.
˘	˘	4 5
SERIALIZATION_NS
˘	˘	5 E
)
˘	˘	E F
;
˘	˘	F G
writer
˙	˙	 
.
˙	˙	 "
WriteAttributeString
˙	˙	  
(
˙	˙	  !
$str
˙	˙	! '
,
˙	˙	' (
$str
˙	˙	) 4
)
˙	˙	4 5
;
˙	˙	5 6
writer
˚	˚	 
.
˚	˚	 "
WriteAttributeString
˚	˚	  
(
˚	˚	  !
$str
˚	˚	! ,
,
˚	˚	, -

Namespaces
˚	˚	. 8
.
˚	˚	8 9
SystemData_NS
˚	˚	9 F
)
˚	˚	F G
;
˚	˚	G H
writer
¸	¸	 
.
¸	¸	 
WriteEndElement
¸	¸	 
(
¸	¸	 
)
¸	¸	 
;
¸	¸	 
writer
˝	˝	 
.
˝	˝	 
WriteEndElement
˝	˝	 
(
˝	˝	 
)
˝	˝	 
;
˝	˝	 
writer
˛	˛	 
.
˛	˛	 
WriteEndElement
˛	˛	 
(
˛	˛	 
)
˛	˛	 
;
˛	˛	 
writer
ˇ	ˇ	 
.
ˇ	ˇ	 
WriteEndElement
ˇ	ˇ	 
(
ˇ	ˇ	 
)
ˇ	ˇ	 
;
ˇ	ˇ	 
writer
Å
Å
 
.
Å
Å
 
WriteStartElement
Å
Å
 
(
Å
Å
 
$str
Å
Å
 "
,
Å
Å
" #
$str
Å
Å
$ .
,
Å
Å
. /

Namespaces
Å
Å
0 :
.
Å
Å
: ;
	XMLNS_XSD
Å
Å
; D
)
Å
Å
D E
;
Å
Å
E F
writer
É
É
 
.
É
É
 
WriteStartElement
É
É
 
(
É
É
 
$str
É
É
 "
,
É
É
" #
$str
É
É
$ )
,
É
É
) *

Namespaces
É
É
+ 5
.
É
É
5 6
	XMLNS_XSD
É
É
6 ?
)
É
É
? @
;
É
É
@ A
writer
Ñ
Ñ
 
.
Ñ
Ñ
 "
WriteAttributeString
Ñ
Ñ
  
(
Ñ
Ñ
  !
$str
Ñ
Ñ
! ,
,
Ñ
Ñ
, -
$str
Ñ
Ñ
. 1
)
Ñ
Ñ
1 2
;
Ñ
Ñ
2 3
writer
Ö
Ö
 
.
Ö
Ö
 "
WriteAttributeString
Ö
Ö
  
(
Ö
Ö
  !
$str
Ö
Ö
! ,
,
Ö
Ö
, -
$str
Ö
Ö
. 9
)
Ö
Ö
9 :
;
Ö
Ö
: ;
writer
Ü
Ü
 
.
Ü
Ü
 "
WriteAttributeString
Ü
Ü
  
(
Ü
Ü
  !
$str
Ü
Ü
! ,
,
Ü
Ü
, -

Namespaces
Ü
Ü
. 8
.
Ü
Ü
8 9
	XMLNS_XSD
Ü
Ü
9 B
)
Ü
Ü
B C
;
Ü
Ü
C D
writer
á
á
 
.
á
á
 "
WriteAttributeString
á
á
  
(
á
á
  !
$str
á
á
! 2
,
á
á
2 3
$str
á
á
4 9
)
á
á
9 :
;
á
á
: ;
writer
à
à
 
.
à
à
 
WriteEndElement
à
à
 
(
à
à
 
)
à
à
 
;
à
à
 
writer
ä
ä
 
.
ä
ä
 
WriteStartElement
ä
ä
 
(
ä
ä
 
$str
ä
ä
 "
,
ä
ä
" #
$str
ä
ä
$ )
,
ä
ä
) *

Namespaces
ä
ä
+ 5
.
ä
ä
5 6
	XMLNS_XSD
ä
ä
6 ?
)
ä
ä
? @
;
ä
ä
@ A
writer
ã
ã
 
.
ã
ã
 "
WriteAttributeString
ã
ã
  
(
ã
ã
  !
$str
ã
ã
! ,
,
ã
ã
, -
$str
ã
ã
. 1
)
ã
ã
1 2
;
ã
ã
2 3
writer
å
å
 
.
å
å
 "
WriteAttributeString
å
å
  
(
å
å
  !
$str
å
å
! ,
,
å
å
, -
$str
å
å
. Y
)
å
å
Y Z
;
å
å
Z [
writer
ç
ç
 
.
ç
ç
 "
WriteAttributeString
ç
ç
  
(
ç
ç
  !
$str
ç
ç
! 2
,
ç
ç
2 3
$str
ç
ç
4 9
)
ç
ç
9 :
;
ç
ç
: ;
writer
é
é
 
.
é
é
 
WriteEndElement
é
é
 
(
é
é
 
)
é
é
 
;
é
é
 
writer
ê
ê
 
.
ê
ê
 
WriteEndElement
ê
ê
 
(
ê
ê
 
)
ê
ê
 
;
ê
ê
 
}
ë
ë
 
else
í
í
 
if
í
í
	 
(
í
í
 
type
í
í
 
.
í
í
 
Name
í
í
 
==
í
í
 
$str
í
í
 "
)
í
í
" #
{
ì
ì
 
if
î
î
 
(
î
î
 	
string
î
î
	 
.
î
î
 
IsNullOrEmpty
î
î
 
(
î
î
 
name
î
î
 "
)
î
î
" #
)
î
î
# $
{
ï
ï
 
name
ñ
ñ
 

=
ñ
ñ
 
$str
ñ
ñ
 
;
ñ
ñ
 
}
ó
ó
 
writer
ô
ô
 
.
ô
ô
 "
WriteAttributeString
ô
ô
  
(
ô
ô
  !
$str
ô
ô
! '
,
ô
ô
' (
name
ô
ô
) -
)
ô
ô
- .
;
ô
ô
. /
writer
ö
ö
 
.
ö
ö
 "
WriteAttributeString
ö
ö
  
(
ö
ö
  !
$str
ö
ö
! '
,
ö
ö
' (
$str
ö
ö
) :
)
ö
ö
: ;
;
ö
ö
; <
}
õ
õ
 
else
ú
ú
 
if
ú
ú
	 
(
ú
ú
 
type
ú
ú
 
==
ú
ú
 
typeof
ú
ú
 
(
ú
ú
 
Stream
ú
ú
 "
)
ú
ú
" #
||
ú
ú
$ &
typeof
ú
ú
' -
(
ú
ú
- .
Stream
ú
ú
. 4
)
ú
ú
4 5
.
ú
ú
5 6
IsAssignableFrom
ú
ú
6 F
(
ú
ú
F G
type
ú
ú
G K
)
ú
ú
K L
)
ú
ú
L M
{
ù
ù
 
name
û
û
 	
=
û
û

 
$str
û
û
 
;
û
û
 
writer
†
†
 
.
†
†
 "
WriteAttributeString
†
†
  
(
†
†
  !
$str
†
†
! '
,
†
†
' (
name
†
†
) -
)
†
†
- .
;
†
†
. /
writer
°
°
 
.
°
°
 "
WriteAttributeString
°
°
  
(
°
°
  !
$str
°
°
! '
,
°
°
' (
$str
°
°
) :
)
°
°
: ;
;
°
°
; <
}
¢
¢
 
else
£
£
 
if
£
£
	 
(
£
£
 
typeof
£
£
 
(
£
£
 
IEnumerable
£
£
 
)
£
£
  
.
£
£
  !
IsAssignableFrom
£
£
! 1
(
£
£
1 2
type
£
£
2 6
)
£
£
6 7
)
£
£
7 8
{
§
§
 
var
•
•
 
elType
•
•
	 
=
•
•
 
type
•
•
 
;
•
•
 
var
ß
ß
 -
collectionDataContractAttribute
ß
ß
	 (
=
ß
ß
) *
type
ß
ß
+ /
.
ß
ß
/ 0 
GetCustomAttribute
ß
ß
0 B
<
ß
ß
B C-
CollectionDataContractAttribute
ß
ß
C b
>
ß
ß
b c
(
ß
ß
c d
)
ß
ß
d e
;
ß
ß
e f
if
®
®
 
(
®
®
 	-
collectionDataContractAttribute
®
®
	 (
==
®
®
) +
null
®
®
, 0
)
®
®
0 1
{
©
©
 
elType
™
™
 
=
™
™
 
elType
™
™
 
.
™
™
 
IsArray
™
™
 
?
™
™
 
type
™
™
  $
.
™
™
$ %
GetElementType
™
™
% 3
(
™
™
3 4
)
™
™
4 5
:
™
™
6 7
GetGenericType
™
™
8 F
(
™
™
F G
type
™
™
G K
)
™
™
K L
;
™
™
L M
}
´
´
 
var
≠
≠
 
sysType
≠
≠
	 
=
≠
≠
 
ResolveSystemType
≠
≠
 $
(
≠
≠
$ %
elType
≠
≠
% +
)
≠
≠
+ ,
;
≠
≠
, -
if
Æ
Æ
 
(
Æ
Æ
 	
sysType
Æ
Æ
	 
.
Æ
Æ
 
name
Æ
Æ
 
!=
Æ
Æ
 
null
Æ
Æ
 
)
Æ
Æ
 
{
Ø
Ø
 
if
∞
∞
 
(
∞
∞
	 

string
∞
∞

 
.
∞
∞
 
IsNullOrEmpty
∞
∞
 
(
∞
∞
 
name
∞
∞
 #
)
∞
∞
# $
)
∞
∞
$ %
{
±
±
 
name
≤
≤
 
=
≤
≤
 
typeName
≤
≤
 
;
≤
≤
 
}
≥
≥
 
var
µ
µ
 	
ns
µ
µ

 
=
µ
µ
 
$"
µ
µ
 
q
µ
µ
 
{
µ
µ
 
_namespaceCounter
µ
µ
 $
++
µ
µ
$ &
}
µ
µ
& '
"
µ
µ
' (
;
µ
µ
( )
writer
∑
∑
 
.
∑
∑
 !
WriteXmlnsAttribute
∑
∑
  
(
∑
∑
  !
$"
∑
∑
! #
{
∑
∑
# $
ns
∑
∑
$ &
}
∑
∑
& '
"
∑
∑
' (
,
∑
∑
( )

Namespaces
∑
∑
* 4
.
∑
∑
4 5
	ARRAYS_NS
∑
∑
5 >
)
∑
∑
> ?
;
∑
∑
? @
writer
∏
∏
 
.
∏
∏
 "
WriteAttributeString
∏
∏
 !
(
∏
∏
! "
$str
∏
∏
" (
,
∏
∏
( )
name
∏
∏
* .
)
∏
∏
. /
;
∏
∏
/ 0
writer
π
π
 
.
π
π
 "
WriteAttributeString
π
π
 !
(
π
π
! "
$str
π
π
" ,
,
π
π
, -
$str
π
π
. 4
)
π
π
4 5
;
π
π
5 6
writer
∫
∫
 
.
∫
∫
 "
WriteAttributeString
∫
∫
 !
(
∫
∫
! "
$str
∫
∫
" (
,
∫
∫
( )
$"
∫
∫
* ,
{
∫
∫
, -
ns
∫
∫
- /
}
∫
∫
/ 0
:ArrayOf
∫
∫
0 8
{
∫
∫
8 9
sysType
∫
∫
9 @
.
∫
∫
@ A
name
∫
∫
A E
}
∫
∫
E F
"
∫
∫
F G
)
∫
∫
G H
;
∫
∫
H I
_arrayToBuild
º
º
 
.
º
º
 
Enqueue
º
º
 
(
º
º
 
type
º
º
  
)
º
º
  !
;
º
º
! "
}
Ω
Ω
 
else
æ
æ
 	
{
ø
ø
 
if
¿
¿
 
(
¿
¿
	 

string
¿
¿

 
.
¿
¿
 
IsNullOrEmpty
¿
¿
 
(
¿
¿
 
name
¿
¿
 #
)
¿
¿
# $
)
¿
¿
$ %
{
¡
¡
 
name
¬
¬
 
=
¬
¬
 
typeName
¬
¬
 
;
¬
¬
 
}
√
√
 
writer
≈
≈
 
.
≈
≈
 "
WriteAttributeString
≈
≈
 !
(
≈
≈
! "
$str
≈
≈
" (
,
≈
≈
( )
name
≈
≈
* .
)
≈
≈
. /
;
≈
≈
/ 0%
WriteComplexElementType
∆
∆
 
(
∆
∆
 
writer
∆
∆
 $
,
∆
∆
$ %
typeName
∆
∆
& .
,
∆
∆
. /
_schemaNamespace
∆
∆
0 @
,
∆
∆
@ A
objectNamespace
∆
∆
B Q
,
∆
∆
Q R
type
∆
∆
S W
)
∆
∆
W X
;
∆
∆
X Y!
_complexTypeToBuild
«
«
 
[
«
«
 
type
«
«
 
]
«
«
 
=
«
«
  !&
GetDataContractNamespace
«
«
" :
(
«
«
: ;
type
«
«
; ?
)
«
«
? @
;
«
«
@ A
}
»
»
 
}
…
…
 
else
 
 
 
{
À
À
 
if
Ã
Ã
 
(
Ã
Ã
 	
string
Ã
Ã
	 
.
Ã
Ã
 
IsNullOrEmpty
Ã
Ã
 
(
Ã
Ã
 
name
Ã
Ã
 "
)
Ã
Ã
" #
)
Ã
Ã
# $
{
Õ
Õ
 
name
Œ
Œ
 

=
Œ
Œ
 
typeName
Œ
Œ
 
;
Œ
Œ
 
}
œ
œ
 
writer
—
—
 
.
—
—
 "
WriteAttributeString
—
—
  
(
—
—
  !
$str
—
—
! '
,
—
—
' (
name
—
—
) -
)
—
—
- .
;
—
—
. /%
WriteComplexElementType
“
“
 
(
“
“
 
writer
“
“
 #
,
“
“
# $
typeName
“
“
% -
,
“
“
- .
_schemaNamespace
“
“
/ ?
,
“
“
? @
objectNamespace
“
“
A P
,
“
“
P Q
type
“
“
R V
)
“
“
V W
;
“
“
W X!
_complexTypeToBuild
”
”
 
[
”
”
 
type
”
”
 
]
”
”
 
=
”
”
  &
GetDataContractNamespace
”
”
! 9
(
”
”
9 :
type
”
”
: >
)
”
”
> ?
;
”
”
? @
}
‘
‘
 
}
’
’
 
writer
◊
◊
 	
.
◊
◊
	 

WriteEndElement
◊
◊

 
(
◊
◊
 
)
◊
◊
 
;
◊
◊
 
}
ÿ
ÿ
 
private
⁄
⁄
 	
bool
⁄
⁄

 "
TypeIsComplexForWsdl
⁄
⁄
 #
(
⁄
⁄
# $
Type
⁄
⁄
$ (
type
⁄
⁄
) -
,
⁄
⁄
- .
out
⁄
⁄
/ 2
Type
⁄
⁄
3 7

resultType
⁄
⁄
8 B
)
⁄
⁄
B C
{
€
€
 
var
‹
‹
 
typeInfo
‹
‹
 
=
‹
‹
 
type
‹
‹
 
.
‹
‹
 
GetTypeInfo
‹
‹
 "
(
‹
‹
" #
)
‹
‹
# $
;
‹
‹
$ %

resultType
›
›
 
=
›
›
 
type
›
›
 
;
›
›
 
if
ﬂ
ﬂ
 
(
ﬂ
ﬂ
 
typeInfo
ﬂ
ﬂ
 
.
ﬂ
ﬂ
 
IsByRef
ﬂ
ﬂ
 
)
ﬂ
ﬂ
 
{
‡
‡
 
type
·
·
 
=
·
·
	 

typeInfo
·
·
 
.
·
·
 
GetElementType
·
·
 "
(
·
·
" #
)
·
·
# $
;
·
·
$ %
}
‚
‚
 
if
‰
‰
 
(
‰
‰
 
typeof
‰
‰
 
(
‰
‰
 
IEnumerable
‰
‰
 
)
‰
‰
 
.
‰
‰
 
IsAssignableFrom
‰
‰
 +
(
‰
‰
+ ,
type
‰
‰
, 0
)
‰
‰
0 1
)
‰
‰
1 2
{
Â
Â
 
var
Ê
Ê
 -
collectionDataContractAttribute
Ê
Ê
 '
=
Ê
Ê
( )
type
Ê
Ê
* .
.
Ê
Ê
. / 
GetCustomAttribute
Ê
Ê
/ A
<
Ê
Ê
A B-
CollectionDataContractAttribute
Ê
Ê
B a
>
Ê
Ê
a b
(
Ê
Ê
b c
)
Ê
Ê
c d
;
Ê
Ê
d e
if
Á
Á
 
(
Á
Á
 -
collectionDataContractAttribute
Á
Á
 '
!=
Á
Á
( *
null
Á
Á
+ /
)
Á
Á
/ 0
{
Ë
Ë
 
return
È
È
 
true
È
È
 
;
È
È
 
}
Í
Í
 

resultType
Ï
Ï
 
=
Ï
Ï
 
type
Ï
Ï
 
.
Ï
Ï
 
IsArray
Ï
Ï
 
?
Ï
Ï
 
type
Ï
Ï
  $
.
Ï
Ï
$ %
GetElementType
Ï
Ï
% 3
(
Ï
Ï
3 4
)
Ï
Ï
4 5
:
Ï
Ï
6 7
GetGenericType
Ï
Ï
8 F
(
Ï
Ï
F G
type
Ï
Ï
G K
)
Ï
Ï
K L
;
Ï
Ï
L M
type
Ì
Ì
 
=
Ì
Ì
	 


resultType
Ì
Ì
 
;
Ì
Ì
 
}
Ó
Ó
 
if


 
(


 
typeInfo


 
.


 
IsEnum


 
)


 
{
Ò
Ò
 
return
Ú
Ú
 

false
Ú
Ú
 
;
Ú
Ú
 
}
Û
Û
 
if
ı
ı
 
(
ı
ı
 
type
ı
ı
 
.
ı
ı
 
Name
ı
ı
 
==
ı
ı
 
$str
ı
ı
 
||
ı
ı
 
type
ı
ı
  $
.
ı
ı
$ %
Name
ı
ı
% )
==
ı
ı
* ,
$str
ı
ı
- 6
)
ı
ı
6 7
{
ˆ
ˆ
 
return
˜
˜
 

false
˜
˜
 
;
˜
˜
 
}
¯
¯
 
if
˙
˙
 
(
˙
˙
 
type
˙
˙
 
==
˙
˙
 
typeof
˙
˙
 
(
˙
˙
 
System
˙
˙
 
.
˙
˙
 
Xml
˙
˙
  
.
˙
˙
  !
Linq
˙
˙
! %
.
˙
˙
% &
XElement
˙
˙
& .
)
˙
˙
. /
)
˙
˙
/ 0
{
˚
˚
 
return
¸
¸
 

false
¸
¸
 
;
¸
¸
 
}
˝
˝
 
if
ˇ
ˇ
 
(
ˇ
ˇ
 
type
ˇ
ˇ
 
==
ˇ
ˇ
 
typeof
ˇ
ˇ
 
(
ˇ
ˇ
 
	DataTable
ˇ
ˇ
 
)
ˇ
ˇ
  
)
ˇ
ˇ
  !
{
ÄÄ 
return
ÅÅ 

false
ÅÅ 
;
ÅÅ 
}
ÇÇ 
if
ÑÑ 
(
ÑÑ 
type
ÑÑ 
.
ÑÑ 
Name
ÑÑ 
==
ÑÑ 
$str
ÑÑ 
)
ÑÑ 
{
ÖÖ 
return
ÜÜ 

false
ÜÜ 
;
ÜÜ 
}
áá 
if
ââ 
(
ââ 

SysTypeDic
ââ 
.
ââ 
ContainsKey
ââ 
(
ââ 
type
ââ "
.
ââ" #
FullName
ââ# +
)
ââ+ ,
)
ââ, -
{
ää 
return
ãã 

false
ãã 
;
ãã 
}
åå 
return
éé 	
true
éé
 
;
éé 
}
èè 
private
ëë 	
void
ëë
 %
WriteComplexElementType
ëë &
(
ëë& '!
XmlDictionaryWriter
ëë' :
writer
ëë; A
,
ëëA B
string
ëëC I
typeName
ëëJ R
,
ëëR S
string
ëëT Z
schemaNamespace
ëë[ j
,
ëëj k
string
ëël r
objectNamespaceëës Ç
,ëëÇ É
TypeëëÑ à
typeëëâ ç
)ëëç é
{
íí 
var
ìì 

underlying
ìì 
=
ìì 
Nullable
ìì 
.
ìì 
GetUnderlyingType
ìì .
(
ìì. /
type
ìì/ 3
)
ìì3 4
;
ìì4 5
if
îî 
(
îî 
!
îî 
type
îî 
.
îî 
IsEnum
îî 
||
îî 

underlying
îî !
!=
îî" $
null
îî% )
)
îî) *
{
ïï 
writer
ññ 

.
ññ
 "
WriteAttributeString
ññ 
(
ññ  
$str
ññ  *
,
ññ* +
$str
ññ, 2
)
ññ2 3
;
ññ3 4
}
óó 
if
öö 
(
öö 

underlying
öö 
?
öö 
.
öö 
IsEnum
öö 
==
öö 
true
öö !
)
öö! "
{
õõ 
type
úú 
=
úú	 


underlying
úú 
;
úú 
typeName
ùù 
=
ùù 
GetTypeName
ùù 
(
ùù 

underlying
ùù %
)
ùù% &
;
ùù& '
objectNamespace
ûû 
=
ûû 
GetModelNamespace
ûû '
(
ûû' (

underlying
ûû( 2
)
ûû2 3
;
ûû3 4
}
üü 
if
°° 
(
°° 
schemaNamespace
°° 
!=
°° 
objectNamespace
°° )
)
°°) *
{
¢¢ 
var
££ 
ns
££ 

=
££ 
$"
££ 
q
££ 
{
££ 
_namespaceCounter
££ "
++
££" $
}
££$ %
"
££% &
;
££& '
writer
§§ 

.
§§
 !
WriteXmlnsAttribute
§§ 
(
§§ 
$"
§§ !
{
§§! "
ns
§§" $
}
§§$ %
"
§§% &
,
§§& '&
GetDataContractNamespace
§§( @
(
§§@ A
type
§§A E
)
§§E F
)
§§F G
;
§§G H
writer
•• 

.
••
 "
WriteAttributeString
•• 
(
••  
$str
••  &
,
••& '
$"
••( *
{
••* +
ns
••+ -
}
••- .
:
••. /
{
••/ 0
typeName
••0 8
}
••8 9
"
••9 :
)
••: ;
;
••; <
}
¶¶ 
else
ßß 
{
®® 
writer
©© 

.
©©
 "
WriteAttributeString
©© 
(
©©  
$str
©©  &
,
©©& '
$"
©©( *
tns:
©©* .
{
©©. /
typeName
©©/ 7
}
©©7 8
"
©©8 9
)
©©9 :
;
©©: ;
}
™™ 
}
´´ 
private
≠≠ 	
string
≠≠
 
GetTypeName
≠≠ 
(
≠≠ 
Type
≠≠ !
type
≠≠" &
)
≠≠& '
{
ÆÆ 
if
ØØ 
(
ØØ 
type
ØØ 
.
ØØ 
IsGenericType
ØØ 
&&
ØØ 
!
ØØ 
type
ØØ "
.
ØØ" #
IsArray
ØØ# *
&&
ØØ+ -
!
ØØ. /
typeof
ØØ/ 5
(
ØØ5 6
IEnumerable
ØØ6 A
)
ØØA B
.
ØØB C
IsAssignableFrom
ØØC S
(
ØØS T
type
ØØT X
)
ØØX Y
)
ØØY Z
{
∞∞ 
var
±± 
genericTypes
±± 
=
±± 
GetGenericTypes
±± &
(
±±& '
type
±±' +
)
±±+ ,
;
±±, -
var
≤≤ 
genericTypeNames
≤≤ 
=
≤≤ 
genericTypes
≤≤ '
.
≤≤' (
Select
≤≤( .
(
≤≤. /
a
≤≤/ 0
=>
≤≤1 3
GetTypeName
≤≤4 ?
(
≤≤? @
a
≤≤@ A
)
≤≤A B
)
≤≤B C
;
≤≤C D
var
¥¥ 
typeName
¥¥ 
=
¥¥ !
ReplaceGenericNames
¥¥ &
(
¥¥& '
type
¥¥' +
.
¥¥+ ,
Name
¥¥, 0
)
¥¥0 1
;
¥¥1 2
typeName
µµ 
=
µµ 
typeName
µµ 
+
µµ 
$str
µµ 
+
µµ  
string
µµ! '
.
µµ' (
Concat
µµ( .
(
µµ. /
genericTypeNames
µµ/ ?
)
µµ? @
;
µµ@ A
return
∂∂ 

typeName
∂∂ 
;
∂∂ 
}
∑∑ 
if
ππ 
(
ππ 
type
ππ 
.
ππ 
IsArray
ππ 
)
ππ 
{
∫∫ 
return
ªª 

$str
ªª 
+
ªª 
GetTypeName
ªª "
(
ªª" #
type
ªª# '
.
ªª' (
GetElementType
ªª( 6
(
ªª6 7
)
ªª7 8
)
ªª8 9
;
ªª9 :
}
ºº 
if
øø 
(
øø 
typeof
øø 
(
øø 
IEnumerable
øø 
)
øø 
.
øø 
IsAssignableFrom
øø +
(
øø+ ,
type
øø, 0
)
øø0 1
&&
øø2 4
type
øø5 9
!=
øø: <
typeof
øø= C
(
øøC D
string
øøD J
)
øøJ K
)
øøK L
{
¿¿ 
var
¡¡ -
collectionDataContractAttribute
¡¡ '
=
¡¡( )
type
¡¡* .
.
¡¡. / 
GetCustomAttribute
¡¡/ A
<
¡¡A B-
CollectionDataContractAttribute
¡¡B a
>
¡¡a b
(
¡¡b c
)
¡¡c d
;
¡¡d e
if
¬¬ 
(
¬¬ -
collectionDataContractAttribute
¬¬ '
!=
¬¬( *
null
¬¬+ /
)
¬¬/ 0
{
√√ 
var
ƒƒ 
typeName
ƒƒ	 
=
ƒƒ -
collectionDataContractAttribute
ƒƒ 3
.
ƒƒ3 4!
IsNameSetExplicitly
ƒƒ4 G
?
≈≈ -
collectionDataContractAttribute
≈≈ '
.
≈≈' (
Name
≈≈( ,
:
∆∆ !
ReplaceGenericNames
∆∆ 
(
∆∆ 
type
∆∆  
.
∆∆  !
Name
∆∆! %
)
∆∆% &
;
∆∆& '
if
»» 
(
»» 	
type
»»	 
.
»» 
IsGenericType
»» 
)
»» 
{
…… 
var
   	
genericType
  
 
=
   
GetGenericType
   &
(
  & '
type
  ' +
)
  + ,
;
  , -
var
ÃÃ 	
(
ÃÃ
 
name
ÃÃ 
,
ÃÃ 
_
ÃÃ 
)
ÃÃ 
=
ÃÃ 
ResolveSystemType
ÃÃ '
(
ÃÃ' (
genericType
ÃÃ( 3
)
ÃÃ3 4
;
ÃÃ4 5
var
ÕÕ 	
genericTypeName
ÕÕ
 
=
ÕÕ 
string
ÕÕ "
.
ÕÕ" #
IsNullOrEmpty
ÕÕ# 0
(
ÕÕ0 1
name
ÕÕ1 5
)
ÕÕ5 6
?
ÕÕ7 8
GetTypeName
ÕÕ9 D
(
ÕÕD E
genericType
ÕÕE P
)
ÕÕP Q
:
ÕÕR S
name
ÕÕT X
;
ÕÕX Y
typeName
œœ 
=
œœ 
string
œœ 
.
œœ 
Format
œœ 
(
œœ 
typeName
œœ '
,
œœ' (
genericTypeName
œœ) 8
)
œœ8 9
;
œœ9 :
}
–– 
return
““ 
typeName
““ 
;
““ 
}
”” 
else
‘‘ 
{
’’ 
return
÷÷ 
$str
÷÷ 
+
÷÷ 
GetTypeName
÷÷ #
(
÷÷# $
GetGenericType
÷÷$ 2
(
÷÷2 3
type
÷÷3 7
)
÷÷7 8
)
÷÷8 9
;
÷÷9 :
}
◊◊ 
}
ÿÿ 
var
€€ #
dataContractAttribute
€€ 
=
€€ 
type
€€ #
.
€€# $ 
GetCustomAttribute
€€$ 6
<
€€6 7#
DataContractAttribute
€€7 L
>
€€L M
(
€€M N
)
€€N O
;
€€O P
if
‹‹ 
(
‹‹ #
dataContractAttribute
‹‹ 
!=
‹‹ 
null
‹‹  $
&&
‹‹% '#
dataContractAttribute
‹‹( =
.
‹‹= >!
IsNameSetExplicitly
‹‹> Q
)
‹‹Q R
{
›› 
return
ﬁﬁ 
#
dataContractAttribute
ﬁﬁ  
.
ﬁﬁ  !
Name
ﬁﬁ! %
;
ﬁﬁ% &
}
ﬂﬂ 
return
·· 	
type
··
 
.
·· 
Name
·· 
;
·· 
}
‚‚ 
private
‰‰ 	
string
‰‰
 !
ReplaceGenericNames
‰‰ $
(
‰‰$ %
string
‰‰% +
name
‰‰, 0
)
‰‰0 1
{
ÂÂ 
if
ÊÊ 
(
ÊÊ 
name
ÊÊ 
.
ÊÊ 
Contains
ÊÊ 
(
ÊÊ 
$str
ÊÊ 
)
ÊÊ 
)
ÊÊ 
{
ÁÁ 
foreach
ÈÈ 
(
ÈÈ 
var
ÈÈ 
number
ÈÈ 
in
ÈÈ 
_numbers
ÈÈ #
)
ÈÈ# $
{
ÍÍ 
name
ÎÎ 	
=
ÎÎ
 
name
ÎÎ 
.
ÎÎ 
Replace
ÎÎ 
(
ÎÎ 
$str
ÎÎ 
+
ÎÎ 
number
ÎÎ %
,
ÎÎ% &
$str
ÎÎ' *
+
ÎÎ+ ,
string
ÎÎ- 3
.
ÎÎ3 4
Empty
ÎÎ4 9
)
ÎÎ9 :
;
ÎÎ: ;
}
ÏÏ 
return
ÓÓ 

name
ÓÓ 
.
ÓÓ 
Replace
ÓÓ 
(
ÓÓ 
$str
ÓÓ 
,
ÓÓ 
string
ÓÓ #
.
ÓÓ# $
Empty
ÓÓ$ )
)
ÓÓ) *
;
ÓÓ* +
}
ÔÔ 
else
 
{
ÒÒ 
return
ÚÚ 

name
ÚÚ 
;
ÚÚ 
}
ÛÛ 
}
ÙÙ 
private
ˆˆ 	
(
ˆˆ
 
string
ˆˆ 
name
ˆˆ 
,
ˆˆ 
string
ˆˆ 
ns
ˆˆ !
)
ˆˆ! "
ResolveSystemType
ˆˆ# 4
(
ˆˆ4 5
Type
ˆˆ5 9
type
ˆˆ: >
)
ˆˆ> ?
{
˜˜ 
if
¯¯ 
(
¯¯ 

SysTypeDic
¯¯ 
.
¯¯ 
ContainsKey
¯¯ 
(
¯¯ 
type
¯¯ "
.
¯¯" #
FullName
¯¯# +
)
¯¯+ ,
)
¯¯, -
{
˘˘ 
return
˙˙ 


SysTypeDic
˙˙ 
[
˙˙ 
type
˙˙ 
.
˙˙ 
FullName
˙˙ #
]
˙˙# $
;
˙˙$ %
}
˚˚ 
return
˝˝ 	
(
˝˝
 
null
˝˝ 
,
˝˝ 
null
˝˝ 
)
˝˝ 
;
˝˝ 
}
˛˛ 
private
ÄÄ 	
bool
ÄÄ
 
HasBaseType
ÄÄ 
(
ÄÄ 
Type
ÄÄ 
type
ÄÄ  $
)
ÄÄ$ %
{
ÅÅ 
var
ÇÇ 
isArrayType
ÇÇ 
=
ÇÇ 
type
ÇÇ 
.
ÇÇ 
IsArray
ÇÇ !
||
ÇÇ" $
typeof
ÇÇ% +
(
ÇÇ+ ,
IEnumerable
ÇÇ, 7
)
ÇÇ7 8
.
ÇÇ8 9
IsAssignableFrom
ÇÇ9 I
(
ÇÇI J
type
ÇÇJ N
)
ÇÇN O
;
ÇÇO P
var
ÑÑ 
baseType
ÑÑ 
=
ÑÑ 
type
ÑÑ 
.
ÑÑ 
GetTypeInfo
ÑÑ "
(
ÑÑ" #
)
ÑÑ# $
.
ÑÑ$ %
BaseType
ÑÑ% -
;
ÑÑ- .
return
ÜÜ 	
!
ÜÜ
 
isArrayType
ÜÜ 
&&
ÜÜ 
!
ÜÜ 
type
ÜÜ 
.
ÜÜ  
IsEnum
ÜÜ  &
&&
ÜÜ' )
!
ÜÜ* +
type
ÜÜ+ /
.
ÜÜ/ 0
IsPrimitive
ÜÜ0 ;
&&
ÜÜ< >
!
ÜÜ? @
type
ÜÜ@ D
.
ÜÜD E
IsValueType
ÜÜE P
&&
ÜÜQ S
baseType
ÜÜT \
!=
ÜÜ] _
null
ÜÜ` d
&&
ÜÜe g
!
ÜÜh i
baseType
ÜÜi q
.
ÜÜq r
Name
ÜÜr v
.
ÜÜv w
Equals
ÜÜw }
(
ÜÜ} ~
$strÜÜ~ Ü
)ÜÜÜ á
;ÜÜá à
}
áá 
}
àà 
}ââ Ø
VC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Meta\TypeToBuild.cs
	namespace 	
SoapCore
 
. 
Meta 
{ 
public 
class 
TypeToBuild 
{ 
public		 
TypeToBuild			 
(		 
Type		 
type		 
)		 
{

 
Type 
= 	
type
 
; 
TypeName 
= 
type 
. !
GetSerializedTypeName (
(( )
)) *
;* +
ChildElementName 
= 
null 
; 
IsAnonumous 
= 
type 
. 
GetCustomAttribute (
<( )
XmlTypeAttribute) 9
>9 :
(: ;
); <
?< =
.= >
AnonymousType> K
==L N
trueO S
;S T
} 
public 
bool	 
IsAnonumous 
{ 
get 
;  
}! "
public 
Type	 
Type 
{ 
get 
; 
} 
public 
string	 
TypeName 
{ 
get 
; 
set  #
;# $
}% &
public 
string	 
ChildElementName  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} â?
PC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Namespaces.cs
	namespace 	
SoapCore
 
{ 
public 
static 
class 

Namespaces 
{ 
public

 
const

	 
string

 
	XMLNS_XSD

 
=

  !
	XmlSchema

" +
.

+ ,
	Namespace

, 5
;

5 6
public 
const	 
string 
	XMLNS_XSI 
=  !
	XmlSchema" +
.+ ,
InstanceNamespace, =
;= >
public 
const	 
string 
WSDL_NS 
= 
$str  B
;B C
public 
const	 
string 
	SOAP11_NS 
=  !
$str" I
;I J
public 
const	 
string 
	SOAP12_NS 
=  !
$str" K
;K L
public 
const	 
string 
	ARRAYS_NS 
=  !
$str" ]
;] ^
public 
const	 
string 
	SYSTEM_NS 
=  !
$str" R
;R S
public 
const	 
string !
DataContractNamespace +
=, -
$str. X
;X Y
public 
const	 
string 
SERIALIZATION_NS &
=' (
$str) ^
;^ _
public 
const	 
string 
WSP_NS 
= 
$str M
;M N
public 
const	 
string 
WSAM_NS 
= 
$str  O
;O P
public 
const	 
string 
SystemData_NS #
=$ %
$str& [
;[ \
public 
const	 
string 
MSC_NS 
= 
$str V
;V W
public 
const	 
string 
WSU_NS 
= 
$str s
;s t
public 
const	 
string 
HTTP_NS 
= 
$str  U
;U V
public 
const	 
string 
TRANSPORT_SCHEMA &
=' (
$str) O
;O P
public 
const	 
string 
SOAP11_ENVELOPE_NS (
=) *
$str+ V
;V W
public 
const	 
string 
SOAP12_ENVELOPE_NS (
=) *
$str+ T
;T U
public 
static	 
void  
AddDefaultNamespaces )
() *
XmlNamespaceManager* =
xmlNamespaceManager> Q
)Q R
{ 7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix   .
(  . /
xmlNamespaceManager  / B
,  B C
$str  D I
,  I J

Namespaces  K U
.  U V
	XMLNS_XSD  V _
)  _ `
;  ` a7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix!! .
(!!. /
xmlNamespaceManager!!/ B
,!!B C
$str!!D J
,!!J K

Namespaces!!L V
.!!V W
WSDL_NS!!W ^
)!!^ _
;!!_ `7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix"" .
("". /
xmlNamespaceManager""/ B
,""B C
$str""D I
,""I J

Namespaces""K U
.""U V
MSC_NS""V \
)""\ ]
;""] ^7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix## .
(##. /
xmlNamespaceManager##/ B
,##B C
$str##D I
,##I J

Namespaces##K U
.##U V
WSP_NS##V \
)##\ ]
;##] ^7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix$$ .
($$. /
xmlNamespaceManager$$/ B
,$$B C
$str$$D I
,$$I J

Namespaces$$K U
.$$U V
WSU_NS$$V \
)$$\ ]
;$$] ^7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix%% .
(%%. /
xmlNamespaceManager%%/ B
,%%B C
$str%%D J
,%%J K

Namespaces%%L V
.%%V W
HTTP_NS%%W ^
)%%^ _
;%%_ `7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix&& .
(&&. /
xmlNamespaceManager&&/ B
,&&B C
$str&&D J
,&&J K

Namespaces&&L V
.&&V W
TRANSPORT_SCHEMA&&W g
)&&g h
;&&h i7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix'' .
(''. /
xmlNamespaceManager''/ B
,''B C
$str''D J
,''J K

Namespaces''L V
.''V W
	SOAP11_NS''W `
)''` a
;''a b7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix(( .
(((. /
xmlNamespaceManager((/ B
,((B C
$str((D L
,((L M

Namespaces((N X
.((X Y
	SOAP12_NS((Y b
)((b c
;((c d7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix)) .
()). /
xmlNamespaceManager))/ B
,))B C
$str))D I
,))I J

Namespaces))K U
.))U V
SERIALIZATION_NS))V f
)))f g
;))g h7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix** .
(**. /
xmlNamespaceManager**/ B
,**B C
$str**D J
,**J K

Namespaces**L V
.**V W
WSAM_NS**W ^
)**^ _
;**_ `
}++ 
public-- 
static--	 
string-- 7
+AddNamespaceIfNotAlreadyPresentAndGetPrefix-- B
(--B C
XmlNamespaceManager--C V
xmlNamespaceManager--W j
,--j k
string--l r
preferredPrefix	--s Ç
,
--Ç É
string
--Ñ ä
uri
--ã é
)
--é è
{.. 
var// 
existingPrefix// 
=// 
xmlNamespaceManager// +
.//+ ,
LookupPrefix//, 8
(//8 9
uri//9 <
)//< =
;//= >
if00 
(00 
existingPrefix00 
==00 
null00 
)00 
{11 
var22 
localPrefix22 
=22 
preferredPrefix22 %
;22% &
for33 
(33 	
int33	 
i33 
=33 
$num33 
;33 
;33 
i33 
++33 
)33 
{44 
var55 
existingNamespace55	 
=55 
xmlNamespaceManager55 0
.550 1
LookupNamespace551 @
(55@ A
localPrefix55A L
)55L M
;55M N
if66 
(66 	
existingNamespace66	 
==66 
null66 "
)66" #
{77 
break88 
;88 
}99 
localPrefix;; 
=;; 
$";; 
prefix;; 
{;; 
i;; 
};; 
";; 
;;;  
}<< 
xmlNamespaceManager>> 
.>> 
AddNamespace>> $
(>>$ %
localPrefix>>% 0
,>>0 1
uri>>2 5
)>>5 6
;>>6 7
return?? 

localPrefix?? 
;?? 
}@@ 
returnBB 	
existingPrefixBB
 
;BB 
}CC 
publicEE 
staticEE	 
XmlNamespaceManagerEE #,
 CreateDefaultXmlNamespaceManagerEE$ D
(EED E
)EEE F
{FF 
varGG 
xmlNamespaceManagerGG 
=GG 
newGG  
XmlNamespaceManagerGG! 4
(GG4 5
newGG5 8
	NameTableGG9 B
(GGB C
)GGC D
)GGD E
;GGE F 
AddDefaultNamespacesHH 
(HH 
xmlNamespaceManagerHH +
)HH+ ,
;HH, -
returnII 	
xmlNamespaceManagerII
 
;II 
}JJ 
}KK 
}LL ¨
]C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[		 
assembly		 	
:			 

AssemblyCompany		 
(		 
$str		 +
)		+ ,
]		, -
[

 
assembly

 	
:

	 

AssemblyProduct

 
(

 
$str

 %
)

% &
]

& '
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8ôb
ZC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\ReflectionExtensions.cs
	namespace 	
SoapCore
 
{		 
internal 	
static
 
class  
ReflectionExtensions +
{ 
internal 

static 

MethodInfo 
GetGenericMethod -
(- .
this. 2
Type3 7
type8 <
,< =
string> D
nameE I
,I J
paramsK Q
TypeR V
[V W
]W X
typeArgumentsY f
)f g
{ 
if 
( 
name 
== 
null 
) 
{ 
throw 	
new
 !
ArgumentNullException #
(# $
nameof$ *
(* +
name+ /
)/ 0
)0 1
;1 2
} 
if 
( 
typeArguments 
== 
null 
) 
{   
throw!! 	
new!!
 !
ArgumentNullException!! #
(!!# $
nameof!!$ *
(!!* +
typeArguments!!+ 8
)!!8 9
)!!9 :
;!!: ;
}"" 
if$$ 
($$ 
typeArguments$$ 
.$$ 
Any$$ 
($$ 
t$$ 
=>$$ 
t$$ 
==$$  "
null$$# '
)$$' (
)$$( )
{%% 
throw&& 	
new&&
 !
ArgumentNullException&& #
(&&# $
nameof&&$ *
(&&* +
typeArguments&&+ 8
)&&8 9
)&&9 :
;&&: ;
}'' 
var)) 
methods)) 
=)) 
type)) 
.)) 

GetMethods))  
())  !
)))! "
.** 
Where** 

(**
 
method** 
=>** 
method** 
.** 
IsPublic** $
)**$ %
.++ 
Where++ 

(++
 
method++ 
=>++ 
method++ 
.++ 
IsGenericMethod++ +
)+++ ,
.,, 
Where,, 

(,,
 
method,, 
=>,, 
method,, 
.,, 
Name,,  
==,,! #
name,,$ (
),,( )
.-- 
Where-- 

(--
 
method-- 
=>-- 
{.. 
var00 
genericArguments00	 
=00 
method00 "
.00" #
GetGenericArguments00# 6
(006 7
)007 8
;008 9
if11 
(11 	
genericArguments11	 
.11 
Length11  
!=11! #
typeArguments11$ 1
.111 2
Length112 8
)118 9
{22 
return33 
false33 
;33 
}44 
for66 
(66	 

var66
 
i66 
=66 
$num66 
;66 
i66 
<66 
genericArguments66 )
.66) *
Length66* 0
;660 1
i662 3
++663 5
)665 6
{77 
var88 	
genericArgument88
 
=88 
genericArguments88 ,
[88, -
i88- .
]88. /
;88/ 0
var99 	
typeArgument99
 
=99 
typeArguments99 &
[99& '
i99' (
]99( )
;99) *
if:: 
(::	 

!::
 
genericArgument:: 
.:: *
GetGenericParameterConstraints:: 9
(::9 :
)::: ;
.::; <
All::< ?
(::? @

constraint::@ J
=>::K M

constraint::N X
.::X Y
IsAssignableFrom::Y i
(::i j
typeArgument::j v
)::v w
)::w x
)::x y
{;; 
return<< 
false<< 
;<< 
}== 
}>> 
return@@ 
true@@ 
;@@ 
}AA 
)AA 
;AA 

MethodInfoBB 
resultBB 
=BB 
nullBB 
;BB 
foreachCC 

(CC 
varCC 
methodCC 
inCC 
methodsCC !
)CC! "
{DD 
ifEE 
(EE 
resultEE 
!=EE 
nullEE 
)EE 
{FF 
throwGG 

newGG #
AmbiguousMatchExceptionGG &
(GG& '
)GG' (
;GG( )
}HH 
resultJJ 

=JJ 
methodJJ 
;JJ 
}KK 
returnMM 	
resultMM
 
?MM 
.MM 
MakeGenericMethodMM #
(MM# $
typeArgumentsMM$ 1
)MM1 2
;MM2 3
}NN 
internalUU 

staticUU 
IEnumerableUU 
<UU 

MemberInfoUU (
>UU( )%
GetPropertyOrFieldMembersUU* C
(UUC D
thisUUD H
TypeUUI M
typeUUN R
)UUR S
=>UUT V
typeVV 
.VV 
	GetFieldsVV 
(VV 
)VV 
.WW 
CastWW 	
<WW	 


MemberInfoWW
 
>WW 
(WW 
)WW 
.XX 
ConcatXX 
(XX 
typeXX 
.XX 
GetPropertiesXX 
(XX 
)XX  
)XX  !
;XX! "
internal`` 

static`` 
Type`` "
GetPropertyOrFieldType`` -
(``- .
this``. 2

MemberInfo``3 =

memberInfo``> H
)``H I
{aa 
ifbb 
(bb 

memberInfobb 
isbb 
	FieldInfobb 
fibb !
)bb! "
{cc 
returndd 

fidd 
.dd 
	FieldTypedd 
;dd 
}ee 
ifgg 
(gg 

memberInfogg 
isgg 
PropertyInfogg !
pigg" $
)gg$ %
{hh 
returnii 

piii 
.ii 
PropertyTypeii 
;ii 
}jj 
returnll 	
nullll
 
;ll 
}mm 
internaloo 

staticoo 
voidoo %
SetValueToPropertyOrFieldoo 0
(oo0 1
thisoo1 5

MemberInfooo6 @

memberInfoooA K
,ooK L
objectooM S
objooT W
,ooW X
objectooY _
valueoo` e
)ooe f
{pp 
ifqq 
(qq 

memberInfoqq 
isqq 
	FieldInfoqq 
fiqq !
)qq! "
{rr 
fiss 
.ss 
SetValuess 
(ss 
objss 
,ss 
valuess 
)ss 
;ss 
}tt 
elseuu 
ifuu 

(uu 

memberInfouu 
isuu 
PropertyInfouu &
piuu' )
)uu) *
{vv 
piww 
.ww 
SetValueww 
(ww 
objww 
,ww 
valueww 
)ww 
;ww 
}xx 
elseyy 
{zz 
throw{{ 	
new{{
 #
NotImplementedException{{ %
({{% &
$str{{& P
+{{Q R

memberInfo{{S ]
.{{] ^
GetType{{^ e
({{e f
){{f g
?{{g h
.{{h i
Name{{i m
){{m n
;{{n o
}|| 
}}} 
internal 

static 
object #
GetPropertyOrFieldValue 0
(0 1
this1 5

MemberInfo6 @

memberInfoA K
,K L
objectM S
objT W
)W X
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 

memberInfo
ÅÅ 
is
ÅÅ 
	FieldInfo
ÅÅ 
fi
ÅÅ !
)
ÅÅ! "
{
ÇÇ 
return
ÉÉ 

fi
ÉÉ 
.
ÉÉ 
GetValue
ÉÉ 
(
ÉÉ 
obj
ÉÉ 
)
ÉÉ 
;
ÉÉ 
}
ÑÑ 
if
ÜÜ 
(
ÜÜ 

memberInfo
ÜÜ 
is
ÜÜ 
PropertyInfo
ÜÜ !
pi
ÜÜ" $
)
ÜÜ$ %
{
áá 
return
àà 

pi
àà 
.
àà 
GetValue
àà 
(
àà 
obj
àà 
)
àà 
;
àà 
}
ââ 
throw
ãã 
new
ãã	 %
NotImplementedException
ãã $
(
ãã$ %
$"
ãã% ':
,Unable to get value out of member with type 
ãã' S
{
ããS T

memberInfo
ããT ^
.
ãã^ _
GetType
ãã_ f
(
ããf g
)
ããg h
}
ããh i
"
ããi j
)
ããj k
;
ããk l
}
åå 
internal
éé 

static
éé 
IEnumerable
éé 
<
éé 

MemberInfo
éé (
>
éé( )%
GetMembersWithAttribute
éé* A
<
ééA B

TAttribute
ééB L
>
ééL M
(
ééM N
this
ééN R
Type
ééS W
type
ééX \
)
éé\ ]
where
èè 

TAttribute
èè	 
:
èè 
	Attribute
èè 
{
êê 
return
ëë 	'
GetPropertyOrFieldMembers
ëë
 #
(
ëë# $
type
ëë$ (
)
ëë( )
.
ëë) *
Where
ëë* /
(
ëë/ 0
x
ëë0 1
=>
ëë2 4
x
ëë5 6
.
ëë6 7 
GetCustomAttribute
ëë7 I
<
ëëI J

TAttribute
ëëJ T
>
ëëT U
(
ëëU V
)
ëëV W
!=
ëëX Z
null
ëë[ _
)
ëë_ `
;
ëë` a
}
íí 
internal
îî 

static
îî 
bool
îî *
TryGetBaseTypeWithKnownTypes
îî 3
(
îî3 4
this
îî4 8
Type
îî9 =
type
îî> B
,
îîB C
out
îîD G
Type
îîH L
result
îîM S
)
îîS T
{
ïï 
if
ññ 
(
ññ 
type
ññ 
is
ññ 
null
ññ 
)
ññ 
{
óó 
throw
òò 	
new
òò
 #
ArgumentNullException
òò #
(
òò# $
nameof
òò$ *
(
òò* +
type
òò+ /
)
òò/ 0
)
òò0 1
;
òò1 2
}
ôô 
if
õõ 
(
õõ 
type
õõ 
.
õõ 
IsEnum
õõ 
||
õõ 
type
õõ 
.
õõ 
IsPrimitive
õõ &
||
õõ' )
type
õõ* .
.
õõ. /
IsValueType
õõ/ :
)
õõ: ;
{
úú 
result
ùù 

=
ùù 
null
ùù 
;
ùù 
return
ûû 

false
ûû 
;
ûû 
}
üü 
if
°° 
(
°° 
type
°° 
.
°° 
IsArray
°° 
||
°° 
typeof
°° 
(
°° 
IEnumerable
°° )
)
°°) *
.
°°* +
IsAssignableFrom
°°+ ;
(
°°; <
type
°°< @
)
°°@ A
)
°°A B
{
¢¢ 
result
££ 

=
££ 
null
££ 
;
££ 
return
§§ 

false
§§ 
;
§§ 
}
•• 
Type
ßß 
baseType
ßß 
=
ßß 
type
ßß 
.
ßß 
GetTypeInfo
ßß #
(
ßß# $
)
ßß$ %
.
ßß% &
BaseType
ßß& .
;
ßß. /
if
®® 
(
®® 
baseType
®® 
is
®® 
null
®® 
||
®® 
baseType
®® #
.
®®# $
Name
®®$ (
.
®®( )
Equals
®®) /
(
®®/ 0
$str
®®0 8
)
®®8 9
)
®®9 :
{
©© 
result
™™ 

=
™™ 
null
™™ 
;
™™ 
return
´´ 

false
´´ 
;
´´ 
}
¨¨ 
bool
ÆÆ 
hasKnownTypes
ÆÆ 
=
ÆÆ 
baseType
ÆÆ  
.
ØØ !
GetCustomAttributes
ØØ 
<
ØØ  
KnownTypeAttribute
ØØ +
>
ØØ+ ,
(
ØØ, -
)
ØØ- .
.
∞∞ 
Any
∞∞ 
(
∞∞ 	
)
∞∞	 

;
∞∞
 
result
≤≤ 	
=
≤≤
 
hasKnownTypes
≤≤ 
?
≥≥ 
baseType
≥≥ 
:
¥¥ 
null
¥¥ 

;
¥¥
 
return
µµ 	
hasKnownTypes
µµ
 
;
µµ 
}
∂∂ 
}
∑∑ 
}∏∏ óh
VC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\SerializerHelper.cs
	namespace

 	
SoapCore


 
{ 
internal 	
class
 
SerializerHelper  
{ 
private 	
readonly
 
SoapSerializer !
_serializer" -
;- .
public 
SerializerHelper	 
( 
SoapSerializer (

serializer) 3
)3 4
{ 
_serializer 
= 

serializer 
; 
} 
public 
object	 %
DeserializeInputParameter )
() *
System 	
.	 

Xml
 
. 
XmlDictionaryReader !
	xmlReader" +
,+ ,
Type 
parameterType 
, 
string 	
parameterName
 
, 
string 	
parameterNs
 
, 

MemberInfo 

memberInfo 
, 
IEnumerable 
< 
Type 
> 

knownTypes 
=  !
null" &
)& '
{ 
if 
( 
	xmlReader 
. 
IsStartElement 
(  
parameterName  -
,- .
parameterNs/ :
): ;
); <
{ 
	xmlReader 
. 
MoveToStartElement  
(  !
parameterName! .
,. /
parameterNs0 ;
); <
;< =
if!! 
(!! 
	xmlReader!! 
.!! 
IsStartElement!!  
(!!  !
parameterName!!! .
,!!. /
parameterNs!!0 ;
)!!; <
)!!< =
{"" 
switch## 
(## 
_serializer## 
)## 
{$$ 
case%% 

SoapSerializer%% 
.%% 
XmlSerializer%% '
:%%' (
if&& 	
(&&
 
!&& 
parameterType&& 
.&& 
IsArray&& !
)&&! "
{'' 
return** 
DeserializeObject**  
(**  !
	xmlReader**! *
,*** +
parameterType**, 9
,**9 :
parameterName**; H
,**H I
parameterNs**J U
)**U V
;**V W
}++ 
else,, 
{-- 
return11 )
DeserializeArrayXmlSerializer11 ,
(11, -
	xmlReader11- 6
,116 7
parameterType118 E
,11E F
parameterName11G T
,11T U
parameterNs11V a
,11a b

memberInfo11c m
)11m n
;11n o
}22 
case44 

SoapSerializer44 
.44 "
DataContractSerializer44 0
:440 1
return55 #
DeserializeDataContract55 %
(55% &
	xmlReader55& /
,55/ 0
parameterType551 >
,55> ?
parameterName55@ M
,55M N
parameterNs55O Z
,55Z [

knownTypes55\ f
)55f g
;55g h
default77 
:77 
throw88 
new88 #
NotImplementedException88 (
(88( )
)88) *
;88* +
}99 
}:: 
};; 
if== 
(== 
parameterType== 
.== 
IsArray== 
)== 
{>> 
return?? 

Array?? 
.?? 
CreateInstance?? 
(??  
parameterType??  -
.??- .
GetElementType??. <
(??< =
)??= >
,??> ?
$num??@ A
)??A B
;??B C
}@@ 
returnBB 	
nullBB
 
;BB 
}CC 
privateEE 	
staticEE
 
objectEE 
DeserializeObjectEE )
(EE) *
SystemEE* 0
.EE0 1
XmlEE1 4
.EE4 5
XmlDictionaryReaderEE5 H
	xmlReaderEEI R
,EER S
TypeEET X
parameterTypeEEY f
,EEf g
stringEEh n
parameterNameEEo |
,EE| }
string	EE~ Ñ
parameterNs
EEÖ ê
)
EEê ë
{FF 
varHH 
elementTypeHH 
=HH 
parameterTypeHH "
.HH" #
GetElementTypeHH# 1
(HH1 2
)HH2 3
;HH3 4
ifJJ 
(JJ 
elementTypeJJ 
==JJ 
nullJJ 
||JJ 
parameterTypeJJ +
.JJ+ ,
IsArrayJJ, 3
)JJ3 4
{KK 
elementTypeLL 
=LL 
parameterTypeLL 
;LL  
}MM 
varOO 

serializerOO 
=OO 
CachedXmlSerializerOO '
.OO' (
GetXmlSerializerOO( 8
(OO8 9
elementTypeOO9 D
,OOD E
parameterNameOOF S
,OOS T
parameterNsOOU `
)OO` a
;OOa b
lockQQ 
(QQ 	

serializerQQ	 
)QQ 
{RR 
ifSS 
(SS 
elementTypeSS 
==SS 
typeofSS 
(SS 
StreamSS $
)SS$ %
||SS& (
typeofSS) /
(SS/ 0
StreamSS0 6
)SS6 7
.SS7 8
IsAssignableFromSS8 H
(SSH I
elementTypeSSI T
)SST U
)SSU V
{TT 
	xmlReaderUU 
.UU 
ReadUU 
(UU 
)UU 
;UU 
returnVV 
newVV 
MemoryStreamVV 
(VV 
	xmlReaderVV &
.VV& '
ReadContentAsBase64VV' :
(VV: ;
)VV; <
)VV< =
;VV= >
}WW 
returnYY 


serializerYY 
.YY 
DeserializeYY !
(YY! "
	xmlReaderYY" +
)YY+ ,
;YY, -
}ZZ 
}[[ 
private]] 	
static]]
 
object]] #
DeserializeDataContract]] /
(]]/ 0
System^^ 	
.^^	 

Xml^^
 
.^^ 
XmlDictionaryReader^^ !
	xmlReader^^" +
,^^+ ,
Type__ 
parameterType__ 
,__ 
string`` 	
parameterName``
 
,`` 
stringaa 	
parameterNsaa
 
,aa 
IEnumerablebb 
<bb 
Typebb 
>bb 

knownTypesbb 
=bb  !
nullbb" &
)bb& '
{cc 
vardd 
elementTypedd 
=dd 
parameterTypedd "
.dd" #
GetElementTypedd# 1
(dd1 2
)dd2 3
;dd3 4
ifff 
(ff 
elementTypeff 
==ff 
nullff 
||ff 
parameterTypeff +
.ff+ ,
IsArrayff, 3
)ff3 4
{gg 
elementTypehh 
=hh 
parameterTypehh 
;hh  
}ii 
varkk 

serializerkk 
=kk 

knownTypeskk 
iskk !
nullkk" &
?ll 
newll 	"
DataContractSerializerll
  
(ll  !
elementTypell! ,
,ll, -
parameterNamell. ;
,ll; <
parameterNsll= H
)llH I
:mm 
newmm 	"
DataContractSerializermm
  
(mm  !
elementTypemm! ,
,mm, -
parameterNamemm. ;
,mm; <
parameterNsmm= H
,mmH I

knownTypesmmJ T
)mmT U
;mmU V
returnoo 	

serializeroo
 
.oo 

ReadObjectoo 
(oo  
	xmlReaderoo  )
,oo) *
verifyObjectNameoo+ ;
:oo; <
trueoo= A
)ooA B
;ooB C
}pp 
privaterr 	
objectrr
 )
DeserializeArrayXmlSerializerrr .
(rr. /
Systemrr/ 5
.rr5 6
Xmlrr6 9
.rr9 :
XmlDictionaryReaderrr: M
	xmlReaderrrN W
,rrW X
TyperrY ]
parameterTyperr^ k
,rrk l
stringrrm s
parameterName	rrt Å
,
rrÅ Ç
string
rrÉ â
parameterNs
rrä ï
,
rrï ñ

MemberInfo
rró °

memberInfo
rr¢ ¨
)
rr¨ ≠
{ss !
XmlArrayItemAttributett !
xmlArrayItemAttributett .
=tt/ 0

memberInfott1 ;
.tt; <
GetCustomAttributett< N
(ttN O
typeofttO U
(ttU V!
XmlArrayItemAttributettV k
)ttk l
)ttl m
asttn p"
XmlArrayItemAttribute	ttq Ü
;
ttÜ á
XmlElementAttributeuu 
xmlElementAttributeuu *
=uu+ ,

memberInfouu- 7
.uu7 8
GetCustomAttributeuu8 J
(uuJ K
typeofuuK Q
(uuQ R
XmlElementAttributeuuR e
)uue f
)uuf g
asuuh j
XmlElementAttributeuuk ~
;uu~ 
varww 
isEmptyww 
=ww 
	xmlReaderww 
.ww 
IsEmptyElementww )
;ww) *
varxx 
hasContainerElementxx 
=xx 
xmlElementAttributexx 0
==xx1 3
nullxx4 8
;xx8 9
ifyy 
(yy 
!yy 
isEmptyyy 
&&yy 
hasContainerElementyy &
)yy& '
{zz 
	xmlReader{{ 
.{{ 
ReadStartElement{{ 
({{ 
parameterName{{ ,
,{{, -
parameterNs{{. 9
){{9 :
;{{: ;
}|| 
var~~ 
elementType~~ 
=~~ 
parameterType~~ "
.~~" #
GetElementType~~# 1
(~~1 2
)~~2 3
;~~3 4
var
ÄÄ 
arrayItemName
ÄÄ 
=
ÄÄ #
xmlArrayItemAttribute
ÄÄ ,
?
ÄÄ, -
.
ÄÄ- .
ElementName
ÄÄ. 9
??
ÄÄ: <!
xmlElementAttribute
ÄÄ= P
?
ÄÄP Q
.
ÄÄQ R
ElementName
ÄÄR ]
??
ÄÄ^ `
elementType
ÄÄa l
.
ÄÄl m
Name
ÄÄm q
;
ÄÄq r
if
ÅÅ 
(
ÅÅ #
xmlArrayItemAttribute
ÅÅ 
?
ÅÅ 
.
ÅÅ 
ElementName
ÅÅ )
==
ÅÅ* ,
null
ÅÅ- 1
&&
ÅÅ2 4
elementType
ÅÅ5 @
.
ÅÅ@ A
	Namespace
ÅÅA J
?
ÅÅJ K
.
ÅÅK L

StartsWith
ÅÅL V
(
ÅÅV W
$str
ÅÅW _
)
ÅÅ_ `
==
ÅÅa c
true
ÅÅd h
)
ÅÅh i
{
ÇÇ 
var
ÉÉ 
compiler
ÉÉ 
=
ÉÉ 
new
ÉÉ  
CSharpCodeProvider
ÉÉ )
(
ÉÉ) *
)
ÉÉ* +
;
ÉÉ+ ,
var
ÑÑ 
type
ÑÑ 
=
ÑÑ 
new
ÑÑ 
CodeTypeReference
ÑÑ $
(
ÑÑ$ %
elementType
ÑÑ% 0
)
ÑÑ0 1
;
ÑÑ1 2
arrayItemName
ÖÖ 
=
ÖÖ 
compiler
ÖÖ 
.
ÖÖ 
GetTypeOutput
ÖÖ *
(
ÖÖ* +
type
ÖÖ+ /
)
ÖÖ/ 0
;
ÖÖ0 1
}
ÜÜ 
var
àà 
deserializeMethod
àà 
=
àà 
typeof
àà !
(
àà! "%
XmlSerializerExtensions
àà" 9
)
àà9 :
.
àà: ;
GetGenericMethod
àà; K
(
ààK L
nameof
ààL R
(
ààR S%
XmlSerializerExtensions
ààS j
.
ààj k
DeserializeArray
ààk {
)
àà{ |
,
àà| }
elementTypeàà~ â
)ààâ ä
;ààä ã
var
ââ  
arrayItemNamespace
ââ 
=
ââ #
xmlArrayItemAttribute
ââ 1
?
ââ1 2
.
ââ2 3
	Namespace
ââ3 <
??
ââ= ?
parameterNs
ââ@ K
;
ââK L
var
ãã 

serializer
ãã 
=
ãã !
CachedXmlSerializer
ãã '
.
ãã' (
GetXmlSerializer
ãã( 8
(
ãã8 9
elementType
ãã9 D
,
ããD E
arrayItemName
ããF S
,
ããS T 
arrayItemNamespace
ããU g
)
ããg h
;
ããh i
object
çç 	
result
çç
 
=
çç 
null
çç 
;
çç 
lock
èè 
(
èè 	

serializer
èè	 
)
èè 
{
êê 
result
ëë 

=
ëë 
deserializeMethod
ëë 
.
ëë 
Invoke
ëë %
(
ëë% &
null
ëë& *
,
ëë* +
new
ëë, /
object
ëë0 6
[
ëë6 7
]
ëë7 8
{
ëë9 :

serializer
ëë; E
,
ëëE F
arrayItemName
ëëG T
,
ëëT U 
arrayItemNamespace
ëëV h
,
ëëh i
	xmlReader
ëëj s
}
ëët u
)
ëëu v
;
ëëv w
}
íí 
if
îî 
(
îî 
!
îî 
isEmpty
îî 
&&
îî !
hasContainerElement
îî &
)
îî& '
{
ïï 
	xmlReader
ññ 
.
ññ 
ReadEndElement
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 
return
ôô 	
result
ôô
 
;
ôô 
}
öö 
}
õõ 
}úú éâ
WC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\ServiceBodyWriter.cs
	namespace 	
SoapCore
 
{ 
internal 	
class
 
ServiceBodyWriter !
:" #

BodyWriter$ .
{ 
private 	
readonly
 
SoapSerializer !
_serializer" -
;- .
private 	
readonly
  
OperationDescription '

_operation( 2
;2 3
private 	
readonly
 
string 
_serviceNamespace +
;+ ,
private 	
readonly
 
string 
_envelopeName '
;' (
private 	
readonly
 
string 
_resultName %
;% &
private 	
readonly
 
object 
_result !
;! "
private 	
readonly
 

Dictionary 
< 
string $
,$ %
object& ,
>, -
_outResults. 9
;9 :
public 
ServiceBodyWriter	 
( 
SoapSerializer )

serializer* 4
,4 5 
OperationDescription6 J
	operationK T
,T U
objectV \
result] c
,c d

Dictionarye o
<o p
stringp v
,v w
objectx ~
>~ 

outResults
Ä ä
)
ä ã
:
å ç
base
é í
(
í ì

isBuffered
ì ù
:
ù û
true
ü £
)
£ §
{ 
_serializer 
= 

serializer 
; 

_operation 
= 
	operation 
; 
_serviceNamespace 
= 
	operation  
.  !
Contract! )
.) *
	Namespace* 3
;3 4
_envelopeName 
= 
	operation 
. 
Name !
+" #
$str$ .
;. /
_resultName   
=   
	operation   
.   

ReturnName   %
;  % &
_result!! 

=!! 
result!! 
;!! 
_outResults"" 
="" 

outResults"" 
??"" 
new"" "

Dictionary""# -
<""- .
string"". 4
,""4 5
object""6 <
>""< =
(""= >
)""> ?
;""? @
}## 
	protected%% 
override%% 
void%% 
OnWriteBodyContents%% -
(%%- .
XmlDictionaryWriter%%. A
writer%%B H
)%%H I
{&& 
switch'' 	
(''
 
_serializer'' 
)'' 
{(( 
case)) 
SoapSerializer))	 
.)) 
XmlSerializer)) %
:))% &,
 OnWriteXmlSerializerBodyContents** %
(**% &
writer**& ,
)**, -
;**- .
break++ 

;++
 
case,, 
SoapSerializer,,	 
.,, "
DataContractSerializer,, .
:,,. /5
)OnWriteDataContractSerializerBodyContents-- .
(--. /
writer--/ 5
)--5 6
;--6 7
break.. 

;..
 
default// 
:// 
throw00 

new00 #
NotImplementedException00 &
(00& '
$"00' )
Unknown serializer 00) <
{00< =
_serializer00= H
}00H I
"00I J
)00J K
;00K L
}11 
}22 
private44 	
static44
 
void44 
WriteStream44 !
(44! "
XmlDictionaryWriter44" 5
writer446 <
,44< =
object44> D
value44E J
)44J K
{55 
int66 
	blockSize66 
=66 
$num66 
;66 
int77 
	bytesRead77 
=77 
$num77 
;77 
byte88 
[88 
]88 	
block88
 
=88 
new88 
byte88 
[88 
	blockSize88 $
]88$ %
;88% &
var99 
stream99 
=99 
(99 
Stream99 
)99 
value99 
;99 
stream:: 	
.::	 

Position::
 
=:: 
$num:: 
;:: 
while<< 
(<<	 

true<<
 
)<< 
{== 
	bytesRead>> 
=>> 
stream>> 
.>> 
Read>> 
(>> 
block>> !
,>>! "
$num>># $
,>>$ %
	blockSize>>& /
)>>/ 0
;>>0 1
if?? 
(?? 
	bytesRead?? 
>?? 
$num?? 
)?? 
{@@ 
writerAA 
.AA 
WriteBase64AA 
(AA 
blockAA 
,AA 
$numAA  
,AA  !
	bytesReadAA" +
)AA+ ,
;AA, -
}BB 
elseCC 
{DD 
breakEE 

;EE
 
}FF 
ifHH 
(HH 
	blockSizeHH 
<HH 
$numHH 
&&HH 
	bytesReadHH &
==HH' )
	blockSizeHH* 3
)HH3 4
{II 
	blockSizeJJ 
=JJ 
	blockSizeJJ 
*JJ 
$numJJ 
;JJ  
blockKK 

=KK 
newKK 
byteKK 
[KK 
	blockSizeKK 
]KK  
;KK  !
}LL 
}MM 
}NN 
privatePP 	
voidPP
 ,
 OnWriteXmlSerializerBodyContentsPP /
(PP/ 0
XmlDictionaryWriterPP0 C
writerPPD J
)PPJ K
{QQ 
DebugRR 
.RR 	
AssertRR	 
(RR 
_outResultsRR 
!=RR 
nullRR #
,RR# $
$strRR% J
)RRJ K
;RRK L
varUU  
needResponseEnvelopeUU 
=UU 
_resultUU %
==UU& (
nullUU) -
||UU. 0
(UU1 2
_outResultsUU2 =
.UU= >
CountUU> C
>UUD E
$numUUF G
)UUG H
||UUI K
!UUL M

_operationUUM W
.UUW X%
IsMessageContractResponseUUX q
;UUq r
ifWW 
(WW  
needResponseEnvelopeWW 
)WW 
{XX 
writerYY 

.YY
 
WriteStartElementYY 
(YY 
_envelopeNameYY *
,YY* +
_serviceNamespaceYY, =
)YY= >
;YY> ?
}ZZ 
if\\ 
(\\ 
_result\\ 
!=\\ 
null\\ 
)\\ 
{]] 
var__ 

resultType__ 
=__ 
_result__ 
.__ 
GetType__ $
(__$ %
)__% &
;__& '
varaa 
xmlRootAttraa 
=aa 

resultTypeaa  
.aa  !
GetTypeInfoaa! ,
(aa, -
)aa- .
.aa. /
GetCustomAttributesaa/ B
<aaB C
XmlRootAttributeaaC S
>aaS T
(aaT U
)aaU V
.aaV W
FirstOrDefaultaaW e
(aae f
)aaf g
;aag h
varbb $
messageContractAttributebb  
=bb! "

resultTypebb# -
.bb- .
GetTypeInfobb. 9
(bb9 :
)bb: ;
.bb; <
GetCustomAttributebb< N
<bbN O$
MessageContractAttributebbO g
>bbg h
(bbh i
)bbi j
;bbj k
vardd 
xmlNamedd 
=dd 

_operationdd 
.dd 
ReturnElementNamedd .
??dd/ 1$
messageContractAttributedd2 J
?ddJ K
.ddK L
WrapperNameddL W
??ee 
(ee 	 
needResponseEnvelopeee	 
?ff 
(ff 
stringff 
.ff 
IsNullOrWhiteSpaceff !
(ff! "
xmlRootAttrff" -
?ff- .
.ff. /
ElementNameff/ :
)ff: ;
?gg 
_resultNamegg 
:hh 
xmlRootAttrhh 
.hh 
ElementNamehh 
)hh  
:ii 
(ii 
stringii 
.ii 
IsNullOrWhiteSpaceii !
(ii! "
xmlRootAttrii" -
?ii- .
.ii. /
ElementNameii/ :
)ii: ;
?jj 

resultTypejj 
.jj 
Namejj 
:kk 
xmlRootAttrkk 
.kk 
ElementNamekk 
)kk 
)kk  
;kk  !
varmm 
xmlNsmm 
=mm 

_operationmm 
.mm 
ReturnNamespacemm *
??mm+ -$
messageContractAttributemm. F
?mmF G
.mmG H
WrapperNamespacemmH X
??nn 
(nn 	
stringnn	 
.nn 
IsNullOrWhiteSpacenn "
(nn" #
xmlRootAttrnn# .
?nn. /
.nn/ 0
	Namespacenn0 9
)nn9 :
?oo 
_serviceNamespaceoo 
:pp 
xmlRootAttrpp 
.pp 
	Namespacepp 
)pp 
;pp 
varrr 
xmlArrayAttrrr 
=rr 

_operationrr !
.rr! "
DispatchMethodrr" 0
.rr0 1
GetCustomAttributerr1 C
<rrC D
XmlArrayAttributerrD U
>rrU V
(rrV W
)rrW X
;rrX Y
iftt 
(tt 
xmlArrayAttrtt 
!=tt 
nulltt 
&&tt 

resultTypett  *
.tt* +
IsArraytt+ 2
)tt2 3
{uu 
varvv 

serializervv	 
=vv 
CachedXmlSerializervv )
.vv) *
GetXmlSerializervv* :
(vv: ;

resultTypevv; E
.vvE F
GetElementTypevvF T
(vvT U
)vvU V
,vvV W
xmlNamevvX _
,vv_ `
xmlNsvva f
)vvf g
;vvg h
lockxx 	
(xx
 

serializerxx 
)xx 
{yy 

serializerzz 
.zz 
SerializeArrayzz 
(zz  
writerzz  &
,zz& '
(zz( )
objectzz) /
[zz/ 0
]zz0 1
)zz1 2
_resultzz2 9
)zz9 :
;zz: ;
}{{ 
}|| 
else}} 
{~~ 
var
ÅÅ 
shouldInline
ÅÅ	 
=
ÅÅ 
(
ÅÅ &
messageContractAttribute
ÅÅ 1
!=
ÅÅ2 4
null
ÅÅ5 9
&&
ÅÅ: <&
messageContractAttribute
ÅÅ= U
.
ÅÅU V
	IsWrapped
ÅÅV _
==
ÅÅ` b
false
ÅÅc h
)
ÅÅh i
||
ÅÅj l

resultType
ÅÅm w
.
ÅÅw x&
GetMembersWithAttributeÅÅx è
<ÅÅè ê&
MessageHeaderAttributeÅÅê ¶
>ÅÅ¶ ß
(ÅÅß ®
)ÅÅ® ©
.ÅÅ© ™
AnyÅÅ™ ≠
(ÅÅ≠ Æ
)ÅÅÆ Ø
;ÅÅØ ∞
if
ÉÉ 
(
ÉÉ 	
shouldInline
ÉÉ	 
)
ÉÉ 
{
ÑÑ 
var
ÖÖ 	
memberInformation
ÖÖ
 
=
ÖÖ 

resultType
ÖÖ (
.
ÖÖ( )%
GetMembersWithAttribute
ÖÖ) @
<
ÖÖ@ A(
MessageBodyMemberAttribute
ÖÖA [
>
ÖÖ[ \
(
ÖÖ\ ]
)
ÖÖ] ^
.
ÖÖ^ _
Select
ÖÖ_ e
(
ÖÖe f
mi
ÖÖf h
=>
ÖÖi k
new
ÖÖl o
{
ÜÜ 
Member
áá 
=
áá 
mi
áá 
,
áá (
MessageBodyMemberAttribute
àà !
=
àà" #
mi
àà$ &
.
àà& ' 
GetCustomAttribute
àà' 9
<
àà9 :(
MessageBodyMemberAttribute
àà: T
>
ààT U
(
ààU V
)
ààV W
}
ââ 
)
ââ 
.
ââ 	
OrderBy
ââ	 
(
ââ 
x
ââ 
=>
ââ 
x
ââ 
.
ââ (
MessageBodyMemberAttribute
ââ 2
?
ââ2 3
.
ââ3 4
Order
ââ4 9
??
ââ: <
$num
ââ= >
)
ââ> ?
;
ââ? @
if
ãã 
(
ãã	 
&
messageContractAttribute
ãã
 "
!=
ãã# %
null
ãã& *
&&
ãã+ -&
messageContractAttribute
ãã. F
.
ããF G
	IsWrapped
ããG P
)
ããP Q
{
åå 
writer
çç 
.
çç 
WriteStartElement
çç 
(
çç  

resultType
çç  *
.
çç* +
Name
çç+ /
,
çç/ 0
xmlNs
çç1 6
)
çç6 7
;
çç7 8
}
éé 
foreach
êê 
(
êê 
var
êê 

memberInfo
êê 
in
êê  
memberInformation
êê! 2
)
êê2 3
{
ëë 
var
íí 


memberType
íí 
=
íí 

memberInfo
íí "
.
íí" #
Member
íí# )
.
íí) *$
GetPropertyOrFieldType
íí* @
(
íí@ A
)
ííA B
;
ííB C
var
ìì 

memberValue
ìì 
=
ìì 

memberInfo
ìì #
.
ìì# $
Member
ìì$ *
.
ìì* +%
GetPropertyOrFieldValue
ìì+ B
(
ììB C
_result
ììC J
)
ììJ K
;
ììK L
var
ïï 


memberName
ïï 
=
ïï 

memberInfo
ïï "
.
ïï" #(
MessageBodyMemberAttribute
ïï# =
?
ïï= >
.
ïï> ?
Name
ïï? C
??
ïïD F

memberInfo
ïïG Q
.
ïïQ R
Member
ïïR X
.
ïïX Y
Name
ïïY ]
;
ïï] ^
var
ññ 

memberNamespace
ññ 
=
ññ 

memberInfo
ññ '
.
ññ' ((
MessageBodyMemberAttribute
ññ( B
?
ññB C
.
ññC D
	Namespace
ññD M
??
ññN P
_serviceNamespace
ññQ b
;
ññb c
var
òò 


serializer
òò 
=
òò !
CachedXmlSerializer
òò +
.
òò+ ,
GetXmlSerializer
òò, <
(
òò< =

memberType
òò= G
,
òòG H

memberName
òòI S
,
òòS T
memberNamespace
òòU d
)
òòd e
;
òòe f
lock
öö 
(
öö 

serializer
öö 
)
öö 
{
õõ 
if
úú 

(
úú 
memberValue
úú 
is
úú 
Stream
úú !
)
úú! "
{
ùù 	
writer
ûû	 
.
ûû 
WriteStartElement
ûû !
(
ûû! "

memberName
ûû" ,
,
ûû, -
_serviceNamespace
ûû. ?
)
ûû? @
;
ûû@ A
WriteStream
††	 
(
†† 
writer
†† 
,
†† 
memberValue
†† (
)
††( )
;
††) *
writer
¢¢	 
.
¢¢ 
WriteEndElement
¢¢ 
(
¢¢  
)
¢¢  !
;
¢¢! "
}
££ 	
else
§§ 
{
•• 	

serializer
¶¶	 
.
¶¶ 
	Serialize
¶¶ 
(
¶¶ 
writer
¶¶ $
,
¶¶$ %
memberValue
¶¶& 1
)
¶¶1 2
;
¶¶2 3
}
ßß 	
}
®® 
}
©© 
if
´´ 
(
´´	 
&
messageContractAttribute
´´
 "
!=
´´# %
null
´´& *
&&
´´+ -&
messageContractAttribute
´´. F
.
´´F G
	IsWrapped
´´G P
)
´´P Q
{
¨¨ 
writer
≠≠ 
.
≠≠ 
WriteEndElement
≠≠ 
(
≠≠ 
)
≠≠ 
;
≠≠  
}
ÆÆ 
}
ØØ 
else
∞∞ 	
{
±± 
var
≤≤ 	

serializer
≤≤
 
=
≤≤ !
CachedXmlSerializer
≤≤ *
.
≤≤* +
GetXmlSerializer
≤≤+ ;
(
≤≤; <

resultType
≤≤< F
,
≤≤F G
xmlName
≤≤H O
,
≤≤O P
xmlNs
≤≤Q V
)
≤≤V W
;
≤≤W X
lock
¥¥ 

(
¥¥ 

serializer
¥¥ 
)
¥¥ 
{
µµ 
if
∂∂ 	
(
∂∂
 
_result
∂∂ 
is
∂∂ 
Stream
∂∂ 
)
∂∂ 
{
∑∑ 
writer
∏∏ 
.
∏∏ 
WriteStartElement
∏∏  
(
∏∏  !
_resultName
∏∏! ,
,
∏∏, -
_serviceNamespace
∏∏. ?
)
∏∏? @
;
∏∏@ A
WriteStream
ππ 
(
ππ 
writer
ππ 
,
ππ 
_result
ππ #
)
ππ# $
;
ππ$ %
writer
∫∫ 
.
∫∫ 
WriteEndElement
∫∫ 
(
∫∫ 
)
∫∫  
;
∫∫  !
}
ªª 
else
ºº 
{
ΩΩ 
if
øø 

(
øø 

_operation
øø 
.
øø 
DispatchMethod
øø %
.
øø% & 
GetCustomAttribute
øø& 8
<
øø8 9*
XmlSerializerFormatAttribute
øø9 U
>
øøU V
(
øøV W
)
øøW X
?
øøX Y
.
øøY Z
Style
øøZ _
==
øø` b"
OperationFormatStyle
øøc w
.
øøw x
Rpc
øøx {
)
øø{ |
{
¿¿ 	
var
¡¡	 
importer
¡¡ 
=
¡¡ 
new
¡¡ $
SoapReflectionImporter
¡¡ 2
(
¡¡2 3
_serviceNamespace
¡¡3 D
)
¡¡D E
;
¡¡E F
var
¬¬	 
typeMapping
¬¬ 
=
¬¬ 
importer
¬¬ #
.
¬¬# $
ImportTypeMapping
¬¬$ 5
(
¬¬5 6

resultType
¬¬6 @
)
¬¬@ A
;
¬¬A B
var
√√	 
accessor
√√ 
=
√√ 
typeMapping
√√ #
.
√√# $
GetType
√√$ +
(
√√+ ,
)
√√, -
.
√√- .
GetProperty
√√. 9
(
√√9 :
$str
√√: D
,
√√D E
BindingFlags
√√F R
.
√√R S
Instance
√√S [
|
√√\ ]
BindingFlags
√√^ j
.
√√j k
Public
√√k q
|
√√r s
BindingFlags√√t Ä
.√√Ä Å
	NonPublic√√Å ä
)√√ä ã
?√√ã å
.√√å ç
GetValue√√ç ï
(√√ï ñ
typeMapping√√ñ °
)√√° ¢
;√√¢ £
accessor
ƒƒ	 
?
ƒƒ 
.
ƒƒ 
GetType
ƒƒ 
(
ƒƒ 
)
ƒƒ 
.
ƒƒ 
GetProperty
ƒƒ (
(
ƒƒ( )
$str
ƒƒ) /
,
ƒƒ/ 0
BindingFlags
ƒƒ1 =
.
ƒƒ= >
Instance
ƒƒ> F
|
ƒƒG H
BindingFlags
ƒƒI U
.
ƒƒU V
Public
ƒƒV \
|
ƒƒ] ^
BindingFlags
ƒƒ_ k
.
ƒƒk l
	NonPublic
ƒƒl u
)
ƒƒu v
?
ƒƒv w
.
ƒƒw x
SetValueƒƒx Ä
(ƒƒÄ Å
accessorƒƒÅ â
,ƒƒâ ä
xmlNameƒƒã í
)ƒƒí ì
;ƒƒì î
new
≈≈	 
XmlSerializer
≈≈ 
(
≈≈ 
typeMapping
≈≈ &
)
≈≈& '
.
≈≈' (
	Serialize
≈≈( 1
(
≈≈1 2
writer
≈≈2 8
,
≈≈8 9
_result
≈≈: A
)
≈≈A B
;
≈≈B C
}
∆∆ 	

serializer
»» 
.
»» 
	Serialize
»» 
(
»» 
writer
»» #
,
»»# $
_result
»»% ,
)
»», -
;
»»- .
}
…… 
}
   
}
ÀÀ 
}
ÃÃ 
}
ÕÕ 
foreach
œœ 

(
œœ 
var
œœ 
	outResult
œœ 
in
œœ 
_outResults
œœ (
)
œœ( )
{
–– 
string
—— 

value
—— 
=
—— 
null
—— 
;
—— 
if
““ 
(
““ 
	outResult
““ 
.
““ 
Value
““ 
is
““ 
Guid
““ 
)
““  
{
”” 
value
‘‘ 

=
‘‘ 
	outResult
‘‘ 
.
‘‘ 
Value
‘‘ 
.
‘‘ 
ToString
‘‘ %
(
‘‘% &
)
‘‘& '
;
‘‘' (
}
’’ 
else
÷÷ 
if
÷÷	 
(
÷÷ 
	outResult
÷÷ 
.
÷÷ 
Value
÷÷ 
is
÷÷ 
bool
÷÷  $
)
÷÷$ %
{
◊◊ 
value
ÿÿ 

=
ÿÿ 
	outResult
ÿÿ 
.
ÿÿ 
Value
ÿÿ 
.
ÿÿ 
ToString
ÿÿ %
(
ÿÿ% &
)
ÿÿ& '
.
ÿÿ' (
ToLower
ÿÿ( /
(
ÿÿ/ 0
)
ÿÿ0 1
;
ÿÿ1 2
}
ŸŸ 
else
⁄⁄ 
if
⁄⁄	 
(
⁄⁄ 
	outResult
⁄⁄ 
.
⁄⁄ 
Value
⁄⁄ 
is
⁄⁄ 
string
⁄⁄  &
)
⁄⁄& '
{
€€ 
value
‹‹ 

=
‹‹ 
System
‹‹ 
.
‹‹ 
Security
‹‹ 
.
‹‹ 
SecurityElement
‹‹ ,
.
‹‹, -
Escape
‹‹- 3
(
‹‹3 4
	outResult
‹‹4 =
.
‹‹= >
Value
‹‹> C
.
‹‹C D
ToString
‹‹D L
(
‹‹L M
)
‹‹M N
)
‹‹N O
;
‹‹O P
}
›› 
else
ﬁﬁ 
if
ﬁﬁ	 
(
ﬁﬁ 
	outResult
ﬁﬁ 
.
ﬁﬁ 
Value
ﬁﬁ 
is
ﬁﬁ 
Enum
ﬁﬁ  $
)
ﬁﬁ$ %
{
ﬂﬂ 
value
‡‡ 

=
‡‡ 
	outResult
‡‡ 
.
‡‡ 
Value
‡‡ 
.
‡‡ 
ToString
‡‡ %
(
‡‡% &
)
‡‡& '
;
‡‡' (
}
·· 
else
‚‚ 
if
‚‚	 
(
‚‚ 
	outResult
‚‚ 
.
‚‚ 
Value
‚‚ 
==
‚‚ 
null
‚‚  $
)
‚‚$ %
{
„„ 
value
‰‰ 

=
‰‰ 
null
‰‰ 
;
‰‰ 
}
ÂÂ 
else
ÊÊ 
{
ÁÁ 
using
ÈÈ 

(
ÈÈ 
var
ÈÈ 
ms
ÈÈ 
=
ÈÈ 
new
ÈÈ 
MemoryStream
ÈÈ %
(
ÈÈ% &
)
ÈÈ& '
)
ÈÈ' (
using
ÍÍ 

(
ÍÍ 
var
ÍÍ 
stream
ÍÍ 
=
ÍÍ 
new
ÍÍ 
BufferedStream
ÍÍ +
(
ÍÍ+ ,
ms
ÍÍ, .
)
ÍÍ. /
)
ÍÍ/ 0
{
ÎÎ 
var
ÓÓ 	
outResultType
ÓÓ
 
=
ÓÓ 
	outResult
ÓÓ #
.
ÓÓ# $
Value
ÓÓ$ )
.
ÓÓ) *
GetType
ÓÓ* 1
(
ÓÓ1 2
)
ÓÓ2 3
;
ÓÓ3 4
var
ÔÔ 	

serializer
ÔÔ
 
=
ÔÔ !
CachedXmlSerializer
ÔÔ *
.
ÔÔ* +
GetXmlSerializer
ÔÔ+ ;
(
ÔÔ; <
outResultType
ÔÔ< I
,
ÔÔI J
	outResult
ÔÔK T
.
ÔÔT U
Key
ÔÔU X
,
ÔÔX Y
_serviceNamespace
ÔÔZ k
)
ÔÔk l
;
ÔÔl m
lock
 

(
 

serializer
 
)
 
{
ÒÒ 

serializer
ÚÚ 
.
ÚÚ 
	Serialize
ÚÚ 
(
ÚÚ 
stream
ÚÚ "
,
ÚÚ" #
	outResult
ÚÚ$ -
.
ÚÚ- .
Value
ÚÚ. 3
)
ÚÚ3 4
;
ÚÚ4 5
}
ÛÛ 
stream
ˆˆ 
.
ˆˆ 
Position
ˆˆ 
=
ˆˆ 
$num
ˆˆ 
;
ˆˆ 
XmlDocument
˜˜ 
xdoc
˜˜ 
=
˜˜ 
new
˜˜ 
XmlDocument
˜˜ (
(
˜˜( )
)
˜˜) *
;
˜˜* +
xdoc
¯¯ 

.
¯¯
 
Load
¯¯ 
(
¯¯ 
stream
¯¯ 
)
¯¯ 
;
¯¯ 
var
˘˘ 	
attr
˘˘
 
=
˘˘ 
xdoc
˘˘ 
.
˘˘ 
CreateAttribute
˘˘ %
(
˘˘% &
$str
˘˘& +
,
˘˘+ ,
$str
˘˘- 3
,
˘˘3 4

Namespaces
˘˘5 ?
.
˘˘? @
	XMLNS_XSI
˘˘@ I
)
˘˘I J
;
˘˘J K
attr
˙˙ 

.
˙˙
 
Value
˙˙ 
=
˙˙ 
outResultType
˙˙  
.
˙˙  !
Name
˙˙! %
;
˙˙% &
xdoc
˚˚ 

.
˚˚
 
DocumentElement
˚˚ 
.
˚˚ 

Attributes
˚˚ %
.
˚˚% &
Prepend
˚˚& -
(
˚˚- .
attr
˚˚. 2
)
˚˚2 3
;
˚˚3 4
writer
¸¸ 
.
¸¸ 
WriteRaw
¸¸ 
(
¸¸ 
xdoc
¸¸ 
.
¸¸ 
DocumentElement
¸¸ *
.
¸¸* +
OuterXml
¸¸+ 3
)
¸¸3 4
;
¸¸4 5
}
˝˝ 
}
˛˛ 
if
ÄÄ 
(
ÄÄ 
value
ÄÄ 
!=
ÄÄ 
null
ÄÄ 
)
ÄÄ 
{
ÅÅ 
writer
ÇÇ 
.
ÇÇ 
WriteRaw
ÇÇ 
(
ÇÇ 
string
ÇÇ 
.
ÇÇ 
Format
ÇÇ "
(
ÇÇ" #
$str
ÇÇ# 3
,
ÇÇ3 4
	outResult
ÇÇ5 >
.
ÇÇ> ?
Key
ÇÇ? B
,
ÇÇB C
value
ÇÇD I
)
ÇÇI J
)
ÇÇJ K
;
ÇÇK L
}
ÉÉ 
}
ÑÑ 
if
ÜÜ 
(
ÜÜ "
needResponseEnvelope
ÜÜ 
)
ÜÜ 
{
áá 
writer
àà 

.
àà
 
WriteEndElement
àà 
(
àà 
)
àà 
;
àà 
}
ââ 
}
ää 
private
åå 	
void
åå
 7
)OnWriteDataContractSerializerBodyContents
åå 8
(
åå8 9!
XmlDictionaryWriter
åå9 L
writer
ååM S
)
ååS T
{
çç 
Debug
éé 
.
éé 	
Assert
éé	 
(
éé 
_outResults
éé 
!=
éé 
null
éé #
,
éé# $
$str
éé% J
)
ééJ K
;
ééK L
writer
êê 	
.
êê	 

WriteStartElement
êê
 
(
êê 
_envelopeName
êê )
,
êê) *
_serviceNamespace
êê+ <
)
êê< =
;
êê= >
if
íí 
(
íí 
_result
íí 
!=
íí 
null
íí 
)
íí 
{
ìì 
if
îî 
(
îî 
_result
îî 
is
îî 
Stream
îî 
)
îî 
{
ïï 
writer
ññ 
.
ññ 
WriteStartElement
ññ 
(
ññ 
_resultName
ññ )
,
ññ) *
_serviceNamespace
ññ+ <
)
ññ< =
;
ññ= >
WriteStream
óó 
(
óó 
writer
óó 
,
óó 
_result
óó  
)
óó  !
;
óó! "
writer
òò 
.
òò 
WriteEndElement
òò 
(
òò 
)
òò 
;
òò 
}
ôô 
else
öö 
{
õõ 
Type
ùù 	

resultType
ùù
 
=
ùù 

_operation
ùù !
.
ùù! "

ReturnType
ùù" ,
;
ùù, -
IEnumerable
ûû 
<
ûû 
Type
ûû 
>
ûû 
serviceKnownTypes
ûû (
=
ûû) *

_operation
ûû+ 5
.
üü +
GetServiceKnownTypesHierarchy
üü $
(
üü$ %
)
üü% &
.
†† 
Select
†† 
(
†† 
x
†† 
=>
†† 
x
†† 
.
†† 
Type
†† 
)
†† 
;
†† $
DataContractSerializer
££ 

serializer
££ &
=
££' (

resultType
££) 3
.
££3 4*
TryGetBaseTypeWithKnownTypes
££4 P
(
££P Q
out
££Q T
Type
££U Y*
resultBaseTypeWithKnownTypes
££Z v
)
££v w
?
§§ 
new
§§ $
DataContractSerializer
§§ "
(
§§" #*
resultBaseTypeWithKnownTypes
§§# ?
,
§§? @
_resultName
§§A L
,
§§L M
_serviceNamespace
§§N _
,
§§_ `
serviceKnownTypes
§§a r
)
§§r s
:
•• 
new
•• $
DataContractSerializer
•• "
(
••" #

resultType
••# -
,
••- .
_resultName
••/ :
,
••: ;
_serviceNamespace
••< M
,
••M N
serviceKnownTypes
••O `
)
••` a
;
••a b

serializer
ßß 
.
ßß 
WriteObject
ßß 
(
ßß 
writer
ßß "
,
ßß" #
_result
ßß$ +
)
ßß+ ,
;
ßß, -
}
®® 
}
©© 
foreach
´´ 

(
´´ 
var
´´ 
	outResult
´´ 
in
´´ 
_outResults
´´ (
)
´´( )
{
¨¨ 
string
≠≠ 

value
≠≠ 
=
≠≠ 
null
≠≠ 
;
≠≠ 
if
ØØ 
(
ØØ 
	outResult
ØØ 
.
ØØ 
Value
ØØ 
is
ØØ 
Guid
ØØ 
)
ØØ  
{
∞∞ 
value
±± 

=
±± 
	outResult
±± 
.
±± 
Value
±± 
.
±± 
ToString
±± %
(
±±% &
)
±±& '
;
±±' (
}
≤≤ 
else
≥≥ 
if
≥≥	 
(
≥≥ 
	outResult
≥≥ 
.
≥≥ 
Value
≥≥ 
is
≥≥ 
bool
≥≥  $
)
≥≥$ %
{
¥¥ 
value
µµ 

=
µµ 
	outResult
µµ 
.
µµ 
Value
µµ 
.
µµ 
ToString
µµ %
(
µµ% &
)
µµ& '
.
µµ' (
ToLower
µµ( /
(
µµ/ 0
)
µµ0 1
;
µµ1 2
}
∂∂ 
else
∑∑ 
if
∑∑	 
(
∑∑ 
	outResult
∑∑ 
.
∑∑ 
Value
∑∑ 
is
∑∑ 
string
∑∑  &
)
∑∑& '
{
∏∏ 
value
ππ 

=
ππ 
System
ππ 
.
ππ 
Security
ππ 
.
ππ 
SecurityElement
ππ ,
.
ππ, -
Escape
ππ- 3
(
ππ3 4
	outResult
ππ4 =
.
ππ= >
Value
ππ> C
.
ππC D
ToString
ππD L
(
ππL M
)
ππM N
)
ππN O
;
ππO P
}
∫∫ 
else
ªª 
if
ªª	 
(
ªª 
	outResult
ªª 
.
ªª 
Value
ªª 
is
ªª 
Enum
ªª  $
)
ªª$ %
{
ºº 
value
ΩΩ 

=
ΩΩ 
	outResult
ΩΩ 
.
ΩΩ 
Value
ΩΩ 
.
ΩΩ 
ToString
ΩΩ %
(
ΩΩ% &
)
ΩΩ& '
;
ΩΩ' (
}
ææ 
else
øø 
if
øø	 
(
øø 
	outResult
øø 
.
øø 
Value
øø 
==
øø 
null
øø  $
)
øø$ %
{
¿¿ 
value
¡¡ 

=
¡¡ 
null
¡¡ 
;
¡¡ 
}
¬¬ 
else
√√ 
{
ƒƒ 
using
∆∆ 

(
∆∆ 
var
∆∆ 
ms
∆∆ 
=
∆∆ 
new
∆∆ 
MemoryStream
∆∆ %
(
∆∆% &
)
∆∆& '
)
∆∆' (
using
«« 

(
«« 
var
«« 
stream
«« 
=
«« 
new
«« 
BufferedStream
«« +
(
««+ ,
ms
««, .
)
««. /
)
««/ 0
{
»» 
Type
…… 

outResultType
…… 
=
…… 
	outResult
…… $
.
……$ %
Value
……% *
.
……* +
GetType
……+ 2
(
……2 3
)
……3 4
;
……4 5
IEnumerable
   
<
   
Type
   
>
   
serviceKnownTypes
   )
=
  * +

_operation
  , 6
.
ÀÀ +
GetServiceKnownTypesHierarchy
ÀÀ %
(
ÀÀ% &
)
ÀÀ& '
.
ÃÃ 
Select
ÃÃ 
(
ÃÃ 
x
ÃÃ 
=>
ÃÃ 
x
ÃÃ 
.
ÃÃ 
Type
ÃÃ 
)
ÃÃ 
;
ÃÃ 
var
ŒŒ 	

serializer
ŒŒ
 
=
ŒŒ 
new
ŒŒ $
DataContractSerializer
ŒŒ 1
(
ŒŒ1 2
outResultType
ŒŒ2 ?
,
ŒŒ? @
serviceKnownTypes
ŒŒA R
)
ŒŒR S
;
ŒŒS T

serializer
œœ 
.
œœ 
WriteObject
œœ 
(
œœ 
ms
œœ 
,
œœ  
	outResult
œœ! *
.
œœ* +
Value
œœ+ 0
)
œœ0 1
;
œœ1 2
stream
—— 
.
—— 
Position
—— 
=
—— 
$num
—— 
;
—— 
using
““ 
(
““ 
var
““ 
reader
““ 
=
““ 
	XmlReader
““ #
.
““# $
Create
““$ *
(
““* +
stream
““+ 1
)
““1 2
)
““2 3
{
”” 
reader
‘‘ 
.
‘‘ 
MoveToContent
‘‘ 
(
‘‘ 
)
‘‘ 
;
‘‘ 
value
’’ 
=
’’ 
reader
’’ 
.
’’ 
ReadInnerXml
’’ "
(
’’" #
)
’’# $
;
’’$ %
}
÷÷ 
}
◊◊ 
}
ÿÿ 
if
⁄⁄ 
(
⁄⁄ 
value
⁄⁄ 
!=
⁄⁄ 
null
⁄⁄ 
)
⁄⁄ 
{
€€ 
writer
‹‹ 
.
‹‹ 
WriteRaw
‹‹ 
(
‹‹ 
string
‹‹ 
.
‹‹ 
Format
‹‹ "
(
‹‹" #
$str
‹‹# 3
,
‹‹3 4
	outResult
‹‹5 >
.
‹‹> ?
Key
‹‹? B
,
‹‹B C
value
‹‹D I
)
‹‹I J
)
‹‹J K
;
‹‹K L
}
›› 
}
ﬁﬁ 
writer
‡‡ 	
.
‡‡	 

WriteEndElement
‡‡
 
(
‡‡ 
)
‡‡ 
;
‡‡ 
}
·· 
}
‚‚ 
}„„ ò
fC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\ServiceModel\ContractDescription.cs
	namespace 	
SoapCore
 
. 
ServiceModel 
{ 
public 
class 
ContractDescription !
{		 
public

 
ContractDescription

	 
(

 
ServiceDescription

 /
service

0 7
,

7 8
Type

9 =
contractType

> J
,

J K$
ServiceContractAttribute

L d
	attribute

e n
)

n o
{ 
Service 

= 
service 
; 
ContractType 
= 
contractType 
; 
ServiceKnownTypes 
= 
contractType #
.# $
GetCustomAttributes$ 7
<7 8%
ServiceKnownTypeAttribute8 Q
>Q R
(R S
inheritS Z
:Z [
false\ a
)a b
;b c
	Namespace 
= 
	attribute 
. 
	Namespace "
??# %
$str& ;
;; <
Name 
= 	
	attribute
 
. 
Name 
?? 
ContractType (
.( )
Name) -
;- .
var 

operations 
= 
new 
List 
<  
OperationDescription 1
>1 2
(2 3
)3 4
;4 5
foreach 

( 
var 
operationMethodInfo #
in$ &
ContractType' 3
.3 4
GetTypeInfo4 ?
(? @
)@ A
.A B
DeclaredMethodsB Q
)Q R
{ 
foreach 
( 
var 
operationContract "
in# %
operationMethodInfo& 9
.9 :
GetCustomAttributes: M
<M N&
OperationContractAttributeN h
>h i
(i j
)j k
)k l
{ 

operations 
. 
Add 
( 
new  
OperationDescription ,
(, -
this- 1
,1 2
operationMethodInfo3 F
,F G
operationContractH Y
)Y Z
)Z [
;[ \
} 
} 

Operations 
= 

operations 
; 
} 
public 
ServiceDescription	 
Service #
{$ %
get& )
;) *
}+ ,
public 
IEnumerable	 
< %
ServiceKnownTypeAttribute .
>. /
ServiceKnownTypes0 A
{B C
getD G
;G H
}I J
public   
string  	 
Name   
{   
get   
;   
}   
public!! 
string!!	 
	Namespace!! 
{!! 
get!! 
;!!  
}!!! "
public"" 
Type""	 
ContractType"" 
{"" 
get""  
;""  !
}""" #
public## 
IEnumerable##	 
<##  
OperationDescription## )
>##) *

Operations##+ 5
{##6 7
get##8 ;
;##; <
}##= >
}$$ 
}%% Ø
hC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\ServiceModel\DataMemberDescription.cs
	namespace 	
SoapCore
 
. 
ServiceModel 
{ 
public 
class !
DataMemberDescription #
{ 
public 
Type	 
Type 
{ 
get 
; 
set 
; 
}  
public 
string	 
Name 
{ 
get 
; 
set 
;  
}! "
public		 
int			 
?		 
Order		 
{		 
get		 
;		 
set		 
;		 
}		  !
public

 
bool

	 

IsRequired

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
} 
} ≤¶
gC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\ServiceModel\OperationDescription.cs
	namespace 	
SoapCore
 
. 
ServiceModel 
{ 
public 
class  
OperationDescription "
{ 
public  
OperationDescription	 
( 
ContractDescription 1
contract2 :
,: ;

MethodInfo< F
operationMethodG V
,V W&
OperationContractAttributeX r
contractAttribute	s Ñ
)
Ñ Ö
{ 
Contract 
= 
contract 
; 
Name 
= 	
contractAttribute
 
. 
Name  
??! #
GetNameByAction$ 3
(3 4
contractAttribute4 E
.E F
ActionF L
)L M
??N P
GetNameByMethodQ `
(` a
operationMethoda p
)p q
;q r

SoapAction 
= 
contractAttribute !
.! "
Action" (
??) +
$", .
{. /
contract/ 7
.7 8
	Namespace8 A
.A B
TrimEndB I
(I J
$charJ M
)M N
}N O
/O P
{P Q
contractQ Y
.Y Z
NameZ ^
}^ _
/_ `
{` a
Namea e
}e f
"f g
;g h
IsOneWay 
= 
contractAttribute 
.  
IsOneWay  (
;( )
DispatchMethod 
= 
operationMethod #
;# $

ReturnType 
= 
operationMethod 
.  

ReturnType  *
;* +
if 
( 

ReturnType 
. 
IsGenericType 
&&  "

ReturnType# -
.- .$
GetGenericTypeDefinition. F
(F G
)G H
==I K
typeofL R
(R S
TaskS W
<W X
>X Y
)Y Z
)Z [
{ 

ReturnType 
= 

ReturnType 
.  
GenericTypeArguments 0
[0 1
$num1 2
]2 3
;3 4
} %
IsMessageContractResponse 
= 

ReturnType )
.) *
CustomAttributes* :
. 
FirstOrDefault 
( 
ca 
=> 
ca 
. 
AttributeType *
==+ -
typeof. 4
(4 5$
MessageContractAttribute5 M
)M N
)N O
!=P R
nullS W
;W X
AllParameters   
=   
operationMethod   "
.  " #
GetParameters  # 0
(  0 1
)  1 2
.!! 
Select!! 
(!! 
(!! 
info!! 
,!! 
index!! 
)!! 
=>!! 
CreateParameterInfo!! 0
(!!0 1
info!!1 5
,!!5 6
index!!7 <
,!!< =
contract!!> F
)!!F G
)!!G H
."" 
ToArray"" 
("" 
)"" 
;"" 
InParameters## 
=## 
AllParameters## 
.$$ 
Where$$ 

($$
 
	soapParam$$ 
=>$$ 
	soapParam$$ !
.$$! "
	Direction$$" +
!=$$, .(
SoapMethodParameterDirection$$/ K
.$$K L

OutOnlyRef$$L V
)$$V W
.%% 
ToArray%% 
(%% 
)%% 
;%% 
OutParameters&& 
=&& 
AllParameters&&  
.'' 
Where'' 

(''
 
	soapParam'' 
=>'' 
	soapParam'' !
.''! "
	Direction''" +
!='', .(
SoapMethodParameterDirection''/ K
.''K L
InOnly''L R
)''R S
.(( 
ToArray(( 
((( 
)(( 
;(( $
IsMessageContractRequest** 
=** 
InParameters++ 
.++ 
Length++ 
==++ 
$num++ 
&&,, 
InParameters,, 
.,, 
First,, 
(,, 
),, 
.,, 
	Parameter,, %
.,,% &
ParameterType,,& 3
.-- 
CustomAttributes-- 
... 
FirstOrDefault.. 
(.. 
ca.. 
=>.. 
ca// 
.// 	
AttributeType//	 
==// 
typeof//  
(//  !$
MessageContractAttribute//! 9
)//9 :
)//: ;
!=//< >
null//? C
;//C D
var11 
elementAttribute11 
=11 
operationMethod11 )
.11) *
ReturnParameter11* 9
.119 :
GetCustomAttribute11: L
<11L M
XmlElementAttribute11M `
>11` a
(11a b
)11b c
;11c d

ReturnName22 
=22 
operationMethod22 
.22  
ReturnParameter22  /
.22/ 0
GetCustomAttribute220 B
<22B C%
MessageParameterAttribute22C \
>22\ ]
(22] ^
)22^ _
?22_ `
.22` a
Name22a e
??22f h
Name22i m
+22n o
$str22p x
;22x y
ReturnElementName33 
=33 
elementAttribute33 '
?33' (
.33( )
ElementName33) 4
;334 5
ReturnNamespace44 
=44 
elementAttribute44 %
?44% &
.44& '
Form44' +
==44, .
XmlSchemaForm44/ <
.44< =
Unqualified44= H
?44I J
string44K Q
.44Q R
Empty44R W
:44X Y
elementAttribute44Z j
?44j k
.44k l
	Namespace44l u
;44u v
ReplyAction66 
=66 
contractAttribute66 "
.66" #
ReplyAction66# .
??66/ 1
$"662 4
{664 5
Contract665 =
.66= >
	Namespace66> G
.66G H
TrimEnd66H O
(66O P
$char66P S
)66S T
}66T U
/66U V
{66V W
contract66W _
.66_ `
Name66` d
}66d e
/66e f
{66f g
Name66g k
+66l m
$str66n x
}66x y
"66y z
;66z {
var88 #
faultContractAttributes88 
=88  
operationMethod88! 0
.880 1
GetCustomAttributes881 D
<88D E"
FaultContractAttribute88E [
>88[ \
(88\ ]
)88] ^
;88^ _
Faults99 	
=99
 #
faultContractAttributes99 #
.:: 
Where:: 

(::
 
a:: 
=>:: 
a:: 
.:: 

DetailType:: 
?:: 
.:: 
Name:: "
!=::# %
null::& *
)::* +
.;; 
Select;; 
(;; 
a;; 
=>;; 
a;; 
.;; 

DetailType;; 
);; 
.<< 
ToArray<< 
(<< 
)<< 
;<< 
ServiceKnownTypes>> 
=>> 
operationMethod>> &
.>>& '
GetCustomAttributes>>' :
<>>: ;%
ServiceKnownTypeAttribute>>; T
>>>T U
(>>U V
inherit>>V ]
:>>] ^
false>>_ d
)>>d e
;>>e f
}?? 
publicAA 
ContractDescriptionAA	 
ContractAA %
{AA& '
getAA( +
;AA+ ,
privateAA- 4
setAA5 8
;AA8 9
}AA: ;
publicBB 
stringBB	 

SoapActionBB 
{BB 
getBB  
;BB  !
privateBB" )
setBB* -
;BB- .
}BB/ 0
publicCC 
stringCC	 
ReplyActionCC 
{CC 
getCC !
;CC! "
privateCC# *
setCC+ .
;CC. /
}CC0 1
publicDD 
stringDD	 
NameDD 
{DD 
getDD 
;DD 
privateDD #
setDD$ '
;DD' (
}DD) *
publicEE 

MethodInfoEE	 
DispatchMethodEE "
{EE# $
getEE% (
;EE( )
privateEE* 1
setEE2 5
;EE5 6
}EE7 8
publicFF 
boolFF	 
IsOneWayFF 
{FF 
getFF 
;FF 
privateFF %
setFF& )
;FF) *
}FF+ ,
publicGG 
boolGG	 %
IsMessageContractResponseGG '
{GG( )
getGG* -
;GG- .
privateGG/ 6
setGG7 :
;GG: ;
}GG< =
publicHH 
boolHH	 $
IsMessageContractRequestHH &
{HH' (
getHH) ,
;HH, -
privateHH. 5
setHH6 9
;HH9 :
}HH; <
publicII #
SoapMethodParameterInfoII	  
[II  !
]II! "
AllParametersII# 0
{II1 2
getII3 6
;II6 7
privateII8 ?
setII@ C
;IIC D
}IIE F
publicJJ #
SoapMethodParameterInfoJJ	  
[JJ  !
]JJ! "
InParametersJJ# /
{JJ0 1
getJJ2 5
;JJ5 6
privateJJ7 >
setJJ? B
;JJB C
}JJD E
publicKK #
SoapMethodParameterInfoKK	  
[KK  !
]KK! "
OutParametersKK# 0
{KK1 2
getKK3 6
;KK6 7
privateKK8 ?
setKK@ C
;KKC D
}KKE F
publicLL 
SystemLL	 
.LL 
TypeLL 
[LL 
]LL 
FaultsLL 
{LL 
getLL  #
;LL# $
privateLL% ,
setLL- 0
;LL0 1
}LL2 3
publicMM 
stringMM	 

ReturnNameMM 
{MM 
getMM  
;MM  !
privateMM" )
setMM* -
;MM- .
}MM/ 0
publicNN 
stringNN	 
ReturnElementNameNN !
{NN" #
getNN$ '
;NN' (
privateNN) 0
setNN1 4
;NN4 5
}NN6 7
publicOO 
stringOO	 
ReturnNamespaceOO 
{OO  !
getOO" %
;OO% &
privateOO' .
setOO/ 2
;OO2 3
}OO4 5
publicPP 
TypePP	 

ReturnTypePP 
{PP 
getPP 
;PP 
privatePP  '
setPP( +
;PP+ ,
}PP- .
publicQQ 
IEnumerableQQ	 
<QQ %
ServiceKnownTypeAttributeQQ .
>QQ. /
ServiceKnownTypesQQ0 A
{QQB C
getQQD G
;QQG H
privateQQI P
setQQQ T
;QQT U
}QQV W
publicSS 
IEnumerableSS	 
<SS %
ServiceKnownTypeAttributeSS .
>SS. /)
GetServiceKnownTypesHierarchySS0 M
(SSM N
)SSN O
{TT 
foreachUU 

(UU %
ServiceKnownTypeAttributeUU %
serviceKnownTypeUU& 6
inUU7 9
ServiceKnownTypesUU: K
)UUK L
{VV 
yieldWW 	
returnWW
 
serviceKnownTypeWW !
;WW! "
}XX 
foreachZZ 

(ZZ %
ServiceKnownTypeAttributeZZ %
serviceKnownTypeZZ& 6
inZZ7 9
ContractZZ: B
.ZZB C
ServiceKnownTypesZZC T
)ZZT U
{[[ 
yield\\ 	
return\\
 
serviceKnownType\\ !
;\\! "
}]] 
foreach`` 

(`` %
ServiceKnownTypeAttribute`` %
serviceKnownType``& 6
in``7 9
Contract``: B
.``B C
Service``C J
.``J K
ServiceKnownTypes``K \
)``\ ]
{aa 
yieldbb 	
returnbb
 
serviceKnownTypebb !
;bb! "
}cc 
}dd 
privateff 	
staticff
 #
SoapMethodParameterInfoff (
CreateParameterInfoff) <
(ff< =
ParameterInfoff= J
infoffK O
,ffO P
intffQ T
indexffU Z
,ffZ [
ContractDescriptionff\ o
contractffp x
)ffx y
{gg 
varhh 
elementAttributehh 
=hh 
infohh 
.hh 
GetCustomAttributehh 1
<hh1 2
XmlElementAttributehh2 E
>hhE F
(hhF G
)hhG H
;hhH I
varii 
arrayAttributeii 
=ii 
infoii 
.ii 
GetCustomAttributeii /
<ii/ 0
XmlArrayAttributeii0 A
>iiA B
(iiB C
)iiC D
;iiD E
varjj 
rootAttributejj 
=jj 
(jj 
XmlRootAttributejj (
)jj( )
	Attributejj) 2
.jj2 3
GetCustomAttributejj3 E
(jjE F
infojjF J
.jjJ K
ParameterTypejjK X
,jjX Y
typeofjjZ `
(jj` a
XmlRootAttributejja q
)jjq r
)jjr s
;jjs t
varkk 
arrayItemAttributekk 
=kk 
infokk  
.kk  !
GetCustomAttributekk! 3
<kk3 4!
XmlArrayItemAttributekk4 I
>kkI J
(kkJ K
)kkK L
;kkL M
varmm 
parameterNamemm 
=mm 
stringmm 
.mm 
IsNullOrEmptymm +
(mm+ ,
elementAttributemm, <
?mm< =
.mm= >
ElementNamemm> I
)mmI J
?nn 
stringnn 
.nn 
IsNullOrEmptynn 
(nn 
arrayAttributenn )
?nn) *
.nn* +
ElementNamenn+ 6
)nn6 7
?oo 
stringoo 
.oo 
IsNullOrEmptyoo 
(oo 
rootAttributeoo )
?oo) *
.oo* +
ElementNameoo+ 6
)oo6 7
?pp 
stringpp 
.pp 
IsNullOrEmptypp 
(pp 
infopp !
.pp! "
GetCustomAttributepp" 4
<pp4 5%
MessageParameterAttributepp5 N
>ppN O
(ppO P
)ppP Q
?ppQ R
.ppR S
NameppS W
)ppW X
?qq 
stringqq	 
.qq 
IsNullOrEmptyqq 
(qq 
infoqq "
.qq" #
ParameterTypeqq# 0
.qq0 1
GetCustomAttributeqq1 C
<qqC D$
MessageContractAttributeqqD \
>qq\ ]
(qq] ^
)qq^ _
?qq_ `
.qq` a
WrapperNameqqa l
)qql m
?rr 	
inforr
 
.rr 
Namerr 
:ss 	
infoss
 
.ss 
ParameterTypess 
.ss 
GetCustomAttributess /
<ss/ 0$
MessageContractAttributess0 H
>ssH I
(ssI J
)ssJ K
.ssK L
WrapperNamessL W
:tt 
infott	 
.tt 
GetCustomAttributett  
<tt  !%
MessageParameterAttributett! :
>tt: ;
(tt; <
)tt< =
.tt= >
Namett> B
:uu 
rootAttributeuu 
.uu 
ElementNameuu !
:vv 
arrayAttributevv 
.vv 
ElementNamevv !
:ww 
elementAttributeww 
.ww 
ElementNameww "
;ww" #
varyy 
	arrayNameyy 
=yy 
arrayAttributeyy !
?yy! "
.yy" #
ElementNameyy# .
;yy. /
varzz 
arrayItemNamezz 
=zz 
arrayItemAttributezz )
?zz) *
.zz* +
ElementNamezz+ 6
;zz6 7
var{{ 
parameterNs{{ 
={{ 
elementAttribute{{ %
?{{% &
.{{& '
Form{{' +
=={{, .
XmlSchemaForm{{/ <
.{{< =
Unqualified{{= H
?|| 
string|| 
.|| 
Empty|| 
:}} 
elementAttribute}} 
?}} 
.}} 
	Namespace}} !
??~~ 
arrayAttribute~~ 
?~~ 
.~~ 
	Namespace~~  
?? 
contract 
. 
	Namespace 
; 
var
ÄÄ #
dataContractAttribute
ÄÄ 
=
ÄÄ 
info
ÄÄ #
.
ÄÄ# $
ParameterType
ÄÄ$ 1
.
ÄÄ1 2 
GetCustomAttribute
ÄÄ2 D
<
ÄÄD E#
DataContractAttribute
ÄÄE Z
>
ÄÄZ [
(
ÄÄ[ \
)
ÄÄ\ ]
;
ÄÄ] ^
if
ÅÅ 
(
ÅÅ #
dataContractAttribute
ÅÅ 
!=
ÅÅ 
null
ÅÅ  $
&&
ÅÅ% '#
dataContractAttribute
ÅÅ( =
.
ÅÅ= >&
IsNamespaceSetExplicitly
ÅÅ> V
&&
ÅÅW Y
!
ÅÅZ [
string
ÅÅ[ a
.
ÅÅa b 
IsNullOrWhiteSpace
ÅÅb t
(
ÅÅt u$
dataContractAttributeÅÅu ä
.ÅÅä ã
	NamespaceÅÅã î
)ÅÅî ï
)ÅÅï ñ
{
ÇÇ 
parameterNs
ÉÉ 
=
ÉÉ #
dataContractAttribute
ÉÉ '
.
ÉÉ' (
	Namespace
ÉÉ( 1
;
ÉÉ1 2
}
ÑÑ 
return
ÜÜ 	
new
ÜÜ
 %
SoapMethodParameterInfo
ÜÜ %
(
ÜÜ% &
info
ÜÜ& *
,
ÜÜ* +
index
ÜÜ, 1
,
ÜÜ1 2
parameterName
ÜÜ3 @
,
ÜÜ@ A
	arrayName
ÜÜB K
,
ÜÜK L
arrayItemName
ÜÜM Z
,
ÜÜZ [
parameterNs
ÜÜ\ g
)
ÜÜg h
;
ÜÜh i
}
áá 
private
ââ 	
static
ââ
 
string
ââ 
GetNameByAction
ââ '
(
ââ' (
string
ââ( .
action
ââ/ 5
)
ââ5 6
{
ää 
var
ãã 
index
ãã 
=
ãã 
action
ãã 
?
ãã 
.
ãã 
LastIndexOf
ãã "
(
ãã" #
$str
ãã# &
)
ãã& '
;
ãã' (
return
åå 	
(
åå
 
index
åå 
??
åå 
-
åå 
$num
åå 
)
åå 
>
åå 
-
åå 
$num
åå 
?
çç 
action
çç 
.
çç 
	Substring
çç 
(
çç 
index
çç 
.
çç 
Value
çç "
+
çç# $
$num
çç% &
,
çç& '
action
çç( .
.
çç. /
Length
çç/ 5
-
çç6 7
index
çç8 =
.
çç= >
Value
çç> C
-
ççD E
$num
ççF G
)
ççG H
:
éé 
null
éé 

;
éé
 
}
èè 
private
ëë 	
static
ëë
 
string
ëë 
GetNameByMethod
ëë '
(
ëë' (

MethodInfo
ëë( 2
operationMethod
ëë3 B
)
ëëB C
{
íí 
var
ìì 

returnType
ìì 
=
ìì 
operationMethod
ìì #
.
ìì# $

ReturnType
ìì$ .
;
ìì. /
var
îî 
name
îî 
=
îî 
operationMethod
îî 
.
îî 
Name
îî "
;
îî" #
if
ññ 
(
ññ 

returnType
ññ 
.
ññ 
IsGenericType
ññ 
&&
ññ  "

returnType
ññ# -
.
ññ- .&
GetGenericTypeDefinition
ññ. F
(
ññF G
)
ññG H
==
ññI K
typeof
ññL R
(
ññR S
Task
ññS W
<
ññW X
>
ññX Y
)
ññY Z
)
ññZ [
{
óó 
if
òò 
(
òò 
name
òò 
.
òò 
EndsWith
òò 
(
òò 
$str
òò 
)
òò 
)
òò 
{
ôô 
name
öö 	
=
öö
 
name
öö 
.
öö 
	Substring
öö 
(
öö 
$num
öö 
,
öö 
name
öö "
.
öö" #
LastIndexOf
öö# .
(
öö. /
$str
öö/ 6
)
öö6 7
)
öö7 8
;
öö8 9
}
õõ 
}
úú 
if
ûû 
(
ûû 

returnType
ûû 
==
ûû 
typeof
ûû 
(
ûû 
Task
ûû  
)
ûû  !
&&
ûû" $
name
ûû% )
.
ûû) *
EndsWith
ûû* 2
(
ûû2 3
$str
ûû3 :
)
ûû: ;
)
ûû; <
{
üü 
name
†† 
=
††	 

name
†† 
.
†† 
	Substring
†† 
(
†† 
$num
†† 
,
†† 
name
†† !
.
††! "
LastIndexOf
††" -
(
††- .
$str
††. 5
)
††5 6
)
††6 7
;
††7 8
}
°° 
return
££ 	
name
££
 
;
££ 
}
§§ 
}
•• 
}¶¶ ò"
eC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\ServiceModel\ServiceDescription.cs
	namespace 	
SoapCore
 
. 
ServiceModel 
{ 
public		 
class		 
ServiceDescription		  
{

 
public 
ServiceDescription	 
( 
Type  
serviceType! ,
), -
{ 
ServiceType 
= 
serviceType 
; 
ServiceKnownTypes 
= 
serviceType "
." #
GetCustomAttributes# 6
<6 7%
ServiceKnownTypeAttribute7 P
>P Q
(Q R
inheritR Y
:Y Z
false[ `
)` a
;a b
var 
types 
= 

Enumerable 
. 
Empty 
<  
Type  $
>$ %
(% &
)& '
.' (
Concat( .
(. /
ServiceType/ :
.: ;
GetInterfaces; H
(H I
)I J
)J K
;K L
types 
=	 

types 
. 
Concat 
( 
new 
[ 
] 
{ 
ServiceType  +
}, -
)- .
;. /
var 
	contracts 
= 
new 
List 
< 
ContractDescription /
>/ 0
(0 1
)1 2
;2 3
foreach 

( 
var 
contractType 
in 
types  %
)% &
{ 
foreach 
( 
var 
serviceContract  
in! #
contractType$ 0
.0 1
GetTypeInfo1 <
(< =
)= >
.> ?
GetCustomAttributes? R
<R S$
ServiceContractAttributeS k
>k l
(l m
)m n
)n o
{ 
var 
contractDescription	 
= 
new "
ContractDescription# 6
(6 7
this7 ;
,; <
contractType= I
,I J
serviceContractK Z
)Z [
;[ \
	contracts 
. 
Add 
( 
contractDescription &
)& '
;' (
if 
( 	
GeneralContract	 
is 
null  
)  !
{ 
GeneralContract 
= 
contractDescription +
;+ ,
} 
else   	
{!! 
if"" 
(""	 

GeneralContract""
 
."" 
GetType"" !
(""! "
)""" #
.""# $
IsAssignableFrom""$ 4
(""4 5
contractDescription""5 H
.""H I
GetType""I P
(""P Q
)""Q R
)""R S
)""S T
{## 
GeneralContract$$ 
=$$ 
contractDescription$$ ,
;$$, -
}%% 
}&& 
}'' 
}(( 
	Contracts** 
=** 
	contracts** 
;** 
}++ 
public-- 
Type--	 
ServiceType-- 
{-- 
get-- 
;--  
}--! "
public.. 
ContractDescription..	 
GeneralContract.. ,
{..- .
get../ 2
;..2 3
}..4 5
public// 
IEnumerable//	 
<// %
ServiceKnownTypeAttribute// .
>//. /
ServiceKnownTypes//0 A
{//B C
get//D G
;//G H
}//I J
public00 
IEnumerable00	 
<00 
ContractDescription00 (
>00( )
	Contracts00* 3
{004 5
get006 9
;009 :
}00; <
public11 
IEnumerable11	 
<11  
OperationDescription11 )
>11) *

Operations11+ 5
=>116 8
	Contracts119 B
.11B C

SelectMany11C M
(11M N
c11N O
=>11P R
c11S T
.11T U

Operations11U _
)11_ `
;11` a
}22 
}33 ∞
oC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\ServiceModel\SoapMethodParameterDirection.cs
	namespace 	
SoapCore
 
. 
ServiceModel 
{ 
public 
enum (
SoapMethodParameterDirection )
{ 
InOnly 
, 	

OutOnlyRef 
, 
InAndOutRef 
} 
}		 ∞!
jC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\ServiceModel\SoapMethodParameterInfo.cs
	namespace 	
SoapCore
 
. 
ServiceModel 
{ 
public 
class #
SoapMethodParameterInfo %
{ 
public #
SoapMethodParameterInfo	  
(  !
ParameterInfo! .
	parameter/ 8
,8 9
int: =
index> C
,C D
stringE K
nameL P
,P Q
stringR X
	arrayNameY b
,b c
stringd j
arrayItemNamek x
,x y
string	z Ä
ns
Å É
)
É Ñ
{ 
	Parameter		 
=		 
	parameter		 
;		 
Index

 
=

	 

index

 
;

 
Name 
= 	
name
 
; 
	ArrayName 
= 
	arrayName 
; 
ArrayItemName 
= 
arrayItemName  
;  !
	Namespace 
= 
ns 
; 
if 
( 
! 
	Parameter 
. 
IsOut 
&& 
! 
	Parameter %
.% &
ParameterType& 3
.3 4
IsByRef4 ;
); <
{ 
	Direction 
= (
SoapMethodParameterDirection ,
., -
InOnly- 3
;3 4
} 
else 
if 

( 
	Parameter 
. 
IsOut 
&& 
	Parameter (
.( )
ParameterType) 6
.6 7
IsByRef7 >
)> ?
{ 
	Direction 
= (
SoapMethodParameterDirection ,
., -

OutOnlyRef- 7
;7 8
} 
else 
if 

( 
! 
	Parameter 
. 
IsOut 
&& 
	Parameter  )
.) *
ParameterType* 7
.7 8
IsByRef8 ?
)? @
{ 
	Direction 
= (
SoapMethodParameterDirection ,
., -
InAndOutRef- 8
;8 9
} 
else 
{ 
throw 	
new
 
System 
. #
NotImplementedException ,
(, -
$"- /E
9unexpected combination of IsOut and IsByRef in parameter / h
{h i
	Parameteri r
.r s
Names w
}w x
	 of type 	x Å
{
Å Ç
	Parameter
Ç ã
.
ã å
ParameterType
å ô
.
ô ö
FullName
ö ¢
}
¢ £
"
£ §
)
§ •
;
• ¶
}   
}!! 
public## 
ParameterInfo##	 
	Parameter##  
{##! "
get### &
;##& '
private##( /
set##0 3
;##3 4
}##5 6
public$$ 
int$$	 
Index$$ 
{$$ 
get$$ 
;$$ 
private$$ !
set$$" %
;$$% &
}$$' (
public%% (
SoapMethodParameterDirection%%	 %
	Direction%%& /
{%%0 1
get%%2 5
;%%5 6
private%%7 >
set%%? B
;%%B C
}%%D E
public&& 
string&&	 
Name&& 
{&& 
get&& 
;&& 
private&& #
set&&$ '
;&&' (
}&&) *
public'' 
string''	 
	ArrayName'' 
{'' 
get'' 
;''  
private''! (
set'') ,
;'', -
}''. /
public(( 
string((	 
ArrayItemName(( 
{(( 
get((  #
;((# $
private((% ,
set((- 0
;((0 1
}((2 3
public)) 
string))	 
	Namespace)) 
{)) 
get)) 
;))  
private))! (
set))) ,
;)), -
})). /
}** 
}++ †

[C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\SoapCoreBufferManager.cs
	namespace 	
SoapCore
 
{ 
internal 	
class
 !
SoapCoreBufferManager %
:& '
BufferManager( 5
{ 
public 
override	 
void 
Clear 
( 
) 
{		 
}

 
public 
override	 
void 
ReturnBuffer #
(# $
byte$ (
[( )
]) *
buffer+ 1
)1 2
{ 
	ArrayPool 
< 
byte 
> 
. 
Shared 
. 
Return  
(  !
buffer! '
)' (
;( )
} 
public 
override	 
byte 
[ 
] 

TakeBuffer #
(# $
int$ '

bufferSize( 2
)2 3
{ 
return 	
	ArrayPool
 
< 
byte 
> 
. 
Shared  
.  !
Rent! %
(% &

bufferSize& 0
)0 1
;1 2
} 
} 
} à
UC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\SoapCoreOptions.cs
	namespace 	
SoapCore
 
{ 
public 
class 
SoapCoreOptions 
{ 
public 
string	 
Path 
{ 
get 
; 
set 
;  
}! "
public 
SoapEncoderOptions	 
[ 
] 
EncoderOptions ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
SoapSerializer	 
SoapSerializer &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
SoapSerializer7 E
.E F"
DataContractSerializerF \
;\ ]
public 
bool	 
CaseInsensitivePath !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
false2 7
;7 8
public## 
ISoapModelBounder##	 
SoapModelBounder## +
{##, -
get##. 1
;##1 2
set##3 6
;##6 7
}##8 9
=##: ;
null##< @
;##@ A
public)) 
Binding))	 
Binding)) 
{)) 
get)) 
;)) 
set))  #
;))# $
}))% &
public// 
bool//	 
HttpGetEnabled// 
{// 
get// "
;//" #
set//$ '
;//' (
}//) *
=//+ ,
true//- 1
;//1 2
public55 
bool55	 
HttpsGetEnabled55 
{55 
get55  #
;55# $
set55% (
;55( )
}55* +
=55, -
true55. 2
;552 3
public;; 
int;;	 
BufferThreshold;; 
{;; 
get;; "
;;;" #
set;;$ '
;;;' (
};;) *
=;;+ ,
$num;;- 1
*;;2 3
$num;;4 6
;;;6 7
publicAA 
longAA	 
BufferLimitAA 
{AA 
getAA 
;AA  
setAA! $
;AA$ %
}AA& '
publicGG 
boolGG	 
OmitXmlDeclarationGG  
{GG! "
getGG# &
;GG& '
setGG( +
;GG+ ,
}GG- .
=GG/ 0
trueGG1 5
;GG5 6
publicMM 
boolMM	 
	IndentXmlMM 
{MM 
getMM 
;MM 
setMM "
;MM" #
}MM$ %
=MM& '
trueMM( ,
;MM, -
publicRR 
XmlNamespaceManagerRR	 '
XmlNamespacePrefixOverridesRR 8
{RR9 :
getRR; >
;RR> ?
setRR@ C
;RRC D
}RRE F
=RRG H
newRRI L
XmlNamespaceManagerRRM `
(RR` a
newRRa d
	NameTableRRe n
(RRn o
)RRo p
)RRp q
;RRq r
}SS 
}TT Ñ
XC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\SoapEncoderOptions.cs
	namespace 	
SoapCore
 
{ 
public		 
class		 
SoapEncoderOptions		  
{

 
public 
MessageVersion	 
MessageVersion &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Encoding	 
WriteEncoding 
{  !
get" %
;% &
set' *
;* +
}, -
public %
XmlDictionaryReaderQuotas	 "
ReaderQuotas# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} ◊¶
\C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\SoapEndpointExtensions.cs
	namespace 	
SoapCore
 
{ 
public 
static 
class "
SoapEndpointExtensions +
{ 
public 
static	 
IApplicationBuilder #
UseSoapEndpoint$ 3
<3 4
T4 5
>5 6
(6 7
this7 ;
IApplicationBuilder< O
builderP W
,W X
stringY _
path` d
,d e
SoapEncoderOptionsf x
encoder	y Ä
,
Ä Å
SoapSerializer
Ç ê

serializer
ë õ
=
ú ù
SoapSerializer
û ¨
.
¨ ≠$
DataContractSerializer
≠ √
,
√ ƒ
bool
≈ …!
caseInsensitivePath
  ›
=
ﬁ ﬂ
false
‡ Â
,
Â Ê
ISoapModelBounder
Á ¯
soapModelBounder
˘ â
=
ä ã
null
å ê
,
ê ë
WsdlFileOptions
í °
wsdlFileOptions
¢ ±
=
≤ ≥
null
¥ ∏
,
∏ π
bool
∫ æ
	indentXml
ø »
=
…  
true
À œ
,
œ –
bool
— ’ 
omitXmlDeclaration
÷ Ë
=
È Í
true
Î Ô
)
Ô 
{ 
return 	
builder
 
. 
UseSoapEndpoint !
(! "
typeof" (
(( )
T) *
)* +
,+ ,
path- 1
,1 2
new3 6
[6 7
]7 8
{9 :
encoder; B
}C D
,D E

serializerF P
,P Q
caseInsensitivePathR e
,e f
soapModelBounderg w
,w x
nully }
,} ~
wsdlFileOptions	 é
,
é è
	indentXml
ê ô
,
ô ö 
omitXmlDeclaration
õ ≠
)
≠ Æ
;
Æ Ø
} 
public 
static	 
IApplicationBuilder #
UseSoapEndpoint$ 3
<3 4
T4 5
,5 6
	T_MESSAGE7 @
>@ A
(A B
thisB F
IApplicationBuilderG Z
builder[ b
,b c
stringd j
pathk o
,o p
SoapEncoderOptions	q É
encoder
Ñ ã
,
ã å
SoapSerializer
ç õ

serializer
ú ¶
=
ß ®
SoapSerializer
© ∑
.
∑ ∏$
DataContractSerializer
∏ Œ
,
Œ œ
bool
– ‘!
caseInsensitivePath
’ Ë
=
È Í
false
Î 
,
 Ò
ISoapModelBounder
Ú É
soapModelBounder
Ñ î
=
ï ñ
null
ó õ
,
õ ú
bool
ù °
	indentXml
¢ ´
=
¨ ≠
true
Æ ≤
,
≤ ≥
bool
¥ ∏ 
omitXmlDeclaration
π À
=
Ã Õ
true
Œ “
)
“ ”
where 
	T_MESSAGE	 
: 
CustomMessage "
," #
new$ '
(' (
)( )
{ 
return 	
builder
 
. 
UseSoapEndpoint !
<! "
	T_MESSAGE" +
>+ ,
(, -
typeof- 3
(3 4
T4 5
)5 6
,6 7
path8 <
,< =
new> A
[A B
]B C
{D E
encoderF M
}N O
,O P

serializerQ [
,[ \
caseInsensitivePath] p
,p q
soapModelBounder	r Ç
,
Ç É
null
Ñ à
,
à â
null
ä é
,
é è
	indentXml
ê ô
,
ô ö 
omitXmlDeclaration
õ ≠
)
≠ Æ
;
Æ Ø
} 
public 
static	 
IApplicationBuilder #
UseSoapEndpoint$ 3
(3 4
this4 8
IApplicationBuilder9 L
builderM T
,T U
TypeV Z
type[ _
,_ `
stringa g
pathh l
,l m
SoapEncoderOptions	n Ä
encoder
Å à
,
à â
SoapSerializer
ä ò

serializer
ô £
=
§ •
SoapSerializer
¶ ¥
.
¥ µ$
DataContractSerializer
µ À
,
À Ã
bool
Õ —!
caseInsensitivePath
“ Â
=
Ê Á
false
Ë Ì
,
Ì Ó
ISoapModelBounder
Ô Ä
soapModelBounder
Å ë
=
í ì
null
î ò
,
ò ô
Binding
ö °
binding
¢ ©
=
™ ´
null
¨ ∞
,
∞ ±
bool
≤ ∂
	indentXml
∑ ¿
=
¡ ¬
true
√ «
,
« »
bool
… Õ 
omitXmlDeclaration
Œ ‡
=
· ‚
true
„ Á
)
Á Ë
{ 
return 	
builder
 
. 
UseSoapEndpoint !
(! "
type" &
,& '
path( ,
,, -
new. 1
[1 2
]2 3
{4 5
encoder6 =
}> ?
,? @

serializerA K
,K L
caseInsensitivePathM `
,` a
soapModelBounderb r
,r s
bindingt {
,{ |
null	} Å
,
Å Ç
	indentXml
É å
,
å ç 
omitXmlDeclaration
é †
)
† °
;
° ¢
}   
public"" 
static""	 
IApplicationBuilder"" #
UseSoapEndpoint""$ 3
<""3 4
	T_MESSAGE""4 =
>""= >
(""> ?
this""? C
IApplicationBuilder""D W
builder""X _
,""_ `
Type""a e
type""f j
,""j k
string""l r
path""s w
,""w x
SoapEncoderOptions	""y ã
encoder
""å ì
,
""ì î
SoapSerializer
""ï £

serializer
""§ Æ
=
""Ø ∞
SoapSerializer
""± ø
.
""ø ¿$
DataContractSerializer
""¿ ÷
,
""÷ ◊
bool
""ÿ ‹!
caseInsensitivePath
""› 
=
""Ò Ú
false
""Û ¯
,
""¯ ˘
ISoapModelBounder
""˙ ã
soapModelBounder
""å ú
=
""ù û
null
""ü £
,
""£ §
Binding
""• ¨
binding
""≠ ¥
=
""µ ∂
null
""∑ ª
,
""ª º
bool
""Ω ¡
	indentXml
""¬ À
=
""Ã Õ
true
""Œ “
,
""“ ”
bool
""‘ ÿ 
omitXmlDeclaration
""Ÿ Î
=
""Ï Ì
true
""Ó Ú
)
""Ú Û
where## 
	T_MESSAGE##	 
:## 
CustomMessage## "
,##" #
new##$ '
(##' (
)##( )
{$$ 
return%% 	
builder%%
 
.%% 
UseSoapEndpoint%% !
<%%! "
	T_MESSAGE%%" +
>%%+ ,
(%%, -
type%%- 1
,%%1 2
path%%3 7
,%%7 8
new%%9 <
[%%< =
]%%= >
{%%? @
encoder%%A H
}%%I J
,%%J K

serializer%%L V
,%%V W
caseInsensitivePath%%X k
,%%k l
soapModelBounder%%m }
,%%} ~
binding	%% Ü
,
%%Ü á
null
%%à å
,
%%å ç
	indentXml
%%é ó
,
%%ó ò 
omitXmlDeclaration
%%ô ´
)
%%´ ¨
;
%%¨ ≠
}&& 
public(( 
static((	 
IApplicationBuilder(( #
UseSoapEndpoint(($ 3
<((3 4
T((4 5
>((5 6
(((6 7
this((7 ;
IApplicationBuilder((< O
builder((P W
,((W X
string((Y _
path((` d
,((d e
Binding((f m
binding((n u
,((u v
SoapSerializer	((w Ö

serializer
((Ü ê
=
((ë í
SoapSerializer
((ì °
.
((° ¢$
DataContractSerializer
((¢ ∏
,
((∏ π
bool
((∫ æ!
caseInsensitivePath
((ø “
=
((” ‘
false
((’ ⁄
,
((⁄ €
ISoapModelBounder
((‹ Ì
soapModelBounder
((Ó ˛
=
((ˇ Ä
null
((Å Ö
,
((Ö Ü
WsdlFileOptions
((á ñ
wsdlFileOptions
((ó ¶
=
((ß ®
null
((© ≠
,
((≠ Æ
bool
((Ø ≥
	indentXml
((¥ Ω
=
((æ ø
true
((¿ ƒ
,
((ƒ ≈
bool
((∆   
omitXmlDeclaration
((À ›
=
((ﬁ ﬂ
true
((‡ ‰
)
((‰ Â
{)) 
return** 	
builder**
 
.** 
UseSoapEndpoint** !
(**! "
typeof**" (
(**( )
T**) *
)*** +
,**+ ,
path**- 1
,**1 2
binding**3 :
,**: ;

serializer**< F
,**F G
caseInsensitivePath**H [
,**[ \
soapModelBounder**] m
,**m n
wsdlFileOptions**o ~
,**~ 
	indentXml
**Ä â
,
**â ä 
omitXmlDeclaration
**ã ù
)
**ù û
;
**û ü
}++ 
public-- 
static--	 
IApplicationBuilder-- #
UseSoapEndpoint--$ 3
<--3 4
T--4 5
,--5 6
	T_MESSAGE--7 @
>--@ A
(--A B
this--B F
IApplicationBuilder--G Z
builder--[ b
,--b c
string--d j
path--k o
,--o p
Binding--q x
binding	--y Ä
,
--Ä Å
SoapSerializer
--Ç ê

serializer
--ë õ
=
--ú ù
SoapSerializer
--û ¨
.
--¨ ≠$
DataContractSerializer
--≠ √
,
--√ ƒ
bool
--≈ …!
caseInsensitivePath
--  ›
=
--ﬁ ﬂ
false
--‡ Â
,
--Â Ê
ISoapModelBounder
--Á ¯
soapModelBounder
--˘ â
=
--ä ã
null
--å ê
,
--ê ë
bool
--í ñ
	indentXml
--ó †
=
--° ¢
true
--£ ß
,
--ß ®
bool
--© ≠ 
omitXmlDeclaration
--Æ ¿
=
--¡ ¬
true
--√ «
)
--« »
where.. 
	T_MESSAGE..	 
:.. 
CustomMessage.. "
,.." #
new..$ '
(..' (
)..( )
{// 
return00 	
builder00
 
.00 
UseSoapEndpoint00 !
<00! "
	T_MESSAGE00" +
>00+ ,
(00, -
typeof00- 3
(003 4
T004 5
)005 6
,006 7
path008 <
,00< =
binding00> E
,00E F

serializer00G Q
,00Q R
caseInsensitivePath00S f
,00f g
soapModelBounder00h x
,00x y
null00z ~
,00~ 
	indentXml
00Ä â
,
00â ä 
omitXmlDeclaration
00ã ù
)
00ù û
;
00û ü
}11 
public33 
static33	 
IApplicationBuilder33 #
UseSoapEndpoint33$ 3
<333 4
T334 5
>335 6
(336 7
this337 ;
IApplicationBuilder33< O
builder33P W
,33W X
string33Y _
path33` d
,33d e
SoapEncoderOptions33f x
[33x y
]33y z
encoders	33{ É
,
33É Ñ
SoapSerializer
33Ö ì

serializer
33î û
=
33ü †
SoapSerializer
33° Ø
.
33Ø ∞$
DataContractSerializer
33∞ ∆
,
33∆ «
bool
33» Ã!
caseInsensitivePath
33Õ ‡
=
33· ‚
false
33„ Ë
,
33Ë È
ISoapModelBounder
33Í ˚
soapModelBounder
33¸ å
=
33ç é
null
33è ì
,
33ì î
bool
33ï ô
	indentXml
33ö £
=
33§ •
true
33¶ ™
,
33™ ´
bool
33¨ ∞ 
omitXmlDeclaration
33± √
=
33ƒ ≈
true
33∆  
)
33  À
{44 
return55 	
builder55
 
.55 
UseSoapEndpoint55 !
(55! "
typeof55" (
(55( )
T55) *
)55* +
,55+ ,
path55- 1
,551 2
encoders553 ;
,55; <

serializer55= G
,55G H
caseInsensitivePath55I \
,55\ ]
soapModelBounder55^ n
,55n o
null55p t
,55t u
null55v z
,55z {
	indentXml	55| Ö
,
55Ö Ü 
omitXmlDeclaration
55á ô
)
55ô ö
;
55ö õ
}66 
public88 
static88	 
IApplicationBuilder88 #
UseSoapEndpoint88$ 3
<883 4
T884 5
,885 6
	T_MESSAGE887 @
>88@ A
(88A B
this88B F
IApplicationBuilder88G Z
builder88[ b
,88b c
string88d j
path88k o
,88o p
SoapEncoderOptions	88q É
[
88É Ñ
]
88Ñ Ö
encoders
88Ü é
,
88é è
SoapSerializer
88ê û

serializer
88ü ©
=
88™ ´
SoapSerializer
88¨ ∫
.
88∫ ª$
DataContractSerializer
88ª —
,
88— “
bool
88” ◊!
caseInsensitivePath
88ÿ Î
=
88Ï Ì
false
88Ó Û
,
88Û Ù
ISoapModelBounder
88ı Ü
soapModelBounder
88á ó
=
88ò ô
null
88ö û
,
88û ü
bool
88† §
	indentXml
88• Æ
=
88Ø ∞
true
88± µ
,
88µ ∂
bool
88∑ ª 
omitXmlDeclaration
88º Œ
=
88œ –
true
88— ’
)
88’ ÷
where99 
	T_MESSAGE99	 
:99 
CustomMessage99 "
,99" #
new99$ '
(99' (
)99( )
{:: 
return;; 	
builder;;
 
.;; 
UseSoapEndpoint;; !
<;;! "
	T_MESSAGE;;" +
>;;+ ,
(;;, -
typeof;;- 3
(;;3 4
T;;4 5
);;5 6
,;;6 7
path;;8 <
,;;< =
encoders;;> F
,;;F G

serializer;;H R
,;;R S
caseInsensitivePath;;T g
,;;g h
soapModelBounder;;i y
,;;y z
null;;{ 
,	;; Ä
null
;;Å Ö
,
;;Ö Ü
	indentXml
;;á ê
,
;;ê ë 
omitXmlDeclaration
;;í §
)
;;§ •
;
;;• ¶
}<< 
public>> 
static>>	 
IApplicationBuilder>> #
UseSoapEndpoint>>$ 3
(>>3 4
this>>4 8
IApplicationBuilder>>9 L
builder>>M T
,>>T U
Type>>V Z
type>>[ _
,>>_ `
string>>a g
path>>h l
,>>l m
SoapEncoderOptions	>>n Ä
[
>>Ä Å
]
>>Å Ç
encoderOptions
>>É ë
,
>>ë í
SoapSerializer
>>ì °

serializer
>>¢ ¨
=
>>≠ Æ
SoapSerializer
>>Ø Ω
.
>>Ω æ$
DataContractSerializer
>>æ ‘
,
>>‘ ’
bool
>>÷ ⁄!
caseInsensitivePath
>>€ Ó
=
>>Ô 
false
>>Ò ˆ
,
>>ˆ ˜
ISoapModelBounder
>>¯ â
soapModelBounder
>>ä ö
=
>>õ ú
null
>>ù °
,
>>° ¢
Binding
>>£ ™
binding
>>´ ≤
=
>>≥ ¥
null
>>µ π
,
>>π ∫
WsdlFileOptions
>>ª  
wsdlFileOptions
>>À ⁄
=
>>€ ‹
null
>>› ·
,
>>· ‚
bool
>>„ Á
	indentXml
>>Ë Ò
=
>>Ú Û
true
>>Ù ¯
,
>>¯ ˘
bool
>>˙ ˛ 
omitXmlDeclaration
>>ˇ ë
=
>>í ì
true
>>î ò
)
>>ò ô
{?? 
return@@ 	
builder@@
 
.@@ 
UseSoapEndpoint@@ !
<@@! "
CustomMessage@@" /
>@@/ 0
(@@0 1
type@@1 5
,@@5 6
path@@7 ;
,@@; <
encoderOptions@@= K
,@@K L

serializer@@M W
,@@W X
caseInsensitivePath@@Y l
,@@l m
soapModelBounder@@n ~
,@@~ 
binding
@@Ä á
,
@@á à
wsdlFileOptions
@@â ò
,
@@ò ô
	indentXml
@@ö £
,
@@£ § 
omitXmlDeclaration
@@• ∑
)
@@∑ ∏
;
@@∏ π
}AA 
publicCC 
staticCC	 
IApplicationBuilderCC #
UseSoapEndpointCC$ 3
<CC3 4
	T_MESSAGECC4 =
>CC= >
(CC> ?
thisCC? C
IApplicationBuilderCCD W
builderCCX _
,CC_ `
TypeCCa e
typeCCf j
,CCj k
stringCCl r
pathCCs w
,CCw x
SoapEncoderOptions	CCy ã
[
CCã å
]
CCå ç
encoderOptions
CCé ú
,
CCú ù
SoapSerializer
CCû ¨

serializer
CC≠ ∑
=
CC∏ π
SoapSerializer
CC∫ »
.
CC» …$
DataContractSerializer
CC… ﬂ
,
CCﬂ ‡
bool
CC· Â!
caseInsensitivePath
CCÊ ˘
=
CC˙ ˚
false
CC¸ Å
,
CCÅ Ç
ISoapModelBounder
CCÉ î
soapModelBounder
CCï •
=
CC¶ ß
null
CC® ¨
,
CC¨ ≠
Binding
CCÆ µ
binding
CC∂ Ω
=
CCæ ø
null
CC¿ ƒ
,
CCƒ ≈
WsdlFileOptions
CC∆ ’
wsdlFileOptions
CC÷ Â
=
CCÊ Á
null
CCË Ï
,
CCÏ Ì
bool
CCÓ Ú
	indentXml
CCÛ ¸
=
CC˝ ˛
true
CCˇ É
,
CCÉ Ñ
bool
CCÖ â 
omitXmlDeclaration
CCä ú
=
CCù û
true
CCü £
)
CC£ §
whereDD 
	T_MESSAGEDD	 
:DD 
CustomMessageDD "
,DD" #
newDD$ '
(DD' (
)DD( )
{EE 
varFF 
optionsFF 
=FF 
newFF 
SoapOptionsFF  
{GG 
BindingHH 
=HH 
bindingHH 
,HH 
CaseInsensitivePathII 
=II 
caseInsensitivePathII -
,II- .
EncoderOptionsJJ 
=JJ 
encoderOptionsJJ #
,JJ# $
PathKK 
=KK	 

pathKK 
,KK 
ServiceTypeLL 
=LL 
typeLL 
,LL 
SoapSerializerMM 
=MM 

serializerMM 
,MM  
SoapModelBounderNN 
=NN 
soapModelBounderNN '
,NN' (
WsdlFileOptionsOO 
=OO 
wsdlFileOptionsOO %
,OO% &
	IndentXmlPP 
=PP 
	indentXmlPP 
,PP 
OmitXmlDeclarationQQ 
=QQ 
omitXmlDeclarationQQ +
}RR 
;RR 
returnSS 	
builderSS
 
.SS 
UseMiddlewareSS 
<SS  "
SoapEndpointMiddlewareSS  6
<SS6 7
	T_MESSAGESS7 @
>SS@ A
>SSA B
(SSB C
optionsSSC J
)SSJ K
;SSK L
}TT 
publicVV 
staticVV	 
IApplicationBuilderVV #
UseSoapEndpointVV$ 3
(VV3 4
thisVV4 8
IApplicationBuilderVV9 L
builderVVM T
,VVT U
TypeVVV Z
typeVV[ _
,VV_ `
stringVVa g
pathVVh l
,VVl m
BindingVVn u
bindingVVv }
,VV} ~
SoapSerializer	VV ç

serializer
VVé ò
=
VVô ö
SoapSerializer
VVõ ©
.
VV© ™$
DataContractSerializer
VV™ ¿
,
VV¿ ¡
bool
VV¬ ∆!
caseInsensitivePath
VV« ⁄
=
VV€ ‹
false
VV› ‚
,
VV‚ „
ISoapModelBounder
VV‰ ı
soapModelBounder
VVˆ Ü
=
VVá à
null
VVâ ç
,
VVç é
WsdlFileOptions
VVè û
wsdlFileOptions
VVü Æ
=
VVØ ∞
null
VV± µ
,
VVµ ∂
bool
VV∑ ª
	indentXml
VVº ≈
=
VV∆ «
true
VV» Ã
,
VVÃ Õ
bool
VVŒ “ 
omitXmlDeclaration
VV” Â
=
VVÊ Á
true
VVË Ï
)
VVÏ Ì
{WW 
returnXX 	
builderXX
 
.XX 
UseSoapEndpointXX !
<XX! "
CustomMessageXX" /
>XX/ 0
(XX0 1
typeXX1 5
,XX5 6
pathXX7 ;
,XX; <
bindingXX= D
,XXD E

serializerXXF P
,XXP Q
caseInsensitivePathXXR e
,XXe f
soapModelBounderXXg w
,XXw x
wsdlFileOptions	XXy à
,
XXà â
	indentXml
XXä ì
,
XXì î 
omitXmlDeclaration
XXï ß
)
XXß ®
;
XX® ©
}YY 
public[[ 
static[[	 
IApplicationBuilder[[ #
UseSoapEndpoint[[$ 3
<[[3 4
	T_MESSAGE[[4 =
>[[= >
([[> ?
this[[? C
IApplicationBuilder[[D W
builder[[X _
,[[_ `
Type[[a e
type[[f j
,[[j k
string[[l r
path[[s w
,[[w x
Binding	[[y Ä
binding
[[Å à
,
[[à â
SoapSerializer
[[ä ò

serializer
[[ô £
=
[[§ •
SoapSerializer
[[¶ ¥
.
[[¥ µ$
DataContractSerializer
[[µ À
,
[[À Ã
bool
[[Õ —!
caseInsensitivePath
[[“ Â
=
[[Ê Á
false
[[Ë Ì
,
[[Ì Ó
ISoapModelBounder
[[Ô Ä
soapModelBounder
[[Å ë
=
[[í ì
null
[[î ò
,
[[ò ô
WsdlFileOptions
[[ö ©
wsdlFileOptions
[[™ π
=
[[∫ ª
null
[[º ¿
,
[[¿ ¡
bool
[[¬ ∆
	indentXml
[[« –
=
[[— “
true
[[” ◊
,
[[◊ ÿ
bool
[[Ÿ › 
omitXmlDeclaration
[[ﬁ 
=
[[Ò Ú
true
[[Û ˜
)
[[˜ ¯
where\\ 
	T_MESSAGE\\	 
:\\ 
CustomMessage\\ "
,\\" #
new\\$ '
(\\' (
)\\( )
{]] 
var^^ 
elements^^ 
=^^ 
binding^^ 
.^^ !
CreateBindingElements^^ /
(^^/ 0
)^^0 1
.^^1 2
FindAll^^2 9
<^^9 :)
MessageEncodingBindingElement^^: W
>^^W X
(^^X Y
)^^Y Z
;^^Z [
var__ 
encoderOptions__ 
=__ 
new__ 
SoapEncoderOptions__ .
[__. /
elements__/ 7
.__7 8
Count__8 =
]__= >
;__> ?
foraa 
(aa 
varaa 
iaa 
=aa 
$numaa 
;aa 
iaa 
<aa 
encoderOptionsaa %
.aa% &
Lengthaa& ,
;aa, -
iaa. /
++aa/ 1
)aa1 2
{bb 
varcc 
encoderOptioncc 
=cc 
newcc 
SoapEncoderOptionscc .
{dd 
MessageVersionee 
=ee 
elementsee 
[ee 
iee  
]ee  !
.ee! "
MessageVersionee" 0
,ee0 1
WriteEncodingff 
=ff 
Encodingff 
.ff 
UTF8ff "
,ff" #
ReaderQuotasgg 
=gg %
XmlDictionaryReaderQuotasgg -
.gg- .
Maxgg. 1
}hh 
;hh 
ifjj 
(jj 
elementsjj 
[jj 
ijj 
]jj 
isjj -
!TextMessageEncodingBindingElementjj 8-
!textMessageEncodingBindingElementjj9 Z
)jjZ [
{kk 
encoderOptionll 
.ll 
WriteEncodingll  
=ll! "-
!textMessageEncodingBindingElementll# D
.llD E
WriteEncodingllE R
;llR S
encoderOptionmm 
.mm 
ReaderQuotasmm 
=mm  !-
!textMessageEncodingBindingElementmm" C
.mmC D
ReaderQuotasmmD P
;mmP Q
}nn 
encoderOptionspp 
[pp 
ipp 
]pp 
=pp 
encoderOptionpp %
;pp% &
}qq 
returnss 	
builderss
 
.ss 
UseSoapEndpointss !
<ss! "
	T_MESSAGEss" +
>ss+ ,
(ss, -
typess- 1
,ss1 2
pathss3 7
,ss7 8
encoderOptionsss9 G
,ssG H

serializerssI S
,ssS T
caseInsensitivePathssU h
,ssh i
soapModelBounderssj z
,ssz {
binding	ss| É
,
ssÉ Ñ
wsdlFileOptions
ssÖ î
,
ssî ï
	indentXml
ssñ ü
,
ssü † 
omitXmlDeclaration
ss° ≥
)
ss≥ ¥
;
ss¥ µ
}tt 
publicvv 
staticvv	 
IApplicationBuildervv #
UseSoapEndpointvv$ 3
<vv3 4
Tvv4 5
>vv5 6
(vv6 7
thisvv7 ;
IApplicationBuildervv< O
buildervvP W
,vvW X
ActionvvY _
<vv_ `
SoapCoreOptionsvv` o
>vvo p
optionsvvq x
)vvx y
{ww 
returnxx 	
builderxx
 
.xx 
UseSoapEndpointxx !
<xx! "
Txx" #
,xx# $
CustomMessagexx% 2
>xx2 3
(xx3 4
optionsxx4 ;
)xx; <
;xx< =
}yy 
public{{ 
static{{	 
IApplicationBuilder{{ #
UseSoapEndpoint{{$ 3
<{{3 4
T{{4 5
,{{5 6
	T_MESSAGE{{7 @
>{{@ A
({{A B
this{{B F
IApplicationBuilder{{G Z
builder{{[ b
,{{b c
Action{{d j
<{{j k
SoapCoreOptions{{k z
>{{z {
options	{{| É
)
{{É Ñ
where|| 
	T_MESSAGE||	 
:|| 
CustomMessage|| "
,||" #
new||$ '
(||' (
)||( )
{}} 
var~~ 
opt~~ 

=~~ 
new~~ 
SoapCoreOptions~~  
(~~  !
)~~! "
;~~" #
options 

(
 
opt 
) 
; 
if
ÇÇ 
(
ÇÇ 
opt
ÇÇ 

.
ÇÇ
 
EncoderOptions
ÇÇ 
is
ÇÇ 
null
ÇÇ !
&&
ÇÇ" $
opt
ÇÇ% (
.
ÇÇ( )
Binding
ÇÇ) 0
!=
ÇÇ1 3
null
ÇÇ4 8
)
ÇÇ8 9
{
ÉÉ 
var
ÑÑ 
elements
ÑÑ 
=
ÑÑ 
opt
ÑÑ 
.
ÑÑ 
Binding
ÑÑ 
.
ÑÑ #
CreateBindingElements
ÑÑ 4
(
ÑÑ4 5
)
ÑÑ5 6
.
ÑÑ6 7
FindAll
ÑÑ7 >
<
ÑÑ> ?+
MessageEncodingBindingElement
ÑÑ? \
>
ÑÑ\ ]
(
ÑÑ] ^
)
ÑÑ^ _
;
ÑÑ_ `
var
ÖÖ 
encoderOptions
ÖÖ 
=
ÖÖ 
new
ÖÖ  
SoapEncoderOptions
ÖÖ /
[
ÖÖ/ 0
elements
ÖÖ0 8
.
ÖÖ8 9
Count
ÖÖ9 >
]
ÖÖ> ?
;
ÖÖ? @
for
áá 
(
áá 	
var
áá	 
i
áá 
=
áá 
$num
áá 
;
áá 
i
áá 
<
áá 
encoderOptions
áá &
.
áá& '
Length
áá' -
;
áá- .
i
áá/ 0
++
áá0 2
)
áá2 3
{
àà 
var
ââ 
encoderOption
ââ	 
=
ââ 
new
ââ  
SoapEncoderOptions
ââ /
{
ää 
MessageVersion
ãã 
=
ãã 
elements
ãã 
[
ãã  
i
ãã  !
]
ãã! "
.
ãã" #
MessageVersion
ãã# 1
,
ãã1 2
WriteEncoding
åå 
=
åå 
Encoding
åå 
.
åå 
UTF8
åå #
,
åå# $
ReaderQuotas
çç 
=
çç '
XmlDictionaryReaderQuotas
çç .
.
çç. /
Max
çç/ 2
}
éé 
;
éé 
if
êê 
(
êê 	
elements
êê	 
[
êê 
i
êê 
]
êê 
is
êê /
!TextMessageEncodingBindingElement
êê 9/
!textMessageEncodingBindingElement
êê: [
)
êê[ \
{
ëë 
encoderOption
íí 
.
íí 
WriteEncoding
íí !
=
íí" #/
!textMessageEncodingBindingElement
íí$ E
.
ííE F
WriteEncoding
ííF S
;
ííS T
encoderOption
ìì 
.
ìì 
ReaderQuotas
ìì  
=
ìì! "/
!textMessageEncodingBindingElement
ìì# D
.
ììD E
ReaderQuotas
ììE Q
;
ììQ R
}
îî 
encoderOptions
ññ 
[
ññ 
i
ññ 
]
ññ 
=
ññ 
encoderOption
ññ &
;
ññ& '
}
óó 
opt
ôô 
.
ôô 
EncoderOptions
ôô 
=
ôô 
encoderOptions
ôô '
;
ôô' (
}
öö 
var
úú 
soapOptions
úú 
=
úú 
SoapOptions
úú  
.
úú  !!
FromSoapCoreOptions
úú! 4
<
úú4 5
T
úú5 6
>
úú6 7
(
úú7 8
opt
úú8 ;
)
úú; <
;
úú< =
return
ûû 	
builder
ûû
 
.
ûû 
UseMiddleware
ûû 
<
ûû  $
SoapEndpointMiddleware
ûû  6
<
ûû6 7
	T_MESSAGE
ûû7 @
>
ûû@ A
>
ûûA B
(
ûûB C
soapOptions
ûûC N
)
ûûN O
;
ûûO P
}
üü 
public
–– 
static
––	  
IServiceCollection
–– "
AddSoapCore
––# .
(
––. /
this
––/ 3 
IServiceCollection
––4 F
serviceCollection
––G X
)
––X Y
{
—— 
serviceCollection
““ 
.
““ 
TryAddSingleton
““ $
<
““$ %
IOperationInvoker
““% 6
,
““6 7%
DefaultOperationInvoker
““8 O
>
““O P
(
““P Q
)
““Q R
;
““R S
serviceCollection
”” 
.
”” 
TryAddSingleton
”” $
<
””$ %(
IFaultExceptionTransformer
””% ?
,
””? @.
 DefaultFaultExceptionTransformer
””A a
<
””a b
CustomMessage
””b o
>
””o p
>
””p q
(
””q r
)
””r s
;
””s t
return
’’ 	
serviceCollection
’’
 
;
’’ 
}
÷÷ 
public
ÿÿ 
static
ÿÿ	  
IServiceCollection
ÿÿ "
AddSoapCore
ÿÿ# .
<
ÿÿ. /
	T_MESSAGE
ÿÿ/ 8
>
ÿÿ8 9
(
ÿÿ9 :
this
ÿÿ: > 
IServiceCollection
ÿÿ? Q
serviceCollection
ÿÿR c
)
ÿÿc d
where
ŸŸ 
	T_MESSAGE
ŸŸ	 
:
ŸŸ 
CustomMessage
ŸŸ "
,
ŸŸ" #
new
ŸŸ$ '
(
ŸŸ' (
)
ŸŸ( )
{
⁄⁄ 
serviceCollection
€€ 
.
€€ 
TryAddSingleton
€€ $
<
€€$ %
IOperationInvoker
€€% 6
,
€€6 7%
DefaultOperationInvoker
€€8 O
>
€€O P
(
€€P Q
)
€€Q R
;
€€R S
serviceCollection
‹‹ 
.
‹‹ 
TryAddSingleton
‹‹ $
<
‹‹$ %(
IFaultExceptionTransformer
‹‹% ?
,
‹‹? @.
 DefaultFaultExceptionTransformer
‹‹A a
<
‹‹a b
	T_MESSAGE
‹‹b k
>
‹‹k l
>
‹‹l m
(
‹‹m n
)
‹‹n o
;
‹‹o p
return
ﬁﬁ 	
serviceCollection
ﬁﬁ
 
;
ﬁﬁ 
}
ﬂﬂ 
public
·· 
static
··	  
IServiceCollection
·· ")
AddSoapExceptionTransformer
··# >
(
··> ?
this
··? C 
IServiceCollection
··D V
serviceCollection
··W h
,
··h i
Func
··j n
<
··n o
	Exception
··o x
,
··x y
string··z Ä
>··Ä Å
transformer··Ç ç
)··ç é
{
‚‚ 
serviceCollection
„„ 
.
„„ 
TryAddSingleton
„„ $
(
„„$ %
new
„„% ("
ExceptionTransformer
„„) =
(
„„= >
transformer
„„> I
)
„„I J
)
„„J K
;
„„K L
return
‰‰ 	
serviceCollection
‰‰
 
;
‰‰ 
}
ÂÂ 
public
ÁÁ 
static
ÁÁ	  
IServiceCollection
ÁÁ "%
AddSoapMessageInspector
ÁÁ# :
(
ÁÁ: ;
this
ÁÁ; ? 
IServiceCollection
ÁÁ@ R
serviceCollection
ÁÁS d
,
ÁÁd e
IMessageInspector
ÁÁf w
messageInspectorÁÁx à
)ÁÁà â
{
ËË 
serviceCollection
ÈÈ 
.
ÈÈ 
TryAddSingleton
ÈÈ $
(
ÈÈ$ %
messageInspector
ÈÈ% 5
)
ÈÈ5 6
;
ÈÈ6 7
return
ÍÍ 	
serviceCollection
ÍÍ
 
;
ÍÍ 
}
ÎÎ 
public
ÌÌ 
static
ÌÌ	  
IServiceCollection
ÌÌ "%
AddSoapMessageInspector
ÌÌ# :
<
ÌÌ: ;
TService
ÌÌ; C
>
ÌÌC D
(
ÌÌD E
this
ÌÌE I 
IServiceCollection
ÌÌJ \
serviceCollection
ÌÌ] n
)
ÌÌn o
where
ÓÓ 
TService
ÓÓ	 
:
ÓÓ 
class
ÓÓ 
,
ÓÓ  
IMessageInspector2
ÓÓ -
{
ÔÔ 
serviceCollection
 
.
 
	AddScoped
 
<
  
IMessageInspector2
 1
,
1 2
TService
3 ;
>
; <
(
< =
)
= >
;
> ?
return
ÒÒ 	
serviceCollection
ÒÒ
 
;
ÒÒ 
}
ÚÚ 
public
ÙÙ 
static
ÙÙ	  
IServiceCollection
ÙÙ "%
AddSoapMessageInspector
ÙÙ# :
(
ÙÙ: ;
this
ÙÙ; ? 
IServiceCollection
ÙÙ@ R
serviceCollection
ÙÙS d
,
ÙÙd e 
IMessageInspector2
ÙÙf x
messageInspectorÙÙy â
)ÙÙâ ä
{
ıı 
serviceCollection
ˆˆ 
.
ˆˆ 
AddSingleton
ˆˆ !
(
ˆˆ! "
messageInspector
ˆˆ" 2
)
ˆˆ2 3
;
ˆˆ3 4
return
˜˜ 	
serviceCollection
˜˜
 
;
˜˜ 
}
¯¯ 
public
˙˙ 
static
˙˙	  
IServiceCollection
˙˙ ""
AddSoapMessageFilter
˙˙# 7
(
˙˙7 8
this
˙˙8 < 
IServiceCollection
˙˙= O
serviceCollection
˙˙P a
,
˙˙a b
IMessageFilter
˙˙c q
messageFilter
˙˙r 
)˙˙ Ä
{
˚˚ 
serviceCollection
¸¸ 
.
¸¸ 
TryAddSingleton
¸¸ $
(
¸¸$ %
messageFilter
¸¸% 2
)
¸¸2 3
;
¸¸3 4
return
˝˝ 	
serviceCollection
˝˝
 
;
˝˝ 
}
˛˛ 
public
ÄÄ 
static
ÄÄ	  
IServiceCollection
ÄÄ "%
AddSoapWsSecurityFilter
ÄÄ# :
(
ÄÄ: ;
this
ÄÄ; ? 
IServiceCollection
ÄÄ@ R
serviceCollection
ÄÄS d
,
ÄÄd e
string
ÄÄf l
username
ÄÄm u
,
ÄÄu v
string
ÄÄw }
passwordÄÄ~ Ü
)ÄÄÜ á
{
ÅÅ 
serviceCollection
ÇÇ 
.
ÇÇ "
AddSoapMessageFilter
ÇÇ )
(
ÇÇ) *
new
ÇÇ* -
WsMessageFilter
ÇÇ. =
(
ÇÇ= >
username
ÇÇ> F
,
ÇÇF G
password
ÇÇH P
)
ÇÇP Q
)
ÇÇQ R
;
ÇÇR S
return
ÉÉ 	
serviceCollection
ÉÉ
 
;
ÉÉ 
}
ÑÑ 
public
ÜÜ 
static
ÜÜ	  
IServiceCollection
ÜÜ "'
AddSoapModelBindingFilter
ÜÜ# <
(
ÜÜ< =
this
ÜÜ= A 
IServiceCollection
ÜÜB T
serviceCollection
ÜÜU f
,
ÜÜf g!
IModelBindingFilter
ÜÜh {!
modelBindingFilterÜÜ| é
)ÜÜé è
{
áá 
serviceCollection
àà 
.
àà 
TryAddSingleton
àà $
(
àà$ % 
modelBindingFilter
àà% 7
)
àà7 8
;
àà8 9
return
ââ 	
serviceCollection
ââ
 
;
ââ 
}
ää 
public
åå 
static
åå	  
IServiceCollection
åå "*
AddSoapServiceOperationTuner
åå# ?
<
åå? @
TService
åå@ H
>
ååH I
(
ååI J
this
ååJ N 
IServiceCollection
ååO a
serviceCollection
ååb s
)
åås t
where
çç 
TService
çç	 
:
çç 
class
çç 
,
çç $
IServiceOperationTuner
çç 1
{
éé 
serviceCollection
èè 
.
èè 
	AddScoped
èè 
<
èè $
IServiceOperationTuner
èè 5
,
èè5 6
TService
èè7 ?
>
èè? @
(
èè@ A
)
èèA B
;
èèB C
return
êê 	
serviceCollection
êê
 
;
êê 
}
ëë 
public
ìì 
static
ìì	  
IServiceCollection
ìì "*
AddSoapServiceOperationTuner
ìì# ?
(
ìì? @
this
ìì@ D 
IServiceCollection
ììE W
serviceCollection
ììX i
,
ììi j%
IServiceOperationTunerììk Å%
serviceOperationTunerììÇ ó
)ììó ò
{
îî 
serviceCollection
ïï 
.
ïï 
TryAddSingleton
ïï $
(
ïï$ %#
serviceOperationTuner
ïï% :
)
ïï: ;
;
ïï; <
return
ññ 	
serviceCollection
ññ
 
;
ññ 
}
óó 
}
òò 
}ôô Ω◊
\C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\SoapEndpointMiddleware.cs
	namespace 	
SoapCore
 
{ 
public 
class "
SoapEndpointMiddleware $
<$ %
	T_MESSAGE% .
>. /
where 
	T_MESSAGE 
: 
CustomMessage !
,! "
new# &
(& '
)' (
{ 
private 	
readonly
 
ILogger 
< "
SoapEndpointMiddleware 1
<1 2
	T_MESSAGE2 ;
>; <
>< =
_logger> E
;E F
private 	
readonly
 
RequestDelegate "
_next# (
;( )
private 	
readonly
 
SoapOptions 
_options '
;' (
private 	
readonly
 
ServiceDescription %
_service& .
;. /
private   	
readonly  
 
string   
_endpointPath   '
;  ' (
private!! 	
readonly!!
 
SoapSerializer!! !
_serializer!!" -
;!!- .
private"" 	
readonly""
 
Binding"" 
_binding"" #
;""# $
private## 	
readonly##
 
StringComparison## ##
_pathComparisonStrategy##$ ;
;##; <
private$$ 	
readonly$$
 
ISoapModelBounder$$ $
_soapModelBounder$$% 6
;$$6 7
private%% 	
readonly%%
 
bool%% 
_httpGetEnabled%% '
;%%' (
private&& 	
readonly&&
 
bool&& 
_httpsGetEnabled&& (
;&&( )
private'' 	
readonly''
 
SoapMessageEncoder'' %
[''% &
]''& '
_messageEncoders''( 8
;''8 9
private(( 	
readonly((
 
SerializerHelper(( #
_serializerHelper(($ 5
;((5 6
private)) 	
readonly))
 
XmlNamespaceManager)) & 
_xmlNamespaceManager))' ;
;)); <
[++ 
Obsolete++ 
]++ 
public,, "
SoapEndpointMiddleware,,	 
(,,  
ILogger,,  '
<,,' ("
SoapEndpointMiddleware,,( >
<,,> ?
	T_MESSAGE,,? H
>,,H I
>,,I J
logger,,K Q
,,,Q R
RequestDelegate,,S b
next,,c g
,,,g h
Type,,i m
serviceType,,n y
,,,y z
string	,,{ Å
path
,,Ç Ü
,
,,Ü á 
SoapEncoderOptions
,,à ö
[
,,ö õ
]
,,õ ú
encoderOptions
,,ù ´
,
,,´ ¨
SoapSerializer
,,≠ ª

serializer
,,º ∆
,
,,∆ «
bool
,,» Ã!
caseInsensitivePath
,,Õ ‡
,
,,‡ ·
ISoapModelBounder
,,‚ Û
soapModelBounder
,,Ù Ñ
,
,,Ñ Ö
Binding
,,Ü ç
binding
,,é ï
,
,,ï ñ
bool
,,ó õ
httpGetEnabled
,,ú ™
,
,,™ ´
bool
,,¨ ∞
httpsGetEnabled
,,± ¿
)
,,¿ ¡
{-- 
_logger.. 

=.. 
logger.. 
;.. 
_next// 
=//	 

next// 
;// 
_endpointPath00 
=00 
path00 
;00 
_serializer11 
=11 

serializer11 
;11 
_serializerHelper22 
=22 
new22 
SerializerHelper22 +
(22+ ,
_serializer22, 7
)227 8
;228 9#
_pathComparisonStrategy33 
=33 
caseInsensitivePath33 0
?331 2
StringComparison333 C
.33C D
OrdinalIgnoreCase33D U
:33V W
StringComparison33X h
.33h i
Ordinal33i p
;33p q
_service44 
=44 
new44 
ServiceDescription44 $
(44$ %
serviceType44% 0
)440 1
;441 2
_soapModelBounder55 
=55 
soapModelBounder55 '
;55' (
_binding66 
=66 
binding66 
;66 
_httpGetEnabled77 
=77 
httpGetEnabled77 #
;77# $
_httpsGetEnabled88 
=88 
httpsGetEnabled88 %
;88% &
_messageEncoders:: 
=:: 
new:: 
SoapMessageEncoder:: ,
[::, -
encoderOptions::- ;
.::; <
Length::< B
]::B C
;::C D
for<< 
(<< 
var<< 
i<< 
=<< 
$num<< 
;<< 
i<< 
<<< 
encoderOptions<< %
.<<% &
Length<<& ,
;<<, -
i<<. /
++<</ 1
)<<1 2
{== 
_messageEncoders>> 
[>> 
i>> 
]>> 
=>> 
new>> 
SoapMessageEncoder>> 0
(>>0 1
encoderOptions>>1 ?
[>>? @
i>>@ A
]>>A B
.>>B C
MessageVersion>>C Q
,>>Q R
encoderOptions>>S a
[>>a b
i>>b c
]>>c d
.>>d e
WriteEncoding>>e r
,>>r s
encoderOptions	>>t Ç
[
>>Ç É
i
>>É Ñ
]
>>Ñ Ö
.
>>Ö Ü
ReaderQuotas
>>Ü í
,
>>í ì
true
>>î ò
,
>>ò ô
true
>>ö û
)
>>û ü
;
>>ü †
}?? 
}@@ 
publicBB "
SoapEndpointMiddlewareBB	 
(BB  
ILoggerBB  '
<BB' ("
SoapEndpointMiddlewareBB( >
<BB> ?
	T_MESSAGEBB? H
>BBH I
>BBI J
loggerBBK Q
,BBQ R
RequestDelegateBBS b
nextBBc g
,BBg h
SoapOptionsBBi t
optionsBBu |
)BB| }
{CC 
_loggerDD 

=DD 
loggerDD 
;DD 
_nextEE 
=EE	 

nextEE 
;EE 
_optionsFF 
=FF 
optionsFF 
;FF 
_endpointPathGG 
=GG 
optionsGG 
.GG 
PathGG 
;GG  
_serializerHH 
=HH 
optionsHH 
.HH 
SoapSerializerHH '
;HH' (
_serializerHelperII 
=II 
newII 
SerializerHelperII +
(II+ ,
_serializerII, 7
)II7 8
;II8 9#
_pathComparisonStrategyJJ 
=JJ 
optionsJJ $
.JJ$ %
CaseInsensitivePathJJ% 8
?JJ9 :
StringComparisonJJ; K
.JJK L
OrdinalIgnoreCaseJJL ]
:JJ^ _
StringComparisonJJ` p
.JJp q
OrdinalJJq x
;JJx y
_serviceKK 
=KK 
newKK 
ServiceDescriptionKK $
(KK$ %
optionsKK% ,
.KK, -
ServiceTypeKK- 8
)KK8 9
;KK9 :
_soapModelBounderLL 
=LL 
optionsLL 
.LL 
SoapModelBounderLL /
;LL/ 0
_bindingMM 
=MM 
optionsMM 
.MM 
BindingMM 
;MM 
_httpGetEnabledNN 
=NN 
optionsNN 
.NN 
HttpGetEnabledNN +
;NN+ ,
_httpsGetEnabledOO 
=OO 
optionsOO 
.OO 
HttpsGetEnabledOO -
;OO- . 
_xmlNamespaceManagerPP 
=PP 
optionsPP !
.PP! "'
XmlNamespacePrefixOverridesPP" =
??PP> @

NamespacesPPA K
.PPK L,
 CreateDefaultXmlNamespaceManagerPPL l
(PPl m
)PPm n
;PPn o

NamespacesQQ 
.QQ  
AddDefaultNamespacesQQ "
(QQ" # 
_xmlNamespaceManagerQQ# 7
)QQ7 8
;QQ8 9
_messageEncodersSS 
=SS 
newSS 
SoapMessageEncoderSS ,
[SS, -
optionsSS- 4
.SS4 5
EncoderOptionsSS5 C
.SSC D
LengthSSD J
]SSJ K
;SSK L
forUU 
(UU 
varUU 
iUU 
=UU 
$numUU 
;UU 
iUU 
<UU 
optionsUU 
.UU 
EncoderOptionsUU -
.UU- .
LengthUU. 4
;UU4 5
iUU6 7
++UU7 9
)UU9 :
{VV 
_messageEncodersWW 
[WW 
iWW 
]WW 
=WW 
newWW 
SoapMessageEncoderWW 0
(WW0 1
optionsWW1 8
.WW8 9
EncoderOptionsWW9 G
[WWG H
iWWH I
]WWI J
.WWJ K
MessageVersionWWK Y
,WWY Z
optionsWW[ b
.WWb c
EncoderOptionsWWc q
[WWq r
iWWr s
]WWs t
.WWt u
WriteEncoding	WWu Ç
,
WWÇ É
options
WWÑ ã
.
WWã å
EncoderOptions
WWå ö
[
WWö õ
i
WWõ ú
]
WWú ù
.
WWù û
ReaderQuotas
WWû ™
,
WW™ ´
options
WW¨ ≥
.
WW≥ ¥ 
OmitXmlDeclaration
WW¥ ∆
,
WW∆ «
options
WW» œ
.
WWœ –
	IndentXml
WW– Ÿ
)
WWŸ ⁄
;
WW⁄ €
}XX 
}YY 
public[[ 
async[[	 
Task[[ 
Invoke[[ 
([[ 
HttpContext[[ &
httpContext[[' 2
,[[2 3
IServiceProvider[[4 D
serviceProvider[[E T
)[[T U
{\\ 
if]] 
(]] 
_options]] 
!=]] 
null]] 
)]] 
{^^ 
if__ 
(__ 
_options__ 
.__ 
BufferThreshold__  
>__! "
$num__# $
&&__% '
_options__( 0
.__0 1
BufferLimit__1 <
>__= >
$num__? @
)__@ A
{`` 
httpContextaa 
.aa 
Requestaa 
.aa 
EnableBufferingaa (
(aa( )
_optionsaa) 1
.aa1 2
BufferThresholdaa2 A
,aaA B
_optionsaaC K
.aaK L
BufferLimitaaL W
)aaW X
;aaX Y
}bb 
elsecc 
ifcc	 
(cc 
_optionscc 
.cc 
BufferThresholdcc %
>cc& '
$numcc( )
)cc) *
{dd 
httpContextee 
.ee 
Requestee 
.ee 
EnableBufferingee (
(ee( )
_optionsee) 1
.ee1 2
BufferThresholdee2 A
)eeA B
;eeB C
}ff 
elsegg 
{hh 
httpContextii 
.ii 
Requestii 
.ii 
EnableBufferingii (
(ii( )
)ii) *
;ii* +
}jj 
}kk 
elsell 
{mm 
httpContextnn 
.nn 
Requestnn 
.nn 
EnableBufferingnn '
(nn' (
)nn( )
;nn) *
}oo 
varqq 
trailPathTunerqq 
=qq 
serviceProviderqq '
.qq' (
GetServicesqq( 3
<qq3 4$
TrailingServicePathTunerqq4 L
>qqL M
(qqM N
)qqN O
.qqO P
FirstOrDefaultqqP ^
(qq^ _
)qq_ `
;qq` a
trailPathTunerss 
?ss 
.ss 
ConvertPathss 
(ss 
httpContextss *
)ss* +
;ss+ ,
ifuu 
(uu 
httpContextuu 
.uu 
Requestuu 
.uu 
Pathuu 
.uu  
Equalsuu  &
(uu& '
_endpointPathuu' 4
,uu4 5#
_pathComparisonStrategyuu6 M
)uuM N
)uuN O
{vv 
ifww 
(ww 
httpContextww 
.ww 
Requestww 
.ww 
Methodww "
?ww" #
.ww# $
ToLowerww$ +
(ww+ ,
)ww, -
==ww. 0
$strww1 6
)ww6 7
{xx 
ifzz 
(zz 	
(zz	 

httpContextzz
 
.zz 
Requestzz 
.zz 
IsHttpszz %
&&zz& (
!zz) *
_httpsGetEnabledzz* :
)zz: ;
||zz< >
(zz? @
!zz@ A
httpContextzzA L
.zzL M
RequestzzM T
.zzT U
IsHttpszzU \
&&zz] _
!zz` a
_httpGetEnabledzza p
)zzp q
)zzq r
{{{ 
httpContext|| 
.|| 
Response|| 
.|| 

StatusCode|| %
=||& '
(||( )
int||) ,
)||, -
HttpStatusCode||- ;
.||; <
	Forbidden||< E
;||E F
return}} 
;}} 
}~~ 
} 
try
ÅÅ 
{
ÇÇ 
_logger
ÉÉ 
.
ÉÉ 
LogDebug
ÉÉ 
(
ÉÉ 
$"
ÉÉ (
Received SOAP Request for 
ÉÉ 2
{
ÉÉ2 3
httpContext
ÉÉ3 >
.
ÉÉ> ?
Request
ÉÉ? F
.
ÉÉF G
Path
ÉÉG K
}
ÉÉK L
 (
ÉÉL N
{
ÉÉN O
httpContext
ÉÉO Z
.
ÉÉZ [
Request
ÉÉ[ b
.
ÉÉb c
ContentLength
ÉÉc p
??
ÉÉq s
$num
ÉÉt u
}
ÉÉu v
 bytes)
ÉÉv }
"
ÉÉ} ~
)
ÉÉ~ 
;ÉÉ Ä
if
ÖÖ 
(
ÖÖ 	
httpContext
ÖÖ	 
.
ÖÖ 
Request
ÖÖ 
.
ÖÖ 
Query
ÖÖ "
.
ÖÖ" #
ContainsKey
ÖÖ# .
(
ÖÖ. /
$str
ÖÖ/ 5
)
ÖÖ5 6
&&
ÖÖ7 9
httpContext
ÖÖ: E
.
ÖÖE F
Request
ÖÖF M
.
ÖÖM N
Method
ÖÖN T
?
ÖÖT U
.
ÖÖU V
ToLower
ÖÖV ]
(
ÖÖ] ^
)
ÖÖ^ _
==
ÖÖ` b
$str
ÖÖc h
)
ÖÖh i
{
ÜÜ 
if
áá 
(
áá	 

_options
áá
 
.
áá 
WsdlFileOptions
áá "
!=
áá# %
null
áá& *
)
áá* +
{
àà 
await
ââ !
ProcessMetaFromFile
ââ  
(
ââ  !
httpContext
ââ! ,
)
ââ, -
;
ââ- .
}
ää 
else
ãã 

{
åå 
await
çç 
ProcessMeta
çç 
(
çç 
httpContext
çç $
)
çç$ %
;
çç% &
}
éé 
}
èè 
else
êê 	
if
êê
 
(
êê 
httpContext
êê 
.
êê 
Request
êê !
.
êê! "
Query
êê" '
.
êê' (
ContainsKey
êê( 3
(
êê3 4
$str
êê4 9
)
êê9 :
&&
êê; =
httpContext
êê> I
.
êêI J
Request
êêJ Q
.
êêQ R
Method
êêR X
?
êêX Y
.
êêY Z
ToLower
êêZ a
(
êêa b
)
êêb c
==
êêd f
$str
êêg l
&&
êêm o
_options
êêp x
.
êêx y
WsdlFileOptionsêêy à
!=êêâ ã
nullêêå ê
)êêê ë
{
ëë 
await
íí 

ProcessXSD
íí 
(
íí 
httpContext
íí "
)
íí" #
;
íí# $
}
ìì 
else
îî 	
{
ïï 
await
ññ 
ProcessOperation
ññ 
(
ññ 
httpContext
ññ (
,
ññ( )
serviceProvider
ññ* 9
)
ññ9 :
;
ññ: ;
}
óó 
}
òò 
catch
ôô 	
(
ôô
 
	Exception
ôô 
ex
ôô 
)
ôô 
{
öö 
_logger
õõ 
.
õõ 
LogCritical
õõ 
(
õõ 
ex
õõ 
,
õõ 
$"
õõ S
EAn error occurred when trying to service a request on SOAP endpoint: 
õõ d
{
õõd e
httpContext
õõe p
.
õõp q
Request
õõq x
.
õõx y
Path
õõy }
}
õõ} ~
"
õõ~ 
)õõ Ä
;õõÄ Å
throw
üü 

;
üü
 
}
†† 
}
°° 
else
¢¢ 
{
££ 
await
§§ 	
_next
§§
 
(
§§ 
httpContext
§§ 
)
§§ 
;
§§ 
}
•• 
}
¶¶ 
private
©© 	
static
©©
 
Task
©© 
WriteMessageAsync
©© '
(
©©' ( 
SoapMessageEncoder
©©( :
messageEncoder
©©; I
,
©©I J
Message
©©K R
responseMessage
©©S b
,
©©b c
HttpContext
©©d o
httpContext
©©p {
)
©©{ |
{
™™ 
return
´´ 	
messageEncoder
´´
 
.
´´ 
WriteMessageAsync
´´ *
(
´´* +
responseMessage
´´+ :
,
´´: ;
httpContext
´´< G
.
´´G H
Response
´´H P
.
´´P Q
Body
´´Q U
)
´´U V
;
´´V W
}
¨¨ 
private
ÆÆ 	
static
ÆÆ
 
Task
ÆÆ 
<
ÆÆ 
Message
ÆÆ 
>
ÆÆ 
ReadMessageAsync
ÆÆ /
(
ÆÆ/ 0
HttpContext
ÆÆ0 ;
httpContext
ÆÆ< G
,
ÆÆG H 
SoapMessageEncoder
ÆÆI [
messageEncoder
ÆÆ\ j
)
ÆÆj k
{
ØØ 
return
∞∞ 	
messageEncoder
∞∞
 
.
∞∞ 
ReadMessageAsync
∞∞ )
(
∞∞) *
httpContext
∞∞* 5
.
∞∞5 6
Request
∞∞6 =
.
∞∞= >
Body
∞∞> B
,
∞∞B C
$num
∞∞D K
,
∞∞K L
httpContext
∞∞M X
.
∞∞X Y
Request
∞∞Y `
.
∞∞` a
ContentType
∞∞a l
)
∞∞l m
;
∞∞m n
}
±± 
private
¡¡ 	
async
¡¡
 
Task
¡¡ 
ProcessMeta
¡¡  
(
¡¡  !
HttpContext
¡¡! ,
httpContext
¡¡- 8
)
¡¡8 9
{
¬¬ 
var
√√ 
baseUrl
√√ 
=
√√ 
httpContext
√√ 
.
√√ 
Request
√√ $
.
√√$ %
Scheme
√√% +
+
√√, -
$str
√√. 3
+
√√4 5
httpContext
√√6 A
.
√√A B
Request
√√B I
.
√√I J
Host
√√J N
+
√√O P
httpContext
√√Q \
.
√√\ ]
Request
√√] d
.
√√d e
PathBase
√√e m
+
√√n o
httpContext
√√p {
.
√√{ |
Request√√| É
.√√É Ñ
Path√√Ñ à
;√√à â
var
ƒƒ 

bodyWriter
ƒƒ 
=
ƒƒ 
_serializer
ƒƒ 
==
ƒƒ  "
SoapSerializer
ƒƒ# 1
.
ƒƒ1 2
XmlSerializer
ƒƒ2 ?
?
ƒƒ@ A
new
ƒƒB E
MetaBodyWriter
ƒƒF T
(
ƒƒT U
_service
ƒƒU ]
,
ƒƒ] ^
baseUrl
ƒƒ_ f
,
ƒƒf g
_binding
ƒƒh p
,
ƒƒp q#
_xmlNamespaceManagerƒƒr Ü
)ƒƒÜ á
:ƒƒà â
(ƒƒä ã

BodyWriterƒƒã ï
)ƒƒï ñ
newƒƒñ ô!
MetaWCFBodyWriterƒƒö ´
(ƒƒ´ ¨
_serviceƒƒ¨ ¥
,ƒƒ¥ µ
baseUrlƒƒ∂ Ω
,ƒƒΩ æ
_bindingƒƒø «
)ƒƒ« »
;ƒƒ» …
var
≈≈ 
responseMessage
≈≈ 
=
≈≈ 
Message
≈≈  
.
≈≈  !
CreateMessage
≈≈! .
(
≈≈. /
_messageEncoders
≈≈/ ?
[
≈≈? @
$num
≈≈@ A
]
≈≈A B
.
≈≈B C
MessageVersion
≈≈C Q
,
≈≈Q R
null
≈≈S W
,
≈≈W X

bodyWriter
≈≈Y c
)
≈≈c d
;
≈≈d e
responseMessage
∆∆ 
=
∆∆ 
new
∆∆ 
MetaMessage
∆∆ $
(
∆∆$ %
responseMessage
∆∆% 4
,
∆∆4 5
_service
∆∆6 >
,
∆∆> ?
_binding
∆∆@ H
,
∆∆H I"
_xmlNamespaceManager
∆∆J ^
)
∆∆^ _
;
∆∆_ `
httpContext
…… 
.
…… 
Response
…… 
.
…… 
ContentType
…… #
=
……$ %
$str
……& >
;
……> ?
await
ÀÀ 
WriteMessageAsync
ÀÀ	 
(
ÀÀ 
_messageEncoders
ÀÀ +
[
ÀÀ+ ,
$num
ÀÀ, -
]
ÀÀ- .
,
ÀÀ. /
responseMessage
ÀÀ0 ?
,
ÀÀ? @
httpContext
ÀÀA L
)
ÀÀL M
;
ÀÀM N
}
ÃÃ 
private
ŒŒ 	
async
ŒŒ
 
Task
ŒŒ 
ProcessOperation
ŒŒ %
(
ŒŒ% &
HttpContext
ŒŒ& 1
httpContext
ŒŒ2 =
,
ŒŒ= >
IServiceProvider
ŒŒ? O
serviceProvider
ŒŒP _
)
ŒŒ_ `
{
œœ 
Message
–– 

responseMessage
–– 
;
–– 
var
”” 
memoryStream
”” 
=
”” 
new
”” 
MemoryStream
”” &
(
””& '
(
””' (
int
””( +
)
””+ ,
httpContext
””, 7
.
””7 8
Request
””8 ?
.
””? @
ContentLength
””@ M
.
””M N
GetValueOrDefault
””N _
(
””_ `
$num
””` d
)
””d e
)
””e f
;
””f g
await
‘‘ 
httpContext
‘‘	 
.
‘‘ 
Request
‘‘ 
.
‘‘ 
Body
‘‘ !
.
‘‘! "
CopyToAsync
‘‘" -
(
‘‘- .
memoryStream
‘‘. :
)
‘‘: ;
.
‘‘; <
ConfigureAwait
‘‘< J
(
‘‘J K
false
‘‘K P
)
‘‘P Q
;
‘‘Q R
memoryStream
’’ 
.
’’ 
Seek
’’ 
(
’’ 
$num
’’ 
,
’’ 

SeekOrigin
’’ "
.
’’" #
Begin
’’# (
)
’’( )
;
’’) *
httpContext
÷÷ 
.
÷÷ 
Request
÷÷ 
.
÷÷ 
Body
÷÷ 
=
÷÷ 
memoryStream
÷÷ *
;
÷÷* +
if
ŸŸ 
(
ŸŸ 
httpContext
ŸŸ 
.
ŸŸ 
Request
ŸŸ 
.
ŸŸ 
Body
ŸŸ 
.
ŸŸ  
Length
ŸŸ  &
==
ŸŸ' )
$num
ŸŸ* +
&&
ŸŸ, .
httpContext
ŸŸ/ :
.
ŸŸ: ;
Request
ŸŸ; B
.
ŸŸB C
Method
ŸŸC I
?
ŸŸI J
.
ŸŸJ K
ToLower
ŸŸK R
(
ŸŸR S
)
ŸŸS T
==
ŸŸU W
$str
ŸŸX ]
)
ŸŸ] ^
{
⁄⁄ 
if
€€ 
(
€€ 
_options
€€ 
.
€€ 
WsdlFileOptions
€€  
!=
€€! #
null
€€$ (
)
€€( )
{
‹‹ 
await
›› 
!
ProcessMetaFromFile
›› 
(
›› 
httpContext
›› *
)
››* +
;
››+ ,
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
await
·· 

ProcessMeta
·· 
(
·· 
httpContext
·· "
)
··" #
;
··# $
}
‚‚ 
return
‰‰ 

;
‰‰
 
}
ÂÂ 
var
ËË 
messageEncoder
ËË 
=
ËË 
_messageEncoders
ËË (
[
ËË( )
$num
ËË) *
]
ËË* +
;
ËË+ ,
foreach
ÍÍ 

(
ÍÍ 
var
ÍÍ 
encoder
ÍÍ 
in
ÍÍ 
_messageEncoders
ÍÍ +
)
ÍÍ+ ,
{
ÎÎ 
if
ÏÏ 
(
ÏÏ 
encoder
ÏÏ 
.
ÏÏ $
IsContentTypeSupported
ÏÏ &
(
ÏÏ& '
httpContext
ÏÏ' 2
.
ÏÏ2 3
Request
ÏÏ3 :
.
ÏÏ: ;
ContentType
ÏÏ; F
)
ÏÏF G
)
ÏÏG H
{
ÌÌ 
messageEncoder
ÓÓ 
=
ÓÓ 
encoder
ÓÓ 
;
ÓÓ 
break
ÔÔ 

;
ÔÔ
 
}
 
}
ÒÒ 
Message
ÛÛ 

requestMessage
ÛÛ 
;
ÛÛ 
try
ˆˆ 
{
˜˜ 
requestMessage
¯¯ 
=
¯¯ 
await
¯¯ 
ReadMessageAsync
¯¯ +
(
¯¯+ ,
httpContext
¯¯, 7
,
¯¯7 8
messageEncoder
¯¯9 G
)
¯¯G H
;
¯¯H I
}
˘˘ 
catch
˙˙ 
(
˙˙	 

	Exception
˙˙
 
ex
˙˙ 
)
˙˙ 
{
˚˚ 
await
¸¸ 	'
WriteErrorResponseMessage
¸¸
 #
(
¸¸# $
ex
¸¸$ &
,
¸¸& '
StatusCodes
¸¸( 3
.
¸¸3 4*
Status500InternalServerError
¸¸4 P
,
¸¸P Q
serviceProvider
¸¸R a
,
¸¸a b
null
¸¸c g
,
¸¸g h
messageEncoder
¸¸i w
,
¸¸w x
httpContext¸¸y Ñ
)¸¸Ñ Ö
;¸¸Ö Ü
return
˝˝ 

;
˝˝
 
}
˛˛ 
var
ÄÄ 
messageFilters
ÄÄ 
=
ÄÄ 
serviceProvider
ÄÄ '
.
ÄÄ' (
GetServices
ÄÄ( 3
<
ÄÄ3 4
IMessageFilter
ÄÄ4 B
>
ÄÄB C
(
ÄÄC D
)
ÄÄD E
.
ÄÄE F
ToArray
ÄÄF M
(
ÄÄM N
)
ÄÄN O
;
ÄÄO P
var
ÅÅ !
asyncMessageFilters
ÅÅ 
=
ÅÅ 
serviceProvider
ÅÅ ,
.
ÅÅ, -
GetServices
ÅÅ- 8
<
ÅÅ8 9!
IAsyncMessageFilter
ÅÅ9 L
>
ÅÅL M
(
ÅÅM N
)
ÅÅN O
.
ÅÅO P
ToArray
ÅÅP W
(
ÅÅW X
)
ÅÅX Y
;
ÅÅY Z
try
ÑÑ 
{
ÖÖ 
foreach
ÜÜ 
(
ÜÜ 
var
ÜÜ 
messageFilter
ÜÜ 
in
ÜÜ !
messageFilters
ÜÜ" 0
)
ÜÜ0 1
{
áá 
messageFilter
àà 
.
àà  
OnRequestExecuting
àà %
(
àà% &
requestMessage
àà& 4
)
àà4 5
;
àà5 6
}
ââ 
foreach
ãã 
(
ãã 
var
ãã 
messageFilter
ãã 
in
ãã !!
asyncMessageFilters
ãã" 5
)
ãã5 6
{
åå 
await
çç 

messageFilter
çç 
.
çç  
OnRequestExecuting
çç +
(
çç+ ,
requestMessage
çç, :
)
çç: ;
;
çç; <
}
éé 
}
èè 
catch
êê 
(
êê	 

	Exception
êê
 
ex
êê 
)
êê 
{
ëë 
await
íí 	'
WriteErrorResponseMessage
íí
 #
(
íí# $
ex
íí$ &
,
íí& '
StatusCodes
íí( 3
.
íí3 4*
Status500InternalServerError
íí4 P
,
ííP Q
serviceProvider
ííR a
,
íía b
requestMessage
ííc q
,
ííq r
messageEncoderíís Å
,ííÅ Ç
httpContextííÉ é
)ííé è
;ííè ê
return
ìì 

;
ìì
 
}
îî 
var
ññ 
messageInspector
ññ 
=
ññ 
serviceProvider
ññ )
.
ññ) *

GetService
ññ* 4
<
ññ4 5
IMessageInspector
ññ5 F
>
ññF G
(
ññG H
)
ññH I
;
ññI J
object
óó 	
correlationObject
óó
 
;
óó 
try
ôô 
{
öö 
correlationObject
õõ 
=
õõ 
messageInspector
õõ (
?
õõ( )
.
õõ) *!
AfterReceiveRequest
õõ* =
(
õõ= >
ref
õõ> A
requestMessage
õõB P
)
õõP Q
;
õõQ R
}
úú 
catch
ùù 
(
ùù	 

	Exception
ùù
 
ex
ùù 
)
ùù 
{
ûû 
await
üü 	'
WriteErrorResponseMessage
üü
 #
(
üü# $
ex
üü$ &
,
üü& '
StatusCodes
üü( 3
.
üü3 4*
Status500InternalServerError
üü4 P
,
üüP Q
serviceProvider
üüR a
,
üüa b
requestMessage
üüc q
,
üüq r
messageEncoderüüs Å
,üüÅ Ç
httpContextüüÉ é
)üüé è
;üüè ê
return
†† 

;
††
 
}
°° 
var
££  
messageInspector2s
££ 
=
££ 
serviceProvider
££ +
.
££+ ,
GetServices
££, 7
<
££7 8 
IMessageInspector2
££8 J
>
££J K
(
££K L
)
££L M
;
££M N
var
§§ !
correlationObjects2
§§ 
=
§§ 
default
§§ $
(
§§$ %
List
§§% )
<
§§) *
(
§§* + 
IMessageInspector2
§§+ =
	inspector
§§> G
,
§§G H
object
§§I O
correlationObject
§§P a
)
§§a b
>
§§b c
)
§§c d
;
§§d e
try
¶¶ 
{
ßß !
correlationObjects2
®® 
=
®®  
messageInspector2s
®® ,
.
®®, -
Select
®®- 3
(
®®3 4
mi
®®4 6
=>
®®7 9
(
®®: ;
	inspector
®®; D
:
®®D E
mi
®®F H
,
®®H I
correlationObject
®®J [
:
®®[ \
mi
®®] _
.
®®_ `!
AfterReceiveRequest
®®` s
(
®®s t
ref
®®t w
requestMessage®®x Ü
,®®Ü á
_service®®à ê
)®®ê ë
)®®ë í
)®®í ì
.®®ì î
ToList®®î ö
(®®ö õ
)®®õ ú
;®®ú ù
}
©© 
catch
™™ 
(
™™	 

	Exception
™™
 
ex
™™ 
)
™™ 
{
´´ 
await
¨¨ 	'
WriteErrorResponseMessage
¨¨
 #
(
¨¨# $
ex
¨¨$ &
,
¨¨& '
StatusCodes
¨¨( 3
.
¨¨3 4*
Status500InternalServerError
¨¨4 P
,
¨¨P Q
serviceProvider
¨¨R a
,
¨¨a b
requestMessage
¨¨c q
,
¨¨q r
messageEncoder¨¨s Å
,¨¨Å Ç
httpContext¨¨É é
)¨¨é è
;¨¨è ê
return
≠≠ 

;
≠≠
 
}
ÆÆ !
XmlDictionaryReader
≤≤ 
reader
≤≤ 
=
≤≤ 
null
≤≤  $
;
≤≤$ %
if
≥≥ 
(
≥≥ 
!
≥≥ 
requestMessage
≥≥ 
.
≥≥ 
IsEmpty
≥≥ 
)
≥≥ 
{
¥¥ 
reader
µµ 

=
µµ 
requestMessage
µµ 
.
µµ %
GetReaderAtBodyContents
µµ 3
(
µµ3 4
)
µµ4 5
;
µµ5 6
}
∂∂ 
try
∏∏ 
{
ππ 
var
∫∫ 

soapAction
∫∫ 
=
∫∫ 
HeadersHelper
∫∫ "
.
∫∫" #
GetSoapAction
∫∫# 0
(
∫∫0 1
httpContext
∫∫1 <
,
∫∫< =
reader
∫∫> D
)
∫∫D E
;
∫∫E F
requestMessage
ªª 
.
ªª 
Headers
ªª 
.
ªª 
Action
ªª !
=
ªª" #

soapAction
ªª$ .
;
ªª. /
var
ºº 
	operation
ºº 
=
ºº 
_service
ºº 
.
ºº 

Operations
ºº '
.
ºº' (
FirstOrDefault
ºº( 6
(
ºº6 7
o
ºº7 8
=>
ºº9 ;
o
ºº< =
.
ºº= >

SoapAction
ºº> H
.
ººH I
Equals
ººI O
(
ººO P

soapAction
ººP Z
,
ººZ [
StringComparison
ºº\ l
.
ººl m
Ordinal
ººm t
)
ººt u
||
ººv x
o
ººy z
.
ººz {
Name
ºº{ 
.ºº Ä
EqualsººÄ Ü
(ººÜ á
HeadersHelperººá î
.ººî ï$
GetTrimmedSoapActionººï ©
(ºº© ™

soapActionºº™ ¥
)ºº¥ µ
,ººµ ∂ 
StringComparisonºº∑ «
.ºº« »
Ordinalºº» œ
)ººœ –
)ºº– —
;ºº— “
if
ΩΩ 
(
ΩΩ 
	operation
ΩΩ 
==
ΩΩ 
null
ΩΩ 
)
ΩΩ 
{
ææ 
var
øø 
ex
øø	 
=
øø 
new
øø '
InvalidOperationException
øø +
(
øø+ ,
$"
øø, .7
)No operation found for specified action: 
øø. W
{
øøW X
requestMessage
øøX f
.
øøf g
Headers
øøg n
.
øøn o
Action
øøo u
}
øøu v
"
øøv w
)
øøw x
;
øøx y
await
¿¿ 
'
WriteErrorResponseMessage
¿¿ $
(
¿¿$ %
ex
¿¿% '
,
¿¿' (
StatusCodes
¿¿) 4
.
¿¿4 5*
Status500InternalServerError
¿¿5 Q
,
¿¿Q R
serviceProvider
¿¿S b
,
¿¿b c
requestMessage
¿¿d r
,
¿¿r s
messageEncoder¿¿t Ç
,¿¿Ç É
httpContext¿¿Ñ è
)¿¿è ê
;¿¿ê ë
return
¡¡ 
;
¡¡ 
}
¬¬ 
_logger
ƒƒ 
.
ƒƒ 
LogInformation
ƒƒ 
(
ƒƒ 
$"
ƒƒ $
Request for operation 
ƒƒ 3
{
ƒƒ3 4
	operation
ƒƒ4 =
.
ƒƒ= >
Contract
ƒƒ> F
.
ƒƒF G
Name
ƒƒG K
}
ƒƒK L
.
ƒƒL M
{
ƒƒM N
	operation
ƒƒN W
.
ƒƒW X
Name
ƒƒX \
}
ƒƒ\ ]
	 received
ƒƒ] f
"
ƒƒf g
)
ƒƒg h
;
ƒƒh i
try
∆∆ 
{
«« 
var
…… 
serviceInstance
……	 
=
…… 
serviceProvider
…… *
.
……* + 
GetRequiredService
……+ =
(
……= >
_service
……> F
.
……F G
ServiceType
……G R
)
……R S
;
……S T)
SetMessageHeadersToProperty
ÀÀ  
(
ÀÀ  !
requestMessage
ÀÀ! /
,
ÀÀ/ 0
serviceInstance
ÀÀ1 @
)
ÀÀ@ A
;
ÀÀA B
var
ŒŒ 
	arguments
ŒŒ	 
=
ŒŒ !
GetRequestArguments
ŒŒ (
(
ŒŒ( )
requestMessage
ŒŒ) 7
,
ŒŒ7 8
reader
ŒŒ9 ?
,
ŒŒ? @
	operation
ŒŒA J
,
ŒŒJ K
httpContext
ŒŒL W
)
ŒŒW X
;
ŒŒX Y#
ExecuteFiltersAndTune
–– 
(
–– 
httpContext
–– &
,
––& '
serviceProvider
––( 7
,
––7 8
	operation
––9 B
,
––B C
	arguments
––D M
,
––M N
serviceInstance
––O ^
)
––^ _
;
––_ `
var
““ 
invoker
““	 
=
““ 
serviceProvider
““ "
.
““" #

GetService
““# -
<
““- .
IOperationInvoker
““. ?
>
““? @
(
““@ A
)
““A B
??
““C E
new
““F I%
DefaultOperationInvoker
““J a
(
““a b
)
““b c
;
““c d
var
”” 
responseObject
””	 
=
”” 
await
”” 
invoker
””  '
.
””' (
InvokeAsync
””( 3
(
””3 4
	operation
””4 =
.
””= >
DispatchMethod
””> L
,
””L M
serviceInstance
””N ]
,
””] ^
	arguments
””_ h
)
””h i
;
””i j
if
’’ 
(
’’ 	
	operation
’’	 
.
’’ 
IsOneWay
’’ 
)
’’ 
{
÷÷ 
httpContext
◊◊ 
.
◊◊ 
Response
◊◊ 
.
◊◊ 

StatusCode
◊◊ %
=
◊◊& '
(
◊◊( )
int
◊◊) ,
)
◊◊, -
HttpStatusCode
◊◊- ;
.
◊◊; <
Accepted
◊◊< D
;
◊◊D E
return
ÿÿ 
;
ÿÿ 
}
ŸŸ 
var
€€ !
resultOutDictionary
€€	 
=
€€ 
new
€€ "

Dictionary
€€# -
<
€€- .
string
€€. 4
,
€€4 5
object
€€6 <
>
€€< =
(
€€= >
)
€€> ?
;
€€? @
foreach
‹‹ 
(
‹‹ 
var
‹‹ 
parameterInfo
‹‹ 
in
‹‹  "
	operation
‹‹# ,
.
‹‹, -
OutParameters
‹‹- :
)
‹‹: ;
{
›› !
resultOutDictionary
ﬁﬁ 
[
ﬁﬁ 
parameterInfo
ﬁﬁ '
.
ﬁﬁ' (
Name
ﬁﬁ( ,
]
ﬁﬁ, -
=
ﬁﬁ. /
	arguments
ﬁﬁ0 9
[
ﬁﬁ9 :
parameterInfo
ﬁﬁ: G
.
ﬁﬁG H
Index
ﬁﬁH M
]
ﬁﬁM N
;
ﬁﬁN O
}
ﬂﬂ 
responseMessage
·· 
=
·· #
CreateResponseMessage
·· ,
(
··, -
	operation
‚‚ 
,
‚‚ 
responseObject
‚‚ 
,
‚‚  !
resultOutDictionary
‚‚! 4
,
‚‚4 5

soapAction
‚‚6 @
,
‚‚@ A
requestMessage
‚‚B P
,
‚‚P Q
messageEncoder
‚‚R `
)
‚‚` a
;
‚‚a b
httpContext
‰‰ 
.
‰‰ 
Response
‰‰ 
.
‰‰ 
ContentType
‰‰ %
=
‰‰& '
httpContext
‰‰( 3
.
‰‰3 4
Request
‰‰4 ;
.
‰‰; <
ContentType
‰‰< G
;
‰‰G H
httpContext
ÂÂ 
.
ÂÂ 
Response
ÂÂ 
.
ÂÂ 
Headers
ÂÂ !
[
ÂÂ! "
$str
ÂÂ" .
]
ÂÂ. /
=
ÂÂ0 1
responseMessage
ÂÂ2 A
.
ÂÂA B
Headers
ÂÂB I
.
ÂÂI J
Action
ÂÂJ P
;
ÂÂP Q!
correlationObjects2
ÁÁ 
.
ÁÁ 
ForEach
ÁÁ  
(
ÁÁ  !
mi
ÁÁ! #
=>
ÁÁ$ &
mi
ÁÁ' )
.
ÁÁ) *
	inspector
ÁÁ* 3
.
ÁÁ3 4
BeforeSendReply
ÁÁ4 C
(
ÁÁC D
ref
ÁÁD G
responseMessage
ÁÁH W
,
ÁÁW X
_service
ÁÁY a
,
ÁÁa b
mi
ÁÁc e
.
ÁÁe f
correlationObject
ÁÁf w
)
ÁÁw x
)
ÁÁx y
;
ÁÁy z
messageInspector
ÈÈ 
?
ÈÈ 
.
ÈÈ 
BeforeSendReply
ÈÈ &
(
ÈÈ& '
ref
ÈÈ' *
responseMessage
ÈÈ+ :
,
ÈÈ: ;
correlationObject
ÈÈ< M
)
ÈÈM N
;
ÈÈN O
SetHttpResponse
ÎÎ 
(
ÎÎ 
httpContext
ÎÎ  
,
ÎÎ  !
responseMessage
ÎÎ" 1
)
ÎÎ1 2
;
ÎÎ2 3
await
ÌÌ 

WriteMessageAsync
ÌÌ 
(
ÌÌ 
messageEncoder
ÌÌ +
,
ÌÌ+ ,
responseMessage
ÌÌ- <
,
ÌÌ< =
httpContext
ÌÌ> I
)
ÌÌI J
;
ÌÌJ K
}
ÓÓ 
catch
ÔÔ 	
(
ÔÔ
 
	Exception
ÔÔ 
	exception
ÔÔ 
)
ÔÔ 
{
 
if
ÒÒ 
(
ÒÒ 	
	exception
ÒÒ	 
is
ÒÒ '
TargetInvocationException
ÒÒ /'
targetInvocationException
ÒÒ0 I
)
ÒÒI J
{
ÚÚ 
	exception
ÛÛ 
=
ÛÛ '
targetInvocationException
ÛÛ +
.
ÛÛ+ ,
InnerException
ÛÛ, :
;
ÛÛ: ;
}
ÙÙ 
_logger
ˆˆ 
.
ˆˆ 
LogError
ˆˆ 
(
ˆˆ 
$num
ˆˆ 
,
ˆˆ 
	exception
ˆˆ "
,
ˆˆ" #
	exception
ˆˆ$ -
?
ˆˆ- .
.
ˆˆ. /
Message
ˆˆ/ 6
)
ˆˆ6 7
;
ˆˆ7 8
responseMessage
˜˜ 
=
˜˜ 
await
˜˜ '
WriteErrorResponseMessage
˜˜ 6
(
˜˜6 7
	exception
˜˜7 @
,
˜˜@ A
StatusCodes
˜˜B M
.
˜˜M N*
Status500InternalServerError
˜˜N j
,
˜˜j k
serviceProvider
˜˜l {
,
˜˜{ |
requestMessage˜˜} ã
,˜˜ã å
messageEncoder˜˜ç õ
,˜˜õ ú
httpContext˜˜ù ®
)˜˜® ©
;˜˜© ™
}
¯¯ 
}
˘˘ 
finally
˙˙ 

{
˚˚ 
reader
¸¸ 

?
¸¸
 
.
¸¸ 
Dispose
¸¸ 
(
¸¸ 
)
¸¸ 
;
¸¸ 
}
˝˝ 
try
ÄÄ 
{
ÅÅ 
foreach
ÇÇ 
(
ÇÇ 
var
ÇÇ 
messageFilter
ÇÇ 
in
ÇÇ !
messageFilters
ÇÇ" 0
)
ÇÇ0 1
{
ÉÉ 
messageFilter
ÑÑ 
.
ÑÑ !
OnResponseExecuting
ÑÑ &
(
ÑÑ& '
responseMessage
ÑÑ' 6
)
ÑÑ6 7
;
ÑÑ7 8
}
ÖÖ 
foreach
áá 
(
áá 
var
áá 
messageFilter
áá 
in
áá !!
asyncMessageFilters
áá" 5
.
áá5 6
Reverse
áá6 =
(
áá= >
)
áá> ?
)
áá? @
{
àà 
await
ââ 

messageFilter
ââ 
.
ââ !
OnResponseExecuting
ââ ,
(
ââ, -
responseMessage
ââ- <
)
ââ< =
;
ââ= >
}
ää 
}
ãã 
catch
åå 
(
åå	 

	Exception
åå
 
ex
åå 
)
åå 
{
çç 
responseMessage
éé 
=
éé 
await
éé '
WriteErrorResponseMessage
éé 5
(
éé5 6
ex
éé6 8
,
éé8 9
StatusCodes
éé: E
.
ééE F*
Status500InternalServerError
ééF b
,
ééb c
serviceProvider
ééd s
,
éés t
requestMessageééu É
,ééÉ Ñ
messageEncoderééÖ ì
,ééì î
httpContextééï †
)éé† °
;éé° ¢
}
èè 
}
êê 
private
íí 	
Message
íí
 #
CreateResponseMessage
íí '
(
íí' ("
OperationDescription
ìì 
	operation
ìì !
,
ìì! "
object
îî 	
responseObject
îî
 
,
îî 

Dictionary
ïï 
<
ïï 
string
ïï 
,
ïï 
object
ïï 
>
ïï !
resultOutDictionary
ïï 1
,
ïï1 2
string
ññ 	

soapAction
ññ
 
,
ññ 
Message
óó 

requestMessage
óó 
,
óó  
SoapMessageEncoder
òò  
soapMessageEncoder
òò (
)
òò( )
{
ôô 
Message
öö 

responseMessage
öö 
;
öö 
var
ùù 

bodyWriter
ùù 
=
ùù 
new
ùù 
ServiceBodyWriter
ùù )
(
ùù) *
_serializer
ùù* 5
,
ùù5 6
	operation
ùù7 @
,
ùù@ A
responseObject
ùùB P
,
ùùP Q!
resultOutDictionary
ùùR e
)
ùùe f
;
ùùf g
if
üü 
(
üü  
soapMessageEncoder
üü 
.
üü 
MessageVersion
üü (
.
üü( )

Addressing
üü) 3
==
üü4 6
AddressingVersion
üü7 H
.
üüH I
WSAddressing10
üüI W
)
üüW X
{
†† 
responseMessage
°° 
=
°° 
Message
°° 
.
°° 
CreateMessage
°° +
(
°°+ , 
soapMessageEncoder
°°, >
.
°°> ?
MessageVersion
°°? M
,
°°M N

soapAction
°°O Y
,
°°Y Z

bodyWriter
°°[ e
)
°°e f
;
°°f g
	T_MESSAGE
¢¢ 
customMessage
¢¢ 
=
¢¢ 
new
¢¢ !
	T_MESSAGE
¢¢" +
{
££ 
Message
§§ 
=
§§ 
responseMessage
§§ 
,
§§ 
NamespaceManager
•• 
=
•• "
_xmlNamespaceManager
•• ,
}
¶¶ 
;
¶¶ 
responseMessage
ßß 
=
ßß 
customMessage
ßß #
;
ßß# $
responseMessage
®® 
.
®® 
Headers
®® 
.
®® 
Action
®® "
=
®®# $
	operation
®®% .
.
®®. /
ReplyAction
®®/ :
;
®®: ;
responseMessage
©© 
.
©© 
Headers
©© 
.
©© 
	RelatesTo
©© %
=
©©& '
requestMessage
©©( 6
.
©©6 7
Headers
©©7 >
.
©©> ?
	MessageId
©©? H
;
©©H I
responseMessage
™™ 
.
™™ 
Headers
™™ 
.
™™ 
To
™™ 
=
™™  
requestMessage
™™! /
.
™™/ 0
Headers
™™0 7
.
™™7 8
ReplyTo
™™8 ?
?
™™? @
.
™™@ A
Uri
™™A D
;
™™D E
}
´´ 
else
¨¨ 
{
≠≠ 
responseMessage
ÆÆ 
=
ÆÆ 
Message
ÆÆ 
.
ÆÆ 
CreateMessage
ÆÆ +
(
ÆÆ+ , 
soapMessageEncoder
ÆÆ, >
.
ÆÆ> ?
MessageVersion
ÆÆ? M
,
ÆÆM N
null
ÆÆO S
,
ÆÆS T

bodyWriter
ÆÆU _
)
ÆÆ_ `
;
ÆÆ` a
	T_MESSAGE
ØØ 
customMessage
ØØ 
=
ØØ 
new
ØØ !
	T_MESSAGE
ØØ" +
{
∞∞ 
Message
±± 
=
±± 
responseMessage
±± 
,
±± 
NamespaceManager
≤≤ 
=
≤≤ "
_xmlNamespaceManager
≤≤ ,
}
≥≥ 
;
≥≥ 
responseMessage
¥¥ 
=
¥¥ 
customMessage
¥¥ #
;
¥¥# $
}
µµ 
if
∑∑ 
(
∑∑ 
responseObject
∑∑ 
!=
∑∑ 
null
∑∑ 
)
∑∑ 
{
∏∏ 
var
ππ "
messageHeaderMembers
ππ 
=
ππ 
responseObject
ππ -
.
ππ- .
GetType
ππ. 5
(
ππ5 6
)
ππ6 7
.
ππ7 8%
GetMembersWithAttribute
ππ8 O
<
ππO P$
MessageHeaderAttribute
ππP f
>
ππf g
(
ππg h
)
ππh i
;
ππi j
foreach
∫∫ 
(
∫∫ 
var
∫∫ !
messageHeaderMember
∫∫ $
in
∫∫% '"
messageHeaderMembers
∫∫( <
)
∫∫< =
{
ªª 
var
ºº $
messageHeaderAttribute
ºº	 
=
ºº  !!
messageHeaderMember
ºº" 5
.
ºº5 6 
GetCustomAttribute
ºº6 H
<
ººH I$
MessageHeaderAttribute
ººI _
>
ºº_ `
(
ºº` a
)
ººa b
;
ººb c
if
¿¿ 
(
¿¿ 	$
messageHeaderAttribute
¿¿	 
.
¿¿  
	Namespace
¿¿  )
==
¿¿* ,
null
¿¿- 1
)
¿¿1 2
{
¡¡ 
responseMessage
¬¬ 
.
¬¬ 
Headers
¬¬ 
.
¬¬ 
Add
¬¬ !
(
¬¬! "
MessageHeader
¬¬" /
.
¬¬/ 0
CreateHeader
¬¬0 <
(
¬¬< =$
messageHeaderAttribute
¬¬= S
.
¬¬S T
Name
¬¬T X
??
¬¬Y [!
messageHeaderMember
¬¬\ o
.
¬¬o p
Name
¬¬p t
,
¬¬t u
	operation
¬¬v 
.¬¬ Ä
Contract¬¬Ä à
.¬¬à â
	Namespace¬¬â í
,¬¬í ì#
messageHeaderMember¬¬î ß
.¬¬ß ®'
GetPropertyOrFieldValue¬¬® ø
(¬¬ø ¿
responseObject¬¬¿ Œ
)¬¬Œ œ
)¬¬œ –
)¬¬– —
;¬¬— “
}
√√ 
else
∆∆ 	
{
«« 
responseMessage
»» 
.
»» 
Headers
»» 
.
»» 
Add
»» !
(
»»! "
MessageHeader
»»" /
.
»»/ 0
CreateHeader
»»0 <
(
»»< =$
messageHeaderAttribute
»»= S
.
»»S T
Name
»»T X
??
»»Y [!
messageHeaderMember
»»\ o
.
»»o p
Name
»»p t
,
»»t u%
messageHeaderAttribute»»v å
.»»å ç
	Namespace»»ç ñ
,»»ñ ó#
messageHeaderMember»»ò ´
.»»´ ¨'
GetPropertyOrFieldValue»»¨ √
(»»√ ƒ
responseObject»»ƒ “
)»»“ ”
)»»” ‘
)»»‘ ’
;»»’ ÷
}
…… 
}
   
}
ÀÀ 
return
ÕÕ 	
responseMessage
ÕÕ
 
;
ÕÕ 
}
ŒŒ 
private
–– 	
void
––
 #
ExecuteFiltersAndTune
–– $
(
––$ %
HttpContext
––% 0
httpContext
––1 <
,
––< =
IServiceProvider
––> N
serviceProvider
––O ^
,
––^ _"
OperationDescription
––` t
	operation
––u ~
,
––~ 
object––Ä Ü
[––Ü á
]––á à
	arguments––â í
,––í ì
object––î ö
serviceInstance––õ ™
)––™ ´
{
—— 
object
”” 	 
modelBindingOutput
””
 
=
”” 
null
”” #
;
””# $
foreach
‘‘ 

(
‘‘ 
var
‘‘  
modelBindingFilter
‘‘ "
in
‘‘# %
serviceProvider
‘‘& 5
.
‘‘5 6
GetServices
‘‘6 A
<
‘‘A B!
IModelBindingFilter
‘‘B U
>
‘‘U V
(
‘‘V W
)
‘‘W X
)
‘‘X Y
{
’’ 
foreach
÷÷ 
(
÷÷ 
var
÷÷ 
	modelType
÷÷ 
in
÷÷  
modelBindingFilter
÷÷ 0
.
÷÷0 1

ModelTypes
÷÷1 ;
)
÷÷; <
{
◊◊ 
foreach
ÿÿ 
(
ÿÿ 
var
ÿÿ 
parameterInfo
ÿÿ 
in
ÿÿ  "
	operation
ÿÿ# ,
.
ÿÿ, -
InParameters
ÿÿ- 9
)
ÿÿ9 :
{
ŸŸ 
var
⁄⁄ 	
arg
⁄⁄
 
=
⁄⁄ 
	arguments
⁄⁄ 
[
⁄⁄ 
parameterInfo
⁄⁄ '
.
⁄⁄' (
Index
⁄⁄( -
]
⁄⁄- .
;
⁄⁄. /
if
€€ 
(
€€	 

arg
€€
 
!=
€€ 
null
€€ 
&&
€€ 
arg
€€ 
.
€€ 
GetType
€€ $
(
€€$ %
)
€€% &
==
€€' )
	modelType
€€* 3
)
€€3 4
{
‹‹  
modelBindingFilter
›› 
.
›› 
OnModelBound
›› &
(
››& '
arg
››' *
,
››* +
serviceProvider
››, ;
,
››; <
out
››= @ 
modelBindingOutput
››A S
)
››S T
;
››T U
}
ﬁﬁ 
}
ﬂﬂ 
}
‡‡ 
}
·· 
foreach
‰‰ 

(
‰‰ 
var
‰‰ 
actionFilterAttr
‰‰  
in
‰‰! #
	operation
‰‰$ -
.
‰‰- .
DispatchMethod
‰‰. <
.
‰‰< =
CustomAttributes
‰‰= M
.
‰‰M N
Where
‰‰N S
(
‰‰S T
a
‰‰T U
=>
‰‰V X
a
‰‰Y Z
.
‰‰Z [
AttributeType
‰‰[ h
.
‰‰h i
Name
‰‰i m
==
‰‰n p
$str‰‰q â
)‰‰â ä
)‰‰ä ã
{
ÂÂ 
var
ÊÊ 
actionFilter
ÊÊ 
=
ÊÊ 
serviceProvider
ÊÊ &
.
ÊÊ& '

GetService
ÊÊ' 1
(
ÊÊ1 2
actionFilterAttr
ÊÊ2 B
.
ÊÊB C"
ConstructorArguments
ÊÊC W
[
ÊÊW X
$num
ÊÊX Y
]
ÊÊY Z
.
ÊÊZ [
Value
ÊÊ[ `
as
ÊÊa c
Type
ÊÊd h
)
ÊÊh i
;
ÊÊi j
actionFilter
ÁÁ 
.
ÁÁ 
GetType
ÁÁ 
(
ÁÁ 
)
ÁÁ 
.
ÁÁ 
	GetMethod
ÁÁ $
(
ÁÁ$ %
$str
ÁÁ% <
)
ÁÁ< =
?
ÁÁ= >
.
ÁÁ> ?
Invoke
ÁÁ? E
(
ÁÁE F
actionFilter
ÁÁF R
,
ÁÁR S
new
ÁÁT W
[
ÁÁW X
]
ÁÁX Y
{
ÁÁZ [
	operation
ÁÁ\ e
.
ÁÁe f
Name
ÁÁf j
,
ÁÁj k
	arguments
ÁÁl u
,
ÁÁu v
httpContextÁÁw Ç
,ÁÁÇ É"
modelBindingOutputÁÁÑ ñ
}ÁÁó ò
)ÁÁò ô
;ÁÁô ö
}
ËË 
_soapModelBounder
ÎÎ 
?
ÎÎ 
.
ÎÎ 
OnModelBound
ÎÎ "
(
ÎÎ" #
	operation
ÎÎ# ,
.
ÎÎ, -
DispatchMethod
ÎÎ- ;
,
ÎÎ; <
	arguments
ÎÎ= F
)
ÎÎF G
;
ÎÎG H
var
ÓÓ $
serviceOperationTuners
ÓÓ 
=
ÓÓ 
serviceProvider
ÓÓ  /
.
ÓÓ/ 0
GetServices
ÓÓ0 ;
<
ÓÓ; <$
IServiceOperationTuner
ÓÓ< R
>
ÓÓR S
(
ÓÓS T
)
ÓÓT U
;
ÓÓU V
foreach
ÔÔ 

(
ÔÔ 
var
ÔÔ 
operationTuner
ÔÔ 
in
ÔÔ !$
serviceOperationTuners
ÔÔ" 8
)
ÔÔ8 9
{
 
operationTuner
ÒÒ 
.
ÒÒ 
Tune
ÒÒ 
(
ÒÒ 
httpContext
ÒÒ #
,
ÒÒ# $
serviceInstance
ÒÒ% 4
,
ÒÒ4 5
	operation
ÒÒ6 ?
)
ÒÒ? @
;
ÒÒ@ A
}
ÚÚ 
}
ÛÛ 
private
ıı 	
void
ıı
 )
SetMessageHeadersToProperty
ıı *
(
ıı* +
Message
ıı+ 2
requestMessage
ıı3 A
,
ııA B
object
ııC I
serviceInstance
ııJ Y
)
ııY Z
{
ˆˆ 
var
˜˜ 
headerProperty
˜˜ 
=
˜˜ 
_service
˜˜  
.
˜˜  !
ServiceType
˜˜! ,
.
˜˜, -
GetProperty
˜˜- 8
(
˜˜8 9
$str
˜˜9 I
)
˜˜I J
;
˜˜J K
if
¯¯ 
(
¯¯ 
headerProperty
¯¯ 
!=
¯¯ 
null
¯¯ 
&&
¯¯  
headerProperty
¯¯! /
.
¯¯/ 0
PropertyType
¯¯0 <
==
¯¯= ?
requestMessage
¯¯@ N
.
¯¯N O
Headers
¯¯O V
.
¯¯V W
GetType
¯¯W ^
(
¯¯^ _
)
¯¯_ `
)
¯¯` a
{
˘˘ 
headerProperty
˙˙ 
.
˙˙ 
SetValue
˙˙ 
(
˙˙ 
serviceInstance
˙˙ +
,
˙˙+ ,
requestMessage
˙˙- ;
.
˙˙; <
Headers
˙˙< C
)
˙˙C D
;
˙˙D E
}
˚˚ 
}
¸¸ 
[
˛˛ 

MethodImpl
˛˛ 
(
˛˛ 
MethodImplOptions
˛˛ 
.
˛˛   
AggressiveInlining
˛˛  2
)
˛˛2 3
]
˛˛3 4
private
ˇˇ 	
object
ˇˇ
 
[
ˇˇ 
]
ˇˇ !
GetRequestArguments
ˇˇ &
(
ˇˇ& '
Message
ˇˇ' .
requestMessage
ˇˇ/ =
,
ˇˇ= >!
XmlDictionaryReader
ˇˇ? R
	xmlReader
ˇˇS \
,
ˇˇ\ ]"
OperationDescription
ˇˇ^ r
	operation
ˇˇs |
,
ˇˇ| }
HttpContextˇˇ~ â
httpContextˇˇä ï
)ˇˇï ñ
{
ÄÄ 
var
ÅÅ 
	arguments
ÅÅ 
=
ÅÅ 
new
ÅÅ 
object
ÅÅ 
[
ÅÅ 
	operation
ÅÅ '
.
ÅÅ' (
AllParameters
ÅÅ( 5
.
ÅÅ5 6
Length
ÅÅ6 <
]
ÅÅ< =
;
ÅÅ= >
IEnumerable
ÉÉ 
<
ÉÉ 
Type
ÉÉ 
>
ÉÉ 
serviceKnownTypes
ÉÉ &
=
ÉÉ' (
	operation
ÉÉ) 2
.
ÑÑ +
GetServiceKnownTypesHierarchy
ÑÑ "
(
ÑÑ" #
)
ÑÑ# $
.
ÖÖ 
Select
ÖÖ 
(
ÖÖ 
x
ÖÖ 
=>
ÖÖ 
x
ÖÖ 
.
ÖÖ 
Type
ÖÖ 
)
ÖÖ 
;
ÖÖ 
if
áá 
(
áá 
!
áá 
	operation
áá 
.
áá &
IsMessageContractRequest
áá *
)
áá* +
{
àà 
if
ââ 
(
ââ 
	xmlReader
ââ 
!=
ââ 
null
ââ 
)
ââ 
{
ää 
	xmlReader
ãã 
.
ãã 
ReadStartElement
ãã 
(
ãã  
	operation
ãã  )
.
ãã) *
Name
ãã* .
,
ãã. /
	operation
ãã0 9
.
ãã9 :
Contract
ãã: B
.
ããB C
	Namespace
ããC L
)
ããL M
;
ããM N
while
åå 

(
åå 
!
åå 
	xmlReader
åå 
.
åå 
EOF
åå 
)
åå 
{
çç 
var
éé 	
parameterInfo
éé
 
=
éé 
	operation
éé #
.
éé# $
InParameters
éé$ 0
.
éé0 1
FirstOrDefault
éé1 ?
(
éé? @
p
éé@ A
=>
ééB D
p
ééE F
.
ééF G
Name
ééG K
==
ééL N
	xmlReader
ééO X
.
ééX Y
	LocalName
ééY b
)
ééb c
;
ééc d
if
èè 
(
èè	 

parameterInfo
èè
 
==
èè 
null
èè 
)
èè  
{
êê 
	xmlReader
ëë 
.
ëë 
Skip
ëë 
(
ëë 
)
ëë 
;
ëë 
continue
íí 
;
íí 
}
ìì 
var
ïï 	
parameterType
ïï
 
=
ïï 
parameterInfo
ïï '
.
ïï' (
	Parameter
ïï( 1
.
ïï1 2
ParameterType
ïï2 ?
;
ïï? @
var
óó 	
argumentValue
óó
 
=
óó 
_serializerHelper
óó +
.
óó+ ,'
DeserializeInputParameter
óó, E
(
óóE F
	xmlReader
òò 
,
òò 
parameterType
ôô 
,
ôô 
parameterInfo
öö 
.
öö 
Name
öö 
,
öö 
	operation
õõ 
.
õõ 
Contract
õõ 
.
õõ 
	Namespace
õõ #
,
õõ# $
parameterInfo
úú 
.
úú 
	Parameter
úú 
.
úú 
Member
úú %
,
úú% &
serviceKnownTypes
ùù 
)
ùù 
;
ùù 
if
†† 
(
††	 

argumentValue
††
 
==
†† 
null
†† 
)
††  
{
°° 
argumentValue
¢¢ 
=
¢¢ 
_serializerHelper
¢¢ (
.
¢¢( )'
DeserializeInputParameter
¢¢) B
(
¢¢B C
	xmlReader
££ 
,
££ 
parameterType
§§ 
,
§§ 
parameterInfo
•• 
.
•• 
Name
•• 
,
•• 
parameterInfo
¶¶ 
.
¶¶ 
	Namespace
¶¶ 
,
¶¶  
parameterInfo
ßß 
.
ßß 
	Parameter
ßß 
.
ßß  
Member
ßß  &
,
ßß& '
serviceKnownTypes
®® 
)
®® 
;
®® 
}
©© 
	arguments
´´ 
[
´´ 
parameterInfo
´´ 
.
´´ 
Index
´´ #
]
´´# $
=
´´% &
argumentValue
´´' 4
;
´´4 5
}
¨¨ 
var
ÆÆ "
httpContextParameter
ÆÆ	 
=
ÆÆ 
	operation
ÆÆ  )
.
ÆÆ) *
InParameters
ÆÆ* 6
.
ÆÆ6 7
FirstOrDefault
ÆÆ7 E
(
ÆÆE F
x
ÆÆF G
=>
ÆÆH J
x
ÆÆK L
.
ÆÆL M
	Parameter
ÆÆM V
.
ÆÆV W
ParameterType
ÆÆW d
==
ÆÆe g
typeof
ÆÆh n
(
ÆÆn o
HttpContext
ÆÆo z
)
ÆÆz {
)
ÆÆ{ |
;
ÆÆ| }
if
ØØ 
(
ØØ 	"
httpContextParameter
ØØ	 
!=
ØØ  
default
ØØ! (
)
ØØ( )
{
∞∞ 
	arguments
±± 
[
±± "
httpContextParameter
±± $
.
±±$ %
Index
±±% *
]
±±* +
=
±±, -
httpContext
±±. 9
;
±±9 :
}
≤≤ 
}
≥≥ 
else
¥¥ 
{
µµ 
	arguments
∂∂ 
=
∂∂ 
Array
∂∂ 
.
∂∂ 
Empty
∂∂ 
<
∂∂ 
object
∂∂ #
>
∂∂# $
(
∂∂$ %
)
∂∂% &
;
∂∂& '
}
∑∑ 
}
∏∏ 
else
ππ 
{
∫∫ 
Debug
ΩΩ 	
.
ΩΩ	 

Assert
ΩΩ
 
(
ΩΩ 
	operation
ΩΩ 
.
ΩΩ 
InParameters
ΩΩ '
.
ΩΩ' (
Length
ΩΩ( .
==
ΩΩ/ 1
$num
ΩΩ2 3
,
ΩΩ3 4
$str
ΩΩ5 s
)
ΩΩs t
;
ΩΩt u
var
øø 
parameterInfo
øø 
=
øø 
	operation
øø !
.
øø! "
InParameters
øø" .
[
øø. /
$num
øø/ 0
]
øø0 1
;
øø1 2
var
¿¿ 
parameterType
¿¿ 
=
¿¿ 
parameterInfo
¿¿ %
.
¿¿% &
	Parameter
¿¿& /
.
¿¿/ 0
ParameterType
¿¿0 =
;
¿¿= >
var
¬¬ &
messageContractAttribute
¬¬  
=
¬¬! "
parameterType
¬¬# 0
.
¬¬0 1 
GetCustomAttribute
¬¬1 C
<
¬¬C D&
MessageContractAttribute
¬¬D \
>
¬¬\ ]
(
¬¬] ^
)
¬¬^ _
;
¬¬_ `
Debug
ƒƒ 	
.
ƒƒ	 

Assert
ƒƒ
 
(
ƒƒ &
messageContractAttribute
ƒƒ )
!=
ƒƒ* ,
null
ƒƒ- 1
,
ƒƒ1 2
$str
ƒƒ3 w
)
ƒƒw x
;
ƒƒx y
var
∆∆ 

@namespace
∆∆ 
=
∆∆ 
parameterInfo
∆∆ "
.
∆∆" #
	Namespace
∆∆# ,
??
∆∆- /
	operation
∆∆0 9
.
∆∆9 :
Contract
∆∆: B
.
∆∆B C
	Namespace
∆∆C L
;
∆∆L M
if
»» 
(
»» &
messageContractAttribute
»»  
.
»»  !
	IsWrapped
»»! *
&&
»»+ -
!
»». /
parameterType
»»/ <
.
»»< =%
GetMembersWithAttribute
»»= T
<
»»T U$
MessageHeaderAttribute
»»U k
>
»»k l
(
»»l m
)
»»m n
.
»»n o
Any
»»o r
(
»»r s
)
»»s t
)
»»t u
{
…… 
if
ÀÀ 
(
ÀÀ 	
	operation
ÀÀ	 
.
ÀÀ 
DispatchMethod
ÀÀ !
.
ÀÀ! " 
GetCustomAttribute
ÀÀ" 4
<
ÀÀ4 5*
XmlSerializerFormatAttribute
ÀÀ5 Q
>
ÀÀQ R
(
ÀÀR S
)
ÀÀS T
?
ÀÀT U
.
ÀÀU V
Style
ÀÀV [
==
ÀÀ\ ^"
OperationFormatStyle
ÀÀ_ s
.
ÀÀs t
Rpc
ÀÀt w
)
ÀÀw x
{
ÃÃ 
var
ÕÕ 	
importer
ÕÕ
 
=
ÕÕ 
new
ÕÕ $
SoapReflectionImporter
ÕÕ /
(
ÕÕ/ 0

@namespace
ÕÕ0 :
)
ÕÕ: ;
;
ÕÕ; <
var
ŒŒ 	
map
ŒŒ
 
=
ŒŒ 
new
ŒŒ !
XmlReflectionMember
ŒŒ '
{
œœ 
IsReturnValue
–– 
=
–– 
false
–– 
,
–– 

MemberName
—— 
=
—— 
parameterInfo
—— !
.
——! "
Name
——" &
,
——& '

MemberType
““ 
=
““ 
parameterType
““ !
}
”” 
;
”” 
var
‘‘ 	
mapping
‘‘
 
=
‘‘ 
importer
‘‘ 
.
‘‘ "
ImportMembersMapping
‘‘ 1
(
‘‘1 2
parameterInfo
‘‘2 ?
.
‘‘? @
Name
‘‘@ D
,
‘‘D E

@namespace
‘‘F P
,
‘‘P Q
new
‘‘R U
[
‘‘U V
]
‘‘V W
{
‘‘X Y
map
‘‘Z ]
}
‘‘^ _
,
‘‘_ `
false
‘‘a f
,
‘‘f g
true
‘‘h l
)
‘‘l m
;
‘‘m n
var
’’ 	

serializer
’’
 
=
’’ 
XmlSerializer
’’ $
.
’’$ %
FromMappings
’’% 1
(
’’1 2
new
’’2 5
[
’’5 6
]
’’6 7
{
’’8 9
mapping
’’: A
}
’’B C
)
’’C D
[
’’D E
$num
’’E F
]
’’F G
;
’’G H
var
÷÷ 	
value
÷÷
 
=
÷÷ 

serializer
÷÷ 
.
÷÷ 
Deserialize
÷÷ (
(
÷÷( )
	xmlReader
÷÷) 2
)
÷÷2 3
;
÷÷3 4
if
◊◊ 
(
◊◊	 

value
◊◊
 
is
◊◊ 
object
◊◊ 
[
◊◊ 
]
◊◊ 
o
◊◊ 
&&
◊◊  
o
◊◊! "
.
◊◊" #
Length
◊◊# )
>
◊◊* +
$num
◊◊, -
)
◊◊- .
{
ÿÿ 
	arguments
ŸŸ 
[
ŸŸ 
parameterInfo
ŸŸ 
.
ŸŸ 
Index
ŸŸ $
]
ŸŸ$ %
=
ŸŸ& '
o
ŸŸ( )
[
ŸŸ) *
$num
ŸŸ* +
]
ŸŸ+ ,
;
ŸŸ, -
}
⁄⁄ 
}
€€ 
else
‹‹ 	
{
›› 
	arguments
ﬂﬂ 
[
ﬂﬂ 
parameterInfo
ﬂﬂ 
.
ﬂﬂ 
Index
ﬂﬂ #
]
ﬂﬂ# $
=
ﬂﬂ% &
_serializerHelper
ﬂﬂ' 8
.
ﬂﬂ8 9'
DeserializeInputParameter
ﬂﬂ9 R
(
ﬂﬂR S
	xmlReader
‡‡ 
,
‡‡ 
parameterInfo
·· 
.
·· 
	Parameter
·· 
.
·· 
ParameterType
·· ,
,
··, -&
messageContractAttribute
‚‚ 
.
‚‚  
WrapperName
‚‚  +
??
‚‚, .
parameterInfo
‚‚/ <
.
‚‚< =
	Parameter
‚‚= F
.
‚‚F G
ParameterType
‚‚G T
.
‚‚T U
Name
‚‚U Y
,
‚‚Y Z&
messageContractAttribute
„„ 
.
„„  
WrapperNamespace
„„  0
??
„„1 3

@namespace
„„4 >
,
„„> ?
parameterInfo
‰‰ 
.
‰‰ 
	Parameter
‰‰ 
.
‰‰ 
Member
‰‰ %
,
‰‰% &
serviceKnownTypes
ÂÂ 
)
ÂÂ 
;
ÂÂ 
}
ÊÊ 
}
ÁÁ 
else
ËË 
{
ÈÈ 
var
ÍÍ #
messageHeadersMembers
ÍÍ	 
=
ÍÍ  
parameterType
ÍÍ! .
.
ÍÍ. /'
GetPropertyOrFieldMembers
ÍÍ/ H
(
ÍÍH I
)
ÍÍI J
.
ÎÎ 
Where
ÎÎ 
(
ÎÎ 
x
ÎÎ 
=>
ÎÎ 
x
ÎÎ 
.
ÎÎ  
GetCustomAttribute
ÎÎ &
<
ÎÎ& '$
MessageHeaderAttribute
ÎÎ' =
>
ÎÎ= >
(
ÎÎ> ?
)
ÎÎ? @
!=
ÎÎA C
null
ÎÎD H
)
ÎÎH I
.
ÏÏ 
Select
ÏÏ 
(
ÏÏ 
mi
ÏÏ 
=>
ÏÏ 
new
ÏÏ 
{
ÌÌ 

MemberInfo
ÓÓ 
=
ÓÓ 
mi
ÓÓ 
,
ÓÓ *
MessageHeaderMemberAttribute
ÔÔ #
=
ÔÔ$ %
mi
ÔÔ& (
.
ÔÔ( ) 
GetCustomAttribute
ÔÔ) ;
<
ÔÔ; <$
MessageHeaderAttribute
ÔÔ< R
>
ÔÔR S
(
ÔÔS T
)
ÔÔT U
}
 
)
 
.
 	
ToArray
	 
(
 
)
 
;
 
var
ÚÚ 
wrapperObject
ÚÚ	 
=
ÚÚ 
	Activator
ÚÚ "
.
ÚÚ" #
CreateInstance
ÚÚ# 1
(
ÚÚ1 2
parameterInfo
ÚÚ2 ?
.
ÚÚ? @
	Parameter
ÚÚ@ I
.
ÚÚI J
ParameterType
ÚÚJ W
)
ÚÚW X
;
ÚÚX Y
for
ÙÙ 
(
ÙÙ	 

var
ÙÙ
 
i
ÙÙ 
=
ÙÙ 
$num
ÙÙ 
;
ÙÙ 
i
ÙÙ 
<
ÙÙ 
requestMessage
ÙÙ '
.
ÙÙ' (
Headers
ÙÙ( /
.
ÙÙ/ 0
Count
ÙÙ0 5
;
ÙÙ5 6
i
ÙÙ7 8
++
ÙÙ8 :
)
ÙÙ: ;
{
ıı 
var
ˆˆ 	
header
ˆˆ
 
=
ˆˆ 
requestMessage
ˆˆ !
.
ˆˆ! "
Headers
ˆˆ" )
[
ˆˆ) *
i
ˆˆ* +
]
ˆˆ+ ,
;
ˆˆ, -
var
˜˜ 	
member
˜˜
 
=
˜˜ #
messageHeadersMembers
˜˜ (
.
˜˜( )
FirstOrDefault
˜˜) 7
(
˜˜7 8
x
˜˜8 9
=>
˜˜: <
x
˜˜= >
.
˜˜> ?*
MessageHeaderMemberAttribute
˜˜? [
.
˜˜[ \
Name
˜˜\ `
==
˜˜a c
header
˜˜d j
.
˜˜j k
Name
˜˜k o
||
˜˜p r
x
˜˜s t
.
˜˜t u

MemberInfo
˜˜u 
.˜˜ Ä
Name˜˜Ä Ñ
==˜˜Ö á
header˜˜à é
.˜˜é è
Name˜˜è ì
)˜˜ì î
;˜˜î ï
if
˘˘ 
(
˘˘	 

member
˘˘
 
!=
˘˘ 
null
˘˘ 
)
˘˘ 
{
˙˙ 
var
˚˚ 

reader
˚˚ 
=
˚˚ 
requestMessage
˚˚ "
.
˚˚" #
Headers
˚˚# *
.
˚˚* +
GetReaderAtHeader
˚˚+ <
(
˚˚< =
i
˚˚= >
)
˚˚> ?
;
˚˚? @
var
˝˝ 

value
˝˝ 
=
˝˝ 
_serializerHelper
˝˝ $
.
˝˝$ %'
DeserializeInputParameter
˝˝% >
(
˝˝> ?
reader
˛˛ 
,
˛˛ 
member
ˇˇ 
.
ˇˇ 

MemberInfo
ˇˇ 
.
ˇˇ $
GetPropertyOrFieldType
ˇˇ 0
(
ˇˇ0 1
)
ˇˇ1 2
,
ˇˇ2 3
member
ÄÄ 
.
ÄÄ *
MessageHeaderMemberAttribute
ÄÄ +
.
ÄÄ+ ,
Name
ÄÄ, 0
??
ÄÄ1 3
member
ÄÄ4 :
.
ÄÄ: ;

MemberInfo
ÄÄ; E
.
ÄÄE F
Name
ÄÄF J
,
ÄÄJ K
member
ÅÅ 
.
ÅÅ *
MessageHeaderMemberAttribute
ÅÅ +
.
ÅÅ+ ,
	Namespace
ÅÅ, 5
??
ÅÅ6 8

@namespace
ÅÅ9 C
,
ÅÅC D
member
ÇÇ 
.
ÇÇ 

MemberInfo
ÇÇ 
,
ÇÇ 
serviceKnownTypes
ÉÉ 
)
ÉÉ 
;
ÉÉ 
member
ÖÖ 
.
ÖÖ 

MemberInfo
ÖÖ 
.
ÖÖ '
SetValueToPropertyOrField
ÖÖ 2
(
ÖÖ2 3
wrapperObject
ÖÖ3 @
,
ÖÖ@ A
value
ÖÖB G
)
ÖÖG H
;
ÖÖH I
}
ÜÜ 
}
áá 
var
ãã  
messageBodyMembers
ãã	 
=
ãã 
parameterType
ãã +
.
ãã+ ,'
GetPropertyOrFieldMembers
ãã, E
(
ããE F
)
ããF G
.
ããG H
Where
ããH M
(
ããM N
x
ããN O
=>
ããP R
x
ããS T
.
ããT U 
GetCustomAttribute
ããU g
<
ããg h)
MessageBodyMemberAttributeããh Ç
>ããÇ É
(ããÉ Ñ
)ããÑ Ö
!=ããÜ à
nullããâ ç
)ããç é
.ããé è
Selectããè ï
(ããï ñ
miããñ ò
=>ããô õ
newããú ü
{
åå 
Member
çç 
=
çç 
mi
çç 
,
çç (
MessageBodyMemberAttribute
éé  
=
éé! "
mi
éé# %
.
éé% & 
GetCustomAttribute
éé& 8
<
éé8 9(
MessageBodyMemberAttribute
éé9 S
>
ééS T
(
ééT U
)
ééU V
}
èè 
)
èè 
.
èè 
OrderBy
èè 
(
èè 
x
èè 
=>
èè 
x
èè 
.
èè (
MessageBodyMemberAttribute
èè 1
.
èè1 2
Order
èè2 7
)
èè7 8
;
èè8 9
if
ëë 
(
ëë 	&
messageContractAttribute
ëë	 !
.
ëë! "
	IsWrapped
ëë" +
)
ëë+ ,
{
íí 
	xmlReader
ìì 
.
ìì 
Read
ìì 
(
ìì 
)
ìì 
;
ìì 
}
îî 
foreach
ññ 
(
ññ 
var
ññ 
messageBodyMember
ññ #
in
ññ$ & 
messageBodyMembers
ññ' 9
)
ññ9 :
{
óó 
var
òò 	(
messageBodyMemberAttribute
òò
 $
=
òò% &
messageBodyMember
òò' 8
.
òò8 9(
MessageBodyMemberAttribute
òò9 S
;
òòS T
var
ôô 	#
messageBodyMemberInfo
ôô
 
=
ôô  !
messageBodyMember
ôô" 3
.
ôô3 4
Member
ôô4 :
;
ôô: ;
var
õõ 	 
innerParameterName
õõ
 
=
õõ (
messageBodyMemberAttribute
õõ 9
.
õõ9 :
Name
õõ: >
??
õõ? A#
messageBodyMemberInfo
õõB W
.
õõW X
Name
õõX \
;
õõ\ ]
var
úú 	
innerParameterNs
úú
 
=
úú (
messageBodyMemberAttribute
úú 7
.
úú7 8
	Namespace
úú8 A
??
úúB D

@namespace
úúE O
;
úúO P
var
ùù 	 
innerParameterType
ùù
 
=
ùù #
messageBodyMemberInfo
ùù 4
.
ùù4 5$
GetPropertyOrFieldType
ùù5 K
(
ùùK L
)
ùùL M
;
ùùM N
var
üü 	
innerParameter
üü
 
=
üü 
_serializerHelper
üü ,
.
üü, -'
DeserializeInputParameter
üü- F
(
üüF G
	xmlReader
†† 
,
††  
innerParameterType
°° 
,
°°  
innerParameterName
¢¢ 
,
¢¢ 
innerParameterNs
££ 
,
££ #
messageBodyMemberInfo
§§ 
,
§§ 
serviceKnownTypes
•• 
)
•• 
;
•• #
messageBodyMemberInfo
ßß 
.
ßß '
SetValueToPropertyOrField
ßß 5
(
ßß5 6
wrapperObject
ßß6 C
,
ßßC D
innerParameter
ßßE S
)
ßßS T
;
ßßT U
}
®® 
	arguments
™™ 
[
™™ 
parameterInfo
™™ 
.
™™ 
Index
™™ "
]
™™" #
=
™™$ %
wrapperObject
™™& 3
;
™™3 4
}
´´ 
}
¨¨ 
foreach
ÆÆ 

(
ÆÆ 
var
ÆÆ 
parameterInfo
ÆÆ 
in
ÆÆ  
	operation
ÆÆ! *
.
ÆÆ* +
OutParameters
ÆÆ+ 8
)
ÆÆ8 9
{
ØØ 
if
∞∞ 
(
∞∞ 
	arguments
∞∞ 
[
∞∞ 
parameterInfo
∞∞ 
.
∞∞  
Index
∞∞  %
]
∞∞% &
!=
∞∞' )
null
∞∞* .
)
∞∞. /
{
±± 
continue
≥≥ 
;
≥≥ 
}
¥¥ 
if
∂∂ 
(
∂∂ 
parameterInfo
∂∂ 
.
∂∂ 
	Parameter
∂∂ 
.
∂∂  
ParameterType
∂∂  -
.
∂∂- .
Name
∂∂. 2
==
∂∂3 5
$str
∂∂6 =
)
∂∂= >
{
∑∑ 
	arguments
∏∏ 
[
∏∏ 
parameterInfo
∏∏ 
.
∏∏ 
Index
∏∏ "
]
∏∏" #
=
∏∏$ %
Guid
∏∏& *
.
∏∏* +
Empty
∏∏+ 0
;
∏∏0 1
}
ππ 
else
∫∫ 
if
∫∫	 
(
∫∫ 
parameterInfo
∫∫ 
.
∫∫ 
	Parameter
∫∫ $
.
∫∫$ %
ParameterType
∫∫% 2
.
∫∫2 3
Name
∫∫3 7
==
∫∫8 :
$str
∫∫; D
||
∫∫E G
parameterInfo
∫∫H U
.
∫∫U V
	Parameter
∫∫V _
.
∫∫_ `
ParameterType
∫∫` m
.
∫∫m n
GetElementType
∫∫n |
(
∫∫| }
)
∫∫} ~
.
∫∫~ 
IsArray∫∫ Ü
)∫∫Ü á
{
ªª 
	arguments
ºº 
[
ºº 
parameterInfo
ºº 
.
ºº 
Index
ºº "
]
ºº" #
=
ºº$ %
null
ºº& *
;
ºº* +
}
ΩΩ 
else
ææ 
{
øø 
var
¿¿ 
type
¿¿	 
=
¿¿ 
parameterInfo
¿¿ 
.
¿¿ 
	Parameter
¿¿ '
.
¿¿' (
ParameterType
¿¿( 5
.
¿¿5 6
GetElementType
¿¿6 D
(
¿¿D E
)
¿¿E F
;
¿¿F G
	arguments
¡¡ 
[
¡¡ 
parameterInfo
¡¡ 
.
¡¡ 
Index
¡¡ "
]
¡¡" #
=
¡¡$ %
	Activator
¡¡& /
.
¡¡/ 0
CreateInstance
¡¡0 >
(
¡¡> ?
type
¡¡? C
)
¡¡C D
;
¡¡D E
}
¬¬ 
}
√√ 
return
≈≈ 	
	arguments
≈≈
 
;
≈≈ 
}
∆∆ 
private
·· 	
async
··
 
Task
·· 
<
·· 
Message
·· 
>
·· '
WriteErrorResponseMessage
·· 7
(
··7 8
	Exception
‚‚ 
	exception
‚‚ 
,
‚‚ 
int
„„ 

statusCode
„„ 
,
„„ 
IServiceProvider
‰‰ 
serviceProvider
‰‰ #
,
‰‰# $
Message
ÂÂ 

requestMessage
ÂÂ 
,
ÂÂ  
SoapMessageEncoder
ÊÊ 
messageEncoder
ÊÊ $
,
ÊÊ$ %
HttpContext
ÁÁ 
httpContext
ÁÁ 
)
ÁÁ 
{
ËË 
var
ÈÈ '
faultExceptionTransformer
ÈÈ  
=
ÈÈ! "
serviceProvider
ÈÈ# 2
.
ÈÈ2 3 
GetRequiredService
ÈÈ3 E
<
ÈÈE F(
IFaultExceptionTransformer
ÈÈF `
>
ÈÈ` a
(
ÈÈa b
)
ÈÈb c
;
ÈÈc d
var
ÍÍ 
faultMessage
ÍÍ 
=
ÍÍ '
faultExceptionTransformer
ÍÍ /
.
ÍÍ/ 0
ProvideFault
ÍÍ0 <
(
ÍÍ< =
	exception
ÍÍ= F
,
ÍÍF G
messageEncoder
ÍÍH V
.
ÍÍV W
MessageVersion
ÍÍW e
,
ÍÍe f
requestMessage
ÍÍg u
,
ÍÍu v#
_xmlNamespaceManagerÍÍw ã
)ÍÍã å
;ÍÍå ç
httpContext
ÏÏ 
.
ÏÏ 
Response
ÏÏ 
.
ÏÏ 
ContentType
ÏÏ #
=
ÏÏ$ %
httpContext
ÏÏ& 1
.
ÏÏ1 2
Request
ÏÏ2 9
.
ÏÏ9 :
ContentType
ÏÏ: E
;
ÏÏE F
httpContext
ÌÌ 
.
ÌÌ 
Response
ÌÌ 
.
ÌÌ 
Headers
ÌÌ 
[
ÌÌ  
$str
ÌÌ  ,
]
ÌÌ, -
=
ÌÌ. /
faultMessage
ÌÌ0 <
.
ÌÌ< =
Headers
ÌÌ= D
.
ÌÌD E
Action
ÌÌE K
;
ÌÌK L
httpContext
ÓÓ 
.
ÓÓ 
Response
ÓÓ 
.
ÓÓ 

StatusCode
ÓÓ "
=
ÓÓ# $

statusCode
ÓÓ% /
;
ÓÓ/ 0
SetHttpResponse
 
(
 
httpContext
 
,
 
faultMessage
  ,
)
, -
;
- .
if
ÒÒ 
(
ÒÒ 
messageEncoder
ÒÒ 
.
ÒÒ 
MessageVersion
ÒÒ $
.
ÒÒ$ %

Addressing
ÒÒ% /
==
ÒÒ0 2
AddressingVersion
ÒÒ3 D
.
ÒÒD E
WSAddressing10
ÒÒE S
)
ÒÒS T
{
ÚÚ 
faultMessage
ıı 
.
ıı 
Headers
ıı 
.
ıı 
	RelatesTo
ıı "
=
ıı# $
requestMessage
ıı% 3
.
ıı3 4
Headers
ıı4 ;
.
ıı; <
	MessageId
ıı< E
;
ııE F
faultMessage
ˆˆ 
.
ˆˆ 
Headers
ˆˆ 
.
ˆˆ 
To
ˆˆ 
=
ˆˆ 
requestMessage
ˆˆ ,
.
ˆˆ, -
Headers
ˆˆ- 4
.
ˆˆ4 5
ReplyTo
ˆˆ5 <
?
ˆˆ< =
.
ˆˆ= >
Uri
ˆˆ> A
;
ˆˆA B
}
˜˜ 
await
˘˘ 
WriteMessageAsync
˘˘	 
(
˘˘ 
messageEncoder
˘˘ )
,
˘˘) *
faultMessage
˘˘+ 7
,
˘˘7 8
httpContext
˘˘9 D
)
˘˘D E
;
˘˘E F
return
˚˚ 	
faultMessage
˚˚
 
;
˚˚ 
}
¸¸ 
private
˛˛ 	
void
˛˛
 
SetHttpResponse
˛˛ 
(
˛˛ 
HttpContext
˛˛ *
httpContext
˛˛+ 6
,
˛˛6 7
Message
˛˛8 ?
message
˛˛@ G
)
˛˛G H
{
ˇˇ 
if
ÄÄ 
(
ÄÄ 
!
ÄÄ 
message
ÄÄ 
.
ÄÄ 

Properties
ÄÄ 
.
ÄÄ 
TryGetValue
ÄÄ &
(
ÄÄ& ')
HttpResponseMessageProperty
ÄÄ' B
.
ÄÄB C
Name
ÄÄC G
,
ÄÄG H
out
ÄÄI L
var
ÄÄM P
value
ÄÄQ V
)
ÄÄV W
||
ÅÅ 
!
ÅÅ 
(
ÅÅ 	
value
ÅÅ	 
is
ÅÅ )
HttpResponseMessageProperty
ÅÅ -
httpProperty
ÅÅ. :
)
ÅÅ: ;
)
ÅÅ; <
{
ÇÇ 
return
ÉÉ 

;
ÉÉ
 
}
ÑÑ 
httpContext
ÜÜ 
.
ÜÜ 
Response
ÜÜ 
.
ÜÜ 

StatusCode
ÜÜ "
=
ÜÜ# $
(
ÜÜ% &
int
ÜÜ& )
)
ÜÜ) *
httpProperty
ÜÜ* 6
.
ÜÜ6 7

StatusCode
ÜÜ7 A
;
ÜÜA B
var
àà 
feature
àà 
=
àà 
httpContext
àà 
.
àà 
Features
àà %
.
àà% &
Get
àà& )
<
àà) *"
IHttpResponseFeature
àà* >
>
àà> ?
(
àà? @
)
àà@ A
;
ààA B
if
ââ 
(
ââ 
feature
ââ 
!=
ââ 
null
ââ 
&&
ââ 
!
ââ 
string
ââ !
.
ââ! "
IsNullOrEmpty
ââ" /
(
ââ/ 0
httpProperty
ââ0 <
.
ââ< =
StatusDescription
ââ= N
)
ââN O
)
ââO P
{
ää 
feature
ãã 
.
ãã 
ReasonPhrase
ãã 
=
ãã 
httpProperty
ãã '
.
ãã' (
StatusDescription
ãã( 9
;
ãã9 :
}
åå 
foreach
éé 

(
éé 
string
éé 
key
éé 
in
éé 
httpProperty
éé &
.
éé& '
Headers
éé' .
.
éé. /
Keys
éé/ 3
)
éé3 4
{
èè 
httpContext
êê 
.
êê 
Response
êê 
.
êê 
Headers
êê  
.
êê  !
Add
êê! $
(
êê$ %
key
êê% (
,
êê( )
httpProperty
êê* 6
.
êê6 7
Headers
êê7 >
.
êê> ?
	GetValues
êê? H
(
êêH I
key
êêI L
)
êêL M
)
êêM N
;
êêN O
}
ëë 
}
íí 
private
îî 	
async
îî
 
Task
îî 

ProcessXSD
îî 
(
îî  
	Microsoft
îî  )
.
îî) *

AspNetCore
îî* 4
.
îî4 5
Http
îî5 9
.
îî9 :
HttpContext
îî: E
httpContext
îîF Q
)
îîQ R
{
ïï 
Meta
ññ 
.
ññ 
MetaFromFile
ññ 
meta
ññ 
=
ññ 
new
ññ 
Meta
ññ  $
.
ññ$ %
MetaFromFile
ññ% 1
(
ññ1 2
)
ññ2 3
;
ññ3 4
if
óó 
(
óó 
!
óó 
string
óó 
.
óó 
IsNullOrEmpty
óó 
(
óó 
_options
óó %
.
óó% &
WsdlFileOptions
óó& 5
.
óó5 6
VirtualPath
óó6 A
)
óóA B
)
óóB C
{
òò 
meta
ôô 
.
ôô 	
CurrentWebServer
ôô	 
=
ôô 
_options
ôô $
.
ôô$ %
WsdlFileOptions
ôô% 4
.
ôô4 5
VirtualPath
ôô5 @
+
ôôA B
$str
ôôC F
;
ôôF G
}
öö 
meta
úú 
.
úú 
CurrentWebService
úú 
=
úú 
httpContext
úú '
.
úú' (
Request
úú( /
.
úú/ 0
Path
úú0 4
.
úú4 5
Value
úú5 :
.
úú: ;
Replace
úú; B
(
úúB C
$str
úúC F
,
úúF G
string
úúH N
.
úúN O
Empty
úúO T
)
úúT U
;
úúU V
var
ùù 
mapping
ùù 
=
ùù 
_options
ùù 
.
ùù 
WsdlFileOptions
ùù )
.
ùù) *#
WebServiceWSDLMapping
ùù* ?
[
ùù? @
meta
ùù@ D
.
ùùD E
CurrentWebService
ùùE V
]
ùùV W
;
ùùW X
meta
üü 
.
üü 
	XsdFolder
üü 
=
üü 
mapping
üü 
.
üü 
SchemaFolder
üü (
;
üü( )
if
°° 
(
°° 
_options
°° 
.
°° 
WsdlFileOptions
°° 
.
°°  
UrlOverride
°°  +
!=
°°, .
string
°°/ 5
.
°°5 6
Empty
°°6 ;
)
°°; <
{
¢¢ 
meta
££ 
.
££ 	
	ServerUrl
££	 
=
££ 
_options
££ 
.
££ 
WsdlFileOptions
££ -
.
££- .
UrlOverride
££. 9
;
££9 :
}
§§ 
else
•• 
{
¶¶ 
meta
ßß 
.
ßß 	
	ServerUrl
ßß	 
=
ßß 
httpContext
ßß  
.
ßß  !
Request
ßß! (
.
ßß( )
Scheme
ßß) /
+
ßß0 1
$str
ßß2 7
+
ßß8 9
httpContext
ßß: E
.
ßßE F
Request
ßßF M
.
ßßM N
Host
ßßN R
+
ßßS T
$str
ßßU X
;
ßßX Y
}
®® 
string
™™ 	
xsdfile
™™
 
=
™™ 
httpContext
™™ 
.
™™  
Request
™™  '
.
™™' (
Query
™™( -
[
™™- .
$str
™™. 4
]
™™4 5
;
™™5 6
if
≠≠ 
(
≠≠ 
string
≠≠ 
.
≠≠ 
IsNullOrEmpty
≠≠ 
(
≠≠ 
xsdfile
≠≠ #
)
≠≠# $
||
≠≠% '
Path
≠≠( ,
.
≠≠, -
GetFileName
≠≠- 8
(
≠≠8 9
xsdfile
≠≠9 @
)
≠≠@ A
!=
≠≠B D
xsdfile
≠≠E L
)
≠≠L M
{
ÆÆ 
throw
ØØ 	
new
ØØ
 #
ArgumentNullException
ØØ #
(
ØØ# $
$str
ØØ$ L
)
ØØL M
;
ØØM N
}
∞∞ 
if
≤≤ 
(
≤≤ 
!
≤≤ 
xsdfile
≤≤ 
.
≤≤ 
Contains
≤≤ 
(
≤≤ 
$str
≤≤ 
)
≤≤  
)
≤≤  !
{
≥≥ 
throw
¥¥ 	
new
¥¥
 
	Exception
¥¥ 
(
¥¥ 
$str
¥¥ 7
)
¥¥7 8
;
¥¥8 9
}
µµ 
string
∑∑ 	
path
∑∑
 
=
∑∑ 
_options
∑∑ 
.
∑∑ 
WsdlFileOptions
∑∑ )
.
∑∑) *
AppPath
∑∑* 1
;
∑∑1 2
string
∏∏ 	
safePath
∏∏
 
=
∏∏ 
path
∏∏ 
+
∏∏ 
Path
∏∏  
.
∏∏  !'
AltDirectorySeparatorChar
∏∏! :
+
∏∏; <
meta
∏∏= A
.
∏∏A B
	XsdFolder
∏∏B K
+
∏∏L M
Path
∏∏N R
.
∏∏R S'
AltDirectorySeparatorChar
∏∏S l
+
∏∏m n
xsdfile
∏∏o v
;
∏∏v w
string
ππ 	
xsd
ππ
 
=
ππ 
meta
ππ 
.
ππ 
ReadLocalFile
ππ "
(
ππ" #
safePath
ππ# +
)
ππ+ ,
;
ππ, -
string
∫∫ 	
modifiedxsd
∫∫
 
=
∫∫ 
meta
∫∫ 
.
∫∫ )
ModifyXSDAddRightSchemaPath
∫∫ 8
(
∫∫8 9
xsd
∫∫9 <
)
∫∫< =
;
∫∫= >
httpContext
ΩΩ 
.
ΩΩ 
Response
ΩΩ 
.
ΩΩ 
ContentType
ΩΩ #
=
ΩΩ$ %
$str
ΩΩ& >
;
ΩΩ> ?
byte
ææ 
[
ææ 
]
ææ 	
data
ææ
 
=
ææ 
System
ææ 
.
ææ 
Text
ææ 
.
ææ 
Encoding
ææ %
.
ææ% &
UTF8
ææ& *
.
ææ* +
GetBytes
ææ+ 3
(
ææ3 4
modifiedxsd
ææ4 ?
)
ææ? @
;
ææ@ A
await
øø 
httpContext
øø	 
.
øø 
Response
øø 
.
øø 
Body
øø "
.
øø" #

WriteAsync
øø# -
(
øø- .
data
øø. 2
,
øø2 3
$num
øø4 5
,
øø5 6
data
øø7 ;
.
øø; <
Length
øø< B
)
øøB C
;
øøC D
}
¿¿ 
private
¬¬ 	
async
¬¬
 
Task
¬¬ !
ProcessMetaFromFile
¬¬ (
(
¬¬( )
	Microsoft
¬¬) 2
.
¬¬2 3

AspNetCore
¬¬3 =
.
¬¬= >
Http
¬¬> B
.
¬¬B C
HttpContext
¬¬C N
httpContext
¬¬O Z
)
¬¬Z [
{
√√ 
Meta
ƒƒ 
.
ƒƒ 
MetaFromFile
ƒƒ 
meta
ƒƒ 
=
ƒƒ 
new
ƒƒ 
Meta
ƒƒ  $
.
ƒƒ$ %
MetaFromFile
ƒƒ% 1
(
ƒƒ1 2
)
ƒƒ2 3
;
ƒƒ3 4
if
≈≈ 
(
≈≈ 
!
≈≈ 
string
≈≈ 
.
≈≈ 
IsNullOrEmpty
≈≈ 
(
≈≈ 
_options
≈≈ %
.
≈≈% &
WsdlFileOptions
≈≈& 5
.
≈≈5 6
VirtualPath
≈≈6 A
)
≈≈A B
)
≈≈B C
{
∆∆ 
meta
«« 
.
«« 	
CurrentWebServer
««	 
=
«« 
_options
«« $
.
««$ %
WsdlFileOptions
««% 4
.
««4 5
VirtualPath
««5 @
+
««A B
$str
««C F
;
««F G
}
»» 
meta
   
.
   
CurrentWebService
   
=
   
httpContext
   '
.
  ' (
Request
  ( /
.
  / 0
Path
  0 4
.
  4 5
Value
  5 :
.
  : ;
Replace
  ; B
(
  B C
$str
  C F
,
  F G
string
  H N
.
  N O
Empty
  O T
)
  T U
;
  U V#
WebServiceWSDLMapping
ÃÃ 
mapping
ÃÃ  
=
ÃÃ! "
_options
ÃÃ# +
.
ÃÃ+ ,
WsdlFileOptions
ÃÃ, ;
.
ÃÃ; <#
WebServiceWSDLMapping
ÃÃ< Q
[
ÃÃQ R
meta
ÃÃR V
.
ÃÃV W
CurrentWebService
ÃÃW h
]
ÃÃh i
;
ÃÃi j
meta
ŒŒ 
.
ŒŒ 
	XsdFolder
ŒŒ 
=
ŒŒ 
mapping
ŒŒ 
.
ŒŒ 
SchemaFolder
ŒŒ (
;
ŒŒ( )
meta
œœ 
.
œœ 

WSDLFolder
œœ 
=
œœ 
mapping
œœ 
.
œœ 

WSDLFolder
œœ '
;
œœ' (
if
–– 
(
–– 
_options
–– 
.
–– 
WsdlFileOptions
–– 
.
––  
UrlOverride
––  +
!=
––, .
string
––/ 5
.
––5 6
Empty
––6 ;
)
––; <
{
—— 
meta
““ 
.
““ 	
	ServerUrl
““	 
=
““ 
_options
““ 
.
““ 
WsdlFileOptions
““ -
.
““- .
UrlOverride
““. 9
;
““9 :
}
”” 
else
‘‘ 
{
’’ 
meta
÷÷ 
.
÷÷ 	
	ServerUrl
÷÷	 
=
÷÷ 
httpContext
÷÷  
.
÷÷  !
Request
÷÷! (
.
÷÷( )
Scheme
÷÷) /
+
÷÷0 1
$str
÷÷2 7
+
÷÷8 9
httpContext
÷÷: E
.
÷÷E F
Request
÷÷F M
.
÷÷M N
Host
÷÷N R
+
÷÷S T
$str
÷÷U X
;
÷÷X Y
}
◊◊ 
string
ŸŸ 	
wsdlfile
ŸŸ
 
=
ŸŸ 
mapping
ŸŸ 
.
ŸŸ 
WsdlFile
ŸŸ %
;
ŸŸ% &
string
€€ 	
path
€€
 
=
€€ 
_options
€€ 
.
€€ 
WsdlFileOptions
€€ )
.
€€) *
AppPath
€€* 1
;
€€1 2
string
‹‹ 	
wsdl
‹‹
 
=
‹‹ 
meta
‹‹ 
.
‹‹ 
ReadLocalFile
‹‹ #
(
‹‹# $
path
‹‹$ (
+
‹‹) *
Path
‹‹+ /
.
‹‹/ 0'
AltDirectorySeparatorChar
‹‹0 I
+
‹‹J K
meta
‹‹L P
.
‹‹P Q

WSDLFolder
‹‹Q [
+
‹‹\ ]
Path
‹‹^ b
.
‹‹b c'
AltDirectorySeparatorChar
‹‹c |
+
‹‹} ~
wsdlfile‹‹ á
)‹‹á à
;‹‹à â
string
›› 	
modifiedWsdl
››
 
=
›› 
meta
›› 
.
›› *
ModifyWSDLAddRightSchemaPath
›› :
(
››: ;
wsdl
››; ?
)
››? @
;
››@ A
httpContext
‡‡ 
.
‡‡ 
Response
‡‡ 
.
‡‡ 
ContentType
‡‡ #
=
‡‡$ %
$str
‡‡& >
;
‡‡> ?
byte
·· 
[
·· 
]
·· 	
data
··
 
=
·· 
System
·· 
.
·· 
Text
·· 
.
·· 
Encoding
·· %
.
··% &
UTF8
··& *
.
··* +
GetBytes
··+ 3
(
··3 4
modifiedWsdl
··4 @
)
··@ A
;
··A B
await
‚‚ 
httpContext
‚‚	 
.
‚‚ 
Response
‚‚ 
.
‚‚ 
Body
‚‚ "
.
‚‚" #

WriteAsync
‚‚# -
(
‚‚- .
data
‚‚. 2
,
‚‚2 3
$num
‚‚4 5
,
‚‚5 6
data
‚‚7 ;
.
‚‚; <
Length
‚‚< B
)
‚‚B C
;
‚‚C D
}
„„ 
}
‰‰ 
}ÂÂ ñ+
QC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\SoapOptions.cs
	namespace 	
SoapCore
 
{ 
public 
class 
SoapOptions 
{		 
public

 
Type

	 
ServiceType

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
string	 
Path 
{ 
get 
; 
set 
;  
}! "
public 
SoapEncoderOptions	 
[ 
] 
EncoderOptions ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
SoapSerializer	 
SoapSerializer &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool	 
CaseInsensitivePath !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ISoapModelBounder	 
SoapModelBounder +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
Binding	 
Binding 
{ 
get 
; 
set  #
;# $
}% &
public 
int	 
BufferThreshold 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
$num- 1
*2 3
$num4 6
;6 7
public 
long	 
BufferLimit 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool	 
HttpGetEnabled 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
true- 1
;1 2
public 
bool	 
HttpsGetEnabled 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
true. 2
;2 3
public   
bool  	 
OmitXmlDeclaration    
{  ! "
get  # &
;  & '
set  ( +
;  + ,
}  - .
=  / 0
true  1 5
;  5 6
public"" 
bool""	 
	IndentXml"" 
{"" 
get"" 
;"" 
set"" "
;""" #
}""$ %
=""& '
true""( ,
;"", -
public$$ 
XmlNamespaceManager$$	 '
XmlNamespacePrefixOverrides$$ 8
{$$9 :
get$$; >
;$$> ?
set$$@ C
;$$C D
}$$E F
public%% 
WsdlFileOptions%%	 
WsdlFileOptions%% (
{%%) *
get%%+ .
;%%. /
set%%0 3
;%%3 4
}%%5 6
public'' 
static''	 
SoapOptions'' 
FromSoapCoreOptions'' /
<''/ 0
T''0 1
>''1 2
(''2 3
SoapCoreOptions''3 B
opt''C F
)''F G
{(( 
return)) 	
FromSoapCoreOptions))
 
()) 
opt)) !
,))! "
typeof))# )
())) *
T))* +
)))+ ,
))), -
;))- .
}** 
public,, 
static,,	 
SoapOptions,, 
FromSoapCoreOptions,, /
(,,/ 0
SoapCoreOptions,,0 ?
opt,,@ C
,,,C D
Type,,E I
serviceType,,J U
),,U V
{-- 
var.. 
soapOptions.. 
=.. 
new.. 
SoapOptions.. $
{// 
ServiceType00 
=00 
serviceType00 
,00 
Path11 
=11	 

opt11 
.11 
Path11 
,11 
EncoderOptions22 
=22 
opt22 
.22 
EncoderOptions22 '
,22' (
SoapSerializer33 
=33 
opt33 
.33 
SoapSerializer33 '
,33' (
CaseInsensitivePath44 
=44 
opt44 
.44 
CaseInsensitivePath44 1
,441 2
SoapModelBounder55 
=55 
opt55 
.55 
SoapModelBounder55 +
,55+ ,
Binding66 
=66 
opt66 
.66 
Binding66 
,66 
BufferThreshold77 
=77 
opt77 
.77 
BufferThreshold77 )
,77) *
BufferLimit88 
=88 
opt88 
.88 
BufferLimit88 !
,88! "
HttpsGetEnabled99 
=99 
opt99 
.99 
HttpsGetEnabled99 )
,99) *
HttpGetEnabled:: 
=:: 
opt:: 
.:: 
HttpGetEnabled:: '
,::' (
OmitXmlDeclaration;; 
=;; 
opt;; 
.;; 
OmitXmlDeclaration;; /
,;;/ 0
	IndentXml<< 
=<< 
opt<< 
.<< 
	IndentXml<< 
,<< '
XmlNamespacePrefixOverrides== 
===  !
opt==" %
.==% &'
XmlNamespacePrefixOverrides==& A
}>> 
;>> 
return@@ 	
soapOptions@@
 
;@@ 
}AA 
}BB 
}CC …
TC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\SoapSerializer.cs
	namespace 	
SoapCore
 
{ 
public 
enum 
SoapSerializer 
{ 
XmlSerializer 
, "
DataContractSerializer 
} 
} ò	
^C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\TrailingServicePathTuner.cs
	namespace 	
SoapCore
 
{		 
public 
class $
TrailingServicePathTuner &
{ 
public 
virtual	 
void 
ConvertPath !
(! "
HttpContext" -
httpContext. 9
)9 :
{ 
string 	
trailingPath
 
= 
httpContext $
.$ %
Request% ,
., -
Path- 1
.1 2
Value2 7
.7 8
	Substring8 A
(A B
httpContextB M
.M N
RequestN U
.U V
PathV Z
.Z [
Value[ `
.` a
LastIndexOfa l
(l m
$charm p
)p q
)q r
;r s
httpContext 
. 
Request 
. 
Path 
= 
new !

PathString" ,
(, -
trailingPath- 9
)9 :
;: ;
} 
} 
} ¿
SC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\TypesComparer.cs
	namespace 	
SoapCore
 
{ 
internal 	
class
 
TypesComparer 
: 
IEqualityComparer  1
<1 2
Type2 6
>6 7
{ 
private		 	
readonly		
 
Func		 
<		 
Type		 
,		 
string		 $
>		$ %
_getTypeNameFunc		& 6
;		6 7
public 
TypesComparer	 
( 
Func 
< 
Type  
,  !
string" (
>( )
getTypeNameFunc* 9
)9 :
{ 
_getTypeNameFunc 
= 
getTypeNameFunc %
;% &
} 
public 
bool	 
Equals 
( 
Type 
x 
, 
Type !
y" #
)# $
{ 
return 	
_getTypeNameFunc
 
( 
x 
) 
==  
_getTypeNameFunc! 1
(1 2
y2 3
)3 4
;4 5
} 
public 
int	 
GetHashCode 
( 
Type 
obj !
)! "
{ 
return 	
_getTypeNameFunc
 
( 
obj 
) 
.  
GetHashCode  +
(+ ,
), -
;- .
} 
} 
} ‰
[C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\WebServiceWSDLMapping.cs
	namespace 	
SoapCore
 
{ 
public 

class !
WebServiceWSDLMapping &
{ 
public		 
string		 
WsdlFile		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 

WSDLFolder

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
string 
SchemaFolder "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} Ë
UC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\WSDLFileOptions.cs
	namespace 	
SoapCore
 
{ 
public 
class 
WsdlFileOptions 
{ 
public 

Dictionary	 
< 
string 
, !
WebServiceWSDLMapping 1
>1 2!
WebServiceWSDLMapping3 H
{I J
getK N
;N O
setP S
;S T
}U V
public		 
string			 
UrlOverride		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
string

	 
VirtualPath

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string	 
AppPath 
{ 
get 
; 
set "
;" #
}$ %
} 
} óO
UC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\WsMessageFilter.cs
	namespace

 	
SoapCore


 
{ 
public 
class 
WsMessageFilter 
: 
IMessageFilter  .
{ 
private 	
const
 
string 
_passwordTextType (
=) *
$str	+ ç
;
ç é
private 	
readonly
 
string 
	_username #
;# $
private 	
readonly
 
string 
	_password #
;# $
private 	
readonly
 
string $
_authMissingErrorMessage 2
=3 4
$str5 g
;g h
private 	
readonly
 
string $
_authInvalidErrorMessage 2
=3 4
$str	5 à
;
à â
public 
WsMessageFilter	 
( 
string 
username  (
,( )
string* 0
password1 9
)9 :
{ 
	_username 
= 
username 
; 
	_password 
= 
password 
; 
} 
public 
WsMessageFilter	 
( 
string 
username  (
,( )
string* 0
password1 9
,9 :
string; A#
authMissingErrorMessageB Y
,Y Z
string[ a#
authInvalidErrorMessageb y
)y z
{ 
	_username 
= 
username 
; 
	_password 
= 
password 
; $
_authMissingErrorMessage 
= #
authMissingErrorMessage 5
;5 6$
_authInvalidErrorMessage 
= #
authInvalidErrorMessage 5
;5 6
}   
public"" 
void""	 
OnRequestExecuting""  
(""  !
Message""! (
message"") 0
)""0 1
{## 
WsUsernameToken$$ 
wsUsernameToken$$ "
;$$" #
try%% 
{&& 
wsUsernameToken'' 
='' 
GetWsUsernameToken'' (
(''( )
message'') 0
)''0 1
;''1 2
}(( 
catch)) 
())	 

	Exception))
 
))) 
{** 
throw++ 	
new++
 #
AuthenticationException++ %
(++% &$
_authMissingErrorMessage++& >
)++> ?
;++? @
},, 
if.. 
(.. 
!.. #
ValidateWsUsernameToken.. 
(..  
wsUsernameToken..  /
)../ 0
)..0 1
{// 
throw00 	
new00
 &
InvalidCredentialException00 (
(00( )$
_authInvalidErrorMessage00) A
)00A B
;00B C
}11 
}22 
public44 
void44	 
OnResponseExecuting44 !
(44! "
Message44" )
message44* 1
)441 2
{55 
}77 
private99 	
WsUsernameToken99
 
GetWsUsernameToken99 ,
(99, -
Message99- 4
message995 <
)99< =
{:: 
WsUsernameToken;; 
wsUsernameToken;; "
=;;# $
null;;% )
;;;) *
for<< 
(<< 
var<< 
i<< 
=<< 
$num<< 
;<< 
i<< 
<<< 
message<< 
.<< 
Headers<< &
.<<& '
Count<<' ,
;<<, -
i<<. /
++<</ 1
)<<1 2
{== 
if>> 
(>> 
message>> 
.>> 
Headers>> 
[>> 
i>> 
]>> 
.>> 
Name>> 
.>>  
ToLower>>  '
(>>' (
)>>( )
==>>* ,
$str>>- 7
)>>7 8
{?? 
using@@ 

var@@ 
reader@@ 
=@@ 
message@@ 
.@@  
Headers@@  '
.@@' (
GetReaderAtHeader@@( 9
(@@9 :
i@@: ;
)@@; <
;@@< =
readerAA 
.AA 
ReadAA 
(AA 
)AA 
;AA 
varBB 

serializerBB	 
=BB 
newBB 
XmlSerializerBB '
(BB' (
typeofBB( .
(BB. /
WsUsernameTokenBB/ >
)BB> ?
)BB? @
;BB@ A
wsUsernameTokenCC 
=CC 
(CC 
WsUsernameTokenCC '
)CC' (

serializerCC( 2
.CC2 3
DeserializeCC3 >
(CC> ?
readerCC? E
)CCE F
;CCF G
}DD 
}EE 
ifGG 
(GG 
wsUsernameTokenGG 
==GG 
nullGG 
)GG 
{HH 
throwII 	
newII
 
	ExceptionII 
(II 
)II 
;II 
}JJ 
ifLL 
(LL 
wsUsernameTokenLL 
.LL 
NonceLL 
!=LL 
nullLL  $
^LL% &
wsUsernameTokenLL' 6
.LL6 7
CreatedLL7 >
!=LL? A
nullLLB F
)LLF G
{MM 
throwNN 	
newNN
 
	ExceptionNN 
(NN 
)NN 
;NN 
}OO 
returnQQ 	
wsUsernameTokenQQ
 
;QQ 
}RR 
privateTT 	
boolTT
 #
ValidateWsUsernameTokenTT &
(TT& '
WsUsernameTokenTT' 6
wsUsernameTokenTT7 F
)TTF G
{UU 
ifVV 
(VV 
wsUsernameTokenVV 
.VV 
UsernameVV 
!=VV  "
	_usernameVV# ,
)VV, -
{WW 
returnXX 

falseXX 
;XX 
}YY 
var[[ 
isClearText[[ 
=[[ 
wsUsernameToken[[ $
.[[$ %
Password[[% -
?[[- .
.[[. /
Type[[/ 3
==[[4 6
null[[7 ;
||[[< >
wsUsernameToken[[? N
.[[N O
Password[[O W
.[[W X
Type[[X \
==[[] _
_passwordTextType[[` q
;[[q r
if\\ 
(\\ 
isClearText\\ 
)\\ 
{]] 
return^^ 

wsUsernameToken^^ 
.^^ 
Password^^ #
?^^# $
.^^$ %
Value^^% *
==^^+ -
	_password^^. 7
;^^7 8
}__ 
varaa 

nonceArrayaa 
=aa 
wsUsernameTokenaa #
.aa# $
Nonceaa$ )
!=aa* ,
nullaa- 1
?aa2 3
wsUsernameTokenaa4 C
.aaC D
NonceaaD I
:aaJ K
ArrayaaL Q
.aaQ R
EmptyaaR W
<aaW X
byteaaX \
>aa\ ]
(aa] ^
)aa^ _
;aa_ `
varbb 
createdArraybb 
=bb 
wsUsernameTokenbb %
.bb% &
Createdbb& -
!=bb. 0
nullbb1 5
?bb6 7
UTF8bb8 <
.bb< =
GetBytesbb= E
(bbE F
wsUsernameTokenbbF U
.bbU V
CreatedbbV ]
)bb] ^
:bb_ `
Arraybba f
.bbf g
Emptybbg l
<bbl m
bytebbm q
>bbq r
(bbr s
)bbs t
;bbt u
varcc 
passwordArraycc 
=cc 
	_passwordcc  
!=cc! #
nullcc$ (
?cc) *
UTF8cc+ /
.cc/ 0
GetBytescc0 8
(cc8 9
	_passwordcc9 B
)ccB C
:ccD E
ArrayccF K
.ccK L
EmptyccL Q
<ccQ R
byteccR V
>ccV W
(ccW X
)ccX Y
;ccY Z
vardd 
	hashArraydd 
=dd 
newdd 
bytedd 
[dd 

nonceArraydd &
.dd& '
Lengthdd' -
+dd. /
createdArraydd0 <
.dd< =
Lengthdd= C
+ddD E
passwordArrayddF S
.ddS T
LengthddT Z
]ddZ [
;dd[ \
Arrayee 
.ee 	
Copyee	 
(ee 

nonceArrayee 
,ee 
$numee 
,ee 
	hashArrayee &
,ee& '
$numee( )
,ee) *

nonceArrayee+ 5
.ee5 6
Lengthee6 <
)ee< =
;ee= >
Arrayff 
.ff 	
Copyff	 
(ff 
createdArrayff 
,ff 
$numff 
,ff 
	hashArrayff (
,ff( )

nonceArrayff* 4
.ff4 5
Lengthff5 ;
,ff; <
createdArrayff= I
.ffI J
LengthffJ P
)ffP Q
;ffQ R
Arraygg 
.gg 	
Copygg	 
(gg 
passwordArraygg 
,gg 
$numgg 
,gg 
	hashArraygg  )
,gg) *

nonceArraygg+ 5
.gg5 6
Lengthgg6 <
+gg= >
createdArraygg? K
.ggK L
LengthggL R
,ggR S
passwordArrayggT a
.gga b
Lengthggb h
)ggh i
;ggi j
varii 
hashii 
=ii 
SHA1ii 
.ii 
Createii 
(ii 
)ii 
.ii 
ComputeHashii '
(ii' (
	hashArrayii( 1
)ii1 2
;ii2 3
varjj  
serverPasswordDigestjj 
=jj 
ToBase64Stringjj ,
(jj, -
hashjj- 1
)jj1 2
;jj2 3
varll  
clientPasswordDigestll 
=ll 
wsUsernameTokenll -
.ll- .
Passwordll. 6
?ll6 7
.ll7 8
Valuell8 =
;ll= >
returnmm 	 
serverPasswordDigestmm
 
==mm ! 
clientPasswordDigestmm" 6
;mm6 7
}nn 
}oo 
}pp ä
UC:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\WsUsernameToken.cs
	namespace 	
SoapCore
 
{ 
[ 
XmlRoot 	
(	 

$str
 
, 
	Namespace $
=% &
$str' z
)z {
]{ |
public 
class 
WsUsernameToken 
{ 
[		 

XmlElement		 
(		 
$str		 
)		 
]		 
public

 
string

	 
Username

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
[ 

XmlElement 
( 
$str 
) 
] 
public 
PasswordString	 
Password  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 

XmlElement 
( 
$str 
, 
DataType 
=  !
$str" 0
)0 1
]1 2
public 
byte	 
[ 
] 
Nonce 
{ 
get 
; 
set  
;  !
}" #
[ 

XmlElement 
( 
$str 
, 
	Namespace "
=# $
$str% y
)y z
]z {
public 
string	 
Created 
{ 
get 
; 
set "
;" #
}$ %
public 
class	 
PasswordString 
{ 
[ 
XmlText 
] 
public 	
string
 
Value 
{ 
get 
; 
set !
;! "
}# $
[ 
XmlAttribute 
( 
$str 
) 
] 
public 	
string
 
Type 
{ 
get 
; 
set  
;  !
}" #
} 
} 
} õ
]C:\julian\Source\Repos\CC00-RecaudosServicioBanco-NetCore\SoapCore\XmlSerializerExtensions.cs
	namespace 	
SoapCore
 
{ 
public		 
static		 
class		 #
XmlSerializerExtensions		 ,
{

 
public 
static	 
T 
[ 
] 
DeserializeArray $
<$ %
T% &
>& '
(' (
this( ,
XmlSerializer- :

serializer; E
,E F
stringG M
	localnameN W
,W X
stringY _
ns` b
,b c
	XmlReaderd m
	xmlReadern w
)w x
{ 
var 
argument 
= 
new 
List 
< 
T 
> 
( 
) 
;  
while 
(	 

	xmlReader
 
. 
IsStartElement "
(" #
	localname# ,
,, -
ns. 0
)0 1
)1 2
{ 
argument 
. 
Add 
( 
( 
T 
) 

serializer 
. 
Deserialize *
(* +
	xmlReader+ 4
)4 5
)5 6
;6 7
} 
return   	
argument  
 
.   
ToArray   
(   
)   
;   
}!! 
public-- 
static--	 
void-- 
SerializeArray-- #
(--# $
this--$ (
XmlSerializer--) 6

serializer--7 A
,--A B
	XmlWriter--C L
	xmlWriter--M V
,--V W
object--X ^
[--^ _
]--_ `
os--a c
)--c d
{.. 
foreach// 

(// 
var// 
o// 
in// 
os// 
)// 
{00 

serializer11 
.11 
	Serialize11 
(11 
	xmlWriter11 "
,11" #
o11$ %
)11% &
;11& '
}22 
}33 
}44 
}55 