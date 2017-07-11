CREATE DATABASE pruebaasd;

USE pruebaasd

CREATE TABLE tipo_activo (
  id_tipo_activo int not null AUTO_INCREMENT,
  nombre varchar(100) not null,
  codigo varchar(10) not null,
  estado int not null DEFAULT 1,
  CONSTRAINT PK_tipo_activo PRIMARY KEY (id_tipo_activo)
);

CREATE TABLE estado_activo (
  id_estado_activo int not null AUTO_INCREMENT,
  nombre varchar(100) not null,
  codigo varchar(10) not null,
  CONSTRAINT PK_estado_activo PRIMARY KEY (id_estado_activo)
);

CREATE TABLE tipo_asignado (
  id_tipo_asignado int not null AUTO_INCREMENT,
  nombre varchar(100) not null,
  codigo varchar(10) not null,
  CONSTRAINT PK_tipo_asignado PRIMARY KEY (id_tipo_asignado)
);

CREATE TABLE activo (
  id_activo int not null AUTO_INCREMENT,
  nombre varchar(100) not null,
  descripcion varchar(1000) not null,
  id_tipo_activo int not null,
  serial varchar(100) not null,
  num_interno int not null,
  peso decimal(10.1) not null,
  alto decimal(10.1) not null,
  ancho decimal(10.1) not null,
  largo decimal(10.1) not null,
  id_estado_activo int not null,
  fecha_compra datetime not null,
  fecha_baja datetime not null,
  valor_compra decimal(65.1) not null,
  CONSTRAINT PK_activo PRIMARY KEY (id_activo),
  CONSTRAINT FK_activo_01 FOREIGN KEY (id_tipo_activo) REFERENCES tipo_activo (id_tipo_activo),
  CONSTRAINT FK_activo_02 FOREIGN KEY (id_estado_activo) REFERENCES estado_activo (id_estado_activo)
);

CREATE TABLE asignado (
  id_asignado int not null AUTO_INCREMENT,
  nombre varchar(100) not null,
  fecha_asignado datetime not null,
  id_tipo_asignado int not null,
  id_activo int not null,
  CONSTRAINT PK_asignado PRIMARY KEY (id_asignado),
  CONSTRAINT FK_asignado_01 FOREIGN KEY (id_tipo_asignado) REFERENCES tipo_asignado (id_tipo_asignado),
  CONSTRAINT FK_asignado_02 FOREIGN KEY (id_activo) REFERENCES activo (id_activo)
);