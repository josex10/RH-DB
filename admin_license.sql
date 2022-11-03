-- Active: 1663901285898@@asesorias-cr.com@3306@asesoricr_RH_DB
/*
 SCRIPT TO CREATE THE TABLE ADMIN LICENSE
 */
CREATE TABLE `tbl_admin_license` (
    `clm_id` INT NOT NULL AUTO_INCREMENT,
    `clm_name` TEXT(30) NOT NULL,
    `clm_number_of_users` INT NOT NULL,
    `clm_number_of_orders` INT NOT NULL,
    `clm_description` TEXT(300) NOT NULL,
    `clm_price` DOUBLE NOT NULL DEFAULT 0,
    `clm_is_active` INT(1) NOT NULL DEFAULT '1',
    `clm_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `clm_updated_at` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `clm_created_by` INT NOT NULL,
    `clm_updated_by` INT NOT NULL,
    PRIMARY KEY (`clm_id`),
    FOREIGN KEY (clm_created_by) REFERENCES tbl_admin_user_master(clm_id),
    FOREIGN KEY (clm_updated_by)  REFERENCES tbl_admin_user_master(clm_id)
);

show columns from tbl_admin_identification_type