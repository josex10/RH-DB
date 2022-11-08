/*
 SCRIPT TO CREATE THE TABLE USUARIO MASTER
 */
CREATE TABLE `tbl_admin_user_master` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_username` TEXT(30) NOT NULL,
    `clm_name` TEXT(30) NOT NULL,
    `clm_lastname` TEXT(30) NOT NULL,
    `clm_email` TEXT(30) NOT NULL,
    `clm_password` TEXT(300) NOT NULL,
    `clm_is_active` INT(1) NOT NULL DEFAULT '0',
    PRIMARY KEY (`clm_id`),
    UNIQUE (clm_username)
);

ALTER TABLE tbl_admin_user_master add UNIQUE(clm_password);

SHOW COLUMNS FROM tbl_admin_user_master;

SELECT* FROM tbl_admin_user_master;

ALTER TABLE tbl_admin_user_master
ADD COLUMN clm_email TEXT(30) NOT NULL AFTER clm_lastname;

ALTER TABLE tbl_admin_user_master
DROP COLUMN clm_email;