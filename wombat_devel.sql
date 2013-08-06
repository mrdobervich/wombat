-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wombat_devel
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `assessments`
--

DROP TABLE IF EXISTS `assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grader_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `completed_assignment_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `official` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_assessments_on_grader_id` (`grader_id`),
  KEY `index_assessments_on_student_id` (`student_id`),
  KEY `index_assessments_on_completed_assignment_id` (`completed_assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessments`
--

LOCK TABLES `assessments` WRITE;
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
INSERT INTO `assessments` VALUES (10,10,10,24,NULL,NULL,'2013-08-05 04:29:57','2013-08-05 04:29:57'),(11,10,10,25,NULL,NULL,'2013-08-05 20:47:48','2013-08-05 20:47:48'),(12,10,10,22,NULL,NULL,'2013-08-05 21:54:18','2013-08-05 21:54:18'),(13,10,10,25,NULL,NULL,'2013-08-05 21:54:37','2013-08-05 21:54:37'),(14,10,10,25,NULL,NULL,'2013-08-05 21:56:40','2013-08-05 21:56:40'),(15,10,10,25,'',0,'2013-08-05 21:56:55','2013-08-05 22:21:01'),(16,10,10,26,NULL,NULL,'2013-08-05 22:47:21','2013-08-05 22:47:21'),(17,10,10,26,NULL,NULL,'2013-08-05 22:48:04','2013-08-05 22:48:04'),(18,10,10,26,NULL,NULL,'2013-08-05 22:48:46','2013-08-05 22:48:46'),(19,10,10,26,NULL,NULL,'2013-08-05 22:49:04','2013-08-05 22:49:04'),(20,10,10,26,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(21,10,10,26,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(22,10,10,26,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(23,10,10,26,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(24,10,10,26,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(25,10,10,26,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(26,10,10,26,NULL,NULL,'2013-08-05 22:49:34','2013-08-05 22:49:34'),(27,10,10,26,NULL,NULL,'2013-08-05 22:49:44','2013-08-05 22:49:44'),(28,10,10,26,NULL,NULL,'2013-08-05 22:49:52','2013-08-05 22:49:52'),(29,10,10,26,NULL,NULL,'2013-08-05 22:53:22','2013-08-05 22:53:22'),(30,10,10,26,NULL,NULL,'2013-08-05 22:54:27','2013-08-05 22:54:27'),(31,10,10,26,NULL,NULL,'2013-08-05 22:55:05','2013-08-05 22:55:05'),(32,10,10,26,NULL,NULL,'2013-08-05 22:55:31','2013-08-05 22:55:31'),(33,10,10,26,NULL,NULL,'2013-08-05 22:56:41','2013-08-05 22:56:41'),(34,10,10,27,'This is my overall comment.  Another',1,'2013-08-05 22:57:13','2013-08-05 23:00:09'),(35,10,10,27,NULL,NULL,'2013-08-06 03:21:34','2013-08-06 03:21:34');
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `due_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_assignments_on_course_id` (`course_id`),
  KEY `index_assignments_on_task_id` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (29,'',3,16,'Here it is.','2013-07-24 19:28:18','2013-07-24 19:28:18','2013-07-24 19:28:00'),(30,'',4,16,'Here it is.','2013-07-24 19:28:19','2013-07-24 19:28:19','2013-07-24 19:28:00'),(32,'homework',3,13,'woowoowoo','2013-07-24 21:48:37','2013-07-24 21:48:37','2013-07-24 21:48:00'),(34,'Homewrok',3,20,'Here\'s the assignment.','2013-07-28 22:02:35','2013-07-28 22:02:35','2013-12-28 22:02:00'),(35,'Homewrok',4,20,'Here\'s the assignment.','2013-07-28 22:02:36','2013-07-28 22:02:36','2013-12-28 22:02:00'),(36,'homework',2,44,'This is long past due.','2013-08-01 22:36:52','2013-08-01 22:36:52','2011-08-01 22:36:00'),(37,'homework',3,44,'This is long past due.','2013-08-01 22:36:52','2013-08-01 22:36:52','2011-08-01 22:36:00'),(38,'homework',4,44,'This is long past due.','2013-08-01 22:36:52','2013-08-01 22:36:52','2011-08-01 22:36:00'),(40,'homework',2,37,'This one has an assessment!','2013-08-02 18:41:26','2013-08-02 18:41:26','2013-08-02 18:40:00'),(41,'homework',3,37,'This one has an assessment!','2013-08-02 18:41:27','2013-08-02 18:41:27','2013-08-02 18:40:00'),(42,'homework',4,37,'This one has an assessment!','2013-08-02 18:41:27','2013-08-02 18:41:27','2013-08-02 18:40:00'),(45,'homework',3,31,'','2013-08-04 16:06:03','2013-08-04 16:06:03','2013-08-08 16:04:00'),(47,'',3,28,'Yoyoyo','2013-08-04 16:09:38','2013-08-04 16:09:38','2013-08-04 16:09:00'),(48,'',2,49,'Here it is.','2013-08-05 04:26:35','2013-08-05 04:26:35','2013-08-05 04:26:00'),(49,'',3,49,'Here it is.','2013-08-05 04:26:35','2013-08-05 04:26:35','2013-08-05 04:26:00'),(50,'',4,49,'Here it is.','2013-08-05 04:26:36','2013-08-05 04:26:36','2013-08-05 04:26:00'),(51,'',2,55,'Here we go.','2013-08-05 22:45:47','2013-08-05 22:45:47','2013-08-05 22:45:00'),(53,'',4,55,'Here we go.','2013-08-05 22:45:48','2013-08-05 22:45:48','2013-08-05 22:45:00'),(56,'homework',2,60,'Here are the assignment instructions.','2013-08-06 15:13:07','2013-08-06 15:13:07','2013-08-10 15:09:00');
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar_entries`
--

DROP TABLE IF EXISTS `calendar_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_entries`
--

