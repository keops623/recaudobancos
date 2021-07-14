using Corona.RecaudoPagos.DM.AccesoDM;
using MySql.Data.MySqlClient;
using System.Data;

namespace Corona.RecaudoPagos.DM.Datos
{
    public class DMUsuarioAcceso
    {
        /// <summary>
        /// Consultar si el usuario y la clave tienen acceso.
        /// </summary>
        /// <param name="usuario">Usuario</param>
        /// <param name="clave">Clave encriptada Base64</param>
        /// <returns></returns>
        public bool ConsultarUsuarioAcceso(string usuario, string clave)
        {
            DMAccesoDatosMySql gestorDB = new DMAccesoDatosMySql();
            gestorDB.AgregarParametro("@IN_USUARIO", MySqlDbType.VarChar, usuario);
            gestorDB.AgregarParametro("@IN_CLAVE", MySqlDbType.VarChar, clave);
            DataSet datos = gestorDB.EjecutarReaderProcedimiento(Resources.ProcedimientosAlmacenados.SP_CONSULTA_USUARIO_ACCESO);
            if (datos.Tables[0].Rows.Count > 0)
                return true;
            else return false;

        }
    }
}
