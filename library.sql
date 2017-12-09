-- MySQL dump 10.16  Distrib 10.2.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: librarydb
-- ------------------------------------------------------
-- Server version	10.2.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `librarydb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `librarydb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `librarydb`;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library` (
  `id` varchar(64) NOT NULL,
  `ia_id` varchar(64) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `name` varchar(64) NOT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `codice_biblioteca` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES ('6050a63b-f44f-4a40-9df7-bbeb5ebcb158','53d0fd3a-ce4a-431d-a36c-1ad1c10c2ef5',45.1876,9.15694,'Biblioteca Scienze Politiche','0382-984447','biblioteca.scienzepolitiche@unipv.it','PAV0U4','Corso Carlo Alberto 3, Pavia, 27100, Lombardia, Italia'),('6050a63b-f44f-4a40-9df7-bbeb5ebcb158666','53d0fd3a-ce4a-431d-a36c-1ad1c10c2ef5',45.1876,9.15694,'Biblioteca Scienze Politiche','0382-984447','biblioteca.scienzepolitiche@unipv.it','PAV0U4','Corso Carlo Alberto 3, Pavia, 27100, Lombardia, Italia');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-09 22:22:59
