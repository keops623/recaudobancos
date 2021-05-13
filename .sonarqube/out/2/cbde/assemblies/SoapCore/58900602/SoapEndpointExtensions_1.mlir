func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T$$Microsoft.AspNetCore.Builder.IApplicationBuilder.string.SoapCore.SoapEncoderOptions.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :2) {
^entry (%_builder : none, %_path : none, %_encoder : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :55)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :55)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :89)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :89)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :102)
cbde.store %_encoder, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :102)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :130)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :130)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :197)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :197)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :231)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :231)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :274)
cbde.store %_wsdlFileOptions, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :274)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :314)
cbde.store %_indentXml, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :314)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :337)
cbde.store %_omitXmlDeclaration, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :17 :337)
br ^0

^0: // JumpBlock
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :10) // Not a variable of known type: builder
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :34) // typeof(T) (TypeOfExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :45) // Not a variable of known type: path
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :51) // new[] { encoder } (ImplicitArrayCreationExpression)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :59) // Not a variable of known type: encoder
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :70) // Not a variable of known type: serializer
%15 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :82)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :103) // Not a variable of known type: soapModelBounder
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :121) // null (NullLiteralExpression)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :127) // Not a variable of known type: wsdlFileOptions
%19 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :144)
%20 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :155)
%21 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :10) // builder.UseSoapEndpoint(typeof(T), path, new[] { encoder }, serializer, caseInsensitivePath, soapModelBounder, null, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %21 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :19 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T.T_MESSAGE$$Microsoft.AspNetCore.Builder.IApplicationBuilder.string.SoapCore.SoapEncoderOptions.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.bool.bool$(none, none, none, none, i1, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :2) {
^entry (%_builder : none, %_path : none, %_encoder : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :66)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :66)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :100)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :100)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :113)
cbde.store %_encoder, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :113)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :141)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :141)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :208)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :208)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :242)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :242)
%6 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :285)
cbde.store %_indentXml, %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :285)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :308)
cbde.store %_omitXmlDeclaration, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :22 :308)
br ^0

^0: // JumpBlock
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :10) // Not a variable of known type: builder
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :45) // typeof(T) (TypeOfExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :56) // Not a variable of known type: path
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :62) // new[] { encoder } (ImplicitArrayCreationExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :70) // Not a variable of known type: encoder
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :81) // Not a variable of known type: serializer
%14 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :93)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :114) // Not a variable of known type: soapModelBounder
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :132) // null (NullLiteralExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :138) // null (NullLiteralExpression)
%18 = cbde.load %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :144)
%19 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :155)
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :10) // builder.UseSoapEndpoint<T_MESSAGE>(typeof(T), path, new[] { encoder }, serializer, caseInsensitivePath, soapModelBounder, null, null, indentXml, omitXmlDeclaration) (InvocationExpression)
return %20 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :25 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$Microsoft.AspNetCore.Builder.IApplicationBuilder.System.Type.string.SoapCore.SoapEncoderOptions.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.System.ServiceModel.Channels.Binding.bool.bool$(none, none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :2) {
^entry (%_builder : none, %_type : none, %_path : none, %_encoder : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_binding : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :52)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :52)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :86)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :86)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :97)
cbde.store %_path, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :97)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :110)
cbde.store %_encoder, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :110)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :138)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :138)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :205)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :205)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :239)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :239)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :282)
cbde.store %_binding, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :282)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :306)
cbde.store %_indentXml, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :306)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :329)
cbde.store %_omitXmlDeclaration, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :28 :329)
br ^0

^0: // JumpBlock
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :10) // Not a variable of known type: builder
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :34) // Not a variable of known type: type
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :40) // Not a variable of known type: path
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :46) // new[] { encoder } (ImplicitArrayCreationExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :54) // Not a variable of known type: encoder
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :65) // Not a variable of known type: serializer
%16 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :77)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :98) // Not a variable of known type: soapModelBounder
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :116) // Not a variable of known type: binding
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :125) // null (NullLiteralExpression)
%20 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :131)
%21 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :142)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :10) // builder.UseSoapEndpoint(type, path, new[] { encoder }, serializer, caseInsensitivePath, soapModelBounder, binding, null, indentXml, omitXmlDeclaration) (InvocationExpression)
return %22 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :30 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T_MESSAGE$$Microsoft.AspNetCore.Builder.IApplicationBuilder.System.Type.string.SoapCore.SoapEncoderOptions.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.System.ServiceModel.Channels.Binding.bool.bool$(none, none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :2) {
^entry (%_builder : none, %_type : none, %_path : none, %_encoder : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_binding : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :63)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :63)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :97)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :97)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :108)
cbde.store %_path, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :108)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :121)
cbde.store %_encoder, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :121)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :149)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :149)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :216)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :216)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :250)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :250)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :293)
cbde.store %_binding, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :293)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :317)
cbde.store %_indentXml, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :317)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :340)
cbde.store %_omitXmlDeclaration, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :33 :340)
br ^0

