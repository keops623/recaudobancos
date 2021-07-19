using System;
using Corona.RecaudoPagos.DT.Entidades;
using Corona.RecaudoPagos.DM.Logs;


namespace Corona.RecaudoPagos.BM.Log
{
	public static class BMLogRequest
	{
		public static string InsertaLogRequest(string requestLog, DateTime fechaLog, string origenLog)
		{
			DTOLogRequest logRequest = new DTOLogRequest();
			logRequest.REQUEST = requestLog;
			logRequest.FECHA = fechaLog.ToString();
			logRequest.ORIGEN = origenLog;
			var retorno = DMLogRequest.InsertarCliente(logRequest);
			return retorno.ToString();
		}
	}
}
