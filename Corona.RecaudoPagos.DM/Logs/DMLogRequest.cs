using Corona.RecaudoPagos.DT.Entidades;
using Corona.RecaudoPagos.DM.AccesoDM;
using MySql.Data.MySqlClient;
using System;
using System.Data;


namespace Corona.RecaudoPagos.DM.Logs
{
	public static class DMLogRequest
	{
		public static bool InsertarCliente(DTOLogRequest objLogRequest)
		{
			DMAccesoDatosMySql gestorDB = new DMAccesoDatosMySql();

			gestorDB.LimpiarDTOParametros();
			var temp = objLogRequest.REQUEST.ToString() == null ? "verdadero" : "falso";
			gestorDB.AgregarParametro("@IN_request", MySqlDbType.Blob, objLogRequest.REQUEST.ToString() == null ? Convert.DBNull : objLogRequest.REQUEST.ToString());
			gestorDB.AgregarParametro("@IN_fecha", MySqlDbType.DateTime, DateTime.Parse(objLogRequest.FECHA));
			gestorDB.AgregarParametro("@IN_origen", MySqlDbType.VarChar, objLogRequest.ORIGEN.ToString());
			if (gestorDB.EjecutarNonQuery(Resources.ProcedimientosAlmacenados.SP_INSERTA_LOGREQUEST, CommandType.StoredProcedure) != -1)
				return true;
			else return false;
		}
	}
}
