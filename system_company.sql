/*
 SCRIPT TO CREATE THE TABLE SYSTEM COMPANY
 */
CREATE TABLE `tbl_system_company` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_domain` TEXT(30) NOT NULL,
    `clm_identification_rel` INT NOT NULL,
    `clm_identification_number` TEXT(30) NOT NULL,
    `clm_name` TEXT(30) NOT NULL,
    `clm_lastname` TEXT(30) NOT NULL,
    `clm_phone` TEXT(12) NOT NULL,
    `clm_email` TEXT(60) NOT NULL,
    `clm_country_rel` INT NOT NULL,
    `clm_province_rel` INT NOT NULL,
    `clm_address` TEXT(300),
    `clm_license_rel` INT NOT NULL,
    `clm_active_until` TIMESTAMP,
    `clm_is_active` INT(1) NOT NULL DEFAULT '1',
    `clm_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `clm_updated_at` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `clm_created_by` INT NOT NULL,
    `clm_updated_by` INT NOT NULL,
    PRIMARY KEY (`clm_id`),
    FOREIGN KEY (clm_created_by) REFERENCES tbl_admin_user_master(clm_id),
    FOREIGN KEY (clm_updated_by)  REFERENCES tbl_admin_user_master(clm_id),
    FOREIGN KEY (clm_identification_rel) REFERENCES tbl_admin_identification_type(clm_id),
    FOREIGN KEY (clm_country_rel) REFERENCES tbl_admin_country(clm_id),
    FOREIGN KEY (clm_province_rel)  REFERENCES tbl_admin_province(clm_id),
    FOREIGN KEY (clm_license_rel)  REFERENCES tbl_admin_license(clm_id)
);