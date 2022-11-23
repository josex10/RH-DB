
DROP TABLE IF EXISTS `tbl_master_district`;

CREATE TABLE `tbl_master_district` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_id_master_canton` INT NOT NULL,
    `clm_name` TEXT(30) UNIQUE NOT NULL,
    `clm_is_active` INT(1) NOT NULL DEFAULT '1',
    `clm_id_master_created_by` INT NOT NULL,
    `clm_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `clm_id_master_updated_by` INT NOT NULL,
    `clm_updated_at` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`clm_id`),
    FOREIGN KEY (clm_id_master_canton) REFERENCES tbl_master_canton(clm_id),
    FOREIGN KEY (clm_id_master_created_by) REFERENCES tbl_master_user(clm_id),
    FOREIGN KEY (clm_id_master_updated_by)  REFERENCES tbl_master_user(clm_id)
);