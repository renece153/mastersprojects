-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: is226_project
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.18-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` varchar(7) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `admin_password` varchar(500) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `admin_code` varchar(10) NOT NULL,
  `admin_grp_email` varchar(50) NOT NULL,
  `admin_class` varchar(50) NOT NULL,
  `linked_user_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('ADMIN01','pogiman@hotmoms.comsasasdasd','passwords','renadmin','ADMGRP','admingrp@grp.com','ADM0001','USER000008'),('ADMIN02',NULL,'passwordings','renadmin2','ADMGRP','admingrp@grp.com','ADM0001',NULL),('ADMIN03','','p@ssw0rd','user_name','ADMGRP','admingrp@grp.com','ADM0001',NULL),('ADMIN04','pogiman@hotmoms.comsas','p@ssw0rd','user_name2','ADMGRP','admingrp@grp.com','ADM0001','USER000007'),('ADMIN05',NULL,'p@ssw0rd','user_name3','ADMGRP','admingrp@grp.com','ADM0001',NULL),('ADMIN06',NULL,'p@ssw0rd','user_name4','ADMGRP','admingrp@grp.com','ADM0001',NULL),('ADMIN07',NULL,'p@ssw0rd','user_name5','ADMGRP','admingrp@grp.com','ADM0001',NULL),('ADMIN08',NULL,'p@ssw0rd','user_name6','ADMGRP','admingrp@grp.com','ADM0001',NULL),('ADMIN10','pogiman@hotmoms.bayagra','password1@','JingleBalls','ADMGRP','admingrp@grp.com','ADM0001','USER000009');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `admin_master_list`
--

