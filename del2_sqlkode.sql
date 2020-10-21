-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: normalisering
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `normalisering1`
--

DROP TABLE IF EXISTS `normalisering1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normalisering1` (
  `costumername` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` smallint DEFAULT NULL,
  `artist` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `purchasedate` date DEFAULT NULL,
  `salesprice` int DEFAULT NULL,
  PRIMARY KEY (`costumername`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `normalisering2_bought`
--

DROP TABLE IF EXISTS `normalisering2_bought`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normalisering2_bought` (
  `costumerid` int NOT NULL,
  `artist` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `purchasedate` date DEFAULT NULL,
  `salesprice` int DEFAULT NULL,
  PRIMARY KEY (`costumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `normalisering2_costumer`
--

DROP TABLE IF EXISTS `normalisering2_costumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normalisering2_costumer` (
  `costumerid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`costumerid`),
  UNIQUE KEY `costumerid_UNIQUE` (`costumerid`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `normalisering3_artist`
--

DROP TABLE IF EXISTS `normalisering3_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normalisering3_artist` (
  `idartist` int NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`idartist`),
  UNIQUE KEY `artistid_UNIQUE` (`idartist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `normalisering3_costumer`
--

DROP TABLE IF EXISTS `normalisering3_costumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normalisering3_costumer` (
  `idcostumer` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcostumer`),
  UNIQUE KEY `costumerid_UNIQUE` (`idcostumer`),
  CONSTRAINT `normalisering3_paintings` FOREIGN KEY (`idcostumer`) REFERENCES `normalisering3_paintings` (`idpainting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `normalisering3_paintings`
--

DROP TABLE IF EXISTS `normalisering3_paintings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normalisering3_paintings` (
  `idpainting` int NOT NULL AUTO_INCREMENT,
  `idartist` int DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `purchasedate` date DEFAULT NULL,
  `salesprice` int NOT NULL,
  PRIMARY KEY (`idpainting`),
  UNIQUE KEY `idpainting_UNIQUE` (`idpainting`),
  KEY `normalisering3_artist_idx` (`idartist`),
  CONSTRAINT `normalisering3_artist` FOREIGN KEY (`idartist`) REFERENCES `normalisering3_artist` (`idartist`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `normalisering3_purchase`
--

DROP TABLE IF EXISTS `normalisering3_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normalisering3_purchase` (
  `idcostumer` int NOT NULL,
  `idartist` varchar(50) NOT NULL,
  `title` varchar(45) NOT NULL,
  `purchasedate` date NOT NULL,
  PRIMARY KEY (`idcostumer`,`idartist`,`title`,`purchasedate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-21 23:31:28
