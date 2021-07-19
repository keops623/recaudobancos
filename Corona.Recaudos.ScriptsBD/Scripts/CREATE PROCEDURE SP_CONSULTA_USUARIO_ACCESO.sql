USE `RecaudosPagos`;
DROP procedure IF EXISTS `SP_CONSULTA_USUARIO_ACCESO`;
SET NOCOUNT ON
DELIMITER $$
USE `RecaudosPagos`$$
CREATE DEFINER=`RecaudosPagos`@`%` PROCEDURE `SP_CONSULTA_USUARIO_ACCESO`(
IN_USUARIO VARCHAR(30),
IN_CLAVE VARCHAR(30)
)
BEGIN

	SELECT Usuario_Acceso.Usuario_Acceso_ID
	FROM Usuario_Acceso
	WHERE Usuario_Acceso.Usuario = IN_USUARIO
    AND Usuario_Acceso.Clave = IN_CLAVE;
    
END$$

DELIMITER ;
