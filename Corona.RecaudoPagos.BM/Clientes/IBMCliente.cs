using Corona.RecaudoPagos.DT.DTO;
using Corona.RecaudoPagos.DT.Entidades;
using Corona.RecaudoPagos.DT.General;
using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.BM.Clientes
{
    public interface IBMCliente
    {
        DTOObjetoGeneralSalida InsertarCliente(List<DTOCliente> dtoCliente);

        DTOObjetoGeneralSalida ConsultarCliente(DTOObjetoGeneral objDatos);
    }
}
