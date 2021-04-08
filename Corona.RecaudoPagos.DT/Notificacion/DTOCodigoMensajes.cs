using System;
using System.Collections.Generic;
using System.Text;

namespace Corona.RecaudoPagos.DT.Notificacion
{
    public class DTOCodigoMensajes
    {
        #region Mensajes generales

        /// <summary>
        /// Fallo Operacion
        /// </summary>
        public const int GENERAL_MENSAJE0 = 0;

        /// <summary>
        /// Datos incompletos {0}
        /// </summary>
        public const int GENERAL_MENSAJE1 = 1;
        /// <summary>
        /// Error de autenticación
        /// </summary>
        public const int GENERAL_MENSAJE2 = 2;
        /// <summary>
        /// Código banco erroneo
        /// </summary>
        public const int GENERAL_MENSAJE3 = 3;
        /// <summary>
        /// Código banco no existe
        /// </summary>
        public const int GENERAL_MENSAJE4 = 4;
        /// <summary>
        /// Número de orden requerido
        /// </summary>
        public const int GENERAL_MENSAJE5 = 5;
        /// <summary>
        /// Número de orden erroneo
        /// </summary>
        public const int GENERAL_MENSAJE6 = 6;
        /// <summary>
        /// Fecha de pago inválida
        /// </summary>
        public const int GENERAL_MENSAJE7 = 7;
        /// <summary>
        /// Valor pagado supera el máximo permitido
        /// </summary>
        public const int GENERAL_MENSAJE8 = 8;
        /// <summary>
        /// Sin Fechas de cobranza
        /// </summary>
        public const int GENERAL_MENSAJE9 = 9;
        /// <summary>
        /// Número de cédula no existe Cédula: {0} Orden: {1}
        /// </summary>
        public const int GENERAL_MENSAJE10 = 10;
        /// <summary>
        /// Error del sistema
        /// </summary>
        public const int GENERAL_MENSAJE11 = 11;

        /// <summary>
        /// Ocurrió un error en el sistema
        /// </summary>
        public const int GENERAL_MENSAJE12 = 12;

        /// <summary>
        /// Sesión cerrada con éxito
        /// </summary>
        public const int GENERAL_MENSAJE13 = 13;

        /// <summary>
        /// Usuario o clave no coinciden
        /// </summary>
        public const int GENERAL_MENSAJE14 = 14;

        /// <summary>
        /// Registro cancelado correctamente
        /// </summary>
        public const int GENERAL_MENSAJE15 = 15;

        /// <summary>
        /// Registro pendiente de reprocesar
        /// </summary>
        public const int GENERAL_MENSAJE16 = 16;
        /// <summary>
        /// No se encontraron registros
        /// </summary>
        public const int GENERAL_MENSAJE17 = 17;


        #endregion

        #region "Mensajes Banco"
        /// <summary>
        /// Transacción exitosa
        /// </summary>
        public const int BANCO_MENSAJE0 = 0;
        /// <summary>
        /// Referencia para pago no existe. Cliente no existe
        /// </summary>
        public const int BANCO_MENSAJE1 = 1;
        /// <summary>
        /// Referencia para pago no existe
        /// </summary>
        public const int BANCO_MENSAJE2 = 2;
        /// <summary>
        /// Referencia dos para pago no existe
        /// </summary>
        public const int BANCO_MENSAJE3 = 3;
        /// <summary>
        /// Factura ya cancelada
        /// </summary>
        public const int BANCO_MENSAJE4 = 4;
        /// <summary>
        /// Factura ya vencida
        /// </summary>
        public const int BANCO_MENSAJE5 = 5;
        /// <summary>
        /// Valor factura diferente
        /// </summary>
        public const int BANCO_MENSAJE6 = 6;
        /// <summary>
        /// Código IAC no habilitado en web service
        /// </summary>
        public const int BANCO_MENSAJE7 = 7;
        /// <summary>
        /// Forma de pago inválida
        /// </summary>
        public const int BANCO_MENSAJE8 = 8;
        /// <summary>
        /// Número de factura no existe
        /// </summary>
        public const int BANCO_MENSAJE9 = 9;
        /// <summary>
        /// Error inesperado web service (Error General)
        /// </summary>
        public const int BANCO_MENSAJE10 = 10;
        /// <summary>
        /// Valor transacción no permitido
        /// </summary>
        public const int BANCO_MENSAJE11 = 11;
        /// <summary>
        /// Error autenticación WS
        /// </summary>
        public const int BANCO_MENSAJE12 = 12;
        #endregion

    }
}
