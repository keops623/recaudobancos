using Corona.RecaudoPagos.DM.Datos;
using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.BM.UsuarioAcceso
{
    public class BMUsuarioAcceso
    {
        /// <summary>
        /// Consultar usuario de acceso
        /// </summary>
        /// <param name="usuario">Usuario</param>
        /// <param name="clave">Clave en base64</param>
        /// <returns></returns>
        public bool ConsultarUsuarioAcceso(string usuario, string clave)
        {
            return new DMUsuarioAcceso().ConsultarUsuarioAcceso(usuario, clave);
        }
    }
}
