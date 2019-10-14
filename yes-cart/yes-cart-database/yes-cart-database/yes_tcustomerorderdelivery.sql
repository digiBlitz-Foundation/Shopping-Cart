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
-- Table structure for table `tcustomerorderdelivery`
--

DROP TABLE IF EXISTS `tcustomerorderdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcustomerorderdelivery` (
  `CUSTOMERORDERDELIVERY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `DELIVERYNUM` varchar(255) DEFAULT NULL COMMENT 'Order contract in case of splited orders (XXX-1,XXX-2, etc). Delivery contract XXX-2-DDD1,XXX-2-DDD2, XXX-2-DDD3, where XXX order num, DDD delivery num.',
  `REF_NO` varchar(255) DEFAULT NULL COMMENT 'External ref number',
  `PRICE` decimal(19,2) NOT NULL,
  `LIST_PRICE` decimal(19,2) NOT NULL,
  `NET_PRICE` decimal(19,2) NOT NULL,
  `GROSS_PRICE` decimal(19,2) NOT NULL,
  `TAX_RATE` decimal(19,2) NOT NULL,
  `TAX_EXCLUSIVE_OF_PRICE` bit(1) NOT NULL DEFAULT b'0',
  `TAX_CODE` varchar(255) NOT NULL,
  `IS_PROMO_APPLIED` bit(1) NOT NULL DEFAULT b'0',
  `APPLIED_PROMO` varchar(255) DEFAULT NULL,
  `DELIVERYSTATUS` varchar(64) NOT NULL,
  `CARRIERSLA_ID` bigint(20) DEFAULT NULL,
  `CUSTOMERORDER_ID` bigint(20) NOT NULL,
  `DELIVERY_GROUP` varchar(16) NOT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`CUSTOMERORDERDELIVERY_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FK_OD_ORD` (`CUSTOMERORDER_ID`),
  KEY `FK_OD_CSLA` (`CARRIERSLA_ID`),
  CONSTRAINT `FK_OD_CSLA` FOREIGN KEY (`CARRIERSLA_ID`) REFERENCES `tcarriersla` (`CARRIERSLA_ID`),
  CONSTRAINT `FK_OD_ORD` FOREIGN KEY (`CUSTOMERORDER_ID`) REFERENCES `tcustomerorder` (`CUSTOMERORDER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcustomerorderdelivery`
--

LOCK TABLES `tcustomerorderdelivery` WRITE;
/*!40000 ALTER TABLE `tcustomerorderdelivery` DISABLE KEYS */;
INSERT INTO `tcustomerorderdelivery` VALUES (3,4,'151216144127-2-0',NULL,0.00,0.99,0.00,0.00,20.00,'\0','VAT','','SHOP10EURSHIPFREE','ds.inventory.allocated',7,2,'D1','2015-12-16 14:41:28','2015-12-16 14:50:01','admin@yes-cart.com','anonymous','b1fa52a0-b131-41c1-9212-06b7f3b38c47'),(4,3,'151216144127-2-1',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',7,2,'D4','2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','88a490ad-db8c-4029-82e9-6e8b1e10f746'),(8,3,'151216161257-7-0',NULL,0.00,4.99,0.00,0.00,20.00,'\0','VAT','','SHOP10EURSHIPFREE','ds.inventory.allocated',13,7,'D1','2015-12-16 16:12:58','2015-12-16 16:20:01','admin@yes-cart.com','anonymous','e62a12dd-d600-4338-9456-c720e09fface'),(11,3,'151216162824-10-0',NULL,0.00,0.99,0.00,0.00,20.00,'\0','VAT','','SHOP10EURSHIPFREE','ds.inventory.allocated',7,10,'D1','2015-12-16 16:28:24','2015-12-16 16:30:00','admin@yes-cart.com','anonymous','d0980005-ec67-4579-a180-574447c84578'),(12,2,'151216171314-11-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',15,11,'D4','2015-12-16 17:13:14','2015-12-16 17:14:26','admin@yes-cart.com','admin@yes-cart.com','512450b5-cf64-4261-a991-9c4c0ed02bdd'),(13,3,'151217092638-19-0',NULL,0.00,0.99,0.00,0.00,20.00,'\0','VAT','','SHOP10EURSHIPFREE','ds.inventory.allocated',7,12,'D1','2015-12-17 09:26:38','2015-12-17 09:30:00','admin@yes-cart.com','anonymous','56f79a91-139d-4796-a6d2-de091f49b338'),(15,3,'151217094814-21-0',NULL,0.00,1.99,0.00,0.00,20.00,'\0','VAT','','SHOP10USDSHIPFREE','ds.inventory.allocated',5,14,'D1','2015-12-17 09:48:15','2015-12-17 09:50:01','admin@yes-cart.com','anonymous','21994cfc-b91e-413e-9f0b-5dcfd813109d'),(22,2,'151217103319-28-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',15,21,'D4','2015-12-17 10:33:19','2015-12-17 10:38:19','admin@yes-cart.com','admin@yes-cart.com','4a3fd270-f86d-4632-9cb5-26754bbbb259'),(23,0,'151217104039-29-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,22,'D4','2015-12-17 10:40:39','2015-12-17 10:40:39','admin@yes-cart.com','admin@yes-cart.com','29ef72c7-2737-4035-b13b-729928e83f6e'),(25,2,'151217121249-33-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',15,24,'D4','2015-12-17 12:12:49','2015-12-17 12:20:12','admin@yes-cart.com','admin@yes-cart.com','25248d9d-21df-40b3-a246-4cd8514de4b3'),(28,0,'151217124336-36-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,27,'D4','2015-12-17 12:43:36','2015-12-17 12:43:36','admin@yes-cart.com','admin@yes-cart.com','aeb2fc41-532d-4cea-9544-ad04eb485cea'),(31,0,'151217125040-39-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,30,'D4','2015-12-17 12:50:40','2015-12-17 12:50:40','admin@yes-cart.com','admin@yes-cart.com','c89dfe0d-5e02-4846-8ccb-bcf0a89cc9f4'),(32,2,'151217145858-41-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',15,31,'D4','2015-12-17 14:58:58','2015-12-17 14:59:09','admin@yes-cart.com','admin@yes-cart.com','d53a8f4b-2697-4ee5-9378-fe5646f57d99'),(33,2,'151217150405-42-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',15,32,'D4','2015-12-17 15:04:05','2015-12-17 15:04:32','admin@yes-cart.com','admin@yes-cart.com','732f26e4-263b-46f2-b010-1990bd26295a'),(34,2,'151217150856-43-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',15,33,'D4','2015-12-17 15:08:56','2015-12-17 15:09:08','admin@yes-cart.com','admin@yes-cart.com','d6be2b2a-b2e4-40b4-a3fb-2a17c058e6c6'),(35,2,'151217155530-44-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',15,34,'D4','2015-12-17 15:55:30','2015-12-17 15:56:15','admin@yes-cart.com','admin@yes-cart.com','d7c8af15-a126-4862-a23d-a64bcedacf56'),(36,2,'151217160858-45-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',15,35,'D4','2015-12-17 16:08:58','2015-12-17 16:09:32','admin@yes-cart.com','admin@yes-cart.com','722c87c3-9d5a-4ba7-a764-f6634134614f'),(38,0,'151217162230-48-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,37,'D4','2015-12-17 16:22:30','2015-12-17 16:22:30','admin@yes-cart.com','admin@yes-cart.com','0742e517-1978-4622-8d67-b6548ac27cf8'),(39,0,'151217185619-49-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,38,'D4','2015-12-17 18:56:19','2015-12-17 18:56:19','anonymous','anonymous','51137b26-6335-451e-ab44-abba5402a649'),(40,2,'151218093007-50-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.shipment.inprogress',15,39,'D4','2015-12-18 09:30:08','2015-12-18 09:30:24','admin@yes-cart.com','admin@yes-cart.com','fa9bdbcf-1142-432a-8ef9-c06b7466953a'),(41,0,'151218133143-51-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,40,'D1','2015-12-18 13:31:43','2015-12-18 13:31:43','admin@yes-cart.com','admin@yes-cart.com','d659e7b5-8097-4438-b2df-c17d869931e4'),(43,3,'151218160857-53-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.inventory.allocated',15,42,'D1','2015-12-18 16:08:57','2015-12-18 16:10:00','admin@yes-cart.com','anonymous','256c5b9e-a2fa-48bc-a7c1-68b5742bbf19'),(46,0,'151221102418-56-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,45,'D1','2015-12-21 10:24:19','2015-12-21 10:24:19','admin@yes-cart.com','admin@yes-cart.com','290e6c9a-a048-46ad-afc0-99992cb78f45'),(47,1,'151221143417-57-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,46,'D1','2015-12-21 14:34:17','2015-12-21 14:34:23','admin@yes-cart.com','admin@yes-cart.com','cc7e9c3b-f82c-4689-9d15-a08920427a2e'),(48,0,'151222094211-58-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,47,'D1','2015-12-22 09:42:11','2015-12-22 09:42:11','admin@yes-cart.com','admin@yes-cart.com','546e5822-1a3a-4b4b-8d18-58575eba4268'),(53,1,'151224182220-63-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.fullfillment',15,52,'D1','2015-12-24 18:22:20','2015-12-24 18:22:32','admin@yes-cart.com','admin@yes-cart.com','26f91ad4-a97c-432f-a935-1aea8249c23a'),(57,3,'170526065714-32-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.inventory.allocated',3,56,'D1','2017-05-26 06:57:14','2017-05-26 07:00:00','anonymous','anonymous','922d4ea2-c040-4901-900c-d83d55ad6188'),(58,3,'170526070423-33-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.inventory.allocated',3,57,'D1','2017-05-26 07:04:23','2017-05-26 07:10:00','anonymous','anonymous','13be94f2-b355-4606-8cbb-1d1ec959ac58'),(61,3,'170531063934-36-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.inventory.void.reserv',15,60,'D1','2017-05-31 06:39:34','2017-05-31 06:40:22','anonymous','anonymous','daab570e-09ba-4974-b1f1-31301d4d91b3'),(62,2,'170610030254-37-0',NULL,0.00,0.00,0.00,0.00,0.00,'\0','','\0',NULL,'ds.inventory.void.reserv',3,61,'D1','2017-06-10 03:02:54','2017-06-10 03:03:38','anonymous','anonymous','50330da3-1c83-4922-b228-79c5ac283226');
/*!40000 ALTER TABLE `tcustomerorderdelivery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:55
