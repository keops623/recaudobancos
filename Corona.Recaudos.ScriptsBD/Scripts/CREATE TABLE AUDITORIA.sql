USE RecaudosPagos;

DROP TABLE IF EXISTS `Auditoria`;

CREATE TABLE Auditoria (
Auditoria_ID BIGINT NOT NULL AUTO_INCREMENT KEY,
Recaudo_ID BIGINT,
Estado bit,
Solicitud VARCHAR(2000),
Respuesta VARCHAR(2000),
Fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
Procesado BIT NULL,
Fecha_Procesado DATETIME NULL,
Usuario_Procesado VARCHAR(50) NULL;
);

