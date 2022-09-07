CREATE TABLE `tbl_usuario_master` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nombre` TEXT(30) NOT NULL,
	`primer_apellido` TEXT(30) NOT NULL,
	`segundo_apellido` TEXT(30) NOT NULL,
	`correo` TEXT(60) NOT NULL,
	`contrasena` TEXT(300) NOT NULL,
	`activo` INT(1) NOT NULL DEFAULT '1',
	PRIMARY KEY (`id`)
);