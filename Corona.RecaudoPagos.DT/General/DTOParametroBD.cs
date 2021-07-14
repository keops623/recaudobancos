using MySql.Data.MySqlClient;
using System.Data;

namespace Corona.RecaudoPagos.DT.General
{
    public class DTOParametroBD
    {
        #region Atributos

        #endregion

        #region Constructor

        /// <summary>
        /// Constructor de la clase para mysql
        /// </summary>
        /// <param name="nombre">Nombre del parámetro.</param>
        /// <param name="tipo">Tipo de parámetro MySql.</param>
        /// <param name="valor">Valor del parámetro.</param>
        /// <returns></returns>
        /// <author>"Dairo Alejandro Rojas Montoya"</author>
        public DTOParametroBD(string nombre, MySqlDbType tipo, object valor)
        {
            ParameterName = nombre;
            MySqlDbType = tipo;
            Value = valor;
        }
        /// <summary>
        /// Constructor de la clase para mysql
        /// </summary>
        /// <param name="nombre">Nombre del parámetro.</param>
        /// <param name="tipo">Tipo de parámetro MySql.</param>
        /// <param name="valor">Valor del parámetro.</param>
        /// <returns></returns>
        /// <author>"Dairo Alejandro Rojas Montoya"</author>
        public DTOParametroBD(string nombre, MySqlDbType tipo, object valor, ParameterDirection parameterDirection)
        {
            ParameterName = nombre;
            MySqlDbType = tipo;
            Value = valor;
            Direction = parameterDirection;
        }
        #endregion

        #region Propiedades

        /// <summary>
        /// Tipo de dato mysql
        /// </summary>
        public MySqlDbType MySqlDbType
        {
            get;
            set;
        }

        /// <summary>
        /// Dirección del DTOParametro.
        /// </summary>
        public ParameterDirection Direction
        {
            get;
            set;
        }

        /// <summary>
        /// Es nulable?.
        /// </summary>
        public bool IsNullable
        {
            get { return false; }
        }

        /// <summary>
        /// Nombre del parámetro.
        /// </summary>
        public string ParameterName
        {
            get;
            set;
        }

        /// <summary>
        /// Columna fuente.
        /// </summary>
        public string SourceColumn
        {
            get;
            set;
        }

        /// <summary>
        /// Versión fuente.
        /// </summary>
        public DataRowVersion SourceVersion
        {
            get;
            set;
        }

        /// <summary>
        /// Valor del parámetro.
        /// </summary>
        public object Value
        {
            get;
            set;
        }

        #endregion

        #region Métodos

        #endregion
    }
}