^0: // JumpBlock
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :10) // Not a variable of known type: builder
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :45) // Not a variable of known type: type
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :51) // Not a variable of known type: path
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :57) // new[] { encoder } (ImplicitArrayCreationExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :65) // Not a variable of known type: encoder
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :76) // Not a variable of known type: serializer
%16 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :88)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :109) // Not a variable of known type: soapModelBounder
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :127) // Not a variable of known type: binding
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :136) // null (NullLiteralExpression)
%20 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :142)
%21 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :153)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :10) // builder.UseSoapEndpoint<T_MESSAGE>(type, path, new[] { encoder }, serializer, caseInsensitivePath, soapModelBounder, binding, null, indentXml, omitXmlDeclaration) (InvocationExpression)
return %22 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :36 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T$$Microsoft.AspNetCore.Builder.IApplicationBuilder.string.System.ServiceModel.Channels.Binding.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :2) {
^entry (%_builder : none, %_path : none, %_binding : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :55)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :55)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :89)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :89)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :102)
cbde.store %_binding, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :102)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :119)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :119)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :186)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :186)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :220)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :220)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :263)
cbde.store %_wsdlFileOptions, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :263)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :303)
cbde.store %_indentXml, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :303)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :326)
cbde.store %_omitXmlDeclaration, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :39 :326)
br ^0

^0: // JumpBlock
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :10) // Not a variable of known type: builder
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :34) // typeof(T) (TypeOfExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :45) // Not a variable of known type: path
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :51) // Not a variable of known type: binding
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :60) // Not a variable of known type: serializer
%14 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :72)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :93) // Not a variable of known type: soapModelBounder
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :111) // Not a variable of known type: wsdlFileOptions
%17 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :128)
%18 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :139)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :10) // builder.UseSoapEndpoint(typeof(T), path, binding, serializer, caseInsensitivePath, soapModelBounder, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %19 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :41 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T.T_MESSAGE$$Microsoft.AspNetCore.Builder.IApplicationBuilder.string.System.ServiceModel.Channels.Binding.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.bool.bool$(none, none, none, none, i1, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :2) {
^entry (%_builder : none, %_path : none, %_binding : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :66)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :66)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :100)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :100)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :113)
cbde.store %_binding, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :113)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :130)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :130)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :197)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :197)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :231)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :231)
%6 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :274)
cbde.store %_indentXml, %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :274)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :297)
cbde.store %_omitXmlDeclaration, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :44 :297)
br ^0

^0: // JumpBlock
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :10) // Not a variable of known type: builder
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :45) // typeof(T) (TypeOfExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :56) // Not a variable of known type: path
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :62) // Not a variable of known type: binding
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :71) // Not a variable of known type: serializer
%13 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :83)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :104) // Not a variable of known type: soapModelBounder
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :122) // null (NullLiteralExpression)
%16 = cbde.load %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :128)
%17 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :139)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :10) // builder.UseSoapEndpoint<T_MESSAGE>(typeof(T), path, binding, serializer, caseInsensitivePath, soapModelBounder, null, indentXml, omitXmlDeclaration) (InvocationExpression)
return %18 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :47 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T$$Microsoft.AspNetCore.Builder.IApplicationBuilder.string.SoapCore.SoapEncoderOptions$$.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.bool.bool$(none, none, none, none, i1, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :2) {
^entry (%_builder : none, %_path : none, %_encoders : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :55)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :55)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :89)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :89)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :102)
cbde.store %_encoders, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :102)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :133)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :133)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :200)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :200)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :234)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :234)
%6 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :277)
cbde.store %_indentXml, %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :277)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :300)
cbde.store %_omitXmlDeclaration, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :50 :300)
br ^0

^0: // JumpBlock
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :10) // Not a variable of known type: builder
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :34) // typeof(T) (TypeOfExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :45) // Not a variable of known type: path
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :51) // Not a variable of known type: encoders
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :61) // Not a variable of known type: serializer
%13 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :73)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :94) // Not a variable of known type: soapModelBounder
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :112) // null (NullLiteralExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :118) // null (NullLiteralExpression)
%17 = cbde.load %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :124)
%18 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :135)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :10) // builder.UseSoapEndpoint(typeof(T), path, encoders, serializer, caseInsensitivePath, soapModelBounder, null, null, indentXml, omitXmlDeclaration) (InvocationExpression)
return %19 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :52 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T.T_MESSAGE$$Microsoft.AspNetCore.Builder.IApplicationBuilder.string.SoapCore.SoapEncoderOptions$$.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.bool.bool$(none, none, none, none, i1, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :2) {
^entry (%_builder : none, %_path : none, %_encoders : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :66)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :66)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :100)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :100)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :113)
cbde.store %_encoders, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :113)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :144)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :144)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :211)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :211)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :245)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :245)
%6 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :288)
cbde.store %_indentXml, %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :288)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :311)
cbde.store %_omitXmlDeclaration, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :55 :311)
br ^0

