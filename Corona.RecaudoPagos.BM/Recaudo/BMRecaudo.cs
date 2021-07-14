using Corona.RecaudoPagos.BM.Parametro;
using Corona.RecaudoPagos.DM.Datos;
using Corona.RecaudoPagos.DT.Entidades;
using Corona.RecaudoPagos.DT.General;
using Corona.RecaudoPagos.DT.Notificacion;
using System;
using System.Transactions;
using static Corona.RecaudoPagos.DT.Notificacion.DTOComponentes;

namespace Corona.RecaudoPagos.BM.Recaudo
{
    public class BMRecaudo
    {
        /// <summary>
        /// Registrar recaudo validando datos requeridos, duplicidad y timeout para web service
        /// </summary>
        /// <param name="objDatos">DTOObjetoGeneral</param>
        /// <param name="Time"></param>
        /// <returns></returns>
        public DTOObjetoGeneralSalida RealizarRecaudo(DTOObjetoGeneral objDatos, DateTime Time)
        {
            DTOObjetoGeneralSalida ObjetoSalida = new DTOObjetoGeneralSalida();
            DTOConfiguraciones Configuraciones = new DTOConfiguraciones();
            try
            {
                int segundos = Configuraciones.numMinTimeout;

                using (TransactionScope objTransaction = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { Timeout = new TimeSpan(0, 0, segundos) }))
                {
                    DataStatus statusResult = ValidarDatosRequeridos(objDatos);
                    if (statusResult.Result)
                    {
                        ObjetoSalida = RegistrarRecaudo(objDatos);
                    }
                    else if (statusResult.TipoError == Severidad.Servicio)
                    {
                        ObjetoSalida.TipoSeveridad = 0;
                        ObjetoSalida.EstadoOperacion = false;
                        ObjetoSalida.TipoRegistro = objDatos.TipoRegistro;
                        ObjetoSalida.CodigoError = statusResult.Mensaje.Valor;
                        ObjetoSalida.DescripcionError = statusResult.Mensaje.Texto;
                        ObjetoSalida.NumeroTransaccion = objDatos.NumeroAutorizacion;
                        ObjetoSalida.ValorFactura = 0;
                        ObjetoSalida.Estado = "03";
                    }
                    else
                    {
                        ObjetoSalida.TipoSeveridad = 0;
                        ObjetoSalida.EstadoOperacion = false;
                        ObjetoSalida.TipoRegistro = objDatos.TipoRegistro;
                        ObjetoSalida.EstadoOperacion = statusResult.Result;
                        ObjetoSalida.CodigoError = statusResult.Mensaje.Valor;
                        ObjetoSalida.DescripcionError = statusResult.Mensaje.Texto;
                        ObjetoSalida.NumeroTransaccion = objDatos.NumeroAutorizacion;
                    }

                    ObjetoSalida.FechaTransaccion = objDatos.FechaRecaudo;

                    if (DateTime.Now < Time.AddSeconds(Configuraciones.SegundosTimeOut))
                    {
                        objTransaction.Complete();
                        return ObjetoSalida;
                    }
                    else
                    {
                        objTransaction.Dispose();
                        throw new TimeoutException("Error de timeout" + " Cedula: " + objDatos.Referencia1);
                    }
                }
            }
            catch (Exception ex)
            {
                ObjetoSalida.CodigoError = DTOCodigoMensajes.BANCO_MENSAJE1.ToString();
                ObjetoSalida.TipoRegistro = objDatos.TipoRegistro;
                ObjetoSalida.DescripcionError = ex.Message;
                ObjetoSalida.EstadoOperacion = false;
                ObjetoSalida.NumeroTransaccion = "0";
                return ObjetoSalida;
            }
        }

        /// <summary>
        /// Validar los datos requeridos del objeto para pagos
        /// </summary>
        /// <param name="objDatos">DTOObjetoGeneral</param>
        /// <returns></returns>
        public DataStatus ValidarDatosRequeridos(DTOObjetoGeneral objDatos)
        {
            DataStatus Result = new DataStatus();
            DTOMensaje objMensaje = new DTOMensaje();

            if (objDatos != null)
            {
                try
                {
                    DTOParametro dtoParametro = new DTOParametro
                    {
                        COD_BANCO = objDatos.CodigoBanco,
                        CONVENIO = objDatos.NumeroConvenio
                    };
                    objDatos.Sociedad = new BMParametro().ConsultarSociedad(dtoParametro);
                    if (string.IsNullOrEmpty(objDatos.Sociedad))
                    {
                        objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE2, TipoMensaje.Banco);
                        Result.TipoError = Severidad.Negocio;
                        Result.Mensaje = objMensaje;
                        Result.Result = false;
                        return Result;
                    }

                    if (objDatos.TotalRecaudado <= 0)
                    {
                        objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, new string[] { "Total Transacción" });
                        Result.TipoError = Severidad.Servicio;
                        Result.Mensaje = objMensaje;
                        Result.Result = false;
                        return Result;
                    }

                    if (string.IsNullOrEmpty(objDatos.CodigoBanco))
                    {
                        objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, new string[] { "Código del banco" });

                        Result.TipoError = Severidad.Negocio;
                        Result.Mensaje = objMensaje;
                        Result.Result = false;
                        return Result;
                    }

