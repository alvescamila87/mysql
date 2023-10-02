CREATE DATABASE  IF NOT EXISTS `vollmed_api` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vollmed_api`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vollmed_api
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `crm` varchar(6) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `neighborhood` varchar(100) NOT NULL,
  `zipcode` varchar(9) NOT NULL,
  `complement` varchar(100) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `state` char(2) NOT NULL,
  `city` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `active` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `crm` (`crm`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Luiza Malheiros','malheirosluiza@gmail.com','963254','CARDIOLOGIA','Rua Guararapes','Itoupava','96325874','','963','SC','Florianópolis','47963258741',1),(2,'Beatriz Haddad','haddadbeatriz@gmail.com','555874','CARDIOLOGIA','Rua Falcão 2','Seca','96325744','','123','SC','Balneário Camboriu','47888858741',1),(3,'Gustavo Ramos','ramosgustavo@gmail.com','147852','ORTOPEDISTA','Rua Geral','Centro','9632587','','23','SC','Blumenau','47854758741',1);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'1','create-table-doctors','SQL','V1__create-table-doctors.sql',108557071,'admin','2023-10-01 21:15:52',25,1),(2,'2','alter-table-doctors','SQL','V2__alter-table-doctors.sql',-34675342,'admin','2023-10-01 21:15:52',13,1),(3,'3','create-table patients','SQL','V3__create-table_patients.sql',1006204431,'admin','2023-10-01 21:15:52',22,1),(4,'4','alter-table-patients','SQL','V4__alter-table-patients.sql',-529812573,'admin','2023-10-01 21:15:52',11,1),(5,'5','alter-table-doctors-add-column','SQL','V5__alter-table-doctors-add-column.sql',1376416859,'admin','2023-10-01 21:15:52',15,1),(6,'6','alter-table-patients-add-column','SQL','V6__alter-table-patients-add-column.sql',-630304647,'admin','2023-10-01 21:15:52',16,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `street` varchar(100) NOT NULL,
  `neighborhood` varchar(100) NOT NULL,
  `zipcode` varchar(9) NOT NULL,
  `complement` varchar(100) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `state` char(2) NOT NULL,
  `city` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `active` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Luiza Malheiros','malheirosluiza@gmail.com','99966633355','Rua Guararapes','Itoupava','96325874','','963','SC','Florianópolis','47963258741',1),(2,'Beatriz Haddad','haddadbeatriz@gmail.com','99966633322','Rua Falcão 2','Seca','96325744','','123','SC','Balneário Camboriu','47888858741',0),(3,'Gustavo Ramos','ramosgustavo@gmail.com','99966633311','Rua Geral','Centro','9632587','','23','SC','Blumenau','47854758741',1);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-02 10:45:57
