func @_Corona.RecaudoPagos.DM.Datos.DMUsuarioAcceso.ConsultarUsuarioAcceso$string.string$(none, none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :14 :8) {
^entry (%_usuario : none, %_clave : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :14 :43)
cbde.store %_usuario, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :14 :43)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :14 :59)
cbde.store %_clave, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :14 :59)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :16 :42) // new DMAccesoDatosMySql() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :17 :12) // Not a variable of known type: gestorDB
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :17 :38) // "@IN_USUARIO" (StringLiteralExpression)
// Entity from another assembly: MySqlDbType
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :17 :53) // MySqlDbType.VarChar (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :17 :74) // Not a variable of known type: usuario
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :17 :12) // gestorDB.AgregarParametro("@IN_USUARIO", MySqlDbType.VarChar, usuario) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :18 :12) // Not a variable of known type: gestorDB
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :18 :38) // "@IN_CLAVE" (StringLiteralExpression)
// Entity from another assembly: MySqlDbType
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :18 :51) // MySqlDbType.VarChar (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :18 :72) // Not a variable of known type: clave
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :18 :12) // gestorDB.AgregarParametro("@IN_CLAVE", MySqlDbType.VarChar, clave) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :19 :28) // Not a variable of known type: gestorDB
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :19 :65) // Resources.ProcedimientosAlmacenados (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :19 :65) // Resources.ProcedimientosAlmacenados.SP_CONSULTA_USUARIO_ACCESO (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :19 :28) // gestorDB.EjecutarReaderProcedimiento(Resources.ProcedimientosAlmacenados.SP_CONSULTA_USUARIO_ACCESO) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :20 :16) // Not a variable of known type: datos
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :20 :16) // datos.Tables (SimpleMemberAccessExpression)
%21 = constant 0 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :20 :29)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :20 :16) // datos.Tables[0] (ElementAccessExpression)
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :20 :16) // datos.Tables[0].Rows (SimpleMemberAccessExpression)
%24 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :20 :16) // datos.Tables[0].Rows.Count (SimpleMemberAccessExpression)
%25 = constant 0 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :20 :45)
%26 = cmpi "sgt", %24, %25 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :20 :16)
cond_br %26, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :20 :16)

^1: // JumpBlock
%27 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :21 :23) // true
return %27 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :21 :16)

^2: // JumpBlock
%28 = constant 0 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :22 :24) // false
return %28 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.DM\\Datos\\DMUsuarioAcceso.cs" :22 :17)

^3: // ExitBlock
cbde.unreachable

}
