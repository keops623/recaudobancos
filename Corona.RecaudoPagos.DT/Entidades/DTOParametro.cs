using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.DT.Entidades
{
    public class DTOParametro
    {
        public string COD_BANCO { get; set; }
        public string CONVENIO { get; set; }
        public string SOCIEDAD { get; set; }
        public string NOMBRE_SOCIEDAD { get; set; }
        public string NIT_SOCIEDAD { get; set; }
        public string CTA_CONTABLE { get; set; }
        public string CLASE_DOC_RECAUDO { get; set; }
    }
}
