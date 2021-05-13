func @_SoapCore.Meta.MetaWCFBodyWriter.OnWriteBodyContents$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :99 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :99 :46)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :99 :46)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddTypes
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :101 :12) // Not a variable of known type: writer
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :101 :3) // AddTypes(writer) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddMessages
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :103 :15) // Not a variable of known type: writer
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :103 :3) // AddMessages(writer) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddPortType
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :105 :15) // Not a variable of known type: writer
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :105 :3) // AddPortType(writer) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddBinding
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :107 :14) // Not a variable of known type: writer
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :107 :3) // AddBinding(writer) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddService
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :109 :14) // Not a variable of known type: writer
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :109 :3) // AddService(writer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_SoapCore.Meta.MetaWCFBodyWriter.GetModelNamespace$string$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :112 :2) {
^entry (%_namespace : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :112 :42)
cbde.store %_namespace, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :112 :42)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :114 :7) // Not a variable of known type: namespace
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :114 :29) // "http" (StringLiteralExpression)
%3 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :114 :7) // @namespace.StartsWith("http") (InvocationExpression)
cond_br %3, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :114 :7)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :116 :11) // Not a variable of known type: namespace
return %4 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :116 :4)

^2: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :119 :13) // Namespaces.DataContractNamespace (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :119 :47) // Not a variable of known type: namespace
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :119 :10) // $"{Namespaces.DataContractNamespace}{@namespace}" (InterpolatedStringExpression)
return %7 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :119 :3)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetDataContractNamespace(none), it contains poisonous unsupported syntaxes

func @_SoapCore.Meta.MetaWCFBodyWriter.GetGenericType$System.Type$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :146 :2) {
^entry (%_collectionType : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :146 :37)
cbde.store %_collectionType, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :146 :37)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetGenericTypes
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :148 :26) // Not a variable of known type: collectionType
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :148 :10) // GetGenericTypes(collectionType) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :148 :57) // typeof(object) (TypeOfExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :148 :10) // GetGenericTypes(collectionType).DefaultIfEmpty(typeof(object)) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :148 :10) // GetGenericTypes(collectionType).DefaultIfEmpty(typeof(object)).FirstOrDefault() (InvocationExpression)
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :148 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetGenericTypes(none), it contains poisonous unsupported syntaxes

// Skipping function GetModelNamespace(none), it contains poisonous unsupported syntaxes

// Skipping function WriteParameters(none, none), it contains poisonous unsupported syntaxes

// Skipping function EnsureServiceKnownTypes(none), it contains poisonous unsupported syntaxes

// Skipping function AddContractOperations(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddFaultTypes(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddTypes(none), it contains poisonous unsupported syntaxes

