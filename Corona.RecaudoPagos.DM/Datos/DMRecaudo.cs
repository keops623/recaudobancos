using Corona.RecaudoPagos.DM.AccesoDM;
using Corona.RecaudoPagos.DT.General;
using MySql.Data.MySqlClient;
using System;
using Corona.RecaudoPagos.DT.Notificacion;

namespace Corona.RecaudoPagos.DM.Datos
{
    public class DMRecaudo
    {
        /// <summary>
        /// Registrar el recaudo en la tabla intermedia
        /// </summary>
        /// <param name="Datos"></param>
        /// <returns></returns>
        public bool RegistrarRecaudo(DTOObjetoGeneral Datos)
        {
            
            DMAccesoDatosMySql gestorDB = new DMAccesoDatosMySql();
            gestorDB.LimpiarDTOParametros();
            gestorDB.AgregarParametro("@IN_CANAL_RECAUDO", MySqlDbType.VarChar, string.IsNullOrEmpty(Datos.CanalRecaudo?.Trim()) ? Convert.DBNull : Datos.CanalRecaudo.Trim());
            gestorDB.AgregarParametro("@IN_COD_BANCO", MySqlDbType.VarChar, Datos.CodigoBanco);
            gestorDB.AgregarParametro("@IN_COD_CONFIRMA_RECAUDO", MySqlDbType.VarChar, Datos.CodigoConfirmacionRecaudo);
            gestorDB.AgregarParametro("@IN_COD_IAC", MySqlDbType.VarChar, Datos.CodigoProducto);
            gestorDB.AgregarParametro("@IN_FEC_RECAUDO", MySqlDbType.DateTime, Datos.FechaPago);
            gestorDB.AgregarParametro("@IN_FEC_VENCIMIENTO", MySqlDbType.DateTime, Datos.FechaVencimiento);
            gestorDB.AgregarParametro("@IN_FORMA_PAGO", MySqlDbType.VarChar, Datos.FormaPago);
            gestorDB.AgregarParametro("@IN_HORA_RECAUDO", MySqlDbType.VarChar, Datos.HoraRecaudo);
            gestorDB.AgregarParametro("@IN_JORNADA_PAGO", MySqlDbType.VarChar, Datos.JornadaRecaudo);
            gestorDB.AgregarParametro("@IN_NUM_CHEQUE", MySqlDbType.VarChar, Datos.NumeroCheque);
            gestorDB.AgregarParametro("@IN_CONVENIO", MySqlDbType.VarChar, Datos.NumeroConvenio);
            gestorDB.AgregarParametro("@IN_OFI_RECAUDO", MySqlDbType.VarChar, Datos.Oficina);
            gestorDB.AgregarParametro("@IN_NIT_PAGADOR", MySqlDbType.VarChar, Datos.Referencia1);
            gestorDB.AgregarParametro("@IN_SOLICITANTE", MySqlDbType.VarChar, string.IsNullOrEmpty(Datos.Referencia2?.Trim()) ? Convert.DBNull : Datos.Referencia2.Trim());
            gestorDB.AgregarParametro("@IN_TERMI_RECAUDO", MySqlDbType.VarChar, Datos.TerminalRecaudo);
            gestorDB.AgregarParametro("@IN_TIPO_CANJE", MySqlDbType.VarChar, Datos.TipoCanje);
            gestorDB.AgregarParametro("@IN_MONEDA", MySqlDbType.VarChar, Datos.TipoMoneda);
            gestorDB.AgregarParametro("@IN_VALOR_CHEQUE", MySqlDbType.Decimal, Datos.ValorCheque);
            gestorDB.AgregarParametro("@IN_VALOR_EFECTIVO", MySqlDbType.Decimal, Datos.ValorEfectivo);
            gestorDB.AgregarParametro("@IN_VAL_FACTURA", MySqlDbType.Decimal, Datos.ValorFactura);
            gestorDB.AgregarParametro("@IN_VALOR_RECAUDADO", MySqlDbType.Decimal, Datos.TotalRecaudado);
            gestorDB.AgregarParametro("@IN_TRANSACCION", MySqlDbType.VarChar, Datos.TipoRegistro);
            gestorDB.AgregarParametro("@IN_ESTADO_RECAUDO", MySqlDbType.VarChar, Datos.EstadoRecaudo);
            gestorDB.AgregarParametro("@IN_CLAVE", MySqlDbType.VarChar, new DTOConfiguraciones().TextoClave);
            int RecaudoId;
            int.TryParse(gestorDB.EjecutarScalar(Resources.ProcedimientosAlmacenados.SP_INSERTA_RECAUDO).ToString(), out RecaudoId);
            return (RecaudoId >= 1);
        }

        /// <summary>
        /// Consulta que otro pago cumpla con los mismos datos ya registrados
        /// </summary>
        /// <param name="objDato"></param>
        /// <returns></returns>
        public bool ValidaPagoDuplicado(DTOObjetoGeneral objDato)
        {
            DMAccesoDatosMySql gestorDB = new DMAccesoDatosMySql();
            gestorDB.AgregarParametro("@IN_COD_BANCO", MySqlDbType.VarChar, objDato.CodigoBanco);
            gestorDB.AgregarParametro("@IN_NIT_PAGADOR", MySqlDbType.VarChar, objDato.Referencia1);
            gestorDB.AgregarParametro("@IN_FEC_RECAUDO", MySqlDbType.DateTime, objDato.FechaPago);
            gestorDB.AgregarParametro("@IN_VALOR_RECAUDADO", MySqlDbType.Decimal, objDato.TotalRecaudado);
            gestorDB.AgregarParametro("@IN_COD_CONFIRMA_RECAUDO", MySqlDbType.VarChar, string.IsNullOrEmpty(objDato.CodigoConfirmacionRecaudo) ? Convert.DBNull : objDato.CodigoConfirmacionRecaudo);
            gestorDB.AgregarParametro("@IN_NUM_CHEQUE", MySqlDbType.VarChar, objDato.NumeroCheque);
            gestorDB.AgregarParametro("@IN_CLAVE", MySqlDbType.VarChar, new DTOConfiguraciones().TextoClave);
            int RecaudoId;
            int.TryParse(gestorDB.EjecutarScalar(Resources.ProcedimientosAlmacenados.SP_VALIDA_RECAUDO_DUPLICADO)?.ToString(), out RecaudoId);
            return (RecaudoId >= 1);
        }
    }
}
