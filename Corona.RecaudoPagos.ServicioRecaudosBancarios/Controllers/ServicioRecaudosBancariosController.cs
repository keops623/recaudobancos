using Corona.RecaudoPagos.BM.Auditoria;
using Corona.RecaudoPagos.BM.Clientes;
using Corona.RecaudoPagos.BM.Recaudo;
using Corona.RecaudoPagos.BM.UsuarioAcceso;
using Corona.RecaudoPagos.DT.DTO;
using Corona.RecaudoPagos.DT.General;
using Corona.RecaudoPagos.DT.Notificacion;
using Corona.RecaudoPagos.Facade.Conversiones;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Xml.Serialization;
using static Corona.RecaudoPagos.DT.Notificacion.DTOComponentes;

namespace Corona.RecaudoPagos.ServicioRecaudosBancarios.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ServicioRecaudosBancariosController : ControllerBase
    {

        private readonly ILogger<ServicioRecaudosBancariosController> logger;
        /// <summary>
        /// Consultar los datos del cliente que realiza el pago. De la respuesta a esta consulta se continua o no con el recaudo.
        /// </summary>
        /// <param name="dto"></param>
        /// <returns>Xml respuesta de la consulta</returns>
        /// 
        [Consumes("application/xml")]
        [Produces("application/xml")]
        [HttpPost]
        [Route("consultaRecaudo")]
        public @return consultaRecaudo([FromBody] Corona.RecaudoPagos.DT.DTO.ConsultaDtoXml.Envelope dto)
        {
            DTOMensaje objMensaje = new DTOMensaje();
            @return responseData = new @return();
            try
            {
                // throw new Exception("Mensaje");
                DTOObjetoGeneralSalida ObjetoSalida = new DTOObjetoGeneralSalida();
                Conversion Convertir = new Conversion();

                if (!new BMUsuarioAcceso().ConsultarUsuarioAcceso(dto.Header.Security.UsernameToken.Username, dto.Header.Security.UsernameToken.Password))
                {
                    objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE12, TipoMensaje.Banco);
                    ObjetoSalida = new DTOObjetoGeneralSalida
                    {
                        DescripcionError = objMensaje.Texto,
                        CodigoError = objMensaje.Valor
                    };
                }
                else
                {
                    ConsultaDto Datos = new ConsultaDto();
                    Datos.canal = dto.Body.consultaRecaudo.dto.canal;
                    Datos.codigoBanco = dto.Body.consultaRecaudo.dto.codigoBanco;
                    Datos.codigoIAC = dto.Body.consultaRecaudo.dto.codigoIAC;
                    Datos.fechaVencimiento = dto.Body.consultaRecaudo.dto.fechaVencimiento;
                    Datos.jornadaPago = dto.Body.consultaRecaudo.dto.jornadaPago;
                    Datos.numeroConvenio = dto.Body.consultaRecaudo.dto.numeroConvenio;
                    Datos.referencia1 = dto.Body.consultaRecaudo.dto.referencia1;
                    Datos.referencia2 = dto.Body.consultaRecaudo.dto.referencia2;
                    Datos.terminalRecaudo = dto.Body.consultaRecaudo.dto.terminalRecaudo;
                    Datos.tipoMoneda = dto.Body.consultaRecaudo.dto.tipoMoneda;
                    Datos.valorFactura = dto.Body.consultaRecaudo.dto.valorFactura;
                    Datos.valorPagar = dto.Body.consultaRecaudo.dto.valorPagar;


                    DTOObjetoGeneral ObjetoEntrada = Convertir.ConvertirObjetoConsultaToDTOGeneral(Datos);
                    ObjetoSalida = new BMCliente().ConsultarCliente(ObjetoEntrada);
                }
                responseData = Convertir.ConvertirDTOSalidaToObjetoConsulta(ObjetoSalida);
                return responseData;

            }
            catch (Exception ex)
            {
                logger.LogError($"Ha ocurrido un error consultaRecaudo/ServicioRecaudosBancarios: {ex.Message}");
                objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE10, TipoMensaje.Banco);
                responseData.codigoRespuestaNotificacion = objMensaje.Valor;
                return responseData;
            }
        }

        /// <summary>
        /// Notificar un recaudo realizado en bancarios cuando las validaciones del cliente y convenio de recaudo hayan sido exitosas
        /// </summary>
        /// <param name="dto">Xml entrada para notificacion recaudo</param>
        /// <returns>Xml respuesta de la notificacion de recaudo</returns>s
        ///
        [Consumes("application/xml")]
        [Produces("application/xml")]
        [HttpPost]
        [Route("notificacionRecaudo")]
        public @return notificacionRecaudo([FromBody] Corona.RecaudoPagos.DT.DTO.RecaudoDtoXml.Envelope dto)
        {
            DTOMensaje objMensaje = new DTOMensaje();
            @return responseData = new @return();

            try
            {
                DTOObjetoGeneralSalida ObjetoSalida = new DTOObjetoGeneralSalida();
                List<DTOObjetoGeneral> ObjetoEntrada = new List<DTOObjetoGeneral>();
                Conversion Convertir = new Conversion();

                if (!new BMUsuarioAcceso().ConsultarUsuarioAcceso(dto.Header.Security.UsernameToken.Username, dto.Header.Security.UsernameToken.Password))
                {
                    objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE12, TipoMensaje.Banco);
                    ObjetoSalida = new DTOObjetoGeneralSalida
                    {
                        DescripcionError = objMensaje.Texto,
                        CodigoError = objMensaje.Valor
                    };
                    responseData.codigoRespuestaNotificacion = ObjetoSalida.CodigoError;
                }
                else
                {
                    RecaudoDto Datos = new RecaudoDto();

                    Datos.canalRecaudo = dto.Body.notificacionRecaudo.dto.canalRecaudo;
                    Datos.codigoBanco = dto.Body.notificacionRecaudo.dto.codigoBanco;
                    Datos.codigoConfirmacionRecaudo = dto.Body.notificacionRecaudo.dto.codigoConfirmacionRecaudo;
                    Datos.codigoIAC = dto.Body.notificacionRecaudo.dto.codigoIAC;
                    Datos.fechaRecaudo = dto.Body.notificacionRecaudo.dto.fechaRecaudo;
                    Datos.fechaVencimiento = dto.Body.notificacionRecaudo.dto.fechaVencimiento;
                    Datos.formaPago = dto.Body.notificacionRecaudo.dto.formaPago;
                    Datos.horaRecaudo = dto.Body.notificacionRecaudo.dto.horaRecaudo;
                    Datos.jornadaRecaudo = dto.Body.notificacionRecaudo.dto.jornadaRecaudo;
                    Datos.numeroCheque = dto.Body.notificacionRecaudo.dto.numeroCheque;
                    Datos.numeroConvenio = dto.Body.notificacionRecaudo.dto.numeroConvenio;
                    Datos.oficinaRecaudo = dto.Body.notificacionRecaudo.dto.oficinaRecaudo;
                    Datos.referencia1 = dto.Body.notificacionRecaudo.dto.referencia1;
                    Datos.referencia2 = dto.Body.notificacionRecaudo.dto.referencia2;
                    Datos.terminalRecaudo = dto.Body.notificacionRecaudo.dto.terminalRecaudo;
                    Datos.tipoCanje = dto.Body.notificacionRecaudo.dto.tipoCanje;
                    Datos.tipoMoneda = dto.Body.notificacionRecaudo.dto.tipoMoneda;
                    Datos.valorCheque = dto.Body.notificacionRecaudo.dto.valorCheque;
                    Datos.valorEfectivo = dto.Body.notificacionRecaudo.dto.valorEfectivo;
                    Datos.valorTotalRecaudado = dto.Body.notificacionRecaudo.dto.valorTotalRecaudado;
                    Datos.valorFactura = dto.Body.notificacionRecaudo.dto.valorFactura;

                    ObjetoEntrada = Convertir.ConvertirObjetoRecaudoToDTOGeneral(Datos);
                    DateTime time = DateTime.Now;
                    foreach (DTOObjetoGeneral objetoGeneral in ObjetoEntrada)
                    {
                        ObjetoSalida = new BMRecaudo().RealizarRecaudo(objetoGeneral, time);

                        using (StringWriter stringwriter = new StringWriter())
                        {
                            XmlSerializer serializer = new XmlSerializer(typeof(RecaudoDto));
                            serializer.Serialize(stringwriter, Datos);

                            string mensajeAdicional = " - No.Autorizacion: " + objetoGeneral.CodigoConfirmacionRecaudo;
                            /// Validar si el recaudo está bloqueado por ser cheque
                            if (objetoGeneral.EstadoRecaudo.Equals(((int)EstadoRecaudo.BloqueadoCheque).ToString()))
                            {
                                /// Mensaje personalizado con detalle recaudo bloqueado por Cheque
                                mensajeAdicional = " : Recaudo Bloqueado por Cheque " + mensajeAdicional;
                            }
                            /// Registro de auditoria
                            new BMAuditoria().InsertarAuditoria(new DTOAuditoria()
                            {
                                Solicitud = stringwriter.ToString(),
                                Respuesta = ObjetoSalida.DescripcionError + mensajeAdicional,
                                Estado = ObjetoSalida.EstadoOperacion,
                                Fecha = DateTime.Now,
                                Recaudo_ID = RecaudoId.ToString(),
                            });
                        }
                    }
                }
                responseData = Convertir.ConvertirDTOSalidaToObjetoPago(ObjetoSalida);
                return responseData;
            }
            catch (Exception ex)
            {
                logger.LogError($"Ha ocurrido un error notificacionRecaudo/ServicioRecaudosBancarios: {ex.Message}");
                objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE10, TipoMensaje.Banco);
                responseData.codigoRespuestaNotificacion = objMensaje.Valor;
                return responseData;
            }
        }

        /// <summary>
        /// Vertificar estado del servicio
        /// </summary>
        /// <param name="dto"></param>
        /// <returns>VerificarEstadoWebServiceResponse</returns>
        /// 
        [Consumes("application/xml")]
        [Produces("application/xml")]
        [HttpPost]
        [Route("VerificarEstadoWebService")]
        public VerificarEstadoResponseDto VerificarEstadoWebService([FromBody] Corona.RecaudoPagos.DT.DTO.VerificarEstadoDtoXml.Envelope dto)
        {
            VerificarEstadoResponseDto responseData = new VerificarEstadoResponseDto();
            try
            {
                DTOObjetoGeneralSalida ObjetoSalida = new DTOObjetoGeneralSalida();
                DTOMensaje objMensaje = new DTOMensaje();
                responseData.ServerDt = DateTime.Now;
                if (!new BMUsuarioAcceso().ConsultarUsuarioAcceso(dto.Header.Security.UsernameToken.Username, dto.Header.Security.UsernameToken.Password))
                {
                    objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE12, TipoMensaje.Banco);
                    ObjetoSalida = new DTOObjetoGeneralSalida
                    {
                        DescripcionError = objMensaje.Texto,
                        CodigoError = objMensaje.Valor
                    };
                    responseData.codigoRespuesta = ObjetoSalida.CodigoError;
                }
                else
                {
                    objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE0, TipoMensaje.Banco);
                    responseData.codigoRespuesta = objMensaje.Valor;
                }
                return responseData;
            }
            catch (Exception ex)
            {
                logger.LogError($"Ha ocurrido un error VerificarEstadoWebService/ServicioRecaudosBancarios: {ex.Message}");
                DTOMensaje objMensaje = new DTOMensaje();
                objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE10, TipoMensaje.Banco);
                responseData.codigoRespuesta = objMensaje.Valor;
                return responseData;
            }
        }
    }
}
