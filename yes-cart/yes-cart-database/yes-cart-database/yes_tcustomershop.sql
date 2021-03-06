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
-- Table structure for table `tcustomershop`
--

DROP TABLE IF EXISTS `tcustomershop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcustomershop` (
  `CUSTOMERSHOP_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `SHOP_ID` bigint(20) NOT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`CUSTOMERSHOP_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FK_CS_SHOP` (`SHOP_ID`),
  KEY `FK_CS_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK_CS_CUSTOMER` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `tcustomer` (`CUSTOMER_ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_CS_SHOP` FOREIGN KEY (`SHOP_ID`) REFERENCES `tshop` (`SHOP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcustomershop`
--

LOCK TABLES `tcustomershop` WRITE;
/*!40000 ALTER TABLE `tcustomershop` DISABLE KEYS */;
INSERT INTO `tcustomershop` VALUES (1,0,1,11,NULL,NULL,NULL,NULL,'6c957616-a699-49ea-92ed-6c855aede822'),(2,0,2,11,NULL,NULL,NULL,NULL,'f819a4ca-8eaf-4a79-b857-07a0e62dce85'),(3,0,3,11,NULL,NULL,NULL,NULL,'3d5585d4-8075-4497-9e79-0fc648b8a894'),(4,0,4,11,NULL,NULL,NULL,NULL,'cad1855d-c139-4098-b60c-6c1a52e69852'),(5,0,5,11,NULL,NULL,NULL,NULL,'6856702a-a32d-45be-9346-e5ae580187d1'),(6,0,6,11,NULL,NULL,NULL,NULL,'de1a9768-49e0-4d55-b718-532ca2b59ec0'),(7,0,6,10,NULL,NULL,NULL,NULL,'b9fb3638-5ba1-4846-b1f2-6fa4e3c9ebc0'),(8,0,7,10,NULL,NULL,NULL,NULL,'4f402621-3707-4a45-a471-cf657ccd3fe0'),(9,0,8,10,NULL,NULL,NULL,NULL,'0515bf17-9c72-4222-b2ef-217dba129170'),(10,0,9,13,NULL,NULL,NULL,NULL,'125a07ba-14c0-49b5-be2f-a3595084caaa'),(11,0,10,13,NULL,NULL,NULL,NULL,'12ac80c6-efaa-466c-ba56-f4cf489027fa'),(12,0,10,10,NULL,NULL,NULL,NULL,'ac1248d9-f662-44e5-95fb-9fb848d8ae0e'),(13,0,11,13,NULL,NULL,NULL,NULL,'99e6ca3f-4ae0-41bc-b4ff-f0060f9616c2'),(14,0,12,13,NULL,NULL,NULL,NULL,'6ad15653-fb5a-429d-b174-b8cefc30236e'),(15,0,13,10,NULL,NULL,NULL,NULL,'f2763ad6-6001-4fe4-8053-8d89057b894e'),(17,0,6,13,NULL,NULL,NULL,NULL,'a0a7bb69-eac4-4ae0-a142-052aeca65531'),(18,0,15,13,NULL,NULL,NULL,NULL,'62b7282a-eb3a-4397-a9ff-6195cd0faf5d'),(19,0,16,13,NULL,NULL,NULL,NULL,'d3abba9a-becf-4301-97c1-f38b11c0bec8'),(20,0,16,10,NULL,NULL,NULL,NULL,'42a5138f-2671-465e-8555-02c03784e5d0'),(21,0,17,14,NULL,NULL,NULL,NULL,'ea8dd028-f476-4123-8067-331258e2e361'),(22,0,18,14,NULL,NULL,NULL,NULL,'fef444d8-38e1-4de6-8707-e6957c88026a'),(23,0,19,14,NULL,NULL,NULL,NULL,'bd5c346e-6d2b-4f0d-9281-85c768dcd447'),(24,0,20,14,NULL,NULL,NULL,NULL,'2f1dbd5e-5c88-4b7c-bea2-2758959e45f5'),(25,0,21,14,NULL,NULL,NULL,NULL,'7b850529-df9a-4204-ba76-e82ba2b67578'),(26,0,22,14,NULL,NULL,NULL,NULL,'88abb1ed-f243-4d20-a45e-6d11c2192b33'),(27,0,23,14,NULL,NULL,NULL,NULL,'0818eb36-af3d-4f21-b09a-e63c17bc57e8'),(28,0,4,14,NULL,NULL,NULL,NULL,'d074913a-86d7-4125-99b8-0d79c80c1911'),(29,0,24,14,NULL,NULL,NULL,NULL,'9d7e9a98-5837-4299-8ec1-35706e1f91bd'),(30,0,25,11,NULL,NULL,NULL,NULL,'e599b7a1-6049-4760-b8f6-e12d5ab1a39c'),(31,0,4,13,NULL,NULL,NULL,NULL,'741d3b31-72b6-4a77-a681-40620053b3bf'),(32,0,4,17,NULL,NULL,NULL,NULL,'4fcb74d6-b926-44c9-ae21-93d96531fb97'),(33,0,26,11,NULL,NULL,NULL,NULL,'7ced6d9f-d58b-4950-8358-dea3a3ce8088'),(34,0,27,13,NULL,NULL,NULL,NULL,'b9bbb31e-3016-496b-b698-1ae75265d8bb'),(35,0,28,13,NULL,NULL,NULL,NULL,'a5c473f3-cb76-496f-ba60-06a0241689f4'),(36,0,28,11,NULL,NULL,NULL,NULL,'5dab05ad-64e0-4234-8f97-88a71d8df2df'),(37,0,29,13,NULL,NULL,NULL,NULL,'5071c473-7acd-481a-89a4-1ab1b4e0d851'),(38,0,30,13,NULL,NULL,NULL,NULL,'a4f58370-f37b-422e-a785-58590c3d55d2'),(39,0,30,11,NULL,NULL,NULL,NULL,'bb3557ea-40af-4ec1-871f-40365702373d'),(40,0,31,18,NULL,NULL,NULL,NULL,'7f7880a6-b291-446b-b921-dab9d601b6f4'),(41,0,32,18,NULL,NULL,NULL,NULL,'aa599056-0f22-4bf6-b60b-4aca1658c75f'),(42,0,33,18,NULL,NULL,NULL,NULL,'f9981e76-ad00-46d6-bf23-1897f138c5b9'),(43,0,34,18,NULL,NULL,NULL,NULL,'a7531a4e-c48e-4538-a703-06f111b12443'),(44,0,35,11,NULL,NULL,NULL,NULL,'e13bc12e-ba5c-40ef-91c9-0176101e41a3'),(45,0,36,18,NULL,NULL,NULL,NULL,'390456d6-f056-4828-b4c3-894ff144dd0b'),(46,0,37,18,NULL,NULL,NULL,NULL,'a75dce6a-c801-41b8-99a6-e274ba30b21f'),(47,0,38,18,NULL,NULL,NULL,NULL,'616e178b-397c-451e-937d-234fd5506a16'),(48,0,38,11,NULL,NULL,NULL,NULL,'4dd95849-e08e-461f-8dba-3f6657809c0a');
/*!40000 ALTER TABLE `tcustomershop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:28
