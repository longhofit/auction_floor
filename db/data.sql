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
  PRIMARY KEY (`ProID`)
) ENGINE=InnoDB AUTO_INCREMENT=2074 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2041,'2','2','<p>2</p>',2,2,2),(2043,'c','c','<p>c</p>',2,2,2),(2046,'2','2','<p>2</p>',2,2,2),(2047,'2','2','<p>2</p>',2,2,2),(2048,'2','2','<p>2</p>',2,2,2),(2049,'2','2','<p>2</p>',2,2,2),(2050,'3','3','<p>3</p>',3,2,3),(2051,'2','2','<p>2</p>',2,3,2),(2056,'2','2','<p>2</p>',2,6,2),(2057,'2','2','<p>2</p>',2,5,2),(2058,'Guitar Taylor','A10s','<p>a</p>',2000,6,2),(2059,'Dien thoai','abc','<div id=\"gioi-thieu\" class=\"content js-content expand\">\r\n<p><img src=\"https://salt.tikicdn.com/cache/w1200/ts/product/37/d3/6a/22ddd01d4bef3ec49fc87ce6f5477dcb.jpg\" width=\"750\" height=\"750\" /></p>\r\n<p><img src=\"https://salt.tikicdn.com/cache/w1200/ts/product/0c/c5/b3/7d88e6ca28bc4a064f92ce8eb1a62851.jpg\" width=\"750\" height=\"750\" /></p>\r\n<ul>\r\n<li><strong>Điện Thoại Anica T8</strong>&nbsp;sở hữu ngoại h&igrave;nh hiện đại v&agrave; trang nh&atilde;, chất liệu bền đẹp v&agrave; cứng c&aacute;p, vỏ ngo&agrave;i l&agrave;m từ hợp kim nano sơn m&agrave;i.&nbsp;</li>\r\n<li>C&aacute;c g&oacute;c cạnh được bo tr&ograve;n nhẹ nh&agrave;ng. Hai b&ecirc;n cạnh viền mỏng mang đến cho bạn trải nghiệm sử dụng tuyệt vời.</li>\r\n<li>Chức năng: thực hiện/nhận cuộc gọi, SMS, danh bạ điện thoại (500), MP3, FM, quay số, nluetooth, ảnh, lịch, đồng hồ b&aacute;o thức, m&aacute;y t&iacute;nh, vv</li>\r\n<li>Điện thoại hỗ trợ thẻ nhớ l&ecirc;n đến 32GB gi&uacute;p bạn c&oacute; thể lưu trữ c&aacute;c tệp tin, h&igrave;nh ảnh, nhạc, video tiện dụng.&nbsp;</li>\r\n<li>Điện thoại sử dụng pin lithium 480mAh cho thời gian sử dụng l&acirc;u hơn.</li>\r\n</ul>\r\n</div>\r\n<p class=\"description-addon\">* Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ..</p>',2,2,2),(2060,'2','2','<p>2</p>',2,6,2),(2061,'2','2','',2,2,2),(2062,'2','2','',2,2,2),(2063,'2','2','',2,2,2),(2064,'2','2','',2,2,2),(2065,'2','2','',2,2,2),(2066,'2','2','',2,2,2),(2067,'2','2','',2,2,2),(2068,'2','2','',2,2,2),(2069,'2','2','',2,6,2),(2070,'2','2','<p>2</p>',2,6,2),(2071,'2','2','<p>2</p>',2,3,2),(2072,'2','2','<p>2</p>',2,5,2),(2073,'2','2','<p>2</p>',2,5,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
  PRIMARY KEY (`f_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2019-12-27 21:13:40
