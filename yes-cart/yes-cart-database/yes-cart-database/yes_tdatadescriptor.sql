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
-- Table structure for table `tdatadescriptor`
--

DROP TABLE IF EXISTS `tdatadescriptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tdatadescriptor` (
  `DATADESCRIPTOR_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(45) NOT NULL,
  `VALUE` longtext,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`DATADESCRIPTOR_ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=1065 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdatadescriptor`
--

LOCK TABLES `tdatadescriptor` WRITE;
/*!40000 ALTER TABLE `tdatadescriptor` DISABLE KEYS */;
INSERT INTO `tdatadescriptor` VALUES (1000,0,'attributegroupnames-demo.xml','WEBINF_XML','attributegroupnames-demo.xml',NULL,NULL,NULL,NULL),(1001,0,'attributegroupnames.xml','WEBINF_XML','attributegroupnames.xml',NULL,NULL,NULL,NULL),(1002,0,'attributenames-demo.xml','WEBINF_XML','attributenames-demo.xml',NULL,NULL,NULL,NULL),(1003,0,'attributenames.xml','WEBINF_XML','attributenames.xml',NULL,NULL,NULL,NULL),(1004,0,'brandimages.xml','WEBINF_XML','brandimages.xml',NULL,NULL,NULL,NULL),(1005,0,'brandnames-demo.xml','WEBINF_XML','brandnames-demo.xml',NULL,NULL,NULL,NULL),(1006,0,'brandnames.xml','WEBINF_XML','brandnames.xml',NULL,NULL,NULL,NULL),(1007,0,'carriernames-demo.xml','WEBINF_XML','carriernames-demo.xml',NULL,NULL,NULL,NULL),(1008,0,'carriernames.xml','WEBINF_XML','carriernames.xml',NULL,NULL,NULL,NULL),(1009,0,'carriershopnames-demo.xml','WEBINF_XML','carriershopnames-demo.xml',NULL,NULL,NULL,NULL),(1010,0,'carriershopnames.xml','WEBINF_XML','carriershopnames.xml',NULL,NULL,NULL,NULL),(1011,0,'carrierslanames-demo.xml','WEBINF_XML','carrierslanames-demo.xml',NULL,NULL,NULL,NULL),(1012,0,'carrierslanames.xml','WEBINF_XML','carrierslanames.xml',NULL,NULL,NULL,NULL),(1013,0,'categoryimages.xml','WEBINF_XML','categoryimages.xml',NULL,NULL,NULL,NULL),(1014,0,'categorynames-demo.xml','WEBINF_XML','categorynames-demo.xml',NULL,NULL,NULL,NULL),(1015,0,'categorynames.xml','WEBINF_XML','categorynames.xml',NULL,NULL,NULL,NULL),(1016,0,'contentnames.xml','WEBINF_XML','contentnames.xml',NULL,NULL,NULL,NULL),(1017,0,'countrynames-demo.xml','WEBINF_XML','countrynames-demo.xml',NULL,NULL,NULL,NULL),(1018,0,'countrynames.xml','WEBINF_XML','countrynames.xml',NULL,NULL,NULL,NULL),(1019,0,'productaccessories-demo.xml','WEBINF_XML','productaccessories-demo.xml',NULL,NULL,NULL,NULL),(1020,0,'productaccessories.delete.xml','WEBINF_XML','productaccessories.delete.xml',NULL,NULL,NULL,NULL),(1021,0,'productaccessories.xml','WEBINF_XML','productaccessories.xml',NULL,NULL,NULL,NULL),(1022,0,'productandcategorynames.xml','WEBINF_XML','productandcategorynames.xml',NULL,NULL,NULL,NULL),(1023,0,'productcategorynames-demo.xml','WEBINF_XML','productcategorynames-demo.xml',NULL,NULL,NULL,NULL),(1024,0,'productcategorynames.delete.xml','WEBINF_XML','productcategorynames.delete.xml',NULL,NULL,NULL,NULL),(1025,0,'productcategorynames.xml','WEBINF_XML','productcategorynames.xml',NULL,NULL,NULL,NULL),(1026,0,'productimages.xml','WEBINF_XML','productimages.xml',NULL,NULL,NULL,NULL),(1027,0,'productnames-demo.xml','WEBINF_XML','productnames-demo.xml',NULL,NULL,NULL,NULL),(1028,0,'productnames.xml','WEBINF_XML','productnames.xml',NULL,NULL,NULL,NULL),(1029,0,'productsattributes-demo.xml','WEBINF_XML','productsattributes-demo.xml',NULL,NULL,NULL,NULL),(1030,0,'productsattributes.delete.all.xml','WEBINF_XML','productsattributes.delete.all.xml',NULL,NULL,NULL,NULL),(1031,0,'productsattributes.delete.xml','WEBINF_XML','productsattributes.delete.xml',NULL,NULL,NULL,NULL),(1032,0,'productsattributes.xml','WEBINF_XML','productsattributes.xml',NULL,NULL,NULL,NULL),(1033,0,'productsku-demo.xml','WEBINF_XML','productsku-demo.xml',NULL,NULL,NULL,NULL),(1034,0,'productsku.xml','WEBINF_XML','productsku.xml',NULL,NULL,NULL,NULL),(1035,0,'productskuattributes-demo.xml','WEBINF_XML','productskuattributes-demo.xml',NULL,NULL,NULL,NULL),(1036,0,'productskuattributes.delete.all.xml','WEBINF_XML','productskuattributes.delete.all.xml',NULL,NULL,NULL,NULL),(1037,0,'productskuattributes.delete.xml','WEBINF_XML','productskuattributes.delete.xml',NULL,NULL,NULL,NULL),(1038,0,'productskuattributes.xml','WEBINF_XML','productskuattributes.xml',NULL,NULL,NULL,NULL),(1039,0,'producttypeattrnames-demo.xml','WEBINF_XML','producttypeattrnames-demo.xml',NULL,NULL,NULL,NULL),(1040,0,'producttypeattrnames.xml','WEBINF_XML','producttypeattrnames.xml',NULL,NULL,NULL,NULL),(1041,0,'producttypenames-demo.xml','WEBINF_XML','producttypenames-demo.xml',NULL,NULL,NULL,NULL),(1042,0,'producttypenames.xml','WEBINF_XML','producttypenames.xml',NULL,NULL,NULL,NULL),(1043,0,'productypeattributeviewgroupnames-demo.xml','WEBINF_XML','productypeattributeviewgroupnames-demo.xml',NULL,NULL,NULL,NULL),(1044,0,'productypeattributeviewgroupnames.xml','WEBINF_XML','productypeattributeviewgroupnames.xml',NULL,NULL,NULL,NULL),(1045,0,'promotioncouponnames-demo.xml','WEBINF_XML','promotioncouponnames-demo.xml',NULL,NULL,NULL,NULL),(1046,0,'promotioncouponnames.xml','WEBINF_XML','promotioncouponnames.xml',NULL,NULL,NULL,NULL),(1047,0,'promotionnames-demo.xml','WEBINF_XML','promotionnames-demo.xml',NULL,NULL,NULL,NULL),(1048,0,'promotionnames.xml','WEBINF_XML','promotionnames.xml',NULL,NULL,NULL,NULL),(1049,0,'shop.xml','WEBINF_XML','shop.xml',NULL,NULL,NULL,NULL),(1050,0,'shopcategory-demo.xml','WEBINF_XML','shopcategory-demo.xml',NULL,NULL,NULL,NULL),(1051,0,'shopcategory.xml','WEBINF_XML','shopcategory.xml',NULL,NULL,NULL,NULL),(1052,0,'shopcurrencies-demo.xml','WEBINF_XML','shopcurrencies-demo.xml',NULL,NULL,NULL,NULL),(1053,0,'shopimages.xml','WEBINF_XML','shopimages.xml',NULL,NULL,NULL,NULL),(1054,0,'skuinventory-demo.xml','WEBINF_XML','skuinventory-demo.xml',NULL,NULL,NULL,NULL),(1055,0,'skuinventory.xml','WEBINF_XML','skuinventory.xml',NULL,NULL,NULL,NULL),(1056,0,'skuprices-demo.xml','WEBINF_XML','skuprices-demo.xml',NULL,NULL,NULL,NULL),(1057,0,'skuprices.xml','WEBINF_XML','skuprices.xml',NULL,NULL,NULL,NULL),(1058,0,'statenames-demo.xml','WEBINF_XML','statenames-demo.xml',NULL,NULL,NULL,NULL),(1059,0,'statenames.xml','WEBINF_XML','statenames.xml',NULL,NULL,NULL,NULL),(1060,0,'taxconfignames-demo.xml','WEBINF_XML','taxconfignames-demo.xml',NULL,NULL,NULL,NULL),(1061,0,'taxconfignames.xml','WEBINF_XML','taxconfignames.xml',NULL,NULL,NULL,NULL),(1062,0,'taxnames-demo.xml','WEBINF_XML','taxnames-demo.xml',NULL,NULL,NULL,NULL),(1063,0,'taxnames.xml','WEBINF_XML','taxnames.xml',NULL,NULL,NULL,NULL),(1064,0,'warehouse.xml','WEBINF_XML','warehouse.xml',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tdatadescriptor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:14
