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
-- Table structure for table `tcarriersla`
--

DROP TABLE IF EXISTS `tcarriersla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcarriersla` (
  `CARRIERSLA_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `NAME` varchar(255) NOT NULL,
  `DISPLAYNAME` longtext,
  `DESCRIPTION` longtext,
  `DISPLAYDESCRIPTION` longtext,
  `CURRENCY` varchar(3) NOT NULL,
  `MAX_DAYS` int(11) DEFAULT NULL,
  `SLA_TYPE` varchar(1) NOT NULL,
  `PRICE` decimal(19,2) DEFAULT NULL,
  `PER_CENT` decimal(19,2) DEFAULT NULL,
  `SCRIPT` longtext,
  `PRICE_NOTLESS` decimal(19,2) DEFAULT NULL,
  `PERCENT_NOTLESS` decimal(19,2) DEFAULT NULL,
  `COST_NOTLESS` decimal(19,2) DEFAULT NULL,
  `BILLING_ADDRESS_NOT_REQUIRED` bit(1) NOT NULL,
  `DELIVERY_ADDRESS_NOT_REQUIRED` bit(1) NOT NULL,
  `SUPPORTED_PGS` varchar(255) DEFAULT NULL,
  `CARRIER_ID` bigint(20) NOT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`CARRIERSLA_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FK_CSLA_CARR` (`CARRIER_ID`),
  CONSTRAINT `FK_CSLA_CARR` FOREIGN KEY (`CARRIER_ID`) REFERENCES `tcarrier` (`CARRIER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Shipment service layer agreement. Days, distances , etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcarriersla`
--

LOCK TABLES `tcarriersla` WRITE;
/*!40000 ALTER TABLE `tcarriersla` DISABLE KEYS */;
INSERT INTO `tcarriersla` VALUES (1,1,'pro1','','','','UAH',1,'R',0.00,0.00,'',0.00,0.00,0.00,'\0','\0','testPaymentGatewayLabel',1,'2015-11-28 14:01:20','2015-11-28 19:01:43','admin@yes-cart.com','admin@yes-cart.com','d141bf0a-7340-4986-8d7a-2c785393cb0d'),(2,5,'collect from store','en#~#collect from store#~#','shop delivery','','USD',1,'R',0.00,0.00,'',0.00,0.00,0.00,'','','payPalExpressPaymentGatewayLabel,testPaymentGatewayLabel,payPalNvpPaymentGatewayLabel',2,'2015-11-28 19:05:51','2015-11-30 12:05:11','admin@yes-cart.com','admin@yes-cart.com','9daedfbc-fd09-434a-8070-ff7b1a1c027a'),(3,1,'store delivery','en#~#store delivery#~#','','','USD',0,'R',0.00,0.00,'',0.00,0.00,0.00,'','','payPalNvpPaymentGatewayLabel',3,'2015-11-28 20:12:44','2017-05-26 06:54:52','admin@yes-cart.com','admin@yes-cart.com','8852c075-39e1-42e3-ae46-8f0a8c249dff'),(4,2,'store delivery','en#~#store delivery#~#','','','USD',1,'R',0.00,0.00,'',0.00,0.00,0.00,'','','payPalExpressPaymentGatewayLabel,testPaymentGatewayLabel',2,'2015-11-28 20:15:12','2015-11-30 12:18:33','admin@yes-cart.com','admin@yes-cart.com','3062880f-9966-4d1c-be5f-9895c0514c19'),(5,0,'5-12 day USD','ru#~#5-12 дней USD#~#uk#~#5-12 днів USD#~#en#~#5-12 day USD#~#','5-12 day delivery','ru#~#доставка за 5-12 дней#~#uk#~#доставка за 5-12 днів#~#en#~#5-12 day delivery#~#','USD',12,'F',1.99,0.00,NULL,NULL,NULL,NULL,'\0','\0','testPaymentGatewayLabel,courierPaymentGatewayLabel',4,'2015-11-30 15:40:14','2015-11-30 15:40:14','admin@yes-cart.com','admin@yes-cart.com','41844e1e-aeca-4908-9b0b-4a321dc93996'),(6,0,'5-12 day UAH','ru#~#5-12 дней UAH#~#uk#~#5-12 днів UAH#~#en#~#5-12 day UAH#~#','5-12 day delivery','ru#~#доставка за 5-12 дней#~#uk#~#доставка за 5-12 днів#~#en#~#5-12 day delivery#~#','UAH',12,'F',9.99,0.00,NULL,NULL,NULL,NULL,'\0','\0','testPaymentGatewayLabel,courierPaymentGatewayLabel',4,'2015-11-30 15:50:08','2015-11-30 15:50:08','admin@yes-cart.com','admin@yes-cart.com','2d6d2411-8cde-4a6a-a537-564be8f85be3'),(7,0,'5-12 day EUR','ru#~#5-12 дней EUR#~#uk#~#5-12 днів EUR#~#en#~#5-12 day EUR#~#','5-12 day delivery','ru#~#доставка за 5-12 дней#~#uk#~#доставка за 5-12 днів#~#en#~#5-12 day delivery#~#','EUR',12,'F',0.99,0.00,NULL,NULL,NULL,NULL,'\0','\0','testPaymentGatewayLabel,courierPaymentGatewayLabel',4,'2015-11-30 15:55:43','2015-11-30 15:55:43','admin@yes-cart.com','admin@yes-cart.com','45f80b49-108f-4a6a-a372-8cd76cd7ebbf'),(8,0,'Next day USD','ru#~#1 день USD#~#uk#~#1 день USD#~#en#~#Next day USD#~#','Next day delivery','ru#~#доставка за 1 день#~#uk#~#доставка за 1 день#~#en#~#Next day delivery#~#','USD',1,'F',14.99,0.00,NULL,NULL,NULL,NULL,'\0','\0','testPaymentGatewayLabel,courierPaymentGatewayLabel',5,'2015-11-30 16:03:00','2015-11-30 16:03:00','admin@yes-cart.com','admin@yes-cart.com','56f9f4a0-21ee-492e-be38-3b73918b3d39'),(9,0,'Next day UAH','ru#~#1 день UAH#~#uk#~#1 день UAH#~#en#~#Next day UAH#~#','Next day delivery','ru#~#доставка за 1 день#~#uk#~#доставка за 1 день#~#en#~#Next day delivery#~#','UAH',1,'F',99.99,0.00,NULL,NULL,NULL,NULL,'\0','\0','testPaymentGatewayLabel,courierPaymentGatewayLabel',5,'2015-11-30 16:06:52','2015-11-30 16:06:52','admin@yes-cart.com','admin@yes-cart.com','70284c00-636f-4c6e-b790-258094bb9966'),(10,0,'Next day EUR','ru#~#1 день EUR#~#uk#~#1 день EUR#~#en#~#Next day EUR#~#','Next day delivery','ru#~#доставка за 1 день#~#uk#~#доставка за 1 день#~#en#~#Next day delivery#~#','EUR',1,'F',10.99,0.00,NULL,NULL,NULL,NULL,'\0','\0','testPaymentGatewayLabel,courierPaymentGatewayLabel',5,'2015-11-30 16:09:20','2015-11-30 16:09:20','admin@yes-cart.com','admin@yes-cart.com','e6227c7f-dec4-4b03-9602-01e4f7a60d93'),(11,0,'1-3 day USD','ru#~#1-3 дня USD#~#uk#~#1-3 дні USD#~#en#~#1-3 day USD#~#','Next day delivery','ru#~#доставка за 1-3 дня#~#uk#~#доставка за 1-3 дні#~#en#~#1-3 day delivery#~#','USD',1,'F',7.99,0.00,NULL,NULL,NULL,NULL,'\0','\0','testPaymentGatewayLabel,courierPaymentGatewayLabel',5,'2015-11-30 16:12:25','2015-11-30 16:12:25','admin@yes-cart.com','admin@yes-cart.com','d453d275-e90c-441f-a518-d82d937672f9'),(12,0,'1-3 day UAH','ru#~#1-3 дня UAH#~#uk#~#1-3 дні UAH#~#en#~#1-3 day UAH#~#','Next day delivery','ru#~#доставка за 1-3 дня#~#uk#~#доставка за 1-3 дні#~#en#~#1-3 day delivery#~#','UAH',1,'F',49.99,0.00,NULL,NULL,NULL,NULL,'\0','\0','testPaymentGatewayLabel,courierPaymentGatewayLabel',5,'2015-11-30 16:19:25','2015-11-30 16:19:25','admin@yes-cart.com','admin@yes-cart.com','fad2fec9-77dc-4d1e-913f-9ec200a04197'),(13,0,'1-3 day EUR','ru#~#1-3 дня EUR#~#uk#~#1-3 дні EUR#~#en#~#1-3 day EUR#~#','Next day delivery','ru#~#доставка за 1-3 дня#~#uk#~#доставка за 1-3 дні#~#en#~#1-3 day delivery#~#','EUR',1,'F',4.99,0.00,NULL,NULL,NULL,NULL,'\0','\0','testPaymentGatewayLabel,courierPaymentGatewayLabel',5,'2015-11-30 16:26:58','2015-11-30 16:26:58','admin@yes-cart.com','admin@yes-cart.com','2531acad-5621-4535-8d9e-2ea1641430ec'),(15,3,'collect from store','en#~#collect from store#~#','','','USD',1,'R',0.00,0.00,'',0.00,0.00,0.00,'','','testPaymentGatewayLabel,payPalNvpPaymentGatewayLabel',6,'2015-12-16 17:10:58','2015-12-24 18:15:58','admin@yes-cart.com','admin@yes-cart.com','ec4f08db-b1f6-4b5b-98b8-11d80bb74331');
/*!40000 ALTER TABLE `tcarriersla` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:23
