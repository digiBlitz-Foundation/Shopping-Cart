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
-- Table structure for table `ttaxconfig`
--

DROP TABLE IF EXISTS `ttaxconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttaxconfig` (
  `TAXCONFIG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `TAX_ID` bigint(20) NOT NULL,
  `PRODUCT_CODE` varchar(255) DEFAULT NULL,
  `STATE_CODE` varchar(16) DEFAULT NULL,
  `COUNTRY_CODE` varchar(2) DEFAULT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(255) NOT NULL,
  PRIMARY KEY (`TAXCONFIG_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `TAX_PRODUCT_CODE` (`PRODUCT_CODE`),
  KEY `TAX_STATE_CODE` (`STATE_CODE`),
  KEY `TAX_COUNTRY_CODE` (`COUNTRY_CODE`),
  KEY `FK_TAXCFG_TAX` (`TAX_ID`),
  CONSTRAINT `FK_TAXCFG_TAX` FOREIGN KEY (`TAX_ID`) REFERENCES `ttax` (`TAX_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttaxconfig`
--

LOCK TABLES `ttaxconfig` WRITE;
/*!40000 ALTER TABLE `ttaxconfig` DISABLE KEYS */;
INSERT INTO `ttaxconfig` VALUES (1,0,1,'','','','2015-11-30 18:59:39','2015-11-30 18:59:39','admin@yes-cart.com','admin@yes-cart.com','SHOP10_EUR_VAT'),(2,0,2,'','','','2015-11-30 18:59:45','2015-11-30 18:59:45','admin@yes-cart.com','admin@yes-cart.com','SHOP10_USD_VAT'),(3,0,3,'','','','2015-11-30 18:59:52','2015-11-30 18:59:52','admin@yes-cart.com','admin@yes-cart.com','SHOP10_UAH_VAT');
/*!40000 ALTER TABLE `ttaxconfig` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:50
