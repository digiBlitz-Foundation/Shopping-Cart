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
-- Table structure for table `taddress`
--

DROP TABLE IF EXISTS `taddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taddress` (
  `ADDRESS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `CITY` varchar(128) NOT NULL,
  `POSTCODE` varchar(16) DEFAULT NULL,
  `ADDRLINE1` varchar(255) NOT NULL,
  `ADDRLINE2` varchar(255) DEFAULT NULL,
  `ADDRESS_TYPE` varchar(1) NOT NULL,
  `COUNTRY_CODE` varchar(64) NOT NULL,
  `STATE_CODE` varchar(64) DEFAULT NULL,
  `PHONE1` varchar(255) DEFAULT NULL,
  `PHONE2` varchar(255) DEFAULT NULL,
  `FIRSTNAME` varchar(128) NOT NULL,
  `LASTNAME` varchar(128) NOT NULL,
  `MIDDLENAME` varchar(128) DEFAULT NULL,
  `EMAIL1` varchar(255) DEFAULT NULL,
  `EMAIL2` varchar(255) DEFAULT NULL,
  `MOBILE1` varchar(255) DEFAULT NULL,
  `MOBILE2` varchar(255) DEFAULT NULL,
  `CUSTOM1` varchar(255) DEFAULT NULL,
  `CUSTOM2` varchar(255) DEFAULT NULL,
  `CUSTOM3` varchar(255) DEFAULT NULL,
  `CUSTOM4` varchar(255) DEFAULT NULL,
  `DEFAULT_ADDR` bit(1) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FKADDRCUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FKADDRCUSTOMER` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `tcustomer` (`CUSTOMER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Locations have the same address struct in the same region';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taddress`
--

LOCK TABLES `taddress` WRITE;
/*!40000 ALTER TABLE `taddress` DISABLE KEYS */;
INSERT INTO `taddress` VALUES (1,0,'xvbxvbxv','xzvbzxvbbz','xbzxbb','xvzbxvzbxb','S','HK','Hong Kong','fdgfdgs',NULL,'asfdesf','gfdgdfg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',7,'2015-12-16 14:40:31','2015-12-16 14:40:31','admin@yes-cart.com','admin@yes-cart.com','56b53706-48f1-46b7-b003-41efa48b1845'),(2,0,'zxvbzxbx','xvbxbvz','zxvbvbzx','xvbvzbv','B','HU','Magyarország','fdgfdgs',NULL,'asfdesf','gfdgdfg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',7,'2015-12-16 14:40:45','2015-12-16 14:40:45','admin@yes-cart.com','admin@yes-cart.com','1c361bc1-02f2-4444-a0c8-9208d098e6bd'),(5,3,'zxvbzxbx','xvbxbvz','zxvbvbzx','xvbvzbv','B','HU','Magyarország','fdgfdgs',NULL,'asfdesf','gfdgdfg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','9cddaa19-c11f-4ba3-bdde-4cd094cbdfc5'),(6,3,'xvbxvbxv','xzvbzxvbbz','xbzxbb','xvzbxvzbxb','S','HK','Hong Kong','fdgfdgs',NULL,'asfdesf','gfdgdfg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','5ada7b21-c5a8-4849-a299-8ac2761a4a0d'),(12,1,'sdfdsfdsafsf','fsdfadsf','dsfdsfa','dsfsafsdfs','S','AU','Australia','jhghsd',NULL,'dffdsgfg','dgfhghfs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',8,'2015-12-16 16:11:34','2015-12-16 16:28:20','admin@yes-cart.com','admin@yes-cart.com','17cf3ddb-ad67-4af3-9fb6-0d120dfce7ef'),(13,0,'dsfdsfdsfdsf','sdgfdsfsdfdsf','adfdsafasfds','dsafsfdfdsfa','B','IM','Isle of Man','jhghsd',NULL,'dffdsgfg','dgfhghfs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',8,'2015-12-16 16:11:47','2015-12-16 16:11:47','admin@yes-cart.com','admin@yes-cart.com','b593b30e-5fe8-4119-9a93-283eb651d22a'),(16,2,'dsfdsfdsfdsf','sdgfdsfsdfdsf','adfdsafasfds','dsafsfdfdsfa','B','IM','Isle of Man','jhghsd',NULL,'dffdsgfg','dgfhghfs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-16 16:12:57','2015-12-16 16:13:11','admin@yes-cart.com','admin@yes-cart.com','96263ba8-133b-4f6c-9701-3342ed261aa4'),(17,2,'sdfdsfdsafsf','fsdfadsf','dsfdsfa','dsfsafsdfs','S','AU','Australia','jhghsd',NULL,'dffdsgfg','dgfhghfs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-16 16:12:57','2015-12-16 16:13:11','admin@yes-cart.com','admin@yes-cart.com','bc69d983-19f7-449b-b4cf-46b6ca995fe1'),(20,2,'sdfdsfdsafsf','fsdfadsf','dsfdsfa','dsfsafsdfs','S','AU','Australia','jhghsd',NULL,'dffdsgfg','dgfhghfs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-16 16:28:24','2015-12-16 16:29:15','admin@yes-cart.com','admin@yes-cart.com','6cdfad3b-48b6-4358-81ee-3bd79c9491cf'),(21,2,'sdfdsfdsafsf','fsdfadsf','dsfdsfa','dsfsafsdfs','S','AU','Australia','jhghsd',NULL,'dffdsgfg','dgfhghfs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-16 16:28:24','2015-12-16 16:29:15','admin@yes-cart.com','admin@yes-cart.com','011b8138-b37d-4a29-8dcc-76228dac1935'),(22,0,'gjhn','1234','vgn','ghj','S','AU','Australia','sdgsf',NULL,'kjdhffds','sgsgadg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',6,'2015-12-16 18:13:04','2015-12-16 18:13:04','admin@yes-cart.com','admin@yes-cart.com','099fbd21-037f-4475-a7ce-138bd7ab21ab'),(23,0,'afgfagf','fggdfg','fwretgfsg','fgafgfg','S','AU','Australia','fgfaggf',NULL,'fdsgfdsg','afgfag',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',16,'2015-12-17 09:26:33','2015-12-17 09:26:33','admin@yes-cart.com','admin@yes-cart.com','b1e70e81-3402-4919-bc1b-6659bea65be3'),(24,2,'afgfagf','fggdfg','fwretgfsg','fgafgfg','S','AU','Australia','fgfaggf',NULL,'fdsgfdsg','afgfag',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-17 09:26:38','2015-12-17 09:26:49','admin@yes-cart.com','admin@yes-cart.com','a426824f-93c9-483a-8b72-c6ab3bd47104'),(26,2,'afgfagf','fggdfg','fwretgfsg','fgafgfg','S','AU','Australia','fgfaggf',NULL,'fdsgfdsg','afgfag',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-17 09:48:14','2015-12-17 09:48:25','admin@yes-cart.com','admin@yes-cart.com','48e971da-4d70-449b-897a-c07bd4b1b948'),(33,2,'gjhn','1234','vgn','ghj','S','AU','Australia','sdgsf',NULL,'kjdhffds','sgsgadg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-17 10:33:19','2015-12-17 10:38:19','admin@yes-cart.com','admin@yes-cart.com','1fb3cb83-b123-49c5-a913-85b6e88c3017'),(34,0,'gjhn','1234','vgn','ghj','S','AU','Australia','sdgsf',NULL,'kjdhffds','sgsgadg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2015-12-17 10:40:39','2015-12-17 10:40:39','admin@yes-cart.com','admin@yes-cart.com','07691780-6fb6-456a-b768-e0a858699986'),(35,3,'Thirunelveli','627713','4/18 North street, Naduvapatti,',NULL,'S','US','TX','09659639423',NULL,'Jeyaprakash','s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',31,'2017-05-26 06:47:14','2017-05-31 09:08:16','anonymous','anonymous','19c2e5f5-0720-44ff-8c1c-070953dd02ef'),(39,2,'Thirunelveli','627713','4/18 North street, Naduvapatti,',NULL,'S','US','TX','09659639423',NULL,'Jeyaprakash','s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2017-05-26 06:57:14','2017-05-26 06:58:37','anonymous','anonymous','732dee4a-6484-47eb-82e6-4b2cd8074b59'),(40,2,'Thirunelveli','627713','4/18 North street, Naduvapatti,',NULL,'S','US','TX','09659639423',NULL,'Jeyaprakash','s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'2017-05-26 07:04:23','2017-05-26 07:05:16','anonymous','anonymous','16540bed-33bd-4f33-9f03-67efcec146a0');
/*!40000 ALTER TABLE `taddress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:31
