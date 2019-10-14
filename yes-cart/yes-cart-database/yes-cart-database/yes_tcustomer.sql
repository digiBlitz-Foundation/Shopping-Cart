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
-- Table structure for table `tcustomer`
--

DROP TABLE IF EXISTS `tcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcustomer` (
  `CUSTOMER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `EMAIL` varchar(255) NOT NULL,
  `FIRSTNAME` varchar(128) NOT NULL,
  `LASTNAME` varchar(128) NOT NULL,
  `MIDDLENAME` varchar(128) DEFAULT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `PUBLICKEY` varchar(255) DEFAULT NULL,
  `AUTHTOKEN` varchar(255) DEFAULT NULL,
  `AUTHTOKENEXPIRY` datetime DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL COMMENT 'Set of customer tags',
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `GUID` (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcustomer`
--

LOCK TABLES `tcustomer` WRITE;
/*!40000 ALTER TABLE `tcustomer` DISABLE KEYS */;
INSERT INTO `tcustomer` VALUES (1,3,'muralidharsriram94@gmail.com','murali','Gupta',NULL,'3bed8c89e0e3245a6e16d02b33e40a2a',NULL,'N7WQcE4j','2015-12-18 16:06:39',NULL,'2015-11-28 13:58:37','2015-12-17 16:06:39','anonymous','admin@yes-cart.com','df3006f9-1fb6-4c73-8437-498815b3c2f4'),(2,0,'karthikadec1@gmail.com','qw','qwq',NULL,'e989ca5b881867af2c5f8530c12c5569',NULL,NULL,NULL,NULL,'2015-11-28 18:13:57','2015-11-28 18:13:57','anonymous','anonymous','dc9b0668-4cc1-48e8-a319-d59ce13b3e3f'),(3,0,'prabhu3406@gmail.com','ds','sad',NULL,'b51ba8ccb457b240ddf166c70add86ca',NULL,NULL,NULL,NULL,'2015-11-28 18:14:36','2015-11-28 18:14:36','anonymous','anonymous','47d7e9a8-8796-4dec-9b49-68b0595c3f6d'),(4,3,'gupta.nihalg@gmail.com','nihal','gupta',NULL,'b458fe1498d14facd77cb422f4ec9b59',NULL,NULL,NULL,NULL,'2015-11-30 10:16:12','2015-12-22 09:41:51','admin@yes-cart.com','admin@yes-cart.com','827c5d46-08f8-4ac6-8951-0e2e2e6b2851'),(5,0,'jdshfds@gmail.com','kjdhffds','sgsgadg',NULL,'bd4bd9df893d879e80678bf90101ad58',NULL,NULL,NULL,NULL,'2015-12-16 14:13:54','2015-12-16 14:13:54','anonymous','anonymous','6eb695c4-7e91-4559-b77a-aae54677a753'),(6,2,'nikhilgupta@gmail.com','kjdhffds','sgsgadg',NULL,'7ac920ea2a13449e45d3b067df438675',NULL,NULL,NULL,NULL,'2015-12-16 14:15:11','2015-12-16 18:12:15','anonymous','admin@yes-cart.com','a844fcc5-3d14-4e4c-86e4-ffc79b0e3ae6'),(7,0,'nihalkumar@gmail.com','asfdesf','gfdgdfg',NULL,'19aa8fbe2c9ad1f424f0127f03af63ae',NULL,NULL,NULL,NULL,'2015-12-16 14:40:12','2015-12-16 14:40:12','admin@yes-cart.com','admin@yes-cart.com','e25322f9-3e60-43c2-8395-10a9d48874a0'),(8,0,'gupta@gmail.com','dffdsgfg','dgfhghfs',NULL,'91a7a4e39b1d0b9936774472dd47cadd',NULL,NULL,NULL,NULL,'2015-12-16 16:11:13','2015-12-16 16:11:13','admin@yes-cart.com','admin@yes-cart.com','708bc6ee-339a-4d57-86fa-36624010ad85'),(9,2,'jprakash0593@gmail.com','jgfh','fh',NULL,'bffcf10ac6b8b5c0baf8db620f7b310a',NULL,'nBW45@C6','2017-06-01 00:39:02',NULL,'2015-12-16 17:07:57','2017-05-31 00:39:02','admin@yes-cart.com','anonymous','11c77cb2-da98-4099-869a-1f87491cf59d'),(10,1,'saikrishnansai@yahoo.com','jgfh','fh',NULL,'e2934db27304e2c91178df506fc9da87',NULL,NULL,NULL,NULL,'2015-12-16 17:08:20','2015-12-16 17:08:20','admin@yes-cart.com','admin@yes-cart.com','2b1555ec-10f3-4e1d-922a-99940ef684ca'),(11,0,'kamatchipriya16@gmail.com','tu','tuy',NULL,'93157516c316c94ef3658fbec0501c20',NULL,NULL,NULL,NULL,'2015-12-16 17:19:39','2015-12-16 17:19:39','admin@yes-cart.com','admin@yes-cart.com','038dca01-cf82-4ced-b157-14b8e6b98625'),(12,0,'sailakshmipanatt@gmail.com','bhj','bhj',NULL,'9429a1e14dd4d0c84bb4bee4e37dfc26',NULL,NULL,NULL,NULL,'2015-12-16 17:41:21','2015-12-16 17:41:21','admin@yes-cart.com','admin@yes-cart.com','c04a814d-90b2-4aa2-9965-fca88656380c'),(13,0,'saikrishnan.harish@gmail.com','fgh','gfhjdgfhj',NULL,'93e08c028e30bfb243894588c916767e',NULL,NULL,NULL,NULL,'2015-12-16 18:06:09','2015-12-16 18:06:09','admin@yes-cart.com','admin@yes-cart.com','771a8d8f-68a8-49a1-9a39-b71a0c069590'),(14,5,'jprakaz593@gmail.com','vgh','vgh',NULL,'1aa255d6259315c342c0d67a27e742f1',NULL,'gxJ2sTjQ','2017-06-14 00:33:17',NULL,'2015-12-16 18:09:48','2017-06-13 00:33:17','admin@yes-cart.com','anonymous','b9d35413-c9c8-4e0f-a98a-30f39bfe132c'),(15,0,'karthika@gmail.com','fdsgfdsg','afgfag',NULL,'22ed6e898bf5661f8cf82f33a51b8848',NULL,NULL,NULL,NULL,'2015-12-17 09:23:48','2015-12-17 09:23:48','admin@yes-cart.com','admin@yes-cart.com','bf575a06-dcbb-46e6-8bc4-20c351c98d6e'),(16,1,'kartik@gmail.com','fdsgfdsg','afgfag',NULL,'51082d9c222968e20d4f74f773ad0a94',NULL,NULL,NULL,NULL,'2015-12-17 09:24:04','2015-12-17 09:24:04','admin@yes-cart.com','admin@yes-cart.com','1bd2f079-7327-45aa-a8cd-850237e24ef9'),(17,0,'prabhu@gmail.com','xfdfd','dfdsfdsgfs',NULL,'cf89ddf1b041c505a7c9126b8c2a3790',NULL,NULL,NULL,NULL,'2015-12-17 12:02:59','2015-12-17 12:02:59','admin@yes-cart.com','admin@yes-cart.com','5530ee32-bdf7-4692-9553-f4c07fc73948'),(18,0,'ramkumar@digiblitz.in','zsfd','aSEDRgjh',NULL,'8fc0de109eb5aae7dcda4403c6197279',NULL,NULL,NULL,NULL,'2015-12-17 12:04:54','2015-12-17 12:04:54','admin@yes-cart.com','admin@yes-cart.com','cb00d08f-c1de-4fa2-bd82-dec3aae9432b'),(19,0,'pmganeshsaji@gmail.com','Jeyaprakash','S',NULL,'5b94b201379a25e60dfdbc1501a30fac',NULL,NULL,NULL,NULL,'2015-12-17 12:41:49','2015-12-17 12:41:49','admin@yes-cart.com','admin@yes-cart.com','f89343ae-5bf3-458d-af60-72b665853e8d'),(20,0,'guptakumar@gmail.com','fgbdfhf','jfjfdj',NULL,'2c3686c7bf3b9d953fe44294c157a157',NULL,NULL,NULL,NULL,'2015-12-17 14:58:05','2015-12-17 14:58:05','admin@yes-cart.com','admin@yes-cart.com','82808517-ca2a-4dee-a275-92485b084319'),(21,0,'roshan@gmail.com','kathika','A',NULL,'e74ce9bdbe1a80ff7aa93557ed00d39e',NULL,NULL,NULL,NULL,'2015-12-17 15:55:05','2015-12-17 15:55:05','admin@yes-cart.com','admin@yes-cart.com','72aee7c7-d010-49b0-a7f2-df4c5166527e'),(22,1,'suresh@gmail.cm','htjgrdhg','uytui',NULL,'4ae294a0448d40c7b659591f230533ef','B+BeqmJ4',NULL,NULL,NULL,'2015-12-17 16:08:38','2015-12-17 16:14:34','admin@yes-cart.com','admin@yes-cart.com','120daa1f-d122-4323-ad22-d0eac3d7f76b'),(23,0,'ramkumar@gmail.com','sdsadasDD','SAdasdasd',NULL,'999c3a92dc3d5a9ad63cd5651d56d760',NULL,NULL,NULL,NULL,'2015-12-17 16:10:46','2015-12-17 16:10:46','admin@yes-cart.com','admin@yes-cart.com','d01f7e05-712e-4524-9ec3-26fc2535ce6d'),(24,0,'murli@gmail.com','safdasgfdsgfsg','gfsdgfgdfgaf',NULL,'ed9936e94a27aa13ed100fcd4cfa89a4',NULL,NULL,NULL,NULL,'2015-12-18 09:29:56','2015-12-18 09:29:56','admin@yes-cart.com','admin@yes-cart.com','eb77e90c-4971-48cf-9b15-c355db1a60bb'),(25,0,'sumit@gmail.com','asdfsfdaffd','fdfdfdfdf',NULL,'cf34d2b88c61567cc500cc6383f89d43',NULL,NULL,NULL,NULL,'2015-12-18 13:31:29','2015-12-18 13:31:29','admin@yes-cart.com','admin@yes-cart.com','3eb22de6-24fc-4633-b980-d7574f3ca78e'),(26,0,'walternr22@yahoo.com','walter','nr',NULL,'10c9c619706d3261c1edf39af80e4f20',NULL,NULL,NULL,NULL,'2015-12-23 18:07:02','2015-12-23 18:07:02','admin@yes-cart.com','admin@yes-cart.com','c78e5a2d-2b41-4606-bfea-596f28a3dcda'),(27,0,'ganesh123@gmail.com','sdfs','dsgf',NULL,'90506b755cd7702755454a6acb65dee1',NULL,NULL,NULL,NULL,'2015-12-24 17:51:52','2015-12-24 17:51:52','admin@yes-cart.com','admin@yes-cart.com','6e47ac52-fe00-4cd4-abf9-d1afab613552'),(28,1,'ganeshasd@gmail.com','edad','dsf',NULL,'038e30d85d4e2793d1cf3331c2aecc0f',NULL,NULL,NULL,NULL,'2015-12-24 17:52:33','2015-12-24 17:52:34','admin@yes-cart.com','admin@yes-cart.com','027fdb07-a13d-4e87-a0d1-698ed4b735ab'),(29,0,'jprakash1234@gmail.com','gjyghj','ghjg',NULL,'b91bf88d6bc817d975927dc9097fc0db',NULL,NULL,NULL,NULL,'2015-12-24 18:28:43','2015-12-24 18:28:43','admin@yes-cart.com','admin@yes-cart.com','f5420094-6d3c-46a6-8ea7-92511cc5b67b'),(30,1,'saravanan@gmail.com','Jeyaprakash','S',NULL,'bd65d4297e25a47bb8e5849d1ddcadd0',NULL,NULL,NULL,NULL,'2015-12-24 18:35:04','2015-12-24 18:35:09','admin@yes-cart.com','admin@yes-cart.com','1704c583-453d-4c13-9f7b-197505fd8d01'),(31,4,'jeyaprakash@digiblitz.com','Jeyaprakash','s',NULL,'c9d06a51bd9acad76423c7a39ae837ac',NULL,'WS4XgmM2','2017-06-01 09:08:16',NULL,'2017-05-26 06:08:19','2017-05-31 09:08:16','anonymous','anonymous','36d7428d-9011-4c99-8595-f96c83d0ae1a'),(32,17,'parasuram@digiblitz.in','parasu','ram',NULL,'f44c66e6a8c5a0ba7cf4184b9dacdf04',NULL,'DDRUHbRa','2017-06-01 08:28:15',NULL,'2017-05-31 02:52:42','2017-05-31 08:28:15','anonymous','anonymous','446ae25b-76d0-4eb4-a099-5801bcb0426a'),(33,2,'talk2jp0593@gmail.com','seeni','s',NULL,'ff9c0bae969b2e3a19db13fc66644119',NULL,'2etFqDpH','2017-06-01 08:54:15',NULL,'2017-05-31 06:34:28','2017-05-31 08:54:15','anonymous','anonymous','0af25b47-6901-410a-b466-d1bb39e9ae16'),(34,2,'shamili.srinivasan@digiblitz.in','shamilitest1','s',NULL,'07cae2ff7b021854a850e61719fba25e',NULL,'tw-JcGRV','2017-06-01 09:04:02',NULL,'2017-05-31 08:56:47','2017-05-31 09:04:02','anonymous','anonymous','f2a7ae21-e1bb-41e3-be41-2d6e26a9ec24'),(35,2,'amlalesh.paul@digiblitz.in','Amalesh','P',NULL,'a3c11d9f7b874d47766eb2ecfb506351',NULL,'e9z8V2Ny','2017-06-01 09:16:47',NULL,'2017-05-31 09:09:37','2017-05-31 09:16:47','anonymous','anonymous','c6fddd8f-ed3d-45a1-8eaa-b4e67f682fcb'),(36,8,'dhivya.ab@gmail.com','dhivya','d',NULL,'a710143d5b4e1be53e904337f579ca6a',NULL,'ABrA63By','2017-06-10 03:03:31',NULL,'2017-06-10 01:27:43','2017-06-10 03:02:31','anonymous','anonymous','9ffa28af-5c28-4b8c-aff2-6c8f7a3849eb'),(37,3,'prabhu.pandi@digiblitz.in','Prabhu','P',NULL,'98dca465bd760f77e663efc1ff124bd1',NULL,'C4SY3pCr','2017-06-14 00:30:54',NULL,'2017-06-13 00:16:14','2017-06-13 00:30:54','anonymous','anonymous','218a90e1-cc46-4950-9203-160a2c59e681'),(38,2,'jprakazjp@gmail.com','Jeya','Prakash',NULL,'53562ee921ac93b7fe67eee71fc69a23',NULL,'DcVS3vef','2017-06-14 00:38:37',NULL,'2017-06-13 00:38:28','2017-06-13 00:38:37','anonymous','anonymous','991ea621-ba9c-4f7e-bbe6-240aba56a02b');
/*!40000 ALTER TABLE `tcustomer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:03
