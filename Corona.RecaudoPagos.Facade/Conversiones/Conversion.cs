using Corona.RecaudoPagos.DT.DTO;
using Corona.RecaudoPagos.DT.Entidades;
using Corona.RecaudoPagos.DT.General;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using static Corona.RecaudoPagos.DT.Notificacion.DTOComponentes;

namespace Corona.RecaudoPagos.Facade.Conversiones
{
    public class Conversion
    {
        #region Consulta
        /// <summary>
        /// Realiza el mapeo del objeto que se recibe de la entidad a la usada en el sistema para consulta
        /// </summary>
        /// <param name="dto">ConsultaDto</param>
        /// <returns>DTOObjetoGeneral</returns>
        public DTOObjetoGeneral ConvertirObjetoConsultaToDTOGeneral(ConsultaDto dto)
        {
            DTOConfiguraciones Configuraciones = new DTOConfiguraciones();
            DTOObjetoGeneral responseData = new DTOObjetoGeneral
            {
                CanalRecaudo = dto.canal,
                CodigoBanco = dto.codigoBanco,
                CodigoIAC = (dto.numeroConvenio != Configuraciones.CodigoConvenioRecaudoBarras ? "0" : dto.codigoIAC),
                FechaVencimiento = (dto.numeroConvenio != Configuraciones.CodigoConvenioRecaudoBarras
                                                    || string.IsNullOrEmpty(dto.fechaVencimiento.Trim()) ?
                                                        DateTime.ParseExact("19000101", "yyyyMMdd", CultureInfo.InvariantCulture) :
                                                        DateTime.ParseExact(dto.fechaVencimiento, "yyyyMMdd", CultureInfo.InvariantCulture)),
                JornadaRecaudo = dto.jornadaPago,
                NumeroConvenio = dto.numeroConvenio,
                Referencia1 = dto.referencia1.TrimStart('0'),
                Referencia2 = dto.referencia2.TrimStart('0'),
                TerminalRecaudo = dto.terminalRecaudo,
                TipoMoneda = dto.tipoMoneda,
                ValorFactura = (dto.numeroConvenio != Configuraciones.CodigoConvenioRecaudoBarras
                                                    || dto.valorFactura.Trim().Equals("0") ? "0.00" : dto.valorFactura),
                //TotalTransaccion = dto.valorPagar,
            };
            return responseData;
        }

        /// <summary>
        /// Convierte objeto DTOObjetoGeneralSalida en un objeto propio del servicio
        /// </summary>
        /// <param name="ObjetoSalida">DTOObjetoGeneralSalida</param>
        /// <returns>@return</returns>
        public @return ConvertirDTOSalidaToObjetoConsulta(DTOObjetoGeneralSalida ObjetoSalida)
        {
            @return dtoReturn = new @return
            {
                codigoRespuestaConsulta = ObjetoSalida.CodigoError.PadLeft(4, '0'),
                estadoFactura = ObjetoSalida.Estado,
                fechaVencimiento = ObjetoSalida.FechaVencimiento,
                indicadorFacturaValida = ObjetoSalida.EstadoOperacion.ToString(),
                mensajeRespuestaConsulta = ObjetoSalida.DescripcionError
            };

            decimal saldo = 0;
            if (ObjetoSalida.ValorFactura != 0)
            {
                saldo = decimal.Parse(ObjetoSalida.ValorFactura.ToString());
            }

            var curSaldo = string.Format("{0:0.00}", saldo);
            dtoReturn.valorFactura = (curSaldo).ToString().Replace(',', '.');

            return dtoReturn;
        }
        #endregion

        #region Pagos

