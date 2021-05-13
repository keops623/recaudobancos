// Skipping function Invoke(none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.SoapEndpointMiddleware$T_MESSAGE$.WriteMessageAsync$SoapCore.MessageEncoder.SoapMessageEncoder.System.ServiceModel.Channels.Message.Microsoft.AspNetCore.Http.HttpContext$(none, none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :180 :2) {
^entry (%_messageEncoder : none, %_responseMessage : none, %_httpContext : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :180 :40)
cbde.store %_messageEncoder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :180 :40)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :180 :75)
cbde.store %_responseMessage, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :180 :75)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :180 :100)
cbde.store %_httpContext, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :180 :100)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :182 :10) // Not a variable of known type: messageEncoder
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :182 :43) // Not a variable of known type: responseMessage
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :182 :60) // Not a variable of known type: httpContext
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :182 :60) // httpContext.Response (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :182 :60) // httpContext.Response.BodyWriter (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :182 :10) // messageEncoder.WriteMessageAsync(responseMessage, httpContext.Response.BodyWriter) (InvocationExpression)
return %8 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :182 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointMiddleware$T_MESSAGE$.ReadMessageAsync$Microsoft.AspNetCore.Http.HttpContext.SoapCore.MessageEncoder.SoapMessageEncoder$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :185 :2) {
^entry (%_httpContext : none, %_messageEncoder : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :185 :48)
cbde.store %_httpContext, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :185 :48)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :185 :73)
cbde.store %_messageEncoder, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :185 :73)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :10) // Not a variable of known type: messageEncoder
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :42) // Not a variable of known type: httpContext
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :42) // httpContext.Request (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :42) // httpContext.Request.BodyReader (SimpleMemberAccessExpression)
%6 = constant 65536 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :74)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :83) // Not a variable of known type: httpContext
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :83) // httpContext.Request (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :83) // httpContext.Request.ContentType (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :10) // messageEncoder.ReadMessageAsync(httpContext.Request.BodyReader, 0x10000, httpContext.Request.ContentType) (InvocationExpression)
return %10 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :187 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ProcessMeta(none), it contains poisonous unsupported syntaxes

// Skipping function ProcessOperation(none, none), it contains poisonous unsupported syntaxes

// Skipping function CreateResponseMessage(none, none, none, none, none, none), it contains poisonous unsupported syntaxes

// Skipping function ExecuteFiltersAndTune(none, none, none, none, none), it contains poisonous unsupported syntaxes

// Skipping function SetMessageHeadersToProperty(none, none), it contains poisonous unsupported syntaxes

// Skipping function GetRequestArguments(none, none, none, none), it contains poisonous unsupported syntaxes

// Skipping function WriteErrorResponseMessage(none, i32, none, none, none, none), it contains poisonous unsupported syntaxes

// Skipping function SetHttpResponse(none, none), it contains poisonous unsupported syntaxes

// Skipping function ProcessXSD(none), it contains poisonous unsupported syntaxes

// Skipping function ProcessMetaFromFile(none), it contains poisonous unsupported syntaxes

