using Corona.RecaudoPagos.BM.Parametro;
using Corona.RecaudoPagos.DM.Datos;
using Corona.RecaudoPagos.DT.Entidades;
using Corona.RecaudoPagos.DT.General;
using Corona.RecaudoPagos.DT.Notificacion;
using System;
using System.Collections.Generic;
using System.Text;
using static Corona.RecaudoPagos.DT.Notificacion.DTOComponentes;

namespace Corona.RecaudoPagos.BM.Clientes
{
    public class BMCliente : IBMCliente
    {
        DTOObjetoGeneralSalida ObjetoSalida = new DTOObjetoGeneralSalida();

        public DTOObjetoGeneralSalida ConsultarCliente(DTOObjetoGeneral objDatos)
        {
            try
            {
                ObjetoSalida.FechaTransaccion = objDatos.FechaRecaudo;
                DTOParametro dtoParametro = new DTOParametro
                {
                    COD_BANCO = objDatos.CodigoBanco,
                    CONVENIO = objDatos.NumeroConvenio
                };
                objDatos.Sociedad = new BMParametro().ConsultarSociedad(dtoParametro);
                if (string.IsNullOrEmpty(objDatos.Sociedad))
                {
                    DTOMensaje objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE2, TipoMensaje.Banco);
                    ObjetoSalida = new DTOObjetoGeneralSalida
                    {
                        CodigoError = objMensaje.Valor,
                        EstadoOperacion = false,
                        DescripcionError = objMensaje.Texto,
                        Estado = "3",
                        FechaVencimiento = DTOComponentes.FechaCero
                    };
                    return ObjetoSalida;
                }

                DMCliente dmCliente = new DMCliente();
                ObjetoSalida = dmCliente.ConsultarCliente(objDatos);
                if (ObjetoSalida != null)
                {
                    DTOMensaje objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE0, TipoMensaje.Banco);
                    ObjetoSalida.CodigoError = objMensaje.Valor;
                    ObjetoSalida.EstadoOperacion = true;
                    ObjetoSalida.DescripcionError = objMensaje.Texto;
                    ObjetoSalida.Estado = "1";
                    ObjetoSalida.FechaVencimiento = DTOComponentes.FechaCero;
                }
                else
                {
                    DTOMensaje objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE1, TipoMensaje.Banco);
                    ObjetoSalida = new DTOObjetoGeneralSalida
                    {
                        CodigoError = objMensaje.Valor,
                        EstadoOperacion = false,
                        DescripcionError = objMensaje.Texto,
                        Estado = "3",
                        FechaVencimiento = DTOComponentes.FechaCero
                    };
                }
                return ObjetoSalida;

            }
            catch (Exception ex)
            {              
                ObjetoSalida.TipoRegistro = objDatos.TipoRegistro;
                ObjetoSalida.CodigoError = DTOCodigoMensajes.GENERAL_MENSAJE11.ToString();
                ObjetoSalida.DescripcionError = ex.Message;
                return ObjetoSalida;
            }
        }

        public DTOObjetoGeneralSalida InsertarCliente(List<DTOCliente> dtoCliente)
        {
            try
            {
                StringBuilder xml = new StringBuilder();
                xml.Append("<ROOT>");
                foreach (DTOCliente dt in dtoCliente)
                {
                    xml.Append("<ROW>");
                    xml.Append(string.Format("<Sociedad>{0}</Sociedad>", dt.Sociedad));
                    xml.Append(string.Format("<NIT>{0}</NIT>", dt.NIT));
                    xml.Append(string.Format("<Cliente>{0}</Cliente>", dt.Cliente));
                    xml.Append(string.Format("<Central>{0}</Central>", dt.Central));
                    xml.Append("</ROW>");
                }
                xml.Append("</ROOT>");

                ObjetoSalida.EstadoOperacion = new DMCliente().InsertarCliente(xml);
				DTOMensaje objMensaje;
                if (ObjetoSalida.EstadoOperacion)
                {
                    objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.BANCO_MENSAJE0, TipoMensaje.Banco);
                }
                else
                {
                    objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.GENERAL_MENSAJE11, TipoMensaje.General);
                }
                ObjetoSalida.CodigoError = objMensaje.Valor;
                ObjetoSalida.DescripcionError = objMensaje.Texto;

                return ObjetoSalida;
            }
            catch (Exception ex)
            {
                ObjetoSalida.CodigoError = DTOCodigoMensajes.GENERAL_MENSAJE11.ToString();
                ObjetoSalida.DescripcionError = ex.Message;
                return ObjetoSalida;
            }
        }
    }
}
