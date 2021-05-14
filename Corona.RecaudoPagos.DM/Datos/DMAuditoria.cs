using Corona.RecaudoPagos.DM.AccesoDM;
using Corona.RecaudoPagos.DT.General;
using MySql.Data.MySqlClient;
using System;
using System.Data;

namespace Corona.RecaudoPagos.DM.Datos
{
    public class DMAuditoria
    {
        /// <summary>
        /// Registrar en base de datos la Auditoria generada
        /// </summary>
        /// <param name="Datos">DTOAuditoria</param>
        /// <returns>true/false</returns>
        public bool RegistrarAuditoria(DTOAuditoria Datos)
        {
            DMAccesoDatosMySql gestorDB = new DMAccesoDatosMySql();
            gestorDB.LimpiarDTOParametros();
            gestorDB.AgregarParametro("@IN_Recaudo_ID", MySqlDbType.Int64, Datos.Recaudo_ID);
            gestorDB.AgregarParametro("@IN_Estado", MySqlDbType.Bit, Datos.Estado);
            gestorDB.AgregarParametro("@IN_Solicitud", MySqlDbType.VarChar, Datos.Solicitud);
            gestorDB.AgregarParametro("@IN_Respuesta", MySqlDbType.VarChar, Datos.Respuesta);
            gestorDB.AgregarParametro("@IN_Fecha", MySqlDbType.DateTime, Datos.Fecha != null ? Datos.Fecha : Convert.DBNull);
            gestorDB.AgregarParametro("@IN_Procesado", MySqlDbType.Bit, Datos.Procesado != null ? Datos.Procesado : Convert.DBNull);
            gestorDB.AgregarParametro("@IN_Usuario_Procesado", MySqlDbType.VarChar, Datos.Usuario_Procesado != null ? Datos.Usuario_Procesado : Convert.DBNull);
            if (gestorDB.EjecutarNonQuery(Resources.ProcedimientosAlmacenados.SP_INSERTA_AUDITORIA, CommandType.StoredProcedure) != -1)
                return true;
            else return false;
        }
    }
}