^0: // JumpBlock
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :10) // Not a variable of known type: builder
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :45) // typeof(T) (TypeOfExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :56) // Not a variable of known type: path
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :62) // Not a variable of known type: encoders
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :72) // Not a variable of known type: serializer
%13 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :84)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :105) // Not a variable of known type: soapModelBounder
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :123) // null (NullLiteralExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :129) // null (NullLiteralExpression)
%17 = cbde.load %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :135)
%18 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :146)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :10) // builder.UseSoapEndpoint<T_MESSAGE>(typeof(T), path, encoders, serializer, caseInsensitivePath, soapModelBounder, null, null, indentXml, omitXmlDeclaration) (InvocationExpression)
return %19 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :58 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$Microsoft.AspNetCore.Builder.IApplicationBuilder.System.Type.string.SoapCore.SoapEncoderOptions$$.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.System.ServiceModel.Channels.Binding.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, none, i1, none, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :2) {
^entry (%_builder : none, %_type : none, %_path : none, %_encoderOptions : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_binding : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :52)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :52)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :86)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :86)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :97)
cbde.store %_path, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :97)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :110)
cbde.store %_encoderOptions, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :110)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :147)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :147)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :214)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :214)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :248)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :248)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :291)
cbde.store %_binding, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :291)
%8 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :315)
cbde.store %_wsdlFileOptions, %8 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :315)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :355)
cbde.store %_indentXml, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :355)
%10 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :378)
cbde.store %_omitXmlDeclaration, %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :61 :378)
br ^0

^0: // JumpBlock
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :10) // Not a variable of known type: builder
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :49) // Not a variable of known type: type
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :55) // Not a variable of known type: path
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :61) // Not a variable of known type: encoderOptions
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :77) // Not a variable of known type: serializer
%16 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :89)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :110) // Not a variable of known type: soapModelBounder
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :128) // Not a variable of known type: binding
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :137) // Not a variable of known type: wsdlFileOptions
%20 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :154)
%21 = cbde.load %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :165)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :10) // builder.UseSoapEndpoint<CustomMessage>(type, path, encoderOptions, serializer, caseInsensitivePath, soapModelBounder, binding, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %22 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :63 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T_MESSAGE$$Microsoft.AspNetCore.Builder.IApplicationBuilder.System.Type.string.SoapCore.SoapEncoderOptions$$.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.System.ServiceModel.Channels.Binding.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, none, i1, none, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :2) {
^entry (%_builder : none, %_type : none, %_path : none, %_encoderOptions : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_binding : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :63)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :63)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :97)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :97)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :108)
cbde.store %_path, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :108)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :121)
cbde.store %_encoderOptions, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :121)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :158)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :158)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :225)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :225)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :259)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :259)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :302)
cbde.store %_binding, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :302)
%8 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :326)
cbde.store %_wsdlFileOptions, %8 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :326)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :366)
cbde.store %_indentXml, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :366)
%10 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :389)
cbde.store %_omitXmlDeclaration, %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :66 :389)
br ^0

^0: // JumpBlock
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :69 :17) // new SoapOptions     {      Binding = binding,      CaseInsensitivePath = caseInsensitivePath,      EncoderOptions = encoderOptions,      Path = path,      ServiceType = type,      SoapSerializer = serializer,      SoapModelBounder = soapModelBounder,      WsdlFileOptions = wsdlFileOptions,      IndentXml = indentXml,      OmitXmlDeclaration = omitXmlDeclaration     } (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :71 :14) // Not a variable of known type: binding
%13 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :72 :26)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :73 :21) // Not a variable of known type: encoderOptions
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :74 :11) // Not a variable of known type: path
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :75 :18) // Not a variable of known type: type
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :76 :21) // Not a variable of known type: serializer
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :77 :23) // Not a variable of known type: soapModelBounder
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :78 :22) // Not a variable of known type: wsdlFileOptions
%20 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :79 :16)
%21 = cbde.load %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :80 :25)
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :82 :10) // Not a variable of known type: builder
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :82 :67) // Not a variable of known type: options
%25 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :82 :10) // builder.UseMiddleware<SoapEndpointMiddleware<T_MESSAGE>>(options) (InvocationExpression)
return %25 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :82 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$Microsoft.AspNetCore.Builder.IApplicationBuilder.System.Type.string.System.ServiceModel.Channels.Binding.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :2) {
^entry (%_builder : none, %_type : none, %_path : none, %_binding : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :52)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :52)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :86)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :86)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :97)
cbde.store %_path, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :97)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :110)
cbde.store %_binding, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :110)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :127)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :127)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :194)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :194)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :228)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :228)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :271)
cbde.store %_wsdlFileOptions, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :271)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :311)
cbde.store %_indentXml, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :311)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :334)
cbde.store %_omitXmlDeclaration, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :85 :334)
br ^0

^0: // JumpBlock
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :10) // Not a variable of known type: builder
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :49) // Not a variable of known type: type
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :55) // Not a variable of known type: path
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :61) // Not a variable of known type: binding
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :70) // Not a variable of known type: serializer
%15 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :82)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :103) // Not a variable of known type: soapModelBounder
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :121) // Not a variable of known type: wsdlFileOptions
%18 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :138)
%19 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :149)
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :10) // builder.UseSoapEndpoint<CustomMessage>(type, path, binding, serializer, caseInsensitivePath, soapModelBounder, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %20 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :87 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function UseSoapEndpoint(none, none, none, none, none, i1, none, none, i1, i1), it contains poisonous unsupported syntaxes

