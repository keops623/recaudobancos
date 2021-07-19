USE `RecaudosPagos`;
DROP procedure IF EXISTS `SP_INSERTA_CLIENTE`;
SET NOCOUNT ON
DELIMITER $$
USE `RecaudosPagos`$$
CREATE DEFINER=`RecaudosPagos`@`%` PROCEDURE `SP_INSERTA_CLIENTE`(
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
			AES_ENCRYPT(ExtractValue(IN_XML_CLIENTE, CONCAT('//ROOT[1]//ROW[',@Count,']//NIT')), IN_CLAVE) AS nit,
			AES_ENCRYPT(ExtractValue(IN_XML_CLIENTE, CONCAT('//ROOT[1]//ROW[',@Count,']//Cliente')), IN_CLAVE) AS Cliente,
			AES_ENCRYPT(ExtractValue(IN_XML_CLIENTE, CONCAT('//ROOT[1]//ROW[',@Count,']//Central')), IN_CLAVE) AS Central;
            
	END WHILE;
    
	UPDATE Clientes 
	INNER JOIN tmpClientes tmp ON RTRIM(LTRIM(tmp.nit)) = RTRIM(LTRIM(Clientes.NIT)) 
		AND LTRIM(RTRIM(Clientes.Sociedad)) = LTRIM(RTRIM(tmp.Sociedad)) 
		AND RTRIM(LTRIM(Clientes.Cliente)) = RTRIM(LTRIM(tmp.Cliente))
	SET Clientes.Central = tmp.Central;

	INSERT INTO Clientes (Sociedad,NIT,Cliente,Central)
	SELECT tmp.Sociedad,tmp.nit,tmp.Cliente,tmp.Central
	FROM tmpClientes tmp
	LEFT JOIN Clientes cl ON RTRIM(LTRIM(tmp.nit)) = RTRIM(LTRIM(cl.NIT)) 
		AND LTRIM(RTRIM(cl.Sociedad)) = LTRIM(RTRIM(tmp.Sociedad))
		AND RTRIM(LTRIM(cl.Cliente)) = RTRIM(LTRIM(tmp.Cliente))
	WHERE cl.NIT IS NULL;

	DROP TEMPORARY TABLE IF EXISTS tmpClientes;
    
    CALL SP_MODIFICA_RECAUDOPENDIENTECLIENTE(IN_XML_CLIENTE,IN_CLAVE);

END$$

DELIMITER ;
