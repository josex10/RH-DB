
/*
 SCRIPT TO CREATE THE TABLE TBL_MASTER_ROLE
 */
CREATE TABLE IF NOT EXISTS `tbl_master_role` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_name` TEXT(30) NOT NULL UNIQUE,
    `clm_description` TEXT(200) NOT NULL,
    `clm_createAt` DATE DEFAULT(CURRENT_DATE),
    `clm_updateAt` DATE DEFAULT NULL,
    `clm_deleteAt` DATE DEFAULT NULL,
    `clm_active` INT(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (`clm_id`)
);

/*
	STORE PROCEDURE TO INSERT RECORDS INTO THE TBL_MASTER_ROLE
*/
DROP PROCEDURE IF EXISTS SP_CRUD_MASTER_ROLE_INSERT;
DELIMITER $$
CREATE PROCEDURE SP_CRUD_MASTER_ROLE_INSERT ( 
	IN name TEXT(30),
	IN description TEXT(200)
) 
BEGIN
	INSERT INTO tbl_master_role ( clm_name, clm_description )
	VALUES ( name, description );
END $$
DELIMITER ;

/*
	STORE PROCEDURE TO GET ALL RECORDS INTO THE TBL_MASTER_ROLE
*/
DROP PROCEDURE IF EXISTS SP_CRUD_MASTER_ROLE_GET_ALL;
DELIMITER $$
CREATE PROCEDURE SP_CRUD_MASTER_ROLE_GET_ALL () 
BEGIN
	SELECT 
    clm_id AS uid,
    clm_name AS name,
    clm_description AS description,
    clm_createAt AS createAt,
	clm_updateAt AS updateAt,
    clm_deleteAt AS deleteAt,
    clm_active AS active
    FROM tbl_master_role;
END $$
DELIMITER ;

/*
 STORE PROCEDURE TO GET A RECORD OF TBL_USUARIO_MASTER BY ID
 */
DROP PROCEDURE IF EXISTS SP_CRUD_MASTER_ROLE_GET_BY_ID;
DELIMITER $$
CREATE PROCEDURE SP_CRUD_MASTER_ROLE_GET_BY_ID ( 
	IN uid INT
) 
BEGIN
	SELECT
    clm_id AS uid,
    clm_name AS name,
    clm_description AS description,
    clm_createAt AS createAt,
	clm_updateAt AS updateAt,
    clm_deleteAt AS deleteAt,
    clm_active AS active
    FROM tbl_master_role WHERE clm_id = uid;
END $$
DELIMITER ;

/*
 STORE PROCEDURE TO UPDATE A RECORD OF TBL_USUARIO_MASTER BY ID
 */
DROP PROCEDURE IF EXISTS SP_CRUD_MASTER_ROLE_UPDATE_BY_ID;
DELIMITER $$
CREATE PROCEDURE SP_CRUD_MASTER_ROLE_UPDATE_BY_ID ( 
	IN uid INT,
    IN name TEXT(30),
	IN description TEXT(200)
) 
BEGIN
	UPDATE 
		tbl_master_role
	SET
		clm_name = name,
		clm_description = description,
        clm_updateAt = CURRENT_DATE()
	WHERE
		clm_id = uid;
END $$
DELIMITER ;

/*
 STORE PROCEDURE TO DISABLE A RECORD OF TBL_USUARIO_MASTER BY ID
 */
DROP PROCEDURE IF EXISTS SP_CRUD_MASTER_ROLE_DISABLE_BY_ID;
DELIMITER $$
CREATE PROCEDURE SP_CRUD_MASTER_ROLE_DISABLE_BY_ID ( 
	IN uid INT
) 
BEGIN
	UPDATE 
		tbl_master_role
	SET
		clm_active = 0,
        clm_updateAt = CURRENT_DATE(),
		clm_deleteAt = CURRENT_DATE()
	WHERE
		clm_id = uid;
END $$
DELIMITER ;

/*
 STORE PROCEDURE TO ENABLE A RECORD OF TBL_USUARIO_MASTER BY ID
 */
DROP PROCEDURE IF EXISTS SP_CRUD_MASTER_ROLE_ENABLE_BY_ID;
DELIMITER $$
CREATE PROCEDURE SP_CRUD_MASTER_ROLE_ENABLE_BY_ID ( 
	IN uid INT
) 
BEGIN
	UPDATE 
		tbl_master_role
	SET
		clm_active = 1,
        clm_updateAt = CURRENT_DATE(),
		clm_deleteAt = NULL
	WHERE
		clm_id = uid;
END $$
DELIMITER ;

/*
 STORE PROCEDURE TO GET A RECORD OF TBL_USUARIO_MASTER BY NAME
 */
DROP PROCEDURE IF EXISTS SP_CRUD_MASTER_ROLE_BY_NAME;
DELIMITER $$
CREATE PROCEDURE SP_CRUD_MASTER_ROLE_BY_NAME ( 
	IN name TEXT(30)
) 
BEGIN
	SELECT clm_name AS name 
	FROM tbl_master_role
	WHERE clm_name = name;
END $$
DELIMITER ;
