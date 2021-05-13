// Skipping function OnWriteStartEnvelope(none), it contains poisonous unsupported syntaxes

func @_SoapCore.Meta.MetaMessage.OnWriteStartBody$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :83 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :83 :43)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :83 :43)
br ^0

^0: // ExitBlock
return

}
func @_SoapCore.Meta.MetaMessage.OnWriteBodyContents$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :87 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :87 :46)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :87 :46)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :89 :3) // Not a variable of known type: _message
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :89 :30) // Not a variable of known type: writer
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :89 :3) // _message.WriteBodyContents(writer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_SoapCore.Meta.MetaMessage.WriteXmlnsAttribute$System.Xml.XmlDictionaryWriter.string$(none, none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :92 :2) {
^entry (%_writer : none, %_namespaceUri : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :92 :35)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :92 :35)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :92 :63)
cbde.store %_namespaceUri, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :92 :63)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :94 :19) // Not a variable of known type: _xmlNamespaceManager
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :94 :53) // Not a variable of known type: namespaceUri
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :94 :19) // _xmlNamespaceManager.LookupPrefix(namespaceUri) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :95 :3) // Not a variable of known type: writer
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :95 :30) // Not a variable of known type: prefix
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :95 :38) // Not a variable of known type: namespaceUri
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaMessage.cs" :95 :3) // writer.WriteXmlnsAttribute(prefix, namespaceUri) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
