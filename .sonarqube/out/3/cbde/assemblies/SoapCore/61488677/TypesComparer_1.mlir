func @_SoapCore.TypesComparer.Equals$System.Type.System.Type$(none, none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :15 :2) {
^entry (%_x : none, %_y : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :15 :21)
cbde.store %_x, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :15 :21)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :15 :29)
cbde.store %_y, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :15 :29)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :17 :10) // Not a variable of known type: _getTypeNameFunc
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :17 :27) // Not a variable of known type: x
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :17 :10) // _getTypeNameFunc(x) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :17 :33) // Not a variable of known type: _getTypeNameFunc
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :17 :50) // Not a variable of known type: y
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :17 :33) // _getTypeNameFunc(y) (InvocationExpression)
%8 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :17 :10) // comparison of unknown type: _getTypeNameFunc(x) == _getTypeNameFunc(y)
return %8 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :17 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.TypesComparer.GetHashCode$System.Type$(none) -> i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :20 :2) {
^entry (%_obj : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :20 :25)
cbde.store %_obj, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :20 :25)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :22 :10) // Not a variable of known type: _getTypeNameFunc
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :22 :27) // Not a variable of known type: obj
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :22 :10) // _getTypeNameFunc(obj) (InvocationExpression)
%4 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :22 :10) // _getTypeNameFunc(obj).GetHashCode() (InvocationExpression)
return %4 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\TypesComparer.cs" :22 :3)

^1: // ExitBlock
cbde.unreachable

}
