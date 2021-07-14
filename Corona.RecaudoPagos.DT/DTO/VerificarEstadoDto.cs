using System;

namespace Corona.RecaudoPagos.DT.DTO
{
    public class VerificarEstadoDto
    {
        public DateTime ClientDt { set; get; }
        public string CustLangPref { set; get; }
        public ClientApp ClientApp { set; get; }
    }

    public class ClientApp
    {
        public string Org { set; get; }
        public string Name { set; get; }
        public string Version { set; get; }
    }
}
