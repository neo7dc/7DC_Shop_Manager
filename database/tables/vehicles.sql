CREATE TABLE `7dc_shop_manager`.`vehicles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `year` INT NULL,
  `make` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `trim` VARCHAR(45) NULL,
  `code` VARCHAR(45) NULL,
  `vin` VARCHAR(45) NULL,
  `notes` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  INDEX `customer_id_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `customer_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `7dc_shop_manager`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
