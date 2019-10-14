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
-- Table structure for table `tbrand`
--

DROP TABLE IF EXISTS `tbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbrand` (
  `BRAND_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`BRAND_ID`),
  UNIQUE KEY `GUID` (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='Product brand / manafacturer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbrand`
--

LOCK TABLES `tbrand` WRITE;
/*!40000 ALTER TABLE `tbrand` DISABLE KEYS */;
INSERT INTO `tbrand` VALUES (2,0,'dB','abc','2015-11-28 19:31:25','2015-11-28 19:31:25','admin@yes-cart.com','admin@yes-cart.com','446ba05c-691d-4264-8157-265fe544a1d2'),(4,0,'Cooler Master','Cooler Master','2015-12-01 10:02:37','2015-12-01 10:02:37','admin@yes-cart.com','admin@yes-cart.com','526d3dc4-b4ce-4b7d-91fc-f91a2013a0ec'),(5,0,'Trend Micro','Trend Micro','2015-12-01 10:02:44','2015-12-01 10:02:44','admin@yes-cart.com','admin@yes-cart.com','34d49c15-78ce-4d65-97b5-ceb08ed11ab6'),(6,0,'Lenovo','Lenovo','2015-12-01 10:02:48','2015-12-01 10:02:48','admin@yes-cart.com','admin@yes-cart.com','56c6269c-5002-4540-9612-cde491600f3d'),(7,0,'HP','HP','2015-12-01 10:02:55','2015-12-01 10:02:55','admin@yes-cart.com','admin@yes-cart.com','d517e144-1daa-4af5-8a2f-05a8ec4af815'),(8,0,'Intel','Intel','2015-12-01 10:02:59','2015-12-01 10:02:59','admin@yes-cart.com','admin@yes-cart.com','916b424e-671e-4e81-b210-eae0ea32849c'),(9,0,'KYOCERA','KYOCERA','2015-12-01 10:03:06','2015-12-01 10:03:06','admin@yes-cart.com','admin@yes-cart.com','6758109a-5b57-4205-b7ff-497d2f7a88f1'),(10,0,'Fujitsu','Fujitsu','2015-12-01 10:03:10','2015-12-01 10:03:10','admin@yes-cart.com','admin@yes-cart.com','37c63f5b-1c6c-4051-b3bf-386a88561400'),(11,0,'Netgear','Netgear','2015-12-01 10:03:15','2015-12-01 10:03:15','admin@yes-cart.com','admin@yes-cart.com','07ea643c-0c24-4dce-8eea-28a4020f04d2'),(12,0,'Seagate','Seagate','2015-12-01 10:03:19','2015-12-01 10:03:19','admin@yes-cart.com','admin@yes-cart.com','3f0cfd3a-3a26-4fa5-8d67-215812ee6dd6'),(13,0,'Logitech','Logitech','2015-12-01 10:03:26','2015-12-01 10:03:26','admin@yes-cart.com','admin@yes-cart.com','c3735664-7acf-44f8-9afa-2ff3dacef223'),(14,0,'Pelikan','Pelikan','2015-12-01 10:03:30','2015-12-01 10:03:30','admin@yes-cart.com','admin@yes-cart.com','75febd1d-3529-4c45-af06-786495632081'),(15,0,'DELL','DELL','2015-12-01 10:03:40','2015-12-01 10:03:40','admin@yes-cart.com','admin@yes-cart.com','0d733e60-1245-4562-8d32-1fb2a9f4766b'),(16,0,'ASUS','ASUS','2015-12-01 10:03:44','2015-12-01 10:03:44','admin@yes-cart.com','admin@yes-cart.com','7f7b5966-9867-4e10-be7a-af89b291c5a3'),(17,0,'Acer','Acer','2015-12-01 10:03:51','2015-12-01 10:03:51','admin@yes-cart.com','admin@yes-cart.com','a3ab40de-6d18-4a02-b574-fe26d38ed04e'),(18,0,'Alienware','Alienware','2015-12-01 10:03:55','2015-12-01 10:03:55','admin@yes-cart.com','admin@yes-cart.com','c4e19308-9f6c-4267-9bf1-a15b2da9f436'),(19,0,'Toshiba','Toshiba','2015-12-01 10:04:00','2015-12-01 10:04:00','admin@yes-cart.com','admin@yes-cart.com','7208e9b3-0ad5-4e9c-9153-a717b639a9ba'),(20,0,'Samsung','Samsung','2015-12-01 10:04:04','2015-12-01 10:04:04','admin@yes-cart.com','admin@yes-cart.com','930bbd81-783e-4f13-a808-0780ea62fd76'),(21,0,'Medion','Medion','2015-12-01 10:04:08','2015-12-01 10:04:08','admin@yes-cart.com','admin@yes-cart.com','6ccdbfcd-e114-400a-aefe-df75b6942fa9'),(22,0,'Ricoh','Ricoh','2015-12-01 10:04:12','2015-12-01 10:04:12','admin@yes-cart.com','admin@yes-cart.com','9ec863b8-c345-4e74-a903-350a3a0c110e'),(23,0,'Test-Brand','','2015-12-17 11:17:50','2015-12-17 11:17:50','admin@yes-cart.com','admin@yes-cart.com','d1c60ac1-375c-4c1c-be20-823dad5bfcd3'),(24,0,'Student & Course Manangement','','2015-12-18 12:22:22','2015-12-18 12:22:22','admin@yes-cart.com','admin@yes-cart.com','f8e9f555-0951-4ba8-bbf9-f65d6afd3081'),(25,0,'Functional and Process Management','','2015-12-18 12:22:37','2015-12-18 12:22:37','admin@yes-cart.com','admin@yes-cart.com','ff8ffb74-1b87-4132-b516-2f035807d246'),(26,0,'Business Inteligence & Analytics','','2015-12-18 12:22:57','2015-12-18 12:22:57','admin@yes-cart.com','admin@yes-cart.com','53951224-9cc7-492c-a45e-5589a6b49428'),(27,0,'Business Architecture Management','','2015-12-18 12:23:15','2015-12-18 12:23:15','admin@yes-cart.com','admin@yes-cart.com','131c43d4-46e1-4acb-ac02-6d3323aa34cc'),(28,0,'Product Training and Support','','2015-12-18 12:23:34','2015-12-18 12:23:34','admin@yes-cart.com','admin@yes-cart.com','bbf01b9d-0319-4594-995e-ef8e0525143e'),(29,0,'smartLehren','','2015-12-18 16:14:12','2015-12-18 16:14:12','admin@yes-cart.com','admin@yes-cart.com','0fb15119-ff36-492f-b5a4-3104ca00fd5a'),(30,0,'guildKraft','','2015-12-21 14:43:23','2015-12-21 14:43:23','admin@yes-cart.com','admin@yes-cart.com','ce12de82-15cb-42fe-90d9-2924f908533b'),(31,0,'menschForce','','2015-12-21 14:43:39','2015-12-21 14:43:39','admin@yes-cart.com','admin@yes-cart.com','daf4369d-604d-426c-ad6d-ef52b7edc056'),(32,0,'klugwerks','klugwerks product','2017-05-26 03:33:21','2017-05-26 03:33:21','admin@yes-cart.com','admin@yes-cart.com','84a67948-ba33-42f7-83b6-9c34e267341b');
/*!40000 ALTER TABLE `tbrand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:47
