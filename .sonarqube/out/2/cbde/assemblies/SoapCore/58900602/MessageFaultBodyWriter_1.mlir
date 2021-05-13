func @_SoapCore.MessageFaultBodyWriter.OnWriteBodyContents$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :20 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :20 :46)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :20 :46)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :24 :23) // Not a variable of known type: _fault
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :24 :23) // _fault.GetType() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :24 :50) // "WriteTo" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :24 :61) // new[] { typeof(XmlDictionaryWriter), typeof(EnvelopeVersion) } (ImplicitArrayCreationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :24 :69) // typeof(XmlDictionaryWriter) (TypeOfExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :24 :98) // typeof(EnvelopeVersion) (TypeOfExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :24 :23) // _fault.GetType().GetMethod("WriteTo", new[] { typeof(XmlDictionaryWriter), typeof(EnvelopeVersion) }) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :25 :3) // Not a variable of known type: writeToMethod
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :25 :24) // Not a variable of known type: _fault
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :25 :43) //  (OmittedArraySizeExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :25 :36) // object[] (ArrayType)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :25 :32) // new object[] { writer, _messageVersion.Envelope } (ArrayCreationExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :25 :47) // Not a variable of known type: writer
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :25 :55) // Not a variable of known type: _messageVersion
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :25 :55) // _messageVersion.Envelope (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageFaultBodyWriter.cs" :25 :3) // writeToMethod.Invoke(_fault, new object[] { writer, _messageVersion.Envelope }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
