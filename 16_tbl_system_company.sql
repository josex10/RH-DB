DROP TABLE IF EXISTS `tbl_system_company`;

CREATE TABLE `tbl_system_company` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_id_identification_type` INT NOT NULL,
    `clm_id_master_country` INT NOT NULL,
    `clm_id_master_state` INT NOT NULL,
    `clm_id_master_canton` INT NOT NULL,
    `clm_id_master_district` INT NOT NULL,
    `clm_identification_number` TEXT(30) UNIQUE NOT NULL,
    `clm_company_name` TEXT(30) NOT NULL,
    `clm_phone` TEXT(15) NOT NULL,
    `clm_email` TEXT(120) NOT NULL,
    `clm_address` TEXT(120) NOT NULL,
    `clm_is_active` INT(1) NOT NULL DEFAULT '1',
    `clm_id_master_created_by` INT NOT NULL,
    `clm_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `clm_id_master_updated_by` INT NOT NULL,
    `clm_updated_at` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`clm_id`),
    FOREIGN KEY (clm_id_identification_type) REFERENCES tbl_master_identification_type(clm_id),
    FOREIGN KEY (clm_id_master_country) REFERENCES tbl_master_country(clm_id),
    FOREIGN KEY (clm_id_master_state) REFERENCES tbl_master_state(clm_id),
    FOREIGN KEY (clm_id_master_canton) REFERENCES tbl_master_canton(clm_id),
    FOREIGN KEY (clm_id_master_district) REFERENCES tbl_master_district(clm_id),
    FOREIGN KEY (clm_id_master_created_by) REFERENCES tbl_master_user(clm_id),
    FOREIGN KEY (clm_id_master_updated_by)  REFERENCES tbl_master_user(clm_id)
);