func @_SoapCore.Meta.MetaWCFBodyWriter.AddSystemTypes$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :366 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :366 :30)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :366 :30)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :368 :7) // Not a variable of known type: _buildDateTimeOffset
cond_br %1, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :368 :7)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :370 :4) // Not a variable of known type: writer
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :370 :29) // "xs" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :370 :35) // "schema" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :370 :45) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :370 :4) // writer.WriteStartElement("xs", "schema", Namespaces.XMLNS_XSD) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :371 :4) // Not a variable of known type: writer
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :371 :31) // "xs" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :371 :37) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :371 :4) // writer.WriteXmlnsAttribute("xs", Namespaces.XMLNS_XSD) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :372 :4) // Not a variable of known type: writer
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :372 :31) // "tns" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :372 :38) // Namespaces.SYSTEM_NS (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :372 :4) // writer.WriteXmlnsAttribute("tns", Namespaces.SYSTEM_NS) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :373 :4) // Not a variable of known type: writer
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :373 :32) // "elementFormDefault" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :373 :54) // "qualified" (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :373 :4) // writer.WriteAttributeString("elementFormDefault", "qualified") (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :374 :4) // Not a variable of known type: writer
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :374 :32) // "targetNamespace" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%21 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :374 :51) // Namespaces.SYSTEM_NS (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :374 :4) // writer.WriteAttributeString("targetNamespace", Namespaces.SYSTEM_NS) (InvocationExpression)
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :376 :4) // Not a variable of known type: writer
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :376 :29) // "xs" (StringLiteralExpression)
%25 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :376 :35) // "import" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%26 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :376 :45) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :376 :4) // writer.WriteStartElement("xs", "import", Namespaces.XMLNS_XSD) (InvocationExpression)
%28 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :377 :4) // Not a variable of known type: writer
%29 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :377 :32) // "namespace" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%30 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :377 :45) // Namespaces.SERIALIZATION_NS (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :377 :4) // writer.WriteAttributeString("namespace", Namespaces.SERIALIZATION_NS) (InvocationExpression)
%32 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :378 :4) // Not a variable of known type: writer
%33 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :378 :4) // writer.WriteEndElement() (InvocationExpression)
%34 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :380 :4) // Not a variable of known type: writer
%35 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :380 :29) // "xs" (StringLiteralExpression)
%36 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :380 :35) // "complexType" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%37 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :380 :50) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%38 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :380 :4) // writer.WriteStartElement("xs", "complexType", Namespaces.XMLNS_XSD) (InvocationExpression)
%39 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :381 :4) // Not a variable of known type: writer
%40 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :381 :32) // "name" (StringLiteralExpression)
%41 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :381 :40) // "DateTimeOffset" (StringLiteralExpression)
%42 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :381 :4) // writer.WriteAttributeString("name", "DateTimeOffset") (InvocationExpression)
%43 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :382 :4) // Not a variable of known type: writer
%44 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :382 :29) // "xs" (StringLiteralExpression)
%45 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :382 :35) // "annotation" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%46 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :382 :49) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%47 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :382 :4) // writer.WriteStartElement("xs", "annotation", Namespaces.XMLNS_XSD) (InvocationExpression)
%48 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :383 :4) // Not a variable of known type: writer
%49 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :383 :29) // "xs" (StringLiteralExpression)
%50 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :383 :35) // "appinfo" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%51 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :383 :46) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%52 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :383 :4) // writer.WriteStartElement("xs", "appinfo", Namespaces.XMLNS_XSD) (InvocationExpression)
%53 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :385 :4) // Not a variable of known type: writer
%54 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :385 :30) // "IsValueType" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%55 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :385 :45) // Namespaces.SERIALIZATION_NS (SimpleMemberAccessExpression)
%56 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :385 :74) // "true" (StringLiteralExpression)
%57 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :385 :4) // writer.WriteElementString("IsValueType", Namespaces.SERIALIZATION_NS, "true") (InvocationExpression)
%58 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :386 :4) // Not a variable of known type: writer
%59 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :386 :4) // writer.WriteEndElement() (InvocationExpression)
%60 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :387 :4) // Not a variable of known type: writer
%61 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :387 :4) // writer.WriteEndElement() (InvocationExpression)
%62 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :389 :4) // Not a variable of known type: writer
%63 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :389 :29) // "xs" (StringLiteralExpression)
%64 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :389 :35) // "sequence" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%65 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :389 :47) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%66 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :389 :4) // writer.WriteStartElement("xs", "sequence", Namespaces.XMLNS_XSD) (InvocationExpression)
%67 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :391 :4) // Not a variable of known type: writer
%68 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :391 :29) // "xs" (StringLiteralExpression)
%69 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :391 :35) // "element" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%70 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :391 :46) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%71 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :391 :4) // writer.WriteStartElement("xs", "element", Namespaces.XMLNS_XSD) (InvocationExpression)
%72 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :392 :4) // Not a variable of known type: writer
%73 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :392 :32) // "name" (StringLiteralExpression)
%74 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :392 :40) // "DateTime" (StringLiteralExpression)
%75 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :392 :4) // writer.WriteAttributeString("name", "DateTime") (InvocationExpression)
%76 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :393 :4) // Not a variable of known type: writer
%77 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :393 :32) // "type" (StringLiteralExpression)
%78 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :393 :40) // "xs:dateTime" (StringLiteralExpression)
%79 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :393 :4) // writer.WriteAttributeString("type", "xs:dateTime") (InvocationExpression)
%80 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :394 :4) // Not a variable of known type: writer
%81 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :394 :4) // writer.WriteEndElement() (InvocationExpression)
%82 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :396 :4) // Not a variable of known type: writer
%83 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :396 :29) // "xs" (StringLiteralExpression)
%84 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :396 :35) // "element" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%85 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :396 :46) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%86 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :396 :4) // writer.WriteStartElement("xs", "element", Namespaces.XMLNS_XSD) (InvocationExpression)
%87 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :397 :4) // Not a variable of known type: writer
%88 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :397 :32) // "name" (StringLiteralExpression)
%89 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :397 :40) // "OffsetMinutes" (StringLiteralExpression)
%90 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :397 :4) // writer.WriteAttributeString("name", "OffsetMinutes") (InvocationExpression)
%91 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :398 :4) // Not a variable of known type: writer
%92 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :398 :32) // "type" (StringLiteralExpression)
%93 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :398 :40) // "xs:short" (StringLiteralExpression)
%94 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :398 :4) // writer.WriteAttributeString("type", "xs:short") (InvocationExpression)
%95 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :399 :4) // Not a variable of known type: writer
%96 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :399 :4) // writer.WriteEndElement() (InvocationExpression)
%97 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :401 :4) // Not a variable of known type: writer
%98 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :401 :4) // writer.WriteEndElement() (InvocationExpression)
%99 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :403 :4) // Not a variable of known type: writer
%100 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :403 :4) // writer.WriteEndElement() (InvocationExpression)
%101 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :405 :4) // Not a variable of known type: writer
%102 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :405 :29) // "xs" (StringLiteralExpression)
%103 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :405 :35) // "element" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%104 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :405 :46) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%105 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :405 :4) // writer.WriteStartElement("xs", "element", Namespaces.XMLNS_XSD) (InvocationExpression)
%106 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :406 :4) // Not a variable of known type: writer
%107 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :406 :32) // "name" (StringLiteralExpression)
%108 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :406 :40) // "DateTimeOffset" (StringLiteralExpression)
%109 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :406 :4) // writer.WriteAttributeString("name", "DateTimeOffset") (InvocationExpression)
%110 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :407 :4) // Not a variable of known type: writer
%111 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :407 :32) // "nillable" (StringLiteralExpression)
%112 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :407 :44) // "true" (StringLiteralExpression)
%113 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :407 :4) // writer.WriteAttributeString("nillable", "true") (InvocationExpression)
%114 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :408 :4) // Not a variable of known type: writer
%115 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :408 :32) // "type" (StringLiteralExpression)
%116 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :408 :40) // "tns:DateTimeOffset" (StringLiteralExpression)
%117 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :408 :4) // writer.WriteAttributeString("type", "tns:DateTimeOffset") (InvocationExpression)
%118 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :409 :4) // Not a variable of known type: writer
%119 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :409 :4) // writer.WriteEndElement() (InvocationExpression)
%120 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :411 :4) // Not a variable of known type: writer
%121 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :411 :4) // writer.WriteEndElement() (InvocationExpression)
br ^2

