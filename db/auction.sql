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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bidding_log`
--

LOCK TABLES `bidding_log` WRITE;
/*!40000 ALTER TABLE `bidding_log` DISABLE KEYS */;
INSERT INTO `bidding_log` VALUES (2,11,'2092',1,NULL,'Trà Long'),(4,10,'2092',5,'2019-12-28 20:30:04','Long Hồ'),(5,10,'2092',9,'2019-12-28 20:31:08','Long Hồ'),(6,11,'2092',8,'2019-12-28 20:32:27','Trà Long'),(7,11,'2092',7,'2019-12-28 20:33:26','Trà Long'),(8,11,'2092',6,'2019-12-28 20:34:09','Trà Long'),(9,11,'2092',12,'2019-12-28 20:34:12','Trà Long'),(10,11,'2092',11,'2019-12-28 20:35:14','Trà Long'),(11,11,'2092',13,'2019-12-28 20:35:23','Trà Long'),(12,11,'2092',9,'2019-12-28 20:35:47','Trà Long'),(13,11,'2092',15,'2019-12-28 20:35:51','Trà Long'),(14,11,'2092',11,'2019-12-28 20:35:58','Trà Long'),(15,11,'2092',12,'2019-12-28 20:36:05','Trà Long'),(16,11,'2092',16,'2019-12-28 20:36:11','Trà Long'),(17,11,'2092',17,'2019-12-28 20:36:15','Trà Long'),(18,11,'2092',18,'2019-12-28 20:36:18','Trà Long'),(19,11,'2092',19,'2019-12-28 20:36:22','Trà Long'),(20,11,'2092',25,'2019-12-28 20:36:25','Trà Long'),(21,11,'2092',21,'2019-12-28 20:36:29','Trà Long'),(22,10,'2092',27,'2019-12-28 20:37:05','Long Hồ'),(23,11,'2092',28,'2019-12-28 20:37:58','Trà Long'),(24,10,'2092',29,'2019-12-28 20:39:18','Long Hồ'),(25,10,'2091',9000001,'2019-12-28 20:46:37','Long Hồ'),(26,10,'2091',90000002,'2019-12-28 20:46:47','Long Hồ'),(27,10,'2091',1235,'2019-12-28 20:46:52','Long Hồ'),(28,11,'2091',124513,'2019-12-28 20:47:14','Trà Long'),(29,10,'2094',93,'2019-12-28 20:50:43','Long Hồ'),(32,10,'2094',94,'2019-12-28 20:51:55','Long Hồ'),(33,10,'2095',3,'2019-12-28 20:52:41','Long Hồ'),(35,11,'2093',22,'2019-12-28 21:45:04','Trà Long'),(36,11,'2093',21,'2019-12-28 21:45:09','Trà Long'),(37,11,'2093',444,'2019-12-28 23:53:35','Trà Long'),(38,11,'2093',555,'2019-12-28 23:54:01','Trà Long'),(39,11,'2093',666,'2019-12-28 23:54:19','Trà Long'),(40,11,'2093',123,'2019-12-28 23:55:49','Trà Long'),(41,11,'2093',667,'2019-12-28 23:55:58','Trà Long'),(42,11,'2093',668,'2019-12-28 23:56:06','Trà Long'),(43,11,'2093',669,'2019-12-28 23:56:16','Trà Long'),(44,11,'2093',670,'2019-12-28 23:56:26','Trà Long'),(45,11,'2093',671,'2019-12-28 23:56:30','Trà Long'),(46,11,'2093',672,'2019-12-28 23:56:38','Trà Long'),(47,11,'2093',673,'2019-12-28 23:56:45','Trà Long'),(48,11,'2093',67,'2019-12-28 23:56:56','Trà Long'),(49,11,'2093',674,'2019-12-28 23:57:03','Trà Long'),(50,11,'2093',675,'2019-12-28 23:57:09','Trà Long'),(51,11,'2093',676,'2019-12-28 23:57:13','Trà Long'),(52,11,'2093',677,'2019-12-28 23:57:31','Trà Long'),(53,11,'2093',678,'2019-12-28 23:57:37','Trà Long'),(54,11,'2093',679,'2019-12-28 23:57:42','Trà Long'),(55,11,'2093',680,'2019-12-28 23:57:58','Trà Long'),(56,11,'2093',681,'2019-12-28 23:58:02','Trà Long'),(57,11,'2093',222,'2019-12-28 23:58:05','Trà Long'),(59,11,'2093',123,'2019-12-28 23:58:27','Trà Long'),(60,11,'2093',682,'2019-12-28 23:58:34','Trà Long'),(61,11,'2093',683,'2019-12-28 23:58:42','Trà Long'),(62,11,'2093',684,'2019-12-28 23:58:47','Trà Long'),(63,11,'2093',685,'2019-12-28 23:58:53','Trà Long'),(64,11,'2093',686,'2019-12-28 23:59:04','Trà Long'),(65,11,'2093',687,'2019-12-28 23:59:08','Trà Long'),(66,11,'2093',688,'2019-12-28 23:59:11','Trà Long'),(67,11,'2093',689,'2019-12-28 23:59:15','Trà Long'),(68,11,'2093',670,'2019-12-28 23:59:19','Trà Long'),(69,11,'2093',690,'2019-12-29 00:02:51','Trà Long'),(70,11,'2093',691,'2019-12-29 00:02:56','Trà Long'),(72,11,'2093',692,'2019-12-29 00:03:08','Trà Long'),(82,11,'2093',2,'2019-12-29 00:09:45',NULL),(90,10,'2095',4,'2019-12-29 00:33:43','Long Hồ'),(91,10,'2095',5,'2019-12-29 00:34:27','Long Hồ'),(92,10,'2095',6,'2019-12-29 00:36:09','Long Hồ'),(94,11,'2095',7,'2019-12-29 00:37:14','Trà Long'),(95,11,'2095',8,'2019-12-29 00:37:33','Trà Long'),(96,11,'2095',9,'2019-12-29 00:37:50','Trà Long'),(97,11,'2095',10,'2019-12-29 00:37:58','Trà Long'),(98,11,'2095',11,'2019-12-29 00:38:02','Trà Long'),(99,11,'2095',12,'2019-12-29 00:38:05','Trà Long'),(100,11,'2095',13,'2019-12-29 00:38:09','Trà Long'),(101,11,'2095',14,'2019-12-29 00:38:12','Trà Long'),(102,11,'2095',15,'2019-12-29 00:38:16','Trà Long'),(104,11,'2095',16,'2019-12-29 00:38:25','Trà Long'),(106,11,'2095',17,'2019-12-29 00:38:36','Trà Long'),(107,11,'2095',16,'2019-12-29 00:38:39','Trà Long'),(108,11,'2095',18,'2019-12-29 00:38:46','Trà Long'),(109,11,'2095',19,'2019-12-29 00:38:50','Trà Long'),(110,11,'2095',20,'2019-12-29 00:38:54','Trà Long');
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
INSERT INTO `categories` VALUES (2,'Điện thoại'),(3,'Máy tính bảng'),(5,'Tivi'),(6,'Guitar'),(32,'Gia dụng2');
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
) ENGINE=InnoDB AUTO_INCREMENT=2096 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endtime`
--

