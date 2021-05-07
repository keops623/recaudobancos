using Corona.RecaudoPagos.DT.General;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;

namespace Corona.RecaudoPagos.DM.AccesoDM
{
    public class DMAccesoDatosMySql
    {
        #region Atributos
        private IList<DTOParametroBD> DTParametros = new List<DTOParametroBD>();


        private readonly string timeout = Environment.GetEnvironmentVariable("DataBaseTimeOut");

        //(string)new AppSettingsReader().GetValue(Environment.GetEnvironmentVariable("DataBaseTimeOut"), typeof(string))

        #endregion

        #region Métodos Privados

        /// <summary>
        /// Obtiene la cadena de conexión a la base de datos.
        /// </summary>
        /// <returns>Retorna el connection string de la base de datos.</returns>
        private static string ObtenerNombreCadenaBaseDatos()
        {
            var Cadena = Environment.GetEnvironmentVariable("connectionString");
            return Cadena;
        }
        /// <summary>
        /// Prepara el comando de MySql para la ejecución
        /// </summary>
        /// <param name="mySqlConnection">Conexion a la base de datos</param>
        /// <param name="comando">Comando a ejecutar</param>
        /// <returns>MySqlCommand Comando preparado</returns>
        /// <author>Dairo Alejandro Rojas Montoya</author>
        private MySqlCommand PrepararComando(MySqlConnection mySqlConnection, string comando)
        {
            return PrepararComando(mySqlConnection, CommandType.Text, comando);
        }
        /// <summary>
        /// Prepara el comando de MySql para la ejecución
        /// </summary>
        /// <param name="mySqlConnection">Conexion a la base de datos</param>
        /// <param name="commandType">Tipo de Comando a ejecutar (Text,StoredProcedure,TableDirect)</param>
        /// <param name="comando">Comando a ejecutar Select, Procedimiento, Tabla</param>
        /// <returns></returns>
        /// <author>Dairo Alejandro Rojas Montoya</author>
        private MySqlCommand PrepararComando(MySqlConnection mySqlConnection, CommandType commandType, string comando)
        {
            MySqlCommand mySqlCommand = new MySqlCommand
            {
                Connection = mySqlConnection,
                CommandText = comando,
                CommandTimeout = int.Parse(timeout),
                CommandType = commandType,
            };

            // agregar los parametros a la consulta
            if (DTParametros.Count > 0)
            {
                foreach (DTOParametroBD param in DTParametros)
                {
                    MySqlParameter parameter = new MySqlParameter()
                    {
                        MySqlDbType = param.MySqlDbType,
                        ParameterName = param.ParameterName,
                        Value = param.Value,
                        Direction = (param.Direction != 0 ? param.Direction : ParameterDirection.Input),
                    };
                    mySqlCommand.Parameters.Add(parameter);
                }
            }
            return mySqlCommand;
        }

        #endregion

        #region Métodos Públicos

        /// <summary>
        /// Permite agregar parámetros.
        /// </summary>
        /// <param name="nombre">Nombre del parámetro</param>
        /// <param name="tipo">Tipo de parámetro</param>
        /// <param name="valor">Valor del parámetro</param>
        /// <author>Dairo Alejandro Rojas Montoya</author>
        public void AgregarParametro(string nombre, MySqlDbType tipo, object valor)
        {
            DTOParametroBD DTOParametro = new DTOParametroBD(nombre, tipo, valor);
            DTParametros.Add(DTOParametro);
        }
        /// <summary>
        /// Permite agregar parámetros.
        /// </summary>
        /// <param name="nombre">Nombre del parámetro</param>
        /// <param name="tipo">Tipo de parámetro</param>
        /// <param name="valor">Valor del parámetro</param>
        /// <param name="parameterDirection">Direccion del parametro (in,out,return)</param>
        /// <author>Dairo Alejandro Rojas Montoya</author>
        public void AgregarParametro(string nombre, MySqlDbType tipo, object valor, ParameterDirection parameterDirection)
        {
            DTOParametroBD DTOParametro = new DTOParametroBD(nombre, tipo, valor, parameterDirection);
            DTParametros.Add(DTOParametro);
        }
        /// <summary>
        /// Limpia los parámetros
        /// </summary>
        /// <author>Dairo Alejandro Rojas Montoya</author>
        public void LimpiarDTOParametros()
        {
            DTParametros.Clear();
        }
        /// <summary>
        /// Ejecuta un procedimiento almacenado.
        /// </summary>
        /// <param name="Procedimiento">Nombre del procedimiento</param>
        /// <returns>Retorna un DataSet con los datos recuperados</returns>
        /// <author>Dairo Alejandro Rojas Montoya</author>
        public DataSet EjecutarReaderProcedimiento(string Procedimiento)
        {
            DataSet dataSet = new DataSet() { EnforceConstraints = false };
            using (MySqlConnection mySqlConnection = new MySqlConnection(ObtenerNombreCadenaBaseDatos()))
            {
                mySqlConnection.Open();

                MySqlCommand mySqlCommand = PrepararComando(mySqlConnection, CommandType.StoredProcedure, Procedimiento);
                MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader();
                while (!mySqlDataReader.IsClosed)
                    dataSet.Tables.Add().Load(mySqlDataReader);

                mySqlDataReader.Close();
            }
            return dataSet;
        }

        /// <summary>
        /// Ejecuta un comando y llena un data set con el resultado
        /// </summary>
        /// <param name="Query">Comando a ejecutar</param>
        /// <returns>Retorna un DataSet con los datos recuperados</returns>
        public DataSet EjecutarReader(string Query)
        {
            DataSet ds = new DataSet() { EnforceConstraints = false };

            using (MySqlConnection mySqlConnection = new MySqlConnection(ObtenerNombreCadenaBaseDatos()))
            {
                mySqlConnection.Open();
                MySqlCommand mySqlCommand = PrepararComando(mySqlConnection, CommandType.Text, Query);
                MySqlDataReader reader = mySqlCommand.ExecuteReader();
                while (!reader.IsClosed)
                    ds.Tables.Add().Load(reader);

                reader.Close();
            }
            return ds;
        }

        /// <summary>
        /// Ejecuta un procedimiento almacenado UPDATE, INSERT or DELETE
        /// </summary>
        /// <param name="comando">Nombre del procedimiento.</param>
        /// <returns>Retorna la cantidad de registros afectados.</returns>
        /// <author>Dairo Alejandro Rojas Montoya</author>
        public int EjecutarNonQuery(string comando, CommandType commandType)
        {
            using (MySqlConnection mySqlConnection = new MySqlConnection(ObtenerNombreCadenaBaseDatos()))
            {
                mySqlConnection.Open();
                MySqlCommand mySqlCommand = PrepararComando(mySqlConnection, commandType, comando);
                return mySqlCommand.ExecuteNonQuery();
            }
        }
        /// <summary>
        /// Ejecuta un procedimiento almacenado.
        /// </summary>
        /// <param name="procedimiento">Nombre del procedimiento.</param>
        /// <returns>Retorna un valor de tipo object con la primera columna retornada</returns>
        /// <author>"Dairo Alejandro Rojas Montoya"</author>
        public object EjecutarScalar(string procedimiento)
        {
            using (MySqlConnection mySqlConnection = new MySqlConnection(ObtenerNombreCadenaBaseDatos()))
            {
                mySqlConnection.Open();
                MySqlCommand mySqlCommand = PrepararComando(mySqlConnection, CommandType.StoredProcedure, procedimiento);
                return mySqlCommand.ExecuteScalar();
            }
        }

        #endregion
    }
}
