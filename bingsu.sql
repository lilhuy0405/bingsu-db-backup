-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: bingsu
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BuyBingSuTransaction`
--

DROP TABLE IF EXISTS `BuyBingSuTransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BuyBingSuTransaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `txnHash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `timestamp` int NOT NULL,
  `amount` double NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BuyBingSuTransaction_txnHash_key` (`txnHash`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BuyBingSuTransaction`
--

LOCK TABLES `BuyBingSuTransaction` WRITE;
/*!40000 ALTER TABLE `BuyBingSuTransaction` DISABLE KEYS */;
INSERT INTO `BuyBingSuTransaction` VALUES (3,'0xb685d7adc8647395fb8743d77639b2bb9e9f39f16b9dd59b9881c458c6f73a94','0x36c1AA4F8FEf1aa7d651c421B83d166c76374c2B','0xEAB51Ddae6be470D9921Df6E4F614f43368C38E5',1,1652952962,0.1,'2022-05-21 13:16:45.513','2022-05-21 13:16:45.514'),(4,'0xfeb7a66dd641e4e1ae8702c6abe1f6710eeaf9950c1ff12303ea06e8e9cf86a3','0x42C817964583DCb4B27D1894cab10bDa1C22a0B3','0xEAB51Ddae6be470D9921Df6E4F614f43368C38E5',1,1652495268,0.156,'2022-05-21 13:18:26.814','2022-05-21 13:18:26.815'),(5,'0x1d36f6e522877a1e28aa69a940d00ada11b5233c7cfa18a3a0202bc32aa267d2','0x42C817964583DCb4B27D1894cab10bDa1C22a0B3','0xEAB51Ddae6be470D9921Df6E4F614f43368C38E5',1,1652495079,0.04,'2022-05-21 13:18:58.208','2022-05-21 13:18:58.209'),(6,'0x59d0a9762dd2337445d04b81c6a419d413a1ef35644940f23a9ecd2b109aa94c','0x36c1AA4F8FEf1aa7d651c421B83d166c76374c2B','0xEAB51Ddae6be470D9921Df6E4F614f43368C38E5',1,1653306046,0.1,'2022-05-23 11:41:04.924','2022-05-23 11:41:04.924'),(7,'0x390591bc1c80b537138e080e6d9356a0ce0560696c8bae049b71abeb2e6bc3f4','0x36c1AA4F8FEf1aa7d651c421B83d166c76374c2B','0xEAB51Ddae6be470D9921Df6E4F614f43368C38E5',1,1653306397,0.1,'2022-05-23 11:46:58.053','2022-05-23 11:46:58.054'),(8,'0x6a7348008fbaa4c47520ca40ce779a26d4444b250e0a04631d8a36f124f81d3f','0x36c1AA4F8FEf1aa7d651c421B83d166c76374c2B','0xEAB51Ddae6be470D9921Df6E4F614f43368C38E5',1,1653358686,0.00004,'2022-05-24 02:18:24.970','2022-05-24 02:18:24.971');
/*!40000 ALTER TABLE `BuyBingSuTransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsdSpent`
--

DROP TABLE IF EXISTS `UsdSpent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsdSpent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userAddress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UsdSpent_userAddress_key` (`userAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsdSpent`
--

LOCK TABLES `UsdSpent` WRITE;
/*!40000 ALTER TABLE `UsdSpent` DISABLE KEYS */;
INSERT INTO `UsdSpent` VALUES (2,'0x36c1AA4F8FEf1aa7d651c421B83d166c76374c2B',0.30004000000000003,'2022-05-21 13:16:45.523','2022-05-24 02:18:24.983');
/*!40000 ALTER TABLE `UsdSpent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('5157f4d4-1433-4894-90b7-3f6faa3b6dcd','b467d8e7c211a4ef61183a806c47c19c73d2a9cb75285808ffe86706c1de8510','2022-05-21 09:55:51.162','20220521094949_publish',NULL,NULL,'2022-05-21 09:55:51.099',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-14 10:55:07
