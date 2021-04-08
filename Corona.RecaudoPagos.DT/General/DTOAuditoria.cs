using System;

namespace Corona.RecaudoPagos.DT.General
{
    public class DTOAuditoria : Entidades.DTORecaudo
    {
        public string Recaudo_ID { get; set; }
        public bool Estado { get; set; }
        public string Solicitud { get; set; }
        public string Respuesta { get; set; }
        public DateTime? Fecha { get; set; }
        public string EstadoRecaudo { get; set; }
        public bool? Procesado { get; set; }
        public DateTime? Fecha_Procesado { get; set; }
        public string Usuario_Procesado { get; set; }
    }
}
