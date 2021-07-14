func @_SoapCore.Extensibility.ExceptionTransformer.Transform$System.Exception$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Extensibility\\ExceptionTransformer.cs" :13 :2) {
^entry (%_ex : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Extensibility\\ExceptionTransformer.cs" :13 :26)
cbde.store %_ex, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Extensibility\\ExceptionTransformer.cs" :13 :26)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Extensibility\\ExceptionTransformer.cs" :15 :10) // Not a variable of known type: _transformer
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Extensibility\\ExceptionTransformer.cs" :15 :23) // Not a variable of known type: ex
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Extensibility\\ExceptionTransformer.cs" :15 :10) // _transformer(ex) (InvocationExpression)
return %3 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\Extensibility\\ExceptionTransformer.cs" :15 :3)

^1: // ExitBlock
cbde.unreachable

}
