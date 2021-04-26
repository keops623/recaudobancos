using Corona.RecaudoPagos.DM.AccesoDM;
using Corona.RecaudoPagos.DT.Entidades;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.DM.Datos
{
    public class DMParametro
    {
        /// <summary>
        /// Buscar le SOCIEDAD en la Tabla de parámetros.
        /// </summary>
        /// <param name="dTOParametro">DTOParametro</param>
        /// <returns>DTOParametro</returns>
        public string ConsultarSociedad(DTOParametro dTOParametro)
        {
            DMAccesoDatosMySql gestorDB = new DMAccesoDatosMySql();
            gestorDB.AgregarParametro("@IN_COD_BANCO", MySqlDbType.VarChar, dTOParametro.COD_BANCO);
            gestorDB.AgregarParametro("@IN_CONVENIO", MySqlDbType.VarChar, dTOParametro.CONVENIO);
            return gestorDB.EjecutarScalar(Resources.ProcedimientosAlmacenados.SP_CONSULTA_SOCIEDAD)?.ToString().Trim();
        }
    }
}
