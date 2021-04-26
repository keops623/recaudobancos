using System;

namespace Corona.RecaudoPagos.DT.DTO
{
    public class VerificarEstadoResponseDto
    {
        public VerificarEstadoResponseDto()
        {
            Org = "ALION";
        }
        public string codigoRespuesta { set; get; }
        public string Org { set; get; }
        public DateTime ServerDt { set; get; }
    }
}

