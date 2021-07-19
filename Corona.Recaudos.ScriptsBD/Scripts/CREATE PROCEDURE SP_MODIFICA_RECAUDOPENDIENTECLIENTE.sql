USE `RecaudosPagos`;
DROP procedure IF EXISTS `SP_MODIFICA_RECAUDOPENDIENTECLIENTE`;
SET NOCOUNT ON
DELIMITER $$
USE `RecaudosPagos`$$
CREATE DEFINER=`RecaudosPagos`@`%` PROCEDURE `SP_MODIFICA_RECAUDOPENDIENTECLIENTE`(
IN_XML_CLIENTE text,
IN_CLAVE VARCHAR(20)
)
BEGIN
    
    DROP TEMPORARY TABLE IF EXISTS tmpClientes;
	CREATE TEMPORARY TABLE tmpClientes (Sociedad varchar(4),nit BLOB, Cliente BLOB, Central BLOB);
	
	SET @Row =  ExtractValue(IN_XML_CLIENTE, 'count(//ROW)');
	SET @Count = 0;
	
	WHILE @Count < @Row DO
		SET @Count = @Count + 1;
        
        INSERT INTO tmpClientes (Sociedad,nit,Cliente,Central) 
		SELECT 
			ExtractValue(IN_XML_CLIENTE, CONCAT('//ROOT[1]//ROW[',@Count,']//Sociedad')) AS Sociedad,
			LTRIM(RTRIM(AES_ENCRYPT(ExtractValue(IN_XML_CLIENTE, CONCAT('//ROOT[1]//ROW[',@Count,']//NIT')), IN_CLAVE))) AS nit,
			LTRIM(RTRIM(AES_ENCRYPT(ExtractValue(IN_XML_CLIENTE, CONCAT('//ROOT[1]//ROW[',@Count,']//Cliente')), IN_CLAVE))) AS Cliente,
			LTRIM(RTRIM(AES_ENCRYPT(ExtractValue(IN_XML_CLIENTE, CONCAT('//ROOT[1]//ROW[',@Count,']//Central')), IN_CLAVE))) AS Central;
	END WHILE;
    
	UPDATE Recaudos Rec
    INNER JOIN tmpClientes tmp ON Rec.NIT_PAGADOR = tmp.NIT AND Rec.ESTADO_RECAUDO IN ('4','04')
    INNER JOIN Clientes Clientes ON RTRIM(LTRIM(tmp.nit)) = RTRIM(LTRIM(Clientes.NIT)) 
			AND LTRIM(RTRIM(Clientes.Sociedad)) = LTRIM(RTRIM(tmp.Sociedad)) 
			AND RTRIM(LTRIM(Clientes.Cliente)) = RTRIM(LTRIM(tmp.Cliente))
    SET Rec.ESTADO_RECAUDO = '3';

	DROP TEMPORARY TABLE IF EXISTS tmpClientes;

END$$

DELIMITER ;
