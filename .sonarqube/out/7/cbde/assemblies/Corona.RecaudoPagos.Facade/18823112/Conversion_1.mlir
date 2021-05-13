// Skipping function ConvertirObjetoClienteToDTOCliente(none), it contains poisonous unsupported syntaxes

// Skipping function ConvertirObjetoConsultaToDTOGeneral(none), it contains poisonous unsupported syntaxes

func @_Corona.RecaudoPagos.Facade.Conversiones.Conversion.ConvertirDTOSalidaToObjetoConsulta$Corona.RecaudoPagos.DT.General.DTOObjetoGeneralSalida$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :72 :8) {
^entry (%_ObjetoSalida : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :72 :58)
cbde.store %_ObjetoSalida, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :72 :58)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :74 :32) // new @return              {                  codigoRespuestaConsulta = ObjetoSalida.CodigoError.PadLeft(4, '0'),                  estadoFactura = ObjetoSalida.Estado,                  fechaVencimiento = ObjetoSalida.FechaVencimiento,                  indicadorFacturaValida = ObjetoSalida.EstadoOperacion.ToString(),                  mensajeRespuestaConsulta = ObjetoSalida.DescripcionError              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :76 :42) // Not a variable of known type: ObjetoSalida
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :76 :42) // ObjetoSalida.CodigoError (SimpleMemberAccessExpression)
%4 = constant 4 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :76 :75)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :76 :78) // '0' (CharacterLiteralExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :76 :42) // ObjetoSalida.CodigoError.PadLeft(4, '0') (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :77 :32) // Not a variable of known type: ObjetoSalida
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :77 :32) // ObjetoSalida.Estado (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :78 :35) // Not a variable of known type: ObjetoSalida
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :78 :35) // ObjetoSalida.FechaVencimiento (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :79 :41) // Not a variable of known type: ObjetoSalida
%12 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :79 :41) // ObjetoSalida.EstadoOperacion (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :79 :41) // ObjetoSalida.EstadoOperacion.ToString() (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :80 :43) // Not a variable of known type: ObjetoSalida
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :80 :43) // ObjetoSalida.DescripcionError (SimpleMemberAccessExpression)
%17 = constant 0 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :83 :28)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :84 :16) // Not a variable of known type: ObjetoSalida
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :84 :16) // ObjetoSalida.ValorFactura (SimpleMemberAccessExpression)
%21 = constant 0 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :84 :45)
%22 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :84 :16) // comparison of unknown type: ObjetoSalida.ValorFactura != 0
cond_br %22, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :84 :16)

^1: // SimpleBlock
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :86 :24) // decimal (PredefinedType)
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :86 :38) // Not a variable of known type: ObjetoSalida
%25 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :86 :38) // ObjetoSalida.ValorFactura (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :86 :38) // ObjetoSalida.ValorFactura.ToString() (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :86 :24) // decimal.Parse(ObjetoSalida.ValorFactura.ToString()) (InvocationExpression)
br ^2

^2: // JumpBlock
%28 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :89 :27) // string (PredefinedType)
%29 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :89 :41) // "{0:0.00}" (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :89 :53) // Not a variable of known type: saldo
%31 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :89 :27) // string.Format("{0:0.00}", saldo) (InvocationExpression)
%33 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :90 :12) // Not a variable of known type: dtoReturn
%34 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :90 :12) // dtoReturn.valorFactura (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :90 :38) // Not a variable of known type: curSaldo
%36 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :90 :37) // (curSaldo).ToString() (InvocationExpression)
%37 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :90 :67) // ',' (CharacterLiteralExpression)
%38 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :90 :72) // '.' (CharacterLiteralExpression)
%39 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :90 :37) // (curSaldo).ToString().Replace(',', '.') (InvocationExpression)
%40 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :92 :19) // Not a variable of known type: dtoReturn
return %40 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :92 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function ConvertirObjetoRecaudoToDTOGeneral(none), it contains poisonous unsupported syntaxes

func @_Corona.RecaudoPagos.Facade.Conversiones.Conversion.ConvertirDTOSalidaToObjetoPago$Corona.RecaudoPagos.DT.General.DTOObjetoGeneralSalida$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :188 :8) {
^entry (%_ObjetoSalida : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :188 :54)
cbde.store %_ObjetoSalida, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :188 :54)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :190 :32) // new @return              {                  codigoRespuestaNotificacion = ObjetoSalida.CodigoError,                  estadoFactura = ObjetoSalida.Estado,                  fechaVencimiento = ObjetoSalida.FechaVencimiento,                  indicadorNotificacionPago = ObjetoSalida.EstadoOperacion.ToString(),                  mensajeRespuestaNotificacion = ObjetoSalida.DescripcionError,                  valorFactura = ObjetoSalida.ValorFactura.ToString()              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :192 :46) // Not a variable of known type: ObjetoSalida
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :192 :46) // ObjetoSalida.CodigoError (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :193 :32) // Not a variable of known type: ObjetoSalida
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :193 :32) // ObjetoSalida.Estado (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :194 :35) // Not a variable of known type: ObjetoSalida
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :194 :35) // ObjetoSalida.FechaVencimiento (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :195 :44) // Not a variable of known type: ObjetoSalida
%9 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :195 :44) // ObjetoSalida.EstadoOperacion (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :195 :44) // ObjetoSalida.EstadoOperacion.ToString() (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :196 :47) // Not a variable of known type: ObjetoSalida
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :196 :47) // ObjetoSalida.DescripcionError (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :197 :31) // Not a variable of known type: ObjetoSalida
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :197 :31) // ObjetoSalida.ValorFactura (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :197 :31) // ObjetoSalida.ValorFactura.ToString() (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :199 :19) // Not a variable of known type: dtoReturn
return %17 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.Facade\\Conversiones\\Conversion.cs" :199 :12)

^1: // ExitBlock
cbde.unreachable

}