LOCK TABLES `endtime` WRITE;
/*!40000 ALTER TABLE `endtime` DISABLE KEYS */;
INSERT INTO `endtime` VALUES (2091,'2019-12-28 20:39:49'),(2092,'2019-12-28 20:42:51'),(2093,'2019-12-28 21:19:06'),(2094,'2019-12-28 21:20:02'),(2095,'2019-12-28 21:22:30');
/*!40000 ALTER TABLE `endtime` ENABLE KEYS */;
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
  PRIMARY KEY (`ProID`),
  KEY `Pro_Seller_idx` (`SellerID`),
  KEY `Pro_Winner_idx` (`WinerID`),
  CONSTRAINT `Pro_Seller` FOREIGN KEY (`SellerID`) REFERENCES `user` (`f_ID`),
  CONSTRAINT `Pro_Winner` FOREIGN KEY (`WinerID`) REFERENCES `user` (`f_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2096 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2091,'Guitar Taylor','Mô tả ngắn Taylor','<p><strong>Đ&Agrave;N GUITAR TANGLE WOOD</strong></p>\r\n<p>Với hơn 20 năm tồn tại, Tanglewood đ&atilde; chứng minh được m&igrave;nh l&agrave; một trong những thương hiệu guitar acoustic h&agrave;ng đầu. Kh&ocirc;ng chỉ dừng lại ở đ&oacute;, Tanglewood c&ograve;n đạt được danh hiệu &ldquo;H&atilde;ng guitar b&aacute;n chạy nhất tại Anh Quốc&rdquo;.</p>\r\n<p>Tanglewood đ&atilde; x&acirc;y dựng danh tiếng của m&igrave;nh l&agrave; một nh&agrave; sản xuất nhạc cụ mộc chất lượng cao, thể hiện được sự kết hợp giữa thiết kế truyền thống v&agrave; c&ocirc;ng nghệ sản xuất ti&ecirc;n tiến hiện đại, cho sự người chơi ở mọi cấp độ nhiều sự lựa chọn c&aacute;c c&acirc;y guitar v&agrave; nhiều loại gỗ chất lượng cao kh&aacute;c nhau.</p>\r\n<p>Một số h&atilde;ng sẽ chuy&ecirc;n sản xuất những c&acirc;y guitar gi&aacute; th&agrave;nh thấp, ph&ugrave; hợp cho người mới tập chơi nhưng sẽ kh&ocirc;ng ph&ugrave; hợp cho người chơi c&oacute; kinh nghiệm v&agrave; nghệ sĩ chuy&ecirc;n nghiệp. Trong khi một số h&atilde;ng sẽ ngược lại, sản xuất ra những c&acirc;y guitar chất lượng nhất những sẽ kh&ocirc;ng ph&ugrave; hợp với t&uacute;i tiền của nhiều người. Tanglewood cung cấp những c&acirc;y guitar ở nhiều mức gi&aacute; kh&aacute;c nhau cho mọi người chơi, sẽ kh&ocirc;ng l&agrave;m lủng t&uacute;i tiền của bạn v&agrave; những người chơi chuy&ecirc;n nghiệp cũng c&oacute; thể đặt niềm tin v&agrave;o những c&acirc;y guitar của Tanglewood khi biểu diễn.</p>\r\n<p>Trong những h&atilde;ng sản xuất guitar acoustic t&ecirc;n tuổi, &iacute;t c&oacute; h&atilde;ng n&agrave;o sản xuất n&agrave;o cung cấp nhiều c&acirc;y guitar chất lượng tốt với gi&aacute; th&agrave;nh chấp nhận được như vậy.C&oacute; thể n&oacute;i Tanglewood cung cấp những c&acirc;y guitar với chất lượng đ&aacute;ng với gi&aacute; tiền nhất hiện nay.</p>\r\n<p><strong>Đ&Agrave;N GUITAR TANGLEWOOD TWCR D CROSSROADS DREADNOUGHT ACOUSTIC</strong></p>\r\n<p>Đ&agrave;n gutar acoustic&nbsp;Tanglewood TWCR D được thiết kế với chất liệu ch&iacute;nh l&agrave; gỗ&nbsp;Spruce&nbsp; v&agrave;&nbsp;Mahogany, với nhiều t&iacute;nh năng vượt trội l&agrave; lựa lựa chọn l&yacute; tưởng cho nhiều nghệ sĩ Guitar.</p>\r\n<h2><strong>C&acirc;y guitar acoustic d&aacute;ng dreadnought</strong></h2>\r\n<p>Đ&agrave;n guitar Tanglewood TWCR D c&oacute; d&aacute;ng dreadought. Th&ugrave;ng đ&agrave;n lớn cho tiếng đ&agrave;n to, ấm v&agrave; đầy hơn, ph&ugrave; hợp cho lối chơi strumming.</p>\r\n<p><strong><img src=\"https://vietthuong.vn/upload/content/images/GUITAR/tanglewood/tanglewood-twcr-d-crossroads-dreadnought-acoustic.jpg\" alt=\"\" /></strong></p>\r\n<h2><strong>Phần lớn đ&agrave;n l&agrave;m bằng gỗ&nbsp;mahogany</strong></h2>\r\n<p>Mặt trước, lưng, h&ocirc;ng v&agrave; cần đ&agrave;n&nbsp;Guitar Acoustic Tanglewood TWCR D được l&agrave;m từ chất liệu mahogany, đặc biệt gỗ l&agrave;m mặt đ&agrave;n được tuyển chọn v&ocirc; c&ugrave;ng kỹ lưỡng v&agrave; cẩn thận. Mahogany l&agrave; một loại gỗ bền với thời gian, kh&ocirc;ng bị cong v&ecirc;nh hay nứt nẻ. Thớ gỗ mịn, đẹp, &iacute;t co gi&atilde;n, tất cả tạo n&ecirc;n một sự sang trọng, gi&aacute; trị cho chiếc guitar acoustic n&agrave;y.&nbsp;Hơn nữa, gỗ mahogany c&oacute; xu hướng nở dần ra theo thời gian. V&igrave; vậy, khi sử dụng chiếc guitar n&agrave;y, người chơi sẽ cảm nhận được sự tr&ograve;n đầy của &acirc;m thanh qua thời gian, đ&acirc;y c&oacute; lẽ l&agrave; đặc điểm nổi bật nhất thu h&uacute;t người ti&ecirc;u d&ugrave;ng của sản phẩm.</p>\r\n<h2><strong>Gi&aacute; đ&agrave;n guitar Tanglewood TWCR D rất phải chăng</strong></h2>\r\n<p>Tanglewood TWCR D l&agrave; c&acirc;y đ&agrave;n l&yacute; tưởng d&agrave;nh cho những ai đang t&igrave;m kiếm c&acirc;y đ&agrave;n chất lượng với mức gi&aacute; vừa phải. Đ&acirc;y ch&iacute;nh l&agrave; sự lựa chọn tuyệt vời d&agrave;nh cho bạn, bất kể bạn l&agrave; người mới học hay l&agrave; tay chơi guitar c&oacute; nhiều kinh nghiệm.</p>',90000002,2,2,10000000,'2019-12-28 13:09:49',10,10,'Y',500000),(2092,'2','2','<p>2</p>',29,2,2,2,'2019-12-28 13:12:51',10,10,'Y',2),(2093,'Máy tính bảng','Mô tả ngắn','<div class=\"characteristics\">\r\n<h2>Đặc điểm nổi bật của Lenovo Tab E7 TB-7104I</h2>\r\n<div id=\"owl-detail\" class=\"owl-carousel owl-detail owl-theme\">\r\n<div class=\"owl-wrapper-outer autoHeight\">\r\n<div class=\"owl-wrapper\">\r\n<div class=\"owl-item\">\r\n<div class=\"item\"><img class=\"lazyOwl\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/Slider/-lenovo-tab-e7-tb-7104i-33397-slider-thietke.jpg\" /></div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">\r\n<div class=\"des\">\r\n<p>Bộ sản phẩm chuẩn: Adapter, S&aacute;ch hướng dẫn, C&aacute;p Micro USB, Hộp m&aacute;y</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"owl-controls clickable\">\r\n<div class=\"owl-pagination\">\r\n<div class=\"owl-page active\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-buttons\">\r\n<div class=\"owl-prev\">&nbsp;</div>\r\n<div class=\"owl-next\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"boxArticle\">\r\n<article class=\"area_article area_articleFull\">\r\n<h2>Lenovo vừa cho ra mắt chiếc m&aacute;y t&iacute;nh bảng&nbsp;<a title=\"M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I ch&iacute;nh h&atilde;ng đang được kinh doanh ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang/lenovo-tab-e7-tb-7104i\" target=\"_blank\" rel=\"noopener\">Lenovo Tab E7 TB-7104I</a>&nbsp;với cấu h&igrave;nh&nbsp;đ&aacute;p&nbsp;ứng kh&aacute; mượt m&agrave; c&aacute;c t&aacute;c vụ cơ bản của người d&ugrave;ng như&nbsp;lướt web, giải tr&iacute;, chụp&nbsp;ảnh,... Hỗ trợ một khe sim 3G gi&uacute;p cho việc gọi&nbsp;điện, nhắn tin v&agrave; khả năng kết nối internet trở n&ecirc;n dễ d&agrave;ng hơn gi&uacute;p cho chiếc&nbsp;<a title=\"M&aacute;y t&iacute;nh bảng Lenovo ch&iacute;nh h&atilde;ng đang được kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang-lenovo\" target=\"_blank\" rel=\"noopener\">m&aacute;y t&iacute;nh bảng Lenovo</a>&nbsp;trở th&agrave;nh một sản phẩm&nbsp;đ&aacute;ng&nbsp;được c&acirc;n nhắc trong ph&acirc;n kh&uacute;c phổ th&ocirc;ng.</h2>\r\n<h3>Thiết kế thanh lịch</h3>\r\n<p><strong>M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I&nbsp;</strong>được ho&agrave;n thiện, gia c&ocirc;ng tỉ mỉ từ chất liệu nhựa kết hợp c&ugrave;ng 4 g&oacute;c&nbsp;được bo cong nhẹ tạo n&ecirc;n vẻ&nbsp;đẹp thanh lịch cho sản phẩm. B&ecirc;n cạnh&nbsp;đ&oacute;, với trọng lượng kh&aacute; nhẹ&nbsp;<strong>chỉ 271.7 gram</strong>&nbsp;gi&uacute;p c&aacute;c bạn c&oacute; thể dễ d&agrave;ng mang theo sản phẩm&nbsp;đến bất cứ nơi&nbsp;đ&acirc;u, rất tiện lợi.</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\"><img class=\"lazy\" title=\"Thiết kế thanh lịch tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\" alt=\"Thiết kế thanh lịch tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\" /></a></h2>\r\n<h3>M&agrave;n h&igrave;nh sắc n&eacute;t, tươi s&aacute;ng</h3>\r\n<p>Sản phẩm&nbsp;được trang bị&nbsp;<strong>m&agrave;n h&igrave;nh 7 inch</strong>&nbsp;c&oacute;&nbsp;độ ph&acirc;n giải&nbsp;<strong>1024 x 600 pixels</strong>&nbsp;mang&nbsp;đến trải nghiệm h&igrave;nh&nbsp;ảnh c&oacute; độ s&aacute;ng cao, tươi s&aacute;ng v&agrave; sắc n&eacute;t. Ngo&agrave;i ra, sản phẩm c&ograve;n t&iacute;ch hợp c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<strong>IPS LCD&nbsp;</strong>gi&uacute;p mở rộng g&oacute;c nh&igrave;n.</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\"><img class=\"lazy\" title=\"M&agrave;n h&igrave;nh tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\" alt=\"M&agrave;n h&igrave;nh tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\" /></a></h2>\r\n<p>Giờ&nbsp;đ&acirc;y, việc xem những bộ phim hấp dẫn cũng gia&nbsp;đ&igrave;nh hoặc những người bạn sẽ v&ocirc; c&ugrave;ng dễ d&agrave;ng hơn bao giờ hết.</p>\r\n<h3>Cấu h&igrave;nh&nbsp;đ&aacute;p&nbsp;ứng tốt nhu cầu sử dụng cơ bản</h3>\r\n<p><strong>Lenovo Tab E7 TB-7104I&nbsp;</strong>được trang bị chip&nbsp;<strong>Mediatek MT8167D 1.3 GHz</strong>, kết hợp c&ugrave;ng&nbsp;<strong>1 GB bộ nhớ RAM</strong>&nbsp;v&agrave;&nbsp;<strong>16 GB</strong>&nbsp;bộ nhớ lưu trữ gi&uacute;p mang&nbsp;đến hiệu năng xử l&yacute; c&aacute;c nhu cầu sử dụng cơ bản như nghe nhạc, lướt&nbsp;web, xem phim,... một c&aacute;ch mượt m&agrave;.</p>\r\n<p>Với vi xử l&yacute;&nbsp;Mediatek MT8167D c&ograve;n gi&uacute;p m&aacute;y c&oacute; thể chơi c&aacute;c tựa game nhẹ như Temple Run, Candy Crush, Đ&agrave;o V&agrave;ng,...</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\"><img class=\"lazy\" title=\"Giải tr&iacute; nhẹ nh&agrave;n tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\" alt=\"Giải tr&iacute; nhẹ nh&agrave;n tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\" /></a></h2>\r\n<p>C&ugrave;ng với&nbsp;đ&oacute; l&agrave; khả năng n&acirc;ng cấp bộ nhớ qua&nbsp;khe gắn thẻ nhớ ngo&agrave;i l&ecirc;n đến 32 GB cho người d&ugrave;ng c&oacute; thể lưu trữ th&ecirc;m h&igrave;nh ảnh, phim v&agrave; c&aacute;c dữ liệu kh&aacute;c.</p>\r\n<h3>Hỗ trợ 2 camera gi&uacute;p nghe gọi video call dễ d&agrave;ng hơn</h3>\r\n<p>Với độ ph&acirc;n giải cho 2 camera trước sau lần lượt l&agrave; 2 MP v&agrave; 0.3 MP gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng ghi lại những khoảnh khắc trong cuộc sống hằng ng&agrave;y&nbsp;hoặc c&oacute; thể thực hiện những cuộc gọi video call cho người th&acirc;n, bạn b&egrave; một c&aacute;ch dễ d&agrave;ng.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\"><img class=\"lazy\" title=\"Camera tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\" alt=\"Camera tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\" /></a></p>\r\n<h3>Dung lượng pin&nbsp;đủ d&ugrave;ng</h3>\r\n<p><a title=\"M&aacute;y t&iacute;nh bảng ch&iacute;nh h&atilde;ng đang được kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\" rel=\"noopener\">M&aacute;y t&iacute;nh bảng</a>&nbsp;Lenovo Tab E7 TB-7104I&nbsp;được trang bị vi&ecirc;n pin Lithium - Ion c&oacute; dung lượng 2750 mAh gi&uacute;p&nbsp;đ&aacute;p&nbsp;ứng tốt nhu cầu của một chiếc m&aacute;y t&iacute;nh bảng th&ocirc;ng thường trong nhiều giờ liền.</p>\r\n</article>\r\n</div>',692,2,2,40,'2019-12-28 13:49:06',11,11,'Y',2),(2094,'May tinh bang','mo ta ngan','<div class=\"characteristics\">\r\n<h2>Đặc điểm nổi bật của Lenovo Tab E7 TB-7104I</h2>\r\n<div id=\"owl-detail\" class=\"owl-carousel owl-detail owl-theme\">\r\n<div class=\"owl-wrapper-outer autoHeight\">\r\n<div class=\"owl-wrapper\">\r\n<div class=\"owl-item\">\r\n<div class=\"item\"><img class=\"lazyOwl\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/Slider/-lenovo-tab-e7-tb-7104i-33397-slider-thietke.jpg\" /></div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-item loading\">\r\n<div class=\"item\">\r\n<div class=\"des\">\r\n<p>Bộ sản phẩm chuẩn: Adapter, S&aacute;ch hướng dẫn, C&aacute;p Micro USB, Hộp m&aacute;y</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"owl-controls clickable\">\r\n<div class=\"owl-pagination\">\r\n<div class=\"owl-page active\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n<div class=\"owl-page\">&nbsp;</div>\r\n</div>\r\n<div class=\"owl-buttons\">\r\n<div class=\"owl-prev\">&nbsp;</div>\r\n<div class=\"owl-next\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"boxArticle\">\r\n<article class=\"area_article area_articleFull\">\r\n<h2>Lenovo vừa cho ra mắt chiếc m&aacute;y t&iacute;nh bảng&nbsp;<a title=\"M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I ch&iacute;nh h&atilde;ng đang được kinh doanh ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang/lenovo-tab-e7-tb-7104i\" target=\"_blank\" rel=\"noopener\">Lenovo Tab E7 TB-7104I</a>&nbsp;với cấu h&igrave;nh&nbsp;đ&aacute;p&nbsp;ứng kh&aacute; mượt m&agrave; c&aacute;c t&aacute;c vụ cơ bản của người d&ugrave;ng như&nbsp;lướt web, giải tr&iacute;, chụp&nbsp;ảnh,... Hỗ trợ một khe sim 3G gi&uacute;p cho việc gọi&nbsp;điện, nhắn tin v&agrave; khả năng kết nối internet trở n&ecirc;n dễ d&agrave;ng hơn gi&uacute;p cho chiếc&nbsp;<a title=\"M&aacute;y t&iacute;nh bảng Lenovo ch&iacute;nh h&atilde;ng đang được kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang-lenovo\" target=\"_blank\" rel=\"noopener\">m&aacute;y t&iacute;nh bảng Lenovo</a>&nbsp;trở th&agrave;nh một sản phẩm&nbsp;đ&aacute;ng&nbsp;được c&acirc;n nhắc trong ph&acirc;n kh&uacute;c phổ th&ocirc;ng.</h2>\r\n<h3>Thiết kế thanh lịch</h3>\r\n<p><strong>M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I&nbsp;</strong>được ho&agrave;n thiện, gia c&ocirc;ng tỉ mỉ từ chất liệu nhựa kết hợp c&ugrave;ng 4 g&oacute;c&nbsp;được bo cong nhẹ tạo n&ecirc;n vẻ&nbsp;đẹp thanh lịch cho sản phẩm. B&ecirc;n cạnh&nbsp;đ&oacute;, với trọng lượng kh&aacute; nhẹ&nbsp;<strong>chỉ 271.7 gram</strong>&nbsp;gi&uacute;p c&aacute;c bạn c&oacute; thể dễ d&agrave;ng mang theo sản phẩm&nbsp;đến bất cứ nơi&nbsp;đ&acirc;u, rất tiện lợi.</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\"><img class=\"lazy\" title=\"Thiết kế thanh lịch tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\" alt=\"Thiết kế thanh lịch tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-thietketgdd.jpg\" /></a></h2>\r\n<h3>M&agrave;n h&igrave;nh sắc n&eacute;t, tươi s&aacute;ng</h3>\r\n<p>Sản phẩm&nbsp;được trang bị&nbsp;<strong>m&agrave;n h&igrave;nh 7 inch</strong>&nbsp;c&oacute;&nbsp;độ ph&acirc;n giải&nbsp;<strong>1024 x 600 pixels</strong>&nbsp;mang&nbsp;đến trải nghiệm h&igrave;nh&nbsp;ảnh c&oacute; độ s&aacute;ng cao, tươi s&aacute;ng v&agrave; sắc n&eacute;t. Ngo&agrave;i ra, sản phẩm c&ograve;n t&iacute;ch hợp c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<strong>IPS LCD&nbsp;</strong>gi&uacute;p mở rộng g&oacute;c nh&igrave;n.</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\"><img class=\"lazy\" title=\"M&agrave;n h&igrave;nh tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\" alt=\"M&agrave;n h&igrave;nh tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-manhinhtgdd.jpg\" /></a></h2>\r\n<p>Giờ&nbsp;đ&acirc;y, việc xem những bộ phim hấp dẫn cũng gia&nbsp;đ&igrave;nh hoặc những người bạn sẽ v&ocirc; c&ugrave;ng dễ d&agrave;ng hơn bao giờ hết.</p>\r\n<h3>Cấu h&igrave;nh&nbsp;đ&aacute;p&nbsp;ứng tốt nhu cầu sử dụng cơ bản</h3>\r\n<p><strong>Lenovo Tab E7 TB-7104I&nbsp;</strong>được trang bị chip&nbsp;<strong>Mediatek MT8167D 1.3 GHz</strong>, kết hợp c&ugrave;ng&nbsp;<strong>1 GB bộ nhớ RAM</strong>&nbsp;v&agrave;&nbsp;<strong>16 GB</strong>&nbsp;bộ nhớ lưu trữ gi&uacute;p mang&nbsp;đến hiệu năng xử l&yacute; c&aacute;c nhu cầu sử dụng cơ bản như nghe nhạc, lướt&nbsp;web, xem phim,... một c&aacute;ch mượt m&agrave;.</p>\r\n<p>Với vi xử l&yacute;&nbsp;Mediatek MT8167D c&ograve;n gi&uacute;p m&aacute;y c&oacute; thể chơi c&aacute;c tựa game nhẹ như Temple Run, Candy Crush, Đ&agrave;o V&agrave;ng,...</p>\r\n<h2><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\"><img class=\"lazy\" title=\"Giải tr&iacute; nhẹ nh&agrave;n tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\" alt=\"Giải tr&iacute; nhẹ nh&agrave;n tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-cauhinhtgdd.jpg\" /></a></h2>\r\n<p>C&ugrave;ng với&nbsp;đ&oacute; l&agrave; khả năng n&acirc;ng cấp bộ nhớ qua&nbsp;khe gắn thẻ nhớ ngo&agrave;i l&ecirc;n đến 32 GB cho người d&ugrave;ng c&oacute; thể lưu trữ th&ecirc;m h&igrave;nh ảnh, phim v&agrave; c&aacute;c dữ liệu kh&aacute;c.</p>\r\n<h3>Hỗ trợ 2 camera gi&uacute;p nghe gọi video call dễ d&agrave;ng hơn</h3>\r\n<p>Với độ ph&acirc;n giải cho 2 camera trước sau lần lượt l&agrave; 2 MP v&agrave; 0.3 MP gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng ghi lại những khoảnh khắc trong cuộc sống hằng ng&agrave;y&nbsp;hoặc c&oacute; thể thực hiện những cuộc gọi video call cho người th&acirc;n, bạn b&egrave; một c&aacute;ch dễ d&agrave;ng.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\"><img class=\"lazy\" title=\"Camera tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" src=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\" alt=\"Camera tươi s&aacute;ng tr&ecirc;n M&aacute;y t&iacute;nh bảng Lenovo Tab E7 TB-7104I\" data-original=\"https://cdn.tgdd.vn/Products/Images/522/197627/lenovo-tab-e7-tb-7104i-33397-camera.jpg\" /></a></p>\r\n<h3>Dung lượng pin&nbsp;đủ d&ugrave;ng</h3>\r\n<p><a title=\"M&aacute;y t&iacute;nh bảng ch&iacute;nh h&atilde;ng đang được kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\" rel=\"noopener\">M&aacute;y t&iacute;nh bảng</a>&nbsp;Lenovo Tab E7 TB-7104I&nbsp;được trang bị vi&ecirc;n pin Lithium - Ion c&oacute; dung lượng 2750 mAh gi&uacute;p&nbsp;đ&aacute;p&nbsp;ứng tốt nhu cầu của một chiếc m&aacute;y t&iacute;nh bảng th&ocirc;ng thường trong nhiều giờ liền.</p>\r\n</article>\r\n</div>',94,3,2,12,'2019-12-28 13:50:02',11,10,'N',10),(2095,'2','2','<p>2</p>',20,5,2,2,'2019-12-28 13:52:30',10,11,'Y',2);
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
  PRIMARY KEY (`f_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'longho','lelongho998@gmail.com','$2a$10$nQ/JJmvNtOqoPdl/LpbyWubWIF5v.fF6U45.RpQA/mM8DBcM2AUve','Long Hồ','2020-01-24'),(10,'ccc','23@asda','$2a$10$6lSjwAcOmcu65Ac6g6dSQO3BHcoenB1gLz82GWIz.zRouz.RQTF7a','Long Hồ','2019-12-30'),(11,'qqq','tralong@yahoo.com','$2a$10$zideGOblJOw5wl7MfOfK0O/REYbZe1ccDQHVGvo9RPSmC.gWgfZVu','Trà Long','2019-12-18'),(12,'longho','lelongho998@gmail.com','$2a$10$09EUQivLi4TYnXOeov.90edFFzJW.rsyKZrGrPtK2Hpf5cuyhOVpi','Long','2020-02-25'),(13,'123','lelongho98@gmail.com','$2a$10$oNS0Lde1QiQQF/k1GNAWB.ecro2K7Yi52XoL4O4E/VGTvq78G37Ji','123','2019-12-12'),(14,'222','222','$2a$10$wqOOIysUZVD19yZASLozCuEspaBOgfQuIKZS3gEFMT3rQ.M1Aio52','222','2020-01-15'),(15,'lll','123','$2a$10$7HnLIlSDy3H7j4y50ByS8Oiof3ZGqPRDbRFwxvelK3xoqSTUKLcKC','123','2020-01-01');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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

-- Dump completed on 2019-12-29  0:44:18
