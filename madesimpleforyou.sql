/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.12-log : Database - madesimpleforyou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`madesimpleforyou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `madesimpleforyou`;

/*Table structure for table `contactus` */

DROP TABLE IF EXISTS `contactus`;

CREATE TABLE `contactus` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `PhoneNumber` decimal(10,0) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Need` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `contactus` */

insert  into `contactus`(`Id`,`FirstName`,`LastName`,`PhoneNumber`,`Email`,`Need`) values (1,'ram','lakhan','9898909087','q@c.com','hi hello plz submit.'),(2,'mit','shah','9898909087','mit.s@b2bappssolutions.com','hi hi hi '),(3,'chatur','lal','9898909087','tapasvi.p@b2bappssolutions.com','hi hello'),(4,'mit','lakhan','9876789012','tapasvi.p@b2bappssolutions.com','hi hello how r u?'),(5,'suarabh','shah','9876543210','s.s@b.com','hihloi'),(6,'mit','shah','9898787898','tapasvi.p@b2bappssolutions.com','hi'),(7,'krishna','patel','9876789876','krishnapatel@b2bappssolutions.com','css'),(8,'ketan','patel','8766785432','ketan.p@ymail.com','keys');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
