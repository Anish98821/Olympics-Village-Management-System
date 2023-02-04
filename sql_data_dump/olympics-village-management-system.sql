CREATE DATABASE  IF NOT EXISTS `olympics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `olympics`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: olympics
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
-- Table structure for table `athlete_accounts`
--

DROP TABLE IF EXISTS `athlete_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athlete_accounts` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `athletes` (`athlete_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athlete_accounts`
--

LOCK TABLES `athlete_accounts` WRITE;
/*!40000 ALTER TABLE `athlete_accounts` DISABLE KEYS */;
INSERT INTO `athlete_accounts` VALUES ('ATH1','12345'),('ATH10','12345'),('ATH11','12345'),('ATH12','12345'),('ATH13','12345'),('ATH14','12345'),('ATH15','12345'),('ATH16','12345'),('ATH17','12345'),('ATH18','12345'),('ATH19','12345'),('ATH2','12345'),('ATH20','12345'),('ATH21','12345'),('ATH22','12345'),('ATH23','12345'),('ATH24','12345'),('ATH25','12345'),('ATH26','12345'),('ATH27','12345'),('ATH28','12345'),('ATH29','12345'),('ATH3','12345'),('ATH30','12345'),('ATH31','12345'),('ATH32','12345'),('ATH33','12345'),('ATH34','12345'),('ATH35','12345'),('ATH36','12345'),('ATH37','12345'),('ATH38','12345'),('ATH39','12345'),('ATH4','12345'),('ATH40','12345'),('ATH41','12345'),('ATH42','12345'),('ATH5','12345'),('ATH6','12345'),('ATH7','12345'),('ATH8','12345'),('ATH9','12345');
/*!40000 ALTER TABLE `athlete_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `athletes`
--

DROP TABLE IF EXISTS `athletes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athletes` (
  `athlete_id` varchar(7) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `event_id` varchar(5) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `hostel_id` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`athlete_id`),
  KEY `event_id_idx` (`event_id`),
  KEY `hostelKey_idx` (`hostel_id`),
  CONSTRAINT `event_id` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hostelKey` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletes`
--

