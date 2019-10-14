-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: yes
-- ------------------------------------------------------
-- Server version	5.5.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tproducttype`
--

DROP TABLE IF EXISTS `tproducttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproducttype` (
  `PRODUCTTYPE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `UITEMPLATE` varchar(255) DEFAULT NULL COMMENT 'What UI template will be used for show particular type of product.',
  `UISEARCHTEMPLATE` varchar(255) DEFAULT NULL COMMENT 'UI template label for search on category, if category has a default product type.',
  `SERVICE` bit(1) DEFAULT NULL COMMENT 'shall we treat this like service ? It mean no inventory will be check',
  `ENSEMBLE` bit(1) DEFAULT NULL COMMENT 'is this a bundle of products ?',
  `SHIPPABLE` bit(1) DEFAULT NULL COMMENT 'is this a physical product ? must have weight and sizes in attributes if yes',
  `DIGITAL` bit(1) DEFAULT b'0' COMMENT 'is this the digital product ?',
  `DOWNLOADABLE` bit(1) DEFAULT b'0' COMMENT 'is digital product can be downloaded?',
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`PRODUCTTYPE_ID`),
  UNIQUE KEY `GUID` (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=521 DEFAULT CHARSET=utf8 COMMENT='Product type.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproducttype`
--

LOCK TABLES `tproducttype` WRITE;
/*!40000 ALTER TABLE `tproducttype` DISABLE KEYS */;
INSERT INTO `tproducttype` VALUES (500,1,'Default Product','Default Product','','','','','','','','2015-12-16 14:12:36','2015-12-16 14:12:36','admin@yes-cart.com','admin@yes-cart.com','Default Product'),(502,2,'smartLehren','LMS','','','','\0','\0','','\0','2015-11-28 19:32:19','2015-12-16 16:55:57','admin@yes-cart.com','admin@yes-cart.com','709a61e6-36f0-4d41-82bc-1980c76a3917'),(503,920,'Laptops','Laptops',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:37','2015-12-16 14:28:00','admin@yes-cart.com','admin@yes-cart.com','288ec8b5-1210-4833-8f96-3c9a6bbf41bc'),(504,620,'PCs/Workstations','PCs/Workstations',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:37','2015-12-16 14:28:00','admin@yes-cart.com','admin@yes-cart.com','f894fc42-684f-4aeb-b373-787ff22ccc49'),(505,441,'Servers','Servers',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:37','2015-12-16 14:28:00','admin@yes-cart.com','admin@yes-cart.com','a0ce3cf4-82a5-47eb-a66f-3325e7a3e10c'),(506,277,'Keyboards & Desktops','Keyboards & Desktops',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:37','2015-12-16 14:27:59','admin@yes-cart.com','admin@yes-cart.com','75a68f0e-3796-495d-96f7-4fbbfc2917f0'),(507,264,'Mice','Mice',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:37','2015-12-16 14:27:39','admin@yes-cart.com','admin@yes-cart.com','b474acc7-5d18-4e0e-a64e-11d82751a4f0'),(508,124,'Media Presenters','Media Presenters',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:37','2015-12-16 14:27:59','admin@yes-cart.com','admin@yes-cart.com','ec2fa69b-6044-4161-bc91-b4b566e34a08'),(509,112,'Toners & Laser Cartridges','Toners & Laser Cartridges',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:37','2015-12-16 14:27:39','admin@yes-cart.com','admin@yes-cart.com','449a6cd0-dee1-40ee-9cb9-5e47bfa3658e'),(510,72,'Warranty & Support Extensions','Warranty & Support Extensions',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:37','2015-12-16 14:27:39','admin@yes-cart.com','admin@yes-cart.com','3ac0c7d0-9d5a-4aca-9b84-8e2c355c0995'),(511,103,'Software Licenses/Upgrades','Software Licenses/Upgrades',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:38','2015-12-16 14:27:59','admin@yes-cart.com','admin@yes-cart.com','eeb4f6cb-3c37-4b66-aaed-9301caf627ad'),(512,750,'Tablets','Tablets',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:38','2015-12-16 14:28:00','admin@yes-cart.com','admin@yes-cart.com','d3c0f1c1-f20b-473d-9713-2e2b2e84bf9d'),(513,276,'Storage Servers','Storage Servers',NULL,NULL,'\0','\0','\0','\0','\0','2015-12-16 14:22:38','2015-12-16 14:28:00','admin@yes-cart.com','admin@yes-cart.com','d176527c-b19a-4166-9b4b-6675e8df1edf'),(514,0,'Student & Course Manangement','','','','\0','\0','\0','\0','','2015-12-18 13:11:31','2015-12-18 13:11:31','admin@yes-cart.com','admin@yes-cart.com','c028616b-1cf4-46c1-8332-e52e2fe23bb2'),(515,0,'LMS','','','','\0','\0','\0','\0','','2015-12-18 16:13:52','2015-12-18 16:13:52','admin@yes-cart.com','admin@yes-cart.com','85c67404-50e4-42cf-a21d-b48cfb45f559'),(516,0,'MSP','','','','\0','\0','\0','\0','','2015-12-21 10:24:58','2015-12-21 10:24:58','admin@yes-cart.com','admin@yes-cart.com','d233f263-a192-4676-9257-4b3d768f5588'),(517,0,'VMS','','','','\0','\0','\0','\0','','2015-12-21 10:25:18','2015-12-21 10:25:18','admin@yes-cart.com','admin@yes-cart.com','713511cf-add3-4b6b-8c41-2adf8780aebc'),(518,0,'AMS','','','','\0','\0','\0','\0','','2015-12-21 10:25:42','2015-12-21 10:25:42','admin@yes-cart.com','admin@yes-cart.com','6b1024a2-a286-43e2-8112-70085b8d62e5'),(520,0,'klugwerks','klugwerks','','','','\0','\0','','\0','2017-05-26 03:34:33','2017-05-26 03:34:33','admin@yes-cart.com','admin@yes-cart.com','705d09f7-a376-452e-8d74-c296822d76ac');
/*!40000 ALTER TABLE `tproducttype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:32