^2: // BinaryBranchBlock
%122 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :414 :7) // Not a variable of known type: _buildDataTable
cond_br %122, ^3, ^4 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :414 :7)

^3: // SimpleBlock
%123 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :416 :4) // Not a variable of known type: writer
%124 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :416 :29) // "xs" (StringLiteralExpression)
%125 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :416 :35) // "schema" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%126 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :416 :45) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%127 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :416 :4) // writer.WriteStartElement("xs", "schema", Namespaces.XMLNS_XSD) (InvocationExpression)
%128 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :417 :4) // Not a variable of known type: writer
%129 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :417 :32) // "elementFormDefault" (StringLiteralExpression)
%130 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :417 :54) // "qualified" (StringLiteralExpression)
%131 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :417 :4) // writer.WriteAttributeString("elementFormDefault", "qualified") (InvocationExpression)
%132 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :418 :4) // Not a variable of known type: writer
%133 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :418 :32) // "targetNamespace" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%134 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :418 :51) // Namespaces.SystemData_NS (SimpleMemberAccessExpression)
%135 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :418 :4) // writer.WriteAttributeString("targetNamespace", Namespaces.SystemData_NS) (InvocationExpression)
%136 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :419 :4) // Not a variable of known type: writer
%137 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :419 :31) // "xs" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%138 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :419 :37) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%139 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :419 :4) // writer.WriteXmlnsAttribute("xs", Namespaces.XMLNS_XSD) (InvocationExpression)
%140 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :420 :4) // Not a variable of known type: writer
%141 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :420 :31) // "tns" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%142 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :420 :38) // Namespaces.SystemData_NS (SimpleMemberAccessExpression)
%143 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :420 :4) // writer.WriteXmlnsAttribute("tns", Namespaces.SystemData_NS) (InvocationExpression)
%144 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :422 :4) // Not a variable of known type: writer
%145 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :422 :29) // "xs" (StringLiteralExpression)
%146 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :422 :35) // "element" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%147 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :422 :46) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%148 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :422 :4) // writer.WriteStartElement("xs", "element", Namespaces.XMLNS_XSD) (InvocationExpression)
%149 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :423 :4) // Not a variable of known type: writer
%150 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :423 :32) // "name" (StringLiteralExpression)
%151 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :423 :40) // "DataTable" (StringLiteralExpression)
%152 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :423 :4) // writer.WriteAttributeString("name", "DataTable") (InvocationExpression)
%153 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :424 :4) // Not a variable of known type: writer
%154 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :424 :32) // "nillable" (StringLiteralExpression)
%155 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :424 :44) // "true" (StringLiteralExpression)
%156 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :424 :4) // writer.WriteAttributeString("nillable", "true") (InvocationExpression)
%157 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :426 :4) // Not a variable of known type: writer
%158 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :426 :29) // "xs" (StringLiteralExpression)
%159 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :426 :35) // "complexType" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%160 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :426 :50) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%161 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :426 :4) // writer.WriteStartElement("xs", "complexType", Namespaces.XMLNS_XSD) (InvocationExpression)
%162 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :427 :4) // Not a variable of known type: writer
%163 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :427 :29) // "xs" (StringLiteralExpression)
%164 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :427 :35) // "annotation" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%165 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :427 :49) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%166 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :427 :4) // writer.WriteStartElement("xs", "annotation", Namespaces.XMLNS_XSD) (InvocationExpression)
%167 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :429 :4) // Not a variable of known type: writer
%168 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :429 :29) // "xs" (StringLiteralExpression)
%169 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :429 :35) // "appinfo" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%170 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :429 :46) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%171 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :429 :4) // writer.WriteStartElement("xs", "appinfo", Namespaces.XMLNS_XSD) (InvocationExpression)
%172 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :430 :4) // Not a variable of known type: writer
%173 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :430 :29) // "ActualType" (StringLiteralExpression)
%174 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :430 :4) // writer.WriteStartElement("ActualType") (InvocationExpression)
%175 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :431 :4) // Not a variable of known type: writer
%176 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :431 :32) // "xmlns" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%177 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :431 :41) // Namespaces.SERIALIZATION_NS (SimpleMemberAccessExpression)
%178 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :431 :4) // writer.WriteAttributeString("xmlns", Namespaces.SERIALIZATION_NS) (InvocationExpression)
%179 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :432 :4) // Not a variable of known type: writer
%180 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :432 :32) // "Name" (StringLiteralExpression)
%181 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :432 :40) // "DataTable" (StringLiteralExpression)
%182 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :432 :4) // writer.WriteAttributeString("Name", "DataTable") (InvocationExpression)
%183 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :433 :4) // Not a variable of known type: writer
%184 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :433 :32) // "Namespace" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%185 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :433 :45) // Namespaces.SystemData_NS (SimpleMemberAccessExpression)
%186 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :433 :4) // writer.WriteAttributeString("Namespace", Namespaces.SystemData_NS) (InvocationExpression)
%187 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :434 :4) // Not a variable of known type: writer
%188 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :434 :4) // writer.WriteEndElement() (InvocationExpression)
%189 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :435 :4) // Not a variable of known type: writer
%190 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :435 :4) // writer.WriteEndElement() (InvocationExpression)
%191 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :436 :4) // Not a variable of known type: writer
%192 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :436 :4) // writer.WriteEndElement() (InvocationExpression)
%193 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :438 :4) // Not a variable of known type: writer
%194 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :438 :29) // "xs" (StringLiteralExpression)
%195 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :438 :35) // "sequence" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%196 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :438 :47) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%197 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :438 :4) // writer.WriteStartElement("xs", "sequence", Namespaces.XMLNS_XSD) (InvocationExpression)
%198 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :440 :4) // Not a variable of known type: writer
%199 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :440 :29) // "xs" (StringLiteralExpression)
%200 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :440 :35) // "any" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%201 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :440 :42) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%202 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :440 :4) // writer.WriteStartElement("xs", "any", Namespaces.XMLNS_XSD) (InvocationExpression)
%203 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :441 :4) // Not a variable of known type: writer
%204 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :441 :32) // "minOccurs" (StringLiteralExpression)
%205 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :441 :45) // "0" (StringLiteralExpression)
%206 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :441 :4) // writer.WriteAttributeString("minOccurs", "0") (InvocationExpression)
%207 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :442 :4) // Not a variable of known type: writer
%208 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :442 :32) // "maxOccurs" (StringLiteralExpression)
%209 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :442 :45) // "unbounded" (StringLiteralExpression)
%210 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :442 :4) // writer.WriteAttributeString("maxOccurs", "unbounded") (InvocationExpression)
%211 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :443 :4) // Not a variable of known type: writer
%212 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :443 :32) // "namespace" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%213 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :443 :45) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%214 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :443 :4) // writer.WriteAttributeString("namespace", Namespaces.XMLNS_XSD) (InvocationExpression)
%215 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :444 :4) // Not a variable of known type: writer
%216 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :444 :32) // "processContents" (StringLiteralExpression)
%217 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :444 :51) // "lax" (StringLiteralExpression)
%218 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :444 :4) // writer.WriteAttributeString("processContents", "lax") (InvocationExpression)
%219 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :445 :4) // Not a variable of known type: writer
%220 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :445 :4) // writer.WriteEndElement() (InvocationExpression)
%221 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :447 :4) // Not a variable of known type: writer
%222 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :447 :29) // "xs" (StringLiteralExpression)
%223 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :447 :35) // "any" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%224 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :447 :42) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%225 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :447 :4) // writer.WriteStartElement("xs", "any", Namespaces.XMLNS_XSD) (InvocationExpression)
%226 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :448 :4) // Not a variable of known type: writer
%227 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :448 :32) // "minOccurs" (StringLiteralExpression)
%228 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :448 :45) // "1" (StringLiteralExpression)
%229 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :448 :4) // writer.WriteAttributeString("minOccurs", "1") (InvocationExpression)
%230 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :449 :4) // Not a variable of known type: writer
%231 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :449 :32) // "namespace" (StringLiteralExpression)
%232 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :449 :45) // "urn:schemas-microsoft-com:xml-diffgram-v1" (StringLiteralExpression)
%233 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :449 :4) // writer.WriteAttributeString("namespace", "urn:schemas-microsoft-com:xml-diffgram-v1") (InvocationExpression)
%234 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :450 :4) // Not a variable of known type: writer
%235 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :450 :32) // "processContents" (StringLiteralExpression)
%236 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :450 :51) // "lax" (StringLiteralExpression)
%237 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :450 :4) // writer.WriteAttributeString("processContents", "lax") (InvocationExpression)
%238 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :451 :4) // Not a variable of known type: writer
%239 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :451 :4) // writer.WriteEndElement() (InvocationExpression)
%240 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :453 :4) // Not a variable of known type: writer
%241 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :453 :4) // writer.WriteEndElement() (InvocationExpression)
%242 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :455 :4) // Not a variable of known type: writer
%243 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :455 :4) // writer.WriteEndElement() (InvocationExpression)
%244 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :457 :4) // Not a variable of known type: writer
%245 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :457 :4) // writer.WriteEndElement() (InvocationExpression)
%246 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :459 :4) // Not a variable of known type: writer
%247 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :459 :4) // writer.WriteEndElement() (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
// Skipping function AddArrayTypes(none), it contains poisonous unsupported syntaxes

