func @_Corona.RecaudoPagos.DM.AccesoDM.DMAccesoDatosMySql.ObtenerNombreCadenaBaseDatos$$() -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :26 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Environment
%0 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :28 :60) // "connectionString" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :28 :25) // Environment.GetEnvironmentVariable("connectionString") (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :29 :19) // Not a variable of known type: Cadena
return %3 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :29 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Corona.RecaudoPagos.DM.AccesoDM.DMAccesoDatosMySql.PrepararComando$MySql.Data.MySqlClient.MySqlConnection.string$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :38 :8) {
^entry (%_mySqlConnection : none, %_comando : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :38 :45)
cbde.store %_mySqlConnection, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :38 :45)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :38 :78)
cbde.store %_comando, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :38 :78)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: PrepararComando
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :40 :35) // Not a variable of known type: mySqlConnection
// Entity from another assembly: CommandType
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :40 :52) // CommandType.Text (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :40 :70) // Not a variable of known type: comando
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :40 :19) // PrepararComando(mySqlConnection, CommandType.Text, comando) (InvocationExpression)
return %5 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :40 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function PrepararComando(none, none, none), it contains poisonous unsupported syntaxes

func @_Corona.RecaudoPagos.DM.AccesoDM.DMAccesoDatosMySql.AgregarParametro$string.MySql.Data.MySqlClient.MySqlDbType.object$(none, none, none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :89 :8) {
^entry (%_nombre : none, %_tipo : none, %_valor : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :89 :37)
cbde.store %_nombre, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :89 :37)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :89 :52)
cbde.store %_tipo, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :89 :52)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :89 :70)
cbde.store %_valor, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :89 :70)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :91 :61) // Not a variable of known type: nombre
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :91 :69) // Not a variable of known type: tipo
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :91 :75) // Not a variable of known type: valor
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :91 :42) // new DTOParametroBD(nombre, tipo, valor) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :92 :12) // Not a variable of known type: DTParametros
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :92 :29) // Not a variable of known type: DTOParametro
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :92 :12) // DTParametros.Add(DTOParametro) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Corona.RecaudoPagos.DM.AccesoDM.DMAccesoDatosMySql.AgregarParametro$string.MySql.Data.MySqlClient.MySqlDbType.object.System.Data.ParameterDirection$(none, none, none, none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :102 :8) {
^entry (%_nombre : none, %_tipo : none, %_valor : none, %_parameterDirection : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :102 :37)
cbde.store %_nombre, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :102 :37)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :102 :52)
cbde.store %_tipo, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :102 :52)
%2 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :102 :70)
cbde.store %_valor, %2 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :102 :70)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :102 :84)
cbde.store %_parameterDirection, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :102 :84)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :104 :61) // Not a variable of known type: nombre
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :104 :69) // Not a variable of known type: tipo
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :104 :75) // Not a variable of known type: valor
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :104 :82) // Not a variable of known type: parameterDirection
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :104 :42) // new DTOParametroBD(nombre, tipo, valor, parameterDirection) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :105 :12) // Not a variable of known type: DTParametros
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :105 :29) // Not a variable of known type: DTOParametro
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :105 :12) // DTParametros.Add(DTOParametro) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Corona.RecaudoPagos.DM.AccesoDM.DMAccesoDatosMySql.LimpiarDTOParametros$$() -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :111 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :113 :12) // Not a variable of known type: DTParametros
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\AccesoDM\\DMAccesoDatosMySql.cs" :113 :12) // DTParametros.Clear() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function EjecutarReaderProcedimiento(none), it contains poisonous unsupported syntaxes

// Skipping function EjecutarReader(none), it contains poisonous unsupported syntaxes

// Skipping function EjecutarNonQuery(none, none), it contains poisonous unsupported syntaxes

// Skipping function EjecutarScalar(none), it contains poisonous unsupported syntaxes

