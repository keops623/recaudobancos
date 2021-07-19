USE RecaudosPagos;

DROP TABLE IF EXISTS `Usuario_Acceso`;

CREATE TABLE Usuario_Acceso (
Usuario_Acceso_ID INT NOT NULL AUTO_INCREMENT KEY,
Usuario VARCHAR(30),
Clave VARCHAR(30)
);
