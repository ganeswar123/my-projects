--Auther @ Ganeswar Barik.
--Created Date @ 09/03/2011.
--Datebase @ MYSQL 5.1.
-- Script Type @ Create.
--Revision @ 1.0

-- This is a script file used to Database for Sandilya Group of Organisation.
-- This sql script only applicable for mysql 5.1 Database


SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE IF NOT EXISTS `sandilya`
  CHARACTER SET latin1;
-- -------------------------------------
-- Tables
DROP TABLE IF EXISTS `sandilya`.`organisation`;
CREATE TABLE `sandilya`.`organisation` (
  `ORGANISATION_ID` BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  `ORGANISATION_NAME` VARCHAR(45) NOT NULL,
  `ORGANISATION_TYPE` VARCHAR(20) NULL,
  PRIMARY KEY (`ORGANISATION_ID`)
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `sandilya`.`address`;
CREATE TABLE `sandilya`.`address` (
  `ADDRESS_ID` BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  `ADDRESS_TYPE` VARCHAR(45) NULL,
  `FIRST_NAME` VARCHAR(45) NOT NULL,
  `MIDDLE_NAME` VARCHAR(20) NULL,
  `LAST_NAME` VARCHAR(45) NULL,
  `ADDRESSONE` VARCHAR(255) NULL,
  `STREET` VARCHAR(255) NULL,
  `DIST` VARCHAR(255) NULL,
  `CITY` VARCHAR(255) NULL,
  `STATE` VARCHAR(255) NULL,
  `COUNTRY` VARCHAR(255) NULL,
  `PIN` BIGINT(20) NULL,
  PRIMARY KEY (`ADDRESS_ID`)
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `sandilya`.`card`;
CREATE TABLE `sandilya`.`card` (
  `CARD_ID` BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  `CARD_NO` VARCHAR(45) NOT NULL,
  `ISSUE_DATE` DATETIME NULL,
  `ISEXPIRED` VARCHAR(20) NULL,
  `ORGANISATION_ID` BIGINT(20) NULL,
  `FKorganisationORGANISATION_ID`  NOT NULL,
  PRIMARY KEY (`CARD_ID`),
  CONSTRAINT `FKorganisation` FOREIGN KEY `FKorganisation` (`FKorganisationORGANISATION_ID`)
    REFERENCES `sandilya`.`organisation` (`ORGANISATION_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `sandilya`.`course`;
CREATE TABLE `sandilya`.`course` (
  `COURSE_ID` BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` VARCHAR(45) NOT NULL,
  `COURSE_TYPE` VARCHAR(45) NULL,
  `COURSE_FEE` VARCHAR(20) NULL,
  `COURSE_DURATION` VARCHAR(20) NULL,
  `ORGANISATION_ID` BIGINT(20) NULL,
  `FKorganisationORGANISATION_ID`  NOT NULL,
  PRIMARY KEY (`COURSE_ID`),
  CONSTRAINT `FKorganisation` FOREIGN KEY `FKorganisation` (`FKorganisationORGANISATION_ID`)
    REFERENCES `sandilya`.`organisation` (`ORGANISATION_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `sandilya`.`department`;
CREATE TABLE `sandilya`.`department` (
  `DEPARTMENT_ID` BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` VARCHAR(45) NOT NULL,
  `DEPARTMENT_TYPE` VARCHAR(20) NULL,
  PRIMARY KEY (`DEPARTMENT_ID`)
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `sandilya`.`employee`;
CREATE TABLE `sandilya`.`employee` (
  `Employee_ID` BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` VARCHAR(45) NOT NULL,
  `MIDDLE_NAME` VARCHAR(255) NULL,
  `LAST_NAME` VARCHAR(45) NOT NULL,
  `HIRE_DATE` DATETIME NULL,
  `FIRE_DATE` DATETIME NULL,
  `PHONE` VARCHAR(45) NOT NULL,
  `EMAIL` VARCHAR(45) NOT NULL,
  `COURSE_ID` VARCHAR(255) NULL,
  `ORGANSATION_ID` VARCHAR(45) NULL,
  `PAYMENT_ID` VARCHAR(255) NULL,
  `ADDRESS_ID` VARCHAR(255) NULL,
  `ATTENDANCE_ID` VARCHAR(255) NULL,
  `CARD_ID` VARCHAR(255) NULL,
  `DEPARTMENT_ID` VARCHAR(45) NULL,
  `FKaddressADDRESS_ID`  NOT NULL,
  `FKcardCARD_ID`  NOT NULL,
  `FKcourseCOURSE_ID`  NOT NULL,
  `FKdepartmentDEPARTMENT_ID`  NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  CONSTRAINT `FKaddress` FOREIGN KEY `FKaddress` (`FKaddressADDRESS_ID`)
    REFERENCES `sandilya`.`address` (`ADDRESS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FKcard` FOREIGN KEY `FKcard` (`FKcardCARD_ID`)
    REFERENCES `sandilya`.`card` (`CARD_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FKcourse` FOREIGN KEY `FKcourse` (`FKcourseCOURSE_ID`)
    REFERENCES `sandilya`.`course` (`COURSE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FKdepartment` FOREIGN KEY `FKdepartment` (`FKdepartmentDEPARTMENT_ID`)
    REFERENCES `sandilya`.`department` (`DEPARTMENT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;



DROP TABLE IF EXISTS `sandilya`.`parent`;
CREATE TABLE `sandilya`.`parent` (
  `PARENT_ID` BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` VARCHAR(45) NOT NULL,
  `MIDDLE_NAME` VARCHAR(255) NULL,
  `LAST_NAME` VARCHAR(45) NOT NULL,
  `PHONE` VARCHAR(45) NULL,
  `HOME_PHONE` VARCHAR(45) NULL,
  `EMAIL` VARCHAR(45) NULL,
  `ADDRESS_ID` BIGINT(20) NULL,
  `FKaddressADDRESS_ID`  NOT NULL,
  PRIMARY KEY (`PARENT_ID`),
  CONSTRAINT `FKaddress` FOREIGN KEY `FKaddress` (`FKaddressADDRESS_ID`)
    REFERENCES `sandilya`.`address` (`ADDRESS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `sandilya`.`student`;
CREATE TABLE `sandilya`.`student` (
  `STUDENT_ID` BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` VARCHAR(45) NOT NULL,
  `MIDDLE_NAME` VARCHAR(255) NULL,
  `LAST_NAME` VARCHAR(45) NOT NULL,
  `JOIN_DATE` DATETIME NULL,
  `PHONE` VARCHAR(45) NOT NULL,
  `EMAIL` VARCHAR(45) NOT NULL,
  `COURSE_ID` VARCHAR(255) NULL,
  `ORGANSATION_ID` VARCHAR(45) NULL,
  `PAYMENT_ID` VARCHAR(255) NULL,
  `ADDRESS_ID` VARCHAR(255) NULL,
  `ATTENDANCE_ID` VARCHAR(255) NULL,
  `CARD_ID` VARCHAR(255) NULL,
  `DEPARTMENT_ID` VARCHAR(45) NULL,
  `FKaddressADDRESS_ID`  NOT NULL,
  `FKcardCARD_ID`  NOT NULL,
  `FKcourseCOURSE_ID`  NOT NULL,
  `FKdepartmentDEPARTMENT_ID`  NOT NULL,
  PRIMARY KEY (`STUDENT_ID`),
  CONSTRAINT `FKaddress` FOREIGN KEY `FKaddress` (`FKaddressADDRESS_ID`)
    REFERENCES `sandilya`.`address` (`ADDRESS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FKcard` FOREIGN KEY `FKcard` (`FKcardCARD_ID`)
    REFERENCES `sandilya`.`card` (`CARD_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FKcourse` FOREIGN KEY `FKcourse` (`FKcourseCOURSE_ID`)
    REFERENCES `sandilya`.`course` (`COURSE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FKdepartment` FOREIGN KEY `FKdepartment` (`FKdepartmentDEPARTMENT_ID`)
    REFERENCES `sandilya`.`department` (`DEPARTMENT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `sandilya`.`syllabus`;
CREATE TABLE `sandilya`.`syllabus` (
  `SYLLABUS_ID` BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
  `COURSE_ID` BIGINT(20) NULL,
  `ORGANSATION_ID` BIGINT(20) NULL,
  `TOPIC_NAME` VARCHAR(45) NULL,
  `DESCRIPTION` VARCHAR(45) NULL,
  `FKcourseCOURSE_ID`  NOT NULL,
  PRIMARY KEY (`SYLLABUS_ID`),
  CONSTRAINT `FKcourse` FOREIGN KEY `FKcourse` (`FKcourseCOURSE_ID`)
    REFERENCES `sandilya`.`course` (`COURSE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `sandilya`.`user`;
CREATE TABLE `sandilya`.`user` (
  `USER_ID` VARCHAR(45) NOT NULL,
  `PASSWORD` VARCHAR(45) NOT NULL,
  `USERGROUP_ID` BIGINT(20) NULL,
  PRIMARY KEY (`USER_ID`)
)
ENGINE = InnoDB
ROW_FORMAT = Compact
CHARACTER SET utf8 COLLATE utf8_general_ci;



SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------------------------------------------------
-- EOF
