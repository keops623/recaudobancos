func @_Corona.RecaudoPagos.DT.Notificacion.DTOMensaje.ConsultarMensaje$int$(i32) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :99 :8) {
^entry (%_codigo : i32):
%0 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :99 :46)
cbde.store %_codigo, %0 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :99 :46)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMensaje
%1 = cbde.load %0 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :101 :30)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :101 :38) // Not a variable of known type: TipoMensaje
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :101 :38) // TipoMensaje.General (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :101 :59) // null (NullLiteralExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :101 :19) // GetMensaje(codigo, TipoMensaje.General, null) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :101 :19) // GetMensaje(codigo, TipoMensaje.General, null).Texto (SimpleMemberAccessExpression)
return %6 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :101 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Corona.RecaudoPagos.DT.Notificacion.DTOMensaje.GetMensaje$int$(i32) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :109 :8) {
^entry (%_codigo : i32):
%0 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :109 :44)
cbde.store %_codigo, %0 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :109 :44)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMensaje
%1 = cbde.load %0 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :111 :30)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :111 :38) // Not a variable of known type: TipoMensaje
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :111 :38) // TipoMensaje.General (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :111 :59) // null (NullLiteralExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :111 :19) // GetMensaje(codigo, TipoMensaje.General, null) (InvocationExpression)
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :111 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Corona.RecaudoPagos.DT.Notificacion.DTOMensaje.GetMensaje$int.paramsstring$$$(i32, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :114 :8) {
^entry (%_codigo : i32, %_parametros : none):
%0 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :114 :44)
cbde.store %_codigo, %0 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :114 :44)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :114 :56)
cbde.store %_parametros, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :114 :56)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMensaje
%2 = cbde.load %0 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :116 :30)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :116 :38) // Not a variable of known type: TipoMensaje
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :116 :38) // TipoMensaje.General (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :116 :59) // Not a variable of known type: parametros
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :116 :19) // GetMensaje(codigo, TipoMensaje.General, parametros) (InvocationExpression)
return %6 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :116 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetMensaje(i32, none, none), it contains poisonous unsupported syntaxes

