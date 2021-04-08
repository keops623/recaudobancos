using Corona.RecaudoPagos.DM.AccesoDM;
using Corona.RecaudoPagos.DT.General;
using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Linq;
using System.Text;

namespace Corona.RecaudoPagos.DM.Datos
{
    public class DMCliente
    {
        /// <summary>
        /// Insertar/actualizar la TABLA de CLIENTES, para la integración de DAVIVIENDA
        /// </summary>
        /// <param name="dtoCliente"></param>
        /// <returns></returns>
        public bool InsertarCliente(StringBuilder xmlClientes)
        {

            DMAccesoDatosMySql gestorDB = new DMAccesoDatosMySql();
            gestorDB.LimpiarDTOParametros();
            gestorDB.AgregarParametro("@IN_XML_CLIENTE", MySqlDbType.Text, string.IsNullOrEmpty(xmlClientes.ToString()) ? Convert.DBNull : xmlClientes.ToString());
            gestorDB.AgregarParametro("@IN_CLAVE", MySqlDbType.VarChar, new DTOConfiguraciones().TextoClave);
            if (gestorDB.EjecutarNonQuery(Resources.ProcedimientosAlmacenados.SP_INSERTA_CLIENTE, CommandType.StoredProcedure) != -1)
                return true;
            else return false;

        }

        public DTOObjetoGeneralSalida ConsultarCliente(DTOObjetoGeneral objCliente)
        {

            DTOObjetoGeneralSalida resultado = null;
            DMAccesoDatosMySql gestorDB = new DMAccesoDatosMySql();
            gestorDB.AgregarParametro("@IN_NIT", MySqlDbType.VarChar, (string.IsNullOrEmpty(objCliente.Referencia1) ? Convert.DBNull : objCliente.Referencia1));
            gestorDB.AgregarParametro("@IN_Cliente", MySqlDbType.VarChar, (string.IsNullOrEmpty(objCliente.Referencia2) ? Convert.DBNull : objCliente.Referencia2));
            gestorDB.AgregarParametro("@IN_Sociedad", MySqlDbType.VarChar, objCliente.Sociedad);
            gestorDB.AgregarParametro("@IN_CLAVE", MySqlDbType.VarChar, new DTOConfiguraciones().TextoClave);

            using (DataSet datos = gestorDB.EjecutarReaderProcedimiento(Resources.ProcedimientosAlmacenados.SP_CONSULTA_CLIENTE))
            {
                if (datos != null && datos.Tables[0].Rows.Count > 0)

                    resultado = (from item in datos.Tables[0].AsEnumerable()
                                 select new DTOObjetoGeneralSalida
                                 {
                                     Referencia1 = item.Field<string>("NIT"),
                                     Referencia2 = item.Field<string>("Cliente"),
                                 }).FirstOrDefault();
            }
            return resultado;
        }

    }
}
