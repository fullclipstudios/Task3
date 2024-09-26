-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: crowdfunding_db
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS category;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE category (
  CATEGORY_ID int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (CATEGORY_ID)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES category WRITE;
/*!40000 ALTER TABLE category DISABLE KEYS */;
INSERT INTO category VALUES (1,'Community'),(2,'Arts'),(3,'Environment'),(4,'Health'),(5,'Animal welfare');
/*!40000 ALTER TABLE category ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundraiser`
--

DROP TABLE IF EXISTS fundraiser;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE fundraiser (
  FUNDRAISER_ID int NOT NULL,
  ORGANIZER varchar(50) DEFAULT NULL,
  CAPTION varchar(50) DEFAULT NULL,
  TARGET_FUNDING int DEFAULT NULL,
  CURRENT_FUNDING int DEFAULT NULL,
  CITY varchar(50) DEFAULT NULL,
  `ACTIVE` tinyint(1) DEFAULT NULL,
  CATEGORY_ID int DEFAULT NULL,
  PRIMARY KEY (FUNDRAISER_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraiser`
--

LOCK TABLES fundraiser WRITE;
/*!40000 ALTER TABLE fundraiser DISABLE KEYS */;
INSERT INTO fundraiser VALUES (11033,'Community Talent Show','Showcase the Talent',1000,0,'Sydney',0,1),(12345,'new','your caption',12345,12345,'Syd',1,1),(26280,'Fun Run','Run for a cause',10000,2000,'Melbourne',1,1),(34272,'Community plant reserve','Help us grow',15000,0,'Perth',0,3),(78336,'Gaming tournament','Have fun, win big',1500,500,'Cloncurry',1,1),(99869,'Local Wildlife sanctuary','Take Action to help animals',10000,6000,'Brisbane',1,5);
/*!40000 ALTER TABLE fundraiser ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'crowdfunding_db'
--

--
-- Dumping routines for database 'crowdfunding_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-25 16:43:03
