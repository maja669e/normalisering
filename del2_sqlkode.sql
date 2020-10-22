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
-- Dumping data for table `normalisering1`
--

LOCK TABLES `normalisering1` WRITE;
/*!40000 ALTER TABLE `normalisering1` DISABLE KEYS */;
/*!40000 ALTER TABLE `normalisering1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `normalisering2_bought`
--

LOCK TABLES `normalisering2_bought` WRITE;
/*!40000 ALTER TABLE `normalisering2_bought` DISABLE KEYS */;
/*!40000 ALTER TABLE `normalisering2_bought` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `normalisering2_costumer`
--

LOCK TABLES `normalisering2_costumer` WRITE;
/*!40000 ALTER TABLE `normalisering2_costumer` DISABLE KEYS */;
INSERT INTO `normalisering2_costumer` VALUES (1,'Jackson Elizabeth','(206) 284-6783','123 - 4th Avenue, Fonthill ON, L3J 4S4');
/*!40000 ALTER TABLE `normalisering2_costumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `normalisering3_artist`
--

LOCK TABLES `normalisering3_artist` WRITE;
/*!40000 ALTER TABLE `normalisering3_artist` DISABLE KEYS */;
INSERT INTO `normalisering3_artist` VALUES (3,'Carol Channing'),(15,'Dennis Frings');
/*!40000 ALTER TABLE `normalisering3_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `normalisering3_costumers`
--

LOCK TABLES `normalisering3_costumers` WRITE;
/*!40000 ALTER TABLE `normalisering3_costumers` DISABLE KEYS */;
INSERT INTO `normalisering3_costumers` VALUES (1,'Jackson Elizabeth','(206) 284-6783','123 - 4th Avenue, Fonthill ON, L3J 4S4'),(2,'Maja Bijedic','12345678','Smedevej 2');
/*!40000 ALTER TABLE `normalisering3_costumers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `normalisering3_paintings`
--

LOCK TABLES `normalisering3_paintings` WRITE;
/*!40000 ALTER TABLE `normalisering3_paintings` DISABLE KEYS */;
INSERT INTO `normalisering3_paintings` VALUES (1,3,'Laugh with Teeth','2000-09-17',7000,1),(2,15,'South toward Emerald Sea','2000-11-05',1800,1),(3,3,'At the Movies','2002-02-14',5550,2),(4,15,'South toward Emerald Sea','2003-07-15',2200,2);
/*!40000 ALTER TABLE `normalisering3_paintings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `normalisering3_purchases`
--

LOCK TABLES `normalisering3_purchases` WRITE;
/*!40000 ALTER TABLE `normalisering3_purchases` DISABLE KEYS */;
INSERT INTO `normalisering3_purchases` VALUES ('15',2,'2000-11-05'),('15',4,'2003-07-15'),('3',1,'2000-09-17'),('3',3,'2002-02-14');
/*!40000 ALTER TABLE `normalisering3_purchases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-22  2:24:08
