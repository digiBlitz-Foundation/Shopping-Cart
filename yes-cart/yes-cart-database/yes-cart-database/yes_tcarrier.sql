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
-- Table structure for table `tcarrier`
--

DROP TABLE IF EXISTS `tcarrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcarrier` (
  `CARRIER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `NAME` varchar(255) NOT NULL,
  `DISPLAYNAME` longtext,
  `DESCRIPTION` longtext,
  `DISPLAYDESCRIPTION` longtext,
  `WORLDWIDE` bit(1) DEFAULT NULL,
  `COUNTRY` bit(1) DEFAULT NULL,
  `STATE` bit(1) DEFAULT NULL,
  `LOCAL` bit(1) DEFAULT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`CARRIER_ID`),
  UNIQUE KEY `GUID` (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Shipment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcarrier`
--

LOCK TABLES `tcarrier` WRITE;
/*!40000 ALTER TABLE `tcarrier` DISABLE KEYS */;
INSERT INTO `tcarrier` VALUES (1,2,'pro1','','','','\0','\0','\0','\0','2015-11-28 14:00:15','2015-11-28 19:18:43','admin@yes-cart.com','admin@yes-cart.com','15f1b248-660c-4844-b8d1-bb9209a6821c'),(2,6,'shop delivery','en#~#shop delivery#~#','abc','','\0','\0','\0','\0','2015-11-28 19:04:40','2015-12-18 12:02:19','admin@yes-cart.com','admin@yes-cart.com','6b0e7117-6c02-4e25-a221-e1360f795ce1'),(3,6,'Digital delivery','en#~#Digital delivery#~#','','','\0','\0','\0','\0','2015-11-28 20:11:57','2017-06-10 02:58:00','admin@yes-cart.com','admin@yes-cart.com','561370ae-844c-4b9c-bf5b-dea9ad2cca20'),(4,9,'Post','en#~#Post#~#ru#~#Почта#~#uk#~#Пошта#~#','Post Delivery','en#~#Post Delivery#~#ru#~#Доставка по почте#~#uk#~#Доставка поштою#~#','\0','','\0','\0','2015-11-30 15:35:18','2017-05-26 06:35:39','admin@yes-cart.com','admin@yes-cart.com','a43d7046-b460-4b00-b759-0adae902984b'),(5,4,'Courier','ru#~#Курьер#~#uk#~#Кур\'\'єр#~#en#~#Courier#~#','Courier Delivery','ru#~#Доставка курьером#~#uk#~#Доставка кур\'\'єром#~#en#~#Courier Delivery#~#','\0','','\0','\0','2015-11-30 15:36:12','2017-05-26 06:11:16','admin@yes-cart.com','admin@yes-cart.com','92a0da20-f79e-4544-a4e3-5fbd120d052e'),(6,19,'collect from store','en#~#collect from store#~#','Store delivery','','\0','\0','\0','\0','2015-12-16 17:03:11','2017-06-10 02:58:04','admin@yes-cart.com','admin@yes-cart.com','cd76a851-e409-46f8-9bca-06c96742eae7');
/*!40000 ALTER TABLE `tcarrier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:32
