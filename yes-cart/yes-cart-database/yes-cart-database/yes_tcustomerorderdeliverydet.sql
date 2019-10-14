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
-- Table structure for table `tcustomerorderdeliverydet`
--

DROP TABLE IF EXISTS `tcustomerorderdeliverydet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcustomerorderdeliverydet` (
  `CUSTOMERORDERDELIVERYDET_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `QTY` decimal(19,2) NOT NULL COMMENT 'Quantity of SKU in this particular delivery',
  `PRICE` decimal(19,2) NOT NULL,
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
  `CUSTOMERORDERDELIVERY_ID` bigint(20) NOT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`CUSTOMERORDERDELIVERYDET_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FK_CODD_CDELIVERY` (`CUSTOMERORDERDELIVERY_ID`),
  CONSTRAINT `FK_CODD_CDELIVERY` FOREIGN KEY (`CUSTOMERORDERDELIVERY_ID`) REFERENCES `tcustomerorderdelivery` (`CUSTOMERORDERDELIVERY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='Delivery details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcustomerorderdeliverydet`
--

LOCK TABLES `tcustomerorderdeliverydet` WRITE;
/*!40000 ALTER TABLE `tcustomerorderdeliverydet` DISABLE KEYS */;
INSERT INTO `tcustomerorderdeliverydet` VALUES (5,3,1.00,2495.79,2495.79,2495.79,2079.82,2495.79,20.00,'\0','VAT','\0','\0',NULL,'H6S54AAE','1y SecureDoc WinEntr Supp 5K+ E-LTU',3,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','98ac6e54-4414-4b0a-bfc6-f38212475516'),(6,3,1.00,622.28,622.28,622.28,518.56,622.28,20.00,'\0','VAT','\0','\0',NULL,'701423-L31','701423-L31',3,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','315e9d57-b374-46c5-ba61-da8e57fea4db'),(7,3,1.00,2087.51,2087.51,2087.51,1739.59,2087.51,20.00,'\0','VAT','\0','\0',NULL,'G9D75UA','15-r017dx',3,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','3474c9a9-6d8d-44e2-80b9-c14174af9c7d'),(8,3,1.00,0.00,0.00,0.00,0.00,0.00,20.00,'\0','VAT','\0','\0',NULL,'ubsmLs','user Bundle',4,'2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','ca44d5bc-73e2-4535-96df-c86c7280b6f8'),(13,2,1.00,327.77,327.77,409.71,273.14,327.77,20.00,'\0','VAT','\0','\0',NULL,'M51AD-B08','M51AD-B08',8,'2015-12-16 16:12:58','2015-12-16 16:13:11','admin@yes-cart.com','admin@yes-cart.com','20366a28-b6fd-4f14-bbbc-f42a8f5f5154'),(14,2,2.00,1912.77,1912.77,1912.77,1593.97,1912.77,20.00,'\0','VAT','\0','\0',NULL,'FNCWY01S','3120',8,'2015-12-16 16:12:58','2015-12-16 16:13:11','admin@yes-cart.com','admin@yes-cart.com','2df68d23-051f-442c-a76a-b2347588bbe3'),(18,2,1.00,1473.28,1473.28,1473.28,1227.73,1473.28,20.00,'\0','VAT','\0','\0',NULL,'FNCWY02S','3120',11,'2015-12-16 16:28:24','2015-12-16 16:29:15','admin@yes-cart.com','admin@yes-cart.com','700aa878-de77-4b96-a6e0-36d908ce3700'),(19,2,1.00,908.53,908.53,908.53,757.10,908.53,20.00,'\0','VAT','\0','\0',NULL,'NX-MRWSI-002','ES1-512-C3X9',11,'2015-12-16 16:28:24','2015-12-16 16:29:15','admin@yes-cart.com','admin@yes-cart.com','0dc8ef2f-3c70-4102-9dab-d3867ee9e2fb'),(20,2,2.00,0.00,0.00,0.00,0.00,0.00,20.00,'\0','VAT','\0','\0',NULL,'guk','guildKraft',12,'2015-12-16 17:13:14','2015-12-16 17:14:26','admin@yes-cart.com','admin@yes-cart.com','f2163fc9-ef0b-449e-8e46-701e628c825f'),(21,2,1.00,556.53,556.53,556.53,463.77,556.53,20.00,'\0','VAT','\0','\0',NULL,'K9K47EA-UUG','450 G2',13,'2015-12-17 09:26:38','2015-12-17 09:26:49','admin@yes-cart.com','admin@yes-cart.com','31383166-23b6-469a-9c8d-c65508f6e8b5'),(23,2,1.00,1970.36,1970.36,1970.36,1641.96,1970.36,20.00,'\0','VAT','\0','\0',NULL,'FNCWY02S','3120',15,'2015-12-17 09:48:15','2015-12-17 09:48:25','admin@yes-cart.com','admin@yes-cart.com','c30795fd-ad40-4cc5-b0ad-29357d4c204a'),(30,2,2.00,120.00,120.00,120.00,100.00,120.00,20.00,'\0','VAT','\0','\0',NULL,'guk','guildKraft',22,'2015-12-17 10:33:19','2015-12-17 10:38:19','admin@yes-cart.com','admin@yes-cart.com','75c3b1d8-083c-439a-b940-366dbfca0ae6'),(31,0,1.00,120.00,120.00,120.00,100.00,120.00,20.00,'\0','VAT','\0','\0',NULL,'guk','guildKraft',23,'2015-12-17 10:40:39','2015-12-17 10:40:39','admin@yes-cart.com','admin@yes-cart.com','1858fa9a-c1cd-4991-901b-a094bf6a9b5c'),(33,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',25,'2015-12-17 12:12:49','2015-12-17 12:20:12','admin@yes-cart.com','admin@yes-cart.com','1a866213-6381-45b9-98bc-ce94eec59e5d'),(36,0,2.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',28,'2015-12-17 12:43:36','2015-12-17 12:43:36','admin@yes-cart.com','admin@yes-cart.com','45f7a6a8-3f29-44c9-9947-e6899ef57eac'),(39,0,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',31,'2015-12-17 12:50:40','2015-12-17 12:50:40','admin@yes-cart.com','admin@yes-cart.com','10f159af-cb46-42ab-9113-f100d8597084'),(40,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',32,'2015-12-17 14:58:58','2015-12-17 14:59:09','admin@yes-cart.com','admin@yes-cart.com','715de7c6-c063-4e47-b51d-fc58e7052faa'),(41,2,3.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',33,'2015-12-17 15:04:05','2015-12-17 15:04:32','admin@yes-cart.com','admin@yes-cart.com','d854476b-6720-4991-b49d-62b1236574fb'),(42,2,2.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',34,'2015-12-17 15:08:56','2015-12-17 15:09:08','admin@yes-cart.com','admin@yes-cart.com','c78ace3f-43cd-413f-a4bd-a955eaa3d740'),(43,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',35,'2015-12-17 15:55:30','2015-12-17 15:56:15','admin@yes-cart.com','admin@yes-cart.com','dbb75199-97cb-4ec0-8b75-735836617c0d'),(44,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',36,'2015-12-17 16:08:58','2015-12-17 16:09:32','admin@yes-cart.com','admin@yes-cart.com','e781cb8f-f8ab-4fd6-a8fe-dd8e2a616650'),(46,0,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',38,'2015-12-17 16:22:30','2015-12-17 16:22:30','admin@yes-cart.com','admin@yes-cart.com','bfbc6273-c780-4785-a22e-951ed464f562'),(47,0,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',39,'2015-12-17 18:56:19','2015-12-17 18:56:19','anonymous','anonymous','2c3e361d-e693-4367-a01e-0cb7dff19dc1'),(48,2,1.00,140.00,140.00,150.00,140.00,140.00,0.00,'\0','','\0','\0',NULL,'TP1','Test Product',40,'2015-12-18 09:30:08','2015-12-18 09:30:24','admin@yes-cart.com','admin@yes-cart.com','f3c7c34d-bdce-4ee6-97ae-37a216d35442'),(49,0,1.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'US-BUN',' User Bundle ',41,'2015-12-18 13:31:44','2015-12-18 13:31:44','admin@yes-cart.com','admin@yes-cart.com','c5abb723-e230-40af-bc03-6484c4f24a20'),(51,2,4.00,150.00,150.00,150.00,150.00,150.00,0.00,'\0','','\0','\0',NULL,'US-BUN',' User Bundle ',43,'2015-12-18 16:08:57','2015-12-18 16:09:14','admin@yes-cart.com','admin@yes-cart.com','d0a3f2a3-6aa2-47f1-8e70-2a973284902e'),(52,2,1.00,10.00,10.00,10.00,10.00,10.00,0.00,'\0','','\0','\0',NULL,'ST-BUN','Storage bundle ',43,'2015-12-18 16:08:57','2015-12-18 16:09:14','admin@yes-cart.com','admin@yes-cart.com','9a2caa6c-2dca-48d1-b2f1-e4574cfc194f'),(56,0,1.00,90.00,90.00,90.00,90.00,90.00,0.00,'\0','','\0','\0',NULL,'SMLBSB','Business Service bundle ',46,'2015-12-21 10:24:19','2015-12-21 10:24:19','admin@yes-cart.com','admin@yes-cart.com','bd476777-4dea-46e5-8362-43b7c53095c2'),(57,0,1.00,150.00,150.00,150.00,150.00,150.00,0.00,'\0','','\0','\0',NULL,'US-BUN',' User Bundle ',46,'2015-12-21 10:24:20','2015-12-21 10:24:20','admin@yes-cart.com','admin@yes-cart.com','08f0ac8d-1246-40ba-bca9-852d135e0f61'),(58,1,1.00,4999.00,4999.00,4999.00,4999.00,4999.00,0.00,'\0','','\0','\0',NULL,'GKRBSB','Remote BET Support Bundle',47,'2015-12-21 14:34:17','2015-12-21 14:34:23','admin@yes-cart.com','admin@yes-cart.com','129f6fc9-d859-4e35-b4b2-4db1eb2f7b94'),(59,0,1.00,100.00,100.00,100.00,100.00,100.00,0.00,'\0','','\0','\0',NULL,'MFRTS','Remote Technical Support & Training Bundle ',48,'2015-12-22 09:42:11','2015-12-22 09:42:11','admin@yes-cart.com','admin@yes-cart.com','61ba3c3e-33cd-4599-b721-a23c1e0cbacf'),(60,0,2.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'MFAAM','Asset/Artifact Management Bundle ',48,'2015-12-22 09:42:11','2015-12-22 09:42:11','admin@yes-cart.com','admin@yes-cart.com','ac13bddc-ec0d-4492-bd30-9774ea4df687'),(65,1,1.00,80.00,80.00,80.00,80.00,80.00,0.00,'\0','','\0','\0',NULL,'SMLEB','ERP bundle ',53,'2015-12-24 18:22:20','2015-12-24 18:22:32','admin@yes-cart.com','admin@yes-cart.com','a11e41f3-e0cf-4025-96da-320049afb7cf'),(69,2,1.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'GKAAMB','Asset/Artifact Management Bundle ',57,'2017-05-26 06:57:14','2017-05-26 06:58:37','anonymous','anonymous','a2a87aa9-8a20-4ec3-8197-2ecbbfd4acca'),(70,2,1.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'GKAAMB','Asset/Artifact Management Bundle ',58,'2017-05-26 07:04:23','2017-05-26 07:05:16','anonymous','anonymous','9a2ded37-197f-4074-a5a4-3f51db46cf8e'),(73,3,1.00,200.00,200.00,200.00,200.00,200.00,0.00,'\0','','\0','\0',NULL,'KWBIAB','Business intelligence & Analytics Bundle',61,'2017-05-31 06:39:34','2017-05-31 06:40:22','anonymous','anonymous','2e65676d-fc24-4f4b-baed-b3fa1341571f'),(74,2,1.00,50.00,50.00,50.00,50.00,50.00,0.00,'\0','','\0','\0',NULL,'GKAAMB','Asset/Artifact Management Bundle ',62,'2017-06-10 03:02:54','2017-06-10 03:03:38','anonymous','anonymous','e40ea32b-65e7-477d-81c0-f721696970a8');
/*!40000 ALTER TABLE `tcustomerorderdeliverydet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:24
