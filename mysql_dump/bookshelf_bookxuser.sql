CREATE DATABASE  IF NOT EXISTS `bookshelf` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookshelf`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshelf
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `bookxuser`
--

DROP TABLE IF EXISTS `bookxuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookxuser` (
  `user_email` varchar(255) NOT NULL,
  `book_ISBN` bigint NOT NULL,
  `addition_date` datetime DEFAULT NULL,
  `deletion_date` datetime DEFAULT NULL,
  `readings_counter` int DEFAULT NULL,
  `bookmark_page` int DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `opinion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_email`,`book_ISBN`),
  KEY `email_idx` (`user_email`),
  KEY `book_idx` (`book_ISBN`),
  CONSTRAINT `book` FOREIGN KEY (`book_ISBN`) REFERENCES `book` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookxuser`
--

LOCK TABLES `bookxuser` WRITE;
/*!40000 ALTER TABLE `bookxuser` DISABLE KEYS */;
INSERT INTO `bookxuser` VALUES ('anna.verdi@email.com',9781781101582,'2023-07-02 19:02:19',NULL,1,49,'Great book!','like'),('anna.verdi@email.com',9788850318254,'2023-07-03 12:34:04',NULL,0,NULL,NULL,NULL),('anna.verdi@email.com',9788852022562,'2023-07-03 12:34:08',NULL,0,NULL,NULL,NULL),('mario.rossi@email.com',9781781101582,'2023-06-28 00:00:00',NULL,5,89,'Good book! Recommended!','like'),('mario.rossi@email.com',9788806239831,'2023-07-02 18:27:49',NULL,1,90,'Nice reading!!','like'),('mario.rossi@email.com',9788830104716,'2023-07-02 18:27:51',NULL,0,261,'Too many pages...','dislike'),('piero.neri@email.com',9788806239831,'2023-07-01 22:28:42',NULL,0,42,NULL,NULL);
/*!40000 ALTER TABLE `bookxuser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03 12:38:06