LOCK TABLES `calendar_entries` WRITE;
/*!40000 ALTER TABLE `calendar_entries` DISABLE KEYS */;
INSERT INTO `calendar_entries` VALUES (2,1,'2013-07-15','lskdjflaksdjfasdf','fuooooooooooooo','2013-07-15 18:22:10','2013-07-15 18:22:10'),(5,1,'2013-07-15','This is the thing for today.','Another One','2013-07-15 20:45:53','2013-07-15 20:45:53'),(6,NULL,'2013-07-16','This is a test of multiple','Test of multiple','2013-07-16 22:25:39','2013-07-16 22:25:39'),(7,NULL,'2013-07-16','This is a test of multiple','Test of multiple','2013-07-16 22:28:39','2013-07-16 22:28:39'),(8,NULL,'2013-07-16','test','test','2013-07-16 22:35:43','2013-07-16 22:35:43'),(9,NULL,'2013-07-16','foooooo','FOOOo','2013-07-16 22:39:35','2013-07-16 22:39:35'),(10,NULL,'2013-07-16','foooooo','FOOOo','2013-07-16 22:41:21','2013-07-16 22:41:21'),(12,4,'2013-07-16','mooomultiple','moooooomultiple','2013-07-16 22:49:44','2013-07-16 22:49:44'),(13,3,'2013-07-16','only one','only one','2013-07-16 22:50:14','2013-07-16 22:50:14'),(15,3,'2013-07-16','ALL','ALL','2013-07-16 22:50:42','2013-07-16 22:50:42'),(16,4,'2013-07-16','ALL','ALL','2013-07-16 22:50:42','2013-07-16 22:50:42'),(19,3,'2013-07-24','<p>Here&#39;s an image from my disk.<img alt=\"screen hot here\" src=\"/ckeditor_assets/pictures/1/content_screenshot_from_2013-06-11_16_15_36.png\" style=\"height:100px; width:100px\" /></p>\r\n','image test','2013-07-24 17:33:55','2013-07-24 17:33:55'),(22,2,'2013-07-25','<p>Here we go:</p>\r\n\r\n<p>Get your new framework here (<a href=\"/ckeditor_assets/attachments/3/rails3-bootstrap-devise-cancan.pdf\">pdf</a>)</p>\r\n','Entry for whenever.','2013-07-25 02:27:14','2013-07-25 02:27:14'),(23,3,'2013-07-25','<p>Here we go:</p>\r\n\r\n<p>Get your new framework here (<a href=\"/ckeditor_assets/attachments/3/rails3-bootstrap-devise-cancan.pdf\">pdf</a>)</p>\r\n','Entry for whenever.','2013-07-25 02:27:14','2013-07-25 02:27:14'),(24,2,'2013-07-28','<p>Check the examples page about <a href=\"/pages/examples/hello_world\">your first program</a>.&nbsp; When you&#39;re done, complete the assignment.</p>\r\n','Intro to for-loops','2013-07-28 22:12:27','2013-07-28 22:12:27'),(25,3,'2013-07-28','<p>Check the examples page about <a href=\"/pages/examples/hello_world\">your first program</a>.&nbsp; When you&#39;re done, complete the assignment.</p>\r\n','Intro to for-loops','2013-07-28 22:12:27','2013-07-28 22:12:27');
/*!40000 ALTER TABLE `calendar_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_assets`
--

DROP TABLE IF EXISTS `ckeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
INSERT INTO `ckeditor_assets` VALUES (1,'screenshot_from_2013-06-11_16_15_36.png','image/png',375521,10,'User','Ckeditor::Picture',1920,1080,'2013-07-24 17:33:04','2013-07-24 17:33:04'),(2,'aruco-1_2_4.tgz','application/x-compressed-tar',74872,10,'User','Ckeditor::AttachmentFile',NULL,NULL,'2013-07-24 17:34:49','2013-07-24 17:34:49'),(3,'rails3-bootstrap-devise-cancan.pdf','application/pdf',360932,10,'User','Ckeditor::AttachmentFile',NULL,NULL,'2013-07-25 02:27:02','2013-07-25 02:27:02'),(4,'open.gif','image/gif',1664,10,'User','Ckeditor::AttachmentFile',25,25,'2013-08-06 01:06:21','2013-08-06 01:06:21');
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completed_assignments`
--

DROP TABLE IF EXISTS `completed_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completed_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `completed_task_id` int(11) DEFAULT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `current` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_completed_assignments_on_user_id` (`user_id`),
  KEY `index_completed_assignments_on_completed_task_id` (`completed_task_id`),
  KEY `index_completed_assignments_on_assignment_id` (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed_assignments`
--

LOCK TABLES `completed_assignments` WRITE;
/*!40000 ALTER TABLE `completed_assignments` DISABLE KEYS */;
INSERT INTO `completed_assignments` VALUES (1,10,NULL,7,'2013-07-22 20:08:10','2013-07-22 20:08:10',NULL),(2,10,11,7,'2013-07-22 20:12:43','2013-07-22 20:12:43',NULL),(3,10,12,5,'2013-07-22 20:18:11','2013-07-22 20:18:11',NULL),(4,10,14,9,'2013-07-23 04:31:32','2013-07-23 04:31:32',NULL),(7,10,23,36,'2013-08-01 22:37:27','2013-08-01 22:37:27',NULL),(8,NULL,NULL,NULL,'2013-08-03 17:29:50','2013-08-03 17:29:50',NULL),(9,NULL,NULL,NULL,'2013-08-03 17:42:00','2013-08-03 17:42:00',NULL),(10,NULL,NULL,NULL,'2013-08-03 17:42:55','2013-08-03 17:42:55',NULL),(12,NULL,NULL,NULL,'2013-08-03 18:17:11','2013-08-03 18:17:11',NULL),(22,10,29,40,'2013-08-03 19:56:18','2013-08-03 19:56:18',1),(24,10,34,50,'2013-08-05 04:26:57','2013-08-05 04:26:57',1),(25,10,34,48,'2013-08-05 20:47:41','2013-08-05 20:47:41',1),(26,10,35,53,'2013-08-05 22:46:55','2013-08-05 22:46:55',1),(27,10,35,51,'2013-08-05 22:57:03','2013-08-05 22:57:03',1);
/*!40000 ALTER TABLE `completed_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completed_tasks`
--

DROP TABLE IF EXISTS `completed_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completed_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `solution` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_completed_tasks_on_user_id` (`user_id`),
  KEY `index_completed_tasks_on_task_id` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed_tasks`
--

LOCK TABLES `completed_tasks` WRITE;
/*!40000 ALTER TABLE `completed_tasks` DISABLE KEYS */;
INSERT INTO `completed_tasks` VALUES (1,10,13,NULL,'2013-07-16 20:58:55','2013-07-16 20:58:55','This is my solution!'),(2,10,13,NULL,'2013-07-16 22:10:22','2013-07-16 22:10:22','Another solution!'),(3,10,12,NULL,'2013-07-16 22:17:15','2013-07-16 22:17:15','Another solution for me!'),(4,10,8,NULL,'2013-07-22 19:52:52','2013-07-22 19:52:52','hello there, this is my solution.'),(5,10,8,NULL,'2013-07-22 19:55:54','2013-07-22 19:55:54','hello there, this is my solution.'),(6,10,8,NULL,'2013-07-22 19:57:49','2013-07-22 19:57:49','hello there, this is my solution.'),(8,10,8,NULL,'2013-07-22 20:00:08','2013-07-22 20:00:08','hello there, this is my solution.'),(9,10,8,NULL,'2013-07-22 20:07:35','2013-07-22 20:07:35','This is my solution yo'),(10,10,8,NULL,'2013-07-22 20:08:10','2013-07-22 20:08:10','This is my solution yo'),(11,10,8,NULL,'2013-07-22 20:12:43','2013-07-22 20:12:43','This is my solution yo.  Another one.'),(12,10,12,NULL,'2013-07-22 20:18:11','2013-07-22 20:18:11','My solution for this guy.'),(13,10,15,NULL,'2013-07-23 04:30:58','2013-07-23 04:30:58','Here\'s my solution!'),(14,10,15,NULL,'2013-07-23 04:31:32','2013-07-23 04:31:32','Hello!'),(15,10,16,NULL,'2013-07-24 19:44:22','2013-07-24 19:44:22','for (int i = 0; i < 10; i++) {\r\n    Sysetm.out.println(\"yo\");\r\n}\r\n\r\nok!'),(16,10,16,NULL,'2013-07-24 20:39:35','2013-07-24 20:39:35','This is my solution!'),(17,10,18,NULL,'2013-07-24 20:56:58','2013-07-24 20:56:58','This is my solution!'),(22,10,20,NULL,'2013-07-28 22:04:09','2013-07-28 22:04:09','There are three problems:\r\n\r\n1).  No quotes around \'hi\'\r\n2).  No arguments inside main()\r\n3).  No semi-colon'),(23,10,44,NULL,'2013-08-01 22:37:27','2013-08-01 22:37:27','Here\'s my solution!  But it was late.'),(24,10,20,NULL,'2013-08-03 17:41:41','2013-08-03 17:41:41','ANOTHER SOLUTION'),(25,10,13,NULL,'2013-08-03 17:42:33','2013-08-03 17:42:33','FIRST SOLUTION'),(26,10,13,NULL,'2013-08-03 17:42:41','2013-08-03 17:42:41','SECOND SOLUTION'),(27,10,16,NULL,'2013-08-03 17:44:23','2013-08-03 17:44:23','Here it is!'),(28,10,37,NULL,'2013-08-03 18:26:31','2013-08-03 18:26:31','FIRST'),(29,10,37,NULL,'2013-08-03 18:26:47','2013-08-03 18:26:47','SECOND'),(30,10,37,NULL,'2013-08-03 18:26:55','2013-08-03 18:26:55','third'),(31,10,13,NULL,'2013-08-03 19:25:07','2013-08-03 19:25:07','ANOTHER ONE'),(32,21,51,NULL,'2013-08-04 16:00:50','2013-08-04 16:00:50','this is my solution.'),(33,21,28,NULL,'2013-08-04 16:40:55','2013-08-04 16:40:55','HERE\'S MY SOLUTION!'),(34,10,49,NULL,'2013-08-05 04:26:51','2013-08-05 04:26:51','This is my solution.'),(35,10,55,NULL,'2013-08-05 22:29:41','2013-08-05 22:29:41','Here it is...\r\n\r\npublic class Test {\r\n	public static void main(String[] args) {\r\n		int a = 0;\r\n		int b = 12;\r\n		int c = a + b;\r\n		System.out.println(c);\r\n	}	\r\n}\r\n\r\nThe end!'),(36,10,55,NULL,'2013-08-05 22:45:24','2013-08-05 22:45:24','This solution is stupid.');
/*!40000 ALTER TABLE `completed_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (2,'Intro Computer Science',2012,4,'2013-07-15 18:25:17','2013-07-15 18:25:17'),(3,'Intro Computer Science',2012,5,'2013-07-15 18:25:36','2013-07-15 18:25:36'),(4,'AP Computer Science',2012,2,'2013-07-16 22:43:18','2013-07-16 22:43:18');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mastery_categories`
--

DROP TABLE IF EXISTS `mastery_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mastery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `description_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mastery_categories`
--

LOCK TABLES `mastery_categories` WRITE;
/*!40000 ALTER TABLE `mastery_categories` DISABLE KEYS */;
INSERT INTO `mastery_categories` VALUES (1,'Completeness/Correctness','You have all the required elements.  Your code does what it is supposed to for all valid input cases.  Your code is bug free for edge-cases.  If requested, your code gracefully handles unexpected input or input cases.','','2013-08-02 17:59:08','2013-08-02 17:59:08'),(2,'Readability','Your code follows the formatting guidelines for whitespace and indenting.  Your code has appropriate comments for all methods, and other places where necessary.  Your code is generally free from very long lines.  Your methods and variables are well-named.','','2013-08-02 18:01:25','2013-08-02 18:01:25'),(3,'Style','You use concise, logical constructions.\r\nYou do not have superfluous code.\r\nYour code has a clear, logical ordering.\r\nEach of your methods do exactly one thing.\r\nYou do not have \"magic numbers\" (you use constants)\r\n','','2013-08-02 18:07:30','2013-08-02 18:10:51'),(4,'Design','Your code is DRY (it does not repeat itself).\r\nYou create useful helper methods.\r\nYour methods are appropriately general.\r\nYou overload methods where useful and appropriate.\r\nYou decompose the problem in a logical and efficient way.\r\nYour methods and classes are modular.','','2013-08-02 18:10:07','2013-08-02 18:10:07'),(5,'Efficiency','Your code runs reasonably efficiently for your level of knowledge.  There does not exist a more efficient solution you could have been expected to know about.','','2013-08-02 18:13:11','2013-08-02 18:13:11');
/*!40000 ALTER TABLE `mastery_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_messages_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objective_results`
--

DROP TABLE IF EXISTS `objective_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objective_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objective_id` int(11) DEFAULT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `mastery_category_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_objective_results_on_objective_id` (`objective_id`),
  KEY `index_objective_results_on_assessment_id` (`assessment_id`),
  KEY `index_objective_results_on_student_id` (`student_id`),
  KEY `index_objective_results_on_mastery_category_id` (`mastery_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objective_results`
--

LOCK TABLES `objective_results` WRITE;
/*!40000 ALTER TABLE `objective_results` DISABLE KEYS */;
INSERT INTO `objective_results` VALUES (46,40,11,10,1,NULL,NULL,'2013-08-05 20:47:49','2013-08-05 20:47:49'),(47,41,11,10,2,NULL,NULL,'2013-08-05 20:47:49','2013-08-05 20:47:49'),(48,42,11,10,3,NULL,NULL,'2013-08-05 20:47:49','2013-08-05 20:47:49'),(49,43,11,10,4,NULL,NULL,'2013-08-05 20:47:49','2013-08-05 20:47:49'),(50,44,11,10,5,NULL,NULL,'2013-08-05 20:47:49','2013-08-05 20:47:49'),(51,40,13,10,1,NULL,NULL,'2013-08-05 21:54:37','2013-08-05 21:54:37'),(52,41,13,10,2,NULL,NULL,'2013-08-05 21:54:37','2013-08-05 21:54:37'),(53,42,13,10,3,NULL,NULL,'2013-08-05 21:54:38','2013-08-05 21:54:38'),(54,43,13,10,4,NULL,NULL,'2013-08-05 21:54:38','2013-08-05 21:54:38'),(55,44,13,10,5,NULL,NULL,'2013-08-05 21:54:38','2013-08-05 21:54:38'),(56,40,14,10,1,NULL,NULL,'2013-08-05 21:56:40','2013-08-05 21:56:40'),(57,41,14,10,2,NULL,NULL,'2013-08-05 21:56:40','2013-08-05 21:56:40'),(58,42,14,10,3,NULL,NULL,'2013-08-05 21:56:40','2013-08-05 21:56:40'),(59,43,14,10,4,NULL,NULL,'2013-08-05 21:56:40','2013-08-05 21:56:40'),(60,44,14,10,5,NULL,NULL,'2013-08-05 21:56:40','2013-08-05 21:56:40'),(61,40,15,10,1,3,'','2013-08-05 21:56:55','2013-08-05 22:26:03'),(62,41,15,10,2,NULL,NULL,'2013-08-05 21:56:55','2013-08-05 21:56:55'),(63,42,15,10,3,6,'','2013-08-05 21:56:55','2013-08-05 22:26:11'),(64,43,15,10,4,NULL,NULL,'2013-08-05 21:56:55','2013-08-05 21:56:55'),(65,44,15,10,5,NULL,NULL,'2013-08-05 21:56:55','2013-08-05 21:56:55'),(66,65,16,10,1,NULL,NULL,'2013-08-05 22:47:21','2013-08-05 22:47:21'),(67,66,16,10,2,NULL,NULL,'2013-08-05 22:47:21','2013-08-05 22:47:21'),(68,67,16,10,3,NULL,NULL,'2013-08-05 22:47:21','2013-08-05 22:47:21'),(69,68,16,10,4,NULL,NULL,'2013-08-05 22:47:21','2013-08-05 22:47:21'),(70,69,16,10,5,NULL,NULL,'2013-08-05 22:47:21','2013-08-05 22:47:21'),(71,65,17,10,1,NULL,NULL,'2013-08-05 22:48:04','2013-08-05 22:48:04'),(72,66,17,10,2,NULL,NULL,'2013-08-05 22:48:04','2013-08-05 22:48:04'),(73,67,17,10,3,NULL,NULL,'2013-08-05 22:48:04','2013-08-05 22:48:04'),(74,68,17,10,4,NULL,NULL,'2013-08-05 22:48:04','2013-08-05 22:48:04'),(75,69,17,10,5,NULL,NULL,'2013-08-05 22:48:04','2013-08-05 22:48:04'),(76,65,18,10,1,NULL,NULL,'2013-08-05 22:48:46','2013-08-05 22:48:46'),(77,66,18,10,2,NULL,NULL,'2013-08-05 22:48:46','2013-08-05 22:48:46'),(78,67,18,10,3,NULL,NULL,'2013-08-05 22:48:46','2013-08-05 22:48:46'),(79,68,18,10,4,NULL,NULL,'2013-08-05 22:48:46','2013-08-05 22:48:46'),(80,69,18,10,5,NULL,NULL,'2013-08-05 22:48:46','2013-08-05 22:48:46'),(81,65,19,10,1,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(82,66,19,10,2,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(83,67,19,10,3,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(84,68,19,10,4,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(85,69,19,10,5,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(86,65,20,10,1,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(87,66,20,10,2,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(88,67,20,10,3,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(89,68,20,10,4,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(90,69,20,10,5,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(91,65,21,10,1,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(92,66,21,10,2,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(93,67,21,10,3,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(94,68,21,10,4,NULL,NULL,'2013-08-05 22:49:05','2013-08-05 22:49:05'),(95,69,21,10,5,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(96,65,22,10,1,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(97,66,22,10,2,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(98,67,22,10,3,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(99,68,22,10,4,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(100,69,22,10,5,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(101,65,23,10,1,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(102,66,23,10,2,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(103,67,23,10,3,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(104,68,23,10,4,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(105,69,23,10,5,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(106,65,24,10,1,NULL,NULL,'2013-08-05 22:49:06','2013-08-05 22:49:06'),(107,66,24,10,2,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(108,67,24,10,3,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(109,68,24,10,4,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(110,69,24,10,5,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(111,65,25,10,1,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(112,66,25,10,2,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(113,67,25,10,3,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(114,68,25,10,4,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(115,69,25,10,5,NULL,NULL,'2013-08-05 22:49:07','2013-08-05 22:49:07'),(116,65,26,10,1,NULL,'This is my comment.','2013-08-05 22:49:34','2013-08-05 22:49:44'),(117,66,26,10,2,NULL,NULL,'2013-08-05 22:49:34','2013-08-05 22:49:34'),(118,67,26,10,3,NULL,NULL,'2013-08-05 22:49:34','2013-08-05 22:49:34'),(119,68,26,10,4,NULL,NULL,'2013-08-05 22:49:34','2013-08-05 22:49:34'),(120,69,26,10,5,NULL,NULL,'2013-08-05 22:49:34','2013-08-05 22:49:34'),(121,65,27,10,1,304,'','2013-08-05 22:49:44','2013-08-05 22:49:52'),(122,66,27,10,2,NULL,NULL,'2013-08-05 22:49:45','2013-08-05 22:49:45'),(123,67,27,10,3,NULL,NULL,'2013-08-05 22:49:45','2013-08-05 22:49:45'),(124,68,27,10,4,NULL,NULL,'2013-08-05 22:49:45','2013-08-05 22:49:45'),(125,69,27,10,5,NULL,NULL,'2013-08-05 22:49:45','2013-08-05 22:49:45'),(126,65,28,10,1,NULL,NULL,'2013-08-05 22:49:52','2013-08-05 22:49:52'),(127,66,28,10,2,NULL,NULL,'2013-08-05 22:49:52','2013-08-05 22:49:52'),(128,67,28,10,3,NULL,NULL,'2013-08-05 22:49:52','2013-08-05 22:49:52'),(129,68,28,10,4,NULL,NULL,'2013-08-05 22:49:52','2013-08-05 22:49:52'),(130,69,28,10,5,NULL,NULL,'2013-08-05 22:49:52','2013-08-05 22:49:52'),(131,65,29,10,1,NULL,NULL,'2013-08-05 22:53:22','2013-08-05 22:53:22'),(132,66,29,10,2,NULL,NULL,'2013-08-05 22:53:22','2013-08-05 22:53:22'),(133,67,29,10,3,NULL,NULL,'2013-08-05 22:53:22','2013-08-05 22:53:22'),(134,68,29,10,4,NULL,NULL,'2013-08-05 22:53:22','2013-08-05 22:53:22'),(135,69,29,10,5,NULL,NULL,'2013-08-05 22:53:22','2013-08-05 22:53:22'),(136,65,30,10,1,NULL,NULL,'2013-08-05 22:54:27','2013-08-05 22:54:27'),(137,66,30,10,2,NULL,NULL,'2013-08-05 22:54:27','2013-08-05 22:54:27'),(138,67,30,10,3,NULL,NULL,'2013-08-05 22:54:27','2013-08-05 22:54:27'),(139,68,30,10,4,NULL,NULL,'2013-08-05 22:54:27','2013-08-05 22:54:27'),(140,69,30,10,5,NULL,NULL,'2013-08-05 22:54:27','2013-08-05 22:54:27'),(141,65,31,10,1,NULL,NULL,'2013-08-05 22:55:05','2013-08-05 22:55:05'),(142,66,31,10,2,NULL,NULL,'2013-08-05 22:55:05','2013-08-05 22:55:05'),(143,67,31,10,3,NULL,NULL,'2013-08-05 22:55:05','2013-08-05 22:55:05'),(144,68,31,10,4,NULL,NULL,'2013-08-05 22:55:06','2013-08-05 22:55:06'),(145,69,31,10,5,NULL,NULL,'2013-08-05 22:55:06','2013-08-05 22:55:06'),(146,65,32,10,1,NULL,NULL,'2013-08-05 22:55:31','2013-08-05 22:55:31'),(147,66,32,10,2,NULL,NULL,'2013-08-05 22:55:31','2013-08-05 22:55:31'),(148,67,32,10,3,NULL,NULL,'2013-08-05 22:55:31','2013-08-05 22:55:31'),(149,68,32,10,4,NULL,NULL,'2013-08-05 22:55:31','2013-08-05 22:55:31'),(150,69,32,10,5,NULL,NULL,'2013-08-05 22:55:31','2013-08-05 22:55:31'),(151,65,33,10,1,NULL,NULL,'2013-08-05 22:56:42','2013-08-05 22:56:42'),(152,66,33,10,2,NULL,NULL,'2013-08-05 22:56:42','2013-08-05 22:56:42'),(153,67,33,10,3,NULL,NULL,'2013-08-05 22:56:42','2013-08-05 22:56:42'),(154,68,33,10,4,NULL,NULL,'2013-08-05 22:56:42','2013-08-05 22:56:42'),(155,69,33,10,5,NULL,NULL,'2013-08-05 22:56:42','2013-08-05 22:56:42'),(156,55,34,10,1,3,'Hello.','2013-08-05 22:57:13','2013-08-05 22:57:28'),(157,56,34,10,2,NULL,NULL,'2013-08-05 22:57:13','2013-08-05 22:57:13'),(158,57,34,10,3,NULL,NULL,'2013-08-05 22:57:13','2013-08-05 22:57:13'),(159,58,34,10,4,NULL,NULL,'2013-08-05 22:57:13','2013-08-05 22:57:13'),(160,59,34,10,5,NULL,NULL,'2013-08-05 22:57:13','2013-08-05 22:57:13'),(161,55,35,10,1,NULL,NULL,'2013-08-06 03:21:34','2013-08-06 03:21:34'),(162,56,35,10,2,NULL,NULL,'2013-08-06 03:21:34','2013-08-06 03:21:34'),(163,57,35,10,3,NULL,NULL,'2013-08-06 03:21:34','2013-08-06 03:21:34'),(164,58,35,10,4,NULL,NULL,'2013-08-06 03:21:34','2013-08-06 03:21:34'),(165,59,35,10,5,NULL,NULL,'2013-08-06 03:21:34','2013-08-06 03:21:34');
/*!40000 ALTER TABLE `objective_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectives`
--

DROP TABLE IF EXISTS `objectives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objectives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) DEFAULT NULL,
  `mastery_category_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `objective_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_objectives_on_assignment_id` (`assignment_id`),
  KEY `index_objectives_on_mastery_category_id` (`mastery_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectives`
--

LOCK TABLES `objectives` WRITE;
/*!40000 ALTER TABLE `objectives` DISABLE KEYS */;
INSERT INTO `objectives` VALUES (40,48,1,NULL,'range','2013-08-05 04:26:35','2013-08-05 04:26:35'),(41,48,2,NULL,'range','2013-08-05 04:26:35','2013-08-05 04:26:35'),(42,48,3,NULL,'range','2013-08-05 04:26:35','2013-08-05 04:26:35'),(43,48,4,NULL,'range','2013-08-05 04:26:35','2013-08-05 04:26:35'),(44,48,5,NULL,'range','2013-08-05 04:26:35','2013-08-05 04:26:35'),(45,49,1,NULL,'range','2013-08-05 04:26:35','2013-08-05 04:26:35'),(46,49,2,NULL,'range','2013-08-05 04:26:36','2013-08-05 04:26:36'),(47,49,3,NULL,'range','2013-08-05 04:26:36','2013-08-05 04:26:36'),(48,49,4,NULL,'range','2013-08-05 04:26:36','2013-08-05 04:26:36'),(49,49,5,NULL,'range','2013-08-05 04:26:36','2013-08-05 04:26:36'),(50,50,1,NULL,'range','2013-08-05 04:26:36','2013-08-05 04:26:36'),(51,50,2,NULL,'range','2013-08-05 04:26:36','2013-08-05 04:26:36'),(52,50,3,NULL,'range','2013-08-05 04:26:36','2013-08-05 04:26:36'),(53,50,4,NULL,'range','2013-08-05 04:26:36','2013-08-05 04:26:36'),(54,50,5,NULL,'range','2013-08-05 04:26:36','2013-08-05 04:26:36'),(55,51,1,NULL,'range','2013-08-05 22:45:47','2013-08-05 22:45:47'),(56,51,2,NULL,'range','2013-08-05 22:45:47','2013-08-05 22:45:47'),(57,51,3,NULL,'range','2013-08-05 22:45:47','2013-08-05 22:45:47'),(58,51,4,NULL,'range','2013-08-05 22:45:47','2013-08-05 22:45:47'),(59,51,5,NULL,'range','2013-08-05 22:45:47','2013-08-05 22:45:47'),(65,53,1,NULL,'range','2013-08-05 22:45:48','2013-08-05 22:45:48'),(66,53,2,NULL,'range','2013-08-05 22:45:48','2013-08-05 22:45:48'),(67,53,3,NULL,'range','2013-08-05 22:45:48','2013-08-05 22:45:48'),(68,53,4,NULL,'range','2013-08-05 22:45:48','2013-08-05 22:45:48'),(69,53,5,NULL,'range','2013-08-05 22:45:48','2013-08-05 22:45:48'),(70,54,1,NULL,'range','2013-08-06 14:50:41','2013-08-06 14:50:41'),(71,54,2,NULL,'range','2013-08-06 14:50:41','2013-08-06 14:50:41'),(72,54,3,NULL,'range','2013-08-06 14:50:41','2013-08-06 14:50:41'),(73,54,4,NULL,'range','2013-08-06 14:50:41','2013-08-06 14:50:41'),(74,54,5,NULL,'range','2013-08-06 14:50:42','2013-08-06 14:50:42'),(75,55,1,NULL,'range','2013-08-06 14:50:42','2013-08-06 14:50:42'),(76,55,2,NULL,'range','2013-08-06 14:50:42','2013-08-06 14:50:42'),(77,55,3,NULL,'range','2013-08-06 14:50:42','2013-08-06 14:50:42'),(78,55,4,NULL,'range','2013-08-06 14:50:42','2013-08-06 14:50:42'),(79,55,5,NULL,'range','2013-08-06 14:50:42','2013-08-06 14:50:42'),(80,56,1,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08'),(81,56,2,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08'),(82,56,3,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08'),(83,56,4,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08'),(84,56,5,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08'),(85,57,1,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08'),(86,57,2,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08'),(87,57,3,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08'),(88,57,4,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08'),(89,57,5,NULL,'range','2013-08-06 15:13:08','2013-08-06 15:13:08');
/*!40000 ALTER TABLE `objectives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_on_name_and_resource_type_and_resource_id` (`name`,`resource_type`,`resource_id`),
  KEY `index_roles_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin',NULL,NULL,'2013-06-11 23:27:00','2013-06-11 23:27:00'),(2,'user',NULL,NULL,'2013-06-11 23:27:00','2013-06-11 23:27:00'),(3,'VIP',NULL,NULL,'2013-06-11 23:27:00','2013-06-11 23:27:00'),(4,'author',NULL,NULL,'2013-07-11 21:31:42','2013-07-11 21:31:42');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130611211651'),('20130611211653'),('20130611211658'),('20130613194521'),('20130613195246'),('20130712043347'),('20130712043852'),('20130715153521'),('20130715154752'),('20130715155355'),('20130715191723'),('20130715191922'),('20130715212259'),('20130715212534'),('20130716160444'),('20130716180300'),('20130716204134'),('20130722164451'),('20130722191432'),('20130724095630'),('20130724154606'),('20130724155444'),('20130802172718'),('20130802172943'),('20130802173144'),('20130802173346'),('20130802185307'),('20130803190000'),('20130806003539'),('20130806005753');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submitted_assignments`
--

DROP TABLE IF EXISTS `submitted_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submitted_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_submitted_assignments_on_user_id` (`user_id`),
  KEY `index_submitted_assignments_on_assignment_id` (`assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submitted_assignments`
--

LOCK TABLES `submitted_assignments` WRITE;
/*!40000 ALTER TABLE `submitted_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `submitted_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (15,6,13,'Task',NULL,NULL,'tags','2013-07-16 16:16:09'),(16,7,13,'Task',NULL,NULL,'tags','2013-07-16 16:16:09'),(17,8,13,'Task',NULL,NULL,'tags','2013-07-16 16:16:09'),(18,9,13,'Task',NULL,NULL,'tags','2013-07-16 16:16:09'),(19,10,13,'Task',NULL,NULL,'tags','2013-07-16 16:16:09'),(20,11,13,'Task',NULL,NULL,'tags','2013-07-16 16:16:09'),(21,12,16,'Task',NULL,NULL,'tags','2013-07-23 17:26:11'),(22,13,16,'Task',NULL,NULL,'tags','2013-07-23 17:26:11'),(23,9,16,'Task',NULL,NULL,'tags','2013-07-23 17:26:11'),(24,9,17,'Task',NULL,NULL,'tags','2013-07-23 17:38:35'),(25,14,17,'Task',NULL,NULL,'tags','2013-07-23 17:38:35'),(26,12,17,'Task',NULL,NULL,'tags','2013-07-23 17:38:35'),(27,13,17,'Task',NULL,NULL,'tags','2013-07-23 17:38:35'),(28,9,18,'Task',NULL,NULL,'tags','2013-07-23 17:51:33'),(29,14,18,'Task',NULL,NULL,'tags','2013-07-23 17:51:33'),(30,12,18,'Task',NULL,NULL,'tags','2013-07-23 17:51:33'),(31,15,18,'Task',NULL,NULL,'tags','2013-07-23 17:51:33'),(32,16,18,'Task',NULL,NULL,'tags','2013-07-23 17:51:33'),(33,17,19,'Task',NULL,NULL,'tags','2013-07-23 18:08:13'),(34,7,19,'Task',NULL,NULL,'tags','2013-07-23 18:08:13'),(35,18,20,'Task',NULL,NULL,'tags','2013-07-25 17:15:09'),(36,14,20,'Task',NULL,NULL,'tags','2013-07-25 17:15:09'),(37,19,21,'Task',NULL,NULL,'tags','2013-07-25 17:20:12'),(38,14,22,'Task',NULL,NULL,'tags','2013-07-25 17:22:35'),(39,20,23,'Task',NULL,NULL,'tags','2013-07-25 17:26:03'),(40,21,23,'Task',NULL,NULL,'tags','2013-07-25 17:26:03'),(41,14,23,'Task',NULL,NULL,'tags','2013-07-25 17:26:03'),(42,22,24,'Task',NULL,NULL,'tags','2013-07-25 17:30:12'),(43,23,24,'Task',NULL,NULL,'tags','2013-07-25 17:30:12'),(44,24,25,'Task',NULL,NULL,'tags','2013-07-25 17:33:25'),(45,25,25,'Task',NULL,NULL,'tags','2013-07-25 17:33:25'),(46,26,26,'Task',NULL,NULL,'tags','2013-07-25 17:49:50'),(47,22,26,'Task',NULL,NULL,'tags','2013-07-25 17:49:50'),(48,27,26,'Task',NULL,NULL,'tags','2013-07-25 17:49:50'),(49,26,27,'Task',NULL,NULL,'tags','2013-07-25 17:52:41'),(50,22,27,'Task',NULL,NULL,'tags','2013-07-25 17:52:41'),(51,27,27,'Task',NULL,NULL,'tags','2013-07-25 17:52:41'),(52,28,28,'Task',NULL,NULL,'tags','2013-07-25 17:57:30'),(53,27,28,'Task',NULL,NULL,'tags','2013-07-25 17:57:30'),(54,26,28,'Task',NULL,NULL,'tags','2013-07-25 17:57:30'),(55,26,29,'Task',NULL,NULL,'tags','2013-07-25 18:03:19'),(56,29,29,'Task',NULL,NULL,'tags','2013-07-25 18:03:19'),(57,30,29,'Task',NULL,NULL,'tags','2013-07-25 18:03:19'),(59,27,29,'Task',NULL,NULL,'tags','2013-07-25 18:03:19'),(60,26,30,'Task',NULL,NULL,'tags','2013-07-25 18:04:59'),(61,29,30,'Task',NULL,NULL,'tags','2013-07-25 18:04:59'),(62,30,30,'Task',NULL,NULL,'tags','2013-07-25 18:04:59'),(64,27,30,'Task',NULL,NULL,'tags','2013-07-25 18:04:59'),(65,20,31,'Task',NULL,NULL,'tags','2013-07-25 18:08:35'),(66,22,32,'Task',NULL,NULL,'tags','2013-07-25 18:11:35'),(67,27,32,'Task',NULL,NULL,'tags','2013-07-25 18:11:35'),(68,22,33,'Task',NULL,NULL,'tags','2013-07-25 18:12:38'),(69,27,33,'Task',NULL,NULL,'tags','2013-07-25 18:12:38'),(70,30,34,'Task',NULL,NULL,'tags','2013-07-25 18:14:02'),(71,27,34,'Task',NULL,NULL,'tags','2013-07-25 18:14:02'),(72,26,35,'Task',NULL,NULL,'tags','2013-07-25 18:15:31'),(73,22,35,'Task',NULL,NULL,'tags','2013-07-25 18:15:31'),(74,27,35,'Task',NULL,NULL,'tags','2013-07-25 18:15:31'),(75,28,36,'Task',NULL,NULL,'tags','2013-07-25 18:17:08'),(76,27,36,'Task',NULL,NULL,'tags','2013-07-25 18:17:08'),(77,28,37,'Task',NULL,NULL,'tags','2013-07-25 18:34:03'),(78,27,37,'Task',NULL,NULL,'tags','2013-07-25 18:34:03'),(79,22,38,'Task',NULL,NULL,'tags','2013-07-25 18:38:08'),(80,27,38,'Task',NULL,NULL,'tags','2013-07-25 18:38:08'),(81,28,39,'Task',NULL,NULL,'tags','2013-07-25 18:40:49'),(82,27,39,'Task',NULL,NULL,'tags','2013-07-25 18:40:49'),(83,22,39,'Task',NULL,NULL,'tags','2013-07-25 18:40:49'),(85,6,41,'Task',NULL,NULL,'tags','2013-07-25 18:50:34'),(86,33,41,'Task',NULL,NULL,'tags','2013-07-25 18:50:34'),(87,30,41,'Task',NULL,NULL,'tags','2013-07-25 18:50:34'),(89,35,41,'Task',NULL,NULL,'tags','2013-07-25 18:50:34'),(90,36,42,'Task',NULL,NULL,'tags','2013-07-25 18:52:37'),(91,27,42,'Task',NULL,NULL,'tags','2013-07-25 18:52:37'),(92,37,42,'Task',NULL,NULL,'tags','2013-07-25 18:52:37'),(93,28,43,'Task',NULL,NULL,'tags','2013-07-25 18:54:18'),(94,27,43,'Task',NULL,NULL,'tags','2013-07-25 18:54:18'),(95,20,44,'Task',NULL,NULL,'tags','2013-07-25 18:57:19'),(96,21,44,'Task',NULL,NULL,'tags','2013-07-25 18:57:19'),(97,14,44,'Task',NULL,NULL,'tags','2013-07-25 18:57:19'),(98,28,45,'Task',NULL,NULL,'tags','2013-07-25 18:59:01'),(99,27,45,'Task',NULL,NULL,'tags','2013-07-25 18:59:01'),(100,26,46,'Task',NULL,NULL,'tags','2013-07-25 19:01:46'),(101,27,46,'Task',NULL,NULL,'tags','2013-07-25 19:01:46'),(102,18,47,'Task',NULL,NULL,'tags','2013-07-25 19:05:45'),(103,14,47,'Task',NULL,NULL,'tags','2013-07-25 19:05:45'),(105,28,47,'Task',NULL,NULL,'tags','2013-07-25 19:06:21'),(106,28,48,'Task',NULL,NULL,'tags','2013-07-25 19:08:11'),(107,27,48,'Task',NULL,NULL,'tags','2013-07-25 19:08:11'),(108,20,49,'Task',NULL,NULL,'tags','2013-07-25 19:10:15'),(109,14,49,'Task',NULL,NULL,'tags','2013-07-25 19:10:15'),(110,38,49,'Task',NULL,NULL,'tags','2013-07-25 19:10:15'),(111,20,50,'Task',NULL,NULL,'tags','2013-07-25 19:14:49'),(112,39,50,'Task',NULL,NULL,'tags','2013-07-25 19:14:49'),(113,38,51,'Task',NULL,NULL,'tags','2013-07-25 19:20:42'),(114,26,51,'Task',NULL,NULL,'tags','2013-07-25 19:20:42'),(115,40,51,'Task',NULL,NULL,'tags','2013-07-25 19:20:42'),(116,26,52,'Task',NULL,NULL,'tags','2013-07-25 19:27:44'),(117,22,52,'Task',NULL,NULL,'tags','2013-07-25 19:27:44'),(118,27,52,'Task',NULL,NULL,'tags','2013-07-25 19:27:44'),(119,2,52,'Task',NULL,NULL,'tags','2013-07-25 19:27:44'),(120,20,53,'Task',NULL,NULL,'tags','2013-07-25 19:31:30'),(121,14,53,'Task',NULL,NULL,'tags','2013-07-25 19:31:30'),(122,41,53,'Task',NULL,NULL,'tags','2013-07-25 19:31:30'),(123,27,54,'Task',NULL,NULL,'tags','2013-07-25 19:36:09'),(124,22,54,'Task',NULL,NULL,'tags','2013-07-25 19:36:09'),(125,42,55,'Task',NULL,NULL,'tags','2013-07-25 19:39:29'),(126,38,55,'Task',NULL,NULL,'tags','2013-07-25 19:39:29'),(127,20,55,'Task',NULL,NULL,'tags','2013-07-25 19:39:29'),(128,14,55,'Task',NULL,NULL,'tags','2013-07-25 19:39:29'),(129,40,56,'Task',NULL,NULL,'tags','2013-07-25 19:41:57'),(130,41,56,'Task',NULL,NULL,'tags','2013-07-25 19:41:57'),(131,39,56,'Task',NULL,NULL,'tags','2013-07-25 19:41:57'),(132,27,56,'Task',NULL,NULL,'tags','2013-07-25 19:41:57'),(133,40,57,'Task',NULL,NULL,'tags','2013-07-25 19:47:11'),(134,27,57,'Task',NULL,NULL,'tags','2013-07-25 19:47:11'),(135,7,57,'Task',NULL,NULL,'tags','2013-07-25 19:47:11'),(136,2,57,'Task',NULL,NULL,'tags','2013-07-25 19:47:11'),(137,28,58,'Task',NULL,NULL,'tags','2013-07-25 19:55:02'),(138,23,58,'Task',NULL,NULL,'tags','2013-07-25 19:55:02'),(139,7,58,'Task',NULL,NULL,'tags','2013-07-25 19:55:02'),(140,14,40,'Task',NULL,NULL,'tags','2013-07-28 21:22:54'),(141,20,40,'Task',NULL,NULL,'tags','2013-07-28 21:22:54'),(142,43,40,'Task',NULL,NULL,'tags','2013-07-28 21:22:54'),(143,27,40,'Task',NULL,NULL,'tags','2013-07-28 21:22:54'),(144,21,40,'Task',NULL,NULL,'tags','2013-07-28 21:22:54'),(145,40,29,'Task',NULL,NULL,'tags','2013-07-28 21:26:36'),(146,40,30,'Task',NULL,NULL,'tags','2013-07-28 21:27:02'),(147,28,41,'Task',NULL,NULL,'tags','2013-07-28 21:27:44');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'intro'),(2,'loops'),(3,'for'),(4,'application'),(5,'difficulty'),(6,'short_project'),(7,'useful'),(8,'library'),(9,'design'),(10,'parsing'),(11,'fileio'),(12,'class'),(13,'toString'),(14,'explain'),(15,'static_methods'),(16,'inheritance'),(17,'strings'),(18,'common_mistakes'),(19,'println'),(20,'tracing'),(21,'classic'),(22,'math_library'),(23,'user_input'),(24,'boolean'),(25,'testing'),(26,'mathy'),(27,'method'),(28,'if-statement'),(29,'monte_carlo'),(30,'random'),(31,'accumulator_pattern'),(32,'5'),(33,'fun'),(34,'if-statements'),(35,'game'),(36,'recursion'),(37,'string'),(38,'for-loop'),(39,'mod'),(40,'accumulator'),(41,'while-loop'),(42,'nested-loops'),(43,'scope');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8_unicode_ci,
  `difficulty` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (13,'CSV parser','Create an object to parse CSV files','A CSV (comma separated values) file is a common simple format for storing information.  For example, let\'s say we have several users and about each user we want to store their name, email address and id number.  A CSV file to do this might look like this:\r\n\r\n<code>\r\nname, email, id\r\nname1, email1@example.com, 12345\r\nname2, email2@example.com, 12345\r\nname3, email3@example.com, 12345\r\n</code>\r\n\r\nHere we have 4 lines in the file.  The first line is the \"headers\" line which gives you the names for each of your columns.  After that, each new line is information for a new person.\r\n\r\nYour job is to design and create a class which makes it as easy as possible to get the information out of a file like this.  For example, here is one way your class could work:\r\n\r\n<code>\r\nCSV data = CSV.parseFile(\"your_data.txt\");\r\n\r\nfor (int i = 0; i < data.size(); i++) {\r\n    System.out.println( data.get(i, \"name\")  );\r\n}\r\n</code>\r\n\r\nThis code parses a text file, and then provides a simple getter method to get a particular column name from a particular row.  It also provides a .size() method for knowing how much data there is.  One awkward part about this is your .get() method would have to return only one data type (like String), which would mean data.get(i, \"id\") would also return a String.\r\n\r\nYou are free to create whatever methods or even other objects you think are best for solving the problem of parsing a csv file and making the resulting data easy to access.',6,'2013-07-16 16:16:09','2013-07-23 17:26:58',NULL),(16,'Simple Time object','You will create a simple object to represent a time','Write a new Time class to represent a time of day.  Your time class should have fields for the hour, minute, and second.  It should have a constructor which takes those three parameters, as well as getter and setter methods for each field.  Create a .toString() method which will display the time.\r\n\r\nYour code should work as follows\r\n\r\n<code>\r\nTime time1 = new Time(1, 10, 0);		// represents 1:10 in the morning\r\nTime time2 = new Time(13, 22, 34);  	// represents 13:22:34, or 1:22:34pm\r\n\r\nint hour = time1.getHour();\r\nint seconds = time1.getSeconds();\r\nint minutes = time1.getMinutes();\r\n\r\ntime2.setSeconds(0);				// time2 is now 13:22:00\r\n\r\nSystem.out.println(time1);			// this should display \"1:10:00\"\r\n</code>\r\n\r\nIt\'s up to you how you want to handle invalid times.  For example, if someone constructs a time object with a negative number, or with a number which is too large to be valid.  Whatever you decide, add a comment at the top of your class explaining your choice.',3,'2013-07-23 17:26:10','2013-07-23 17:26:10',NULL),(17,'Time class design question','You will discuss several options for implementing a Time class','Say you\'ll be creating a Time class to represent the current time.  You are required to provide a way for your class to display its time in both 24-hour time and 12-hour time.  For example, 14:23:10 in 24-hour time is the same as 2:23:10pm in 12-hour time.  You could do this with a single method and \"mode\" which tells the time what kind of time it is.  You could do this with multiple display methods.  You may also want to consider how your solutions support a toString method (or don\'t).\r\n\r\n(1)  Describe, in detail, two different approaches to solving this problem.  Be sure to explain what fields your class will have, and what the fields represent.  Be sure to explain what method(s) you will use to display each format of time, and how they will work.\r\n\r\n(2)  Explain which approach you think is better and why.  Remember to discuss the concepts of good design (flexibility, extensibility, modularity, etc.).',5,'2013-07-23 17:38:35','2013-07-23 17:38:35',NULL),(18,'Time class design question II','A short question about design for a Time class','Java already provides a Time class in the java.util package.  It does a whole lot of stuff you want to do with Time (displays it, lets you add and subtract times from each other, etc.).  \r\n\r\nYou wish to implement a way of displaying the approximate distance between two times in words.  This will be used for a website where users want to see approximately how much time they have before an event happens.  \r\n\r\nFor example, \r\nthe distance from 		3:10:00 to 3:20:12 	is	 \"about ten minutes\".\r\nThe distance from		3:10:23 to 3:10:55 	is 	\"32 seconds\".\r\nThe distance from 		3:10:23 to 5:55:55 	is	\"about 3 hours\".\r\n\r\nHere are two choices for how you might implement this...\r\n\r\n(1)  Extend Java\'s Time class to create a new class, ETime.  Implement a method distanceToTimeInWords() which takes another ETime object as a parameter and displays the distance between those two times in words.\r\n\r\n(2)  Create (or add to) a library class called Helpers.  Create a static method distanceBetweenTimesInWords() which takes two Time objects as parameters and displays the distance between them in words.\r\n\r\nExplain/discuss possible advantages and disadvantages of each implementation (they both have potential advantages and disadvantages).  Think about the different possible circumstances in which you might use this functionality.  Think about modularity and extensibility.  Can you suggest any improvements or other helper methods/classes you would consider if you were creating this functionality?',7,'2013-07-23 17:51:33','2013-07-23 17:51:33',NULL),(19,'distance_to_time_in_words','You will create a method which convertes the distance between two times to a String','Assume you have a Time class which stores a time in 24-hour format.  It provides getter and setter methods for hour, minute, and second.  Your task is to create a static method (the declaration of which is below) to display the distance between two times in words.\r\n\r\nFor example, \r\nthe distance from 		3:10:00 to 3:20:12 	is	 \"about ten minutes\".\r\nThe distance from		3:10:23 to 3:10:55 	is 	\"32 seconds\".\r\nThe distance from 		3:10:23 to 5:55:55 	is	\"about 3 hours\".\r\n\r\nDETAILS:\r\n\r\n1.  Here is what your method should look like\r\n<code>\r\npublic class Helper {\r\n	public static void distanceBetweenTimesInWords(Time t1, Time t2) {\r\n		// display the distance between t1 and t2 in words\r\n	}\r\n}\r\n</code>\r\n\r\n2.  The output:\r\n\r\n\"about\" v.s. \"exactly\" - If the two times only different in seconds, or only different in minutes, or only differ in hours, then you will be displaying an exact time difference.  \r\n\r\nFor example:\r\n\r\nThe distance from	13:22:10	to	13:22:23	is 	\"exactly 13 seconds\"\r\nThe distance from	13:22:10	to	13:34:10	is	\"exactly 12 minutes\"\r\nThe distance from	13:22:10	to	11:22:10	is	\"exactly 2 hours\"\r\n\r\nIf two times differ in more than one category (e.g. they differ in both hours and seconds, or minutes and seconds, or hours and minutes), then you will be rounding the less-important time measurement to add into the larger one, and displaying \"about xxxx whatever\" where xxxx is a number.\r\n\r\nFor example:\r\n\r\nThe distance from	13:22:10	to	14:23:10	is	\"about 1 hour\"\r\nThe distance from	13:22:10	to	14:59:10	is	\"about 2 hours\"\r\nThe distance from	13:22:10	to	13:00:11	is	\"about 22 minutes\"\r\nThe distance from	13:22:10	to	13:00:10	is	\"exactly 22 minutes\"\r\n\r\nCreate the method I have just described.  Because this is a distance it doesn\'t matter which time is 1st or 2nd in the parameter list.  Bonus points if you handle the pluralization correctly in your display. ',6,'2013-07-23 18:08:13','2013-07-23 18:08:13',NULL),(20,'Common mistakes','Identifying some common mistakes','The following program has 3 mistakes.  Explain what each one is.\r\n\r\n<code>\r\npublic class Test \r\n{\r\n    public static void main() \r\n    {\r\n        System.out.println(hi)\r\n    }\r\n}\r\n</code>',0,'2013-07-25 17:15:09','2013-07-25 17:15:09',NULL),(21,'Initials','Use print statements to make your initials','Use println statements to make your initials out of * characters.  For example, my initials are DD, so I want the result of my program to look something like this:\r\n\r\n<pre>\r\n*    *          *    *\r\n*       *       *       *\r\n*        *      *        *\r\n*        *      *        *\r\n*       *       *       *\r\n*    *          *    *\r\n</pre>',1,'2013-07-25 17:20:12','2013-07-25 17:20:12',NULL),(22,'Explaining { }','Explain when to use { }','Explain in your own words when to use the squiggly braces { }.  Explain how you think about them.  Provide several code examples illustrating different situations when you might use them.',1,'2013-07-25 17:22:35','2013-07-25 17:22:35',NULL),(23,'An important idiom','What does this important code segment do?','Consider the following code.\r\n\r\n<code>\r\nint a, b, t;\r\na = 3;\r\nb = 5;\r\n\r\nt = a;\r\na = b;\r\nb = t;\r\n</code>\r\n\r\n1).  Explain what lines 1-3 are doing.\r\n2).  Explain what lines 5-7 are doing.\r\n3).  What are the values of a, b, and t when the code finishes running?',1,'2013-07-25 17:26:03','2013-07-25 17:26:03',NULL),(24,'Checking a math identity','You will use the Math library to check something','1.  Write a program that uses Math.sin() and Math.cos() to check that the value of sin(2θ) + cos(2θ) is approximately 1 for any θ.  In particular, your program should prompt the user to enter a value for θ, compute sin(2θ) + cos(2θ) and display the value.\r\n\r\n2.  In a comment, explain why the values not always exactly 1',2,'2013-07-25 17:30:12','2013-07-25 17:30:12',NULL),(25,'Simplifying boolean expressions','Simplify some boolean expressions','Suppose that a and b are boolean values.  Write an equivalent boolean expression that is as simple as possible:\r\n1.  (!(a < b) && !(a > b))\r\n2.  (!(a && b) && (a || b)) || ((a && b) || !(a || b))\r\n3.  Write your own complex boolean expression using a and b, which is equivalent to a',4,'2013-07-25 17:33:25','2013-07-25 17:33:25',NULL),(26,'Number of solutions','Write a method which gives the # of solutions to a quadratic','Write a static method called numberOfSolutions() which takes the coefficients of a quadratic equation as parameters.  It should return the number of solutions that equation has.\r\n\r\nFor example...\r\n<code>\r\nSystem.out.println( numberOfSolutions(2, 3, 4) );     // gives # of solutions to 2x^2 + 3x + 4 = 0.  Displays 0 because this equation has 0 real solutions.\r\nSystem.out.println( numberOfSolutions(-1, 2, 0) );    // gives # of solutions to -x^2 + 2x = 0.  Displays 2 because this equation has 2 real solutions.\r\nSystem.out.println( numberOfSolutions(3, 6, 2) );     // gives # of solutions to 3x^2 + 6x + 2 = 0.  Displays 1 because this equation has 1 real solutions.\r\n</code>\r\n\r\nHint:  Think about the quadratic formula.  What part of the quadratic formula tells you how many solutions the equation will have?  Make a test that involves that part of the formula.',5,'2013-07-25 17:49:50','2013-07-25 17:50:10',NULL),(27,'Full quadratic equation','Write a complete program that performs the quadratic equation','Write a method which takes the coefficients a, b, and c for a quadratic equation as parameters.  It should display the solutions for the quadratic equation.  Specifically....\r\n\r\n- If the equation has no real solutions it should display:  \"no real solutions\"\r\n- If the equation has one solution, it should display it\r\n- If the equation has two solutions, it should display \"#### and ####\" where #### are the numerical solutions.',5,'2013-07-25 17:52:41','2013-07-25 17:52:41',NULL),(28,'isATriangle()','Write a method to test if 3 side lengths could form a triangle.','The side lengths 3, 4, 5 form a right triangle.  Think for a moment:  What kind of triangle might the side lengths 3, 3, 10 form?\r\n\r\nThe answer is that they can\'t form a triangle because 10 is larger than both the other side lengths put together (imagine this as a diagram).\r\n\r\nWrite a method called isATriangle() which takes 3 integer arguments and returns false if any one of them is greater than or equal to the sum of the other two.  Otherwise it should return false.  This will test whether the three numbers could be the lengths of the sides of some triangle.',4,'2013-07-25 17:57:30','2013-07-25 17:57:30',NULL),(29,'Probability of a triangle #2','Write a program to approximate the probability that 3 random numbers between 0 and 1 could be a triangle.','In this problem you will write a program to answer the following question:  \r\n\r\n	\"I have a stick whose length is 1.  If I break it in two random places, I will have 3 pieces.  What is the probability the pieces can form a triangle?\"\r\n\r\nTo do this:\r\n	- write a method called isATriangle() which takes 3 side lengths as input and returns true or false.\r\n	- create a loop which will randomly generate valid side-lengths according to the process I described above.\r\n	- test each set of side lengths to see if it\'s a triangle.\r\n	- the final probability will be (# of side-lengths that were triangles) / (total # of tests)\r\n\r\nNOTE:  It will not work to generate 3 random numbers between 0 and 1 as your side lengths.  Think carefully about why not.',7,'2013-07-25 18:03:19','2013-07-28 21:26:36',NULL),(30,'Probability of a triangle #1','What is the probability 3 random numbers are a triangle?','In this problem you will write a program to answer the following question:  \r\n\r\n	\"I have 3 sticks whose lengths are randomly chosen between 0 and 1.  What is the probability the pieces can form a triangle?\"\r\n\r\nTo do this:\r\n	- write a method called isATriangle() which takes 3 side lengths as input and returns true or false.\r\n	- create a loop which will randomly generate valid side-lengths according to the process I described above.\r\n	- test each set of side lengths to see if it\'s a triangle.\r\n	- the final probability will be (# of side-lengths that were triangles) / (total # of tests)',6,'2013-07-25 18:04:59','2013-07-28 21:27:02',NULL),(31,'Code tracing practice','Simple code tracing practice','What is the value of a after each code segment completes?\r\n\r\n1.\r\n<code>\r\nint a = 1;\r\na = a + a;\r\na = a + a;\r\na = a + a;\r\n</code>\r\n\r\n2.\r\n<code>\r\nint a = true;\r\na = !a;\r\na = !a;\r\na = !a;\r\n</code>\r\n\r\n3.\r\n<code>\r\nint a = 2;\r\na = a * a;\r\na = a * a;\r\na = a * a;\r\n</code>',1,'2013-07-25 18:08:35','2013-07-25 18:08:35',NULL),(32,'2d distance','Write a method to calculate 2d distance','Write a method which takes 4 doubles as input which represent coordinates (x1, y1) and (x2, y2) of two points.  It should return the distance between them.\r\n\r\nFor example:\r\n<code>\r\n	int d = distance(0, 0, 5, 0);        // d is 5\r\n	d = distance(1, 1, 2, 2);		  // d is 1.4142\r\n</code>',3,'2013-07-25 18:11:35','2013-07-25 18:11:35',NULL),(33,'3d distance','Write a method to calculate 3d distance','Write a method which takes 6 doubles as input which represent coordinates (x1, y1, z1) and (x2, y2, z2) of two points.  It should return the distance between them.\r\n',3,'2013-07-25 18:12:38','2013-07-25 18:12:38',NULL),(34,'Better random','Write a function that gives a random number between a and b','Write a method called random() that takes two int values a and b and returns a random integer between a and b (including a, but not including b).',3,'2013-07-25 18:14:02','2013-07-25 18:14:02',NULL),(35,'A simple mathematical function','Write a math function','Write a program that takes a double, t, as a parameter.  It should print the value of sin(2t) + sin(3t)',3,'2013-07-25 18:15:31','2013-07-25 18:15:31',NULL),(36,'Spring season','A method to test if a date is in the spring season','Write a method isSpringSeason() that takes two int values m and d as parameters.  It should return true if day d of month m is between March 20 (m = 3, d =20) and June 20 (m = 6, d = 20), false otherwise. ',3,'2013-07-25 18:17:08','2013-07-25 18:17:08',NULL),(37,'Order check','Check if 3 values are strictly ascending or descending','Write a method that takes three double values x, y, and z as parameters.  It should return true if the values are strictly ascending or descending (x < y < z or x > y > z), and false otherwise. ',3,'2013-07-25 18:34:03','2013-07-25 18:34:03',NULL),(38,'Max of 3, max of 4','Find the maximum value of 3 numbers and 4 numbers','You know that using the Math library, you can find the maximum of 2 numbers like this\r\n<code>\r\nint max = Math.max(a, b);      // assume a and b are already initialized.  max is now equal to the larger one.\r\n</code>\r\n\r\n1.  Write a method called maxOfThree() which takes 3 ints as inputs and returns the largest.  (hint:  Use Math.max several times).\r\n2.  Write a method called maxOfFour() which takes 4 ints as inputs and returns the largest.  (same hint)',4,'2013-07-25 18:38:08','2013-07-25 18:38:08',NULL),(39,'Three sort','Write a program which sorts three values','Write a method which takes 3 integer values as inputs.  It should display the three values in ascending order.  (Hint:  use Math.max() and Math.min()).',4,'2013-07-25 18:40:49','2013-07-25 18:40:49',NULL),(40,'Failed swap','Explain why a promising idea won\'t work','It\'s often useful to be able to swap the value of two variables.  I have written a program to do this below, but it won\'t work.\r\n\r\n<code>\r\npublic class Fail {\r\n	public static void main(String[] args) {\r\n		int c = 5, d = 2;\r\n		swap(c, d);\r\n		System.out.println(\"c is \" + c + \" and d is \" + d );\r\n	}\r\n	\r\n	// swaps the values of a and b\r\n	public static void swap(int a, int b) {\r\n		int t;\r\n		t = a;\r\n		a = b;\r\n		b = t;\r\n	}\r\n}\r\n</code>\r\n\r\nClearly explain why swap fails.',5,'2013-07-25 18:45:09','2013-07-28 21:22:54',NULL),(41,'Small guessing game','Write a small guessing game','Consider the following game.  Alice writes down two integers between 0 and 100 on two cards.  Bob gets to select one of the two cards and see its value.  After looking at the value, Bob chooses one of them.  If he chooses the card with the largest value, he wins; otherwise he loses. \r\n\r\nWrite a program which will let a user play this game.  It should:\r\n	- Generate two random numbers for the card values\r\n	- Prompt the user to choose one to see & display its value\r\n	- Prompt the user to pick a card.\r\n	- Display the value of both cards and tell them whether they\'ve won or lost.\r\n\r\nTo make the game more fun, put it inside a loop that lets the user play multiple times.  After each game, tell them how many games they\'ve won and lost.\r\n\r\n(By the way, there\'s a strategy to guarantee that you win more than half the time at this game).',3,'2013-07-25 18:50:34','2013-07-28 21:27:44',NULL),(42,'Fibonacci word','Write a method to display fibonacci words','Write a method f() that prints the Fibonacci word of order 0 through 10. f(0) = \"a\", f(1) = \"b\", f(2) = \"ba\", f(3) = \"bab\", f(4) = \"babba\", and in general f(n) = f(n-1) followed by f(n-2). Use string concatenation.\r\n\r\nTry to write both a recursive solution and a non-recursive solution.',6,'2013-07-25 18:52:37','2013-07-25 18:52:37',NULL),(43,'Three equal','decide if three values are all equal','Write a method allEqual() which takes three integer arguments.  It should return true if they\'re all equal, false otherwise.',2,'2013-07-25 18:54:18','2013-07-25 18:54:18',NULL),(44,'Integer division','Understand integer division','Consider the following\r\n\r\n<code>\r\nint threeInt = 3;\r\nint fourInt = 4;\r\ndouble threeDouble = 3;\r\ndouble fourDouble = 4;\r\n\r\nSystem.out.println( threeInt / fourInt );\r\nSystem.out.println( threeDouble / fourInt );\r\nSystem.out.println( threeInt / fourDouble );\r\nSystem.out.println( threeDouble / fourDouble );\r\n</code>\r\n\r\n1.  What will each display?\r\n2.  Summarize in your own words when integer division will occur and when it won\'t.',2,'2013-07-25 18:57:19','2013-07-25 18:57:19',NULL),(45,'Add to 10?','A method which determines if the inputs add to 10','Write a method which takes 3 integers as inputs and returns true if they add to 10 and false otherwise.',2,'2013-07-25 18:59:01','2013-07-25 18:59:01',NULL),(46,'Area of a triangle','Use Heron\'s formula to compute the area of a triangle','Write a method called triangleArea() which takes 3 doubles as parameters.  It should compute and return the area of the triangle using Heron\'s formula (http://en.wikipedia.org/wiki/Heron%27s_formula).',3,'2013-07-25 19:01:46','2013-07-25 19:01:46',NULL),(47,'Incorrect if-statements','Id what\'s wrong with the if-statements','What (if anything) is wrong with each if-statement?\r\n\r\n1.  if (a > b) then c = 0;\r\n2.  if a > b { c = 0; }\r\n3.  if (a > b) c = 0;\r\n4.  if (a > b) c = 0 else b = 0;',1,'2013-07-25 19:05:45','2013-07-25 19:06:21',NULL),(48,'inRange()','Write a method that says whether a number is in a range','Write a method inRange(a, b, c) which will test whether b< a < c.  In other words, it will test whether a is strictly between b and c.  It should return true if it is, false otherwise.',3,'2013-07-25 19:08:11','2013-07-25 19:08:11',NULL),(49,'For loop tracing','trace these for-loops','What will the value of j be after each of the following is executed?\r\n\r\n1.  for (int i = 0, j = 0; i < 10; i++) j += i;\r\n2.  for (int i = 0, j = 1; i < 10; i++) j += j;\r\n3.  for (int j = 0; j < 10; j++) j += j;',4,'2013-07-25 19:10:15','2013-07-25 19:10:15',NULL),(50,'Tricky code tracing','Trace this code','1.  What is the value of m and n after executing the following code?  (do this without a computer!)\r\n<code>\r\nint n = 123456789;\r\nint m = 0;\r\nwhile (n != 0) {\r\n	m = (10 * m) + (n % 10);\r\n	n = n / 10;\r\n}\r\n</code>\r\n\r\n2.  What does this code print out?  (Do this without a computer!)\r\n<code>\r\nint f = 0, g = 1;\r\nfor (int i = 0; i <= 15; i++) {\r\n	System.out.println(f);\r\n	f = f + g;\r\n	g = f - g;\r\n}\r\n</code>',6,'2013-07-25 19:14:49','2013-07-25 19:14:49',NULL),(51,'A convergent sum','Write a loop to approximate a convergent sum...','The sum 1/1 + 1/4 + 1/9 + 1/16 + ... + 1/(N^2) converges to a π^2 / 6 as N grows to infinity.  This means that as N gets larger, and you have more terms in the sum, the result gets closer and closer to π^2 / 6.\r\n\r\nWrite a loop which will compute this series when N = 1000.',5,'2013-07-25 19:20:42','2013-07-25 19:20:42',NULL),(52,'Computing sin(x) and cos(x)','Write methods to compute sin(x) and cos(x)','Ever wonder how calculators find the values of sin(x) and cos(x)?  Well, this probably isn\'t it.  But it\'s something similar.\r\n\r\nHere is one way to compute the sine and cosine of a value x\r\n\r\nsin(x) = x - x^3 / 3! + x^5 / 5! - x^7 / 7! + ...\r\ncos(x) = 1 - x^2 / 2! + x^4 / 4! - x^6 / 6! + ....\r\n\r\nIf you could compute the entire infinite sum, that would be the exact answer.  As you know, calculators only give you an approximation, so that\'s what you\'ll do.\r\n\r\n1.  Write a method called sin which takes an argument x.  It should compute the sum for sine to 100000 terms and return the result.\r\n2.  Write a method called cos which takes an argument x.  It should compute the sum for cosine to 100000 terms and return the result.\r\n3.  Really, it would be better if we could guarentee that the result was accurate to within a certain number of significant figures.  To do this, you can keep looping until the difference between the current sum and the previous one is smaller than 0.000001.  Write two new methods which make this change.',7,'2013-07-25 19:27:44','2013-07-25 19:27:44',NULL),(53,'Code tracing practice','What does this program do?','Explain what this program does (do not run it; just look at it).\r\n\r\n<code>\r\n	int N = < some number >;\r\n	int x = 1;\r\n	while (N >= 1) {\r\n		System.out.println(x);\r\n		x = 2 * x;\r\n		N = N / 2;\r\n	}\r\n</code>',4,'2013-07-25 19:31:30','2013-07-25 19:31:30',NULL),(54,'Gymnastics judging','Write a method to calculate a gymnast\'s score','In gymnastics, a gymnast\'s score is determined by a panel of 6 judges who each decide a score between 0.0 and 10.0.  The final score is determined by discarding the high and low scores, and averaging the remaining 4.  Write a method called score() which takes 6 doubles and input and calculates the resulting score according to the method just described.',4,'2013-07-25 19:36:09','2013-07-25 19:36:09',NULL),(55,'Nested loop tracing','Trace these nested loops','Explain clearly in words what each code fragment does.\r\n\r\n#1\r\n<code>\r\nfor (int i = 0; i < N; i++)\r\n	for (int j = 0; j < N; j++)\r\n		if (i != j) System.out.println(i + \", \" + j);\r\n</code>\r\n\r\n#2\r\n<code>\r\nfor (int i = 0; i < N; i++)\r\n	for (int j = 0; (j != i) && (j < N)); j++)\r\n		System.out.println(i + \", \" + j);\r\n</code>\r\n\r\nIs there any difference between them?  If so, what is it?',4,'2013-07-25 19:39:28','2013-07-25 19:39:28',NULL),(56,'numberOfDigits()','Write a method to count the number of digits in an input','Use the % operator to write a method numberOfDigits(a) which returns the number of digits in a.  a is an int.',5,'2013-07-25 19:41:57','2013-07-25 19:41:57',NULL),(57,'Making change','Write a method that makes change','Write a method makeChange(d) that takes a double, representing a dollar amount, as a parameter.  It should then print out the best way (fewest number of coins) to make change in that amount.\r\n\r\nFor example:	\r\n\r\nmakeChange(0.73)		will make change for 73 cents.  It should display\r\n2 quarters\r\n2 dimes\r\n3 pennies\r\n\r\nmakeChange(1.10)		will make change for $1.10.  It should display\r\n4 quarters\r\n1 dime\r\n\r\nHint:  Dispense as many quarters as possible, then dimes, then nickels, and finally pennies.\r\n\r\nIt\'s better if you don\'t display a coin type if you are giving 0 coins, but if you must you may display all coin types.',4,'2013-07-25 19:47:11','2013-07-25 19:47:11',NULL),(58,'Body mass index','Write a program to tell you your body mass index','The body mass index (BMI) is the ratio of the weight of a person (in kilograms) to the square of their height (in meters).  Write a program which prompts the user for these two values and computes their BMI.\r\n\r\nHere is a table which tells you what the numbers mean:\r\nBMI Score										Category\r\nless than 15										Starvation\r\nless than 17.5										Anorexic\r\nless than 18.5										Underweight\r\ngreater than or equal to 18.5 but less than 25			Ideal\r\ngreater than or equal to 25 but less than 30				Overweight\r\ngreater than or equal to 30 but less than 40				Obese\r\ngreater than or equal to 40							morbidly Obese\r\n\r\nHave your program also display which category they fall under.\r\n\r\nNote:  If you wanted to make your program nice, you\'d let your users enter their weight and height in lbs and feet instead of kilograms and meters.  Just be sure you do the conversion before calculating the BMI.',2,'2013-07-25 19:55:02','2013-07-25 19:55:02',NULL),(59,'AAAAAAAAAAAAAA','This is the task.	','<p>This is really the task!&nbsp;&nbsp; oooooooh yea.</p>\r\n',NULL,'2013-08-06 14:50:41','2013-08-06 14:50:41',1),(60,'AAAAAAAAAAAAAAA','Short desc.	','<p>Long description!</p>\r\n',NULL,'2013-08-06 15:13:07','2013-08-06 15:13:07',1);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'user@example.com','$2a$10$UL3yN37cUdC79GLcGP/n3uqX9Ojdd19Rvgo6q3n8T.sga3cAb2502',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-11 23:27:00','2013-06-11 23:27:00','First User',NULL),(10,'david.dobervich@gmail.com','$2a$10$3jM8fslMwcPlYkW5hw3VgeH4AYEZs1AEwMuM0Xifu5E0suXEdCmX6',NULL,NULL,NULL,19,'2013-08-04 21:07:10','2013-08-04 16:01:41','127.0.0.1','127.0.0.1','2013-07-11 21:08:14','2013-08-04 21:07:10','David Dobervich',2),(12,'example2@example.com','$2a$10$1ijtfwnNbUKtdzSolmtIGe4Qp0BUirwmP06OqnKuSm4VYFGpX6rh.',NULL,NULL,NULL,1,'2013-07-15 19:39:36','2013-07-15 19:39:36','127.0.0.1','127.0.0.1','2013-07-15 19:39:36','2013-07-15 20:35:20','User2',1),(13,'david.dobervich@example.com','$2a$10$fRT7SmFZQfWc0D6QSvhRBON1q/bI42JlPLgdq3GC8tv5No2u4B7fS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-07-16 15:38:07','2013-07-16 15:38:07','David Dobervich',1),(14,'ryan.martin@example.com','$2a$10$skH4H77lRBz6Dc8YBWkSnug0hsma0wKfhxOOQksqc8WDEpM.ylwBS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-07-16 15:38:07','2013-07-16 15:38:07','Ryan Martin',1),(15,'maria.anjarwala@example.com','$2a$10$0ETQs9ylQD4IDLpLpUjUxeTfQ1I6VBiv9RDrDz34eN6FFA5Ka1PhS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-07-16 15:38:07','2013-07-16 15:49:12','Maria Anjarwala',2),(16,'peter.li@example.com','$2a$10$CYM5WhSNMk6iIoNORYMH0eZKABVFAvQDnsi04muQudo14rmoB2W3m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-07-16 15:38:07','2013-07-16 15:38:07','Peter Li',1),(17,'ricky.martain@example.com','$2a$10$23qVv37hZ5GDyWr/UWz0f.q/goXRx597aMGpL2Vlko90gsLk5Y4EK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-07-16 15:38:07','2013-07-16 15:38:07','Ricky Martain',1),(18,'saul.bellow@example.com','$2a$10$5UJtaQ9Ha5YOZYpICeT35.9TavsfVvgeW9p2grEzxFYII9lgAVBQe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-07-16 15:38:08','2013-07-25 03:12:35','Saul Bellow',2),(19,'piano.man@example.com','$2a$10$Vmh4i1X.2Tef7qP/1rka5eBgLzEPNUuOYp92lVVfZ0bX39r3Pmbv.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-07-16 15:38:08','2013-07-16 15:38:08','Piano man',1),(20,'marl@marl.com','$2a$10$Cq2oJnQbnAuK3X5Zv48OdO2LAxt8lxx6WGBIZ25ueyijz6yatp3zy',NULL,NULL,NULL,1,'2013-07-28 20:22:35','2013-07-28 20:22:35','127.0.0.1','127.0.0.1','2013-07-28 20:22:35','2013-07-28 20:22:35','Marl Babok',NULL),(21,'markd@ceoexpress.com','$2a$10$QOg9yZ7WvConHzzuGdce6.Gqc8nhI27xJA1GxmZz2vEOIbdxPZidG',NULL,NULL,NULL,2,'2013-08-04 16:16:14','2013-08-04 15:59:37','127.0.0.1','127.0.0.1','2013-08-04 15:59:37','2013-08-04 16:16:14','Mark Dobervich',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_users_roles_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (9,1),(10,1),(10,4),(20,1);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-06 11:53:59
