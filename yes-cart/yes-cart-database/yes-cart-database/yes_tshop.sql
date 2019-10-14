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
-- Table structure for table `tshop`
--

DROP TABLE IF EXISTS `tshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tshop` (
  `SHOP_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `CODE` varchar(255) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `DESCRIPTION` longtext,
  `FSPOINTER` longtext NOT NULL COMMENT 'Point to jsps',
  `URI` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `METAKEYWORDS` varchar(255) DEFAULT NULL,
  `METADESCRIPTION` varchar(255) DEFAULT NULL,
  `DISPLAY_TITLE` longtext,
  `DISPLAY_METAKEYWORDS` longtext,
  `DISPLAY_METADESCRIPTION` longtext,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`SHOP_ID`),
  UNIQUE KEY `CODE` (`CODE`),
  UNIQUE KEY `GUID` (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tshop`
--

LOCK TABLES `tshop` WRITE;
/*!40000 ALTER TABLE `tshop` DISABLE KEYS */;
INSERT INTO `tshop` VALUES (10,1,'SHOP10','YesCart shop','YesCart shop','',NULL,'','','','','','','2015-11-28 13:17:20','2015-11-28 13:17:20','admin@yes-cart.com','admin@yes-cart.com','SHOP10'),(11,9,'DBSHOP-1','smartLehren','','united',NULL,'smartLehren','Student & Course Manangement,Functional and Process Management,Business Inteligence & Analytics,Business Architecture Management,Product Training and Support','','','','','2015-11-28 13:20:07','2015-12-18 11:37:25','admin@yes-cart.com','admin@yes-cart.com','DBSHOP-1'),(12,0,'TestShop-1','menschForce','','',NULL,'menschforce','','','','','','2015-12-14 11:52:20','2015-12-14 11:52:20','admin@yes-cart.com','admin@yes-cart.com','TestShop-1'),(13,7,'dB-shop-2','guildKraft','','united',NULL,'guildKraft','','','','','','2015-12-16 16:49:41','2015-12-22 13:54:55','admin@yes-cart.com','admin@yes-cart.com','dB shop 2'),(14,8,'Test-01','Test Shop','','united',NULL,'Test','','','','','','2015-12-17 10:59:22','2015-12-18 09:28:27','admin@yes-cart.com','admin@yes-cart.com','Test-01'),(16,0,'dB shop 3: menschForce','menschForce','','united',NULL,'menschForce','menschForce,menschForce bundles','','','','','2015-12-21 09:58:22','2015-12-21 09:58:22','admin@yes-cart.com','admin@yes-cart.com','dB shop 3: menschForce'),(17,4,'dB shop 3','menschForceShop','','united',NULL,'menschForce','','','','','','2015-12-21 10:00:15','2015-12-21 10:33:27','admin@yes-cart.com','admin@yes-cart.com','dB shop 3'),(18,5,'dBshop','dBStore','','',NULL,'','','','','','','2017-05-26 02:43:19','2017-05-26 06:42:45','admin@yes-cart.com','admin@yes-cart.com','dBshop');
/*!40000 ALTER TABLE `tshop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:51
