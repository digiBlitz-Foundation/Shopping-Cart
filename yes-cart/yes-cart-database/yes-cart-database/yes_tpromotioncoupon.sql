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
-- Table structure for table `tpromotioncoupon`
--

DROP TABLE IF EXISTS `tpromotioncoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpromotioncoupon` (
  `PROMOTIONCOUPON_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `CODE` varchar(255) NOT NULL,
  `PROMOTION_ID` bigint(20) NOT NULL,
  `USAGE_LIMIT` int(11) DEFAULT '1',
  `USAGE_LIMIT_PER_CUSTOMER` int(11) DEFAULT '1',
  `USAGE_COUNT` int(11) DEFAULT '0',
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`PROMOTIONCOUPON_ID`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `FK_PROMO_COUPON` (`PROMOTION_ID`),
  CONSTRAINT `FK_PROMO_COUPON` FOREIGN KEY (`PROMOTION_ID`) REFERENCES `tpromotion` (`PROMOTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpromotioncoupon`
--

LOCK TABLES `tpromotioncoupon` WRITE;
/*!40000 ALTER TABLE `tpromotioncoupon` DISABLE KEYS */;
INSERT INTO `tpromotioncoupon` VALUES (1,0,'SHOP10EURCOUPON10',9,100,1,0,'2015-11-30 18:42:05','2015-11-30 18:42:05','admin@yes-cart.com','admin@yes-cart.com'),(2,0,'SHOP10USDCOUPON10',17,100,1,0,'2015-11-30 18:42:11','2015-11-30 18:42:11','admin@yes-cart.com','admin@yes-cart.com'),(3,0,'SHOP10UAHCOUPON10',26,100,1,0,'2015-11-30 18:42:17','2015-11-30 18:42:17','admin@yes-cart.com','admin@yes-cart.com');
/*!40000 ALTER TABLE `tpromotioncoupon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:07
