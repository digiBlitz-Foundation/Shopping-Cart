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
-- Table structure for table `tstate`
--

DROP TABLE IF EXISTS `tstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tstate` (
  `STATE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `COUNTRY_CODE` varchar(2) NOT NULL,
  `STATE_CODE` varchar(64) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `DISPLAYNAME` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED_TIMESTAMP` datetime DEFAULT NULL,
  `CREATED_BY` varchar(64) DEFAULT NULL,
  `UPDATED_BY` varchar(64) DEFAULT NULL,
  `GUID` varchar(36) NOT NULL,
  PRIMARY KEY (`STATE_ID`),
  UNIQUE KEY `GUID` (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='List of supported states.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tstate`
--

LOCK TABLES `tstate` WRITE;
/*!40000 ALTER TABLE `tstate` DISABLE KEYS */;
INSERT INTO `tstate` VALUES (1,0,'US','TX','Texas','Tex','2015-11-30 11:44:22','2015-11-30 11:44:22','admin@yes-cart.com','admin@yes-cart.com','0738a75b-f950-4886-a092-0f5392d90de1'),(2,0,'AU','Australia','Australia','Australia','2015-11-30 15:35:14','2015-11-30 15:35:14','admin@yes-cart.com','admin@yes-cart.com','4a2c3ec9-7659-4a2f-a484-b3d90c7368bf'),(3,0,'AT','Austria','Austria','Austria','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','96f400b7-fd26-4f71-bdd0-b4c4395ccaff'),(4,0,'BE','België','België','België','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','0c25cae1-4c4a-4bee-9456-e53a4bac7660'),(5,0,'BG','България','България','България','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','52d4cedf-1b84-48bf-b9b2-96120bcf5aa2'),(6,0,'CA','Canada','Canada','Canada','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','34087466-917c-4dd2-ac2f-baa572c3eb45'),(7,0,'CN','中国 (中华人民共和国)','中国 (中华人民共和国)','中国 (中华人民共和国)','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','f67093bb-16bf-4863-8913-f62a1a109678'),(8,0,'HR','Hrvatska','Hrvatska','Hrvatska','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','1ff86362-d4c5-4330-a298-b0d056f9579b'),(9,0,'CY','Κύπρος','Κύπρος','Κύπρος','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','8deeb281-820f-4f86-aff2-ca1132ea167c'),(10,0,'CZ','Česká republika','Česká republika','Česká republika','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','fb51c046-3d25-4fff-bb15-32b861c2e88a'),(11,0,'DK','Danmark','Danmark','Danmark','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','2a396600-9008-4958-9915-56db3dd57ee4'),(12,0,'EE','Eesti','Eesti','Eesti','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','f07112f3-eb13-4df0-9917-9bf55c1be7f8'),(13,0,'FI','Suomi','Suomi','Suomi','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','01e12e6a-2e63-4a10-9752-ada6f3a8bef0'),(14,0,'FR','France','France','France','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','f3c2619c-2e37-4dd4-8aff-a136c0422aca'),(15,0,'DE','Deutschland','Deutschland','Deutschland','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','080bf7ba-9dfa-4f8b-b12b-16739da889a6'),(16,0,'GR','Ελλάς','Ελλάς','Ελλάς','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','ec5351bd-fac9-4883-ae70-0ec8c54db9a5'),(17,0,'HK','Hong Kong','Hong Kong','Hong Kong','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','bf1198d8-c3e0-4455-a86a-3ede73b39da9'),(18,0,'HU','Magyarország','Magyarország','Magyarország','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','b880584e-d97e-4a50-aeea-4d8b8965286c'),(19,0,'IE','Éire','Éire','Éire','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','5b04dd84-35bf-4b4a-8b50-c52e2d4d70e5'),(20,0,'IM','Isle of Man','Isle of Man','Isle of Man','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','8ebdfae8-8fe5-4bfc-9bb7-3e2efba9ba76'),(21,0,'IT','Italia','Italia','Italia','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','96c125b7-ca59-473d-9fea-747bad2af86d'),(22,0,'JP','日本','日本','日本','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','af5f4a1d-fba0-4be7-bca5-6aaaeb09aa8c'),(23,0,'LV','Latvija','Latvija','Latvija','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','2814e765-6a39-4c9b-87b3-65aab77ad6ea'),(24,0,'LT','Lietuva','Lietuva','Lietuva','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','688098ea-b4f2-42f9-808c-c8a152b00c3f'),(25,0,'LU','Lëtzebuerg','Lëtzebuerg','Lëtzebuerg','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','29db0c6e-dab2-476b-8c94-fd6b44fa63ed'),(26,0,'NL','Nederland','Nederland','Nederland','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','a7e5bfeb-2177-4619-ae8e-47ef299ef417'),(27,0,'NZ','New Zealand','New Zealand','New Zealand','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','b1bf45ca-086c-4c3a-bc06-431868ac2d92'),(28,0,'NO','Norge','Norge','Norge','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','813a3cef-3c11-458a-9015-5baeb790f4d7'),(29,0,'PL','Polska','Polska','Polska','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','2efe8ef0-e43a-4721-a2d1-ca28629c2bc9'),(30,0,'PT','Portugal','Portugal','Portugal','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','fab6c74a-66bf-4e77-94ae-e0a4d1b146e3'),(31,0,'RO','România','România','România','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','e7346221-b3c1-49d4-8169-c4edbc99c0d9'),(32,0,'RU','Россия','Россия','Россия','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','d40af6d8-8018-452a-841e-aa842a3ec611'),(33,0,'SE','Sverige','Sverige','Sverige','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','4aff556f-1ede-4127-b10b-17a454a4bc35'),(34,0,'CH','Schweiz','Schweiz','Schweiz','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','63f7b98e-12da-4e2f-a3ef-1c181f12c7c5'),(35,0,'TR','Türkiye','Türkiye','Türkiye','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','dd65b212-5182-4111-9673-1130161e35f9'),(36,0,'UA','Україна','Україна','Україна','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','fdb895d9-88e8-4456-8157-14bc2d2c641d'),(37,0,'GB','United Kingdom','United Kingdom','United Kingdom','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','71812353-e7e9-4d11-87e5-e85e6e860aaf'),(38,0,'US','United States','United States','United States','2015-11-30 15:35:16','2015-11-30 15:35:16','admin@yes-cart.com','admin@yes-cart.com','f50ba26b-704c-4134-bd11-a41a65f3305b');
/*!40000 ALTER TABLE `tstate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14  5:15:19
