func @_Corona.RecaudoPagos.BM.Parametro.BMParametro.ConsultarSociedad$Corona.RecaudoPagos.DT.Entidades.DTOParametro$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Parametro\\BMParametro.cs" :12 :8) {
^entry (%_dtoParametro : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Parametro\\BMParametro.cs" :12 :40)
cbde.store %_dtoParametro, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Parametro\\BMParametro.cs" :12 :40)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Parametro\\BMParametro.cs" :14 :19) // new DMParametro() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Parametro\\BMParametro.cs" :14 :55) // Not a variable of known type: dtoParametro
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Parametro\\BMParametro.cs" :14 :19) // new DMParametro().ConsultarSociedad(dtoParametro) (InvocationExpression)
return %3 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Parametro\\BMParametro.cs" :14 :12)

^1: // ExitBlock
cbde.unreachable

}
