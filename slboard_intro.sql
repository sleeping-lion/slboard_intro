-- MySQL dump 10.13  Distrib 5.6.21-70.1, for Linux (x86_64)
--
-- Host: localhost    Database: slboard_intro
-- ------------------------------------------------------
-- Server version	5.6.21-70.1-log

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
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_acos_lft_rght` (`lft`,`rght`),
  KEY `idx_acos_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` VALUES (1,NULL,NULL,NULL,'controllers',1,44),(2,1,NULL,NULL,'Users',2,5),(3,2,NULL,NULL,'Groups',3,4),(4,1,NULL,NULL,'Notices',6,7),(5,1,NULL,NULL,'GuestBooks',8,11),(6,5,NULL,NULL,'GuestBookComments',9,10),(7,1,NULL,NULL,'Questions',12,15),(8,7,NULL,NULL,'QuestionComments',13,14),(9,1,NULL,NULL,'Faqs',16,19),(10,9,NULL,NULL,'FaqCategories',17,18),(11,1,NULL,NULL,'Blogs',20,25),(12,11,NULL,NULL,'BlogCategories',21,22),(13,11,NULL,NULL,'BlogComments',23,24),(14,1,NULL,NULL,'CkeditorAssets',26,27),(15,1,NULL,NULL,'Galleries',28,31),(16,15,NULL,NULL,'GalleryCategories',29,30),(17,1,NULL,NULL,'Contacts',32,33),(18,1,NULL,NULL,'Portfolios',34,35),(19,1,NULL,NULL,'Histories',36,37),(20,1,NULL,NULL,'Home',38,39),(21,1,NULL,NULL,'Intro',40,41),(22,1,NULL,NULL,'Resources',42,43);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aros_lft_rght` (`lft`,`rght`),
  KEY `idx_aros_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` VALUES (1,NULL,'Group',1,'admins',1,2),(2,NULL,'Group',2,'managers',3,4),(3,NULL,'Group',3,'users',5,6),(4,NULL,'Group',4,'viewers',7,8),(5,NULL,'Group',5,NULL,9,10);
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`),
  KEY `idx_aco_id` (`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros_acos`
--

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` VALUES (1,1,1,'1','1','1','1'),(2,2,1,'1','1','1','1'),(3,2,2,'-1','-1','-1','-1'),(4,3,17,'1','1','0','0'),(5,4,17,'1','1','0','0');
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `blog_category_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `blogs_count` int(11) NOT NULL DEFAULT '0',
  `blog_categories_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `leaf` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_categories_on_blog_category_id` (`blog_category_id`),
  KEY `index_blog_categories_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,1,NULL,'내소개',1,0,1,0,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(2,1,NULL,'리눅스',0,0,1,0,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(3,1,NULL,'웹개발',0,0,1,0,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(4,1,NULL,'제작작품',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(5,1,NULL,'방명록',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(6,1,1,'소개',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(7,1,1,'일기',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(8,1,1,'생각',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(9,1,1,'사진첩',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(10,1,2,'설치',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(11,1,2,'응용프로그램',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(12,1,2,'기본명령어',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(13,1,2,'서버',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(14,1,2,'html',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(15,1,3,'스타일시트',0,0,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(16,1,16,'분류1',0,3,1,0,'2015-03-09 19:12:51','2015-03-09 19:12:51'),(17,1,17,'분류2',0,1,1,0,'2015-03-09 19:16:05','2015-03-09 19:16:05'),(18,1,16,'분류1-1',0,0,1,1,'2015-03-09 19:14:41','2015-03-09 19:14:41'),(19,1,16,'분류1-2',0,0,1,1,'2015-03-09 19:17:06','2015-03-09 19:17:06'),(20,1,17,'분류2-2',0,0,1,1,'2015-03-09 19:22:45','2015-03-09 19:22:45');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_comments_on_blog_id` (`blog_id`),
  KEY `index_blog_comments_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_contents`
--

DROP TABLE IF EXISTS `blog_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_contents`
--

LOCK TABLES `blog_contents` WRITE;
/*!40000 ALTER TABLE `blog_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_comments_count` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blogs_on_user_id` (`user_id`),
  KEY `index_blogs_on_blog_category_id` (`blog_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cake_sessions`
--

DROP TABLE IF EXISTS `cake_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cake_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cake_sessions`
--

LOCK TABLES `cake_sessions` WRITE;
/*!40000 ALTER TABLE `cake_sessions` DISABLE KEYS */;
INSERT INTO `cake_sessions` VALUES ('6aamq1qcreud49ur8drp3s58d3','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1426107933;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:4:\"User\";a:27:{s:2:\"id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"email\";s:18:\"toughjjh@gmail.com\";s:4:\"name\";s:9:\"정종호\";s:5:\"photo\";s:25:\"--- !ruby/object:File {}\n\";s:11:\"description\";s:78:\"깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.\";s:14:\"alternate_name\";s:16:\"잠자는-사자\";s:6:\"gender\";b:0;s:10:\"birth_date\";N;s:10:\"death_date\";N;s:3:\"url\";s:29:\"http://www.sleepinglion.pe.kr\";s:9:\"job_title\";s:18:\"웹프로그래머\";s:20:\"reset_password_token\";N;s:22:\"reset_password_sent_at\";N;s:19:\"remember_created_at\";N;s:13:\"sign_in_count\";s:1:\"0\";s:18:\"current_sign_in_at\";N;s:15:\"last_sign_in_at\";N;s:18:\"current_sign_in_ip\";N;s:15:\"last_sign_in_ip\";N;s:17:\"user_photos_count\";s:1:\"0\";s:5:\"admin\";b:1;s:5:\"intro\";b:1;s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";s:5:\"Group\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:5:\"admin\";s:11:\"users_count\";s:1:\"0\";s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";}}}',1426107933),('7bidbqleu0b6915ospqnnd68l3','Config|a:4:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1425889588;s:9:\"countdown\";i:10;s:8:\"language\";s:3:\"kor\";}Message|a:0:{}Auth|a:1:{s:4:\"User\";a:27:{s:2:\"id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"email\";s:18:\"toughjjh@gmail.com\";s:4:\"name\";s:9:\"정종호\";s:5:\"photo\";s:25:\"--- !ruby/object:File {}\n\";s:11:\"description\";s:78:\"깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.\";s:14:\"alternate_name\";s:16:\"잠자는-사자\";s:6:\"gender\";b:0;s:10:\"birth_date\";N;s:10:\"death_date\";N;s:3:\"url\";s:29:\"http://www.sleepinglion.pe.kr\";s:9:\"job_title\";s:18:\"웹프로그래머\";s:20:\"reset_password_token\";N;s:22:\"reset_password_sent_at\";N;s:19:\"remember_created_at\";N;s:13:\"sign_in_count\";s:1:\"0\";s:18:\"current_sign_in_at\";N;s:15:\"last_sign_in_at\";N;s:18:\"current_sign_in_ip\";N;s:15:\"last_sign_in_ip\";N;s:17:\"user_photos_count\";s:1:\"0\";s:5:\"admin\";b:1;s:5:\"intro\";b:1;s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";s:5:\"Group\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:5:\"admin\";s:11:\"users_count\";s:1:\"0\";s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";}}}',1425889588),('7mc28cubqbtlt0sl01s13nnut1','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1425916766;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:4:\"User\";a:27:{s:2:\"id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"email\";s:18:\"toughjjh@gmail.com\";s:4:\"name\";s:9:\"정종호\";s:5:\"photo\";s:25:\"--- !ruby/object:File {}\n\";s:11:\"description\";s:78:\"깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.\";s:14:\"alternate_name\";s:16:\"잠자는-사자\";s:6:\"gender\";b:0;s:10:\"birth_date\";N;s:10:\"death_date\";N;s:3:\"url\";s:29:\"http://www.sleepinglion.pe.kr\";s:9:\"job_title\";s:18:\"웹프로그래머\";s:20:\"reset_password_token\";N;s:22:\"reset_password_sent_at\";N;s:19:\"remember_created_at\";N;s:13:\"sign_in_count\";s:1:\"0\";s:18:\"current_sign_in_at\";N;s:15:\"last_sign_in_at\";N;s:18:\"current_sign_in_ip\";N;s:15:\"last_sign_in_ip\";N;s:17:\"user_photos_count\";s:1:\"0\";s:5:\"admin\";b:1;s:5:\"intro\";b:1;s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";s:5:\"Group\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:5:\"admin\";s:11:\"users_count\";s:1:\"0\";s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";}}}',1425916766),('a3i3e2b6jsrqrqeaoeipl71dm0','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1426022544;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:8:\"redirect\";s:21:\"/admin/faq_categories\";}',1426022544),('at0qrq7fe7jrbp21u67e514dt2','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1426366329;s:9:\"countdown\";i:10;}',1426366329),('b71ikipic0jm62kofrfbavk0i4','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1426018327;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:4:\"User\";a:27:{s:2:\"id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"email\";s:18:\"toughjjh@gmail.com\";s:4:\"name\";s:9:\"정종호\";s:5:\"photo\";s:25:\"--- !ruby/object:File {}\n\";s:11:\"description\";s:78:\"깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.\";s:14:\"alternate_name\";s:16:\"잠자는-사자\";s:6:\"gender\";b:0;s:10:\"birth_date\";N;s:10:\"death_date\";N;s:3:\"url\";s:29:\"http://www.sleepinglion.pe.kr\";s:9:\"job_title\";s:18:\"웹프로그래머\";s:20:\"reset_password_token\";N;s:22:\"reset_password_sent_at\";N;s:19:\"remember_created_at\";N;s:13:\"sign_in_count\";s:1:\"0\";s:18:\"current_sign_in_at\";N;s:15:\"last_sign_in_at\";N;s:18:\"current_sign_in_ip\";N;s:15:\"last_sign_in_ip\";N;s:17:\"user_photos_count\";s:1:\"0\";s:5:\"admin\";b:1;s:5:\"intro\";b:1;s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";s:5:\"Group\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:5:\"admin\";s:11:\"users_count\";s:1:\"0\";s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";}}}',1426018327),('ibj9to77cgvph0auk1qt72s9l1','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1426189512;s:9:\"countdown\";i:10;}Message|a:0:{}',1426189512),('ls0uht695j0rpoo53v825mc7d3','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1426087047;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:4:\"User\";a:27:{s:2:\"id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"email\";s:18:\"toughjjh@gmail.com\";s:4:\"name\";s:9:\"정종호\";s:5:\"photo\";s:25:\"--- !ruby/object:File {}\n\";s:11:\"description\";s:78:\"깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.\";s:14:\"alternate_name\";s:16:\"잠자는-사자\";s:6:\"gender\";b:0;s:10:\"birth_date\";N;s:10:\"death_date\";N;s:3:\"url\";s:29:\"http://www.sleepinglion.pe.kr\";s:9:\"job_title\";s:18:\"웹프로그래머\";s:20:\"reset_password_token\";N;s:22:\"reset_password_sent_at\";N;s:19:\"remember_created_at\";N;s:13:\"sign_in_count\";s:1:\"0\";s:18:\"current_sign_in_at\";N;s:15:\"last_sign_in_at\";N;s:18:\"current_sign_in_ip\";N;s:15:\"last_sign_in_ip\";N;s:17:\"user_photos_count\";s:1:\"0\";s:5:\"admin\";b:1;s:5:\"intro\";b:1;s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";s:5:\"Group\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:5:\"admin\";s:11:\"users_count\";s:1:\"0\";s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";}}}',1426087047),('ojn25hkrrb3o6hdjjqdp1ks2m2','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1425929789;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:4:\"User\";a:27:{s:2:\"id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"email\";s:18:\"toughjjh@gmail.com\";s:4:\"name\";s:9:\"정종호\";s:5:\"photo\";s:25:\"--- !ruby/object:File {}\n\";s:11:\"description\";s:78:\"깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.\";s:14:\"alternate_name\";s:16:\"잠자는-사자\";s:6:\"gender\";b:0;s:10:\"birth_date\";N;s:10:\"death_date\";N;s:3:\"url\";s:29:\"http://www.sleepinglion.pe.kr\";s:9:\"job_title\";s:18:\"웹프로그래머\";s:20:\"reset_password_token\";N;s:22:\"reset_password_sent_at\";N;s:19:\"remember_created_at\";N;s:13:\"sign_in_count\";s:1:\"0\";s:18:\"current_sign_in_at\";N;s:15:\"last_sign_in_at\";N;s:18:\"current_sign_in_ip\";N;s:15:\"last_sign_in_ip\";N;s:17:\"user_photos_count\";s:1:\"0\";s:5:\"admin\";b:1;s:5:\"intro\";b:1;s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";s:5:\"Group\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:5:\"admin\";s:11:\"users_count\";s:1:\"0\";s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-03-09 03:25:26\";s:10:\"updated_at\";s:19:\"2015-03-09 03:25:26\";}}}',1425929789);
/*!40000 ALTER TABLE `cake_sessions` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_contents`
--

DROP TABLE IF EXISTS `contact_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_contents`
--

LOCK TABLES `contact_contents` WRITE;
/*!40000 ALTER TABLE `contact_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `faqs_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_faq_categories_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,1,'설치',4,1,'2015-03-11 00:33:57','2015-03-11 00:33:57'),(2,1,'수정',0,1,'2015-03-11 00:39:37','2015-03-11 00:39:37'),(3,1,'기능',0,1,'2015-03-11 01:01:50','2015-03-11 01:01:50'),(4,1,'기타',0,1,'2015-03-11 01:10:18','2015-03-11 01:10:18');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_contents`
--

DROP TABLE IF EXISTS `faq_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_contents`
--

LOCK TABLES `faq_contents` WRITE;
/*!40000 ALTER TABLE `faq_contents` DISABLE KEYS */;
INSERT INTO `faq_contents` VALUES (1,'일반적인 PHP 프로그램과 동일합니다.\r\n웹서버의 해당 경로에만 위치 시키면 됩니다.\r\n직접 받아서 설치하는 방법과 Git로 받는 방법이 있습니다.'),(2,'CakePHP와 동일하며\r\n최소 PHP 5.3이상이 권장되며(5.2후반 버전은 되기도 하지만 보장안됨)\r\n예쁜 URL(Fancy URL)을 위해서 mod_rewrite모듈이 권장됩니다.\r\n mod_rewrite설정에 어려움을 느끼신다면 <a href=\"http://book.cakephp.org/2.0/en/installation/url-rewriting.html\" target=\"_blank\">여기</a>를 참조해보세요'),(3,'App/Config/database_example.php를 \r\n자신의 설정과 맞게 수정하고 파일명을 database.php로 바꾸어서 저장하면 됩니다. \r\n설정에 어려움이 있다면 <a href=\"http://book.cakephp.org/2.0/en/development/configuration.html\" target=\"_blank\">여기</a>를 참조해보세요');
/*!40000 ALTER TABLE `faq_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_faqs_on_faq_category_id` (`faq_category_id`),
  KEY `index_faqs_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,1,1,'설치를 어떻게 하나요?',1,1,'2015-03-11 00:50:02','2015-03-11 00:50:02'),(2,1,1,'설치 환경은 어떤가요?',1,1,'2015-03-11 00:58:02','2015-03-11 00:58:02'),(3,1,1,'데이터베이스 설정은 어떻게 하나요?',1,1,'2015-03-11 01:05:13','2015-03-11 01:05:13');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `users_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin',0,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(2,'manage',0,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(3,'user',0,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(4,'viewer',0,1,'2015-03-09 03:25:26','2015-03-09 03:25:26'),(5,'그룹1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_book_comments`
--

DROP TABLE IF EXISTS `guest_book_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_book_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_book_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_guest_book_comments_on_user_id` (`user_id`),
  KEY `index_guest_book_comments_on_guest_book_id` (`guest_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book_comments`
--

LOCK TABLES `guest_book_comments` WRITE;
/*!40000 ALTER TABLE `guest_book_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_book_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_book_contents`
--

DROP TABLE IF EXISTS `guest_book_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_book_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book_contents`
--

LOCK TABLES `guest_book_contents` WRITE;
/*!40000 ALTER TABLE `guest_book_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_book_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_books`
--

DROP TABLE IF EXISTS `guest_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guest_book_comments_count` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_guest_books_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_books`
--

LOCK TABLES `guest_books` WRITE;
/*!40000 ALTER TABLE `guest_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_histories_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n`
--

DROP TABLE IF EXISTS `i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i18n` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `locale` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `locale` (`locale`),
  KEY `model` (`model`),
  KEY `row_id` (`foreign_key`),
  KEY `field` (`field`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n`
--

LOCK TABLES `i18n` WRITE;
/*!40000 ALTER TABLE `i18n` DISABLE KEYS */;
INSERT INTO `i18n` VALUES (1,'kor','FaqCategory',7,'title','분류1'),(2,'kor','GalleryCategory',6,'title','사진1'),(3,'ko_kr','BlogCategory',21,'title','블로그1'),(4,'kor','Group',5,'title','그룹1'),(5,'ko_kr','BlogCategory',22,'title','eawegwg'),(6,'ko_kr','BlogCategory',23,'title','분류1'),(7,'ko_kr','BlogCategory',24,'title','분류1-1'),(8,'ko_kr','BlogCategory',25,'title','분류2'),(9,'ko_kr','BlogCategory',26,'title','분류1-2'),(10,'ko_kr','BlogCategory',27,'title','분류2-2'),(11,'ko_kr','BlogCategory',35,'title','분류2-3'),(12,'ko_kr','BlogCategory',16,'title','분류1'),(13,'ko_kr','BlogCategory',17,'title','분류2'),(14,'ko_kr','BlogCategory',18,'title','분류1-1'),(15,'ko_kr','BlogCategory',19,'title','분류1-2'),(16,'ko_kr','BlogCategory',20,'title','분류2-2'),(17,'kor','Question',3,'title','sdga'),(18,'kor','FaqCategory',1,'title','설치'),(19,'kor','FaqCategory',2,'title','수정'),(20,'kor','Faq',1,'title','설치를 어떻게 하나요?'),(22,'kor','Faq',2,'title','설치 환경은 어떤가요?'),(23,'kor','FaqCategory',3,'title','기능'),(24,'kor','Faq',3,'title','데이터베이스 설정은 어떻게 하나요?'),(26,'kor','Notice',1,'title','SLBoard 사이트 오픈 했습니다~~'),(27,'kor','Notice',2,'title','222222222222eeeeeeeeee'),(28,'kor','Notice',3,'title','3333333333'),(29,'kor','Notice',4,'title','3333333333rrrrrrr'),(30,'kor','FaqCategory',4,'title','기타'),(31,'kor','Notice',5,'title','444444444445555555'),(32,'kor','Question',4,'title','aweg'),(33,'kor','Question',5,'title','sdqwey');
/*!40000 ALTER TABLE `i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impressions`
--

DROP TABLE IF EXISTS `impressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impressions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `impressionable_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `impressionable_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `controller_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_hash` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_hash` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `referrer` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `poly_request_index` (`impressionable_type`,`impressionable_id`,`request_hash`),
  KEY `poly_ip_index` (`impressionable_type`,`impressionable_id`,`ip_address`),
  KEY `poly_session_index` (`impressionable_type`,`impressionable_id`,`session_hash`),
  KEY `controlleraction_request_index` (`controller_name`,`action_name`,`request_hash`),
  KEY `controlleraction_ip_index` (`controller_name`,`action_name`,`ip_address`),
  KEY `controlleraction_session_index` (`controller_name`,`action_name`,`session_hash`),
  KEY `index_impressions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impressions`
--

LOCK TABLES `impressions` WRITE;
/*!40000 ALTER TABLE `impressions` DISABLE KEYS */;
INSERT INTO `impressions` VALUES (1,'Question',1,1,'questions','admin_view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20005/admin/questions','2015-03-09 12:50:37','2015-03-09 12:50:37'),(2,'Group',5,1,'groups','admin_view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20005/admin/groups','2015-03-09 13:06:15','2015-03-09 13:06:15'),(3,'Gallery',2,1,'galleries','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20005/galleries','2015-03-10 00:27:04','2015-03-10 00:27:04'),(4,'Gallery',1,1,'galleries','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20005/galleries?id=2','2015-03-10 00:27:05','2015-03-10 00:27:05'),(5,'Faq',1,1,'faqs','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/faqs','2015-03-11 00:50:16','2015-03-11 00:50:16'),(6,'Faq',2,1,'faqs','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/faqs','2015-03-11 00:55:49','2015-03-11 00:55:49'),(7,'Faq',3,1,'faqs','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/faqs','2015-03-11 00:58:04','2015-03-11 00:58:04'),(8,'Faq',4,1,'faqs','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/faqs','2015-03-11 01:05:17','2015-03-11 01:05:17'),(9,'Notice',1,1,'notices','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/notices','2015-03-11 01:06:08','2015-03-11 01:06:08'),(10,'Notice',3,1,'notices','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/notices','2015-03-11 01:07:32','2015-03-11 01:07:32'),(11,'Notice',5,1,'notices','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/notices','2015-03-11 01:12:02','2015-03-11 01:12:02'),(12,'Question',5,NULL,'questions','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/questions','2015-03-13 00:18:18','2015-03-13 00:18:18'),(13,'Question',4,NULL,'questions','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/questions','2015-03-13 00:19:08','2015-03-13 00:19:08'),(14,'Question',3,NULL,'questions','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20006/questions','2015-03-13 00:19:12','2015-03-13 00:19:12');
/*!40000 ALTER TABLE `impressions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_contents`
--

DROP TABLE IF EXISTS `notice_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_contents`
--

LOCK TABLES `notice_contents` WRITE;
/*!40000 ALTER TABLE `notice_contents` DISABLE KEYS */;
INSERT INTO `notice_contents` VALUES (1,0,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>이번 겨울에 시작하여 올해초에 오픈하려 예정했는데</p>\r\n\r\n<p>기능을 추가하다보니 생각보다 오래 걸렸네요</p>\r\n\r\n<p>그래도 제마음에 꽤 들게 되었네요</p>\r\n\r\n<p>여러분도 써보시고 사용후기에 평가해주세요</p>\r\n\r\n<p>그럼 계속적으로 업그레이드 되는 SLBoard가 되겠습니다</p>\r\n</body>\r\n</html>\r\n');
/*!40000 ALTER TABLE `notice_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notices_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,1,'SLBoard 사이트 오픈 했습니다~~',1,0,'2015-03-11 20:16:10','2015-03-11 20:16:10');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_contents`
--

DROP TABLE IF EXISTS `portfolio_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_contents`
--

LOCK TABLES `portfolio_contents` WRITE;
/*!40000 ALTER TABLE `portfolio_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_portfolios_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_comments`
--

DROP TABLE IF EXISTS `question_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_question_comments_on_user_id` (`user_id`),
  KEY `index_question_comments_on_question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_comments`
--

LOCK TABLES `question_comments` WRITE;
/*!40000 ALTER TABLE `question_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_contents`
--

DROP TABLE IF EXISTS `question_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_contents`
--

LOCK TABLES `question_contents` WRITE;
/*!40000 ALTER TABLE `question_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` tinyint(1) NOT NULL DEFAULT '0',
  `question_comments_count` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_questions_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_controller_photos`
--

DROP TABLE IF EXISTS `setting_controller_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting_controller_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_controller_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_setting_controller_photos_on_setting_controller_id` (`setting_controller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_controller_photos`
--

LOCK TABLES `setting_controller_photos` WRITE;
/*!40000 ALTER TABLE `setting_controller_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_controller_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_controllers`
--

DROP TABLE IF EXISTS `setting_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting_controllers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_position_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `menu_action` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'index',
  `use_category` tinyint(1) NOT NULL DEFAULT '0',
  `menu_display` tinyint(1) NOT NULL DEFAULT '1',
  `per` int(11) NOT NULL DEFAULT '10',
  `desc` tinyint(1) NOT NULL DEFAULT '1',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '100',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_setting_controllers_on_title` (`title`),
  UNIQUE KEY `index_setting_controllers_on_controller` (`controller`),
  KEY `index_setting_controllers_on_ad_position_id` (`ad_position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_controllers`
--

LOCK TABLES `setting_controllers` WRITE;
/*!40000 ALTER TABLE `setting_controllers` DISABLE KEYS */;
INSERT INTO `setting_controllers` VALUES (1,3,'메인','처음화면','home','index',0,0,10,1,1,9000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(2,3,'소개','소개','intro','index',0,1,10,1,1,1000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(3,2,'갤러리','갤러리','galleries','index',1,1,60,1,1,2000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(4,2,'블로그','블로그','blogs','index',1,1,10,1,1,3000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(5,2,'질문, 답변','질문,답변','questions','index',0,1,10,1,1,4000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(6,2,'FAQ','FAQ','faqs','index',0,0,10,1,1,5000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(7,2,'상담,문의','상담 문의를 받을수 있게 합니다.','contacts','new',0,0,10,1,1,6000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(8,1,'공지사항','운영자가 방문자들에게 알릴 공지사항을 알릴수 있게 합니다.','notices','index',0,0,10,1,1,7000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(9,2,'방명록','방문자가 글을 쓸수 있는 방명록입니다.','guest_books','index',0,1,10,1,1,8000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(10,2,'연혁','연혁','histories','index',0,0,10,1,1,8000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(11,2,'포트폴리오','포트폴리오','portfolios','index',0,1,10,1,1,8000,'2015-03-09 03:25:27','2015-03-09 03:25:27'),(12,2,'회원가입','사용자','users','new',0,0,10,1,1,9000,'2015-03-09 03:25:27','2015-03-09 03:25:27');
/*!40000 ALTER TABLE `setting_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_global`
--

DROP TABLE IF EXISTS `setting_global`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting_global` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_global`
--

LOCK TABLES `setting_global` WRITE;
/*!40000 ALTER TABLE `setting_global` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_global` ENABLE KEYS */;
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
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
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
  `taggings_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_photos`
--

DROP TABLE IF EXISTS `user_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_photos_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_photos`
--

LOCK TABLES `user_photos` WRITE;
/*!40000 ALTER TABLE `user_photos` DISABLE KEYS */;
INSERT INTO `user_photos` VALUES (1,1,'sl.jpg','jjh',1,'2015-03-09 03:25:26','2015-03-09 03:25:26');
/*!40000 ALTER TABLE `user_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternate_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT '1',
  `birth_date` date DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_title` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_photos_count` int(11) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `intro` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'toughjjh@gmail.com','정종호','$2a$10$45nMVWexiBsdQOwBkISFeuI8qQ/.LybPmwNvlza7sEHfcNrS9LabK','--- !ruby/object:File {}\n','깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.','잠자는-사자',0,NULL,NULL,'http://www.sleepinglion.pe.kr','웹프로그래머',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,1,1,1,'2015-03-09 03:25:26','2015-03-09 03:25:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-15  1:52:52