                    if (objDatos.CodigoBanco.Length != 2)
                    {
                        objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, new string[] { "Código del banco" });
                        Result.TipoError = Severidad.Negocio;
                        Result.Mensaje = objMensaje;
                        Result.Result = false;
                        return Result;
                    }

                    if (string.IsNullOrEmpty(objDatos.Referencia1))
                    {
                        objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, new string[] { "Cédula" });
                        Result.TipoError = Severidad.Negocio;
                        Result.Mensaje = objMensaje;
                        Result.Result = false;
                        return Result;
                    }

                    if (new DMCliente().ConsultarCliente(objDatos) == null)
                    {
                        objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, TipoMensaje.Banco);
                        Result.TipoError = Severidad.Servicio;
                        Result.Mensaje = objMensaje;
                        Result.Result = false;
                        return Result;
                    }

                    if (string.IsNullOrEmpty(objDatos.FechaRecaudo))
                    {
                        objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, new string[] { "Fecha Transacción" });
                        Result.TipoError = Severidad.Negocio;
                        Result.Mensaje = objMensaje;
                        Result.Result = false;
                        return Result;
                    }

                    if (objDatos.TotalRecaudado == 0)
                    {
                        objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, new string[] { "Total Transacción" });
                        Result.TipoError = Severidad.Negocio;
                        Result.Mensaje = objMensaje;
                        Result.Result = false;
                        return Result;
                    }

                    if (Convert.ToDateTime(objDatos.FechaPago) > DateTime.Now)
                    {
                        objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, new string[] { "Total Transacción" });
                        Result.TipoError = Severidad.Negocio;
                        Result.Mensaje = objMensaje;
                        Result.Result = false;
                        return Result;
                    }

                    Result.Result = true;
                    return Result;
                }
                catch (Exception)
                {
                    objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, TipoMensaje.Banco);
                    Result.TipoError = Severidad.Excepcion;
                    Result.Mensaje = objMensaje;
                    Result.Result = false;
                    return Result;
                }
            }
            else
            {
                objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, TipoMensaje.Banco);
                Result.TipoError = Severidad.Excepcion;
                Result.Mensaje = objMensaje;
                Result.Result = false;
                return Result;
            }
        }

        /// <summary>
        /// Registrar el recaudo validando duplicidad
        /// </summary>
        /// <param name="objDatos"></param>
        /// <returns></returns>
        public DTOObjetoGeneralSalida RegistrarRecaudo(DTOObjetoGeneral objDatos)
        {
            DTOObjetoGeneralSalida ObjetoSalida = new DTOObjetoGeneralSalida();
			DTOMensaje objMensaje;
            /// validar que el pago no se encuentre registrado
            if (!ValidaPagoDuplicado(objDatos))
            {
                ObjetoSalida.EstadoOperacion = new DMRecaudo().RegistrarRecaudo(objDatos);
                ObjetoSalida.TipoRegistro = objDatos.TipoRegistro;
                ObjetoSalida.TipoSeveridad = 1;
                objMensaje = DTOMensaje.GetMensaje((ObjetoSalida.EstadoOperacion ? DTOCodigoMensajes.BANCO_MENSAJE0
                    : DTOCodigoMensajes.BANCO_MENSAJE10), TipoMensaje.Banco);

                ObjetoSalida.DescripcionError = objMensaje.Texto;
                ObjetoSalida.CodigoError = objMensaje.Valor;
            }
            else
            {
                objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE4, TipoMensaje.Banco);
                ObjetoSalida.NumeroTransaccion = objDatos.NumeroAutorizacion;
                ObjetoSalida.DescripcionError = objMensaje.Texto;
                ObjetoSalida.TipoRegistro = objDatos.TipoRegistro;
                ObjetoSalida.DescripcionError = objMensaje.Texto;
                ObjetoSalida.FechaVencimiento = string.Empty;
                ObjetoSalida.CodigoError = objMensaje.Valor;
                ObjetoSalida.EstadoOperacion = false;
            }
            return ObjetoSalida;
        }

        /// <summary>
        /// Validar que el pago no se encuentre registrado en la base de datos
        /// </summary>
        /// <param name="objDatos">DTOObjetoGeneral</param>
        /// <returns>True/False</returns>
        public bool ValidaPagoDuplicado(DTOObjetoGeneral objDatos)
        {
            return new DMRecaudo().ValidaPagoDuplicado(objDatos);
        }
    }
}
