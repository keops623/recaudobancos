USE RecaudosPagos;

DROP TABLE IF EXISTS `Parametros`;

CREATE TABLE Parametros (
COD_BANCO VARCHAR(4),
CONVENIO VARCHAR(12),
SOCIEDAD VARCHAR(4),
NOMBRE_SOCIEDAD VARCHAR(30),
NIT_SOCIEDAD VARCHAR(16),
CTA_CONTABLE VARCHAR(10),
CLASE_DOC_RECAUDO VARCHAR(10)
);