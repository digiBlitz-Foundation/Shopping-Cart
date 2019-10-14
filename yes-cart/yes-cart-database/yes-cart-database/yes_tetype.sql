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
-- Table structure for table `tetype`
--

DROP TABLE IF EXISTS `tetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tetype` (
  `ETYPE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `JAVATYPE` varchar(255) NOT NULL COMMENT 'Shows the java type',
  `BUSINESSTYPE` varchar(255) DEFAULT NULL COMMENT 'Used mosty on UI. How to represent product, category, attributes, etc',
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`ETYPE_ID`),
  UNIQUE KEY `GUID` (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8 COMMENT='Types, that will be used in system.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tetype`
--

LOCK TABLES `tetype` WRITE;
/*!40000 ALTER TABLE `tetype` DISABLE KEYS */;
INSERT INTO `tetype` VALUES (1000,0,'java.lang.String','String',NULL,NULL,NULL,NULL,'String'),(1001,0,'java.lang.String','URI',NULL,NULL,NULL,NULL,'URI'),(1002,0,'java.lang.String','URL',NULL,NULL,NULL,NULL,'URL'),(1003,0,'java.lang.String','Image',NULL,NULL,NULL,NULL,'Image'),(1004,0,'java.lang.String','CommaSeparatedList',NULL,NULL,NULL,NULL,'CommaSeparatedList'),(1005,0,'java.lang.Float','Float',NULL,NULL,NULL,NULL,'Float'),(1006,0,'java.lang.Integer','Integer',NULL,NULL,NULL,NULL,'Integer'),(1007,0,'java.lang.String','Phone',NULL,NULL,NULL,NULL,'Phone'),(1008,0,'java.lang.Boolean','Boolean',NULL,NULL,NULL,NULL,'Boolean'),(1009,0,'java.util.Date','Date',NULL,NULL,NULL,NULL,'Date'),(1010,0,'java.lang.String','Email',NULL,NULL,NULL,NULL,'Email'),(1011,0,'java.lang.String','HTML',NULL,NULL,NULL,NULL,'HTML');
/*!40000 ALTER TABLE `tetype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:01
