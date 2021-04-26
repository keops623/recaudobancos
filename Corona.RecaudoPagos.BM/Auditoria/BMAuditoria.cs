using Corona.RecaudoPagos.DM.Datos;
using Corona.RecaudoPagos.DT.General;
using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.BM.Auditoria
{
    public class BMAuditoria
    {
        /// <summary>
        /// Insertar en base de datos la Auditoria generada
        /// </summary>
        /// <param name="dto"></param>
        /// <returns></returns>
        public bool InsertarAuditoria(DTOAuditoria dto)
        {
            try
            {
                return new DMAuditoria().RegistrarAuditoria(dto);
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
