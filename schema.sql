-- MySQL Script generated by MySQL Workbench
-- Wed Feb 19 13:21:32 2025
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
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `adde`.`data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adde`.`data` (
  `id` INT NOT NULL,
  `company` INT NOT NULL DEFAULT 0,
  `user` INT NOT NULL DEFAULT 0,
  `type` INT NOT NULL,
  `value` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `company` (`company` ASC),
  INDEX `user` (`user` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `adde`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adde`.`company` (
  `id` INT UNSIGNED NOT NULL,
  `owner` INT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `adde`.`type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adde`.`type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `adde`.`companyuser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adde`.`companyuser` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `company` INT NULL,
  `user` INT NULL,
  `level` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `companyuser` (`company` ASC, `user` ASC),
  INDEX `user` (`user` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `adde`.`list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adde`.`list` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` INT NOT NULL,
  `name` VARCHAR(96) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `adde`.`listcontact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `adde`.`listcontact` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `list` INT NOT NULL,
  `user` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
