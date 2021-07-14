func @_SoapCore.Meta.MetaBodyWriter.OnWriteBodyContents$System.Xml.XmlDictionaryWriter$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :71 :2) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :71 :46)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :71 :46)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddTypes
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :73 :12) // Not a variable of known type: writer
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :73 :3) // AddTypes(writer) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddMessage
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :75 :14) // Not a variable of known type: writer
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :75 :3) // AddMessage(writer) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddPortType
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :77 :15) // Not a variable of known type: writer
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :77 :3) // AddPortType(writer) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddBinding
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :79 :14) // Not a variable of known type: writer
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :79 :3) // AddBinding(writer) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddService
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :81 :14) // Not a variable of known type: writer
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :81 :3) // AddService(writer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_SoapCore.Meta.MetaBodyWriter.IsWrappedMessageContractType$System.Type$(none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :84 :2) {
^entry (%_type : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :84 :51)
cbde.store %_type, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :84 :51)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :86 :34) // Not a variable of known type: type
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :86 :34) // type.GetCustomAttribute<MessageContractAttribute>() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :88 :7) // Not a variable of known type: messageContractAttribute
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :88 :35) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :88 :7) // comparison of unknown type: messageContractAttribute != null
cond_br %6, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :88 :7)

^1: // JumpBlock
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :90 :11) // Not a variable of known type: messageContractAttribute
%8 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :90 :11) // messageContractAttribute.IsWrapped (SimpleMemberAccessExpression)
return %8 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :90 :4)

^2: // JumpBlock
%9 = constant 0 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :93 :10) // false
return %9 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :93 :3)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetMessageContractBodyType(none), it contains poisonous unsupported syntaxes

// Skipping function GetMessageContractBodyName(none), it contains poisonous unsupported syntaxes

// Skipping function TryGetMessageContractBodyType(none, none), it contains poisonous unsupported syntaxes

// Skipping function TryGetMessageContractBodyMemberInfo(none, none), it contains poisonous unsupported syntaxes

// Skipping function ResolveType(none), it contains poisonous unsupported syntaxes

// Skipping function WriteParameters(none, none, i1), it contains poisonous unsupported syntaxes

// Skipping function AddTypes(none), it contains poisonous unsupported syntaxes

// Skipping function AddMessage(none), it contains poisonous unsupported syntaxes

// Skipping function AddPortType(none), it contains poisonous unsupported syntaxes

// Skipping function AddBinding(none), it contains poisonous unsupported syntaxes

// Skipping function AddService(none), it contains poisonous unsupported syntaxes

// Skipping function AddSchemaComplexType(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddSchemaTypeProperty(none, none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.Meta.MetaBodyWriter.AddSchemaType$System.Xml.XmlDictionaryWriter.System.Type.string.bool.string.bool$(none, none, none, i1, none, i1) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :2) {
^entry (%_writer : none, %_type : none, %_name : none, %_isArray : i1, %_namespace : none, %_isAttribute : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :29)
cbde.store %_writer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :29)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :57)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :57)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :68)
cbde.store %_name, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :68)
%3 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :81)
cbde.store %_isArray, %3 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :81)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :103)
cbde.store %_namespace, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :103)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :129)
cbde.store %_isAttribute, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :854 :129)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddSchemaType
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :856 :17) // Not a variable of known type: writer
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :856 :41) // Not a variable of known type: type
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :856 :25) // new TypeToBuild(type) (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :856 :48) // Not a variable of known type: name
%10 = cbde.load %3 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :856 :54)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :856 :63) // Not a variable of known type: namespace
%12 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :856 :75)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\MetaBodyWriter.cs" :856 :3) // AddSchemaType(writer, new TypeToBuild(type), name, isArray, @namespace, isAttribute) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function AddSchemaType(none, none, none, i1, none, i1, i1), it contains poisonous unsupported syntaxes

// Skipping function SetUniqueNameForDynamicType(none), it contains poisonous unsupported syntaxes

