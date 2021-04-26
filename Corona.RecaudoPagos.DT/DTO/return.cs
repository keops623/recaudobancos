using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Serialization;

namespace Corona.RecaudoPagos.DT.DTO
{
    [XmlRoot(ElementName = "")]
    public class @return
    {
        [XmlElement]
        public string codigoRespuestaConsulta { get; set; }

        [XmlElement]
        public string estadoFactura { get; set; }

        [XmlElement]
        public string fechaVencimiento { get; set; }

        [XmlElement]
        public string indicadorFacturaValida { get; set; }

        [XmlElement]
        public string mensajeRespuestaConsulta { get; set; }

        [XmlElement]
        public string valorFactura { get; set; }

        [XmlElement]
        public string codigoRespuestaNotificacion { get; set; }

        [XmlElement]
        public string mensajeRespuestaNotificacion { get; set; }

        [XmlElement]
        public string indicadorNotificacionPago { get; set; }
    }
}