func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T$$Microsoft.AspNetCore.Builder.IApplicationBuilder.System.Action$SoapCore.SoapCoreOptions$$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :117 :2) {
^entry (%_builder : none, %_options : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :117 :55)
cbde.store %_builder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :117 :55)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :117 :89)
cbde.store %_options, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :117 :89)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :119 :10) // Not a variable of known type: builder
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :119 :52) // Not a variable of known type: options
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :119 :10) // builder.UseSoapEndpoint<T, CustomMessage>(options) (InvocationExpression)
return %4 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :119 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function UseSoapEndpoint(none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.string.SoapCore.SoapEncoderOptions.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :2) {
^entry (%_routes : none, %_path : none, %_encoder : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :62)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :62)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :97)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :97)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :110)
cbde.store %_encoder, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :110)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :138)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :138)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :205)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :205)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :239)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :239)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :282)
cbde.store %_wsdlFileOptions, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :282)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :322)
cbde.store %_indentXml, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :322)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :345)
cbde.store %_omitXmlDeclaration, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :161 :345)
br ^0

^0: // JumpBlock
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :10) // Not a variable of known type: routes
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :33) // typeof(T) (TypeOfExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :44) // Not a variable of known type: path
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :50) // new[] { encoder } (ImplicitArrayCreationExpression)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :58) // Not a variable of known type: encoder
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :69) // Not a variable of known type: serializer
%15 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :81)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :102) // Not a variable of known type: soapModelBounder
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :120) // null (NullLiteralExpression)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :126) // Not a variable of known type: wsdlFileOptions
%19 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :143)
%20 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :154)
%21 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :10) // routes.UseSoapEndpoint(typeof(T), path, new[] { encoder }, serializer, caseInsensitivePath, soapModelBounder, null, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %21 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :163 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T.T_MESSAGE$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.string.SoapCore.SoapEncoderOptions.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :2) {
^entry (%_routes : none, %_path : none, %_encoder : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :73)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :73)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :108)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :108)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :121)
cbde.store %_encoder, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :121)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :149)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :149)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :216)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :216)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :250)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :250)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :293)
cbde.store %_wsdlFileOptions, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :293)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :333)
cbde.store %_indentXml, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :333)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :356)
cbde.store %_omitXmlDeclaration, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :166 :356)
br ^0

^0: // JumpBlock
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :10) // Not a variable of known type: routes
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :44) // typeof(T) (TypeOfExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :55) // Not a variable of known type: path
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :61) // new[] { encoder } (ImplicitArrayCreationExpression)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :69) // Not a variable of known type: encoder
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :80) // Not a variable of known type: serializer
%15 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :92)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :113) // Not a variable of known type: soapModelBounder
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :131) // null (NullLiteralExpression)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :137) // Not a variable of known type: wsdlFileOptions
%19 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :154)
%20 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :165)
%21 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :10) // routes.UseSoapEndpoint<T_MESSAGE>(typeof(T), path, new[] { encoder }, serializer, caseInsensitivePath, soapModelBounder, null, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %21 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :169 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.System.Type.string.SoapCore.SoapEncoderOptions.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.System.ServiceModel.Channels.Binding.bool.bool$(none, none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :2) {
^entry (%_routes : none, %_type : none, %_path : none, %_encoder : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_binding : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :59)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :59)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :94)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :94)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :105)
cbde.store %_path, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :105)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :118)
cbde.store %_encoder, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :118)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :146)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :146)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :213)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :213)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :247)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :247)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :290)
cbde.store %_binding, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :290)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :314)
cbde.store %_indentXml, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :314)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :337)
cbde.store %_omitXmlDeclaration, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :172 :337)
br ^0

^0: // JumpBlock
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :10) // Not a variable of known type: routes
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :33) // Not a variable of known type: type
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :39) // Not a variable of known type: path
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :45) // new[] { encoder } (ImplicitArrayCreationExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :53) // Not a variable of known type: encoder
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :64) // Not a variable of known type: serializer
%16 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :76)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :97) // Not a variable of known type: soapModelBounder
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :115) // Not a variable of known type: binding
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :124) // null (NullLiteralExpression)
%20 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :130)
%21 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :141)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :10) // routes.UseSoapEndpoint(type, path, new[] { encoder }, serializer, caseInsensitivePath, soapModelBounder, binding, null, indentXml, omitXmlDeclaration) (InvocationExpression)
return %22 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :174 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T_MESSAGE$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.System.Type.string.SoapCore.SoapEncoderOptions.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.System.ServiceModel.Channels.Binding.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, none, i1, none, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :2) {
^entry (%_routes : none, %_type : none, %_path : none, %_encoder : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_binding : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :70)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :70)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :105)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :105)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :116)
cbde.store %_path, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :116)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :129)
cbde.store %_encoder, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :129)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :157)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :157)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :224)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :224)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :258)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :258)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :301)
cbde.store %_binding, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :301)
%8 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :325)
cbde.store %_wsdlFileOptions, %8 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :325)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :365)
cbde.store %_indentXml, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :365)
%10 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :388)
cbde.store %_omitXmlDeclaration, %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :177 :388)
br ^0