func @_SoapCore.Meta.MetaWCFBodyWriter.AddMSSerialization$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :508 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :508 :34)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :508 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :510 :3) // Not a variable of known type: writer
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :510 :28) // "xs" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :510 :34) // "schema" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :510 :44) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :510 :3) // writer.WriteStartElement("xs", "schema", Namespaces.XMLNS_XSD) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :511 :3) // Not a variable of known type: writer
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :511 :31) // "attributeFormDefault" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :511 :55) // "qualified" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :511 :3) // writer.WriteAttributeString("attributeFormDefault", "qualified") (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :512 :3) // Not a variable of known type: writer
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :512 :31) // "elementFormDefault" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :512 :53) // "qualified" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :512 :3) // writer.WriteAttributeString("elementFormDefault", "qualified") (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :513 :3) // Not a variable of known type: writer
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :513 :31) // "targetNamespace" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :513 :50) // Namespaces.SERIALIZATION_NS (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :513 :3) // writer.WriteAttributeString("targetNamespace", Namespaces.SERIALIZATION_NS) (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :514 :3) // Not a variable of known type: writer
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :514 :30) // "xs" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :514 :36) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :514 :3) // writer.WriteXmlnsAttribute("xs", Namespaces.XMLNS_XSD) (InvocationExpression)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :515 :3) // Not a variable of known type: writer
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :515 :30) // "tns" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :515 :37) // Namespaces.SERIALIZATION_NS (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :515 :3) // writer.WriteXmlnsAttribute("tns", Namespaces.SERIALIZATION_NS) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%26 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :516 :29) // Not a variable of known type: writer
%27 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :516 :37) // "anyType" (StringLiteralExpression)
%28 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :516 :48) // "xs:anyType" (StringLiteralExpression)
%29 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :516 :62) // true
%30 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :516 :3) // WriteSerializationElement(writer, "anyType", "xs:anyType", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%31 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :517 :29) // Not a variable of known type: writer
%32 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :517 :37) // "anyURI" (StringLiteralExpression)
%33 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :517 :47) // "xs:anyURI" (StringLiteralExpression)
%34 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :517 :60) // true
%35 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :517 :3) // WriteSerializationElement(writer, "anyURI", "xs:anyURI", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%36 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :518 :29) // Not a variable of known type: writer
%37 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :518 :37) // "base64Binary" (StringLiteralExpression)
%38 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :518 :53) // "xs:base64Binary" (StringLiteralExpression)
%39 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :518 :72) // true
%40 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :518 :3) // WriteSerializationElement(writer, "base64Binary", "xs:base64Binary", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%41 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :519 :29) // Not a variable of known type: writer
%42 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :519 :37) // "boolean" (StringLiteralExpression)
%43 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :519 :48) // "xs:boolean" (StringLiteralExpression)
%44 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :519 :62) // true
%45 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :519 :3) // WriteSerializationElement(writer, "boolean", "xs:boolean", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%46 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :520 :29) // Not a variable of known type: writer
%47 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :520 :37) // "byte" (StringLiteralExpression)
%48 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :520 :45) // "xs:byte" (StringLiteralExpression)
%49 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :520 :56) // true
%50 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :520 :3) // WriteSerializationElement(writer, "byte", "xs:byte", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%51 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :521 :29) // Not a variable of known type: writer
%52 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :521 :37) // "dateTime" (StringLiteralExpression)
%53 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :521 :49) // "xs:dateTime" (StringLiteralExpression)
%54 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :521 :64) // true
%55 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :521 :3) // WriteSerializationElement(writer, "dateTime", "xs:dateTime", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%56 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :522 :29) // Not a variable of known type: writer
%57 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :522 :37) // "decimal" (StringLiteralExpression)
%58 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :522 :48) // "xs:decimal" (StringLiteralExpression)
%59 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :522 :62) // true
%60 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :522 :3) // WriteSerializationElement(writer, "decimal", "xs:decimal", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%61 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :523 :29) // Not a variable of known type: writer
%62 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :523 :37) // "double" (StringLiteralExpression)
%63 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :523 :47) // "xs:double" (StringLiteralExpression)
%64 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :523 :60) // true
%65 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :523 :3) // WriteSerializationElement(writer, "double", "xs:double", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%66 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :524 :29) // Not a variable of known type: writer
%67 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :524 :37) // "float" (StringLiteralExpression)
%68 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :524 :46) // "xs:float" (StringLiteralExpression)
%69 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :524 :58) // true
%70 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :524 :3) // WriteSerializationElement(writer, "float", "xs:float", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%71 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :525 :29) // Not a variable of known type: writer
%72 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :525 :37) // "int" (StringLiteralExpression)
%73 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :525 :44) // "xs:int" (StringLiteralExpression)
%74 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :525 :54) // true
%75 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :525 :3) // WriteSerializationElement(writer, "int", "xs:int", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%76 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :526 :29) // Not a variable of known type: writer
%77 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :526 :37) // "long" (StringLiteralExpression)
%78 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :526 :45) // "xs:long" (StringLiteralExpression)
%79 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :526 :56) // true
%80 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :526 :3) // WriteSerializationElement(writer, "long", "xs:long", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%81 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :527 :29) // Not a variable of known type: writer
%82 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :527 :37) // "QName" (StringLiteralExpression)
%83 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :527 :46) // "xs:QName" (StringLiteralExpression)
%84 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :527 :58) // true
%85 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :527 :3) // WriteSerializationElement(writer, "QName", "xs:QName", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%86 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :528 :29) // Not a variable of known type: writer
%87 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :528 :37) // "short" (StringLiteralExpression)
%88 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :528 :46) // "xs:short" (StringLiteralExpression)
%89 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :528 :58) // true
%90 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :528 :3) // WriteSerializationElement(writer, "short", "xs:short", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%91 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :529 :29) // Not a variable of known type: writer
%92 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :529 :37) // "string" (StringLiteralExpression)
%93 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :529 :47) // "xs:string" (StringLiteralExpression)
%94 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :529 :60) // true
%95 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :529 :3) // WriteSerializationElement(writer, "string", "xs:string", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%96 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :530 :29) // Not a variable of known type: writer
%97 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :530 :37) // "unsignedByte" (StringLiteralExpression)
%98 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :530 :53) // "xs:unsignedByte" (StringLiteralExpression)
%99 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :530 :72) // true
%100 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :530 :3) // WriteSerializationElement(writer, "unsignedByte", "xs:unsignedByte", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%101 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :531 :29) // Not a variable of known type: writer
%102 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :531 :37) // "unsignedInt" (StringLiteralExpression)
%103 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :531 :52) // "xs:unsignedInt" (StringLiteralExpression)
%104 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :531 :70) // true
%105 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :531 :3) // WriteSerializationElement(writer, "unsignedInt", "xs:unsignedInt", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%106 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :532 :29) // Not a variable of known type: writer
%107 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :532 :37) // "unsignedLong" (StringLiteralExpression)
%108 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :532 :53) // "xs:unsignedLong" (StringLiteralExpression)
%109 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :532 :72) // true
%110 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :532 :3) // WriteSerializationElement(writer, "unsignedLong", "xs:unsignedLong", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%111 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :533 :29) // Not a variable of known type: writer
%112 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :533 :37) // "unsignedShort" (StringLiteralExpression)
%113 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :533 :54) // "xs:unsignedShort" (StringLiteralExpression)
%114 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :533 :74) // true
%115 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :533 :3) // WriteSerializationElement(writer, "unsignedShort", "xs:unsignedShort", true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%116 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :535 :29) // Not a variable of known type: writer
%117 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :535 :37) // "char" (StringLiteralExpression)
%118 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :535 :45) // "tns:char" (StringLiteralExpression)
%119 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :535 :57) // true
%120 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :535 :3) // WriteSerializationElement(writer, "char", "tns:char", true) (InvocationExpression)
%121 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :536 :3) // Not a variable of known type: writer
%122 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :536 :28) // "xs" (StringLiteralExpression)
%123 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :536 :34) // "simpleType" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%124 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :536 :48) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%125 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :536 :3) // writer.WriteStartElement("xs", "simpleType", Namespaces.XMLNS_XSD) (InvocationExpression)
%126 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :537 :3) // Not a variable of known type: writer
%127 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :537 :31) // "name" (StringLiteralExpression)
%128 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :537 :39) // "char" (StringLiteralExpression)
%129 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :537 :3) // writer.WriteAttributeString("name", "char") (InvocationExpression)
%130 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :538 :3) // Not a variable of known type: writer
%131 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :538 :28) // "xs" (StringLiteralExpression)
%132 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :538 :34) // "restriction" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%133 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :538 :49) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%134 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :538 :3) // writer.WriteStartElement("xs", "restriction", Namespaces.XMLNS_XSD) (InvocationExpression)
%135 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :539 :3) // Not a variable of known type: writer
%136 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :539 :31) // "base" (StringLiteralExpression)
%137 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :539 :39) // "xs:int" (StringLiteralExpression)
%138 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :539 :3) // writer.WriteAttributeString("base", "xs:int") (InvocationExpression)
%139 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :540 :3) // Not a variable of known type: writer
%140 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :540 :3) // writer.WriteEndElement() (InvocationExpression)
%141 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :541 :3) // Not a variable of known type: writer
%142 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :541 :3) // writer.WriteEndElement() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%143 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :543 :29) // Not a variable of known type: writer
%144 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :543 :37) // "duration" (StringLiteralExpression)
%145 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :543 :49) // "tns:duration" (StringLiteralExpression)
%146 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :543 :65) // true
%147 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :543 :3) // WriteSerializationElement(writer, "duration", "tns:duration", true) (InvocationExpression)
%148 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :544 :3) // Not a variable of known type: writer
%149 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :544 :28) // "xs" (StringLiteralExpression)
%150 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :544 :34) // "simpleType" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%151 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :544 :48) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%152 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :544 :3) // writer.WriteStartElement("xs", "simpleType", Namespaces.XMLNS_XSD) (InvocationExpression)
%153 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :545 :3) // Not a variable of known type: writer
%154 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :545 :31) // "name" (StringLiteralExpression)
%155 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :545 :39) // "duration" (StringLiteralExpression)
%156 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :545 :3) // writer.WriteAttributeString("name", "duration") (InvocationExpression)
%157 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :546 :3) // Not a variable of known type: writer
%158 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :546 :28) // "xs" (StringLiteralExpression)
%159 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :546 :34) // "restriction" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%160 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :546 :49) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%161 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :546 :3) // writer.WriteStartElement("xs", "restriction", Namespaces.XMLNS_XSD) (InvocationExpression)
%162 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :547 :3) // Not a variable of known type: writer
%163 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :547 :31) // "base" (StringLiteralExpression)
%164 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :547 :39) // "xs:duration" (StringLiteralExpression)
%165 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :547 :3) // writer.WriteAttributeString("base", "xs:duration") (InvocationExpression)
%166 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :548 :3) // Not a variable of known type: writer
%167 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :548 :28) // "xs" (StringLiteralExpression)
%168 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :548 :34) // "pattern" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%169 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :548 :45) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%170 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :548 :3) // writer.WriteStartElement("xs", "pattern", Namespaces.XMLNS_XSD) (InvocationExpression)
%171 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :549 :3) // Not a variable of known type: writer
%172 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :549 :31) // "value" (StringLiteralExpression)
%173 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :549 :40) // @"\-?P(\d*D)?(T(\d*H)?(\d*M)?(\d*(\.\d*)?S)?)?" (StringLiteralExpression)
%174 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :549 :3) // writer.WriteAttributeString("value", @"\-?P(\d*D)?(T(\d*H)?(\d*M)?(\d*(\.\d*)?S)?)?") (InvocationExpression)
%175 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :550 :3) // Not a variable of known type: writer
%176 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :550 :3) // writer.WriteEndElement() (InvocationExpression)
%177 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :551 :3) // Not a variable of known type: writer
%178 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :551 :28) // "xs" (StringLiteralExpression)
%179 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :551 :34) // "minInclusive" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%180 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :551 :50) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%181 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :551 :3) // writer.WriteStartElement("xs", "minInclusive", Namespaces.XMLNS_XSD) (InvocationExpression)
%182 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :552 :3) // Not a variable of known type: writer
%183 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :552 :31) // "value" (StringLiteralExpression)
%184 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :552 :40) // @"-P10675199DT2H48M5.4775808S" (StringLiteralExpression)
%185 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :552 :3) // writer.WriteAttributeString("value", @"-P10675199DT2H48M5.4775808S") (InvocationExpression)
%186 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :553 :3) // Not a variable of known type: writer
%187 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :553 :3) // writer.WriteEndElement() (InvocationExpression)
%188 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :554 :3) // Not a variable of known type: writer
%189 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :554 :28) // "xs" (StringLiteralExpression)
%190 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :554 :34) // "maxInclusive" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%191 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :554 :50) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%192 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :554 :3) // writer.WriteStartElement("xs", "maxInclusive", Namespaces.XMLNS_XSD) (InvocationExpression)
%193 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :555 :3) // Not a variable of known type: writer
%194 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :555 :31) // "value" (StringLiteralExpression)
%195 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :555 :40) // @"P10675199DT2H48M5.4775807S" (StringLiteralExpression)
%196 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :555 :3) // writer.WriteAttributeString("value", @"P10675199DT2H48M5.4775807S") (InvocationExpression)
%197 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :556 :3) // Not a variable of known type: writer
%198 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :556 :3) // writer.WriteEndElement() (InvocationExpression)
%199 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :557 :3) // Not a variable of known type: writer
%200 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :557 :3) // writer.WriteEndElement() (InvocationExpression)
%201 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :558 :3) // Not a variable of known type: writer
%202 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :558 :3) // writer.WriteEndElement() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WriteSerializationElement
%203 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :560 :29) // Not a variable of known type: writer
%204 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :560 :37) // "guid" (StringLiteralExpression)
%205 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :560 :45) // "tns:guid" (StringLiteralExpression)
%206 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :560 :57) // true
%207 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :560 :3) // WriteSerializationElement(writer, "guid", "tns:guid", true) (InvocationExpression)
%208 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :561 :3) // Not a variable of known type: writer
%209 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :561 :28) // "xs" (StringLiteralExpression)
%210 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :561 :34) // "simpleType" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%211 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :561 :48) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%212 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :561 :3) // writer.WriteStartElement("xs", "simpleType", Namespaces.XMLNS_XSD) (InvocationExpression)
%213 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :562 :3) // Not a variable of known type: writer
%214 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :562 :31) // "name" (StringLiteralExpression)
%215 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :562 :39) // "guid" (StringLiteralExpression)
%216 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :562 :3) // writer.WriteAttributeString("name", "guid") (InvocationExpression)
%217 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :563 :3) // Not a variable of known type: writer
%218 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :563 :28) // "xs" (StringLiteralExpression)
%219 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :563 :34) // "restriction" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%220 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :563 :49) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%221 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :563 :3) // writer.WriteStartElement("xs", "restriction", Namespaces.XMLNS_XSD) (InvocationExpression)
%222 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :564 :3) // Not a variable of known type: writer
%223 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :564 :31) // "base" (StringLiteralExpression)
%224 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :564 :39) // "xs:string" (StringLiteralExpression)
%225 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :564 :3) // writer.WriteAttributeString("base", "xs:string") (InvocationExpression)
%226 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :565 :3) // Not a variable of known type: writer
%227 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :565 :28) // "xs" (StringLiteralExpression)
%228 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :565 :34) // "pattern" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%229 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :565 :45) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%230 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :565 :3) // writer.WriteStartElement("xs", "pattern", Namespaces.XMLNS_XSD) (InvocationExpression)
%231 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :566 :3) // Not a variable of known type: writer
%232 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :566 :31) // "value" (StringLiteralExpression)
%233 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :566 :40) // @"[\da-fA-F]{8}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{12}" (StringLiteralExpression)
%234 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :566 :3) // writer.WriteAttributeString("value", @"[\da-fA-F]{8}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{12}") (InvocationExpression)
%235 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :567 :3) // Not a variable of known type: writer
%236 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :567 :3) // writer.WriteEndElement() (InvocationExpression)
%237 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :568 :3) // Not a variable of known type: writer
%238 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :568 :3) // writer.WriteEndElement() (InvocationExpression)
%239 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :569 :3) // Not a variable of known type: writer
%240 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :569 :3) // writer.WriteEndElement() (InvocationExpression)
%241 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :571 :3) // Not a variable of known type: writer
%242 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :571 :28) // "xs" (StringLiteralExpression)
%243 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :571 :34) // "attribute" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%244 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :571 :47) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%245 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :571 :3) // writer.WriteStartElement("xs", "attribute", Namespaces.XMLNS_XSD) (InvocationExpression)
%246 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :572 :3) // Not a variable of known type: writer
%247 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :572 :31) // "name" (StringLiteralExpression)
%248 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :572 :39) // "FactoryType" (StringLiteralExpression)
%249 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :572 :3) // writer.WriteAttributeString("name", "FactoryType") (InvocationExpression)
%250 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :573 :3) // Not a variable of known type: writer
%251 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :573 :31) // "type" (StringLiteralExpression)
%252 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :573 :39) // "xs:QName" (StringLiteralExpression)
%253 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :573 :3) // writer.WriteAttributeString("type", "xs:QName") (InvocationExpression)
%254 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :574 :3) // Not a variable of known type: writer
%255 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :574 :3) // writer.WriteEndElement() (InvocationExpression)
%256 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :576 :3) // Not a variable of known type: writer
%257 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :576 :28) // "xs" (StringLiteralExpression)
%258 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :576 :34) // "attribute" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%259 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :576 :47) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%260 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :576 :3) // writer.WriteStartElement("xs", "attribute", Namespaces.XMLNS_XSD) (InvocationExpression)
%261 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :577 :3) // Not a variable of known type: writer
%262 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :577 :31) // "name" (StringLiteralExpression)
%263 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :577 :39) // "Id" (StringLiteralExpression)
%264 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :577 :3) // writer.WriteAttributeString("name", "Id") (InvocationExpression)
%265 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :578 :3) // Not a variable of known type: writer
%266 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :578 :31) // "type" (StringLiteralExpression)
%267 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :578 :39) // "xs:ID" (StringLiteralExpression)
%268 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :578 :3) // writer.WriteAttributeString("type", "xs:ID") (InvocationExpression)
%269 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :579 :3) // Not a variable of known type: writer
%270 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :579 :3) // writer.WriteEndElement() (InvocationExpression)
%271 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :581 :3) // Not a variable of known type: writer
%272 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :581 :28) // "xs" (StringLiteralExpression)
%273 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :581 :34) // "attribute" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%274 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :581 :47) // Namespaces.XMLNS_XSD (SimpleMemberAccessExpression)
%275 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :581 :3) // writer.WriteStartElement("xs", "attribute", Namespaces.XMLNS_XSD) (InvocationExpression)
%276 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :582 :3) // Not a variable of known type: writer
%277 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :582 :31) // "name" (StringLiteralExpression)
%278 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :582 :39) // "Ref" (StringLiteralExpression)
%279 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :582 :3) // writer.WriteAttributeString("name", "Ref") (InvocationExpression)
%280 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :583 :3) // Not a variable of known type: writer
%281 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :583 :31) // "type" (StringLiteralExpression)
%282 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :583 :39) // "xs:IDREF" (StringLiteralExpression)
%283 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :583 :3) // writer.WriteAttributeString("type", "xs:IDREF") (InvocationExpression)
%284 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :584 :3) // Not a variable of known type: writer
%285 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :584 :3) // writer.WriteEndElement() (InvocationExpression)
%286 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :586 :3) // Not a variable of known type: writer
%287 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :586 :3) // writer.WriteEndElement() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function WriteSerializationElement(none, none, none, i1), it contains poisonous unsupported syntaxes

