func @_SoapCore.XmlSerializerExtensions.DeserializeArray$T$$System.Xml.Serialization.XmlSerializer.string.string.System.Xml.XmlReader$(none, none, none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :23 :2) {
^entry (%_serializer : none, %_localname : none, %_ns : none, %_xmlReader : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :23 :40)
cbde.store %_serializer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :23 :40)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :23 :71)
cbde.store %_localname, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :23 :71)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :23 :89)
cbde.store %_ns, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :23 :89)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :23 :100)
cbde.store %_xmlReader, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :23 :100)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :25 :18) // new List<T>() (ObjectCreationExpression)
br ^1

^1: // BinaryBranchBlock
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :26 :10) // Not a variable of known type: xmlReader
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :26 :35) // Not a variable of known type: localname
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :26 :46) // Not a variable of known type: ns
%9 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :26 :10) // xmlReader.IsStartElement(localname, ns) (InvocationExpression)
cond_br %9, ^2, ^3 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :26 :10)

^2: // SimpleBlock
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :28 :4) // Not a variable of known type: argument
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :28 :20) // Not a variable of known type: serializer
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :28 :43) // Not a variable of known type: xmlReader
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :28 :20) // serializer.Deserialize(xmlReader) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :28 :17) // (T)serializer.Deserialize(xmlReader) (CastExpression)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :28 :4) // argument.Add((T)serializer.Deserialize(xmlReader)) (InvocationExpression)
br ^1

^3: // JumpBlock
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :31 :10) // Not a variable of known type: argument
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :31 :10) // argument.ToArray() (InvocationExpression)
return %17 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\XmlSerializerExtensions.cs" :31 :3)

^4: // ExitBlock
cbde.unreachable

}
// Skipping function SerializeArray(none, none, none), it contains poisonous unsupported syntaxes

