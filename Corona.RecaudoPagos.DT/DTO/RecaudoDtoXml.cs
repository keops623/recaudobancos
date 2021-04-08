using System;
using System.Collections.Generic;
using System.Text;

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

            private notificacionRecaudo notificacionRecaudoField;

            /// <remarks/>
            [System.Xml.Serialization.XmlElementAttribute(Namespace = "http://service.recaudosbancarios.com/")]
            public notificacionRecaudo notificacionRecaudo
            {
                get
                {
                    return this.notificacionRecaudoField;
                }
                set
                {
                    this.notificacionRecaudoField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://service.recaudosbancarios.com/", IsNullable = false)]
        public partial class notificacionRecaudo
        {

            private notificacionRecaudoDto dtoField;

            /// <remarks/>
            public notificacionRecaudoDto dto
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
        public partial class notificacionRecaudoDto
        {

            private string canalRecaudoField;

            private string codigoBancoField;

            private string codigoConfirmacionRecaudoField;

            private string codigoIACField;

            private string fechaRecaudoField;

            private string fechaVencimientoField;

            private string formaPagoField;

            private string horaRecaudoField;

            private string jornadaRecaudoField;

            private string numeroChequeField;

            private string numeroConvenioField;

            private string oficinaRecaudoField;

            private string referencia1Field;

            private string referencia2Field;

            private string terminalRecaudoField;

            private string tipoCanjeField;

            private string tipoMonedaField;

            private string valorChequeField;

            private string valorEfectivoField;

            private string valorTotalRecaudadoField;

            private string valorFacturaField;

            /// <remarks/>
            public string canalRecaudo
            {
                get
                {
                    return this.canalRecaudoField;
                }
                set
                {
                    this.canalRecaudoField = value;
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
            public string codigoConfirmacionRecaudo
            {
                get
                {
                    return this.codigoConfirmacionRecaudoField;
                }
                set
                {
                    this.codigoConfirmacionRecaudoField = value;
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
            public string fechaRecaudo
            {
                get
                {
                    return this.fechaRecaudoField;
                }
                set
                {
                    this.fechaRecaudoField = value;
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
            public string formaPago
            {
                get
                {
                    return this.formaPagoField;
                }
                set
                {
                    this.formaPagoField = value;
                }
            }

            /// <remarks/>
            public string horaRecaudo
            {
                get
                {
                    return this.horaRecaudoField;
                }
                set
                {
                    this.horaRecaudoField = value;
                }
            }

            /// <remarks/>
            public string jornadaRecaudo
            {
                get
                {
                    return this.jornadaRecaudoField;
                }
                set
                {
                    this.jornadaRecaudoField = value;
                }
            }

            /// <remarks/>
            public string numeroCheque
            {
                get
                {
                    return this.numeroChequeField;
                }
                set
                {
                    this.numeroChequeField = value;
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
            public string oficinaRecaudo
            {
                get
                {
                    return this.oficinaRecaudoField;
                }
                set
                {
                    this.oficinaRecaudoField = value;
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
            public string tipoCanje
            {
                get
                {
                    return this.tipoCanjeField;
                }
                set
                {
                    this.tipoCanjeField = value;
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
            public string valorCheque
            {
                get
                {
                    return this.valorChequeField;
                }
                set
                {
                    this.valorChequeField = value;
                }
            }

            /// <remarks/>
            public string valorEfectivo
            {
                get
                {
                    return this.valorEfectivoField;
                }
                set
                {
                    this.valorEfectivoField = value;
                }
            }

            /// <remarks/>
            public string valorTotalRecaudado
            {
                get
                {
                    return this.valorTotalRecaudadoField;
                }
                set
                {
                    this.valorTotalRecaudadoField = value;
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
        }


    }
}
