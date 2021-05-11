using Corona.RecaudoPagos.DT.Entidades;
using Corona.RecaudoPagos.DT.General;
using System.Collections.Generic;

namespace Corona.RecaudoPagos.BM.Clientes
{
    public interface IBMCliente
    {
        DTOObjetoGeneralSalida InsertarCliente(List<DTOCliente> dtoCliente);
        DTOObjetoGeneralSalida ConsultarCliente(DTOObjetoGeneral objDatos);
    }
}
