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
-- Table structure for table `tbrandattrvalue`
--

DROP TABLE IF EXISTS `tbrandattrvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbrandattrvalue` (
  `ATTRVALUE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `BRAND_ID` bigint(20) NOT NULL,
  `VAL` longtext,
  `DISPLAYVAL` longtext,
  `CODE` varchar(255) NOT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`ATTRVALUE_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FKFA06C3CD5CB3C6AB` (`CODE`),
  KEY `FKFA06C3CDDF51D3AD` (`BRAND_ID`),
  CONSTRAINT `FKFA06C3CD5CB3C6AB` FOREIGN KEY (`CODE`) REFERENCES `tattribute` (`CODE`),
  CONSTRAINT `FKFA06C3CDDF51D3AD` FOREIGN KEY (`BRAND_ID`) REFERENCES `tbrand` (`BRAND_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbrandattrvalue`
--

LOCK TABLES `tbrandattrvalue` WRITE;
/*!40000 ALTER TABLE `tbrandattrvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbrandattrvalue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:00
