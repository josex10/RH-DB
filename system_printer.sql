/*
 SCRIPT TO CREATE THE TABLE SYSTEM PRINTER
 */
CREATE TABLE `tbl_system_printer` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_name` TEXT(30) NOT NULL,
    `clm_description` TEXT(300) NOT NULL,
    `clm_is_active` INT(1) NOT NULL DEFAULT '1',
    `clm_company_rel` INT NOT NULL,
    `clm_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `clm_updated_at` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `clm_created_by` INT NOT NULL,
    `clm_updated_by` INT NOT NULL,
    PRIMARY KEY (`clm_id`),
    FOREIGN KEY (clm_created_by) REFERENCES tbl_admin_user_master(clm_id),
    FOREIGN KEY (clm_updated_by)  REFERENCES tbl_admin_user_master(clm_id),
    FOREIGN KEY (clm_company_rel)  REFERENCES tbl_system_company(clm_id)
);