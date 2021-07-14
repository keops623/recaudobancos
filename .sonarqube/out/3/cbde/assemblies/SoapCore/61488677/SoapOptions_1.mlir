func @_SoapCore.SoapOptions.FromSoapCoreOptions$T$$SoapCore.SoapCoreOptions$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :38 :2) {
^entry (%_opt : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :38 :51)
cbde.store %_opt, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :38 :51)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: FromSoapCoreOptions
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :40 :30) // Not a variable of known type: opt
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :40 :35) // typeof(T) (TypeOfExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :40 :10) // FromSoapCoreOptions(opt, typeof(T)) (InvocationExpression)
return %3 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :40 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapOptions.FromSoapCoreOptions$SoapCore.SoapCoreOptions.System.Type$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :43 :2) {
^entry (%_opt : none, %_serviceType : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :43 :48)
cbde.store %_opt, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :43 :48)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :43 :69)
cbde.store %_serviceType, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :43 :69)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :45 :21) // new SoapOptions     {      ServiceType = serviceType,      Path = opt.Path,      EncoderOptions = opt.EncoderOptions,      SoapSerializer = opt.SoapSerializer,      CaseInsensitivePath = opt.CaseInsensitivePath,      SoapModelBounder = opt.SoapModelBounder,      Binding = opt.Binding,      BufferThreshold = opt.BufferThreshold,      BufferLimit = opt.BufferLimit,      HttpsGetEnabled = opt.HttpsGetEnabled,      HttpGetEnabled = opt.HttpGetEnabled,      OmitXmlDeclaration = opt.OmitXmlDeclaration,      IndentXml = opt.IndentXml,      XmlNamespacePrefixOverrides = opt.XmlNamespacePrefixOverrides     } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :47 :18) // Not a variable of known type: serviceType
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :48 :11) // Not a variable of known type: opt
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :48 :11) // opt.Path (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :49 :21) // Not a variable of known type: opt
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :49 :21) // opt.EncoderOptions (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :50 :21) // Not a variable of known type: opt
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :50 :21) // opt.SoapSerializer (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :51 :26) // Not a variable of known type: opt
%11 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :51 :26) // opt.CaseInsensitivePath (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :52 :23) // Not a variable of known type: opt
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :52 :23) // opt.SoapModelBounder (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :53 :14) // Not a variable of known type: opt
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :53 :14) // opt.Binding (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :54 :22) // Not a variable of known type: opt
%17 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :54 :22) // opt.BufferThreshold (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :55 :18) // Not a variable of known type: opt
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :55 :18) // opt.BufferLimit (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :56 :22) // Not a variable of known type: opt
%21 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :56 :22) // opt.HttpsGetEnabled (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :57 :21) // Not a variable of known type: opt
%23 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :57 :21) // opt.HttpGetEnabled (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :58 :25) // Not a variable of known type: opt
%25 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :58 :25) // opt.OmitXmlDeclaration (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :59 :16) // Not a variable of known type: opt
%27 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :59 :16) // opt.IndentXml (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :60 :34) // Not a variable of known type: opt
%29 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :60 :34) // opt.XmlNamespacePrefixOverrides (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :63 :10) // Not a variable of known type: soapOptions
return %31 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapOptions.cs" :63 :3)

^1: // ExitBlock
cbde.unreachable

}
