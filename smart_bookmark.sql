/*
SQLyog v10.2 
MySQL - 5.5.56 : Database - smart_bookmark
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`smart_bookmark` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smart_bookmark`;

/*Table structure for table `bookmark_info` */

DROP TABLE IF EXISTS `bookmark_info`;

CREATE TABLE `bookmark_info` (
  `bookmark_id` varchar(50) NOT NULL,
  `folder_id` varchar(50) DEFAULT NULL,
  `bookmark_name` varchar(200) DEFAULT NULL,
  `bookmark_url` varchar(500) DEFAULT NULL,
  `bookmark_style` varchar(100) DEFAULT NULL,
  `bookmark_abstract` varchar(500) DEFAULT NULL,
  `upload_time` varchar(50) DEFAULT NULL,
  `modify_time` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `bookmark_priority` int(11) DEFAULT '0',
  PRIMARY KEY (`bookmark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `user_folder` */

DROP TABLE IF EXISTS `user_folder`;

CREATE TABLE `user_folder` (
  `folder_id` varchar(50) NOT NULL,
  `folder_name` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_nick` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `other_info` varchar(200) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
