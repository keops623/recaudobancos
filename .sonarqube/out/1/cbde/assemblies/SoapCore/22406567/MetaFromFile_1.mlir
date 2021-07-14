func @_SoapCore.Meta.MetaFromFile.ReadLocalFile$string$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :39 :2) {
^entry (%_path : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :39 :30)
cbde.store %_path, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :39 :30)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: File
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :41 :20) // Not a variable of known type: path
%2 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :41 :8) // File.Exists(path) (InvocationExpression)
%3 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :41 :7) // !File.Exists(path) (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :41 :7)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :43 :11) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :43 :11) // string.Empty (SimpleMemberAccessExpression)
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :43 :4)

^2: // JumpBlock
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :47 :39) // Not a variable of known type: path
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :47 :22) // new StreamReader(path) (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :48 :22) // Not a variable of known type: reader
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :48 :22) // reader.ReadToEnd() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :49 :10) // Not a variable of known type: fileContents
return %12 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :49 :3)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function ModifyWSDLAddRightSchemaPath(none), it contains poisonous unsupported syntaxes

// Skipping function ModifyXSDAddRightSchemaPath(none), it contains poisonous unsupported syntaxes

func @_SoapCore.Meta.MetaFromFile.SchemaLocation$$() -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :118 :2) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :120 :24) // Not a variable of known type: ServerUrl
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :120 :36) // Not a variable of known type: CurrentWebServer
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :120 :24) // Binary expression on unsupported types ServerUrl + CurrentWebServer
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :120 :55) // Not a variable of known type: CurrentWebService
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :120 :24) // Binary expression on unsupported types ServerUrl + CurrentWebServer + CurrentWebService
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :120 :75) // "?xsd" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :120 :24) // Binary expression on unsupported types ServerUrl + CurrentWebServer + CurrentWebService + "?xsd"
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :122 :10) // Not a variable of known type: schemaLocation
return %8 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :122 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.Meta.MetaFromFile.WebServiceLocation$$() -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :125 :2) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :127 :28) // Not a variable of known type: ServerUrl
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :127 :40) // Not a variable of known type: CurrentWebServer
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :127 :28) // Binary expression on unsupported types ServerUrl + CurrentWebServer
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :127 :59) // Not a variable of known type: CurrentWebService
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :127 :28) // Binary expression on unsupported types ServerUrl + CurrentWebServer + CurrentWebService
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :129 :10) // Not a variable of known type: webServiceLocation
return %6 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaFromFile.cs" :129 :3)

^1: // ExitBlock
cbde.unreachable

}
