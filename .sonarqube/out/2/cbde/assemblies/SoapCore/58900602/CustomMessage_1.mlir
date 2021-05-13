// Skipping function OnWriteStartEnvelope(none), it contains poisonous unsupported syntaxes

func @_SoapCore.CustomMessage.OnWriteStartBody$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :51 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :51 :43)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :51 :43)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :3) // Not a variable of known type: writer
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :28) // Not a variable of known type: Version
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :28) // Version.Envelope (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :61) // Not a variable of known type: NamespaceManager
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :28) // Version.Envelope.NamespacePrefix(NamespaceManager) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :80) // "Body" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :88) // Not a variable of known type: Version
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :88) // Version.Envelope (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :88) // Version.Envelope.Namespace() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :53 :3) // writer.WriteStartElement(Version.Envelope.NamespacePrefix(NamespaceManager), "Body", Version.Envelope.Namespace()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_SoapCore.CustomMessage.OnWriteBodyContents$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :56 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :56 :46)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :56 :46)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :58 :3) // Not a variable of known type: Message
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :58 :29) // Not a variable of known type: writer
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\CustomMessage.cs" :58 :3) // Message.WriteBodyContents(writer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
