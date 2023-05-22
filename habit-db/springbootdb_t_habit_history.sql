-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: springbootdb
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `t_habit_history`
--

DROP TABLE IF EXISTS `t_habit_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_habit_history` (
  `habit_idx` int(11) NOT NULL,
  `done_dt` datetime NOT NULL,
  `done_yn` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`habit_idx`,`done_dt`),
  CONSTRAINT `t_habit_history_ibfk_1` FOREIGN KEY (`habit_idx`) REFERENCES `t_habit` (`habit_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_habit_history`
--

LOCK TABLES `t_habit_history` WRITE;
/*!40000 ALTER TABLE `t_habit_history` DISABLE KEYS */;
INSERT INTO `t_habit_history` VALUES (1,'2023-05-01 00:00:00',0),(1,'2023-05-02 00:00:00',0),(1,'2023-05-03 00:00:00',0),(1,'2023-05-04 00:00:00',0),(1,'2023-05-05 00:00:00',0),(1,'2023-05-06 00:00:00',0),(1,'2023-05-07 00:00:00',0),(1,'2023-05-08 00:00:00',0),(1,'2023-05-09 00:00:00',0),(1,'2023-05-10 00:00:00',0),(1,'2023-05-11 00:00:00',0),(1,'2023-05-12 00:00:00',0),(1,'2023-05-13 00:00:00',0),(1,'2023-05-14 00:00:00',0),(1,'2023-05-15 00:00:00',0),(1,'2023-05-16 00:00:00',0),(1,'2023-05-17 00:00:00',0),(1,'2023-05-18 00:00:00',0),(1,'2023-05-19 00:00:00',0),(1,'2023-05-20 00:00:00',0),(1,'2023-05-21 00:00:00',0),(1,'2023-05-22 00:00:00',0),(1,'2023-05-23 00:00:00',0),(1,'2023-05-24 00:00:00',0),(1,'2023-05-25 00:00:00',0),(1,'2023-05-26 00:00:00',0),(1,'2023-05-27 00:00:00',0),(1,'2023-05-28 00:00:00',0),(1,'2023-05-29 00:00:00',0),(1,'2023-05-30 00:00:00',0),(1,'2023-05-31 00:00:00',0),(2,'2023-05-01 00:00:00',1),(2,'2023-05-02 00:00:00',1),(2,'2023-05-03 00:00:00',1),(2,'2023-05-04 00:00:00',1),(2,'2023-05-05 00:00:00',1),(2,'2023-05-06 00:00:00',1),(2,'2023-05-07 00:00:00',1),(2,'2023-05-08 00:00:00',1),(2,'2023-05-09 00:00:00',1),(2,'2023-05-10 00:00:00',1),(2,'2023-05-11 00:00:00',1),(2,'2023-05-12 00:00:00',1),(2,'2023-05-13 00:00:00',1),(2,'2023-05-14 00:00:00',1),(2,'2023-05-15 00:00:00',0),(2,'2023-05-16 00:00:00',0),(2,'2023-05-17 00:00:00',0),(2,'2023-05-18 00:00:00',1),(2,'2023-05-19 00:00:00',1),(2,'2023-05-20 00:00:00',0),(2,'2023-05-21 00:00:00',0),(2,'2023-05-22 00:00:00',0),(2,'2023-05-23 00:00:00',0),(2,'2023-05-24 00:00:00',0),(2,'2023-05-25 00:00:00',0),(2,'2023-05-26 00:00:00',0),(2,'2023-05-27 00:00:00',0),(2,'2023-05-28 00:00:00',0),(2,'2023-05-29 00:00:00',0),(2,'2023-05-30 00:00:00',1),(2,'2023-05-31 00:00:00',0),(3,'2023-04-01 00:00:00',1),(3,'2023-04-02 00:00:00',1),(3,'2023-04-03 00:00:00',1),(3,'2023-04-04 00:00:00',1),(3,'2023-04-05 00:00:00',1),(3,'2023-04-06 00:00:00',1),(3,'2023-04-07 00:00:00',1),(3,'2023-04-08 00:00:00',1),(3,'2023-04-09 00:00:00',1),(3,'2023-04-10 00:00:00',1),(3,'2023-04-11 00:00:00',1),(3,'2023-04-12 00:00:00',1),(3,'2023-04-13 00:00:00',1),(3,'2023-04-14 00:00:00',1),(3,'2023-04-15 00:00:00',1),(3,'2023-04-16 00:00:00',1),(3,'2023-04-17 00:00:00',1),(3,'2023-04-18 00:00:00',1),(3,'2023-04-19 00:00:00',1),(3,'2023-04-20 00:00:00',1),(3,'2023-04-21 00:00:00',1),(3,'2023-04-22 00:00:00',1),(3,'2023-04-23 00:00:00',1),(3,'2023-04-24 00:00:00',1),(3,'2023-04-25 00:00:00',1),(3,'2023-04-26 00:00:00',1),(3,'2023-04-27 00:00:00',1),(3,'2023-04-28 00:00:00',1),(3,'2023-04-29 00:00:00',1),(3,'2023-04-30 00:00:00',1),(4,'2023-05-01 00:00:00',0),(4,'2023-05-02 00:00:00',0),(4,'2023-05-03 00:00:00',1),(4,'2023-05-04 00:00:00',0),(4,'2023-05-05 00:00:00',0),(4,'2023-05-06 00:00:00',0),(4,'2023-05-07 00:00:00',0),(4,'2023-05-08 00:00:00',0),(4,'2023-05-09 00:00:00',0),(4,'2023-05-10 00:00:00',0),(4,'2023-05-11 00:00:00',0),(4,'2023-05-12 00:00:00',0),(4,'2023-05-13 00:00:00',0),(4,'2023-05-14 00:00:00',0),(4,'2023-05-15 00:00:00',1),(4,'2023-05-16 00:00:00',1),(4,'2023-05-17 00:00:00',0),(4,'2023-05-18 00:00:00',0),(4,'2023-05-19 00:00:00',0),(4,'2023-05-20 00:00:00',0),(4,'2023-05-21 00:00:00',0),(4,'2023-05-22 00:00:00',0),(4,'2023-05-23 00:00:00',0),(4,'2023-05-24 00:00:00',0),(4,'2023-05-25 00:00:00',0),(4,'2023-05-26 00:00:00',1),(4,'2023-05-27 00:00:00',1),(4,'2023-05-28 00:00:00',0),(4,'2023-05-29 00:00:00',0),(4,'2023-05-30 00:00:00',0),(4,'2023-05-31 00:00:00',0),(5,'2023-05-01 00:00:00',0),(5,'2023-05-02 00:00:00',1),(5,'2023-05-03 00:00:00',0),(5,'2023-05-04 00:00:00',0),(5,'2023-05-05 00:00:00',0),(5,'2023-05-06 00:00:00',0),(5,'2023-05-07 00:00:00',0),(5,'2023-05-08 00:00:00',0),(5,'2023-05-09 00:00:00',0),(5,'2023-05-10 00:00:00',0),(5,'2023-05-11 00:00:00',0),(5,'2023-05-12 00:00:00',0),(5,'2023-05-13 00:00:00',0),(5,'2023-05-14 00:00:00',0),(5,'2023-05-15 00:00:00',1),(5,'2023-05-16 00:00:00',1),(5,'2023-05-17 00:00:00',1),(5,'2023-05-18 00:00:00',1),(5,'2023-05-19 00:00:00',0),(5,'2023-05-20 00:00:00',0),(5,'2023-05-21 00:00:00',0),(5,'2023-05-22 00:00:00',0),(5,'2023-05-23 00:00:00',0),(5,'2023-05-24 00:00:00',0),(5,'2023-05-25 00:00:00',0),(5,'2023-05-26 00:00:00',0),(5,'2023-05-27 00:00:00',0),(5,'2023-05-28 00:00:00',1),(5,'2023-05-29 00:00:00',0),(5,'2023-05-30 00:00:00',0),(5,'2023-05-31 00:00:00',0),(6,'2023-05-01 00:00:00',0),(6,'2023-05-02 00:00:00',1),(6,'2023-05-03 00:00:00',0),(6,'2023-05-04 00:00:00',0),(6,'2023-05-05 00:00:00',0),(6,'2023-05-06 00:00:00',0),(6,'2023-05-07 00:00:00',0),(6,'2023-05-08 00:00:00',0),(6,'2023-05-09 00:00:00',0),(6,'2023-05-10 00:00:00',0),(6,'2023-05-11 00:00:00',0),(6,'2023-05-12 00:00:00',0),(6,'2023-05-13 00:00:00',0),(6,'2023-05-14 00:00:00',0),(6,'2023-05-15 00:00:00',1),(6,'2023-05-16 00:00:00',1),(6,'2023-05-17 00:00:00',1),(6,'2023-05-18 00:00:00',1),(6,'2023-05-19 00:00:00',0),(6,'2023-05-20 00:00:00',0),(6,'2023-05-21 00:00:00',0),(6,'2023-05-22 00:00:00',0),(6,'2023-05-23 00:00:00',0),(6,'2023-05-24 00:00:00',0),(6,'2023-05-25 00:00:00',0),(6,'2023-05-26 00:00:00',1),(6,'2023-05-27 00:00:00',1),(6,'2023-05-28 00:00:00',0),(6,'2023-05-29 00:00:00',0),(6,'2023-05-30 00:00:00',0),(6,'2023-05-31 00:00:00',0),(7,'2023-05-01 00:00:00',0),(7,'2023-05-02 00:00:00',0),(7,'2023-05-03 00:00:00',1),(7,'2023-05-04 00:00:00',0),(7,'2023-05-05 00:00:00',0),(7,'2023-05-06 00:00:00',0),(7,'2023-05-07 00:00:00',0),(7,'2023-05-08 00:00:00',0),(7,'2023-05-09 00:00:00',0),(7,'2023-05-10 00:00:00',0),(7,'2023-05-11 00:00:00',0),(7,'2023-05-12 00:00:00',0),(7,'2023-05-13 00:00:00',0),(7,'2023-05-14 00:00:00',0),(7,'2023-05-15 00:00:00',0),(7,'2023-05-16 00:00:00',0),(7,'2023-05-17 00:00:00',0),(7,'2023-05-18 00:00:00',0),(7,'2023-05-19 00:00:00',0),(7,'2023-05-20 00:00:00',0),(7,'2023-05-21 00:00:00',0),(7,'2023-05-22 00:00:00',0),(7,'2023-05-23 00:00:00',0),(7,'2023-05-24 00:00:00',0),(7,'2023-05-25 00:00:00',0),(7,'2023-05-26 00:00:00',0),(7,'2023-05-27 00:00:00',0),(7,'2023-05-28 00:00:00',0),(7,'2023-05-29 00:00:00',0),(7,'2023-05-30 00:00:00',0),(7,'2023-05-31 00:00:00',0),(8,'2023-05-01 00:00:00',0),(8,'2023-05-02 00:00:00',0),(8,'2023-05-03 00:00:00',1),(8,'2023-05-04 00:00:00',0),(8,'2023-05-05 00:00:00',0),(8,'2023-05-06 00:00:00',0),(8,'2023-05-07 00:00:00',0),(8,'2023-05-08 00:00:00',0),(8,'2023-05-09 00:00:00',0),(8,'2023-05-10 00:00:00',0),(8,'2023-05-11 00:00:00',0),(8,'2023-05-12 00:00:00',0),(8,'2023-05-13 00:00:00',0),(8,'2023-05-14 00:00:00',0),(8,'2023-05-15 00:00:00',0),(8,'2023-05-16 00:00:00',0),(8,'2023-05-17 00:00:00',0),(8,'2023-05-18 00:00:00',0),(8,'2023-05-19 00:00:00',0),(8,'2023-05-20 00:00:00',0),(8,'2023-05-21 00:00:00',0),(8,'2023-05-22 00:00:00',0),(8,'2023-05-23 00:00:00',0),(8,'2023-05-24 00:00:00',0),(8,'2023-05-25 00:00:00',0),(8,'2023-05-26 00:00:00',0),(8,'2023-05-27 00:00:00',0),(8,'2023-05-28 00:00:00',0),(8,'2023-05-29 00:00:00',0),(8,'2023-05-30 00:00:00',0),(8,'2023-05-31 00:00:00',0),(9,'2023-05-01 00:00:00',0),(9,'2023-05-02 00:00:00',0),(9,'2023-05-03 00:00:00',1),(9,'2023-05-04 00:00:00',0),(9,'2023-05-05 00:00:00',0),(9,'2023-05-06 00:00:00',0),(9,'2023-05-07 00:00:00',0),(9,'2023-05-08 00:00:00',0),(9,'2023-05-09 00:00:00',0),(9,'2023-05-10 00:00:00',0),(9,'2023-05-11 00:00:00',0),(9,'2023-05-12 00:00:00',0),(9,'2023-05-13 00:00:00',0),(9,'2023-05-14 00:00:00',0),(9,'2023-05-15 00:00:00',0),(9,'2023-05-16 00:00:00',0),(9,'2023-05-17 00:00:00',0),(9,'2023-05-18 00:00:00',0),(9,'2023-05-19 00:00:00',0),(9,'2023-05-20 00:00:00',0),(9,'2023-05-21 00:00:00',0),(9,'2023-05-22 00:00:00',0),(9,'2023-05-23 00:00:00',0),(9,'2023-05-24 00:00:00',0),(9,'2023-05-25 00:00:00',0),(9,'2023-05-26 00:00:00',0),(9,'2023-05-27 00:00:00',0),(9,'2023-05-28 00:00:00',0),(9,'2023-05-29 00:00:00',0),(9,'2023-05-30 00:00:00',0),(9,'2023-05-31 00:00:00',0),(10,'2023-05-01 00:00:00',0),(10,'2023-05-02 00:00:00',0),(10,'2023-05-03 00:00:00',1),(10,'2023-05-04 00:00:00',0),(10,'2023-05-05 00:00:00',0),(10,'2023-05-06 00:00:00',0),(10,'2023-05-07 00:00:00',0),(10,'2023-05-08 00:00:00',0),(10,'2023-05-09 00:00:00',0),(10,'2023-05-10 00:00:00',0),(10,'2023-05-11 00:00:00',0),(10,'2023-05-12 00:00:00',0),(10,'2023-05-13 00:00:00',0),(10,'2023-05-14 00:00:00',0),(10,'2023-05-15 00:00:00',0),(10,'2023-05-16 00:00:00',0),(10,'2023-05-17 00:00:00',0),(10,'2023-05-18 00:00:00',0),(10,'2023-05-19 00:00:00',0),(10,'2023-05-20 00:00:00',0),(10,'2023-05-21 00:00:00',0),(10,'2023-05-22 00:00:00',0),(10,'2023-05-23 00:00:00',0),(10,'2023-05-24 00:00:00',0),(10,'2023-05-25 00:00:00',0),(10,'2023-05-26 00:00:00',0),(10,'2023-05-27 00:00:00',0),(10,'2023-05-28 00:00:00',0),(10,'2023-05-29 00:00:00',0),(10,'2023-05-30 00:00:00',0),(10,'2023-05-31 00:00:00',0);
/*!40000 ALTER TABLE `t_habit_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04  9:57:32