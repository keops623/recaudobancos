USE `recaudospagos`;
DROP procedure IF EXISTS `SP_INSERTA_LOGREQUEST`;

DELIMITER $$
USE `recaudospagos`$$
CREATE PROCEDURE `SP_INSERTA_LOGREQUEST` (
IN_request BLOB,
IN_fecha DATETIME,
IN_origen VARCHAR(50)
)
BEGIN
	INSERT INTO logRequest (
		request, fecha, origen)
    VALUES (
		IN_request, IN_fecha, IN_origen);
END$$