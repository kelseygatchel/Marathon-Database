CREATE DATABASE  IF NOT EXISTS `marathon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `marathon`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: marathon
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `age_division`
--

DROP TABLE IF EXISTS `age_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `age_division` (
  `age` int(11) NOT NULL,
  `divison_name` varchar(10) NOT NULL,
  PRIMARY KEY (`age`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_division`
--

LOCK TABLES `age_division` WRITE;
/*!40000 ALTER TABLE `age_division` DISABLE KEYS */;
INSERT INTO `age_division` VALUES (15,'15-19'),(16,'15-19'),(17,'15-19'),(18,'15-19'),(19,'15-19'),(20,'20-29'),(21,'20-29'),(22,'20-29'),(23,'20-29'),(24,'20-29'),(25,'20-29'),(26,'20-29'),(27,'20-29'),(28,'20-29'),(29,'20-29'),(30,'30-39'),(31,'30-39'),(32,'30-39'),(33,'30-39'),(34,'30-39'),(35,'30-39'),(36,'30-39'),(37,'30-39'),(38,'30-39'),(39,'30-39'),(40,'40-49'),(41,'40-49'),(42,'40-49'),(43,'40-49'),(44,'40-49'),(45,'40-49'),(46,'40-49'),(47,'40-49'),(48,'40-49'),(49,'40-49'),(50,'50-59'),(51,'50-59'),(52,'50-59'),(53,'50-59'),(54,'50-59'),(55,'50-59'),(56,'50-59'),(57,'50-59'),(58,'50-59'),(59,'50-59'),(60,'60-69'),(61,'60-69'),(62,'60-69'),(63,'60-69'),(64,'60-69'),(65,'60-69'),(66,'60-69'),(67,'60-69'),(68,'60-69'),(69,'60-69'),(70,'70-79'),(71,'70-79'),(72,'70-79'),(73,'70-79'),(74,'70-79'),(75,'70-79'),(76,'70-79'),(77,'70-79'),(78,'70-79'),(79,'70-79'),(80,'80-89'),(81,'80-89'),(82,'80-89'),(83,'80-89'),(84,'80-89'),(85,'80-89'),(86,'80-89'),(87,'80-89'),(88,'80-89'),(89,'80-89'),(90,'90-100'),(91,'90-100'),(92,'90-100'),(93,'90-100'),(94,'90-100'),(95,'90-100'),(96,'90-100'),(97,'90-100'),(98,'90-100'),(99,'90-100'),(100,'90-100');
/*!40000 ALTER TABLE `age_division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `part_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `status_check` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log_r`
--

DROP TABLE IF EXISTS `audit_log_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log_r` (
  `part_id` int(11) NOT NULL,
  `race` int(11) NOT NULL,
  `age_on_race` int(11) NOT NULL,
  `finishing_time` time NOT NULL,
  `overall_rank` int(11) NOT NULL,
  `gender_rank` int(11) NOT NULL,
  `division_rank` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `status_check` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log_r`
--

LOCK TABLES `audit_log_r` WRITE;
/*!40000 ALTER TABLE `audit_log_r` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_log_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant` (
  `part_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_first_name` varchar(50) NOT NULL,
  `part_last_name` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (1,'Amira','Fawcett','Japan','F'),(2,'Marilynn','Graydon','Kenya','F'),(3,'Jeanelle','Waldschmidt','United States of America','F'),(4,'Buena','Arciniega','United States of America','F'),(5,'Lynell','Hauge','United States of America','F'),(6,'Mahalia','Cassara','United States of America','F'),(7,'Jacqualine','Rosenbaum','Netherlands','F'),(8,'Tamatha','Fobbs','United States of America','F'),(9,'Tesha','Zickefoose','Canada','F'),(10,'Nancee','Tenaglia','United States of America','F'),(11,'Leeanna','Decker','Germany','F'),(12,'Demetria','Kahan','Japan','F'),(13,'Soon','Sistrunk','United States of America','F'),(14,'Louisa','Deluna','Kenya','F'),(15,'Michele','Bricker','United States of America','F'),(16,'Voncile','Harrod','United States of America','F'),(17,'Alfredia','Gervais','United States of America','F'),(18,'Jeane','Purser','United States of America','F'),(19,'Kazuko','Mcfarlin','Germany','F'),(20,'Dorathy','Staton','United States of America','F'),(21,'Molly','Weissinger','United States of America','F'),(22,'Kristie','Warrior','Kenya','F'),(23,'Tami','Fitzwater','United States of America','F'),(24,'Farah','Coyer','United States of America','F'),(25,'Rosita','Diorio','United States of America','F'),(26,'Aileen','Abele','United States of America','F'),(27,'Bethany','Holdsworth','Japan','F'),(28,'Tillie','Lampton','United States of America','F'),(29,'Lore','Bryd','United States of America','F'),(30,'Delores','Symes','United States of America','F'),(31,'Dolly','Basilio','United States of America','F'),(32,'Ema','Marbury','Mexico','F'),(33,'Sook','Skiles','United States of America','F'),(34,'Ila','Galdamez','United States of America','F'),(35,'Lizzette','Averitt','United States of America','F'),(36,'Charity','Hemond','United States of America','F'),(37,'Diedre','Haggins','Mexico','F'),(38,'Gretchen','Woolum','Canada','F'),(39,'Omega','Pedrosa','United States of America','F'),(40,'Tien','Parillo','United States of America','F'),(41,'Barabara','Lazar','United States of America','F'),(42,'Ta','Buchanon','Japan','F'),(43,'Lurline','Stockbridge','United States of America','F'),(44,'Joella','Culver','United States of America','F'),(45,'Brittny','Hollow','United States of America','F'),(46,'Patrica','Birden','United States of America','F'),(47,'Bettyann','Naquin','United States of America','F'),(48,'Tara','Flamm','United States of America','F'),(49,'Ava','Wester','United States of America','F'),(50,'Detra','Youngman','United States of America','F'),(51,'Donte','Chalmers','Canada','M'),(52,'Jerry','Clepper','United States of America','M'),(53,'Emmitt','Harkless','United States of America','M'),(54,'Rob','Cortes','United States of America','M'),(55,'Royal','Escalona','United States of America','M'),(56,'Jame','Mcquiston','United States of America','M'),(57,'Hubert','Bos','United States of America','M'),(58,'Warner','Wise','United States of America','M'),(59,'Lazaro','Keim','United States of America','M'),(60,'Rico','Doering','United States of America','M'),(61,'Sherwood','Bui','United States of America','M'),(62,'Otha','Bevins','United States of America','M'),(63,'Chas','Clemmer','United States of America','M'),(64,'Lupe','Hogue','United States of America','M'),(65,'Rickey','Lear','United States of America','M'),(66,'Lindsey','Demars','United Kingdom','M'),(67,'Brock','Aragon','United States of America','M'),(68,'Tommie','Isaac','Japan','M'),(69,'Erin','Mcalpine','United States of America','M'),(70,'Elroy','Abrams','Kenya','M'),(71,'Gerald','Tozier','United States of America','M'),(72,'Marcus','Southworth','Germany','M'),(73,'Herschel','Rugh','United States of America','M'),(74,'Cortez','Racanelli','United States of America','M'),(75,'Eli','Surprenant','Kenya','M'),(76,'Neville','Brauer','United States of America','M'),(77,'Billie','Tiedemann','United States of America','M'),(78,'Sol','Leflore','United States of America','M'),(79,'Dorian','Borne','United States of America','M'),(80,'Rolf','Ridlon','United States of America','M'),(81,'Quintin','Chagnon','United States of America','M'),(82,'Orval','Atterberry','United States of America','M'),(83,'Young','Warrick','Mexico','M'),(84,'Everette','Tribble','United States of America','M'),(85,'Ned','Goldsmith','Canada','M'),(86,'Louis','Suttles','United States of America','M'),(87,'Kent','Breitenbach','United States of America','M'),(88,'Cruz','Manes','Mexico','M'),(89,'Winston','Cleland','United States of America','M'),(90,'Joesph','Napper','United States of America','M'),(91,'Carter','Noble','Canada','M'),(92,'Galen','Shay','United States of America','M'),(93,'Tim','Napolitano','United States of America','M'),(94,'Ulysses','Satterthwaite','United States of America','M'),(95,'Jonah','Armstead','Canada','M'),(96,'Alvaro','Sammet','United States of America','M'),(97,'Carol','Gajewski','United States of America','M'),(98,'Lucien','Ton','Germany','M'),(99,'Anton','Spoor','United States of America','M'),(100,'Bob','Peredo','United States of America','M');
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `audit_log_add_participant` AFTER INSERT ON `participant` FOR EACH ROW BEGIN
INSERT INTO audit_log 
VALUES (new.part_id, new.part_first_name, new.part_last_name, "ADDED");
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `audit_log_delete_participant` AFTER DELETE ON `participant` FOR EACH ROW BEGIN
INSERT INTO audit_log 
VALUES (old.part_id, old.part_first_name, old.part_last_name, "DELETED");
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `prize`
--

DROP TABLE IF EXISTS `prize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prize` (
  `gender_rank` int(11) NOT NULL,
  `prize_amount` int(11) NOT NULL,
  PRIMARY KEY (`gender_rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prize`
--

LOCK TABLES `prize` WRITE;
/*!40000 ALTER TABLE `prize` DISABLE KEYS */;
INSERT INTO `prize` VALUES (1,100000),(2,75000),(3,50000);
/*!40000 ALTER TABLE `prize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race`
--

DROP TABLE IF EXISTS `race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `race` (
  `race_year` int(11) NOT NULL,
  PRIMARY KEY (`race_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race`
--

LOCK TABLES `race` WRITE;
/*!40000 ALTER TABLE `race` DISABLE KEYS */;
INSERT INTO `race` VALUES (2017),(2018),(2019);
/*!40000 ALTER TABLE `race` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered`
--

DROP TABLE IF EXISTS `registered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registered` (
  `part_id` int(11) NOT NULL,
  `race` int(11) NOT NULL,
  `age_on_race` int(11) NOT NULL,
  `finishing_time` time NOT NULL,
  `overall_rank` int(11) NOT NULL,
  `gender_rank` int(11) NOT NULL,
  `division_rank` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  PRIMARY KEY (`part_id`,`race`),
  KEY `race_fk` (`race`),
  KEY `vol_fk` (`v_id`),
  KEY `age_fk` (`age_on_race`),
  CONSTRAINT `age_fk` FOREIGN KEY (`age_on_race`) REFERENCES `age_division` (`age`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `part_id_fk` FOREIGN KEY (`part_id`) REFERENCES `participant` (`part_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `race_fk` FOREIGN KEY (`race`) REFERENCES `race` (`race_year`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `vol_fk` FOREIGN KEY (`v_id`) REFERENCES `volunteer` (`v_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered`
--

LOCK TABLES `registered` WRITE;
/*!40000 ALTER TABLE `registered` DISABLE KEYS */;
INSERT INTO `registered` VALUES (1,2017,21,'02:25:14',19,10,6,10),(1,2018,22,'01:20:33',4,1,1,1),(1,2019,23,'01:37:35',11,5,2,46),(2,2017,40,'02:12:11',18,9,1,9),(2,2018,41,'01:24:34',5,2,1,2),(2,2019,42,'01:35:35',10,4,1,47),(3,2017,35,'02:10:10',17,8,2,8),(3,2018,36,'01:25:34',6,3,1,3),(3,2019,37,'01:25:34',6,3,1,48),(4,2017,50,'01:55:50',14,7,1,7),(4,2018,51,'01:35:35',10,4,1,4),(4,2019,52,'01:24:34',5,2,1,49),(5,2017,22,'01:40:36',12,6,5,6),(5,2018,23,'01:37:35',11,5,2,5),(5,2019,24,'01:20:33',4,1,1,50),(6,2017,23,'01:37:35',11,5,4,5),(6,2018,24,'01:40:36',12,6,3,6),(6,2019,25,'02:25:14',19,10,5,41),(7,2017,24,'01:35:35',10,4,3,4),(7,2018,25,'01:55:50',14,7,4,7),(7,2019,26,'02:12:11',18,9,4,42),(8,2017,24,'01:25:34',6,3,2,3),(8,2018,25,'02:10:10',17,8,5,8),(8,2019,26,'02:10:10',17,8,3,43),(9,2017,28,'01:24:34',5,2,1,2),(9,2018,29,'02:12:11',18,9,6,9),(9,2019,30,'01:55:50',14,7,3,44),(10,2017,33,'01:20:33',4,1,1,1),(10,2018,34,'02:25:14',19,10,1,10),(10,2019,35,'01:40:36',12,6,2,45),(11,2017,33,'04:23:49',79,40,12,50),(11,2018,34,'02:23:10',7,1,1,11),(11,2019,35,'03:10:24',36,15,6,26),(12,2017,22,'04:20:48',78,39,11,49),(12,2018,23,'02:24:11',8,2,1,12),(12,2019,24,'03:00:23',32,14,5,27),(13,2017,21,'04:17:47',75,38,10,48),(13,2018,22,'02:27:12',10,3,2,13),(13,2019,23,'02:59:22',31,13,4,28),(14,2017,35,'04:15:46',74,37,11,47),(14,2018,36,'02:29:13',12,4,2,14),(14,2019,37,'02:57:21',30,12,5,29),(15,2017,34,'04:13:45',72,36,10,46),(15,2018,35,'02:30:14',13,5,3,15),(15,2019,36,'02:56:20',29,11,4,30),(16,2017,36,'04:08:44',70,35,9,45),(16,2018,37,'02:32:15',16,6,4,16),(16,2019,38,'02:51:19',28,10,3,31),(17,2017,38,'04:06:43',69,34,8,44),(17,2018,39,'02:45:16',21,7,5,17),(17,2019,40,'02:50:18',26,9,3,32),(18,2017,40,'04:03:42',66,33,5,43),(18,2018,41,'02:47:17',23,8,1,18),(18,2019,42,'02:47:17',23,8,2,33),(19,2017,29,'03:55:41',64,32,9,42),(19,2018,30,'02:50:18',26,9,6,19),(19,2019,31,'02:45:16',21,7,2,34),(20,2017,24,'03:50:40',63,31,8,41),(20,2018,25,'02:51:19',28,10,3,20),(20,2019,26,'02:32:15',16,6,3,35),(21,2017,22,'03:49:39',62,30,7,40),(21,2018,23,'02:56:20',29,11,4,21),(21,2019,24,'02:30:14',13,5,2,36),(22,2017,21,'03:46:38',61,29,6,39),(22,2018,22,'02:57:21',30,12,5,22),(22,2019,23,'02:29:13',12,4,1,37),(23,2017,30,'03:43:37',59,28,7,38),(23,2018,31,'02:59:22',31,13,7,23),(23,2019,32,'02:27:12',10,3,1,38),(24,2017,46,'03:40:36',57,27,4,37),(24,2018,47,'03:00:23',32,14,2,24),(24,2019,48,'02:24:11',8,2,1,39),(25,2017,50,'03:39:35',55,26,4,36),(25,2018,51,'03:10:24',36,15,1,25),(25,2019,52,'02:23:10',7,1,1,40),(26,2017,60,'03:37:34',54,25,5,35),(26,2018,61,'03:15:25',40,16,1,26),(26,2019,62,'04:23:49',79,40,5,1),(27,2017,65,'03:34:33',52,24,4,34),(27,2018,66,'03:17:26',41,17,2,27),(27,2019,67,'04:20:48',78,39,4,2),(28,2017,66,'03:33:32',50,23,3,33),(28,2018,67,'03:19:27',42,18,3,28),(28,2019,68,'04:17:47',75,38,3,3),(29,2017,70,'03:30:31',48,22,2,32),(29,2018,71,'03:20:28',43,19,1,29),(29,2019,72,'04:15:46',74,37,2,4),(30,2017,76,'03:29:30',46,21,1,31),(30,2018,77,'03:26:29',44,20,2,30),(30,2019,78,'04:13:45',72,36,1,5),(31,2017,85,'03:26:29',44,20,1,30),(31,2018,86,'03:29:30',46,21,1,31),(31,2019,87,'04:08:44',70,35,1,6),(32,2017,50,'03:20:28',43,19,3,29),(32,2018,51,'03:30:31',48,22,2,32),(32,2019,52,'04:06:43',69,34,4,7),(33,2017,55,'03:19:27',42,18,2,28),(33,2018,56,'03:33:32',50,23,3,33),(33,2019,57,'04:03:42',66,33,3,8),(34,2017,30,'03:17:26',41,17,6,27),(34,2018,31,'03:34:33',52,24,8,34),(34,2019,32,'03:55:41',64,32,12,9),(35,2017,40,'03:15:25',40,16,3,26),(35,2018,41,'03:37:34',54,25,3,35),(35,2019,42,'03:50:40',63,31,7,10),(36,2017,21,'03:10:24',36,15,5,25),(36,2018,22,'03:39:35',55,26,6,36),(36,2019,23,'03:49:39',62,30,9,11),(37,2017,35,'03:00:23',32,14,5,24),(37,2018,36,'03:40:36',57,27,9,37),(37,2019,37,'03:46:38',61,29,11,12),(38,2017,34,'02:59:22',31,13,4,23),(38,2018,35,'03:43:37',59,28,10,38),(38,2019,36,'03:43:37',59,28,10,13),(39,2017,36,'02:57:21',30,12,3,22),(39,2018,37,'03:46:38',61,29,11,39),(39,2019,38,'03:40:36',57,27,9,14),(40,2017,38,'02:56:20',29,11,2,21),(40,2018,39,'03:49:39',62,30,12,40),(40,2019,40,'03:39:35',55,26,6,15),(41,2017,40,'02:51:19',28,10,2,20),(41,2018,41,'03:50:40',63,31,4,41),(41,2019,42,'03:37:34',54,25,5,16),(42,2017,29,'02:50:18',26,9,4,19),(42,2018,30,'03:55:41',64,32,13,42),(42,2019,31,'03:34:33',52,24,8,17),(43,2017,24,'02:47:17',23,8,3,18),(43,2018,25,'04:03:42',66,33,7,43),(43,2019,26,'03:33:32',50,23,8,18),(44,2017,22,'02:45:16',21,7,2,17),(44,2018,23,'04:06:43',69,34,8,44),(44,2019,24,'03:30:31',48,22,7,19),(45,2017,21,'02:32:15',16,6,1,16),(45,2018,22,'04:08:44',70,35,9,45),(45,2019,23,'03:29:30',46,21,6,20),(46,2017,30,'02:30:14',13,5,1,15),(46,2018,31,'04:13:45',72,36,14,46),(46,2019,32,'03:26:29',44,20,7,21),(47,2017,46,'02:29:13',12,4,1,14),(47,2018,47,'04:15:46',74,37,5,47),(47,2019,48,'03:20:28',43,19,4,22),(48,2017,50,'02:27:12',10,3,1,13),(48,2018,51,'04:17:47',75,38,4,48),(48,2019,52,'03:19:27',42,18,2,23),(49,2017,60,'02:24:11',8,2,2,12),(49,2018,61,'04:20:48',78,39,4,49),(49,2019,62,'03:17:26',41,17,2,24),(50,2017,65,'02:23:10',7,1,1,11),(50,2018,66,'04:23:49',79,40,5,50),(50,2019,67,'03:15:25',40,16,1,25),(51,2017,66,'04:19:48',77,39,4,12),(51,2018,67,'02:03:10',1,1,1,1),(51,2019,68,'02:45:24',22,15,1,15),(52,2017,70,'04:18:47',76,38,4,13),(52,2018,71,'02:04:11',2,2,1,2),(52,2019,72,'02:40:23',20,14,2,14),(53,2017,76,'04:14:46',73,37,3,14),(53,2018,77,'02:07:12',3,3,2,3),(53,2019,78,'02:39:22',19,13,1,13),(54,2017,85,'04:12:45',71,36,2,15),(54,2018,86,'02:09:13',4,4,1,4),(54,2019,87,'02:37:21',18,12,1,12),(55,2017,50,'04:05:44',68,35,5,16),(55,2018,51,'02:20:14',5,5,1,5),(55,2019,52,'02:36:20',17,11,2,11),(56,2017,55,'04:03:43',67,34,4,17),(56,2018,56,'02:22:15',6,6,2,6),(56,2019,57,'02:31:19',15,10,1,10),(57,2017,30,'04:00:42',65,33,11,18),(57,2018,31,'02:25:16',9,7,1,7),(57,2019,32,'02:30:18',14,9,5,9),(58,2017,40,'03:45:41',60,32,5,19),(58,2018,41,'02:27:17',11,8,1,8),(58,2019,42,'02:27:17',11,8,3,8),(59,2017,21,'03:40:40',58,31,8,20),(59,2018,22,'02:30:18',14,9,1,9),(59,2019,23,'02:25:16',9,7,1,7),(60,2017,35,'03:39:39',56,30,10,21),(60,2018,36,'02:31:19',15,10,2,10),(60,2019,37,'02:22:15',6,6,4,6),(61,2017,34,'03:36:38',53,29,9,22),(61,2018,35,'02:36:20',17,11,3,11),(61,2019,36,'02:20:14',5,5,3,5),(62,2017,36,'03:33:37',51,28,8,23),(62,2018,37,'02:37:21',18,12,4,12),(62,2019,38,'02:09:13',4,4,2,4),(63,2017,38,'03:30:36',49,27,7,24),(63,2018,39,'02:39:22',19,13,5,13),(63,2019,40,'02:07:12',3,3,2,3),(64,2017,40,'03:29:35',47,26,4,25),(64,2018,41,'02:40:23',20,14,2,14),(64,2019,42,'02:04:11',2,2,1,2),(65,2017,29,'03:27:34',45,25,7,26),(65,2018,30,'02:45:24',22,15,6,15),(65,2019,31,'02:03:10',1,1,1,1),(66,2017,24,'03:14:33',39,24,6,27),(66,2018,25,'02:47:25',24,16,2,16),(66,2019,26,'04:19:48',77,39,6,39),(67,2017,22,'03:13:32',38,23,5,28),(67,2018,23,'02:49:26',25,17,3,17),(67,2019,24,'04:18:47',76,38,5,38),(68,2017,21,'03:10:31',37,22,4,29),(68,2018,22,'02:50:27',27,18,4,18),(68,2019,23,'04:14:46',73,37,4,37),(69,2017,30,'03:09:30',35,21,6,30),(69,2018,31,'03:00:28',33,19,7,19),(69,2019,32,'04:12:45',71,36,11,36),(70,2017,46,'03:06:29',34,20,3,31),(70,2018,47,'03:06:29',34,20,3,20),(70,2019,48,'04:05:44',68,35,7,35),(71,2017,50,'03:00:28',33,19,3,32),(71,2018,51,'03:09:30',35,21,3,21),(71,2019,52,'04:03:43',67,34,5,34),(72,2017,60,'02:50:27',27,18,3,33),(72,2018,61,'03:10:31',37,22,2,22),(72,2019,62,'04:00:42',65,33,4,33),(73,2017,65,'02:49:26',25,17,2,34),(73,2018,66,'03:13:32',38,23,3,23),(73,2019,67,'03:45:41',60,32,3,32),(74,2017,66,'02:47:25',24,16,1,35),(74,2018,67,'03:14:33',39,24,4,24),(74,2019,68,'03:40:40',58,31,2,31),(75,2017,70,'02:45:24',22,15,2,36),(75,2018,71,'03:27:34',45,25,3,25),(75,2019,72,'03:39:39',56,30,4,30),(76,2017,76,'02:40:23',20,14,1,37),(76,2018,77,'03:29:35',47,26,4,26),(76,2019,78,'03:36:38',53,29,3,29),(77,2017,85,'02:39:22',19,13,1,38),(77,2018,86,'03:30:36',49,27,2,27),(77,2019,87,'03:33:37',51,28,2,28),(78,2017,50,'02:37:21',18,12,2,39),(78,2018,51,'03:33:37',51,28,4,28),(78,2019,52,'03:30:36',49,27,4,27),(79,2017,55,'02:36:20',17,11,1,40),(79,2018,56,'03:36:38',53,29,5,29),(79,2019,57,'03:29:35',47,26,3,26),(80,2017,30,'02:31:19',15,10,5,41),(80,2018,31,'03:39:39',56,30,8,30),(80,2019,32,'03:27:34',45,25,10,25),(81,2017,40,'02:30:18',14,9,2,42),(81,2018,41,'03:40:40',58,31,4,31),(81,2019,42,'03:14:33',39,24,6,24),(82,2017,21,'02:27:17',11,8,3,43),(82,2018,22,'03:45:41',60,32,5,32),(82,2019,23,'03:13:32',38,23,3,23),(83,2017,35,'02:25:16',9,7,4,44),(83,2018,36,'04:00:42',65,33,9,33),(83,2019,37,'03:10:31',37,22,9,22),(84,2017,34,'02:22:15',6,6,3,45),(84,2018,35,'04:03:43',67,34,10,34),(84,2019,36,'03:09:30',35,21,8,21),(85,2017,36,'02:20:14',5,5,2,46),(85,2018,37,'04:05:44',68,35,11,35),(85,2019,38,'03:06:29',34,20,7,20),(86,2017,38,'02:09:13',4,4,1,47),(86,2018,39,'04:12:45',71,36,12,36),(86,2019,40,'03:00:28',33,19,5,19),(87,2017,40,'02:07:12',3,3,1,48),(87,2018,41,'04:14:46',73,37,5,37),(87,2019,42,'02:50:27',27,18,4,18),(88,2017,29,'02:04:11',2,2,2,49),(88,2018,30,'04:18:47',76,38,13,38),(88,2019,31,'02:49:26',25,17,6,17),(89,2017,24,'02:03:10',1,1,1,50),(89,2018,25,'04:19:48',77,39,6,39),(89,2019,26,'02:47:25',24,16,2,16),(90,2017,22,'02:30:14',21,11,2,1),(90,2018,23,'01:04:12',1,1,1,40),(90,2019,24,'01:30:36',9,6,2,45),(91,2017,21,'02:27:14',20,10,1,2),(91,2018,22,'01:14:34',2,2,2,41),(91,2019,23,'01:27:35',8,5,1,44),(92,2017,30,'02:07:11',16,9,1,3),(92,2018,31,'01:15:34',3,3,1,42),(92,2019,32,'01:25:35',7,4,1,43),(93,2017,46,'02:05:10',15,8,2,4),(93,2018,47,'01:25:35',7,4,1,43),(93,2019,48,'01:15:34',3,3,1,42),(94,2017,50,'01:45:50',13,7,1,5),(94,2018,51,'01:27:35',8,5,1,44),(94,2019,52,'01:14:34',2,2,1,41),(95,2017,60,'01:30:36',9,6,3,6),(95,2018,61,'01:30:36',9,6,1,45),(95,2019,62,'01:04:12',1,1,1,40),(96,2017,65,'01:27:35',8,5,2,7),(96,2018,66,'01:45:50',13,7,2,46),(96,2019,67,'02:30:14',21,11,3,50),(97,2017,66,'01:25:35',7,4,1,8),(97,2018,67,'02:05:10',15,8,3,47),(97,2019,68,'02:27:14',20,10,2,49),(98,2017,42,'01:15:34',3,3,1,9),(98,2018,43,'02:07:11',16,9,2,48),(98,2019,44,'02:07:11',16,9,2,48),(99,2017,76,'01:14:34',2,2,1,10),(99,2018,77,'02:27:14',20,10,1,49),(99,2019,78,'02:05:10',15,8,1,47),(100,2017,85,'01:04:12',1,1,1,11),(100,2018,86,'02:30:14',21,11,1,50),(100,2019,87,'01:45:50',13,7,1,46);
/*!40000 ALTER TABLE `registered` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `audit_log_delete_registered` AFTER DELETE ON `registered` FOR EACH ROW BEGIN
INSERT INTO audit_log_r
VALUES (old.part_id, old.race, old.age_on_race, old.finishing_time, old.overall_rank, 
old.gender_rank, old.division_rank, old.v_id, "DELETED");
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `runner`
--

DROP TABLE IF EXISTS `runner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `runner` (
  `part_id` int(11) NOT NULL,
  `shoe_preference` varchar(50) NOT NULL,
  PRIMARY KEY (`part_id`),
  CONSTRAINT `runner_fk` FOREIGN KEY (`part_id`) REFERENCES `participant` (`part_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runner`
--

LOCK TABLES `runner` WRITE;
/*!40000 ALTER TABLE `runner` DISABLE KEYS */;
INSERT INTO `runner` VALUES (11,'Adidas'),(12,'New Balance'),(13,'Asics'),(14,'Nike'),(15,'Adidas'),(16,'Nike'),(17,'Hoka'),(18,'Asics'),(19,'Saucony'),(20,'New Balance'),(21,'Nike'),(22,'New Balance'),(23,'Hoka'),(24,'Saucony'),(25,'Nike'),(26,'Hoka'),(27,'Hoka'),(28,'New Balance'),(29,'Nike'),(30,'Asics'),(31,'Adidas'),(32,'New Balance'),(33,'Asics'),(34,'Nike'),(35,'Adidas'),(36,'Nike'),(37,'Hoka'),(38,'Asics'),(39,'Saucony'),(40,'New Balance'),(41,'Nike'),(42,'New Balance'),(43,'Hoka'),(44,'Saucony'),(45,'Nike'),(46,'Hoka'),(47,'Hoka'),(48,'New Balance'),(49,'Nike'),(50,'Asics'),(51,'Adidas'),(52,'New Balance'),(53,'Asics'),(54,'Nike'),(55,'Adidas'),(56,'Nike'),(57,'Hoka'),(58,'Asics'),(59,'Saucony'),(60,'New Balance'),(61,'Nike'),(62,'New Balance'),(63,'Hoka'),(64,'Saucony'),(65,'Nike'),(66,'Hoka'),(67,'Hoka'),(68,'New Balance'),(69,'Nike'),(70,'Asics'),(71,'Adidas'),(72,'New Balance'),(73,'Asics'),(74,'Nike'),(75,'Adidas'),(76,'Nike'),(77,'Hoka'),(78,'Asics'),(79,'Saucony'),(80,'New Balance'),(81,'Nike'),(82,'New Balance'),(83,'Hoka'),(84,'Saucony'),(85,'Nike'),(86,'Hoka'),(87,'Hoka'),(88,'New Balance'),(89,'Nike');
/*!40000 ALTER TABLE `runner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(50) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1,'John Hancock'),(2,'Adidas'),(3,'Dana-Farber'),(4,'Bringham Health'),(5,'Gatorade'),(6,'Poland Spring'),(7,'Clif'),(8,'Samuel Adams'),(9,'Citgo'),(10,'AT&T'),(11,'jetBlue'),(12,'Infiniti'),(13,'Abbott'),(14,'NBCSN');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor_by_race`
--

DROP TABLE IF EXISTS `sponsor_by_race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor_by_race` (
  `s_id` int(11) NOT NULL,
  `race` int(11) NOT NULL,
  `s_amount` int(11) NOT NULL,
  PRIMARY KEY (`s_id`,`race`),
  KEY `s_race_fk` (`race`),
  KEY `srank_fk` (`s_amount`),
  CONSTRAINT `s_race_fk` FOREIGN KEY (`race`) REFERENCES `race` (`race_year`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sid_fk` FOREIGN KEY (`s_id`) REFERENCES `sponsor` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `srank_fk` FOREIGN KEY (`s_amount`) REFERENCES `sponsor_rank` (`amount`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor_by_race`
--

LOCK TABLES `sponsor_by_race` WRITE;
/*!40000 ALTER TABLE `sponsor_by_race` DISABLE KEYS */;
INSERT INTO `sponsor_by_race` VALUES (6,2017,100000),(6,2019,100000),(7,2018,100000),(12,2019,100000),(13,2017,100000),(13,2018,100000),(14,2019,100000),(5,2017,500000),(5,2018,500000),(5,2019,500000),(11,2018,500000),(11,2019,500000),(12,2017,500000),(13,2019,500000),(4,2017,1000000),(4,2018,1000000),(4,2019,1000000),(10,2017,1000000),(10,2018,1000000),(10,2019,1000000),(2,2017,5000000),(3,2018,5000000),(3,2019,5000000),(9,2017,5000000),(9,2018,5000000),(9,2019,5000000),(1,2017,10000000),(1,2018,10000000),(1,2019,10000000),(7,2019,10000000),(8,2017,10000000),(8,2018,10000000);
/*!40000 ALTER TABLE `sponsor_by_race` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor_rank`
--

DROP TABLE IF EXISTS `sponsor_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor_rank` (
  `amount` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  PRIMARY KEY (`amount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor_rank`
--

LOCK TABLES `sponsor_rank` WRITE;
/*!40000 ALTER TABLE `sponsor_rank` DISABLE KEYS */;
INSERT INTO `sponsor_rank` VALUES (100000,'Bronze'),(500000,'Silver'),(1000000,'Gold'),(5000000,'Premier'),(10000000,'Top');
/*!40000 ALTER TABLE `sponsor_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_first_name` varchar(50) NOT NULL,
  `v_last_name` varchar(50) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` VALUES (1,'Rosalinda','Wilder'),(2,'Marcelo','Mullenix'),(3,'Mistie','Greene'),(4,'Audrie','Crimmins'),(5,'Chet','Hovis'),(6,'Claudia','Sparks'),(7,'Cheree','Kendrick'),(8,'Sung','Ordaz'),(9,'Vida','Klinger'),(10,'Chi','Crissman'),(11,'Numbers','Hilger'),(12,'Clyde','Patao'),(13,'Masako','Faria'),(14,'Pattie','Hoefle'),(15,'Nery','Likes'),(16,'Cami','Kumm'),(17,'Elroy','Patrick'),(18,'Cristal','Prewitt'),(19,'Nikki','Calixte'),(20,'Shae','Marts'),(21,'Galina','Sasso'),(22,'Adena','Boggs'),(23,'Leonia','Hawley'),(24,'Edelmira','Germain'),(25,'Enedina','Mcbay'),(26,'Sherika','Fralick'),(27,'Tamera','Bradley'),(28,'Emile','Godby'),(29,'Stacee','Towers'),(30,'Zoila','Schneck'),(31,'Chante','Gerow'),(32,'Bernie','Kwon'),(33,'Sylvester','Vince'),(34,'Clarissa','Maze'),(35,'Manual','Featherstone'),(36,'Charis','Nardi'),(37,'Grayce','Peets'),(38,'Stepanie','Mena'),(39,'Rod','Molinar'),(40,'Ashlea','Dickert'),(41,'Su','Ransdell'),(42,'Florida','Lechler'),(43,'Sherise','Maxson'),(44,'Gracie','Grate'),(45,'Reginald','Jacobo'),(46,'Yuriko','Drescher'),(47,'Sharron','Keech'),(48,'Shanelle','Melgar'),(49,'Randell','Tuohy'),(50,'Sybil','Demma');
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wheelchair`
--

DROP TABLE IF EXISTS `wheelchair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wheelchair` (
  `part_id` int(11) NOT NULL,
  `chair_type` varchar(50) NOT NULL,
  PRIMARY KEY (`part_id`),
  CONSTRAINT `wheel_fk` FOREIGN KEY (`part_id`) REFERENCES `participant` (`part_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheelchair`
--

LOCK TABLES `wheelchair` WRITE;
/*!40000 ALTER TABLE `wheelchair` DISABLE KEYS */;
INSERT INTO `wheelchair` VALUES (1,'push-rim'),(2,'other'),(3,'push-rim'),(4,'other'),(5,'push-rim'),(6,'other'),(7,'push-rim'),(8,'other'),(9,'push-rim'),(10,'other'),(90,'push-rim'),(91,'other'),(92,'push-rim'),(93,'other'),(94,'push-rim'),(95,'other'),(96,'push-rim'),(97,'other'),(98,'push-rim'),(99,'other'),(100,'push-rim');
/*!40000 ALTER TABLE `wheelchair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winners`
--

DROP TABLE IF EXISTS `winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `winners` (
  `part_id` int(11) NOT NULL,
  `gender_rank` int(11) NOT NULL,
  `race` int(11) NOT NULL,
  PRIMARY KEY (`part_id`,`gender_rank`,`race`),
  KEY `gender_winner_fk` (`gender_rank`),
  KEY `race_winner_fk` (`race`),
  CONSTRAINT `gender_winner_fk` FOREIGN KEY (`gender_rank`) REFERENCES `prize` (`gender_rank`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `part_winner_fk` FOREIGN KEY (`part_id`) REFERENCES `registered` (`part_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `race_winner_fk` FOREIGN KEY (`race`) REFERENCES `race` (`race_year`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winners`
--

LOCK TABLES `winners` WRITE;
/*!40000 ALTER TABLE `winners` DISABLE KEYS */;
INSERT INTO `winners` VALUES (1,1,2018),(5,1,2019),(10,1,2017),(11,1,2018),(25,1,2019),(50,1,2017),(51,1,2018),(65,1,2019),(89,1,2017),(90,1,2018),(95,1,2019),(100,1,2017),(2,2,2018),(4,2,2019),(9,2,2017),(12,2,2018),(24,2,2019),(49,2,2017),(52,2,2018),(64,2,2019),(88,2,2017),(91,2,2018),(94,2,2019),(99,2,2017),(3,3,2018),(3,3,2019),(8,3,2017),(13,3,2018),(23,3,2019),(48,3,2017),(53,3,2018),(63,3,2019),(87,3,2017),(92,3,2018),(93,3,2019),(98,3,2017);
/*!40000 ALTER TABLE `winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'marathon'
--

--
-- Dumping routines for database 'marathon'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_participant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_participant`(first_name VARCHAR(50), last_name VARCHAR(50), given_country VARCHAR(50), given_gender VARCHAR(50), shoe_pref VARCHAR(50))
BEGIN
INSERT INTO participant(part_first_name, part_last_name, country, gender)
VALUES (first_name, last_name, given_country, given_gender);
CALL update_runner(shoe_pref);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_sponsor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_sponsor`(sponsor_name VARCHAR(50), amount INT, race_year INT)
BEGIN
INSERT INTO sponsor(s_name)
VALUES (sponsor_name);

CALL add_sponsor_year(amount, race_year);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_sponsor_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_sponsor_year`(amount INT, race_year INT)
BEGIN
DECLARE sponsor_id INT;
SELECT MAX(s_id) INTO sponsor_id FROM sponsor;

INSERT INTO sponsor_by_race
VALUES (sponsor_id, race_year, amount);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_volunteer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_volunteer`(first_name VARCHAR(50), last_name VARCHAR(50))
BEGIN
INSERT INTO volunteer(v_first_name, v_last_name)
VALUES (first_name, last_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_wheel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_wheel`(first_name VARCHAR(50), last_name VARCHAR(50), given_country VARCHAR(50), given_gender VARCHAR(50), chair_pref VARCHAR(50))
BEGIN
INSERT INTO participant(part_first_name, part_last_name, country, gender)
VALUES (first_name, last_name, given_country, given_gender);
CALL update_wheel(chair_pref);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `avg_finish` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `avg_finish`(given_gender VARCHAR(50), given_division VARCHAR(10), given_year INT, wheel VARCHAR(12))
BEGIN
IF wheel = "Runner"
THEN
SELECT SEC_TO_TIME(AVG(TIME_TO_SEC(finishing_time))) AS avg_time FROM registered JOIN age_division ON registered.age_on_race =
age_division.age JOIN participant ON participant.part_id = registered.part_id JOIN runner ON runner.part_id =
participant.part_id
WHERE age_division.divison_name = given_division AND gender = given_gender AND race = given_year;
ELSE
SELECT SEC_TO_TIME(AVG(TIME_TO_SEC(finishing_time))) AS avg_time FROM registered JOIN age_division ON registered.age_on_race =
age_division.age JOIN participant ON participant.part_id = registered.part_id JOIN wheelchair ON wheelchair.part_id =
participant.part_id
WHERE age_division.divison_name = given_division AND gender = given_gender AND race = given_year;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `count_countries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `count_countries`(race_year INT)
BEGIN
SELECT country, count(participant.part_id) AS total FROM participant JOIN registered ON participant.part_id = registered.part_id
WHERE registered.race = race_year
GROUP BY country;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_participant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_participant`(participant_id INT)
BEGIN
DELETE FROM participant WHERE part_id = participant_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_registered` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_registered`(p_id INT, given_race INT)
BEGIN
DECLARE deleted_time TIME;
DECLARE deleted_gender VARCHAR(50);
DECLARE deleted_age INT;

SELECT age_on_race INTO deleted_age FROM registered 
WHERE part_id = p_id and given_race = race;

SELECT gender INTO deleted_gender 
FROM participant WHERE part_id = p_id;

SELECT finishing_time INTO deleted_time FROM registered
WHERE part_id = p_id AND race = given_race;

DELETE FROM registered WHERE part_id = p_id AND race = given_race;

IF p_id IN (SELECT part_id FROM runner)
THEN
UPDATE registered
SET overall_rank = overall_rank - 1
WHERE deleted_time < finishing_time AND given_race = race
AND part_id IN (SELECT part_id FROM runner);

UPDATE registered
SET gender_rank = gender_rank - 1
WHERE deleted_time < finishing_time AND given_race = race AND 
part_id IN (SELECT * FROM(SELECT participant.part_id FROM participant JOIN registered ON registered.part_id =
participant.part_id WHERE participant.gender = deleted_gender) temp_tbl1)
AND part_id IN (SELECT part_id FROM runner);

UPDATE registered
SET division_rank = division_rank - 1
WHERE deleted_time < finishing_time AND given_race = race AND 
part_id IN (SELECT * FROM(SELECT participant.part_id FROM participant JOIN registered ON registered.part_id =
participant.part_id WHERE participant.gender = deleted_gender) temp_tbl2)
AND age_on_race IN (SELECT age FROM age_division WHERE divison_name IN 
(SELECT * FROM(SELECT divison_name FROM registered JOIN age_division ON deleted_age = age)temp_tbl3))
AND part_id IN (SELECT part_id FROM runner);

ELSE 
UPDATE registered
SET overall_rank = overall_rank - 1
WHERE deleted_time < finishing_time AND given_race = race
AND part_id IN (SELECT part_id FROM wheelchair);

UPDATE registered
SET gender_rank = gender_rank - 1
WHERE deleted_time < finishing_time AND given_race = race AND 
part_id IN (SELECT * FROM(SELECT participant.part_id FROM participant JOIN registered ON registered.part_id =
participant.part_id WHERE participant.gender = deleted_gender) temp_tbl1)
AND part_id IN (SELECT part_id FROM wheelchair);

UPDATE registered
SET division_rank = division_rank - 1
WHERE deleted_time < finishing_time AND given_race = race AND 
part_id IN (SELECT * FROM(SELECT participant.part_id FROM participant JOIN registered ON registered.part_id =
participant.part_id WHERE participant.gender = deleted_gender) temp_tbl2)
AND age_on_race IN (SELECT age FROM age_division WHERE divison_name IN 
(SELECT * FROM(SELECT divison_name FROM registered JOIN age_division ON deleted_age = age)temp_tbl3))
AND part_id IN (SELECT part_id FROM wheelchair);

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_sponsor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_sponsor`(spon_id INT)
BEGIN
DELETE FROM sponsor WHERE s_id = spon_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_volunteer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_volunteer`(vol_id INT)
BEGIN
DELETE FROM volunteer WHERE v_id = vol_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fast_finish` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fast_finish`()
BEGIN
SELECT race, MAX(avg_finish) AS top_speed FROM 
(SELECT race, SEC_TO_TIME((AVG(TIME_TO_SEC(finishing_time)))) AS avg_finish FROM registered 
GROUP BY race) AS sub_table
GROUP BY race
LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `name_verify` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `name_verify`(first_name VARCHAR(50), last_name VARCHAR(50))
BEGIN
SELECT COUNT(*) AS name_here FROM participant WHERE (part_first_name = first_name AND
part_last_name = first_name) OR part_last_name = last_name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spon_amt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spon_amt`(given_year INT, spon_class VARCHAR(50))
BEGIN
SELECT DISTINCT amount FROM sponsor JOIN sponsor_by_race ON sponsor.s_id =
sponsor_by_race.s_id JOIN sponsor_rank ON sponsor_rank.amount = sponsor_by_race.s_amount 
WHERE sponsor_by_race.race = given_year AND sponsor_rank.class = spon_class;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spon_by_cat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spon_by_cat`(given_year INT, spon_class VARCHAR(50))
BEGIN
SELECT DISTINCT s_name FROM sponsor JOIN sponsor_by_race ON sponsor.s_id =
sponsor_by_race.s_id JOIN sponsor_rank ON sponsor_rank.amount = sponsor_by_race.s_amount 
WHERE sponsor_by_race.race = given_year AND sponsor_rank.class = spon_class;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spon_by_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spon_by_year`(given_year INT)
BEGIN
SELECT DISTINCT s_name, sponsor.s_id FROM sponsor JOIN sponsor_by_race ON sponsor.s_id =
sponsor_by_race.s_id
WHERE sponsor_by_race.race = given_year;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `time_check` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `time_check`(entered_time VARCHAR(8), run_wheel VARCHAR(12), year_given INT)
BEGIN
IF run_wheel = "Runner" 
THEN
SELECT MAX(overall_rank) + 1 AS est_rank FROM Registered JOIN runner 
WHERE (finishing_time < (SELECT CONVERT(entered_time, time) AS result)) AND
year_given = race;
ELSE
SELECT MAX(overall_rank) + 1 AS est_rank FROM Registered JOIN wheelchair 
WHERE (finishing_time < (SELECT CONVERT(entered_time, time) AS result)) AND year_given = race;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `track_athlete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `track_athlete`(first_name VARCHAR(50), last_name VARCHAR(50))
BEGIN
SELECT * FROM participant LEFT JOIN registered ON 
participant.part_id = registered.part_id LEFT JOIN runner 
ON participant.part_id = runner.part_id LEFT JOIN wheelchair
ON participant.part_id = wheelchair.part_id
LEFT JOIN winners ON participant.part_id = winners.part_id AND registered.race = winners.race 
LEFT JOIN prize ON prize.gender_rank = winners.gender_rank
WHERE (part_first_name = first_name AND part_last_name = last_name) OR part_last_name = last_name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_chair_pref` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_chair_pref`(p_id INT, new_chair VARCHAR(50))
BEGIN
UPDATE wheelchair
SET chair_type = new_chair
WHERE part_id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_runner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_runner`(shoe_pref VARCHAR(50))
BEGIN
DECLARE new_id INT;

SELECT MAX(part_id)
INTO new_id FROM participant;

INSERT INTO runner
VALUES (new_id, shoe_pref);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_shoe_pref` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_shoe_pref`(p_id INT, new_shoe VARCHAR(50))
BEGIN
UPDATE runner
SET shoe_preference = new_shoe
WHERE part_id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_sponsor_amt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_sponsor_amt`(spon_id INT, given_year INT, new_amount INT)
BEGIN
UPDATE sponsor_by_race
SET s_amount = new_amount
WHERE s_id = spon_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_volunteer_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_volunteer_name`(vol_id INT, first_name VARCHAR(50), last_name VARCHAR(50))
BEGIN
IF first_name != "" AND last_name != ""
THEN 
UPDATE volunteer
SET v_first_name = first_name, v_last_name = last_name
WHERE v_id = vol_id;
ELSEIF first_name = "" AND last_name != ""
THEN 
UPDATE volunteer
SET v_last_name = last_name
WHERE v_id = vol_id;
ELSEIF first_name != "" AND last_name = ""
THEN 
UPDATE volunteer
SET v_first_name = first_name
WHERE v_id = vol_id;
ELSE
UPDATE volunteer
SET v_first_name = v_first_name, v_last_name = V_last_name
WHERE v_id = vol_id;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_wheel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_wheel`(chair_pref VARCHAR(50))
BEGIN
DECLARE new_id INT;

SELECT MAX(part_id)
INTO new_id FROM participant;

INSERT INTO wheelchair
VALUES (new_id, chair_pref);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_audit_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_audit_log`()
BEGIN
SELECT * FROM audit_log;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_audit_log_r` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_audit_log_r`()
BEGIN
SELECT * FROM audit_log_r;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_vol_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_vol_data`()
BEGIN
SELECT * FROM volunteer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-22 13:56:06
