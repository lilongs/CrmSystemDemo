-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `provinceid` varchar(20) NOT NULL,
  `province` varchar(50) NOT NULL,
  `temp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'110000','北京市',NULL),(2,'120000','天津市',29),(3,'130000','河北省',NULL),(4,'140000','山西省',27),(5,'150000','内蒙古自治区',21),(6,'210000','辽宁省',19),(7,'220000','吉林省',18),(8,'230000','黑龙江省',NULL),(9,'310000','上海市',26),(10,'320000','江苏省',17),(11,'330000','浙江省',34),(12,'340000','安徽省',NULL),(13,'350000','福建省',NULL),(14,'360000','江西省',NULL),(15,'370000','山东省',25),(16,'410000','河南省',NULL),(17,'420000','湖北省',NULL),(18,'430000','湖南省',NULL),(19,'440000','广东省',NULL),(20,'450000','广西壮族自治区',NULL),(21,'460000','海南省',NULL),(22,'500000','重庆市',NULL),(23,'510000','四川省',24),(24,'520000','贵州省',NULL),(25,'530000','云南省',33),(26,'540000','西藏自治区',32),(27,'610000','陕西省',23),(28,'620000','甘肃省',NULL),(29,'630000','青海省',22),(30,'640000','宁夏回族自治区',20),(31,'650000','新疆维吾尔自治区',31),(32,'710000','台湾省',28),(33,'810000','香港特别行政区',30),(34,'820000','澳门特别行政区',NULL);
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-27 21:22:00
