-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: employeedb
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
INSERT INTO `user` VALUES (1,'Ha Noi','100000',NULL,NULL,NULL),(2,'T.P HCM','80000',NULL,NULL,NULL),(3,'Da Nang','50000',NULL,NULL,NULL),(4,'Nam Dinh','40000',NULL,NULL,NULL),(5,'s','s',NULL,NULL,NULL),(6,'s','s','s','s',NULL),(9,'longho','lelongho998@gmail.com','$2a$10$nQ/JJmvNtOqoPdl/LpbyWubWIF5v.fF6U45.RpQA/mM8DBcM2AUve','Long Hồ','2020-01-24'),(10,'ccc','23@asda','$2a$10$6lSjwAcOmcu65Ac6g6dSQO3BHcoenB1gLz82GWIz.zRouz.RQTF7a','Long Hồ','2019-12-30'),(11,'qqq','tralong@yahoo.com','$2a$10$zideGOblJOw5wl7MfOfK0O/REYbZe1ccDQHVGvo9RPSmC.gWgfZVu','Trà Long','2019-12-18');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-26 15:51:32
