/*
--Auther @ Ganeswar Barik.
--Created Date @ 09/03/2011.
--Datebase @ MYSQL 5.1.
--Script Type @ Create.
--Revision @ 1.0

-- This is a script file used to Database for Sandilya Group of Organisation.
-- This sql script only applicable for mysql 5.1 Database
*/

create database if not exists `sandilya`;

USE `sandilya`;

/*--Organisation Start*/
DROP TABLE IF EXISTS `sandilya`.`ORGANISATION`;
CREATE TABLE  `sandilya`.`ORGANISATION` (
  `ORGANISATION_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ORGANISATION_NAME` varchar(45) NOT NULL,
  `ORGANISATION_TYPE` varchar(20)  NULL,
   PRIMARY KEY (`ORGANISATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*--Organisation End
-- DepartMent Start*/
DROP TABLE IF EXISTS `sandilya`.`DEPARTMENT`;
CREATE TABLE  `sandilya`.`DEPARTMENT` (
  `DEPARTMENT_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(45) NOT NULL,
  `DEPARTMENT_TYPE` varchar(20)  NULL,
   PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*-- Department End
-- Create Card table Start*/
DROP TABLE IF EXISTS `sandilya`.`CARD`;
CREATE TABLE  `sandilya`.`CARD` (
  `CARD_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `CARD_NO` varchar(45) NOT NULL,
  `ISSUE_DATE` datetime  NULL,
  `ISEXPIRED` varchar(20)  NULL,
  `ORGANISATION_ID` bigint(20)  NULL,
   PRIMARY KEY (`CARD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*--Create Card table End
-- Create Course table Start*/
DROP TABLE IF EXISTS `sandilya`.`COURSE`;
CREATE TABLE  `sandilya`.`COURSE` (
  `COURSE_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` varchar(45) NOT NULL,
  `COURSE_TYPE` varchar(45)  NULL,
  `COURSE_FEE` varchar(20)  NULL,
  `COURSE_DURATION` varchar(20)  NULL,
  `ORGANISATION_ID` bigint(20)  NULL,
   PRIMARY KEY (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*--Create Course table End

--Create address Start*/
DROP TABLE IF EXISTS `sandilya`.`ADDRESS`;
CREATE TABLE  `sandilya`.`ADDRESS` (
  `ADDRESS_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ADDRESS_TYPE` varchar(45) NULL,
  `PERSON_ID` varchar(45) NULL,
  `FIRST_NAME` varchar(45)  NULL,
  `MIDDLE_NAME` varchar(20)  NULL,
  `LAST_NAME` varchar(45) NULL,
  `ADDRESSONE` varchar(255) NULL,
  `STREET` varchar(255) NULL,
  `DIST` varchar(255) NULL,
  `CITY` varchar(255) NULL,
  `STATE` varchar(255) NULL,
  `COUNTRY` varchar(255) NULL,
  `PIN` bigint(20) NULL,
   PRIMARY KEY (`ADDRESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*-- Address end

-- Employee Start */
DROP TABLE IF EXISTS `sandilya`.`EMPLOYEE`;
CREATE TABLE  `sandilya`.`EMPLOYEE` (
  `EMPLOYEE_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(45) NOT NULL,
  `MIDDLE_NAME` varchar(255) NULL,
  `LAST_NAME` varchar(45) NULL,
  `HIRE_DATE` datetime NULL,
  `FIRE_DATE` datetime NULL,
  `DOB` datetime NULL,
  `PHONE` varchar(45)  NULL,
  `EMAIL` varchar(45)  NULL,
  `SEX` varchar(10)  NULL,
  `COURSE_ID` varchar(255)  NULL,
  `ORGANISATION_ID` varchar(45) NULL,
  `ADDRESS_ID` varchar(255)  NULL,
  `CARD_ID` varchar(255)  NULL,
  `DEPARTMENT_ID` varchar(45)  NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*-- Employee End

-- Student Start.*/
DROP TABLE IF EXISTS `sandilya`.`STUDENT`;
CREATE TABLE  `sandilya`.`STUDENT` (
  `STUDENT_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(45) NOT NULL,
  `MIDDLE_NAME` varchar(255) NULL,
  `LAST_NAME` varchar(45) NULL,
  `JOIN_DATE` datetime NULL,
  `DOB` datetime NULL,
  `PHONE` varchar(45) NULL,
  `EMAIL` varchar(45) NULL,
  `SEX` varchar(10) NULL,
  `COURSE_ID` varchar(255)  NULL,
  `ORGANSATION_ID` varchar(45) NULL,
  `CARD_ID` varchar(255)  NULL,
  `DEPARTMENT_ID` varchar(45)  NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*-- Student End

-- Parents Start.*/
DROP TABLE IF EXISTS `sandilya`.`PARENT`;
CREATE TABLE  `sandilya`.`PARENT` (
  `PARENT_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(45) NOT NULL,
  `MIDDLE_NAME` varchar(255) NULL,
  `LAST_NAME` varchar(45)  NULL,
  `RELATIONSHIP` varchar(45)  NULL,
  `SEX` varchar(10) NULL,
  `PHONE` varchar(45)  NULL,
  `HOME_PHONE` varchar(45)  NULL,
  `EMAIL` varchar(45)  NULL,
  `ADDRESS_ID` bigint(20)  NULL,
   PRIMARY KEY (`PARENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*-- Parents End

-- User Start*/
DROP TABLE IF EXISTS `sandilya`.`USER`;
CREATE TABLE  `sandilya`.`USER` (
  `USER_ID`  varchar(45) NOT NULL,
  `USER_NAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `USERGROUP_ID` bigint(20) NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
/*
-- User End
-- SYLLABUS START*/
DROP TABLE IF EXISTS `sandilya`.`SYLLABUS`;
CREATE TABLE  `sandilya`.`SYLLABUS` (
  `SYLLABUS_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `COURSE_ID` bigint(20) NULL,
  `ORGANSATION_ID` bigint(20) NULL,
  `TOPIC_NAME` varchar(45)  NULL,
  `DESCRIPTION` varchar(45)  NULL,
   PRIMARY KEY (`SYLLABUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*
-- SYLLLABUS END
-- Payment START*/
DROP TABLE IF EXISTS `sandilya`.`PAYMENT`;
CREATE TABLE  `sandilya`.`PAYMENT` (
  `PAYMENT_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `RECEIPTBOOK_NO` bigint(20) NULL,
  `RECEIPT_NO` bigint(20) NULL,
  `PAYMENT_TYPE` bigint(20) NULL,
  `PAYEMNT_DATE` datetime NULL,
  `PERSON_ID` varchar(45)  NULL,
  `AMOUNT_PAID` varchar(45)  NULL,
  `AMOUNT_BALANCE` varchar(45)  NULL,
  `DESCRIPTION` varchar(45)  NULL,
   PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*
-- Payment END*/
COMMIT;
/*
--- End of Table Creation
--  Strat of Referencing the table
--  Jyoti please add the references to the table.
*/

/* Libreary Start*/
DROP TABLE IF EXISTS `sandilya`.`Status`;
CREATE TABLE Status ( 
code bigint(20) NOT NULL AUTO_INCREMENT,
description VARCHAR(30) NULL, 
PRIMARY KEY (code) 
)ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `sandilya`.`Media`;
CREATE TABLE Media(
media_id  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, 
code  bigint(20) not null, 
PRIMARY KEY (media_id),
CONSTRAINT `MeStatus` FOREIGN KEY `MeStatus` (`code`) REFERENCES `sandilya`.`Status` (`code`)
)ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `sandilya`.`Book`;
CREATE TABLE Book(
ISBN VARCHAR(14), 
title VARCHAR(128), 
author VARCHAR(64),
year bigint(20), 
dewey bigint(20), 
price bigint, 
PRIMARY KEY (ISBN) 
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `sandilya`.`BookMedia`;
CREATE TABLE BookMedia( 
media_id bigint(20),
ISBN VARCHAR(14), 
PRIMARY KEY (media_id)
/*,FOREIGN KEY (media_id) REFERENCES Media,
FOREIGN KEY (ISBN) REFERENCES Book
CONSTRAINT `BMMedia` FOREIGN KEY `BMMedia` (`media_id`) REFERENCES `sandilya`.`media` (`media_id`),
CONSTRAINT `BMB` FOREIGN KEY `BMB` (`ISBN`) REFERENCES `sandilya`.`Book` (`ISBN`)*/
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `sandilya`.`Customer`;
CREATE TABLE Customer( 
ID INTEGER, 
name VARCHAR(64), 
addr VARCHAR(256), 
DOB VARCHAR(10),
phone VARCHAR(30), 
username VARCHAR(16), 
password VARCHAR(32), 
PRIMARY KEY (ID),
UNIQUE (username) 
);

DROP TABLE IF EXISTS `sandilya`.`Card`;
CREATE TABLE Card( num INTEGER, fines REAL, ID INTEGER, PRIMARY KEY (num)/*,
FOREIGN KEY (ID) REFERENCES Customer*/
);

DROP TABLE IF EXISTS `sandilya`.`Checkout`;
CREATE TABLE Checkout( media_id INTEGER, num INTEGER, since VARCHAR(10),
until VARCHAR(10), PRIMARY KEY (media_id)
/*,FOREIGN KEY (media_id) REFERENCES Media,
FOREIGN KEY (num) REFERENCES Card*/ 
);
DROP TABLE IF EXISTS `sandilya`.`Location`;
CREATE TABLE Location( name VARCHAR(64), addr VARCHAR(256), phone VARCHAR(30),
PRIMARY KEY (name) );

DROP TABLE IF EXISTS `sandilya`.`Hold`;
CREATE TABLE Hold( media_id INTEGER, num INTEGER, name VARCHAR(64), until VARCHAR(10),
queue INTEGER, PRIMARY KEY (media_id, num)/*,
FOREIGN KEY (name) REFERENCES Location,
FOREIGN KEY (num) REFERENCES Card,
FOREIGN KEY (media_id) REFERENCES Media*/ );

DROP TABLE IF EXISTS `sandilya`.`Stored_In`;
CREATE TABLE Stored_In( media_id INTEGER, name VARCHAR(64), PRIMARY KEY (media_id)/*,
FOREIGN KEY (media_id) REFERENCES Media ON DELETE CASCADE,
FOREIGN KEY (name) REFERENCES Location */);

DROP TABLE IF EXISTS `sandilya`.`Librarian`;
CREATE TABLE Librarian( eid INTEGER, ID INTEGER NOT NULL, Pay REAL,
Loc_name CHAR(64) NOT NULL, PRIMARY KEY (eid)/*,
FOREIGN KEY (ID) REFERENCES Customer ON DELETE CASCADE,
FOREIGN KEY (Loc_name) REFERENCES Location(name)*/ );

DROP TABLE IF EXISTS `sandilya`.`Video`;
CREATE TABLE Video( title VARCHAR(128), year INTEGER, director VARCHAR(64),
rating REAL, price REAL, PRIMARY KEY (title, year) );
CREATE TABLE VideoMedia( media_id INTEGER, title VARCHAR(128), year INTEGER,
PRIMARY KEY (media_id)/*, FOREIGN KEY (media_id) REFERENCES Media,
FOREIGN KEY (title, year) REFERENCES Video*/ );
/* Libreary End*/

/*Transaction*/
DROP TABLE IF EXISTS `sandilya`.`transaction`;
CREATE TABLE `sandilya`.`transaction` (
  transactionid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  transdate DATETIME NOT NULL,
  transamount BIGINT UNSIGNED,
  transnote VARCHAR(345),
  receiptno VARCHAR(45),
  fromaccount VARCHAR(45),
  toaccount VARCHAR(45),
  type VARCHAR(45),
  cashier VARCHAR(20),
  PRIMARY KEY (`transactionid`)
)
ENGINE = InnoDB
COMMENT = 'For All transactin';
/*Transaction  End */

