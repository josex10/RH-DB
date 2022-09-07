/*
 SCRIPT TO CREATE THE TABLE USUARIO MASTER
 */
CREATE TABLE `tbl_usuario_master` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_nombre` TEXT(30) NOT NULL,
    `clm_primer_apellido` TEXT(30) NOT NULL,
    `clm_segundo_apellido` TEXT(30) NOT NULL,
    `clm_correo` TEXT(60) NOT NULL,
    `clm_contrasena` TEXT(300) NOT NULL,
    `clm_activo` INT(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (`clm_id`)
);

/*
 STORE PROCEDURE TO INSERT RECORDS INTO THE TBL_USUARIO_MASTER
 */
DELIMITER // 
CREATE PROCEDURE SP_CRUD_USUARIO_MASTER_INSERT(
    IN nombre TEXT(30),
    IN primer_apellido TEXT(30),
    IN segundo_apellido TEXT(30),
    IN correo TEXT(60),
    IN contrasena TEXT(300)
) BEGIN
INSERT INTO
    `tbl_usuario_master` (
        clm_nombre,
        clm_primer_apellido,
        clm_segundo_apellido,
        clm_correo,
        clm_contrasena
    )
VALUES
    (
        nombre,
        primer_apellido,
        segundo_apellido,
        correo,
        contrasena
    );

END 
// 
DELIMITER ;

/*
 STORED PROCEDURE TO UPDATE RECORDS INTO THE TBL_USUARIO_MASTER
 */
DELIMITER / / CREATE PROCEDURE SP_CRUD_USUARIO_MASTER_UPDATE(
    IN id INT,
    IN nombre TEXT(30),
    IN primer_apellido TEXT(30),
    IN segundo_apellido TEXT(30),
    IN correo TEXT(60)
) BEGIN
UPDATE
    `tbl_usuario_master`
SET
    clm_nombre = nombre,
    clm_primer_apellido = primer_apellido,
    clm_segundo_apellido = segundo_apellido,
    clm_correo = correo
WHERE
    clm_id = id;

END 
// 
DELIMITER ;

/*
    STORE PROCEDURE LOGIN PROCESS FOR USUARIO MASTER 
*/

DELIMITER // 
CREATE PROCEDURE SP_CUSTOM_USUARIO_MASTER_LOGIN(
    IN id INT,
    IN correo TEXT(60), 
    IN contrasena TEXT(300)
) 
BEGIN
SELECT COUNT(*) as result FROM
    `tbl_usuario_master`
WHERE
    clm_id = id && clm_correo = correo && clm_contrasena = contrasena && clm_activo = 1;
END 
// 
DELIMITER ;