USE `RecaudosPagos`;
DROP procedure IF EXISTS `SP_MODIFICA_AUDITORIA_PROCESADA`;
SET NOCOUNT ON
DELIMITER $$
USE `RecaudosPagos`$$
CREATE DEFINER=`RecaudosPagos`@`%` PROCEDURE `SP_MODIFICA_AUDITORIA_PROCESADA`(
IN_Auditoria_ID bigint,
IN_Usuario VARCHAR(50)
)
BEGIN

	UPDATE Auditoria
    SET Procesado = 1, Fecha_Procesado = NOW(), Usuario_Procesado = IN_Usuario
	WHERE Auditoria_ID = IN_Auditoria_ID;

END$$

DELIMITER ;