LOCK TABLES `athletes` WRITE;
/*!40000 ALTER TABLE `athletes` DISABLE KEYS */;
INSERT INTO `athletes` VALUES ('ATH1','Michael Jordan','EVT1',22,'USA','H3'),('ATH10','Amanda Dupont','EVT1',25,'France','H4'),('ATH11','Alex Rodriguez','EVT2',23,'USA','H1'),('ATH12','Jenny White','EVT2',24,'Canada','H2'),('ATH13','John Kim','EVT2',25,'United Kingdom','H3'),('ATH14','Sara Parker','EVT2',26,'Australia','H4'),('ATH15','Philip Davis','EVT2',27,'South Africa','H5'),('ATH16','Emma Anderson','EVT2',28,'Germany','H6'),('ATH17','William Lee','EVT2',29,'China','H1'),('ATH18','Yuri Nakamura','EVT2',22,'Japan','H2'),('ATH19','Sergey Ivanov','EVT2',24,'Russia','H3'),('ATH2','Emma Smith','EVT1',25,'Canada','H5'),('ATH20','Linda Martinez','EVT2',25,'France','H4'),('ATH21','Jing Liu','EVT17',25,'China','H1'),('ATH22','Maximilian Müller','EVT17',27,'Germany','H2'),('ATH23','Evelyn Flores','EVT17',26,'Mexico','H3'),('ATH24','Yasuo Tanaka','EVT18',28,'Japan','H1'),('ATH25','Anna Ivanova','EVT18',26,'Russia','H2'),('ATH26','Federico Rossi','EVT18',27,'Italy','H3'),('ATH27','Min-Jae Kim','EVT19',25,'South Korea','H4'),('ATH28','Marie Dupont','EVT19',26,'France','H5'),('ATH29','Johannes Bauer','EVT19',27,'Austria','H6'),('ATH3','Thomas Smith','EVT1',29,'United Kingdom','H1'),('ATH30','Sofia Gomez','EVT20',25,'Colombia','H7'),('ATH31','Daniel Smith','EVT20',28,'Canada','H8'),('ATH32','Amelie Schmidt','EVT20',26,'Switzerland','H9'),('ATH33','Luis Rodriguez','EVT3',27,'Mexico','H1'),('ATH34','Marija Petrovic','EVT3',26,'Serbia','H3'),('ATH35','Tariq Ali','EVT3',28,'Egypt','H4'),('ATH36','Nina Zhang','EVT3',25,'China','H6'),('ATH37','Tomasz Kowalski','EVT3',27,'Poland','H9'),('ATH38','Ibrahim Mohamed','EVT4',24,'Egypt','H4'),('ATH39','Sofia Ivanova','EVT4',25,'Bulgaria','H5'),('ATH4','Samantha Watson','EVT1',26,'Australia','H4'),('ATH40','Andreas Mueller','EVT4',26,'Germany','H2'),('ATH41','Ximena Gonzalez','EVT4',28,'Mexico','H1'),('ATH42','Jan Kowalski','EVT4',27,'Poland','H9'),('ATH5','Michael Johnson','EVT1',27,'South Africa','H2'),('ATH6','Jessica Mueller','EVT1',23,'Germany','H6'),('ATH7','David Chen','EVT1',24,'China','H1'),('ATH8','Sakura Kimura','EVT1',21,'Japan','H5'),('ATH9','Ivan Petrov','EVT1',28,'Russia','H3');
/*!40000 ALTER TABLE `athletes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `athletes_AFTER_INSERT` AFTER INSERT ON `athletes` FOR EACH ROW BEGIN
update sys_properties set noOfParticipants = noOfParticipants + 1 where id = 1;
insert into athlete_accounts values(new.athlete_id,'12345');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` varchar(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `stadium_id` varchar(5) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `max_participants` int DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES ('EVT1','Athletics','S3','2024-07-26','12:00:00',10),('EVT11','Basketball','S4','2024-07-26','09:00:00',10),('EVT12','Soccer','S3','2024-07-27','12:00:00',10),('EVT13','Tennis','S1','2024-07-26','15:00:00',10),('EVT14','Baseball','S5','2024-07-27','08:00:00',10),('EVT15','Hockey','S2','2024-07-27','08:00:00',10),('EVT16','Golf','S4','2024-07-27','13:00:00',10),('EVT17','Handball','S3','2024-07-28','11:00:00',10),('EVT18','Diving','S1','2024-07-28','15:00:00',10),('EVT19','Rowing','S5','2024-07-27','14:00:00',10),('EVT2','Swimming','S1','2024-07-26','09:00:00',10),('EVT20','Volleyball','S2','2024-07-27','13:00:00',10),('EVT3','Gymnastics','S5','2024-07-28','08:00:00',5),('EVT4','Shooting','S2','2024-07-28','09:00:00',10),('EVT5','Fencing','S4','2024-07-29','10:00:00',10),('EVT6','Boxing','S3','2024-07-27','11:00:00',10),('EVT7','Wrestling','S1','2024-07-28','12:00:00',10),('EVT8','Judo','S5','2024-07-28','13:00:00',10);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel` (
  `hostel_id` varchar(5) NOT NULL,
  `sector_id` varchar(5) DEFAULT NULL,
  `max_capacity` int NOT NULL,
  PRIMARY KEY (`hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
INSERT INTO `hostel` VALUES ('H1','SEC3',4),('H10','SEC3',3),('H2','SEC2',3),('H3','SEC1',2),('H4','SEC3',5),('H5','SEC2',4),('H6','SEC1',3),('H7','SEC3',2),('H8','SEC2',5),('H9','SEC1',4);
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organiser_accounts`
--

DROP TABLE IF EXISTS `organiser_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organiser_accounts` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organiser_accounts`
--

LOCK TABLES `organiser_accounts` WRITE;
/*!40000 ALTER TABLE `organiser_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `organiser_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `event_id` varchar(5) NOT NULL,
  `gold` varchar(10) DEFAULT NULL,
  `silver` varchar(10) DEFAULT NULL,
  `bronze` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `event_id_idx` (`event_id`),
  KEY `event_id_idx1` (`event_id`),
  KEY `resultAthleteForeign_id2` (`gold`,`silver`,`bronze`),
  KEY `resultAthleteForeign_id1` (`gold`),
  KEY `bronze_idx` (`bronze`),
  KEY `silver_idx` (`silver`),
  CONSTRAINT `bronzeKey` FOREIGN KEY (`bronze`) REFERENCES `athletes` (`athlete_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `event` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goldKey` FOREIGN KEY (`gold`) REFERENCES `athletes` (`athlete_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `silverKey` FOREIGN KEY (`silver`) REFERENCES `athletes` (`athlete_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES ('EVT2','ATH12','ATH13','ATH14'),('EVT17','ATH21','ATH22','ATH23'),('EVT18','ATH24','ATH25','ATH26'),('EVT19','ATH27','ATH28','ATH29'),('EVT20','ATH30','ATH31','ATH32');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `results_AFTER_INSERT` AFTER INSERT ON `results` FOR EACH ROW BEGIN


if not exists(select country from scoreboard where country = (select country from athletes where athlete_id = new.gold)) then
			insert into scoreboard values((select country from athletes where athlete_id = new.gold),1,0,0);
		else
			update scoreboard set gold = gold + 1 where country = (select country from athletes where athlete_id = new.gold);
		end if;
		if not exists(select country from scoreboard where country = (select country from athletes where athlete_id = new.silver)) then
			insert into scoreboard values((select country from athletes where athlete_id = new.silver),0,1,0);
		else
			update scoreboard set silver = silver + 1 where country = (select country from athletes where athlete_id = new.silver);
		end if;
		if not exists(select country from scoreboard where country = (select country from athletes where athlete_id = new.bronze)) then
			insert into scoreboard values((select country from athletes where athlete_id = new.bronze),0,0,1);
		else
			update scoreboard set bronze = bronze + 1 where country = (select country from athletes where athlete_id = new.bronze);
		end if;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `scoreboard`
--

DROP TABLE IF EXISTS `scoreboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scoreboard` (
  `Country` varchar(20) NOT NULL,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  PRIMARY KEY (`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoreboard`
--

LOCK TABLES `scoreboard` WRITE;
/*!40000 ALTER TABLE `scoreboard` DISABLE KEYS */;
INSERT INTO `scoreboard` VALUES ('Australia',0,0,1),('Austria',0,0,1),('Canada',1,1,0),('China',1,1,0),('Colombia',1,0,0),('France',0,1,0),('Germany',0,1,0),('Italy',0,0,1),('Japan',1,0,0),('Mexico',0,0,1),('Russia',0,1,0),('South Korea',1,0,0),('Switzerland',0,0,1),('United Kingdom',0,1,0);
/*!40000 ALTER TABLE `scoreboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectors`
--

DROP TABLE IF EXISTS `sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectors` (
  `sector_id` varchar(5) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sector_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectors`
--

LOCK TABLES `sectors` WRITE;
/*!40000 ALTER TABLE `sectors` DISABLE KEYS */;
INSERT INTO `sectors` VALUES ('SEC1','Harmonious Homes'),('SEC10','Safety Sanctuary'),('SEC2','Marketplace Square'),('SEC3','Champion\'s Arena'),('SEC4','Arts and Culture Park'),('SEC5','Wellness Center'),('SEC6','Culinary Circle'),('SEC7','Festival Gardens'),('SEC8','Journey Junction'),('SEC9','Olympic Headquarters');
/*!40000 ALTER TABLE `sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadiums`
--

DROP TABLE IF EXISTS `stadiums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadiums` (
  `stadium_id` varchar(3) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sector_id` varchar(45) DEFAULT NULL,
  `capacity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stadium_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadiums`
--

LOCK TABLES `stadiums` WRITE;
/*!40000 ALTER TABLE `stadiums` DISABLE KEYS */;
INSERT INTO `stadiums` VALUES ('S1','Allianz Arena','SEC1','75000'),('S10','Signal Iduna Park','SEC2','81000'),('S2','Old Trafford','SEC2','74800'),('S3','Santiago Bernabeu','SEC3','80000'),('S4','San Siro','SEC4','80000'),('S5','Anfield','SEC5','53000'),('S6','Etihad Stadium','SEC6','55000'),('S7','Wembley Stadium','SEC3','90000'),('S8','Camp Nou','SEC4','99000'),('S9','Stamford Bridge','SEC1','41000');
/*!40000 ALTER TABLE `stadiums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_properties`
--

DROP TABLE IF EXISTS `sys_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_properties` (
  `id` int NOT NULL,
  `currentUser` varchar(10) DEFAULT NULL,
  `noOfParticipants` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_properties`
--

LOCK TABLES `sys_properties` WRITE;
/*!40000 ALTER TABLE `sys_properties` DISABLE KEYS */;
INSERT INTO `sys_properties` VALUES (1,'ATH12',46);
/*!40000 ALTER TABLE `sys_properties` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sys_properties_AFTER_INSERT` AFTER INSERT ON `sys_properties` FOR EACH ROW BEGIN
update sys_properties set noOfParticipants = noOfParticipants + 1 where id = 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `testing`
--

DROP TABLE IF EXISTS `testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing` (
  `id` int NOT NULL,
  `event` varchar(45) DEFAULT NULL,
  `gold` varchar(45) DEFAULT NULL,
  `silver` varchar(45) DEFAULT NULL,
  `bronze` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing`
--

LOCK TABLES `testing` WRITE;
/*!40000 ALTER TABLE `testing` DISABLE KEYS */;
INSERT INTO `testing` VALUES (1,'1','a','b','c'),(2,'2','a','a','d'),(3,'3','x','a','v'),(4,'EVT1','ATH1','ATH2','ATH3');
/*!40000 ALTER TABLE `testing` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `testing_AFTER_INSERT` AFTER INSERT ON `testing` FOR EACH ROW BEGIN

if not exists(select country from scoreboard where country = new.gold) then
			insert into scoreboard values(new.gold,1,0,0);
		else
			update scoreboard set gold = gold + 1 where country = new.gold;
		end if;
		if not exists(select country from scoreboard where country = new.silver) then
			insert into scoreboard values(new.silver,0,1,0);
		else
			update scoreboard set silver = silver + 1 where country = new.silver;
		end if;
		if not exists(select country from scoreboard where country = new.bronze) then
			insert into scoreboard values(new.bronze,0,0,1);
		else
			update scoreboard set bronze = bronze + 1 where country = new.bronze;
		end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `transportation`
--

DROP TABLE IF EXISTS `transportation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportation` (
  `transport_id` varchar(5) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `source` varchar(5) DEFAULT NULL,
  `destination` varchar(5) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportation`
--

LOCK TABLES `transportation` WRITE;
/*!40000 ALTER TABLE `transportation` DISABLE KEYS */;
INSERT INTO `transportation` VALUES ('T1','Bus','2024-07-26','SEC1','SEC4','08:00:00','08:30:00'),('T10','Bus','2024-07-26','SEC5','SEC1','08:30:00','09:00:00'),('T11','Train','2024-07-26','SEC6','SEC3','10:00:00','10:30:00'),('T12','Train','2024-07-26','SEC4','SEC2','11:00:00','11:45:00'),('T13','Bus','2024-07-26','SEC1','SEC5','13:00:00','13:30:00'),('T14','Bus','2024-07-26','SEC3','SEC6','15:00:00','15:45:00'),('T15','Train','2024-07-26','SEC5','SEC4','17:00:00','17:30:00'),('T16','Train','2024-07-26','SEC2','SEC1','19:00:00','19:45:00'),('T17','Bus','2024-07-26','SEC2','SEC6','07:00:00','07:30:00'),('T18','Bus','2024-07-26','SEC5','SEC1','08:00:00','08:30:00'),('T19','Train','2024-07-26','SEC6','SEC3','08:15:00','09:00:00'),('T2','Bus','2024-07-27','SEC3','SEC5','09:00:00','09:45:00'),('T20','Train','2024-07-26','SEC4','SEC2','08:45:00','09:30:00'),('T21','Bus','2024-07-26','SEC1','SEC5','13:00:00','13:30:00'),('T22','Bus','2024-07-26','SEC3','SEC6','13:15:00','14:00:00'),('T23','Train','2024-07-26','SEC5','SEC4','15:00:00','15:30:00'),('T24','Train','2024-07-26','SEC2','SEC1','15:15:00','16:00:00'),('T25','Bus','2024-07-26','SEC6','SEC2','09:00:00','09:30:00'),('T26','Bus','2024-07-26','SEC1','SEC5','10:00:00','10:30:00'),('T27','Train','2024-07-26','SEC3','SEC6','11:00:00','11:30:00'),('T28','Train','2024-07-26','SEC4','SEC2','12:00:00','12:30:00'),('T29','Bus','2024-07-26','SEC5','SEC1','16:00:00','16:30:00'),('T3','Train','2024-07-28','SEC5','SEC2','10:00:00','10:30:00'),('T30','Bus','2024-07-26','SEC3','SEC6','17:00:00','17:30:00'),('T31','Train','2024-07-26','SEC2','SEC4','18:00:00','18:30:00'),('T32','Train','2024-07-26','SEC1','SEC3','19:00:00','19:30:00'),('T33','Bus','2024-07-26','SEC6','SEC2','10:00:00','10:30:00'),('T34','Bus','2024-07-26','SEC2','SEC1','11:00:00','11:30:00'),('T35','Train','2024-07-26','SEC1','SEC6','12:00:00','12:30:00'),('T36','Train','2024-07-26','SEC6','SEC4','13:00:00','13:30:00'),('T37','Bus','2024-07-26','SEC4','SEC2','14:00:00','14:30:00'),('T38','Bus','2024-07-26','SEC2','SEC5','15:00:00','15:30:00'),('T39','Train','2024-07-26','SEC5','SEC1','16:00:00','16:30:00'),('T4','Train','2024-07-29','SEC4','SEC6','12:00:00','12:45:00'),('T40','Train','2024-07-26','SEC1','SEC3','17:00:00','17:30:00'),('T5','Bus','2024-07-30','SEC6','SEC3','14:00:00','14:30:00'),('T6','Bus','2024-07-31','SEC2','SEC1','16:00:00','16:45:00'),('T7','Train','2024-08-01','SEC1','SEC5','18:00:00','18:30:00'),('T8','Train','2024-08-02','SEC3','SEC4','20:00:00','20:45:00'),('T9','Bus','2024-07-26','SEC2','SEC6','07:00:00','07:30:00');
/*!40000 ALTER TABLE `transportation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'olympics'
--

--
-- Dumping routines for database 'olympics'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-04 11:08:46
