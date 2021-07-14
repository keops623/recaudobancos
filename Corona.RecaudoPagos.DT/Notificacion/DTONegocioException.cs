using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;

namespace Corona.RecaudoPagos.DT.Notificacion
{
    public class DTONegocioException : Exception
    {
        #region Constructores

        /// <summary>
        /// Inicializa una nueva instancia de la clase DTONegocioException.
        /// </summary>
        public DTONegocioException()
        {
        }

        /// <summary>
        /// Inicializa una nueva instancia de la clase DTONegocioException.
        /// </summary>
        /// <param name="mensaje">Mensaje de error que explica la razón de la excepción.</param>
        public DTONegocioException(string mensaje)
            : base(mensaje)
        {
        }

        /// <summary>
        /// Inicializa una nueva instancia de la clase DTONegocioException.
        /// </summary>
        /// <param name="exception">Objeto Exception.</param>
        public DTONegocioException(Exception exception)
            : base(exception.Message)
        {
        }

        /// <summary>
        /// Inicializa una nueva instancia de la clase DTONegocioException.
        /// </summary>
        /// <param name="mensaje">Mensaje de error que explica la razón de la excepción.</param>
        /// <param name="innerExcepcion">Excepción que causa la excepción actual, o
        /// referencia null si no es especificada la innerExcepcion.</param>
        public DTONegocioException(string mensaje, Exception innerExcepcion)
            : base(mensaje, innerExcepcion)
        {
        }

        /// <summary>
        /// Inicializa una nueva instancia de la clase DTONegocioException.
        /// </summary>
        /// <param name="info">Información de la serialización.</param>
        /// <param name="context">Contexto de la serializáción.</param>
        protected DTONegocioException(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        #endregion
    }
}
