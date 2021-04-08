using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Corona.RecaudoPagos.DT.Entidades
{
    public class DTORecaudo
    {
        [Key]
        public string RECAUDO_ID { get; set; }
        public string CANAL_RECAUDO { get; set; }
        public string COD_BANCO { get; set; }
        public string COD_CONFIRMA_RECAUDO { get; set; }
        public string COD_IAC { get; set; }
        public string FEC_RECAUDO { get; set; }
        public string FEC_VENCIMIENTO { get; set; }
        public string FORMA_PAGO { get; set; }
        public string HORA_RECAUDO { get; set; }
        public string JORNADA_PAGO { get; set; }
        public string NUM_CHEQUE { get; set; }
        public string CONVENIO { get; set; }
        public string OFI_RECAUDO { get; set; }
        public string NIT_PAGADOR { get; set; }
        public string PAGADOR { get; set; }
        public string SOLICITANTE { get; set; }
        public string TERMI_RECAUDO { get; set; }
        public string TIPO_CANJE { get; set; }
        public string MONEDA { get; set; }
        public string VALOR_CHEQUE { get; set; }
        public string VALOR_EFECTIVO { get; set; }
        public string VAL_FACTURA { get; set; }
        public string VALOR_RECAUDADO { get; set; }
        public string TRANSACCION { get; set; }
        public string ESTADO_RECAUDO { get; set; }
    }
}
