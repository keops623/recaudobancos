func @_SoapCore.EnvelopeVersionExtentions.Namespace$System.ServiceModel.EnvelopeVersion$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :7 :2) {
^entry (%_envelopeVersion : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :7 :33)
cbde.store %_envelopeVersion, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :7 :33)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :9 :7) // Not a variable of known type: envelopeVersion
// Entity from another assembly: EnvelopeVersion
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :9 :26) // EnvelopeVersion.Soap11 (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :9 :7) // comparison of unknown type: envelopeVersion == EnvelopeVersion.Soap11
cond_br %3, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :9 :7)

^1: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :11 :11) // Namespaces.SOAP11_ENVELOPE_NS (SimpleMemberAccessExpression)
return %4 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :11 :4)

^2: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :14 :10) // Namespaces.SOAP12_ENVELOPE_NS (SimpleMemberAccessExpression)
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :14 :3)

^3: // ExitBlock
cbde.unreachable

}
func @_SoapCore.EnvelopeVersionExtentions.NamespacePrefix$System.ServiceModel.EnvelopeVersion.System.Xml.XmlNamespaceManager$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :17 :2) {
^entry (%_envelopeVersion : none, %_namespaces : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :17 :39)
cbde.store %_envelopeVersion, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :17 :39)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :17 :77)
cbde.store %_namespaces, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :17 :77)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :20 :7) // Not a variable of known type: envelopeVersion
// Entity from another assembly: EnvelopeVersion
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :20 :26) // EnvelopeVersion.Soap11 (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :20 :7) // comparison of unknown type: envelopeVersion == EnvelopeVersion.Soap11
cond_br %5, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :20 :7)

^1: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :22 :68) // Not a variable of known type: namespaces
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :22 :80) // "s" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :22 :85) // Namespaces.SOAP11_ENVELOPE_NS (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :22 :13) // Namespaces.AddNamespaceIfNotAlreadyPresentAndGetPrefix(namespaces, "s", Namespaces.SOAP11_ENVELOPE_NS) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :23 :11) // Not a variable of known type: prefix
return %10 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :23 :4)

^2: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :26 :67) // Not a variable of known type: namespaces
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :26 :79) // "s" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :26 :84) // Namespaces.SOAP12_ENVELOPE_NS (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :26 :12) // Namespaces.AddNamespaceIfNotAlreadyPresentAndGetPrefix(namespaces, "s", Namespaces.SOAP12_ENVELOPE_NS) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :27 :10) // Not a variable of known type: prefix
return %15 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\EnvelopeVersionExtentions.cs" :27 :3)

^3: // ExitBlock
cbde.unreachable

}
