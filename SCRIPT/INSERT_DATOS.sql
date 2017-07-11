INSERT INTO tipo_activo(nombre, codigo, estado) VALUES('Mesa','1',1);
INSERT INTO tipo_activo(nombre, codigo, estado) VALUES('Silla','2',1);
INSERT INTO tipo_activo(nombre, codigo, estado) VALUES('Maquinaria','3',1);
INSERT INTO tipo_activo(nombre, codigo, estado) VALUES('Computador Escritorio','4',1);
INSERT INTO tipo_activo(nombre, codigo, estado) VALUES('Impresora','5',1);
INSERT INTO estado_activo(nombre, codigo) VALUES('Activo','A');
INSERT INTO estado_activo(nombre, codigo) VALUES('Dado de Baja','DB');
INSERT INTO estado_activo(nombre, codigo) VALUES('En Reparacion','R');
INSERT INTO estado_activo(nombre, codigo) VALUES('Disponible','D');
INSERT INTO estado_activo(nombre, codigo) VALUES('Asignado','AS');
INSERT INTO tipo_asignado(nombre, codigo) VALUES('Area','A');
INSERT INTO tipo_asignado(nombre, codigo) VALUES('Persona','P');
COMMIT;