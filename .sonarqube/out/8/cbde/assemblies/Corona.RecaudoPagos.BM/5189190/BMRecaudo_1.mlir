// Skipping function RealizarRecaudo(none, none), it contains poisonous unsupported syntaxes

// Skipping function ValidarDatosRequeridos(none), it contains poisonous unsupported syntaxes

// Skipping function RegistrarRecaudo(none), it contains poisonous unsupported syntaxes

func @_Corona.RecaudoPagos.BM.Recaudo.BMRecaudo.ValidaPagoDuplicado$Corona.RecaudoPagos.DT.General.DTOObjetoGeneral$(none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Recaudo\\BMRecaudo.cs" :245 :8) {
^entry (%_objDatos : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Recaudo\\BMRecaudo.cs" :245 :40)
cbde.store %_objDatos, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Recaudo\\BMRecaudo.cs" :245 :40)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Recaudo\\BMRecaudo.cs" :247 :19) // new DMRecaudo() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Recaudo\\BMRecaudo.cs" :247 :55) // Not a variable of known type: objDatos
%3 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Recaudo\\BMRecaudo.cs" :247 :19) // new DMRecaudo().ValidaPagoDuplicado(objDatos) (InvocationExpression)
return %3 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.BM\\Recaudo\\BMRecaudo.cs" :247 :12)

^1: // ExitBlock
cbde.unreachable

}
