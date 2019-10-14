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
-- Table structure for table `tshopcategory`
--

DROP TABLE IF EXISTS `tshopcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tshopcategory` (
  `SHOPCATEGORY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `RANK` int(11) DEFAULT NULL COMMENT 'What the default order of assignment ?',
  `SHOP_ID` bigint(20) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`SHOPCATEGORY_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FK_SC_SHOP` (`SHOP_ID`),
  KEY `FK_SC_CAT` (`CATEGORY_ID`),
  CONSTRAINT `FK_SC_CAT` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `tcategory` (`CATEGORY_ID`),
  CONSTRAINT `FK_SC_SHOP` FOREIGN KEY (`SHOP_ID`) REFERENCES `tshop` (`SHOP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tshopcategory`
--

LOCK TABLES `tshopcategory` WRITE;
/*!40000 ALTER TABLE `tshopcategory` DISABLE KEYS */;
INSERT INTO `tshopcategory` VALUES (37,0,0,13,10503,'2015-12-21 14:32:08','2015-12-21 14:32:08','admin@yes-cart.com','admin@yes-cart.com','7f4d32f9-ec6f-4da2-a067-c3565e0ebb09'),(39,0,0,17,10490,'2015-12-21 15:06:35','2015-12-21 15:06:35','admin@yes-cart.com','admin@yes-cart.com','4dc637c5-318d-4f03-b036-75d906476e35'),(41,0,0,16,10490,'2015-12-23 17:17:01','2015-12-23 17:17:01','admin@yes-cart.com','admin@yes-cart.com','7a77297c-31ad-4e9e-86d8-593cd37e401a'),(43,0,0,18,10490,'2017-05-26 02:44:27','2017-05-26 02:44:27','admin@yes-cart.com','admin@yes-cart.com','cb058c6b-54d3-45ca-b8cf-ef12c0da848c'),(44,0,0,18,10482,'2017-05-26 02:44:31','2017-05-26 02:44:31','admin@yes-cart.com','admin@yes-cart.com','ed7faf3e-6791-4be4-8098-82b950375121'),(49,0,0,18,10503,'2017-05-26 03:36:48','2017-05-26 03:36:48','admin@yes-cart.com','admin@yes-cart.com','638975e0-5a8d-40df-bfa6-4a8bc3a7d4b9'),(55,0,0,18,10519,'2017-05-26 05:32:25','2017-05-26 05:32:25','admin@yes-cart.com','admin@yes-cart.com','5a806e62-8a13-48e6-90e1-d967e9106ff4');
/*!40000 ALTER TABLE `tshopcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:26
