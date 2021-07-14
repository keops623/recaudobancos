func @_SoapCore.TrailingServicePathTuner.ConvertPath$Microsoft.AspNetCore.Http.HttpContext$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :15 :2) {
^entry (%_httpContext : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :15 :34)
cbde.store %_httpContext, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :15 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :25) // Not a variable of known type: httpContext
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :25) // httpContext.Request (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :25) // httpContext.Request.Path (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :25) // httpContext.Request.Path.Value (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :66) // Not a variable of known type: httpContext
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :66) // httpContext.Request (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :66) // httpContext.Request.Path (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :66) // httpContext.Request.Path.Value (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :109) // '/' (CharacterLiteralExpression)
%10 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :66) // httpContext.Request.Path.Value.LastIndexOf('/') (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :17 :25) // httpContext.Request.Path.Value.Substring(httpContext.Request.Path.Value.LastIndexOf('/')) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :18 :3) // Not a variable of known type: httpContext
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :18 :3) // httpContext.Request (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :18 :3) // httpContext.Request.Path (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :18 :45) // Not a variable of known type: trailingPath
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TrailingServicePathTuner.cs" :18 :30) // new PathString(trailingPath) (ObjectCreationExpression)
br ^1

^1: // ExitBlock
return

}
