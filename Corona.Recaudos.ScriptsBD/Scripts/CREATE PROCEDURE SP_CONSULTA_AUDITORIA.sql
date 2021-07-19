USE `RecaudosPagos`;
DROP PROCEDURE IF EXISTS `SP_CONSULTA_AUDITORIA`;
SET NOCOUNT ON
DELIMITER $$
USE `RecaudosPagos`$$
CREATE DEFINER=`RecaudosPagos`@`%` PROCEDURE `SP_CONSULTA_AUDITORIA`(
IN_FechaDesde VARCHAR(10),
IN_FechaHasta VARCHAR(10),
IN_CLAVE VARCHAR(20)
)
BEGIN
	SELECT  
	COD_CONFIRMA_RECAUDO '#Rec', Estado,  
	CASE WHEN locate('</Message>',RespuestaFraccion) > 0 THEN
	SUBSTRING(RespuestaFraccion,1,locate('</Message>',RespuestaFraccion)-1) 
	ELSE Respuesta
	END Respuesta, Fecha, Procesado,Fecha_Procesado, Usuario_Procesado
	from (
		SELECT  Recaudo_ID, Estado, Solicitud, Fecha, Procesado,Fecha_Procesado, Usuario_Procesado,
		CASE WHEN locate('<Element>MESSAGE</Element>',Respuesta) > 0 THEN
			SUBSTRING(Respuesta,locate('<Element>MESSAGE</Element>',Respuesta)+35,100)
			ELSE Respuesta END AS RespuestaFraccion,Respuesta
		FROM Auditoria
		WHERE CAST(Fecha AS DATE) BETWEEN CAST(IN_FechaDesde AS DATE) AND CAST(IN_FechaHasta AS DATE)
	) SelAuditoria
	INNER JOIN Recaudos R on SelAuditoria.Recaudo_ID = R.Recaudo_ID
    ORDER BY Fecha;
END$$

DELIMITER ;
