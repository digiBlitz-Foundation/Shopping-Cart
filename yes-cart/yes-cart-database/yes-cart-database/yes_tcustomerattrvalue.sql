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
-- Table structure for table `tcustomerattrvalue`
--

DROP TABLE IF EXISTS `tcustomerattrvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcustomerattrvalue` (
  `ATTRVALUE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `VAL` longtext,
  `DISPLAYVAL` longtext,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`ATTRVALUE_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FK_C_ATTRIBUTE` (`CODE`),
  KEY `FKB44A120EAF56CFED` (`CUSTOMER_ID`),
  CONSTRAINT `FKB44A120EAF56CFED` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `tcustomer` (`CUSTOMER_ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_C_ATTRIBUTE` FOREIGN KEY (`CODE`) REFERENCES `tattribute` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcustomerattrvalue`
--

LOCK TABLES `tcustomerattrvalue` WRITE;
/*!40000 ALTER TABLE `tcustomerattrvalue` DISABLE KEYS */;
INSERT INTO `tcustomerattrvalue` VALUES (1,3,'8121185822',NULL,1,'CUSTOMER_PHONE','2015-11-28 13:58:37','2015-12-17 16:06:39','anonymous','admin@yes-cart.com','59aaf4be-6aa8-48d9-ad1f-6ebc839e3e64'),(2,0,'9787978099',NULL,2,'CUSTOMER_PHONE','2015-11-28 18:13:57','2015-11-28 18:13:57','anonymous','anonymous','e24f97e0-67b0-4116-89de-e7637cadd68a'),(3,0,'9787978099',NULL,3,'CUSTOMER_PHONE','2015-11-28 18:14:36','2015-11-28 18:14:36','anonymous','anonymous','e0277d04-dd4f-47bc-88c6-e0a22b6778e3'),(4,0,'123456878990',NULL,4,'CUSTOMER_PHONE','2015-11-30 10:16:14','2015-11-30 10:16:14','admin@yes-cart.com','admin@yes-cart.com','da62410f-3e30-4e33-bbb2-eea966b37442'),(5,0,'sdgsf',NULL,5,'CUSTOMER_PHONE','2015-12-16 14:13:54','2015-12-16 14:13:54','anonymous','anonymous','ba77b657-b7ee-4d79-b437-3c89e2b77677'),(6,0,'sdgsf',NULL,6,'CUSTOMER_PHONE','2015-12-16 14:15:11','2015-12-16 14:15:11','anonymous','anonymous','bd3bdb6f-a335-49b9-a0cb-034648d0ddc6'),(7,0,'fdgfdgs',NULL,7,'CUSTOMER_PHONE','2015-12-16 14:40:12','2015-12-16 14:40:12','admin@yes-cart.com','admin@yes-cart.com','5936415b-c7d7-46a4-98bc-420162881618'),(8,0,'jhghsd',NULL,8,'CUSTOMER_PHONE','2015-12-16 16:11:13','2015-12-16 16:11:13','admin@yes-cart.com','admin@yes-cart.com','5b2b3751-be1b-4be4-a6c3-3a17a9cbc7fb'),(9,2,'99652565895',NULL,9,'CUSTOMER_PHONE','2015-12-16 17:07:57','2017-05-31 00:39:02','admin@yes-cart.com','anonymous','263959cc-309e-4e11-a751-3546fc871fe8'),(10,0,'9659639423',NULL,10,'CUSTOMER_PHONE','2015-12-16 17:08:20','2015-12-16 17:08:20','admin@yes-cart.com','admin@yes-cart.com','2a9be7c2-0164-478b-88ba-8c00a815afc2'),(11,0,'9659639423',NULL,11,'CUSTOMER_PHONE','2015-12-16 17:19:39','2015-12-16 17:19:39','admin@yes-cart.com','admin@yes-cart.com','b61792ad-81b7-40c0-9ec5-1101bf87f6b5'),(12,0,'9659639423',NULL,12,'CUSTOMER_PHONE','2015-12-16 17:41:21','2015-12-16 17:41:21','admin@yes-cart.com','admin@yes-cart.com','83658e9c-b7af-4112-985f-46884e233d00'),(13,0,'9659639423',NULL,13,'CUSTOMER_PHONE','2015-12-16 18:06:09','2015-12-16 18:06:09','admin@yes-cart.com','admin@yes-cart.com','8aa26fda-4fe2-4659-a31b-de2649a594e0'),(15,0,'fgfaggf',NULL,15,'CUSTOMER_PHONE','2015-12-17 09:23:48','2015-12-17 09:23:48','admin@yes-cart.com','admin@yes-cart.com','b9e49797-d7c6-4625-91b1-784ea858af53'),(16,0,'fgfaggf',NULL,16,'CUSTOMER_PHONE','2015-12-17 09:24:04','2015-12-17 09:24:04','admin@yes-cart.com','admin@yes-cart.com','fba0b378-471c-4451-80d1-8741529941f6'),(17,0,'fgfgafg',NULL,17,'CUSTOMER_PHONE','2015-12-17 12:02:59','2015-12-17 12:02:59','admin@yes-cart.com','admin@yes-cart.com','2bc4332a-42eb-4d3d-98c9-9f44476d411e'),(18,0,'9659639423',NULL,18,'CUSTOMER_PHONE','2015-12-17 12:04:54','2015-12-17 12:04:54','admin@yes-cart.com','admin@yes-cart.com','52bee1b0-5bba-438b-8d19-0e792f548d95'),(19,0,'9659639423',NULL,19,'CUSTOMER_PHONE','2015-12-17 12:41:49','2015-12-17 12:41:49','admin@yes-cart.com','admin@yes-cart.com','2c49edac-bc3a-4a74-b4c3-1e3332c78cb0'),(20,0,'kgkkdkj',NULL,20,'CUSTOMER_PHONE','2015-12-17 14:58:06','2015-12-17 14:58:06','admin@yes-cart.com','admin@yes-cart.com','ae82e705-988e-42be-be33-006057da83c9'),(21,0,'9600215456',NULL,21,'CUSTOMER_PHONE','2015-12-17 15:55:05','2015-12-17 15:55:05','admin@yes-cart.com','admin@yes-cart.com','ad9a11ae-ac3c-4d44-b3b3-431fc1a35a9f'),(22,1,'iuyuyiuouy',NULL,22,'CUSTOMER_PHONE','2015-12-17 16:08:38','2015-12-17 16:14:34','admin@yes-cart.com','admin@yes-cart.com','33c765cd-2bc5-4584-9af9-6c5ecafc9581'),(23,0,'adsfdsff',NULL,23,'CUSTOMER_PHONE','2015-12-17 16:10:46','2015-12-17 16:10:46','admin@yes-cart.com','admin@yes-cart.com','7ede037d-e102-4736-8966-d39b82d47441'),(24,0,'dfgfgafgfg',NULL,24,'CUSTOMER_PHONE','2015-12-18 09:29:57','2015-12-18 09:29:57','admin@yes-cart.com','admin@yes-cart.com','c9f14b16-c657-4438-8715-6cb9842fd0c8'),(25,0,'fdfdsgfgf',NULL,25,'CUSTOMER_PHONE','2015-12-18 13:31:29','2015-12-18 13:31:29','admin@yes-cart.com','admin@yes-cart.com','6d6b9b2d-42c9-4fc6-bcfc-4dcb81bd1261'),(26,0,'9659639423',NULL,26,'CUSTOMER_PHONE','2015-12-23 18:07:03','2015-12-23 18:07:03','admin@yes-cart.com','admin@yes-cart.com','a2a0e924-95d1-40f8-9238-62c05ac2165c'),(27,0,'9857895125',NULL,27,'CUSTOMER_PHONE','2015-12-24 17:51:53','2015-12-24 17:51:53','admin@yes-cart.com','admin@yes-cart.com','7bc0bb6d-8949-43b0-8982-5c6f3d755cbc'),(28,0,'9865789887',NULL,28,'CUSTOMER_PHONE','2015-12-24 17:52:34','2015-12-24 17:52:34','admin@yes-cart.com','admin@yes-cart.com','114375f1-5717-4604-abf2-ec105e2d1106'),(29,0,'9865789888',NULL,29,'CUSTOMER_PHONE','2015-12-24 18:28:44','2015-12-24 18:28:44','admin@yes-cart.com','admin@yes-cart.com','43582fb9-15ce-47e0-9841-270b1830efdd'),(30,0,'9865789881',NULL,30,'CUSTOMER_PHONE','2015-12-24 18:35:04','2015-12-24 18:35:04','admin@yes-cart.com','admin@yes-cart.com','78639bc3-4d16-49de-9bad-ede68638cf9c'),(31,4,'9659639423',NULL,31,'CUSTOMER_PHONE','2017-05-26 06:08:19','2017-05-31 09:08:16','anonymous','anonymous','8d81cb9d-32aa-48a0-ad01-857989ed45dc'),(32,17,'8754123695',NULL,32,'CUSTOMER_PHONE','2017-05-31 02:52:42','2017-05-31 08:28:15','anonymous','anonymous','383edcb6-1fa1-4c7f-bf41-d7a01f77db1a'),(33,2,'8760738060',NULL,33,'CUSTOMER_PHONE','2017-05-31 06:34:28','2017-05-31 08:54:15','anonymous','anonymous','75e4d1e1-5431-433a-86f8-18798a77001a'),(34,2,'9659639423',NULL,34,'CUSTOMER_PHONE','2017-05-31 08:56:47','2017-05-31 09:04:02','anonymous','anonymous','bfba0243-8685-4172-b44f-2cdf85ca4333'),(35,2,'9677843593',NULL,35,'CUSTOMER_PHONE','2017-05-31 09:09:37','2017-05-31 09:16:47','anonymous','anonymous','a4979c7a-3374-423a-a0dc-7e622b17a93e'),(36,8,'8978717780',NULL,36,'CUSTOMER_PHONE','2017-06-10 01:27:43','2017-06-10 03:02:31','anonymous','anonymous','2a44521f-e49f-42ec-a9c9-06fd579552c2'),(37,3,'7867915190',NULL,37,'CUSTOMER_PHONE','2017-06-13 00:16:14','2017-06-13 00:30:54','anonymous','anonymous','3c352b26-8774-4e1e-95d4-eb7b6ca246fa'),(38,1,'7867915190',NULL,38,'CUSTOMER_PHONE','2017-06-13 00:38:28','2017-06-13 00:38:37','anonymous','anonymous','8b66ecf7-458a-4b7a-9c07-232b6ed16ef2');
/*!40000 ALTER TABLE `tcustomerattrvalue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:04
