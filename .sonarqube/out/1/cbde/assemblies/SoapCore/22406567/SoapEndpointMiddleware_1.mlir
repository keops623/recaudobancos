// Skipping function Invoke(none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.SoapEndpointMiddleware$T_MESSAGE$.WriteMessageAsync$SoapCore.MessageEncoder.SoapMessageEncoder.System.ServiceModel.Channels.Message.Microsoft.AspNetCore.Http.HttpContext$(none, none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :168 :2) {
^entry (%_messageEncoder : none, %_responseMessage : none, %_httpContext : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :168 :40)
cbde.store %_messageEncoder, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :168 :40)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :168 :75)
cbde.store %_responseMessage, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :168 :75)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :168 :100)
cbde.store %_httpContext, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :168 :100)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :170 :10) // Not a variable of known type: messageEncoder
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :170 :43) // Not a variable of known type: responseMessage
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :170 :60) // Not a variable of known type: httpContext
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :170 :60) // httpContext.Response (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :170 :60) // httpContext.Response.Body (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :170 :10) // messageEncoder.WriteMessageAsync(responseMessage, httpContext.Response.Body) (InvocationExpression)
return %8 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :170 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.SoapEndpointMiddleware$T_MESSAGE$.ReadMessageAsync$Microsoft.AspNetCore.Http.HttpContext.SoapCore.MessageEncoder.SoapMessageEncoder$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :173 :2) {
^entry (%_httpContext : none, %_messageEncoder : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :173 :48)
cbde.store %_httpContext, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :173 :48)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :173 :73)
cbde.store %_messageEncoder, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :173 :73)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :10) // Not a variable of known type: messageEncoder
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :42) // Not a variable of known type: httpContext
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :42) // httpContext.Request (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :42) // httpContext.Request.Body (SimpleMemberAccessExpression)
%6 = constant 65536 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :68)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :77) // Not a variable of known type: httpContext
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :77) // httpContext.Request (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :77) // httpContext.Request.ContentType (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :10) // messageEncoder.ReadMessageAsync(httpContext.Request.Body, 0x10000, httpContext.Request.ContentType) (InvocationExpression)
return %10 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapEndpointMiddleware.cs" :175 :3)

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

