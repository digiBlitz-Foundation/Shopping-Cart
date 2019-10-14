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
-- Table structure for table `tpromotion`
--

DROP TABLE IF EXISTS `tpromotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpromotion` (
  `PROMOTION_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `CODE` varchar(255) NOT NULL,
  `RANK` int(11) DEFAULT '500',
  `SHOP_CODE` varchar(255) NOT NULL,
  `CURRENCY` varchar(5) NOT NULL,
  `PROMO_TYPE` varchar(1) NOT NULL,
  `PROMO_ACTION` varchar(1) NOT NULL,
  `ELIGIBILITY_CONDITION` longtext NOT NULL,
  `PROMO_ACTION_CONTEXT` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `DISPLAYNAME` longtext,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `DISPLAYDESCRIPTION` longtext,
  `TAG` varchar(255) DEFAULT NULL,
  `COUPON_TRIGGERED` bit(1) NOT NULL,
  `CAN_BE_COMBINED` bit(1) NOT NULL,
  `ENABLED` bit(1) NOT NULL,
  `ENABLED_FROM` datetime DEFAULT NULL,
  `ENABLED_TO` datetime DEFAULT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`PROMOTION_ID`),
  UNIQUE KEY `CODE` (`CODE`),
  UNIQUE KEY `GUID` (`GUID`),
  KEY `PROMO_SHOP_CODE` (`SHOP_CODE`),
  KEY `PROMO_CURRENCY` (`CURRENCY`),
  KEY `PROMO_PTYPE` (`PROMO_TYPE`),
  KEY `PROMO_PACTION` (`PROMO_ACTION`),
  KEY `PROMO_ENABLED` (`ENABLED`),
  KEY `PROMO_ENABLED_FROM` (`ENABLED_FROM`),
  KEY `PROMO_ENABLED_TO` (`ENABLED_TO`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpromotion`
--

LOCK TABLES `tpromotion` WRITE;
/*!40000 ALTER TABLE `tpromotion` DISABLE KEYS */;
INSERT INTO `tpromotion` VALUES (1,0,'SHOP10EURITEMQTY10P',0,'SHOP10','EUR','I','P','shoppingCartItem.qty > 5','10','10% off when buying 5 or more items','ru#~#Скидка 10% при покупке свыше 5 единиц#~#uk#~#Знижка 10% при покупці більше 5 одиниц#~#en#~#10% off when buying 5 or more items#~#',NULL,NULL,NULL,'\0','','',NULL,NULL,'2015-11-30 16:29:35','2015-11-30 16:29:35','admin@yes-cart.com','admin@yes-cart.com','SHOP10EURITEMQTY10P'),(2,0,'SHOP10EURITEMQTY15P',0,'SHOP10','EUR','I','P','shoppingCartItem.qty > 10','15','15% off when buying 10 or more items','ru#~#Скидка 15% при покупке свыше 10 единиц#~#uk#~#Знижка 15% при покупці більше 10 одиниц#~#en#~#15% off when buying 10 or more items#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 16:33:58','2015-11-30 16:33:58','admin@yes-cart.com','admin@yes-cart.com','SHOP10EURITEMQTY15P'),(3,0,'SHOP10EURITEMQTY20P',0,'SHOP10','EUR','I','P','shoppingCartItem.qty > 20','20','20% off when buying 20 or more items','ru#~#Скидка 20% при покупке свыше 20 единиц#~#uk#~#Знижка 20% при покупці більше 20 одиниц#~#en#~#20% off when buying 20 or more items#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 16:39:37','2015-11-30 16:39:37','admin@yes-cart.com','admin@yes-cart.com','SHOP10EURITEMQTY20P'),(4,0,'SHOP10EURORD50F',0,'SHOP10','EUR','O','F','shoppingCartItemTotal.priceSubTotal > 500','50','€50 off on orders over €500','ru#~#Скидка €50 на заказы свыше €500#~#uk#~#Знижка €50 на замовлення більше €500#~#en#~#€50 off on orders over €500#~#',NULL,NULL,NULL,'\0','','',NULL,NULL,'2015-11-30 16:44:02','2015-11-30 16:44:02','admin@yes-cart.com','admin@yes-cart.com','SHOP10EURORD50F'),(5,0,'SHOP10EURORD100F',0,'SHOP10','EUR','O','F','shoppingCartItemTotal.priceSubTotal > 1000','100','€100 off on orders over €1000','ru#~#Скидка €100 на заказы свыше €1000#~#uk#~#Знижка €100 на замовлення більше €1000#~#en#~#€100 off on orders over €1000#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 16:49:35','2015-11-30 16:49:35','admin@yes-cart.com','admin@yes-cart.com','SHOP10EURORD100F'),(6,0,'SHOP10EURORD150F',0,'SHOP10','EUR','O','F','shoppingCartItemTotal.priceSubTotal > 1500','150','€150 off on orders over €1500','ru#~#Скидка €150 на заказы свыше €1500#~#uk#~#Знижка €150 на замовлення більше €1500#~#en#~#€150 off on orders over €1500#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 16:57:06','2015-11-30 16:57:06','admin@yes-cart.com','admin@yes-cart.com','SHOP10EURORD150F'),(7,0,'SHOP10EURSHIP50P',0,'SHOP10','EUR','S','P','shoppingCartOrderTotal.subTotal > 250','50','50% off shipping for orders over €250','ru#~#Скидка 50% на доставку на заказы свыше €250#~#uk#~#Знижка 50% на доставку на замовлення більше €250#~#en#~#50% off shipping for orders over €250#~#',NULL,NULL,NULL,'\0','','',NULL,NULL,'2015-11-30 16:59:29','2015-11-30 16:59:29','admin@yes-cart.com','admin@yes-cart.com','SHOP10EURSHIP50P'),(8,0,'SHOP10EURSHIPFREE',0,'SHOP10','EUR','S','P','shoppingCartOrderTotal.subTotal > 500','100','free shipping for orders over €500','ru#~#Бесплатная доставка на заказы свыше €500#~#uk#~#Безкоштовна доставка на замовлення більше €500#~#en#~#free shipping for orders over €500#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 17:03:55','2015-11-30 17:03:55','admin@yes-cart.com','admin@yes-cart.com','SHOP10EURSHIPFREE'),(9,0,'SHOP10EURCOUPON10',0,'SHOP10','EUR','O','P','','10','10% off with coupon','ru#~#Скидка 10% с промо-кодом#~#uk#~#Знижка 10% з промо-кодом#~#en#~#10% off with coupon#~#',NULL,NULL,NULL,'','\0','',NULL,NULL,'2015-11-30 17:09:35','2015-11-30 17:09:35','admin@yes-cart.com','admin@yes-cart.com','SHOP10EURCOUPON10'),(10,0,'SHOP10USDITEMQTY15P',0,'SHOP10','USD','I','P','shoppingCartItem.qty > 10','15','15% off when buying 10 or more items','ru#~#Скидка 15% при покупке свыше 10 единиц#~#uk#~#Знижка 15% при покупці більше 10 одиниц#~#en#~#15% off when buying 10 or more items#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 17:17:15','2015-11-30 17:17:15','admin@yes-cart.com','admin@yes-cart.com','SHOP10USDITEMQTY15P'),(11,0,'SHOP10USDITEMQTY20P',0,'SHOP10','USD','I','P','shoppingCartItem.qty > 20','20','20% off when buying 20 or more items','ru#~#Скидка 20% при покупке свыше 20 единиц#~#uk#~#Знижка 20% при покупці більше 20 одиниц#~#en#~#20% off when buying 20 or more items#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 17:19:43','2015-11-30 17:19:43','admin@yes-cart.com','admin@yes-cart.com','SHOP10USDITEMQTY20P'),(12,0,'SHOP10USDORD50F',0,'SHOP10','USD','O','F','shoppingCartItemTotal.priceSubTotal > 750','50','$50 off on orders over $750','ru#~#Скидка $50 на заказы свыше $750#~#uk#~#Знижка $50 на замовлення більше $750#~#en#~#$50 off on orders over $750#~#',NULL,NULL,NULL,'\0','','',NULL,NULL,'2015-11-30 17:27:13','2015-11-30 17:27:13','admin@yes-cart.com','admin@yes-cart.com','SHOP10USDORD50F'),(13,0,'SHOP10USDORD100F',0,'SHOP10','USD','O','F','shoppingCartItemTotal.priceSubTotal > 1500','100','$100 off on orders over $1500','ru#~#Скидка $100 на заказы свыше $1500#~#uk#~#Знижка $100 на замовлення більше $1500#~#en#~#$100 off on orders over $1500#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 17:29:36','2015-11-30 17:29:36','admin@yes-cart.com','admin@yes-cart.com','SHOP10USDORD100F'),(14,0,'SHOP10USDORD150F',0,'SHOP10','USD','O','F','shoppingCartItemTotal.priceSubTotal > 2250','150','$150 off on orders over $2250','ru#~#Скидка $150 на заказы свыше $2250#~#uk#~#Знижка $150 на замовлення більше $2250#~#en#~#$150 off on orders over $2250#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 17:34:39','2015-11-30 17:34:39','admin@yes-cart.com','admin@yes-cart.com','SHOP10USDORD150F'),(15,0,'SHOP10USDSHIP50P',0,'SHOP10','USD','S','P','shoppingCartOrderTotal.subTotal > 400','50','50% off shipping for orders over $400','ru#~#Скидка 50% на доставку на заказы свыше $400#~#uk#~#Знижка 50% на доставку на замовлення більше $400#~#en#~#50% off shipping for orders over 400#~#',NULL,NULL,NULL,'\0','','',NULL,NULL,'2015-11-30 17:39:40','2015-11-30 17:39:40','admin@yes-cart.com','admin@yes-cart.com','SHOP10USDSHIP50P'),(16,0,'SHOP10USDSHIPFREE',0,'SHOP10','USD','S','P','shoppingCartOrderTotal.subTotal > 1000','100','free shipping for orders over $1000','ru#~#Бесплатная доставка на заказы свыше $1000#~#uk#~#Безкоштовна доставка на замовлення більше $1000#~#en#~#free shipping for orders over 1000#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 17:47:22','2015-11-30 17:47:22','admin@yes-cart.com','admin@yes-cart.com','SHOP10USDSHIPFREE'),(17,0,'SHOP10USDCOUPON10',0,'SHOP10','USD','O','P','','10','10% off with coupon','ru#~#Скидка 10% с промо-кодом#~#uk#~#Знижка 10% з промо-кодом#~#en#~#10% off with coupon#~#',NULL,NULL,NULL,'','\0','',NULL,NULL,'2015-11-30 17:49:44','2015-11-30 17:49:44','admin@yes-cart.com','admin@yes-cart.com','SHOP10USDCOUPON10'),(18,0,'SHOP10UAHITEMQTY10P',0,'SHOP10','UAH','I','P','shoppingCartItem.qty > 5','10','10% off when buying 5 or more items','ru#~#Скидка 10% при покупке свыше 5 единиц#~#uk#~#Знижка 10% при покупці більше 5 одиниц#~#en#~#10% off when buying 5 or more items#~#',NULL,NULL,NULL,'\0','','',NULL,NULL,'2015-11-30 17:57:24','2015-11-30 17:57:24','admin@yes-cart.com','admin@yes-cart.com','SHOP10UAHITEMQTY10P'),(19,0,'SHOP10UAHITEMQTY15P',0,'SHOP10','UAH','I','P','shoppingCartItem.qty > 10','15','15% off when buying 10 or more items','ru#~#Скидка 15% при покупке свыше 10 единиц#~#uk#~#Знижка 15% при покупці більше 10 одиниц#~#en#~#15% off when buying 10 or more items#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 17:59:50','2015-11-30 17:59:50','admin@yes-cart.com','admin@yes-cart.com','SHOP10UAHITEMQTY15P'),(20,0,'SHOP10UAHITEMQTY20P',0,'SHOP10','UAH','I','P','shoppingCartItem.qty > 20','20','20% off when buying 20 or more items','ru#~#Скидка 20% при покупке свыше 20 единиц#~#uk#~#Знижка 20% при покупці більше 20 одиниц#~#en#~#20% off when buying 20 or more items#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 18:07:40','2015-11-30 18:07:40','admin@yes-cart.com','admin@yes-cart.com','SHOP10UAHITEMQTY20P'),(21,0,'SHOP10UAHORD50F',0,'SHOP10','UAH','O','F','shoppingCartItemTotal.priceSubTotal > 6000','400','400грн off on orders over 6000грн','ru#~#Скидка 400грн на заказы свыше 6000грн#~#uk#~#Знижка 400грн на замовлення більше 6000грн#~#en#~#400грн off on orders over 6000грн#~#',NULL,NULL,NULL,'\0','','',NULL,NULL,'2015-11-30 18:10:11','2015-11-30 18:10:11','admin@yes-cart.com','admin@yes-cart.com','SHOP10UAHORD50F'),(22,0,'SHOP10UAHORD100F',0,'SHOP10','UAH','O','F','shoppingCartItemTotal.priceSubTotal > 12000','800','800грн off on orders over 12000грн','ru#~#Скидка 800грн на заказы свыше 12000грн#~#uk#~#Знижка 800грн на замовлення більше 12000грн#~#en#~#800грн off on orders over 12000грн#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 18:18:07','2015-11-30 18:18:07','admin@yes-cart.com','admin@yes-cart.com','SHOP10UAHORD100F'),(23,0,'SHOP10UAHORD150F',0,'SHOP10','UAH','O','F','shoppingCartItemTotal.priceSubTotal > 18000','1200','1200грн off on orders over 18000грн','ru#~#Скидка 1200грн на заказы свыше 18000грн#~#uk#~#Знижка 1200грн на замовлення більше 18000грн#~#en#~#1200грн off on orders over 18000грн#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 18:20:37','2015-11-30 18:20:37','admin@yes-cart.com','admin@yes-cart.com','SHOP10UAHORD150F'),(24,0,'SHOP10UAHSHIP50P',0,'SHOP10','UAH','S','P','shoppingCartOrderTotal.subTotal > 3200','50','50% off shipping for orders over 3200грн','ru#~#Скидка 50% на доставку на заказы свыше 3200грн#~#uk#~#Знижка 50% на доставку на замовлення більше 3200грн#~#en#~#50% off shipping for orders over 3200грн#~#',NULL,NULL,NULL,'\0','','',NULL,NULL,'2015-11-30 18:28:40','2015-11-30 18:28:40','admin@yes-cart.com','admin@yes-cart.com','SHOP10UAHSHIP50P'),(25,0,'SHOP10UAHSHIPFREE',0,'SHOP10','UAH','S','P','shoppingCartOrderTotal.subTotal > 8000','100','free shipping for orders over 8000грн','ru#~#Бесплатная доставка на заказы свыше 8000грн#~#uk#~#Безкоштовна доставка на замовлення більше 8000грн#~#en#~#free shipping for orders over 8000грн#~#',NULL,NULL,NULL,'\0','\0','',NULL,NULL,'2015-11-30 18:35:52','2015-11-30 18:35:52','admin@yes-cart.com','admin@yes-cart.com','SHOP10UAHSHIPFREE'),(26,0,'SHOP10UAHCOUPON10',0,'SHOP10','UAH','O','P','','10','10% off with coupon','ru#~#Скидка 10% с промо-кодом#~#uk#~#Знижка 10% з промо-кодом#~#en#~#10% off with coupon#~#',NULL,NULL,NULL,'','\0','',NULL,NULL,'2015-11-30 18:38:56','2015-11-30 18:38:56','admin@yes-cart.com','admin@yes-cart.com','SHOP10UAHCOUPON10');
/*!40000 ALTER TABLE `tpromotion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:14:24
