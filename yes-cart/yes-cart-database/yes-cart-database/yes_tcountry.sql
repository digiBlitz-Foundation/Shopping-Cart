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
-- Table structure for table `tcountry`
--

DROP TABLE IF EXISTS `tcountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcountry` (
  `COUNTRY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `COUNTRY_CODE` varchar(2) NOT NULL,
  `ISO_CODE` varchar(3) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `DISPLAYNAME` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  UNIQUE KEY `GUID` (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='List of supported countries.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcountry`
--

LOCK TABLES `tcountry` WRITE;
/*!40000 ALTER TABLE `tcountry` DISABLE KEYS */;
INSERT INTO `tcountry` VALUES (1,1,'US','840','United States','United States','2015-11-30 11:42:53','2015-11-30 15:35:05','admin@yes-cart.com','admin@yes-cart.com','8a69dbae-e15d-4a57-8883-e21b83c21db7'),(2,0,'AU','036','Australia','Australia','2015-11-30 15:33:23','2015-11-30 15:33:23','admin@yes-cart.com','admin@yes-cart.com','041a91a1-1128-4a77-ac15-d80915231095'),(3,0,'AT','040','Austria','Austria','2015-11-30 15:33:28','2015-11-30 15:33:28','admin@yes-cart.com','admin@yes-cart.com','05240cac-b894-4c02-a2ef-4f05cd966494'),(4,0,'BE','056','België','België','2015-11-30 15:33:35','2015-11-30 15:33:35','admin@yes-cart.com','admin@yes-cart.com','832cb382-7439-4bd6-a965-29784fb756b7'),(5,0,'BG','100','България','България','2015-11-30 15:33:39','2015-11-30 15:33:39','admin@yes-cart.com','admin@yes-cart.com','f8fb4dd7-8152-41ee-b28f-6f030757bc53'),(6,0,'CA','124','Canada','Canada','2015-11-30 15:33:43','2015-11-30 15:33:43','admin@yes-cart.com','admin@yes-cart.com','3049c4c7-9699-4755-b1ba-eaca8574ca41'),(7,0,'CN','156','中国 (中华人民共和国)','中国 (中华人民共和国)','2015-11-30 15:33:48','2015-11-30 15:33:48','admin@yes-cart.com','admin@yes-cart.com','9794ea4c-d2ef-4364-bc90-b93e2ea5e996'),(8,0,'HR','191','Hrvatska','Hrvatska','2015-11-30 15:33:53','2015-11-30 15:33:53','admin@yes-cart.com','admin@yes-cart.com','747e9a82-5060-4313-b886-58d6b39c487e'),(9,0,'CY','196','Κύπρος','Κύπρος','2015-11-30 15:33:57','2015-11-30 15:33:57','admin@yes-cart.com','admin@yes-cart.com','69ffce2b-b3d1-48ee-a8cd-0e6949cbf983'),(10,0,'CZ','203','Česká republika','Česká republika','2015-11-30 15:34:02','2015-11-30 15:34:02','admin@yes-cart.com','admin@yes-cart.com','db91958e-b23a-4484-8978-b5bb80b6576f'),(11,0,'DK','208','Danmark','Danmark','2015-11-30 15:34:06','2015-11-30 15:34:06','admin@yes-cart.com','admin@yes-cart.com','456b445c-9dea-482d-854e-adbb4649cc85'),(12,0,'EE','233','Eesti','Eesti','2015-11-30 15:34:14','2015-11-30 15:34:14','admin@yes-cart.com','admin@yes-cart.com','5125dea1-16c8-4500-862b-a29ee317c7f1'),(13,0,'FI','246','Suomi','Suomi','2015-11-30 15:34:19','2015-11-30 15:34:19','admin@yes-cart.com','admin@yes-cart.com','5166f4c6-b623-44fd-963b-6672a8d68b78'),(14,0,'FR','250','France','France','2015-11-30 15:34:23','2015-11-30 15:34:23','admin@yes-cart.com','admin@yes-cart.com','9ae13bef-cb6e-483e-ba16-fd24cbdc93b4'),(15,0,'DE','276','Deutschland','Deutschland','2015-11-30 15:34:30','2015-11-30 15:34:30','admin@yes-cart.com','admin@yes-cart.com','3b2763e8-075f-4d53-b523-46ec3939cabe'),(16,0,'GR','300','Ελλάς','Ελλάς','2015-11-30 15:34:34','2015-11-30 15:34:34','admin@yes-cart.com','admin@yes-cart.com','c3cbf91a-2218-45a3-85f2-50b40be987b6'),(17,0,'HK','344','Hong Kong','Hong Kong','2015-11-30 15:34:42','2015-11-30 15:34:42','admin@yes-cart.com','admin@yes-cart.com','2424bd9a-1ad5-4586-9233-72e240238188'),(18,0,'HU','348','Magyarország','Magyarország','2015-11-30 15:34:47','2015-11-30 15:34:47','admin@yes-cart.com','admin@yes-cart.com','4c4cc348-a256-4724-80a3-b1552b4c51d1'),(19,0,'IE','372','Éire','Éire','2015-11-30 15:34:51','2015-11-30 15:34:51','admin@yes-cart.com','admin@yes-cart.com','49debaf7-904f-4cc4-a55e-eabe9036f2e2'),(20,0,'IM','833','Isle of Man','Isle of Man','2015-11-30 15:35:00','2015-11-30 15:35:00','admin@yes-cart.com','admin@yes-cart.com','3137aa04-a02a-4458-9e95-ee2e62c68dfb'),(21,0,'IT','380','Italia','Italia','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','0492e3d9-4d3c-49a9-8d89-985d787e6718'),(22,0,'JP','392','日本','日本','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','8bac6f4d-4165-4a33-8db0-fe6e9b83573f'),(23,0,'LV','428','Latvija','Latvija','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','044e97ad-dacc-4e5c-9636-f9e698e159c2'),(24,0,'LT','440','Lietuva','Lietuva','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','2ed7acd2-5ebb-436d-973f-4a47471c12c2'),(25,0,'LU','442','Lëtzebuerg','Lëtzebuerg','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','97863b90-da5d-4e7d-8c99-4ba75977c863'),(26,0,'NL','528','Nederland','Nederland','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','b751f70d-377d-4357-9a7e-84b049214228'),(27,0,'NZ','554','New Zealand','New Zealand','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','a9e931a5-0bb1-43bc-88a8-e884fb2535d2'),(28,0,'NO','578','Norge','Norge','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','3641903e-fcfe-4f70-898b-b1d33e10f3f3'),(29,0,'PL','616','Polska','Polska','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','c6b5ad99-6b93-40ff-8f5a-0582dc91a889'),(30,0,'PT','620','Portugal','Portugal','2015-11-30 15:35:04','2015-11-30 15:35:04','admin@yes-cart.com','admin@yes-cart.com','d9630f22-cf12-40e5-8588-1719f7e25499'),(31,0,'RO','642','România','România','2015-11-30 15:35:05','2015-11-30 15:35:05','admin@yes-cart.com','admin@yes-cart.com','d34c0559-dadf-4e42-879b-7c5969b195ce'),(32,0,'RU','643','Россия','Россия','2015-11-30 15:35:05','2015-11-30 15:35:05','admin@yes-cart.com','admin@yes-cart.com','a4159101-349d-40d2-aa8f-8b1f6d15152b'),(33,0,'SE','752','Sverige','Sverige','2015-11-30 15:35:05','2015-11-30 15:35:05','admin@yes-cart.com','admin@yes-cart.com','e8d80d33-348b-4cdc-96f4-ff2a8cd4d389'),(34,0,'CH','756','Schweiz','Schweiz','2015-11-30 15:35:05','2015-11-30 15:35:05','admin@yes-cart.com','admin@yes-cart.com','ec0b5a4c-85ce-49df-a281-29ddc41ec2a8'),(35,0,'TR','792','Türkiye','Türkiye','2015-11-30 15:35:05','2015-11-30 15:35:05','admin@yes-cart.com','admin@yes-cart.com','8a9ea9c7-296d-4356-99fc-3ef39b99839e'),(36,0,'UA','804','Україна','Україна','2015-11-30 15:35:05','2015-11-30 15:35:05','admin@yes-cart.com','admin@yes-cart.com','23352322-421f-48f5-aba0-5185444a88d5'),(37,0,'GB','826','United Kingdom','United Kingdom','2015-11-30 15:35:05','2015-11-30 15:35:05','admin@yes-cart.com','admin@yes-cart.com','878c2113-3bf2-43a7-8d70-00fdd96e599d');
/*!40000 ALTER TABLE `tcountry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:25
