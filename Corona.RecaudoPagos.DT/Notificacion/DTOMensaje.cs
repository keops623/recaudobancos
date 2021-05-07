using System;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Linq;
using System.Xml.XPath;
using static Corona.RecaudoPagos.DT.Notificacion.DTOComponentes;

namespace Corona.RecaudoPagos.DT.Notificacion
{
    public class DTOMensaje
    {

       

        #region Constantes

        private const string NOMBRE_ARCHIVO_MENSAJES = "Mensajes.xml";
        private const string MENSAJE_ARCHIVO = "No se encontró el archivo: ";

        #endregion

        #region Constructores

        /// <summary>
        /// Constructor de la clase.
        /// </summary>
        public DTOMensaje()
        {
        }

        /// <summary>
        /// Crea una nueva instancia del mensaje, consultando el texto asociado al código.
        /// </summary>
        /// <param name="codigo">Código con el que se identifica y se consulta el mensaje.
        /// </param>
        public DTOMensaje(int codigo)
            : this(codigo, null)
        {
        }

        /// <summary>
        /// Crea una nueva instancia del mensaje, consultando el texto asociado al código.
        /// </summary>
        /// <param name="codigo">Código con el que se identifica y se consulta el mensaje.
        /// </param>
        /// <param name="parametros">Parámetros necesarios para completar el texto del
        /// mensaje.</param>
        public DTOMensaje(int codigo, params string[] parametros)
        {
            //Todo:el gestor de mensajes no funciona porque hay una referencia circular entre capa soporte y capa DT
            this.Texto = ConsultarMensaje(codigo);
            this.Codigo = codigo;
            if (parametros != null)
            {
                this.Texto = string.Format(this.Texto, parametros);
            }
        }

        #endregion

        #region Propiedades

        /// <summary>
        /// Obtiene el código del mensaje.
        /// </summary>
        [DataMember]
        public int Codigo
        {
            get;
            set;
        }

        /// <summary>
        /// Obtiene la descripción del mensaje.
        /// </summary>
        [DataMember]
        public string Texto
        {
            get;
            set;
        }

        /// <summary>
        /// Obtiene el valor del codigo de mensaje
        /// </summary>
        public string Valor { get; set; }

        public string Estado { get; set; }


        #endregion

        #region Métodos
        /// <summary>
        /// Consulta la información (desde el repositorio de mensajes) necesaria para crear
        /// un mensaje según el código. Establece los valores para las variables de clase.
        /// </summary>
        /// <param name="codigo">Código del mensaje.</param>
        public static string ConsultarMensaje(int codigo)
        {
            return GetMensaje(codigo, TipoMensaje.General, null).Texto;
        }

        /// <summary>
        /// Obtiene las propiedades de un mensage
        /// </summary>
        /// <param name="codigo">Codigo unico del mensaje a consultar</param>
        /// <returns>Clase DTMenssajem</returns>
        public static DTOMensaje GetMensaje(int codigo)
        {
            return GetMensaje(codigo, TipoMensaje.General, null);
        }

        public static DTOMensaje GetMensaje(int codigo, params string[] parametros)
        {
            return GetMensaje(codigo, TipoMensaje.General, parametros);
        }

        public static DTOMensaje GetMensaje(int codigo, TipoMensaje tipo, params string[] parametros)
        {

            string appId = (Environment.GetEnvironmentVariable("APPID") != null) ?
                            Environment.GetEnvironmentVariable("APPID").ToString() : "";

            string entidad = Environment.GetEnvironmentVariable(appId + "entidad");
         
            XElement xmlMessage;
            DTOMensaje objMensaje = new DTOMensaje();
            TextReader Archivo = MensaesXML();
            XDocument xDoc = XDocument.Load(Archivo);

            if (xDoc != null)
            {
                if (tipo == TipoMensaje.Banco)
                {
                    xmlMessage = (from xmlItem in xDoc.Descendants("Bancos").Descendants("Entidad")
                                  where xmlItem.Attribute("Code").Value == entidad
                                  select xmlItem).First();
                }
                else if (tipo == TipoMensaje.General)
                {
                    xmlMessage = (from xmlItem in xDoc.Descendants("Generales")
                                  select xmlItem).FirstOrDefault();
                }
                else
                {
                    xmlMessage = (from xmlItem in xDoc.Descendants("Presentacion")
                                  select xmlItem).FirstOrDefault();
                }

                var mensaje = (from xmlMsg in xmlMessage.Descendants("mensaje")
                               where xmlMsg.Attribute("codigo").Value == codigo.ToString()
                               select xmlMsg).FirstOrDefault();

                if (mensaje != null)
                {
                    objMensaje.Texto = mensaje.Value;
                    objMensaje.Valor = mensaje.Attribute("valor").Value;
                    objMensaje.Estado = mensaje.Attribute("estado") == null ? "" : mensaje.Attribute("estado").Value;
                    if (parametros != null)
                    {
                        objMensaje.Texto = string.Format(objMensaje.Texto, parametros);
                    }
                }
            }
            return objMensaje;
        }