^0: // JumpBlock
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :10) // Not a variable of known type: routes
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :44) // Not a variable of known type: type
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :50) // Not a variable of known type: path
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :56) // new[] { encoder } (ImplicitArrayCreationExpression)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :64) // Not a variable of known type: encoder
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :75) // Not a variable of known type: serializer
%17 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :87)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :108) // Not a variable of known type: soapModelBounder
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :126) // Not a variable of known type: binding
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :135) // Not a variable of known type: wsdlFileOptions
%21 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :152)
%22 = cbde.load %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :163)
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :10) // routes.UseSoapEndpoint<T_MESSAGE>(type, path, new[] { encoder }, serializer, caseInsensitivePath, soapModelBounder, binding, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %23 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :180 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.string.System.ServiceModel.Channels.Binding.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :2) {
^entry (%_routes : none, %_path : none, %_binding : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :62)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :62)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :97)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :97)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :110)
cbde.store %_binding, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :110)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :127)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :127)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :194)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :194)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :228)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :228)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :271)
cbde.store %_wsdlFileOptions, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :271)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :311)
cbde.store %_indentXml, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :311)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :334)
cbde.store %_omitXmlDeclaration, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :183 :334)
br ^0

^0: // JumpBlock
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :10) // Not a variable of known type: routes
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :33) // typeof(T) (TypeOfExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :44) // Not a variable of known type: path
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :50) // Not a variable of known type: binding
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :59) // Not a variable of known type: serializer
%14 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :71)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :92) // Not a variable of known type: soapModelBounder
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :127) // Not a variable of known type: wsdlFileOptions
%17 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :155)
%18 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :186)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :10) // routes.UseSoapEndpoint(typeof(T), path, binding, serializer, caseInsensitivePath, soapModelBounder, wsdlFileOptions: wsdlFileOptions, indentXml: indentXml, omitXmlDeclaration: omitXmlDeclaration) (InvocationExpression)
return %19 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :185 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T.T_MESSAGE$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.string.System.ServiceModel.Channels.Binding.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.bool.bool$(none, none, none, none, i1, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :2) {
^entry (%_routes : none, %_path : none, %_binding : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :73)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :73)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :108)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :108)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :121)
cbde.store %_binding, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :121)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :138)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :138)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :205)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :205)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :239)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :239)
%6 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :282)
cbde.store %_indentXml, %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :282)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :305)
cbde.store %_omitXmlDeclaration, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :188 :305)
br ^0

^0: // JumpBlock
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :10) // Not a variable of known type: routes
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :44) // typeof(T) (TypeOfExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :55) // Not a variable of known type: path
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :61) // Not a variable of known type: binding
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :70) // Not a variable of known type: serializer
%13 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :82)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :103) // Not a variable of known type: soapModelBounder
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :121) // null (NullLiteralExpression)
%16 = cbde.load %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :127)
%17 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :138)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :10) // routes.UseSoapEndpoint<T_MESSAGE>(typeof(T), path, binding, serializer, caseInsensitivePath, soapModelBounder, null, indentXml, omitXmlDeclaration) (InvocationExpression)
return %18 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :191 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.string.SoapCore.SoapEncoderOptions$$.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :2) {
^entry (%_routes : none, %_path : none, %_encoders : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :62)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :62)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :97)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :97)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :110)
cbde.store %_encoders, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :110)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :141)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :141)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :208)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :208)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :242)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :242)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :285)
cbde.store %_wsdlFileOptions, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :285)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :325)
cbde.store %_indentXml, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :325)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :348)
cbde.store %_omitXmlDeclaration, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :194 :348)
br ^0

^0: // JumpBlock
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :10) // Not a variable of known type: routes
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :33) // typeof(T) (TypeOfExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :44) // Not a variable of known type: path
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :50) // Not a variable of known type: encoders
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :60) // Not a variable of known type: serializer
%14 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :72)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :93) // Not a variable of known type: soapModelBounder
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :111) // null (NullLiteralExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :117) // Not a variable of known type: wsdlFileOptions
%18 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :134)
%19 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :145)
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :10) // routes.UseSoapEndpoint(typeof(T), path, encoders, serializer, caseInsensitivePath, soapModelBounder, null, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %20 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :196 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T.T_MESSAGE$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.string.SoapCore.SoapEncoderOptions$$.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.bool.bool$(none, none, none, none, i1, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :2) {
^entry (%_routes : none, %_path : none, %_encoders : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :73)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :73)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :108)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :108)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :121)
cbde.store %_encoders, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :121)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :152)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :152)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :219)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :219)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :253)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :253)
%6 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :296)
cbde.store %_indentXml, %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :296)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :319)
cbde.store %_omitXmlDeclaration, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :199 :319)
br ^0

^0: // JumpBlock
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :10) // Not a variable of known type: routes
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :44) // typeof(T) (TypeOfExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :55) // Not a variable of known type: path
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :61) // Not a variable of known type: encoders
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :71) // Not a variable of known type: serializer
%13 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :83)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :104) // Not a variable of known type: soapModelBounder
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :122) // null (NullLiteralExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :128) // null (NullLiteralExpression)
%17 = cbde.load %6 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :134)
%18 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :145)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :10) // routes.UseSoapEndpoint<T_MESSAGE>(typeof(T), path, encoders, serializer, caseInsensitivePath, soapModelBounder, null, null, indentXml, omitXmlDeclaration) (InvocationExpression)
return %19 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :202 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T.T_MESSAGE$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.string.SoapCore.SoapEncoderOptions$$.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :2) {
^entry (%_routes : none, %_path : none, %_encoders : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :73)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :73)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :108)
cbde.store %_path, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :108)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :121)
cbde.store %_encoders, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :121)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :152)
cbde.store %_serializer, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :152)
%4 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :219)
cbde.store %_caseInsensitivePath, %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :219)
%5 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :253)
cbde.store %_soapModelBounder, %5 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :253)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :296)
cbde.store %_wsdlFileOptions, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :296)
%7 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :336)
cbde.store %_indentXml, %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :336)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :359)
cbde.store %_omitXmlDeclaration, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :205 :359)
br ^0

