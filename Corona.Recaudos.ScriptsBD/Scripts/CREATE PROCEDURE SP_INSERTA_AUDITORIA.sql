DROP PROCEDURE IF EXISTS `SP_INSERTA_AUDITORIA`;

SET NOCOUNT ON
DELIMITER $$
USE `RecaudosPagos`$$
CREATE DEFINER=`RecaudosPagos`@`%` PROCEDURE `SP_INSERTA_AUDITORIA`(
IN_Recaudo_ID BIGINT,
IN_Estado BIT,
IN_Solicitud VARCHAR(2000),
IN_Respuesta VARCHAR(2000),
IN_Fecha DATETIME,
IN_Procesado BIT,
IN_Usuario_Procesado VARCHAR(50)
)
BEGIN
	INSERT INTO Auditoria (
		Recaudo_ID, Estado, Solicitud, Respuesta, Fecha, Procesado, Fecha_Procesado, Usuario_Procesado)
    VALUES (
		IN_Recaudo_ID, IN_Estado, IN_Solicitud, IN_Respuesta, IN_Fecha, IN_Procesado, NOW(), IN_Usuario_Procesado);
END$$

DELIMITER ;