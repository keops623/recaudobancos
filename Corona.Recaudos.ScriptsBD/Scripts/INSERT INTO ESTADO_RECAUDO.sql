USE RecaudosPagos;

INSERT INTO Estado_Recaudo (Codigo, EstadoRecaudo) VALUES 
('01', 'Sin Notificar ws'),
('02', 'Notificado ws'),
('03', 'Sin notificar contingencia ws'),
('04', 'Pendiente Cliente'),
('05', 'Cancelado'),
('99', 'Procesando'),
('98', 'Bloqueado cheque');
