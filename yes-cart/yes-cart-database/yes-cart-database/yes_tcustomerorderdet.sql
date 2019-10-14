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
-- Table structure for table `tcustomerorderdet`
--

DROP TABLE IF EXISTS `tcustomerorderdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcustomerorderdet` (
  `CUSTOMERORDERDET_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `QTY` decimal(19,2) NOT NULL,
  `PRICE` decimal(19,2) NOT NULL COMMENT 'Price per one unit',
  `SALE_PRICE` decimal(19,2) NOT NULL,
  `LIST_PRICE` decimal(19,2) NOT NULL,
  `NET_PRICE` decimal(19,2) NOT NULL,
  `GROSS_PRICE` decimal(19,2) NOT NULL,
  `TAX_RATE` decimal(19,2) NOT NULL,
  `TAX_EXCLUSIVE_OF_PRICE` bit(1) NOT NULL DEFAULT b'0',
  `TAX_CODE` varchar(255) NOT NULL,
  `IS_GIFT` bit(1) NOT NULL DEFAULT b'0',
  `IS_PROMO_APPLIED` bit(1) NOT NULL DEFAULT b'0',
  `APPLIED_PROMO` varchar(255) DEFAULT NULL,
  `CODE` varchar(255) NOT NULL,
  `PRODUCTNAME` longtext NOT NULL,
  `CUSTOMERORDER_ID` bigint(20) NOT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`CUSTOMERORDERDET_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FKCB358C37A7F39C2D` (`CUSTOMERORDER_ID`),
  CONSTRAINT `FKCB358C37A7F39C2D` FOREIGN KEY (`CUSTOMERORDER_ID`) REFERENCES `tcustomerorder` (`CUSTOMERORDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='Orders detail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcustomerorderdet`
--

LOCK TABLES `tcustomerorderdet` WRITE;
/*!40000 ALTER TABLE `tcustomerorderdet` DISABLE KEYS */;
INSERT INTO `tcustomerorderdet` VALUES (5,3,1.00,0.00,0.00,0.00,0.00,0.00,20.00,'\0','VAT','\0','\0',NULL,'ubsmLs','user Bundle',2,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','e0e48935-776c-41ef-97a2-143615b07120'),(6,3,1.00,2495.79,2495.79,2495.79,2079.82,2495.79,20.00,'\0','VAT','\0','\0',NULL,'H6S54AAE','1y SecureDoc WinEntr Supp 5K+ E-LTU',2,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','bb45c4f7-0861-4bef-a888-bfdbb56b600c'),(7,3,1.00,622.28,622.28,622.28,518.56,622.28,20.00,'\0','VAT','\0','\0',NULL,'701423-L31','701423-L31',2,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','5dafcb8d-f8d2-4be6-88e7-e426b4007905'),(8,3,1.00,2087.51,2087.51,2087.51,1739.59,2087.51,20.00,'\0','VAT','\0','\0',NULL,'G9D75UA','15-r017dx',2,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','50865ce1-b3b4-4a6f-af81-bac27ec0b2b5'),(13,2,1.00,327.77,327.77,409.71,273.14,327.77,20.00,'\0','VAT','\0','\0',NULL,'M51AD-B08','M51AD-B08',7,'2015-12-16 16:12:57','2015-12-16 16:13:11','admin@yes-cart.com','admin@yes-cart.com','64028d87-22a3-43ba-ab75-e7590f38bd5b'),(14,2,2.00,1912.77,1912.77,1912.77,1593.97,1912.77,20.00,'\0','VAT','\0','\0',NULL,'FNCWY01S','3120',7,'2015-12-16 16:12:58','2015-12-16 16:13:11','admin@yes-cart.com','admin@yes-cart.com','a035179e-6d5e-42f8-9d4b-835a069d529a'),(18,2,1.00,1473.28,1473.28,1473.28,1227.73,1473.28,20.00,'\0','VAT','\0','\0',NULL,'FNCWY02S','3120',10,'2015-12-16 16:28:24','2015-12-16 16:29:15','admin@yes-cart.com','admin@yes-cart.com','576eb929-1598-4091-8857-3eaad099856e'),(19,2,1.00,908.53,908.53,908.53,757.10,908.53,20.00,'\0','VAT','\0','\0',NULL,'NX-MRWSI-002','ES1-512-C3X9',10,'2015-12-16 16:28:24','2015-12-16 16:29:15','admin@yes-cart.com','admin@yes-cart.com','2dc0bce8-d67c-4016-bcb8-2881d89f9842'),(20,2,2.00,0.00,0.00,0.00,0.00,0.00,20.00,'\0','VAT','\0','\0',NULL,'guk','guildKraft',11,'2015-12-16 17:13:14','2015-12-16 17:14:26','admin@yes-cart.com','admin@yes-cart.com','185f4388-4f33-40db-ae38-ab8e02e99fe4'),(21,2,1.00,556.53,556.53,556.53,463.77,556.53,20.00,'\0','VAT','\0','\0',NULL,'K9K47EA-UUG','450 G2',12,'2015-12-17 09:26:38','2015-12-17 09:26:49','admin@yes-cart.com','admin@yes-cart.com','fd34b45c-dfef-4b15-a3af-73d00d208af5'),(23,2,1.00,1970.36,1970.36,1970.36,1641.96,1970.36,20.00,'\0','VAT','\0','\0',NULL,'FNCWY02S','3120',14,'2015-12-17 09:48:15','2015-12-17 09:48:25','admin@yes-cart.com','admin@yes-cart.com','f04d4ef9-a9e3-42b7-8696-ecccba1dd403'),(30,2,2.00,120.00,120.00,120.00,100.00,120.00,20.00,'\0','VAT','\0','\0',NULL,'guk','guildKraft',21,'2015-12-17 10:33:19','2015-12-17 10:38:19','admin@yes-cart.com','admin@yes-cart.com','007591cd-9b7e-4452-b454-1110418dbf6f'),(31,0,1.00,120.00,120.00,120.00,100.00,120.00,20.00,'\0','VAT','\0','\0',NULL,'guk','guildKraft',22,'2015-12-17 10:40:39','2015-12-17 10:40:39','admin@yes-cart.com','admin@yes-cart.com','f3317e7e-6457-4d6b-b736-47667cc60de6'),(33,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',24,'2015-12-17 12:12:49','2015-12-17 12:20:12','admin@yes-cart.com','admin@yes-cart.com','e80ab0b0-82c9-433a-bdb8-0e92d477e8ad'),(36,0,2.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',27,'2015-12-17 12:43:36','2015-12-17 12:43:36','admin@yes-cart.com','admin@yes-cart.com','cf474001-92c2-4a89-8786-4704a898c3ab'),(39,0,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',30,'2015-12-17 12:50:40','2015-12-17 12:50:40','admin@yes-cart.com','admin@yes-cart.com','eae483b2-696c-4242-8f29-f76be0cf9df0'),(40,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',31,'2015-12-17 14:58:58','2015-12-17 14:59:09','admin@yes-cart.com','admin@yes-cart.com','8f84d43e-155f-45d6-91fb-48b2ad3b76a3'),(41,2,3.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',32,'2015-12-17 15:04:05','2015-12-17 15:04:32','admin@yes-cart.com','admin@yes-cart.com','5800e91a-debd-4298-8fcf-231619bd8cd0'),(42,2,2.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',33,'2015-12-17 15:08:56','2015-12-17 15:09:08','admin@yes-cart.com','admin@yes-cart.com','0147e913-461b-4363-9e5b-d93d421f414e'),(43,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',34,'2015-12-17 15:55:30','2015-12-17 15:56:15','admin@yes-cart.com','admin@yes-cart.com','036c886d-7742-456e-a396-6cf4a22a21dc'),(44,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',35,'2015-12-17 16:08:58','2015-12-17 16:09:32','admin@yes-cart.com','admin@yes-cart.com','bfe2a1ad-a659-4651-acda-5e46a1a18bc4'),(46,0,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',37,'2015-12-17 16:22:30','2015-12-17 16:22:30','admin@yes-cart.com','admin@yes-cart.com','32216079-a475-4a89-8ca0-2e91bc1ca888'),(47,0,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',38,'2015-12-17 18:56:19','2015-12-17 18:56:19','anonymous','anonymous','bdc20604-6ec7-4e29-9244-d47f22202aed'),(48,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',39,'2015-12-18 09:30:08','2015-12-18 09:30:24','admin@yes-cart.com','admin@yes-cart.com','41f36721-46a7-42a4-922d-a89812c379e6'),(49,0,1.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'US-BUN',' User Bundle ',40,'2015-12-18 13:31:43','2015-12-18 13:31:43','admin@yes-cart.com','admin@yes-cart.com','c81d48a6-f552-4829-b2f8-3f5f0d5b2068'),(51,2,4.00,150.00,150.00,150.00,150.00,150.00,0.00,'\0','','\0','\0',NULL,'US-BUN',' User Bundle ',42,'2015-12-18 16:08:57','2015-12-18 16:09:14','admin@yes-cart.com','admin@yes-cart.com','7a44c384-426d-4032-beab-152ce1bf15d1'),(52,2,1.00,10.00,10.00,10.00,10.00,10.00,0.00,'\0','','\0','\0',NULL,'ST-BUN','Storage bundle ',42,'2015-12-18 16:08:57','2015-12-18 16:09:14','admin@yes-cart.com','admin@yes-cart.com','58992cd1-ae29-424c-8c5e-dc0be6e43226'),(56,0,1.00,90.00,90.00,90.00,90.00,90.00,0.00,'\0','','\0','\0',NULL,'SMLBSB','Business Service bundle ',45,'2015-12-21 10:24:19','2015-12-21 10:24:19','admin@yes-cart.com','admin@yes-cart.com','08dfce37-bea9-4c19-9c40-f6cff72907bd'),(57,0,1.00,150.00,150.00,150.00,150.00,150.00,0.00,'\0','','\0','\0',NULL,'US-BUN',' User Bundle ',45,'2015-12-21 10:24:19','2015-12-21 10:24:19','admin@yes-cart.com','admin@yes-cart.com','6a52f88b-0381-4853-ae35-a28b3b4e802e'),(58,1,1.00,4999.00,4999.00,4999.00,4999.00,4999.00,0.00,'\0','','\0','\0',NULL,'GKRBSB','Remote BET Support Bundle',46,'2015-12-21 14:34:17','2015-12-21 14:34:23','admin@yes-cart.com','admin@yes-cart.com','e2895564-e309-459e-980e-684c7f00c368'),(59,0,1.00,100.00,100.00,100.00,100.00,100.00,0.00,'\0','','\0','\0',NULL,'MFRTS','Remote Technical Support & Training Bundle ',47,'2015-12-22 09:42:11','2015-12-22 09:42:11','admin@yes-cart.com','admin@yes-cart.com','00d679f9-af18-4f76-a0fa-1fc0e9b1c177'),(60,0,2.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'MFAAM','Asset/Artifact Management Bundle ',47,'2015-12-22 09:42:11','2015-12-22 09:42:11','admin@yes-cart.com','admin@yes-cart.com','11d1ea3d-8aad-4bcc-a29a-56f7f70ef13d'),(65,1,1.00,80.00,80.00,80.00,80.00,80.00,0.00,'\0','','\0','\0',NULL,'SMLEB','ERP bundle ',52,'2015-12-24 18:22:20','2015-12-24 18:22:32','admin@yes-cart.com','admin@yes-cart.com','b0a2dc7a-3067-4bb6-8d2a-9e8df73bc5e9'),(69,2,1.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'GKAAMB','Asset/Artifact Management Bundle ',56,'2017-05-26 06:57:14','2017-05-26 06:58:37','anonymous','anonymous','2305b652-5416-41d0-9528-aeb188faad87'),(70,2,1.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'GKAAMB','Asset/Artifact Management Bundle ',57,'2017-05-26 07:04:23','2017-05-26 07:05:16','anonymous','anonymous','133460a3-2518-435b-be86-92df9d9d56cf'),(73,3,1.00,200.00,200.00,200.00,200.00,200.00,0.00,'\0','','\0','\0',NULL,'KWBIAB','Business intelligence & Analytics Bundle',60,'2017-05-31 06:39:34','2017-05-31 06:40:22','anonymous','anonymous','46d755b2-3e0a-48b2-8bdc-ed5873592d63'),(74,2,1.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'GKAAMB','Asset/Artifact Management Bundle ',61,'2017-06-10 03:02:54','2017-06-10 03:03:38','anonymous','anonymous','1fec9892-d5e0-4238-bb52-a8306233e8d8');
/*!40000 ALTER TABLE `tcustomerorderdet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:54
