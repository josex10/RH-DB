
DROP TABLE IF EXISTS `tbl_system_company_validation_code`;

CREATE TABLE `tbl_system_company_validation_code` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_id_system_company` INT NOT NULL,
    `clm_code` TEXT(30) NOT NULL,
    `clm_issue_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    `clm_expiration_date` TIMESTAMP NOT NULL,
    `clm_validated` INT(1) NOT NULL DEFAULT '0',
    PRIMARY KEY (`clm_id`),
    FOREIGN KEY (`clm_id_system_company`) REFERENCES tbl_system_company(`clm_id`)
);