func @_Corona.RecaudoPagos.DT.Notificacion.DTOMensaje.MensaesXML$$() -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :169 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :171 :45) // "<?xml version='1.0' encoding='utf-8'?><mensajes xmlns:xsi='http://www.w2.org/2001/XMLSchema-instance'> <Generales> <mensaje codigo='0' valor=''>Fallo Operación</mensaje> <mensaje codigo='1' valor=''>Datos incompletos {0}</mensaje> <mensaje codigo='2' valor=''>Error de autenticación</mensaje> <mensaje codigo='3' valor=''>Código banco erroneo</mensaje> <mensaje codigo='4' valor=''>Código banco no existe</mensaje> <mensaje codigo='5' valor=''>Número de orden requerido</mensaje> <mensaje codigo='6' valor=''>Número de orden erroneo</mensaje> <mensaje codigo='7' valor=''>Fecha de pago inválida</mensaje> <mensaje codigo='8' valor=''>Valor pagado supera el máximo permitido</mensaje> <mensaje codigo='9' valor=''>Sin Fechas de cobranza</mensaje> <mensaje codigo='10' valor=''>Número de cédula no existe Cédula: {0} Orden: {1}</mensaje> <mensaje codigo='11' valor=''>Error del sistema</mensaje> <mensaje codigo='12' valor=''>Ocurrió un error en el sistema</mensaje> <mensaje codigo='13' valor=''>Sesión cerrada con éxito</mensaje> <mensaje codigo='14' valor=''>Usuario o clave no coinciden</mensaje> <mensaje codigo='15' valor=''>Registro cancelado correctamente</mensaje> <mensaje codigo='16' valor=''>Registro pendiente de reprocesar</mensaje> <mensaje codigo='17' valor=''>No se encontraron registros</mensaje> </Generales> <Bancos> <Entidad Code='Davivienda'> <mensaje codigo='0' valor='0000' estado=''>Transacción exitosa</mensaje> <mensaje codigo='1' valor='0278' estado='03'>Referencia para pago no existe. Cliente no existe</mensaje> <mensaje codigo='2' valor='0278' estado='03'>Referencia para pago no existe</mensaje> <mensaje codigo='3' valor='2190' estado='03'>Referencia dos para pago no existe</mensaje> <mensaje codigo='4' valor='0424' estado='03'>Factura ya cancelada</mensaje> <mensaje codigo='5' valor='0423' estado='03'>Factura ya vencida</mensaje> <mensaje codigo='6' valor='1762' estado='03'>Valor factura diferente</mensaje> <mensaje codigo='7' valor='2192' estado='03'>Código IAC no habilitado en web service</mensaje> <mensaje codigo='8' valor='2077' estado='03'>Forma de pago inválida</mensaje> <mensaje codigo='9' valor='0422' estado='03'>Número de factura no existe</mensaje> <mensaje codigo='10' valor='2200' estado='03'>Error inesperado web service empresa</mensaje> <mensaje codigo='11' valor='7045' estado='03'>Valor transacción no permitido</mensaje> <mensaje codigo='12' valor='9999' estado='03'>Error autenticación WS</mensaje> </Entidad> <Entidad Code='Estandar'> <mensaje codigo='0' valor='0000' estado=''>Transacción exitosa</mensaje> <mensaje codigo='1' valor='0278' estado='03'>Referencia para pago no existe. Cliente no existe</mensaje> <mensaje codigo='2' valor='0278' estado='03'>Referencia para pago no existe</mensaje> <mensaje codigo='3' valor='2190' estado='03'>Referencia dos para pago no existe</mensaje> <mensaje codigo='4' valor='0424' estado='03'>Factura ya cancelada</mensaje> <mensaje codigo='5' valor='0423' estado='03'>Factura ya vencida</mensaje> <mensaje codigo='6' valor='1762' estado='03'>Valor factura diferente</mensaje> <mensaje codigo='7' valor='2192' estado='03'>Código IAC no habilitado en web service</mensaje> <mensaje codigo='8' valor='2077' estado='03'>Forma de pago inválida</mensaje> <mensaje codigo='9' valor='0422' estado='03'>Número de factura no existe</mensaje> <mensaje codigo='10' valor='2200' estado='03'>Error inesperado web service (Error General)</mensaje> <mensaje codigo='11' valor='7045' estado='03'>Valor transacción no permitido</mensaje> <mensaje codigo='12' valor='9999' estado='03'>Error autenticación WS</mensaje> </Entidad> </Bancos> </mensajes>" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :171 :28) // new StringReader("<?xml version='1.0' encoding='utf-8'?><mensajes xmlns:xsi='http://www.w2.org/2001/XMLSchema-instance'> <Generales> <mensaje codigo='0' valor=''>Fallo Operación</mensaje> <mensaje codigo='1' valor=''>Datos incompletos {0}</mensaje> <mensaje codigo='2' valor=''>Error de autenticación</mensaje> <mensaje codigo='3' valor=''>Código banco erroneo</mensaje> <mensaje codigo='4' valor=''>Código banco no existe</mensaje> <mensaje codigo='5' valor=''>Número de orden requerido</mensaje> <mensaje codigo='6' valor=''>Número de orden erroneo</mensaje> <mensaje codigo='7' valor=''>Fecha de pago inválida</mensaje> <mensaje codigo='8' valor=''>Valor pagado supera el máximo permitido</mensaje> <mensaje codigo='9' valor=''>Sin Fechas de cobranza</mensaje> <mensaje codigo='10' valor=''>Número de cédula no existe Cédula: {0} Orden: {1}</mensaje> <mensaje codigo='11' valor=''>Error del sistema</mensaje> <mensaje codigo='12' valor=''>Ocurrió un error en el sistema</mensaje> <mensaje codigo='13' valor=''>Sesión cerrada con éxito</mensaje> <mensaje codigo='14' valor=''>Usuario o clave no coinciden</mensaje> <mensaje codigo='15' valor=''>Registro cancelado correctamente</mensaje> <mensaje codigo='16' valor=''>Registro pendiente de reprocesar</mensaje> <mensaje codigo='17' valor=''>No se encontraron registros</mensaje> </Generales> <Bancos> <Entidad Code='Davivienda'> <mensaje codigo='0' valor='0000' estado=''>Transacción exitosa</mensaje> <mensaje codigo='1' valor='0278' estado='03'>Referencia para pago no existe. Cliente no existe</mensaje> <mensaje codigo='2' valor='0278' estado='03'>Referencia para pago no existe</mensaje> <mensaje codigo='3' valor='2190' estado='03'>Referencia dos para pago no existe</mensaje> <mensaje codigo='4' valor='0424' estado='03'>Factura ya cancelada</mensaje> <mensaje codigo='5' valor='0423' estado='03'>Factura ya vencida</mensaje> <mensaje codigo='6' valor='1762' estado='03'>Valor factura diferente</mensaje> <mensaje codigo='7' valor='2192' estado='03'>Código IAC no habilitado en web service</mensaje> <mensaje codigo='8' valor='2077' estado='03'>Forma de pago inválida</mensaje> <mensaje codigo='9' valor='0422' estado='03'>Número de factura no existe</mensaje> <mensaje codigo='10' valor='2200' estado='03'>Error inesperado web service empresa</mensaje> <mensaje codigo='11' valor='7045' estado='03'>Valor transacción no permitido</mensaje> <mensaje codigo='12' valor='9999' estado='03'>Error autenticación WS</mensaje> </Entidad> <Entidad Code='Estandar'> <mensaje codigo='0' valor='0000' estado=''>Transacción exitosa</mensaje> <mensaje codigo='1' valor='0278' estado='03'>Referencia para pago no existe. Cliente no existe</mensaje> <mensaje codigo='2' valor='0278' estado='03'>Referencia para pago no existe</mensaje> <mensaje codigo='3' valor='2190' estado='03'>Referencia dos para pago no existe</mensaje> <mensaje codigo='4' valor='0424' estado='03'>Factura ya cancelada</mensaje> <mensaje codigo='5' valor='0423' estado='03'>Factura ya vencida</mensaje> <mensaje codigo='6' valor='1762' estado='03'>Valor factura diferente</mensaje> <mensaje codigo='7' valor='2192' estado='03'>Código IAC no habilitado en web service</mensaje> <mensaje codigo='8' valor='2077' estado='03'>Forma de pago inválida</mensaje> <mensaje codigo='9' valor='0422' estado='03'>Número de factura no existe</mensaje> <mensaje codigo='10' valor='2200' estado='03'>Error inesperado web service (Error General)</mensaje> <mensaje codigo='11' valor='7045' estado='03'>Valor transacción no permitido</mensaje> <mensaje codigo='12' valor='9999' estado='03'>Error autenticación WS</mensaje> </Entidad> </Bancos> </mensajes>") (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :172 :19) // Not a variable of known type: tr
return %3 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DT\\Notificacion\\DTOMensaje.cs" :172 :12)

^1: // ExitBlock
cbde.unreachable

}
