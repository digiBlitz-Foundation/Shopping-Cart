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
-- Table structure for table `tproductcategory`
--

DROP TABLE IF EXISTS `tproductcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproductcategory` (
  `PRODUCTCATEGORY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `PRODUCT_ID` bigint(20) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `RANK` int(11) DEFAULT NULL COMMENT 'What the default order of particular product in partcular category',
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`PRODUCTCATEGORY_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FK_PC_CAT` (`CATEGORY_ID`),
  KEY `FK_PC_PRODUCT` (`PRODUCT_ID`),
  CONSTRAINT `FK_PC_CAT` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `tcategory` (`CATEGORY_ID`),
  CONSTRAINT `FK_PC_PRODUCT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `tproduct` (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductcategory`
--

LOCK TABLES `tproductcategory` WRITE;
/*!40000 ALTER TABLE `tproductcategory` DISABLE KEYS */;
INSERT INTO `tproductcategory` VALUES (289,0,283,10483,0,'2015-12-18 15:15:16','2015-12-18 15:15:16','admin@yes-cart.com','admin@yes-cart.com','641e764e-aa2c-4983-aab1-ee094361cafd'),(290,0,284,10483,0,'2015-12-18 15:15:27','2015-12-18 15:15:27','admin@yes-cart.com','admin@yes-cart.com','f628e7bf-c35d-436a-a90b-894f29ab7af8'),(291,0,285,10483,0,'2015-12-18 15:15:43','2015-12-18 15:15:43','admin@yes-cart.com','admin@yes-cart.com','ba5a336a-b0ec-46a9-80f7-3cc3010fa636'),(292,0,286,10483,0,'2015-12-18 15:15:54','2015-12-18 15:15:54','admin@yes-cart.com','admin@yes-cart.com','94e1b3dc-ce99-48ea-b41a-0cd05ade7398'),(293,0,287,10483,0,'2015-12-18 15:16:10','2015-12-18 15:16:10','admin@yes-cart.com','admin@yes-cart.com','c7b10028-b248-4f83-8fe9-5ff873ae1a23'),(294,0,291,10483,0,'2015-12-18 15:17:47','2015-12-18 15:17:47','admin@yes-cart.com','admin@yes-cart.com','9df8b359-332a-4752-95e4-c8cd301a90ed'),(295,0,292,10484,0,'2015-12-18 16:26:46','2015-12-18 16:26:46','admin@yes-cart.com','admin@yes-cart.com','d9b0b1a8-9d1c-44d9-9794-95eadbacc1fa'),(296,0,293,10484,0,'2015-12-18 16:28:25','2015-12-18 16:28:25','admin@yes-cart.com','admin@yes-cart.com','54ce76de-0c9d-4b31-8634-6d1e9eec382e'),(297,0,294,10484,0,'2015-12-18 16:29:28','2015-12-18 16:29:28','admin@yes-cart.com','admin@yes-cart.com','9de5ccf9-6c70-4f8c-a31f-d62e1dde174b'),(298,0,295,10485,0,'2015-12-18 16:30:41','2015-12-18 16:30:41','admin@yes-cart.com','admin@yes-cart.com','8d30444b-6077-42b3-856d-80f3973fd082'),(299,0,296,10486,0,'2015-12-18 16:32:14','2015-12-18 16:32:14','admin@yes-cart.com','admin@yes-cart.com','b57ae328-fc0c-4900-b33e-8fae088ec85f'),(300,0,297,10486,0,'2015-12-18 16:33:36','2015-12-18 16:33:36','admin@yes-cart.com','admin@yes-cart.com','65ce5ffe-77e9-40db-9e20-d938ff8a5abc'),(301,0,298,10486,0,'2015-12-18 16:34:41','2015-12-18 16:34:41','admin@yes-cart.com','admin@yes-cart.com','4b869a21-06be-45ac-b290-397503429861'),(302,0,299,10487,0,'2015-12-18 16:36:15','2015-12-18 16:36:15','admin@yes-cart.com','admin@yes-cart.com','17da2000-9174-405f-bbe6-7bb02e6cf18d'),(303,0,300,10487,0,'2015-12-18 16:37:09','2015-12-18 16:37:09','admin@yes-cart.com','admin@yes-cart.com','a8b8006b-ae50-4da7-9e7b-30d19b2c6d76'),(306,0,303,10493,0,'2015-12-21 11:27:33','2015-12-21 11:27:33','admin@yes-cart.com','admin@yes-cart.com','8f16edb4-6b87-46cb-96aa-0d8ca0336a2b'),(307,0,304,10493,0,'2015-12-21 11:29:00','2015-12-21 11:29:00','admin@yes-cart.com','admin@yes-cart.com','08800685-5b16-4376-9e96-e904cd4a6323'),(308,0,305,10493,0,'2015-12-21 11:30:12','2015-12-21 11:30:12','admin@yes-cart.com','admin@yes-cart.com','b25f168a-c001-4ccd-ae5a-60e3dbef9da5'),(309,0,306,10493,0,'2015-12-21 11:32:17','2015-12-21 11:32:17','admin@yes-cart.com','admin@yes-cart.com','72a0071f-e4fa-4ab7-95ac-33e29de213b9'),(310,0,307,10494,0,'2015-12-21 11:35:29','2015-12-21 11:35:29','admin@yes-cart.com','admin@yes-cart.com','f1207d5d-6248-4163-ad5d-4ac196497766'),(311,0,308,10494,0,'2015-12-21 11:37:41','2015-12-21 11:37:41','admin@yes-cart.com','admin@yes-cart.com','c637f571-5041-4ba5-903f-9da3debf8c76'),(312,0,309,10494,0,'2015-12-21 11:58:06','2015-12-21 11:58:06','admin@yes-cart.com','admin@yes-cart.com','8c803094-f594-4fd6-96af-ef30abe0cfa3'),(313,0,310,10495,0,'2015-12-21 11:59:28','2015-12-21 11:59:28','admin@yes-cart.com','admin@yes-cart.com','1648ad38-642b-46f4-a014-52ac2799c938'),(314,0,311,10496,0,'2015-12-21 12:01:07','2015-12-21 12:01:07','admin@yes-cart.com','admin@yes-cart.com','1c691e41-ef50-4734-b8f3-c78a4e2f722f'),(315,0,312,10496,0,'2015-12-21 12:02:32','2015-12-21 12:02:32','admin@yes-cart.com','admin@yes-cart.com','5503fdca-7d7b-4d50-8759-2c21ff5ef5e0'),(316,0,313,10496,0,'2015-12-21 12:03:40','2015-12-21 12:03:40','admin@yes-cart.com','admin@yes-cart.com','612be7d6-f3e2-431a-85f3-42cde9c54713'),(317,0,314,10497,0,'2015-12-21 12:04:47','2015-12-21 12:04:47','admin@yes-cart.com','admin@yes-cart.com','57a84cd9-250c-48bc-905e-f5758bf2c2a8'),(318,0,315,10497,0,'2015-12-21 12:05:47','2015-12-21 12:05:47','admin@yes-cart.com','admin@yes-cart.com','eb156bfb-77bf-423b-ab2a-fe8e445cfca4'),(319,0,316,10504,0,'2015-12-21 13:55:54','2015-12-21 13:55:54','admin@yes-cart.com','admin@yes-cart.com','9b12b0d4-ce5c-4813-a82e-336fcc609716'),(320,0,317,10504,0,'2015-12-21 13:57:00','2015-12-21 13:57:00','admin@yes-cart.com','admin@yes-cart.com','3e00d7b6-c8a0-4bd7-bca2-666af34ef758'),(321,0,318,10504,0,'2015-12-21 13:57:50','2015-12-21 13:57:50','admin@yes-cart.com','admin@yes-cart.com','ccf442d5-1859-4384-92b0-a565e0ceba1a'),(322,0,319,10504,0,'2015-12-21 13:59:20','2015-12-21 13:59:20','admin@yes-cart.com','admin@yes-cart.com','e5f19c0f-a864-4266-9c5b-4b9cbbd85721'),(323,0,320,10505,0,'2015-12-21 14:01:11','2015-12-21 14:01:11','admin@yes-cart.com','admin@yes-cart.com','53c556d8-2feb-4402-8d41-a92852943402'),(324,0,321,10505,0,'2015-12-21 14:02:04','2015-12-21 14:02:04','admin@yes-cart.com','admin@yes-cart.com','d7260358-791f-44df-bca8-061fc64dc33c'),(325,0,322,10505,0,'2015-12-21 14:03:10','2015-12-21 14:03:10','admin@yes-cart.com','admin@yes-cart.com','64cca545-fa7c-4f24-923d-0660c6e40142'),(326,0,323,10506,0,'2015-12-21 14:24:11','2015-12-21 14:24:11','admin@yes-cart.com','admin@yes-cart.com','a018333d-725f-4690-9e82-5e66062ba76a'),(327,0,324,10507,0,'2015-12-21 14:25:19','2015-12-21 14:25:19','admin@yes-cart.com','admin@yes-cart.com','ec57d21d-c29b-44f8-a323-86f2fefe4852'),(328,0,325,10507,0,'2015-12-21 14:27:18','2015-12-21 14:27:18','admin@yes-cart.com','admin@yes-cart.com','0570164f-9cc6-4ddd-baa8-3c1336292f8e'),(329,0,326,10507,0,'2015-12-21 14:28:10','2015-12-21 14:28:10','admin@yes-cart.com','admin@yes-cart.com','e591b724-33f1-45b7-ad6e-2a00882d8a9d'),(330,0,327,10508,0,'2015-12-21 14:29:30','2015-12-21 14:29:30','admin@yes-cart.com','admin@yes-cart.com','c9cfff1e-ced6-4e19-99a9-83badcd634ab'),(332,0,328,10498,0,'2015-12-22 09:19:35','2015-12-22 09:19:35','admin@yes-cart.com','admin@yes-cart.com','41a34ad8-d628-4234-823a-6757ffce1d18'),(333,0,329,10498,0,'2015-12-22 09:21:04','2015-12-22 09:21:04','admin@yes-cart.com','admin@yes-cart.com','ac4e1e8f-7996-4073-bf95-b4d14250d6d0'),(334,0,330,10498,0,'2015-12-22 09:22:28','2015-12-22 09:22:28','admin@yes-cart.com','admin@yes-cart.com','ea08ca6e-e32f-48de-a91e-d90368944010'),(335,0,331,10498,0,'2015-12-22 09:23:33','2015-12-22 09:23:33','admin@yes-cart.com','admin@yes-cart.com','8798451e-699b-49b7-9fd6-6ce215f688f5'),(336,0,332,10499,0,'2015-12-22 10:03:47','2015-12-22 10:03:47','admin@yes-cart.com','admin@yes-cart.com','8eb5f84e-a654-42fe-a1a1-10c694a647f4'),(337,0,333,10499,0,'2015-12-22 10:05:30','2015-12-22 10:05:30','admin@yes-cart.com','admin@yes-cart.com','aaf8a732-f6eb-48d0-848a-c779ac377a26'),(338,0,334,10499,0,'2015-12-22 10:06:36','2015-12-22 10:06:36','admin@yes-cart.com','admin@yes-cart.com','9cf36e79-f31e-4ec0-9aa7-60a7a72fe9c7'),(339,0,335,10500,0,'2015-12-22 10:08:15','2015-12-22 10:08:15','admin@yes-cart.com','admin@yes-cart.com','9de0641f-69b1-4bcf-af9a-811689545851'),(340,0,336,10501,0,'2015-12-22 10:09:49','2015-12-22 10:09:49','admin@yes-cart.com','admin@yes-cart.com','976176ca-29d0-463a-a239-300b13811ba4'),(341,0,337,10501,0,'2015-12-22 10:11:53','2015-12-22 10:11:53','admin@yes-cart.com','admin@yes-cart.com','7beb717e-5eba-4e9e-ae8d-f53e0ce39051'),(342,0,338,10501,0,'2015-12-22 10:13:19','2015-12-22 10:13:19','admin@yes-cart.com','admin@yes-cart.com','286a8bc3-cdc4-42d5-bdfe-cc52722894fd'),(343,0,339,10502,0,'2015-12-22 10:14:43','2015-12-22 10:14:43','admin@yes-cart.com','admin@yes-cart.com','35b473fd-d4d3-40f3-b039-262a48613c34'),(344,0,340,10502,0,'2015-12-22 10:15:56','2015-12-22 10:15:56','admin@yes-cart.com','admin@yes-cart.com','d7dedf47-bf6a-40d7-a3f1-90777c4ce1ce'),(345,0,341,10508,0,'2015-12-22 11:10:59','2015-12-22 11:10:59','admin@yes-cart.com','admin@yes-cart.com','2419e1d9-5bb8-4458-8d18-de50cb01430a'),(346,0,342,10512,0,'2017-05-26 04:32:33','2017-05-26 04:32:33','admin@yes-cart.com','admin@yes-cart.com','9e64361f-34de-4114-a0f2-acd59e89b347'),(347,0,343,10513,0,'2017-05-26 04:58:26','2017-05-26 04:58:26','admin@yes-cart.com','admin@yes-cart.com','7193e263-46fa-4153-8ff0-8efc397a543d'),(348,0,344,10520,0,'2017-05-26 05:49:12','2017-05-26 05:49:12','admin@yes-cart.com','admin@yes-cart.com','798c52a8-2826-435f-89ac-332c702da031'),(349,0,345,10520,0,'2017-05-26 06:19:24','2017-05-26 06:19:24','admin@yes-cart.com','admin@yes-cart.com','fa5d6d68-48a0-4260-8c10-39e4c1ada07c'),(350,0,346,10520,0,'2017-05-26 06:30:37','2017-05-26 06:30:37','admin@yes-cart.com','admin@yes-cart.com','cfabb947-5d74-4612-ad0c-b4712e8ea5f2'),(351,0,349,10522,0,'2017-05-26 06:40:35','2017-05-26 06:40:35','admin@yes-cart.com','admin@yes-cart.com','84ca80f9-4bec-480d-b9b9-5f538afbae6f'),(352,0,350,10522,0,'2017-05-26 06:45:13','2017-05-26 06:45:13','admin@yes-cart.com','admin@yes-cart.com','bd02ece1-8d35-43f7-8894-2a1aa1893fe2'),(353,0,351,10522,0,'2017-05-26 06:47:21','2017-05-26 06:47:21','admin@yes-cart.com','admin@yes-cart.com','7243ecb6-b140-498b-8f9d-f92889e0168e'),(354,0,352,10523,0,'2017-05-26 06:57:15','2017-05-26 06:57:15','admin@yes-cart.com','admin@yes-cart.com','61fe7dae-45ca-4c34-a47e-e6da47d3f8cf'),(356,0,354,10525,0,'2017-05-26 07:14:40','2017-05-26 07:14:40','admin@yes-cart.com','admin@yes-cart.com','918757e6-6f7c-48c5-a1db-f74bcda325db'),(357,0,355,10525,0,'2017-05-26 07:18:51','2017-05-26 07:18:51','admin@yes-cart.com','admin@yes-cart.com','0cbf4435-9fa2-4b36-9cfc-a1c812ab3067'),(358,0,356,10525,0,'2017-05-26 07:21:24','2017-05-26 07:21:24','admin@yes-cart.com','admin@yes-cart.com','3569537f-9b34-40fb-ba8f-0a3277a35ca9'),(359,0,357,10526,0,'2017-05-26 07:26:10','2017-05-26 07:26:10','admin@yes-cart.com','admin@yes-cart.com','6cb107b2-0c63-4cd3-a382-843470dd0f8a'),(360,0,358,10526,0,'2017-05-26 07:28:47','2017-05-26 07:28:47','admin@yes-cart.com','admin@yes-cart.com','27ec3e2b-b785-41e8-a7ac-56e67b1572f8');
/*!40000 ALTER TABLE `tproductcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:05
