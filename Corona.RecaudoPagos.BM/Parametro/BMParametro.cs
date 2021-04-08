using Corona.RecaudoPagos.DM.Datos;
using Corona.RecaudoPagos.DT.Entidades;
using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.BM.Parametro
{
    public class BMParametro
    {
        /// <summary>
        /// Buscar le SOCIEDAD en la Tabla de parámetros.
        /// </summary>
        /// <param name="dtoParametro">DTOParametro</param>
        /// <returns>DTOParametro</returns>
        public string ConsultarSociedad(DTOParametro dtoParametro)
        {
            return new DMParametro().ConsultarSociedad(dtoParametro);
        }
    }
}
