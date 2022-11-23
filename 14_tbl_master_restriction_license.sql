DROP TABLE IF EXISTS `tbl_master_restriction_license`;

CREATE TABLE `tbl_master_restriction_license` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_id_master_module` INT NOT NULL,
    `clm_id_master_license` INT NOT NULL,
    `clm_max_register` DOUBLE NOT NULL,
    `clm_id_master_created_by` INT NOT NULL,
    `clm_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `clm_id_master_updated_by` INT NOT NULL,
    `clm_updated_at` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`clm_id`),
    FOREIGN KEY (clm_id_master_module) REFERENCES tbl_master_module(clm_id),
    FOREIGN KEY (clm_id_master_license) REFERENCES tbl_master_license(clm_id),
    FOREIGN KEY (clm_id_master_created_by) REFERENCES tbl_master_user(clm_id),
    FOREIGN KEY (clm_id_master_updated_by)  REFERENCES tbl_master_user(clm_id)
);