DROP TABLE IF EXISTS `admin_master_list`;
/*!50001 DROP VIEW IF EXISTS `admin_master_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `admin_master_list` (
  `admin_id` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `admin_password` tinyint NOT NULL,
  `user_name` tinyint NOT NULL,
  `admin_code` tinyint NOT NULL,
  `admin_grp_email` tinyint NOT NULL,
  `admin_class` tinyint NOT NULL,
  `session_id` tinyint NOT NULL,
  `session_key` tinyint NOT NULL,
  `in_use` tinyint NOT NULL,
  `connected_to_session_key` tinyint NOT NULL,
  `connected_to_user` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `last_name` tinyint NOT NULL,
  `gender` tinyint NOT NULL,
  `mobile_no` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES ('55892169bf6a7','55892169d2efc'),('5589216a3646e','5589216a48722'),('558922117fcef','5589221195248'),('55892211e44d5','55892211f1fa7'),('558922894c453','558922895ea0a'),('558922899ccaa','55892289aa7cf'),('558923538f48d','558923539a46c'),('55892353f05c4','55892354051be'),('558973f4389ac','558973f462e61'),('558973f4c46f2','558973f4d4abe'),('558973f51600d','558973f526fc5'),('558973f55d269','558973f57af07'),('558973f5abb1a','558973f5e764a'),('5589751a63091','5589751a81bf4'),('5589751ad32b8','5589751adbdbd'),('5589751b304ef','5589751b3b04d'),('5589751b749c9','5589751b9a98c'),('55892169bf6a7','55892169d2efc'),('5589216a3646e','5589216a48722'),('558922117fcef','5589221195248'),('55892211e44d5','55892211f1fa7'),('558922894c453','558922895ea0a'),('558922899ccaa','55892289aa7cf'),('558923538f48d','558923539a46c'),('55892353f05c4','55892354051be'),('558973f4389ac','558973f462e61'),('558973f4c46f2','558973f4d4abe'),('558973f51600d','558973f526fc5'),('558973f55d269','558973f57af07'),('558973f5abb1a','558973f5e764a'),('5589751a63091','5589751a81bf4'),('5589751ad32b8','5589751adbdbd'),('5589751b304ef','5589751b3b04d'),('5589751b749c9','5589751b9a98c'),('60639c933297e','60639c9333104'),('60639c933561d','60639c9335d2c'),('60639c93381ae','60639c9338840');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_to_questions_staging`
--

DROP TABLE IF EXISTS `is226_project`.`answer_to_questions_staging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`answer_to_questions_staging` (
  `aeq_staging_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ae_staging_id` bigint(20) DEFAULT NULL,
  `exam_id` varchar(255) DEFAULT NULL,
  `question_id` varchar(255) DEFAULT NULL,
  `answer_id` varchar(255) DEFAULT NULL,
  `answer_sa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aeq_staging_id`),
  KEY `map_to_ae_staging_id` (`ae_staging_id`),
  CONSTRAINT `map_to_ae_staging_id` FOREIGN KEY (`ae_staging_id`) REFERENCES `answers_to_exam_staging` (`ae_staging_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_to_questions_staging`
--

LOCK TABLES `answer_to_questions_staging` WRITE;
/*!40000 ALTER TABLE `answer_to_questions_staging` DISABLE KEYS */;
INSERT INTO `is226_project`.`answer_to_questions_staging` VALUES (1,1,'E04MC2021X0022','E04MC2021X002200001','E04MC2021X00220000100001',NULL),(9,1,'E04MC2021X0022','E04MC2021X002200002','E04MC2021X00220000200001',NULL),(10,1,'E04MC2021X0022','E04MC2021X002200003','E04MC2021X00220000300001',NULL),(11,1,'E04MC2021X0022','E04MC2021X002200004','E04MC2021X00220000400001',NULL),(12,1,'E04MC2021X0022','E04MC2021X002200005','E04MC2021X00220000500001',NULL),(13,1,'E04MC2021X0022','E04MC2021X002200006','E04MC2021X00220000600001',NULL),(14,1,'E04MC2021X0022','E04MC2021X002200007','E04MC2021X00220000700001',NULL),(15,2,'E04MC2021X0015','E04MC2021X001500001','E04MC2021X00150000100010',NULL),(16,2,'E04MC2021X0015','E04MC2021X001500002','E04MC2021X00150000200010',NULL),(17,3,'E04MC2021X0015','E04MC2021X001500001','',NULL),(18,3,'E04MC2021X0015','E04MC2021X001500002','',NULL),(19,4,'E04SA2021X0011','E04SA2021X001100002','',NULL),(20,4,'E04SA2021X0011','E04SA2021X001100003','',NULL),(21,4,'E04SA2021X0011','','',NULL),(22,4,'E04SA2021X0011','E04SA2021X001100004','',NULL),(23,4,'E04SA2021X0011','E04SA2021X001100005',NULL,''),(24,5,'E04MC2021X0019','E04MC2021X001900001','E04MC2021X00190000100010',NULL),(25,6,'E04MC2021X0018','E04MC2021X001800001','E04MC2021X00180000100001',NULL);
/*!40000 ALTER TABLE `answer_to_questions_staging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers_to_exam_staging`
--

DROP TABLE IF EXISTS `answers_to_exam_staging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`answers_to_exam_staging` (
  `ae_staging_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taker_type` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `exam_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ae_staging_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers_to_exam_staging`
--

LOCK TABLES `answers_to_exam_staging` WRITE;
/*!40000 ALTER TABLE `answers_to_exam_staging` DISABLE KEYS */;
INSERT INTO `answers_to_exam_staging` VALUES (1,'T','pogiman@hotmoms.com69','E04MC2021X0022'),(2,'S','email@blank.com23','E04MC2021X0015'),(3,'ND','','E04MC2021X0015'),(4,'ND','','E04SA2021X0011'),(5,'ND','','E04MC2021X0019'),(6,'ND','','E04MC2021X0018');
/*!40000 ALTER TABLE `answers_to_exam_staging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice_staging_table`
--

DROP TABLE IF EXISTS `choice_staging_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`choice_staging_table` (
  `exam_id` varchar(20) DEFAULT NULL,
  `option_no` int(11) DEFAULT NULL,
  `option_name` varchar(100) DEFAULT NULL,
  `binary_eq` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice_staging_table`
--

LOCK TABLES `choice_staging_table` WRITE;
/*!40000 ALTER TABLE `choice_staging_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `choice_staging_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `class_details`
--

DROP TABLE IF EXISTS `class_details`;
/*!50001 DROP VIEW IF EXISTS `class_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `class_details` (
  `class_code` tinyint NOT NULL,
  `class_name` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `class_size` tinyint NOT NULL,
  `occupied` tinyint NOT NULL,
  `remaining` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `teacher_code` tinyint NOT NULL,
  `user_name` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `last_name` tinyint NOT NULL,
  `gender` tinyint NOT NULL,
  `mobile_no` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `class_student_teacher_summary`
--

DROP TABLE IF EXISTS `class_student_teacher_summary`;
/*!50001 DROP VIEW IF EXISTS `class_student_teacher_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `class_student_teacher_summary` (
  `sce_id` tinyint NOT NULL,
  `class_code` tinyint NOT NULL,
  `class_name` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `size` tinyint NOT NULL,
  `total_enrolled` tinyint NOT NULL,
  `remaining_size` tinyint NOT NULL,
  `student_user_name` tinyint NOT NULL,
  `student_full_name` tinyint NOT NULL,
  `student_email` tinyint NOT NULL,
  `student_mobile_no` tinyint NOT NULL,
  `student_gender_name` tinyint NOT NULL,
  `student_gender` tinyint NOT NULL,
  `teacher_user_name` tinyint NOT NULL,
  `teacher_full_name` tinyint NOT NULL,
  `teacher_email` tinyint NOT NULL,
  `teacher_mobile_no` tinyint NOT NULL,
  `teacher_gender_name` tinyint NOT NULL,
  `teacher_gender` tinyint NOT NULL,
  `class_status_name` tinyint NOT NULL,
  `class_status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`classes` (
  `class_code` varchar(8) NOT NULL,
  `teacher_code` varchar(12) DEFAULT NULL,
  `class_name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `size` int(11) NOT NULL,
  `record_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`class_code`),
  KEY `teache_to_class_mapping` (`teacher_code`),
  CONSTRAINT `teache_to_class_mapping` FOREIGN KEY (`teacher_code`) REFERENCES `teachers` (`teacher_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('C2021001',NULL,'Intro to Intro','This is a test',69,'2021-04-01 07:54:53'),('C2021003','TCR202100002','Intro to Intro','This is a test',69,'2021-04-01 08:01:26'),('C2021004','TCR202100002','infut','test',99,'2021-04-01 23:13:59'),('C2021005','TCR202100002','test_log','test_log',23,'2021-04-02 08:05:07'),('C2021007','TCR202100004','Kuruko','This is a very long text to test how the system will react.',10,'2021-04-02 10:37:15'),('C2021008','TCR202100004','Kuruko','123123',10,'2021-04-02 08:24:54'),('C2021010','TCR202100004','Kuruko','123123123',10,'2021-04-02 08:58:52'),('C2021011','TCR202100004','Intro to Intro','This is a very long text to test how the system will react.',12,'2021-04-02 10:37:15'),('C2021012','TCR202100004','Change Class','This is for Checking changes in Classes',20,'2021-04-02 18:37:39'),('C2021017','TCR202100004','Create Class','Description',10,'2021-05-17 19:45:31');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_history`
--

DROP TABLE IF EXISTS `exam_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`exam_history` (
  `email` varchar(50) DEFAULT NULL,
  `exam_id` varchar(50) DEFAULT NULL,
  `highest_possible_grade` bigint(20) DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  `correct` int(11) DEFAULT NULL,
  `incorrect` int(11) DEFAULT NULL,
  `record_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_history`
--

LOCK TABLES `exam_history` WRITE;
/*!40000 ALTER TABLE `exam_history` DISABLE KEYS */;
INSERT INTO `is226_project`.`exam_history` VALUES ('pogiman@hotmoms.com69','E04MC2021X0022',7,42.8571,3,3,4,'2021-04-06 06:59:20'),('','E04MC2021X0015',2,50,1,1,2,'2021-05-15 13:56:11'),('email@blank.com23','E04MC2021X0015',2,50,1,1,1,'2021-05-15 13:56:11'),('pogiman@hotmoms.com69','E04MC2021X0022',7,28.5714,2,2,5,'2021-05-15 13:56:11'),('','E04MC2021X0015',2,50,1,1,2,'2021-05-15 13:56:46'),('email@blank.com23','E04MC2021X0015',2,50,1,1,1,'2021-05-15 13:56:46'),('pogiman@hotmoms.com69','E04MC2021X0022',7,28.5714,2,2,5,'2021-05-15 13:56:46'),('','E04MC2021X0015',2,50,1,1,2,'2021-05-15 13:56:58'),('email@blank.com23','E04MC2021X0015',2,50,1,1,1,'2021-05-15 13:56:58'),('pogiman@hotmoms.com69','E04MC2021X0022',7,28.5714,2,2,5,'2021-05-15 13:56:58'),('','E04MC2021X0015',2,50,1,1,2,'2021-05-15 13:58:03'),('email@blank.com23','E04MC2021X0015',2,50,1,1,1,'2021-05-15 13:58:03'),('pogiman@hotmoms.com69','E04MC2021X0022',7,28.5714,2,2,5,'2021-05-15 13:58:03'),('','E04MC2021X0015',2,50,1,1,2,'2021-05-15 13:58:11'),('email@blank.com23','E04MC2021X0015',2,50,1,1,1,'2021-05-15 13:58:11'),('pogiman@hotmoms.com69','E04MC2021X0022',7,28.5714,2,2,5,'2021-05-15 13:58:11'),('','E04MC2021X0015',2,50,1,1,2,'2021-05-15 13:58:59'),('','E04SA2021X0011',5,20,1,1,6,'2021-05-15 13:58:59'),('email@blank.com23','E04MC2021X0015',2,50,1,1,1,'2021-05-15 13:58:59'),('pogiman@hotmoms.com69','E04MC2021X0022',7,28.5714,2,2,5,'2021-05-15 13:58:59'),('','E04MC2021X0015',2,50,1,1,2,'2021-05-15 14:00:24'),('email@blank.com23','E04MC2021X0015',2,50,1,1,1,'2021-05-15 14:00:24'),('pogiman@hotmoms.com69','E04MC2021X0022',7,28.5714,2,2,5,'2021-05-15 14:00:24'),('','E04MC2021X0015',2,50,1,1,2,'2021-05-15 14:02:17'),('email@blank.com23','E04MC2021X0015',2,50,1,1,1,'2021-05-15 14:02:17'),('pogiman@hotmoms.com69','E04MC2021X0022',7,28.5714,2,2,5,'2021-05-15 14:02:17'),('','E04MC2021X0015',2,50,1,1,2,'2021-05-15 14:03:00'),('email@blank.com23','E04MC2021X0015',2,50,1,1,1,'2021-05-15 14:03:00'),('pogiman@hotmoms.com69','E04MC2021X0022',7,28.5714,2,2,5,'2021-05-15 14:03:00');
/*!40000 ALTER TABLE `exam_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `exam_history_view`
--

DROP TABLE IF EXISTS `exam_history_view`;
/*!50001 DROP VIEW IF EXISTS `exam_history_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `exam_history_view` (
  `email` tinyint NOT NULL,
  `full_name` tinyint NOT NULL,
  `gender_name` tinyint NOT NULL,
  `gender` tinyint NOT NULL,
  `category` tinyint NOT NULL,
  `class_code` tinyint NOT NULL,
  `class_name` tinyint NOT NULL,
  `exam_id` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `highest_possible_grade` tinyint NOT NULL,
  `score` tinyint NOT NULL,
  `errors` tinyint NOT NULL,
  `score_display` tinyint NOT NULL,
  `percentage` tinyint NOT NULL,
  `record_timestamp` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `exam_summary`
--

DROP TABLE IF EXISTS `exam_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`exam_summary` (
  `email` varchar(50) DEFAULT NULL,
  `class_id` varchar(50) DEFAULT NULL,
  `exam_id` varchar(50) DEFAULT NULL,
  `question_id` varchar(50) DEFAULT NULL,
  `exam_answer` varchar(50) DEFAULT NULL,
  `user_answer` varchar(50) DEFAULT NULL,
  `checking` varchar(10) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `record_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_summary`
--

LOCK TABLES `exam_summary` WRITE;
/*!40000 ALTER TABLE `exam_summary` DISABLE KEYS */;
INSERT INTO `is226_project`.`exam_summary` VALUES ('pogiman@hotmoms.com69','C2021010','E04MC2021X0022','E04MC2021X002200001','E04MC2021X00220000100001','E04MC2021X00220000100001','correct',1,'2021-04-14 06:27:17'),('pogiman@hotmoms.com69','C2021010','E04MC2021X0022','E04MC2021X002200002','E04MC2021X00220000200011','E04MC2021X00220000200001','incorrect',0,'2021-04-14 06:27:17'),('pogiman@hotmoms.com69','C2021010','E04MC2021X0022','E04MC2021X002200003','E04MC2021X00220000300100','E04MC2021X00220000300001','incorrect',0,'2021-04-14 06:27:17'),('pogiman@hotmoms.com69','C2021010','E04MC2021X0022','E04MC2021X002200004','E04MC2021X00220000400010','E04MC2021X00220000400001','incorrect',0,'2021-04-14 06:22:39'),('pogiman@hotmoms.com69','C2021010','E04MC2021X0022','E04MC2021X002200005','E04MC2021X00220000500010','E04MC2021X00220000500001','incorrect',0,'2021-04-14 06:22:39'),('pogiman@hotmoms.com69','C2021010','E04MC2021X0022','E04MC2021X002200006','E04MC2021X00220000600011','E04MC2021X00220000600001','incorrect',0,'2021-04-14 06:22:39'),('pogiman@hotmoms.com69','C2021010','E04MC2021X0022','E04MC2021X002200007','E04MC2021X00220000700001','E04MC2021X00220000700001','correct',1,'2021-04-14 06:27:17'),('email@blank.com23','C2021004','E04MC2021X0015','E04MC2021X001500001','E04MC2021X00150000100001','E04MC2021X00150000100010','incorrect',0,'2021-05-15 13:47:21'),('email@blank.com23','C2021004','E04MC2021X0015','E04MC2021X001500002','E04MC2021X00150000200010','E04MC2021X00150000200010','correct',1,'2021-05-15 13:47:21'),('','C2021004','E04MC2021X0015','E04MC2021X001500001','E04MC2021X00150000100001','','incorrect',0,'2021-05-15 13:55:57'),('','C2021004','E04MC2021X0015','E04MC2021X001500002','E04MC2021X00150000200010','','incorrect',0,'2021-05-15 13:55:57'),('','C2021004','E04SA2021X0011','E04SA2021X001100001',NULL,NULL,'incorrect',0,'2021-05-15 13:56:56'),('','C2021004','E04SA2021X0011','E04SA2021X001100002','2','','incorrect',0,'2021-05-15 14:02:59'),('','C2021004','E04SA2021X0011','E04SA2021X001100003',NULL,'','incorrect',0,'2021-05-15 14:02:59'),('','C2021004','E04SA2021X0011','E04SA2021X001100004','E04SA2021X00110000400011','','incorrect',0,'2021-05-15 14:02:59'),('','C2021004','E04SA2021X0011','E04SA2021X001100005','I am a banana','','incorrect',0,'2021-05-15 13:56:56'),('','C2021004','E04SA2021X0011','E04SA2021X001100006','This is a question for you?',NULL,'incorrect',0,'2021-05-15 13:56:56'),('','C2021004','E04SA2021X0011','E04SA2021X001100007','I am a banana',NULL,'incorrect',0,'2021-05-15 13:56:56'),('','C2021004','E04MC2021X0019','E04MC2021X001900001','E04MC2021X00190000100001','E04MC2021X00190000100010','incorrect',0,'2021-05-15 13:58:02'),('','C2021004','E04MC2021X0018','E04MC2021X001800001','E04MC2021X00180000100001','E04MC2021X00180000100001','correct',1,'2021-05-15 13:58:09');
/*!40000 ALTER TABLE `exam_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `exam_summary_score`
--

DROP TABLE IF EXISTS `exam_summary_score`;
/*!50001 DROP VIEW IF EXISTS `exam_summary_score`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `exam_summary_score` (
  `email` tinyint NOT NULL,
  `exam_id` tinyint NOT NULL,
  `Exam_Title` tinyint NOT NULL,
  `HPS` tinyint NOT NULL,
  `incorrect` tinyint NOT NULL,
  `exam_summary_score_incorrect` tinyint NOT NULL,
  `correct` tinyint NOT NULL,
  `exam_summary_score_correct` tinyint NOT NULL,
  `percentage` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('5eb7beb3bf632','Grade 12 - Class 2','','','','2020-05-10','10:43:31am');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_logs`
--

DROP TABLE IF EXISTS `feedback_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`feedback_logs` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `feedback_id` varchar(10) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_logs`
--

LOCK TABLES `feedback_logs` WRITE;
/*!40000 ALTER TABLE `feedback_logs` DISABLE KEYS */;
INSERT INTO `is226_project`.`feedback_logs` VALUES (1,'FB04210001','S',NULL,'2021-04-06 12:50:23'),(2,'FB04210002','S',NULL,'2021-04-06 12:51:11'),(3,'FB04210002','R',1,'2021-04-06 12:52:16'),(4,'FB04210002','R',NULL,'2021-04-06 12:52:16'),(5,'FB04210001','E',NULL,'2021-05-05 14:48:32'),(6,'FB04210001','S',NULL,'2021-05-05 14:49:08'),(7,'FB04210001','A',NULL,'2021-05-05 16:26:17'),(8,'FB04210003','S',NULL,'2021-05-10 12:59:40'),(9,'FB05210004','S',NULL,'2021-05-10 13:00:16'),(10,'FB05210005','S',NULL,'2021-05-10 13:05:00'),(11,'FB05210004','S',NULL,'2021-05-10 13:05:08'),(12,'FB05210006','S',NULL,'2021-05-10 18:17:00'),(13,'FB05210005','R',2,'2021-05-10 19:14:15'),(14,'FB05210005','R',NULL,'2021-05-10 19:14:15'),(15,'FB05210005','R',3,'2021-05-10 19:20:17'),(16,'FB05210005','R',NULL,'2021-05-10 19:20:17'),(17,'FB05210005','R',4,'2021-05-10 19:20:46'),(18,'FB05210005','R',NULL,'2021-05-10 19:20:46'),(19,'FB05210005','R',5,'2021-05-10 19:21:15'),(20,'FB05210005','R',NULL,'2021-05-10 19:21:15'),(21,'FB05210006','R',6,'2021-05-10 19:22:06'),(22,'FB05210006','R',NULL,'2021-05-10 19:22:06'),(23,'FB05210006','R',7,'2021-05-10 19:26:08'),(24,'FB05210006','R',NULL,'2021-05-10 19:26:08'),(25,'FB05210006','R',8,'2021-05-10 19:27:47'),(26,'FB05210006','R',NULL,'2021-05-10 19:27:47'),(27,'FB05210006','R',9,'2021-05-10 19:29:03'),(28,'FB05210006','R',NULL,'2021-05-10 19:29:03'),(29,'FB05210006','R',10,'2021-05-10 19:29:44'),(30,'FB05210006','R',NULL,'2021-05-10 19:29:44'),(31,'FB05210006','R',11,'2021-05-10 19:31:09'),(32,'FB05210006','R',NULL,'2021-05-10 19:31:09'),(33,'FB05210006','R',12,'2021-05-10 19:34:43'),(34,'FB05210006','R',NULL,'2021-05-10 19:34:43'),(35,'FB05210006','R',13,'2021-05-10 19:39:12'),(36,'FB05210006','E',NULL,'2021-05-10 19:39:12'),(37,'FB05210006','R',14,'2021-05-10 19:40:59'),(38,'FB05210006','E',NULL,'2021-05-10 19:40:59'),(39,'FB05210006','R',15,'2021-05-10 19:46:42'),(40,'FB05210006','E',NULL,'2021-05-10 19:46:42'),(41,'FB04210001','R',16,'2021-05-10 19:47:01'),(42,'FB04210001','E',NULL,'2021-05-10 19:47:01'),(43,'FB05210006','O',NULL,'2021-05-10 19:47:50'),(44,'FB05210006','X',NULL,'2021-05-10 19:56:50'),(45,'FB04210001','R',17,'2021-05-10 20:09:50'),(46,'FB04210001','E',NULL,'2021-05-10 20:09:50'),(47,'FB04210001','R',18,'2021-05-10 20:10:08'),(48,'FB04210001','E',NULL,'2021-05-10 20:10:08'),(49,'FB04210001','R',19,'2021-05-10 20:13:08'),(50,'FB04210001','E',NULL,'2021-05-10 20:13:08'),(51,'FB04210001','R',20,'2021-05-10 20:13:42'),(52,'FB04210001','E',NULL,'2021-05-10 20:13:42'),(53,'FB04210001','R',21,'2021-05-10 20:16:00'),(54,'FB04210001','E',NULL,'2021-05-10 20:16:00'),(55,'FB04210001','R',22,'2021-05-10 20:16:07'),(56,'FB04210001','E',NULL,'2021-05-10 20:16:07'),(57,'FB05210007','S',NULL,'2021-05-15 17:45:14'),(58,'FB05210008','S',NULL,'2021-05-15 17:45:48'),(59,'FB05210009','S',NULL,'2021-05-15 17:46:02'),(60,'FB05210010','S',NULL,'2021-05-15 17:46:57'),(61,'FB05210011','S',NULL,'2021-05-15 17:47:37'),(62,'FB05210012','S',NULL,'2021-05-15 17:50:15'),(63,'FB05210013','S',NULL,'2021-05-15 17:55:28'),(64,'FB05210014','S',NULL,'2021-05-15 17:58:16'),(65,'FB05210009','O',NULL,'2021-05-15 18:18:52'),(66,'FB05210009','X',NULL,'2021-05-15 18:19:20'),(67,'FB05210010','R',23,'2021-05-15 18:19:36'),(68,'FB05210010','E',NULL,'2021-05-15 18:19:36'),(69,'FB05210010','O',NULL,'2021-05-15 18:19:41'),(70,'FB05210010','X',NULL,'2021-05-15 18:21:12'),(71,'FB05210007','O',NULL,'2021-05-15 18:21:14'),(72,'FB05210007','R',24,'2021-05-15 18:21:23'),(73,'FB05210007','E',NULL,'2021-05-15 18:21:23'),(74,'FB05210007','R',25,'2021-05-15 18:21:30'),(75,'FB05210007','E',NULL,'2021-05-15 18:21:30'),(76,'FB05210007','O',NULL,'2021-05-15 18:21:34'),(77,'FB05210007','X',NULL,'2021-05-15 18:21:36'),(78,'FB05210011','A',NULL,'2021-05-15 18:30:47'),(79,'FB05210004','A',NULL,'2021-05-17 12:55:30'),(80,'FB05210004','R',26,'2021-05-17 12:55:37'),(81,'FB05210004','E',NULL,'2021-05-17 12:55:37'),(82,'FB05210004','R',27,'2021-05-17 12:56:16'),(83,'FB05210004','E',NULL,'2021-05-17 12:56:16'),(84,'FB05210004','R',28,'2021-05-17 12:56:34'),(85,'FB05210004','E',NULL,'2021-05-17 12:56:34'),(86,'FB05210004','R',29,'2021-05-17 12:57:25'),(87,'FB05210004','E',NULL,'2021-05-17 12:57:25'),(88,'FB05210005','O',NULL,'2021-05-17 20:31:41'),(89,'FB05210005','X',NULL,'2021-05-17 20:34:31'),(90,'FB05210004','O',NULL,'2021-05-17 20:35:36');
/*!40000 ALTER TABLE `feedback_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `feedback_master_table`
--

DROP TABLE IF EXISTS `feedback_master_table`;
/*!50001 DROP VIEW IF EXISTS `feedback_master_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `feedback_master_table` (
  `feedback_id` tinyint NOT NULL,
  `class_code` tinyint NOT NULL,
  `class_name` tinyint NOT NULL,
  `size` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `sender_code` tinyint NOT NULL,
  `user_name` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `orig_full_name` tinyint NOT NULL,
  `subject` tinyint NOT NULL,
  `message` tinyint NOT NULL,
  `attachment` tinyint NOT NULL,
  `date_created` tinyint NOT NULL,
  `time_created` tinyint NOT NULL,
  `feedback_status` tinyint NOT NULL,
  `curr_sender_user_id` tinyint NOT NULL,
  `email_sender` tinyint NOT NULL,
  `full_name_of_sender` tinyint NOT NULL,
  `sender_category` tinyint NOT NULL,
  `curr_recipient_user_id` tinyint NOT NULL,
  `email_recpient` tinyint NOT NULL,
  `full_name_of_recipient` tinyint NOT NULL,
  `recipient_category` tinyint NOT NULL,
  `thread_count` tinyint NOT NULL,
  `current_message` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `feedback_reply`
--

DROP TABLE IF EXISTS `is226_project`.`feedback_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_id` varchar(10) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `time_created` time DEFAULT NULL,
  `record_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_reply` (`feedback_id`),
  CONSTRAINT `feedback_reply` FOREIGN KEY (`feedback_id`) REFERENCES `online_feedback` (`feedback_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_reply`
--

LOCK TABLES `feedback_reply` WRITE;
/*!40000 ALTER TABLE `feedback_reply` DISABLE KEYS */;
INSERT INTO `is226_project`.`feedback_reply` VALUES (1,'FB04210002','Hello, I am experiencing a problem!!',NULL,NULL,'2021-04-06 12:52:16','USER000015'),(2,'FB05210005','This is a test reply',NULL,NULL,'2021-05-10 19:14:15','USER000017'),(3,'FB05210005','Ok noted',NULL,NULL,'2021-05-10 19:20:17','USER000017'),(4,'FB05210005','Ok noted with thanks',NULL,NULL,'2021-05-10 19:20:46','USER000017'),(5,'FB05210005','Ok noted with thanks mens',NULL,NULL,'2021-05-10 19:21:15','USER000017'),(6,'FB05210006','Reply to this one',NULL,NULL,'2021-05-10 19:22:06','USER000017'),(7,'FB05210006','Reply to this one 2',NULL,NULL,'2021-05-10 19:26:08','USER000017'),(8,'FB05210006','Reply to this one next 2',NULL,NULL,'2021-05-10 19:27:47','USER000017'),(9,'FB05210006','Reply to this one next 2 3 4',NULL,NULL,'2021-05-10 19:29:03','USER000017'),(10,'FB05210006','Forget the reply',NULL,NULL,'2021-05-10 19:29:44','USER000017'),(11,'FB05210006','Reply to feedback',NULL,NULL,'2021-05-10 19:31:09','USER000017'),(12,'FB05210006','Test 2',NULL,NULL,'2021-05-10 19:34:43','USER000017'),(13,'FB05210006','Pogi','2021-05-11','03:39:12','2021-05-10 19:39:12','USER000017'),(14,'FB05210006','Pogi ako','2021-05-11','03:40:59','2021-05-10 19:40:59','USER000017'),(15,'FB05210006','Try again','2021-05-11','03:46:42','2021-05-10 19:46:42','USER000017'),(16,'FB04210001','Ok noted','2021-05-11','03:47:01','2021-05-10 19:47:01','USER000017'),(17,'FB04210001','Ok ako na bahala','2021-05-11','04:09:50','2021-05-10 20:09:50','USER000017'),(18,'FB04210001','Wait bakit ikaw?','2021-05-11','04:10:08','2021-05-10 20:10:08','USER000017'),(19,'FB04210001','Sige ikaw na bahala ha','2021-05-11','04:13:08','2021-05-10 20:13:08','USER000017'),(20,'FB04210001','ok men','2021-05-11','04:13:42','2021-05-10 20:13:42','USER000017'),(21,'FB04210001','sure','2021-05-11','04:16:00','2021-05-10 20:16:00','USER000017'),(22,'FB04210001','bahala ka','2021-05-11','04:16:07','2021-05-10 20:16:07','USER000017'),(23,'FB05210010','Pogi ako','2021-05-16','02:19:36','2021-05-15 18:19:36','USER000015'),(24,'FB05210007','Hello','2021-05-16','02:21:23','2021-05-15 18:21:23','USER000012'),(25,'FB05210007','Hi','2021-05-16','02:21:30','2021-05-15 18:21:30','USER000012'),(26,'FB05210004','This is a feedback','2021-05-17','20:55:37','2021-05-17 12:55:37',NULL),(27,'FB05210004','Ok this is a feedback','2021-05-17','20:56:16','2021-05-17 12:56:16',NULL),(28,'FB05210004','Another feedback','2021-05-17','20:56:34','2021-05-17 12:56:34',NULL),(29,'FB05210004','Another one my friend','2021-05-17','20:57:25','2021-05-17 12:57:25','USER000012');
/*!40000 ALTER TABLE `feedback_reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER is226_project.feedback_reply_log_insert_trigger
AFTER insert ON is226_project.feedback_reply
FOR EACH ROW 
INSERT INTO is226_project.feedback_logs (feedback_id, status, reply_id)
values (new.feedback_id, 'R', new.id) */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER is226_project.feedback_reply_log_update_trigger
AFTER update ON is226_project.feedback_reply
FOR EACH ROW 
INSERT INTO is226_project.feedback_logs (feedback_id, status, reply_id)
values (new.feedback_id, 'R', new.id) */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER is226_project.feedback_reply_log_delete_trigger
AFTER delete ON is226_project.feedback_reply
FOR EACH ROW 
INSERT INTO is226_project.feedback_logs (feedback_id, status, reply_id)
values (old.feedback_id, 'X', old.id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `feedback_tat_logs`
--

DROP TABLE IF EXISTS `feedback_tat_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`feedback_tat_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_id` varchar(10) DEFAULT NULL,
  `orig_sender_user_id` varchar(10) DEFAULT NULL,
  `curr_sender_user_id` varchar(10) DEFAULT NULL,
  `curr_recipient_user_id` varchar(10) DEFAULT NULL,
  `record_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `feedback_id_tat_logs` (`feedback_id`),
  CONSTRAINT `feedback_id_tat_logs` FOREIGN KEY (`feedback_id`) REFERENCES `online_feedback` (`feedback_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_tat_logs`
--

LOCK TABLES `feedback_tat_logs` WRITE;
/*!40000 ALTER TABLE `feedback_tat_logs` DISABLE KEYS */;
INSERT INTO `is226_project`.`feedback_tat_logs` VALUES (1,'FB04210001','USER000017','USER000017','USER000017','2021-04-24 16:36:08'),(2,'FB04210002','USER000015','USER000015','USER000017','2021-04-24 16:36:08'),(3,'FB04210003',NULL,NULL,'ADMGRP','2021-05-10 18:17:32'),(4,'FB05210004','USER000017','USER000017','ADMGRP','2021-05-10 18:17:32'),(5,'FB05210005','USER000017','USER000017','ADMGRP','2021-05-10 18:17:32'),(6,'FB05210006','USER000017','USER000017','ADMGRP','2021-05-10 18:17:00'),(7,'FB05210005','USER000017','USER000017','ADMGRP','2021-05-10 19:17:10'),(8,'FB05210006','USER000017','USER000017','ADMGRP','2021-05-10 19:26:08'),(9,'FB05210006','USER000017','USER000017','ADMGRP','2021-05-10 19:46:42'),(10,'FB04210001','USER000017','USER000017','USER000017','2021-05-10 19:47:01'),(11,'FB04210001','USER000017','USER000017','USER000017','2021-05-10 20:09:50'),(12,'FB04210001','USER000017','USER000017','USER000017','2021-05-10 20:10:08'),(13,'FB04210001','USER000017','USER000017','USER000017','2021-05-10 20:13:08'),(14,'FB04210001','USER000017','USER000017','USER000017','2021-05-10 20:13:42'),(15,'FB04210001','USER000017','USER000017','USER000017','2021-05-10 20:16:00'),(16,'FB04210001','USER000017','USER000017','USER000017','2021-05-10 20:16:07'),(17,'FB05210013','USER000015','USER000015','USER000017','2021-05-15 17:55:28'),(18,'FB05210014','USER000015','USER000015','USER000013','2021-05-15 17:58:16'),(19,'FB05210010','USER000015','USER000015','','2021-05-15 18:19:36'),(20,'FB05210007','USER000012','USER000012','','2021-05-15 18:21:23'),(21,'FB05210007','USER000012','USER000012','','2021-05-15 18:21:30'),(22,'FB05210004',NULL,NULL,'USER000017','2021-05-17 12:55:37'),(23,'FB05210004',NULL,NULL,'USER000017','2021-05-17 12:56:16'),(24,'FB05210004',NULL,NULL,'USER000017','2021-05-17 12:56:34'),(25,'FB05210004','USER000012','USER000012','USER000017','2021-05-17 12:57:25');
/*!40000 ALTER TABLE `feedback_tat_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_look_up_tbl`
--

DROP TABLE IF EXISTS `generic_look_up_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`generic_look_up_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usr_table` varchar(50) NOT NULL,
  `value_code` varchar(10) NOT NULL,
  `value_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_look_up_tbl`
--

LOCK TABLES `generic_look_up_tbl` WRITE;
/*!40000 ALTER TABLE `generic_look_up_tbl` DISABLE KEYS */;
INSERT INTO `generic_look_up_tbl` VALUES (1,'student_class_enrollment','P','Pending'),(2,'student_class_enrollment','E','Enrolled'),(3,'student_class_enrollment','D','Declined'),(4,'users','M','Male'),(5,'users','F','Female'),(6,'users','O','Prefer not to Say'),(7,'users','L','LGBT'),(8,'online_exam','MC','Multiple Choice Questions'),(9,'online_exam','TF','True or False Questions'),(10,'online_exam','SA','Questions with Short Answers'),(11,'online_feedback','S','Sent'),(12,'online_feedback','R','Read'),(13,'online_feedback','A','Acknowledged'),(14,'online_feedback','D','Declined'),(15,'online_feedback','O','Resolved'),(16,'online_feedback','E','Replied To'),(17,'online_feedback','X','Removed'),(18,'online_feedback','Q','Escalated');
/*!40000 ALTER TABLE `generic_look_up_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES ('sunnygkp10@gmail.com','558921841f1ec',4,2,2,0,'2015-06-23 01:31:26'),('sunnygkp10@gmail.com','558920ff906b8',4,2,2,0,'2015-06-23 05:32:09'),('avantika420@gmail.com','558921841f1ec',4,2,2,0,'2015-06-23 06:33:04'),('avantika420@gmail.com','5589222f16b93',4,2,2,0,'2015-06-23 06:49:39'),('sunnygkp10@gmail.com','5589741f9ed52',4,5,3,2,'2015-06-23 07:07:16'),('mi5@hollywood.com','5589222f16b93',4,2,2,0,'2015-06-23 07:12:56'),('nik1@gmail.com','558921841f1ec',1,2,1,1,'2015-06-23 08:11:50'),('sunnygkp10@gmail.com','5589222f16b93',1,2,1,1,'2015-06-23 19:22:38'),('tite','60639c1537a63',9,3,3,0,'2021-03-30 21:49:01'),('pogiman@hotmoms.com','60639c1537a63',3,3,1,2,'2021-03-31 00:19:55'),('pogiman@hotmoms.com69','60639c1537a63',6,3,2,1,'2021-04-04 08:41:44');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_reference_tbl`
--

DROP TABLE IF EXISTS `id_reference_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_reference_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_table` varchar(50) NOT NULL,
  `current_id` varchar(50) DEFAULT NULL,
  `current_counter` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_reference_tbl`
--

LOCK TABLES `id_reference_tbl` WRITE;
/*!40000 ALTER TABLE `id_reference_tbl` DISABLE KEYS */;
INSERT INTO `id_reference_tbl` VALUES (1,'users','USER000034',33),(2,'students','STU202100018',17),(3,'teachers','TCR202100005',4),(4,'class','C2021018',17),(5,'exam','E05XX2021X0031',30),(6,'feedback','FB05210015',14),(7,'admin','ADMIN11',10);
/*!40000 ALTER TABLE `id_reference_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `latest_exam_history`
--

DROP TABLE IF EXISTS `latest_exam_history`;
/*!50001 DROP VIEW IF EXISTS `latest_exam_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `latest_exam_history` (
  `email` tinyint NOT NULL,
  `exam_id` tinyint NOT NULL,
  `highest_possible_grade` tinyint NOT NULL,
  `percentage` tinyint NOT NULL,
  `score` tinyint NOT NULL,
  `correct` tinyint NOT NULL,
  `incorrect` tinyint NOT NULL,
  `record_timestamp` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `online_exam`
--

DROP TABLE IF EXISTS `online_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`online_exam` (
  `exam_id` varchar(16) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `exam_type` varchar(5) DEFAULT NULL,
  `class_code` varchar(10) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `record_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`exam_id`),
  KEY `exam_to_class_mapping_data_integrity` (`class_code`),
  CONSTRAINT `exam_to_class_mapping_data_integrity` FOREIGN KEY (`class_code`) REFERENCES `classes` (`class_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_exam`
--

LOCK TABLES `online_exam` WRITE;
/*!40000 ALTER TABLE `online_exam` DISABLE KEYS */;
INSERT INTO `is226_project`.`online_exam` VALUES ('E04MC2021X0002','Intro to kabadingan','test','MC','C2021001',12,5,'2021-04-03 10:45:09'),('E04MC2021X0003','Intro to kabadingan','test','MC','C2021001',12,5,'2021-04-03 11:05:50'),('E04MC2021X001','Intro to kabadingan','test','MC','C2021001',12,5,'2021-04-03 10:42:03'),('E04MC2021X0013','Test Quiz 3','Test SP for exam','MC','C2021003',2,12,'2021-04-04 00:03:25'),('E04MC2021X0014','Test Quiz 3','Test SP for exam','MC','C2021003',2,12,'2021-04-04 00:04:20'),('E04MC2021X0015','Test Quiz','asdasdasdsadasdasd','MC','C2021004',2,14,'2021-04-04 00:08:09'),('E04MC2021X0018','Test Quiz','asdasdasdsadasdasd','MC','C2021004',1,12,'2021-04-04 01:29:43'),('E04MC2021X0019','Test Quiz','Test SP for exam','MC','C2021004',1,1,'2021-04-04 01:31:18'),('E04MC2021X0020','Intro To My Hero Academia','Test MC if working','MC','C2021004',3,5,'2021-04-04 03:35:07'),('E04MC2021X0022','Test Quiz 3','Test for Page Number','MC','C2021010',7,20,'2021-04-05 15:55:10'),('E04MC2021X0023','Test Quiz 3','asdasdasdsadasdasd','MC','C2021007',10,25,'2021-04-14 05:27:55'),('E04SA2021X0010','Test Quiz 3','asdasdasdsadasdasd','SA','C2021010',25,25,'2021-04-03 11:44:46'),('E04SA2021X0011','Test Quiz','This is an exam','SA','C2021004',5,15,'2021-04-03 20:54:01'),('E04SA2021X0026','Test Quiz 3','asdasdasdsadasdasd','SA','C2021012',5,20,'2021-04-14 06:23:03'),('E04TF2021X0004','Test Quiz','Descripting','TF','C2021007',10,5,'2021-04-03 11:13:55'),('E04TF2021X0005','Test Quiz','Descripting','TF','C2021007',10,5,'2021-04-03 11:14:30'),('E04TF2021X0006','Test Quiz','asdasdasdsadasdasd','TF','C2021007',5,21,'2021-04-03 11:19:49'),('E04TF2021X0008','Test Quiz','asdasdasdsadasdasd','TF','C2021010',5,15,'2021-04-03 11:38:29'),('E04TF2021X0009','Test Quiz','asdasdasdsadasdasd','TF','C2021010',5,15,'2021-04-03 11:40:51'),('E04TF2021X0012','Test Quiz','This is an exam','TF','C2021004',5,15,'2021-04-03 23:23:36'),('E052021X0027','Bayagra','','','C2021017',5,10,'2021-05-17 20:16:26'),('E052021X0029','Test Quiz 32','This is an exam','','C2021017',5,15,'2021-05-17 20:24:34');
/*!40000 ALTER TABLE `online_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_exam_archive`
--

DROP TABLE IF EXISTS `online_exam_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`online_exam_archive` (
  `exam_archive_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `old_exam_id` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `exam_type` varchar(255) DEFAULT NULL,
  `class_code` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`exam_archive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_exam_archive`
--

LOCK TABLES `online_exam_archive` WRITE;
/*!40000 ALTER TABLE `online_exam_archive` DISABLE KEYS */;
INSERT INTO `is226_project`.`online_exam_archive` VALUES (1,'E04SA2021X0017','Test Quiz','For Short Answers','SA','C2021005',1,1),(2,'E04TF2021X0016','True Or False','Test True or False','TF','C2021004',1,15),(3,'E04TF2021X0024','Test Quiz 3','asdasdasdsadasdasd','TF','C2021007',10,25),(4,'E04MC2021X0007','Test Quiz','asdasdasdsadasdasd','MC','C2021010',5,15),(5,'E04SA2021X0025','Test Quiz 3','asdasdasdsadasdasd','SA','C2021007',10,25),(6,'E04TF2021X0021','Test','Take this exam','TF','C2021012',2,10),(7,'E05TF2021X0030','Test Quiz 33','This is an exam','TF','C2021017',49,15),(8,'E052021X0028','Test 14','Testing','','C2021017',0,12);
/*!40000 ALTER TABLE `online_exam_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_exam_question_choices`
--

DROP TABLE IF EXISTS `online_exam_question_choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`online_exam_question_choices` (
  `option_id` varchar(25) NOT NULL,
  `question_id` varchar(20) NOT NULL,
  `option_no` int(11) DEFAULT NULL,
  `option_name` varchar(100) DEFAULT NULL,
  `record_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`option_id`),
  KEY `option_to_question_link` (`question_id`),
  CONSTRAINT `option_to_question_link` FOREIGN KEY (`question_id`) REFERENCES `online_exam_questions` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_exam_question_choices`
--

LOCK TABLES `is226_project`.`online_exam_question_choices` WRITE;
/*!40000 ALTER TABLE `online_exam_question_choices` DISABLE KEYS */;
INSERT INTO `is226_project`.`online_exam_question_choices` VALUES ('E04MC2021X00150000100001','E04MC2021X001500001',1,'Question 1 A','2021-04-04 00:08:51'),('E04MC2021X00150000100010','E04MC2021X001500001',2,'Question 1 B','2021-04-04 00:08:51'),('E04MC2021X00150000100011','E04MC2021X001500001',3,'Question 1 C','2021-04-04 00:08:51'),('E04MC2021X00150000100100','E04MC2021X001500001',4,'Question 1 D','2021-04-04 00:08:51'),('E04MC2021X00150000200001','E04MC2021X001500002',1,'Question 2 A','2021-04-04 00:08:51'),('E04MC2021X00150000200010','E04MC2021X001500002',2,'Question 2 B','2021-04-04 00:08:51'),('E04MC2021X00150000200011','E04MC2021X001500002',3,'Question 2 C','2021-04-04 00:08:51'),('E04MC2021X00150000200100','E04MC2021X001500002',4,'Question 2 E','2021-04-04 00:08:51'),('E04MC2021X00180000100001','E04MC2021X001800001',1,'Exam 1 2','2021-04-04 01:29:55'),('E04MC2021X00180000100010','E04MC2021X001800001',2,'Exam 1 3','2021-04-04 01:29:55'),('E04MC2021X00180000100011','E04MC2021X001800001',3,' Exam 1 4','2021-04-04 01:29:55'),('E04MC2021X00180000100100','E04MC2021X001800001',4,'Exam 1 6','2021-04-04 01:29:55'),('E04MC2021X00190000100001','E04MC2021X001900001',1,'Ok 1','2021-04-04 01:31:30'),('E04MC2021X00190000100010','E04MC2021X001900001',2,'Ok 2','2021-04-04 01:31:30'),('E04MC2021X00190000100011','E04MC2021X001900001',3,'Ok 3','2021-04-04 01:31:30'),('E04MC2021X00190000100100','E04MC2021X001900001',4,'Ok 4','2021-04-04 01:31:30'),('E04MC2021X00200000100001','E04MC2021X002000001',1,'One Punch man','2021-04-04 03:37:55'),('E04MC2021X00200000100010','E04MC2021X002000001',2,'Goku','2021-04-04 03:37:55'),('E04MC2021X00200000100100','E04MC2021X002000001',4,'Master of Deku','2021-04-04 03:42:07'),('E04MC2021X00200000200001','E04MC2021X002000002',1,'Evolution of NidoKing','2021-04-04 03:37:55'),('E04MC2021X00200000200010','E04MC2021X002000002',2,'Evolution of Nidorina','2021-04-04 03:37:55'),('E04MC2021X00200000200011','E04MC2021X002000002',3,'Is that a Digimon?','2021-04-04 03:37:55'),('E04MC2021X00200000200100','E04MC2021X002000002',4,'Is that a pokemon?','2021-04-04 03:37:55'),('E04MC2021X00200000300001','E04MC2021X002000003',1,'2(Pi)R','2021-04-04 03:37:55'),('E04MC2021X00200000300010','E04MC2021X002000003',2,'Distance between the center and edges of a circle','2021-04-04 03:37:55'),('E04MC2021X00200000300011','E04MC2021X002000003',3,'I like Pie','2021-04-04 03:37:55'),('E04MC2021X00200000300100','E04MC2021X002000003',4,'Bonus','2021-04-04 03:37:55'),('E04MC2021X00220000100001','E04MC2021X002200001',1,'Question 1 A','2021-04-05 15:57:24'),('E04MC2021X00220000100010','E04MC2021X002200001',2,'Question 1 B','2021-04-05 15:57:24'),('E04MC2021X00220000100011','E04MC2021X002200001',3,'Question 1 C','2021-04-05 15:57:24'),('E04MC2021X00220000100100','E04MC2021X002200001',4,'Question 1 D','2021-04-05 15:57:24'),('E04MC2021X00220000200001','E04MC2021X002200002',1,'Question 2 A','2021-04-05 15:57:24'),('E04MC2021X00220000200010','E04MC2021X002200002',2,'Question 2 B','2021-04-05 15:57:24'),('E04MC2021X00220000200011','E04MC2021X002200002',3,'Question 2 C','2021-04-05 15:57:24'),('E04MC2021X00220000200100','E04MC2021X002200002',4,'Question 2 D','2021-04-05 15:57:24'),('E04MC2021X00220000300001','E04MC2021X002200003',1,'Question 3 A','2021-04-05 15:57:25'),('E04MC2021X00220000300010','E04MC2021X002200003',2,'Question 3 B','2021-04-05 15:57:25'),('E04MC2021X00220000300011','E04MC2021X002200003',3,'Question 3 C','2021-04-05 15:57:25'),('E04MC2021X00220000300100','E04MC2021X002200003',4,'Question 3 D','2021-04-05 15:57:25'),('E04MC2021X00220000400001','E04MC2021X002200004',1,'Question 4 A','2021-04-05 15:57:25'),('E04MC2021X00220000400010','E04MC2021X002200004',2,'Question 4 B','2021-04-05 15:57:25'),('E04MC2021X00220000400011','E04MC2021X002200004',3,'Question 4 C','2021-04-05 15:57:25'),('E04MC2021X00220000400100','E04MC2021X002200004',4,'Question 4 D','2021-04-05 15:57:25'),('E04MC2021X00220000500001','E04MC2021X002200005',1,'Question 5 A','2021-04-05 15:57:25'),('E04MC2021X00220000500010','E04MC2021X002200005',2,'Question 5 B','2021-04-05 15:57:25'),('E04MC2021X00220000500011','E04MC2021X002200005',3,'Question 5 C','2021-04-05 15:57:25'),('E04MC2021X00220000500100','E04MC2021X002200005',4,'Question 5 D','2021-04-05 15:57:25'),('E04MC2021X00220000600001','E04MC2021X002200006',1,'Question 6 A','2021-04-05 15:57:25'),('E04MC2021X00220000600010','E04MC2021X002200006',2,'Question 6 B','2021-04-05 15:57:25'),('E04MC2021X00220000600011','E04MC2021X002200006',3,'Question 6 C','2021-04-05 15:57:25'),('E04MC2021X00220000600100','E04MC2021X002200006',4,'Question 6 D','2021-04-05 15:57:25'),('E04MC2021X00220000700001','E04MC2021X002200007',1,'Question 7 A','2021-04-05 15:57:25'),('E04MC2021X00220000700010','E04MC2021X002200007',2,'Question 7 B','2021-04-05 15:57:25'),('E04MC2021X00220000700011','E04MC2021X002200007',3,'Question 7 C','2021-04-05 15:57:25'),('E04MC2021X00220000700100','E04MC2021X002200007',4,'Question 7 D','2021-04-05 15:57:25'),('E04SA2021X00110000100001','E04SA2021X001100001',1,'Answer to A','2021-04-03 22:52:42'),('E04SA2021X00110000100010','E04SA2021X001100001',2,'Answer to B','2021-04-03 22:52:42'),('E04SA2021X00110000100011','E04SA2021X001100001',3,'Answer to C','2021-04-03 22:52:42'),('E04SA2021X00110000200001','E04SA2021X001100002',1,'Answer to A 2','2021-04-03 22:58:53'),('E04SA2021X00110000200010','E04SA2021X001100002',2,'Answer to A 2','2021-04-03 22:58:53'),('E04SA2021X00110000200011','E04SA2021X001100002',3,'Answer to C 2','2021-04-03 22:58:53'),('E04SA2021X00110000300001','E04SA2021X001100003',1,'Answer to A 3','2021-04-03 23:10:53'),('E04SA2021X00110000300010','E04SA2021X001100003',2,'Answer to B 3','2021-04-03 23:10:53'),('E04SA2021X00110000300011','E04SA2021X001100003',3,'Answer to C 3','2021-04-03 23:10:53'),('E04SA2021X00110000400001','E04SA2021X001100004',1,'Answer to 4 A','2021-04-03 23:13:25'),('E04SA2021X00110000400010','E04SA2021X001100004',2,'Answer to 4 A','2021-04-03 23:13:25'),('E04SA2021X00110000400011','E04SA2021X001100004',3,'Answer to 4 A','2021-04-03 23:13:25'),('E04SA2021X00110000400100','E04SA2021X001100004',4,'Answer to 4 A','2021-04-03 23:13:25');
/*!40000 ALTER TABLE `online_exam_question_choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_exam_question_choices_archieve`
--

DROP TABLE IF EXISTS `is226_project`.`online_exam_question_choices_archieve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`online_exam_question_choices_archieve` (
  `options_archive_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `old_option_id` varchar(255) DEFAULT NULL,
  `question_id` varchar(255) DEFAULT NULL,
  `option_no` int(11) DEFAULT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`options_archive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_exam_question_choices_archieve`
--

LOCK TABLES `online_exam_question_choices_archieve` WRITE;
/*!40000 ALTER TABLE `online_exam_question_choices_archieve` DISABLE KEYS */;
INSERT INTO `is226_project`.`online_exam_question_choices_archieve` VALUES (1,'E04TF2021X00160000100001','E04TF2021X001600001',1,'True'),(2,'E04TF2021X00160000100010','E04TF2021X001600001',2,'False'),(3,'E04TF2021X00210000100001','E04TF2021X002100001',1,'True'),(4,'E04TF2021X00210000100010','E04TF2021X002100001',2,'False'),(5,'E04TF2021X00210000200001','E04TF2021X002100002',1,'True'),(6,'E04TF2021X00210000200010','E04TF2021X002100002',2,'False');
/*!40000 ALTER TABLE `online_exam_question_choices_archieve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_exam_questions`
--

DROP TABLE IF EXISTS `online_exam_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`online_exam_questions` (
  `question_id` varchar(20) NOT NULL,
  `exam_id` varchar(16) NOT NULL,
  `question_no` bigint(20) DEFAULT NULL,
  `no_of_choices` int(11) DEFAULT NULL,
  `answer_id` varchar(25) DEFAULT NULL,
  `answer_sa` varchar(50) DEFAULT NULL,
  `record_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `question_type` varchar(5) NOT NULL,
  `question_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `question_to_exam_link` (`exam_id`),
  CONSTRAINT `question_to_exam_link` FOREIGN KEY (`exam_id`) REFERENCES `online_exam` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_exam_questions`
--

LOCK TABLES `online_exam_questions` WRITE;
/*!40000 ALTER TABLE `online_exam_questions` DISABLE KEYS */;
INSERT INTO `is226_project`.`online_exam_questions` VALUES ('E04MC2021X001500001','E04MC2021X0015',1,4,'E04MC2021X00150000100001',NULL,'2021-04-04 00:08:51','MC','Question 1'),('E04MC2021X001500002','E04MC2021X0015',2,4,'E04MC2021X00150000200010',NULL,'2021-04-04 00:08:51','MC','Question 2'),('E04MC2021X001800001','E04MC2021X0018',1,4,'E04MC2021X00180000100001',NULL,'2021-04-04 01:29:55','MC','Exam 1'),('E04MC2021X001900001','E04MC2021X0019',1,4,'E04MC2021X00190000100001',NULL,'2021-04-04 01:31:30','MC','Ok'),('E04MC2021X002000001','E04MC2021X0020',1,4,'E04MC2021X00200000100100',NULL,'2021-04-04 03:41:36','MC','Who is Almight?'),('E04MC2021X002000002','E04MC2021X0020',2,4,'E04MC2021X00200000200010',NULL,'2021-04-04 03:37:55','MC','What is a NidoQueen?'),('E04MC2021X002000003','E04MC2021X0020',3,4,'E04MC2021X00200000300010',NULL,'2021-04-04 03:37:55','MC','What is the radius of a circle?'),('E04MC2021X002200001','E04MC2021X0022',1,4,'E04MC2021X00220000100001',NULL,'2021-04-05 15:57:24','MC','Question 1'),('E04MC2021X002200002','E04MC2021X0022',2,4,'E04MC2021X00220000200011',NULL,'2021-04-05 15:57:24','MC','Question 2'),('E04MC2021X002200003','E04MC2021X0022',3,4,'E04MC2021X00220000300100',NULL,'2021-04-05 15:57:25','MC','Question 3'),('E04MC2021X002200004','E04MC2021X0022',4,4,'E04MC2021X00220000400010',NULL,'2021-04-05 15:57:25','MC','Question 4'),('E04MC2021X002200005','E04MC2021X0022',5,4,'E04MC2021X00220000500010',NULL,'2021-04-05 15:57:25','MC','Question 5'),('E04MC2021X002200006','E04MC2021X0022',6,4,'E04MC2021X00220000600011',NULL,'2021-04-05 15:57:25','MC','Question 6'),('E04MC2021X002200007','E04MC2021X0022',7,4,'E04MC2021X00220000700001',NULL,'2021-04-05 15:57:25','MC','Question 7'),('E04SA2021X001100001','E04SA2021X0011',NULL,3,NULL,NULL,'2021-04-03 22:52:42','MC',NULL),('E04SA2021X001100002','E04SA2021X0011',2,3,'2',NULL,'2021-04-03 22:58:53','MC',NULL),('E04SA2021X001100003','E04SA2021X0011',3,3,NULL,NULL,'2021-04-03 23:10:53','MC',NULL),('E04SA2021X001100004','E04SA2021X0011',4,4,'E04SA2021X00110000400011',NULL,'2021-04-03 23:13:25','MC',NULL),('E04SA2021X001100005','E04SA2021X0011',5,1,NULL,'I am a banana','2021-04-03 23:14:20','SA',NULL),('E04SA2021X001100006','E04SA2021X0011',6,1,NULL,'This is a question for you?','2021-04-03 23:45:42','SA','I am a banana'),('E04SA2021X001100007','E04SA2021X0011',7,1,NULL,'I am a banana','2021-04-03 23:46:35','SA','This is a question for you?');
/*!40000 ALTER TABLE `online_exam_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_exam_questions_archive`
--

DROP TABLE IF EXISTS `online_exam_questions_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`online_exam_questions_archive` (
  `questions_archive_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `old_question_id` varchar(255) DEFAULT NULL,
  `exam_id` varchar(255) DEFAULT NULL,
  `question_no` bigint(20) DEFAULT NULL,
  `no_of_choices` int(11) DEFAULT NULL,
  `answer_id` varchar(255) DEFAULT NULL,
  `answer_sa` varchar(255) DEFAULT NULL,
  `question_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`questions_archive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_exam_questions_archive`
--

LOCK TABLES `online_exam_questions_archive` WRITE;
/*!40000 ALTER TABLE `online_exam_questions_archive` DISABLE KEYS */;
INSERT INTO `online_exam_questions_archive` VALUES (1,'E04SA2021X001700001','E04SA2021X0017',1,0,NULL,'G','What is the Capital of Germany?'),(2,'E04TF2021X001600001','E04TF2021X0016',1,2,'E04TF2021X00160000100001',NULL,'Are you gay?'),(3,'E04TF2021X002100001','E04TF2021X0021',1,2,'E04TF2021X00210000100001',NULL,'True and False (Answer True)'),(4,'E04TF2021X002100002','E04TF2021X0021',2,2,'E04TF2021X00210000200010',NULL,'True or False (Answer False)');
/*!40000 ALTER TABLE `online_exam_questions_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_feedback`
--

DROP TABLE IF EXISTS `online_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`online_feedback` (
  `feedback_id` varchar(10) NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `class_code` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `attachment` varchar(1000) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `time_created` time DEFAULT NULL,
  `record_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `feedback_to_users` (`user_id`),
  KEY `feedback_to_class` (`class_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_feedback`
--

LOCK TABLES `online_feedback` WRITE;
/*!40000 ALTER TABLE `online_feedback` DISABLE KEYS */;
INSERT INTO `online_feedback` VALUES ('FB04210001','USER000017','C2021008','pogiman@hotmoms.com69','Problem with Exam','Hello, I am experiencing a problem!!',NULL,'2021-04-06','20:50:23','2021-05-10 19:47:01','E'),('FB04210002','USER000015','C2021008','email@blank.com23','Problem with Exam','Hello, I am experiencing a problem!!',NULL,'2021-04-06','20:51:11','2021-04-06 12:52:16','R'),('FB04210003',NULL,'ADMGRP','admingrp@grp.com','test','This is a message',NULL,'2021-05-10','20:59:40','2021-05-10 12:59:40','S'),('FB05210004','USER000017','ADM0001','pogiman@hotmoms.com69','this is a subject','asdasd\r\nasdasd','','2021-05-10','21:00:16','2021-05-17 20:35:36','O'),('FB05210005','USER000017','ADM0001','pogiman@hotmoms.com69','subject 2','OK ok asdad',NULL,'2021-05-10','21:05:00','2021-05-17 20:34:31','X'),('FB05210006','USER000017','ADM0001','pogiman@hotmoms.com69','This is another test','To test this\r\nI am \r\nSending \r\nan email',' ','2021-05-11','02:17:00','2021-05-10 19:56:50','X'),('FB05210007','USER000015','C2021004','email@blank.com23','Test Student Subject','Hello!\r\nWelcome.',' ','2021-05-16','01:45:14','2021-05-15 18:21:36','X'),('FB05210008','USER000012','C2021008','','Test Student Subject','Hello!',' ','2021-05-16','01:45:48','2021-05-15 17:45:48','S'),('FB05210009','USER000015','C2021008','email@blank.com23','Test Student Subject','Hello!',' ','2021-05-16','01:46:02','2021-05-15 18:19:20','X'),('FB05210010','USER000015','C2021008','email@blank.com23','Test Student Subject','Hello!',' ','2021-05-16','01:46:57','2021-05-15 18:21:12','X'),('FB05210011','USER000015','C2021008','email@blank.com23','Test Student Subject','Hello!',' ','2021-05-16','01:47:37','2021-05-15 18:30:47','A'),('FB05210012','USER000015','C2021008','email@blank.com23','Test Student Subject','Hello!',NULL,'2021-05-16','01:50:15','2021-05-15 17:50:15','S'),('FB05210013','USER000015','C2021008','email@blank.com23','Test Student Subject','Hello!',' ','2021-05-16','01:55:28','2021-05-15 17:55:28','S'),('FB05210014','USER000015','C2021004','email@blank.com23','Test Student Subject','Hi There professor',' ','2021-05-16','01:58:16','2021-05-15 17:58:16','S');
/*!40000 ALTER TABLE `online_feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER is226_project.feedback_log_insert_trigger
AFTER insert ON is226_project.online_feedback 
FOR EACH ROW 
INSERT INTO is226_project.feedback_logs (feedback_id, status)
values (new.feedback_id, 'S') */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER is226_project.feedback_log_update_trigger
AFTER update ON is226_project.online_feedback 
FOR EACH row
INSERT INTO is226_project.feedback_logs (feedback_id, status)
values (old.feedback_id, NEW.status) */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER is226_project.feedback_log_delete_trigger
AFTER delete ON is226_project.online_feedback 
FOR EACH ROW 
INSERT INTO is226_project.feedback_logs (feedback_id, status)
values (old.feedback_id, 'X') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES ('55892169bf6a7','usermod','55892169d2efc'),('55892169bf6a7','useradd','55892169d2f05'),('55892169bf6a7','useralter','55892169d2f09'),('55892169bf6a7','groupmod','55892169d2f0c'),('5589216a3646e','751','5589216a48713'),('5589216a3646e','752','5589216a4871a'),('5589216a3646e','754','5589216a4871f'),('5589216a3646e','755','5589216a48722'),('558922117fcef','echo','5589221195248'),('558922117fcef','print','558922119525a'),('558922117fcef','printf','5589221195265'),('558922117fcef','cout','5589221195270'),('55892211e44d5','int a','55892211f1f97'),('55892211e44d5','$a','55892211f1fa7'),('55892211e44d5','long int a','55892211f1fb4'),('55892211e44d5','int a$','55892211f1fbd'),('558922894c453','cin>>a;','558922895ea0a'),('558922894c453','cin<<a;','558922895ea26'),('558922894c453','cout>>a;','558922895ea34'),('558922894c453','cout<a;','558922895ea41'),('558922899ccaa','cout','55892289aa7cf'),('558922899ccaa','cin','55892289aa7df'),('558922899ccaa','print','55892289aa7eb'),('558922899ccaa','printf','55892289aa7f5'),('558923538f48d','255.0.0.0','558923539a46c'),('558923538f48d','255.255.255.0','558923539a480'),('558923538f48d','255.255.0.0','558923539a48b'),('558923538f48d','none of these','558923539a495'),('55892353f05c4','192.168.1.100','5589235405192'),('55892353f05c4','172.168.16.2','55892354051a3'),('55892353f05c4','10.0.0.0.1','55892354051b4'),('55892353f05c4','11.11.11.11','55892354051be'),('558973f4389ac','containing root file-system required during bootup','558973f462e44'),('558973f4389ac',' Contains only scripts to be executed during bootup','558973f462e56'),('558973f4389ac',' Contains root-file system and drivers required to be preloaded during bootup','558973f462e61'),('558973f4389ac','None of the above','558973f462e6b'),('558973f4c46f2','Kernel','558973f4d4abe'),('558973f4c46f2','Shell','558973f4d4acf'),('558973f4c46f2','Commands','558973f4d4ad9'),('558973f4c46f2','Script','558973f4d4ae3'),('558973f51600d','Boot Loading','558973f526f9d'),('558973f51600d',' Boot Record','558973f526fb9'),('558973f51600d',' Boot Strapping','558973f526fc5'),('558973f51600d',' Booting','558973f526fce'),('558973f55d269',' Quick boot','558973f57aef1'),('558973f55d269','Cold boot','558973f57af07'),('558973f55d269',' Hot boot','558973f57af17'),('558973f55d269',' Fast boot','558973f57af27'),('558973f5abb1a','bash','558973f5e7623'),('558973f5abb1a',' Csh','558973f5e7636'),('558973f5abb1a',' ksh','558973f5e7640'),('558973f5abb1a',' sh','558973f5e764a'),('5589751a63091','q','5589751a81bd6'),('5589751a63091','wq','5589751a81be8'),('5589751a63091',' both (a) and (b)','5589751a81bf4'),('5589751a63091',' none of the mentioned','5589751a81bfd'),('5589751ad32b8',' moves screen down one page','5589751adbdbd'),('5589751ad32b8','moves screen up one page','5589751adbdce'),('5589751ad32b8','moves screen up one line','5589751adbdd8'),('5589751ad32b8',' moves screen down one line','5589751adbde2'),('5589751b304ef',' yy','5589751b3b04d'),('5589751b304ef','yw','5589751b3b05e'),('5589751b304ef','yc','5589751b3b069'),('5589751b304ef',' none of the mentioned','5589751b3b073'),('5589751b749c9','X','5589751b9a98c'),('5589751b749c9','x','5589751b9a9a5'),('5589751b749c9','D','5589751b9a9b7'),('5589751b749c9','d','5589751b9a9c9'),('5589751bd02ec','autoindentation is not possible in vi editor','5589751bdadaa'),('60639c933297e','1 + 1','60639c9333100'),('60639c933297e','2 + 2','60639c9333102'),('60639c933297e','3 + 3','60639c9333103'),('60639c933297e','I am me','60639c9333104'),('60639c933561d','A','60639c9335d2c'),('60639c933561d','B','60639c9335d2d'),('60639c933561d','C','60639c9335d2e'),('60639c933561d','D','60639c9335d2f'),('60639c93381ae','A','60639c933883f'),('60639c93381ae','B','60639c9338840'),('60639c93381ae','C','60639c9338841'),('60639c93381ae','D','60639c9338842');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('558920ff906b8','55892169bf6a7','what is command for changing user information??',4,1),('558920ff906b8','5589216a3646e','what is permission for view only for other??',4,2),('558921841f1ec','558922117fcef','what is command for print in php??',4,1),('558921841f1ec','55892211e44d5','which is a variable of php??',4,2),('5589222f16b93','558922894c453','what is correct statement in c++??',4,1),('5589222f16b93','558922899ccaa','which command is use for print the output in c++?',4,2),('558922ec03021','558923538f48d','what is correct mask for A class IP???',4,1),('558922ec03021','55892353f05c4','which is not a private IP??',4,2),('55897338a6659','558973f4389ac','On Linux, initrd is a file',4,1),('55897338a6659','558973f4c46f2','Which is loaded into memory when system is booted?',4,2),('55897338a6659','558973f51600d',' The process of starting up a computer is known as',4,3),('55897338a6659','558973f55d269',' Bootstrapping is also known as',4,4),('55897338a6659','558973f5abb1a','The shell used for Single user mode shell is:',4,5),('5589741f9ed52','5589751a63091',' Which command is used to close the vi editor?',4,1),('5589741f9ed52','5589751ad32b8',' In vi editor, the key combination CTRL+f',4,2),('5589741f9ed52','5589751b304ef',' Which vi editor command copies the current line of the file?',4,3),('5589741f9ed52','5589751b749c9',' Which command is used to delete the character before the cursor location in vi editor?',4,4),('5589741f9ed52','5589751bd02ec',' Which one of the following statement is true?',4,5),('60639c1537a63','60639c933297e','What is you?',4,1),('60639c1537a63','60639c933561d','Select option a',4,2),('60639c1537a63','60639c93381ae','Select Option B',4,3);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES ('558920ff906b8','Linux : File Managment',2,1,2,5,'','linux','2015-06-23 01:03:59'),('558921841f1ec','Php Coding',2,1,2,5,'','PHP','2015-06-23 01:06:12'),('5589222f16b93','C++ Coding',2,1,2,5,'','c++','2015-06-23 01:09:03'),('558922ec03021','Networking',2,1,2,5,'','networking','2015-06-23 01:12:12'),('55897338a6659','Linux:startup',2,1,5,10,'','linux','2015-06-23 06:54:48'),('5589741f9ed52','Linux :vi Editor',2,1,5,10,'','linux','2015-06-23 06:58:39'),('60639c1537a63','Quiz Ko',3,0,3,2,'ok','#search','2021-03-30 21:45:57');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` VALUES ('sunnygkp10@gmail.com',9,'2015-06-23 19:22:38'),('avantika420@gmail.com',8,'2015-06-23 06:49:39'),('mi5@hollywood.com',4,'2015-06-23 07:12:56'),('nik1@gmail.com',1,'2015-06-23 08:11:50'),('pogiman@hotmoms.com',3,'2021-03-31 00:19:55'),('pogiman@hotmoms.com69',6,'2021-04-04 08:41:44');
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `sender_recipient_master_list`
--

DROP TABLE IF EXISTS `sender_recipient_master_list`;
/*!50001 DROP VIEW IF EXISTS `sender_recipient_master_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sender_recipient_master_list` (
  `sender_code` tinyint NOT NULL,
  `sender_email` tinyint NOT NULL,
  `recipient_class_code` tinyint NOT NULL,
  `recipient_class_name` tinyint NOT NULL,
  `recipient_code` tinyint NOT NULL,
  `recipient_email` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `session_keys`
--

DROP TABLE IF EXISTS `session_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_keys` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_key` char(38) DEFAULT NULL,
  `in_use` varchar(1) NOT NULL,
  `linked_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_keys`
--

LOCK TABLES `session_keys` WRITE;
/*!40000 ALTER TABLE `session_keys` DISABLE KEYS */;
INSERT INTO `session_keys` VALUES (1,'0c29c014-b5b8-11eb-a867-8c47be1e9658','Y','ADMIN04'),(2,'bd1b91b3-b65e-11eb-8db6-8c47be1e9658','Y','ADMIN01'),(3,'c53c302a-b65e-11eb-8db6-8c47be1e9658','Y','ADMIN10');
/*!40000 ALTER TABLE `session_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stored_procedure_logs`
--

DROP TABLE IF EXISTS `stored_procedure_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stored_procedure_logs` (
  `sp_name` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `error_code` varchar(255) DEFAULT NULL,
  `error_timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stored_procedure_logs`
--

LOCK TABLES `stored_procedure_logs` WRITE;
/*!40000 ALTER TABLE `stored_procedure_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `stored_procedure_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class_enrollment`
--

DROP TABLE IF EXISTS `student_class_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is226_project`.`student_class_enrollment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_code` varchar(12) NOT NULL,
  `class_code` varchar(8) NOT NULL,
  `class_status` varchar(1) NOT NULL,
  `record_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_class_data_integrity` (`student_code`),
  KEY `class_mapping_data_integrity` (`class_code`),
  CONSTRAINT `class_mapping_data_integrity` FOREIGN KEY (`class_code`) REFERENCES `classes` (`class_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_class_data_integrity` FOREIGN KEY (`student_code`) REFERENCES `students` (`student_code`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class_enrollment`
--

LOCK TABLES `student_class_enrollment` WRITE;
/*!40000 ALTER TABLE `student_class_enrollment` DISABLE KEYS */;
INSERT INTO `is226_project`.`student_class_enrollment` VALUES (10,'STU202100002','C2021004','E','2021-05-15 08:02:59'),(12,'STU202100002','C2021007','E','2021-05-17 19:16:02'),(13,'STU202100002','C2021008','E','2021-05-15 08:02:46');
/*!40000 ALTER TABLE `student_class_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class_enrollment_logs`
--

DROP TABLE IF EXISTS `student_class_enrollment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_class_enrollment_logs` (
  `archieve_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sce_id` bigint(20) DEFAULT NULL,
  `student_code` varchar(12) DEFAULT NULL,
  `class_code` varchar(10) DEFAULT NULL,
  `last_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`archieve_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class_enrollment_logs`
--

LOCK TABLES `student_class_enrollment_logs` WRITE;
/*!40000 ALTER TABLE `student_class_enrollment_logs` DISABLE KEYS */;
INSERT INTO `student_class_enrollment_logs` VALUES (1,7,NULL,'C2021008','E'),(2,11,NULL,'C2021007','E'),(3,2,NULL,'C2021008','E'),(4,9,NULL,'C2021010','E');
/*!40000 ALTER TABLE `student_class_enrollment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `student_code` varchar(12) NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `student_password` varchar(50) DEFAULT NULL,
  `user_record_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`student_code`),
  UNIQUE KEY `email` (`email`),
  KEY `user_id_in_student_integrity` (`user_id`),
  CONSTRAINT `user_id_in_student_integrity` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('STU202100002','USER000015','email@blank.com23','dasdasdasdasd','2021-04-01 03:17:14'),('STU202100003','USER000016','pogiman@hotmoms.com123456','5f1f3c9f58f6c9cbcf4383a96943dfea','2021-04-01 03:50:46'),('STU202100004','USER000019','post1','','2021-05-17 15:12:43'),('STU202100005','USER000020','post2','','2021-05-17 15:19:15'),('STU202100006','USER000021','post3','','2021-05-17 15:23:10'),('STU202100007','USER000022','hello@','','2021-05-17 15:24:00'),('STU202100008','USER000023','post@','','2021-05-17 15:32:13'),('STU202100009','USER000024','p@ssw0rd','','2021-05-17 16:42:44'),('STU202100010','USER000025','pogiman','password','2021-05-17 16:44:40'),('STU202100011','USER000026','tite@gmail.com','','2021-05-17 16:58:49'),('STU202100012','USER000027','pogiman@mail.org','','2021-05-17 17:00:00'),('STU202100013','USER000028','pogiman@mail.cog','','2021-05-17 17:01:21'),('STU202100014','USER000029','pogiman@hotmoms.comsxxx','','2021-05-17 17:02:21'),('STU202100015','USER000030','pogiman@mail.cof','','2021-05-17 17:03:06'),('STU202100016','USER000031','pogiman@hotmoms.comf','','2021-05-17 17:04:08'),('STU202100017','USER000032','email@jockey.com','','2021-05-17 18:24:23'),('STU202100018','USER000033','kokey@gmail.com','p@ssw0rd','2021-05-17 18:27:06');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `taker_information_table`
--

DROP TABLE IF EXISTS `taker_information_table`;
/*!50001 DROP VIEW IF EXISTS `taker_information_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `taker_information_table` (
  `user_id` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `taker_code` tinyint NOT NULL,
  `taker_type` tinyint NOT NULL,
  `taker_type_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `teacher_code` varchar(12) NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `teacher_password` varchar(50) DEFAULT NULL,
  `user_record_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`teacher_code`),
  UNIQUE KEY `email` (`email`),
  KEY `user_id_in_teacher_integrity` (`user_id`),
  CONSTRAINT `user_id_in_teacher_integrity` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES ('TCR202100002','USER000013','email@blank.com','dasdasdasdasd','2021-04-01 02:56:52'),('TCR202100003','USER000014','email@blank.com2','dasdasdasdasd','2021-04-01 03:12:30'),('TCR202100004','USER000017','pogiman@hotmoms.com69','123456789','2021-04-01 04:06:50'),('TCR202100005','USER000018','pogiman@hotmoms.com32123s','123456789','2021-04-01 04:17:40');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `teachers_to_exam_mapping`
--

DROP TABLE IF EXISTS `teachers_to_exam_mapping`;
/*!50001 DROP VIEW IF EXISTS `teachers_to_exam_mapping`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `teachers_to_exam_mapping` (
  `teacher_code` tinyint NOT NULL,
  `user_name` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `last_name` tinyint NOT NULL,
  `gender` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `mobile_no` tinyint NOT NULL,
  `class_code` tinyint NOT NULL,
  `class_name` tinyint NOT NULL,
  `class_description` tinyint NOT NULL,
  `exam_id` tinyint NOT NULL,
  `exam_topic` tinyint NOT NULL,
  `exam_description` tinyint NOT NULL,
  `type_of_questions` tinyint NOT NULL,
  `exam_type` tinyint NOT NULL,
  `number_of_items` tinyint NOT NULL,
  `time_limit` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `testing_json`
--

DROP TABLE IF EXISTS `testing_json`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testing_json` (
  `jsondoc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`jsondoc`)),
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing_json`
--

LOCK TABLES `testing_json` WRITE;
/*!40000 ALTER TABLE `testing_json` DISABLE KEYS */;
INSERT INTO `testing_json` VALUES ('[\"a\", 1, \"2021-04-03 03:42:55\"]',NULL),('{\"Q1\" : \"A\", \"Q2\" : \"B\"}','answer1'),('{ \"Q1\": \"A\", \"Q2\": \"B\", \"Q3\": { \"Q3i\": 1920, \"Q3ii\": 1080 } }','answer2');
/*!40000 ALTER TABLE `testing_json` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `change_date` datetime DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
INSERT INTO `user_logs` VALUES (1,'USER000001','pogiman@mail.yahoo','2021-03-28 01:41:54','INSERT'),(2,'USER000002','pogiman@mail.con','2021-03-28 01:45:50','INSERT'),(3,'USER000003','pogiman@mail.xxx','2021-03-28 01:47:36','INSERT'),(4,'USER000004','pogiman@mail.hotmoms','2021-03-28 01:49:40','INSERT'),(5,'USER000005','pogiman@hotmoms.com','2021-03-28 01:54:52','INSERT'),(6,'USER000006','pogiman@mail.hotmamas','2021-03-31 18:00:58','INSERT'),(7,'USER000007','pogiman@hotmoms.comsas','2021-03-31 18:20:19','INSERT'),(8,'USER000008','pogiman@hotmoms.comsasasdasd','2021-03-31 18:27:14','INSERT'),(9,'USER000009','pogiman@hotmoms.bayagra','2021-03-31 18:27:41','INSERT'),(10,'USER000010','pogiman@hotmoms.comsss','2021-03-31 18:28:29','INSERT'),(11,'USER000011','pogiman@hentai.cum','2021-03-31 18:31:10','INSERT'),(12,'USER000012','','2021-04-01 09:30:35','INSERT'),(13,'USER000013','email@blank.com','2021-04-01 10:56:52','INSERT'),(14,'USER000014','email@blank.com2','2021-04-01 11:12:30','INSERT'),(15,'USER000015','email@blank.com23','2021-04-01 11:17:14','INSERT'),(16,'USER000016','pogiman@hotmoms.com123456','2021-04-01 11:50:46','INSERT'),(17,'USER000017','pogiman@hotmoms.com69','2021-04-01 12:06:50','INSERT'),(18,'USER000018','pogiman@hotmoms.com32123s','2021-04-01 12:17:40','INSERT'),(19,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:14:45','UPDATE'),(20,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:15:12','UPDATE'),(21,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:17:04','UPDATE'),(22,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:17:08','UPDATE'),(23,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:17:19','UPDATE'),(24,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:18:11','UPDATE'),(25,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:18:47','UPDATE'),(26,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:18:52','UPDATE'),(27,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:20:03','UPDATE'),(28,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:20:33','UPDATE'),(29,'USER000017','pogiman@hotmoms.com69','2021-05-11 01:20:37','UPDATE'),(30,'USER000015','email@blank.com23','2021-05-15 03:34:26','UPDATE'),(31,'USER000015','email@blank.com23','2021-05-15 03:34:39','UPDATE'),(32,'USER000015','email@blank.com23','2021-05-15 03:34:40','UPDATE'),(33,'USER000015','email@blank.com23','2021-05-15 03:38:30','UPDATE'),(34,'USER000001','pogiman@mail.yahoo','2021-05-16 23:47:46','UPDATE'),(35,'USER000008','pogiman@hotmoms.comsasasdasd','2021-05-17 22:59:01','UPDATE'),(36,'USER000019','post1','2021-05-17 23:12:43','INSERT'),(37,'USER000020','post2','2021-05-17 23:19:15','INSERT'),(38,'USER000021','post3','2021-05-17 23:23:10','INSERT'),(39,'USER000022','hello@','2021-05-17 23:24:00','INSERT'),(40,'USER000023','post@','2021-05-17 23:32:13','INSERT'),(41,'USER000024','p@ssw0rd','2021-05-18 00:42:44','INSERT'),(42,'USER000025','pogiman','2021-05-18 00:44:40','INSERT'),(43,'USER000026','tite@gmail.com','2021-05-18 00:58:49','INSERT'),(44,'USER000027','pogiman@mail.org','2021-05-18 01:00:00','INSERT'),(45,'USER000028','pogiman@mail.cog','2021-05-18 01:01:21','INSERT'),(46,'USER000029','pogiman@hotmoms.comsxxx','2021-05-18 01:02:21','INSERT'),(47,'USER000030','pogiman@mail.cof','2021-05-18 01:03:06','INSERT'),(48,'USER000031','pogiman@hotmoms.comf','2021-05-18 01:04:08','INSERT'),(49,'USER000032','email@jockey.com','2021-05-18 02:24:23','INSERT'),(50,'USER000033','kokey@gmail.com','2021-05-18 02:27:06','INSERT'),(51,'USER000012','','2021-05-18 02:51:19','UPDATE'),(52,'USER000013','email@blank.com','2021-05-18 02:52:33','UPDATE'),(53,'USER000013','email@blank.com','2021-05-18 02:53:02','UPDATE'),(54,'USER000013','email@blank.com','2021-05-18 02:53:12','UPDATE'),(55,'USER000016','pogiman@hotmoms.com123456','2021-05-18 02:59:18','UPDATE');
/*!40000 ALTER TABLE `user_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_logs_masterview`
--

DROP TABLE IF EXISTS `user_logs_masterview`;
/*!50001 DROP VIEW IF EXISTS `user_logs_masterview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_logs_masterview` (
  `user_id` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `user_name` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `last_name` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `user_masterview`
--

DROP TABLE IF EXISTS `user_masterview`;
/*!50001 DROP VIEW IF EXISTS `user_masterview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_masterview` (
  `user_id` tinyint NOT NULL,
  `user_name` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `last_name` tinyint NOT NULL,
  `mobile_no` tinyint NOT NULL,
  `gender` tinyint NOT NULL,
  `gender_code` tinyint NOT NULL,
  `user_password` tinyint NOT NULL,
  `category` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` varchar(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_student` tinyint(1) NOT NULL,
  `user_record_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('USER000001','user_names','pogiman@mail.yahoo','','','M','+631234567890','5f4dcc3b5aa765d61d8327deb882cf99',0,1,'2021-05-16 15:47:46'),('USER000002','','pogiman@mail.con','','','O','+631234567890','5f4dcc3b5aa765d61d8327deb882cf99',0,1,'2021-03-27 17:45:50'),('USER000003','','pogiman@mail.xxx','','Ramos','M','+631234567890','5f4dcc3b5aa765d61d8327deb882cf99',0,1,'2021-03-27 17:47:36'),('USER000004','','pogiman@mail.hotmoms','','','M','+631234567890','5f4dcc3b5aa765d61d8327deb882cf99',0,1,'2021-03-27 17:49:40'),('USER000005','Texti','pogiman@hotmoms.com','Idol','Ramos','M','+631234567890','0f359740bd1cda994f8b55330c86d845',0,1,'2021-03-27 17:54:52'),('USER000006','Santa_klos','pogiman@mail.hotmamas','Pogiman','Pogniero','M','+631234567890','25d55ad283aa400af464c76d713c07ad',0,1,'2021-03-31 10:00:58'),('USER000007','Santa_klos','pogiman@hotmoms.comsas','Idol','Ramos','M','+631234567890','e807f1fcf82d132f9bb018ca6738a19f',0,1,'2021-03-31 10:20:19'),('USER000008','ren_admin','pogiman@hotmoms.comsasasdasd','','','','+63','12345678',0,0,'2021-05-17 14:59:01'),('USER000009','Santa_klos','pogiman@hotmoms.bayagra','Idol','Ramos','M','+631234567890','2645b89d9748adcf11572013e45305cc',0,1,'2021-03-31 10:27:41'),('USER000010','Santa_klos','pogiman@hotmoms.comsss','Idol','Ramos','M','+631234567890','25d55ad283aa400af464c76d713c07ad',0,1,'2021-03-31 10:28:29'),('USER000011','Santa_klos','pogiman@hentai.cum','Idol','Ramos','M','+631234567890','e807f1fcf82d132f9bb018ca6738a19f',0,0,'2021-03-31 10:31:10'),('USER000012','','','','','L','+63','',0,0,'2021-05-17 18:51:19'),('USER000013','kaloy_da_3','email@blank.com','Jason','Tud','L','+631234567890','p@ssw0rd',1,0,'2021-05-17 18:53:12'),('USER000014','kaloy2','email@blank.com2','gangan','tarantads','M','+63123123123','dasdasdasdasd',1,0,'2021-04-01 03:12:30'),('USER000015','lion43','email@blank.com23','Michael','Jordan','M','+63123123123','dasdasdasdasd',0,1,'2021-05-14 19:38:30'),('USER000016','Carlo','pogiman@hotmoms.com123456','Angelo','Dede','F','+631234567890','p@ssw0rd',0,1,'2021-05-17 18:59:18'),('USER000017','James_dean','pogiman@hotmoms.com69','Jollibee','MCdo','M','+631521412321','123456789',0,0,'2021-05-10 17:20:37'),('USER000018','Santa_barb','pogiman@hotmoms.com32123s','Idol','Ramos','O','+631234567890','123456789',0,0,'2021-04-01 04:17:40'),('USER000019','','post1','','','O','+63','',0,1,'2021-05-17 15:12:43'),('USER000020','','post2','','','O','+63','',0,1,'2021-05-17 15:19:15'),('USER000021','','post3','','','O','+63','',0,1,'2021-05-17 15:23:10'),('USER000022','','hello@','','','O','+63','',0,1,'2021-05-17 15:24:00'),('USER000023','','post@','','','O','+63','',0,1,'2021-05-17 15:32:13'),('USER000024','','p@ssw0rd','','','O','+63','',0,1,'2021-05-17 16:42:44'),('USER000025','username','pogiman','','','O','+63','password',0,1,'2021-05-17 16:44:40'),('USER000026','','tite@gmail.com','','','O','+63','',0,1,'2021-05-17 16:58:49'),('USER000027','','pogiman@mail.org','','','O','+63','',0,1,'2021-05-17 17:00:00'),('USER000028','','pogiman@mail.cog','idol','ramos','O','+631234567890','',0,1,'2021-05-17 17:01:21'),('USER000029','','pogiman@hotmoms.comsxxx','idol','ramos','O','+631234567890','',0,1,'2021-05-17 17:02:21'),('USER000030','','pogiman@mail.cof','idol','ramos','O','+631234567890','',0,1,'2021-05-17 17:03:06'),('USER000031','','pogiman@hotmoms.comf','idol','ramos','O','+631234567890','',0,1,'2021-05-17 17:04:08'),('USER000032','','email@jockey.com','','','O','+63','',0,1,'2021-05-17 18:24:23'),('USER000033','Sato_shi','kokey@gmail.com','Ganero','Tangeno','O','+639956231233','p@ssw0rd',0,1,'2021-05-17 18:27:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER is226_project.users_insert_tgr 
    AFTER INSERT ON is226_project.`users`
    FOR EACH ROW 
 INSERT INTO is226_project.user_logs (action, user_id, email, change_date)
 VALUES ('INSERT', new.user_id, new.email, NOW()) */;;
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
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER is226_project.users_update_tgr 
    BEFORE UPDATE ON is226_project.`users`
    FOR EACH ROW 
 INSERT INTO is226_project.user_logs
 SET action = 'UPDATE',
     user_id = OLD.user_id,
     email = OLD.email,
     change_date = NOW() */;;
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
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER is226_project.users_delete_tgr
	AFTER DELETE ON is226_project.`users`
	FOR EACH ROW 
	INSERT INTO is226_project.user_logs (action, user_id, email, change_date)
	VALUES('DELETE', old.user_id, old.email, NOW()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `verify_class_status`
--

DROP TABLE IF EXISTS `verify_class_status`;
/*!50001 DROP VIEW IF EXISTS `verify_class_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `verify_class_status` (
  `correct_id` tinyint NOT NULL,
  `student_code` tinyint NOT NULL,
  `class_code` tinyint NOT NULL,
  `class_status` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `user_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'is226_project'
--
/*!50003 DROP FUNCTION IF EXISTS `UUID_TO_BIN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `UUID_TO_BIN`(uuid CHAR(36)) RETURNS binary(16)
    DETERMINISTIC
BEGIN
  RETURN UNHEX(CONCAT(REPLACE(uuid, '-', '')));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `link_user_to_admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `link_user_to_admin`(
	in in_email varchar(255),
	in in_admin_id varchar(255),
	in action_code varchar(1) ##L for link; U for unlink
)
begin

	declare user_id_ver varchar(10);
	declare user_id_cnt int;

	set user_id_ver := (select user_id from users where email = in_email);
	set user_id_cnt := (select count(user_id) from users where email = in_email);

	if (action_code = 'L') then
		if (user_id_cnt = 1) then
		
			update admin 
			set email = in_email, linked_user_id = user_id_ver
			where admin_id = in_admin_id;
		end if;
	elseif (action_code = 'U') then
		update admin 
			set email = NULL, linked_user_id = NULL
			where admin_id = in_admin_id;
	end if;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_admin_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `is226_project`.`remove_admin_account`(in in_admin_id varchar(255))
begin
	declare session_key_ver varchar(100);
	declare session_key_cnt int;

	set session_key_ver := (select session_key from session_keys where linked_id = in_admin_id);
	set session_key_cnt := (select count(session_key) from session_keys where linked_id = in_admin_id);

	if (session_key_cnt = 1) then
		call SP_remove_session_key(session_key_ver);
	end if;

	delete from admin where admin_id = in_admin_id;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reset_user_values` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reset_user_values`()
begin
	truncate table is226_project.user_logs;
	truncate table is226_project.`users`;
	truncate table is226_project.id_reference_tbl;

	INSERT INTO is226_project.id_reference_tbl (usr_table, current_id, current_counter)
	VALUES ('users', 'USER000001', 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `save_quiz_score_to_history` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `save_quiz_score_to_history`(
in in_email varchar(255),
in in_exam_id varchar(255)
)
begin
		insert into exam_history(email, exam_id, highest_possible_grade , percentage, score, correct, incorrect)
		select email, exam_id, HPS, percentage, exam_summary_score_correct , exam_summary_score_correct , exam_summary_score_incorrect from is226_project.exam_summary_score;
		
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_add_exam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_add_exam`(
in title varchar(255),
in description varchar(255),
in exam_type varchar(255),
in class_code varchar(255),
in total varchar(255),
in timelimit varchar(255)
)
begin
	
	declare current_exam_id varchar(255);
	declare new_exam_id varchar(255);
	declare cmonth varchar(2);
	declare cyear varchar(4);
	declare next_cnt bigint;
	declare curr_cnt_padded varchar(4);
	declare next_cnt_padded varchar(4);
	
	set cmonth := (lpad(cast(month(now()) as varchar(2)), 2, '0'));
	set cyear := (cast(year(now()) as varchar(4)));
	set next_cnt := ((select current_counter from is226_project.id_reference_tbl where usr_table = 'exam')+1);
	set curr_cnt_padded := (lpad(cast(next_cnt as varchar(4)), 4, '0'));
	set next_cnt_padded := (lpad(cast(next_cnt + 1 as varchar(4)), 4, '0'));
	## current ID to be inserted
	set current_exam_id := (concat('E',cmonth,exam_type,cyear,'X',curr_cnt_padded));
	## next ID to be set
	set new_exam_id := (concat('E',cmonth,'XX',cyear,'X',next_cnt_padded));

	insert into is226_project.online_exam (exam_id, title, description, exam_type, class_code, total, time_limit)
	values(
	current_exam_id,
	title,
	description,
	exam_type,
	class_code,
	cast(total as int),
	cast(timelimit as int)
	);
	
	update is226_project.id_reference_tbl
	set current_id = new_exam_id,
	current_counter = next_cnt
	where usr_table = 'exam';
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_add_questions_to_exam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_add_questions_to_exam`(
in in_exam_id varchar(255),
in in_question_no varchar(255),
in in_no_of_choices varchar(255),
in in_question_type varchar(255),
in in_question_name varchar(255),
in in_correct_option varchar(255)
)
begin
	declare sp_question_id varchar(20);
	declare qno_conv varchar(6);
	declare sp_option_id varchar(25);
	declare total_options int;
	declare option_loop int;
	
	set qno_conv := (lpad(cast(in_question_no as varchar(6)),5,'0'));
	set sp_question_id := (concat(in_exam_id,qno_conv));
	set total_options := cast(in_no_of_choices as int) + 1;
	set option_loop := 1;
	
	insert into is226_project.online_exam_questions (question_id, exam_id, question_no, no_of_choices, question_type, question_name)
	values(sp_question_id, in_exam_id, in_question_no, in_no_of_choices, in_question_type, in_question_name);

	if (in_question_type in ('MC', 'TF')) then
		
		get_options: while option_loop < total_options DO
		
			insert into is226_project.online_exam_question_choices(option_id, question_id, option_no, option_name)
			select 
			concat(sp_question_id,binary_eq),
			sp_question_id,
			option_no,
			option_name
			from is226_project.choice_staging_table where option_no = option_loop and exam_id = in_exam_id;
			
			delete from is226_project.choice_staging_table where option_no = option_loop and exam_id = in_exam_id;
			
			set option_loop = option_loop + 1;
			
		end
		while get_options;
		
		set sp_option_id := (select option_id from online_exam_question_choices where question_id = sp_question_id and option_no = in_correct_option);
		
		update is226_project.online_exam_questions set answer_id = sp_option_id where question_id = sp_question_id;
		
	elseif (in_question_type = 'SA') then

		update is226_project.online_exam_questions set answer_sa = in_correct_option where question_id = sp_question_id;
		
	end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_archive_exam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_archive_exam`(
	in in_exam_id varchar(255) 
)
begin
	
	## Options Achive
	insert into is226_project.online_exam_question_choices_archieve (old_option_id, question_id, option_no, option_name)
	select option_id, question_id, option_no, option_name from is226_project.online_exam_question_choices 
	where question_id in (select question_id from is226_project.online_exam_questions where exam_id = in_exam_id);
	
	## Questions Archive
	insert into is226_project.online_exam_questions_archive (old_question_id, exam_id, question_no, no_of_choices, answer_id, answer_sa, question_name)
	select question_id, exam_id, question_no, no_of_choices, answer_id, answer_sa, question_name from is226_project.online_exam_questions where exam_id = in_exam_id;
	
	## Exam Archive
	insert into is226_project.online_exam_archive (old_exam_id, title, description, exam_type, class_code, total, time_limit)
	select exam_id, title, description, exam_type, class_code, total, time_limit from  online_exam where exam_id = in_exam_id;
	
	delete from online_exam where exam_id = in_exam_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_check_id_referential_integrity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_check_id_referential_integrity`()
BEGIN
	declare current_id varchar(50);
	declare tbl_cnt BIGINT;
	declare current_cnt BIGINT;
	declare current_id_from_tbl varchar(50);

	set current_id_from_tbl := (select user_id from is226_project.users order by user_id desc limit 1);
	set current_id := (select user_id from is226_project.users where user_id = exists (select current_id from is226_project.id_reference_tbl where usr_table = 'users'));
	set tbl_cnt := (select count(*) from  is226_project.users);
	set current_cnt := (select current_counter from is226_project.id_reference_tbl where usr_table = 'users');

	if current_id is null then
		if tbl_cnt != current_cnt then
			if tbl_cnt > current_cnt then 
				update is226_project.id_reference_tbl
				set current_id = current_id_from_tbl,
				current_counter = tbl_cnt
				where usr_table = 'users';
			else 
				update is226_project.id_reference_tbl
				set buffer_id = current_id_from_tbl,
				current_counter = tbl_cnt
				where usr_table = 'users';
			end if;
		end if;
	else
		if tbl_cnt > current_cnt then 
				update is226_project.id_reference_tbl
				set current_id = current_id_from_tbl,
				current_counter = tbl_cnt
				where usr_table = 'users';
			else 
				update is226_project.id_reference_tbl
				set buffer_id = current_id_from_tbl,
				current_counter = tbl_cnt
				where A.usr_table = 'users';
            end if;
end if;

		
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_create_admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_admin`(
IN in_user_name varchar(10),
IN in_email varchar(50),
IN in_admin_password varchar(50)
)
begin
		declare new_admin_id varchar(50);
		declare old_admin_id varchar(50);
		declare new_count bigint;
	
		set old_admin_id := (select current_id from is226_project.id_reference_tbl where usr_table = 'admin');
		set new_count := ((select current_counter from is226_project.id_reference_tbl where usr_table = 'admin') + 1);
		set new_admin_id := concat('ADMIN',lpad(cast(new_count + 1 as varchar(7)), 2, '0'));
	
		insert into admin(admin_id, email, admin_password, user_name, admin_code, admin_grp_email, admin_class)
		values (
		old_admin_id,
		nullif(in_email,''),
		in_admin_password,
		in_user_name,
		'ADMGRP',
		'admingrp@grp.com',
		'ADM0001'
		);
	
		### Update Reference TABLE
		Update is226_project.id_reference_tbl
		set current_id = new_admin_id,
		current_counter = new_count
		where usr_table = 'admin';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_create_feedback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_feedback`(
in in_action varchar(255), ## C for create feedback record / R for Reply
in in_email varchar(255),
in in_class_code varchar(255),
in in_subject varchar(255),
in in_message varchar(1000),
in in_attachment varchar(255),
in in_with_attachment varchar(255),
in in_feedback varchar(255),
in in_recipient varchar(255)
)
begin
		declare new_feedback_id varchar(50);
		declare old_feedback_id varchar(50);
		declare new_count bigint;
		declare sp_user_id varchar(255);
	
		set old_feedback_id := (select current_id from is226_project.id_reference_tbl where usr_table = 'feedback');
		set new_count := ((select current_counter from is226_project.id_reference_tbl where usr_table = 'feedback') + 1);
		set new_feedback_id := concat('FB',lpad(cast(month(now())as varchar(2)), 2, '0'),substring(cast(year(now()) as varchar(4)),3,2), lpad(cast(new_count + 1 as varchar(4)), 4, '0'));
		set sp_user_id := (select user_id from users where email = in_email); 
	
		if (in_action = 'C') then 
			
			set in_feedback := null;
		
			if (in_with_attachment = 'N') then
				set in_attachment := null;
			end if;
			
			insert into online_feedback (feedback_id, user_id, class_code, email, subject, message, date_created, time_created, status, attachment)
			values(old_feedback_id, sp_user_id, in_class_code, in_email, in_subject, in_message, date(now()), time(now()), 'S', in_attachment);
		
			##Update Reference Table
			update is226_project.id_reference_tbl
			set current_id = new_feedback_id,
			current_counter = new_count
			where usr_table = 'feedback';
		
			insert into feedback_tat_logs (feedback_id, orig_sender_user_id, curr_sender_user_id, curr_recipient_user_id)
			values(old_feedback_id, sp_user_id, sp_user_id, in_recipient);
		
		elseif (in_action = 'R') then
		
			#Place Reply
			insert into feedback_reply (feedback_id, message, user_id, date_created, time_created)
			values (in_feedback, in_message, sp_user_id, date(now()), time(now()));
		
			#Update Status
			update online_feedback
			set status = 'E'
			where feedback_id = in_feedback;
		
			insert into feedback_tat_logs (feedback_id, orig_sender_user_id, curr_sender_user_id, curr_recipient_user_id)
			values(in_feedback, sp_user_id, sp_user_id, in_recipient);
		
		end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_edit_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_edit_account`(
in_email varchar(255),
in_username varchar(255),
in_first_name varchar(255),
in_last_name varchar(255),
in_mobile_no varchar(255),
in_user_password varchar(255),
in_gender varchar(255)
)
begin
	
	declare search_user_id varchar(50);

	set search_user_id := (select user_id from users where email = in_email);

	update users
	set user_name = in_username,
	first_name = in_first_name,
	last_name = in_last_name,
	gender = in_gender,
	mobile_no = concat('+63',in_mobile_no),
	user_password = in_user_password
	where user_id = search_user_id;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_edit_admin_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_edit_admin_account`(
	in in_admin_id varchar(255),
	in in_user_name varchar(255),
	in in_password varchar(255)
)
begin
	
	update admin
	set user_name = in_user_name,
	admin_password = in_password
	where admin_id = in_admin_id;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_enroll_to_classes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_enroll_to_classes`(in in_email varchar(255),
in in_class_code varchar(255)
)
begin
	
	declare chk_student_code varchar (12);
	declare remaining_size int;

	set chk_student_code := (select student_code from is226_project.students where email = in_email);
	set remaining_size := (select remaining from is226_project.class_details where class_code = in_class_code);

	if remaining_size > 0 then
	insert into is226_project.student_class_enrollment(student_code, class_code, class_status)
	values( chk_student_code, in_class_code, 'P');
	end if;

	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_generate_session_key` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_generate_session_key`()
begin
	declare unique_indetifier varchar(38);
		
	set unique_indetifier := (select uuid());
	
	insert into session_keys(session_key, in_use)
	values (unique_indetifier, 'N');

	select unique_indetifier;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_insert_new_class` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_insert_new_class`(
IN email_input varchar(255),
IN class_name_input varchar(255),
IN class_size_input varchar(255),
In description_input varchar(255)
)
BEGIN
		declare new_class_id varchar(50);
		declare old_class_id varchar(50);
		declare new_count bigint;
		declare teacher_code varchar(20);

	
		set teacher_code := (select a.teacher_code from teachers a where a.email = email_input );
		set old_class_id := (select current_id from is226_project.id_reference_tbl where usr_table = 'class');
		set new_count := ((select current_counter from is226_project.id_reference_tbl where usr_table = 'class') + 1);
		set new_class_id := concat('C',cast(year(now()) as varchar(4)), lpad(cast(new_count + 1 as varchar(3)), 3, '0'));
		 
		insert into is226_project.classes(class_code, teacher_code, class_name, size, description)
		values(old_class_id, teacher_code, class_name_input,cast(class_size_input as INT),description_input);
		
	
		### Update Reference TABLE
		Update is226_project.id_reference_tbl
		set current_id = new_class_id,
		current_counter = new_count
		where usr_table = 'class';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insert_to_users` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insert_to_users`(
IN user_name varchar(10),
IN email varchar(50),
IN first_name varchar(50),
IN last_name varchar(50),
IN gender varchar(1),
IN mobile varchar(20),
IN user_password varchar(50),
IN is_student varchar(5)
)
BEGIN
		declare new_user_id varchar(50);
		declare old_user_id varchar(50);
		declare new_count bigint;
		declare insert_code varchar(12);
		declare new_insert_code varchar(12);
		
		set old_user_id := (select current_id from is226_project.id_reference_tbl where usr_table = 'users');
		
		insert into is226_project.users(user_id, user_name, email, first_name, last_name, gender, mobile_no, user_password, is_admin, is_student)
		values(
			old_user_id,
			user_name,
            email,
			first_name,
			last_name,
			gender,
			concat('+63', mobile),
			user_password,
			case 
			when is_student = 'yes' then 0
			when is_student = 'no' then 0
			else 1
			end,
        	case 
			when is_student = 'yes' then 1
			else 0
			end);
		
		if (is_student = 'yes') then
			set insert_code := (select current_id from is226_project.id_reference_tbl where usr_table = 'students');
			set new_count := ((select current_counter from is226_project.id_reference_tbl where usr_table = 'students') + 1);
			set new_insert_code := concat('STU',cast(year(now()) as varchar(4)), lpad(cast(new_count + 1 as varchar(10)), 5, '0'));
		
			insert into is226_project.students(student_code, user_id, email, student_password)
			values (new_insert_code, old_user_id, email, user_password );
		
			update is226_project.id_reference_tbl
			set current_id = new_insert_code,
			current_counter = new_count
			where usr_table = 'students';
		
		else 
			set insert_code := (select current_id from is226_project.id_reference_tbl where usr_table = 'teachers');
			set new_count := ((select current_counter from is226_project.id_reference_tbl where usr_table = 'teachers') + 1);
			set new_insert_code := concat('TCR',cast(year(now()) as varchar(4)), lpad(cast(new_count + 1 as varchar(10)), 5, '0'));
		
			insert into is226_project.teachers(teacher_code, user_id, email, teacher_password)
			values (new_insert_code, old_user_id, email, user_password );
			
			update is226_project.id_reference_tbl
			set current_id = new_insert_code,
			current_counter = new_count
			where usr_table = 'teachers';
			end if;
		
		set new_count := ((select current_counter from is226_project.id_reference_tbl where usr_table = 'users') + 1);
		set new_user_id := concat('USER',lpad(cast(new_count + 1 as varchar(10)), 6, '0'));
	
		### Update Reference TABLE
		Update is226_project.id_reference_tbl
		set current_id = new_user_id,
		current_counter = new_count
		where usr_table = 'users';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_link_admin_to_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_link_admin_to_session`(in in_paramter varchar(100), in in_session_key varchar(100))
begin
	declare admin_identifier varchar(50);
	declare session_id_param int;

	set session_id_param := (select session_id from session_keys where session_key = in_session_key);

	if ((select count(*) from admin where email = in_paramter) > 0) or ((select count(*) from admin where user_name = in_paramter) > 0) then 
		
		set admin_identifier := (select distinct admin_id from admin where email = in_paramter or user_name = in_paramter);
		
		update session_keys
		set linked_id = admin_identifier,
		in_use = 'Y'
		where session_id = session_id_param;
	
	else
		select 'Error in linking session key. Cannot find username or email.';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_manage_classes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_manage_classes`(
in action_int INT,
in sce_id BIGINT,
in param_class_code varchar(255),
IN new_class_name varchar(255),
IN new_class_desc varchar(255),
IN new_class_size varchar(255),
in new_class_status varchar(255)
)
BEGIN
		
		if (action_int = 1) then
			## update class details
			
			update is226_project.classes
			set class_name = new_class_name,
			description = new_class_desc,
			size = new_class_size
			where class_code = param_class_code;
		
		elseif (action_int = 2) then
		
			delete from is226_project.classes where class_code = param_class_code;
		
		elseif (action_int in (3,4)) then
		
			update is226_project.student_class_enrollment
			set class_status = new_class_status
			where id = sce_id;
			end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_manage_class_for_students` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_manage_class_for_students`(in in_email varchar(255),
in in_class_code varchar(255)
)
begin
	
	declare chk_student_code varchar (15);
	declare remaining_size int;

	set chk_student_code := (select student_code from is226_project.students where email = in_email);
	set remaining_size := (select remaining from is226_project.class_details where class_code = in_class_code);

	if remaining_size > 0 then
	insert into is226_project.student_class_enrollment(student_code, class_code, class_status)
	values (chk_student_code, in_class_code, 'P');
	end if;

	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_post_answers_to_staging` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_post_answers_to_staging`(
in in_email varchar(255),
in in_exam_id varchar(255),
in in_question_id varchar(255),
in in_answer varchar(255)
)
begin
	
	declare record_count_ae_staging int;
	declare record_count_aeq_staging int;
	declare sp_ae_staging_id int;
	declare sp_question_type varchar(10);
	declare total_exam_items int;
	declare checker varchar(50);
	
	set record_count_ae_staging := (select count(*) from is226_project.answers_to_exam_staging where email = in_email and exam_id = in_exam_id);
	set sp_question_type := (select question_type from online_exam_questions where exam_id = in_exam_id and question_id = in_question_id limit 1);

	if (record_count_ae_staging = 0) then 
		
	insert into is226_project.answers_to_exam_staging(taker_type, email, exam_id)
	select taker_type, email, in_exam_id from is226_project.taker_information_table where email = in_email limit 1;
	
	select last_insert_id() into sp_ae_staging_id;
	
	else 
	
	set sp_ae_staging_id := (select ae_staging_id from is226_project.answers_to_exam_staging ates where email = in_email and exam_id = in_exam_id);
	
	end if;

	set record_count_aeq_staging := (select count(*) from is226_project.answer_to_questions_staging where ae_staging_id = sp_ae_staging_id and exam_id = in_exam_id);
	set total_exam_items := (select total from online_exam where exam_id = in_exam_id);
	set checker := (select aeq_staging_id from answer_to_questions_staging where ae_staging_id = sp_ae_staging_id  and exam_id = in_exam_id and question_id = in_question_id);

		if (record_count_aeq_staging = 0 or record_count_aeq_staging < total_exam_items) then
			if (sp_question_type = 'SA') then
				insert into is226_project.answer_to_questions_staging (ae_staging_id, exam_id, question_id, answer_sa)
				values(sp_ae_staging_id, in_exam_id, in_question_id, in_answer);
			else
				insert into is226_project.answer_to_questions_staging (ae_staging_id, exam_id, question_id, answer_id)
				values(sp_ae_staging_id, in_exam_id, in_question_id, in_answer);
			end if;
		else
			if (sp_question_type = 'SA') then
				update is226_project.answer_to_questions_staging
				set answer_sa = in_answer
				where ae_staging_id = sp_ae_staging_id and exam_id = in_exam_id and question_id = in_question_id;
			else
				update is226_project.answer_to_questions_staging
				set answer_id = in_answer
				where ae_staging_id = sp_ae_staging_id and exam_id = in_exam_id and question_id = in_question_id;
			end if;
		end if;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_remove_enrolled_classes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_remove_enrolled_classes`(in in_email varchar(255),
in in_class_code varchar(255)
)
begin
	
	declare student_code varchar (12);
	declare curr_class_status varchar (1);
	declare correct_id_param bigint;
	

	set student_code := (select student_code from is226_project.students where email = in_email);
	set correct_id_param := (select correct_id from is226_project.verify_class_status where class_code = in_class_code and email = in_email);
	set curr_class_status := (select class_status from is226_project.verify_class_status where correct_id = correct_id_param);

	if (curr_class_status in ('E','D')) then
		insert into student_class_enrollment_logs (sce_id, student_code, class_code, last_status)
		select id, student_code, class_code, class_status from student_class_enrollment where id = correct_id_param;
	
		delete from student_class_enrollment where id = correct_id_param;
	
	end if;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_remove_session_key` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_remove_session_key`(in in_session_id int)
begin 
		update session_keys
		set linked_id = null,
		in_use = 'N'
		where session_id = in_session_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_stage_options` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_stage_options`(
in in_exam_id varchar(255),
in in_option_no varchar(255),
in in_option_name varchar(255)
)
begin
	declare binary_eq_conv varchar(5);
	
	set binary_eq_conv := (lpad(cast(BIN(cast(in_option_no as int)) as varchar(5)),5,'0'));
	
	insert into choice_staging_table (exam_id, option_no, option_name, binary_eq)
	values (in_exam_id, cast(in_option_no as int), in_option_name, binary_eq_conv );
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_update_feedback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_feedback`(
feedback_id_param varchar(10),
updated_f_status varchar(1))
begin
	declare feedback_verify varchar(10);
	##declare curr_feedback_status varchar(1);
	
	set feedback_verify := (select feedback_id from is226_project.online_feedback where feedback_id = feedback_id_param);
	##set curr_feedback_status := (select status from is226_project.online_feedback where feedback_id = feedback_id_param)

	if (feedback_verify is not null) then
			
		update is226_project.online_feedback
		set status = updated_f_status
		where feedback_id = feedback_verify;
	
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_validate_answers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_validate_answers`(
in in_email varchar(255),
in in_exam_id varchar(255)
)
begin
	
	declare in_class_code varchar(50);
	declare rec_cnt int;
	declare correct_answer varchar(50);
	declare records_to_be_updated int;

	set in_class_code := (select class_code from online_exam where exam_id = in_exam_id);
	set rec_cnt := (select count(*) from exam_summary where email = in_email and exam_id = in_exam_id and class_id = in_class_code);
	
	create temporary table validate_user_answers
	select
		email,
		class_code,
		exam_id,
		question_id,
		exam_answer,
		user_answer,
		case when exam_answer = user_answer then 'correct' else 'incorrect' end as checking,
		case when exam_answer = user_answer then 1 else 0 end as score
		from (
		select 
		ates.email,
		oe.class_code,
		oe.exam_id,
		oeq.question_id,
		coalesce (oeq.answer_id, oeq.answer_sa) as exam_answer,
		coalesce(atqs.answer_id, atqs.answer_sa) as user_answer
		from answers_to_exam_staging ates
		inner join online_exam oe on oe.exam_id = ates.exam_id
		left join online_exam_questions oeq ON oe.exam_id = oeq.exam_id 
		left join answer_to_questions_staging atqs on ates.ae_staging_id = atqs.ae_staging_id and ates.exam_id = atqs.exam_id and oeq.question_id = atqs.question_id 
		where ates.email = in_email and ates.exam_id = in_exam_id) x;
	
	
	if (rec_cnt = 0) then
	
	insert into is226_project.exam_summary(email,class_id,exam_id,question_id,exam_answer,user_answer,checking,score)
	select email, class_code, exam_id, question_id,	exam_answer, user_answer, checking, score from validate_user_answers;

	else
		
		update is226_project.exam_summary es join validate_user_answers val
		on es.email = val.email and es.class_id = val.class_code and
		es.exam_id = val.exam_id and es.question_id = val.question_id
		set es.user_answer = val.user_answer,
		es.checking = case when es.exam_answer = val.user_answer then 'correct' else 'incorrect' end,
		es.score = case when es.exam_answer = val.user_answer then 1 else 0 end;
		
		end if;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validate_answers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validate_answers`(
in in_email varchar(255),
in in_exam_id varchar(255)
)
begin
	
	declare in_class_code varchar(50);
	declare rec_cnt int;
	declare correct_answer varchar(50);
	declare records_to_be_updated int;

	set in_class_code := (select class_code from online_exam where exam_id = in_exam_id);
	set rec_cnt := (select count(*) from exam_summary where email = in_email and exam_id = in_exam_id and class_id = in_class_code);
	
	create temporary table validate_user_answers
	select
		email,
		class_code,
		exam_id,
		question_id,
		exam_answer,
		user_answer,
		case when exam_answer = user_answer then 'correct' else 'incorrect' end as checking,
		case when exam_answer = user_answer then 1 else 0 end as score
		from (
		select 
		ates.email,
		oe.class_code,
		oe.exam_id,
		oeq.question_id,
		coalesce (oeq.answer_id, oeq.answer_sa) as exam_answer,
		coalesce(atqs.answer_id, atqs.answer_sa) as user_answer
		from answers_to_exam_staging ates
		inner join online_exam oe on oe.exam_id = ates.exam_id
		left join online_exam_questions oeq ON oe.exam_id = oeq.exam_id 
		left join answer_to_questions_staging atqs on ates.ae_staging_id = atqs.ae_staging_id and ates.exam_id = atqs.exam_id and oeq.question_id = atqs.question_id 
		where ates.email = in_email and ates.exam_id = in_exam_id) x;
	
	
	if (rec_cnt = 0) then
	
	insert into is226_project.exam_summary(email,class_id,exam_id,question_id,exam_answer,user_answer,checking,score)
	select email, class_code, exam_id, question_id,	exam_answer, user_answer, checking, score from validate_user_answers;

	else
		
		update is226_project.exam_summary es inner join validate_user_answers val
		on es.email = val.email and es.class_id = val.class_code and
		es.exam_id = val.exam_id and es.question_id = val.question_id
		set es.user_answer = val.user_answer,
		es.checking = case when es.exam_answer = val.user_answer then 'correct' else 'incorrect' end,
		es.score = case when es.exam_answer = val.user_answer then 1 else 0 end
		where es.user_answer <> val.user_answer;
		
		end if;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `admin_master_list`
--

/*!50001 DROP TABLE IF EXISTS `admin_master_list`*/;
/*!50001 DROP VIEW IF EXISTS `admin_master_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admin_master_list` AS select `a`.`admin_id` AS `admin_id`,`a`.`email` AS `email`,`a`.`admin_password` AS `admin_password`,`a`.`user_name` AS `user_name`,`a`.`admin_code` AS `admin_code`,`a`.`admin_grp_email` AS `admin_grp_email`,`a`.`admin_class` AS `admin_class`,`sk`.`session_id` AS `session_id`,`sk`.`session_key` AS `session_key`,`sk`.`in_use` AS `in_use`,case when `sk`.`session_key` is not null then 'Y' else 'N' end AS `connected_to_session_key`,case when `u`.`user_id` is not null then 'Y' else 'N' end AS `connected_to_user`,`u`.`user_id` AS `user_id`,`u`.`first_name` AS `first_name`,`u`.`last_name` AS `last_name`,`u`.`gender` AS `gender`,`u`.`mobile_no` AS `mobile_no` from ((`admin` `a` left join `session_keys` `sk` on(`a`.`admin_id` = `sk`.`linked_id`)) left join `users` `u` on(`u`.`user_id` = `a`.`linked_user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `class_details`
--

/*!50001 DROP TABLE IF EXISTS `class_details`*/;
/*!50001 DROP VIEW IF EXISTS `class_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `class_details` AS select `c`.`class_code` AS `class_code`,`c`.`class_name` AS `class_name`,`c`.`description` AS `description`,`c`.`size` AS `class_size`,coalesce(`y`.`total_registered`,0) AS `occupied`,`c`.`size` - coalesce(`y`.`total_registered`,0) AS `remaining`,`x`.`user_id` AS `user_id`,`x`.`teacher_code` AS `teacher_code`,`x`.`user_name` AS `user_name`,`x`.`first_name` AS `first_name`,`x`.`last_name` AS `last_name`,`x`.`gender` AS `gender`,`x`.`mobile_no` AS `mobile_no` from ((`is226_project`.`classes` `c` join (select `u2`.`user_id` AS `user_id`,`t`.`teacher_code` AS `teacher_code`,`u2`.`user_name` AS `user_name`,`u2`.`first_name` AS `first_name`,`u2`.`last_name` AS `last_name`,`u2`.`gender` AS `gender`,`u2`.`mobile_no` AS `mobile_no` from (`is226_project`.`teachers` `t` join `is226_project`.`users` `u2` on(`u2`.`user_id` = `t`.`user_id`))) `x` on(`x`.`teacher_code` = `c`.`teacher_code`)) left join (select `sce`.`class_code` AS `class_code`,count(`sce`.`class_status`) AS `total_registered` from `is226_project`.`student_class_enrollment` `sce` where `sce`.`class_status` in ('E','P') group by `sce`.`class_code`) `y` on(`c`.`class_code` = `y`.`class_code`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `class_student_teacher_summary`
--

/*!50001 DROP TABLE IF EXISTS `class_student_teacher_summary`*/;
/*!50001 DROP VIEW IF EXISTS `class_student_teacher_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `class_student_teacher_summary` AS select `sce`.`id` AS `sce_id`,`sce`.`class_code` AS `class_code`,`cl`.`class_name` AS `class_name`,`cl`.`description` AS `description`,`cl`.`size` AS `size`,coalesce(`ref_tbl`.`enrollment_count`,0) AS `total_enrolled`,`cl`.`size` - coalesce(`ref_tbl`.`enrollment_count`,0) AS `remaining_size`,`x`.`student_user_name` AS `student_user_name`,`x`.`student_full_name` AS `student_full_name`,`x`.`student_email` AS `student_email`,`x`.`student_mobile_no` AS `student_mobile_no`,`x`.`student_gender_name` AS `student_gender_name`,`x`.`gender` AS `student_gender`,`y`.`teacher_user_name` AS `teacher_user_name`,`y`.`teacher_full_name` AS `teacher_full_name`,`y`.`teacher_email` AS `teacher_email`,`y`.`teacher_mobile_no` AS `teacher_mobile_no`,`y`.`teacher_gender_name` AS `teacher_gender_name`,`y`.`gender` AS `teacher_gender`,coalesce(`g`.`value_name`,'undefined') AS `class_status_name`,`sce`.`class_status` AS `class_status` from (((((`is226_project`.`student_class_enrollment` `sce` join `is226_project`.`classes` `cl` on(`cl`.`class_code` = `sce`.`class_code`)) left join `is226_project`.`generic_look_up_tbl` `g` on(`g`.`value_code` = `sce`.`class_status` and `g`.`usr_table` = 'student_class_enrollment')) left join (select `s`.`student_code` AS `student_code`,`u`.`user_name` AS `student_user_name`,`u`.`email` AS `student_email`,`u`.`mobile_no` AS `student_mobile_no`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `student_full_name`,coalesce(`g`.`value_name`,'undefined') AS `student_gender_name`,`u`.`gender` AS `gender` from ((`is226_project`.`students` `s` join `is226_project`.`users` `u` on(`s`.`user_id` = `u`.`user_id`)) left join `is226_project`.`generic_look_up_tbl` `g` on(`g`.`value_code` = `u`.`gender` and `g`.`usr_table` = 'users'))) `x` on(`sce`.`student_code` = `x`.`student_code`)) left join (select `t`.`teacher_code` AS `teacher_code`,`u`.`user_name` AS `teacher_user_name`,`u`.`email` AS `teacher_email`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `teacher_full_name`,`u`.`mobile_no` AS `teacher_mobile_no`,coalesce(`g`.`value_name`,'undefined') AS `teacher_gender_name`,`u`.`gender` AS `gender` from ((`is226_project`.`teachers` `t` join `is226_project`.`users` `u` on(`t`.`user_id` = `u`.`user_id`)) left join `is226_project`.`generic_look_up_tbl` `g` on(`g`.`value_code` = `u`.`gender` and `g`.`usr_table` = 'users'))) `y` on(`cl`.`teacher_code` = `y`.`teacher_code`)) left join (select `is226_project`.`student_class_enrollment`.`class_code` AS `class_code`,count(`is226_project`.`student_class_enrollment`.`student_code`) AS `enrollment_count` from `is226_project`.`student_class_enrollment` group by `is226_project`.`student_class_enrollment`.`class_code`) `ref_tbl` on(`ref_tbl`.`class_code` = `sce`.`class_code`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `exam_history_view`
--

/*!50001 DROP TABLE IF EXISTS `exam_history_view`*/;
/*!50001 DROP VIEW IF EXISTS `exam_history_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `exam_history_view` AS select `eh`.`email` AS `email`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `full_name`,`glut`.`value_name` AS `gender_name`,`u`.`gender` AS `gender`,case when `s`.`user_id` is not null then 'Student' when `t`.`user_id` is not null then 'Teacher' else 'Undefiend' end AS `category`,`c`.`class_code` AS `class_code`,`c`.`class_name` AS `class_name`,`oe`.`exam_id` AS `exam_id`,`oe`.`title` AS `title`,`eh`.`highest_possible_grade` AS `highest_possible_grade`,`eh`.`score` AS `score`,`eh`.`highest_possible_grade` - `eh`.`score` AS `errors`,concat(cast(`eh`.`score` as char(10) charset utf8mb4),' pts over ',cast(`eh`.`highest_possible_grade` as char(10) charset utf8mb4),' pts') AS `score_display`,concat(cast(round(`eh`.`percentage`,2) as char(10) charset utf8mb4),'%') AS `percentage`,`eh`.`record_timestamp` AS `record_timestamp` from ((((((`is226_project`.`latest_exam_history` `eh` join `is226_project`.`online_exam` `oe` on(`eh`.`exam_id` = `oe`.`exam_id`)) join `is226_project`.`classes` `c` on(`c`.`class_code` = `oe`.`class_code`)) join `is226_project`.`users` `u` on(`u`.`email` = `eh`.`email`)) left join `is226_project`.`students` `s` on(`s`.`user_id` = `u`.`user_id`)) left join `is226_project`.`teachers` `t` on(`t`.`user_id` = `u`.`user_id`)) left join `is226_project`.`generic_look_up_tbl` `glut` on(`glut`.`value_code` = `u`.`gender` and `glut`.`usr_table` = 'users')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `exam_summary_score`
--

/*!50001 DROP TABLE IF EXISTS `exam_summary_score`*/;
/*!50001 DROP VIEW IF EXISTS `exam_summary_score`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `exam_summary_score` AS select `x`.`email` AS `email`,`oe`.`exam_id` AS `exam_id`,`oe`.`title` AS `Exam_Title`,`oe`.`total` AS `HPS`,`x`.`checking` AS `incorrect`,`x`.`exam_summary_score` AS `exam_summary_score_incorrect`,`y`.`checking` AS `correct`,`y`.`exam_summary_score` AS `exam_summary_score_correct`,`y`.`exam_summary_score` / `oe`.`total` * 100 AS `percentage` from ((`is226_project`.`online_exam` `oe` join (select `es`.`email` AS `email`,`es`.`exam_id` AS `exam_id`,`es`.`checking` AS `checking`,count(`es`.`checking`) AS `exam_summary_score` from `is226_project`.`exam_summary` `es` where `es`.`checking` = 'incorrect' group by `es`.`email`,`es`.`exam_id`,`es`.`checking`) `x` on(`x`.`exam_id` = `oe`.`exam_id`)) join (select `es`.`email` AS `email`,`es`.`exam_id` AS `exam_id`,`es`.`checking` AS `checking`,sum(`es`.`score`) AS `exam_summary_score` from `is226_project`.`exam_summary` `es` where `es`.`checking` = 'correct' group by `es`.`email`,`es`.`exam_id`,`es`.`checking`) `y` on(`y`.`exam_id` = `x`.`exam_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `feedback_master_table`
--

/*!50001 DROP TABLE IF EXISTS `feedback_master_table`*/;
/*!50001 DROP VIEW IF EXISTS `feedback_master_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `feedback_master_table` AS select `of2`.`feedback_id` AS `feedback_id`,case when `tat_info`.`curr_sender_user_id` = 'ADMGRP' or `tat_info`.`curr_recipient_user_id` = 'ADMGRP' then 'ADM0001' else `of2`.`class_code` end AS `class_code`,case when `tat_info`.`curr_sender_user_id` = 'ADMGRP' or `tat_info`.`curr_recipient_user_id` = 'ADMGRP' then 'admin_concerns' else `c`.`class_name` end AS `class_name`,coalesce(`c`.`size`,0) AS `size`,`u`.`user_id` AS `user_id`,`snd`.`sender_code` AS `sender_code`,`u`.`user_name` AS `user_name`,`u`.`email` AS `email`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `orig_full_name`,`of2`.`subject` AS `subject`,`of2`.`message` AS `message`,`of2`.`attachment` AS `attachment`,`of2`.`date_created` AS `date_created`,`of2`.`time_created` AS `time_created`,`of2`.`status` AS `feedback_status`,`tat_info`.`curr_sender_user_id` AS `curr_sender_user_id`,case when `tat_info`.`curr_sender_user_id` = 'ADMGRP' then 'admingrp@grp.com' else `tat_info`.`email_sender` end AS `email_sender`,case when `tat_info`.`curr_sender_user_id` = 'ADMGRP' then 'Admin Group' else `tat_info`.`full_name_of_sender` end AS `full_name_of_sender`,`tat_info`.`sender_category` AS `sender_category`,case when `tat_info`.`curr_sender_user_id` = 'ADMGRP' then 'Admin' else `tat_info`.`curr_recipient_user_id` end AS `curr_recipient_user_id`,case when `tat_info`.`curr_recipient_user_id` = 'ADMGRP' then 'admingrp@grp.com' else `tat_info`.`email_recpient` end AS `email_recpient`,case when `tat_info`.`curr_recipient_user_id` = 'ADMGRP' then 'Admin Group' else `tat_info`.`full_name_of_recipient` end AS `full_name_of_recipient`,case when `tat_info`.`curr_recipient_user_id` = 'ADMGRP' then 'Admin' else `tat_info`.`recipient_category` end AS `recipient_category`,(select count(`a`.`id`) from `is226_project`.`feedback_reply` `a` where `a`.`feedback_id` = `of2`.`feedback_id`) AS `thread_count`,(select `b`.`message` from `is226_project`.`feedback_reply` `b` where `b`.`feedback_id` = `of2`.`feedback_id` order by `b`.`record_timestamp` desc limit 1) AS `current_message` from ((((`is226_project`.`online_feedback` `of2` left join `is226_project`.`users` `u` on(`of2`.`user_id` = `u`.`user_id`)) left join `is226_project`.`classes` `c` on(`c`.`class_code` = `of2`.`class_code`)) left join (select `is226_project`.`teachers`.`teacher_code` AS `sender_code`,`is226_project`.`teachers`.`user_id` AS `user_id`,'T' AS `category` from `is226_project`.`teachers` union all select `is226_project`.`students`.`student_code` AS `sender_code`,`is226_project`.`students`.`user_id` AS `user_id`,'S' AS `category` from `is226_project`.`students`) `snd` on(`snd`.`user_id` = `u`.`user_id`)) left join (select `tat`.`feedback_id` AS `feedback_id`,`tat`.`orig_sender_user_id` AS `orig_sender_user_id`,`tat`.`curr_sender_user_id` AS `curr_sender_user_id`,`u1`.`email` AS `email_sender`,concat(`u1`.`first_name`,' ',`u1`.`last_name`) AS `full_name_of_sender`,case when `u1`.`is_admin` = 1 then 'Admin' when `u1`.`is_admin` = 0 and `u1`.`is_student` = 0 then 'Teacher' when `u1`.`is_admin` = 0 and `u1`.`is_student` = 1 then 'Student' end AS `sender_category`,`tat`.`curr_recipient_user_id` AS `curr_recipient_user_id`,`u2`.`email` AS `email_recpient`,concat(`u2`.`first_name`,' ',`u2`.`last_name`) AS `full_name_of_recipient`,case when `u2`.`is_admin` = 1 then 'Admin' when `u2`.`is_admin` = 0 and `u2`.`is_student` = 0 then 'Teacher' when `u2`.`is_admin` = 0 and `u2`.`is_student` = 1 then 'Student' end AS `recipient_category` from ((`is226_project`.`feedback_tat_logs` `tat` left join `is226_project`.`users` `u1` on(`u1`.`user_id` = `tat`.`curr_sender_user_id`)) left join `is226_project`.`users` `u2` on(`u2`.`user_id` = `tat`.`curr_recipient_user_id`))) `tat_info` on(`tat_info`.`feedback_id` = `of2`.`feedback_id` and `tat_info`.`orig_sender_user_id` = `of2`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_exam_history`
--

/*!50001 DROP TABLE IF EXISTS `latest_exam_history`*/;
/*!50001 DROP VIEW IF EXISTS `latest_exam_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `latest_exam_history` AS select `a`.`email` AS `email`,`a`.`exam_id` AS `exam_id`,`a`.`highest_possible_grade` AS `highest_possible_grade`,`a`.`percentage` AS `percentage`,`a`.`score` AS `score`,`a`.`correct` AS `correct`,`a`.`incorrect` AS `incorrect`,`a`.`record_timestamp` AS `record_timestamp` from (`is226_project`.`exam_history` `a` join (select `is226_project`.`exam_history`.`email` AS `email`,`is226_project`.`exam_history`.`exam_id` AS `exam_id`,max(`is226_project`.`exam_history`.`record_timestamp`) AS `max_record_timestamp` from `is226_project`.`exam_history` group by `is226_project`.`exam_history`.`email`,`is226_project`.`exam_history`.`exam_id`) `lat`) where `lat`.`email` = `a`.`email` and `lat`.`exam_id` = `a`.`exam_id` and `lat`.`max_record_timestamp` = `a`.`record_timestamp` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sender_recipient_master_list`
--

/*!50001 DROP TABLE IF EXISTS `sender_recipient_master_list`*/;
/*!50001 DROP VIEW IF EXISTS `sender_recipient_master_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sender_recipient_master_list` AS select `s`.`student_code` AS `sender_code`,`s`.`email` AS `sender_email`,`x`.`class_code` AS `recipient_class_code`,`x`.`class_name` AS `recipient_class_name`,`x`.`user_id` AS `recipient_code`,`x`.`teacher_email` AS `recipient_email` from (`is226_project`.`students` `s` left join (select distinct `sce`.`student_code` AS `student_code`,`c`.`class_code` AS `class_code`,`c`.`class_name` AS `class_name`,`t`.`teacher_code` AS `teacher_code`,`t`.`user_id` AS `user_id`,`t`.`email` AS `teacher_email` from ((`is226_project`.`student_class_enrollment` `sce` join `is226_project`.`classes` `c` on(`sce`.`class_code` = `c`.`class_code` and `sce`.`class_status` = 'E')) join `is226_project`.`teachers` `t` on(`t`.`teacher_code` = `c`.`teacher_code`))) `x` on(`x`.`student_code` = `s`.`student_code`)) where `x`.`teacher_email` is not null union all select `s`.`student_code` AS `student_code`,`s`.`email` AS `student_email`,'ADM0001' AS `recipient_class_code`,'admin_concerns' AS `recipient_class_name`,'ADMGRP' AS `ADMGRP`,'admingrp@grp.com' AS `admingrp@grp.com` from `is226_project`.`students` `s` union all select `t`.`teacher_code` AS `teacher_code`,`t`.`email` AS `student_email`,'ADM0001' AS `recipient_class_code`,'admin_concerns' AS `recipient_class_name`,'ADMGRP' AS `ADMGRP`,'admingrp@grp.com' AS `admingrp@grp.com` from `is226_project`.`teachers` `t` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `taker_information_table`
--

/*!50001 DROP TABLE IF EXISTS `taker_information_table`*/;
/*!50001 DROP VIEW IF EXISTS `taker_information_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `taker_information_table` AS select `u`.`user_id` AS `user_id`,`u`.`email` AS `email`,coalesce(`t`.`teacher_code`,`s`.`student_code`) AS `taker_code`,case when `t`.`teacher_code` is not null then 'T' when `s`.`student_code` is not null then 'S' else 'ND' end AS `taker_type`,case when `t`.`teacher_code` is not null then 'Teacher' when `s`.`student_code` is not null then 'Student' else 'Not Defined' end AS `taker_type_name` from ((`users` `u` left join `teachers` `t` on(`t`.`user_id` = `u`.`user_id`)) left join `students` `s` on(`s`.`user_id` = `u`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teachers_to_exam_mapping`
--

/*!50001 DROP TABLE IF EXISTS `teachers_to_exam_mapping`*/;
/*!50001 DROP VIEW IF EXISTS `teachers_to_exam_mapping`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teachers_to_exam_mapping` AS select `t`.`teacher_code` AS `teacher_code`,`u`.`user_name` AS `user_name`,`u`.`first_name` AS `first_name`,`u`.`last_name` AS `last_name`,`u`.`gender` AS `gender`,`u`.`email` AS `email`,`u`.`mobile_no` AS `mobile_no`,`c`.`class_code` AS `class_code`,`c`.`class_name` AS `class_name`,`c`.`description` AS `class_description`,`oe`.`exam_id` AS `exam_id`,`oe`.`title` AS `exam_topic`,`oe`.`description` AS `exam_description`,coalesce(`glut`.`value_name`,'undefined') AS `type_of_questions`,`oe`.`exam_type` AS `exam_type`,`oe`.`total` AS `number_of_items`,`oe`.`time_limit` AS `time_limit` from ((((`teachers` `t` join `users` `u` on(`u`.`user_id` = `t`.`user_id`)) left join `classes` `c` on(`c`.`teacher_code` = `t`.`teacher_code`)) left join `online_exam` `oe` on(`oe`.`class_code` = `c`.`class_code`)) left join `generic_look_up_tbl` `glut` on(`glut`.`value_code` = `oe`.`exam_type` and `glut`.`usr_table` = 'online_exam')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_logs_masterview`
--

/*!50001 DROP TABLE IF EXISTS `user_logs_masterview`*/;
/*!50001 DROP VIEW IF EXISTS `user_logs_masterview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_logs_masterview` AS select `ul`.`user_id` AS `user_id`,`ul`.`email` AS `email`,`u`.`user_name` AS `user_name`,`u`.`first_name` AS `first_name`,`u`.`last_name` AS `last_name`,case when `ul`.`action` = 'INSERT' then concat('Created on ',cast(date_format(`ul`.`change_date`,'%m/%d/%Y %T') as char(50) charset utf8mb4)) when `ul`.`action` = 'UPDATE' then concat('Altered on ',cast(date_format(`ul`.`change_date`,'%m/%d/%Y %T') as char(50) charset utf8mb4)) when `ul`.`action` = 'DELETE' then concat('Removed on ',cast(date_format(`ul`.`change_date`,'%m/%d/%Y %T') as char(50) charset utf8mb4)) else 'No Status' end AS `status` from ((`is226_project`.`user_logs` `ul` join (select max(`is226_project`.`user_logs`.`log_id`) AS `correct_id` from `is226_project`.`user_logs` group by `is226_project`.`user_logs`.`user_id`,`is226_project`.`user_logs`.`email`) `x` on(`x`.`correct_id` = `ul`.`log_id`)) left join `is226_project`.`users` `u` on(`u`.`user_id` = `ul`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_masterview`
--

/*!50001 DROP TABLE IF EXISTS `user_masterview`*/;
/*!50001 DROP VIEW IF EXISTS `user_masterview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_masterview` AS select `u`.`user_id` AS `user_id`,`u`.`user_name` AS `user_name`,`u`.`email` AS `email`,`u`.`first_name` AS `first_name`,`u`.`last_name` AS `last_name`,`u`.`mobile_no` AS `mobile_no`,coalesce(`g1`.`value_name`,'Prefer not to Say') AS `gender`,`u`.`gender` AS `gender_code`,`u`.`user_password` AS `user_password`,case when `a`.`admin_id` is not null then 'Admin' when `s`.`student_code` is not null then 'Student' when `t2`.`teacher_code` is not null then 'Teacher' end AS `category` from ((((`users` `u` left join `students` `s` on(`u`.`user_id` = `s`.`user_id`)) left join `teachers` `t2` on(`t2`.`user_id` = `u`.`user_id`)) left join `admin` `a` on(`a`.`email` = `u`.`email`)) left join `generic_look_up_tbl` `g1` on(`g1`.`value_code` = `u`.`gender` and `g1`.`usr_table` = 'users')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `verify_class_status`
--

/*!50001 DROP TABLE IF EXISTS `verify_class_status`*/;
/*!50001 DROP VIEW IF EXISTS `verify_class_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `verify_class_status` AS select `x`.`correct_id` AS `correct_id`,`sce`.`student_code` AS `student_code`,`sce`.`class_code` AS `class_code`,`sce`.`class_status` AS `class_status`,`s`.`email` AS `email`,`s`.`user_id` AS `user_id` from ((`is226_project`.`student_class_enrollment` `sce` join (select `sce`.`student_code` AS `student_code`,`sce`.`class_code` AS `class_code`,max(`sce`.`id`) AS `correct_id` from `is226_project`.`student_class_enrollment` `sce` group by `sce`.`student_code`,`sce`.`class_code`) `x` on(`x`.`class_code` = `sce`.`class_code` and `x`.`student_code` = `sce`.`student_code` and `x`.`correct_id` = `sce`.`id`)) join `is226_project`.`students` `s` on(`s`.`student_code` = `sce`.`student_code`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19  0:00:26
