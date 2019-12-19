CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `task_to_employe`
--

DROP TABLE IF EXISTS `task_to_employe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_to_employe` (
  `task_to_employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `effective_start` datetime DEFAULT NULL,
  `effective_end` datetime DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`task_to_employee_id`),
  KEY `TO_EMPLOYEE_idx` (`employe_id`),
  KEY `TO_TASK_idx` (`task_id`),
  CONSTRAINT `TO_EMPLOYEE` FOREIGN KEY (`employe_id`) REFERENCES `employe` (`employe_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `TO_TASK` FOREIGN KEY (`task_id`) REFERENCES `task` (`task_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_to_employe`
--

LOCK TABLES `task_to_employe` WRITE;
/*!40000 ALTER TABLE `task_to_employe` DISABLE KEYS */;
INSERT INTO `task_to_employe` VALUES (1,1,1,'2019-10-11 12:00:00','2019-10-11 13:00:00','Sujet clos'),(2,1,2,'2019-10-11 12:00:00','2019-10-11 14:00:00','Nouvelle idée'),(3,1,3,'2019-10-11 14:00:00','2019-10-11 15:00:00','Oue pk pas'),(4,1,3,'2019-10-12 12:00:00','2019-10-12 14:00:00','On va faire autre chose'),(5,2,2,'2019-10-13 12:00:00','2019-10-13 14:00:00','Peut-etre un projet sur Tenisia'),(6,2,3,'2019-10-13 14:00:00','2019-10-13 15:00:00','On va faire un projet sur projet'),(7,3,3,'2019-10-13 14:00:00','2019-10-13 15:00:00','Voici un UML intermediaire'),(8,3,2,'2019-10-13 18:00:00','2019-10-13 19:00:00','C\'est quoi ce truck?'),(9,4,1,'2019-10-16 14:00:00','2019-10-16 15:00:00','L\'idée est validée');
/*!40000 ALTER TABLE `task_to_employe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-25 16:29:20
