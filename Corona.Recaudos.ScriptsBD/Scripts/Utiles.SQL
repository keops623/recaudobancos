/* Se utilia para modicar el estado de un recaudo especifico
update RecaudosPagos.Recaudos
set estado_recaudo = '99'
where recaudo_id = 12;
update RecaudosPagos.Recaudos
set estado_recaudo = '1'
where recaudo_id = 5;
*/



-- call RecaudosPagos.SP_CONSULTA_RECAUDOS_NOTIFICAR('QwertAsdfg12345.*'); //Consulta los recaudos a notificar
-- call RecaudosPagos.SP_CONSULTA_CLIENTE('10261388123','EC00','1000000014','QwertAsdfg12345.*'); //Consulta un cliente especifico con la informacion visible
-- call RecaudosPagos.SP_CONSULTA_CLIENTE('10261388123','EC00','8000000029','QwertAsdfg12345.*'); //Consulta un cliente con subsidiaria 
-- call RecaudosPagos.SP_CONSULTA_CLIENTE('10261388123','EC00','','QwertAsdfg12345.*'); //Consulta un cliente con nit
-- call RecaudosPagos.SP_INSERTA_CLIENTE('<ROOT><ROW><Sociedad>#####</Sociedad><NIT>#####</NIT><Cliente>#####</Cliente><Central>#####</Central></ROW></ROOT>','QwertAsdfg12345.*'); //Insertar un cliente o varios clientes adicionando al estructura ROW


/*Consultar reucados pendientes o en estado 99*/
SELECT
	Rec.RECAUDO_ID,  
	CAST(AES_DECRYPT(Rec.NIT_PAGADOR, 'QwertAsdfg12345.*') AS CHAR(100) CHARACTER SET utf8) NIT_PAGADOR,
	CAST(AES_DECRYPT(IFNULL(Rec.SOLICITANTE,Cl.NIT), 'QwertAsdfg12345.*') AS CHAR(100) CHARACTER SET utf8) SOLICITANTE,
	Rec.ESTADO_RECAUDO
FROM Recaudos Rec
INNER JOIN Parametros Param ON Rec.COD_BANCO = Param.COD_BANCO AND Rec.CONVENIO = Param.CONVENIO
INNER JOIN Clientes Cl ON Cl.NIT = Rec.NIT_PAGADOR AND Cl.Sociedad = Param.Sociedad AND IFNULL(Rec.Solicitante,Cl.Cliente) = Cl.Cliente
LEFT JOIN Clientes Cl2 ON Cl.Cliente = Cl2.central AND Rec.SOLICITANTE IS NULL AND Cl2.NIT = Cl.Cliente
WHERE Rec.ESTADO_RECAUDO = '99';
    
    