^0: // JumpBlock
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :10) // Not a variable of known type: routes
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :44) // typeof(T) (TypeOfExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :55) // Not a variable of known type: path
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :61) // Not a variable of known type: encoders
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :71) // Not a variable of known type: serializer
%14 = cbde.load %4 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :83)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :104) // Not a variable of known type: soapModelBounder
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :122) // null (NullLiteralExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :128) // Not a variable of known type: wsdlFileOptions
%18 = cbde.load %7 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :145)
%19 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :156)
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :10) // routes.UseSoapEndpoint<T_MESSAGE>(typeof(T), path, encoders, serializer, caseInsensitivePath, soapModelBounder, null, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %20 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :208 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T_MESSAGE$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.System.Type.string.SoapCore.SoapEncoderOptions$$.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.System.ServiceModel.Channels.Binding.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, none, i1, none, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :2) {
^entry (%_routes : none, %_type : none, %_pattern : none, %_encoders : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_binding : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :70)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :70)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :105)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :105)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :116)
cbde.store %_pattern, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :116)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :132)
cbde.store %_encoders, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :132)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :163)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :163)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :230)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :230)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :264)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :264)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :307)
cbde.store %_binding, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :307)
%8 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :331)
cbde.store %_wsdlFileOptions, %8 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :331)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :371)
cbde.store %_indentXml, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :371)
%10 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :394)
cbde.store %_omitXmlDeclaration, %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :211 :394)
br ^0

^0: // JumpBlock
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :214 :17) // new SoapOptions     {      Binding = binding,      CaseInsensitivePath = caseInsensitivePath,      EncoderOptions = encoders,      Path = pattern,      ServiceType = type,      SoapSerializer = serializer,      SoapModelBounder = soapModelBounder,      WsdlFileOptions = wsdlFileOptions,      IndentXml = indentXml,      OmitXmlDeclaration = omitXmlDeclaration     } (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :216 :14) // Not a variable of known type: binding
%13 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :217 :26)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :218 :21) // Not a variable of known type: encoders
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :219 :11) // Not a variable of known type: pattern
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :220 :18) // Not a variable of known type: type
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :221 :21) // Not a variable of known type: serializer
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :222 :23) // Not a variable of known type: soapModelBounder
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :223 :22) // Not a variable of known type: wsdlFileOptions
%20 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :224 :16)
%21 = cbde.load %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :225 :25)
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :228 :18) // Not a variable of known type: routes
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :228 :18) // routes      .CreateApplicationBuilder() (InvocationExpression)
%25 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :230 :54) // Not a variable of known type: options
%26 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :228 :18) // routes      .CreateApplicationBuilder()      .UseMiddleware<SoapEndpointMiddleware<T_MESSAGE>>(options) (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :228 :18) // routes      .CreateApplicationBuilder()      .UseMiddleware<SoapEndpointMiddleware<T_MESSAGE>>(options)      .Build() (InvocationExpression)
%29 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :233 :10) // Not a variable of known type: routes
%30 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :233 :21) // Not a variable of known type: pattern
%31 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :233 :30) // Not a variable of known type: pipeline
%32 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :233 :10) // routes.Map(pattern, pipeline) (InvocationExpression)
%33 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :234 :21) // "SoapCore" (StringLiteralExpression)
%34 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :233 :10) // routes.Map(pattern, pipeline)      .WithDisplayName("SoapCore") (InvocationExpression)
return %34 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :233 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.System.Type.string.SoapCore.SoapEncoderOptions$$.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.System.ServiceModel.Channels.Binding.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, none, i1, none, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :2) {
^entry (%_routes : none, %_type : none, %_pattern : none, %_encoders : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_binding : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :59)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :59)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :94)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :94)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :105)
cbde.store %_pattern, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :105)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :121)
cbde.store %_encoders, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :121)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :152)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :152)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :219)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :219)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :253)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :253)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :296)
cbde.store %_binding, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :296)
%8 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :320)
cbde.store %_wsdlFileOptions, %8 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :320)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :360)
cbde.store %_indentXml, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :360)
%10 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :383)
cbde.store %_omitXmlDeclaration, %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :237 :383)
br ^0

^0: // JumpBlock
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :41) // Not a variable of known type: routes
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :49) // Not a variable of known type: type
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :55) // Not a variable of known type: pattern
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :64) // Not a variable of known type: encoders
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :74) // Not a variable of known type: serializer
%16 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :86)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :107) // Not a variable of known type: soapModelBounder
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :125) // Not a variable of known type: binding
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :134) // Not a variable of known type: wsdlFileOptions
%20 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :151)
%21 = cbde.load %10 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :162)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :10) // UseSoapEndpoint<CustomMessage>(routes, type, pattern, encoders, serializer, caseInsensitivePath, soapModelBounder, binding, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %22 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :239 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function UseSoapEndpoint(none, none, none, none, none, i1, none, none, i1, i1), it contains poisonous unsupported syntaxes

