// Skipping function TryAddSchemaTypeFromXmlSchemaProviderAttribute(none, none, none, none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.Meta.BodyWriterExtensions.IsChoice$System.Reflection.PropertyInfo$(none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :111 :2) {
^entry (%_property : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :111 :30)
cbde.store %_property, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :111 :30)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :113 :20) // Not a variable of known type: property
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :113 :20) // property.GetCustomAttribute<XmlChoiceIdentifierAttribute>() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :114 :10) // Not a variable of known type: choiceItem
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :114 :24) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :114 :10) // comparison of unknown type: choiceItem != null
return %6 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :114 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.Meta.BodyWriterExtensions.IsAttribute$System.Reflection.PropertyInfo$(none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :117 :2) {
^entry (%_property : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :117 :33)
cbde.store %_property, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :117 :33)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :119 :23) // Not a variable of known type: property
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :119 :23) // property.GetCustomAttribute<XmlAttributeAttribute>() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :120 :10) // Not a variable of known type: attributeItem
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :120 :27) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :120 :10) // comparison of unknown type: attributeItem != null
return %6 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :120 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsIgnored(none), it contains poisonous unsupported syntaxes

func @_SoapCore.Meta.BodyWriterExtensions.IsEnumerableType$System.Type$(none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :132 :2) {
^entry (%_collectionType : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :132 :38)
cbde.store %_collectionType, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :132 :38)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :134 :7) // Not a variable of known type: collectionType
%2 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :134 :7) // collectionType.IsArray (SimpleMemberAccessExpression)
cond_br %2, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :134 :7)

^1: // JumpBlock
%3 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :136 :11) // true
return %3 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :136 :4)

^2: // JumpBlock
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :139 :10) // typeof(IEnumerable) (TypeOfExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :139 :47) // Not a variable of known type: collectionType
%6 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :139 :10) // typeof(IEnumerable).IsAssignableFrom(collectionType) (InvocationExpression)
return %6 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Meta\\BodyWriterExtensions.cs" :139 :3)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetGenericType(none), it contains poisonous unsupported syntaxes

// Skipping function GetSerializedTypeName(none), it contains poisonous unsupported syntaxes

// Skipping function Convert(none), it contains poisonous unsupported syntaxes

