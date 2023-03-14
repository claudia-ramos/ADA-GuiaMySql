-- MySQL Script generated by MySQL Workbench
-- Mon Mar 13 22:20:40 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema registrosdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema registrosdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `registrosdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `registrosdb` ;

-- -----------------------------------------------------
-- Table `registrosdb`.`documenttype`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registrosdb`.`documenttype` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `document_type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `registrosdb`.`person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registrosdb`.`person` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `number_document` VARCHAR(45) NOT NULL,
  `DocumentType_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_person_documentType` (`DocumentType_id` ASC) VISIBLE,
  CONSTRAINT `fk_person_documentType`
    FOREIGN KEY (`DocumentType_id`)
    REFERENCES `registrosdb`.`documenttype` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `registrosdb`.`TipoDocumento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registrosdb`.`TipoDocumento` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `documento` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `registrosdb`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registrosdb`.`Persona` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidio` VARCHAR(45) NOT NULL,
  `fecha_cumpleanios` VARCHAR(45) NOT NULL,
  `Dni_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Dni_id`),
  INDEX `fk_Persona_Dni1_idx` (`Dni_id` ASC) VISIBLE,
  CONSTRAINT `fk_Persona_Dni1`
    FOREIGN KEY (`Dni_id`)
    REFERENCES `registrosdb`.`Dni` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `registrosdb`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registrosdb`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `registrosdb`.`Dni`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registrosdb`.`Dni` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `documento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `registrosdb`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registrosdb`.`Persona` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidio` VARCHAR(45) NOT NULL,
  `fecha_cumpleanios` VARCHAR(45) NOT NULL,
  `Dni_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Dni_id`),
  INDEX `fk_Persona_Dni1_idx` (`Dni_id` ASC) VISIBLE,
  CONSTRAINT `fk_Persona_Dni1`
    FOREIGN KEY (`Dni_id`)
    REFERENCES `registrosdb`.`Dni` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;