// Skipping function AddComplexTypes(none), it contains poisonous unsupported syntaxes

// Skipping function DiscoverTypes(none, i1), it contains poisonous unsupported syntaxes

// Skipping function WriteEnum(none, none), it contains poisonous unsupported syntaxes

// Skipping function WriteComplexType(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddMessages(none), it contains poisonous unsupported syntaxes

// Skipping function AddMessageFaults(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddPortType(none), it contains poisonous unsupported syntaxes

// Skipping function AddPortTypeFaults(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddBinding(none), it contains poisonous unsupported syntaxes

// Skipping function AddBindingFaults(none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.Meta.MetaWCFBodyWriter.AddService$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1089 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1089 :26)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1089 :26)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1091 :3) // Not a variable of known type: writer
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1091 :28) // "wsdl" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1091 :36) // "service" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1091 :47) // Namespaces.WSDL_NS (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1091 :3) // writer.WriteStartElement("wsdl", "service", Namespaces.WSDL_NS) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1092 :3) // Not a variable of known type: writer
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1092 :31) // "name" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1092 :39) // Not a variable of known type: _service
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1092 :39) // _service.ServiceType (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1092 :39) // _service.ServiceType.Name (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1092 :3) // writer.WriteAttributeString("name", _service.ServiceType.Name) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1094 :3) // Not a variable of known type: writer
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1094 :28) // "wsdl" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1094 :36) // "port" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1094 :44) // Namespaces.WSDL_NS (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1094 :3) // writer.WriteStartElement("wsdl", "port", Namespaces.WSDL_NS) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1095 :3) // Not a variable of known type: writer
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1095 :31) // "name" (StringLiteralExpression)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1095 :39) // Not a variable of known type: PortName
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1095 :3) // writer.WriteAttributeString("name", PortName) (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1096 :3) // Not a variable of known type: writer
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1096 :31) // "binding" (StringLiteralExpression)
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1096 :42) // "tns:" (StringLiteralExpression)
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1096 :51) // Not a variable of known type: BindingName
%25 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1096 :42) // Binary expression on unsupported types "tns:" + BindingName
%26 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1096 :3) // writer.WriteAttributeString("binding", "tns:" + BindingName) (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1098 :3) // Not a variable of known type: writer
%28 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1098 :28) // "soap" (StringLiteralExpression)
%29 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1098 :36) // "address" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Namespaces
%30 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1098 :47) // Namespaces.SOAP11_NS (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1098 :3) // writer.WriteStartElement("soap", "address", Namespaces.SOAP11_NS) (InvocationExpression)
%32 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1100 :3) // Not a variable of known type: writer
%33 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1100 :31) // "location" (StringLiteralExpression)
%34 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1100 :43) // Not a variable of known type: _baseUrl
%35 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1100 :3) // writer.WriteAttributeString("location", _baseUrl) (InvocationExpression)
%36 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1101 :3) // Not a variable of known type: writer
%37 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1101 :3) // writer.WriteEndElement() (InvocationExpression)
%38 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1103 :3) // Not a variable of known type: writer
%39 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaWCFBodyWriter.cs" :1103 :3) // writer.WriteEndElement() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function AddSchemaType(none, none, none, i1, none, i1), it contains poisonous unsupported syntaxes

// Skipping function TypeIsComplexForWsdl(none, none), it contains poisonous unsupported syntaxes

// Skipping function WriteComplexElementType(none, none, none, none, none), it contains poisonous unsupported syntaxes

// Skipping function GetTypeName(none), it contains poisonous unsupported syntaxes

// Skipping function ReplaceGenericNames(none), it contains poisonous unsupported syntaxes

// Skipping function ResolveSystemType(none), it contains poisonous unsupported syntaxes

// Skipping function HasBaseType(none), it contains poisonous unsupported syntaxes

