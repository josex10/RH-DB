

DROP TABLE IF EXISTS `tbl_master_user`;

CREATE TABLE `tbl_master_user` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_username` TEXT(30) UNIQUE NOT NULL,
    `clm_name` TEXT(30) NOT NULL,
    `clm_lastname_1` TEXT(30) NOT NULL,
    `clm_lastname_2` TEXT(30) NOT NULL,
    `clm_email` TEXT(120) UNIQUE NOT NULL,
    `clm_password` TEXT(120) NOT NULL,
    `clm_is_active` INT(1) NOT NULL DEFAULT '1',
    `clm_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`clm_id`)
);