func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.System.Type.string.System.ServiceModel.Channels.Binding.SoapCore.SoapSerializer.bool.SoapCore.Extensibility.ISoapModelBounder.SoapCore.WsdlFileOptions.bool.bool$(none, none, none, none, none, i1, none, none, i1, i1) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :2) {
^entry (%_routes : none, %_type : none, %_path : none, %_binding : none, %_serializer : none, %_caseInsensitivePath : i1, %_soapModelBounder : none, %_wsdlFileOptions : none, %_indentXml : i1, %_omitXmlDeclaration : i1):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :59)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :59)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :94)
cbde.store %_type, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :94)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :105)
cbde.store %_path, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :105)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :118)
cbde.store %_binding, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :118)
%4 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :135)
cbde.store %_serializer, %4 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :135)
%5 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :202)
cbde.store %_caseInsensitivePath, %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :202)
%6 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :236)
cbde.store %_soapModelBounder, %6 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :236)
%7 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :279)
cbde.store %_wsdlFileOptions, %7 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :279)
%8 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :319)
cbde.store %_indentXml, %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :319)
%9 = cbde.alloca i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :342)
cbde.store %_omitXmlDeclaration, %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :269 :342)
br ^0

^0: // JumpBlock
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :41) // Not a variable of known type: routes
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :49) // Not a variable of known type: type
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :55) // Not a variable of known type: path
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :61) // Not a variable of known type: binding
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :70) // Not a variable of known type: serializer
%15 = cbde.load %5 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :82)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :103) // Not a variable of known type: soapModelBounder
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :121) // Not a variable of known type: wsdlFileOptions
%18 = cbde.load %8 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :138)
%19 = cbde.load %9 : memref<i1> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :149)
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :10) // UseSoapEndpoint<CustomMessage>(routes, type, path, binding, serializer, caseInsensitivePath, soapModelBounder, wsdlFileOptions, indentXml, omitXmlDeclaration) (InvocationExpression)
return %20 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :271 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.System.Type.System.Action$SoapCore.SoapCoreOptions$$(none, none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :274 :2) {
^entry (%_routes : none, %_serviceType : none, %_options : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :274 :59)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :274 :59)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :274 :94)
cbde.store %_serviceType, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :274 :94)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :274 :112)
cbde.store %_options, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :274 :112)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :276 :10) // Not a variable of known type: routes
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :276 :48) // Not a variable of known type: serviceType
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :276 :61) // Not a variable of known type: options
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :276 :10) // routes.UseSoapEndpoint<CustomMessage>(serviceType, options) (InvocationExpression)
return %6 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :276 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T.T_MESSAGE$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.System.Action$SoapCore.SoapCoreOptions$$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :279 :2) {
^entry (%_routes : none, %_options : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :279 :73)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :279 :73)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :279 :108)
cbde.store %_options, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :279 :108)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :282 :10) // Not a variable of known type: routes
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :282 :44) // typeof(T) (TypeOfExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :282 :55) // Not a variable of known type: options
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :282 :10) // routes.UseSoapEndpoint<T_MESSAGE>(typeof(T), options) (InvocationExpression)
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :282 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function UseSoapEndpoint(none, none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.SoapEndpointExtensions.UseSoapEndpoint$T$$Microsoft.AspNetCore.Routing.IEndpointRouteBuilder.System.Action$SoapCore.SoapCoreOptions$$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :329 :2) {
^entry (%_routes : none, %_options : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :329 :62)
cbde.store %_routes, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :329 :62)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :329 :97)
cbde.store %_options, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :329 :97)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :331 :44) // Not a variable of known type: routes
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :331 :52) // Not a variable of known type: options
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :331 :10) // UseSoapEndpoint<T, CustomMessage>(routes, options) (InvocationExpression)
return %4 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :331 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapCore$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :335 :2) {
^entry (%_serviceCollection : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :335 :47)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :335 :47)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :337 :3) // Not a variable of known type: serviceCollection
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :337 :3) // serviceCollection.TryAddSingleton<IOperationInvoker, DefaultOperationInvoker>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :338 :3) // Not a variable of known type: serviceCollection
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :338 :3) // serviceCollection.TryAddSingleton<IFaultExceptionTransformer, DefaultFaultExceptionTransformer<CustomMessage>>() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :340 :10) // Not a variable of known type: serviceCollection
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :340 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapCore$T_MESSAGE$$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :343 :2) {
^entry (%_serviceCollection : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :343 :58)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :343 :58)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :346 :3) // Not a variable of known type: serviceCollection
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :346 :3) // serviceCollection.TryAddSingleton<IOperationInvoker, DefaultOperationInvoker>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :347 :3) // Not a variable of known type: serviceCollection
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :347 :3) // serviceCollection.TryAddSingleton<IFaultExceptionTransformer, DefaultFaultExceptionTransformer<T_MESSAGE>>() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :349 :10) // Not a variable of known type: serviceCollection
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :349 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapExceptionTransformer$Microsoft.Extensions.DependencyInjection.IServiceCollection.System.Func$System.Exception.string$$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :352 :2) {
^entry (%_serviceCollection : none, %_transformer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :352 :63)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :352 :63)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :352 :106)
cbde.store %_transformer, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :352 :106)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :354 :3) // Not a variable of known type: serviceCollection
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :354 :62) // Not a variable of known type: transformer
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :354 :37) // new ExceptionTransformer(transformer) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :354 :3) // serviceCollection.TryAddSingleton(new ExceptionTransformer(transformer)) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :355 :10) // Not a variable of known type: serviceCollection
return %6 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :355 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapMessageInspector$Microsoft.Extensions.DependencyInjection.IServiceCollection.SoapCore.Extensibility.IMessageInspector$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :358 :2) {
^entry (%_serviceCollection : none, %_messageInspector : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :358 :59)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :358 :59)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :358 :102)
cbde.store %_messageInspector, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :358 :102)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :360 :3) // Not a variable of known type: serviceCollection
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :360 :37) // Not a variable of known type: messageInspector
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :360 :3) // serviceCollection.TryAddSingleton(messageInspector) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :361 :10) // Not a variable of known type: serviceCollection
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :361 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapMessageInspector$TService$$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :364 :2) {
^entry (%_serviceCollection : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :364 :69)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :364 :69)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :367 :3) // Not a variable of known type: serviceCollection
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :367 :3) // serviceCollection.AddScoped<IMessageInspector2, TService>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :368 :10) // Not a variable of known type: serviceCollection
return %3 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :368 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapMessageInspector$Microsoft.Extensions.DependencyInjection.IServiceCollection.SoapCore.Extensibility.IMessageInspector2$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :371 :2) {
^entry (%_serviceCollection : none, %_messageInspector : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :371 :59)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :371 :59)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :371 :102)
cbde.store %_messageInspector, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :371 :102)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :373 :3) // Not a variable of known type: serviceCollection
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :373 :34) // Not a variable of known type: messageInspector
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :373 :3) // serviceCollection.AddSingleton(messageInspector) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :374 :10) // Not a variable of known type: serviceCollection
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :374 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapMessageFilter$Microsoft.Extensions.DependencyInjection.IServiceCollection.SoapCore.Extensibility.IMessageFilter$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :377 :2) {
^entry (%_serviceCollection : none, %_messageFilter : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :377 :56)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :377 :56)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :377 :99)
cbde.store %_messageFilter, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :377 :99)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :379 :3) // Not a variable of known type: serviceCollection
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :379 :37) // Not a variable of known type: messageFilter
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :379 :3) // serviceCollection.TryAddSingleton(messageFilter) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :380 :10) // Not a variable of known type: serviceCollection
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :380 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapWsSecurityFilter$Microsoft.Extensions.DependencyInjection.IServiceCollection.string.string$(none, none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :383 :2) {
^entry (%_serviceCollection : none, %_username : none, %_password : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :383 :59)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :383 :59)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :383 :102)
cbde.store %_username, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :383 :102)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :383 :119)
cbde.store %_password, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :383 :119)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :385 :3) // Not a variable of known type: serviceCollection
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :385 :62) // Not a variable of known type: username
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :385 :72) // Not a variable of known type: password
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :385 :42) // new WsMessageFilter(username, password) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :385 :3) // serviceCollection.AddSoapMessageFilter(new WsMessageFilter(username, password)) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :386 :10) // Not a variable of known type: serviceCollection
return %8 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :386 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapModelBindingFilter$Microsoft.Extensions.DependencyInjection.IServiceCollection.SoapCore.Extensibility.IModelBindingFilter$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :389 :2) {
^entry (%_serviceCollection : none, %_modelBindingFilter : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :389 :61)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :389 :61)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :389 :104)
cbde.store %_modelBindingFilter, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :389 :104)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :391 :3) // Not a variable of known type: serviceCollection
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :391 :37) // Not a variable of known type: modelBindingFilter
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :391 :3) // serviceCollection.TryAddSingleton(modelBindingFilter) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :392 :10) // Not a variable of known type: serviceCollection
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :392 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapServiceOperationTuner$TService$$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :395 :2) {
^entry (%_serviceCollection : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :395 :74)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :395 :74)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :398 :3) // Not a variable of known type: serviceCollection
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :398 :3) // serviceCollection.AddScoped<IServiceOperationTuner, TService>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :399 :10) // Not a variable of known type: serviceCollection
return %3 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :399 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointExtensions.AddSoapServiceOperationTuner$Microsoft.Extensions.DependencyInjection.IServiceCollection.SoapCore.Extensibility.IServiceOperationTuner$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :402 :2) {
^entry (%_serviceCollection : none, %_serviceOperationTuner : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :402 :64)
cbde.store %_serviceCollection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :402 :64)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :402 :107)
cbde.store %_serviceOperationTuner, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :402 :107)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :404 :3) // Not a variable of known type: serviceCollection
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :404 :37) // Not a variable of known type: serviceOperationTuner
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :404 :3) // serviceCollection.TryAddSingleton(serviceOperationTuner) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :405 :10) // Not a variable of known type: serviceCollection
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointExtensions.cs" :405 :3)

^1: // ExitBlock
cbde.unreachable

}
