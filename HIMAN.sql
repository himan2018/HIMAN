/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.27 : Database - weibo
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`HIMAN` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `HIMAN`;

/*Table structure for table `b_collect` */

DROP TABLE IF EXISTS `b_collect`;

CREATE TABLE `b_collect` (
  `collectId` varchar(30) NOT NULL,
  `userId` varchar(30) NOT NULL,
  `messageId` varchar(30) NOT NULL,
  `collectDate` date DEFAULT NULL,
  `collectRemark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`collectId`),
  KEY `FK_B_COLLEC_REFERENCE_B_USER` (`userId`),
  KEY `FK_B_COLLEC_REFERENCE_B_MESSAG` (`messageId`),
  CONSTRAINT `FK_B_COLLEC_REFERENCE_B_USER` FOREIGN KEY (`userId`) REFERENCES `b_user` (`userId`),
  CONSTRAINT `FK_B_COLLEC_REFERENCE_B_MESSAG` FOREIGN KEY (`messageId`) REFERENCES `b_message` (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `b_collect` */

/*Table structure for table `b_comment` */

DROP TABLE IF EXISTS `b_comment`;

CREATE TABLE `b_comment` (
  `commentId` varchar(30) NOT NULL,
  `userId` varchar(30) DEFAULT NULL,
  `messageId` varchar(30) NOT NULL,
  `messageContent` varchar(300) DEFAULT NULL,
  `messageDate` date DEFAULT NULL,
  `messageRemark` varchar(100) DEFAULT NULL,
  `commentedUserId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`commentId`),
  KEY `FK_B_COMMEN_REFERENCE_B_USER` (`userId`),
  KEY `FK_B_COMMEN_REFERENCE_B_MESSAG` (`messageId`),
  CONSTRAINT `FK_B_COMMEN_REFERENCE_B_USER` FOREIGN KEY (`userId`) REFERENCES `b_user` (`userId`),
  CONSTRAINT `FK_B_COMMEN_REFERENCE_B_MESSAG` FOREIGN KEY (`messageId`) REFERENCES `b_message` (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `b_comment` */

/*Table structure for table `b_message` */

DROP TABLE IF EXISTS `b_message`;

CREATE TABLE `b_message` (
  `messageId` varchar(30) NOT NULL,
  `userId` varchar(30) NOT NULL,
  `messageContent` varchar(300) DEFAULT NULL,
  `messageCollect` varchar(50) DEFAULT NULL,
  `messageForward` varchar(20) DEFAULT NULL,
  `messageReview` varchar(10) DEFAULT NULL,
  `messageDate` date DEFAULT NULL,
  `messageIsForward` varchar(50) DEFAULT NULL,
  `messageForwardId` varchar(30) DEFAULT NULL,
  `messageLink` varchar(100) DEFAULT NULL,
  `messageRemark` varchar(100) DEFAULT NULL,
  `messageIsCollect` varchar(50) DEFAULT NULL,
  `messageIsPraise` varchar(50) DEFAULT NULL,
  `messagePraise` varchar(50) DEFAULT NULL,
  `messageType` varchar(50) DEFAULT NULL,
  `messageImage` varchar(100) DEFAULT NULL,
  `messageTile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  KEY `B_MESSAG_REFERENCE_B_USER_FK` (`userId`),
  CONSTRAINT `B_MESSAG_REFERENCE_B_USER_FK` FOREIGN KEY (`userId`) REFERENCES `b_user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `b_message` */



