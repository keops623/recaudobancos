USE `RecaudosPagos`;
DROP procedure IF EXISTS `SP_MODIFICA_RECAUDONOTIFICADO`;
SET NOCOUNT ON
DELIMITER $$
USE `RecaudosPagos`$$
CREATE DEFINER=`RecaudosPagos`@`%` PROCEDURE `SP_MODIFICA_RECAUDONOTIFICADO`(
IN_XML_RECAUDOS text,
IN_CLAVE VARCHAR(20)
)
BEGIN

    DROP TEMPORARY TABLE IF EXISTS `tmpRecaudosNotificados`;
	CREATE TEMPORARY TABLE tmpRecaudosNotificados 
    (RecaudoId varchar(9),
    NIT varchar(16), 
    EstadoRecaudo varchar(2));
	
	SET @Row =  ExtractValue(IN_XML_RECAUDOS, 'count(//ROW)');
	SET @Count = 0;
	
	WHILE @Count < @Row DO
		SET @Count = @Count + 1;
            
        INSERT INTO tmpRecaudosNotificados (RecaudoId,NIT,EstadoRecaudo) 
		SELECT 
			ExtractValue(IN_XML_RECAUDOS, CONCAT('//ROOT[1]//ROW[',@Count,']//RecaudoId')) AS RecaudoId,
			AES_ENCRYPT(ExtractValue(IN_XML_RECAUDOS, CONCAT('//ROOT[1]//ROW[',@Count,']//NIT')), IN_CLAVE) AS NIT,
			ExtractValue(IN_XML_RECAUDOS, CONCAT('//ROOT[1]//ROW[',@Count,']//EstadoRecaudo')) AS EstadoRecaudo;
            
	END WHILE;
    
	UPDATE Recaudos 
	INNER JOIN tmpRecaudosNotificados tmp ON tmp.RecaudoId = Recaudos.RECAUDO_ID
	SET Recaudos.ESTADO_RECAUDO = tmp.EstadoRecaudo;


	DROP TEMPORARY TABLE IF EXISTS `tmpRecaudosNotificados`;

END$$

DELIMITER ;
