CREATE TABLE `recaudospagos`.`logrequest` (
  `idlogRequest` INT NOT NULL,
  `request` BLOB NULL,
  `fecha` DATETIME NULL,
  `origen` VARCHAR(50) NULL,
  PRIMARY KEY (`idlogRequest`))
COMMENT = 'Logs de los Request';

ALTER TABLE `recaudospagos`.`logrequest` 
CHANGE COLUMN `idlogRequest` `idlogRequest` INT(11) NOT NULL AUTO_INCREMENT ;