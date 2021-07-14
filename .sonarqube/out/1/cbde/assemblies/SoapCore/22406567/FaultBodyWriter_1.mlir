func @_SoapCore.FaultBodyWriter.OnWriteBodyContents$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :23 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :23 :46)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :23 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :25 :7) // Not a variable of known type: _version
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :25 :7) // _version.Envelope (SimpleMemberAccessExpression)
// Entity from another assembly: EnvelopeVersion
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :25 :28) // EnvelopeVersion.Soap12 (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :25 :7) // comparison of unknown type: _version.Envelope == EnvelopeVersion.Soap12
cond_br %4, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :25 :7)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSoap12Fault
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :27 :21) // Not a variable of known type: writer
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :27 :4) // WriteSoap12Fault(writer) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :29 :12) // Not a variable of known type: _version
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :29 :12) // _version.Envelope (SimpleMemberAccessExpression)
// Entity from another assembly: EnvelopeVersion
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :29 :33) // EnvelopeVersion.Soap11 (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :29 :12) // comparison of unknown type: _version.Envelope == EnvelopeVersion.Soap11
cond_br %10, ^4, ^5 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :29 :12)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSoap11Fault
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :31 :21) // Not a variable of known type: writer
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :31 :4) // WriteSoap11Fault(writer) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSoap11Fault
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :37 :21) // Not a variable of known type: writer
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\FaultBodyWriter.cs" :37 :4) // WriteSoap11Fault(writer) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function WriteSoap12Fault(none), it contains poisonous unsupported syntaxes

// Skipping function WriteSoap11Fault(none), it contains poisonous unsupported syntaxes

// Skipping function ExtractFaultDetailsAsXmlElement(none), it contains poisonous unsupported syntaxes

// Skipping function ExtractFaultDetail(none), it contains poisonous unsupported syntaxes

