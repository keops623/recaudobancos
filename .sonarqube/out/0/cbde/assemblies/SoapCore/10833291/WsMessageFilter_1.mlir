// Skipping function OnRequestExecuting(none), it contains poisonous unsupported syntaxes

func @_SoapCore.WsMessageFilter.OnResponseExecuting$System.ServiceModel.Channels.Message$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :51 :2) {
^entry (%_message : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :51 :34)
cbde.store %_message, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :51 :34)
br ^0

^0: // ExitBlock
return

}
func @_SoapCore.WsMessageFilter.GetWsUsernameToken$System.ServiceModel.Channels.Message$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :56 :2) {
^entry (%_message : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :56 :45)
cbde.store %_message, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :56 :45)
br ^0

^0: // ForInitializerBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :58 :37) // null (NullLiteralExpression)
%3 = constant 0 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :16)
%4 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :12) // i
cbde.store %3, %4 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :12)
br ^1

^1: // BinaryBranchBlock
%5 = cbde.load %4 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :19)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :23) // Not a variable of known type: message
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :23) // message.Headers (SimpleMemberAccessExpression)
%8 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :23) // message.Headers.Count (SimpleMemberAccessExpression)
%9 = cmpi "slt", %5, %8 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :19)
cond_br %9, ^2, ^3 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :19)

^2: // BinaryBranchBlock
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :61 :8) // Not a variable of known type: message
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :61 :8) // message.Headers (SimpleMemberAccessExpression)
%12 = cbde.load %4 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :61 :24)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :61 :8) // message.Headers[i] (ElementAccessExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :61 :8) // message.Headers[i].Name (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :61 :8) // message.Headers[i].Name.ToLower() (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :61 :45) // "security" (StringLiteralExpression)
%17 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :61 :8) // comparison of unknown type: message.Headers[i].Name.ToLower() == "security"
cond_br %17, ^4, ^5 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :61 :8)

^4: // SimpleBlock
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :63 :24) // Not a variable of known type: message
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :63 :24) // message.Headers (SimpleMemberAccessExpression)
%20 = cbde.load %4 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :63 :58)
%21 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :63 :24) // message.Headers.GetReaderAtHeader(i) (InvocationExpression)
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :64 :5) // Not a variable of known type: reader
%24 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :64 :5) // reader.Read() (InvocationExpression)
%25 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :65 :40) // typeof(WsUsernameToken) (TypeOfExpression)
%26 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :65 :22) // new XmlSerializer(typeof(WsUsernameToken)) (ObjectCreationExpression)
%28 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :66 :40) // Not a variable of known type: serializer
%29 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :66 :63) // Not a variable of known type: reader
%30 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :66 :40) // serializer.Deserialize(reader) (InvocationExpression)
%31 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :66 :23) // (WsUsernameToken)serializer.Deserialize(reader) (CastExpression)
br ^5

^5: // SimpleBlock
%32 = cbde.load %4 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :46)
%33 = constant 1 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :46)
%34 = addi %32, %33 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :46)
cbde.store %34, %4 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :59 :46)
br ^1

^3: // BinaryBranchBlock
%35 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :70 :7) // Not a variable of known type: wsUsernameToken
%36 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :70 :26) // null (NullLiteralExpression)
%37 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :70 :7) // comparison of unknown type: wsUsernameToken == null
cond_br %37, ^6, ^7 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :70 :7)

^6: // JumpBlock
%38 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :72 :10) // new Exception() (ObjectCreationExpression)
cbde.throw %38 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :72 :4)

^7: // BinaryBranchBlock
%39 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :7) // Not a variable of known type: wsUsernameToken
%40 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :7) // wsUsernameToken.Nonce (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :32) // null (NullLiteralExpression)
%42 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :7) // comparison of unknown type: wsUsernameToken.Nonce != null
%43 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :39) // Not a variable of known type: wsUsernameToken
%44 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :39) // wsUsernameToken.Created (SimpleMemberAccessExpression)
%45 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :66) // null (NullLiteralExpression)
%46 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :39) // comparison of unknown type: wsUsernameToken.Created != null
%47 = xor %42, %46 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :7)
cond_br %47, ^8, ^9 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :75 :7)

^8: // JumpBlock
%48 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :77 :10) // new Exception() (ObjectCreationExpression)
cbde.throw %48 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :77 :4)

^9: // JumpBlock
%49 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :80 :10) // Not a variable of known type: wsUsernameToken
return %49 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\WsMessageFilter.cs" :80 :3)

^10: // ExitBlock
cbde.unreachable

}
// Skipping function ValidateWsUsernameToken(none), it contains poisonous unsupported syntaxes

