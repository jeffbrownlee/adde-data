-- MySQL Script generated by MySQL Workbench
-- Fri Jan 10 17:41:53 2025
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema adde
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema adde
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `adde` DEFAULT CHARACTER SET utf8 ;
USE `adde` ;

-- -----------------------------------------------------
-- Table `adde`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adde`.`user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(64) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `adde`.`type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adde`.`type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `adde`.`data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adde`.`data` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` INT UNSIGNED NOT NULL,
  `type` INT UNSIGNED NOT NULL,
  `data` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_idx` (`user` ASC),
  INDEX `type_idx` (`type` ASC),
  UNIQUE INDEX `user_type_uq` (`user` ASC, `type` ASC),
  CONSTRAINT `user`
    FOREIGN KEY (`user`)
    REFERENCES `adde`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `type`
    FOREIGN KEY (`type`)
    REFERENCES `adde`.`type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
