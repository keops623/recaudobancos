using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.DT.General
{
    public class DTOObjetoGeneral
    {
        public string Usuario { get; set; }
        public string Clave { get; set; }
        public string CodigoBanco { get; set; }
        public string CodigoConfirmacionRecaudo { get; set; }
        public string Sociedad { get; set; }
        public string NombreBanco { get; set; }
        public string NumeroConvenio { get; set; }
        public string TipoRegistro { get; set; }
        public string EstadoRecaudo { get; set; }
        public string CanalRecaudo { get; set; }
        public string Oficina { get; set; }
        public string CodigoProducto { get; set; }
        public string FormaPago { get; set; }
        public string FechaRecaudo { get; set; }
        public string HoraRecaudo { get; set; }
        public string JornadaRecaudo { get; set; }
        public string TerminalRecaudo { get; set; }
        public string CodigoIAC { get; set; }
        public string Referencia1 { get; set; }
        public string Referencia2 { get; set; }
        public DateTime FechaVencimiento { get; set; }
        public string ValorEfectivo { get; set; }
        public string ValorFactura { get; set; }
        public string ValorCheque { get; set; }
        public string TipoCanje { get; set; }
        public string TipoMoneda { get; set; }
        public decimal? TotalRecaudado { get; set; }
        public string NumeroAutorizacion { get; set; }
        public string NumeroCheque { get; set; }
        public string Descripcion { get; set; }
        public DateTime FechaPago { get; set; }
    }
}
