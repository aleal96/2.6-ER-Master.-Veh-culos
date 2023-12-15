SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS alquiler;
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS vehiculos;




/* Create Tables */

CREATE TABLE alquiler
(
	id int(11) NOT NULL,
	inicio date NOT NULL,
	fin date,
	id_usuarios int(11) NOT NULL,
	id_vehiculos int(11) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE usuarios
(
	id int(11) NOT NULL,
	nombre varchar(25) NOT NULL,
	dni varchar(9) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE vehiculos
(
	id int(11) NOT NULL,
	marca varchar(25) NOT NULL,
	modelo varchar(25) NOT NULL,
	tipo enum(Turismo, 4x4, Furgoneta) NOT NULL,
	PRIMARY KEY (id)
);



/* Create Foreign Keys */

ALTER TABLE alquiler
	ADD FOREIGN KEY (id_usuarios)
	REFERENCES usuarios (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE alquiler
	ADD FOREIGN KEY (id_vehiculos)
	REFERENCES vehiculos (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



