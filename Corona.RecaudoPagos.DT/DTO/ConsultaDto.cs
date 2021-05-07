
namespace Corona.RecaudoPagos.DT.DTO
{
    public class ConsultaDto
    {
        public string canal { set; get; }
        public string codigoBanco { set; get; }
        public string codigoIAC { set; get; }
        public string fechaVencimiento { set; get; }
        public string jornadaPago { set; get; }
        public string numeroConvenio { set; get; }
        public string referencia1 { set; get; }
        public string referencia2 { set; get; }
        public string terminalRecaudo { set; get; }
        public string tipoMoneda { set; get; }
        public string valorFactura { set; get; }
        public string valorPagar { set; get; }
    }
}
