
CREATE TABLE IF NOT EXISTS `tbl_company` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_name` TEXT(30) NOT NULL UNIQUE,
    `clm_phone` TEXT(12) NOT NULL,
    `clm_email` TEXT(120) NOT NULL,
    `clm_country` TEXT(30) NOT NULL,
    `clm_state` TEXT(30) NOT NULL,
    `clm_address` TEXT(120) NOT NULL,
    `clm_createAt` DATE DEFAULT(CURRENT_DATE),
    `clm_updateAt` DATE DEFAULT NULL,
    `clm_deleteAt` DATE DEFAULT NULL,
    `clm_active` INT(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (`clm_id`)
);