        /// <summary>
        /// Realiza el mapeo del objeto que se recibe de la entidad a la usada en el sistema para recaudo
        /// </summary>
        /// <param name="Obj">RecaudoDto</param>
        /// <returns>DTOObjetoGeneral</returns>
        public List<DTOObjetoGeneral> ConvertirObjetoRecaudoToDTOGeneral(RecaudoDto Obj)
        {
            DTOConfiguraciones Configuraciones = new DTOConfiguraciones();
            List<DTOObjetoGeneral> responseData = new List<DTOObjetoGeneral>();
            /// Cálculo de valor en efectivo siendo la diferencia de Total recaudad por valor recaudado en cheque
            string valorEfectivo = ((Decimal.Parse(Obj.valorTotalRecaudado, NumberStyles.AllowDecimalPoint, CultureInfo.InvariantCulture))
                                - (Decimal.Parse(Obj.valorCheque, NumberStyles.AllowDecimalPoint, CultureInfo.InvariantCulture))).ToString();

            /// Si existe pago mixto se registra el valor del cheque aparte
            if (Obj.formaPago.TrimStart('0').Equals("3"))
            {
                DTOObjetoGeneral _DTOObjetoGeneral1 = new DTOObjetoGeneral();
                _DTOObjetoGeneral1.CanalRecaudo = Obj.canalRecaudo;
                _DTOObjetoGeneral1.CodigoBanco = Obj.codigoBanco;
                _DTOObjetoGeneral1.CodigoConfirmacionRecaudo = Obj.codigoConfirmacionRecaudo;
                _DTOObjetoGeneral1.CodigoProducto = Obj.codigoIAC;
                _DTOObjetoGeneral1.FechaRecaudo = Obj.fechaRecaudo;
                _DTOObjetoGeneral1.FechaVencimiento = (Obj.numeroConvenio != Configuraciones.CodigoConvenioRecaudoBarras
                                            || string.IsNullOrEmpty(Obj.fechaVencimiento.Trim()) ?
                                            DateTime.ParseExact("19000101", "yyyyMMdd", CultureInfo.InvariantCulture) :
                                            DateTime.ParseExact(Obj.fechaVencimiento, "yyyyMMdd", CultureInfo.InvariantCulture));
                _DTOObjetoGeneral1.FechaPago = DateTime.ParseExact(Obj.fechaRecaudo, "yyyyMMdd", CultureInfo.InvariantCulture);
                _DTOObjetoGeneral1.FormaPago = ((int)FormaPago.PagoCheque).ToString();
                _DTOObjetoGeneral1.HoraRecaudo = DateTime.ParseExact(Obj.horaRecaudo, "HHmmss", null).ToString("HH:mm:ss");
                _DTOObjetoGeneral1.JornadaRecaudo = Obj.jornadaRecaudo;
                _DTOObjetoGeneral1.NumeroCheque = Obj.numeroCheque;
                _DTOObjetoGeneral1.NumeroConvenio = Obj.numeroConvenio;
                _DTOObjetoGeneral1.Oficina = Obj.oficinaRecaudo;
                _DTOObjetoGeneral1.Referencia1 = Obj.referencia1.TrimStart('0');
                _DTOObjetoGeneral1.Referencia2 = Obj.referencia2.TrimStart('0');
                _DTOObjetoGeneral1.TerminalRecaudo = Obj.terminalRecaudo;
                _DTOObjetoGeneral1.TipoCanje = Obj.tipoCanje;
                _DTOObjetoGeneral1.TipoMoneda = Obj.tipoMoneda;
                _DTOObjetoGeneral1.ValorCheque = Obj.valorCheque;
                _DTOObjetoGeneral1.ValorEfectivo = ValorCero;
                _DTOObjetoGeneral1.ValorFactura = Obj.valorFactura;
                _DTOObjetoGeneral1.TotalRecaudado = Decimal.Parse(Obj.valorCheque, NumberStyles.AllowDecimalPoint);

                _DTOObjetoGeneral1.TipoRegistro = ((int)TipoRegistro.Contingencia).ToString();
                _DTOObjetoGeneral1.EstadoRecaudo = ((int)EstadoRecaudo.BloqueadoCheque).ToString();

                responseData.Add(_DTOObjetoGeneral1);
            }

            DTOObjetoGeneral _DTOObjetoGeneral = new DTOObjetoGeneral();

            _DTOObjetoGeneral.CanalRecaudo = Obj.canalRecaudo;
            _DTOObjetoGeneral.CodigoBanco = Obj.codigoBanco;
            _DTOObjetoGeneral.CodigoConfirmacionRecaudo = Obj.codigoConfirmacionRecaudo;
            _DTOObjetoGeneral.CodigoProducto = Obj.codigoIAC;
            _DTOObjetoGeneral.FechaRecaudo = Obj.fechaRecaudo;
            _DTOObjetoGeneral.FechaVencimiento = (Obj.numeroConvenio != Configuraciones.CodigoConvenioRecaudoBarras
                                            || string.IsNullOrEmpty(Obj.fechaVencimiento.Trim()) ?
                                            DateTime.ParseExact("19000101", "yyyyMMdd", CultureInfo.InvariantCulture) :
                                            DateTime.ParseExact(Obj.fechaVencimiento, "yyyyMMdd", CultureInfo.InvariantCulture));
            _DTOObjetoGeneral.FechaPago = DateTime.ParseExact(Obj.fechaRecaudo, "yyyyMMdd", CultureInfo.InvariantCulture);
            _DTOObjetoGeneral.FormaPago = (Obj.formaPago.TrimStart('0').Equals("2") ? ((int)FormaPago.PagoCheque).ToString() : ((int)FormaPago.PagoEfectivo).ToString());
            _DTOObjetoGeneral.HoraRecaudo = DateTime.ParseExact(Obj.horaRecaudo, "HHmmss", null).ToString("HH:mm:ss");
            _DTOObjetoGeneral.JornadaRecaudo = Obj.jornadaRecaudo;
            _DTOObjetoGeneral.NumeroCheque = (Obj.formaPago.TrimStart('0').Equals("2") ? Obj.numeroCheque : "");
            _DTOObjetoGeneral.NumeroConvenio = Obj.numeroConvenio;
            _DTOObjetoGeneral.Oficina = Obj.oficinaRecaudo.ToString();
            _DTOObjetoGeneral.Referencia1 = Obj.referencia1.TrimStart('0');
            _DTOObjetoGeneral.Referencia2 = Obj.referencia2.TrimStart('0');
            _DTOObjetoGeneral.TerminalRecaudo = Obj.terminalRecaudo;
            _DTOObjetoGeneral.TipoCanje = Obj.tipoCanje;
            _DTOObjetoGeneral.TipoMoneda = Obj.tipoMoneda;
            _DTOObjetoGeneral.ValorCheque = Obj.valorCheque;
            _DTOObjetoGeneral.ValorEfectivo = valorEfectivo;
            _DTOObjetoGeneral.ValorFactura = Obj.valorFactura;
            _DTOObjetoGeneral.TotalRecaudado = (Obj.formaPago.TrimStart('0').Equals("2") ? Decimal.Parse(Obj.valorCheque, NumberStyles.AllowDecimalPoint, CultureInfo.InvariantCulture) :
                                                        Decimal.Parse(valorEfectivo, NumberStyles.AllowDecimalPoint));

            _DTOObjetoGeneral.TipoRegistro = ((int)TipoRegistro.Recaudo).ToString();
            _DTOObjetoGeneral.EstadoRecaudo = (Obj.formaPago.Trim().TrimStart('0').Equals("2") ? ((int)EstadoRecaudo.BloqueadoCheque).ToString() : ((int)EstadoRecaudo.SinNotificarWs).ToString());

            responseData.Add(_DTOObjetoGeneral);
            return responseData;
        }

        /// <summary>
        /// Convierte objeto DTOObjetoGeneralSalida en un objeto propio del servicio
        /// </summary>
        /// <param name="ObjetoSalida">DTOObjetoGeneralSalida</param>
        /// <returns>@return</returns>
        public @return ConvertirDTOSalidaToObjetoPago(DTOObjetoGeneralSalida ObjetoSalida)
        {
            @return dtoReturn = new @return
            {
                codigoRespuestaNotificacion = ObjetoSalida.CodigoError,
                estadoFactura = ObjetoSalida.Estado,
                fechaVencimiento = ObjetoSalida.FechaVencimiento,
                indicadorNotificacionPago = ObjetoSalida.EstadoOperacion.ToString(),
                mensajeRespuestaNotificacion = ObjetoSalida.DescripcionError,
                valorFactura = ObjetoSalida.ValorFactura.ToString()
            };
            return dtoReturn;
        }
        #endregion
    }
}
