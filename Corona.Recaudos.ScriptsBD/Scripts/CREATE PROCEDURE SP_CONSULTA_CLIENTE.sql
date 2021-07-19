USE `RecaudosPagos`;
DROP procedure IF EXISTS `SP_CONSULTA_CLIENTE`;
SET NOCOUNT ON
DELIMITER $$
USE `RecaudosPagos`$$
CREATE DEFINER=`user`@`%` PROCEDURE `SP_CONSULTA_CLIENTE`(
IN_NIT VARCHAR(16),
IN_Sociedad VARCHAR(16),
IN_Cliente VARCHAR(13),
IN_CLAVE VARCHAR(20)
)
BEGIN

	SELECT CAST(AES_DECRYPT(Clientes.NIT, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS NIT, 
		CAST(AES_DECRYPT(Clientes.Cliente, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS Cliente, 
        Sociedad
	FROM Clientes 
	WHERE Clientes.Sociedad = IN_Sociedad
		AND (Clientes.NIT = AES_ENCRYPT(IN_NIT, IN_CLAVE) AND Clientes.Cliente = AES_ENCRYPT(IN_Cliente, IN_CLAVE))
	
    UNION 
	
    SELECT CAST(AES_DECRYPT(a.NIT, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS NIT, 
		CAST(AES_DECRYPT(a.Cliente, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS Cliente, 
        a.Sociedad
	FROM Clientes a
     INNER JOIN Clientes b on a.Central = b.Cliente
	WHERE a.Sociedad = IN_Sociedad
		AND (b.NIT = AES_ENCRYPT(IN_NIT, IN_CLAVE) AND a.Cliente = AES_ENCRYPT(IN_Cliente, IN_CLAVE))
	
    UNION
	
    SELECT CAST(AES_DECRYPT(b.NIT, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS NIT, 
		CAST(AES_DECRYPT(b.Cliente, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS Cliente, 
        a.Sociedad
	FROM Clientes a
     INNER JOIN Clientes b on a.Central = b.Cliente OR b.Central = a.Cliente 
	WHERE a.Sociedad = IN_Sociedad
		AND (b.Cliente = AES_ENCRYPT(IN_Cliente, IN_CLAVE) AND IN_Cliente = IN_NIT)
	
    UNION
    
	SELECT CAST(AES_DECRYPT(Clientes.NIT, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS NIT, 
		CAST(AES_DECRYPT(Clientes.Cliente, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS Cliente, 
        Sociedad
	FROM Clientes 
	WHERE Clientes.Sociedad = IN_Sociedad
		AND (Clientes.NIT = AES_ENCRYPT(IN_NIT, IN_CLAVE)) AND IN_Cliente = IN_NIT
	
    UNION
    
	SELECT CAST(AES_DECRYPT(Clientes.NIT, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS NIT, 
		CAST(AES_DECRYPT(Clientes.Cliente, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS Cliente, 
        Sociedad
	FROM Clientes 
	WHERE Clientes.Sociedad = IN_Sociedad
		AND (Clientes.NIT = AES_ENCRYPT(IN_NIT, IN_CLAVE)) AND IN_Cliente IS NULL
	
    UNION
    
	SELECT CAST(AES_DECRYPT(Clientes.NIT, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS NIT, 
		CAST(AES_DECRYPT(Clientes.Cliente, IN_CLAVE) AS CHAR(1000) CHARACTER SET utf8) AS Cliente, 
        Sociedad
	FROM Clientes 
	WHERE Clientes.Sociedad = IN_Sociedad
		AND (Clientes.Cliente = AES_ENCRYPT(IN_Cliente, IN_CLAVE)) AND IN_NIT = IN_Cliente;

END$$

DELIMITER ;
