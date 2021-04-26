using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;

namespace Corona.RecaudoPagos.DT.General
{
   public class DTOConfiguraciones
    {
        //Número de convenio para recaudo por codigo de barras
        public string CodigoConvenioRecaudoBarras = Environment.GetEnvironmentVariable("CodigoConvenioRecaudoBarras");
        //Número de convenio para recaudo referenciado
        public string CodigoConvenioRecaudoReferenciado = Environment.GetEnvironmentVariable("CodigoConvenioRecaudoReferenciado")?.ToString();
        //Establece el código del la entidad bancaria que consume el servicio
        public string CodigoBanco = Environment.GetEnvironmentVariable("CodigoBanco")?.ToString();
        //Tiempo de maximo para las transacciones
        public int numMinTimeout = int.Parse(Environment.GetEnvironmentVariable("numMinTimeout")); 
        //
        public int SegundosTimeOut = int.Parse(Environment.GetEnvironmentVariable("SegundosTimeOut")?.ToString());

        public string NombreArchivo = Environment.GetEnvironmentVariable("NombreArchivo")?.ToString();

        public string UsuarioWS = Environment.GetEnvironmentVariable("UsuarioWS")?.ToString();
        public string ContrasenaWS = Environment.GetEnvironmentVariable("ContrasenaWS")?.ToString();

        /// <summary>
        /// Texto clave de encriptación a base de datos
        /// <add key="TextoClave" value="QwertAsdfg12345.*" />
        /// </summary>
        public string TextoClave = Environment.GetEnvironmentVariable("TextoClave")?.ToString();

        //public string RutaContingenciaAsobancaria = ConfigurationManager.AppSettings["RutaContingenciaAsobancaria"]?.ToString();
        //public string RutaContingenciaProcesadosAsobancaria = ConfigurationManager.AppSettings["RutaContingenciaProcesadosAsobancaria"]?.ToString();

        //public string RutaContingenciaDavivienda = ConfigurationManager.AppSettings["RutaContingenciaDavivienda"]?.ToString();
        //public string RutaContingenciaProcesadosDavivienda = ConfigurationManager.AppSettings["RutaContingenciaProcesadosDavivienda"]?.ToString();
    }
}
