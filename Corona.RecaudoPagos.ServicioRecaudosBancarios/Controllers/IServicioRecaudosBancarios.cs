using Corona.RecaudoPagos.DT.DTO;
using System.ServiceModel;
using System.Threading.Tasks;

namespace Corona.RecaudoPagos.ServicioRecaudosBancarios.Controllers
{
	[ServiceContract]
	public interface IServicioRecaudosBancarios
    {

		[OperationContract]
		@return consultaRecaudo(ConsultaDto dto);

		[OperationContract]
		@return notificacionRecaudo(RecaudoDto dto);

		[OperationContract]
		VerificarEstadoResponseDto VerificarEstadoWebService(VerificarEstadoDto SignonRq);

	}
}
