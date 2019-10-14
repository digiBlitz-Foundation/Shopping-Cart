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
-- Table structure for table `tcustomerorder`
--

DROP TABLE IF EXISTS `tcustomerorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcustomerorder` (
  `CUSTOMERORDER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `PG_LABEL` varchar(255) DEFAULT NULL COMMENT 'Payment gateway label',
  `ORDERNUM` varchar(255) DEFAULT NULL COMMENT 'Depends from order num producer.',
  `CART_GUID` varchar(36) NOT NULL,
  `CURRENCY` varchar(3) NOT NULL,
  `LOCALE` varchar(5) NOT NULL,
  `PRICE` decimal(19,2) NOT NULL,
  `LIST_PRICE` decimal(19,2) NOT NULL,
  `NET_PRICE` decimal(19,2) NOT NULL,
  `GROSS_PRICE` decimal(19,2) NOT NULL,
  `IS_PROMO_APPLIED` bit(1) NOT NULL DEFAULT b'0',
  `APPLIED_PROMO` varchar(255) DEFAULT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL COMMENT 'Free text information per each order. Can be whatever',
  `ORDERSTATUS` varchar(64) NOT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `SHOP_ID` bigint(20) NOT NULL,
  `BILL_ADDRESS_ID` bigint(20) DEFAULT NULL,
  `SHIP_ADDRESS_ID` bigint(20) DEFAULT NULL,
  `BILLING_ADDRESS` varchar(255) DEFAULT NULL COMMENT 'Address composed for billing',
  `SHIPPING_ADDRESS` varchar(255) DEFAULT NULL COMMENT 'Shipping address',
  `MULTIPLE_SHIPMENT` bit(1) DEFAULT b'0' COMMENT 'Wait for all skus in case of not all available.',
  `ORDER_TIMESTAMP` datetime NOT NULL,
  `ORDER_IP` varchar(45) DEFAULT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`CUSTOMERORDER_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FK_ORDER_SHOP` (`SHOP_ID`),
  KEY `FK_ORDER_CUSTOMER` (`CUSTOMER_ID`),
  KEY `CUSTOMERORDER_NUM` (`ORDERNUM`),
  KEY `CUSTOMERORDER_CART` (`CART_GUID`),
  KEY `FK_ORDER_BILLADDR` (`BILL_ADDRESS_ID`),
  KEY `FK_ORDER_SHIPADDR` (`SHIP_ADDRESS_ID`),
  CONSTRAINT `FK_ORDER_BILLADDR` FOREIGN KEY (`BILL_ADDRESS_ID`) REFERENCES `taddress` (`ADDRESS_ID`),
  CONSTRAINT `FK_ORDER_CUSTOMER` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `tcustomer` (`CUSTOMER_ID`),
  CONSTRAINT `FK_ORDER_SHIPADDR` FOREIGN KEY (`SHIP_ADDRESS_ID`) REFERENCES `taddress` (`ADDRESS_ID`),
  CONSTRAINT `FK_ORDER_SHOP` FOREIGN KEY (`SHOP_ID`) REFERENCES `tshop` (`SHOP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcustomerorder`
--

LOCK TABLES `tcustomerorder` WRITE;
/*!40000 ALTER TABLE `tcustomerorder` DISABLE KEYS */;
INSERT INTO `tcustomerorder` VALUES (2,3,'testPaymentGatewayLabel','151216144127-2','f9f2c3b3-57a1-4fd3-a36c-7a5daa29a684','EUR','en',5055.58,5205.58,4212.97,5055.58,'','SHOP10EURORD150F',NULL,'os.in.progress',7,10,5,6,'zxvbvbzx xvbvzbv xvbxbvz zxvbzxbx HU Magyarország, asfdesf  gfdgdfg, fdgfdgs  ','xbzxbb xvzbxvzbxb xzvbzxvbbz xvbxvbxv HK Hong Kong, asfdesf  gfdgdfg, fdgfdgs  ','\0','2015-12-16 14:41:27','192.168.1.234','2015-12-16 14:41:28','2015-12-16 14:42:07','admin@yes-cart.com','admin@yes-cart.com','f9f2c3b3-57a1-4fd3-a36c-7a5daa29a684'),(7,2,'testPaymentGatewayLabel','151216161257-7','c834eb71-deec-4fad-9fb3-08b3ca9a51cd','EUR','en',4003.31,4235.25,3336.08,4003.31,'','SHOP10EURORD150F',NULL,'os.in.progress',8,10,16,17,'adfdsafasfds dsafsfdfdsfa sdgfdsfsdfdsf dsfdsfdsfdsf IM Isle of Man, dffdsgfg  dgfhghfs, jhghsd  ','dsfdsfa dsfsafsdfs fsdfadsf sdfdsfdsafsf AU Australia, dffdsgfg  dgfhghfs, jhghsd  ','\0','2015-12-16 16:12:57','192.168.1.234','2015-12-16 16:12:57','2015-12-16 16:13:11','admin@yes-cart.com','admin@yes-cart.com','c834eb71-deec-4fad-9fb3-08b3ca9a51cd'),(10,2,'testPaymentGatewayLabel','151216162824-10','7b6fea19-4d0e-49e0-af5d-72c8b43ac3e5','EUR','en',2231.81,2381.81,1859.83,2231.81,'','SHOP10EURORD150F',NULL,'os.in.progress',8,10,20,21,'dsfdsfa dsfsafsdfs fsdfadsf sdfdsfdsafsf AU Australia, dffdsgfg  dgfhghfs, jhghsd  ','dsfdsfa dsfsafsdfs fsdfadsf sdfdsfdsafsf AU Australia, dffdsgfg  dgfhghfs, jhghsd  ','\0','2015-12-16 16:28:24','192.168.1.234','2015-12-16 16:28:24','2015-12-16 16:29:15','admin@yes-cart.com','admin@yes-cart.com','7b6fea19-4d0e-49e0-af5d-72c8b43ac3e5'),(11,2,'testPaymentGatewayLabel','151216171314-11','48f4a78f-4402-4350-be7b-2a1061820fde','USD','en',0.00,0.00,0.00,0.00,'\0',NULL,NULL,'os.in.progress',10,10,NULL,NULL,'','','\0','2015-12-16 17:13:14','192.168.1.234','2015-12-16 17:13:14','2015-12-16 17:14:26','admin@yes-cart.com','admin@yes-cart.com','48f4a78f-4402-4350-be7b-2a1061820fde'),(12,2,'testPaymentGatewayLabel','151217092638-19','3c060f6c-0e97-4cd0-a362-e75853076cb2','EUR','en',506.53,556.53,422.10,506.53,'','SHOP10EURORD50F',NULL,'os.in.progress',16,10,24,24,'fwretgfsg fgafgfg fggdfg afgfagf AU Australia, fdsgfdsg  afgfag, fgfaggf  ','fwretgfsg fgafgfg fggdfg afgfagf AU Australia, fdsgfdsg  afgfag, fgfaggf  ','\0','2015-12-17 09:26:38','192.168.1.234','2015-12-17 09:26:38','2015-12-17 09:26:49','admin@yes-cart.com','admin@yes-cart.com','3c060f6c-0e97-4cd0-a362-e75853076cb2'),(14,2,'testPaymentGatewayLabel','151217094814-21','37888c7f-5d0d-45e1-b98c-cd659fcfdb20','USD','en',1870.36,1970.36,1558.63,1870.36,'','SHOP10USDORD100F',NULL,'os.in.progress',16,10,26,26,'fwretgfsg fgafgfg fggdfg afgfagf AU Australia, fdsgfdsg  afgfag, fgfaggf  ','fwretgfsg fgafgfg fggdfg afgfagf AU Australia, fdsgfdsg  afgfag, fgfaggf  ','\0','2015-12-17 09:48:14','192.168.1.234','2015-12-17 09:48:14','2015-12-17 09:48:25','admin@yes-cart.com','admin@yes-cart.com','37888c7f-5d0d-45e1-b98c-cd659fcfdb20'),(21,2,'testPaymentGatewayLabel','151217103319-28','c251022f-8086-4747-9422-b7a25900dc11','USD','en',240.00,240.00,200.00,240.00,'\0',NULL,NULL,'os.in.progress',6,10,33,33,'vgn ghj 1234 gjhn AU Australia, kjdhffds  sgsgadg, sdgsf  ','vgn ghj 1234 gjhn AU Australia, kjdhffds  sgsgadg, sdgsf  ','\0','2015-12-17 10:33:19','192.168.1.234','2015-12-17 10:33:19','2015-12-17 10:38:19','admin@yes-cart.com','admin@yes-cart.com','c251022f-8086-4747-9422-b7a25900dc11'),(22,0,NULL,'151217104039-29','efb7ae8d-5325-4cb7-82d7-acc6d6cfc640','USD','en',120.00,120.00,100.00,120.00,'\0',NULL,NULL,'os.none',6,10,34,34,'vgn ghj 1234 gjhn AU Australia, kjdhffds  sgsgadg, sdgsf  ','vgn ghj 1234 gjhn AU Australia, kjdhffds  sgsgadg, sdgsf  ','\0','2015-12-17 10:40:39','192.168.1.234','2015-12-17 10:40:39','2015-12-17 10:40:39','admin@yes-cart.com','admin@yes-cart.com','efb7ae8d-5325-4cb7-82d7-acc6d6cfc640'),(24,2,'testPaymentGatewayLabel','151217121249-33','e37bf7c7-eb55-424d-9e1c-47f55dc27425','USD','en',140.00,150.00,140.00,140.00,'\0',NULL,NULL,'os.in.progress',17,14,NULL,NULL,'','','\0','2015-12-17 12:12:49','192.168.1.234','2015-12-17 12:12:49','2015-12-17 12:20:12','admin@yes-cart.com','admin@yes-cart.com','e37bf7c7-eb55-424d-9e1c-47f55dc27425'),(27,0,NULL,'151217124336-36','f8723ea7-615e-4452-88ad-9d3d885caca6','USD','en',280.00,300.00,280.00,280.00,'\0',NULL,NULL,'os.none',18,14,NULL,NULL,'','','\0','2015-12-17 12:43:36','192.168.1.234','2015-12-17 12:43:36','2015-12-17 12:43:36','admin@yes-cart.com','admin@yes-cart.com','f8723ea7-615e-4452-88ad-9d3d885caca6'),(30,0,NULL,'151217125040-39','36dde22a-2c43-47c9-8751-4d9a14b63c07','USD','en',140.00,150.00,140.00,140.00,'\0',NULL,NULL,'os.none',19,14,NULL,NULL,'','','\0','2015-12-17 12:50:40','192.168.1.234','2015-12-17 12:50:40','2015-12-17 12:50:40','admin@yes-cart.com','admin@yes-cart.com','36dde22a-2c43-47c9-8751-4d9a14b63c07'),(31,2,'testPaymentGatewayLabel','151217145858-41','bad3aa92-7e01-4af6-ac6a-c61266357c85','USD','en',140.00,150.00,140.00,140.00,'\0',NULL,NULL,'os.in.progress',20,14,NULL,NULL,'','','\0','2015-12-17 14:58:58','192.168.1.1','2015-12-17 14:58:58','2015-12-17 14:59:09','admin@yes-cart.com','admin@yes-cart.com','bad3aa92-7e01-4af6-ac6a-c61266357c85'),(32,2,'testPaymentGatewayLabel','151217150405-42','a94dcc0c-9137-4aa8-84e1-5460be02628e','USD','en',420.00,450.00,420.00,420.00,'\0',NULL,NULL,'os.in.progress',20,14,NULL,NULL,'','','\0','2015-12-17 15:04:05','192.168.1.1','2015-12-17 15:04:05','2015-12-17 15:04:32','admin@yes-cart.com','admin@yes-cart.com','a94dcc0c-9137-4aa8-84e1-5460be02628e'),(33,2,'testPaymentGatewayLabel','151217150856-43','38f606d7-5bb6-4051-b9f5-887f1a026526','USD','en',280.00,300.00,280.00,280.00,'\0',NULL,NULL,'os.in.progress',20,14,NULL,NULL,'','','\0','2015-12-17 15:08:56','192.168.1.1','2015-12-17 15:08:56','2015-12-17 15:09:08','admin@yes-cart.com','admin@yes-cart.com','38f606d7-5bb6-4051-b9f5-887f1a026526'),(34,2,'testPaymentGatewayLabel','151217155530-44','465bfb5c-5fe5-4fd0-9e59-adcfe605cb63','USD','en',140.00,150.00,140.00,140.00,'\0',NULL,NULL,'os.in.progress',21,14,NULL,NULL,'','','\0','2015-12-17 15:55:30','192.168.1.1','2015-12-17 15:55:30','2015-12-17 15:56:15','admin@yes-cart.com','admin@yes-cart.com','465bfb5c-5fe5-4fd0-9e59-adcfe605cb63'),(35,2,'testPaymentGatewayLabel','151217160858-45','4345da23-9fb1-4fa9-8177-863cc32b0999','USD','en',140.00,150.00,140.00,140.00,'\0',NULL,NULL,'os.in.progress',22,14,NULL,NULL,'','','\0','2015-12-17 16:08:58','192.168.1.1','2015-12-17 16:08:58','2015-12-17 16:09:32','admin@yes-cart.com','admin@yes-cart.com','4345da23-9fb1-4fa9-8177-863cc32b0999'),(37,0,NULL,'151217162230-48','bf0234ff-c8b6-4ec3-a195-6185c03a03d9','USD','en',140.00,150.00,140.00,140.00,'\0',NULL,NULL,'os.none',23,14,NULL,NULL,'','','\0','2015-12-17 16:22:30','192.168.1.1','2015-12-17 16:22:30','2015-12-17 16:22:30','admin@yes-cart.com','admin@yes-cart.com','bf0234ff-c8b6-4ec3-a195-6185c03a03d9'),(38,0,NULL,'151217185619-49','f9e04de1-4b91-4bd2-8558-f48ef582849c','USD','en',140.00,150.00,140.00,140.00,'\0',NULL,NULL,'os.none',4,14,NULL,NULL,'','','\0','2015-12-17 18:56:19','192.168.1.1','2015-12-17 18:56:19','2015-12-17 18:56:19','anonymous','anonymous','f9e04de1-4b91-4bd2-8558-f48ef582849c'),(39,2,'testPaymentGatewayLabel','151218093007-50','73f88874-f6a0-487d-9eb4-31d66ccf3de5','USD','en',140.00,150.00,140.00,140.00,'\0',NULL,NULL,'os.in.progress',24,14,NULL,NULL,'','','\0','2015-12-18 09:30:07','192.168.1.1','2015-12-18 09:30:07','2015-12-18 09:30:24','admin@yes-cart.com','admin@yes-cart.com','73f88874-f6a0-487d-9eb4-31d66ccf3de5'),(40,0,NULL,'151218133143-51','11630917-2648-4fff-85ea-d6b42f114c5b','USD','en',50.00,50.00,50.00,50.00,'\0',NULL,NULL,'os.none',25,11,NULL,NULL,'','','\0','2015-12-18 13:31:43','192.168.1.1','2015-12-18 13:31:43','2015-12-18 13:31:43','admin@yes-cart.com','admin@yes-cart.com','11630917-2648-4fff-85ea-d6b42f114c5b'),(42,2,'testPaymentGatewayLabel','151218160857-53','c8a84161-700c-42b9-ab81-7fbed7c59b02','USD','en',610.00,610.00,610.00,610.00,'\0',NULL,NULL,'os.in.progress',4,11,NULL,NULL,'','','\0','2015-12-18 16:08:57','192.168.1.1','2015-12-18 16:08:57','2015-12-18 16:09:14','admin@yes-cart.com','admin@yes-cart.com','c8a84161-700c-42b9-ab81-7fbed7c59b02'),(45,0,NULL,'151221102418-56','69788876-df1b-4f4a-b151-721dabbf2431','USD','en',240.00,240.00,240.00,240.00,'\0',NULL,NULL,'os.none',4,11,NULL,NULL,'','','\0','2015-12-21 10:24:18','192.168.1.1','2015-12-21 10:24:19','2015-12-21 10:24:19','admin@yes-cart.com','admin@yes-cart.com','69788876-df1b-4f4a-b151-721dabbf2431'),(46,1,'testPaymentGatewayLabel','151221143417-57','2ec98472-434e-4459-be9f-fa84ebfa4178','USD','en',4999.00,4999.00,4999.00,4999.00,'\0',NULL,NULL,'os.none',4,13,NULL,NULL,'','','\0','2015-12-21 14:34:17','192.168.1.1','2015-12-21 14:34:17','2015-12-21 14:34:23','admin@yes-cart.com','admin@yes-cart.com','2ec98472-434e-4459-be9f-fa84ebfa4178'),(47,0,NULL,'151222094211-58','a63a6541-2473-4b91-a701-360060291f9c','USD','en',200.00,200.00,200.00,200.00,'\0',NULL,NULL,'os.none',4,17,NULL,NULL,'','','\0','2015-12-22 09:42:11','192.168.1.1','2015-12-22 09:42:11','2015-12-22 09:42:11','admin@yes-cart.com','admin@yes-cart.com','a63a6541-2473-4b91-a701-360060291f9c'),(52,1,'payPalNvpPaymentGatewayLabel','151224182220-63','fba3d8bb-95b1-47f4-8689-e1731b4bdb1e','USD','en',80.00,80.00,80.00,80.00,'\0',NULL,NULL,'os.none',28,11,NULL,NULL,'','','\0','2015-12-24 18:22:20','192.168.1.234','2015-12-24 18:22:20','2015-12-24 18:22:32','admin@yes-cart.com','admin@yes-cart.com','fba3d8bb-95b1-47f4-8689-e1731b4bdb1e'),(56,2,'payPalNvpPaymentGatewayLabel','170526065714-32','79d10179-460d-4647-b05a-d8e40237b2f3','USD','en',50.00,50.00,50.00,50.00,'\0',NULL,NULL,'os.in.progress',31,18,39,39,'4/18 North street, Naduvapatti,  627713 Thirunelveli US TX, Jeyaprakash  s, 09659639423  ','4/18 North street, Naduvapatti,  627713 Thirunelveli US TX, Jeyaprakash  s, 09659639423  ','\0','2017-05-26 06:57:14','27.250.29.139','2017-05-26 06:57:14','2017-05-26 06:58:37','anonymous','anonymous','79d10179-460d-4647-b05a-d8e40237b2f3'),(57,2,'payPalNvpPaymentGatewayLabel','170526070423-33','bc103a54-d7a5-414e-a5e0-ebc940a52f0c','USD','en',50.00,50.00,50.00,50.00,'\0',NULL,NULL,'os.in.progress',31,18,40,40,'4/18 North street, Naduvapatti,  627713 Thirunelveli US TX, Jeyaprakash  s, 09659639423  ','4/18 North street, Naduvapatti,  627713 Thirunelveli US TX, Jeyaprakash  s, 09659639423  ','\0','2017-05-26 07:04:23','27.250.29.139','2017-05-26 07:04:23','2017-05-26 07:05:16','anonymous','anonymous','bc103a54-d7a5-414e-a5e0-ebc940a52f0c'),(60,3,'payPalNvpPaymentGatewayLabel','170531063934-36','e64c5986-d1c4-46d4-8173-54e30c06bf4b','USD','en',200.00,200.00,200.00,200.00,'\0',NULL,NULL,'os.cancelled',33,18,NULL,NULL,'','','\0','2017-05-31 06:39:34','27.250.29.139','2017-05-31 06:39:34','2017-05-31 06:40:22','anonymous','anonymous','e64c5986-d1c4-46d4-8173-54e30c06bf4b'),(61,2,'payPalNvpPaymentGatewayLabel','170610030254-37','6188240b-8930-48cb-8d96-7ac02754a326','USD','en',50.00,50.00,50.00,50.00,'\0',NULL,NULL,'os.cancelled',36,18,NULL,NULL,'','','\0','2017-06-10 03:02:54','106.51.1.207','2017-06-10 03:02:54','2017-06-10 03:03:38','anonymous','anonymous','6188240b-8930-48cb-8d96-7ac02754a326');
/*!40000 ALTER TABLE `tcustomerorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:08
