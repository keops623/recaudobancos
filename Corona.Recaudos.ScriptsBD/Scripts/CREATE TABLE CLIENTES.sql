USE RecaudosPagos;

-- DROP TABLE IF EXISTS `Clientes`;

CREATE TABLE Clientes (
Sociedad VARCHAR(4) NOT NULL,
NIT BLOB,
Cliente BLOB,
Central BLOB
);
