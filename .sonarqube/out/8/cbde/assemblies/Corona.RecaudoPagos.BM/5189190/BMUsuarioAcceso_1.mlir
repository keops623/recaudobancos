func @_Corona.RecaudoPagos.BM.UsuarioAcceso.BMUsuarioAcceso.ConsultarUsuarioAcceso$string.string$(none, none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :12 :8) {
^entry (%_usuario : none, %_clave : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :12 :43)
cbde.store %_usuario, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :12 :43)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :12 :59)
cbde.store %_clave, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :12 :59)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :14 :19) // new DMUsuarioAcceso() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :14 :64) // Not a variable of known type: usuario
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :14 :73) // Not a variable of known type: clave
%5 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :14 :19) // new DMUsuarioAcceso().ConsultarUsuarioAcceso(usuario, clave) (InvocationExpression)
return %5 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\UsuarioAcceso\\BMUsuarioAcceso.cs" :14 :12)

^1: // ExitBlock
cbde.unreachable

}
