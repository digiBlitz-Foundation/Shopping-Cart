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
-- Table structure for table `tattributegroup`
--

DROP TABLE IF EXISTS `tattributegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tattributegroup` (
  `ATTRIBUTEGROUP_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `CODE` varchar(255) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `DESCRIPTION` longtext,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`ATTRIBUTEGROUP_ID`),
  UNIQUE KEY `GUID` (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8 COMMENT='Group attributes: prod,sku,cat,shop,customer,brand etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tattributegroup`
--

LOCK TABLES `tattributegroup` WRITE;
/*!40000 ALTER TABLE `tattributegroup` DISABLE KEYS */;
INSERT INTO `tattributegroup` VALUES (1000,0,'SYSTEM','System settings.','System wide settings',NULL,NULL,NULL,NULL,'SYSTEM'),(1001,0,'SHOP','Shop settings.','',NULL,NULL,NULL,NULL,'SHOP'),(1002,0,'CATEGORY','Category settings.','',NULL,NULL,NULL,NULL,'CATEGORY'),(1003,0,'PRODUCT','Product settings.','',NULL,NULL,NULL,NULL,'PRODUCT'),(1005,0,'BRAND','Brand settings.','',NULL,NULL,NULL,NULL,'BRAND'),(1006,0,'CUSTOMER','Customer settings.','',NULL,NULL,NULL,NULL,'CUSTOMER');
/*!40000 ALTER TABLE `tattributegroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:21
