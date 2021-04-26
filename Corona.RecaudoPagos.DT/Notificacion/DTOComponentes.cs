namespace Corona.RecaudoPagos.DT.Notificacion
{
    public class DTOComponentes
    {
        public const string FechaCero = "00000000";
        public const string ValorCero = "0.00";
        public const string MonedaCOP = "COP";
        public static int RecaudoId = 0;

        /// <summary>
        /// Define los tipos de mensajes manejados en el Xml
        /// </summary>
        public enum TipoMensaje : int
        {
            /// <summary>
            /// Mensajes personalizados para cada entidad bancaria
            /// </summary>
            Banco = 1,
            /// <summary>
            /// Mensajes propios de la aplicación como log de eventos
            /// </summary>
            General = 2,
            /// <summary>
            /// Mensajes propios de la aplicación web visor
            /// </summary>
            Presentacion = 3
        }
        public enum EstadoRecaudo
        {
            SinNotificarWs = 01,
            NotificadoWs = 02,
            SinNotificarContingenciaWs = 03,
            PendienteCliente = 04,
            Cancelado = 05,
            Procesando = 99,
            BloqueadoCheque = 98,
        }
        public enum TipoRegistro
        {
            Recaudo = 1,
            Contingencia = 2,
        }

        public enum FormaPago
        {
            PagoEfectivo = 1,
            PagoCheque = 2,
            PagoMixto = 3,
            TarjetaCredito = 4,
            DebitoCuenta = 6
        }
        public enum TipoCange
        {
            CanjePropio = 1,
            CanjeLocal = 2,
            CanjePlaza = 3,
            SinCanje = 0
        }
        public enum TipoJornada
        {
            JornadaNormal = 0,
            JornadaAdicional = 1
        }
        /// <summary>
        /// Define el nivel de falla en las reglas de negocio
        /// </summary>
        public enum Severidad
        {
            /// <summary>
            /// Para fallas de retorno en el servicio
            /// </summary>
            Servicio = 0,
            /// <summary>
            /// Fallas a nivel de Reglas de negocio con registro en inconsistencias
            /// </summary>
            Negocio = 1,
            /// <summary>
            /// Fallas no controladas
            /// </summary>
            Excepcion = 3
        }

        /// <summary>
        /// Identificador de estado de los datos para la transacción
        /// </summary>
        public struct DataStatus
        {
            public Severidad TipoError;
            public DTOMensaje Mensaje;
            public bool Result;
        }
    }
}
