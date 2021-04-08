using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.DT.DTO
{
    public class ConsultaDtoXml
    {
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

            private Security securityField;

            /// <remarks/>
            [System.Xml.Serialization.XmlElementAttribute(Namespace = "http://service.recaudosbancarios.com/")]
            public Security Security
            {
                get
                {
                    return this.securityField;
                }
                set
                {
                    this.securityField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://service.recaudosbancarios.com/", IsNullable = false)]
        public partial class Security
        {

            private SecurityUsernameToken usernameTokenField;

            /// <remarks/>
            public SecurityUsernameToken UsernameToken
            {
                get
                {
                    return this.usernameTokenField;
                }
                set
                {
                    this.usernameTokenField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        public partial class SecurityUsernameToken
        {

            private string usernameField;

            private string passwordField;

            /// <remarks/>
            public string Username
            {
                get
                {
                    return this.usernameField;
                }
                set
                {
                    this.usernameField = value;
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

            private consultaRecaudo consultaRecaudoField;

            /// <remarks/>
            [System.Xml.Serialization.XmlElementAttribute(Namespace = "http://service.recaudosbancarios.com/")]
            public consultaRecaudo consultaRecaudo
            {
                get
                {
                    return this.consultaRecaudoField;
                }
                set
                {
                    this.consultaRecaudoField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://service.recaudosbancarios.com/", IsNullable = false)]
        public partial class consultaRecaudo
        {

            private consultaRecaudoDto dtoField;

            /// <remarks/>
            public consultaRecaudoDto dto
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
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        public partial class consultaRecaudoDto
        {

            private string canalField;

            private string codigoBancoField;

            private string codigoIACField;

            private string fechaVencimientoField;

            private string jornadaPagoField;

            private string numeroConvenioField;

            private string referencia1Field;

            private string referencia2Field;

            private string terminalRecaudoField;

            private string tipoMonedaField;

            private string valorFacturaField;

            private string valorPagarField;

            /// <remarks/>
            public string canal
            {
                get
                {
                    return this.canalField;
                }
                set
                {
                    this.canalField = value;
                }
            }

            /// <remarks/>
            public string codigoBanco
            {
                get
                {
                    return this.codigoBancoField;
                }
                set
                {
                    this.codigoBancoField = value;
                }
            }

            /// <remarks/>
            public string codigoIAC
            {
                get
                {
                    return this.codigoIACField;
                }
                set
                {
                    this.codigoIACField = value;
                }
            }

            /// <remarks/>
            public string fechaVencimiento
            {
                get
                {
                    return this.fechaVencimientoField;
                }
                set
                {
                    this.fechaVencimientoField = value;
                }
            }

            /// <remarks/>
            public string jornadaPago
            {
                get
                {
                    return this.jornadaPagoField;
                }
                set
                {
                    this.jornadaPagoField = value;
                }
            }

            /// <remarks/>
            public string numeroConvenio
            {
                get
                {
                    return this.numeroConvenioField;
                }
                set
                {
                    this.numeroConvenioField = value;
                }
            }

            /// <remarks/>
            public string referencia1
            {
                get
                {
                    return this.referencia1Field;
                }
                set
                {
                    this.referencia1Field = value;
                }
            }

            /// <remarks/>
            public string referencia2
            {
                get
                {
                    return this.referencia2Field;
                }
                set
                {
                    this.referencia2Field = value;
                }
            }

            /// <remarks/>
            public string terminalRecaudo
            {
                get
                {
                    return this.terminalRecaudoField;
                }
                set
                {
                    this.terminalRecaudoField = value;
                }
            }

            /// <remarks/>
            public string tipoMoneda
            {
                get
                {
                    return this.tipoMonedaField;
                }
                set
                {
                    this.tipoMonedaField = value;
                }
            }

            /// <remarks/>
            public string valorFactura
            {
                get
                {
                    return this.valorFacturaField;
                }
                set
                {
                    this.valorFacturaField = value;
                }
            }

            /// <remarks/>
            public string valorPagar
            {
                get
                {
                    return this.valorPagarField;
                }
                set
                {
                    this.valorPagarField = value;
                }
            }
        }


    }
}
