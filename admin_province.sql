/*
 SCRIPT TO CREATE THE TABLE ADMIN PROVINCE
 */
CREATE TABLE `tbl_admin_province` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_name` TEXT(30) NOT NULL,
    `clm_description` TEXT(300) NOT NULL,
    `clm_country_rel` INT NOT NULL,
    `clm_is_active` INT(1) NOT NULL DEFAULT '1',
    `clm_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `clm_updated_at` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `clm_created_by` INT NOT NULL,
    `clm_updated_by` INT NOT NULL,
    PRIMARY KEY (`clm_id`),
    FOREIGN KEY (clm_created_by) REFERENCES tbl_admin_user_master(clm_id),
    FOREIGN KEY (clm_updated_by)  REFERENCES tbl_admin_user_master(clm_id),
    FOREIGN KEY (clm_country_rel)  REFERENCES tbl_admin_country(clm_id)
);