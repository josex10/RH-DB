/*
 SCRIPT TO CREATE THE TABLE SYSTEM USER
 */
CREATE TABLE `tbl_system_user` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_name` TEXT(30) NOT NULL,
    `clm_lastname` TEXT(30) NOT NULL,
    `clm_email` TEXT(60) NOT NULL,
    `clm_password` TEXT(300) NOT NULL,
    `clm_company_rel` INT NOT NULL,
    `clm_role_rel` INT NOT NULL,
    `clm_first_login` INT(1) NOT NULL DEFAULT '1',
    `clm_is_active` INT(1) NOT NULL DEFAULT '1',
    `clm_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `clm_updated_at` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`clm_id`),
    FOREIGN KEY (clm_company_rel) REFERENCES tbl_system_company(clm_id),
    FOREIGN KEY (clm_role_rel)  REFERENCES tbl_admin_role(clm_id)
);