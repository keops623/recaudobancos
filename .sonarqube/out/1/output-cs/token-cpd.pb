�
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
XmlSerializer	{ �
>
� �
(
� �
)
� �
;
� �
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
parameterName	~ �
)
� �
,
� �
parameterNs
� �
)
� �
)
� �
;
� �
} 
} 
} �)
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
}>> �
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
xmlNamespaceManager	~ �
)
� �
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
},, �
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
}"" �
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
} �
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
} �
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
} �
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
xmlNamespaceManager	w �
)
� �
;
� �
} 
} �
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
 �
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
 �
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
} �
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
} �
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
 �
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
} �
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
}		 �p
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
)	 �
:
� �
base
� �
(
� �

isBuffered
� �
)
� �
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

_exception	00v �
.
00� �
Message
00� �
)
00� �
;
00� �
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

_exception	QQv �
.
QQ� �
Message
QQ� �
)
QQ� �
;
QQ� �
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
�� 

null
�� 
;
�� 
}
�� 
using
�� 
(
��	 

var
��
 
ms
�� 
=
�� 
new
�� 
MemoryStream
�� #
(
��# $
)
��$ %
)
��% &
{
�� 
var
�� 

serializer
�� 
=
�� 
new
�� $
DataContractSerializer
�� /
(
��/ 0
detailObject
��0 <
.
��< =
GetType
��= D
(
��D E
)
��E F
)
��F G
;
��G H

serializer
�� 
.
�� 
WriteObject
�� 
(
�� 
ms
�� 
,
�� 
detailObject
�� +
)
��+ ,
;
��, -
ms
�� 
.
�� 
Position
�� 
=
�� 
$num
�� 
;
�� 
var
�� 
doc
�� 
=
�� 
new
�� 
XmlDocument
�� 
(
�� 
)
�� 
;
��  
doc
�� 
.
�� 
Load
�� 
(
�� 
ms
�� 
)
�� 
;
�� 
return
�� 

doc
�� 
.
�� 
DocumentElement
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
object
��
  
ExtractFaultDetail
�� #
(
��# $
	Exception
��$ -
	exception
��. 7
)
��7 8
{
�� 
try
�� 
{
�� 
var
�� 
currentException
�� 
=
�� 
	exception
�� $
;
��$ %
while
�� 	
(
��
 
currentException
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
var
�� 
type
��	 
=
�� 
currentException
��  
.
��  !
GetType
��! (
(
��( )
)
��) *
;
��* +
if
�� 
(
�� 	
type
��	 
.
�� 
IsGenericType
�� 
&&
�� 
type
�� #
.
��# $&
GetGenericTypeDefinition
��$ <
(
��< =
)
��= >
==
��? A
typeof
��B H
(
��H I
FaultException
��I W
<
��W X
>
��X Y
)
��Y Z
)
��Z [
{
�� 
var
�� 	

detailInfo
��
 
=
�� 
type
�� 
.
�� 
GetProperty
�� '
(
��' (
$str
��( 0
)
��0 1
;
��1 2
var
�� 	
value
��
 
=
�� 

detailInfo
�� 
?
�� 
.
�� 
GetValue
�� &
(
��& '
currentException
��' 7
)
��7 8
;
��8 9
if
�� 
(
��	 

value
��
 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
value
�� 
;
�� 
}
�� 
}
�� 
currentException
�� 
=
�� 
currentException
�� (
.
��( )
InnerException
��) 7
;
��7 8
}
�� 
}
�� 
catch
�� 
{
�� 
return
�� 

null
�� 
;
�� 
}
�� 
return
�� 	
null
��
 
;
�� 
}
�� 
}
�� 
}�� �A
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
}{{ ��
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
$str	eeF �
)
ee� �
;
ee� �
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
�� #
ThrowIfNotInitialized
�� 
(
�� 
)
�� 
;
�� 
EncodeCharacters
�� 
(
�� 
flushEncoder
��  
:
��  !
true
��" &
)
��& '
;
��' (
CommitBytes
�� 
(
�� 
)
�� 
;
�� 
}
�� 
public
�� 
override
��	 
Task
�� 

FlushAsync
�� !
(
��! "
)
��" #
{
�� 
try
�� 
{
�� 
Flush
�� 	
(
��	 

)
��
 
;
�� 
return
�� 

Task
�� 
.
�� 
CompletedTask
�� 
;
�� 
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
�� 
return
�� 

Task
�� 
.
�� 
FromException
�� 
(
�� 
ex
��  
)
��  !
;
��! "
}
�� 
}
�� 
public
�� 
override
��	 
void
�� 
Write
�� 
(
�� 
char
�� !
value
��" '
)
��' (
{
�� #
ThrowIfNotInitialized
�� 
(
�� 
)
�� 
;
�� 
_charBuffer
�� 
[
�� !
_charBufferPosition
�� "
++
��" $
]
��$ %
=
��& '
value
��( -
;
��- .*
EncodeCharactersIfBufferFull
�� 
(
��  
)
��  !
;
��! "
}
�� 
public
�� 
override
��	 
void
�� 
Write
�� 
(
�� 
string
�� #
value
��$ )
)
��) *
{
�� 
if
�� 
(
�� 
value
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 

;
��
 
}
�� 
Write
�� 
(
�� 	
value
��	 
.
�� 
AsSpan
�� 
(
�� 
)
�� 
)
�� 
;
�� 
}
�� 
public
�� 
override
��	 
void
�� 
Write
�� 
(
�� 
char
�� !
[
��! "
]
��" #
buffer
��$ *
,
��* +
int
��, /
index
��0 5
,
��5 6
int
��7 :
count
��; @
)
��@ A
=>
��B D
Write
��E J
(
��J K
Requires
��K S
.
��S T
NotNull
��T [
(
��[ \
buffer
��\ b
,
��b c
nameof
��d j
(
��j k
buffer
��k q
)
��q r
)
��r s
.
��s t
AsSpan
��t z
(
��z {
index��{ �
,��� �
count��� �
)��� �
)��� �
;��� �
public
�� 
override
��	 
void
�� 
Write
�� 
(
�� 
ReadOnlySpan
�� )
<
��) *
char
��* .
>
��. /
buffer
��0 6
)
��6 7
{
�� #
ThrowIfNotInitialized
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
buffer
�� 
.
�� 
Length
�� 
<=
�� 
CharBufferSlack
�� '
)
��' (
{
�� 
buffer
�� 

.
��
 
CopyTo
�� 
(
�� 
_charBuffer
�� 
.
�� 
AsSpan
�� $
(
��$ %!
_charBufferPosition
��% 8
)
��8 9
)
��9 :
;
��: ;!
_charBufferPosition
�� 
+=
�� 
buffer
�� !
.
��! "
Length
��" (
;
��( )*
EncodeCharactersIfBufferFull
��  
(
��  !
)
��! "
;
��" #
}
�� 
else
�� 
{
�� 
int
�� 
charsCopied
�� 
=
�� 
$num
�� 
;
�� 
while
�� 	
(
��
 
charsCopied
�� 
<
�� 
buffer
�� 
.
��  
Length
��  &
)
��& '
{
�� 
int
�� 
charsToCopy
��	 
=
�� 
Math
�� 
.
�� 
Min
�� 
(
��  
buffer
��  &
.
��& '
Length
��' -
-
��. /
charsCopied
��0 ;
,
��; <
CharBufferSlack
��= L
)
��L M
;
��M N
buffer
�� 
.
�� 
Slice
�� 
(
�� 
charsCopied
�� 
,
�� 
charsToCopy
�� *
)
��* +
.
��+ ,
CopyTo
��, 2
(
��2 3
_charBuffer
��3 >
.
��> ?
AsSpan
��? E
(
��E F!
_charBufferPosition
��F Y
)
��Y Z
)
��Z [
;
��[ \
charsCopied
�� 
+=
�� 
charsToCopy
�� 
;
��  !
_charBufferPosition
�� 
+=
�� 
charsToCopy
�� '
;
��' (*
EncodeCharactersIfBufferFull
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 
}
�� 
public
�� 
override
��	 
void
�� 
	WriteLine
��  
(
��  !
ReadOnlySpan
��! -
<
��- .
char
��. 2
>
��2 3
buffer
��4 :
)
��: ;
{
�� 
Write
�� 
(
�� 	
buffer
��	 
)
�� 
;
�� 
	WriteLine
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 *
EncodeCharactersIfBufferFull
�� +
(
��+ ,
)
��, -
{
�� 
if
�� 
(
�� !
_charBufferPosition
�� 
==
�� 
_charBuffer
�� )
.
��) *
Length
��* 0
)
��0 1
{
�� 
EncodeCharacters
�� 
(
�� 
flushEncoder
�� !
:
��! "
false
��# (
)
��( )
;
��) *
}
�� 
}
�� 
private
�� 	
void
��
 
EncodeCharacters
�� 
(
��  
bool
��  $
flushEncoder
��% 1
)
��1 2
{
�� 
if
�� 
(
�� !
_charBufferPosition
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
int
�� 
maxBytesLength
�� 
=
�� 
Encoding
�� !
.
��! "
GetMaxByteCount
��" 1
(
��1 2!
_charBufferPosition
��2 E
)
��E F
;
��F G
if
�� 
(
�� 
!
�� 	
_preambleWritten
��	 
)
�� 
{
�� 
maxBytesLength
�� 
+=
�� 
_encodingPreamble
�� (
.
��( )
Length
��) /
;
��/ 0
}
�� 
if
�� 
(
�� 
_memory
�� 
.
�� 
Length
�� 
-
�� 
_memoryPosition
�� (
<
��) *
maxBytesLength
��+ 9
)
��9 :
{
�� 
CommitBytes
�� 
(
�� 
)
�� 
;
�� 
_memory
�� 
=
�� 
_bufferWriter
�� 
.
�� 
	GetMemory
�� &
(
��& '
maxBytesLength
��' 5
)
��5 6
;
��6 7
}
�� 
if
�� 
(
�� 
!
�� 	
_preambleWritten
��	 
)
�� 
{
�� 
_encodingPreamble
�� 
.
�� 
Span
�� 
.
�� 
CopyTo
�� "
(
��" #
_memory
��# *
.
��* +
Span
��+ /
.
��/ 0
Slice
��0 5
(
��5 6
_memoryPosition
��6 E
)
��E F
)
��F G
;
��G H
_memoryPosition
�� 
+=
�� 
_encodingPreamble
�� )
.
��) *
Length
��* 0
;
��0 1
_preambleWritten
�� 
=
�� 
true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
MemoryMarshal
�� 
.
�� 
TryGetArray
�� !
(
��! "
_memory
��" )
,
��) *
out
��+ .
ArraySegment
��/ ;
<
��; <
byte
��< @
>
��@ A
segment
��B I
)
��I J
)
��J K
{
�� 
_memoryPosition
�� 
+=
�� 
_encoder
��  
.
��  !
GetBytes
��! )
(
��) *
_charBuffer
��* 5
,
��5 6
$num
��7 8
,
��8 9!
_charBufferPosition
��: M
,
��M N
segment
��O V
.
��V W
Array
��W \
,
��\ ]
segment
��^ e
.
��e f
Offset
��f l
+
��m n
_memoryPosition
��o ~
,
��~ 
flush��� �
:��� �
flushEncoder��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
byte
�� 	
[
��	 

]
��
 
rentedByteBuffer
�� 
=
�� 
	ArrayPool
�� (
<
��( )
byte
��) -
>
��- .
.
��. /
Shared
��/ 5
.
��5 6
Rent
��6 :
(
��: ;
maxBytesLength
��; I
)
��I J
;
��J K
try
�� 
{
�� 
int
�� 	
bytesWritten
��
 
=
�� 
_encoder
�� !
.
��! "
GetBytes
��" *
(
��* +
_charBuffer
��+ 6
,
��6 7
$num
��8 9
,
��9 :!
_charBufferPosition
��; N
,
��N O
rentedByteBuffer
��P `
,
��` a
$num
��b c
,
��c d
flush
��e j
:
��j k
flushEncoder
��l x
)
��x y
;
��y z
rentedByteBuffer
�� 
.
�� 
CopyTo
�� 
(
�� 
_memory
�� %
.
��% &
Span
��& *
.
��* +
Slice
��+ 0
(
��0 1
_memoryPosition
��1 @
)
��@ A
)
��A B
;
��B C
_memoryPosition
�� 
+=
�� 
bytesWritten
�� %
;
��% &
}
�� 
finally
�� 
{
�� 
	ArrayPool
�� 
<
�� 
byte
�� 
>
�� 
.
�� 
Shared
�� 
.
�� 
Return
�� #
(
��# $
rentedByteBuffer
��$ 4
)
��4 5
;
��5 6
}
�� 
}
�� !
_charBufferPosition
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
_memoryPosition
�� 
==
�� 
_memory
�� "
.
��" #
Length
��# )
)
��) *
{
�� 
Flush
�� 

(
��
 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
private
�� 	
void
��
 
CommitBytes
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
_memoryPosition
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
_bufferWriter
�� 
.
�� 
Advance
�� 
(
�� 
_memoryPosition
�� )
)
��) *
;
��* +
_memoryPosition
�� 
=
�� 
$num
�� 
;
�� 
_memory
�� 
=
�� 
default
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
void
��
 #
ThrowIfNotInitialized
�� $
(
��$ %
)
��% &
{
�� 
if
�� 
(
�� 
_bufferWriter
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 '
InvalidOperationException
�� '
(
��' (
$str
��( /
+
��0 1
nameof
��2 8
(
��8 9

Initialize
��9 C
)
��C D
+
��E F
$str
��G P
)
��P Q
;
��Q R
}
�� 
}
�� 
}
�� 
}�� £
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
�� 
override
��	 
void
�� 
	SetLength
��  
(
��  !
long
��! %
value
��& +
)
��+ ,
=>
��- /
throw
��0 5
ThrowDisposedOr
��6 E
(
��E F
new
��F I#
NotSupportedException
��J _
(
��_ `
)
��` a
)
��a b
;
��b c
public
�� 
override
��	 
Task
�� 

WriteAsync
�� !
(
��! "
byte
��" &
[
��& '
]
��' (
buffer
��) /
,
��/ 0
int
��1 4
offset
��5 ;
,
��; <
int
��= @
count
��A F
,
��F G
CancellationToken
��H Y
cancellationToken
��Z k
)
��k l
{
�� 
throw
�� 
new
��	 %
NotImplementedException
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
public
�� 
override
��	 
async
�� 
Task
�� 
<
�� 
int
��  
>
��  !
	ReadAsync
��" +
(
��+ ,
byte
��, 0
[
��0 1
]
��1 2
buffer
��3 9
,
��9 :
int
��; >
offset
��? E
,
��E F
int
��G J
count
��K P
,
��P Q
CancellationToken
��R c
cancellationToken
��d u
)
��u v
{
�� 
Requires
�� 
.
�� 
NotNull
�� 
(
�� 
buffer
�� 
,
�� 
nameof
�� "
(
��" #
buffer
��# )
)
��) *
)
��* +
;
��+ ,
Requires
�� 
.
�� 
Range
�� 
(
�� 
offset
�� 
+
�� 
count
��  
<=
��! #
buffer
��$ *
.
��* +
Length
��+ 1
,
��1 2
nameof
��3 9
(
��9 :
count
��: ?
)
��? @
)
��@ A
;
��A B
Requires
�� 
.
�� 
Range
�� 
(
�� 
offset
�� 
>=
�� 
$num
�� 
,
�� 
nameof
�� %
(
��% &
offset
��& ,
)
��, -
)
��- .
;
��. /
Requires
�� 
.
�� 
Range
�� 
(
�� 
count
�� 
>
�� 
$num
�� 
,
�� 
nameof
�� #
(
��# $
count
��$ )
)
��) *
)
��* +
;
��+ ,
Verify
�� 	
.
��	 

NotDisposed
��
 
(
�� 
this
�� 
)
�� 
;
�� 
if
�� 
(
�� 
_reader
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
NotSupportedException
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
if
�� 
(
�� 
_readingCompleted
�� 
)
�� 
{
�� 
return
�� 

$num
�� 
;
�� 
}
�� 

ReadResult
�� 

readResult
�� 
=
�� 
await
��  
_reader
��! (
.
��( )
	ReadAsync
��) 2
(
��2 3
cancellationToken
��3 D
)
��D E
.
��E F
ConfigureAwait
��F T
(
��T U
false
��U Z
)
��Z [
;
��[ \
return
�� 	

ReadHelper
��
 
(
�� 
buffer
�� 
.
�� 
AsSpan
�� "
(
��" #
offset
��# )
,
��) *
count
��+ 0
)
��0 1
,
��1 2

readResult
��3 =
)
��= >
;
��> ?
}
�� 
public
�� 
override
��	 
async
�� 
	ValueTask
�� !
<
��! "
int
��" %
>
��% &
	ReadAsync
��' 0
(
��0 1
Memory
��1 7
<
��7 8
byte
��8 <
>
��< =
buffer
��> D
,
��D E
CancellationToken
��F W
cancellationToken
��X i
=
��j k
default
��l s
)
��s t
{
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� 1
(
��1 2
)
��2 3
;
��3 4
Verify
�� 	
.
��	 

NotDisposed
��
 
(
�� 
this
�� 
)
�� 
;
�� 
if
�� 
(
�� 
_reader
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
NotSupportedException
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
if
�� 
(
�� 
_readingCompleted
�� 
)
�� 
{
�� 
return
�� 

$num
�� 
;
�� 
}
�� 

ReadResult
�� 

readResult
�� 
=
�� 
await
��  
_reader
��! (
.
��( )
	ReadAsync
��) 2
(
��2 3
cancellationToken
��3 D
)
��D E
.
��E F
ConfigureAwait
��F T
(
��T U
false
��U Z
)
��Z [
;
��[ \
return
�� 	

ReadHelper
��
 
(
�� 
buffer
�� 
.
�� 
Span
��  
,
��  !

readResult
��" ,
)
��, -
;
��- .
}
�� 
public
�� 
override
��	 
int
�� 
Read
�� 
(
�� 
Span
�� 
<
��  
byte
��  $
>
��$ %
buffer
��& ,
)
��, -
{
�� 
Verify
�� 	
.
��	 

NotDisposed
��
 
(
�� 
this
�� 
)
�� 
;
�� 
if
�� 
(
�� 
_reader
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
NotSupportedException
�� #
(
��# $
)
��$ %
;
��% &
}
�� 

ReadResult
�� 

readResult
�� 
=
�� 
_reader
�� "
.
��" #
	ReadAsync
��# ,
(
��, -
)
��- .
.
��. /

GetAwaiter
��/ 9
(
��9 :
)
��: ;
.
��; <
	GetResult
��< E
(
��E F
)
��F G
;
��G H
return
�� 	

ReadHelper
��
 
(
�� 
buffer
�� 
,
�� 

readResult
�� '
)
��' (
;
��( )
}
�� 
public
�� 
override
��	 
	ValueTask
�� 

WriteAsync
�� &
(
��& '
ReadOnlyMemory
��' 5
<
��5 6
byte
��6 :
>
��: ;
buffer
��< B
,
��B C
CancellationToken
��D U
cancellationToken
��V g
=
��h i
default
��j q
)
��q r
{
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� 1
(
��1 2
)
��2 3
;
��3 4
Verify
�� 	
.
��	 

NotDisposed
��
 
(
�� 
this
�� 
)
�� 
;
�� 
if
�� 
(
�� 
_writer
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
NotSupportedException
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
_writer
�� 

.
��
 
Write
�� 
(
�� 
buffer
�� 
.
�� 
Span
�� 
)
�� 
;
�� 
return
�� 	
default
��
 
;
�� 
}
�� 
public
�� 
override
��	 
void
�� 
Write
�� 
(
�� 
ReadOnlySpan
�� )
<
��) *
byte
��* .
>
��. /
buffer
��0 6
)
��6 7
{
�� 
Verify
�� 	
.
��	 

NotDisposed
��
 
(
�� 
this
�� 
)
�� 
;
�� 
if
�� 
(
�� 
_writer
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
NotSupportedException
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
_writer
�� 

.
��
 
Write
�� 
(
�� 
buffer
�� 
)
�� 
;
�� 
}
�� 
public
�� 
override
��	 
void
�� 
Flush
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
_writer
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
NotSupportedException
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
_writer
�� 

.
��
 

FlushAsync
�� 
(
�� 
)
�� 
.
�� 

GetAwaiter
�� "
(
��" #
)
��# $
.
��$ %
	GetResult
��% .
(
��. /
)
��/ 0
;
��0 1
}
�� 
public
�� 
override
��	 
int
�� 
Read
�� 
(
�� 
byte
�� 
[
��  
]
��  !
buffer
��" (
,
��( )
int
��* -
offset
��. 4
,
��4 5
int
��6 9
count
��: ?
)
��? @
=>
��A C
	ReadAsync
��D M
(
��M N
buffer
��N T
,
��T U
offset
��V \
,
��\ ]
count
��^ c
)
��c d
.
��d e

GetAwaiter
��e o
(
��o p
)
��p q
.
��q r
	GetResult
��r {
(
��{ |
)
��| }
;
��} ~
public
�� 
override
��	 
void
�� 
Write
�� 
(
�� 
byte
�� !
[
��! "
]
��" #
buffer
��$ *
,
��* +
int
��, /
offset
��0 6
,
��6 7
int
��8 ;
count
��< A
)
��A B
=>
��C E

WriteAsync
��F P
(
��P Q
buffer
��Q W
,
��W X
offset
��Y _
,
��_ `
count
��a f
)
��f g
.
��g h

GetAwaiter
��h r
(
��r s
)
��s t
.
��t u
	GetResult
��u ~
(
��~ 
)�� �
;��� �
	protected
�� 
override
�� 
void
�� 
Dispose
�� !
(
��! "
bool
��" &
	disposing
��' 0
)
��0 1
{
�� 

IsDisposed
�� 
=
�� 
true
�� 
;
�� 
_reader
�� 

?
��
 
.
�� 
CancelPendingRead
�� 
(
�� 
)
�� 
;
��  
_writer
�� 

?
��
 
.
��  
CancelPendingFlush
�� 
(
�� 
)
��  
;
��  !
if
�� 
(
�� 
	_ownsPipe
�� 
)
�� 
{
�� 
_reader
�� 
?
�� 
.
�� 
Complete
�� 
(
�� 
)
�� 
;
�� 
_writer
�� 
?
�� 
.
�� 
Complete
�� 
(
�� 
)
�� 
;
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
T
��
 !
ReturnIfNotDisposed
�� 
<
��  
T
��  !
>
��! "
(
��" #
T
��# $
value
��% *
)
��* +
{
�� 
Verify
�� 	
.
��	 

NotDisposed
��
 
(
�� 
this
�� 
)
�� 
;
�� 
return
�� 	
value
��
 
;
�� 
}
�� 
private
�� 	
	Exception
��
 
ThrowDisposedOr
�� #
(
��# $
	Exception
��$ -
ex
��. 0
)
��0 1
{
�� 
Verify
�� 	
.
��	 

NotDisposed
��
 
(
�� 
this
�� 
)
�� 
;
�� 
throw
�� 
ex
��	 
;
�� 
}
�� 
private
�� 	
int
��
 

ReadHelper
�� 
(
�� 
Span
�� 
<
�� 
byte
�� "
>
��" #
buffer
��$ *
,
��* +

ReadResult
��, 6

readResult
��7 A
)
��A B
{
�� 
if
�� 
(
�� 

readResult
�� 
.
�� 

IsCanceled
�� 
&&
�� 

IsDisposed
��  *
)
��* +
{
�� 
return
�� 

$num
�� 
;
�� 
}
�� 
long
�� 
bytesToCopyCount
�� 
=
�� 
Math
�� 
.
��  
Min
��  #
(
��# $
buffer
��$ *
.
��* +
Length
��+ 1
,
��1 2

readResult
��3 =
.
��= >
Buffer
��> D
.
��D E
Length
��E K
)
��K L
;
��L M
ReadOnlySequence
�� 
<
�� 
byte
�� 
>
�� 
slice
�� 
=
��  !

readResult
��" ,
.
��, -
Buffer
��- 3
.
��3 4
Slice
��4 9
(
��9 :
$num
��: ;
,
��; <
bytesToCopyCount
��= M
)
��M N
;
��N O
var
�� 
isCompleted
�� 
=
�� 

readResult
�� 
.
��  
IsCompleted
��  +
&&
��, .
slice
��/ 4
.
��4 5
End
��5 8
.
��8 9
Equals
��9 ?
(
��? @

readResult
��@ J
.
��J K
Buffer
��K Q
.
��Q R
End
��R U
)
��U V
;
��V W
slice
�� 
.
�� 	
CopyTo
��	 
(
�� 
buffer
�� 
)
�� 
;
�� 
_reader
�� 

!
��
 
.
�� 
	AdvanceTo
�� 
(
�� 
slice
�� 
.
�� 
End
�� 
)
��  
;
��  !

readResult
�� 
.
�� !
ScrubAfterAdvanceTo
�� !
(
��! "
)
��" #
;
��# $
slice
�� 
=
��	 

default
�� 
;
�� 
if
�� 
(
�� 
isCompleted
�� 
)
�� 
{
�� 
if
�� 
(
�� 
	_ownsPipe
�� 
)
�� 
{
�� 
_reader
�� 
.
�� 
Complete
�� 
(
�� 
)
�� 
;
�� 
}
�� 
_readingCompleted
�� 
=
�� 
true
�� 
;
�� 
}
�� 
return
�� 	
(
��
 
int
�� 
)
�� 
bytesToCopyCount
�� 
;
��  
}
�� 
}
�� 
}�� �
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

IsCanceled	~ �
,
� �

readResult
� �
.
� �
IsCompleted
� �
)
� �
;
� �
} 
}		 ��
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
omitXmlDeclaration	  s �
,
  � �
bool
  � �
	indentXml
  � �
)
  � �
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
�� 
reader
�� 
=
�� )
_supportXmlDictionaryReader
�� 1
?
��2 3!
XmlDictionaryReader
�� 
.
�� 
CreateTextReader
�� )
(
��) *
stream
��* 0
,
��0 1
_writeEncoding
��2 @
,
��@ A
ReaderQuotas
��B N
,
��N O
dictionaryReader
��P `
=>
��a c
{
��d e
}
��f g
)
��g h
:
��i j
	XmlReader
�� 
.
�� 
Create
�� 
(
�� 
stream
�� 
,
�� 
new
��  
XmlReaderSettings
��! 2
(
��2 3
)
��3 4
)
��4 5
;
��5 6
Message
�� 

message
�� 
=
�� 
Message
�� 
.
�� 
CreateMessage
�� *
(
��* +
reader
��+ 1
,
��1 2
maxSizeOfHeaders
��3 C
,
��C D
MessageVersion
��E S
)
��S T
;
��T U
return
�� 	
Task
��
 
.
�� 

FromResult
�� 
(
�� 
message
�� !
)
��! "
;
��" #
}
�� 
public
�� 
virtual
��	 
async
�� 
Task
�� 
WriteMessageAsync
�� -
(
��- .
Message
��. 5
message
��6 =
,
��= >

PipeWriter
��? I

pipeWriter
��J T
)
��T U
{
�� 
if
�� 
(
�� 
message
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
ArgumentNullException
�� #
(
��# $
nameof
��$ *
(
��* +
message
��+ 2
)
��2 3
)
��3 4
;
��4 5
}
�� 
if
�� 
(
�� 

pipeWriter
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
ArgumentNullException
�� #
(
��# $
nameof
��$ *
(
��* +

pipeWriter
��+ 5
)
��5 6
)
��6 7
;
��7 8
}
�� -
ThrowIfMismatchedMessageVersion
�� "
(
��" #
message
��# *
)
��* +
;
��+ ,
using
�� 
var
��	 
bufferTextWriter
�� 
=
�� 
new
��  #
BufferTextWriter
��$ 4
(
��4 5

pipeWriter
��5 ?
,
��? @
_writeEncoding
��A O
)
��O P
;
��P Q
using
�� 
var
��	 
xmlTextWriter
�� 
=
�� 
	XmlWriter
�� &
.
��& '
Create
��' -
(
��- .
bufferTextWriter
��. >
,
��> ?
new
��@ C
XmlWriterSettings
��D U
{
��  
OmitXmlDeclaration
�� 
=
�� #
_optimizeWriteForUtf8
�� .
&&
��/ 1!
_omitXmlDeclaration
��2 E
,
��E F
Indent
�� 

=
�� 

_indentXml
�� 
,
�� 
Encoding
�� 
=
�� 
_writeEncoding
�� 
}
�� 
)
�� 
;
�� 
var
�� 
	xmlWriter
�� 
=
�� !
XmlDictionaryWriter
�� &
.
��& '$
CreateDictionaryWriter
��' =
(
��= >
xmlTextWriter
��> K
)
��K L
;
��L M
WriteXmlCore
�� 
(
�� 
message
�� 
,
�� 
	xmlWriter
�� "
)
��" #
;
��# $
await
�� 

pipeWriter
��	 
.
�� 

FlushAsync
�� 
(
�� 
)
��  
;
��  !
}
�� 
public
�� 
virtual
��	 
Task
�� 
WriteMessageAsync
�� '
(
��' (
Message
��( /
message
��0 7
,
��7 8
Stream
��9 ?
stream
��@ F
)
��F G
{
�� 
if
�� 
(
�� 
message
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
ArgumentNullException
�� #
(
��# $
nameof
��$ *
(
��* +
message
��+ 2
)
��2 3
)
��3 4
;
��4 5
}
�� 
if
�� 
(
�� 
stream
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
ArgumentNullException
�� #
(
��# $
nameof
��$ *
(
��* +
stream
��+ 1
)
��1 2
)
��2 3
;
��3 4
}
�� -
ThrowIfMismatchedMessageVersion
�� "
(
��" #
message
��# *
)
��* +
;
��+ ,
using
�� 
var
��	 
xmlTextWriter
�� 
=
�� 
	XmlWriter
�� &
.
��& '
Create
��' -
(
��- .
stream
��. 4
,
��4 5
new
��6 9
XmlWriterSettings
��: K
{
��  
OmitXmlDeclaration
�� 
=
�� #
_optimizeWriteForUtf8
�� .
&&
��/ 1!
_omitXmlDeclaration
��2 E
,
��E F
Indent
�� 

=
�� 

_indentXml
�� 
,
�� 
Encoding
�� 
=
�� 
_writeEncoding
�� 
,
�� 
CloseOutput
�� 
=
�� 
false
�� 
}
�� 
)
�� 
;
�� 
var
�� 
	xmlWriter
�� 
=
�� !
XmlDictionaryWriter
�� &
.
��& '$
CreateDictionaryWriter
��' =
(
��= >
xmlTextWriter
��> K
)
��K L
;
��L M
WriteXmlCore
�� 
(
�� 
message
�� 
,
�� 
	xmlWriter
�� "
)
��" #
;
��# $
return
�� 	
Task
��
 
.
�� 
CompletedTask
�� 
;
�� 
}
�� 
internal
�� 

static
�� 
string
�� 
GetMediaType
�� %
(
��% &
MessageVersion
��& 4
version
��5 <
)
��< =
{
�� 
string
�� 	
	mediaType
��
 
;
�� 
if
�� 
(
�� 
version
�� 
.
�� 
Envelope
�� 
==
�� 
EnvelopeVersion
�� *
.
��* +
Soap12
��+ 1
)
��1 2
{
�� 
	mediaType
�� 
=
�� 
Soap12MediaType
�� 
;
��  
}
�� 
else
�� 
if
�� 

(
�� 
version
�� 
.
�� 
Envelope
�� 
==
�� 
EnvelopeVersion
��  /
.
��/ 0
Soap11
��0 6
)
��6 7
{
�� 
	mediaType
�� 
=
�� 
Soap11MediaType
�� 
;
��  
}
�� 
else
�� 
if
�� 

(
�� 
version
�� 
.
�� 
Envelope
�� 
==
�� 
EnvelopeVersion
��  /
.
��/ 0
None
��0 4
)
��4 5
{
�� 
	mediaType
�� 
=
�� 
XmlMediaType
�� 
;
�� 
}
�� 
else
�� 
{
�� 
throw
�� 	
new
��
 '
InvalidOperationException
�� '
(
��' (
$"
��( * 
Envelope Version '
��* <
{
��< =
version
��= D
.
��D E
Envelope
��E M
}
��M N!
' is not supported.
��N a
"
��a b
)
��b c
;
��c d
}
�� 
return
�� 	
	mediaType
��
 
;
�� 
}
�� 
internal
�� 

static
�� 
string
�� 
GetContentType
�� '
(
��' (
string
��( .
	mediaType
��/ 8
,
��8 9
string
��: @
charSet
��A H
)
��H I
{
�� 
return
�� 	
string
��
 
.
�� 
Format
�� 
(
�� 
CultureInfo
�� #
.
��# $
InvariantCulture
��$ 4
,
��4 5
$str
��6 H
,
��H I
	mediaType
��J S
,
��S T
charSet
��U \
)
��\ ]
;
��] ^
}
�� 
internal
�� 

bool
�� $
IsContentTypeSupported
�� &
(
��& '
string
��' -
contentType
��. 9
,
��9 :
string
��; A"
supportedContentType
��B V
,
��V W
string
��X ^ 
supportedMediaType
��_ q
)
��q r
{
�� 
if
�� 
(
�� "
supportedContentType
�� 
==
�� 
contentType
�� *
)
��* +
{
�� 
return
�� 

true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
contentType
�� 
.
�� 
Length
�� 
>
�� "
supportedContentType
�� 0
.
��0 1
Length
��1 7
&&
��8 :
contentType
�� 
.
�� 

StartsWith
�� 
(
�� "
supportedContentType
�� /
,
��/ 0
StringComparison
��1 A
.
��A B
Ordinal
��B I
)
��I J
&&
��K M
contentType
�� 
[
�� "
supportedContentType
�� $
.
��$ %
Length
��% +
]
��+ ,
==
��- /
$char
��0 3
)
��3 4
{
�� 
return
�� 

true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
contentType
�� 
.
�� 

StartsWith
�� 
(
�� "
supportedContentType
�� 2
,
��2 3
StringComparison
��4 D
.
��D E
OrdinalIgnoreCase
��E V
)
��V W
)
��W X
{
�� 
if
�� 
(
�� 
contentType
�� 
.
�� 
Length
�� 
==
�� "
supportedContentType
�� 2
.
��2 3
Length
��3 9
)
��9 :
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
else
�� 
if
��	 
(
�� 
contentType
�� 
.
�� 
Length
�� 
>
��  !"
supportedContentType
��" 6
.
��6 7
Length
��7 =
)
��= >
{
�� 
char
�� 	
ch
��
 
=
�� 
contentType
�� 
[
�� "
supportedContentType
�� /
.
��/ 0
Length
��0 6
]
��6 7
;
��7 8
if
�� 
(
�� 	
ch
��	 
==
�� 
$char
�� 
)
�� 
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
int
�� 
i
��	 

=
�� "
supportedContentType
�� !
.
��! "
Length
��" (
;
��( )
if
�� 
(
�� 	
ch
��	 
==
�� 
$char
�� 
&&
�� 
contentType
�� "
.
��" #
Length
��# )
>
��* +"
supportedContentType
��, @
.
��@ A
Length
��A G
+
��H I
$num
��J K
&&
��L N
contentType
��O Z
[
��Z [
i
��[ \
+
��] ^
$num
��_ `
]
��` a
==
��b d
$char
��e i
)
��i j
{
�� 
i
�� 
+=
�� 

$num
�� 
;
�� 
ch
�� 
=
��	 

contentType
�� 
[
�� 
i
�� 
]
�� 
;
�� 
}
�� 
if
�� 
(
�� 	
ch
��	 
==
�� 
$char
�� 
||
�� 
ch
�� 
==
�� 
$char
��  
)
��  !
{
�� 
i
�� 
++
�� 	
;
��	 

while
�� 
(
�� 
i
�� 
<
�� 
contentType
�� 
.
�� 
Length
�� #
)
��# $
{
�� 
ch
�� 	
=
��
 
contentType
�� 
[
�� 
i
�� 
]
�� 
;
�� 
if
�� 	
(
��
 
ch
�� 
!=
�� 
$char
�� 
&&
�� 
ch
�� 
!=
�� 
$char
�� "
)
��" #
{
�� 
break
�� 
;
�� 
}
�� 
++
�� 	
i
��	 

;
��
 
}
�� 
}
�� 
if
�� 
(
�� 	
ch
��	 
==
�� 
$char
�� 
||
�� 
i
�� 
==
�� 
contentType
�� &
.
��& '
Length
��' -
)
��- .
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
}
�� 
}
�� 
try
�� 
{
�� "
MediaTypeHeaderValue
�� 
parsedContentType
�� *
=
��+ ,"
MediaTypeHeaderValue
��- A
.
��A B
Parse
��B G
(
��G H
contentType
��H S
)
��S T
;
��T U
if
�� 
(
��  
supportedMediaType
�� 
.
�� 
Length
�� !
>
��" #
$num
��$ %
&&
��& (
!
��) * 
supportedMediaType
��* <
.
��< =
Equals
��= C
(
��C D
parsedContentType
��D U
.
��U V
	MediaType
��V _
,
��_ `
StringComparison
��a q
.
��q r 
OrdinalIgnoreCase��r �
)��� �
)��� �
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 	 
IsCharSetSupported
��	 
(
�� 
parsedContentType
�� -
.
��- .
CharSet
��. 5
)
��5 6
)
��6 7
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
��	 

FormatException
��
 
)
�� 
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
return
�� 	
true
��
 
;
�� 
}
�� 
internal
�� 

virtual
�� 
bool
��  
IsCharSetSupported
�� *
(
��* +
string
��+ 1
charset
��2 9
)
��9 :
{
�� 
return
�� 	
CharSet
��
 
?
�� 
.
�� 
Equals
�� 
(
�� 
charset
�� !
,
��! "
StringComparison
��# 3
.
��3 4
OrdinalIgnoreCase
��4 E
)
��E F
??
��
 
false
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
bool
�� 
IsUtf8Encoding
�� $
(
��$ %
Encoding
��% -
encoding
��. 6
)
��6 7
{
�� 
return
�� 	
encoding
��
 
.
�� 
WebName
�� 
==
�� 
$str
�� %
;
��% &
}
�� 
private
�� 	
void
��
 -
ThrowIfMismatchedMessageVersion
�� .
(
��. /
Message
��/ 6
message
��7 >
)
��> ?
{
�� 
if
�� 
(
�� 
!
�� 
message
�� 
.
�� 
Version
�� 
.
�� 
Equals
�� 
(
�� 
MessageVersion
�� -
)
��- .
)
��. /
{
�� 
throw
�� 	
new
��
 '
InvalidOperationException
�� '
(
��' (
$"
��( *
Message version 
��* :
{
��: ;
message
��; B
.
��B C
Version
��C J
.
��J K
Envelope
��K S
}
��S T-
 doesn't match encoder version 
��T s
{
��s t
message
��t {
.
��{ |
Version��| �
.��� �
Envelope��� �
}��� �
"��� �
)��� �
;��� �
}
�� 
}
�� 
private
�� 	
void
��
 
WriteXmlCore
�� 
(
�� 
Message
�� #
message
��$ +
,
��+ ,
	XmlWriter
��- 6
	xmlWriter
��7 @
)
��@ A
{
�� 
message
�� 

.
��
 
WriteMessage
�� 
(
�� 
	xmlWriter
�� !
)
��! "
;
��" #
	xmlWriter
�� 
.
�� 
WriteEndDocument
�� 
(
�� 
)
�� 
;
��  
	xmlWriter
�� 
.
�� 
Flush
�� 
(
�� 
)
�� 
;
�� 
	xmlWriter
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}�� �,
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
(	-- �
encoding
--� �
)
--� �
)
--� �
;
--� �
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
}QQ �
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
} �	
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
} �
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
SoapSerializer	} �

serializer
� �
,
� �!
XmlNamespaceManager
� �!
xmlNamespaceManager
� �
=
� �
null
� �
)
� �
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
�� 
Any
�� 
(
�� 	
attr
��	 
=>
�� 
attr
�� 	
.
��	 

AttributeType
��
 
==
�� 
typeof
�� !
(
��! "'
IgnoreDataMemberAttribute
��" ;
)
��; <
||
��= ?
attr
�� 	
.
��	 

AttributeType
��
 
==
�� 
typeof
�� !
(
��! " 
XmlIgnoreAttribute
��" 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
public
�� 
static
��	 
bool
�� 
IsEnumerableType
�� %
(
��% &
this
��& *
Type
��+ /
collectionType
��0 >
)
��> ?
{
�� 
if
�� 
(
�� 
collectionType
�� 
.
�� 
IsArray
�� 
)
�� 
{
�� 
return
�� 

true
�� 
;
�� 
}
�� 
return
�� 	
typeof
��
 
(
�� 
IEnumerable
�� 
)
�� 
.
�� 
IsAssignableFrom
�� .
(
��. /
collectionType
��/ =
)
��= >
;
��> ?
}
�� 
public
�� 
static
��	 
Type
�� 
GetGenericType
�� #
(
��# $
this
��$ (
Type
��) -
collectionType
��. <
)
��< =
{
�� 
var
�� 
baseType
�� 
=
�� 
collectionType
��  
;
��  !
var
�� 
baseTypeInfo
�� 
=
�� 
collectionType
�� $
.
��$ %
GetTypeInfo
��% 0
(
��0 1
)
��1 2
;
��2 3
while
�� 
(
��	 

!
��
 
baseTypeInfo
�� 
.
�� 
IsGenericType
�� %
&&
��& (
baseTypeInfo
��) 5
.
��5 6
BaseType
��6 >
!=
��? A
null
��B F
)
��F G
{
�� 
baseType
�� 
=
�� 
baseTypeInfo
�� 
.
�� 
BaseType
�� $
;
��$ %
baseTypeInfo
�� 
=
�� 
baseType
�� 
.
�� 
GetTypeInfo
�� '
(
��' (
)
��( )
;
��) *
}
�� 
return
�� 	
baseType
��
 
.
�� 
GetTypeInfo
�� 
(
�� 
)
��  
.
��  !!
GetGenericArguments
��! 4
(
��4 5
)
��5 6
.
��6 7
DefaultIfEmpty
��7 E
(
��E F
typeof
��F L
(
��L M
object
��M S
)
��S T
)
��T U
.
��U V
FirstOrDefault
��V d
(
��d e
)
��e f
;
��f g
}
�� 
public
�� 
static
��	 
string
�� #
GetSerializedTypeName
�� ,
(
��, -
this
��- 1
Type
��2 6
type
��7 ;
)
��; <
{
�� 
var
�� 
	namedType
�� 
=
�� 
type
�� 
;
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsArray
�� 
)
�� 
{
�� 
	namedType
�� 
=
�� 
type
�� 
.
�� 
GetElementType
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
else
�� 
if
�� 

(
�� 
typeof
�� 
(
�� 
IEnumerable
�� 
)
�� 
.
��  
IsAssignableFrom
��  0
(
��0 1
type
��1 5
)
��5 6
&&
��7 9
type
��: >
.
��> ?
IsGenericType
��? L
)
��L M
{
�� 
	namedType
�� 
=
�� 
GetGenericType
�� 
(
�� 
type
�� #
)
��# $
;
��$ %
}
�� 
string
�� 	
typeName
��
 
=
�� 
	namedType
�� 
.
�� 
Name
�� #
;
��# $
var
�� 
xmlTypeAttribute
�� 
=
�� 
	namedType
�� #
.
��# $ 
GetCustomAttribute
��$ 6
<
��6 7
XmlTypeAttribute
��7 G
>
��G H
(
��H I
true
��I M
)
��M N
;
��N O
if
�� 
(
�� 
xmlTypeAttribute
�� 
!=
�� 
null
�� 
&&
��  "
!
��# $
string
��$ *
.
��* + 
IsNullOrWhiteSpace
��+ =
(
��= >
xmlTypeAttribute
��> N
.
��N O
TypeName
��O W
)
��W X
)
��X Y
{
�� 
typeName
�� 
=
�� 
xmlTypeAttribute
�� 
.
��  
TypeName
��  (
;
��( )
}
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsArray
�� 
)
�� 
{
�� 
typeName
�� 
=
�� 
$str
�� 
+
�� 
typeName
�� #
.
��# $
Replace
��$ +
(
��+ ,
$str
��, 0
,
��0 1
string
��2 8
.
��8 9
Empty
��9 >
)
��> ?
;
��? @
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� 
IEnumerable
�� 
)
�� 
.
�� 
IsAssignableFrom
�� +
(
��+ ,
type
��, 0
)
��0 1
&&
��2 4
type
��5 9
.
��9 :
IsGenericType
��: G
)
��G H
{
�� 
typeName
�� 
=
�� 
$str
�� 
+
�� 
typeName
�� #
;
��# $
}
�� 
return
�� 	
typeName
��
 
;
�� 
}
�� 
private
�� 	
static
��
 %
XmlSerializerNamespaces
�� (
Convert
��) 0
(
��0 1
this
��1 5!
XmlNamespaceManager
��6 I!
xmlNamespaceManager
��J ]
)
��] ^
{
�� %
XmlSerializerNamespaces
�� %
xmlSerializerNamespaces
�� 2
=
��3 4
new
��5 8%
XmlSerializerNamespaces
��9 P
(
��P Q
)
��Q R
;
��R S
foreach
�� 

(
�� 
var
�� 
ns
�� 
in
�� !
xmlNamespaceManager
�� )
.
��) *"
GetNamespacesInScope
��* >
(
��> ?
XmlNamespaceScope
��? P
.
��P Q
Local
��Q V
)
��V W
)
��W X
{
�� %
xmlSerializerNamespaces
�� 
.
�� 
Add
�� 
(
��  
ns
��  "
.
��" #
Key
��# &
,
��& '
ns
��( *
.
��* +
Value
��+ 0
)
��0 1
;
��1 2
}
�� 
return
�� 	%
xmlSerializerNamespaces
��
 !
;
��! "
}
�� 
}
�� 
}�� ͉
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
null	&& �
)
&&� �
:
&&� �
base
&&� �
(
&&� �

isBuffered
&&� �
:
&&� �
true
&&� �
)
&&� �
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
�� 
=
�� 
mi
�� 
,
�� (
MessageBodyMemberAttribute
�� !
=
��" #
mi
��$ &
.
��& ' 
GetCustomAttribute
��' 9
<
��9 :(
MessageBodyMemberAttribute
��: T
>
��T U
(
��U V
)
��V W
}
�� 
)
�� 
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� (
MessageBodyMemberAttribute
�� .
!=
��/ 1
null
��2 6
)
��6 7
.
�� 
OrderBy
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� (
MessageBodyMemberAttribute
�� 0
.
��0 1
Order
��1 6
)
��6 7
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
��  
messageBodyMembers
�� 
.
�� 
Count
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
bodyType
�� 
=
��  
messageBodyMembers
�� "
[
��" #
$num
��# $
]
��$ %
.
��% &
Member
��& ,
.
��, -$
GetPropertyOrFieldType
��- C
(
��C D
)
��D E
;
��E F
return
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 
bodyType
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 
bodyType
�� 
=
�� 
type
�� 
;
�� 
return
�� 	
true
��
 
;
�� 
}
�� 
private
�� 	
static
��
 
bool
�� 1
#TryGetMessageContractBodyMemberInfo
�� 9
(
��9 :
Type
��: >
type
��? C
,
��C D
out
��E H

MemberInfo
��I S
bodyType
��T \
)
��\ ]
{
�� 
var
�� &
messageContractAttribute
�� 
=
��  !
type
��" &
.
��& ' 
GetCustomAttribute
��' 9
<
��9 :&
MessageContractAttribute
��: R
>
��R S
(
��S T
)
��T U
;
��U V
if
�� 
(
�� &
messageContractAttribute
�� 
!=
��  "
null
��# '
&&
��( *
!
��+ ,&
messageContractAttribute
��, D
.
��D E
	IsWrapped
��E N
)
��N O
{
�� 
var
��  
messageBodyMembers
�� 
=
�� 
type
�� 	
.
�� '
GetPropertyOrFieldMembers
��  
(
��  !
)
��! "
.
�� 
Select
�� 
(
�� 
mi
�� 
=>
�� 
new
�� 
{
�� 
Member
�� 
=
�� 
mi
�� 
,
�� (
MessageBodyMemberAttribute
�� !
=
��" #
mi
��$ &
.
��& ' 
GetCustomAttribute
��' 9
<
��9 :(
MessageBodyMemberAttribute
��: T
>
��T U
(
��U V
)
��V W
}
�� 
)
�� 
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� (
MessageBodyMemberAttribute
�� .
!=
��/ 1
null
��2 6
)
��6 7
.
�� 
OrderBy
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� (
MessageBodyMemberAttribute
�� 0
.
��0 1
Order
��1 6
)
��6 7
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
��  
messageBodyMembers
�� 
.
�� 
Count
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
bodyType
�� 
=
��  
messageBodyMembers
�� "
[
��" #
$num
��# $
]
��$ %
.
��% &
Member
��& ,
;
��, -
return
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 
bodyType
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 
bodyType
�� 
=
�� 
type
�� 
;
�� 
return
�� 	
true
��
 
;
�� 
}
�� 
private
�� 	
XmlQualifiedName
��
 
ResolveType
�� &
(
��& '
Type
��' +
type
��, 0
)
��0 1
{
�� 
string
�� 	
typeName
��
 
=
�� 
type
�� 
.
�� 
IsEnum
��  
?
��! "
type
��# '
.
��' (#
GetEnumUnderlyingType
��( =
(
��= >
)
��> ?
.
��? @
Name
��@ D
:
��E F
type
��G K
.
��K L
Name
��L P
;
��P Q
string
�� 	
resolvedType
��
 
=
�� 
null
�� 
;
�� 
switch
�� 	
(
��
 
typeName
�� 
)
�� 
{
�� 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� "
;
��" #
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� #
;
��# $
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� !
;
��! "
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� "
;
��" #
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� 
;
�� 
break
�� 

;
��
 
case
�� 
$str
��	 
:
�� 
resolvedType
�� 
=
�� 
$str
�� "
;
��" #
break
�� 

;
��
 
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� 
(
�� 
resolvedType
�� (
)
��( )
)
��) *
{
�� 
throw
�� 	
new
��
 
ArgumentException
�� 
(
��  
$"
��  "

.NET type 
��" ,
{
��, -
typeName
��- 5
}
��5 66
( cannot be resolved into XML schema type
��6 ^
"
��^ _
)
��_ `
;
��` a
}
�� 
return
�� 	
new
��
 
XmlQualifiedName
�� 
(
�� 
resolvedType
�� +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
}
�� 
private
�� 	
void
��
 
WriteParameters
�� 
(
�� !
XmlDictionaryWriter
�� 2
writer
��3 9
,
��9 :%
SoapMethodParameterInfo
��; R
[
��R S
]
��S T
parameterInfos
��U c
,
��c d
bool
��e i
isMessageContract
��j {
)
��{ |
{
�� 
var
�� 
hasWrittenSchema
�� 
=
�� 
false
�� 
;
��  
var
�� 
doWriteInlineType
�� 
=
�� 
true
�� 
;
��  
foreach
�� 

(
�� 
var
�� 
parameterInfo
�� 
in
��  
parameterInfos
��! /
)
��/ 0
{
�� 
if
�� 
(
�� 
isMessageContract
�� 
)
�� 
{
�� 
doWriteInlineType
�� 
=
�� *
IsWrappedMessageContractType
�� 5
(
��5 6
parameterInfo
��6 C
.
��C D
	Parameter
��D M
.
��M N
ParameterType
��N [
)
��[ \
;
��\ ]
}
�� 
if
�� 
(
�� 
doWriteInlineType
�� 
)
�� 
{
�� 
if
�� 
(
�� 	
!
��	 

hasWrittenSchema
��
 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� )
,
��) *

Namespaces
��+ 5
.
��5 6
	XMLNS_XSD
��6 ?
)
��? @
;
��@ A
hasWrittenSchema
�� 
=
�� 
true
�� 
;
�� 
}
�� 
var
�� 
elementAttribute
��	 
=
�� 
parameterInfo
�� )
.
��) *
	Parameter
��* 3
.
��3 4 
GetCustomAttribute
��4 F
<
��F G!
XmlElementAttribute
��G Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
var
�� 
elementName
��	 
=
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� 0
(
��0 1
elementAttribute
��1 A
?
��A B
.
��B C
ElementName
��C N
)
��N O
?
��P Q
null
��R V
:
��W X
elementAttribute
��Y i
.
��i j
ElementName
��j u
;
��u v
var
�� 
xmlRootAttr
��	 
=
�� 
parameterInfo
�� $
.
��$ %
	Parameter
��% .
.
��. /
ParameterType
��/ <
.
��< =!
GetCustomAttributes
��= P
<
��P Q
XmlRootAttribute
��Q a
>
��a b
(
��b c
)
��c d
.
��d e
FirstOrDefault
��e s
(
��s t
)
��t u
;
��u v
var
�� 
typeRootName
��	 
=
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� 1
(
��1 2
xmlRootAttr
��2 =
?
��= >
.
��> ?
ElementName
��? J
)
��J K
?
��L M
null
��N R
:
��S T
xmlRootAttr
��U `
.
��` a
ElementName
��a l
;
��l m
var
�� 
parameterName
��	 
=
�� 
elementName
�� $
??
��
 
parameterInfo
�� 
.
�� 
	Parameter
�� $
.
��$ % 
GetCustomAttribute
��% 7
<
��7 8'
MessageParameterAttribute
��8 Q
>
��Q R
(
��R S
)
��S T
?
��T U
.
��U V
Name
��V Z
??
��
 
typeRootName
�� 
??
��
 
parameterInfo
�� 
.
�� 
	Parameter
�� $
.
��$ %
Name
��% )
;
��) *
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
parameterInfo
�� (
.
��( )
	Parameter
��) 2
.
��2 3
ParameterType
��3 @
,
��@ A
parameterName
��B O
,
��O P

@namespace
��Q [
:
��[ \
elementAttribute
��] m
?
��m n
.
��n o
	Namespace
��o x
)
��x y
;
��y z
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 	+
TryGetMessageContractBodyType
��	 &
(
��& '
parameterInfo
��' 4
.
��4 5
	Parameter
��5 >
.
��> ?
ParameterType
��? L
,
��L M
out
��N Q
var
��R U
messageBodyType
��V e
)
��e f
)
��f g
{
�� 
writer
�� 
.
�� "
WriteAttributeString
�� !
(
��! "
$str
��" (
,
��( )
$str
��* 0
+
��1 2
messageBodyType
��3 B
.
��B C
Name
��C G
)
��G H
;
��H I!
_complexTypeToBuild
�� 
.
�� 
Enqueue
�� !
(
��! "
new
��" %
TypeToBuild
��& 1
(
��1 2
messageBodyType
��2 A
)
��A B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
hasWrittenSchema
�� 
)
�� 
{
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
void
��
 
AddTypes
�� 
(
�� !
XmlDictionaryWriter
�� +
writer
��, 2
)
��2 3
{
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ +
,
��+ ,

Namespaces
��- 7
.
��7 8
WSDL_NS
��8 ?
)
��? @
;
��@ A
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� $
,
��$ %

Namespaces
��& 0
.
��0 1
	XMLNS_XSD
��1 :
)
��: ;
;
��; <
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� 3
,
��3 4
$str
��5 @
)
��@ A
;
��A B
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� 0
,
��0 1
TargetNameSpace
��2 A
)
��A B
;
��B C
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� $
,
��$ %

Namespaces
��& 0
.
��0 1
	XMLNS_XSD
��1 :
)
��: ;
;
��; <
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� *
,
��* +

Namespaces
��, 6
.
��6 7
	ARRAYS_NS
��7 @
)
��@ A
;
��A B
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� $
,
��$ %

Namespaces
��& 0
.
��0 1
	XMLNS_XSD
��1 :
)
��: ;
;
��; <
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� *
,
��* +

Namespaces
��, 6
.
��6 7
	SYSTEM_NS
��7 @
)
��@ A
;
��A B
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
foreach
�� 

(
�� 
var
�� 
	operation
�� 
in
�� 
_service
�� %
.
��% &

Operations
��& 0
)
��0 1
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� &
,
��& '

Namespaces
��( 2
.
��2 3
	XMLNS_XSD
��3 <
)
��< =
;
��= >
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
	operation
��( 1
.
��1 2
Name
��2 6
)
��6 7
;
��7 8
if
�� 
(
�� 
!
�� 	
	operation
��	 
.
�� &
IsMessageContractRequest
�� +
&&
��, .
	operation
��/ 8
.
��8 9
InParameters
��9 E
.
��E F
Length
��F L
==
��M O
$num
��P Q
)
��Q R
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
WriteParameters
�� 
(
�� 
writer
�� 
,
�� 
	operation
�� &
.
��& '
InParameters
��' 3
,
��3 4
	operation
��5 >
.
��> ?&
IsMessageContractRequest
��? W
)
��W X
;
��X Y
}
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� &
,
��& '

Namespaces
��( 2
.
��2 3
	XMLNS_XSD
��3 <
)
��< =
;
��= >
string
�� 

responseName
�� 
=
�� 
	operation
�� #
.
��# $
Name
��$ (
+
��) *
$str
��+ 5
;
��5 6
if
�� 
(
�� 
	operation
�� 
.
�� &
IsMessageContractRequest
�� *
&&
��+ -
	operation
��. 7
.
��7 8
InParameters
��8 D
.
��D E
Length
��E K
>
��L M
$num
��N O
)
��O P
{
�� 
if
�� 
(
�� 	
!
��	 
*
IsWrappedMessageContractType
��
 &
(
��& '
	operation
��' 0
.
��0 1
InParameters
��1 =
[
��= >
$num
��> ?
]
��? @
.
��@ A
	Parameter
��A J
.
��J K
ParameterType
��K X
)
��X Y
)
��Y Z
{
�� 
responseName
�� 
=
�� (
GetMessageContractBodyName
�� /
(
��/ 0
	operation
��0 9
.
��9 :

ReturnType
��: D
)
��D E
;
��E F
}
�� 
}
�� 
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
responseName
��( 4
)
��4 5
;
��5 6
if
�� 
(
�� 
	operation
�� 
.
�� 
DispatchMethod
��  
.
��  !

ReturnType
��! +
!=
��, .
typeof
��/ 5
(
��5 6
void
��6 :
)
��: ;
&&
��< >
	operation
��? H
.
��H I
DispatchMethod
��I W
.
��W X

ReturnType
��X b
!=
��c e
typeof
��f l
(
��l m
Task
��m q
)
��q r
)
��r s
{
�� 
var
�� 

returnType
��	 
=
�� 
	operation
�� 
.
��  
DispatchMethod
��  .
.
��. /

ReturnType
��/ 9
;
��9 :
if
�� 
(
�� 	

returnType
��	 
.
�� &
IsConstructedGenericType
�� ,
&&
��- /

returnType
��0 :
.
��: ;&
GetGenericTypeDefinition
��; S
(
��S T
)
��T U
==
��V X
typeof
��Y _
(
��_ `
Task
��` d
<
��d e
>
��e f
)
��f g
)
��g h
{
�� 

returnType
�� 
=
�� 

returnType
�� 
.
�� !
GetGenericArguments
�� 1
(
��1 2
)
��2 3
.
��3 4
First
��4 9
(
��9 :
)
��: ;
;
��; <
}
�� 
var
�� 
doWriteInlineType
��	 
=
�� 
true
�� !
;
��! "
if
�� 
(
�� 	
	operation
��	 
.
�� '
IsMessageContractResponse
�� ,
)
��, -
{
�� 
doWriteInlineType
�� 
=
�� *
IsWrappedMessageContractType
�� 6
(
��6 7

returnType
��7 A
)
��A B
;
��B C
}
�� 
if
�� 
(
�� 	
doWriteInlineType
��	 
)
�� 
{
�� 
var
�� 	
elementAttribute
��
 
=
�� 
	operation
�� &
.
��& '
DispatchMethod
��' 5
.
��5 6

ReturnType
��6 @
.
��@ A 
GetCustomAttribute
��A S
<
��S T!
XmlElementAttribute
��T g
>
��g h
(
��h i
)
��i j
;
��j k
var
�� 	
elementName
��
 
=
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� 1
(
��1 2
elementAttribute
��2 B
?
��B C
.
��C D
ElementName
��D O
)
��O P
?
��Q R
null
��S W
:
��X Y
elementAttribute
��Z j
.
��j k
ElementName
��k v
;
��v w
var
�� 	
xmlRootAttr
��
 
=
�� 

returnType
�� "
.
��" #
GetTypeInfo
��# .
(
��. /
)
��/ 0
.
��0 1!
GetCustomAttributes
��1 D
<
��D E
XmlRootAttribute
��E U
>
��U V
(
��V W
)
��W X
.
��X Y
FirstOrDefault
��Y g
(
��g h
)
��h i
;
��i j
var
�� 	
typeRootName
��
 
=
�� 
string
�� 
.
��   
IsNullOrWhiteSpace
��  2
(
��2 3
xmlRootAttr
��3 >
?
��> ?
.
��? @
ElementName
��@ K
)
��K L
?
��M N
null
��O S
:
��T U
xmlRootAttr
��V a
.
��a b
ElementName
��b m
;
��m n
var
�� 	

returnName
��
 
=
�� 
elementName
�� "
??
��
 
	operation
�� 
.
�� 
DispatchMethod
�� %
.
��% &
ReturnParameter
��& 5
.
��5 6 
GetCustomAttribute
��6 H
<
��H I'
MessageParameterAttribute
��I b
>
��b c
(
��c d
)
��d e
?
��e f
.
��f g
Name
��g k
??
��
 
typeRootName
�� 
??
��
 
	operation
�� 
.
�� 
Name
�� 
+
�� 
$str
�� &
;
��& '
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� )
,
��) *

Namespaces
��+ 5
.
��5 6
	XMLNS_XSD
��6 ?
)
��? @
;
��@ A
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 

returnType
�� &
,
��& '

returnName
��( 2
)
��2 3
;
��3 4
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 	
{
�� 
var
�� 	
type
��
 
=
�� (
GetMessageContractBodyType
�� +
(
��+ ,

returnType
��, 6
)
��6 7
;
��7 8
if
�� 
(
��	 


returnType
��
 
.
�� &
IsConstructedGenericType
�� -
)
��- .
{
�� 
writer
�� 
.
�� "
WriteAttributeString
�� "
(
��" #
$str
��# )
,
��) *

Namespaces
��+ 5
.
��5 6
	XMLNS_XSD
��6 ?
+
��@ A
type
��B F
.
��F G
Name
��G K
)
��K L
;
��L M
}
�� 
else
�� 

{
�� 
writer
�� 
.
�� "
WriteAttributeString
�� #
(
��# $
$str
��$ *
,
��* +
$str
��, 2
+
��3 4
type
��5 9
.
��9 :
Name
��: >
)
��> ?
;
��? @!
_complexTypeToBuild
�� 
.
�� 
Enqueue
�� #
(
��# $
new
��$ '
TypeToBuild
��( 3
(
��3 4
type
��4 8
)
��8 9
)
��9 :
;
��: ;
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 	
!
��	 

	operation
��
 
.
�� '
IsMessageContractResponse
�� -
)
��- .
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
WriteParameters
�� 
(
�� 
writer
�� 
,
�� 
	operation
�� %
.
��% &
OutParameters
��& 3
,
��3 4
	operation
��5 >
.
��> ?'
IsMessageContractResponse
��? X
)
��X Y
;
��Y Z
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
while
�� 
(
��	 
!
_complexTypeToBuild
��
 
.
�� 
Count
�� #
>
��$ %
$num
��& '
)
��' (
{
�� 
var
�� 
toBuild
�� 
=
�� !
_complexTypeToBuild
�� %
.
��% &
Dequeue
��& -
(
��- .
)
��. /
;
��/ 0"
AddSchemaComplexType
�� 
(
�� 
writer
�� 
,
��  
toBuild
��! (
)
��( )
;
��) *
}
�� 
while
�� 
(
��	 

_enumToBuild
��
 
.
�� 
Count
�� 
>
�� 
$num
��  
)
��  !
{
�� 
Type
�� 
toBuild
��	 
=
�� 
_enumToBuild
�� 
.
��  
Dequeue
��  '
(
��' (
)
��( )
;
��) *
if
�� 
(
�� 
toBuild
�� 
.
�� 
IsByRef
�� 
)
�� 
{
�� 
toBuild
�� 
=
�� 
toBuild
�� 
.
�� 
GetElementType
�� %
(
��% &
)
��& '
;
��' (
}
�� 
var
�� 
typeName
�� 
=
�� 
toBuild
�� 
.
�� #
GetSerializedTypeName
�� 0
(
��0 1
)
��1 2
;
��2 3
if
�� 
(
�� 
!
�� 	
_builtEnumTypes
��	 
.
�� 
Contains
�� !
(
��! "
toBuild
��" )
.
��) *
Name
��* .
)
��. /
)
��/ 0
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� *
,
��* +

Namespaces
��, 6
.
��6 7
	XMLNS_XSD
��7 @
)
��@ A
;
��A B
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
typeName
��) 1
)
��1 2
;
��2 3
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$"
��) +
{
��+ ,"
_xmlNamespaceManager
��, @
.
��@ A
LookupPrefix
��A M
(
��M N

Namespaces
��N X
.
��X Y
	XMLNS_XSD
��Y b
)
��b c
}
��c d
:string
��d k
"
��k l
)
��l m
;
��m n
foreach
�� 
(
�� 
var
�� 
value
�� 
in
�� 
Enum
�� 
.
��  
	GetValues
��  )
(
��) *
toBuild
��* 1
)
��1 2
)
��2 3
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 
.
�� "
WriteAttributeString
�� !
(
��! "
$str
��" )
,
��) *
value
��+ 0
.
��0 1
ToString
��1 9
(
��9 :
)
��: ;
)
��; <
;
��< =
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
_builtEnumTypes
�� 
.
�� 
Add
�� 
(
�� 
toBuild
��  
.
��  !
Name
��! %
)
��% &
;
��& '
}
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
while
�� 
(
��	 

_arrayToBuild
��
 
.
�� 
Count
�� 
>
�� 
$num
��  !
)
��! "
{
�� 
var
�� 
toBuild
�� 
=
�� 
_arrayToBuild
�� 
.
��  
Dequeue
��  '
(
��' (
)
��( )
;
��) *
var
�� 
toBuildName
�� 
=
�� 
toBuild
�� 
.
�� #
GetSerializedTypeName
�� 3
(
��3 4
)
��4 5
;
��5 6
if
�� 
(
�� 
!
�� 	
_buildArrayTypes
��	 
.
�� 
Contains
�� "
(
��" #
toBuildName
��# .
)
��. /
)
��/ 0
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� &
,
��& '

Namespaces
��( 2
.
��2 3
	XMLNS_XSD
��3 <
)
��< =
;
��= >
writer
�� 
.
�� !
WriteXmlnsAttribute
�� 
(
��  
$str
��  %
,
��% &

Namespaces
��' 1
.
��1 2
	ARRAYS_NS
��2 ;
)
��; <
;
��< =
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! 5
,
��5 6
$str
��7 B
)
��B C
;
��C D
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! 2
,
��2 3

Namespaces
��4 >
.
��> ?
	ARRAYS_NS
��? H
)
��H I
;
��I J
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
toBuildName
��) 4
)
��4 5
;
��5 6
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� (
,
��( )

Namespaces
��* 4
.
��4 5
	XMLNS_XSD
��5 >
)
��> ?
;
��? @
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
toBuild
�� "
.
��" #
GetGenericType
��# 1
(
��1 2
)
��2 3
,
��3 4
null
��5 9
,
��9 :
true
��; ?
)
��? @
;
��@ A
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� '
,
��' (

Namespaces
��) 3
.
��3 4
	XMLNS_XSD
��4 =
)
��= >
;
��> ?
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
toBuildName
��) 4
)
��4 5
;
��5 6
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) /
+
��0 1
toBuildName
��2 =
)
��= >
;
��> ?
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
_buildArrayTypes
�� 
.
�� 
Add
�� 
(
�� 
toBuildName
�� %
)
��% &
;
��& '
}
�� 
}
�� 
if
�� 
(
�� "
_buildDateTimeOffset
�� 
)
�� 
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� %
,
��% &

Namespaces
��' 1
.
��1 2
	XMLNS_XSD
��2 ;
)
��; <
;
��< =
writer
�� 

.
��
 !
WriteXmlnsAttribute
�� 
(
�� 
$str
�� $
,
��$ %

Namespaces
��& 0
.
��0 1
	SYSTEM_NS
��1 :
)
��: ;
;
��; <
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  4
,
��4 5
$str
��6 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  1
,
��1 2

Namespaces
��3 =
.
��= >
	SYSTEM_NS
��> G
)
��G H
;
��H I
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� %
,
��% &

Namespaces
��' 1
.
��1 2
	XMLNS_XSD
��2 ;
)
��; <
;
��< =
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,

Namespaces
��- 7
.
��7 8
SERIALIZATION_NS
��8 H
)
��H I
;
��I J
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� *
,
��* +

Namespaces
��, 6
.
��6 7
	XMLNS_XSD
��7 @
)
��@ A
;
��A B
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 8
)
��8 9
;
��9 :
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� )
,
��) *

Namespaces
��+ 5
.
��5 6
	XMLNS_XSD
��6 ?
)
��? @
;
��@ A
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� &
,
��& '

Namespaces
��( 2
.
��2 3
	XMLNS_XSD
��3 <
)
��< =
;
��= >
writer
�� 

.
��
  
WriteElementString
�� 
(
�� 
$str
�� +
,
��+ ,

Namespaces
��- 7
.
��7 8
SERIALIZATION_NS
��8 H
,
��H I
$str
��J P
)
��P Q
;
��Q R
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� '
,
��' (

Namespaces
��) 3
.
��3 4
	XMLNS_XSD
��4 =
)
��= >
;
��> ?
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
typeof
��  
(
��  !
DateTime
��! )
)
��) *
,
��* +
$str
��, 6
,
��6 7
false
��8 =
)
��= >
;
��> ?
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
typeof
��  
(
��  !
short
��! &
)
��& '
,
��' (
$str
��) 8
,
��8 9
false
��: ?
)
��? @
;
��@ A
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� &
,
��& '

Namespaces
��( 2
.
��2 3
	XMLNS_XSD
��3 <
)
��< =
;
��= >
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 8
)
��8 9
;
��9 :
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  *
,
��* +
$str
��, 2
)
��2 3
;
��3 4
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( <
)
��< =
;
��= >
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 

AddMessage
�� 
(
�� !
XmlDictionaryWriter
�� -
writer
��. 4
)
��4 5
{
�� 
foreach
�� 

(
�� 
var
�� 
	operation
�� 
in
�� 
_service
�� %
.
��% &

Operations
��& 0
)
��0 1
{
�� 
var
�� 
hasRequestBody
�� 
=
�� 
false
�� 
;
�� 
var
�� 
requestTypeName
�� 
=
�� 
	operation
�� #
.
��# $
Name
��$ (
;
��( )
if
�� 
(
�� 
	operation
�� 
.
�� &
IsMessageContractRequest
�� *
&&
��+ -
	operation
��. 7
.
��7 8
InParameters
��8 D
.
��D E
Length
��E K
>
��L M
$num
��N O
)
��O P
{
�� 
hasRequestBody
�� 
=
�� +
TryGetMessageContractBodyType
�� 3
(
��3 4
	operation
��4 =
.
��= >
InParameters
��> J
[
��J K
$num
��K L
]
��L M
.
��M N
	Parameter
��N W
.
��W X
ParameterType
��X e
,
��e f
out
��g j
var
��k n
requestType
��o z
)
��z {
;
��{ |
}
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% .
,
��. /

Namespaces
��0 :
.
��: ;
WSDL_NS
��; B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$"
��( *
{
��* +
BindingType
��+ 6
}
��6 7
_
��7 8
{
��8 9
	operation
��9 B
.
��B C
Name
��C G
}
��G H
_InputMessage
��H U
"
��U V
)
��V W
;
��W X
if
�� 
(
�� 
hasRequestBody
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& ,
,
��, -

Namespaces
��. 8
.
��8 9
WSDL_NS
��9 @
)
��@ A
;
��A B
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) 5
)
��5 6
;
��6 7
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! *
,
��* +
$str
��, 2
+
��3 4
requestTypeName
��5 D
)
��D E
;
��E F
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
var
�� 
responseTypeName
�� 
=
�� 
	operation
�� $
.
��$ %
Name
��% )
+
��* +
$str
��, 6
;
��6 7
if
�� 
(
�� 
	operation
�� 
.
�� 
DispatchMethod
��  
.
��  !

ReturnType
��! +
!=
��, .
typeof
��/ 5
(
��5 6
void
��6 :
)
��: ;
)
��; <
{
�� 
var
�� 

returnType
��	 
=
�� 
	operation
�� 
.
��  
DispatchMethod
��  .
.
��. /

ReturnType
��/ 9
;
��9 :
if
�� 
(
�� 	

returnType
��	 
.
�� &
IsConstructedGenericType
�� ,
&&
��- /

returnType
��0 :
.
��: ;&
GetGenericTypeDefinition
��; S
(
��S T
)
��T U
==
��V X
typeof
��Y _
(
��_ `
Task
��` d
<
��d e
>
��e f
)
��f g
)
��g h
{
�� 

returnType
�� 
=
�� 

returnType
�� 
.
�� !
GetGenericArguments
�� 1
(
��1 2
)
��2 3
.
��3 4
First
��4 9
(
��9 :
)
��: ;
;
��; <
}
�� 
if
�� 
(
�� 	
	operation
��	 
.
�� '
IsMessageContractResponse
�� ,
&&
��- /
!
��0 1*
IsWrappedMessageContractType
��1 M
(
��M N

returnType
��N X
)
��X Y
)
��Y Z
{
�� 
responseTypeName
�� 
=
�� (
GetMessageContractBodyName
�� 3
(
��3 4

returnType
��4 >
)
��> ?
;
��? @
}
�� 
}
�� 
if
�� 
(
�� 
	operation
�� 
.
�� '
IsMessageContractResponse
�� +
&&
��, .
	operation
��/ 8
.
��8 9
OutParameters
��9 F
.
��F G
Length
��G M
>
��N O
$num
��P Q
)
��Q R
{
�� 
if
�� 
(
�� 	
!
��	 
*
IsWrappedMessageContractType
��
 &
(
��& '
	operation
��' 0
.
��0 1
OutParameters
��1 >
[
��> ?
$num
��? @
]
��@ A
.
��A B
	Parameter
��B K
.
��K L
ParameterType
��L Y
)
��Y Z
)
��Z [
{
�� 
responseTypeName
�� 
=
�� (
GetMessageContractBodyType
�� 3
(
��3 4
	operation
��4 =
.
��= >
OutParameters
��> K
[
��K L
$num
��L M
]
��M N
.
��N O
	Parameter
��O X
.
��X Y
ParameterType
��Y f
)
��f g
.
��g h
Name
��h l
;
��l m
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 	
	operation
��	 
.
�� 
IsOneWay
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& /
,
��/ 0

Namespaces
��1 ;
.
��; <
WSDL_NS
��< C
)
��C D
;
��D E
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$"
��) +
{
��+ ,
BindingType
��, 7
}
��7 8
_
��8 9
{
��9 :
	operation
��: C
.
��C D
Name
��D H
}
��H I
_OutputMessage
��I W
"
��W X
)
��X Y
;
��Y Z
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& ,
,
��, -

Namespaces
��. 8
.
��8 9
WSDL_NS
��9 @
)
��@ A
;
��A B
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) 5
)
��5 6
;
��6 7
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! *
,
��* +
$str
��, 2
+
��3 4
responseTypeName
��5 E
)
��E F
;
��F G
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
private
�� 	
void
��
 
AddPortType
�� 
(
�� !
XmlDictionaryWriter
�� .
writer
��/ 5
)
��5 6
{
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ .
,
��. /

Namespaces
��0 :
.
��: ;
WSDL_NS
��; B
)
��B C
;
��C D
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
BindingType
��' 2
)
��2 3
;
��3 4
foreach
�� 

(
�� 
var
�� 
	operation
�� 
in
�� 
_service
�� %
.
��% &

Operations
��& 0
)
��0 1
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% 0
,
��0 1

Namespaces
��2 <
.
��< =
WSDL_NS
��= D
)
��D E
;
��E F
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
	operation
��( 1
.
��1 2
Name
��2 6
)
��6 7
;
��7 8
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% ,
,
��, -

Namespaces
��. 8
.
��8 9
WSDL_NS
��9 @
)
��@ A
;
��A B
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  )
,
��) *
$"
��+ -
tns:
��- 1
{
��1 2
BindingType
��2 =
}
��= >
_
��> ?
{
��? @
	operation
��@ I
.
��I J
Name
��J N
}
��N O
_InputMessage
��O \
"
��\ ]
)
��] ^
;
��^ _
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 	
	operation
��	 
.
�� 
IsOneWay
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& .
,
��. /

Namespaces
��0 :
.
��: ;
WSDL_NS
��; B
)
��B C
;
��C D
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! *
,
��* +
$"
��, .
tns:
��. 2
{
��2 3
BindingType
��3 >
}
��> ?
_
��? @
{
��@ A
	operation
��A J
.
��J K
Name
��K O
}
��O P
_OutputMessage
��P ^
"
��^ _
)
��_ `
;
��` a
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 

AddBinding
�� 
(
�� !
XmlDictionaryWriter
�� -
writer
��. 4
)
��4 5
{
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ -
,
��- .

Namespaces
��/ 9
.
��9 :
WSDL_NS
��: A
)
��A B
;
��B C
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
BindingName
��' 2
)
��2 3
;
��3 4
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' -
+
��. /
BindingType
��0 ;
)
��; <
;
��< =
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� &
,
��& '
$str
��( 2
)
��2 3
;
��3 4
var
�� 
soap
�� 
=
�� 
	_isSoap12
�� 
?
�� 
$str
�� "
:
��# $
$str
��% +
;
��+ ,
var
�� 
soapNamespace
�� 
=
�� 
	_isSoap12
��  
?
��! "

Namespaces
��# -
.
��- .
	SOAP12_NS
��. 7
:
��8 9

Namespaces
��: D
.
��D E
	SOAP11_NS
��E N
;
��N O
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
soap
��  
,
��  !
$str
��" +
,
��+ ,
soapNamespace
��- :
)
��: ;
;
��; <
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� *
,
��* +

Namespaces
��, 6
.
��6 7
TRANSPORT_SCHEMA
��7 G
)
��G H
;
��H I
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
foreach
�� 

(
�� 
var
�� 
	operation
�� 
in
�� 
_service
�� %
.
��% &

Operations
��& 0
)
��0 1
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% 0
,
��0 1

Namespaces
��2 <
.
��< =
WSDL_NS
��= D
)
��D E
;
��E F
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
	operation
��( 1
.
��1 2
Name
��2 6
)
��6 7
;
��7 8
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
soap
�� !
,
��! "
$str
��# .
,
��. /
soapNamespace
��0 =
)
��= >
;
��> ?
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  ,
,
��, -
	operation
��. 7
.
��7 8

SoapAction
��8 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  '
,
��' (
$str
��) 3
)
��3 4
;
��4 5
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% ,
,
��, -

Namespaces
��. 8
.
��8 9
WSDL_NS
��9 @
)
��@ A
;
��A B
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
soap
�� !
,
��! "
$str
��# )
,
��) *
soapNamespace
��+ 8
)
��8 9
;
��9 :
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  %
,
��% &
$str
��' 0
)
��0 1
;
��1 2
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 	
	operation
��	 
.
�� 
IsOneWay
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& .
,
��. /

Namespaces
��0 :
.
��: ;
WSDL_NS
��; B
)
��B C
;
��C D
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
soap
�� "
,
��" #
$str
��$ *
,
��* +
soapNamespace
��, 9
)
��9 :
;
��: ;
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! &
,
��& '
$str
��( 1
)
��1 2
;
��2 3
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 

AddService
�� 
(
�� !
XmlDictionaryWriter
�� -
writer
��. 4
)
��4 5
{
�� 
var
�� 
soap
�� 
=
�� 
	_isSoap12
�� 
?
�� 
$str
�� "
:
��# $
$str
��% +
;
��+ ,
var
�� 
soapNamespace
�� 
=
�� 
	_isSoap12
��  
?
��! "

Namespaces
��# -
.
��- .
	SOAP12_NS
��. 7
:
��8 9

Namespaces
��: D
.
��D E
	SOAP11_NS
��E N
;
��N O
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ -
,
��- .

Namespaces
��/ 9
.
��9 :
WSDL_NS
��: A
)
��A B
;
��B C
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
_service
��' /
.
��/ 0
ServiceType
��0 ;
.
��; <
Name
��< @
)
��@ A
;
��A B
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ *
,
��* +

Namespaces
��, 6
.
��6 7
WSDL_NS
��7 >
)
��> ?
;
��? @
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
PortName
��' /
)
��/ 0
;
��0 1
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� (
,
��( )
$str
��* 0
+
��1 2
BindingName
��3 >
)
��> ?
;
��? @
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
soap
��  
,
��  !
$str
��" +
,
��+ ,
soapNamespace
��- :
)
��: ;
;
��; <
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� )
,
��) *
_baseUrl
��+ 3
)
��3 4
;
��4 5
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 "
AddSchemaComplexType
�� #
(
��# $!
XmlDictionaryWriter
��$ 7
writer
��8 >
,
��> ?
TypeToBuild
��@ K
toBuild
��L S
)
��S T
{
�� 
var
�� 
toBuildType
�� 
=
�� 
toBuild
�� 
.
�� 
Type
�� !
;
��! "
var
�� 
toBuildBodyType
�� 
=
�� (
GetMessageContractBodyType
�� 3
(
��3 4
toBuildType
��4 ?
)
��? @
;
��@ A
var
�� 
isWrappedBodyType
�� 
=
�� *
IsWrappedMessageContractType
�� 7
(
��7 8
toBuildType
��8 C
)
��C D
;
��D E
var
�� 
toBuildName
�� 
=
�� 
toBuild
�� 
.
�� 
TypeName
�� %
;
��% &
if
�� 
(
�� 
toBuild
�� 
.
�� 
IsAnonumous
�� 
||
�� 
!
��  
_builtComplexTypes
�� 1
.
��1 2
Contains
��2 :
(
��: ;
toBuildName
��; F
)
��F G
)
��G H
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� *
,
��* +

Namespaces
��, 6
.
��6 7
	XMLNS_XSD
��7 @
)
��@ A
;
��A B
if
�� 
(
�� 
!
�� 	
toBuild
��	 
.
�� 
IsAnonumous
�� 
)
�� 
{
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
toBuildName
��) 4
)
��4 5
;
��5 6
}
�� 
if
�� 
(
�� 
toBuildType
�� 
.
�� 
IsArray
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� (
,
��( )

Namespaces
��* 4
.
��4 5
	XMLNS_XSD
��5 >
)
��> ?
;
��? @
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
toBuildType
�� &
.
��& '
GetElementType
��' 5
(
��5 6
)
��6 7
,
��7 8
toBuild
��9 @
.
��@ A
ChildElementName
��A Q
,
��Q R
true
��S W
)
��W X
;
��X Y
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
��	 
(
�� 
typeof
�� 
(
�� 
IEnumerable
�� 
)
��  
.
��  !
IsAssignableFrom
��! 1
(
��1 2
toBuildType
��2 =
)
��= >
)
��> ?
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� (
,
��( )

Namespaces
��* 4
.
��4 5
	XMLNS_XSD
��5 >
)
��> ?
;
��? @
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
toBuildType
�� &
.
��& '
GetGenericType
��' 5
(
��5 6
)
��6 7
,
��7 8
toBuild
��9 @
.
��@ A
ChildElementName
��A Q
,
��Q R
true
��S W
)
��W X
;
��X Y
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 	
!
��	 

isWrappedBodyType
��
 
)
�� 
{
�� 
var
�� 	

properties
��
 
=
�� 
toBuildBodyType
�� &
.
��& '
GetProperties
��' 4
(
��4 5
)
��5 6
.
��6 7
Where
��7 <
(
��< =
prop
��= A
=>
��B D
!
��E F
prop
��F J
.
��J K
	IsIgnored
��K T
(
��T U
)
��U V
)
��V W
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
var
�� 	
elements
��
 
=
�� 

properties
�� 
.
��  
Where
��  %
(
��% &
t
��& '
=>
��( *
!
��+ ,
t
��, -
.
��- .
IsAttribute
��. 9
(
��9 :
)
��: ;
)
��; <
.
��< =
ToList
��= C
(
��C D
)
��D E
;
��E F
if
�� 
(
��	 

elements
��
 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
��  
$str
��  *
,
��* +

Namespaces
��, 6
.
��6 7
	XMLNS_XSD
��7 @
)
��@ A
;
��A B
foreach
�� 
(
�� 
var
�� 
element
�� 
in
�� 
elements
�� '
)
��' (
{
�� #
AddSchemaTypeProperty
�� 
(
�� 
writer
�� $
,
��$ %
element
��& -
,
��- .
toBuild
��/ 6
)
��6 7
;
��7 8
}
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 	

attributes
��
 
=
�� 

properties
�� !
.
��! "
Where
��" '
(
��' (
t
��( )
=>
��* ,
t
��- .
.
��. /
IsAttribute
��/ :
(
��: ;
)
��; <
)
��< =
;
��= >
foreach
�� 
(
�� 
var
�� 
	attribute
�� 
in
�� 

attributes
��  *
)
��* +
{
�� #
AddSchemaTypeProperty
�� 
(
�� 
writer
�� #
,
��# $
	attribute
��% .
,
��. /
toBuild
��0 7
)
��7 8
;
��8 9
}
�� 
}
�� 
else
�� 	
{
�� 
var
�� 	

properties
��
 
=
�� 
toBuildType
�� "
.
��" #
GetProperties
��# 0
(
��0 1
)
��1 2
.
��2 3
Where
��3 8
(
��8 9
prop
��9 =
=>
��> @
!
��A B
prop
��B F
.
��F G
	IsIgnored
��G P
(
��P Q
)
��Q R
)
��R S
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
var
�� 	
elements
��
 
=
�� 

properties
�� 
.
��  
Where
��  %
(
��% &
t
��& '
=>
��( *
!
��+ ,
t
��, -
.
��- .
IsAttribute
��. 9
(
��9 :
)
��: ;
)
��; <
.
��< =
ToList
��= C
(
��C D
)
��D E
;
��E F
if
�� 
(
��	 

elements
��
 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
��  
$str
��  *
,
��* +

Namespaces
��, 6
.
��6 7
	XMLNS_XSD
��7 @
)
��@ A
;
��A B
foreach
�� 
(
�� 
var
�� 
element
�� 
in
�� 
elements
�� '
)
��' (
{
�� #
AddSchemaTypeProperty
�� 
(
�� 
writer
�� $
,
��$ %
element
��& -
,
��- .
toBuild
��/ 6
)
��6 7
;
��7 8
}
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
��  
}
�� 
var
�� 	

attributes
��
 
=
�� 

properties
�� !
.
��! "
Where
��" '
(
��' (
t
��( )
=>
��* ,
t
��- .
.
��. /
IsAttribute
��/ :
(
��: ;
)
��; <
)
��< =
;
��= >
foreach
�� 
(
�� 
var
�� 
	attribute
�� 
in
�� 

attributes
��  *
)
��* +
{
�� #
AddSchemaTypeProperty
�� 
(
�� 
writer
�� #
,
��# $
	attribute
��% .
,
��. /
toBuild
��0 7
)
��7 8
;
��8 9
}
�� 
var
�� 	%
messageBodyMemberFields
��
 !
=
��" #
toBuildType
��$ /
.
��/ 0
	GetFields
��0 9
(
��9 :
)
��: ;
.
�� 
Where
�� 
(
�� 
field
�� 
=>
�� 
field
�� 
.
�� 
CustomAttributes
�� -
.
��- .
Any
��. 1
(
��1 2
attr
��2 6
=>
��7 9
attr
��: >
.
��> ?
AttributeType
��? L
==
��M O
typeof
��P V
(
��V W(
MessageBodyMemberAttribute
��W q
)
��q r
)
��r s
)
��s t
.
�� 
OrderBy
�� 
(
�� 
field
�� 
=>
�� 
field
�� 
.
��  
GetCustomAttribute
�� 1
<
��1 2(
MessageBodyMemberAttribute
��2 L
>
��L M
(
��M N
)
��N O
.
��O P
Order
��P U
)
��U V
;
��V W
foreach
�� 
(
�� 
var
�� 
field
�� 
in
�� %
messageBodyMemberFields
�� 3
)
��3 4
{
�� 
var
�� 

messageBodyMember
�� 
=
�� 
field
�� $
.
��$ % 
GetCustomAttribute
��% 7
<
��7 8(
MessageBodyMemberAttribute
��8 R
>
��R S
(
��S T
)
��T U
;
��U V
var
�� 

	fieldName
�� 
=
�� 
messageBodyMember
�� (
.
��( )
Name
��) -
??
��. 0
field
��1 6
.
��6 7
Name
��7 ;
;
��; <
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
field
�� "
.
��" #
	FieldType
��# ,
,
��, -
	fieldName
��. 7
)
��7 8
;
��8 9
}
�� 
}
�� 
}
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
isWrappedBodyType
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� '
,
��' (

Namespaces
��) 3
.
��3 4
	XMLNS_XSD
��4 =
)
��= >
;
��> ?
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
toBuildName
��) 4
)
��4 5
;
��5 6
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) /
+
��0 1
toBuildName
��2 =
)
��= >
;
��> ?
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
��  
_builtComplexTypes
�� 
.
�� 
Add
�� 
(
�� 
toBuildName
�� &
)
��& '
;
��' (
}
�� 
}
�� 
private
�� 	
void
��
 #
AddSchemaTypeProperty
�� $
(
��$ %!
XmlDictionaryWriter
��% 8
writer
��9 ?
,
��? @
PropertyInfo
��A M
property
��N V
,
��V W
TypeToBuild
��X c
parentTypeToBuild
��d u
)
��u v
{
�� 
if
�� 
(
�� 
property
�� 
.
�� 
IsChoice
�� 
(
�� 
)
�� 
)
�� 
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� %
,
��% &

Namespaces
��' 1
.
��1 2
	XMLNS_XSD
��2 ;
)
��; <
;
��< =
if
�� 
(
�� 
property
�� 
.
�� 
PropertyType
�� 
.
�� 
IsEnumerableType
�� .
(
��. /
)
��/ 0
)
��0 1
{
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -
$str
��. 1
)
��1 2
;
��2 3
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -
$str
��. 9
)
��9 :
;
��: ;
}
�� 
var
�� 
choiceElements
�� 
=
�� 
property
�� !
.
��! "!
GetCustomAttributes
��" 5
<
��5 6!
XmlElementAttribute
��6 I
>
��I J
(
��J K
)
��K L
;
��L M
foreach
�� 
(
�� 
var
�� 
choiceElement
�� 
in
�� !
choiceElements
��" 0
)
��0 1
{
�� 
if
�� 
(
�� 	
choiceElement
��	 
!=
�� 
null
�� 
)
�� 
{
�� 
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
choiceElement
�� )
.
��) *
Type
��* .
??
��/ 1
property
��2 :
.
��: ;
PropertyType
��; G
,
��G H
choiceElement
��I V
.
��V W
ElementName
��W b
??
��c e
property
��f n
.
��n o
Name
��o s
)
��s t
;
��t u
}
�� 
}
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
return
�� 

;
��
 
}
�� 
var
�� (
createListWithoutProxyType
�� !
=
��" #
false
��$ )
;
��) *
var
�� 
toBuild
�� 
=
�� 
new
�� 
TypeToBuild
��  
(
��  !
property
��! )
.
��) *
PropertyType
��* 6
)
��6 7
;
��7 8
var
�� 
	arrayItem
�� 
=
�� 
property
�� 
.
��  
GetCustomAttribute
�� .
<
��. /#
XmlArrayItemAttribute
��/ D
>
��D E
(
��E F
)
��F G
;
��G H
if
�� 
(
�� 
	arrayItem
�� 
!=
�� 
null
�� 
&&
�� 
!
�� 
string
�� #
.
��# $ 
IsNullOrWhiteSpace
��$ 6
(
��6 7
	arrayItem
��7 @
.
��@ A
ElementName
��A L
)
��L M
)
��M N
{
�� 
toBuild
�� 
.
�� 
ChildElementName
�� 
=
�� 
	arrayItem
�� (
.
��( )
ElementName
��) 4
;
��4 5
}
�� 
var
�� 
elementItem
�� 
=
�� 
property
�� 
.
��  
GetCustomAttribute
�� 0
<
��0 1!
XmlElementAttribute
��1 D
>
��D E
(
��E F
)
��F G
;
��G H
if
�� 
(
�� 
elementItem
�� 
!=
�� 
null
�� 
&&
�� 
!
�� 
string
�� %
.
��% & 
IsNullOrWhiteSpace
��& 8
(
��8 9
elementItem
��9 D
.
��D E
ElementName
��E P
)
��P Q
)
��Q R
{
�� 
toBuild
�� 
.
�� 
ChildElementName
�� 
=
�� 
elementItem
�� *
.
��* +
ElementName
��+ 6
;
��6 7(
createListWithoutProxyType
�� 
=
��  
toBuild
��! (
.
��( )
Type
��) -
.
��- .
IsEnumerableType
��. >
(
��> ?
)
��? @
;
��@ A
}
�� 
var
�� 
attributeItem
�� 
=
�� 
property
�� 
.
��   
GetCustomAttribute
��  2
<
��2 3#
XmlAttributeAttribute
��3 H
>
��H I
(
��I J
)
��J K
;
��K L
var
�� (
messageBodyMemberAttribute
�� !
=
��" #
property
��$ ,
.
��, - 
GetCustomAttribute
��- ?
<
��? @(
MessageBodyMemberAttribute
��@ Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� 
attributeItem
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
var
�� 
name
�� 
=
�� 
attributeItem
�� 
.
�� 
AttributeName
�� *
;
��* +
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� !
(
��! "
name
��" &
)
��& '
)
��' (
{
�� 
name
�� 	
=
��
 
property
�� 
.
�� 
Name
�� 
;
�� 
}
�� 
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
toBuild
�� !
,
��! "
name
��# '
,
��' (
isAttribute
��) 4
:
��4 5
true
��6 :
)
��: ;
;
��; <
}
�� 
else
�� 
if
�� 

(
�� (
messageBodyMemberAttribute
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
var
�� 
name
�� 
=
�� (
messageBodyMemberAttribute
�� )
.
��) *
Name
��* .
;
��. /
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� !
(
��! "
name
��" &
)
��& '
)
��' (
{
�� 
name
�� 	
=
��
 
property
�� 
.
�� 
Name
�� 
;
�� 
}
�� 
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
toBuild
�� !
,
��! "
name
��# '
,
��' (
isArray
��) 0
:
��0 1(
createListWithoutProxyType
��2 L
,
��L M"
isListWithoutWrapper
��N b
:
��b c(
createListWithoutProxyType
��d ~
)
��~ 
;�� �
}
�� 
else
�� 
{
�� 
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
toBuild
�� !
,
��! "
parentTypeToBuild
��# 4
.
��4 5
ChildElementName
��5 E
??
��F H
property
��I Q
.
��Q R
Name
��R V
,
��V W
isArray
��X _
:
��_ `(
createListWithoutProxyType
��a {
,
��{ |#
isListWithoutWrapper��} �
:��� �*
createListWithoutProxyType��� �
)��� �
;��� �
}
�� 
}
�� 
private
�� 	
void
��
 
AddSchemaType
�� 
(
�� !
XmlDictionaryWriter
�� 0
writer
��1 7
,
��7 8
Type
��9 =
type
��> B
,
��B C
string
��D J
name
��K O
,
��O P
bool
��Q U
isArray
��V ]
=
��^ _
false
��` e
,
��e f
string
��g m

@namespace
��n x
=
��y z
null
��{ 
,�� �
bool��� �
isAttribute��� �
=��� �
false��� �
)��� �
{
�� 
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
new
�� 
TypeToBuild
�� (
(
��( )
type
��) -
)
��- .
,
��. /
name
��0 4
,
��4 5
isArray
��6 =
,
��= >

@namespace
��? I
,
��I J
isAttribute
��K V
)
��V W
;
��W X
}
�� 
private
�� 	
void
��
 
AddSchemaType
�� 
(
�� !
XmlDictionaryWriter
�� 0
writer
��1 7
,
��7 8
TypeToBuild
��9 D
toBuild
��E L
,
��L M
string
��N T
name
��U Y
,
��Y Z
bool
��[ _
isArray
��` g
=
��h i
false
��j o
,
��o p
string
��q w

@namespace��x �
=��� �
null��� �
,��� �
bool��� �
isAttribute��� �
=��� �
false��� �
,��� �
bool��� �$
isListWithoutWrapper��� �
=��� �
false��� �
)��� �
{
�� 
var
�� 
type
�� 
=
�� 
toBuild
�� 
.
�� 
Type
�� 
;
�� 
var
�� 
typeInfo
�� 
=
�� 
type
�� 
.
�� 
GetTypeInfo
�� "
(
��" #
)
��# $
;
��$ %
if
�� 
(
�� 
typeInfo
�� 
.
�� 
IsByRef
�� 
)
�� 
{
�� 
type
�� 
=
��	 

typeInfo
�� 
.
�� 
GetElementType
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
var
�� 
typeName
�� 
=
�� 
type
�� 
.
�� #
GetSerializedTypeName
�� ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 
writer
�� 
.
�� <
.TryAddSchemaTypeFromXmlSchemaProviderAttribute
�� <
(
��< =
type
��= A
,
��A B
name
��C G
,
��G H
SoapSerializer
��I W
.
��W X
XmlSerializer
��X e
,
��e f"
_xmlNamespaceManager
��g {
)
��{ |
)
��| }
{
�� 
return
�� 

;
��
 
}
�� 
var
�� 
underlyingType
�� 
=
�� 
Nullable
��  
.
��  !
GetUnderlyingType
��! 2
(
��2 3
type
��3 7
)
��7 8
;
��8 9
if
�� 
(
�� 
underlyingType
�� 
?
�� 
.
�� 
IsValueType
�� "
==
��# %
true
��& *
&&
��+ -
!
��. /
underlyingType
��/ =
.
��= >
IsEnum
��> D
&&
��E G
underlyingType
��H V
.
��V W
	Namespace
��W `
!=
��a c
null
��d h
&&
��i k
underlyingType
��l z
.
��z {
	Namespace��{ �
!=��� �
$str��� �
&&��� �
!��� �
underlyingType��� �
.��� �
	Namespace��� �
.��� �

StartsWith��� �
(��� �
$str��� �
)��� �
)��� �
{
�� 
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
new
�� 
TypeToBuild
�� )
(
��) *
underlyingType
��* 8
)
��8 9
{
��: ;
ChildElementName
��< L
=
��M N
toBuild
��O V
.
��V W
TypeName
��W _
}
��` a
,
��a b
name
��c g
,
��g h
isArray
��i p
,
��p q

@namespace
��r |
,
��| }
isAttribute��~ �
)��� �
;��� �
return
�� 

;
��
 
}
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
isAttribute
�� '
?
��( )
$str
��* 5
:
��6 7
$str
��8 A
,
��A B

Namespaces
��C M
.
��M N
	XMLNS_XSD
��N W
)
��W X
;
��X Y
if
�� 
(
�� 

@namespace
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  1
,
��1 2

@namespace
��3 =
)
��= >
;
��> ?
}
�� 
else
�� 
if
�� 

(
�� 
typeInfo
�� 
.
�� 
IsEnum
�� 
||
�� 
underlyingType
�� -
?
��- .
.
��. /
IsEnum
��/ 5
==
��6 8
true
��9 =
||
�� 
(
�� 
typeInfo
�� 
.
�� 
IsValueType
�� 
&&
�� 
typeInfo
��  (
.
��( )
	Namespace
��) 2
!=
��3 5
null
��6 :
&&
��; =
(
��> ?
typeInfo
��? G
.
��G H
	Namespace
��H Q
==
��R T
$str
��U ]
||
��^ `
typeInfo
��a i
.
��i j
	Namespace
��j s
.
��s t

StartsWith
��t ~
(
��~ 
$str�� �
)��� �
)��� �
)��� �
||
�� 
(
�� 
type
�� 
.
�� 
Name
�� 
==
�� 
$str
�� 
)
�� 
||
�� 
(
�� 
type
�� 
.
�� 
Name
�� 
==
�� 
$str
�� 
)
�� 
)
�� 
{
�� 
XmlQualifiedName
�� 

xsTypename
�� 
;
��  
if
�� 
(
�� 
typeof
�� 
(
�� 
DateTimeOffset
�� 
)
�� 
.
�� 
IsAssignableFrom
�� /
(
��/ 0
type
��0 4
)
��4 5
)
��5 6
{
�� 
if
�� 
(
�� 	
string
��	 
.
�� 
IsNullOrEmpty
�� 
(
�� 
name
�� "
)
��" #
)
��# $
{
�� 
name
�� 

=
�� 
typeName
�� 
;
�� 
}
�� 

Namespaces
�� 
.
�� 9
+AddNamespaceIfNotAlreadyPresentAndGetPrefix
�� ;
(
��; <"
_xmlNamespaceManager
��< P
,
��P Q
$str
��R Y
,
��Y Z

Namespaces
��[ e
.
��e f
	SYSTEM_NS
��f o
)
��o p
;
��p q

xsTypename
�� 
=
�� 
new
�� 
XmlQualifiedName
�� &
(
��& '
typeName
��' /
,
��/ 0

Namespaces
��1 ;
.
��; <
	SYSTEM_NS
��< E
)
��E F
;
��F G"
_buildDateTimeOffset
�� 
=
�� 
true
��  
;
��  !
}
�� 
else
�� 
if
��	 
(
�� 
typeInfo
�� 
.
�� 
IsEnum
�� 
)
�� 
{
�� 

xsTypename
�� 
=
�� 
new
�� 
XmlQualifiedName
�� &
(
��& '
typeName
��' /
,
��/ 0"
_xmlNamespaceManager
��1 E
.
��E F
LookupNamespace
��F U
(
��U V
$str
��V [
)
��[ \
)
��\ ]
;
��] ^
_enumToBuild
�� 
.
�� 
Enqueue
�� 
(
�� 
type
�� 
)
�� 
;
��  
}
�� 
else
�� 
if
��	 
(
�� 
underlyingType
�� 
?
�� 
.
�� 
IsEnum
�� #
==
��$ &
true
��' +
)
��+ ,
{
�� 

xsTypename
�� 
=
�� 
new
�� 
XmlQualifiedName
�� &
(
��& '
underlyingType
��' 5
.
��5 6#
GetSerializedTypeName
��6 K
(
��K L
)
��L M
,
��M N"
_xmlNamespaceManager
��O c
.
��c d
LookupNamespace
��d s
(
��s t
$str
��t y
)
��y z
)
��z {
;
��{ |
_enumToBuild
�� 
.
�� 
Enqueue
�� 
(
�� 
underlyingType
�� (
)
��( )
;
��) *
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 	
underlyingType
��	 
!=
�� 
null
�� 
)
��  
{
�� 

xsTypename
�� 
=
�� 
ResolveType
�� 
(
�� 
underlyingType
�� -
)
��- .
;
��. /
writer
�� 
.
�� "
WriteAttributeString
�� !
(
��! "
$str
��" ,
,
��, -
$str
��. 4
)
��4 5
;
��5 6
}
�� 
else
�� 	
{
�� 

xsTypename
�� 
=
�� 
ResolveType
�� 
(
�� 
type
�� #
)
��# $
;
��$ %
}
�� 
}
�� 
if
�� 
(
�� 
isAttribute
�� 
)
�� 
{
�� 
}
�� 
else
�� 
if
��	 
(
�� 
isArray
�� 
)
�� 
{
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -
$str
��. 1
)
��1 2
;
��2 3
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -
$str
��. 9
)
��9 :
;
��: ;
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -
type
��. 2
.
��2 3
IsValueType
��3 >
?
��? @
$str
��A D
:
��E F
$str
��G J
)
��J K
;
��K L
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -
$str
��. 1
)
��1 2
;
��2 3
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� 
(
�� 
name
�� !
)
��! "
)
��" #
{
�� 
name
�� 	
=
��
 

xsTypename
�� 
.
�� 
Name
�� 
;
�� 
}
�� 
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
name
��( ,
)
��, -
;
��- .
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$"
��( *
{
��* +"
_xmlNamespaceManager
��+ ?
.
��? @
LookupPrefix
��@ L
(
��L M

xsTypename
��M W
.
��W X
	Namespace
��X a
)
��a b
}
��b c
:
��c d
{
��d e

xsTypename
��e o
.
��o p
Name
��p t
}
��t u
"
��u v
)
��v w
;
��w x
}
�� 
else
�� 
{
�� 
var
�� 
newTypeToBuild
�� 
=
�� 
new
�� 
TypeToBuild
�� (
(
��( )
type
��) -
)
��- .
;
��. /
if
�� 
(
�� 
!
�� 	
string
��	 
.
��  
IsNullOrWhiteSpace
�� "
(
��" #
toBuild
��# *
.
��* +
ChildElementName
��+ ;
)
��; <
)
��< =
{
�� 
newTypeToBuild
�� 
.
�� 
ChildElementName
�� $
=
��% &
toBuild
��' .
.
��. /
ChildElementName
��/ ?
;
��? @)
SetUniqueNameForDynamicType
��  
(
��  !
newTypeToBuild
��! /
)
��/ 0
;
��0 1
}
�� 
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,
$str
��- 0
)
��0 1
;
��1 2
if
�� 
(
�� 
isArray
�� 
)
�� 
{
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -
$str
��. 9
)
��9 :
;
��: ;
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -
$str
��. 1
)
��1 2
;
��2 3
}
�� 
if
�� 
(
�� 
type
�� 
==
�� 
typeof
�� 
(
�� 
Stream
�� 
)
�� 
||
�� !
typeof
��" (
(
��( )
Stream
��) /
)
��/ 0
.
��0 1
IsAssignableFrom
��1 A
(
��A B
type
��B F
)
��F G
)
��G H
{
�� 
name
�� 	
=
��
 
$str
�� 
;
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
name
��) -
)
��- .
;
��. /
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$"
��) +
{
��+ ,"
_xmlNamespaceManager
��, @
.
��@ A
LookupPrefix
��A M
(
��M N

Namespaces
��N X
.
��X Y
	XMLNS_XSD
��Y b
)
��b c
}
��c d
:base64Binary
��d q
"
��q r
)
��r s
;
��s t
}
�� 
else
�� 
if
��	 
(
�� 
type
�� 
.
�� 
IsArray
�� 
)
�� 
{
�� 
if
�� 
(
�� 	
string
��	 
.
�� 
IsNullOrEmpty
�� 
(
�� 
name
�� "
)
��" #
)
��# $
{
�� 
name
�� 

=
�� 
typeName
�� 
;
�� 
}
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
name
��) -
)
��- .
;
��. /
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) /
+
��0 1
newTypeToBuild
��2 @
.
��@ A
TypeName
��A I
)
��I J
;
��J K!
_complexTypeToBuild
�� 
.
�� 
Enqueue
��  
(
��  !
newTypeToBuild
��! /
)
��/ 0
;
��0 1
}
�� 
else
�� 
if
��	 
(
�� 
typeof
�� 
(
�� 
IEnumerable
�� 
)
��  
.
��  !
IsAssignableFrom
��! 1
(
��1 2
type
��2 6
)
��6 7
)
��7 8
{
�� 
if
�� 
(
�� 	
type
��	 
.
�� 
GetGenericType
�� 
(
�� 
)
�� 
.
�� 
Name
�� #
==
��$ &
$str
��' /
)
��/ 0
{
�� 
if
�� 
(
��	 

string
��
 
.
�� 
IsNullOrEmpty
�� 
(
�� 
name
�� #
)
��# $
)
��$ %
{
�� 
name
�� 
=
�� 
typeName
�� 
;
�� 
}
�� 
var
�� 	
ns
��
 
=
�� 
$"
�� 
q
�� 
{
�� 
_namespaceCounter
�� $
++
��$ &
}
��& '
"
��' (
;
��( )
writer
�� 
.
�� !
WriteXmlnsAttribute
��  
(
��  !
ns
��! #
,
��# $

Namespaces
��% /
.
��/ 0
	ARRAYS_NS
��0 9
)
��9 :
;
��: ;
writer
�� 
.
�� "
WriteAttributeString
�� !
(
��! "
$str
��" (
,
��( )
name
��* .
)
��. /
;
��/ 0
writer
�� 
.
�� "
WriteAttributeString
�� !
(
��! "
$str
��" ,
,
��, -
$str
��. 4
)
��4 5
;
��5 6
writer
�� 
.
�� "
WriteAttributeString
�� !
(
��! "
$str
��" (
,
��( )
$"
��* ,
{
��, -
ns
��- /
}
��/ 0
:
��0 1
{
��1 2
newTypeToBuild
��2 @
.
��@ A
TypeName
��A I
}
��I J
"
��J K
)
��K L
;
��L M
_arrayToBuild
�� 
.
�� 
Enqueue
�� 
(
�� 
type
��  
)
��  !
;
��! "
}
�� 
else
�� 	
{
�� 
if
�� 
(
��	 

string
��
 
.
�� 
IsNullOrEmpty
�� 
(
�� 
name
�� #
)
��# $
)
��$ %
{
�� 
name
�� 
=
�� 
typeName
�� 
;
�� 
}
�� 
writer
�� 
.
�� "
WriteAttributeString
�� !
(
��! "
$str
��" (
,
��( )
name
��* .
)
��. /
;
��/ 0
if
�� 
(
��	 

!
��
 
isArray
�� 
)
�� 
{
�� 
writer
�� 
.
�� "
WriteAttributeString
�� "
(
��" #
$str
��# -
,
��- .
$str
��/ 5
)
��5 6
;
��6 7
}
�� 
if
�� 
(
��	 
"
isListWithoutWrapper
��
 
)
�� 
{
�� 
newTypeToBuild
�� 
=
�� 
new
�� 
TypeToBuild
�� '
(
��' (
newTypeToBuild
��( 6
.
��6 7
Type
��7 ;
.
��; <
GetGenericType
��< J
(
��J K
)
��K L
)
��L M
;
��M N
}
�� 
if
�� 
(
��	 

newTypeToBuild
��
 
.
�� 
IsAnonumous
�� $
)
��$ %
{
�� "
AddSchemaComplexType
�� 
(
�� 
writer
�� "
,
��" #
newTypeToBuild
��$ 2
)
��2 3
;
��3 4
}
�� 
else
�� 

{
�� 
writer
�� 
.
�� "
WriteAttributeString
�� "
(
��" #
$str
��# )
,
��) *
$str
��+ 1
+
��2 3
newTypeToBuild
��4 B
.
��B C
TypeName
��C K
)
��K L
;
��L M!
_complexTypeToBuild
�� 
.
�� 
Enqueue
�� "
(
��" #
newTypeToBuild
��# 1
)
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 
else
�� 
if
��	 
(
�� 
toBuild
�� 
.
�� 
IsAnonumous
��  
)
��  !
{
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
name
��) -
)
��- .
;
��. /"
AddSchemaComplexType
�� 
(
�� 
writer
��  
,
��  !
newTypeToBuild
��" 0
)
��0 1
;
��1 2
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 	
string
��	 
.
�� 
IsNullOrEmpty
�� 
(
�� 
name
�� "
)
��" #
)
��# $
{
�� 
name
�� 

=
�� 
typeName
�� 
;
�� 
}
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
name
��) -
)
��- .
;
��. /
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) /
+
��0 1
newTypeToBuild
��2 @
.
��@ A
TypeName
��A I
)
��I J
;
��J K!
_complexTypeToBuild
�� 
.
�� 
Enqueue
��  
(
��  !
newTypeToBuild
��! /
)
��/ 0
;
��0 1
}
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 )
SetUniqueNameForDynamicType
�� *
(
��* +
TypeToBuild
��+ 6
dynamicType
��7 B
)
��B C
{
�� 
if
�� 
(
�� 
!
�� $
_requestedDynamicTypes
�� 
.
�� 
TryGetValue
�� *
(
��* +
dynamicType
��+ 6
.
��6 7
TypeName
��7 ?
,
��? @
out
��A D
var
��E H
elementsList
��I U
)
��U V
)
��V W
{
�� 
var
�� 
elementsMap
�� 
=
�� 
new
�� 

Dictionary
�� $
<
��$ %
string
��% +
,
��+ ,
string
��- 3
>
��3 4
{
��5 6
{
��7 8
dynamicType
��9 D
.
��D E
ChildElementName
��E U
,
��U V
string
��W ]
.
��] ^
Empty
��^ c
}
��d e
}
��f g
;
��g h$
_requestedDynamicTypes
�� 
.
�� 
Add
�� 
(
�� 
dynamicType
�� *
.
��* +
TypeName
��+ 3
,
��3 4
elementsMap
��5 @
)
��@ A
;
��A B
return
�� 

;
��
 
}
�� 
if
�� 
(
�� 
elementsList
�� 
.
�� 
TryGetValue
�� 
(
��  
dynamicType
��  +
.
��+ ,
ChildElementName
��, <
,
��< =
out
��> A
var
��B E
assotiatedPostfix
��F W
)
��W X
)
��X Y
{
�� 
dynamicType
�� 
.
�� 
TypeName
�� 
+=
�� 
$"
�� 
{
�� 
assotiatedPostfix
�� 0
}
��0 1
"
��1 2
;
��2 3
}
�� 
else
�� 
{
�� 
var
�� 

newPostfix
�� 
=
�� 
$"
�� 
{
�� 
elementsList
�� $
.
��$ %
Count
��% *
}
��* +
"
��+ ,
;
��, -
dynamicType
�� 
.
�� 
TypeName
�� 
+=
�� 
$"
�� 
{
�� 

newPostfix
�� )
}
��) *
"
��* +
;
��+ ,
elementsList
�� 
.
�� 
Add
�� 
(
�� 
dynamicType
��  
.
��  !
ChildElementName
��! 1
,
��1 2

newPostfix
��3 =
)
��= >
;
��> ?
}
�� 
}
�� 
}
�� 
}�� �U
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
DocumentElement	<< �
.
<<� �
Prefix
<<� �
)
<<� �
+
<<� �
$str
<<� �
)
<<� �
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
$str	@@} �
)
@@� �
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
$str	DD �
)
DD� �
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
DocumentElement	SS �
.
SS� �
Prefix
SS� �
)
SS� �
+
SS� �
$str
SS� �
)
SS� �
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
$str	WW} �
)
WW� �
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
��  
webServiceLocation
�� 
=
�� 
	ServerUrl
�� %
+
��& '
CurrentWebServer
��( 8
+
��9 :
CurrentWebService
��; L
;
��L M
return
�� 	 
webServiceLocation
��
 
;
�� 
}
�� 
}
�� 
}�� �K
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
Soap11WSAddressingAugust2004	++ �
)
++� �
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
GeneralContract	IIx �
.
II� �
Name
II� �
}
II� �
_policy
II� �
"
II� �
)
II� �
;
II� �
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
}cc ��
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
�� 
(
�� -
collectionDataContractAttribute
�� '
!=
��( *
null
��+ /
&&
��0 2-
collectionDataContractAttribute
��3 R
.
��R S&
IsNamespaceSetExplicitly
��S k
)
��k l
{
�� 
return
�� -
collectionDataContractAttribute
�� +
.
��+ ,
	Namespace
��, 5
;
��5 6
}
�� 
else
�� 
{
�� 
type
�� 	
=
��
 
type
�� 
.
�� 
IsArray
�� 
?
�� 
type
�� 
.
��  
GetElementType
��  .
(
��. /
)
��/ 0
:
��1 2
GetGenericType
��3 A
(
��A B
type
��B F
)
��F G
;
��G H
}
�� 
}
�� 
var
�� #
dataContractAttribute
�� 
=
�� 
type
�� #
.
��# $ 
GetCustomAttribute
��$ 6
<
��6 7#
DataContractAttribute
��7 L
>
��L M
(
��M N
)
��N O
;
��O P
if
�� 
(
�� #
dataContractAttribute
�� 
!=
�� 
null
��  $
&&
��% '#
dataContractAttribute
��( =
.
��= >&
IsNamespaceSetExplicitly
��> V
)
��V W
{
�� 
return
�� 
#
dataContractAttribute
��  
.
��  !
	Namespace
��! *
;
��* +
}
�� 
return
�� 	
GetModelNamespace
��
 
(
�� 
type
��  
.
��  !
	Namespace
��! *
)
��* +
;
��+ ,
}
�� 
private
�� 	
static
��
 
Type
�� 
GetGenericType
�� $
(
��$ %
Type
��% )
collectionType
��* 8
)
��8 9
{
�� 
return
�� 	
GetGenericTypes
��
 
(
�� 
collectionType
�� (
)
��( )
.
��) *
DefaultIfEmpty
��* 8
(
��8 9
typeof
��9 ?
(
��? @
object
��@ F
)
��F G
)
��G H
.
��H I
FirstOrDefault
��I W
(
��W X
)
��X Y
;
��Y Z
}
�� 
private
�� 	
static
��
 
Type
�� 
[
�� 
]
�� 
GetGenericTypes
�� '
(
��' (
Type
��( ,
collectionType
��- ;
)
��; <
{
�� 
var
�� 
baseType
�� 
=
�� 
collectionType
��  
;
��  !
var
�� )
collectionInterfaceTypeInfo
�� "
=
��# $
baseType
��% -
.
��- .
GetInterfaces
��. ;
(
��; <
)
��< =
.
��= >
Where
��> C
(
��C D
a
��D E
=>
��F H
a
��I J
.
��J K
Name
��K O
==
��P R
$str
��S b
)
��b c
.
��c d
FirstOrDefault
��d r
(
��r s
)
��s t
;
��t u
if
�� 
(
�� )
collectionInterfaceTypeInfo
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
return
�� 
)
collectionInterfaceTypeInfo
�� &
.
��& '!
GetGenericArguments
��' :
(
��: ;
)
��; <
;
��< =
}
�� 
var
�� 
baseTypeInfo
�� 
=
�� 
collectionType
�� $
.
��$ %
GetTypeInfo
��% 0
(
��0 1
)
��1 2
;
��2 3
while
�� 
(
��	 

!
��
 
baseTypeInfo
�� 
.
�� 
IsGenericType
�� %
&&
��& (
baseTypeInfo
��) 5
.
��5 6
BaseType
��6 >
!=
��? A
null
��B F
)
��F G
{
�� 
baseType
�� 
=
�� 
baseTypeInfo
�� 
.
�� 
BaseType
�� $
;
��$ %
baseTypeInfo
�� 
=
�� 
baseType
�� 
.
�� 
GetTypeInfo
�� '
(
��' (
)
��( )
;
��) *
}
�� 
return
�� 	
baseType
��
 
.
�� 
GetTypeInfo
�� 
(
�� 
)
��  
.
��  !!
GetGenericArguments
��! 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
private
�� 	
string
��
 
GetModelNamespace
�� "
(
��" #
Type
��# '
type
��( ,
)
��, -
{
�� 
if
�� 
(
�� 
type
�� 
!=
�� 
null
�� 
&&
�� 
type
�� 
.
�� 
	Namespace
�� %
!=
��& (
_service
��) 1
.
��1 2
ServiceType
��2 =
.
��= >
	Namespace
��> G
)
��G H
{
�� 
return
�� 

$"
�� 
{
�� 

Namespaces
�� 
.
�� #
DataContractNamespace
�� .
}
��. /
{
��/ 0
type
��0 4
.
��4 5
	Namespace
��5 >
}
��> ?
"
��? @
;
��@ A
}
�� 
return
�� 	
$"
��
 
{
�� 

Namespaces
�� 
.
�� #
DataContractNamespace
�� -
}
��- .
{
��. /
_service
��/ 7
.
��7 8
ServiceType
��8 C
.
��C D
	Namespace
��D M
}
��M N
"
��N O
;
��O P
}
�� 
private
�� 	
void
��
 
WriteParameters
�� 
(
�� !
XmlDictionaryWriter
�� 2
writer
��3 9
,
��9 :%
SoapMethodParameterInfo
��; R
[
��R S
]
��S T
parameterInfos
��U c
)
��c d
{
�� 
foreach
�� 

(
�� 
var
�� 
parameterInfo
�� 
in
��  
parameterInfos
��! /
)
��/ 0
{
�� 
var
�� 
elementAttribute
�� 
=
�� 
parameterInfo
�� (
.
��( )
	Parameter
��) 2
.
��2 3 
GetCustomAttribute
��3 E
<
��E F!
XmlElementAttribute
��F Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
var
�� 
parameterName
�� 
=
�� 
!
�� 
string
�� 
.
��  
IsNullOrEmpty
��  -
(
��- .
elementAttribute
��. >
?
��> ?
.
��? @
ElementName
��@ K
)
��K L
?
��
 
elementAttribute
�� 
.
�� 
ElementName
�� (
:
��
 
parameterInfo
�� 
.
�� 
	Parameter
�� #
.
��# $ 
GetCustomAttribute
��$ 6
<
��6 7'
MessageParameterAttribute
��7 P
>
��P Q
(
��Q R
)
��R S
?
��S T
.
��T U
Name
��U Y
??
��Z \
parameterInfo
��] j
.
��j k
	Parameter
��k t
.
��t u
Name
��u y
;
��y z
var
�� 

isRequired
�� 
=
�� 
!
�� 
parameterInfo
�� #
.
��# $
	Parameter
��$ -
.
��- .

IsOptional
��. 8
;
��8 9
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
parameterInfo
�� '
.
��' (
	Parameter
��( 1
.
��1 2
ParameterType
��2 ?
,
��? @
parameterName
��A N
,
��N O
objectNamespace
��P _
:
��_ `
elementAttribute
��a q
?
��q r
.
��r s
	Namespace
��s |
??
��} 
(��� �
parameterInfo��� �
.��� �
	Namespace��� �
!=��� �
$str��� �
?��� �
parameterInfo��� �
.��� �
	Namespace��� �
:��� �
null��� �
)��� �
,��� �

isRequired��� �
:��� �

isRequired��� �
)��� �
;��� �
}
�� 
}
�� 
private
�� 	
void
��
 %
EnsureServiceKnownTypes
�� &
(
��& '
IEnumerable
��' 2
<
��2 3'
ServiceKnownTypeAttribute
��3 L
>
��L M
serviceKnownTypes
��N _
)
��_ `
{
�� 
foreach
�� 

(
�� '
ServiceKnownTypeAttribute
�� %
	knownType
��& /
in
��0 2
serviceKnownTypes
��3 D
)
��D E
{
�� 
if
�� 
(
�� 
	knownType
�� 
.
�� 
Type
�� 
is
�� 
null
�� 
)
�� 
{
�� 
throw
�� 

new
�� #
NotSupportedException
�� $
(
��$ %
$"
��% '%
Only type property of `
��' >
{
��> ?
nameof
��? E
(
��E F'
ServiceKnownTypeAttribute
��F _
)
��_ `
}
��` a
` is supported.
��a p
"
��p q
)
��q r
;
��r s
}
�� !
_complexTypeToBuild
�� 
[
�� 
	knownType
�� !
.
��! "
Type
��" &
]
��& '
=
��( )&
GetDataContractNamespace
��* B
(
��B C
	knownType
��C L
.
��L M
Type
��M Q
)
��Q R
;
��R S
DiscoverTypes
�� 
(
�� 
	knownType
�� 
.
�� 
Type
��  
,
��  !
false
��" '
)
��' (
;
��( )
}
�� 
}
�� 
private
�� 	
void
��
 #
AddContractOperations
�� $
(
��$ %!
XmlDictionaryWriter
��% 8
writer
��9 ?
,
��? @!
ContractDescription
��A T
contract
��U ]
)
��] ^
{
�� 
IEnumerable
�� 
<
�� "
OperationDescription
�� #
>
��# $

operations
��% /
=
��0 1
contract
��2 :
.
��: ;

Operations
��; E
;
��E F
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" *
,
��* +

Namespaces
��, 6
.
��6 7
	XMLNS_XSD
��7 @
)
��@ A
;
��A B
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� 3
,
��3 4
$str
��5 @
)
��@ A
;
��A B
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� 0
,
��0 1
contract
��2 :
.
��: ;
	Namespace
��; D
)
��D E
;
��E F
writer
�� 	
.
��	 
!
WriteXmlnsAttribute
��
 
(
�� 
$str
�� "
,
��" #

Namespaces
��$ .
.
��. /
	XMLNS_XSD
��/ 8
)
��8 9
;
��9 :
writer
�� 	
.
��	 
!
WriteXmlnsAttribute
��
 
(
�� 
$str
�� #
,
��# $

Namespaces
��% /
.
��/ 0
SERIALIZATION_NS
��0 @
)
��@ A
;
��A B
_schemaNamespace
�� 
=
�� 
TargetNameSpace
�� %
;
��% &
_namespaceCounter
�� 
=
�� 
$num
�� 
;
�� 
foreach
�� 

(
�� "
OperationDescription
��  
	operation
��! *
in
��+ -

operations
��. 8
)
��8 9
{
�� %
EnsureServiceKnownTypes
�� 
(
�� 
	operation
�� %
.
��% &
ServiceKnownTypes
��& 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
�� 
	parameter
�� 
in
�� 
	operation
�� '
.
��' (
AllParameters
��( 5
)
��5 6
{
�� 
var
�� 
type
��	 
=
�� 
	parameter
�� 
.
�� 
	Parameter
�� #
.
��# $
ParameterType
��$ 1
;
��1 2
var
�� 
typeInfo
��	 
=
�� 
type
�� 
.
�� 
GetTypeInfo
�� $
(
��$ %
)
��% &
;
��& '
if
�� 
(
�� 	
typeInfo
��	 
.
�� 
IsByRef
�� 
)
�� 
{
�� 
type
�� 

=
�� 
typeInfo
�� 
.
�� 
GetElementType
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
if
�� 
(
�� 	"
TypeIsComplexForWsdl
��	 
(
�� 
type
�� "
,
��" #
out
��$ '
type
��( ,
)
��, -
)
��- .
{
�� !
_complexTypeToBuild
�� 
[
�� 
type
�� 
]
�� 
=
��  !&
GetDataContractNamespace
��" :
(
��: ;
type
��; ?
)
��? @
;
��@ A
DiscoverTypes
�� 
(
�� 
type
�� 
,
�� 
true
�� 
)
�� 
;
��  
}
�� 
else
�� 	
if
��
 
(
�� 
type
�� 
.
�� 
IsEnum
�� 
||
�� 
Nullable
�� %
.
��% &
GetUnderlyingType
��& 7
(
��7 8
type
��8 <
)
��< =
?
��= >
.
��> ?
IsEnum
��? E
==
��F H
true
��I M
)
��M N
{
�� !
_complexTypeToBuild
�� 
[
�� 
type
�� 
]
�� 
=
��  !&
GetDataContractNamespace
��" :
(
��: ;
type
��; ?
)
��? @
;
��@ A
DiscoverTypes
�� 
(
�� 
type
�� 
,
�� 
true
�� 
)
�� 
;
��  
}
�� 
}
�� 
if
�� 
(
�� 
	operation
�� 
.
�� 
DispatchMethod
��  
.
��  !

ReturnType
��! +
!=
��, .
typeof
��/ 5
(
��5 6
void
��6 :
)
��: ;
&&
��< >
	operation
��? H
.
��H I
DispatchMethod
��I W
.
��W X

ReturnType
��X b
!=
��c e
typeof
��f l
(
��l m
Task
��m q
)
��q r
)
��r s
{
�� 
var
�� 

returnType
��	 
=
�� 
	operation
�� 
.
��  
DispatchMethod
��  .
.
��. /

ReturnType
��/ 9
;
��9 :
if
�� 
(
�� 	

returnType
��	 
.
�� &
IsConstructedGenericType
�� ,
&&
��- /

returnType
��0 :
.
��: ;&
GetGenericTypeDefinition
��; S
(
��S T
)
��T U
==
��V X
typeof
��Y _
(
��_ `
Task
��` d
<
��d e
>
��e f
)
��f g
)
��g h
{
�� 

returnType
�� 
=
�� 

returnType
�� 
.
�� !
GetGenericArguments
�� 1
(
��1 2
)
��2 3
.
��3 4
First
��4 9
(
��9 :
)
��: ;
;
��; <
}
�� 
if
�� 
(
�� 	"
TypeIsComplexForWsdl
��	 
(
�� 

returnType
�� (
,
��( )
out
��* -

returnType
��. 8
)
��8 9
)
��9 :
{
�� !
_complexTypeToBuild
�� 
[
�� 

returnType
�� $
]
��$ %
=
��& '&
GetDataContractNamespace
��( @
(
��@ A

returnType
��A K
)
��K L
;
��L M
DiscoverTypes
�� 
(
�� 

returnType
�� 
,
�� 
true
��  $
)
��$ %
;
��% &
}
�� 
else
�� 	
if
��
 
(
�� 

returnType
�� 
.
�� 
IsEnum
�� 
||
��  "
Nullable
��# +
.
��+ ,
GetUnderlyingType
��, =
(
��= >

returnType
��> H
)
��H I
?
��I J
.
��J K
IsEnum
��K Q
==
��R T
true
��U Y
)
��Y Z
{
�� !
_complexTypeToBuild
�� 
[
�� 

returnType
�� $
]
��$ %
=
��& '&
GetDataContractNamespace
��( @
(
��@ A

returnType
��A K
)
��K L
;
��L M
DiscoverTypes
�� 
(
�� 

returnType
�� 
,
�� 
true
��  $
)
��$ %
;
��% &
}
�� 
}
�� 
}
�� 
var
��  
groupedByNamespace
�� 
=
�� !
_complexTypeToBuild
�� /
.
��/ 0
GroupBy
��0 7
(
��7 8
x
��8 9
=>
��: <
x
��= >
.
��> ?
Value
��? D
)
��D E
.
��E F
ToDictionary
��F R
(
��R S
x
��S T
=>
��U W
x
��X Y
.
��Y Z
Key
��Z ]
,
��] ^
x
��_ `
=>
��a c
x
��d e
.
��e f
Select
��f l
(
��l m
k
��m n
=>
��o q
k
��r s
.
��s t
Key
��t w
)
��w x
)
��x y
;
��y z
foreach
�� 

(
�� 
var
�� 

@namespace
�� 
in
��  
groupedByNamespace
�� 0
.
��0 1
Keys
��1 5
.
��5 6
Where
��6 ;
(
��; <
x
��< =
=>
��> @
x
��A B
!=
��C E
null
��F J
&&
��K M
x
��N O
!=
��P R
_service
��S [
.
��[ \
ServiceType
��\ g
.
��g h
	Namespace
��h q
)
��q r
.
��r s
Distinct
��s {
(
��{ |
)
��| }
)
��} ~
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,

@namespace
��- 7
)
��7 8
;
��8 9
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
foreach
�� 

(
�� "
OperationDescription
��  
	operation
��! *
in
��+ -

operations
��. 8
)
��8 9
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
	operation
��( 1
.
��1 2
Name
��2 6
)
��6 7
;
��7 8
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# 0
,
��0 1

Namespaces
��2 <
.
��< =
	XMLNS_XSD
��= F
)
��F G
;
��G H
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# -
,
��- .

Namespaces
��/ 9
.
��9 :
	XMLNS_XSD
��: C
)
��C D
;
��D E
WriteParameters
�� 
(
�� 
writer
�� 
,
�� 
	operation
�� %
.
��% &
InParameters
��& 2
)
��2 3
;
��3 4
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
	operation
��( 1
.
��1 2
Name
��2 6
+
��7 8
$str
��9 C
)
��C D
;
��D E
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# 0
,
��0 1

Namespaces
��2 <
.
��< =
	XMLNS_XSD
��= F
)
��F G
;
��G H
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# -
,
��- .

Namespaces
��/ 9
.
��9 :
	XMLNS_XSD
��: C
)
��C D
;
��D E
if
�� 
(
�� 
	operation
�� 
.
�� 
DispatchMethod
��  
.
��  !

ReturnType
��! +
!=
��, .
typeof
��/ 5
(
��5 6
void
��6 :
)
��: ;
&&
��< >
	operation
��? H
.
��H I
DispatchMethod
��I W
.
��W X

ReturnType
��X b
!=
��c e
typeof
��f l
(
��l m
Task
��m q
)
��q r
)
��r s
{
�� 
var
�� 

returnType
��	 
=
�� 
	operation
�� 
.
��  
DispatchMethod
��  .
.
��. /

ReturnType
��/ 9
;
��9 :
if
�� 
(
�� 	

returnType
��	 
.
�� &
IsConstructedGenericType
�� ,
&&
��- /

returnType
��0 :
.
��: ;&
GetGenericTypeDefinition
��; S
(
��S T
)
��T U
==
��V X
typeof
��Y _
(
��_ `
Task
��` d
<
��d e
>
��e f
)
��f g
)
��g h
{
�� 

returnType
�� 
=
�� 

returnType
�� 
.
�� !
GetGenericArguments
�� 1
(
��1 2
)
��2 3
.
��3 4
First
��4 9
(
��9 :
)
��: ;
;
��; <
}
�� 
var
�� 

returnName
��	 
=
�� 
	operation
�� 
.
��  
DispatchMethod
��  .
.
��. /
ReturnParameter
��/ >
.
��> ? 
GetCustomAttribute
��? Q
<
��Q R'
MessageParameterAttribute
��R k
>
��k l
(
��l m
)
��m n
?
��n o
.
��o p
Name
��p t
??
��u w
	operation��x �
.��� �
Name��� �
+��� �
$str��� �
;��� �
var
�� 

isRequired
��	 
=
�� 
!
�� 
	operation
��  
.
��  !
DispatchMethod
��! /
.
��/ 0
ReturnParameter
��0 ?
.
��? @

IsOptional
��@ J
;
��J K
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 

returnType
�� %
,
��% &

returnName
��' 1
,
��1 2
false
��3 8
,
��8 9&
GetDataContractNamespace
��: R
(
��R S

returnType
��S ]
)
��] ^
,
��^ _

isRequired
��` j
:
��j k

isRequired
��l v
)
��v w
;
��w x
}
�� 
WriteParameters
�� 
(
�� 
writer
�� 
,
�� 
	operation
�� %
.
��% &
OutParameters
��& 3
)
��3 4
;
��4 5
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
AddFaultTypes
�� 
(
�� 
writer
�� 
,
�� 
	operation
�� #
)
��# $
;
��$ %
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 
AddFaultTypes
�� 
(
�� !
XmlDictionaryWriter
�� 0
writer
��1 7
,
��7 8"
OperationDescription
��9 M
	operation
��N W
)
��W X
{
�� 
foreach
�� 

(
�� 
var
�� 
	faultType
�� 
in
�� 
	operation
�� &
.
��& '
Faults
��' -
)
��- .
{
�� 
if
�� 
(
�� #
_complexTypeProcessed
�� 
.
�� 
Contains
�� &
(
��& '
	faultType
��' 0
)
��0 1
)
��1 2
{
�� 
continue
�� 
;
�� 
}
�� !
_complexTypeToBuild
�� 
[
�� 
	faultType
�� !
]
��! "
=
��# $&
GetDataContractNamespace
��% =
(
��= >
	faultType
��> G
)
��G H
;
��H I
DiscoverTypes
�� 
(
�� 
	faultType
�� 
,
�� 
true
�� !
)
��! "
;
��" #
}
�� 
}
�� 
private
�� 	
void
��
 
AddTypes
�� 
(
�� !
XmlDictionaryWriter
�� +
writer
��, 2
)
��2 3
{
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ +
,
��+ ,

Namespaces
��- 7
.
��7 8
WSDL_NS
��8 ?
)
��? @
;
��@ A%
EnsureServiceKnownTypes
�� 
(
�� 
_service
�� #
.
��# $
ServiceKnownTypes
��$ 5
)
��5 6
;
��6 7%
EnsureServiceKnownTypes
�� 
(
�� 
_service
�� #
.
��# $
	Contracts
��$ -
.
��- .

SelectMany
��. 8
(
��8 9
x
��9 :
=>
��; =
x
��> ?
.
��? @
ServiceKnownTypes
��@ Q
)
��Q R
)
��R S
;
��S T
foreach
�� 

(
�� !
ContractDescription
�� 
contract
��  (
in
��) +
_service
��, 4
.
��4 5
	Contracts
��5 >
)
��> ?
{
�� #
AddContractOperations
�� 
(
�� 
writer
��  
,
��  !
contract
��" *
)
��* +
;
��+ ,
}
��  
AddMSSerialization
�� 
(
�� 
writer
�� 
)
�� 
;
�� 
AddComplexTypes
�� 
(
�� 
writer
�� 
)
�� 
;
�� 
AddArrayTypes
�� 
(
�� 
writer
�� 
)
�� 
;
�� 
AddSystemTypes
�� 
(
�� 
writer
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 
AddSystemTypes
�� 
(
�� !
XmlDictionaryWriter
�� 1
writer
��2 8
)
��8 9
{
�� 
if
�� 
(
�� "
_buildDateTimeOffset
�� 
)
�� 
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 !
WriteXmlnsAttribute
�� 
(
�� 
$str
�� #
,
��# $

Namespaces
��% /
.
��/ 0
	XMLNS_XSD
��0 9
)
��9 :
;
��: ;
writer
�� 

.
��
 !
WriteXmlnsAttribute
�� 
(
�� 
$str
�� $
,
��$ %

Namespaces
��& 0
.
��0 1
	SYSTEM_NS
��1 :
)
��: ;
;
��; <
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  4
,
��4 5
$str
��6 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  1
,
��1 2

Namespaces
��3 =
.
��= >
	SYSTEM_NS
��> G
)
��G H
;
��H I
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,

Namespaces
��- 7
.
��7 8
SERIALIZATION_NS
��8 H
)
��H I
;
��I J
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# 0
,
��0 1

Namespaces
��2 <
.
��< =
	XMLNS_XSD
��= F
)
��F G
;
��G H
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 8
)
��8 9
;
��9 :
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# /
,
��/ 0

Namespaces
��1 ;
.
��; <
	XMLNS_XSD
��< E
)
��E F
;
��F G
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
  
WriteElementString
�� 
(
�� 
$str
�� +
,
��+ ,

Namespaces
��- 7
.
��7 8
SERIALIZATION_NS
��8 H
,
��H I
$str
��J P
)
��P Q
;
��Q R
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# -
,
��- .

Namespaces
��/ 9
.
��9 :
	XMLNS_XSD
��: C
)
��C D
;
��D E
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 2
)
��2 3
;
��3 4
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 5
)
��5 6
;
��6 7
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 7
)
��7 8
;
��8 9
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 2
)
��2 3
;
��3 4
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 8
)
��8 9
;
��9 :
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  *
,
��* +
$str
��, 2
)
��2 3
;
��3 4
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( <
)
��< =
;
��= >
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
_buildDataTable
�� 
)
�� 
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  4
,
��4 5
$str
��6 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  1
,
��1 2

Namespaces
��3 =
.
��= >
SystemData_NS
��> K
)
��K L
;
��L M
writer
�� 

.
��
 !
WriteXmlnsAttribute
�� 
(
�� 
$str
�� #
,
��# $

Namespaces
��% /
.
��/ 0
	XMLNS_XSD
��0 9
)
��9 :
;
��: ;
writer
�� 

.
��
 !
WriteXmlnsAttribute
�� 
(
�� 
$str
�� $
,
��$ %

Namespaces
��& 0
.
��0 1
SystemData_NS
��1 >
)
��> ?
;
��? @
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 3
)
��3 4
;
��4 5
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  *
,
��* +
$str
��, 2
)
��2 3
;
��3 4
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# 0
,
��0 1

Namespaces
��2 <
.
��< =
	XMLNS_XSD
��= F
)
��F G
;
��G H
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# /
,
��/ 0

Namespaces
��1 ;
.
��; <
	XMLNS_XSD
��< E
)
��E F
;
��F G
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� )
)
��) *
;
��* +
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  '
,
��' (

Namespaces
��) 3
.
��3 4
SERIALIZATION_NS
��4 D
)
��D E
;
��E F
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 3
)
��3 4
;
��4 5
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,

Namespaces
��- 7
.
��7 8
SystemData_NS
��8 E
)
��E F
;
��F G
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# -
,
��- .

Namespaces
��/ 9
.
��9 :
	XMLNS_XSD
��: C
)
��C D
;
��D E
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# (
,
��( )

Namespaces
��* 4
.
��4 5
	XMLNS_XSD
��5 >
)
��> ?
;
��? @
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,
$str
��- 0
)
��0 1
;
��1 2
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,
$str
��- 8
)
��8 9
;
��9 :
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  1
,
��1 2
$str
��3 8
)
��8 9
;
��9 :
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# (
,
��( )

Namespaces
��* 4
.
��4 5
	XMLNS_XSD
��5 >
)
��> ?
;
��? @
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,
$str
��- 0
)
��0 1
;
��1 2
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,
$str
��- X
)
��X Y
;
��Y Z
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  1
,
��1 2
$str
��3 8
)
��8 9
;
��9 :
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
void
��
 
AddArrayTypes
�� 
(
�� !
XmlDictionaryWriter
�� 0
writer
��1 7
)
��7 8
{
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" *
,
��* +

Namespaces
��, 6
.
��6 7
	XMLNS_XSD
��7 @
)
��@ A
;
��A B
writer
�� 	
.
��	 
!
WriteXmlnsAttribute
��
 
(
�� 
$str
�� "
,
��" #

Namespaces
��$ .
.
��. /
	XMLNS_XSD
��/ 8
)
��8 9
;
��9 :
writer
�� 	
.
��	 
!
WriteXmlnsAttribute
��
 
(
�� 
$str
�� #
,
��# $

Namespaces
��% /
.
��/ 0
	ARRAYS_NS
��0 9
)
��9 :
;
��: ;
writer
�� 	
.
��	 
!
WriteXmlnsAttribute
��
 
(
�� 
$str
�� #
,
��# $

Namespaces
��% /
.
��/ 0
SERIALIZATION_NS
��0 @
)
��@ A
;
��A B
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� 3
,
��3 4
$str
��5 @
)
��@ A
;
��A B
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� 0
,
��0 1

Namespaces
��2 <
.
��< =
	ARRAYS_NS
��= F
)
��F G
;
��G H
_namespaceCounter
�� 
=
�� 
$num
�� 
;
�� 
_schemaNamespace
�� 
=
�� 

Namespaces
��  
.
��  !
	ARRAYS_NS
��! *
;
��* +
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" *
,
��* +

Namespaces
��, 6
.
��6 7
	XMLNS_XSD
��7 @
)
��@ A
;
��A B
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� *
,
��* +

Namespaces
��, 6
.
��6 7
SERIALIZATION_NS
��7 G
)
��G H
;
��H I
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
while
�� 
(
��	 

_arrayToBuild
��
 
.
�� 
Count
�� 
>
�� 
$num
��  !
)
��! "
{
�� 
var
�� 
toBuild
�� 
=
�� 
_arrayToBuild
�� 
.
��  
Dequeue
��  '
(
��' (
)
��( )
;
��) *
var
�� 
elType
�� 
=
�� 
toBuild
�� 
.
�� 
IsArray
��  
?
��! "
toBuild
��# *
.
��* +
GetElementType
��+ 9
(
��9 :
)
��: ;
:
��< =
GetGenericType
��> L
(
��L M
toBuild
��M T
)
��T U
;
��U V
var
�� 
sysType
�� 
=
�� 
ResolveSystemType
�� #
(
��# $
elType
��$ *
)
��* +
;
��+ ,
var
�� 
toBuildName
�� 
=
�� 
$str
�� 
+
��  !
sysType
��" )
.
��) *
name
��* .
;
��. /
if
�� 
(
�� 
!
�� 	
_buildArrayTypes
��	 
.
�� 
Contains
�� "
(
��" #
toBuildName
��# .
)
��. /
)
��/ 0
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� "
,
��" #
$str
��$ 1
,
��1 2

Namespaces
��3 =
.
��= >
	XMLNS_XSD
��> G
)
��G H
;
��H I
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
toBuildName
��) 4
)
��4 5
;
��5 6
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� "
,
��" #
$str
��$ .
,
��. /

Namespaces
��0 :
.
��: ;
	XMLNS_XSD
��; D
)
��D E
;
��E F
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
elType
�� !
,
��! "
null
��# '
,
��' (
true
��) -
)
��- .
;
��. /
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� "
,
��" #
$str
��$ -
,
��- .

Namespaces
��/ 9
.
��9 :
	XMLNS_XSD
��: C
)
��C D
;
��D E
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
toBuildName
��) 4
)
��4 5
;
��5 6
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) /
+
��0 1
toBuildName
��2 =
)
��= >
;
��> ?
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
_buildArrayTypes
�� 
.
�� 
Add
�� 
(
�� 
toBuildName
�� %
)
��% &
;
��& '
}
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
  
AddMSSerialization
�� !
(
��! "!
XmlDictionaryWriter
��" 5
writer
��6 <
)
��< =
{
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" *
,
��* +

Namespaces
��, 6
.
��6 7
	XMLNS_XSD
��7 @
)
��@ A
;
��A B
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� 5
,
��5 6
$str
��7 B
)
��B C
;
��C D
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� 3
,
��3 4
$str
��5 @
)
��@ A
;
��A B
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� 0
,
��0 1

Namespaces
��2 <
.
��< =
SERIALIZATION_NS
��= M
)
��M N
;
��N O
writer
�� 	
.
��	 
!
WriteXmlnsAttribute
��
 
(
�� 
$str
�� "
,
��" #

Namespaces
��$ .
.
��. /
	XMLNS_XSD
��/ 8
)
��8 9
;
��9 :
writer
�� 	
.
��	 
!
WriteXmlnsAttribute
��
 
(
�� 
$str
�� #
,
��# $

Namespaces
��% /
.
��/ 0
SERIALIZATION_NS
��0 @
)
��@ A
;
��A B'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% .
,
��. /
$str
��0 <
,
��< =
true
��> B
)
��B C
;
��C D'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% -
,
��- .
$str
��/ :
,
��: ;
true
��< @
)
��@ A
;
��A B'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% 3
,
��3 4
$str
��5 F
,
��F G
true
��H L
)
��L M
;
��M N'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% .
,
��. /
$str
��0 <
,
��< =
true
��> B
)
��B C
;
��C D'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% +
,
��+ ,
$str
��- 6
,
��6 7
true
��8 <
)
��< =
;
��= >'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% /
,
��/ 0
$str
��1 >
,
��> ?
true
��@ D
)
��D E
;
��E F'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% .
,
��. /
$str
��0 <
,
��< =
true
��> B
)
��B C
;
��C D'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% -
,
��- .
$str
��/ :
,
��: ;
true
��< @
)
��@ A
;
��A B'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% ,
,
��, -
$str
��. 8
,
��8 9
true
��: >
)
��> ?
;
��? @'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% *
,
��* +
$str
��, 4
,
��4 5
true
��6 :
)
��: ;
;
��; <'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% +
,
��+ ,
$str
��- 6
,
��6 7
true
��8 <
)
��< =
;
��= >'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% ,
,
��, -
$str
��. 8
,
��8 9
true
��: >
)
��> ?
;
��? @'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% ,
,
��, -
$str
��. 8
,
��8 9
true
��: >
)
��> ?
;
��? @'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% -
,
��- .
$str
��/ :
,
��: ;
true
��< @
)
��@ A
;
��A B'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% 3
,
��3 4
$str
��5 F
,
��F G
true
��H L
)
��L M
;
��M N'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% 2
,
��2 3
$str
��4 D
,
��D E
true
��F J
)
��J K
;
��K L'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% 3
,
��3 4
$str
��5 F
,
��F G
true
��H L
)
��L M
;
��M N'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% 4
,
��4 5
$str
��6 H
,
��H I
true
��J N
)
��N O
;
��O P'
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% +
,
��+ ,
$str
��- 7
,
��7 8
true
��9 =
)
��= >
;
��> ?
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" .
,
��. /

Namespaces
��0 :
.
��: ;
	XMLNS_XSD
��; D
)
��D E
;
��E F
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' -
)
��- .
;
��. /
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" /
,
��/ 0

Namespaces
��1 ;
.
��; <
	XMLNS_XSD
��< E
)
��E F
;
��F G
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' /
)
��/ 0
;
��0 1
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� '
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% /
,
��/ 0
$str
��1 ?
,
��? @
true
��A E
)
��E F
;
��F G
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" .
,
��. /

Namespaces
��0 :
.
��: ;
	XMLNS_XSD
��; D
)
��D E
;
��E F
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' 1
)
��1 2
;
��2 3
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" /
,
��/ 0

Namespaces
��1 ;
.
��; <
	XMLNS_XSD
��< E
)
��E F
;
��F G
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' 4
)
��4 5
;
��5 6
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� &
,
��& '
$str
��( W
)
��W X
;
��X Y
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" 0
,
��0 1

Namespaces
��2 <
.
��< =
	XMLNS_XSD
��= F
)
��F G
;
��G H
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� &
,
��& '
$str
��( F
)
��F G
;
��G H
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" 0
,
��0 1

Namespaces
��2 <
.
��< =
	XMLNS_XSD
��= F
)
��F G
;
��G H
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� &
,
��& '
$str
��( E
)
��E F
;
��F G
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� '
WriteSerializationElement
�� 
(
�� 
writer
�� #
,
��# $
$str
��% +
,
��+ ,
$str
��- 7
,
��7 8
true
��9 =
)
��= >
;
��> ?
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" .
,
��. /

Namespaces
��0 :
.
��: ;
	XMLNS_XSD
��; D
)
��D E
;
��E F
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' -
)
��- .
;
��. /
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" /
,
��/ 0

Namespaces
��1 ;
.
��; <
	XMLNS_XSD
��< E
)
��E F
;
��F G
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' 2
)
��2 3
;
��3 4
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� &
,
��& '
$str
��( q
)
��q r
;
��r s
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" -
,
��- .

Namespaces
��/ 9
.
��9 :
	XMLNS_XSD
��: C
)
��C D
;
��D E
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' 4
)
��4 5
;
��5 6
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' 1
)
��1 2
;
��2 3
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" -
,
��- .

Namespaces
��/ 9
.
��9 :
	XMLNS_XSD
��: C
)
��C D
;
��D E
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' +
)
��+ ,
;
��, -
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' .
)
��. /
;
��/ 0
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" -
,
��- .

Namespaces
��/ 9
.
��9 :
	XMLNS_XSD
��: C
)
��C D
;
��D E
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' ,
)
��, -
;
��- .
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' 1
)
��1 2
;
��2 3
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 '
WriteSerializationElement
�� (
(
��( )!
XmlDictionaryWriter
��) <
writer
��= C
,
��C D
string
��E K
name
��L P
,
��P Q
string
��R X
type
��Y ]
,
��] ^
bool
��_ c
nillable
��d l
)
��l m
{
�� 
if
�� 
(
�� 
!
�� )
_builtSerializationElements
�� #
.
��# $
Contains
��$ ,
(
��, -
name
��- 1
)
��1 2
)
��2 3
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
name
��( ,
)
��, -
;
��- .
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  *
,
��* +
nillable
��, 4
?
��5 6
$str
��7 =
:
��> ?
$str
��@ G
)
��G H
;
��H I
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
type
��( ,
)
��, -
;
��- .
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� )
_builtSerializationElements
�� 
.
��  
Add
��  #
(
��# $
name
��$ (
)
��( )
;
��) *
}
�� 
}
�� 
private
�� 	
void
��
 
AddComplexTypes
�� 
(
�� !
XmlDictionaryWriter
�� 2
writer
��3 9
)
��9 :
{
�� 
foreach
�� 

(
�� 
var
�� 
type
�� 
in
�� !
_complexTypeToBuild
�� +
.
��+ ,
ToArray
��, 3
(
��3 4
)
��4 5
)
��5 6
{
�� !
_complexTypeToBuild
�� 
[
�� 
type
�� 
.
�� 
Key
��  
]
��  !
=
��" #&
GetDataContractNamespace
��$ <
(
��< =
type
��= A
.
��A B
Key
��B E
)
��E F
;
��F G
DiscoverTypes
�� 
(
�� 
type
�� 
.
�� 
Key
�� 
,
�� 
true
��  
)
��  !
;
��! "
}
�� 
var
��  
groupedByNamespace
�� 
=
�� !
_complexTypeToBuild
�� /
.
��/ 0
GroupBy
��0 7
(
��7 8
x
��8 9
=>
��: <
x
��= >
.
��> ?
Value
��? D
)
��D E
.
��E F
ToDictionary
��F R
(
��R S
x
��S T
=>
��U W
x
��X Y
.
��Y Z
Key
��Z ]
,
��] ^
x
��_ `
=>
��a c
x
��d e
.
��e f
Select
��f l
(
��l m
k
��m n
=>
��o q
k
��r s
.
��s t
Key
��t w
)
��w x
)
��x y
;
��y z
foreach
�� 

(
�� 
var
�� 
types
�� 
in
��  
groupedByNamespace
�� +
.
��+ ,
Distinct
��, 4
(
��4 5
)
��5 6
)
��6 7
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  4
,
��4 5
$str
��6 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  1
,
��1 2
GetModelNamespace
��3 D
(
��D E
types
��E J
.
��J K
Key
��K N
)
��N O
)
��O P
;
��P Q
writer
�� 

.
��
 !
WriteXmlnsAttribute
�� 
(
�� 
$str
�� #
,
��# $

Namespaces
��% /
.
��/ 0
	XMLNS_XSD
��0 9
)
��9 :
;
��: ;
writer
�� 

.
��
 !
WriteXmlnsAttribute
�� 
(
�� 
$str
�� $
,
��$ %
GetModelNamespace
��& 7
(
��7 8
types
��8 =
.
��= >
Key
��> A
)
��A B
)
��B C
;
��C D
writer
�� 

.
��
 !
WriteXmlnsAttribute
�� 
(
�� 
$str
�� $
,
��$ %

Namespaces
��& 0
.
��0 1
SERIALIZATION_NS
��1 A
)
��A B
;
��B C
_namespaceCounter
�� 
=
�� 
$num
�� 
;
�� 
_schemaNamespace
�� 
=
�� 
GetModelNamespace
�� (
(
��( )
types
��) .
.
��. /
Key
��/ 2
)
��2 3
;
��3 4
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,

Namespaces
��- 7
.
��7 8
	SYSTEM_NS
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  +
,
��+ ,

Namespaces
��- 7
.
��7 8
	ARRAYS_NS
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
type
�� 
in
�� 
types
�� 
.
�� 
Value
�� $
.
��$ %
Distinct
��% -
(
��- .
new
��. 1
TypesComparer
��2 ?
(
��? @
GetTypeName
��@ K
)
��K L
)
��L M
)
��M N
{
�� 
if
�� 
(
�� 	
type
��	 
.
�� 
IsEnum
�� 
)
�� 
{
�� 
	WriteEnum
�� 
(
�� 
writer
�� 
,
�� 
type
�� 
)
�� 
;
�� 
}
�� 
else
�� 	
{
�� 
WriteComplexType
�� 
(
�� 
writer
�� 
,
�� 
type
�� #
)
��# $
;
��$ %
}
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� "
,
��" #
$str
��$ -
,
��- .

Namespaces
��/ 9
.
��9 :
	XMLNS_XSD
��: C
)
��C D
;
��D E
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
GetTypeName
��) 4
(
��4 5
type
��5 9
)
��9 :
)
��: ;
;
��; <
if
�� 
(
�� 	
!
��	 

type
��
 
.
�� 
IsEnum
�� 
||
�� 
Nullable
�� !
.
��! "
GetUnderlyingType
��" 3
(
��3 4
type
��4 8
)
��8 9
!=
��: <
null
��= A
)
��A B
{
�� 
writer
�� 
.
�� "
WriteAttributeString
�� !
(
��! "
$str
��" ,
,
��, -
$str
��. 4
)
��4 5
;
��5 6
}
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) /
+
��0 1
GetTypeName
��2 =
(
��= >
type
��> B
)
��B C
)
��C D
;
��D E
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
void
��
 
DiscoverTypes
�� 
(
�� 
Type
�� !
type
��" &
,
��& '
bool
��( ,

isRootType
��- 7
)
��7 8
{
�� 
if
�� 
(
�� #
_complexTypeProcessed
�� 
.
�� 
Contains
�� %
(
��% &
type
��& *
)
��* +
)
��+ ,
{
�� 
return
�� 

;
��
 
}
�� 
if
�� 
(
�� 
type
�� 
==
�� 
typeof
�� 
(
�� 
DateTimeOffset
�� $
)
��$ %
)
��% &
{
�� 
return
�� 

;
��
 
}
�� #
_complexTypeProcessed
�� 
.
�� 
Add
�� 
(
�� 
type
�� !
)
��! "
;
��" #
IEnumerable
�� 
<
��  
KnownTypeAttribute
�� !
>
��! "

knownTypes
��# -
=
��. /
type
��0 4
.
��4 5!
GetCustomAttributes
��5 H
<
��H I 
KnownTypeAttribute
��I [
>
��[ \
(
��\ ]
inherit
��] d
:
��d e
false
��f k
)
��k l
;
��l m
foreach
�� 

(
��  
KnownTypeAttribute
�� 
	knownType
�� (
in
��) +

knownTypes
��, 6
)
��6 7
{
�� 
if
�� 
(
�� 
	knownType
�� 
.
�� 
Type
�� 
is
�� 
null
�� 
)
�� 
{
�� 
throw
�� 

new
�� #
NotSupportedException
�� $
(
��$ %
$"
��% '%
Only type property of `
��' >
{
��> ?
nameof
��? E
(
��E F 
KnownTypeAttribute
��F X
)
��X Y
}
��Y Z
` is supported.
��Z i
"
��i j
)
��j k
;
��k l
}
�� !
_complexTypeToBuild
�� 
[
�� 
	knownType
�� !
.
��! "
Type
��" &
]
��& '
=
��( )&
GetDataContractNamespace
��* B
(
��B C
	knownType
��C L
.
��L M
Type
��M Q
)
��Q R
;
��R S
DiscoverTypes
�� 
(
�� 
	knownType
�� 
.
�� 
Type
��  
,
��  !
false
��" '
)
��' (
;
��( )
}
�� 
if
�� 
(
�� 
HasBaseType
�� 
(
�� 
type
�� 
)
�� 
&&
�� 
type
��  
.
��  !
BaseType
��! )
!=
��* ,
null
��- 1
)
��1 2
{
�� !
_complexTypeToBuild
�� 
[
�� 
type
�� 
.
�� 
BaseType
�� %
]
��% &
=
��' (&
GetDataContractNamespace
��) A
(
��A B
type
��B F
.
��F G
BaseType
��G O
)
��O P
;
��P Q
DiscoverTypes
�� 
(
�� 
type
�� 
.
�� 
BaseType
�� 
,
��  
false
��! &
)
��& '
;
��' (
}
�� 
if
�� 
(
�� 
(
�� 
type
�� 
.
�� 
IsArray
�� 
||
�� 
typeof
�� 
(
�� 
IEnumerable
�� *
)
��* +
.
��+ ,
IsAssignableFrom
��, <
(
��< =
type
��= A
)
��A B
)
��B C
&&
��D F
type
��G K
.
��K L
IsGenericType
��L Y
)
��Y Z
{
�� 
var
�� 
genericType
�� 
=
�� 
GetGenericType
�� $
(
��$ %
type
��% )
)
��) *
;
��* +
var
�� 
(
�� 	
name
��	 
,
�� 
_
�� 
)
�� 
=
�� 
ResolveSystemType
�� %
(
��% &
genericType
��& 1
)
��1 2
;
��2 3
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� 
(
�� 
name
�� !
)
��! "
)
��" #
{
�� !
_complexTypeToBuild
�� 
[
�� 
genericType
�� $
]
��$ %
=
��& '&
GetDataContractNamespace
��( @
(
��@ A
genericType
��A L
)
��L M
;
��M N
DiscoverTypes
�� 
(
�� 
genericType
�� 
,
�� 
true
��  $
)
��$ %
;
��% &
}
�� 
}
�� 
foreach
�� 

(
�� 
var
�� 
property
�� 
in
�� 
type
��  
.
��  !
GetProperties
��! .
(
��. /
)
��/ 0
.
��0 1
Where
��1 6
(
��6 7
prop
��7 ;
=>
��< >
prop
�� 

.
��
 
DeclaringType
�� 
==
�� 
type
��  
&&
�� 
prop
��	 
.
�� 
CustomAttributes
�� 
.
�� 
All
�� "
(
��" #
attr
��# '
=>
��( *
attr
��+ /
.
��/ 0
AttributeType
��0 =
.
��= >
Name
��> B
!=
��C E
$str
��F a
)
��a b
&&
�� 
!
��	 

prop
��
 
.
�� 
PropertyType
�� 
.
�� 
IsPrimitive
�� '
&&
�� 
!
��	 


SysTypeDic
��
 
.
�� 
ContainsKey
��  
(
��  !
prop
��! %
.
��% &
PropertyType
��& 2
.
��2 3
FullName
��3 ;
)
��; <
&&
�� 
prop
��	 
.
�� 
PropertyType
�� 
!=
�� 
typeof
�� $
(
��$ %
	ValueType
��% .
)
��. /
&&
�� 
prop
��	 
.
�� 
PropertyType
�� 
!=
�� 
typeof
�� $
(
��$ %
DateTimeOffset
��% 3
)
��3 4
)
��4 5
)
��5 6
{
�� 
Type
�� 
propertyType
��	 
;
�� 
var
�� 
underlyingType
�� 
=
�� 
Nullable
�� !
.
��! "
GetUnderlyingType
��" 3
(
��3 4
property
��4 <
.
��< =
PropertyType
��= I
)
��I J
;
��J K
if
�� 
(
�� 
Nullable
�� 
.
�� 
GetUnderlyingType
�� "
(
��" #
property
��# +
.
��+ ,
PropertyType
��, 8
)
��8 9
!=
��: <
null
��= A
)
��A B
{
�� 
propertyType
�� 
=
�� 
underlyingType
�� "
;
��" #
}
�� 
else
�� 
if
��	 
(
�� 
property
�� 
.
�� 
PropertyType
�� "
.
��" #
IsArray
��# *
||
��+ -
typeof
��. 4
(
��4 5
IEnumerable
��5 @
)
��@ A
.
��A B
IsAssignableFrom
��B R
(
��R S
property
��S [
.
��[ \
PropertyType
��\ h
)
��h i
)
��i j
{
�� 
propertyType
�� 
=
�� 
property
�� 
.
�� 
PropertyType
�� )
.
��) *
IsArray
��* 1
?
�� 
property
�� 
.
�� 
PropertyType
�� 
.
�� 
GetElementType
�� ,
(
��, -
)
��- .
:
�� 
GetGenericType
�� 
(
�� 
property
�� 
.
��  
PropertyType
��  ,
)
��, -
;
��- .!
_complexTypeToBuild
�� 
[
�� 
property
�� !
.
��! "
PropertyType
��" .
]
��. /
=
��0 1&
GetDataContractNamespace
��2 J
(
��J K
property
��K S
.
��S T
PropertyType
��T `
)
��` a
;
��a b
}
�� 
else
�� 
{
�� 
propertyType
�� 
=
�� 
property
�� 
.
�� 
PropertyType
�� )
;
��) *
}
�� 
if
�� 
(
�� 
propertyType
�� 
!=
�� 
null
�� 
&&
�� 
!
��  !
propertyType
��! -
.
��- .
IsPrimitive
��. 9
&&
��: <
!
��= >

SysTypeDic
��> H
.
��H I
ContainsKey
��I T
(
��T U
propertyType
��U a
.
��a b
FullName
��b j
)
��j k
)
��k l
{
�� 
if
�� 
(
�� 	
propertyType
��	 
==
�� 
type
�� 
)
�� 
{
�� 
continue
�� 
;
�� 
}
�� !
_complexTypeToBuild
�� 
[
�� 
propertyType
�� %
]
��% &
=
��' (&
GetDataContractNamespace
��) A
(
��A B
propertyType
��B N
)
��N O
;
��O P
DiscoverTypes
�� 
(
�� 
propertyType
�� 
,
��  
false
��! &
)
��& '
;
��' (
}
�� 
}
�� 
}
�� 
private
�� 	
void
��
 
	WriteEnum
�� 
(
�� !
XmlDictionaryWriter
�� ,
writer
��- 3
,
��3 4
Type
��5 9
type
��: >
)
��> ?
{
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsByRef
�� 
)
�� 
{
�� 
type
�� 
=
��	 

type
�� 
.
�� 
GetElementType
�� 
(
�� 
)
��  
;
��  !
}
�� 
var
�� 
typeName
�� 
=
�� 
GetTypeName
�� 
(
�� 
type
�� "
)
��" #
;
��# $
if
�� 
(
�� 
!
�� 
_builtEnumTypes
�� 
.
�� 
Contains
��  
(
��  !
typeName
��! )
)
��) *
)
��* +
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# /
,
��/ 0

Namespaces
��1 ;
.
��; <
	XMLNS_XSD
��< E
)
��E F
;
��F G
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
typeName
��( 0
)
��0 1
;
��1 2
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# 0
,
��0 1

Namespaces
��2 <
.
��< =
	XMLNS_XSD
��= F
)
��F G
;
��G H
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 3
)
��3 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
name
�� 
in
�� 
Enum
�� 
.
�� 
GetNames
�� &
(
��& '
type
��' +
)
��+ ,
)
��, -
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� "
,
��" #
$str
��$ 1
,
��1 2

Namespaces
��3 =
.
��= >
	XMLNS_XSD
��> G
)
��G H
;
��H I
var
�� !
enumMemberAttribute
��	 
=
�� 
(
��  
(
��  !!
EnumMemberAttribute
��! 4
[
��4 5
]
��5 6
)
��6 7
type
��7 ;
.
��; <
GetField
��< D
(
��D E
name
��E I
)
��I J
.
��J K!
GetCustomAttributes
��K ^
(
��^ _
typeof
��_ e
(
��e f!
EnumMemberAttribute
��f y
)
��y z
,
��z {
true��| �
)��� �
)��� �
.��� �
SingleOrDefault��� �
(��� �
)��� �
;��� �
var
�� 
value
��	 
=
�� !
enumMemberAttribute
�� $
is
��% '
null
��( ,
||
��- /
!
��0 1!
enumMemberAttribute
��1 D
.
��D E"
IsValueSetExplicitly
��E Y
?
�� 
name
�� 
:
�� !
enumMemberAttribute
�� 
.
�� 
Value
�� !
;
��! "
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! (
,
��( )
value
��* /
)
��/ 0
;
��0 1
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
_builtEnumTypes
�� 
.
�� 
Add
�� 
(
�� 
typeName
��  
)
��  !
;
��! "
}
�� 
}
�� 
private
�� 	
void
��
 
WriteComplexType
�� 
(
��  !
XmlDictionaryWriter
��  3
writer
��4 :
,
��: ;
Type
��< @
type
��A E
)
��E F
{
�� 
var
�� 
toBuildName
�� 
=
�� 
GetTypeName
��  
(
��  !
type
��! %
)
��% &
;
��& '
if
�� 
(
��  
_builtComplexTypes
�� 
.
�� 
Contains
�� "
(
��" #
toBuildName
��# .
)
��. /
)
��/ 0
{
�� 
return
�� 

;
��
 
}
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" /
,
��/ 0

Namespaces
��1 ;
.
��; <
	XMLNS_XSD
��< E
)
��E F
;
��F G
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
toBuildName
��' 2
)
��2 3
;
��3 4
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� &
,
��& '
$str
��( -
,
��- .
null
��/ 3
,
��3 4

Namespaces
��5 ?
.
��? @
SERIALIZATION_NS
��@ P
)
��P Q
;
��Q R
if
�� 
(
�� 
type
�� 
.
�� 
IsValueType
�� 
&&
�� 
ResolveSystemType
�� ,
(
��, -
type
��- 1
)
��1 2
.
��2 3
name
��3 7
==
��8 :
null
��; ?
)
��? @
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# /
,
��/ 0

Namespaces
��1 ;
.
��; <
	XMLNS_XSD
��< E
)
��E F
;
��F G
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� *
,
��* +

Namespaces
��, 6
.
��6 7
SERIALIZATION_NS
��7 G
)
��G H
;
��H I
writer
�� 

.
��
 

WriteValue
�� 
(
�� 
true
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
var
�� 
hasBaseType
�� 
=
�� 
HasBaseType
��  
(
��  !
type
��! %
)
��% &
;
��& '
if
�� 
(
�� 
hasBaseType
�� 
)
�� 
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# 3
,
��3 4

Namespaces
��5 ?
.
��? @
	XMLNS_XSD
��@ I
)
��I J
;
��J K
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  '
,
��' (
$str
��) 0
)
��0 1
;
��1 2
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� !
,
��! "
$str
��# .
,
��. /

Namespaces
��0 :
.
��: ;
	XMLNS_XSD
��; D
)
��D E
;
��E F
var
�� 
modelNamespace
�� 
=
�� &
GetDataContractNamespace
�� 1
(
��1 2
type
��2 6
.
��6 7
BaseType
��7 ?
)
��? @
;
��@ A
var
�� 
typeName
�� 
=
�� 
GetTypeName
�� 
(
�� 
type
�� #
.
��# $
BaseType
��$ ,
)
��, -
;
��- .
if
�� 
(
�� 
_schemaNamespace
�� 
!=
�� 
modelNamespace
�� *
)
��* +
{
�� 
var
�� 
ns
��	 
=
�� 
$"
�� 
q
�� 
{
�� 
_namespaceCounter
�� #
++
��# %
}
��% &
"
��& '
;
��' (
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$"
��) +
{
��+ ,
ns
��, .
}
��. /
:
��/ 0
{
��0 1
typeName
��1 9
}
��9 :
"
��: ;
)
��; <
;
��< =
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! (
,
��( )
ns
��* ,
,
��, -
null
��. 2
,
��2 3
modelNamespace
��4 B
)
��B C
;
��C D
}
�� 
else
�� 
{
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$"
��) +
tns:
��+ /
{
��/ 0
typeName
��0 8
}
��8 9
"
��9 :
)
��: ;
;
��; <
}
�� 
}
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" ,
,
��, -

Namespaces
��. 8
.
��8 9
	XMLNS_XSD
��9 B
)
��B C
;
��C D
if
�� 
(
�� 
type
�� 
.
�� 
IsArray
�� 
||
�� 
typeof
�� 
(
�� 
IEnumerable
�� )
)
��) *
.
��* +
IsAssignableFrom
��+ ;
(
��; <
type
��< @
)
��@ A
)
��A B
{
�� 
var
�� 
elementType
�� 
=
�� 
type
�� 
.
�� 
IsArray
�� "
?
��# $
type
��% )
.
��) *
GetElementType
��* 8
(
��8 9
)
��9 :
:
��; <
GetGenericType
��= K
(
��K L
type
��L P
)
��P Q
;
��Q R
string
�� 

elementName
�� 
=
�� 
null
�� 
;
�� 
var
�� -
collectionDataContractAttribute
�� '
=
��( )
type
��* .
.
��. / 
GetCustomAttribute
��/ A
<
��A B-
CollectionDataContractAttribute
��B a
>
��a b
(
��b c
)
��c d
;
��d e
if
�� 
(
�� -
collectionDataContractAttribute
�� '
!=
��( *
null
��+ /
&&
��0 2-
collectionDataContractAttribute
��3 R
.
��R S%
IsItemNameSetExplicitly
��S j
)
��j k
{
�� 
elementName
�� 
=
�� -
collectionDataContractAttribute
�� 2
.
��2 3
ItemName
��3 ;
;
��; <
}
�� 
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
elementType
�� %
,
��% &
elementName
��' 2
,
��2 3
true
��4 8
,
��8 9&
GetDataContractNamespace
��: R
(
��R S
type
��S W
)
��W X
)
��X Y
;
��Y Z
}
�� 
else
�� 
{
�� 
var
�� 

properties
�� 
=
�� 
type
�� 
.
�� 
GetProperties
�� '
(
��' (
)
��( )
.
��) *
Where
��* /
(
��/ 0
prop
��0 4
=>
��5 7
prop
�� 	
.
��	 

DeclaringType
��
 
==
�� 
type
�� 
&&
��  "
prop
�� 	
.
��	 

CustomAttributes
��
 
.
�� 
All
�� 
(
�� 
attr
�� #
=>
��$ &
attr
��' +
.
��+ ,
AttributeType
��, 9
.
��9 :
Name
��: >
!=
��? A
$str
��B ]
)
��] ^
)
��^ _
;
��_ `
var
��  
dataMembersToWrite
�� 
=
�� 
new
��  
List
��! %
<
��% &#
DataMemberDescription
��& ;
>
��; <
(
��< =
)
��= >
;
��> ?
foreach
�� 
(
�� 
var
�� 
property
�� 
in
�� 

properties
�� '
)
��' (
{
�� 
var
�� 
propertyName
��	 
=
�� 
property
��  
.
��  !
Name
��! %
;
��% &
var
�� 

attributes
��	 
=
�� 
property
�� 
.
�� !
GetCustomAttributes
�� 2
(
��2 3
true
��3 7
)
��7 8
;
��8 9
int
�� 
order
��	 
=
�� 
$num
�� 
;
�� 
bool
�� 	

isRequired
��
 
=
�� 
false
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
attr
�� 
in
�� 

attributes
�� $
)
��$ %
{
�� 
if
�� 
(
��	 

attr
��
 
is
�� !
DataMemberAttribute
�� %#
dataContractAttribute
��& ;
)
��; <
{
�� 
if
�� 	
(
��
 #
dataContractAttribute
��  
.
��  !!
IsNameSetExplicitly
��! 4
)
��4 5
{
�� 
propertyName
�� 
=
�� #
dataContractAttribute
�� ,
.
��, -
Name
��- 1
;
��1 2
}
�� 
if
�� 	
(
��
 #
dataContractAttribute
��  
.
��  !
Order
��! &
>
��' (
$num
��) *
)
��* +
{
�� 
order
�� 
=
�� #
dataContractAttribute
�� %
.
��% &
Order
��& +
;
��+ ,
}
�� 

isRequired
�� 
=
�� #
dataContractAttribute
�� )
.
��) *

IsRequired
��* 4
;
��4 5
break
�� 
;
�� 
}
�� 
}
��  
dataMembersToWrite
�� 
.
�� 
Add
�� 
(
�� 
new
�� #
DataMemberDescription
��  5
{
�� 
Name
�� 

=
�� 
propertyName
�� 
,
�� 
Type
�� 

=
�� 
property
�� 
.
�� 
PropertyType
�� "
,
��" #
Order
�� 
=
�� 
order
�� 
,
�� 

IsRequired
�� 
=
�� 

isRequired
�� 
}
�� 
)
�� 
;
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
p
�� 
in
��  
dataMembersToWrite
�� (
.
��( )
OrderBy
��) 0
(
��0 1
x
��1 2
=>
��3 5
x
��6 7
.
��7 8
Order
��8 =
)
��= >
.
��> ?
ThenBy
��? E
(
��E F
p
��F G
=>
��H J
p
��K L
.
��L M
Name
��M Q
,
��Q R
StringComparer
��S a
.
��a b
Ordinal
��b i
)
��i j
)
��j k
{
�� 
AddSchemaType
�� 
(
�� 
writer
�� 
,
�� 
p
�� 
.
�� 
Type
�� !
,
��! "
p
��# $
.
��$ %
Name
��% )
,
��) *
false
��+ 0
,
��0 1&
GetDataContractNamespace
��2 J
(
��J K
p
��K L
.
��L M
Type
��M Q
)
��Q R
,
��R S
p
��T U
.
��U V

IsRequired
��V `
)
��` a
;
��a b
}
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
hasBaseType
�� 
)
�� 
{
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
��  
_builtComplexTypes
�� 
.
�� 
Add
�� 
(
�� 
toBuildName
�� %
)
��% &
;
��& '
}
�� 
private
�� 	
void
��
 
AddMessages
�� 
(
�� !
XmlDictionaryWriter
�� .
writer
��/ 5
)
��5 6
{
�� 
foreach
�� 

(
�� 
var
�� 
	operation
�� 
in
�� 
_service
�� %
.
��% &

Operations
��& 0
)
��0 1
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% .
,
��. /

Namespaces
��0 :
.
��: ;
WSDL_NS
��; B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$"
��( *
{
��* +
BindingType
��+ 6
}
��6 7
_
��7 8
{
��8 9
	operation
��9 B
.
��B C
Name
��C G
}
��G H
_InputMessage
��H U
"
��U V
)
��V W
;
��W X
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% +
,
��+ ,

Namespaces
��- 7
.
��7 8
WSDL_NS
��8 ?
)
��? @
;
��@ A
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 4
)
��4 5
;
��5 6
string
�� 

inputElement
�� 
=
�� 
$str
��  
+
��! "
	operation
��# ,
.
��, -
Name
��- 1
;
��1 2
if
�� 
(
�� 
	operation
�� 
.
�� 
Contract
�� 
.
�� 
Name
�� 
!=
��  "
BindingType
��# .
)
��. /
{
�� 
var
�� 
ns
��	 
=
�� 
$"
�� 
q
�� 
{
�� 
_namespaceCounter
�� #
++
��# %
}
��% &
"
��& '
;
��' (
writer
�� 
.
�� !
WriteXmlnsAttribute
�� 
(
��  
$"
��  "
{
��" #
ns
��# %
}
��% &
"
��& '
,
��' (
	operation
��) 2
.
��2 3
Contract
��3 ;
.
��; <
	Namespace
��< E
)
��E F
;
��F G
inputElement
�� 
=
�� 
$"
�� 
{
�� 
ns
�� 
}
�� 
:
�� 
{
�� 
	operation
�� %
.
��% &
Name
��& *
}
��* +
"
��+ ,
;
��, -
}
�� 
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  )
,
��) *
inputElement
��+ 7
)
��7 8
;
��8 9
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 	
	operation
��	 
.
�� 
IsOneWay
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& /
,
��/ 0

Namespaces
��1 ;
.
��; <
WSDL_NS
��< C
)
��C D
;
��D E
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$"
��) +
{
��+ ,
BindingType
��, 7
}
��7 8
_
��8 9
{
��9 :
	operation
��: C
.
��C D
Name
��D H
}
��H I
_OutputMessage
��I W
"
��W X
)
��X Y
;
��Y Z
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& ,
,
��, -

Namespaces
��. 8
.
��8 9
WSDL_NS
��9 @
)
��@ A
;
��A B
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) 5
)
��5 6
;
��6 7
string
�� 
outputElement
�� 
=
�� 
$str
�� "
+
��# $
	operation
��% .
.
��. /
Name
��/ 3
+
��4 5
$str
��6 @
;
��@ A
if
�� 
(
�� 	
	operation
��	 
.
�� 
Contract
�� 
.
�� 
Name
��  
!=
��! #
BindingType
��$ /
)
��/ 0
{
�� 
var
�� 	
ns
��
 
=
�� 
$"
�� 
q
�� 
{
�� 
_namespaceCounter
�� $
++
��$ &
}
��& '
"
��' (
;
��( )
writer
�� 
.
�� !
WriteXmlnsAttribute
��  
(
��  !
$"
��! #
{
��# $
ns
��$ &
}
��& '
"
��' (
,
��( )
	operation
��* 3
.
��3 4
Contract
��4 <
.
��< =
	Namespace
��= F
)
��F G
;
��G H
outputElement
�� 
=
�� 
$"
�� 
{
�� 
ns
�� 
}
�� 
:
�� 
{
�� 
	operation
�� '
.
��' (
Name
��( ,
}
��, -
Response
��- 5
"
��5 6
;
��6 7
}
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! *
,
��* +
outputElement
��, 9
)
��9 :
;
��: ;
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
AddMessageFaults
�� 
(
�� 
writer
�� 
,
�� 
	operation
�� &
)
��& '
;
��' (
}
�� 
}
�� 
private
�� 	
void
��
 
AddMessageFaults
�� 
(
��  !
XmlDictionaryWriter
��  3
writer
��4 :
,
��: ;"
OperationDescription
��< P
	operation
��Q Z
)
��Z [
{
�� 
foreach
�� 

(
�� 
Type
�� 
fault
�� 
in
�� 
	operation
�� #
.
��# $
Faults
��$ *
)
��* +
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% .
,
��. /

Namespaces
��0 :
.
��: ;
WSDL_NS
��; B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$"
��( *
{
��* +
BindingType
��+ 6
}
��6 7
_
��7 8
{
��8 9
	operation
��9 B
.
��B C
Name
��C G
}
��G H
_
��H I
{
��I J
fault
��J O
.
��O P
Name
��P T
}
��T U 
Fault_FaultMessage
��U g
"
��g h
)
��h i
;
��i j
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% +
,
��+ ,

Namespaces
��- 7
.
��7 8
WSDL_NS
��8 ?
)
��? @
;
��@ A
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 0
)
��0 1
;
��1 2
var
�� 
ns
�� 

=
�� 
$"
�� 
q
�� 
{
�� 
_namespaceCounter
�� "
++
��" $
}
��$ %
"
��% &
;
��& '
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  )
,
��) *
$"
��+ -
{
��- .
ns
��. 0
}
��0 1
:
��1 2
{
��2 3
fault
��3 8
.
��8 9
Name
��9 =
}
��= >
"
��> ?
)
��? @
;
��@ A
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  '
,
��' (
ns
��) +
,
��+ ,
null
��- 1
,
��1 2&
GetDataContractNamespace
��3 K
(
��K L
fault
��L Q
)
��Q R
)
��R S
;
��S T
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
void
��
 
AddPortType
�� 
(
�� !
XmlDictionaryWriter
�� .
writer
��/ 5
)
��5 6
{
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ .
,
��. /

Namespaces
��0 :
.
��: ;
WSDL_NS
��; B
)
��B C
;
��C D
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
BindingType
��' 2
)
��2 3
;
��3 4
foreach
�� 

(
�� 
var
�� 
	operation
�� 
in
�� 
_service
�� %
.
��% &

Operations
��& 0
)
��0 1
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% 0
,
��0 1

Namespaces
��2 <
.
��< =
WSDL_NS
��= D
)
��D E
;
��E F
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
	operation
��( 1
.
��1 2
Name
��2 6
)
��6 7
;
��7 8
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% ,
,
��, -

Namespaces
��. 8
.
��8 9
WSDL_NS
��9 @
)
��@ A
;
��A B
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 0
,
��0 1

Namespaces
��2 <
.
��< =
WSAM_NS
��= D
,
��D E
	operation
��F O
.
��O P

SoapAction
��P Z
)
��Z [
;
��[ \
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  )
,
��) *
$"
��+ -
tns:
��- 1
{
��1 2
BindingType
��2 =
}
��= >
_
��> ?
{
��? @
	operation
��@ I
.
��I J
Name
��J N
}
��N O
_InputMessage
��O \
"
��\ ]
)
��] ^
;
��^ _
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 	
	operation
��	 
.
�� 
IsOneWay
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& .
,
��. /

Namespaces
��0 :
.
��: ;
WSDL_NS
��; B
)
��B C
;
��C D
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! '
,
��' (
$str
��) 1
,
��1 2

Namespaces
��3 =
.
��= >
WSAM_NS
��> E
,
��E F
	operation
��G P
.
��P Q

SoapAction
��Q [
+
��\ ]
$str
��^ h
)
��h i
;
��i j
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! *
,
��* +
$"
��, .
tns:
��. 2
{
��2 3
BindingType
��3 >
}
��> ?
_
��? @
{
��@ A
	operation
��A J
.
��J K
Name
��K O
}
��O P
_OutputMessage
��P ^
"
��^ _
)
��_ `
;
��` a
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
AddPortTypeFaults
�� 
(
�� 
writer
�� 
,
�� 
	operation
�� '
)
��' (
;
��( )
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 
AddPortTypeFaults
��  
(
��  !!
XmlDictionaryWriter
��! 4
writer
��5 ;
,
��; <"
OperationDescription
��= Q
	operation
��R [
)
��[ \
{
�� 
foreach
�� 

(
�� 
Type
�� 
fault
�� 
in
�� 
	operation
�� #
.
��# $
Faults
��$ *
)
��* +
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% ,
,
��, -

Namespaces
��. 8
.
��8 9
WSDL_NS
��9 @
)
��@ A
;
��A B
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$str
��( 0
,
��0 1

Namespaces
��2 <
.
��< =
WSAM_NS
��= D
,
��D E
$"
��F H
{
��H I
	operation
��I R
.
��R S

SoapAction
��S ]
}
��] ^
{
��^ _
fault
��_ d
.
��d e
Name
��e i
}
��i j
Fault
��j o
"
��o p
)
��p q
;
��q r
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$"
��( *
{
��* +
fault
��+ 0
.
��0 1
Name
��1 5
}
��5 6
Fault
��6 ;
"
��; <
)
��< =
;
��= >
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  )
,
��) *
$"
��+ -
tns:
��- 1
{
��1 2
_service
��2 :
.
��: ;
GeneralContract
��; J
.
��J K
Name
��K O
}
��O P
_
��P Q
{
��Q R
	operation
��R [
.
��[ \
Name
��\ `
}
��` a
_
��a b
{
��b c
fault
��c h
.
��h i
Name
��i m
}
��m n!
Fault_FaultMessage��n �
"��� �
)��� �
;��� �
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
void
��
 

AddBinding
�� 
(
�� !
XmlDictionaryWriter
�� -
writer
��. 4
)
��4 5
{
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ -
,
��- .

Namespaces
��/ 9
.
��9 :
WSDL_NS
��: A
)
��A B
;
��B C
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
BindingName
��' 2
)
��2 3
;
��3 4
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
$str
��' -
+
��. /
BindingType
��0 ;
)
��; <
;
��< =
if
�� 
(
�� 
_binding
�� 
.
�� 
HasBasicAuth
�� 
(
�� 
)
�� 
)
�� 
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� "
,
��" #
$str
��$ 5
,
��5 6

Namespaces
��7 A
.
��A B
WSP_NS
��B H
)
��H I
;
��I J
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  %
,
��% &
$"
��' )
#
��) *
{
��* +
_binding
��+ 3
.
��3 4
Name
��4 8
}
��8 9
_
��9 :
{
��: ;
BindingType
��; F
}
��F G
_policy
��G N
"
��N O
)
��O P
;
��P Q
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ -
,
��- .

Namespaces
��/ 9
.
��9 :
	SOAP11_NS
��: C
)
��C D
;
��D E
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� *
,
��* +

Namespaces
��, 6
.
��6 7
TRANSPORT_SCHEMA
��7 G
)
��G H
;
��H I
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
foreach
�� 

(
�� 
var
�� 
	operation
�� 
in
�� 
_service
�� %
.
��% &

Operations
��& 0
)
��0 1
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% 0
,
��0 1

Namespaces
��2 <
.
��< =
WSDL_NS
��= D
)
��D E
;
��E F
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
	operation
��( 1
.
��1 2
Name
��2 6
)
��6 7
;
��7 8
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% 0
,
��0 1

Namespaces
��2 <
.
��< =
	SOAP11_NS
��= F
)
��F G
;
��G H
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  ,
,
��, -
	operation
��. 7
.
��7 8

SoapAction
��8 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  '
,
��' (
$str
��) 3
)
��3 4
;
��4 5
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% ,
,
��, -

Namespaces
��. 8
.
��8 9
WSDL_NS
��9 @
)
��@ A
;
��A B
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% +
,
��+ ,

Namespaces
��- 7
.
��7 8
	SOAP11_NS
��8 A
)
��A B
;
��B C
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  %
,
��% &
$str
��' 0
)
��0 1
;
��1 2
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 	
	operation
��	 
.
�� 
IsOneWay
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& .
,
��. /

Namespaces
��0 :
.
��: ;
WSDL_NS
��; B
)
��B C
;
��C D
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
$str
�� $
,
��$ %
$str
��& ,
,
��, -

Namespaces
��. 8
.
��8 9
	SOAP11_NS
��9 B
)
��B C
;
��C D
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! &
,
��& '
$str
��( 1
)
��1 2
;
��2 3
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
AddBindingFaults
�� 
(
�� 
writer
�� 
,
�� 
	operation
�� &
)
��& '
;
��' (
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 
AddBindingFaults
�� 
(
��  !
XmlDictionaryWriter
��  3
writer
��4 :
,
��: ;"
OperationDescription
��< P
	operation
��Q Z
)
��Z [
{
�� 
foreach
�� 

(
�� 
Type
�� 
fault
�� 
in
�� 
	operation
�� #
.
��# $
Faults
��$ *
)
��* +
{
�� 
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% ,
,
��, -

Namespaces
��. 8
.
��8 9
WSDL_NS
��9 @
)
��@ A
;
��A B
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$"
��( *
{
��* +
fault
��+ 0
.
��0 1
Name
��1 5
}
��5 6
Fault
��6 ;
"
��; <
)
��< =
;
��= >
writer
�� 

.
��
 
WriteStartElement
�� 
(
�� 
$str
�� #
,
��# $
$str
��% ,
,
��, -

Namespaces
��. 8
.
��8 9
	SOAP11_NS
��9 B
)
��B C
;
��C D
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  %
,
��% &
$str
��' 0
)
��0 1
;
��1 2
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$"
��( *
{
��* +
fault
��+ 0
.
��0 1
Name
��1 5
}
��5 6
Fault
��6 ;
"
��; <
)
��< =
;
��= >
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
void
��
 

AddService
�� 
(
�� !
XmlDictionaryWriter
�� -
writer
��. 4
)
��4 5
{
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ -
,
��- .

Namespaces
��/ 9
.
��9 :
WSDL_NS
��: A
)
��A B
;
��B C
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
_service
��' /
.
��/ 0
ServiceType
��0 ;
.
��; <
Name
��< @
)
��@ A
;
��A B
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ *
,
��* +

Namespaces
��, 6
.
��6 7
WSDL_NS
��7 >
)
��> ?
;
��? @
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� %
,
��% &
PortName
��' /
)
��/ 0
;
��0 1
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� (
,
��( )
$str
��* 0
+
��1 2
BindingName
��3 >
)
��> ?
;
��? @
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
�� "
,
��" #
$str
��$ -
,
��- .

Namespaces
��/ 9
.
��9 :
	SOAP11_NS
��: C
)
��C D
;
��D E
writer
�� 	
.
��	 
"
WriteAttributeString
��
 
(
�� 
$str
�� )
,
��) *
_baseUrl
��+ 3
)
��3 4
;
��4 5
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
void
��
 
AddSchemaType
�� 
(
�� !
XmlDictionaryWriter
�� 0
writer
��1 7
,
��7 8
Type
��9 =
type
��> B
,
��B C
string
��D J
name
��K O
,
��O P
bool
��Q U
isArray
��V ]
=
��^ _
false
��` e
,
��e f
string
��g m
objectNamespace
��n }
=
��~ 
null��� �
,��� �
bool��� �

isRequired��� �
=��� �
false��� �
)��� �
{
�� 
var
�� 
typeInfo
�� 
=
�� 
type
�� 
.
�� 
GetTypeInfo
�� "
(
��" #
)
��# $
;
��$ %
var
�� 
typeName
�� 
=
�� 
GetTypeName
�� 
(
�� 
type
�� "
)
��" #
;
��# $
if
�� 
(
�� 
typeInfo
�� 
.
�� 
IsByRef
�� 
)
�� 
{
�� 
type
�� 
=
��	 

typeInfo
�� 
.
�� 
GetElementType
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
if
�� 
(
�� 
writer
�� 
.
�� <
.TryAddSchemaTypeFromXmlSchemaProviderAttribute
�� <
(
��< =
type
��= A
,
��A B
name
��C G
,
��G H
SoapSerializer
��I W
.
��W X$
DataContractSerializer
��X n
)
��n o
)
��o p
{
�� 
return
�� 

;
��
 
}
�� 
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
$str
��  
,
��  !
$str
��" +
,
��+ ,

Namespaces
��- 7
.
��7 8
	XMLNS_XSD
��8 A
)
��A B
;
��B C
if
�� 
(
�� 
objectNamespace
�� 
==
�� 
null
�� 
)
�� 
{
�� 
objectNamespace
�� 
=
�� 
GetModelNamespace
�� '
(
��' (
type
��( ,
)
��, -
;
��- .
}
�� 
if
�� 
(
�� 
typeInfo
�� 
.
�� 
IsEnum
�� 
||
�� 
Nullable
�� "
.
��" #
GetUnderlyingType
��# 4
(
��4 5
typeInfo
��5 =
)
��= >
?
��> ?
.
��? @
IsEnum
��@ F
==
��G I
true
��J N
)
��N O
{
�� %
WriteComplexElementType
�� 
(
�� 
writer
�� "
,
��" #
typeName
��$ ,
,
��, -
_schemaNamespace
��. >
,
��> ?
objectNamespace
��@ O
,
��O P
type
��Q U
)
��U V
;
��V W
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� 
(
�� 
name
�� !
)
��! "
)
��" #
{
�� 
name
�� 	
=
��
 
typeName
�� 
;
�� 
}
�� 
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
name
��( ,
)
��, -
;
��- .
if
�� 
(
�� 
isArray
�� 
)
�� 
{
�� 
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -

isRequired
��. 8
?
��9 :
$str
��; >
:
��? @
$str
��A D
)
��D E
;
��E F
writer
�� 
.
�� "
WriteAttributeString
��  
(
��  !
$str
��! ,
,
��, -
$str
��. 9
)
��9 :
;
��: ;
}
�� 
}
�� 
else
�� 
if
�� 

(
�� 
type
�� 
.
�� 
IsValueType
�� 
)
�� 
{
�� 
string
�� 


xsTypename
�� 
;
�� 
if
�� 
(
�� 
typeof
�� 
(
�� 
DateTimeOffset
�� 
)
�� 
.
�� 
IsAssignableFrom
�� /
(
��/ 0
type
��0 4
)
��4 5
)
��5 6
{
�� 
if
�� 
(
�� 	
string
��	 
.
�� 
IsNullOrEmpty
�� 
(
�� 
name
�� "
)
��" #
)
��# $
{
�	�	 
name
�	�	 

=
�	�	 
typeName
�	�	 
;
�	�	 
}
�	�	 
var
�	�	 
ns
�	�		 
=
�	�	 
$"
�	�	 
q
�	�	 
{
�	�	 
_namespaceCounter
�	�	 #
++
�	�	# %
}
�	�	% &
"
�	�	& '
;
�	�	' (

xsTypename
�	�	 
=
�	�	 
$"
�	�	 
{
�	�	 
ns
�	�	 
}
�	�	 
:
�	�	 
{
�	�	 
typeName
�	�	 "
}
�	�	" #
"
�	�	# $
;
�	�	$ %
writer
�	�	 
.
�	�	 !
WriteXmlnsAttribute
�	�	 
(
�	�	  
$"
�	�	  "
{
�	�	" #
ns
�	�	# %
}
�	�	% &
"
�	�	& '
,
�	�	' (

Namespaces
�	�	) 3
.
�	�	3 4
	SYSTEM_NS
�	�	4 =
)
�	�	= >
;
�	�	> ?"
_buildDateTimeOffset
�	�	 
=
�	�	 
true
�	�	  
;
�	�	  !
}
�	�	 
else
�	�	 
{
�	�	 
Type
�	�	 	
underlyingType
�	�	
 
=
�	�	 
Nullable
�	�	 #
.
�	�	# $
GetUnderlyingType
�	�	$ 5
(
�	�	5 6
type
�	�	6 :
)
�	�	: ;
;
�	�	; <
if
�	�	 
(
�	�	 	
underlyingType
�	�		 
!=
�	�	 
null
�	�	 
)
�	�	  
{
�	�	 
objectNamespace
�	�	 
=
�	�	 &
GetDataContractNamespace
�	�	 0
(
�	�	0 1
underlyingType
�	�	1 ?
)
�	�	? @
;
�	�	@ A
typeName
�	�	 
=
�	�	 
GetTypeName
�	�	 
(
�	�	 
underlyingType
�	�	 +
)
�	�	+ ,
;
�	�	, -
if
�	�	 
(
�	�		 

ResolveSystemType
�	�	
 
(
�	�	 
underlyingType
�	�	 *
)
�	�	* +
.
�	�	+ ,
name
�	�	, 0
!=
�	�	1 3
null
�	�	4 8
)
�	�	8 9
{
�	�	 
var
�	�	 

sysType
�	�	 
=
�	�	 
ResolveSystemType
�	�	 &
(
�	�	& '
underlyingType
�	�	' 5
)
�	�	5 6
;
�	�	6 7

xsTypename
�	�	 
=
�	�	 
$"
�	�	 
{
�	�	 
(
�	�	 
sysType
�	�	 
.
�	�	  
ns
�	�	  "
==
�	�	# %

Namespaces
�	�	& 0
.
�	�	0 1
SERIALIZATION_NS
�	�	1 A
?
�	�	B C
$str
�	�	D I
:
�	�	J K
$str
�	�	L P
)
�	�	P Q
}
�	�	Q R
:
�	�	R S
{
�	�	S T
sysType
�	�	T [
.
�	�	[ \
name
�	�	\ `
}
�	�	` a
"
�	�	a b
;
�	�	b c
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	 "
(
�	�	" #
$str
�	�	# -
,
�	�	- .
$str
�	�	/ 5
)
�	�	5 6
;
�	�	6 7
}
�	�	 
else
�	�	 

if
�	�	 
(
�	�	 
_schemaNamespace
�	�	 
!=
�	�	  "
objectNamespace
�	�	# 2
)
�	�	2 3
{
�	�	 
var
�	�	 

ns
�	�	 
=
�	�	 
$"
�	�	 
q
�	�	 
{
�	�	 
_namespaceCounter
�	�	 %
++
�	�	% '
}
�	�	' (
"
�	�	( )
;
�	�	) *
writer
�	�	 
.
�	�	 !
WriteXmlnsAttribute
�	�	 !
(
�	�	! "
$"
�	�	" $
{
�	�	$ %
ns
�	�	% '
}
�	�	' (
"
�	�	( )
,
�	�	) *&
GetDataContractNamespace
�	�	+ C
(
�	�	C D
type
�	�	D H
)
�	�	H I
)
�	�	I J
;
�	�	J K

xsTypename
�	�	 
=
�	�	 
$"
�	�	 
{
�	�	 
ns
�	�	 
}
�	�	 
:
�	�	 
{
�	�	 
typeName
�	�	 $
}
�	�	$ %
"
�	�	% &
;
�	�	& '
}
�	�	 
else
�	�	 

{
�	�	 

xsTypename
�	�	 
=
�	�	 
$"
�	�	 
tns:
�	�	 
{
�	�	 
typeName
�	�	 #
}
�	�	# $
"
�	�	$ %
;
�	�	% &
}
�	�	 
}
�	�	 
else
�	�	 	
{
�	�	 
if
�	�	 
(
�	�		 

ResolveSystemType
�	�	
 
(
�	�	 
type
�	�	  
)
�	�	  !
.
�	�	! "
name
�	�	" &
!=
�	�	' )
null
�	�	* .
)
�	�	. /
{
�	�	 
var
�	�	 

sysType
�	�	 
=
�	�	 
ResolveSystemType
�	�	 &
(
�	�	& '
type
�	�	' +
)
�	�	+ ,
;
�	�	, -

xsTypename
�	�	 
=
�	�	 
$"
�	�	 
{
�	�	 
(
�	�	 
sysType
�	�	 
.
�	�	  
ns
�	�	  "
==
�	�	# %

Namespaces
�	�	& 0
.
�	�	0 1
SERIALIZATION_NS
�	�	1 A
?
�	�	B C
$str
�	�	D I
:
�	�	J K
$str
�	�	L P
)
�	�	P Q
}
�	�	Q R
:
�	�	R S
{
�	�	S T
sysType
�	�	T [
.
�	�	[ \
name
�	�	\ `
}
�	�	` a
"
�	�	a b
;
�	�	b c
}
�	�	 
else
�	�	 

if
�	�	 
(
�	�	 
_schemaNamespace
�	�	 
!=
�	�	  "
objectNamespace
�	�	# 2
)
�	�	2 3
{
�	�	 
var
�	�	 

ns
�	�	 
=
�	�	 
$"
�	�	 
q
�	�	 
{
�	�	 
_namespaceCounter
�	�	 %
++
�	�	% '
}
�	�	' (
"
�	�	( )
;
�	�	) *
writer
�	�	 
.
�	�	 !
WriteXmlnsAttribute
�	�	 !
(
�	�	! "
$"
�	�	" $
{
�	�	$ %
ns
�	�	% '
}
�	�	' (
"
�	�	( )
,
�	�	) *&
GetDataContractNamespace
�	�	+ C
(
�	�	C D
type
�	�	D H
)
�	�	H I
)
�	�	I J
;
�	�	J K

xsTypename
�	�	 
=
�	�	 
$"
�	�	 
{
�	�	 
ns
�	�	 
}
�	�	 
:
�	�	 
{
�	�	 
typeName
�	�	 $
}
�	�	$ %
"
�	�	% &
;
�	�	& '
}
�	�	 
else
�	�	 

{
�	�	 

xsTypename
�	�	 
=
�	�	 
$"
�	�	 
tns:
�	�	 
{
�	�	 
typeName
�	�	 #
}
�	�	# $
"
�	�	$ %
;
�	�	% &
}
�	�	 
}
�	�	 
}
�	�	 
writer
�	�	 

.
�	�	
 "
WriteAttributeString
�	�	 
(
�	�	  
$str
�	�	  +
,
�	�	+ ,

isRequired
�	�	- 7
?
�	�	8 9
$str
�	�	: =
:
�	�	> ?
$str
�	�	@ C
)
�	�	C D
;
�	�	D E
if
�	�	 
(
�	�	 
isArray
�	�	 
)
�	�	 
{
�	�	 
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! ,
,
�	�	, -
$str
�	�	. 9
)
�	�	9 :
;
�	�	: ;
}
�	�	 
if
�	�	 
(
�	�	 
string
�	�	 
.
�	�	 
IsNullOrEmpty
�	�	 
(
�	�	 
name
�	�	 !
)
�	�	! "
)
�	�	" #
{
�	�	 
name
�	�	 	
=
�	�	
 

xsTypename
�	�	 
.
�	�	 
Split
�	�	 
(
�	�	 
$char
�	�	  
)
�	�	  !
[
�	�	! "
$num
�	�	" #
]
�	�	# $
;
�	�	$ %
}
�	�	 
writer
�	�	 

.
�	�	
 "
WriteAttributeString
�	�	 
(
�	�	  
$str
�	�	  &
,
�	�	& '
name
�	�	( ,
)
�	�	, -
;
�	�	- .
writer
�	�	 

.
�	�	
 "
WriteAttributeString
�	�	 
(
�	�	  
$str
�	�	  &
,
�	�	& '

xsTypename
�	�	( 2
)
�	�	2 3
;
�	�	3 4
}
�	�	 
else
�	�	 
{
�	�	 
writer
�	�	 

.
�	�	
 "
WriteAttributeString
�	�	 
(
�	�	  
$str
�	�	  +
,
�	�	+ ,

isRequired
�	�	- 7
?
�	�	8 9
$str
�	�	: =
:
�	�	> ?
$str
�	�	@ C
)
�	�	C D
;
�	�	D E
if
�	�	 
(
�	�	 
isArray
�	�	 
)
�	�	 
{
�	�	 
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! ,
,
�	�	, -
$str
�	�	. 9
)
�	�	9 :
;
�	�	: ;
}
�	�	 
if
�	�	 
(
�	�	 
type
�	�	 
.
�	�	 
Name
�	�	 
==
�	�	 
$str
�	�	 
||
�	�	  
type
�	�	! %
.
�	�	% &
Name
�	�	& *
==
�	�	+ -
$str
�	�	. 7
)
�	�	7 8
{
�	�	 
if
�	�	 
(
�	�	 	
string
�	�		 
.
�	�	 
IsNullOrEmpty
�	�	 
(
�	�	 
name
�	�	 "
)
�	�	" #
)
�	�	# $
{
�	�	 
name
�	�	 

=
�	�	 
$str
�	�	 
;
�	�	 
}
�	�	 
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! '
,
�	�	' (
name
�	�	) -
)
�	�	- .
;
�	�	. /
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! +
,
�	�	+ ,
$str
�	�	- 3
)
�	�	3 4
;
�	�	4 5
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! '
,
�	�	' (
$str
�	�	) 4
)
�	�	4 5
;
�	�	5 6
}
�	�	 
else
�	�	 
if
�	�		 
(
�	�	 
type
�	�	 
.
�	�	 
Name
�	�	 
==
�	�	 
$str
�	�	 "
||
�	�	# %
type
�	�	& *
.
�	�	* +
Name
�	�	+ /
==
�	�	0 2
$str
�	�	3 <
)
�	�	< =
{
�	�	 
if
�	�	 
(
�	�	 	
string
�	�		 
.
�	�	 
IsNullOrEmpty
�	�	 
(
�	�	 
name
�	�	 "
)
�	�	" #
)
�	�	# $
{
�	�	 
name
�	�	 

=
�	�	 
$str
�	�	 
;
�	�	 
}
�	�	 
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! '
,
�	�	' (
name
�	�	) -
)
�	�	- .
;
�	�	. /
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! '
,
�	�	' (
$str
�	�	) 5
)
�	�	5 6
;
�	�	6 7
}
�	�	 
else
�	�	 
if
�	�		 
(
�	�	 
type
�	�	 
.
�	�	 
Name
�	�	 
==
�	�	 
$str
�	�	 
||
�	�	  "
type
�	�	# '
.
�	�	' (
Name
�	�	( ,
==
�	�	- /
$str
�	�	0 6
)
�	�	6 7
{
�	�	 
if
�	�	 
(
�	�	 	
string
�	�		 
.
�	�	 
IsNullOrEmpty
�	�	 
(
�	�	 
name
�	�	 "
)
�	�	" #
)
�	�	# $
{
�	�	 
name
�	�	 

=
�	�	 
$str
�	�	 
;
�	�	 
}
�	�	 
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! '
,
�	�	' (
name
�	�	) -
)
�	�	- .
;
�	�	. /
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! '
,
�	�	' (
$str
�	�	) 4
)
�	�	4 5
;
�	�	5 6
}
�	�	 
else
�	�	 
if
�	�		 
(
�	�	 
type
�	�	 
==
�	�	 
typeof
�	�	 
(
�	�	 
	DataTable
�	�	 %
)
�	�	% &
)
�	�	& '
{
�	�	 
_buildDataTable
�	�	 
=
�	�	 
true
�	�	 
;
�	�	 
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! '
,
�	�	' (
name
�	�	) -
)
�	�	- .
;
�	�	. /
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! +
,
�	�	+ ,
$str
�	�	- 3
)
�	�	3 4
;
�	�	4 5
writer
�	�	 
.
�	�	 
WriteStartElement
�	�	 
(
�	�	 
$str
�	�	 "
,
�	�	" #
$str
�	�	$ 1
,
�	�	1 2

Namespaces
�	�	3 =
.
�	�	= >
	XMLNS_XSD
�	�	> G
)
�	�	G H
;
�	�	H I
writer
�	�	 
.
�	�	 
WriteStartElement
�	�	 
(
�	�	 
$str
�	�	 "
,
�	�	" #
$str
�	�	$ 0
,
�	�	0 1

Namespaces
�	�	2 <
.
�	�	< =
	XMLNS_XSD
�	�	= F
)
�	�	F G
;
�	�	G H
writer
�	�	 
.
�	�	 
WriteStartElement
�	�	 
(
�	�	 
$str
�	�	 "
,
�	�	" #
$str
�	�	$ -
,
�	�	- .

Namespaces
�	�	/ 9
.
�	�	9 :
	XMLNS_XSD
�	�	: C
)
�	�	C D
;
�	�	D E
writer
�	�	 
.
�	�	 
WriteStartElement
�	�	 
(
�	�	 
$str
�	�	 *
)
�	�	* +
;
�	�	+ ,
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! (
,
�	�	( )

Namespaces
�	�	* 4
.
�	�	4 5
SERIALIZATION_NS
�	�	5 E
)
�	�	E F
;
�	�	F G
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! '
,
�	�	' (
$str
�	�	) 4
)
�	�	4 5
;
�	�	5 6
writer
�	�	 
.
�	�	 "
WriteAttributeString
�	�	  
(
�	�	  !
$str
�	�	! ,
,
�	�	, -

Namespaces
�	�	. 8
.
�	�	8 9
SystemData_NS
�	�	9 F
)
�	�	F G
;
�	�	G H
writer
�	�	 
.
�	�	 
WriteEndElement
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
writer
�	�	 
.
�	�	 
WriteEndElement
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
writer
�	�	 
.
�	�	 
WriteEndElement
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
writer
�	�	 
.
�	�	 
WriteEndElement
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
writer
�
�
 
.
�
�
 
WriteStartElement
�
�
 
(
�
�
 
$str
�
�
 "
,
�
�
" #
$str
�
�
$ .
,
�
�
. /

Namespaces
�
�
0 :
.
�
�
: ;
	XMLNS_XSD
�
�
; D
)
�
�
D E
;
�
�
E F
writer
�
�
 
.
�
�
 
WriteStartElement
�
�
 
(
�
�
 
$str
�
�
 "
,
�
�
" #
$str
�
�
$ )
,
�
�
) *

Namespaces
�
�
+ 5
.
�
�
5 6
	XMLNS_XSD
�
�
6 ?
)
�
�
? @
;
�
�
@ A
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! ,
,
�
�
, -
$str
�
�
. 1
)
�
�
1 2
;
�
�
2 3
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! ,
,
�
�
, -
$str
�
�
. 9
)
�
�
9 :
;
�
�
: ;
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! ,
,
�
�
, -

Namespaces
�
�
. 8
.
�
�
8 9
	XMLNS_XSD
�
�
9 B
)
�
�
B C
;
�
�
C D
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! 2
,
�
�
2 3
$str
�
�
4 9
)
�
�
9 :
;
�
�
: ;
writer
�
�
 
.
�
�
 
WriteEndElement
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
writer
�
�
 
.
�
�
 
WriteStartElement
�
�
 
(
�
�
 
$str
�
�
 "
,
�
�
" #
$str
�
�
$ )
,
�
�
) *

Namespaces
�
�
+ 5
.
�
�
5 6
	XMLNS_XSD
�
�
6 ?
)
�
�
? @
;
�
�
@ A
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! ,
,
�
�
, -
$str
�
�
. 1
)
�
�
1 2
;
�
�
2 3
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! ,
,
�
�
, -
$str
�
�
. Y
)
�
�
Y Z
;
�
�
Z [
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! 2
,
�
�
2 3
$str
�
�
4 9
)
�
�
9 :
;
�
�
: ;
writer
�
�
 
.
�
�
 
WriteEndElement
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
writer
�
�
 
.
�
�
 
WriteEndElement
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
else
�
�
 
if
�
�
	 
(
�
�
 
type
�
�
 
.
�
�
 
Name
�
�
 
==
�
�
 
$str
�
�
 "
)
�
�
" #
{
�
�
 
if
�
�
 
(
�
�
 	
string
�
�
	 
.
�
�
 
IsNullOrEmpty
�
�
 
(
�
�
 
name
�
�
 "
)
�
�
" #
)
�
�
# $
{
�
�
 
name
�
�
 

=
�
�
 
$str
�
�
 
;
�
�
 
}
�
�
 
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! '
,
�
�
' (
name
�
�
) -
)
�
�
- .
;
�
�
. /
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! '
,
�
�
' (
$str
�
�
) :
)
�
�
: ;
;
�
�
; <
}
�
�
 
else
�
�
 
if
�
�
	 
(
�
�
 
type
�
�
 
==
�
�
 
typeof
�
�
 
(
�
�
 
Stream
�
�
 "
)
�
�
" #
||
�
�
$ &
typeof
�
�
' -
(
�
�
- .
Stream
�
�
. 4
)
�
�
4 5
.
�
�
5 6
IsAssignableFrom
�
�
6 F
(
�
�
F G
type
�
�
G K
)
�
�
K L
)
�
�
L M
{
�
�
 
name
�
�
 	
=
�
�

 
$str
�
�
 
;
�
�
 
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! '
,
�
�
' (
name
�
�
) -
)
�
�
- .
;
�
�
. /
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! '
,
�
�
' (
$str
�
�
) :
)
�
�
: ;
;
�
�
; <
}
�
�
 
else
�
�
 
if
�
�
	 
(
�
�
 
typeof
�
�
 
(
�
�
 
IEnumerable
�
�
 
)
�
�
  
.
�
�
  !
IsAssignableFrom
�
�
! 1
(
�
�
1 2
type
�
�
2 6
)
�
�
6 7
)
�
�
7 8
{
�
�
 
var
�
�
 
elType
�
�
	 
=
�
�
 
type
�
�
 
;
�
�
 
var
�
�
 -
collectionDataContractAttribute
�
�
	 (
=
�
�
) *
type
�
�
+ /
.
�
�
/ 0 
GetCustomAttribute
�
�
0 B
<
�
�
B C-
CollectionDataContractAttribute
�
�
C b
>
�
�
b c
(
�
�
c d
)
�
�
d e
;
�
�
e f
if
�
�
 
(
�
�
 	-
collectionDataContractAttribute
�
�
	 (
==
�
�
) +
null
�
�
, 0
)
�
�
0 1
{
�
�
 
elType
�
�
 
=
�
�
 
elType
�
�
 
.
�
�
 
IsArray
�
�
 
?
�
�
 
type
�
�
  $
.
�
�
$ %
GetElementType
�
�
% 3
(
�
�
3 4
)
�
�
4 5
:
�
�
6 7
GetGenericType
�
�
8 F
(
�
�
F G
type
�
�
G K
)
�
�
K L
;
�
�
L M
}
�
�
 
var
�
�
 
sysType
�
�
	 
=
�
�
 
ResolveSystemType
�
�
 $
(
�
�
$ %
elType
�
�
% +
)
�
�
+ ,
;
�
�
, -
if
�
�
 
(
�
�
 	
sysType
�
�
	 
.
�
�
 
name
�
�
 
!=
�
�
 
null
�
�
 
)
�
�
 
{
�
�
 
if
�
�
 
(
�
�
	 

string
�
�

 
.
�
�
 
IsNullOrEmpty
�
�
 
(
�
�
 
name
�
�
 #
)
�
�
# $
)
�
�
$ %
{
�
�
 
name
�
�
 
=
�
�
 
typeName
�
�
 
;
�
�
 
}
�
�
 
var
�
�
 	
ns
�
�

 
=
�
�
 
$"
�
�
 
q
�
�
 
{
�
�
 
_namespaceCounter
�
�
 $
++
�
�
$ &
}
�
�
& '
"
�
�
' (
;
�
�
( )
writer
�
�
 
.
�
�
 !
WriteXmlnsAttribute
�
�
  
(
�
�
  !
$"
�
�
! #
{
�
�
# $
ns
�
�
$ &
}
�
�
& '
"
�
�
' (
,
�
�
( )

Namespaces
�
�
* 4
.
�
�
4 5
	ARRAYS_NS
�
�
5 >
)
�
�
> ?
;
�
�
? @
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
 !
(
�
�
! "
$str
�
�
" (
,
�
�
( )
name
�
�
* .
)
�
�
. /
;
�
�
/ 0
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
 !
(
�
�
! "
$str
�
�
" ,
,
�
�
, -
$str
�
�
. 4
)
�
�
4 5
;
�
�
5 6
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
 !
(
�
�
! "
$str
�
�
" (
,
�
�
( )
$"
�
�
* ,
{
�
�
, -
ns
�
�
- /
}
�
�
/ 0
:ArrayOf
�
�
0 8
{
�
�
8 9
sysType
�
�
9 @
.
�
�
@ A
name
�
�
A E
}
�
�
E F
"
�
�
F G
)
�
�
G H
;
�
�
H I
_arrayToBuild
�
�
 
.
�
�
 
Enqueue
�
�
 
(
�
�
 
type
�
�
  
)
�
�
  !
;
�
�
! "
}
�
�
 
else
�
�
 	
{
�
�
 
if
�
�
 
(
�
�
	 

string
�
�

 
.
�
�
 
IsNullOrEmpty
�
�
 
(
�
�
 
name
�
�
 #
)
�
�
# $
)
�
�
$ %
{
�
�
 
name
�
�
 
=
�
�
 
typeName
�
�
 
;
�
�
 
}
�
�
 
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
 !
(
�
�
! "
$str
�
�
" (
,
�
�
( )
name
�
�
* .
)
�
�
. /
;
�
�
/ 0%
WriteComplexElementType
�
�
 
(
�
�
 
writer
�
�
 $
,
�
�
$ %
typeName
�
�
& .
,
�
�
. /
_schemaNamespace
�
�
0 @
,
�
�
@ A
objectNamespace
�
�
B Q
,
�
�
Q R
type
�
�
S W
)
�
�
W X
;
�
�
X Y!
_complexTypeToBuild
�
�
 
[
�
�
 
type
�
�
 
]
�
�
 
=
�
�
  !&
GetDataContractNamespace
�
�
" :
(
�
�
: ;
type
�
�
; ?
)
�
�
? @
;
�
�
@ A
}
�
�
 
}
�
�
 
else
�
�
 
{
�
�
 
if
�
�
 
(
�
�
 	
string
�
�
	 
.
�
�
 
IsNullOrEmpty
�
�
 
(
�
�
 
name
�
�
 "
)
�
�
" #
)
�
�
# $
{
�
�
 
name
�
�
 

=
�
�
 
typeName
�
�
 
;
�
�
 
}
�
�
 
writer
�
�
 
.
�
�
 "
WriteAttributeString
�
�
  
(
�
�
  !
$str
�
�
! '
,
�
�
' (
name
�
�
) -
)
�
�
- .
;
�
�
. /%
WriteComplexElementType
�
�
 
(
�
�
 
writer
�
�
 #
,
�
�
# $
typeName
�
�
% -
,
�
�
- .
_schemaNamespace
�
�
/ ?
,
�
�
? @
objectNamespace
�
�
A P
,
�
�
P Q
type
�
�
R V
)
�
�
V W
;
�
�
W X!
_complexTypeToBuild
�
�
 
[
�
�
 
type
�
�
 
]
�
�
 
=
�
�
  &
GetDataContractNamespace
�
�
! 9
(
�
�
9 :
type
�
�
: >
)
�
�
> ?
;
�
�
? @
}
�
�
 
}
�
�
 
writer
�
�
 	
.
�
�
	 

WriteEndElement
�
�

 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
private
�
�
 	
bool
�
�

 "
TypeIsComplexForWsdl
�
�
 #
(
�
�
# $
Type
�
�
$ (
type
�
�
) -
,
�
�
- .
out
�
�
/ 2
Type
�
�
3 7

resultType
�
�
8 B
)
�
�
B C
{
�
�
 
var
�
�
 
typeInfo
�
�
 
=
�
�
 
type
�
�
 
.
�
�
 
GetTypeInfo
�
�
 "
(
�
�
" #
)
�
�
# $
;
�
�
$ %

resultType
�
�
 
=
�
�
 
type
�
�
 
;
�
�
 
if
�
�
 
(
�
�
 
typeInfo
�
�
 
.
�
�
 
IsByRef
�
�
 
)
�
�
 
{
�
�
 
type
�
�
 
=
�
�
	 

typeInfo
�
�
 
.
�
�
 
GetElementType
�
�
 "
(
�
�
" #
)
�
�
# $
;
�
�
$ %
}
�
�
 
if
�
�
 
(
�
�
 
typeof
�
�
 
(
�
�
 
IEnumerable
�
�
 
)
�
�
 
.
�
�
 
IsAssignableFrom
�
�
 +
(
�
�
+ ,
type
�
�
, 0
)
�
�
0 1
)
�
�
1 2
{
�
�
 
var
�
�
 -
collectionDataContractAttribute
�
�
 '
=
�
�
( )
type
�
�
* .
.
�
�
. / 
GetCustomAttribute
�
�
/ A
<
�
�
A B-
CollectionDataContractAttribute
�
�
B a
>
�
�
a b
(
�
�
b c
)
�
�
c d
;
�
�
d e
if
�
�
 
(
�
�
 -
collectionDataContractAttribute
�
�
 '
!=
�
�
( *
null
�
�
+ /
)
�
�
/ 0
{
�
�
 
return
�
�
 
true
�
�
 
;
�
�
 
}
�
�
 

resultType
�
�
 
=
�
�
 
type
�
�
 
.
�
�
 
IsArray
�
�
 
?
�
�
 
type
�
�
  $
.
�
�
$ %
GetElementType
�
�
% 3
(
�
�
3 4
)
�
�
4 5
:
�
�
6 7
GetGenericType
�
�
8 F
(
�
�
F G
type
�
�
G K
)
�
�
K L
;
�
�
L M
type
�
�
 
=
�
�
	 


resultType
�
�
 
;
�
�
 
}
�
�
 
if
�
�
 
(
�
�
 
typeInfo
�
�
 
.
�
�
 
IsEnum
�
�
 
)
�
�
 
{
�
�
 
return
�
�
 

false
�
�
 
;
�
�
 
}
�
�
 
if
�
�
 
(
�
�
 
type
�
�
 
.
�
�
 
Name
�
�
 
==
�
�
 
$str
�
�
 
||
�
�
 
type
�
�
  $
.
�
�
$ %
Name
�
�
% )
==
�
�
* ,
$str
�
�
- 6
)
�
�
6 7
{
�
�
 
return
�
�
 

false
�
�
 
;
�
�
 
}
�
�
 
if
�
�
 
(
�
�
 
type
�
�
 
==
�
�
 
typeof
�
�
 
(
�
�
 
System
�
�
 
.
�
�
 
Xml
�
�
  
.
�
�
  !
Linq
�
�
! %
.
�
�
% &
XElement
�
�
& .
)
�
�
. /
)
�
�
/ 0
{
�
�
 
return
�
�
 

false
�
�
 
;
�
�
 
}
�
�
 
if
�
�
 
(
�
�
 
type
�
�
 
==
�
�
 
typeof
�
�
 
(
�
�
 
	DataTable
�
�
 
)
�
�
  
)
�
�
  !
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
type
�� 
.
�� 
Name
�� 
==
�� 
$str
�� 
)
�� 
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
if
�� 
(
�� 

SysTypeDic
�� 
.
�� 
ContainsKey
�� 
(
�� 
type
�� "
.
��" #
FullName
��# +
)
��+ ,
)
��, -
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
return
�� 	
true
��
 
;
�� 
}
�� 
private
�� 	
void
��
 %
WriteComplexElementType
�� &
(
��& '!
XmlDictionaryWriter
��' :
writer
��; A
,
��A B
string
��C I
typeName
��J R
,
��R S
string
��T Z
schemaNamespace
��[ j
,
��j k
string
��l r
objectNamespace��s �
,��� �
Type��� �
type��� �
)��� �
{
�� 
var
�� 

underlying
�� 
=
�� 
Nullable
�� 
.
�� 
GetUnderlyingType
�� .
(
��. /
type
��/ 3
)
��3 4
;
��4 5
if
�� 
(
�� 
!
�� 
type
�� 
.
�� 
IsEnum
�� 
||
�� 

underlying
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  *
,
��* +
$str
��, 2
)
��2 3
;
��3 4
}
�� 
if
�� 
(
�� 

underlying
�� 
?
�� 
.
�� 
IsEnum
�� 
==
�� 
true
�� !
)
��! "
{
�� 
type
�� 
=
��	 


underlying
�� 
;
�� 
typeName
�� 
=
�� 
GetTypeName
�� 
(
�� 

underlying
�� %
)
��% &
;
��& '
objectNamespace
�� 
=
�� 
GetModelNamespace
�� '
(
��' (

underlying
��( 2
)
��2 3
;
��3 4
}
�� 
if
�� 
(
�� 
schemaNamespace
�� 
!=
�� 
objectNamespace
�� )
)
��) *
{
�� 
var
�� 
ns
�� 

=
�� 
$"
�� 
q
�� 
{
�� 
_namespaceCounter
�� "
++
��" $
}
��$ %
"
��% &
;
��& '
writer
�� 

.
��
 !
WriteXmlnsAttribute
�� 
(
�� 
$"
�� !
{
��! "
ns
��" $
}
��$ %
"
��% &
,
��& '&
GetDataContractNamespace
��( @
(
��@ A
type
��A E
)
��E F
)
��F G
;
��G H
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$"
��( *
{
��* +
ns
��+ -
}
��- .
:
��. /
{
��/ 0
typeName
��0 8
}
��8 9
"
��9 :
)
��: ;
;
��; <
}
�� 
else
�� 
{
�� 
writer
�� 

.
��
 "
WriteAttributeString
�� 
(
��  
$str
��  &
,
��& '
$"
��( *
tns:
��* .
{
��. /
typeName
��/ 7
}
��7 8
"
��8 9
)
��9 :
;
��: ;
}
�� 
}
�� 
private
�� 	
string
��
 
GetTypeName
�� 
(
�� 
Type
�� !
type
��" &
)
��& '
{
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsGenericType
�� 
&&
�� 
!
�� 
type
�� "
.
��" #
IsArray
��# *
&&
��+ -
!
��. /
typeof
��/ 5
(
��5 6
IEnumerable
��6 A
)
��A B
.
��B C
IsAssignableFrom
��C S
(
��S T
type
��T X
)
��X Y
)
��Y Z
{
�� 
var
�� 
genericTypes
�� 
=
�� 
GetGenericTypes
�� &
(
��& '
type
��' +
)
��+ ,
;
��, -
var
�� 
genericTypeNames
�� 
=
�� 
genericTypes
�� '
.
��' (
Select
��( .
(
��. /
a
��/ 0
=>
��1 3
GetTypeName
��4 ?
(
��? @
a
��@ A
)
��A B
)
��B C
;
��C D
var
�� 
typeName
�� 
=
�� !
ReplaceGenericNames
�� &
(
��& '
type
��' +
.
��+ ,
Name
��, 0
)
��0 1
;
��1 2
typeName
�� 
=
�� 
typeName
�� 
+
�� 
$str
�� 
+
��  
string
��! '
.
��' (
Concat
��( .
(
��. /
genericTypeNames
��/ ?
)
��? @
;
��@ A
return
�� 

typeName
�� 
;
�� 
}
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsArray
�� 
)
�� 
{
�� 
return
�� 

$str
�� 
+
�� 
GetTypeName
�� "
(
��" #
type
��# '
.
��' (
GetElementType
��( 6
(
��6 7
)
��7 8
)
��8 9
;
��9 :
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� 
IEnumerable
�� 
)
�� 
.
�� 
IsAssignableFrom
�� +
(
��+ ,
type
��, 0
)
��0 1
&&
��2 4
type
��5 9
!=
��: <
typeof
��= C
(
��C D
string
��D J
)
��J K
)
��K L
{
�� 
var
�� -
collectionDataContractAttribute
�� '
=
��( )
type
��* .
.
��. / 
GetCustomAttribute
��/ A
<
��A B-
CollectionDataContractAttribute
��B a
>
��a b
(
��b c
)
��c d
;
��d e
if
�� 
(
�� -
collectionDataContractAttribute
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
var
�� 
typeName
��	 
=
�� -
collectionDataContractAttribute
�� 3
.
��3 4!
IsNameSetExplicitly
��4 G
?
�� -
collectionDataContractAttribute
�� '
.
��' (
Name
��( ,
:
�� !
ReplaceGenericNames
�� 
(
�� 
type
��  
.
��  !
Name
��! %
)
��% &
;
��& '
if
�� 
(
�� 	
type
��	 
.
�� 
IsGenericType
�� 
)
�� 
{
�� 
var
�� 	
genericType
��
 
=
�� 
GetGenericType
�� &
(
��& '
type
��' +
)
��+ ,
;
��, -
var
�� 	
(
��
 
name
�� 
,
�� 
_
�� 
)
�� 
=
�� 
ResolveSystemType
�� '
(
��' (
genericType
��( 3
)
��3 4
;
��4 5
var
�� 	
genericTypeName
��
 
=
�� 
string
�� "
.
��" #
IsNullOrEmpty
��# 0
(
��0 1
name
��1 5
)
��5 6
?
��7 8
GetTypeName
��9 D
(
��D E
genericType
��E P
)
��P Q
:
��R S
name
��T X
;
��X Y
typeName
�� 
=
�� 
string
�� 
.
�� 
Format
�� 
(
�� 
typeName
�� '
,
��' (
genericTypeName
��) 8
)
��8 9
;
��9 :
}
�� 
return
�� 
typeName
�� 
;
�� 
}
�� 
else
�� 
{
�� 
return
�� 
$str
�� 
+
�� 
GetTypeName
�� #
(
��# $
GetGenericType
��$ 2
(
��2 3
type
��3 7
)
��7 8
)
��8 9
;
��9 :
}
�� 
}
�� 
var
�� #
dataContractAttribute
�� 
=
�� 
type
�� #
.
��# $ 
GetCustomAttribute
��$ 6
<
��6 7#
DataContractAttribute
��7 L
>
��L M
(
��M N
)
��N O
;
��O P
if
�� 
(
�� #
dataContractAttribute
�� 
!=
�� 
null
��  $
&&
��% '#
dataContractAttribute
��( =
.
��= >!
IsNameSetExplicitly
��> Q
)
��Q R
{
�� 
return
�� 
#
dataContractAttribute
��  
.
��  !
Name
��! %
;
��% &
}
�� 
return
�� 	
type
��
 
.
�� 
Name
�� 
;
�� 
}
�� 
private
�� 	
string
��
 !
ReplaceGenericNames
�� $
(
��$ %
string
��% +
name
��, 0
)
��0 1
{
�� 
if
�� 
(
�� 
name
�� 
.
�� 
Contains
�� 
(
�� 
$str
�� 
)
�� 
)
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
number
�� 
in
�� 
_numbers
�� #
)
��# $
{
�� 
name
�� 	
=
��
 
name
�� 
.
�� 
Replace
�� 
(
�� 
$str
�� 
+
�� 
number
�� %
,
��% &
$str
��' *
+
��+ ,
string
��- 3
.
��3 4
Empty
��4 9
)
��9 :
;
��: ;
}
�� 
return
�� 

name
�� 
.
�� 
Replace
�� 
(
�� 
$str
�� 
,
�� 
string
�� #
.
��# $
Empty
��$ )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� 
return
�� 

name
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
(
��
 
string
�� 
name
�� 
,
�� 
string
�� 
ns
�� !
)
��! "
ResolveSystemType
��# 4
(
��4 5
Type
��5 9
type
��: >
)
��> ?
{
�� 
if
�� 
(
�� 

SysTypeDic
�� 
.
�� 
ContainsKey
�� 
(
�� 
type
�� "
.
��" #
FullName
��# +
)
��+ ,
)
��, -
{
�� 
return
�� 


SysTypeDic
�� 
[
�� 
type
�� 
.
�� 
FullName
�� #
]
��# $
;
��$ %
}
�� 
return
�� 	
(
��
 
null
�� 
,
�� 
null
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
bool
��
 
HasBaseType
�� 
(
�� 
Type
�� 
type
��  $
)
��$ %
{
�� 
var
�� 
isArrayType
�� 
=
�� 
type
�� 
.
�� 
IsArray
�� !
||
��" $
typeof
��% +
(
��+ ,
IEnumerable
��, 7
)
��7 8
.
��8 9
IsAssignableFrom
��9 I
(
��I J
type
��J N
)
��N O
;
��O P
var
�� 
baseType
�� 
=
�� 
type
�� 
.
�� 
GetTypeInfo
�� "
(
��" #
)
��# $
.
��$ %
BaseType
��% -
;
��- .
return
�� 	
!
��
 
isArrayType
�� 
&&
�� 
!
�� 
type
�� 
.
��  
IsEnum
��  &
&&
��' )
!
��* +
type
��+ /
.
��/ 0
IsPrimitive
��0 ;
&&
��< >
!
��? @
type
��@ D
.
��D E
IsValueType
��E P
&&
��Q S
baseType
��T \
!=
��] _
null
��` d
&&
��e g
!
��h i
baseType
��i q
.
��q r
Name
��r v
.
��v w
Equals
��w }
(
��} ~
$str��~ �
)��� �
;��� �
}
�� 
}
�� 
}�� �
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
} �?
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
preferredPrefix	--s �
,
--� �
string
--� �
uri
--� �
)
--� �
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
}LL �
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
]7 8�b
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
�� 
if
�� 
(
�� 

memberInfo
�� 
is
�� 
	FieldInfo
�� 
fi
�� !
)
��! "
{
�� 
return
�� 

fi
�� 
.
�� 
GetValue
�� 
(
�� 
obj
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 

memberInfo
�� 
is
�� 
PropertyInfo
�� !
pi
��" $
)
��$ %
{
�� 
return
�� 

pi
�� 
.
�� 
GetValue
�� 
(
�� 
obj
�� 
)
�� 
;
�� 
}
�� 
throw
�� 
new
��	 %
NotImplementedException
�� $
(
��$ %
$"
��% ':
,Unable to get value out of member with type 
��' S
{
��S T

memberInfo
��T ^
.
��^ _
GetType
��_ f
(
��f g
)
��g h
}
��h i
"
��i j
)
��j k
;
��k l
}
�� 
internal
�� 

static
�� 
IEnumerable
�� 
<
�� 

MemberInfo
�� (
>
��( )%
GetMembersWithAttribute
��* A
<
��A B

TAttribute
��B L
>
��L M
(
��M N
this
��N R
Type
��S W
type
��X \
)
��\ ]
where
�� 

TAttribute
��	 
:
�� 
	Attribute
�� 
{
�� 
return
�� 	'
GetPropertyOrFieldMembers
��
 #
(
��# $
type
��$ (
)
��( )
.
��) *
Where
��* /
(
��/ 0
x
��0 1
=>
��2 4
x
��5 6
.
��6 7 
GetCustomAttribute
��7 I
<
��I J

TAttribute
��J T
>
��T U
(
��U V
)
��V W
!=
��X Z
null
��[ _
)
��_ `
;
��` a
}
�� 
internal
�� 

static
�� 
bool
�� *
TryGetBaseTypeWithKnownTypes
�� 3
(
��3 4
this
��4 8
Type
��9 =
type
��> B
,
��B C
out
��D G
Type
��H L
result
��M S
)
��S T
{
�� 
if
�� 
(
�� 
type
�� 
is
�� 
null
�� 
)
�� 
{
�� 
throw
�� 	
new
��
 #
ArgumentNullException
�� #
(
��# $
nameof
��$ *
(
��* +
type
��+ /
)
��/ 0
)
��0 1
;
��1 2
}
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsEnum
�� 
||
�� 
type
�� 
.
�� 
IsPrimitive
�� &
||
��' )
type
��* .
.
��. /
IsValueType
��/ :
)
��: ;
{
�� 
result
�� 

=
�� 
null
�� 
;
�� 
return
�� 

false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsArray
�� 
||
�� 
typeof
�� 
(
�� 
IEnumerable
�� )
)
��) *
.
��* +
IsAssignableFrom
��+ ;
(
��; <
type
��< @
)
��@ A
)
��A B
{
�� 
result
�� 

=
�� 
null
�� 
;
�� 
return
�� 

false
�� 
;
�� 
}
�� 
Type
�� 
baseType
�� 
=
�� 
type
�� 
.
�� 
GetTypeInfo
�� #
(
��# $
)
��$ %
.
��% &
BaseType
��& .
;
��. /
if
�� 
(
�� 
baseType
�� 
is
�� 
null
�� 
||
�� 
baseType
�� #
.
��# $
Name
��$ (
.
��( )
Equals
��) /
(
��/ 0
$str
��0 8
)
��8 9
)
��9 :
{
�� 
result
�� 

=
�� 
null
�� 
;
�� 
return
�� 

false
�� 
;
�� 
}
�� 
bool
�� 
hasKnownTypes
�� 
=
�� 
baseType
��  
.
�� !
GetCustomAttributes
�� 
<
��  
KnownTypeAttribute
�� +
>
��+ ,
(
��, -
)
��- .
.
�� 
Any
�� 
(
�� 	
)
��	 

;
��
 
result
�� 	
=
��
 
hasKnownTypes
�� 
?
�� 
baseType
�� 
:
�� 
null
�� 

;
��
 
return
�� 	
hasKnownTypes
��
 
;
�� 
}
�� 
}
�� 
}�� �h
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
string	EE~ �
parameterNs
EE� �
)
EE� �
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
parameterName	rrt �
,
rr� �
string
rr� �
parameterNs
rr� �
,
rr� �

MemberInfo
rr� �

memberInfo
rr� �
)
rr� �
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
XmlArrayItemAttribute	ttq �
;
tt� �
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
�� 
arrayItemName
�� 
=
�� #
xmlArrayItemAttribute
�� ,
?
��, -
.
��- .
ElementName
��. 9
??
��: <!
xmlElementAttribute
��= P
?
��P Q
.
��Q R
ElementName
��R ]
??
��^ `
elementType
��a l
.
��l m
Name
��m q
;
��q r
if
�� 
(
�� #
xmlArrayItemAttribute
�� 
?
�� 
.
�� 
ElementName
�� )
==
��* ,
null
��- 1
&&
��2 4
elementType
��5 @
.
��@ A
	Namespace
��A J
?
��J K
.
��K L

StartsWith
��L V
(
��V W
$str
��W _
)
��_ `
==
��a c
true
��d h
)
��h i
{
�� 
var
�� 
compiler
�� 
=
�� 
new
��  
CSharpCodeProvider
�� )
(
��) *
)
��* +
;
��+ ,
var
�� 
type
�� 
=
�� 
new
�� 
CodeTypeReference
�� $
(
��$ %
elementType
��% 0
)
��0 1
;
��1 2
arrayItemName
�� 
=
�� 
compiler
�� 
.
�� 
GetTypeOutput
�� *
(
��* +
type
��+ /
)
��/ 0
;
��0 1
}
�� 
var
�� 
deserializeMethod
�� 
=
�� 
typeof
�� !
(
��! "%
XmlSerializerExtensions
��" 9
)
��9 :
.
��: ;
GetGenericMethod
��; K
(
��K L
nameof
��L R
(
��R S%
XmlSerializerExtensions
��S j
.
��j k
DeserializeArray
��k {
)
��{ |
,
��| }
elementType��~ �
)��� �
;��� �
var
��  
arrayItemNamespace
�� 
=
�� #
xmlArrayItemAttribute
�� 1
?
��1 2
.
��2 3
	Namespace
��3 <
??
��= ?
parameterNs
��@ K
;
��K L
var
�� 

serializer
�� 
=
�� !
CachedXmlSerializer
�� '
.
��' (
GetXmlSerializer
��( 8
(
��8 9
elementType
��9 D
,
��D E
arrayItemName
��F S
,
��S T 
arrayItemNamespace
��U g
)
��g h
;
��h i
object
�� 	
result
��
 
=
�� 
null
�� 
;
�� 
lock
�� 
(
�� 	

serializer
��	 
)
�� 
{
�� 
result
�� 

=
�� 
deserializeMethod
�� 
.
�� 
Invoke
�� %
(
��% &
null
��& *
,
��* +
new
��, /
object
��0 6
[
��6 7
]
��7 8
{
��9 :

serializer
��; E
,
��E F
arrayItemName
��G T
,
��T U 
arrayItemNamespace
��V h
,
��h i
	xmlReader
��j s
}
��t u
)
��u v
;
��v w
}
�� 
if
�� 
(
�� 
!
�� 
isEmpty
�� 
&&
�� !
hasContainerElement
�� &
)
��& '
{
�� 
	xmlReader
�� 
.
�� 
ReadEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
return
�� 	
result
��
 
;
�� 
}
�� 
}
�� 
}�� ��
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
� �
)
� �
:
� �
base
� �
(
� �

isBuffered
� �
:
� �
true
� �
)
� �
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
�� 
shouldInline
��	 
=
�� 
(
�� &
messageContractAttribute
�� 1
!=
��2 4
null
��5 9
&&
��: <&
messageContractAttribute
��= U
.
��U V
	IsWrapped
��V _
==
��` b
false
��c h
)
��h i
||
��j l

resultType
��m w
.
��w x&
GetMembersWithAttribute��x �
<��� �&
MessageHeaderAttribute��� �
>��� �
(��� �
)��� �
.��� �
Any��� �
(��� �
)��� �
;��� �
if
�� 
(
�� 	
shouldInline
��	 
)
�� 
{
�� 
var
�� 	
memberInformation
��
 
=
�� 

resultType
�� (
.
��( )%
GetMembersWithAttribute
��) @
<
��@ A(
MessageBodyMemberAttribute
��A [
>
��[ \
(
��\ ]
)
��] ^
.
��^ _
Select
��_ e
(
��e f
mi
��f h
=>
��i k
new
��l o
{
�� 
Member
�� 
=
�� 
mi
�� 
,
�� (
MessageBodyMemberAttribute
�� !
=
��" #
mi
��$ &
.
��& ' 
GetCustomAttribute
��' 9
<
��9 :(
MessageBodyMemberAttribute
��: T
>
��T U
(
��U V
)
��V W
}
�� 
)
�� 
.
�� 	
OrderBy
��	 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� (
MessageBodyMemberAttribute
�� 2
?
��2 3
.
��3 4
Order
��4 9
??
��: <
$num
��= >
)
��> ?
;
��? @
if
�� 
(
��	 
&
messageContractAttribute
��
 "
!=
��# %
null
��& *
&&
��+ -&
messageContractAttribute
��. F
.
��F G
	IsWrapped
��G P
)
��P Q
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
��  

resultType
��  *
.
��* +
Name
��+ /
,
��/ 0
xmlNs
��1 6
)
��6 7
;
��7 8
}
�� 
foreach
�� 
(
�� 
var
�� 

memberInfo
�� 
in
��  
memberInformation
��! 2
)
��2 3
{
�� 
var
�� 


memberType
�� 
=
�� 

memberInfo
�� "
.
��" #
Member
��# )
.
��) *$
GetPropertyOrFieldType
��* @
(
��@ A
)
��A B
;
��B C
var
�� 

memberValue
�� 
=
�� 

memberInfo
�� #
.
��# $
Member
��$ *
.
��* +%
GetPropertyOrFieldValue
��+ B
(
��B C
_result
��C J
)
��J K
;
��K L
var
�� 


memberName
�� 
=
�� 

memberInfo
�� "
.
��" #(
MessageBodyMemberAttribute
��# =
?
��= >
.
��> ?
Name
��? C
??
��D F

memberInfo
��G Q
.
��Q R
Member
��R X
.
��X Y
Name
��Y ]
;
��] ^
var
�� 

memberNamespace
�� 
=
�� 

memberInfo
�� '
.
��' ((
MessageBodyMemberAttribute
��( B
?
��B C
.
��C D
	Namespace
��D M
??
��N P
_serviceNamespace
��Q b
;
��b c
var
�� 


serializer
�� 
=
�� !
CachedXmlSerializer
�� +
.
��+ ,
GetXmlSerializer
��, <
(
��< =

memberType
��= G
,
��G H

memberName
��I S
,
��S T
memberNamespace
��U d
)
��d e
;
��e f
lock
�� 
(
�� 

serializer
�� 
)
�� 
{
�� 
if
�� 

(
�� 
memberValue
�� 
is
�� 
Stream
�� !
)
��! "
{
�� 	
writer
��	 
.
�� 
WriteStartElement
�� !
(
��! "

memberName
��" ,
,
��, -
_serviceNamespace
��. ?
)
��? @
;
��@ A
WriteStream
��	 
(
�� 
writer
�� 
,
�� 
memberValue
�� (
)
��( )
;
��) *
writer
��	 
.
�� 
WriteEndElement
�� 
(
��  
)
��  !
;
��! "
}
�� 	
else
�� 
{
�� 	

serializer
��	 
.
�� 
	Serialize
�� 
(
�� 
writer
�� $
,
��$ %
memberValue
��& 1
)
��1 2
;
��2 3
}
�� 	
}
�� 
}
�� 
if
�� 
(
��	 
&
messageContractAttribute
��
 "
!=
��# %
null
��& *
&&
��+ -&
messageContractAttribute
��. F
.
��F G
	IsWrapped
��G P
)
��P Q
{
�� 
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 
else
�� 	
{
�� 
var
�� 	

serializer
��
 
=
�� !
CachedXmlSerializer
�� *
.
��* +
GetXmlSerializer
��+ ;
(
��; <

resultType
��< F
,
��F G
xmlName
��H O
,
��O P
xmlNs
��Q V
)
��V W
;
��W X
lock
�� 

(
�� 

serializer
�� 
)
�� 
{
�� 
if
�� 	
(
��
 
_result
�� 
is
�� 
Stream
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
��  
(
��  !
_resultName
��! ,
,
��, -
_serviceNamespace
��. ?
)
��? @
;
��@ A
WriteStream
�� 
(
�� 
writer
�� 
,
�� 
_result
�� #
)
��# $
;
��$ %
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
��  
;
��  !
}
�� 
else
�� 
{
�� 
if
�� 

(
�� 

_operation
�� 
.
�� 
DispatchMethod
�� %
.
��% & 
GetCustomAttribute
��& 8
<
��8 9*
XmlSerializerFormatAttribute
��9 U
>
��U V
(
��V W
)
��W X
?
��X Y
.
��Y Z
Style
��Z _
==
��` b"
OperationFormatStyle
��c w
.
��w x
Rpc
��x {
)
��{ |
{
�� 	
var
��	 
importer
�� 
=
�� 
new
�� $
SoapReflectionImporter
�� 2
(
��2 3
_serviceNamespace
��3 D
)
��D E
;
��E F
var
��	 
typeMapping
�� 
=
�� 
importer
�� #
.
��# $
ImportTypeMapping
��$ 5
(
��5 6

resultType
��6 @
)
��@ A
;
��A B
var
��	 
accessor
�� 
=
�� 
typeMapping
�� #
.
��# $
GetType
��$ +
(
��+ ,
)
��, -
.
��- .
GetProperty
��. 9
(
��9 :
$str
��: D
,
��D E
BindingFlags
��F R
.
��R S
Instance
��S [
|
��\ ]
BindingFlags
��^ j
.
��j k
Public
��k q
|
��r s
BindingFlags��t �
.��� �
	NonPublic��� �
)��� �
?��� �
.��� �
GetValue��� �
(��� �
typeMapping��� �
)��� �
;��� �
accessor
��	 
?
�� 
.
�� 
GetType
�� 
(
�� 
)
�� 
.
�� 
GetProperty
�� (
(
��( )
$str
��) /
,
��/ 0
BindingFlags
��1 =
.
��= >
Instance
��> F
|
��G H
BindingFlags
��I U
.
��U V
Public
��V \
|
��] ^
BindingFlags
��_ k
.
��k l
	NonPublic
��l u
)
��u v
?
��v w
.
��w x
SetValue��x �
(��� �
accessor��� �
,��� �
xmlName��� �
)��� �
;��� �
new
��	 
XmlSerializer
�� 
(
�� 
typeMapping
�� &
)
��& '
.
��' (
	Serialize
��( 1
(
��1 2
writer
��2 8
,
��8 9
_result
��: A
)
��A B
;
��B C
}
�� 	

serializer
�� 
.
�� 
	Serialize
�� 
(
�� 
writer
�� #
,
��# $
_result
��% ,
)
��, -
;
��- .
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
foreach
�� 

(
�� 
var
�� 
	outResult
�� 
in
�� 
_outResults
�� (
)
��( )
{
�� 
string
�� 

value
�� 
=
�� 
null
�� 
;
�� 
if
�� 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
is
�� 
Guid
�� 
)
��  
{
�� 
value
�� 

=
�� 
	outResult
�� 
.
�� 
Value
�� 
.
�� 
ToString
�� %
(
��% &
)
��& '
;
��' (
}
�� 
else
�� 
if
��	 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
is
�� 
bool
��  $
)
��$ %
{
�� 
value
�� 

=
�� 
	outResult
�� 
.
�� 
Value
�� 
.
�� 
ToString
�� %
(
��% &
)
��& '
.
��' (
ToLower
��( /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
else
�� 
if
��	 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
is
�� 
string
��  &
)
��& '
{
�� 
value
�� 

=
�� 
System
�� 
.
�� 
Security
�� 
.
�� 
SecurityElement
�� ,
.
��, -
Escape
��- 3
(
��3 4
	outResult
��4 =
.
��= >
Value
��> C
.
��C D
ToString
��D L
(
��L M
)
��M N
)
��N O
;
��O P
}
�� 
else
�� 
if
��	 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
is
�� 
Enum
��  $
)
��$ %
{
�� 
value
�� 

=
�� 
	outResult
�� 
.
�� 
Value
�� 
.
�� 
ToString
�� %
(
��% &
)
��& '
;
��' (
}
�� 
else
�� 
if
��	 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
value
�� 

=
�� 
null
�� 
;
�� 
}
�� 
else
�� 
{
�� 
using
�� 

(
�� 
var
�� 
ms
�� 
=
�� 
new
�� 
MemoryStream
�� %
(
��% &
)
��& '
)
��' (
using
�� 

(
�� 
var
�� 
stream
�� 
=
�� 
new
�� 
BufferedStream
�� +
(
��+ ,
ms
��, .
)
��. /
)
��/ 0
{
�� 
var
�� 	
outResultType
��
 
=
�� 
	outResult
�� #
.
��# $
Value
��$ )
.
��) *
GetType
��* 1
(
��1 2
)
��2 3
;
��3 4
var
�� 	

serializer
��
 
=
�� !
CachedXmlSerializer
�� *
.
��* +
GetXmlSerializer
��+ ;
(
��; <
outResultType
��< I
,
��I J
	outResult
��K T
.
��T U
Key
��U X
,
��X Y
_serviceNamespace
��Z k
)
��k l
;
��l m
lock
�� 

(
�� 

serializer
�� 
)
�� 
{
�� 

serializer
�� 
.
�� 
	Serialize
�� 
(
�� 
stream
�� "
,
��" #
	outResult
��$ -
.
��- .
Value
��. 3
)
��3 4
;
��4 5
}
�� 
stream
�� 
.
�� 
Position
�� 
=
�� 
$num
�� 
;
�� 
XmlDocument
�� 
xdoc
�� 
=
�� 
new
�� 
XmlDocument
�� (
(
��( )
)
��) *
;
��* +
xdoc
�� 

.
��
 
Load
�� 
(
�� 
stream
�� 
)
�� 
;
�� 
var
�� 	
attr
��
 
=
�� 
xdoc
�� 
.
�� 
CreateAttribute
�� %
(
��% &
$str
��& +
,
��+ ,
$str
��- 3
,
��3 4

Namespaces
��5 ?
.
��? @
	XMLNS_XSI
��@ I
)
��I J
;
��J K
attr
�� 

.
��
 
Value
�� 
=
�� 
outResultType
��  
.
��  !
Name
��! %
;
��% &
xdoc
�� 

.
��
 
DocumentElement
�� 
.
�� 

Attributes
�� %
.
��% &
Prepend
��& -
(
��- .
attr
��. 2
)
��2 3
;
��3 4
writer
�� 
.
�� 
WriteRaw
�� 
(
�� 
xdoc
�� 
.
�� 
DocumentElement
�� *
.
��* +
OuterXml
��+ 3
)
��3 4
;
��4 5
}
�� 
}
�� 
if
�� 
(
�� 
value
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteRaw
�� 
(
�� 
string
�� 
.
�� 
Format
�� "
(
��" #
$str
��# 3
,
��3 4
	outResult
��5 >
.
��> ?
Key
��? B
,
��B C
value
��D I
)
��I J
)
��J K
;
��K L
}
�� 
}
�� 
if
�� 
(
�� "
needResponseEnvelope
�� 
)
�� 
{
�� 
writer
�� 

.
��
 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
void
��
 7
)OnWriteDataContractSerializerBodyContents
�� 8
(
��8 9!
XmlDictionaryWriter
��9 L
writer
��M S
)
��S T
{
�� 
Debug
�� 
.
�� 	
Assert
��	 
(
�� 
_outResults
�� 
!=
�� 
null
�� #
,
��# $
$str
��% J
)
��J K
;
��K L
writer
�� 	
.
��	 

WriteStartElement
��
 
(
�� 
_envelopeName
�� )
,
��) *
_serviceNamespace
��+ <
)
��< =
;
��= >
if
�� 
(
�� 
_result
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
if
�� 
(
�� 
_result
�� 
is
�� 
Stream
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteStartElement
�� 
(
�� 
_resultName
�� )
,
��) *
_serviceNamespace
��+ <
)
��< =
;
��= >
WriteStream
�� 
(
�� 
writer
�� 
,
�� 
_result
��  
)
��  !
;
��! "
writer
�� 
.
�� 
WriteEndElement
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
Type
�� 	

resultType
��
 
=
�� 

_operation
�� !
.
��! "

ReturnType
��" ,
;
��, -
IEnumerable
�� 
<
�� 
Type
�� 
>
�� 
serviceKnownTypes
�� (
=
��) *

_operation
��+ 5
.
�� +
GetServiceKnownTypesHierarchy
�� $
(
��$ %
)
��% &
.
�� 
Select
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
Type
�� 
)
�� 
;
�� $
DataContractSerializer
�� 

serializer
�� &
=
��' (

resultType
��) 3
.
��3 4*
TryGetBaseTypeWithKnownTypes
��4 P
(
��P Q
out
��Q T
Type
��U Y*
resultBaseTypeWithKnownTypes
��Z v
)
��v w
?
�� 
new
�� $
DataContractSerializer
�� "
(
��" #*
resultBaseTypeWithKnownTypes
��# ?
,
��? @
_resultName
��A L
,
��L M
_serviceNamespace
��N _
,
��_ `
serviceKnownTypes
��a r
)
��r s
:
�� 
new
�� $
DataContractSerializer
�� "
(
��" #

resultType
��# -
,
��- .
_resultName
��/ :
,
��: ;
_serviceNamespace
��< M
,
��M N
serviceKnownTypes
��O `
)
��` a
;
��a b

serializer
�� 
.
�� 
WriteObject
�� 
(
�� 
writer
�� "
,
��" #
_result
��$ +
)
��+ ,
;
��, -
}
�� 
}
�� 
foreach
�� 

(
�� 
var
�� 
	outResult
�� 
in
�� 
_outResults
�� (
)
��( )
{
�� 
string
�� 

value
�� 
=
�� 
null
�� 
;
�� 
if
�� 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
is
�� 
Guid
�� 
)
��  
{
�� 
value
�� 

=
�� 
	outResult
�� 
.
�� 
Value
�� 
.
�� 
ToString
�� %
(
��% &
)
��& '
;
��' (
}
�� 
else
�� 
if
��	 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
is
�� 
bool
��  $
)
��$ %
{
�� 
value
�� 

=
�� 
	outResult
�� 
.
�� 
Value
�� 
.
�� 
ToString
�� %
(
��% &
)
��& '
.
��' (
ToLower
��( /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
else
�� 
if
��	 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
is
�� 
string
��  &
)
��& '
{
�� 
value
�� 

=
�� 
System
�� 
.
�� 
Security
�� 
.
�� 
SecurityElement
�� ,
.
��, -
Escape
��- 3
(
��3 4
	outResult
��4 =
.
��= >
Value
��> C
.
��C D
ToString
��D L
(
��L M
)
��M N
)
��N O
;
��O P
}
�� 
else
�� 
if
��	 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
is
�� 
Enum
��  $
)
��$ %
{
�� 
value
�� 

=
�� 
	outResult
�� 
.
�� 
Value
�� 
.
�� 
ToString
�� %
(
��% &
)
��& '
;
��' (
}
�� 
else
�� 
if
��	 
(
�� 
	outResult
�� 
.
�� 
Value
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
value
�� 

=
�� 
null
�� 
;
�� 
}
�� 
else
�� 
{
�� 
using
�� 

(
�� 
var
�� 
ms
�� 
=
�� 
new
�� 
MemoryStream
�� %
(
��% &
)
��& '
)
��' (
using
�� 

(
�� 
var
�� 
stream
�� 
=
�� 
new
�� 
BufferedStream
�� +
(
��+ ,
ms
��, .
)
��. /
)
��/ 0
{
�� 
Type
�� 

outResultType
�� 
=
�� 
	outResult
�� $
.
��$ %
Value
��% *
.
��* +
GetType
��+ 2
(
��2 3
)
��3 4
;
��4 5
IEnumerable
�� 
<
�� 
Type
�� 
>
�� 
serviceKnownTypes
�� )
=
��* +

_operation
��, 6
.
�� +
GetServiceKnownTypesHierarchy
�� %
(
��% &
)
��& '
.
�� 
Select
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
Type
�� 
)
�� 
;
�� 
var
�� 	

serializer
��
 
=
�� 
new
�� $
DataContractSerializer
�� 1
(
��1 2
outResultType
��2 ?
,
��? @
serviceKnownTypes
��A R
)
��R S
;
��S T

serializer
�� 
.
�� 
WriteObject
�� 
(
�� 
ms
�� 
,
��  
	outResult
��! *
.
��* +
Value
��+ 0
)
��0 1
;
��1 2
stream
�� 
.
�� 
Position
�� 
=
�� 
$num
�� 
;
�� 
using
�� 
(
�� 
var
�� 
reader
�� 
=
�� 
	XmlReader
�� #
.
��# $
Create
��$ *
(
��* +
stream
��+ 1
)
��1 2
)
��2 3
{
�� 
reader
�� 
.
�� 
MoveToContent
�� 
(
�� 
)
�� 
;
�� 
value
�� 
=
�� 
reader
�� 
.
�� 
ReadInnerXml
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
value
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteRaw
�� 
(
�� 
string
�� 
.
�� 
Format
�� "
(
��" #
$str
��# 3
,
��3 4
	outResult
��5 >
.
��> ?
Key
��? B
,
��B C
value
��D I
)
��I J
)
��J K
;
��K L
}
�� 
}
�� 
writer
�� 	
.
��	 

WriteEndElement
��
 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}�� �
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
}%% �
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
} ��
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
contractAttribute	s �
)
� �
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
�� #
dataContractAttribute
�� 
=
�� 
info
�� #
.
��# $
ParameterType
��$ 1
.
��1 2 
GetCustomAttribute
��2 D
<
��D E#
DataContractAttribute
��E Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� #
dataContractAttribute
�� 
!=
�� 
null
��  $
&&
��% '#
dataContractAttribute
��( =
.
��= >&
IsNamespaceSetExplicitly
��> V
&&
��W Y
!
��Z [
string
��[ a
.
��a b 
IsNullOrWhiteSpace
��b t
(
��t u$
dataContractAttribute��u �
.��� �
	Namespace��� �
)��� �
)��� �
{
�� 
parameterNs
�� 
=
�� #
dataContractAttribute
�� '
.
��' (
	Namespace
��( 1
;
��1 2
}
�� 
return
�� 	
new
��
 %
SoapMethodParameterInfo
�� %
(
��% &
info
��& *
,
��* +
index
��, 1
,
��1 2
parameterName
��3 @
,
��@ A
	arrayName
��B K
,
��K L
arrayItemName
��M Z
,
��Z [
parameterNs
��\ g
)
��g h
;
��h i
}
�� 
private
�� 	
static
��
 
string
�� 
GetNameByAction
�� '
(
��' (
string
��( .
action
��/ 5
)
��5 6
{
�� 
var
�� 
index
�� 
=
�� 
action
�� 
?
�� 
.
�� 
LastIndexOf
�� "
(
��" #
$str
��# &
)
��& '
;
��' (
return
�� 	
(
��
 
index
�� 
??
�� 
-
�� 
$num
�� 
)
�� 
>
�� 
-
�� 
$num
�� 
?
�� 
action
�� 
.
�� 
	Substring
�� 
(
�� 
index
�� 
.
�� 
Value
�� "
+
��# $
$num
��% &
,
��& '
action
��( .
.
��. /
Length
��/ 5
-
��6 7
index
��8 =
.
��= >
Value
��> C
-
��D E
$num
��F G
)
��G H
:
�� 
null
�� 

;
��
 
}
�� 
private
�� 	
static
��
 
string
�� 
GetNameByMethod
�� '
(
��' (

MethodInfo
��( 2
operationMethod
��3 B
)
��B C
{
�� 
var
�� 

returnType
�� 
=
�� 
operationMethod
�� #
.
��# $

ReturnType
��$ .
;
��. /
var
�� 
name
�� 
=
�� 
operationMethod
�� 
.
�� 
Name
�� "
;
��" #
if
�� 
(
�� 

returnType
�� 
.
�� 
IsGenericType
�� 
&&
��  "

returnType
��# -
.
��- .&
GetGenericTypeDefinition
��. F
(
��F G
)
��G H
==
��I K
typeof
��L R
(
��R S
Task
��S W
<
��W X
>
��X Y
)
��Y Z
)
��Z [
{
�� 
if
�� 
(
�� 
name
�� 
.
�� 
EndsWith
�� 
(
�� 
$str
�� 
)
�� 
)
�� 
{
�� 
name
�� 	
=
��
 
name
�� 
.
�� 
	Substring
�� 
(
�� 
$num
�� 
,
�� 
name
�� "
.
��" #
LastIndexOf
��# .
(
��. /
$str
��/ 6
)
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 
if
�� 
(
�� 

returnType
�� 
==
�� 
typeof
�� 
(
�� 
Task
��  
)
��  !
&&
��" $
name
��% )
.
��) *
EndsWith
��* 2
(
��2 3
$str
��3 :
)
��: ;
)
��; <
{
�� 
name
�� 
=
��	 

name
�� 
.
�� 
	Substring
�� 
(
�� 
$num
�� 
,
�� 
name
�� !
.
��! "
LastIndexOf
��" -
(
��- .
$str
��. 5
)
��5 6
)
��6 7
;
��7 8
}
�� 
return
�� 	
name
��
 
;
�� 
}
�� 
}
�� 
}�� �"
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
}33 �
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
}		 �!
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
string	z �
ns
� �
)
� �
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
	 of type 	x �
{
� �
	Parameter
� �
.
� �
ParameterType
� �
.
� �
FullName
� �
}
� �
"
� �
)
� �
;
� �
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
}++ �

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
} �
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
}TT �
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
} צ
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
encoder	y �
,
� �
SoapSerializer
� �

serializer
� �
=
� �
SoapSerializer
� �
.
� �$
DataContractSerializer
� �
,
� �
bool
� �!
caseInsensitivePath
� �
=
� �
false
� �
,
� �
ISoapModelBounder
� �
soapModelBounder
� �
=
� �
null
� �
,
� �
WsdlFileOptions
� �
wsdlFileOptions
� �
=
� �
null
� �
,
� �
bool
� �
	indentXml
� �
=
� �
true
� �
,
� �
bool
� � 
omitXmlDeclaration
� �
=
� �
true
� �
)
� �
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
wsdlFileOptions	 �
,
� �
	indentXml
� �
,
� � 
omitXmlDeclaration
� �
)
� �
;
� �
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
SoapEncoderOptions	q �
encoder
� �
,
� �
SoapSerializer
� �

serializer
� �
=
� �
SoapSerializer
� �
.
� �$
DataContractSerializer
� �
,
� �
bool
� �!
caseInsensitivePath
� �
=
� �
false
� �
,
� �
ISoapModelBounder
� �
soapModelBounder
� �
=
� �
null
� �
,
� �
bool
� �
	indentXml
� �
=
� �
true
� �
,
� �
bool
� � 
omitXmlDeclaration
� �
=
� �
true
� �
)
� �
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
soapModelBounder	r �
,
� �
null
� �
,
� �
null
� �
,
� �
	indentXml
� �
,
� � 
omitXmlDeclaration
� �
)
� �
;
� �
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
SoapEncoderOptions	n �
encoder
� �
,
� �
SoapSerializer
� �

serializer
� �
=
� �
SoapSerializer
� �
.
� �$
DataContractSerializer
� �
,
� �
bool
� �!
caseInsensitivePath
� �
=
� �
false
� �
,
� �
ISoapModelBounder
� �
soapModelBounder
� �
=
� �
null
� �
,
� �
Binding
� �
binding
� �
=
� �
null
� �
,
� �
bool
� �
	indentXml
� �
=
� �
true
� �
,
� �
bool
� � 
omitXmlDeclaration
� �
=
� �
true
� �
)
� �
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
null	} �
,
� �
	indentXml
� �
,
� � 
omitXmlDeclaration
� �
)
� �
;
� �
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
SoapEncoderOptions	""y �
encoder
""� �
,
""� �
SoapSerializer
""� �

serializer
""� �
=
""� �
SoapSerializer
""� �
.
""� �$
DataContractSerializer
""� �
,
""� �
bool
""� �!
caseInsensitivePath
""� �
=
""� �
false
""� �
,
""� �
ISoapModelBounder
""� �
soapModelBounder
""� �
=
""� �
null
""� �
,
""� �
Binding
""� �
binding
""� �
=
""� �
null
""� �
,
""� �
bool
""� �
	indentXml
""� �
=
""� �
true
""� �
,
""� �
bool
""� � 
omitXmlDeclaration
""� �
=
""� �
true
""� �
)
""� �
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
binding	%% �
,
%%� �
null
%%� �
,
%%� �
	indentXml
%%� �
,
%%� � 
omitXmlDeclaration
%%� �
)
%%� �
;
%%� �
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
SoapSerializer	((w �

serializer
((� �
=
((� �
SoapSerializer
((� �
.
((� �$
DataContractSerializer
((� �
,
((� �
bool
((� �!
caseInsensitivePath
((� �
=
((� �
false
((� �
,
((� �
ISoapModelBounder
((� �
soapModelBounder
((� �
=
((� �
null
((� �
,
((� �
WsdlFileOptions
((� �
wsdlFileOptions
((� �
=
((� �
null
((� �
,
((� �
bool
((� �
	indentXml
((� �
=
((� �
true
((� �
,
((� �
bool
((� � 
omitXmlDeclaration
((� �
=
((� �
true
((� �
)
((� �
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
**� �
,
**� � 
omitXmlDeclaration
**� �
)
**� �
;
**� �
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
binding	--y �
,
--� �
SoapSerializer
--� �

serializer
--� �
=
--� �
SoapSerializer
--� �
.
--� �$
DataContractSerializer
--� �
,
--� �
bool
--� �!
caseInsensitivePath
--� �
=
--� �
false
--� �
,
--� �
ISoapModelBounder
--� �
soapModelBounder
--� �
=
--� �
null
--� �
,
--� �
bool
--� �
	indentXml
--� �
=
--� �
true
--� �
,
--� �
bool
--� � 
omitXmlDeclaration
--� �
=
--� �
true
--� �
)
--� �
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
00� �
,
00� � 
omitXmlDeclaration
00� �
)
00� �
;
00� �
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
encoders	33{ �
,
33� �
SoapSerializer
33� �

serializer
33� �
=
33� �
SoapSerializer
33� �
.
33� �$
DataContractSerializer
33� �
,
33� �
bool
33� �!
caseInsensitivePath
33� �
=
33� �
false
33� �
,
33� �
ISoapModelBounder
33� �
soapModelBounder
33� �
=
33� �
null
33� �
,
33� �
bool
33� �
	indentXml
33� �
=
33� �
true
33� �
,
33� �
bool
33� � 
omitXmlDeclaration
33� �
=
33� �
true
33� �
)
33� �
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
	indentXml	55| �
,
55� � 
omitXmlDeclaration
55� �
)
55� �
;
55� �
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
SoapEncoderOptions	88q �
[
88� �
]
88� �
encoders
88� �
,
88� �
SoapSerializer
88� �

serializer
88� �
=
88� �
SoapSerializer
88� �
.
88� �$
DataContractSerializer
88� �
,
88� �
bool
88� �!
caseInsensitivePath
88� �
=
88� �
false
88� �
,
88� �
ISoapModelBounder
88� �
soapModelBounder
88� �
=
88� �
null
88� �
,
88� �
bool
88� �
	indentXml
88� �
=
88� �
true
88� �
,
88� �
bool
88� � 
omitXmlDeclaration
88� �
=
88� �
true
88� �
)
88� �
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
,	;; �
null
;;� �
,
;;� �
	indentXml
;;� �
,
;;� � 
omitXmlDeclaration
;;� �
)
;;� �
;
;;� �
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
SoapEncoderOptions	>>n �
[
>>� �
]
>>� �
encoderOptions
>>� �
,
>>� �
SoapSerializer
>>� �

serializer
>>� �
=
>>� �
SoapSerializer
>>� �
.
>>� �$
DataContractSerializer
>>� �
,
>>� �
bool
>>� �!
caseInsensitivePath
>>� �
=
>>� �
false
>>� �
,
>>� �
ISoapModelBounder
>>� �
soapModelBounder
>>� �
=
>>� �
null
>>� �
,
>>� �
Binding
>>� �
binding
>>� �
=
>>� �
null
>>� �
,
>>� �
WsdlFileOptions
>>� �
wsdlFileOptions
>>� �
=
>>� �
null
>>� �
,
>>� �
bool
>>� �
	indentXml
>>� �
=
>>� �
true
>>� �
,
>>� �
bool
>>� � 
omitXmlDeclaration
>>� �
=
>>� �
true
>>� �
)
>>� �
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
@@� �
,
@@� �
wsdlFileOptions
@@� �
,
@@� �
	indentXml
@@� �
,
@@� � 
omitXmlDeclaration
@@� �
)
@@� �
;
@@� �
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
SoapEncoderOptions	CCy �
[
CC� �
]
CC� �
encoderOptions
CC� �
,
CC� �
SoapSerializer
CC� �

serializer
CC� �
=
CC� �
SoapSerializer
CC� �
.
CC� �$
DataContractSerializer
CC� �
,
CC� �
bool
CC� �!
caseInsensitivePath
CC� �
=
CC� �
false
CC� �
,
CC� �
ISoapModelBounder
CC� �
soapModelBounder
CC� �
=
CC� �
null
CC� �
,
CC� �
Binding
CC� �
binding
CC� �
=
CC� �
null
CC� �
,
CC� �
WsdlFileOptions
CC� �
wsdlFileOptions
CC� �
=
CC� �
null
CC� �
,
CC� �
bool
CC� �
	indentXml
CC� �
=
CC� �
true
CC� �
,
CC� �
bool
CC� � 
omitXmlDeclaration
CC� �
=
CC� �
true
CC� �
)
CC� �
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
SoapSerializer	VV �

serializer
VV� �
=
VV� �
SoapSerializer
VV� �
.
VV� �$
DataContractSerializer
VV� �
,
VV� �
bool
VV� �!
caseInsensitivePath
VV� �
=
VV� �
false
VV� �
,
VV� �
ISoapModelBounder
VV� �
soapModelBounder
VV� �
=
VV� �
null
VV� �
,
VV� �
WsdlFileOptions
VV� �
wsdlFileOptions
VV� �
=
VV� �
null
VV� �
,
VV� �
bool
VV� �
	indentXml
VV� �
=
VV� �
true
VV� �
,
VV� �
bool
VV� � 
omitXmlDeclaration
VV� �
=
VV� �
true
VV� �
)
VV� �
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
wsdlFileOptions	XXy �
,
XX� �
	indentXml
XX� �
,
XX� � 
omitXmlDeclaration
XX� �
)
XX� �
;
XX� �
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
Binding	[[y �
binding
[[� �
,
[[� �
SoapSerializer
[[� �

serializer
[[� �
=
[[� �
SoapSerializer
[[� �
.
[[� �$
DataContractSerializer
[[� �
,
[[� �
bool
[[� �!
caseInsensitivePath
[[� �
=
[[� �
false
[[� �
,
[[� �
ISoapModelBounder
[[� �
soapModelBounder
[[� �
=
[[� �
null
[[� �
,
[[� �
WsdlFileOptions
[[� �
wsdlFileOptions
[[� �
=
[[� �
null
[[� �
,
[[� �
bool
[[� �
	indentXml
[[� �
=
[[� �
true
[[� �
,
[[� �
bool
[[� � 
omitXmlDeclaration
[[� �
=
[[� �
true
[[� �
)
[[� �
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
binding	ss| �
,
ss� �
wsdlFileOptions
ss� �
,
ss� �
	indentXml
ss� �
,
ss� � 
omitXmlDeclaration
ss� �
)
ss� �
;
ss� �
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
options	{{| �
)
{{� �
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
�� 
(
�� 
opt
�� 

.
��
 
EncoderOptions
�� 
is
�� 
null
�� !
&&
��" $
opt
��% (
.
��( )
Binding
��) 0
!=
��1 3
null
��4 8
)
��8 9
{
�� 
var
�� 
elements
�� 
=
�� 
opt
�� 
.
�� 
Binding
�� 
.
�� #
CreateBindingElements
�� 4
(
��4 5
)
��5 6
.
��6 7
FindAll
��7 >
<
��> ?+
MessageEncodingBindingElement
��? \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
var
�� 
encoderOptions
�� 
=
�� 
new
��  
SoapEncoderOptions
�� /
[
��/ 0
elements
��0 8
.
��8 9
Count
��9 >
]
��> ?
;
��? @
for
�� 
(
�� 	
var
��	 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
encoderOptions
�� &
.
��& '
Length
��' -
;
��- .
i
��/ 0
++
��0 2
)
��2 3
{
�� 
var
�� 
encoderOption
��	 
=
�� 
new
��  
SoapEncoderOptions
�� /
{
�� 
MessageVersion
�� 
=
�� 
elements
�� 
[
��  
i
��  !
]
��! "
.
��" #
MessageVersion
��# 1
,
��1 2
WriteEncoding
�� 
=
�� 
Encoding
�� 
.
�� 
UTF8
�� #
,
��# $
ReaderQuotas
�� 
=
�� '
XmlDictionaryReaderQuotas
�� .
.
��. /
Max
��/ 2
}
�� 
;
�� 
if
�� 
(
�� 	
elements
��	 
[
�� 
i
�� 
]
�� 
is
�� /
!TextMessageEncodingBindingElement
�� 9/
!textMessageEncodingBindingElement
��: [
)
��[ \
{
�� 
encoderOption
�� 
.
�� 
WriteEncoding
�� !
=
��" #/
!textMessageEncodingBindingElement
��$ E
.
��E F
WriteEncoding
��F S
;
��S T
encoderOption
�� 
.
�� 
ReaderQuotas
��  
=
��! "/
!textMessageEncodingBindingElement
��# D
.
��D E
ReaderQuotas
��E Q
;
��Q R
}
�� 
encoderOptions
�� 
[
�� 
i
�� 
]
�� 
=
�� 
encoderOption
�� &
;
��& '
}
�� 
opt
�� 
.
�� 
EncoderOptions
�� 
=
�� 
encoderOptions
�� '
;
��' (
}
�� 
var
�� 
soapOptions
�� 
=
�� 
SoapOptions
��  
.
��  !!
FromSoapCoreOptions
��! 4
<
��4 5
T
��5 6
>
��6 7
(
��7 8
opt
��8 ;
)
��; <
;
��< =
return
�� 	
builder
��
 
.
�� 
UseMiddleware
�� 
<
��  $
SoapEndpointMiddleware
��  6
<
��6 7
	T_MESSAGE
��7 @
>
��@ A
>
��A B
(
��B C
soapOptions
��C N
)
��N O
;
��O P
}
�� 
public
�� 
static
��	  
IServiceCollection
�� "
AddSoapCore
��# .
(
��. /
this
��/ 3 
IServiceCollection
��4 F
serviceCollection
��G X
)
��X Y
{
�� 
serviceCollection
�� 
.
�� 
TryAddSingleton
�� $
<
��$ %
IOperationInvoker
��% 6
,
��6 7%
DefaultOperationInvoker
��8 O
>
��O P
(
��P Q
)
��Q R
;
��R S
serviceCollection
�� 
.
�� 
TryAddSingleton
�� $
<
��$ %(
IFaultExceptionTransformer
��% ?
,
��? @.
 DefaultFaultExceptionTransformer
��A a
<
��a b
CustomMessage
��b o
>
��o p
>
��p q
(
��q r
)
��r s
;
��s t
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� "
AddSoapCore
��# .
<
��. /
	T_MESSAGE
��/ 8
>
��8 9
(
��9 :
this
��: > 
IServiceCollection
��? Q
serviceCollection
��R c
)
��c d
where
�� 
	T_MESSAGE
��	 
:
�� 
CustomMessage
�� "
,
��" #
new
��$ '
(
��' (
)
��( )
{
�� 
serviceCollection
�� 
.
�� 
TryAddSingleton
�� $
<
��$ %
IOperationInvoker
��% 6
,
��6 7%
DefaultOperationInvoker
��8 O
>
��O P
(
��P Q
)
��Q R
;
��R S
serviceCollection
�� 
.
�� 
TryAddSingleton
�� $
<
��$ %(
IFaultExceptionTransformer
��% ?
,
��? @.
 DefaultFaultExceptionTransformer
��A a
<
��a b
	T_MESSAGE
��b k
>
��k l
>
��l m
(
��m n
)
��n o
;
��o p
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� ")
AddSoapExceptionTransformer
��# >
(
��> ?
this
��? C 
IServiceCollection
��D V
serviceCollection
��W h
,
��h i
Func
��j n
<
��n o
	Exception
��o x
,
��x y
string��z �
>��� �
transformer��� �
)��� �
{
�� 
serviceCollection
�� 
.
�� 
TryAddSingleton
�� $
(
��$ %
new
��% ("
ExceptionTransformer
��) =
(
��= >
transformer
��> I
)
��I J
)
��J K
;
��K L
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� "%
AddSoapMessageInspector
��# :
(
��: ;
this
��; ? 
IServiceCollection
��@ R
serviceCollection
��S d
,
��d e
IMessageInspector
��f w
messageInspector��x �
)��� �
{
�� 
serviceCollection
�� 
.
�� 
TryAddSingleton
�� $
(
��$ %
messageInspector
��% 5
)
��5 6
;
��6 7
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� "%
AddSoapMessageInspector
��# :
<
��: ;
TService
��; C
>
��C D
(
��D E
this
��E I 
IServiceCollection
��J \
serviceCollection
��] n
)
��n o
where
�� 
TService
��	 
:
�� 
class
�� 
,
��  
IMessageInspector2
�� -
{
�� 
serviceCollection
�� 
.
�� 
	AddScoped
�� 
<
��  
IMessageInspector2
�� 1
,
��1 2
TService
��3 ;
>
��; <
(
��< =
)
��= >
;
��> ?
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� "%
AddSoapMessageInspector
��# :
(
��: ;
this
��; ? 
IServiceCollection
��@ R
serviceCollection
��S d
,
��d e 
IMessageInspector2
��f x
messageInspector��y �
)��� �
{
�� 
serviceCollection
�� 
.
�� 
AddSingleton
�� !
(
��! "
messageInspector
��" 2
)
��2 3
;
��3 4
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� ""
AddSoapMessageFilter
��# 7
(
��7 8
this
��8 < 
IServiceCollection
��= O
serviceCollection
��P a
,
��a b
IMessageFilter
��c q
messageFilter
��r 
)�� �
{
�� 
serviceCollection
�� 
.
�� 
TryAddSingleton
�� $
(
��$ %
messageFilter
��% 2
)
��2 3
;
��3 4
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� "%
AddSoapWsSecurityFilter
��# :
(
��: ;
this
��; ? 
IServiceCollection
��@ R
serviceCollection
��S d
,
��d e
string
��f l
username
��m u
,
��u v
string
��w }
password��~ �
)��� �
{
�� 
serviceCollection
�� 
.
�� "
AddSoapMessageFilter
�� )
(
��) *
new
��* -
WsMessageFilter
��. =
(
��= >
username
��> F
,
��F G
password
��H P
)
��P Q
)
��Q R
;
��R S
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� "'
AddSoapModelBindingFilter
��# <
(
��< =
this
��= A 
IServiceCollection
��B T
serviceCollection
��U f
,
��f g!
IModelBindingFilter
��h {!
modelBindingFilter��| �
)��� �
{
�� 
serviceCollection
�� 
.
�� 
TryAddSingleton
�� $
(
��$ % 
modelBindingFilter
��% 7
)
��7 8
;
��8 9
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� "*
AddSoapServiceOperationTuner
��# ?
<
��? @
TService
��@ H
>
��H I
(
��I J
this
��J N 
IServiceCollection
��O a
serviceCollection
��b s
)
��s t
where
�� 
TService
��	 
:
�� 
class
�� 
,
�� $
IServiceOperationTuner
�� 1
{
�� 
serviceCollection
�� 
.
�� 
	AddScoped
�� 
<
�� $
IServiceOperationTuner
�� 5
,
��5 6
TService
��7 ?
>
��? @
(
��@ A
)
��A B
;
��B C
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
public
�� 
static
��	  
IServiceCollection
�� "*
AddSoapServiceOperationTuner
��# ?
(
��? @
this
��@ D 
IServiceCollection
��E W
serviceCollection
��X i
,
��i j%
IServiceOperationTuner��k �%
serviceOperationTuner��� �
)��� �
{
�� 
serviceCollection
�� 
.
�� 
TryAddSingleton
�� $
(
��$ %#
serviceOperationTuner
��% :
)
��: ;
;
��; <
return
�� 	
serviceCollection
��
 
;
�� 
}
�� 
}
�� 
}�� ��
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
string	,,{ �
path
,,� �
,
,,� � 
SoapEncoderOptions
,,� �
[
,,� �
]
,,� �
encoderOptions
,,� �
,
,,� �
SoapSerializer
,,� �

serializer
,,� �
,
,,� �
bool
,,� �!
caseInsensitivePath
,,� �
,
,,� �
ISoapModelBounder
,,� �
soapModelBounder
,,� �
,
,,� �
Binding
,,� �
binding
,,� �
,
,,� �
bool
,,� �
httpGetEnabled
,,� �
,
,,� �
bool
,,� �
httpsGetEnabled
,,� �
)
,,� �
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
encoderOptions	>>t �
[
>>� �
i
>>� �
]
>>� �
.
>>� �
ReaderQuotas
>>� �
,
>>� �
true
>>� �
,
>>� �
true
>>� �
)
>>� �
;
>>� �
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
WriteEncoding	WWu �
,
WW� �
options
WW� �
.
WW� �
EncoderOptions
WW� �
[
WW� �
i
WW� �
]
WW� �
.
WW� �
ReaderQuotas
WW� �
,
WW� �
options
WW� �
.
WW� � 
OmitXmlDeclaration
WW� �
,
WW� �
options
WW� �
.
WW� �
	IndentXml
WW� �
)
WW� �
;
WW� �
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
�� 
{
�� 
_logger
�� 
.
�� 
LogDebug
�� 
(
�� 
$"
�� (
Received SOAP Request for 
�� 2
{
��2 3
httpContext
��3 >
.
��> ?
Request
��? F
.
��F G
Path
��G K
}
��K L
 (
��L N
{
��N O
httpContext
��O Z
.
��Z [
Request
��[ b
.
��b c
ContentLength
��c p
??
��q s
$num
��t u
}
��u v
 bytes)
��v }
"
��} ~
)
��~ 
;�� �
if
�� 
(
�� 	
httpContext
��	 
.
�� 
Request
�� 
.
�� 
Query
�� "
.
��" #
ContainsKey
��# .
(
��. /
$str
��/ 5
)
��5 6
&&
��7 9
httpContext
��: E
.
��E F
Request
��F M
.
��M N
Method
��N T
?
��T U
.
��U V
ToLower
��V ]
(
��] ^
)
��^ _
==
��` b
$str
��c h
)
��h i
{
�� 
if
�� 
(
��	 

_options
��
 
.
�� 
WsdlFileOptions
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
await
�� !
ProcessMetaFromFile
��  
(
��  !
httpContext
��! ,
)
��, -
;
��- .
}
�� 
else
�� 

{
�� 
await
�� 
ProcessMeta
�� 
(
�� 
httpContext
�� $
)
��$ %
;
��% &
}
�� 
}
�� 
else
�� 	
if
��
 
(
�� 
httpContext
�� 
.
�� 
Request
�� !
.
��! "
Query
��" '
.
��' (
ContainsKey
��( 3
(
��3 4
$str
��4 9
)
��9 :
&&
��; =
httpContext
��> I
.
��I J
Request
��J Q
.
��Q R
Method
��R X
?
��X Y
.
��Y Z
ToLower
��Z a
(
��a b
)
��b c
==
��d f
$str
��g l
&&
��m o
_options
��p x
.
��x y
WsdlFileOptions��y �
!=��� �
null��� �
)��� �
{
�� 
await
�� 

ProcessXSD
�� 
(
�� 
httpContext
�� "
)
��" #
;
��# $
}
�� 
else
�� 	
{
�� 
await
�� 
ProcessOperation
�� 
(
�� 
httpContext
�� (
,
��( )
serviceProvider
��* 9
)
��9 :
;
��: ;
}
�� 
}
�� 
catch
�� 	
(
��
 
	Exception
�� 
ex
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogCritical
�� 
(
�� 
ex
�� 
,
�� 
$"
�� S
EAn error occurred when trying to service a request on SOAP endpoint: 
�� d
{
��d e
httpContext
��e p
.
��p q
Request
��q x
.
��x y
Path
��y }
}
��} ~
"
��~ 
)�� �
;��� �
throw
�� 

;
��
 
}
�� 
}
�� 
else
�� 
{
�� 
await
�� 	
_next
��
 
(
�� 
httpContext
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
static
��
 
Task
�� 
WriteMessageAsync
�� '
(
��' ( 
SoapMessageEncoder
��( :
messageEncoder
��; I
,
��I J
Message
��K R
responseMessage
��S b
,
��b c
HttpContext
��d o
httpContext
��p {
)
��{ |
{
�� 
return
�� 	
messageEncoder
��
 
.
�� 
WriteMessageAsync
�� *
(
��* +
responseMessage
��+ :
,
��: ;
httpContext
��< G
.
��G H
Response
��H P
.
��P Q
Body
��Q U
)
��U V
;
��V W
}
�� 
private
�� 	
static
��
 
Task
�� 
<
�� 
Message
�� 
>
�� 
ReadMessageAsync
�� /
(
��/ 0
HttpContext
��0 ;
httpContext
��< G
,
��G H 
SoapMessageEncoder
��I [
messageEncoder
��\ j
)
��j k
{
�� 
return
�� 	
messageEncoder
��
 
.
�� 
ReadMessageAsync
�� )
(
��) *
httpContext
��* 5
.
��5 6
Request
��6 =
.
��= >
Body
��> B
,
��B C
$num
��D K
,
��K L
httpContext
��M X
.
��X Y
Request
��Y `
.
��` a
ContentType
��a l
)
��l m
;
��m n
}
�� 
private
�� 	
async
��
 
Task
�� 
ProcessMeta
��  
(
��  !
HttpContext
��! ,
httpContext
��- 8
)
��8 9
{
�� 
var
�� 
baseUrl
�� 
=
�� 
httpContext
�� 
.
�� 
Request
�� $
.
��$ %
Scheme
��% +
+
��, -
$str
��. 3
+
��4 5
httpContext
��6 A
.
��A B
Request
��B I
.
��I J
Host
��J N
+
��O P
httpContext
��Q \
.
��\ ]
Request
��] d
.
��d e
PathBase
��e m
+
��n o
httpContext
��p {
.
��{ |
Request��| �
.��� �
Path��� �
;��� �
var
�� 

bodyWriter
�� 
=
�� 
_serializer
�� 
==
��  "
SoapSerializer
��# 1
.
��1 2
XmlSerializer
��2 ?
?
��@ A
new
��B E
MetaBodyWriter
��F T
(
��T U
_service
��U ]
,
��] ^
baseUrl
��_ f
,
��f g
_binding
��h p
,
��p q#
_xmlNamespaceManager��r �
)��� �
:��� �
(��� �

BodyWriter��� �
)��� �
new��� �!
MetaWCFBodyWriter��� �
(��� �
_service��� �
,��� �
baseUrl��� �
,��� �
_binding��� �
)��� �
;��� �
var
�� 
responseMessage
�� 
=
�� 
Message
��  
.
��  !
CreateMessage
��! .
(
��. /
_messageEncoders
��/ ?
[
��? @
$num
��@ A
]
��A B
.
��B C
MessageVersion
��C Q
,
��Q R
null
��S W
,
��W X

bodyWriter
��Y c
)
��c d
;
��d e
responseMessage
�� 
=
�� 
new
�� 
MetaMessage
�� $
(
��$ %
responseMessage
��% 4
,
��4 5
_service
��6 >
,
��> ?
_binding
��@ H
,
��H I"
_xmlNamespaceManager
��J ^
)
��^ _
;
��_ `
httpContext
�� 
.
�� 
Response
�� 
.
�� 
ContentType
�� #
=
��$ %
$str
��& >
;
��> ?
await
�� 
WriteMessageAsync
��	 
(
�� 
_messageEncoders
�� +
[
��+ ,
$num
��, -
]
��- .
,
��. /
responseMessage
��0 ?
,
��? @
httpContext
��A L
)
��L M
;
��M N
}
�� 
private
�� 	
async
��
 
Task
�� 
ProcessOperation
�� %
(
��% &
HttpContext
��& 1
httpContext
��2 =
,
��= >
IServiceProvider
��? O
serviceProvider
��P _
)
��_ `
{
�� 
Message
�� 

responseMessage
�� 
;
�� 
var
�� 
memoryStream
�� 
=
�� 
new
�� 
MemoryStream
�� &
(
��& '
(
��' (
int
��( +
)
��+ ,
httpContext
��, 7
.
��7 8
Request
��8 ?
.
��? @
ContentLength
��@ M
.
��M N
GetValueOrDefault
��N _
(
��_ `
$num
��` d
)
��d e
)
��e f
;
��f g
await
�� 
httpContext
��	 
.
�� 
Request
�� 
.
�� 
Body
�� !
.
��! "
CopyToAsync
��" -
(
��- .
memoryStream
��. :
)
��: ;
.
��; <
ConfigureAwait
��< J
(
��J K
false
��K P
)
��P Q
;
��Q R
memoryStream
�� 
.
�� 
Seek
�� 
(
�� 
$num
�� 
,
�� 

SeekOrigin
�� "
.
��" #
Begin
��# (
)
��( )
;
��) *
httpContext
�� 
.
�� 
Request
�� 
.
�� 
Body
�� 
=
�� 
memoryStream
�� *
;
��* +
if
�� 
(
�� 
httpContext
�� 
.
�� 
Request
�� 
.
�� 
Body
�� 
.
��  
Length
��  &
==
��' )
$num
��* +
&&
��, .
httpContext
��/ :
.
��: ;
Request
��; B
.
��B C
Method
��C I
?
��I J
.
��J K
ToLower
��K R
(
��R S
)
��S T
==
��U W
$str
��X ]
)
��] ^
{
�� 
if
�� 
(
�� 
_options
�� 
.
�� 
WsdlFileOptions
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
await
�� 
!
ProcessMetaFromFile
�� 
(
�� 
httpContext
�� *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� 
await
�� 

ProcessMeta
�� 
(
�� 
httpContext
�� "
)
��" #
;
��# $
}
�� 
return
�� 

;
��
 
}
�� 
var
�� 
messageEncoder
�� 
=
�� 
_messageEncoders
�� (
[
��( )
$num
��) *
]
��* +
;
��+ ,
foreach
�� 

(
�� 
var
�� 
encoder
�� 
in
�� 
_messageEncoders
�� +
)
��+ ,
{
�� 
if
�� 
(
�� 
encoder
�� 
.
�� $
IsContentTypeSupported
�� &
(
��& '
httpContext
��' 2
.
��2 3
Request
��3 :
.
��: ;
ContentType
��; F
)
��F G
)
��G H
{
�� 
messageEncoder
�� 
=
�� 
encoder
�� 
;
�� 
break
�� 

;
��
 
}
�� 
}
�� 
Message
�� 

requestMessage
�� 
;
�� 
try
�� 
{
�� 
requestMessage
�� 
=
�� 
await
�� 
ReadMessageAsync
�� +
(
��+ ,
httpContext
��, 7
,
��7 8
messageEncoder
��9 G
)
��G H
;
��H I
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
�� 
await
�� 	'
WriteErrorResponseMessage
��
 #
(
��# $
ex
��$ &
,
��& '
StatusCodes
��( 3
.
��3 4*
Status500InternalServerError
��4 P
,
��P Q
serviceProvider
��R a
,
��a b
null
��c g
,
��g h
messageEncoder
��i w
,
��w x
httpContext��y �
)��� �
;��� �
return
�� 

;
��
 
}
�� 
var
�� 
messageFilters
�� 
=
�� 
serviceProvider
�� '
.
��' (
GetServices
��( 3
<
��3 4
IMessageFilter
��4 B
>
��B C
(
��C D
)
��D E
.
��E F
ToArray
��F M
(
��M N
)
��N O
;
��O P
var
�� !
asyncMessageFilters
�� 
=
�� 
serviceProvider
�� ,
.
��, -
GetServices
��- 8
<
��8 9!
IAsyncMessageFilter
��9 L
>
��L M
(
��M N
)
��N O
.
��O P
ToArray
��P W
(
��W X
)
��X Y
;
��Y Z
try
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
messageFilter
�� 
in
�� !
messageFilters
��" 0
)
��0 1
{
�� 
messageFilter
�� 
.
��  
OnRequestExecuting
�� %
(
��% &
requestMessage
��& 4
)
��4 5
;
��5 6
}
�� 
foreach
�� 
(
�� 
var
�� 
messageFilter
�� 
in
�� !!
asyncMessageFilters
��" 5
)
��5 6
{
�� 
await
�� 

messageFilter
�� 
.
��  
OnRequestExecuting
�� +
(
��+ ,
requestMessage
��, :
)
��: ;
;
��; <
}
�� 
}
�� 
catch
�� 
(
��	 

	Exception
��
 
ex
�� 
)
�� 
{
�� 
await
�� 	'
WriteErrorResponseMessage
��
 #
(
��# $
ex
��$ &
,
��& '
StatusCodes
��( 3
.
��3 4*
Status500InternalServerError
��4 P
,
��P Q
serviceProvider
��R a
,
��a b
requestMessage
��c q
,
��q r
messageEncoder��s �
,��� �
httpContext��� �
)��� �
;��� �
return
�� 

;
��
 
}
�� 
var
�� 
messageInspector
�� 
=
�� 
serviceProvider
�� )
.
��) *

GetService
��* 4
<
��4 5
IMessageInspector
��5 F
>
��F G
(
��G H
)
��H I
;
��I J
object
�� 	
correlationObject
��
 
;
�� 
try
�� 
{
�� 
correlationObject
�� 
=
�� 
messageInspector
�� (
?
��( )
.
��) *!
AfterReceiveRequest
��* =
(
��= >
ref
��> A
requestMessage
��B P
)
��P Q
;
��Q R
}
�� 
catch
�� 
(
��	 

	Exception
��
 
ex
�� 
)
�� 
{
�� 
await
�� 	'
WriteErrorResponseMessage
��
 #
(
��# $
ex
��$ &
,
��& '
StatusCodes
��( 3
.
��3 4*
Status500InternalServerError
��4 P
,
��P Q
serviceProvider
��R a
,
��a b
requestMessage
��c q
,
��q r
messageEncoder��s �
,��� �
httpContext��� �
)��� �
;��� �
return
�� 

;
��
 
}
�� 
var
��  
messageInspector2s
�� 
=
�� 
serviceProvider
�� +
.
��+ ,
GetServices
��, 7
<
��7 8 
IMessageInspector2
��8 J
>
��J K
(
��K L
)
��L M
;
��M N
var
�� !
correlationObjects2
�� 
=
�� 
default
�� $
(
��$ %
List
��% )
<
��) *
(
��* + 
IMessageInspector2
��+ =
	inspector
��> G
,
��G H
object
��I O
correlationObject
��P a
)
��a b
>
��b c
)
��c d
;
��d e
try
�� 
{
�� !
correlationObjects2
�� 
=
��  
messageInspector2s
�� ,
.
��, -
Select
��- 3
(
��3 4
mi
��4 6
=>
��7 9
(
��: ;
	inspector
��; D
:
��D E
mi
��F H
,
��H I
correlationObject
��J [
:
��[ \
mi
��] _
.
��_ `!
AfterReceiveRequest
��` s
(
��s t
ref
��t w
requestMessage��x �
,��� �
_service��� �
)��� �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
}
�� 
catch
�� 
(
��	 

	Exception
��
 
ex
�� 
)
�� 
{
�� 
await
�� 	'
WriteErrorResponseMessage
��
 #
(
��# $
ex
��$ &
,
��& '
StatusCodes
��( 3
.
��3 4*
Status500InternalServerError
��4 P
,
��P Q
serviceProvider
��R a
,
��a b
requestMessage
��c q
,
��q r
messageEncoder��s �
,��� �
httpContext��� �
)��� �
;��� �
return
�� 

;
��
 
}
�� !
XmlDictionaryReader
�� 
reader
�� 
=
�� 
null
��  $
;
��$ %
if
�� 
(
�� 
!
�� 
requestMessage
�� 
.
�� 
IsEmpty
�� 
)
�� 
{
�� 
reader
�� 

=
�� 
requestMessage
�� 
.
�� %
GetReaderAtBodyContents
�� 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
try
�� 
{
�� 
var
�� 

soapAction
�� 
=
�� 
HeadersHelper
�� "
.
��" #
GetSoapAction
��# 0
(
��0 1
httpContext
��1 <
,
��< =
reader
��> D
)
��D E
;
��E F
requestMessage
�� 
.
�� 
Headers
�� 
.
�� 
Action
�� !
=
��" #

soapAction
��$ .
;
��. /
var
�� 
	operation
�� 
=
�� 
_service
�� 
.
�� 

Operations
�� '
.
��' (
FirstOrDefault
��( 6
(
��6 7
o
��7 8
=>
��9 ;
o
��< =
.
��= >

SoapAction
��> H
.
��H I
Equals
��I O
(
��O P

soapAction
��P Z
,
��Z [
StringComparison
��\ l
.
��l m
Ordinal
��m t
)
��t u
||
��v x
o
��y z
.
��z {
Name
��{ 
.�� �
Equals��� �
(��� �
HeadersHelper��� �
.��� �$
GetTrimmedSoapAction��� �
(��� �

soapAction��� �
)��� �
,��� � 
StringComparison��� �
.��� �
Ordinal��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
	operation
�� 
==
�� 
null
�� 
)
�� 
{
�� 
var
�� 
ex
��	 
=
�� 
new
�� '
InvalidOperationException
�� +
(
��+ ,
$"
��, .7
)No operation found for specified action: 
��. W
{
��W X
requestMessage
��X f
.
��f g
Headers
��g n
.
��n o
Action
��o u
}
��u v
"
��v w
)
��w x
;
��x y
await
�� 
'
WriteErrorResponseMessage
�� $
(
��$ %
ex
��% '
,
��' (
StatusCodes
��) 4
.
��4 5*
Status500InternalServerError
��5 Q
,
��Q R
serviceProvider
��S b
,
��b c
requestMessage
��d r
,
��r s
messageEncoder��t �
,��� �
httpContext��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
_logger
�� 
.
�� 
LogInformation
�� 
(
�� 
$"
�� $
Request for operation 
�� 3
{
��3 4
	operation
��4 =
.
��= >
Contract
��> F
.
��F G
Name
��G K
}
��K L
.
��L M
{
��M N
	operation
��N W
.
��W X
Name
��X \
}
��\ ]
	 received
��] f
"
��f g
)
��g h
;
��h i
try
�� 
{
�� 
var
�� 
serviceInstance
��	 
=
�� 
serviceProvider
�� *
.
��* + 
GetRequiredService
��+ =
(
��= >
_service
��> F
.
��F G
ServiceType
��G R
)
��R S
;
��S T)
SetMessageHeadersToProperty
��  
(
��  !
requestMessage
��! /
,
��/ 0
serviceInstance
��1 @
)
��@ A
;
��A B
var
�� 
	arguments
��	 
=
�� !
GetRequestArguments
�� (
(
��( )
requestMessage
��) 7
,
��7 8
reader
��9 ?
,
��? @
	operation
��A J
,
��J K
httpContext
��L W
)
��W X
;
��X Y#
ExecuteFiltersAndTune
�� 
(
�� 
httpContext
�� &
,
��& '
serviceProvider
��( 7
,
��7 8
	operation
��9 B
,
��B C
	arguments
��D M
,
��M N
serviceInstance
��O ^
)
��^ _
;
��_ `
var
�� 
invoker
��	 
=
�� 
serviceProvider
�� "
.
��" #

GetService
��# -
<
��- .
IOperationInvoker
��. ?
>
��? @
(
��@ A
)
��A B
??
��C E
new
��F I%
DefaultOperationInvoker
��J a
(
��a b
)
��b c
;
��c d
var
�� 
responseObject
��	 
=
�� 
await
�� 
invoker
��  '
.
��' (
InvokeAsync
��( 3
(
��3 4
	operation
��4 =
.
��= >
DispatchMethod
��> L
,
��L M
serviceInstance
��N ]
,
��] ^
	arguments
��_ h
)
��h i
;
��i j
if
�� 
(
�� 	
	operation
��	 
.
�� 
IsOneWay
�� 
)
�� 
{
�� 
httpContext
�� 
.
�� 
Response
�� 
.
�� 

StatusCode
�� %
=
��& '
(
��( )
int
��) ,
)
��, -
HttpStatusCode
��- ;
.
��; <
Accepted
��< D
;
��D E
return
�� 
;
�� 
}
�� 
var
�� !
resultOutDictionary
��	 
=
�� 
new
�� "

Dictionary
��# -
<
��- .
string
��. 4
,
��4 5
object
��6 <
>
��< =
(
��= >
)
��> ?
;
��? @
foreach
�� 
(
�� 
var
�� 
parameterInfo
�� 
in
��  "
	operation
��# ,
.
��, -
OutParameters
��- :
)
��: ;
{
�� !
resultOutDictionary
�� 
[
�� 
parameterInfo
�� '
.
��' (
Name
��( ,
]
��, -
=
��. /
	arguments
��0 9
[
��9 :
parameterInfo
��: G
.
��G H
Index
��H M
]
��M N
;
��N O
}
�� 
responseMessage
�� 
=
�� #
CreateResponseMessage
�� ,
(
��, -
	operation
�� 
,
�� 
responseObject
�� 
,
��  !
resultOutDictionary
��! 4
,
��4 5

soapAction
��6 @
,
��@ A
requestMessage
��B P
,
��P Q
messageEncoder
��R `
)
��` a
;
��a b
httpContext
�� 
.
�� 
Response
�� 
.
�� 
ContentType
�� %
=
��& '
httpContext
��( 3
.
��3 4
Request
��4 ;
.
��; <
ContentType
��< G
;
��G H
httpContext
�� 
.
�� 
Response
�� 
.
�� 
Headers
�� !
[
��! "
$str
��" .
]
��. /
=
��0 1
responseMessage
��2 A
.
��A B
Headers
��B I
.
��I J
Action
��J P
;
��P Q!
correlationObjects2
�� 
.
�� 
ForEach
��  
(
��  !
mi
��! #
=>
��$ &
mi
��' )
.
��) *
	inspector
��* 3
.
��3 4
BeforeSendReply
��4 C
(
��C D
ref
��D G
responseMessage
��H W
,
��W X
_service
��Y a
,
��a b
mi
��c e
.
��e f
correlationObject
��f w
)
��w x
)
��x y
;
��y z
messageInspector
�� 
?
�� 
.
�� 
BeforeSendReply
�� &
(
��& '
ref
��' *
responseMessage
��+ :
,
��: ;
correlationObject
��< M
)
��M N
;
��N O
SetHttpResponse
�� 
(
�� 
httpContext
��  
,
��  !
responseMessage
��" 1
)
��1 2
;
��2 3
await
�� 

WriteMessageAsync
�� 
(
�� 
messageEncoder
�� +
,
��+ ,
responseMessage
��- <
,
��< =
httpContext
��> I
)
��I J
;
��J K
}
�� 
catch
�� 	
(
��
 
	Exception
�� 
	exception
�� 
)
�� 
{
�� 
if
�� 
(
�� 	
	exception
��	 
is
�� '
TargetInvocationException
�� /'
targetInvocationException
��0 I
)
��I J
{
�� 
	exception
�� 
=
�� '
targetInvocationException
�� +
.
��+ ,
InnerException
��, :
;
��: ;
}
�� 
_logger
�� 
.
�� 
LogError
�� 
(
�� 
$num
�� 
,
�� 
	exception
�� "
,
��" #
	exception
��$ -
?
��- .
.
��. /
Message
��/ 6
)
��6 7
;
��7 8
responseMessage
�� 
=
�� 
await
�� '
WriteErrorResponseMessage
�� 6
(
��6 7
	exception
��7 @
,
��@ A
StatusCodes
��B M
.
��M N*
Status500InternalServerError
��N j
,
��j k
serviceProvider
��l {
,
��{ |
requestMessage��} �
,��� �
messageEncoder��� �
,��� �
httpContext��� �
)��� �
;��� �
}
�� 
}
�� 
finally
�� 

{
�� 
reader
�� 

?
��
 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
try
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
messageFilter
�� 
in
�� !
messageFilters
��" 0
)
��0 1
{
�� 
messageFilter
�� 
.
�� !
OnResponseExecuting
�� &
(
��& '
responseMessage
��' 6
)
��6 7
;
��7 8
}
�� 
foreach
�� 
(
�� 
var
�� 
messageFilter
�� 
in
�� !!
asyncMessageFilters
��" 5
.
��5 6
Reverse
��6 =
(
��= >
)
��> ?
)
��? @
{
�� 
await
�� 

messageFilter
�� 
.
�� !
OnResponseExecuting
�� ,
(
��, -
responseMessage
��- <
)
��< =
;
��= >
}
�� 
}
�� 
catch
�� 
(
��	 

	Exception
��
 
ex
�� 
)
�� 
{
�� 
responseMessage
�� 
=
�� 
await
�� '
WriteErrorResponseMessage
�� 5
(
��5 6
ex
��6 8
,
��8 9
StatusCodes
��: E
.
��E F*
Status500InternalServerError
��F b
,
��b c
serviceProvider
��d s
,
��s t
requestMessage��u �
,��� �
messageEncoder��� �
,��� �
httpContext��� �
)��� �
;��� �
}
�� 
}
�� 
private
�� 	
Message
��
 #
CreateResponseMessage
�� '
(
��' ("
OperationDescription
�� 
	operation
�� !
,
��! "
object
�� 	
responseObject
��
 
,
�� 

Dictionary
�� 
<
�� 
string
�� 
,
�� 
object
�� 
>
�� !
resultOutDictionary
�� 1
,
��1 2
string
�� 	

soapAction
��
 
,
�� 
Message
�� 

requestMessage
�� 
,
��  
SoapMessageEncoder
��  
soapMessageEncoder
�� (
)
��( )
{
�� 
Message
�� 

responseMessage
�� 
;
�� 
var
�� 

bodyWriter
�� 
=
�� 
new
�� 
ServiceBodyWriter
�� )
(
��) *
_serializer
��* 5
,
��5 6
	operation
��7 @
,
��@ A
responseObject
��B P
,
��P Q!
resultOutDictionary
��R e
)
��e f
;
��f g
if
�� 
(
��  
soapMessageEncoder
�� 
.
�� 
MessageVersion
�� (
.
��( )

Addressing
��) 3
==
��4 6
AddressingVersion
��7 H
.
��H I
WSAddressing10
��I W
)
��W X
{
�� 
responseMessage
�� 
=
�� 
Message
�� 
.
�� 
CreateMessage
�� +
(
��+ , 
soapMessageEncoder
��, >
.
��> ?
MessageVersion
��? M
,
��M N

soapAction
��O Y
,
��Y Z

bodyWriter
��[ e
)
��e f
;
��f g
	T_MESSAGE
�� 
customMessage
�� 
=
�� 
new
�� !
	T_MESSAGE
��" +
{
�� 
Message
�� 
=
�� 
responseMessage
�� 
,
�� 
NamespaceManager
�� 
=
�� "
_xmlNamespaceManager
�� ,
}
�� 
;
�� 
responseMessage
�� 
=
�� 
customMessage
�� #
;
��# $
responseMessage
�� 
.
�� 
Headers
�� 
.
�� 
Action
�� "
=
��# $
	operation
��% .
.
��. /
ReplyAction
��/ :
;
��: ;
responseMessage
�� 
.
�� 
Headers
�� 
.
�� 
	RelatesTo
�� %
=
��& '
requestMessage
��( 6
.
��6 7
Headers
��7 >
.
��> ?
	MessageId
��? H
;
��H I
responseMessage
�� 
.
�� 
Headers
�� 
.
�� 
To
�� 
=
��  
requestMessage
��! /
.
��/ 0
Headers
��0 7
.
��7 8
ReplyTo
��8 ?
?
��? @
.
��@ A
Uri
��A D
;
��D E
}
�� 
else
�� 
{
�� 
responseMessage
�� 
=
�� 
Message
�� 
.
�� 
CreateMessage
�� +
(
��+ , 
soapMessageEncoder
��, >
.
��> ?
MessageVersion
��? M
,
��M N
null
��O S
,
��S T

bodyWriter
��U _
)
��_ `
;
��` a
	T_MESSAGE
�� 
customMessage
�� 
=
�� 
new
�� !
	T_MESSAGE
��" +
{
�� 
Message
�� 
=
�� 
responseMessage
�� 
,
�� 
NamespaceManager
�� 
=
�� "
_xmlNamespaceManager
�� ,
}
�� 
;
�� 
responseMessage
�� 
=
�� 
customMessage
�� #
;
��# $
}
�� 
if
�� 
(
�� 
responseObject
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
var
�� "
messageHeaderMembers
�� 
=
�� 
responseObject
�� -
.
��- .
GetType
��. 5
(
��5 6
)
��6 7
.
��7 8%
GetMembersWithAttribute
��8 O
<
��O P$
MessageHeaderAttribute
��P f
>
��f g
(
��g h
)
��h i
;
��i j
foreach
�� 
(
�� 
var
�� !
messageHeaderMember
�� $
in
��% '"
messageHeaderMembers
��( <
)
��< =
{
�� 
var
�� $
messageHeaderAttribute
��	 
=
��  !!
messageHeaderMember
��" 5
.
��5 6 
GetCustomAttribute
��6 H
<
��H I$
MessageHeaderAttribute
��I _
>
��_ `
(
��` a
)
��a b
;
��b c
if
�� 
(
�� 	$
messageHeaderAttribute
��	 
.
��  
	Namespace
��  )
==
��* ,
null
��- 1
)
��1 2
{
�� 
responseMessage
�� 
.
�� 
Headers
�� 
.
�� 
Add
�� !
(
��! "
MessageHeader
��" /
.
��/ 0
CreateHeader
��0 <
(
��< =$
messageHeaderAttribute
��= S
.
��S T
Name
��T X
??
��Y [!
messageHeaderMember
��\ o
.
��o p
Name
��p t
,
��t u
	operation
��v 
.�� �
Contract��� �
.��� �
	Namespace��� �
,��� �#
messageHeaderMember��� �
.��� �'
GetPropertyOrFieldValue��� �
(��� �
responseObject��� �
)��� �
)��� �
)��� �
;��� �
}
�� 
else
�� 	
{
�� 
responseMessage
�� 
.
�� 
Headers
�� 
.
�� 
Add
�� !
(
��! "
MessageHeader
��" /
.
��/ 0
CreateHeader
��0 <
(
��< =$
messageHeaderAttribute
��= S
.
��S T
Name
��T X
??
��Y [!
messageHeaderMember
��\ o
.
��o p
Name
��p t
,
��t u%
messageHeaderAttribute��v �
.��� �
	Namespace��� �
,��� �#
messageHeaderMember��� �
.��� �'
GetPropertyOrFieldValue��� �
(��� �
responseObject��� �
)��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
return
�� 	
responseMessage
��
 
;
�� 
}
�� 
private
�� 	
void
��
 #
ExecuteFiltersAndTune
�� $
(
��$ %
HttpContext
��% 0
httpContext
��1 <
,
��< =
IServiceProvider
��> N
serviceProvider
��O ^
,
��^ _"
OperationDescription
��` t
	operation
��u ~
,
��~ 
object��� �
[��� �
]��� �
	arguments��� �
,��� �
object��� �
serviceInstance��� �
)��� �
{
�� 
object
�� 	 
modelBindingOutput
��
 
=
�� 
null
�� #
;
��# $
foreach
�� 

(
�� 
var
��  
modelBindingFilter
�� "
in
��# %
serviceProvider
��& 5
.
��5 6
GetServices
��6 A
<
��A B!
IModelBindingFilter
��B U
>
��U V
(
��V W
)
��W X
)
��X Y
{
�� 
foreach
�� 
(
�� 
var
�� 
	modelType
�� 
in
��  
modelBindingFilter
�� 0
.
��0 1

ModelTypes
��1 ;
)
��; <
{
�� 
foreach
�� 
(
�� 
var
�� 
parameterInfo
�� 
in
��  "
	operation
��# ,
.
��, -
InParameters
��- 9
)
��9 :
{
�� 
var
�� 	
arg
��
 
=
�� 
	arguments
�� 
[
�� 
parameterInfo
�� '
.
��' (
Index
��( -
]
��- .
;
��. /
if
�� 
(
��	 

arg
��
 
!=
�� 
null
�� 
&&
�� 
arg
�� 
.
�� 
GetType
�� $
(
��$ %
)
��% &
==
��' )
	modelType
��* 3
)
��3 4
{
��  
modelBindingFilter
�� 
.
�� 
OnModelBound
�� &
(
��& '
arg
��' *
,
��* +
serviceProvider
��, ;
,
��; <
out
��= @ 
modelBindingOutput
��A S
)
��S T
;
��T U
}
�� 
}
�� 
}
�� 
}
�� 
foreach
�� 

(
�� 
var
�� 
actionFilterAttr
��  
in
��! #
	operation
��$ -
.
��- .
DispatchMethod
��. <
.
��< =
CustomAttributes
��= M
.
��M N
Where
��N S
(
��S T
a
��T U
=>
��V X
a
��Y Z
.
��Z [
AttributeType
��[ h
.
��h i
Name
��i m
==
��n p
$str��q �
)��� �
)��� �
{
�� 
var
�� 
actionFilter
�� 
=
�� 
serviceProvider
�� &
.
��& '

GetService
��' 1
(
��1 2
actionFilterAttr
��2 B
.
��B C"
ConstructorArguments
��C W
[
��W X
$num
��X Y
]
��Y Z
.
��Z [
Value
��[ `
as
��a c
Type
��d h
)
��h i
;
��i j
actionFilter
�� 
.
�� 
GetType
�� 
(
�� 
)
�� 
.
�� 
	GetMethod
�� $
(
��$ %
$str
��% <
)
��< =
?
��= >
.
��> ?
Invoke
��? E
(
��E F
actionFilter
��F R
,
��R S
new
��T W
[
��W X
]
��X Y
{
��Z [
	operation
��\ e
.
��e f
Name
��f j
,
��j k
	arguments
��l u
,
��u v
httpContext��w �
,��� �"
modelBindingOutput��� �
}��� �
)��� �
;��� �
}
�� 
_soapModelBounder
�� 
?
�� 
.
�� 
OnModelBound
�� "
(
��" #
	operation
��# ,
.
��, -
DispatchMethod
��- ;
,
��; <
	arguments
��= F
)
��F G
;
��G H
var
�� $
serviceOperationTuners
�� 
=
�� 
serviceProvider
��  /
.
��/ 0
GetServices
��0 ;
<
��; <$
IServiceOperationTuner
��< R
>
��R S
(
��S T
)
��T U
;
��U V
foreach
�� 

(
�� 
var
�� 
operationTuner
�� 
in
�� !$
serviceOperationTuners
��" 8
)
��8 9
{
�� 
operationTuner
�� 
.
�� 
Tune
�� 
(
�� 
httpContext
�� #
,
��# $
serviceInstance
��% 4
,
��4 5
	operation
��6 ?
)
��? @
;
��@ A
}
�� 
}
�� 
private
�� 	
void
��
 )
SetMessageHeadersToProperty
�� *
(
��* +
Message
��+ 2
requestMessage
��3 A
,
��A B
object
��C I
serviceInstance
��J Y
)
��Y Z
{
�� 
var
�� 
headerProperty
�� 
=
�� 
_service
��  
.
��  !
ServiceType
��! ,
.
��, -
GetProperty
��- 8
(
��8 9
$str
��9 I
)
��I J
;
��J K
if
�� 
(
�� 
headerProperty
�� 
!=
�� 
null
�� 
&&
��  
headerProperty
��! /
.
��/ 0
PropertyType
��0 <
==
��= ?
requestMessage
��@ N
.
��N O
Headers
��O V
.
��V W
GetType
��W ^
(
��^ _
)
��_ `
)
��` a
{
�� 
headerProperty
�� 
.
�� 
SetValue
�� 
(
�� 
serviceInstance
�� +
,
��+ ,
requestMessage
��- ;
.
��; <
Headers
��< C
)
��C D
;
��D E
}
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
�� 
MethodImplOptions
�� 
.
��   
AggressiveInlining
��  2
)
��2 3
]
��3 4
private
�� 	
object
��
 
[
�� 
]
�� !
GetRequestArguments
�� &
(
��& '
Message
��' .
requestMessage
��/ =
,
��= >!
XmlDictionaryReader
��? R
	xmlReader
��S \
,
��\ ]"
OperationDescription
��^ r
	operation
��s |
,
��| }
HttpContext��~ �
httpContext��� �
)��� �
{
�� 
var
�� 
	arguments
�� 
=
�� 
new
�� 
object
�� 
[
�� 
	operation
�� '
.
��' (
AllParameters
��( 5
.
��5 6
Length
��6 <
]
��< =
;
��= >
IEnumerable
�� 
<
�� 
Type
�� 
>
�� 
serviceKnownTypes
�� &
=
��' (
	operation
��) 2
.
�� +
GetServiceKnownTypesHierarchy
�� "
(
��" #
)
��# $
.
�� 
Select
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
Type
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 
	operation
�� 
.
�� &
IsMessageContractRequest
�� *
)
��* +
{
�� 
if
�� 
(
�� 
	xmlReader
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
	xmlReader
�� 
.
�� 
ReadStartElement
�� 
(
��  
	operation
��  )
.
��) *
Name
��* .
,
��. /
	operation
��0 9
.
��9 :
Contract
��: B
.
��B C
	Namespace
��C L
)
��L M
;
��M N
while
�� 

(
�� 
!
�� 
	xmlReader
�� 
.
�� 
EOF
�� 
)
�� 
{
�� 
var
�� 	
parameterInfo
��
 
=
�� 
	operation
�� #
.
��# $
InParameters
��$ 0
.
��0 1
FirstOrDefault
��1 ?
(
��? @
p
��@ A
=>
��B D
p
��E F
.
��F G
Name
��G K
==
��L N
	xmlReader
��O X
.
��X Y
	LocalName
��Y b
)
��b c
;
��c d
if
�� 
(
��	 

parameterInfo
��
 
==
�� 
null
�� 
)
��  
{
�� 
	xmlReader
�� 
.
�� 
Skip
�� 
(
�� 
)
�� 
;
�� 
continue
�� 
;
�� 
}
�� 
var
�� 	
parameterType
��
 
=
�� 
parameterInfo
�� '
.
��' (
	Parameter
��( 1
.
��1 2
ParameterType
��2 ?
;
��? @
var
�� 	
argumentValue
��
 
=
�� 
_serializerHelper
�� +
.
��+ ,'
DeserializeInputParameter
��, E
(
��E F
	xmlReader
�� 
,
�� 
parameterType
�� 
,
�� 
parameterInfo
�� 
.
�� 
Name
�� 
,
�� 
	operation
�� 
.
�� 
Contract
�� 
.
�� 
	Namespace
�� #
,
��# $
parameterInfo
�� 
.
�� 
	Parameter
�� 
.
�� 
Member
�� %
,
��% &
serviceKnownTypes
�� 
)
�� 
;
�� 
if
�� 
(
��	 

argumentValue
��
 
==
�� 
null
�� 
)
��  
{
�� 
argumentValue
�� 
=
�� 
_serializerHelper
�� (
.
��( )'
DeserializeInputParameter
��) B
(
��B C
	xmlReader
�� 
,
�� 
parameterType
�� 
,
�� 
parameterInfo
�� 
.
�� 
Name
�� 
,
�� 
parameterInfo
�� 
.
�� 
	Namespace
�� 
,
��  
parameterInfo
�� 
.
�� 
	Parameter
�� 
.
��  
Member
��  &
,
��& '
serviceKnownTypes
�� 
)
�� 
;
�� 
}
�� 
	arguments
�� 
[
�� 
parameterInfo
�� 
.
�� 
Index
�� #
]
��# $
=
��% &
argumentValue
��' 4
;
��4 5
}
�� 
var
�� "
httpContextParameter
��	 
=
�� 
	operation
��  )
.
��) *
InParameters
��* 6
.
��6 7
FirstOrDefault
��7 E
(
��E F
x
��F G
=>
��H J
x
��K L
.
��L M
	Parameter
��M V
.
��V W
ParameterType
��W d
==
��e g
typeof
��h n
(
��n o
HttpContext
��o z
)
��z {
)
��{ |
;
��| }
if
�� 
(
�� 	"
httpContextParameter
��	 
!=
��  
default
��! (
)
��( )
{
�� 
	arguments
�� 
[
�� "
httpContextParameter
�� $
.
��$ %
Index
��% *
]
��* +
=
��, -
httpContext
��. 9
;
��9 :
}
�� 
}
�� 
else
�� 
{
�� 
	arguments
�� 
=
�� 
Array
�� 
.
�� 
Empty
�� 
<
�� 
object
�� #
>
��# $
(
��$ %
)
��% &
;
��& '
}
�� 
}
�� 
else
�� 
{
�� 
Debug
�� 	
.
��	 

Assert
��
 
(
�� 
	operation
�� 
.
�� 
InParameters
�� '
.
��' (
Length
��( .
==
��/ 1
$num
��2 3
,
��3 4
$str
��5 s
)
��s t
;
��t u
var
�� 
parameterInfo
�� 
=
�� 
	operation
�� !
.
��! "
InParameters
��" .
[
��. /
$num
��/ 0
]
��0 1
;
��1 2
var
�� 
parameterType
�� 
=
�� 
parameterInfo
�� %
.
��% &
	Parameter
��& /
.
��/ 0
ParameterType
��0 =
;
��= >
var
�� &
messageContractAttribute
��  
=
��! "
parameterType
��# 0
.
��0 1 
GetCustomAttribute
��1 C
<
��C D&
MessageContractAttribute
��D \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
Debug
�� 	
.
��	 

Assert
��
 
(
�� &
messageContractAttribute
�� )
!=
��* ,
null
��- 1
,
��1 2
$str
��3 w
)
��w x
;
��x y
var
�� 

@namespace
�� 
=
�� 
parameterInfo
�� "
.
��" #
	Namespace
��# ,
??
��- /
	operation
��0 9
.
��9 :
Contract
��: B
.
��B C
	Namespace
��C L
;
��L M
if
�� 
(
�� &
messageContractAttribute
��  
.
��  !
	IsWrapped
��! *
&&
��+ -
!
��. /
parameterType
��/ <
.
��< =%
GetMembersWithAttribute
��= T
<
��T U$
MessageHeaderAttribute
��U k
>
��k l
(
��l m
)
��m n
.
��n o
Any
��o r
(
��r s
)
��s t
)
��t u
{
�� 
if
�� 
(
�� 	
	operation
��	 
.
�� 
DispatchMethod
�� !
.
��! " 
GetCustomAttribute
��" 4
<
��4 5*
XmlSerializerFormatAttribute
��5 Q
>
��Q R
(
��R S
)
��S T
?
��T U
.
��U V
Style
��V [
==
��\ ^"
OperationFormatStyle
��_ s
.
��s t
Rpc
��t w
)
��w x
{
�� 
var
�� 	
importer
��
 
=
�� 
new
�� $
SoapReflectionImporter
�� /
(
��/ 0

@namespace
��0 :
)
��: ;
;
��; <
var
�� 	
map
��
 
=
�� 
new
�� !
XmlReflectionMember
�� '
{
�� 
IsReturnValue
�� 
=
�� 
false
�� 
,
�� 

MemberName
�� 
=
�� 
parameterInfo
�� !
.
��! "
Name
��" &
,
��& '

MemberType
�� 
=
�� 
parameterType
�� !
}
�� 
;
�� 
var
�� 	
mapping
��
 
=
�� 
importer
�� 
.
�� "
ImportMembersMapping
�� 1
(
��1 2
parameterInfo
��2 ?
.
��? @
Name
��@ D
,
��D E

@namespace
��F P
,
��P Q
new
��R U
[
��U V
]
��V W
{
��X Y
map
��Z ]
}
��^ _
,
��_ `
false
��a f
,
��f g
true
��h l
)
��l m
;
��m n
var
�� 	

serializer
��
 
=
�� 
XmlSerializer
�� $
.
��$ %
FromMappings
��% 1
(
��1 2
new
��2 5
[
��5 6
]
��6 7
{
��8 9
mapping
��: A
}
��B C
)
��C D
[
��D E
$num
��E F
]
��F G
;
��G H
var
�� 	
value
��
 
=
�� 

serializer
�� 
.
�� 
Deserialize
�� (
(
��( )
	xmlReader
��) 2
)
��2 3
;
��3 4
if
�� 
(
��	 

value
��
 
is
�� 
object
�� 
[
�� 
]
�� 
o
�� 
&&
��  
o
��! "
.
��" #
Length
��# )
>
��* +
$num
��, -
)
��- .
{
�� 
	arguments
�� 
[
�� 
parameterInfo
�� 
.
�� 
Index
�� $
]
��$ %
=
��& '
o
��( )
[
��) *
$num
��* +
]
��+ ,
;
��, -
}
�� 
}
�� 
else
�� 	
{
�� 
	arguments
�� 
[
�� 
parameterInfo
�� 
.
�� 
Index
�� #
]
��# $
=
��% &
_serializerHelper
��' 8
.
��8 9'
DeserializeInputParameter
��9 R
(
��R S
	xmlReader
�� 
,
�� 
parameterInfo
�� 
.
�� 
	Parameter
�� 
.
�� 
ParameterType
�� ,
,
��, -&
messageContractAttribute
�� 
.
��  
WrapperName
��  +
??
��, .
parameterInfo
��/ <
.
��< =
	Parameter
��= F
.
��F G
ParameterType
��G T
.
��T U
Name
��U Y
,
��Y Z&
messageContractAttribute
�� 
.
��  
WrapperNamespace
��  0
??
��1 3

@namespace
��4 >
,
��> ?
parameterInfo
�� 
.
�� 
	Parameter
�� 
.
�� 
Member
�� %
,
��% &
serviceKnownTypes
�� 
)
�� 
;
�� 
}
�� 
}
�� 
else
�� 
{
�� 
var
�� #
messageHeadersMembers
��	 
=
��  
parameterType
��! .
.
��. /'
GetPropertyOrFieldMembers
��/ H
(
��H I
)
��I J
.
�� 
Where
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
��  
GetCustomAttribute
�� &
<
��& '$
MessageHeaderAttribute
��' =
>
��= >
(
��> ?
)
��? @
!=
��A C
null
��D H
)
��H I
.
�� 
Select
�� 
(
�� 
mi
�� 
=>
�� 
new
�� 
{
�� 

MemberInfo
�� 
=
�� 
mi
�� 
,
�� *
MessageHeaderMemberAttribute
�� #
=
��$ %
mi
��& (
.
��( ) 
GetCustomAttribute
��) ;
<
��; <$
MessageHeaderAttribute
��< R
>
��R S
(
��S T
)
��T U
}
�� 
)
�� 
.
�� 	
ToArray
��	 
(
�� 
)
�� 
;
�� 
var
�� 
wrapperObject
��	 
=
�� 
	Activator
�� "
.
��" #
CreateInstance
��# 1
(
��1 2
parameterInfo
��2 ?
.
��? @
	Parameter
��@ I
.
��I J
ParameterType
��J W
)
��W X
;
��X Y
for
�� 
(
��	 

var
��
 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
requestMessage
�� '
.
��' (
Headers
��( /
.
��/ 0
Count
��0 5
;
��5 6
i
��7 8
++
��8 :
)
��: ;
{
�� 
var
�� 	
header
��
 
=
�� 
requestMessage
�� !
.
��! "
Headers
��" )
[
��) *
i
��* +
]
��+ ,
;
��, -
var
�� 	
member
��
 
=
�� #
messageHeadersMembers
�� (
.
��( )
FirstOrDefault
��) 7
(
��7 8
x
��8 9
=>
��: <
x
��= >
.
��> ?*
MessageHeaderMemberAttribute
��? [
.
��[ \
Name
��\ `
==
��a c
header
��d j
.
��j k
Name
��k o
||
��p r
x
��s t
.
��t u

MemberInfo
��u 
.�� �
Name��� �
==��� �
header��� �
.��� �
Name��� �
)��� �
;��� �
if
�� 
(
��	 

member
��
 
!=
�� 
null
�� 
)
�� 
{
�� 
var
�� 

reader
�� 
=
�� 
requestMessage
�� "
.
��" #
Headers
��# *
.
��* +
GetReaderAtHeader
��+ <
(
��< =
i
��= >
)
��> ?
;
��? @
var
�� 

value
�� 
=
�� 
_serializerHelper
�� $
.
��$ %'
DeserializeInputParameter
��% >
(
��> ?
reader
�� 
,
�� 
member
�� 
.
�� 

MemberInfo
�� 
.
�� $
GetPropertyOrFieldType
�� 0
(
��0 1
)
��1 2
,
��2 3
member
�� 
.
�� *
MessageHeaderMemberAttribute
�� +
.
��+ ,
Name
��, 0
??
��1 3
member
��4 :
.
��: ;

MemberInfo
��; E
.
��E F
Name
��F J
,
��J K
member
�� 
.
�� *
MessageHeaderMemberAttribute
�� +
.
��+ ,
	Namespace
��, 5
??
��6 8

@namespace
��9 C
,
��C D
member
�� 
.
�� 

MemberInfo
�� 
,
�� 
serviceKnownTypes
�� 
)
�� 
;
�� 
member
�� 
.
�� 

MemberInfo
�� 
.
�� '
SetValueToPropertyOrField
�� 2
(
��2 3
wrapperObject
��3 @
,
��@ A
value
��B G
)
��G H
;
��H I
}
�� 
}
�� 
var
��  
messageBodyMembers
��	 
=
�� 
parameterType
�� +
.
��+ ,'
GetPropertyOrFieldMembers
��, E
(
��E F
)
��F G
.
��G H
Where
��H M
(
��M N
x
��N O
=>
��P R
x
��S T
.
��T U 
GetCustomAttribute
��U g
<
��g h)
MessageBodyMemberAttribute��h �
>��� �
(��� �
)��� �
!=��� �
null��� �
)��� �
.��� �
Select��� �
(��� �
mi��� �
=>��� �
new��� �
{
�� 
Member
�� 
=
�� 
mi
�� 
,
�� (
MessageBodyMemberAttribute
��  
=
��! "
mi
��# %
.
��% & 
GetCustomAttribute
��& 8
<
��8 9(
MessageBodyMemberAttribute
��9 S
>
��S T
(
��T U
)
��U V
}
�� 
)
�� 
.
�� 
OrderBy
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� (
MessageBodyMemberAttribute
�� 1
.
��1 2
Order
��2 7
)
��7 8
;
��8 9
if
�� 
(
�� 	&
messageContractAttribute
��	 !
.
��! "
	IsWrapped
��" +
)
��+ ,
{
�� 
	xmlReader
�� 
.
�� 
Read
�� 
(
�� 
)
�� 
;
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
messageBodyMember
�� #
in
��$ & 
messageBodyMembers
��' 9
)
��9 :
{
�� 
var
�� 	(
messageBodyMemberAttribute
��
 $
=
��% &
messageBodyMember
��' 8
.
��8 9(
MessageBodyMemberAttribute
��9 S
;
��S T
var
�� 	#
messageBodyMemberInfo
��
 
=
��  !
messageBodyMember
��" 3
.
��3 4
Member
��4 :
;
��: ;
var
�� 	 
innerParameterName
��
 
=
�� (
messageBodyMemberAttribute
�� 9
.
��9 :
Name
��: >
??
��? A#
messageBodyMemberInfo
��B W
.
��W X
Name
��X \
;
��\ ]
var
�� 	
innerParameterNs
��
 
=
�� (
messageBodyMemberAttribute
�� 7
.
��7 8
	Namespace
��8 A
??
��B D

@namespace
��E O
;
��O P
var
�� 	 
innerParameterType
��
 
=
�� #
messageBodyMemberInfo
�� 4
.
��4 5$
GetPropertyOrFieldType
��5 K
(
��K L
)
��L M
;
��M N
var
�� 	
innerParameter
��
 
=
�� 
_serializerHelper
�� ,
.
��, -'
DeserializeInputParameter
��- F
(
��F G
	xmlReader
�� 
,
��  
innerParameterType
�� 
,
��  
innerParameterName
�� 
,
�� 
innerParameterNs
�� 
,
�� #
messageBodyMemberInfo
�� 
,
�� 
serviceKnownTypes
�� 
)
�� 
;
�� #
messageBodyMemberInfo
�� 
.
�� '
SetValueToPropertyOrField
�� 5
(
��5 6
wrapperObject
��6 C
,
��C D
innerParameter
��E S
)
��S T
;
��T U
}
�� 
	arguments
�� 
[
�� 
parameterInfo
�� 
.
�� 
Index
�� "
]
��" #
=
��$ %
wrapperObject
��& 3
;
��3 4
}
�� 
}
�� 
foreach
�� 

(
�� 
var
�� 
parameterInfo
�� 
in
��  
	operation
��! *
.
��* +
OutParameters
��+ 8
)
��8 9
{
�� 
if
�� 
(
�� 
	arguments
�� 
[
�� 
parameterInfo
�� 
.
��  
Index
��  %
]
��% &
!=
��' )
null
��* .
)
��. /
{
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
parameterInfo
�� 
.
�� 
	Parameter
�� 
.
��  
ParameterType
��  -
.
��- .
Name
��. 2
==
��3 5
$str
��6 =
)
��= >
{
�� 
	arguments
�� 
[
�� 
parameterInfo
�� 
.
�� 
Index
�� "
]
��" #
=
��$ %
Guid
��& *
.
��* +
Empty
��+ 0
;
��0 1
}
�� 
else
�� 
if
��	 
(
�� 
parameterInfo
�� 
.
�� 
	Parameter
�� $
.
��$ %
ParameterType
��% 2
.
��2 3
Name
��3 7
==
��8 :
$str
��; D
||
��E G
parameterInfo
��H U
.
��U V
	Parameter
��V _
.
��_ `
ParameterType
��` m
.
��m n
GetElementType
��n |
(
��| }
)
��} ~
.
��~ 
IsArray�� �
)��� �
{
�� 
	arguments
�� 
[
�� 
parameterInfo
�� 
.
�� 
Index
�� "
]
��" #
=
��$ %
null
��& *
;
��* +
}
�� 
else
�� 
{
�� 
var
�� 
type
��	 
=
�� 
parameterInfo
�� 
.
�� 
	Parameter
�� '
.
��' (
ParameterType
��( 5
.
��5 6
GetElementType
��6 D
(
��D E
)
��E F
;
��F G
	arguments
�� 
[
�� 
parameterInfo
�� 
.
�� 
Index
�� "
]
��" #
=
��$ %
	Activator
��& /
.
��/ 0
CreateInstance
��0 >
(
��> ?
type
��? C
)
��C D
;
��D E
}
�� 
}
�� 
return
�� 	
	arguments
��
 
;
�� 
}
�� 
private
�� 	
async
��
 
Task
�� 
<
�� 
Message
�� 
>
�� '
WriteErrorResponseMessage
�� 7
(
��7 8
	Exception
�� 
	exception
�� 
,
�� 
int
�� 

statusCode
�� 
,
�� 
IServiceProvider
�� 
serviceProvider
�� #
,
��# $
Message
�� 

requestMessage
�� 
,
��  
SoapMessageEncoder
�� 
messageEncoder
�� $
,
��$ %
HttpContext
�� 
httpContext
�� 
)
�� 
{
�� 
var
�� '
faultExceptionTransformer
��  
=
��! "
serviceProvider
��# 2
.
��2 3 
GetRequiredService
��3 E
<
��E F(
IFaultExceptionTransformer
��F `
>
��` a
(
��a b
)
��b c
;
��c d
var
�� 
faultMessage
�� 
=
�� '
faultExceptionTransformer
�� /
.
��/ 0
ProvideFault
��0 <
(
��< =
	exception
��= F
,
��F G
messageEncoder
��H V
.
��V W
MessageVersion
��W e
,
��e f
requestMessage
��g u
,
��u v#
_xmlNamespaceManager��w �
)��� �
;��� �
httpContext
�� 
.
�� 
Response
�� 
.
�� 
ContentType
�� #
=
��$ %
httpContext
��& 1
.
��1 2
Request
��2 9
.
��9 :
ContentType
��: E
;
��E F
httpContext
�� 
.
�� 
Response
�� 
.
�� 
Headers
�� 
[
��  
$str
��  ,
]
��, -
=
��. /
faultMessage
��0 <
.
��< =
Headers
��= D
.
��D E
Action
��E K
;
��K L
httpContext
�� 
.
�� 
Response
�� 
.
�� 

StatusCode
�� "
=
��# $

statusCode
��% /
;
��/ 0
SetHttpResponse
�� 
(
�� 
httpContext
�� 
,
�� 
faultMessage
��  ,
)
��, -
;
��- .
if
�� 
(
�� 
messageEncoder
�� 
.
�� 
MessageVersion
�� $
.
��$ %

Addressing
��% /
==
��0 2
AddressingVersion
��3 D
.
��D E
WSAddressing10
��E S
)
��S T
{
�� 
faultMessage
�� 
.
�� 
Headers
�� 
.
�� 
	RelatesTo
�� "
=
��# $
requestMessage
��% 3
.
��3 4
Headers
��4 ;
.
��; <
	MessageId
��< E
;
��E F
faultMessage
�� 
.
�� 
Headers
�� 
.
�� 
To
�� 
=
�� 
requestMessage
�� ,
.
��, -
Headers
��- 4
.
��4 5
ReplyTo
��5 <
?
��< =
.
��= >
Uri
��> A
;
��A B
}
�� 
await
�� 
WriteMessageAsync
��	 
(
�� 
messageEncoder
�� )
,
��) *
faultMessage
��+ 7
,
��7 8
httpContext
��9 D
)
��D E
;
��E F
return
�� 	
faultMessage
��
 
;
�� 
}
�� 
private
�� 	
void
��
 
SetHttpResponse
�� 
(
�� 
HttpContext
�� *
httpContext
��+ 6
,
��6 7
Message
��8 ?
message
��@ G
)
��G H
{
�� 
if
�� 
(
�� 
!
�� 
message
�� 
.
�� 

Properties
�� 
.
�� 
TryGetValue
�� &
(
��& ')
HttpResponseMessageProperty
��' B
.
��B C
Name
��C G
,
��G H
out
��I L
var
��M P
value
��Q V
)
��V W
||
�� 
!
�� 
(
�� 	
value
��	 
is
�� )
HttpResponseMessageProperty
�� -
httpProperty
��. :
)
��: ;
)
��; <
{
�� 
return
�� 

;
��
 
}
�� 
httpContext
�� 
.
�� 
Response
�� 
.
�� 

StatusCode
�� "
=
��# $
(
��% &
int
��& )
)
��) *
httpProperty
��* 6
.
��6 7

StatusCode
��7 A
;
��A B
var
�� 
feature
�� 
=
�� 
httpContext
�� 
.
�� 
Features
�� %
.
��% &
Get
��& )
<
��) *"
IHttpResponseFeature
��* >
>
��> ?
(
��? @
)
��@ A
;
��A B
if
�� 
(
�� 
feature
�� 
!=
�� 
null
�� 
&&
�� 
!
�� 
string
�� !
.
��! "
IsNullOrEmpty
��" /
(
��/ 0
httpProperty
��0 <
.
��< =
StatusDescription
��= N
)
��N O
)
��O P
{
�� 
feature
�� 
.
�� 
ReasonPhrase
�� 
=
�� 
httpProperty
�� '
.
��' (
StatusDescription
��( 9
;
��9 :
}
�� 
foreach
�� 

(
�� 
string
�� 
key
�� 
in
�� 
httpProperty
�� &
.
��& '
Headers
��' .
.
��. /
Keys
��/ 3
)
��3 4
{
�� 
httpContext
�� 
.
�� 
Response
�� 
.
�� 
Headers
��  
.
��  !
Add
��! $
(
��$ %
key
��% (
,
��( )
httpProperty
��* 6
.
��6 7
Headers
��7 >
.
��> ?
	GetValues
��? H
(
��H I
key
��I L
)
��L M
)
��M N
;
��N O
}
�� 
}
�� 
private
�� 	
async
��
 
Task
�� 

ProcessXSD
�� 
(
��  
	Microsoft
��  )
.
��) *

AspNetCore
��* 4
.
��4 5
Http
��5 9
.
��9 :
HttpContext
��: E
httpContext
��F Q
)
��Q R
{
�� 
Meta
�� 
.
�� 
MetaFromFile
�� 
meta
�� 
=
�� 
new
�� 
Meta
��  $
.
��$ %
MetaFromFile
��% 1
(
��1 2
)
��2 3
;
��3 4
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� 
(
�� 
_options
�� %
.
��% &
WsdlFileOptions
��& 5
.
��5 6
VirtualPath
��6 A
)
��A B
)
��B C
{
�� 
meta
�� 
.
�� 	
CurrentWebServer
��	 
=
�� 
_options
�� $
.
��$ %
WsdlFileOptions
��% 4
.
��4 5
VirtualPath
��5 @
+
��A B
$str
��C F
;
��F G
}
�� 
meta
�� 
.
�� 
CurrentWebService
�� 
=
�� 
httpContext
�� '
.
��' (
Request
��( /
.
��/ 0
Path
��0 4
.
��4 5
Value
��5 :
.
��: ;
Replace
��; B
(
��B C
$str
��C F
,
��F G
string
��H N
.
��N O
Empty
��O T
)
��T U
;
��U V
var
�� 
mapping
�� 
=
�� 
_options
�� 
.
�� 
WsdlFileOptions
�� )
.
��) *#
WebServiceWSDLMapping
��* ?
[
��? @
meta
��@ D
.
��D E
CurrentWebService
��E V
]
��V W
;
��W X
meta
�� 
.
�� 
	XsdFolder
�� 
=
�� 
mapping
�� 
.
�� 
SchemaFolder
�� (
;
��( )
if
�� 
(
�� 
_options
�� 
.
�� 
WsdlFileOptions
�� 
.
��  
UrlOverride
��  +
!=
��, .
string
��/ 5
.
��5 6
Empty
��6 ;
)
��; <
{
�� 
meta
�� 
.
�� 	
	ServerUrl
��	 
=
�� 
_options
�� 
.
�� 
WsdlFileOptions
�� -
.
��- .
UrlOverride
��. 9
;
��9 :
}
�� 
else
�� 
{
�� 
meta
�� 
.
�� 	
	ServerUrl
��	 
=
�� 
httpContext
��  
.
��  !
Request
��! (
.
��( )
Scheme
��) /
+
��0 1
$str
��2 7
+
��8 9
httpContext
��: E
.
��E F
Request
��F M
.
��M N
Host
��N R
+
��S T
$str
��U X
;
��X Y
}
�� 
string
�� 	
xsdfile
��
 
=
�� 
httpContext
�� 
.
��  
Request
��  '
.
��' (
Query
��( -
[
��- .
$str
��. 4
]
��4 5
;
��5 6
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� 
(
�� 
xsdfile
�� #
)
��# $
||
��% '
Path
��( ,
.
��, -
GetFileName
��- 8
(
��8 9
xsdfile
��9 @
)
��@ A
!=
��B D
xsdfile
��E L
)
��L M
{
�� 
throw
�� 	
new
��
 #
ArgumentNullException
�� #
(
��# $
$str
��$ L
)
��L M
;
��M N
}
�� 
if
�� 
(
�� 
!
�� 
xsdfile
�� 
.
�� 
Contains
�� 
(
�� 
$str
�� 
)
��  
)
��  !
{
�� 
throw
�� 	
new
��
 
	Exception
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
}
�� 
string
�� 	
path
��
 
=
�� 
_options
�� 
.
�� 
WsdlFileOptions
�� )
.
��) *
AppPath
��* 1
;
��1 2
string
�� 	
safePath
��
 
=
�� 
path
�� 
+
�� 
Path
��  
.
��  !'
AltDirectorySeparatorChar
��! :
+
��; <
meta
��= A
.
��A B
	XsdFolder
��B K
+
��L M
Path
��N R
.
��R S'
AltDirectorySeparatorChar
��S l
+
��m n
xsdfile
��o v
;
��v w
string
�� 	
xsd
��
 
=
�� 
meta
�� 
.
�� 
ReadLocalFile
�� "
(
��" #
safePath
��# +
)
��+ ,
;
��, -
string
�� 	
modifiedxsd
��
 
=
�� 
meta
�� 
.
�� )
ModifyXSDAddRightSchemaPath
�� 8
(
��8 9
xsd
��9 <
)
��< =
;
��= >
httpContext
�� 
.
�� 
Response
�� 
.
�� 
ContentType
�� #
=
��$ %
$str
��& >
;
��> ?
byte
�� 
[
�� 
]
�� 	
data
��
 
=
�� 
System
�� 
.
�� 
Text
�� 
.
�� 
Encoding
�� %
.
��% &
UTF8
��& *
.
��* +
GetBytes
��+ 3
(
��3 4
modifiedxsd
��4 ?
)
��? @
;
��@ A
await
�� 
httpContext
��	 
.
�� 
Response
�� 
.
�� 
Body
�� "
.
��" #

WriteAsync
��# -
(
��- .
data
��. 2
,
��2 3
$num
��4 5
,
��5 6
data
��7 ;
.
��; <
Length
��< B
)
��B C
;
��C D
}
�� 
private
�� 	
async
��
 
Task
�� !
ProcessMetaFromFile
�� (
(
��( )
	Microsoft
��) 2
.
��2 3

AspNetCore
��3 =
.
��= >
Http
��> B
.
��B C
HttpContext
��C N
httpContext
��O Z
)
��Z [
{
�� 
Meta
�� 
.
�� 
MetaFromFile
�� 
meta
�� 
=
�� 
new
�� 
Meta
��  $
.
��$ %
MetaFromFile
��% 1
(
��1 2
)
��2 3
;
��3 4
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� 
(
�� 
_options
�� %
.
��% &
WsdlFileOptions
��& 5
.
��5 6
VirtualPath
��6 A
)
��A B
)
��B C
{
�� 
meta
�� 
.
�� 	
CurrentWebServer
��	 
=
�� 
_options
�� $
.
��$ %
WsdlFileOptions
��% 4
.
��4 5
VirtualPath
��5 @
+
��A B
$str
��C F
;
��F G
}
�� 
meta
�� 
.
�� 
CurrentWebService
�� 
=
�� 
httpContext
�� '
.
��' (
Request
��( /
.
��/ 0
Path
��0 4
.
��4 5
Value
��5 :
.
��: ;
Replace
��; B
(
��B C
$str
��C F
,
��F G
string
��H N
.
��N O
Empty
��O T
)
��T U
;
��U V#
WebServiceWSDLMapping
�� 
mapping
��  
=
��! "
_options
��# +
.
��+ ,
WsdlFileOptions
��, ;
.
��; <#
WebServiceWSDLMapping
��< Q
[
��Q R
meta
��R V
.
��V W
CurrentWebService
��W h
]
��h i
;
��i j
meta
�� 
.
�� 
	XsdFolder
�� 
=
�� 
mapping
�� 
.
�� 
SchemaFolder
�� (
;
��( )
meta
�� 
.
�� 

WSDLFolder
�� 
=
�� 
mapping
�� 
.
�� 

WSDLFolder
�� '
;
��' (
if
�� 
(
�� 
_options
�� 
.
�� 
WsdlFileOptions
�� 
.
��  
UrlOverride
��  +
!=
��, .
string
��/ 5
.
��5 6
Empty
��6 ;
)
��; <
{
�� 
meta
�� 
.
�� 	
	ServerUrl
��	 
=
�� 
_options
�� 
.
�� 
WsdlFileOptions
�� -
.
��- .
UrlOverride
��. 9
;
��9 :
}
�� 
else
�� 
{
�� 
meta
�� 
.
�� 	
	ServerUrl
��	 
=
�� 
httpContext
��  
.
��  !
Request
��! (
.
��( )
Scheme
��) /
+
��0 1
$str
��2 7
+
��8 9
httpContext
��: E
.
��E F
Request
��F M
.
��M N
Host
��N R
+
��S T
$str
��U X
;
��X Y
}
�� 
string
�� 	
wsdlfile
��
 
=
�� 
mapping
�� 
.
�� 
WsdlFile
�� %
;
��% &
string
�� 	
path
��
 
=
�� 
_options
�� 
.
�� 
WsdlFileOptions
�� )
.
��) *
AppPath
��* 1
;
��1 2
string
�� 	
wsdl
��
 
=
�� 
meta
�� 
.
�� 
ReadLocalFile
�� #
(
��# $
path
��$ (
+
��) *
Path
��+ /
.
��/ 0'
AltDirectorySeparatorChar
��0 I
+
��J K
meta
��L P
.
��P Q

WSDLFolder
��Q [
+
��\ ]
Path
��^ b
.
��b c'
AltDirectorySeparatorChar
��c |
+
��} ~
wsdlfile�� �
)��� �
;��� �
string
�� 	
modifiedWsdl
��
 
=
�� 
meta
�� 
.
�� *
ModifyWSDLAddRightSchemaPath
�� :
(
��: ;
wsdl
��; ?
)
��? @
;
��@ A
httpContext
�� 
.
�� 
Response
�� 
.
�� 
ContentType
�� #
=
��$ %
$str
��& >
;
��> ?
byte
�� 
[
�� 
]
�� 	
data
��
 
=
�� 
System
�� 
.
�� 
Text
�� 
.
�� 
Encoding
�� %
.
��% &
UTF8
��& *
.
��* +
GetBytes
��+ 3
(
��3 4
modifiedWsdl
��4 @
)
��@ A
;
��A B
await
�� 
httpContext
��	 
.
�� 
Response
�� 
.
�� 
Body
�� "
.
��" #

WriteAsync
��# -
(
��- .
data
��. 2
,
��2 3
$num
��4 5
,
��5 6
data
��7 ;
.
��; <
Length
��< B
)
��B C
;
��C D
}
�� 
}
�� 
}�� �+
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
}CC �
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
} �	
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
} �
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
} �
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
} �
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
} �O
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
$str	+ �
;
� �
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
$str	5 �
;
� �
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
}pp �
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
} �
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