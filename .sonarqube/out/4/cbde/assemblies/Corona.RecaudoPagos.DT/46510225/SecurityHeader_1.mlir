func @_Corona.RecaudoPagos.DT.DTO.SecurityHeader.OnWriteHeaderContents$System.Xml.XmlDictionaryWriter.System.ServiceModel.Channels.MessageVersion$(none, none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\DTO\\SecurityHeader.cs" :12 :2) {
^entry (%_writer : none, %_messageVersion : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\DTO\\SecurityHeader.cs" :12 :48)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\DTO\\SecurityHeader.cs" :12 :48)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\DTO\\SecurityHeader.cs" :12 :76)
cbde.store %_messageVersion, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\DTO\\SecurityHeader.cs" :12 :76)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\DTO\\SecurityHeader.cs" :14 :9) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %2 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\DTO\\SecurityHeader.cs" :14 :3)

^1: // ExitBlock
return

}
