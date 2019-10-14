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
-- Table structure for table `tproductassociation`
--

DROP TABLE IF EXISTS `tproductassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproductassociation` (
  `PRODUCTASSOCIATION_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `RANK` int(11) DEFAULT NULL COMMENT 'RANK can have different meaning, depending from association type for example similarity always will be less, that 1000000 (MAX similarity) who buy , counter of who buy the one product also buy other product',
  `ASSOCIATION_ID` bigint(20) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  `ASSOCIATEDPRODUCT_ID` bigint(20) NOT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`PRODUCTASSOCIATION_ID`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `FK_PA_ASSOC` (`ASSOCIATION_ID`),
  KEY `FK_PA_ASSOCPROD` (`ASSOCIATEDPRODUCT_ID`),
  KEY `FK_PA_PRODUCT` (`PRODUCT_ID`),
  CONSTRAINT `FK_PA_ASSOC` FOREIGN KEY (`ASSOCIATION_ID`) REFERENCES `tassociation` (`ASSOCIATION_ID`),
  CONSTRAINT `FK_PA_ASSOCPROD` FOREIGN KEY (`ASSOCIATEDPRODUCT_ID`) REFERENCES `tproduct` (`PRODUCT_ID`),
  CONSTRAINT `FK_PA_PRODUCT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `tproduct` (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductassociation`
--

LOCK TABLES `tproductassociation` WRITE;
/*!40000 ALTER TABLE `tproductassociation` DISABLE KEYS */;
INSERT INTO `tproductassociation` VALUES (1,0,0,1,277,101,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','d99370d8-21f8-4661-8fbe-e839ffac7670'),(2,0,1,1,277,246,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','f514f21e-f43f-41f6-9af3-d65ed54c0efb'),(3,0,0,1,153,81,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','d4b0e85b-8b4c-48ed-a737-a1426f92a460'),(4,0,1,1,153,12,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','63599cc3-a06d-4c65-a2c7-b6a00546a53f'),(5,0,0,2,152,147,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','b820dc56-1426-4926-87fe-7791fbec98c6'),(6,0,1,2,152,249,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','1f83fd48-a381-4120-b6f5-ee9bf2a0481e'),(7,0,0,3,277,208,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','c0ad0b4b-c526-4e39-8f29-f8bde80fc134'),(8,0,1,3,277,210,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','471257e9-71c7-4380-ac05-0400d0b13424'),(9,0,0,3,178,258,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','ceb08a2e-4da4-4d03-be75-564a2a6e8f3e'),(10,0,1,3,178,265,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','6023eb0c-2aa4-465f-8bcf-bcdf2d1a729e'),(11,0,0,4,277,21,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','b94d6e8c-15c9-49a2-b338-ecbccebd653e'),(12,0,1,4,277,88,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','76179b2a-dc95-406b-893a-6d12e3d8d7f5'),(13,0,0,4,152,182,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','ffbce969-f5b6-4bd7-ba81-d996b5e8570b'),(14,0,1,4,152,37,'2015-12-16 14:30:29','2015-12-16 14:30:29','admin@yes-cart.com','admin@yes-cart.com','0d344187-54dc-4dbd-b6a9-44c6622fd917');
/*!40000 ALTER TABLE `tproductassociation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:18
