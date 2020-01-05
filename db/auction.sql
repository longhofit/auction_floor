CREATE DATABASE  IF NOT EXISTS `online_aucdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `online_aucdb`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: online_aucdb
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autobid`
--

DROP TABLE IF EXISTS `autobid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autobid` (
  `UserID` int(30) NOT NULL,
  `ProID` int(30) NOT NULL,
  `CurrPrice` int(30) DEFAULT NULL,
  `MaxPrice` int(30) DEFAULT NULL,
  PRIMARY KEY (`UserID`,`ProID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autobid`
--

LOCK TABLES `autobid` WRITE;
/*!40000 ALTER TABLE `autobid` DISABLE KEYS */;
INSERT INTO `autobid` VALUES (10,2093,NULL,1000),(10,2109,NULL,50),(10,2113,NULL,100),(11,2091,NULL,12345),(11,2108,NULL,100),(11,2113,NULL,15),(25,2111,NULL,200);
/*!40000 ALTER TABLE `autobid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannedlist`
--

DROP TABLE IF EXISTS `bannedlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bannedlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannedlist`
--

LOCK TABLES `bannedlist` WRITE;
/*!40000 ALTER TABLE `bannedlist` DISABLE KEYS */;
INSERT INTO `bannedlist` VALUES (1,22,22),(2,10,2113),(3,13,2091),(4,10,2094),(5,11,2109),(6,10,2099),(9,10,2092),(10,10,2092),(11,11,2092);
/*!40000 ALTER TABLE `bannedlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bidding_log`
--

DROP TABLE IF EXISTS `bidding_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bidding_log` (
  `LogID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ProID` varchar(25) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `BidTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `UserName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bidding_log`
--

LOCK TABLES `bidding_log` WRITE;
/*!40000 ALTER TABLE `bidding_log` DISABLE KEYS */;
INSERT INTO `bidding_log` VALUES (2,11,'2092',1,NULL,NULL),(4,10,'2092',5,'2019-12-28 20:30:04',NULL),(5,10,'2092',9,'2019-12-28 20:31:08',NULL),(6,11,'2092',8,'2019-12-28 20:32:27',NULL),(7,11,'2092',7,'2019-12-28 20:33:26',NULL),(8,11,'2092',6,'2019-12-28 20:34:09',NULL),(9,11,'2092',12,'2019-12-28 20:34:12',NULL),(10,11,'2092',11,'2019-12-28 20:35:14',NULL),(11,11,'2092',13,'2019-12-28 20:35:23',NULL),(12,11,'2092',9,'2019-12-28 20:35:47',NULL),(13,11,'2092',15,'2019-12-28 20:35:51',NULL),(14,11,'2092',11,'2019-12-28 20:35:58',NULL),(15,11,'2092',12,'2019-12-28 20:36:05',NULL),(16,11,'2092',16,'2019-12-28 20:36:11',NULL),(17,11,'2092',17,'2019-12-28 20:36:15',NULL),(18,11,'2092',18,'2019-12-28 20:36:18',NULL),(19,11,'2092',19,'2019-12-28 20:36:22',NULL),(20,11,'2092',25,'2019-12-28 20:36:25',NULL),(21,11,'2092',21,'2019-12-28 20:36:29',NULL),(22,10,'2092',27,'2019-12-28 20:37:05',NULL),(23,11,'2092',28,'2019-12-28 20:37:58',NULL),(24,10,'2092',29,'2019-12-28 20:39:18',NULL),(25,10,'2091',9000001,'2019-12-28 20:46:37',NULL),(26,10,'2091',90000002,'2019-12-28 20:46:47',NULL),(27,10,'2091',1235,'2019-12-28 20:46:52',NULL),(28,11,'2091',124513,'2019-12-28 20:47:14',NULL),(33,10,'2095',3,'2019-12-28 20:52:41',NULL),(35,11,'2093',22,'2019-12-28 21:45:04',NULL),(36,11,'2093',21,'2019-12-28 21:45:09',NULL),(37,11,'2093',444,'2019-12-28 23:53:35',NULL),(38,11,'2093',555,'2019-12-28 23:54:01',NULL),(39,11,'2093',666,'2019-12-28 23:54:19',NULL),(40,11,'2093',123,'2019-12-28 23:55:49',NULL),(41,11,'2093',667,'2019-12-28 23:55:58',NULL),(42,11,'2093',668,'2019-12-28 23:56:06',NULL),(43,11,'2093',669,'2019-12-28 23:56:16',NULL),(44,11,'2093',670,'2019-12-28 23:56:26',NULL),(45,11,'2093',671,'2019-12-28 23:56:30',NULL),(46,11,'2093',672,'2019-12-28 23:56:38',NULL),(47,11,'2093',673,'2019-12-28 23:56:45',NULL),(48,11,'2093',67,'2019-12-28 23:56:56',NULL),(49,11,'2093',674,'2019-12-28 23:57:03',NULL),(50,11,'2093',675,'2019-12-28 23:57:09',NULL),(51,11,'2093',676,'2019-12-28 23:57:13',NULL),(52,11,'2093',677,'2019-12-28 23:57:31',NULL),(53,11,'2093',678,'2019-12-28 23:57:37',NULL),(54,11,'2093',679,'2019-12-28 23:57:42',NULL),(55,11,'2093',680,'2019-12-28 23:57:58',NULL),(56,11,'2093',681,'2019-12-28 23:58:02',NULL),(57,11,'2093',222,'2019-12-28 23:58:05',NULL),(59,11,'2093',123,'2019-12-28 23:58:27',NULL),(60,11,'2093',682,'2019-12-28 23:58:34',NULL),(61,11,'2093',683,'2019-12-28 23:58:42',NULL),(62,11,'2093',684,'2019-12-28 23:58:47',NULL),(63,11,'2093',685,'2019-12-28 23:58:53',NULL),(64,11,'2093',686,'2019-12-28 23:59:04',NULL),(65,11,'2093',687,'2019-12-28 23:59:08',NULL),(66,11,'2093',688,'2019-12-28 23:59:11',NULL),(67,11,'2093',689,'2019-12-28 23:59:15',NULL),(68,11,'2093',670,'2019-12-28 23:59:19',NULL),(69,11,'2093',690,'2019-12-29 00:02:51',NULL),(70,11,'2093',691,'2019-12-29 00:02:56',NULL),(72,11,'2093',692,'2019-12-29 00:03:08',NULL),(82,11,'2093',2,'2019-12-29 00:09:45',NULL),(90,10,'2095',4,'2019-12-29 00:33:43',NULL),(91,10,'2095',5,'2019-12-29 00:34:27',NULL),(92,10,'2095',6,'2019-12-29 00:36:09',NULL),(94,11,'2095',7,'2019-12-29 00:37:14',NULL),(95,11,'2095',8,'2019-12-29 00:37:33',NULL),(96,11,'2095',9,'2019-12-29 00:37:50',NULL),(97,11,'2095',10,'2019-12-29 00:37:58',NULL),(98,11,'2095',11,'2019-12-29 00:38:02',NULL),(99,11,'2095',12,'2019-12-29 00:38:05',NULL),(100,11,'2095',13,'2019-12-29 00:38:09',NULL),(101,11,'2095',14,'2019-12-29 00:38:12',NULL),(102,11,'2095',15,'2019-12-29 00:38:16',NULL),(104,11,'2095',16,'2019-12-29 00:38:25',NULL),(106,11,'2095',17,'2019-12-29 00:38:36',NULL),(107,11,'2095',16,'2019-12-29 00:38:39',NULL),(108,11,'2095',18,'2019-12-29 00:38:46',NULL),(109,11,'2095',19,'2019-12-29 00:38:50',NULL),(110,11,'2095',20,'2019-12-29 00:38:54',NULL),(111,11,'2092',30,'2019-12-29 00:49:34',NULL),(112,11,'2092',31,'2019-12-29 00:49:37',NULL),(113,11,'2092',32,'2019-12-29 00:49:41',NULL),(115,11,'2092',33,'2019-12-29 00:49:53',NULL),(118,11,'2092',34,'2019-12-29 00:50:08',NULL),(119,11,'2096',123,'2019-12-29 13:44:39',NULL),(120,11,'2096',124,'2019-12-29 13:45:40',NULL),(121,11,'2096',125,'2019-12-29 13:45:45',NULL),(122,11,'2096',124,'2019-12-29 13:45:50',NULL),(123,11,'2096',123,'2019-12-29 13:46:08',NULL),(124,11,'2097',1234,'2019-12-29 16:13:56',NULL),(125,11,'2097',23,'2019-12-29 16:14:12',NULL),(126,10,'2097',2000,'2019-12-29 16:15:21',NULL),(127,11,'2098',3,'2019-12-29 19:45:55',NULL),(128,11,'2098',4,'2019-12-29 19:46:09',NULL),(129,10,'2098',5,'2019-12-29 19:49:34',NULL),(130,10,'2099',312,'2019-12-29 19:50:05',NULL),(131,10,'2099',1234,'2019-12-29 22:28:36',NULL),(133,11,'2099',1235,'2019-12-29 22:32:08',NULL),(134,10,'2099',1236,'2019-12-29 22:32:22',NULL),(135,11,'2104',4,'2019-12-30 00:35:00',NULL),(136,11,'2104',5,'2019-12-30 00:35:10',NULL),(137,11,'2106',124,'2019-12-30 02:46:52',NULL),(138,11,'2092',999,'2019-12-30 04:33:10',NULL),(139,11,'2107',1234,'2019-12-30 12:47:55',NULL),(140,11,'2091',2323,'2019-12-30 12:49:44',NULL),(141,11,'2091',123123,'2019-12-30 12:53:06',NULL),(142,11,'2091',123,'2019-12-30 12:55:25',NULL),(143,11,'2091',2322,'2019-12-30 13:03:36',NULL),(144,11,'2091',123,'2019-12-30 13:05:47',NULL),(145,10,'2091',1,'2019-12-30 13:28:29',NULL),(146,11,'2091',456,'2019-12-30 13:37:18',NULL),(147,11,'2091',789,'2019-12-30 13:37:26',NULL),(148,11,'2091',23,'2019-12-30 13:43:29',NULL),(149,11,'2091',45,'2019-12-30 13:43:36',NULL),(150,11,'2091',23,'2019-12-30 13:45:13',NULL),(151,11,'2092',9999,'2019-12-30 14:17:32',NULL),(152,11,'2092',1998,'2019-12-30 14:22:46',NULL),(153,11,'2092',4545,'2019-12-30 14:25:21',NULL),(154,11,'2092',1122,'2019-12-30 14:26:50',NULL),(155,11,'2092',10000,'2019-12-30 14:30:21',NULL),(156,11,'2091',123422,'2019-12-30 14:31:56',NULL),(157,11,'2091',213,'2019-12-30 18:35:50',NULL),(158,11,'2091',123456,'2019-12-30 18:39:43',NULL),(159,11,'2091',69,'2019-12-30 18:40:12',NULL),(160,11,'2092',9998,'2019-12-30 18:41:04',NULL),(161,11,'2092',2,'2019-12-30 18:45:41',NULL),(162,11,'2091',2,'2019-12-30 18:48:52',NULL),(163,11,'2091',70,'2019-12-30 18:56:13',NULL),(164,11,'2091',12346,'2019-12-30 18:58:24',NULL),(165,11,'2108',5,'2019-12-30 19:21:49',NULL),(166,11,'2108',53,'2019-12-30 19:21:49',NULL),(167,11,'2108',56,'2019-12-30 19:24:04',NULL),(168,11,'2108',563,'2019-12-30 19:24:04',NULL),(169,10,'2108',566,'2019-12-30 19:31:32',NULL),(170,11,'2108',569,'2019-12-30 19:32:09',NULL),(171,11,'2108',572,'2019-12-30 19:32:09',NULL),(172,10,'2108',576,'2019-12-30 19:32:56',NULL),(173,11,'2108',579,'2019-12-30 19:32:56',NULL),(174,10,'2108',584,'2019-12-30 19:33:38',NULL),(175,10,'2109',3,'2019-12-30 19:53:27',NULL),(176,11,'2109',5,'2019-12-30 19:53:54',NULL),(177,10,'2109',7,'2019-12-30 19:53:54',NULL),(178,11,'2109',9,'2019-12-30 19:54:05',NULL),(179,10,'2109',11,'2019-12-30 19:54:05',NULL),(180,11,'2109',51,'2019-12-30 19:54:16',NULL),(181,11,'2113',4,'2019-12-30 23:58:57',NULL),(182,11,'2113',6,'2019-12-30 23:59:04',NULL),(183,11,'2113',8,'2019-12-30 23:59:25',NULL),(185,11,'2113',10,'2019-12-30 23:59:41',NULL),(186,11,'2113',12,'2019-12-30 23:59:49',NULL),(187,11,'2113',14,'2019-12-30 23:59:49',NULL),(188,11,'2113',16,'2019-12-31 00:00:02',NULL),(190,11,'2113',20,'2019-12-31 00:00:58',NULL),(192,11,'2113',24,'2019-12-31 00:01:06',NULL),(194,11,'2113',28,'2019-12-31 00:01:12',NULL),(196,13,'2091',90000009,'2019-12-31 02:31:11',NULL),(197,11,'2092',32,'2019-12-31 05:23:21',NULL),(198,11,'2092',34,'2019-12-31 05:25:58',NULL),(199,11,'2092',36,'2019-12-31 05:42:31',NULL),(200,25,'2093',3,'2019-12-31 13:11:40',NULL),(201,25,'2093',694,'2019-12-31 13:14:49',NULL),(202,25,'2093',23,'2019-12-31 13:15:54',NULL),(203,25,'2093',23,'2019-12-31 13:16:37',NULL),(204,25,'2113',1000,'2019-12-31 13:17:34',NULL),(205,25,'2113',1002,'2019-12-31 13:19:20',NULL),(206,25,'2113',1004,'2019-12-31 13:26:55',NULL),(207,25,'2113',1006,'2019-12-31 14:05:06',NULL),(208,25,'2111',4,'2019-12-31 20:29:24',NULL),(209,25,'2111',6,'2019-12-31 21:01:47',NULL),(210,24,'2111',8,'2019-12-31 21:02:08',NULL),(211,25,'2111',10,'2019-12-31 21:02:08',NULL),(212,24,'2111',12,'2019-12-31 21:02:18',NULL),(213,25,'2111',14,'2019-12-31 21:02:18',NULL),(214,24,'2111',16,'2019-12-31 21:02:22',NULL),(215,25,'2111',18,'2019-12-31 21:02:22',NULL),(216,25,'2096',127,'2019-12-31 22:21:45',NULL),(217,25,'2096',129,'2019-12-31 22:22:17',NULL),(218,25,'2106',126,'2020-01-01 08:39:37',NULL),(219,25,'2106',128,'2020-01-01 08:40:05',NULL),(220,25,'2107',1236,'2020-01-01 08:42:03',NULL),(221,25,'2092',38,'2020-01-01 08:42:31',NULL),(222,25,'2093',696,'2020-01-01 08:42:59',NULL),(223,25,'2118',4,'2020-01-01 11:21:40',NULL),(224,25,'2115',4,'2020-01-01 13:10:25',NULL),(225,25,'2124',4,'2020-01-01 13:11:51',NULL),(226,25,'2125',4,'2020-01-01 14:00:35',NULL),(227,27,'2125',6,'2020-01-01 14:05:40',NULL),(228,25,'2101',4,'2020-01-01 17:21:46',NULL),(229,10,'2122',4,'2020-01-01 21:05:39',NULL),(230,10,'2098',7,'2020-01-01 21:11:51','ccc'),(231,10,'2098',9,'2020-01-01 21:12:01','ccc'),(232,35,'2092',40,'2020-01-01 21:29:22','username1'),(233,35,'2098',11,'2020-01-01 21:40:10','username1'),(234,35,'2098',13,'2020-01-01 21:40:33','username1'),(235,27,'2098',15,'2020-01-01 21:41:51','test5'),(236,35,'2124',6,'2020-01-01 22:11:39','username1'),(237,36,'2092',42,'2020-01-02 16:28:07','bidder'),(238,36,'2092',44,'2020-01-02 16:28:20','bidder'),(239,36,'2092',46,'2020-01-02 16:29:39','bidder'),(240,36,'2092',99999,'2020-01-02 16:32:07','bidder'),(241,10,'2091',90000029,'2020-01-02 16:45:03','ccc'),(242,10,'2093',698,'2020-01-03 23:02:41',NULL),(243,36,'2128',4,'2020-01-04 01:43:02','bidder'),(244,36,'2128',6,'2020-01-04 01:45:09','bidder'),(245,10,'2128',8,'2020-01-04 02:01:18','ccc');
/*!40000 ALTER TABLE `bidding_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updatePrice` AFTER INSERT ON `bidding_log` FOR EACH ROW update products
set Price=NEW.Price
where ProID=NEW.ProID and NEW.Price>Price */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateWiner` AFTER INSERT ON `bidding_log` FOR EACH ROW update products
set WinerID=(SELECT UserID from bidding_log where (Price=(select max(price) from bidding_log where ProID=NEW.ProID) and ProID=NEW.ProID))
where ProID=NEW.ProID */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateNumberBid` AFTER INSERT ON `bidding_log` FOR EACH ROW update products
set NumberBid= (select count(*) from bidding_log where ProID=NEW.ProID)
where ProID=NEW.ProID */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CatID` int(11) NOT NULL AUTO_INCREMENT,
  `CatName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CatID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Điện thoại'),(3,'Máy tính bảng'),(5,'Tivi'),(6,'Guitar'),(32,'Gia dụng');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endtime`
--

DROP TABLE IF EXISTS `endtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endtime` (
  `ProID` int(11) NOT NULL AUTO_INCREMENT,
  `endtime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ProID`)
) ENGINE=InnoDB AUTO_INCREMENT=2135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endtime`
--

LOCK TABLES `endtime` WRITE;
/*!40000 ALTER TABLE `endtime` DISABLE KEYS */;
INSERT INTO `endtime` VALUES (2091,'2019-12-28 20:39:49'),(2092,'2019-12-28 20:42:51'),(2093,'2019-12-28 21:19:06'),(2094,'2019-12-28 21:20:02'),(2095,'2019-12-28 21:22:30'),(2096,'2019-12-29 11:10:22'),(2097,'2019-12-29 16:43:36'),(2098,'2019-12-29 20:15:05'),(2099,'2019-12-29 20:18:00'),(2100,'2019-12-29 23:36:53'),(2101,'2019-12-29 23:40:07'),(2103,'2019-12-30 01:01:54'),(2104,'2019-12-30 01:03:46'),(2105,'2019-12-30 02:34:29'),(2106,'2019-12-30 02:48:16'),(2107,'2019-12-30 11:49:52'),(2108,'2019-12-30 19:49:00'),(2109,'2019-12-30 20:21:52'),(2110,'2019-12-30 22:49:13'),(2111,'2019-12-30 22:52:07'),(2112,'2019-12-30 23:38:37'),(2113,'2019-12-31 00:12:33'),(2114,'2019-12-31 18:39:08'),(2115,'2020-01-01 10:44:41'),(2116,'2020-01-01 11:33:12'),(2117,'2020-01-01 11:41:37'),(2118,'2020-01-01 11:50:56'),(2119,'2020-01-01 11:51:54'),(2120,'2020-01-01 11:53:20'),(2121,'2020-01-01 11:57:07'),(2122,'2020-01-01 11:58:11'),(2123,'2020-01-01 13:34:58'),(2124,'2020-01-01 13:36:46'),(2125,'2020-01-01 14:29:59'),(2126,'2020-01-02 17:09:31'),(2127,'2020-01-03 23:34:46'),(2128,'2020-01-04 02:12:17'),(2129,'2020-01-05 09:08:54'),(2130,'2020-01-05 09:09:07'),(2131,'2020-01-05 09:23:03'),(2132,'2020-01-05 09:23:20'),(2133,'2020-01-05 09:23:29'),(2134,'2020-01-05 09:37:53');
/*!40000 ALTER TABLE `endtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `FBerID` int(11) DEFAULT NULL,
  `FBtoID` int(11) DEFAULT NULL,
  `ProID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'hiihihihh',11,25,2107),(2,'shop lua dao',11,25,2107),(3,'234',11,10,2091),(4,'aaaaa',10,10,2091),(5,'234',10,10,2091),(6,'23123',10,10,2091),(7,'223',25,10,2091),(8,'aaaa',25,10,2091),(9,'aaaa',25,10,2091),(10,'asdasdasd',25,10,2091),(11,'3123',25,10,2091),(12,'asdasd',25,10,2091),(13,'3123',25,10,2091),(14,'asdasd',27,11,2093),(15,'asdasd',27,11,2093),(16,'asdasd',27,11,2093),(17,'asdasd',27,11,2093),(18,'danh gia ne',10,11,2104),(19,'danh gia ne',25,10,2092),(20,'121',25,11,2096),(21,'asdasd',25,10,2092),(22,'dislie',10,11,2092),(23,'ssssss',10,11,2092),(24,'asdasd',25,11,2092),(25,'sdasd',25,10,2092),(26,'sddd',25,10,2092),(27,'asdasd',25,25,2118),(28,'',25,25,2118),(29,'asdas',25,25,2118),(30,'feedback ne',25,25,2118),(31,'4',10,25,2093),(32,'asdasd',10,25,2093),(33,'dasds',10,25,2093),(34,'saasd',10,11,2093),(35,'sdasd',10,25,2121),(36,'asdasd',10,25,2121),(37,'asdas',10,25,2121),(38,'asdasd',25,25,2115),(39,'asdasd',25,25,2115),(40,'asdas',25,25,2115),(41,'asasd',25,25,2115),(42,'ddd',25,25,2115),(43,'adasd',25,10,2101);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProID` int(11) NOT NULL AUTO_INCREMENT,
  `ProName` varchar(45) DEFAULT NULL,
  `TinyDes` varchar(45) DEFAULT NULL,
  `FullDes` longtext,
  `Price` int(11) DEFAULT NULL,
  `CatID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `PriceToBuy` int(11) DEFAULT NULL,
  `CreatedDTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `SellerID` int(11) DEFAULT NULL,
  `WinerID` int(11) DEFAULT NULL,
  `isDelay` varchar(1) DEFAULT NULL,
  `Step` int(11) DEFAULT NULL,
  `NumberBid` int(15) DEFAULT NULL,
  PRIMARY KEY (`ProID`),
  KEY `Pro_Seller_idx` (`SellerID`),
  KEY `Pro_Winner_idx` (`WinerID`),
  CONSTRAINT `Pro_Seller` FOREIGN KEY (`SellerID`) REFERENCES `user` (`f_ID`),
  CONSTRAINT `Pro_Winner` FOREIGN KEY (`WinerID`) REFERENCES `user` (`f_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2091,'Guitar Taylor','Mô tả ngắn Taylor','<p><strong>Đ&Agrave;N GUITAR TANGLE WOOD</strong></p>\r\n<p>Với hơn 20 năm tồn tại, Tanglewood đ&atilde; chứng minh được m&igrave;nh l&agrave; một trong những thương hiệu guitar acoustic h&agrave;ng đầu. Kh&ocirc;ng chỉ dừng lại ở đ&oacute;, Tanglewood c&ograve;n đạt được danh hiệu &ldquo;H&atilde;ng guitar b&aacute;n chạy nhất tại Anh Quốc&rdquo;.</p>\r\n<p>Tanglewood đ&atilde; x&acirc;y dựng danh tiếng của m&igrave;nh l&agrave; một nh&agrave; sản xuất nhạc cụ mộc chất lượng cao, thể hiện được sự kết hợp giữa thiết kế truyền thống v&agrave; c&ocirc;ng nghệ sản xuất ti&ecirc;n tiến hiện đại, cho sự người chơi ở mọi cấp độ nhiều sự lựa chọn c&aacute;c c&acirc;y guitar v&agrave; nhiều loại gỗ chất lượng cao kh&aacute;c nhau.</p>\r\n<p>Một số h&atilde;ng sẽ chuy&ecirc;n sản xuất những c&acirc;y guitar gi&aacute; th&agrave;nh thấp, ph&ugrave; hợp cho người mới tập chơi nhưng sẽ kh&ocirc;ng ph&ugrave; hợp cho người chơi c&oacute; kinh nghiệm v&agrave; nghệ sĩ chuy&ecirc;n nghiệp. Trong khi một số h&atilde;ng sẽ ngược lại, sản xuất ra những c&acirc;y guitar chất lượng nhất những sẽ kh&ocirc;ng ph&ugrave; hợp với t&uacute;i tiền của nhiều người. Tanglewood cung cấp những c&acirc;y guitar ở nhiều mức gi&aacute; kh&aacute;c nhau cho mọi người chơi, sẽ kh&ocirc;ng l&agrave;m lủng t&uacute;i tiền của bạn v&agrave; những người chơi chuy&ecirc;n nghiệp cũng c&oacute; thể đặt niềm tin v&agrave;o những c&acirc;y guitar của Tanglewood khi biểu diễn.</p>\r\n<p>Trong những h&atilde;ng sản xuất guitar acoustic t&ecirc;n tuổi, &iacute;t c&oacute; h&atilde;ng n&agrave;o sản xuất n&agrave;o cung cấp nhiều c&acirc;y guitar chất lượng tốt với gi&aacute; th&agrave;nh chấp nhận được như vậy.C&oacute; thể n&oacute;i Tanglewood cung cấp những c&acirc;y guitar với chất lượng đ&aacute;ng với gi&aacute; tiền nhất hiện nay.</p>\r\n<p><strong>Đ&Agrave;N GUITAR TANGLEWOOD TWCR D CROSSROADS DREADNOUGHT ACOUSTIC</strong></p>\r\n<p>Đ&agrave;n gutar acoustic&nbsp;Tanglewood TWCR D được thiết kế với chất liệu ch&iacute;nh l&agrave; gỗ&nbsp;Spruce&nbsp; v&agrave;&nbsp;Mahogany, với nhiều t&iacute;nh năng vượt trội l&agrave; lựa lựa chọn l&yacute; tưởng cho nhiều nghệ sĩ Guitar.</p>\r\n<h2><strong>C&acirc;y guitar acoustic d&aacute;ng dreadnought</strong></h2>\r\n<p>Đ&agrave;n guitar Tanglewood TWCR D c&oacute; d&aacute;ng dreadought. Th&ugrave;ng đ&agrave;n lớn cho tiếng đ&agrave;n to, ấm v&agrave; đầy hơn, ph&ugrave; hợp cho lối chơi strumming.</p>\r\n<p><strong><img src=\"https://vietthuong.vn/upload/content/images/GUITAR/tanglewood/tanglewood-twcr-d-crossroads-dreadnought-acoustic.jpg\" alt=\"\" /></strong></p>\r\n<h2><strong>Phần lớn đ&agrave;n l&agrave;m bằng gỗ&nbsp;mahogany</strong></h2>\r\n<p>Mặt trước, lưng, h&ocirc;ng v&agrave; cần đ&agrave;n&nbsp;Guitar Acoustic Tanglewood TWCR D được l&agrave;m từ chất liệu mahogany, đặc biệt gỗ l&agrave;m mặt đ&agrave;n được tuyển chọn v&ocirc; c&ugrave;ng kỹ lưỡng v&agrave; cẩn thận. Mahogany l&agrave; một loại gỗ bền với thời gian, kh&ocirc;ng bị cong v&ecirc;nh hay nứt nẻ. Thớ gỗ mịn, đẹp, &iacute;t co gi&atilde;n, tất cả tạo n&ecirc;n một sự sang trọng, gi&aacute; trị cho chiếc guitar acoustic n&agrave;y.&nbsp;Hơn nữa, gỗ mahogany c&oacute; xu hướng nở dần ra theo thời gian. V&igrave; vậy, khi sử dụng chiếc guitar n&agrave;y, người chơi sẽ cảm nhận được sự tr&ograve;n đầy của &acirc;m thanh qua thời gian, đ&acirc;y c&oacute; lẽ l&agrave; đặc điểm nổi bật nhất thu h&uacute;t người ti&ecirc;u d&ugrave;ng của sản phẩm.</p>\r\n<h2><strong>Gi&aacute; đ&agrave;n guitar Tanglewood TWCR D rất phải chăng</strong></h2>\r\n<p>Tanglewood TWCR D l&agrave; c&acirc;y đ&agrave;n l&yacute; tưởng d&agrave;nh cho những ai đang t&igrave;m kiếm c&acirc;y đ&agrave;n chất lượng với mức gi&aacute; vừa phải. Đ&acirc;y ch&iacute;nh l&agrave; sự lựa chọn tuyệt vời d&agrave;nh cho bạn, bất kể bạn l&agrave; người mới học hay l&agrave; tay chơi guitar c&oacute; nhiều kinh nghiệm.</p>',90000029,2,2,10000000,'2019-12-28 13:09:49',10,10,'Y',20,24),(2092,'2','2','<p>2</p>\n\nThời gian bổ sung:\n\n31/12/2019<ul>\r\n<li>1</li>\r\n<li>2</li>\r\n<li>3</li>\r\n<li>4</li>\r\n</ul>',99999,2,2,10000,'2019-12-28 13:12:51',10,36,'Y',2,44),(2093,'Máy tính bảng','Mô tả ngắn','<div class=\"characteristics\">\r\n<h2>Đặc điểm nổi bật của Lenovo Tab E7 TB-7104I</h2>\r\n<div id=\"owl-detail\" class=\"owl-carousel owl-detail owl-theme\">\r\n<div class=\"owl-wrapper-outer autoHeight\">\r\n<div class=\"owl-wrapper\">\r\n<div class=\"owl-item\">\r\n<div class=\"item\"><img class=\"lazyOwl\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/Slider/-lenovo-tab-e7-tb-7104i-33397-slider-thietke.jpg\" /></div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">\r\n<div class=\"des\">\r\n<p>Bộ sản phẩm chuẩn: Adapter, S&aacute;ch hướng dẫn, C&aacute;p Micro USB, Hộp m&aacute;y</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"owl-controls clickable\">\r\n<div class=\"owl-pagination\">\r\n<div class=\"owl-page active\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-buttons\">\r\n<div class=\"owl-prev\">&nbsp;</div>\r\n<div class=\"owl-next\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"boxArticle\">\r\n<article class=\"area_article area_articleFull\">\r\n<h2>Lenovo vừa cho ra mắt chiếc m&aacute;y t&iacute;nh bảng&nbsp;<a title=\"M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I ch&iacute;nh h&atilde;ng đang được kinh doanh ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang/lenovo-tab-e7-tb-7104i\" target=\"_blank\" rel=\"noopener\">Lenovo Tab E7 TB-7104I</a>&nbsp;với cấu h&igrave;nh&nbsp;đ&aacute;p&nbsp;ứng kh&aacute; mượt m&agrave; c&aacute;c t&aacute;c vụ cơ bản của người d&ugrave;ng như&nbsp;lướt web, giải tr&iacute;, chụp&nbsp;ảnh,... Hỗ trợ một khe sim 3G gi&uacute;p cho việc gọi&nbsp;điện, nhắn tin v&agrave; khả năng kết nối internet trở n&ecirc;n dễ d&agrave;ng hơn gi&uacute;p cho chiếc&nbsp;<a title=\"M&aacute;y t&iacute;nh bảng Lenovo ch&iacute;nh h&atilde;ng đang được kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang-lenovo\" target=\"_blank\" rel=\"noopener\">m&aacute;y t&iacute;nh bảng Lenovo</a>&nbsp;trở th&agrave;nh một sản phẩm&nbsp;đ&aacute;ng&nbsp;được c&acirc;n nhắc trong ph&acirc;n kh&uacute;c phổ th&ocirc;ng.</h2>\r\n<h3>Thiết kế thanh lịch</h3>\r\n<p><strong>M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I&nbsp;</strong>được ho&agrave;n thiện, gia c&ocirc;ng tỉ mỉ từ chất liệu nhựa kết hợp c&ugrave;ng 4 g&oacute;c&nbsp;được bo cong nhẹ tạo n&ecirc;n vẻ&nbsp;đẹp thanh lịch cho sản phẩm. B&ecirc;n cạnh&nbsp;đ&oacute;, với trọng lượng kh&aacute; nhẹ&nbsp;<strong>chỉ 271.7 gram</strong>&nbsp;gi&uacute;p c&aacute;c bạn c&oacute; thể dễ d&agrave;ng mang theo sản phẩm&nbsp;đến bất cứ nơi&nbsp;đ&acirc;u, rất tiện lợi.</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\"><img class=\"lazy\" title=\"Thiết kế thanh lịch tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\" alt=\"Thiết kế thanh lịch tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\" /></a></h2>\r\n<h3>M&agrave;n h&igrave;nh sắc n&eacute;t, tươi s&aacute;ng</h3>\r\n<p>Sản phẩm&nbsp;được trang bị&nbsp;<strong>m&agrave;n h&igrave;nh 7 inch</strong>&nbsp;c&oacute;&nbsp;độ ph&acirc;n giải&nbsp;<strong>1024 x 600 pixels</strong>&nbsp;mang&nbsp;đến trải nghiệm h&igrave;nh&nbsp;ảnh c&oacute; độ s&aacute;ng cao, tươi s&aacute;ng v&agrave; sắc n&eacute;t. Ngo&agrave;i ra, sản phẩm c&ograve;n t&iacute;ch hợp c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<strong>IPS LCD&nbsp;</strong>gi&uacute;p mở rộng g&oacute;c nh&igrave;n.</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\"><img class=\"lazy\" title=\"M&agrave;n h&igrave;nh tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\" alt=\"M&agrave;n h&igrave;nh tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\" /></a></h2>\r\n<p>Giờ&nbsp;đ&acirc;y, việc xem những bộ phim hấp dẫn cũng gia&nbsp;đ&igrave;nh hoặc những người bạn sẽ v&ocirc; c&ugrave;ng dễ d&agrave;ng hơn bao giờ hết.</p>\r\n<h3>Cấu h&igrave;nh&nbsp;đ&aacute;p&nbsp;ứng tốt nhu cầu sử dụng cơ bản</h3>\r\n<p><strong>Lenovo Tab E7 TB-7104I&nbsp;</strong>được trang bị chip&nbsp;<strong>Mediatek MT8167D 1.3 GHz</strong>, kết hợp c&ugrave;ng&nbsp;<strong>1 GB bộ nhớ RAM</strong>&nbsp;v&agrave;&nbsp;<strong>16 GB</strong>&nbsp;bộ nhớ lưu trữ gi&uacute;p mang&nbsp;đến hiệu năng xử l&yacute; c&aacute;c nhu cầu sử dụng cơ bản như nghe nhạc, lướt&nbsp;web, xem phim,... một c&aacute;ch mượt m&agrave;.</p>\r\n<p>Với vi xử l&yacute;&nbsp;Mediatek MT8167D c&ograve;n gi&uacute;p m&aacute;y c&oacute; thể chơi c&aacute;c tựa game nhẹ như Temple Run, Candy Crush, Đ&agrave;o V&agrave;ng,...</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\"><img class=\"lazy\" title=\"Giải tr&iacute; nhẹ nh&agrave;n tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\" alt=\"Giải tr&iacute; nhẹ nh&agrave;n tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\" /></a></h2>\r\n<p>C&ugrave;ng với&nbsp;đ&oacute; l&agrave; khả năng n&acirc;ng cấp bộ nhớ qua&nbsp;khe gắn thẻ nhớ ngo&agrave;i l&ecirc;n đến 32 GB cho người d&ugrave;ng c&oacute; thể lưu trữ th&ecirc;m h&igrave;nh ảnh, phim v&agrave; c&aacute;c dữ liệu kh&aacute;c.</p>\r\n<h3>Hỗ trợ 2 camera gi&uacute;p nghe gọi video call dễ d&agrave;ng hơn</h3>\r\n<p>Với độ ph&acirc;n giải cho 2 camera trước sau lần lượt l&agrave; 2 MP v&agrave; 0.3 MP gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng ghi lại những khoảnh khắc trong cuộc sống hằng ng&agrave;y&nbsp;hoặc c&oacute; thể thực hiện những cuộc gọi video call cho người th&acirc;n, bạn b&egrave; một c&aacute;ch dễ d&agrave;ng.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\"><img class=\"lazy\" title=\"Camera tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\" alt=\"Camera tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\" /></a></p>\r\n<h3>Dung lượng pin&nbsp;đủ d&ugrave;ng</h3>\r\n<p><a title=\"M&aacute;y t&iacute;nh bảng ch&iacute;nh h&atilde;ng đang được kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\" rel=\"noopener\">M&aacute;y t&iacute;nh bảng</a>&nbsp;Lenovo Tab E7 TB-7104I&nbsp;được trang bị vi&ecirc;n pin Lithium - Ion c&oacute; dung lượng 2750 mAh gi&uacute;p&nbsp;đ&aacute;p&nbsp;ứng tốt nhu cầu của một chiếc m&aacute;y t&iacute;nh bảng th&ocirc;ng thường trong nhiều giờ liền.</p>\r\n</article>\r\n</div>',698,2,2,40,'2019-12-28 13:49:06',11,10,'Y',2,43),(2094,'May tinh bang','mo ta ngan','<div class=\"characteristics\">\r\n<h2>Đặc điểm nổi bật của Lenovo Tab E7 TB-7104I</h2>\r\n<div id=\"owl-detail\" class=\"owl-carousel owl-detail owl-theme\">\r\n<div class=\"owl-wrapper-outer autoHeight\">\r\n<div class=\"owl-wrapper\">\r\n<div class=\"owl-item\">\r\n<div class=\"item\"><img class=\"lazyOwl\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/Slider/-lenovo-tab-e7-tb-7104i-33397-slider-thietke.jpg\" /></div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">\r\n<div class=\"des\">\r\n<p>Bộ sản phẩm chuẩn: Adapter, S&aacute;ch hướng dẫn, C&aacute;p Micro USB, Hộp m&aacute;y</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"owl-controls clickable\">\r\n<div class=\"owl-pagination\">\r\n<div class=\"owl-page active\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-buttons\">\r\n<div class=\"owl-prev\">&nbsp;</div>\r\n<div class=\"owl-next\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"boxArticle\">\r\n<article class=\"area_article area_articleFull\">\r\n<h2>Lenovo vừa cho ra mắt chiếc m&aacute;y t&iacute;nh bảng&nbsp;<a title=\"M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I ch&iacute;nh h&atilde;ng đang được kinh doanh ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang/lenovo-tab-e7-tb-7104i\" target=\"_blank\" rel=\"noopener\">Lenovo Tab E7 TB-7104I</a>&nbsp;với cấu h&igrave;nh&nbsp;đ&aacute;p&nbsp;ứng kh&aacute; mượt m&agrave; c&aacute;c t&aacute;c vụ cơ bản của người d&ugrave;ng như&nbsp;lướt web, giải tr&iacute;, chụp&nbsp;ảnh,... Hỗ trợ một khe sim 3G gi&uacute;p cho việc gọi&nbsp;điện, nhắn tin v&agrave; khả năng kết nối internet trở n&ecirc;n dễ d&agrave;ng hơn gi&uacute;p cho chiếc&nbsp;<a title=\"M&aacute;y t&iacute;nh bảng Lenovo ch&iacute;nh h&atilde;ng đang được kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang-lenovo\" target=\"_blank\" rel=\"noopener\">m&aacute;y t&iacute;nh bảng Lenovo</a>&nbsp;trở th&agrave;nh một sản phẩm&nbsp;đ&aacute;ng&nbsp;được c&acirc;n nhắc trong ph&acirc;n kh&uacute;c phổ th&ocirc;ng.</h2>\r\n<h3>Thiết kế thanh lịch</h3>\r\n<p><strong>M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I&nbsp;</strong>được ho&agrave;n thiện, gia c&ocirc;ng tỉ mỉ từ chất liệu nhựa kết hợp c&ugrave;ng 4 g&oacute;c&nbsp;được bo cong nhẹ tạo n&ecirc;n vẻ&nbsp;đẹp thanh lịch cho sản phẩm. B&ecirc;n cạnh&nbsp;đ&oacute;, với trọng lượng kh&aacute; nhẹ&nbsp;<strong>chỉ 271.7 gram</strong>&nbsp;gi&uacute;p c&aacute;c bạn c&oacute; thể dễ d&agrave;ng mang theo sản phẩm&nbsp;đến bất cứ nơi&nbsp;đ&acirc;u, rất tiện lợi.</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\"><img class=\"lazy\" title=\"Thiết kế thanh lịch tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\" alt=\"Thiết kế thanh lịch tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\" /></a></h2>\r\n<h3>M&agrave;n h&igrave;nh sắc n&eacute;t, tươi s&aacute;ng</h3>\r\n<p>Sản phẩm&nbsp;được trang bị&nbsp;<strong>m&agrave;n h&igrave;nh 7 inch</strong>&nbsp;c&oacute;&nbsp;độ ph&acirc;n giải&nbsp;<strong>1024 x 600 pixels</strong>&nbsp;mang&nbsp;đến trải nghiệm h&igrave;nh&nbsp;ảnh c&oacute; độ s&aacute;ng cao, tươi s&aacute;ng v&agrave; sắc n&eacute;t. Ngo&agrave;i ra, sản phẩm c&ograve;n t&iacute;ch hợp c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<strong>IPS LCD&nbsp;</strong>gi&uacute;p mở rộng g&oacute;c nh&igrave;n.</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\"><img class=\"lazy\" title=\"M&agrave;n h&igrave;nh tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\" alt=\"M&agrave;n h&igrave;nh tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\" /></a></h2>\r\n<p>Giờ&nbsp;đ&acirc;y, việc xem những bộ phim hấp dẫn cũng gia&nbsp;đ&igrave;nh hoặc những người bạn sẽ v&ocirc; c&ugrave;ng dễ d&agrave;ng hơn bao giờ hết.</p>\r\n<h3>Cấu h&igrave;nh&nbsp;đ&aacute;p&nbsp;ứng tốt nhu cầu sử dụng cơ bản</h3>\r\n<p><strong>Lenovo Tab E7 TB-7104I&nbsp;</strong>được trang bị chip&nbsp;<strong>Mediatek MT8167D 1.3 GHz</strong>, kết hợp c&ugrave;ng&nbsp;<strong>1 GB bộ nhớ RAM</strong>&nbsp;v&agrave;&nbsp;<strong>16 GB</strong>&nbsp;bộ nhớ lưu trữ gi&uacute;p mang&nbsp;đến hiệu năng xử l&yacute; c&aacute;c nhu cầu sử dụng cơ bản như nghe nhạc, lướt&nbsp;web, xem phim,... một c&aacute;ch mượt m&agrave;.</p>\r\n<p>Với vi xử l&yacute;&nbsp;Mediatek MT8167D c&ograve;n gi&uacute;p m&aacute;y c&oacute; thể chơi c&aacute;c tựa game nhẹ như Temple Run, Candy Crush, Đ&agrave;o V&agrave;ng,...</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\"><img class=\"lazy\" title=\"Giải tr&iacute; nhẹ nh&agrave;n tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\" alt=\"Giải tr&iacute; nhẹ nh&agrave;n tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\" /></a></h2>\r\n<p>C&ugrave;ng với&nbsp;đ&oacute; l&agrave; khả năng n&acirc;ng cấp bộ nhớ qua&nbsp;khe gắn thẻ nhớ ngo&agrave;i l&ecirc;n đến 32 GB cho người d&ugrave;ng c&oacute; thể lưu trữ th&ecirc;m h&igrave;nh ảnh, phim v&agrave; c&aacute;c dữ liệu kh&aacute;c.</p>\r\n<h3>Hỗ trợ 2 camera gi&uacute;p nghe gọi video call dễ d&agrave;ng hơn</h3>\r\n<p>Với độ ph&acirc;n giải cho 2 camera trước sau lần lượt l&agrave; 2 MP v&agrave; 0.3 MP gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng ghi lại những khoảnh khắc trong cuộc sống hằng ng&agrave;y&nbsp;hoặc c&oacute; thể thực hiện những cuộc gọi video call cho người th&acirc;n, bạn b&egrave; một c&aacute;ch dễ d&agrave;ng.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\"><img class=\"lazy\" title=\"Camera tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\" alt=\"Camera tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\" /></a></p>\r\n<h3>Dung lượng pin&nbsp;đủ d&ugrave;ng</h3>\r\n<p><a title=\"M&aacute;y t&iacute;nh bảng ch&iacute;nh h&atilde;ng đang được kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\" rel=\"noopener\">M&aacute;y t&iacute;nh bảng</a>&nbsp;Lenovo Tab E7 TB-7104I&nbsp;được trang bị vi&ecirc;n pin Lithium - Ion c&oacute; dung lượng 2750 mAh gi&uacute;p&nbsp;đ&aacute;p&nbsp;ứng tốt nhu cầu của một chiếc m&aacute;y t&iacute;nh bảng th&ocirc;ng thường trong nhiều giờ liền.</p>\r\n</article>\r\n</div>',95,3,2,12,'2019-12-28 13:50:02',11,10,'N',10,NULL),(2095,'2','2','<p>2</p>',20,5,2,2,'2019-12-28 13:52:30',10,11,'Y',2,NULL),(2096,'2','2','<p>123</p>',129,5,2,2,'2019-12-29 03:40:22',11,25,'Y',2,NULL),(2097,'2','2','',2000,2,2,2,'2019-12-29 09:13:36',11,10,'Y',2,NULL),(2098,'2','2','<p>123123123</p>',15,3,2,2,'2019-12-29 12:45:05',11,27,'Y',2,8),(2099,'2','2','',1236,3,2,2,'2019-12-29 12:48:00',11,10,'Y',2,NULL),(2100,'2','2','<p>123</p>',2,2,2,2,'2019-12-29 16:06:53',11,NULL,'Y',2,NULL),(2101,'2','2','',4,2,2,2,'2019-12-29 16:10:07',10,25,'Y',2,1),(2103,'2','2','<p>aasda</p>',2,5,2,2,'2019-12-29 17:31:54',11,NULL,'Y',2,NULL),(2104,'2','2','<p>13123</p>',5,5,2,2,'2019-12-29 17:33:46',11,11,'Y',2,NULL),(2105,'2','2','<p>123123</p>',2,2,2,2,'2019-12-29 19:04:29',11,NULL,'Y',2,NULL),(2106,'2','2','<p>asdasd</p>',128,2,2,2,'2019-12-29 19:18:16',11,25,'Y',2,3),(2107,'2','2','<p>asdasd</p>',1236,2,2,2,'2019-12-30 04:19:52',25,25,'Y',2,2),(2108,'2','2','',584,3,2,999,'2019-12-30 12:19:00',11,10,'Y',3,NULL),(2109,'2','2','<p>asdas</p>',51,3,2,1000,'2019-12-30 12:51:52',11,11,'Y',2,NULL),(2110,'2','2','30-12-2019\nundefined',2,3,2,2,'2019-12-30 15:19:13',11,NULL,'Y',2,NULL),(2111,'2','2','30-12-2019\n<div id=\"gioi-thieu\" class=\"content js-content expand\">\r\n<p><strong>Đặc điểm nổi bật đ&agrave;n guitar acoustic Tanglewood TWU&nbsp;D NS</strong></p>\r\n<p><strong><img src=\"https://salt.tikicdn.com/ts/product/78/a8/32/2a085100610055e3b7a5f1ce651f8865.jpg?v=1568797565078\" data-thumb=\"original\" /></strong></p>\r\n<p><strong>Tanglewood TWU&nbsp;D NS</strong>&nbsp;được thiết kế với chất liệu ch&iacute;nh l&agrave; gỗ Mahogany, với nhiều t&iacute;nh năng vượt trội l&agrave; lựa lựa chọn l&yacute; tưởng cho nhiều bạn chơi guitar chuy&ecirc;n nghiệp.</p>\r\n<p>C&acirc;y guitar acoustic d&aacute;ng dreadnought&nbsp;<strong>Tanglewood TWU&nbsp;D NS</strong>&nbsp;c&oacute; th&ugrave;ng đ&agrave;n lớn cho tiếng đ&agrave;n to, ấm v&agrave; đầy hơn, ph&ugrave; hợp cho lối chơi strumming. Phần lớn đ&agrave;n l&agrave;m bằng gỗ Solid mahogany Mặt trước, lưng, h&ocirc;ng v&agrave; cần đ&agrave;n&nbsp;<strong>Guitar Acoustic Tanglewood TWU&nbsp;D NS</strong>&nbsp;được l&agrave;m từ chất liệu mahogany, đặc biệt gỗ l&agrave;m mặt đ&agrave;n được tuyển chọn v&ocirc; c&ugrave;ng kỹ lưỡng v&agrave; cẩn thận. Mahogany l&agrave; một loại gỗ bền với thời gian, kh&ocirc;ng bị cong v&ecirc;nh hay nứt nẻ.</p>\r\n<p>Thớ gỗ mịn, đẹp, &iacute;t co gi&atilde;n, tất cả tạo n&ecirc;n một sự sang trọng, gi&aacute; trị cho chiếc guitar acoustic n&agrave;y. Hơn nữa, gỗ mahogany c&oacute; xu hướng nở dần ra theo thời gian. V&igrave; vậy, khi sử dụng chiếc guitar n&agrave;y, người chơi sẽ cảm nhận được sự tr&ograve;n đầy của &acirc;m thanh qua thời gian, đ&acirc;y c&oacute; lẽ l&agrave; đặc điểm nổi bật nhất thu h&uacute;t người ti&ecirc;u d&ugrave;ng của sản phẩm.</p>\r\n<p><strong>Tanglewood TWU&nbsp;D NS</strong>&nbsp;với mức rất hợp l&yacute;&nbsp;l&agrave; c&acirc;y đ&agrave;n l&yacute; tưởng d&agrave;nh cho những ai đang t&igrave;m kiếm c&acirc;y đ&agrave;n chất lượng với mức gi&aacute; vừa phải. Đ&acirc;y ch&iacute;nh l&agrave; sự lựa chọn tuyệt vời d&agrave;nh cho bạn, bất kể bạn l&agrave; người mới học hay l&agrave; tay chơi guitar c&oacute; nhiều kinh nghiệm.</p>\r\n<h3><strong>Video Demo&nbsp;Tanglewood TWU&nbsp;D NS</strong></h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/dbQTsM818_A\" width=\"679\" height=\"382\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\r\n<h3><strong>Th&ocirc;ng số chi tiết&nbsp;Tanglewood TWU D</strong></h3>\r\n<ul>\r\n<li><strong>BACK:</strong>&nbsp;Mahogany</li>\r\n<li><strong>SIDES:</strong>&nbsp;Mahogany</li>\r\n<li><strong>NECK (MATERIAL):</strong>&nbsp;Mahogany</li>\r\n<li><strong>FINGERBOARD:</strong>&nbsp;Eboncore</li>\r\n<li><strong>BRIDGE:</strong>&nbsp;Black Walnut</li>\r\n<li><strong>BINDING (TOP):</strong>&nbsp;ABS Black/White</li>\r\n<li><strong>BINDING (SIDE):</strong>&nbsp;Maple</li>\r\n<li><strong>ROSETTE:</strong>&nbsp;Maple</li>\r\n<li><strong>SADDLE:</strong>&nbsp;ABS Ivory</li>\r\n<li><strong>NUT (WIDTH):</strong>&nbsp;ABS White (43mm)</li>\r\n<li><strong>SCALE LENGTH:</strong>&nbsp;650mm</li>\r\n<li><strong>BRIDGE PINS:</strong>&nbsp;ABS Ivory&nbsp;with Black Dots</li>\r\n<li><strong>MACHINE HEADS:</strong>&nbsp;Chrome Die Cast</li>\r\n<li><strong>FINISH:</strong>&nbsp;Natural Satin</li>\r\n<li><strong>EQ:</strong>&nbsp;N/A</li>\r\n<li><strong>SKU:</strong>&nbsp;TWUD</li>\r\n<li><strong>RANGE:</strong>&nbsp;Union</li>\r\n</ul>\r\n</div>\r\n<p class=\"description-addon\">* Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ..</p>undefinedundefined\nundefined\n<ul>\r\n<li><strong>Bổ sung đc n&egrave;</strong></li>\r\n<li><strong>adasda</strong></li>\r\n<li><strong>adasd</strong></li>\r\n</ul>',18,3,2,2,'2019-12-30 15:22:07',11,25,'Y',2,NULL),(2112,'2','2','Append time: 30/12/2019\n\n<p>asds</p>',2,2,2,2,'2019-12-30 16:08:37',11,NULL,'Y',2,NULL),(2113,'2','2','30/12/2019\n\n<div id=\"gioi-thieu\" class=\"content js-content expand\">\r\n<p><strong>Đặc điểm nổi bật đ&agrave;n guitar acoustic Tanglewood TWU&nbsp;D NS</strong></p>\r\n<p><strong><img src=\"https://salt.tikicdn.com/ts/product/78/a8/32/2a085100610055e3b7a5f1ce651f8865.jpg?v=1568797565078\" data-thumb=\"original\" /></strong></p>\r\n<p><strong>Tanglewood TWU&nbsp;D NS</strong>&nbsp;được thiết kế với chất liệu ch&iacute;nh l&agrave; gỗ Mahogany, với nhiều t&iacute;nh năng vượt trội l&agrave; lựa lựa chọn l&yacute; tưởng cho nhiều bạn chơi guitar chuy&ecirc;n nghiệp.</p>\r\n<p>C&acirc;y guitar acoustic d&aacute;ng dreadnought&nbsp;<strong>Tanglewood TWU&nbsp;D NS</strong>&nbsp;c&oacute; th&ugrave;ng đ&agrave;n lớn cho tiếng đ&agrave;n to, ấm v&agrave; đầy hơn, ph&ugrave; hợp cho lối chơi strumming. Phần lớn đ&agrave;n l&agrave;m bằng gỗ Solid mahogany Mặt trước, lưng, h&ocirc;ng v&agrave; cần đ&agrave;n&nbsp;<strong>Guitar Acoustic Tanglewood TWU&nbsp;D NS</strong>&nbsp;được l&agrave;m từ chất liệu mahogany, đặc biệt gỗ l&agrave;m mặt đ&agrave;n được tuyển chọn v&ocirc; c&ugrave;ng kỹ lưỡng v&agrave; cẩn thận. Mahogany l&agrave; một loại gỗ bền với thời gian, kh&ocirc;ng bị cong v&ecirc;nh hay nứt nẻ.</p>\r\n<p>Thớ gỗ mịn, đẹp, &iacute;t co gi&atilde;n, tất cả tạo n&ecirc;n một sự sang trọng, gi&aacute; trị cho chiếc guitar acoustic n&agrave;y. Hơn nữa, gỗ mahogany c&oacute; xu hướng nở dần ra theo thời gian. V&igrave; vậy, khi sử dụng chiếc guitar n&agrave;y, người chơi sẽ cảm nhận được sự tr&ograve;n đầy của &acirc;m thanh qua thời gian, đ&acirc;y c&oacute; lẽ l&agrave; đặc điểm nổi bật nhất thu h&uacute;t người ti&ecirc;u d&ugrave;ng của sản phẩm.</p>\r\n<p><strong>Tanglewood TWU&nbsp;D NS</strong>&nbsp;với mức rất hợp l&yacute;&nbsp;l&agrave; c&acirc;y đ&agrave;n l&yacute; tưởng d&agrave;nh cho những ai đang t&igrave;m kiếm c&acirc;y đ&agrave;n chất lượng với mức gi&aacute; vừa phải. Đ&acirc;y ch&iacute;nh l&agrave; sự lựa chọn tuyệt vời d&agrave;nh cho bạn, bất kể bạn l&agrave; người mới học hay l&agrave; tay chơi guitar c&oacute; nhiều kinh nghiệm.</p>\r\n<h3><strong>Video Demo&nbsp;Tanglewood TWU&nbsp;D NS</strong></h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/dbQTsM818_A\" width=\"679\" height=\"382\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\r\n<h3><strong>Th&ocirc;ng số chi tiết&nbsp;Tanglewood TWU D</strong></h3>\r\n<ul>\r\n<li><strong>BACK:</strong>&nbsp;Mahogany</li>\r\n<li><strong>SIDES:</strong>&nbsp;Mahogany</li>\r\n<li><strong>NECK (MATERIAL):</strong>&nbsp;Mahogany</li>\r\n<li><strong>FINGERBOARD:</strong>&nbsp;Eboncore</li>\r\n<li><strong>BRIDGE:</strong>&nbsp;Black Walnut</li>\r\n<li><strong>BINDING (TOP):</strong>&nbsp;ABS Black/White</li>\r\n<li><strong>BINDING (SIDE):</strong>&nbsp;Maple</li>\r\n<li><strong>ROSETTE:</strong>&nbsp;Maple</li>\r\n<li><strong>SADDLE:</strong>&nbsp;ABS Ivory</li>\r\n<li><strong>NUT (WIDTH):</strong>&nbsp;ABS White (43mm)</li>\r\n<li><strong>SCALE LENGTH:</strong>&nbsp;650mm</li>\r\n<li><strong>BRIDGE PINS:</strong>&nbsp;ABS Ivory&nbsp;with Black Dots</li>\r\n<li><strong>MACHINE HEADS:</strong>&nbsp;Chrome Die Cast</li>\r\n<li><strong>FINISH:</strong>&nbsp;Natural Satin</li>\r\n<li><strong>EQ:</strong>&nbsp;N/A</li>\r\n<li><strong>SKU:</strong>&nbsp;TWUD</li>\r\n<li><strong>RANGE:</strong>&nbsp;Union</li>\r\n</ul>\r\n</div>\r\n<p class=\"description-addon\">* Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, .</p>\nThời gian bổ sung:\n30/12/2019<ul>\r\n<li>Bổ sung</li>\r\n<li>Bla bla</li>\r\n</ul>',1006,3,2,2,'2019-12-30 16:42:33',11,25,'Y',2,NULL),(2114,'2','2','31/12/2019\n\n<p>123</p>',2,3,2,2,'2019-12-31 11:09:08',27,NULL,'Y',2,NULL),(2115,'2','2','1/1/2020\n\n<p>qasdasd</p>',4,5,2,2,'2020-01-01 03:14:41',25,25,'Y',2,1),(2116,'2','2','1/1/2020\n\n<p>asdasd</p>',2,5,2,2,'2020-01-01 04:03:12',25,11,'Y',2,NULL),(2117,'2','2','1/1/2020\n\n<p>asd</p>',2,2,2,2,'2020-01-01 04:11:37',25,NULL,'Y',2,NULL),(2118,'2','2','1/1/2020\n\n<p>asd</p>',4,5,2,2,'2020-01-01 04:20:56',25,25,'Y',2,1),(2119,'2','2','1/1/2020\n\n<p>asdasd</p>',2,2,2,2,'2020-01-01 04:21:54',25,NULL,'Y',2,NULL),(2120,'asdasdas','2','1/1/2020\n\n<p>dddd</p>',2,2,2,2,'2020-01-01 04:23:20',25,NULL,'Y',2,NULL),(2121,'asdasd','2','1/1/2020\n\n<p>asdasd</p>',2,5,2,2,'2020-01-01 04:27:07',25,NULL,'Y',2,NULL),(2122,'2','2','1/1/2020\n\n<p>asdasd</p>',4,2,2,2,'2020-01-01 04:28:11',25,10,'Y',2,1),(2123,'2','2','1/1/2020\n\n<p>asdasd</p>',2,5,2,2,'2020-01-01 06:04:58',10,NULL,'Y',2,NULL),(2124,'2','2','1/1/2020\n\n<p>asdasd</p>',6,5,2,2,'2020-01-01 06:06:46',10,35,'Y',2,2),(2125,'2','2','1/1/2020\n\n<p>addasda</p>',6,2,2,2,'2020-01-01 06:59:59',10,27,'Y',2,2),(2126,'2','2','2/1/2020\n\n<p>asdasd</p>',2,3,2,2,'2020-01-02 09:39:31',10,NULL,'Y',2,NULL),(2127,'2','2','3/1/2020\n\n<p>&aacute;dasd</p>',2,2,2,2,'2020-01-03 16:04:46',10,NULL,'Y',2,NULL),(2128,'2','2','4/1/2020\n\n<p>asdasd</p>',8,5,2,2,'2020-01-03 18:42:17',10,10,'Y',2,3),(2129,'2','2','5/1/2020\n\n<p>asdas</p>',2,5,2,2,'2020-01-05 01:38:54',10,NULL,'Y',2,NULL),(2130,'2','2','5/1/2020\n\n<p>aaa</p>',2,5,2,2,'2020-01-05 01:39:07',10,NULL,'Y',2,NULL),(2131,'2','2','5/1/2020\n\n<p>asdasd</p>',2,5,2,2,'2020-01-05 01:53:03',10,NULL,'Y',2,NULL),(2132,'2','2','5/1/2020\n\n<p>asdasd</p>',2,2,2,2,'2020-01-05 01:53:20',10,NULL,'Y',2,NULL),(2133,'2','2','5/1/2020\n\n<p>asdasd</p>',2,2,2,2,'2020-01-05 01:53:29',10,NULL,'Y',2,NULL),(2134,'2','2','5/1/2020\n\n<p>asdasdasd</p>',999,2,2,100000,'2020-01-05 02:07:53',10,NULL,'Y',2,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `products_AFTER_INSERT` AFTER INSERT ON `products` FOR EACH ROW BEGIN
insert into endtime (ProID,endtime) values (NEW.ProID,DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 30 MINUTE));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `rqID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `Mess` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`rqID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `f_ID` int(11) NOT NULL AUTO_INCREMENT,
  `f_UserName` varchar(30) DEFAULT NULL,
  `f_Email` varchar(45) DEFAULT NULL,
  `f_Password` longtext,
  `f_Name` varchar(45) DEFAULT NULL,
  `f_DOB` varchar(45) DEFAULT NULL,
  `f_Type` varchar(10) DEFAULT 'bidder',
  `f_CreatedTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `f_LikePoint` tinyint(4) DEFAULT NULL,
  `f_DislikePoint` tinyint(4) DEFAULT NULL,
  `f_isSeller` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`f_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'longho','lelongho998@gmail.com','$2a$10$nQ/JJmvNtOqoPdl/LpbyWubWIF5v.fF6U45.RpQA/mM8DBcM2AUve','Long Hồ','2020-01-24',NULL,'2019-12-29 10:37:02',1,0,NULL),(10,'ccc','h5754548@gmail.com','$2a$10$TmCqGKWliEcEbhMpJOLYuuUzo9Efs7RqsnLWiTYkrVRRxww0bvmVK','Long Hồ','09/12/2019','bidder','2019-12-29 10:37:02',1,0,NULL),(11,'qqq','trantranbich1999@gmail.com','123','Trà Long2','26/12/2019','seller','2019-12-29 10:37:02',1,0,'1'),(12,'longho','lelongho998@gmail.com','$2a$10$09EUQivLi4TYnXOeov.90edFFzJW.rsyKZrGrPtK2Hpf5cuyhOVpi','Long','2020-02-25',NULL,'2019-12-29 10:37:02',NULL,1,NULL),(13,'123','lelongho98@gmail.com','$2a$10$oNS0Lde1QiQQF/k1GNAWB.ecro2K7Yi52XoL4O4E/VGTvq78G37Ji','123','2019-12-12',NULL,'2019-12-29 10:37:02',NULL,1,NULL),(14,'222','222','$2a$10$wqOOIysUZVD19yZASLozCuEspaBOgfQuIKZS3gEFMT3rQ.M1Aio52','222','2020-01-15',NULL,'2019-12-29 10:37:02',NULL,1,NULL),(15,'lll','123','$2a$10$7HnLIlSDy3H7j4y50ByS8Oiof3ZGqPRDbRFwxvelK3xoqSTUKLcKC','123','2020-01-01',NULL,'2019-12-29 10:37:02',NULL,1,NULL),(16,'a123','lelongo998@gmail.com','$2a$10$FtDkt5cdK91O2QukrXzJW.lwCd/41mvDJM//rE7hCNBxiUN8ahKYu','Long Ho','2019-12-25','seller','2019-12-29 10:37:02',NULL,1,'1'),(17,'23','lelongo998@gmail.com','213','d2',NULL,'bidder','2019-12-29 10:37:26',NULL,1,NULL),(19,'duy123','duytranabc.com','$2a$10$X3tvi3MMJcEzxjgvJgIq7OU14Ulnh3DjxGCoDZiDWGTErw2W.ns3S','Duy Trần','2020-02-27','bidder','2019-12-30 10:30:39',NULL,1,NULL),(20,'asd','','$2a$10$CgbpwFfaohI7H4MDOrTBIOQWJGyQZZhRUh9dg78u1qGlqLDxvvZs2','','2019-12-03','bidder','2019-12-30 10:32:47',NULL,1,NULL),(21,'asdf','','$2a$10$gtykPy8ZvyfOM5zrRxEm1eGdZB7KgLEYhOi03eHRTQxwGAK/Psx2e','','Invalid date','bidder','2019-12-30 10:34:32',NULL,1,NULL),(22,'test','','$2a$10$yoHKWJqkjNFxJPSeaKNGSO.g4wyXJpGv8g0pYAnpNVSVdpilPeAeW','','Invalid date','bidder','2019-12-30 10:45:48',1,1,NULL),(23,'test2','','$2a$10$7tRmWdiYDhpHflYrlhEAs.WK9KgQ8Ls6dcH6iI/3m/SxUXZWftK7C','','Invalid date','bidder','2019-12-30 10:48:37',1,0,NULL),(24,'test3','','$2a$10$s2YctGkxa.Jz05KFTYUA7OP9RhnVfhN8T3SniYKU87nBmlTZSYYDm','','Invalid date','seller','2019-12-30 11:18:30',NULL,1,'1'),(25,'test4','tes4@gmail.com','$2a$10$AsMPEYsIsjsWJstlMDYSjO/wtBpirSotWHYCpd16YBiR0qTWUhYg6','test4','17/12/2019','seller','2019-12-30 11:19:09',1,0,'1'),(27,'test5','','$2a$10$xTKoCc54zhWZpX.zzwZ7ZObhM5vaetJ1rh/MQ.4tmE77.PCBlBLfi','','2019-12-11','admin','2019-12-31 18:08:42',NULL,1,NULL),(28,NULL,NULL,NULL,NULL,NULL,'bidder','2019-12-31 22:40:49',NULL,1,NULL),(29,NULL,NULL,NULL,NULL,NULL,'bidder','2019-12-31 22:40:49',NULL,1,NULL),(30,NULL,NULL,NULL,NULL,NULL,'bidder','2019-12-31 22:40:49',NULL,1,NULL),(33,'test13','test123','$2a$10$bEok30Uy.t0wOP.kn/1qI.ydaGbinGLYWyjpJrRo7/wIjmB1dCAkO','Long Hồ','2020-01-29','bidder','2020-01-01 14:47:25',NULL,NULL,NULL),(34,'test14','123@adasd','$2a$10$ij4MK3KxSRnR/6VBOaWVoO7ZVbzXEDhSAjXYb9pKYBH1EV2PKG.t6','Long Hồ','2020-01-03','bidder','2020-01-01 15:08:46',NULL,NULL,NULL),(35,'username1','user1@asdasda','$2a$10$YockbjcKvWDwa6nv6TE1tukEOqsB604.wIwG/7CwkF3iC7GiPeuCq','name 1','2020-01-22','bidder','2020-01-01 21:28:25',NULL,NULL,NULL),(36,'bidder','bidder','$2a$10$bu6lFzN6ZW4Y8AImPJDlFuTite6g0sE5DpiWaFjXJi6Li9qHDwbzu','bidder','2020-01-21','bidder','2020-01-01 22:43:18',NULL,NULL,NULL),(37,'seller','seller','$2a$10$MxQI9fDzN1IUudAUMg/b6OpLXAkhSVjz4iHRQfgsTYgZqWhQkPWBq','seller','2020-01-17','bidder','2020-01-01 22:43:37',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updatePoint` AFTER INSERT ON `user` FOR EACH ROW INSERT INTO userpoint (userid,LikePoint, DislikePoint) VALUES (NEW.F_ID,0, 0) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_AFTER_UPDATE_updatepoint` AFTER UPDATE ON `user` FOR EACH ROW UPDATE userpoint SET DislikePoint = DislikePoint+1 WHERE (userID = NEW.f_ID and NEW.f_DislikePoint=1) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_AFTER_UPDATE_updatepoint2` AFTER UPDATE ON `user` FOR EACH ROW UPDATE userpoint SET LikePoint = LikePoint+1 WHERE (userID = NEW.f_ID and NEW.f_LikePoint=1) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `userpoint`
--

DROP TABLE IF EXISTS `userpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userpoint` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `LikePoint` int(15) DEFAULT NULL,
  `DislikePoint` int(15) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpoint`
--

LOCK TABLES `userpoint` WRITE;
/*!40000 ALTER TABLE `userpoint` DISABLE KEYS */;
INSERT INTO `userpoint` VALUES (1,0,0),(2,0,0),(3,0,0),(10,48,8),(11,8,3),(12,10,1),(13,5,1),(22,0,0),(23,1,2),(24,0,3),(25,26,5),(26,32,33),(27,10,2),(28,0,0),(29,0,0),(30,0,0),(31,10,2),(32,0,0),(33,0,0),(34,0,0),(35,1,0),(36,12,0),(37,0,0);
/*!40000 ALTER TABLE `userpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `ProID` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,11,'2091'),(2,10,'2092'),(3,11,'2092'),(4,11,'2094'),(5,10,'2092'),(6,10,'2094'),(7,11,'2096'),(8,11,'2096'),(9,11,'2097'),(10,11,'2097'),(11,10,'2097'),(12,11,'2092'),(13,11,'2105'),(14,11,'2105'),(15,11,'2105'),(16,11,'2106'),(17,10,'2106'),(18,25,'2113'),(19,25,'2107'),(20,36,'2092');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'online_aucdb'
--

--
-- Dumping routines for database 'online_aucdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-05 20:42:35
