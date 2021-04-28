using Corona.RecaudoPagos.BM.Auditoria;
using Corona.RecaudoPagos.BM.Clientes;
using Corona.RecaudoPagos.BM.Recaudo;
using Corona.RecaudoPagos.BM.UsuarioAcceso;
using Corona.RecaudoPagos.DT.DTO;
using Corona.RecaudoPagos.DT.General;
using Corona.RecaudoPagos.DT.Notificacion;
using Corona.RecaudoPagos.Facade.Conversiones;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Xml.Serialization;
using static Corona.RecaudoPagos.DT.Notificacion.DTOComponentes;

namespace Corona.RecaudoPagos.ServicioRecaudosBancarios.Controllers
{
	public class ServicioRecaudoBancario : IServicioRecaudosBancarios
	{
		private bool  autenticado = false;
		private readonly  IHttpContextAccessor _accessor;


		public ServicioRecaudoBancario(IHttpContextAccessor accessor)
		{
			_accessor = accessor;
		}
		public bool ServicioRecaudoBancarioAuth()
		{
			try
			{

				var ctx = _accessor.HttpContext;
				if (ctx != null && ctx.Request != null && ctx.Request.Headers != null)
				{
					string authentication = ctx.Request.Headers.FirstOrDefault(x => x.Key == "Authorization").Value.FirstOrDefault();
					if (!string.IsNullOrEmpty(authentication))
					{
						var authHeaderVal = AuthenticationHeaderValue.Parse(authentication);

						if (authHeaderVal.Scheme.Equals("basic", StringComparison.OrdinalIgnoreCase) && authHeaderVal.Parameter != null)
						{
							var credentials = authHeaderVal.Parameter;

							var encoding = Encoding.GetEncoding("iso-8859-1");
							credentials = encoding.GetString(Convert.FromBase64String(credentials));

							int separator = credentials.IndexOf(':');
							string name = credentials.Substring(0, separator);
							string password = credentials.Substring(separator + 1);
							bool Respuesta = new BMUsuarioAcceso().ConsultarUsuarioAcceso(name, password);
							if (Respuesta)
							{
								autenticado = true;
							}

						}
					} else {
						autenticado = false;
					}
				}			
			}
			catch (Exception ex)
			{
				autenticado = false;
			}

			return autenticado;
		}
		
		[HttpPost]
		[Route("consultaRecaudo")]
		public @return consultaRecaudo(ConsultaDto dto)
		{	
			DTOMensaje objMensaje = new DTOMensaje();
			@return responseData = new @return();
			try
			{
				bool UserAutenticado  = ServicioRecaudoBancarioAuth();
			
				DTOObjetoGeneralSalida ObjetoSalida = new DTOObjetoGeneralSalida();
				Conversion Convertir = new Conversion();
				if (!UserAutenticado)
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
					DTOObjetoGeneral ObjetoEntrada = Convertir.ConvertirObjetoConsultaToDTOGeneral(dto);
					ObjetoSalida = new BMCliente().ConsultarCliente(ObjetoEntrada);
				}
				responseData = Convertir.ConvertirDTOSalidaToObjetoConsulta(ObjetoSalida);
				return responseData;
			}
			catch (Exception ex)
			{
				objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE10, TipoMensaje.Banco);
				responseData.codigoRespuestaNotificacion = objMensaje.Valor +  ".Excepción: " + ex;
				return responseData;
			}
		}

	
		[HttpPost]
		[Route("notificacionRecaudo")]
		public @return notificacionRecaudo(RecaudoDto dto)
		{
			DTOMensaje objMensaje = new DTOMensaje();
			@return responseData = new @return();
			try
			{
				bool UserAutenticado = ServicioRecaudoBancarioAuth();

				DTOObjetoGeneralSalida ObjetoSalida = new DTOObjetoGeneralSalida();
				List<DTOObjetoGeneral> ObjetoEntrada = new List<DTOObjetoGeneral>();
				Conversion Convertir = new Conversion();
				if (!UserAutenticado)
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
					ObjetoEntrada = Convertir.ConvertirObjetoRecaudoToDTOGeneral(dto);
					DateTime time = DateTime.Now;
					foreach (DTOObjetoGeneral objetoGeneral in ObjetoEntrada)
					{
						ObjetoSalida = new BMRecaudo().RealizarRecaudo(objetoGeneral, time);

						using (StringWriter stringwriter = new StringWriter())
						{
							XmlSerializer serializer = new XmlSerializer(typeof(RecaudoDto));
							serializer.Serialize(stringwriter, dto);

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
				objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE10, TipoMensaje.Banco);
				responseData.codigoRespuestaNotificacion = objMensaje.Valor + ".Excepción: " + ex;
				return responseData;
			}
		}

		[HttpPost]
		[Route("VerificarEstadoWebService")]
		public VerificarEstadoResponseDto VerificarEstadoWebService(VerificarEstadoDto SignonRq)
		{
			VerificarEstadoResponseDto responseData = new VerificarEstadoResponseDto();
			try
			{
				bool UserAutenticado = ServicioRecaudoBancarioAuth();

				DTOObjetoGeneralSalida ObjetoSalida = new DTOObjetoGeneralSalida();
				DTOMensaje objMensaje = new DTOMensaje();
				responseData.ServerDt = DateTime.Now;
				if (!UserAutenticado)
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
				DTOMensaje objMensaje = new DTOMensaje();
				objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE10, TipoMensaje.Banco);
				responseData.codigoRespuesta = objMensaje.Valor + ".Excepción: " + ex;
				return responseData;
			}
		}
	}
}
