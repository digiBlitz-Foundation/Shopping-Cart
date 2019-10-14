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
-- Table structure for table `tdatagroup`
--

DROP TABLE IF EXISTS `tdatagroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tdatagroup` (
  `DATAGROUP_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `NAME` varchar(255) NOT NULL,
  `DISPLAYNAME` longtext,
  `QUALIFIER` varchar(45) DEFAULT NULL,
  `TYPE` varchar(45) NOT NULL,
  `DESCRIPTORS` longtext,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`DATAGROUP_ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdatagroup`
--

LOCK TABLES `tdatagroup` WRITE;
/*!40000 ALTER TABLE `tdatagroup` DISABLE KEYS */;
INSERT INTO `tdatagroup` VALUES (1000,0,'YC DEMO: Initial Data',NULL,NULL,'IMPORT','\nshopcurrencies-demo.xml,\ncountrynames-demo.xml,\nstatenames-demo.xml,\ncarriernames-demo.xml,\ncarriershopnames-demo.xml,\ncarrierslanames-demo.xml,\npromotionnames-demo.xml,\npromotioncouponnames-demo.xml,\ntaxnames-demo.xml,\ntaxconfignames-demo.xml',NULL,NULL,NULL,NULL),(1001,0,'YC DEMO: IceCat Catalog',NULL,NULL,'IMPORT','\nbrandnames-demo.xml,\nattributenames-demo.xml,\nattributegroupnames-demo.xml,\nproducttypenames-demo.xml,\ncategorynames-demo.xml,\nshopcategory-demo.xml,\nproductypeattributeviewgroupnames-demo.xml,\nproducttypeattrnames-demo.xml,\nproductnames-demo.xml,\nproductsku-demo.xml,\nproductsattributes-demo.xml,\nproductskuattributes-demo.xml,\nskuinventory-demo.xml,\nskuprices-demo.xml,\nproductcategorynames-demo.xml,\nproductaccessories-demo.xml',NULL,NULL,NULL,NULL),(1002,0,'YC DEMO: Product images (IceCat)',NULL,NULL,'IMPORT','productimages.xml',NULL,NULL,NULL,NULL),(1003,0,'Catalog import (Categories and attribute definitions)',NULL,NULL,'IMPORT','\nbrandnames.xml,\nattributenames.xml,\nattributegroupnames.xml,\nproducttypenames.xml,\ncategorynames.xml,\nshopcategory.xml,\nproductypeattributeviewgroupnames.xml,\nproducttypeattrnames.xml',NULL,NULL,NULL,NULL),(1004,0,'Product import (Products, SKUs and attribute values)',NULL,NULL,'IMPORT','\nproductandcategorynames.xml,\nproductnames.xml,\nproductcategorynames.delete.xml,\nproductcategorynames.xml,\nproductsku.xml,\nproductsattributes.delete.all.xml,\nproductsattributes.delete.xml,\nproductsattributes.xml,\nproductskuattributes.delete.all.xml,\nproductskuattributes.delete.xml,\nproductskuattributes.xml,\nproductaccessories.delete.xml,\nproductaccessories.xml',NULL,NULL,NULL,NULL),(1005,0,'Inventory import',NULL,NULL,'IMPORT','skuinventory.xml',NULL,NULL,NULL,NULL),(1006,0,'Prices, Promotions and Taxes import',NULL,NULL,'IMPORT','\nskuprices.xml,\npromotionnames.xml,\npromotioncouponnames.xml,\ntaxnames.xml,\ntaxconfignames.xml',NULL,NULL,NULL,NULL),(1007,0,'Content import',NULL,NULL,'IMPORT','contentnames.xml',NULL,NULL,NULL,NULL),(1008,0,'Images: Products and SKU',NULL,NULL,'IMPORT','productimages.xml',NULL,NULL,NULL,NULL),(1009,0,'Images: Category and Content',NULL,NULL,'IMPORT','categoryimages.xml',NULL,NULL,NULL,NULL),(1010,0,'Images: Brands',NULL,NULL,'IMPORT','brandimages.xml',NULL,NULL,NULL,NULL),(1011,0,'Images: Shop',NULL,NULL,'IMPORT','shopimages.xml',NULL,NULL,NULL,NULL),(1012,0,'Location import',NULL,NULL,'IMPORT','countrynames.xml,statenames.xml',NULL,NULL,NULL,NULL),(1013,0,'Carriers and SLA import',NULL,NULL,'IMPORT','carriernames.xml,carriershopnames.xml,carrierslanames.xml',NULL,NULL,NULL,NULL),(1014,0,'Shops and Warehouses import',NULL,NULL,'IMPORT','shop.xml,warehouse.xml',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tdatagroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:13
