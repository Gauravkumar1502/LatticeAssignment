CREATE DATABASE  IF NOT EXISTS `latticeassignment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `latticeassignment`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: latticeassignment
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `hospital_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Dr. Alok Kumar','9876543210','alok@gmail.com','Bhubaneswar, Odisha',1,'2024-05-18 07:09:44',NULL),(2,'Dr. Anil Kumar','9876543210','anil@gmail.com','Bhubaneswar, Odisha',1,'2024-05-18 07:09:44',NULL),(3,'Dr. Sunil Kumar','9876543210','sunil@gmail.com','Bhubaneswar, Odisha',1,'2024-05-18 07:09:44',NULL),(4,'Dr. Ramesh Kumar','9876543210','ramesh@gmail.com','Bhubaneswar, Odisha',1,'2024-05-18 07:09:44',NULL),(5,'Dr. Suresh Kumar','9876543210','suresh@gmail.com','Bhubaneswar, Odisha',1,'2024-05-18 07:09:44',NULL),(6,'Dr. Ram Kumar','9876543210','ram@gmail.com','Gorakhpur, Uttar Pradesh',2,'2024-05-18 07:09:44',NULL),(7,'Dr. Shyam Kumar','9876543210','shyam@gmail.com','Gorakhpur, Uttar Pradesh',2,'2024-05-18 07:09:44',NULL),(8,'Dr. Mohan Kumar','9876543210','mohan@gmail.com','Gorakhpur, Uttar Pradesh',2,'2024-05-18 07:09:44',NULL),(9,'Dr. Sohan Kumar','9876543210','sohan@gmail.com','Gorakhpur, Uttar Pradesh',2,'2024-05-18 07:09:44',NULL),(10,'Dr. Raman Kumar','9876543210','raman@gmail.com','Gorakhpur, Uttar Pradesh',2,'2024-05-18 07:09:44',NULL),(11,'Dr. Raj','9876543210','raj@gmail.com','Patna, Bihar',3,'2024-05-18 07:09:44',NULL),(12,'Dr. Ravi','9876543210','ravi@gmail.com','Patna, Bihar',3,'2024-05-18 07:09:44',NULL),(13,'Dr. Rakesh','9876543210','rakesh@gmail.com','Patna, Bihar',3,'2024-05-18 07:09:44',NULL),(14,'Dr. Roshan','9876543210','roshan@gmail.com','Patna, Bihar',3,'2024-05-18 07:09:44',NULL),(15,'Dr. Ritesh','9876543210','ritesh@gmail.com','Patna, Bihar',3,'2024-05-18 07:09:44',NULL),(16,'Dr. Rishabh','9876543210','rishabh@gmail.com','Bhopal, Madhya Pradesh',4,'2024-05-18 07:09:44',NULL),(17,'Dr. Rishikesh','9876543210','rishikesh@gmail.com','Bhopal, Madhya Pradesh',4,'2024-05-18 07:09:44',NULL),(18,'Dr. Rishav','9876543210','rishav@gmail.com','Bhopal, Madhya Pradesh',4,'2024-05-18 07:09:44',NULL),(19,'Dr. Rishit','9876543210','rishit@gmail.com','Bhopal, Madhya Pradesh',4,'2024-05-18 07:09:44',NULL),(20,'Dr. Gaurav','9876543210','gaurav@gmail.com','Bhopal, Madhya Pradesh',4,'2024-05-18 07:09:44',NULL);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-19  2:05:43
