/*
 SCRIPT TO CREATE THE TABLE USUARIO MASTER
 */
CREATE TABLE `tbl_admin_user_master` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_name` TEXT(30) NOT NULL,
    `clm_lastname` TEXT(30) NOT NULL,
    `clm_email` TEXT(60) NOT NULL,
    `clm_password` TEXT(300) NOT NULL,
    `clm_is_active` INT(1) NOT NULL DEFAULT '0',
    PRIMARY KEY (`clm_id`)
);