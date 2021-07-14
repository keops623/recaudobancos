// Skipping function GetSoapAction(none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.HeadersHelper.GetTrimmedSoapAction$string$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :103 :2) {
^entry (%_inSoapAction : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :103 :44)
cbde.store %_inSoapAction, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :103 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :105 :23) // Not a variable of known type: inSoapAction
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :106 :7) // Not a variable of known type: soapAction
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :106 :27) // '/' (CharacterLiteralExpression)
%5 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :106 :7) // soapAction.Contains('/') (InvocationExpression)
cond_br %5, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :106 :7)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :109 :17) // Not a variable of known type: soapAction
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :109 :34) // '/' (CharacterLiteralExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :109 :17) // soapAction.Split('/') (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :109 :17) // soapAction.Split('/').Last() (InvocationExpression)
br ^2

^2: // JumpBlock
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :112 :10) // Not a variable of known type: soapAction
return %10 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\HeadersHelper.cs" :112 :3)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetContentTypes(none), it contains poisonous unsupported syntaxes

