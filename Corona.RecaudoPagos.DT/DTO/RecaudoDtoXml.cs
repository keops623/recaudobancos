
namespace Corona.RecaudoPagos.DT.DTO
{
    public class RecaudoDtoXml
    {

        // NOTA: El código generado puede requerir, como mínimo, .NET Framework 4.5 o .NET Core/Standard 2.0.
        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://schemas.xmlsoap.org/soap/envelope/", IsNullable = false)]
        public partial class Envelope
        {
            /// <remarks/>
            public EnvelopeHeader Header { get; set; }

            /// <remarks/>
            public EnvelopeBody Body { get; set; }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
        public partial class EnvelopeHeader
        {
            /// <remarks/>
            [System.Xml.Serialization.XmlElementAttribute(Namespace = "http://service.recaudosbancarios.com/")]
            public Security Security { get; set; }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://service.recaudosbancarios.com/", IsNullable = false)]
        public partial class Security
        {
            /// <remarks/>
            public SecurityUsernameToken UsernameToken { get; set; }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        public partial class SecurityUsernameToken
        {
            /// <remarks/>
            public string Username { get; set; }
            
            /// <remarks/>
            public string Password { get; set; }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
        public partial class EnvelopeBody
        {
            /// <remarks/>
            [System.Xml.Serialization.XmlElementAttribute(Namespace = "http://service.recaudosbancarios.com/")]
            public notificacionRecaudo notificacionRecaudo { get; set; }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://service.recaudosbancarios.com/", IsNullable = false)]
        public partial class notificacionRecaudo
        {
            /// <remarks/>
            public notificacionRecaudoDto dto { get; set; }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        public partial class notificacionRecaudoDto
        {
            /// <remarks/>
            public string canalRecaudo { get; set; }
            
            /// <remarks/>
            public string codigoBanco { get; set; }
            
            /// <remarks/>
            public string codigoConfirmacionRecaudo { get; set; }
            
            /// <remarks/>
            public string codigoIAC { get; set; }
            
            /// <remarks/>
            public string fechaRecaudo { get; set; }
            
            /// <remarks/>
            public string fechaVencimiento { get; set; }
            
            /// <remarks/>
            public string formaPago { get; set; }
            
            /// <remarks/>
            public string horaRecaudo { get; set; }
            
            /// <remarks/>
            public string jornadaRecaudo { get; set; }
            
            /// <remarks/>
            public string numeroCheque { get; set; }
            
            /// <remarks/>
            public string numeroConvenio { get; set; }
            
            /// <remarks/>
            public string oficinaRecaudo { get; set; }
            
            /// <remarks/>
            public string referencia1 { get; set; }
            
            /// <remarks/>
            public string referencia2 { get; set; }
            
            /// <remarks/>
            public string terminalRecaudo { get; set; }
            
            /// <remarks/>
            public string tipoCanje { get; set; }
            
            /// <remarks/>
            public string tipoMoneda { get; set; }
            
            /// <remarks/>
            public string valorCheque { get; set; }
            
            /// <remarks/>
            public string valorEfectivo { get; set; }
            
            /// <remarks/>
            public string valorTotalRecaudado { get; set; }
            
            /// <remarks/>
            public string valorFactura { get; set; }
        }
    }
}
