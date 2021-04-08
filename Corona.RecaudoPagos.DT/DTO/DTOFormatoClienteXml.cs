using Corona.RecaudoPagos.DT.General;
using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.DT.DTO
{
    public class DTOFormatoClienteXml
    {
        //   public XNamespace SoapEnveriment = Environment.GetEnvironmentVariable("NameSpaceSoapEnv");
        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://schemas.xmlsoap.org/soap/envelope/", IsNullable = false)]
        public partial class Envelope
        {

            private EnvelopeHeader headerField;

            private EnvelopeBody bodyField;

            /// <remarks/>
            public EnvelopeHeader Header
            {
                get
                {
                    return this.headerField;
                }
                set
                {
                    this.headerField = value;
                }
            }

            /// <remarks/>
            public EnvelopeBody Body
            {
                get
                {
                    return this.bodyField;
                }
                set
                {
                    this.bodyField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
        public partial class EnvelopeHeader
        {

            private Authorization authorizationField;

            /// <remarks/>
            [System.Xml.Serialization.XmlElementAttribute(Namespace = "http://service.recaudosdavivienda.com/")]
            public Authorization Authorization
            {
                get
                {
                    return this.authorizationField;
                }
                set
                {
                    this.authorizationField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosdavivienda.com/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://service.recaudosdavivienda.com/", IsNullable = false)]
        public partial class Authorization
        {

            private string userField;

            private string passwordField;

            /// <remarks/>
            public string User
            {
                get
                {
                    return this.userField;
                }
                set
                {
                    this.userField = value;
                }
            }

            /// <remarks/>
            public string Password
            {
                get
                {
                    return this.passwordField;
                }
                set
                {
                    this.passwordField = value;
                }
            } 
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
        public partial class EnvelopeBody
        {

            private actualizaCliente actualizaClienteField;

            /// <remarks/>
            [System.Xml.Serialization.XmlElementAttribute(Namespace = "http://service.recaudosdavivienda.com/")]
            public actualizaCliente actualizaCliente
            {
                get
                {
                    return this.actualizaClienteField;
                }
                set
                {
                    this.actualizaClienteField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosdavivienda.com/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://service.recaudosdavivienda.com/", IsNullable = false)]
        public partial class actualizaCliente
        {

            private actualizaClienteClienteDto[] dtoField;

            /// <remarks/>
            [System.Xml.Serialization.XmlArrayItemAttribute("ClienteDto", IsNullable = false)]
            public actualizaClienteClienteDto[] dto
            {
                get
                {
                    return this.dtoField;
                }
                set
                {
                    this.dtoField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosdavivienda.com/")]
        public partial class actualizaClienteClienteDto
        {

            private string idSociedadField;

            private string nroIdentificacionField;

            private string idClienteField;

            private string idCentralField;

            /// <remarks/>
            public string IdSociedad
            {
                get
                {
                    return this.idSociedadField;
                }
                set
                {
                    this.idSociedadField = value;
                }
            }

            /// <remarks/>
            public string NroIdentificacion
            {
                get
                {
                    return this.nroIdentificacionField;
                }
                set
                {
                    this.nroIdentificacionField = value;
                }
            }

            /// <remarks/>
            public string IdCliente
            {
                get
                {
                    return this.idClienteField;
                }
                set
                {
                    this.idClienteField = value;
                }
            }

            /// <remarks/>
            public string IdCentral
            {
                get
                {
                    return this.idCentralField;
                }
                set
                {
                    this.idCentralField = value;
                }
            }
        }


    }
}
