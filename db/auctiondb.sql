-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: auctiondb
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `Image` longtext,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProID`)
) ENGINE=InnoDB AUTO_INCREMENT=2025 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2018,'3','3','3',4,2,'2',2),(2019,'4','4','4',4,2,'4',5),(2020,'5','5','5',5,2,'5',4),(2021,'6','6','6',6,2,'6',6),(2022,'7','7','7',7,2,'7',7),(2023,'SamSung A10','A10','<div id=\"gioi-thieu\" class=\"content js-content expand\">\r\n<h5>Sắc m&agrave;u sống động tr&ecirc;n m&agrave;n h&igrave;nh lớn</h5>\r\n<p><strong>Điện Thoại Samsung Galaxy A50s</strong>&nbsp;mang đến trải nghiệm Kỷ Nguy&ecirc;n Trực Tuyến th&ecirc;m sống động tr&ecirc;n m&agrave;n h&igrave;nh tr&agrave;n viền 6.4 inch từ Galaxy A50s. C&ocirc;ng nghệ Super AMOLED FHD+ cho mọi chất lượng h&igrave;nh ảnh trở n&ecirc;n sắc n&eacute;t, m&agrave;u sắc sống động như cuộc sống.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/c4/17/e4/fa266465ac4aa4c0410efc5161d7fbde.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"477\" /></p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/d0/ba/31/6a1897e2c89b90601f9d73cd9e95623a.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"468\" /></p>\r\n<h5>Thiết kế thời thượng, hoa văn ba chiều</h5>\r\n<p>N&acirc;ng tầm phong c&aacute;ch thời thượng với kiểu d&aacute;ng sang trọng, thiết kế vừa vặn trong l&ograve;ng b&agrave;n tay từ Galaxy A50s. Mặt lưng s&aacute;ng b&oacute;ng kết hợp c&aacute;c lớp m&agrave;u nổi ba chiều cho bạn th&ecirc;m đậm dấu ấn kh&aacute;c biệt. Thoả th&iacute;ch lựa chọn c&aacute;c phối m&agrave;u c&aacute; t&iacute;nh: Đen, Trắng, T&iacute;m hoặc Xanh l&agrave;m h&agrave;i l&ograve;ng mọi t&iacute;n đồ thời trang.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/3b/f0/fd/07662c759196963d137fe5f5905b55ac.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"589\" /></p>\r\n<h5>Chi tiết ấn tượng</h5>\r\n<p>Chụp ảnh th&ecirc;m chi tiết, sắc n&eacute;t với Bộ Ba Camera cao cấp từ Galaxy A50s. Camera ch&iacute;nh 48MP cho mọi khung h&igrave;nh trở n&ecirc;n sống động ấn tượng, bất chấp mọi điều kiện s&aacute;ng. Thu lại khung h&igrave;nh rộng ấn tượng với camera G&oacute;c Si&ecirc;u Rộng 8MP đỉnh cao. Thoả sức s&aacute;ng tạo với camera Chiều S&acirc;u 5MP xo&aacute; ph&ocirc;ng như m&aacute;y chuy&ecirc;n nghiệp.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/40/28/2b/029829d12bdf44b9fcca89764b3f6324.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"421\" /></p>\r\n<h5>Mở rộng khung h&igrave;nh ấn tượng</h5>\r\n<p>Lưu lại tr&ograve;n vẹn khung cảnh như mắt bạn thấy với camera G&oacute;c Si&ecirc;u Rộng từ Galaxy A50s. Camera ch&iacute;nh 48MP si&ecirc;u đỉnh cho mọi h&igrave;nh ảnh trở n&ecirc;n sắc n&eacute;t, chi tiết ấn tượng, bất chấp mọi điều kiện s&aacute;ng, d&ugrave; ng&agrave;y hay đ&ecirc;m.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/17/8f/8f/ea4d4383b5202ff91fc0823da170bfee.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"425\" /></p>\r\n<h5>Quay mượt m&agrave; với chế độ si&ecirc;u chống rung</h5>\r\n<p>Cho ra đời những thước phim chuy&ecirc;n nghiệp với Camera G&oacute;c Si&ecirc;u Rộng từ Galaxy A50s. Chế độ Si&ecirc;u Chống Rung kết hợp phần mềm dự đo&aacute;n chuyển động gi&uacute;p video bạn quay lu&ocirc;n ổn định, giảm thiểu rung lắc, r&otilde; n&eacute;t ho&agrave;n hảo.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/b7/05/b9/c5f4b7e42271417fc8707325b52e6f44.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"364\" /></p>\r\n<h5>Nổi bật chủ thể</h5>\r\n<p>Tự tin cho ra những bức ảnh xo&aacute; ph&ocirc;ng chuy&ecirc;n nghiệp với camera Chiều S&acirc;u 5MP. Nổi bật điểm nhấn quan trọng v&agrave; l&agrave;m mờ ph&ocirc;ng nền dễ d&agrave;ng, tạo n&ecirc;n bức ảnh đậm dấu ấn bạn.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/c5/1a/ba/293a26f815227e1915f87dd0ec37b5ba.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"425\" /></p>\r\n<h5>Selfie lung linh</h5>\r\n<p>Thỏa th&iacute;ch selfie, ghi lại mọi khoảnh khắc đ&aacute;ng nhớ với camera trước 32MP cực đỉnh tr&ecirc;n Galaxy A50s. Dễ d&agrave;ng l&agrave;m mờ hậu cảnh xung quanh, gi&uacute;p bạn trở th&agrave;nh chủ thể nổi bật nhất trong khung h&igrave;nh.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/a7/2c/fb/df3b48a28932d0481d2acebc8800f8aa.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"421\" /></p>\r\n<h5>Dung lượng pin cực khủng</h5>\r\n<p>K&eacute;o d&agrave;i trải nghiệm xem video, thỏa th&iacute;ch chia sẻ mọi nội dung hay chơi game suốt ng&agrave;y d&agrave;i với dung lượng 4,000mAh (ti&ecirc;u chuẩn) khủng. Nạp đầy năng lượng trong chốc l&aacute;t với chế độ Sạc Nhanh c&ocirc;ng suất 15W vượt trội.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/c1/5d/66/b6ffd73e26bc7e0c6d538e280fb8f38f.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"421\" /></p>\r\n<h5>Mở rộng kh&ocirc;ng gian lưu trữ</h5>\r\n<p>Trải nghiệm bộ m&aacute;y vận h&agrave;nh vượt trội v&agrave; bộ nhớ rộng đ&aacute;ng kinh ngạc. RAM 6GB v&agrave; bộ xử l&yacute; Octa-core mạnh mẽ từ Galaxy A50s gi&uacute;p mọi t&aacute;c vụ v&agrave; trải nghiệm của bạn lu&ocirc;n mượt m&agrave; ho&agrave;n hảo. Tải xuống hay lưu trữ bất tận mọi dữ liệu với bộ nhớ trong l&ecirc;n đến 128GB v&agrave; thẻ nhớ microSD ngo&agrave;i đến 512GB.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/6a/2c/e4/2c019d1da21e044da9c70737cd8f58ca.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"421\" /></p>\r\n<h5>Dẫn đầu mọi m&agrave;n game gay cấn</h5>\r\n<p>Chế độ Game Booster mang đến giao diện game chuy&ecirc;n dụng, tr&igrave;nh điều hướng th&acirc;n thiện v&agrave; khả năng tự động tối ưu dung lượng pin, nhiệt độ thiết bị v&agrave; dung lượng bộ nhớ dựa tr&ecirc;n th&oacute;i quen ch&iacute;nh bạn. Dẫn đầu mọi cuộc chơi, ho&agrave;n hảo mọi m&agrave;n game với chất lượng đồ hoạ sống động cho mọi chuyển động như thật từ Galaxy A50s.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/14/01/04/bac4c05f913bc2d9c1580c5b6ab69ab4.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"322\" /></p>\r\n<h5>Nền tảng bảo mật tối ưu</h5>\r\n<p>Được t&iacute;ch hợp ngay trong phần cứng v&agrave; phần mềm thiết bị từ những giai đoạn đầu, nền tảng bảo mật đa lớp cấp quốc ph&ograve;ng Samsung Knox bảo vệ mọi dữ liệu của bạn ngay khi khởi động điện thoại. Ngăn chặn hiệu quả mọi phần mềm độc hại v&agrave; nguy cơ tấn c&ocirc;ng dữ liệu c&oacute; thể xảy ra.</p>\r\n<h5>Bảo mật dấu v&acirc;n tay</h5>\r\n<p>Tăng cường một lớp bảo mật tối ưu với t&iacute;nh năng Qu&eacute;t V&acirc;n Tay Si&ecirc;u &Acirc;m ngay dưới m&agrave;n h&igrave;nh từ Galaxy A50s. Chỉ bạn mới c&oacute; thể đăng nhập, nhanh ch&oacute;ng v&agrave; bảo mật tối ưu.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/d3/b5/c0/a4bd1c73cec3ddf0cffba5490f22bb40.jpeg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"458\" /></p>\r\n<h5>Trải nghiệm nhiều hơn với bixby</h5>\r\n<ul>\r\n<li>Bixby Routines: Galaxy A50s tối ưu trải nghiệm cuộc sống của bạn. Tự động giảm &aacute;nh s&aacute;ng xanh v&agrave; bật chế độ Ban Đ&ecirc;m, gi&uacute;p đ&ocirc;i mắt th&ecirc;m thoải m&aacute;i trước khi ch&igrave;m v&agrave;o giấc ngủ. Khi bước v&agrave;o trong xe, điện thoại bạn được mở kh&oacute;a v&agrave; ph&aacute;t những bản nhạc du dương ngay lập tức. T&iacute;nh năng My Routine gi&uacute;p bạn dễ d&agrave;ng t&ugrave;y chỉnh v&agrave; c&aacute; nh&acirc;n h&oacute;a c&aacute;c nhu cầu c&oacute; sẵn, cho trải nghiệm cuộc sống th&ecirc;m liền mạch v&agrave; ho&agrave;n hảo.</li>\r\n<li>Bixby Vision: Mở rộng tầm nh&igrave;n v&agrave; thế giới quan xung quanh bạn một c&aacute;ch th&ocirc;ng minh nhất. Bixby Vision được t&iacute;ch hợp ngay trong camera, cho ph&eacute;p bạn t&igrave;m kiếm vật thể, dịch t&agrave;i liệu dễ d&agrave;ng, qu&eacute;t danh thiếp để lưu trữ trong điện thoại, sử dụng bất cứ l&uacute;c n&agrave;o bạn cần.</li>\r\n<li>Bixby Home: Chạm v&agrave; lướt để nhanh ch&oacute;ng truy cập v&agrave;o mọi nội dung bạn cần. Bixby Home ghi nhận, tạo ra c&aacute;c ứng dụng v&agrave; nội dung hữu &iacute;ch dựa tr&ecirc;n th&oacute;i quen sử dụng của bạn. Từ th&ocirc;ng b&aacute;o tin nhắn cho đến cập nhật tin tức, Bixby sẽ lấy c&aacute;c th&ocirc;ng tin li&ecirc;n quan ở c&aacute;c ứng dụng kh&aacute;c nhau để hiển thị tr&ecirc;n một m&agrave;n h&igrave;nh duy nhất, gi&uacute;p bạn dễ d&agrave;ng theo d&otilde;i.</li>\r\n</ul>\r\n<h5>Giao diện One UI ti&ecirc;n tiến</h5>\r\n<p>Sẵn s&agrave;ng trải nghiệm những đột ph&aacute; tr&ecirc;n giao diện One UI của Samsung mang đến hiệu suất ấn tượng kết hợp thiết kế giao diện ho&agrave;n to&agrave;n mới gi&uacute;p tối ưu trải nghiệm người d&ugrave;ng. Chuyển đổi dễ d&agrave;ng to&agrave;n bộ m&agrave;n h&igrave;nh sang t&ocirc;ng tối với Chế Độ Ban Đ&ecirc;m tr&ecirc;n Galaxy A50s mang lại cảm gi&aacute;c tự nhi&ecirc;n v&agrave; dễ chịu cho mắt khi sử dụng.</p>\r\n<h5>Duy tr&igrave; thiết bị galaxy lu&ocirc;n trong t&igrave;nh trạng tốt nhất</h5>\r\n<p>Dễ d&agrave;ng thực hiện chẩn đo&aacute;n t&igrave;nh trạng thiết bị hay nhận những mẹo hữu &iacute;ch v&agrave; hỗ trợ kỹ thuật nhanh ch&oacute;ng với ứng dụng Samsung Members. Cho bạn thoả sức trải nghiệm, ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi sử dụng điện thoại Galaxy.</p>\r\n<h5>Một số h&igrave;nh ảnh thực tế</h5>\r\n<p><img id=\"https://salt.tikicdn.com/ts/tmp/26/47/2a/7d3d733f20a24f0862de4d110841c1cf.jpg\" title=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" src=\"https://salt.tikicdn.com/ts/tmp/26/47/2a/7d3d733f20a24f0862de4d110841c1cf.jpg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"499\" /></p>\r\n<p><img id=\"https://salt.tikicdn.com/ts/tmp/4a/7c/64/a7727354562a10498dcd360248a55b63.jpg\" title=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" src=\"https://salt.tikicdn.com/ts/tmp/4a/7c/64/a7727354562a10498dcd360248a55b63.jpg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"499\" /></p>\r\n<p><img id=\"https://salt.tikicdn.com/ts/tmp/83/6b/6d/03cf0e518f6cbeb7a19c8a6720305583.jpg\" title=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" src=\"https://salt.tikicdn.com/ts/tmp/83/6b/6d/03cf0e518f6cbeb7a19c8a6720305583.jpg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"499\" /></p>\r\n<p><img id=\"https://salt.tikicdn.com/ts/tmp/96/63/98/c7f159474fff3bed6171d289e45ca70a.jpg\" title=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" src=\"https://salt.tikicdn.com/ts/tmp/96/63/98/c7f159474fff3bed6171d289e45ca70a.jpg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"499\" /></p>\r\n<p><img id=\"https://salt.tikicdn.com/ts/tmp/56/ee/11/71bc656f3bb330795d1a4c7e812b5429.jpg\" title=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" src=\"https://salt.tikicdn.com/ts/tmp/56/ee/11/71bc656f3bb330795d1a4c7e812b5429.jpg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"499\" /></p>\r\n<p><img id=\"https://salt.tikicdn.com/ts/tmp/a5/c3/d9/8649caf237ef42dab7cb2740851c6c56.jpg\" title=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" src=\"https://salt.tikicdn.com/ts/tmp/a5/c3/d9/8649caf237ef42dab7cb2740851c6c56.jpg\" alt=\"Điện Thoại Samsung Galaxy A50s (64GB/4GB) - H&agrave;ng Ch&iacute;nh H&atilde;ng\" width=\"750\" height=\"499\" /></p>\r\n</div>\r\n<p class=\"description-addon\">* Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ..</p>',20000,2,'/imgs/sp/2023/2023_1.jpg',2),(2024,'SamSung','SS','<div id=\"gioi-thieu\" class=\"content js-content expand\">\r\n<h5>Thiết kế sang trọng với viền mỏng</h5>\r\n<p><strong>Điện thoại Samsung&nbsp;Galaxy A8 Plus - V&agrave;ng</strong>&nbsp;mới n&agrave;y sở hữu bộ khung kim loại chạy xung quanh m&aacute;y được bo tr&ograve;n tinh tế hơn, mang lại sự thoải m&aacute;i tuyệt đối khi cầm tr&ecirc;n tay v&agrave; thao t&aacute;c. Tỉ lệ m&agrave;n h&igrave;nh mới gi&uacute;p c&aacute;c viền m&agrave;n h&igrave;nh mỏng đi đ&aacute;ng kể, c&ugrave;ng với đ&oacute; l&agrave; cụm ph&iacute;m điều hướng cơ bản tr&ecirc;n Android được đưa v&agrave;o trong m&agrave;n h&igrave;nh.</p>\r\n<h5>M&agrave;n h&igrave;nh hiển thị sắc n&eacute;t</h5>\r\n<p>Với k&iacute;ch thước l&ecirc;n tới 6 inch độ ph&acirc;n giải Full HD+ (1080 x 2220 pixels), điện thoại đem lại cho bạn khả năng hiển thị sắc n&eacute;t. Tấm nền Super AMOLED được sử dụng cho độ s&aacute;ng cao c&ugrave;ng m&agrave;u sắc rực rỡ.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/53/4a/45/42d1c767a836fb749d9e2f9198393653.jpg\" alt=\"Samsung Galaxy A8 Plus (SM-A730F/DS) 6GB / 64GB 6.0-inches LTE Dual SIM Factory Unlocked - International Stock No Warranty (Gold)\" width=\"750\" height=\"422\" /></p>\r\n<h5>Cấu h&igrave;nh mạnh mẽ</h5>\r\n<p>Samsung Galaxy A8+ d&ugrave;ng chip Exynos 7885 đi k&egrave;m với 6 GB RAM &amp; 64 GB bộ nhớ trong. M&aacute;y cho khả năng chiến game nặng tốt, hỗ trợ c&aacute;c t&aacute;c vụ c&ocirc;ng việc hằng ng&agrave;y nhanh nhạy hơn so với bản A7 (2017) cũ. M&aacute;y cũng hỗ trợ khe cắm thẻ nhớ mở rộng với dung lượng tối đa l&ecirc;n tới 256 GB c&ugrave;ng kết nối 4G LTE tốc độ cao gi&uacute;p bạn truy cập internet nhanh ch&oacute;ng, mọi l&uacute;c mọi nơi.Vi&ecirc;n pin của A8+ c&oacute; dung lượng 3500 mAh hứa hẹn cho bạn sử dụng kh&aacute; thoải m&aacute;i trong khoảng hơn 1 ng&agrave;y.</p>\r\n<h5>Camera c&oacute; nhiều sự cải tiến</h5>\r\n<p>Nắm bắt xu thế của những chiếc điện thoại ra mắt thời gian gần đ&acirc;y th&igrave; Samsung cũng đưa l&ecirc;n Galaxy A8+ (2018) bộ đ&ocirc;i camera k&eacute;p ở mặt trước với độ ph&acirc;n giải lần lượt l&agrave; 16 MP v&agrave; 8 MP.M&aacute;y cũng được t&iacute;ch hợp sẵn chế độ l&agrave;m đẹp c&ugrave;ng với nhiều t&iacute;nh năng chụp ảnh th&ocirc;ng minh hứa hẹn cho bạn những bức ảnh tự sướng ảo diệu. Camera sau với độ ph&acirc;n giải 16 MP với khả năng lấy n&eacute;t v&agrave; lưu ảnh nhanh ch&oacute;ng sẽ gi&uacute;p bạn bắt trọn từng khoảnh khắc.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/6e/1a/f9/f19b980681221df4a4ac7e8a83b61094.jpg\" alt=\"Samsung Galaxy A8 Plus (SM-A730F/DS) 6GB / 64GB 6.0-inches LTE Dual SIM Factory Unlocked - International Stock No Warranty (Gold)\" width=\"750\" height=\"421\" /></p>\r\n<h5>Nhiều t&iacute;nh năng hữu &iacute;ch</h5>\r\n<p>Cổng USB Type-C được trang bị sẵn tr&ecirc;n A8+ đi k&egrave;m n&oacute; l&agrave; c&ocirc;ng nghệ sạc pin nhanh. Ngo&agrave;i ra chuẩn Type-C c&oacute; tốc độ truyền tải dữ liệu của chuẩn 3.1 với tốc độ tối đa l&ecirc;n đến 10 Gbps, gấp đ&ocirc;i 3.0 v&agrave; tương đương chuẩn Thunderbolt. M&aacute;y được t&iacute;ch hợp bảo mật khu&ocirc;n mặt mở kho&aacute; nhanh ch&oacute;ng. Đồng thời, cảm biến v&acirc;n tay ở mặt sau tiện thao t&aacute;c v&agrave; bảo mật th&ocirc;ng tin dữ liệu an to&agrave;n.</p>\r\n<p><img src=\"https://salt.tikicdn.com/ts/tmp/91/5d/65/7de9ff521b454bb389f4e2ab3acbdb34.jpg\" alt=\"Samsung Galaxy A8 Plus (SM-A730F/DS) 6GB / 64GB 6.0-inches LTE Dual SIM Factory Unlocked - International Stock No Warranty (Gold)\" width=\"750\" height=\"421\" /></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p class=\"description-addon\">* Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ..</p>',20000000,2,'/imgs/sp/2024/2024_1.jpg',2);
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'longho','lelongho998@gmail.com','$2a$10$nQ/JJmvNtOqoPdl/LpbyWubWIF5v.fF6U45.RpQA/mM8DBcM2AUve','Long Hồ','2020-01-24'),(10,'ccc','23@asda','$2a$10$6lSjwAcOmcu65Ac6g6dSQO3BHcoenB1gLz82GWIz.zRouz.RQTF7a','Long Hồ','2019-12-30'),(11,'qqq','tralong@yahoo.com','$2a$10$zideGOblJOw5wl7MfOfK0O/REYbZe1ccDQHVGvo9RPSmC.gWgfZVu','Trà Long','2019-12-18');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'auctiondb'
--

--
-- Dumping routines for database 'auctiondb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-26 16:27:36