        public static TextReader MensaesXML()
        {
            TextReader tr = new StringReader("<?xml version='1.0' encoding='utf-8'?><mensajes xmlns:xsi='http://www.w2.org/2001/XMLSchema-instance'> <Generales> <mensaje codigo='0' valor=''>Fallo Operación</mensaje> <mensaje codigo='1' valor=''>Datos incompletos {0}</mensaje> <mensaje codigo='2' valor=''>Error de autenticación</mensaje> <mensaje codigo='3' valor=''>Código banco erroneo</mensaje> <mensaje codigo='4' valor=''>Código banco no existe</mensaje> <mensaje codigo='5' valor=''>Número de orden requerido</mensaje> <mensaje codigo='6' valor=''>Número de orden erroneo</mensaje> <mensaje codigo='7' valor=''>Fecha de pago inválida</mensaje> <mensaje codigo='8' valor=''>Valor pagado supera el máximo permitido</mensaje> <mensaje codigo='9' valor=''>Sin Fechas de cobranza</mensaje> <mensaje codigo='10' valor=''>Número de cédula no existe Cédula: {0} Orden: {1}</mensaje> <mensaje codigo='11' valor=''>Error del sistema</mensaje> <mensaje codigo='12' valor=''>Ocurrió un error en el sistema</mensaje> <mensaje codigo='13' valor=''>Sesión cerrada con éxito</mensaje> <mensaje codigo='14' valor=''>Usuario o clave no coinciden</mensaje> <mensaje codigo='15' valor=''>Registro cancelado correctamente</mensaje> <mensaje codigo='16' valor=''>Registro pendiente de reprocesar</mensaje> <mensaje codigo='17' valor=''>No se encontraron registros</mensaje> </Generales> <Bancos> <Entidad Code='Davivienda'> <mensaje codigo='0' valor='0000' estado=''>Transacción exitosa</mensaje> <mensaje codigo='1' valor='0278' estado='03'>Referencia para pago no existe. Cliente no existe</mensaje> <mensaje codigo='2' valor='0278' estado='03'>Referencia para pago no existe</mensaje> <mensaje codigo='3' valor='2190' estado='03'>Referencia dos para pago no existe</mensaje> <mensaje codigo='4' valor='0424' estado='03'>Factura ya cancelada</mensaje> <mensaje codigo='5' valor='0423' estado='03'>Factura ya vencida</mensaje> <mensaje codigo='6' valor='1762' estado='03'>Valor factura diferente</mensaje> <mensaje codigo='7' valor='2192' estado='03'>Código IAC no habilitado en web service</mensaje> <mensaje codigo='8' valor='2077' estado='03'>Forma de pago inválida</mensaje> <mensaje codigo='9' valor='0422' estado='03'>Número de factura no existe</mensaje> <mensaje codigo='10' valor='2200' estado='03'>Error inesperado web service empresa</mensaje> <mensaje codigo='11' valor='7045' estado='03'>Valor transacción no permitido</mensaje> <mensaje codigo='12' valor='9999' estado='03'>Error autenticación WS</mensaje> </Entidad> <Entidad Code='Estandar'> <mensaje codigo='0' valor='0000' estado=''>Transacción exitosa</mensaje> <mensaje codigo='1' valor='0278' estado='03'>Referencia para pago no existe. Cliente no existe</mensaje> <mensaje codigo='2' valor='0278' estado='03'>Referencia para pago no existe</mensaje> <mensaje codigo='3' valor='2190' estado='03'>Referencia dos para pago no existe</mensaje> <mensaje codigo='4' valor='0424' estado='03'>Factura ya cancelada</mensaje> <mensaje codigo='5' valor='0423' estado='03'>Factura ya vencida</mensaje> <mensaje codigo='6' valor='1762' estado='03'>Valor factura diferente</mensaje> <mensaje codigo='7' valor='2192' estado='03'>Código IAC no habilitado en web service</mensaje> <mensaje codigo='8' valor='2077' estado='03'>Forma de pago inválida</mensaje> <mensaje codigo='9' valor='0422' estado='03'>Número de factura no existe</mensaje> <mensaje codigo='10' valor='2200' estado='03'>Error inesperado web service (Error General)</mensaje> <mensaje codigo='11' valor='7045' estado='03'>Valor transacción no permitido</mensaje> <mensaje codigo='12' valor='9999' estado='03'>Error autenticación WS</mensaje> </Entidad> </Bancos> </mensajes>");
            return tr;
        }
        #endregion
    }
}
