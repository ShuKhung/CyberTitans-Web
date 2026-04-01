-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cyberweb
-- ------------------------------------------------------
-- Server version	8.0.31

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

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` int DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` smallint NOT NULL DEFAULT '1' COMMENT '0 for inactive, 1 for active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `idx-category-parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Web Development','web-development',0,'Project about website, web app, SaaS',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(2,'Mobile App','mobile-app',0,'Applications for iOS, Android, or cross-platform',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(3,'Desktop Software','desktop-software',0,'Software for Windows, macOS, Linux',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(4,'AI','ai',0,'Projects related to AI, ML, or Data Science',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(5,'IoT','iot',0,'Hardware, IoT devices, firmware, and embedded systems',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(6,'Game Development','game-development',0,'PC, console, or mobile game projects',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(7,'Automation Tools','automation-tools',0,'Scripts, automation tools, plugins, utilities',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(8,'Blockchain','blockchain',0,'Blockchain, smart contracts, and crypto-related projects',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(9,'AR VR Mixed Reality','ar-vr-mixed-reality',0,'Augmented reality, virtual reality, and mixed reality projects',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(10,'Robotics','robotics',0,'Robotics, control systems, drones',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(11,'Machine Learning','machine-learning',4,'Projects related to Machine Learning',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(12,'Deep Learning','deep-learning',11,'Projects related to Deep Learning',1,'2026-03-12 03:03:31','2026-03-12 03:03:31'),(13,'Computer Vision','computer-vision',12,'Projects related to Computer Vision',1,'2026-03-12 03:03:31','2026-03-12 03:03:31');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-01 12:14:42
