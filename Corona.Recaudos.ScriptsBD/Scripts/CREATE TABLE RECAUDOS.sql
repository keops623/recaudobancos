USE RecaudosPagos;

-- DROP TABLE IF EXISTS `Recaudos`;

CREATE TABLE Recaudos (
RECAUDO_ID BIGINT NOT NULL AUTO_INCREMENT KEY,
CANAL_RECAUDO VARCHAR(2),
COD_BANCO VARCHAR(4),
COD_CONFIRMA_RECAUDO VARCHAR(16),
COD_IAC VARCHAR(13),
FEC_RECAUDO DATETIME,
FEC_VENCIMIENTO DATETIME,
FORMA_PAGO VARCHAR(1),
HORA_RECAUDO TIME(6),
JORNADA_PAGO VARCHAR(1),
NUM_CHEQUE VARCHAR(9),
CONVENIO VARCHAR(8),
OFI_RECAUDO VARCHAR(6),
NIT_PAGADOR BLOB,
SOLICITANTE BLOB,
TERMI_RECAUDO VARCHAR(6),
TIPO_CANJE VARCHAR(1),
MONEDA VARCHAR(3),
VALOR_CHEQUE BLOB,
VALOR_EFECTIVO BLOB,
VAL_FACTURA BLOB,
VALOR_RECAUDADO BLOB,
TRANSACCION VARCHAR(1),
ESTADO_RECAUDO VARCHAR(2)
);

/*Se modifica la tabla con la siguiente linea por issue encontrado el 19 de Noviembre de 2020
Se encuentra que el campo COD_CONFIRMA_RECAUDO se habia establecido de longitud 8 y es mas grande
Se pone en 16 que es lo que soporta el servicio web de notificacion pago 
*/
alter table RecaudosPagos.Recaudos modify COD_CONFIRMA_RECAUDO varchar(16);