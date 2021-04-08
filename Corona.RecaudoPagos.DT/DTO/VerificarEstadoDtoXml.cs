using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.DT.DTO
{
    public class VerificarEstadoDtoXml
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

            private VerificarEstadoWebService verificarEstadoWebServiceField;

            /// <remarks/>
            [System.Xml.Serialization.XmlElementAttribute(Namespace = "http://service.recaudosbancarios.com/")]
            public VerificarEstadoWebService VerificarEstadoWebService
            {
                get
                {
                    return this.verificarEstadoWebServiceField;
                }
                set
                {
                    this.verificarEstadoWebServiceField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        [System.Xml.Serialization.XmlRootAttribute(Namespace = "http://service.recaudosbancarios.com/", IsNullable = false)]
        public partial class VerificarEstadoWebService
        {

            private VerificarEstadoWebServiceSignonRq signonRqField;

            /// <remarks/>
            public VerificarEstadoWebServiceSignonRq SignonRq
            {
                get
                {
                    return this.signonRqField;
                }
                set
                {
                    this.signonRqField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        public partial class VerificarEstadoWebServiceSignonRq
        {

            private System.DateTime clientDtField;

            private string custLangPrefField;

            private VerificarEstadoWebServiceSignonRqClientApp clientAppField;

            /// <remarks/>
            public System.DateTime ClientDt
            {
                get
                {
                    return this.clientDtField;
                }
                set
                {
                    this.clientDtField = value;
                }
            }

            /// <remarks/>
            public string CustLangPref
            {
                get
                {
                    return this.custLangPrefField;
                }
                set
                {
                    this.custLangPrefField = value;
                }
            }

            /// <remarks/>
            public VerificarEstadoWebServiceSignonRqClientApp ClientApp
            {
                get
                {
                    return this.clientAppField;
                }
                set
                {
                    this.clientAppField = value;
                }
            }
        }

        /// <remarks/>
        [System.SerializableAttribute()]
        [System.ComponentModel.DesignerCategoryAttribute("code")]
        [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "http://service.recaudosbancarios.com/")]
        public partial class VerificarEstadoWebServiceSignonRqClientApp
        {

            private string orgField;

            private string nameField;

            private decimal versionField;

            /// <remarks/>
            public string Org
            {
                get
                {
                    return this.orgField;
                }
                set
                {
                    this.orgField = value;
                }
            }

            /// <remarks/>
            public string Name
            {
                get
                {
                    return this.nameField;
                }
                set
                {
                    this.nameField = value;
                }
            }

            /// <remarks/>
            public decimal Version
            {
                get
                {
                    return this.versionField;
                }
                set
                {
                    this.versionField = value;
                }
            }
        }


    }
}
