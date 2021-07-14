using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.DT.General
{
    public class DTOObjetoGeneralSalida
    {
        public string TipoRegistro { get; set; }
        public string CodigoError { get; set; }
        public string Estado { get; set; }
        public bool EstadoOperacion { get; set; }
        public string DescripcionError { get; set; }
        public string NumeroTransaccion { get; set; }
        public string FechaVencimiento { get; set; }
        public string FechaTransaccion { get; set; }
        public float ValorFactura { get; set; }
        public string Referencia1 { get; set; }
        public string Referencia2 { get; set; }
        public int TipoSeveridad { get; set; }
    }
}
