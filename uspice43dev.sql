-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: uspice43dev
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(255) NOT NULL,
  `viewed` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` (`id`, `user`, `page`, `timestamp`, `ip`, `viewed`) VALUES (1,1,'42','2017-02-20 17:31:13','::1',0),(2,0,'44','2017-08-14 17:32:22','::1',0),(3,0,'4','2017-09-16 17:53:58','::1',0),(4,0,'4','2017-10-09 15:41:11','192.168.0.222',0),(5,0,'50','2018-02-28 16:59:10','127.0.0.1',0),(6,11,'9','2018-03-03 08:50:50','127.0.0.1',0),(7,11,'82','2018-03-03 08:52:20','127.0.0.1',0),(8,11,'82','2018-03-03 08:53:15','127.0.0.1',0),(9,11,'82','2018-03-03 09:02:36','127.0.0.1',0),(10,11,'82','2018-03-03 09:12:55','127.0.0.1',0),(11,11,'82','2018-03-03 09:22:59','127.0.0.1',0),(12,11,'82','2018-03-03 09:25:27','127.0.0.1',0),(13,11,'82','2018-03-03 09:51:30','127.0.0.1',0),(14,11,'82','2018-03-03 09:52:28','127.0.0.1',0),(15,11,'82','2018-03-03 09:56:40','127.0.0.1',0),(16,11,'82','2018-03-03 10:30:07','127.0.0.1',0),(17,11,'82','2018-03-03 11:03:50','127.0.0.1',0),(18,11,'82','2018-03-03 11:15:48','127.0.0.1',0),(19,11,'82','2018-03-03 11:16:19','127.0.0.1',0),(20,11,'82','2018-03-03 11:19:04','127.0.0.1',0),(21,11,'82','2018-03-03 11:19:44','127.0.0.1',0),(22,11,'82','2018-03-03 11:20:20','127.0.0.1',0),(23,0,'84','2018-03-03 13:58:08','127.0.0.1',0),(24,2,'82','2018-03-04 09:02:22','127.0.0.1',0),(25,12,'9','2018-03-04 10:06:08','127.0.0.1',0),(26,13,'9','2018-03-04 10:15:41','127.0.0.1',0),(27,14,'9','2018-03-04 10:32:58','127.0.0.1',0),(28,14,'82','2018-03-04 10:44:44','127.0.0.1',0),(29,14,'82','2018-03-04 11:09:26','127.0.0.1',0),(30,14,'82','2018-03-04 11:10:25','127.0.0.1',0),(31,14,'82','2018-03-04 11:11:01','127.0.0.1',0),(32,14,'82','2018-03-04 11:11:21','127.0.0.1',0);
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crons`
--

DROP TABLE IF EXISTS `crons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(1) NOT NULL DEFAULT '1',
  `sort` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crons`
--

LOCK TABLES `crons` WRITE;
/*!40000 ALTER TABLE `crons` DISABLE KEYS */;
INSERT INTO `crons` (`id`, `active`, `sort`, `name`, `file`, `createdby`, `created`, `modified`) VALUES (1,0,100,'Auto-Backup','backup.php',1,'2017-09-16 07:49:22','2017-11-11 20:15:36');
/*!40000 ALTER TABLE `crons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crons_logs`
--

DROP TABLE IF EXISTS `crons_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crons_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cron_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crons_logs`
--

LOCK TABLES `crons_logs` WRITE;
/*!40000 ALTER TABLE `crons_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `crons_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `website_name` varchar(100) NOT NULL,
  `smtp_server` varchar(100) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `email_login` varchar(150) NOT NULL,
  `email_pass` varchar(100) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `verify_url` varchar(255) NOT NULL,
  `email_act` int(1) NOT NULL,
  `debug_level` int(1) NOT NULL DEFAULT '0',
  `isSMTP` int(1) NOT NULL DEFAULT '0',
  `isHTML` varchar(5) NOT NULL DEFAULT 'true',
  `useSMTPauth` varchar(6) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` (`id`, `website_name`, `smtp_server`, `smtp_port`, `email_login`, `email_pass`, `from_name`, `from_email`, `transport`, `verify_url`, `email_act`, `debug_level`, `isSMTP`, `isHTML`, `useSMTPauth`) VALUES (1,'User Spice','smtp.gmail.com',587,'yourEmail@gmail.com','1234','User Spice','yourEmail@gmail.com','tls','http://localhost/43',0,0,0,'true','true');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_menus`
--

DROP TABLE IF EXISTS `groups_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(15) NOT NULL,
  `menu_id` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_menus`
--

LOCK TABLES `groups_menus` WRITE;
/*!40000 ALTER TABLE `groups_menus` DISABLE KEYS */;
INSERT INTO `groups_menus` (`id`, `group_id`, `menu_id`) VALUES (30,2,9),(29,0,8),(28,0,7),(27,0,21),(5,0,3),(6,0,1),(7,0,2),(8,0,51),(9,0,52),(10,0,37),(11,0,38),(12,2,39),(13,2,40),(14,2,41),(15,2,42),(16,2,43),(17,2,44),(18,2,45),(19,0,46),(20,0,47),(21,0,49),(26,0,20),(25,0,18),(31,2,10),(32,2,11),(33,2,12),(34,2,13),(35,2,14),(36,2,15),(37,0,16);
/*!40000 ALTER TABLE `groups_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stripe_ts` varchar(255) NOT NULL,
  `stripe_tp` varchar(255) NOT NULL,
  `stripe_ls` varchar(255) NOT NULL,
  `stripe_lp` varchar(255) NOT NULL,
  `recap_pub` varchar(100) NOT NULL,
  `recap_pri` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keys`
--

LOCK TABLES `keys` WRITE;
/*!40000 ALTER TABLE `keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(3) NOT NULL,
  `logdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logtype` varchar(25) NOT NULL,
  `lognote` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`id`, `user_id`, `logdate`, `logtype`, `lognote`) VALUES (79,1,'2018-02-28 16:58:56','System Updates','Reformatted existing vericodes'),(80,1,'2018-02-28 16:58:56','System Updates','Update 3GJYaKcqUtw7 successfully deployed.'),(81,1,'2018-02-28 16:58:56','System Updates','Updated old Blacklisted logs to IP Logging type.'),(82,1,'2018-02-28 16:58:56','System Updates','Added cloaking to users.'),(83,1,'2018-02-28 16:58:56','System Updates','Update 2XQjsKYJAfn1 successfully deployed.'),(84,1,'2018-02-28 16:58:56','System Updates','Updated force_notif to 0 if you had not set it already.'),(85,1,'2018-02-28 16:58:56','System Updates','Update 549DLFeHMNw7 successfully deployed.'),(86,1,'2018-02-28 16:58:56','System Updates','Added registration to settings.'),(87,1,'2018-02-28 16:58:56','System Updates','Update 4Dgt2XVjgz2x successfully deployed.'),(88,1,'2018-02-28 16:58:56','System Updates','Added Vericode Expiry to Users Table.'),(89,1,'2018-02-28 16:58:56','System Updates','Reformatted exiting page titles only if they weren\'t modified.'),(90,1,'2018-02-28 16:58:56','System Updates','Update VLBp32gTWvEo successfully deployed.'),(91,1,'2018-02-28 16:58:56','System Updates','Update Q3KlhjdtxE5X successfully deployed.'),(92,1,'2018-02-28 16:59:58','User','User logged in.'),(93,1,'2018-02-28 17:00:57','User','Updated password.'),(94,1,'2018-02-28 17:01:20','User','User logged in.'),(95,1,'2018-03-01 15:02:59','User','User logged in.'),(96,1,'2018-03-01 15:03:12','User','User logged in.'),(97,1,'2018-03-02 14:55:11','User','User logged in.'),(98,1,'2018-03-02 14:56:19','Pages Manager','Added 1 permission(s) to pagina1.php.'),(99,1,'2018-03-03 08:42:03','User','User logged in.'),(100,1,'2018-03-03 08:49:23','Permissions Manager','Added Permission Level named VALIDITY_TIME.'),(101,1,'2018-03-03 08:49:36','Pages Manager','Added 1 permission(s) to pagina1.php.'),(102,11,'2018-03-03 08:50:50','User','User logged in.'),(103,11,'2018-03-03 08:50:50','User Manager','Added user test_C1.'),(104,1,'2018-03-03 09:58:41','User','User logged in.'),(105,1,'2018-03-03 09:58:58','Pages Manager','Added 1 permission(s) to pagina1.php.'),(106,1,'2018-03-03 10:04:46','Pages Manager','Added 1 permission(s) to users/out_timeframe.php.'),(107,11,'2018-03-03 10:05:07','User','User logged in.'),(108,1,'2018-03-03 13:54:15','User','User logged in.'),(109,11,'2018-03-03 13:54:33','User','User logged in.'),(110,1,'2018-03-04 07:44:07','User','User logged in.'),(111,11,'2018-03-04 08:27:00','User','User logged in.'),(112,1,'2018-03-04 08:27:45','User','User logged in.'),(113,1,'2018-03-04 09:02:03','User Manager','Updated password for Sample.'),(114,2,'2018-03-04 09:02:17','User','User logged in.'),(115,1,'2018-03-04 09:03:05','User','User logged in.'),(116,12,'2018-03-04 10:06:08','User','User logged in.'),(117,12,'2018-03-04 10:06:08','User Manager','Added user cacca.'),(118,1,'2018-03-04 10:06:28','User','User logged in.'),(119,1,'2018-03-04 10:07:26','User Manager','Deleted user named Cacca.'),(120,13,'2018-03-04 10:15:41','User','User logged in.'),(121,13,'2018-03-04 10:15:41','User Manager','Added user cacca.'),(122,1,'2018-03-04 10:15:50','User','User logged in.'),(123,1,'2018-03-04 10:27:58','User Manager','Deleted user named Cacca.'),(124,14,'2018-03-04 10:32:57','User','User logged in.'),(125,14,'2018-03-04 10:32:57','User Manager','Added user cacca.'),(126,1,'2018-03-04 10:33:06','User','User logged in.'),(127,1,'2018-03-04 10:33:46','Cloaking','cloaked into 14'),(128,1,'2018-03-04 10:33:56','Cloaking','uncloaked from 14'),(129,1,'2018-03-04 10:40:58','User Manager','Added 1 permission(s) to Cacca Cacca.'),(130,1,'2018-03-04 10:41:15','Cloaking','cloaked into 14'),(131,1,'2018-03-04 10:41:32','Cloaking','uncloaked from 14'),(132,1,'2018-03-04 10:41:50','User Manager','Deleted 1 permission(s) from Cacca Cacca.'),(133,1,'2018-03-04 10:42:13','Cloaking','cloaked into 14'),(134,14,'2018-03-04 10:42:35','User','User logged in.'),(135,1,'2018-03-04 10:43:41','User','User logged in.'),(136,14,'2018-03-04 10:44:38','User','User logged in.'),(137,1,'2018-03-04 11:19:02','User','User logged in.');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_exempt`
--

DROP TABLE IF EXISTS `logs_exempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs_exempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `logs_exempt_type` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_exempt`
--

LOCK TABLES `logs_exempt` WRITE;
/*!40000 ALTER TABLE `logs_exempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_exempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(255) NOT NULL,
  `parent` int(10) NOT NULL,
  `dropdown` int(1) NOT NULL,
  `logged_in` int(1) NOT NULL,
  `display_order` int(10) NOT NULL,
  `label` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon_class` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `menu_title`, `parent`, `dropdown`, `logged_in`, `display_order`, `label`, `link`, `icon_class`) VALUES (1,'main',2,0,1,1,'Home','','fa fa-fw fa-home'),(2,'main',-1,1,1,14,'','','fa fa-fw fa-cogs'),(3,'main',-1,0,1,11,'{{username}}','users/account.php','fa fa-fw fa-user'),(4,'main',-1,1,0,3,'Help','','fa fa-fw fa-life-ring'),(5,'main',-1,0,0,2,'Register','users/join.php','fa fa-fw fa-plus-square'),(6,'main',-1,0,0,1,'Log In','users/login.php','fa fa-fw fa-sign-in'),(7,'main',2,0,1,2,'Account','users/account.php','fa fa-fw fa-user'),(8,'main',2,0,1,3,'{{hr}}','',''),(9,'main',2,0,1,4,'Admin Dashboard','users/admin.php','fa fa-fw fa-cogs'),(10,'main',2,0,1,5,'User Management','users/admin_users.php','fa fa-fw fa-user'),(11,'main',2,0,1,6,'Permissions Manager','users/admin_permissions.php','fa fa-fw fa-lock'),(12,'main',2,0,1,7,'Page Management','users/admin_pages.php','fa fa-fw fa-wrench'),(13,'main',2,0,1,8,'Messages Manager','users/admin_messages.php','fa fa-fw fa-envelope'),(14,'main',2,0,1,9,'System Logs','users/admin_logs.php','fa fa-fw fa-search'),(15,'main',2,0,1,10,'{{hr}}','',''),(16,'main',2,0,1,11,'Logout','users/logout.php','fa fa-fw fa-sign-out'),(17,'main',-1,0,0,0,'Home','','fa fa-fw fa-home'),(18,'main',-1,0,1,10,'Home','','fa fa-fw fa-home'),(19,'main',4,0,0,1,'Forgot Password','users/forgot_password.php','fa fa-fw fa-wrench'),(20,'main',-1,0,1,12,'{{notifications}}','',''),(21,'main',-1,0,1,13,'{{messages}}','',''),(22,'main',4,0,0,99999,'Resend Activation Email','users/verify_resend.php','fa fa-exclamation-triangle');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_threads`
--

DROP TABLE IF EXISTS `message_threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_threads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_to` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_subject` varchar(255) NOT NULL,
  `last_update` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL,
  `archive_from` int(1) NOT NULL DEFAULT '0',
  `archive_to` int(1) NOT NULL DEFAULT '0',
  `hidden_from` int(1) NOT NULL DEFAULT '0',
  `hidden_to` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_threads`
--

LOCK TABLES `message_threads` WRITE;
/*!40000 ALTER TABLE `message_threads` DISABLE KEYS */;
INSERT INTO `message_threads` (`id`, `msg_to`, `msg_from`, `msg_subject`, `last_update`, `last_update_by`, `archive_from`, `archive_to`, `hidden_from`, `hidden_to`) VALUES (1,2,1,'Testiing123','2017-08-06 00:13:47',1,0,0,0,0),(2,2,1,'Testing Message Badge','2017-09-09 15:10:09',1,0,0,0,0);
/*!40000 ALTER TABLE `message_threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_from` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_body` text NOT NULL,
  `msg_read` int(1) NOT NULL,
  `msg_thread` int(11) NOT NULL,
  `deleted` int(1) NOT NULL,
  `sent_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`id`, `msg_from`, `msg_to`, `msg_body`, `msg_read`, `msg_thread`, `deleted`, `sent_on`) VALUES (1,1,2,'&lt;p&gt;fgds&lt;/p&gt;',0,1,0,'2017-08-06 00:13:47'),(2,1,2,'&lt;p&gt;Did it work?&lt;/p&gt;',0,2,0,'2017-09-09 15:10:09');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mqtt`
--

DROP TABLE IF EXISTS `mqtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mqtt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mqtt`
--

LOCK TABLES `mqtt` WRITE;
/*!40000 ALTER TABLE `mqtt` DISABLE KEYS */;
INSERT INTO `mqtt` (`id`, `server`, `port`, `username`, `password`, `nickname`) VALUES (2,'192.168.0.222',1883,'','','Raspberry PI MQTT2');
/*!40000 ALTER TABLE `mqtt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `is_archived` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `private` int(11) NOT NULL DEFAULT '0',
  `re_auth` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `page`, `title`, `private`, `re_auth`) VALUES (1,'index.php','Home',0,0),(2,'z_us_root.php','',0,0),(3,'users/account.php','Account Dashboard',1,0),(4,'users/admin.php','Admin Dashboard',1,0),(5,'users/admin_page.php','Pages Manager',1,0),(6,'users/admin_pages.php','Pages Manager',1,0),(7,'users/admin_permission.php','Permissions Manager',1,0),(8,'users/admin_permissions.php','Permissions Manager',1,0),(9,'users/admin_user.php','User Manager',1,0),(10,'users/admin_users.php','User Manager',1,1),(11,'users/edit_profile.php','Edit Profile',1,0),(12,'users/email_settings.php','Email Settings',1,0),(13,'users/email_test.php','Email Test',1,0),(14,'users/forgot_password.php','Forgotten Password',0,0),(15,'users/forgot_password_reset.php','Reset Forgotten Password',0,0),(16,'users/index.php','Home',0,0),(17,'users/init.php','',0,0),(18,'users/join.php','Join',0,0),(19,'users/joinThankYou.php','Join',0,0),(20,'users/login.php','Login',0,0),(21,'users/logout.php','Logout',0,0),(22,'users/profile.php','Profile',1,0),(23,'users/times.php','',0,0),(24,'users/user_settings.php','User Settings',1,0),(25,'users/verify.php','Account Verification',0,0),(26,'users/verify_resend.php','Account Verification',0,0),(27,'users/view_all_users.php','View All Users',1,0),(28,'usersc/empty.php','',0,0),(31,'users/oauth_success.php','',0,0),(33,'users/fb-callback.php','',0,0),(37,'users/check_updates.php','Check For Updates',1,0),(38,'users/google_helpers.php','',0,0),(39,'users/tomfoolery.php','Security Log',1,0),(41,'users/messages.php','Messages',1,0),(42,'users/message.php','Messages',1,0),(44,'users/admin_backup.php','Backup Manager',1,0),(45,'users/maintenance.php','Maintenance',0,0),(47,'users/mqtt_settings.php','MQTT Settings',1,0),(49,'users/admin_verify.php','Password Verification',1,0),(50,'users/cron_manager.php','Cron Manager',1,0),(51,'users/cron_post.php','',1,0),(52,'users/admin_message.php','Messages Manager',1,0),(53,'users/admin_messages.php','Messages Manager',1,0),(55,'users/admin_logs.php','Logs Manager',1,0),(56,'users/admin_logs_exempt.php','Logs Manager',1,0),(57,'users/admin_logs_manager.php','Logs Manager',1,0),(58,'users/admin_logs_mapper.php','Logs Manager',1,0),(68,'users/update.php','Update Manager',1,0),(69,'users/admin_menu_item.php','Menu Manager',1,0),(70,'users/admin_menus.php','Menu Manager',1,0),(71,'users/admin_menu.php','Menu Manager',1,0),(72,'users/admin_ips.php','IP Manager',1,0),(73,'users/subscribe.php','',1,0),(74,'users/admin_notifications.php','Notifications Manager',1,0),(76,'users/enable2fa.php','Enable 2 Factor Auth',1,0),(77,'users/disable2fa.php','Disable 2 Factor Auth',2,0),(78,'users/admin_forms.php','Form Manager',1,0),(79,'users/admin_form_views.php','Form View Manager',1,0),(80,'users/edit_form.php','Form Editor',1,0),(81,'users/twofa.php','',1,0),(82,'pagina1.php','',1,0),(83,'info.php','',1,0),(84,'users/out_timeframe.php','',1,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_page_matches`
--

DROP TABLE IF EXISTS `permission_page_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_page_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(15) NOT NULL,
  `page_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_page_matches`
--

LOCK TABLES `permission_page_matches` WRITE;
/*!40000 ALTER TABLE `permission_page_matches` DISABLE KEYS */;
INSERT INTO `permission_page_matches` (`id`, `permission_id`, `page_id`) VALUES (2,2,27),(3,1,24),(4,1,22),(5,2,13),(6,2,12),(7,1,11),(8,2,10),(9,2,9),(10,2,8),(11,2,7),(12,2,6),(13,2,5),(14,2,4),(15,1,3),(16,2,37),(17,2,39),(19,2,40),(21,2,41),(23,2,42),(27,1,42),(28,1,27),(29,1,41),(30,1,40),(31,2,44),(32,2,47),(33,2,51),(34,2,50),(35,2,49),(36,2,53),(37,2,52),(38,2,68),(39,2,55),(40,2,56),(41,2,71),(42,2,58),(43,2,57),(44,2,53),(45,2,74),(46,2,75),(47,1,75),(48,1,76),(49,2,76),(50,1,77),(51,2,77),(52,2,78),(53,2,80),(54,2,82),(55,3,82),(56,1,82),(57,1,84);
/*!40000 ALTER TABLE `permission_page_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`) VALUES (1,'User'),(2,'Administrator'),(3,'VALIDITY_TIME');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`id`, `user_id`, `bio`) VALUES (1,1,'<h1>This is the Admin\'s bio.</h1>'),(2,2,'This is your bio'),(11,11,''),(14,14,'');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `recaptcha` int(1) NOT NULL DEFAULT '0',
  `force_ssl` int(1) NOT NULL,
  `css_sample` int(1) NOT NULL,
  `us_css1` varchar(255) NOT NULL,
  `us_css2` varchar(255) NOT NULL,
  `us_css3` varchar(255) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `language` varchar(255) NOT NULL,
  `track_guest` int(1) NOT NULL,
  `site_offline` int(1) NOT NULL,
  `force_pr` int(1) NOT NULL,
  `glogin` int(1) NOT NULL DEFAULT '0',
  `fblogin` int(1) NOT NULL,
  `gid` varchar(255) NOT NULL,
  `gsecret` varchar(255) NOT NULL,
  `gredirect` varchar(255) NOT NULL,
  `ghome` varchar(255) NOT NULL,
  `fbid` varchar(255) NOT NULL,
  `fbsecret` varchar(255) NOT NULL,
  `fbcallback` varchar(255) NOT NULL,
  `graph_ver` varchar(255) NOT NULL,
  `finalredir` varchar(255) NOT NULL,
  `req_cap` int(1) NOT NULL,
  `req_num` int(1) NOT NULL,
  `min_pw` int(2) NOT NULL,
  `max_pw` int(3) NOT NULL,
  `min_un` int(2) NOT NULL,
  `max_un` int(3) NOT NULL,
  `messaging` int(1) NOT NULL,
  `snooping` int(1) NOT NULL,
  `echouser` int(11) NOT NULL,
  `wys` int(1) NOT NULL,
  `change_un` int(1) NOT NULL,
  `backup_dest` varchar(255) NOT NULL,
  `backup_source` varchar(255) NOT NULL,
  `backup_table` varchar(255) NOT NULL,
  `msg_notification` int(1) NOT NULL,
  `permission_restriction` int(1) NOT NULL,
  `auto_assign_un` int(1) NOT NULL,
  `page_permission_restriction` int(1) NOT NULL,
  `msg_blocked_users` int(1) NOT NULL,
  `msg_default_to` int(1) NOT NULL,
  `notifications` int(1) NOT NULL,
  `notif_daylimit` int(3) NOT NULL,
  `recap_public` varchar(100) NOT NULL,
  `recap_private` varchar(100) NOT NULL,
  `page_default_private` int(1) NOT NULL,
  `navigation_type` tinyint(1) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `custom_settings` int(1) NOT NULL,
  `system_announcement` varchar(255) NOT NULL,
  `twofa` int(1) DEFAULT '0',
  `force_notif` tinyint(1) DEFAULT NULL,
  `cron_ip` varchar(255) DEFAULT NULL,
  `registration` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `recaptcha`, `force_ssl`, `css_sample`, `us_css1`, `us_css2`, `us_css3`, `site_name`, `language`, `track_guest`, `site_offline`, `force_pr`, `glogin`, `fblogin`, `gid`, `gsecret`, `gredirect`, `ghome`, `fbid`, `fbsecret`, `fbcallback`, `graph_ver`, `finalredir`, `req_cap`, `req_num`, `min_pw`, `max_pw`, `min_un`, `max_un`, `messaging`, `snooping`, `echouser`, `wys`, `change_un`, `backup_dest`, `backup_source`, `backup_table`, `msg_notification`, `permission_restriction`, `auto_assign_un`, `page_permission_restriction`, `msg_blocked_users`, `msg_default_to`, `notifications`, `notif_daylimit`, `recap_public`, `recap_private`, `page_default_private`, `navigation_type`, `copyright`, `custom_settings`, `system_announcement`, `twofa`, `force_notif`, `cron_ip`, `registration`) VALUES (1,0,0,0,'../users/css/color_schemes/bootstrap.min.css','../users/css/sb-admin.css','../users/css/custom.css','UserSpice','en',1,0,0,0,0,'','','','','','','','','',0,0,6,30,4,30,1,1,0,1,0,'/','everything','',0,0,0,0,0,1,0,7,'6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI','6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe',1,1,'UserSpice',1,'',0,0,'off',1);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `migration` varchar(15) NOT NULL,
  `applied_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updates`
--

LOCK TABLES `updates` WRITE;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
INSERT INTO `updates` (`id`, `migration`, `applied_on`) VALUES (15,'1XdrInkjV86F','2018-02-18 22:33:24'),(16,'3GJYaKcqUtw7','2018-02-28 16:58:56'),(17,'3GJYaKcqUtz8','2018-02-28 16:58:56'),(18,'69qa8h6E1bzG','2018-02-28 16:58:56'),(19,'2XQjsKYJAfn1','2018-02-28 16:58:56'),(20,'549DLFeHMNw7','2018-02-28 16:58:56'),(21,'4Dgt2XVjgz2x','2018-02-28 16:58:56'),(22,'VLBp32gTWvEo','2018-02-28 16:58:56'),(23,'Q3KlhjdtxE5X','2018-02-28 16:58:56');
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `us_form_validation`
--

DROP TABLE IF EXISTS `us_form_validation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `us_form_validation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us_form_validation`
--

LOCK TABLES `us_form_validation` WRITE;
/*!40000 ALTER TABLE `us_form_validation` DISABLE KEYS */;
INSERT INTO `us_form_validation` (`id`, `value`, `description`, `params`) VALUES (1,'min','Minimum # of Characters','number'),(2,'max','Maximum # of Characters','number'),(3,'is_numeric','Must be a number','true'),(4,'valid_email','Must be a valid email address','true'),(5,'<','Must be a number less than','number'),(6,'>','Must be a number greater than','number'),(7,'<=','Must be a number less than or equal to','number'),(8,'>=','Must be a number greater than or equal to','number'),(9,'!=','Must not be equal to','text'),(10,'==','Must be equal to','text'),(11,'is_integer','Must be an integer','true'),(12,'is_timezone','Must be a valid timezone name','true'),(13,'is_datetime','Must be a valid DateTime','true');
/*!40000 ALTER TABLE `us_form_validation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `us_form_views`
--

DROP TABLE IF EXISTS `us_form_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `us_form_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(255) NOT NULL,
  `view_name` varchar(255) NOT NULL,
  `fields` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us_form_views`
--

LOCK TABLES `us_form_views` WRITE;
/*!40000 ALTER TABLE `us_form_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `us_form_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `us_forms`
--

DROP TABLE IF EXISTS `us_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `us_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us_forms`
--

LOCK TABLES `us_forms` WRITE;
/*!40000 ALTER TABLE `us_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `us_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `us_ip_blacklist`
--

DROP TABLE IF EXISTS `us_ip_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `us_ip_blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `last_user` int(11) NOT NULL DEFAULT '0',
  `reason` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us_ip_blacklist`
--

LOCK TABLES `us_ip_blacklist` WRITE;
/*!40000 ALTER TABLE `us_ip_blacklist` DISABLE KEYS */;
INSERT INTO `us_ip_blacklist` (`id`, `ip`, `last_user`, `reason`) VALUES (3,'192.168.0.21',1,0),(4,'192.168.0.22',1,0),(10,'192.168.0.222',0,0);
/*!40000 ALTER TABLE `us_ip_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `us_ip_list`
--

DROP TABLE IF EXISTS `us_ip_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `us_ip_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us_ip_list`
--

LOCK TABLES `us_ip_list` WRITE;
/*!40000 ALTER TABLE `us_ip_list` DISABLE KEYS */;
INSERT INTO `us_ip_list` (`id`, `ip`, `user_id`, `timestamp`) VALUES (1,'::1',1,'2017-10-09 15:20:03'),(2,'127.0.0.1',1,'2018-03-04 11:19:02');
/*!40000 ALTER TABLE `us_ip_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `us_ip_whitelist`
--

DROP TABLE IF EXISTS `us_ip_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `us_ip_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us_ip_whitelist`
--

LOCK TABLES `us_ip_whitelist` WRITE;
/*!40000 ALTER TABLE `us_ip_whitelist` DISABLE KEYS */;
INSERT INTO `us_ip_whitelist` (`id`, `ip`) VALUES (2,'192.168.0.21'),(3,'192.168.0.23');
/*!40000 ALTER TABLE `us_ip_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permission_matches`
--

DROP TABLE IF EXISTS `user_permission_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_permission_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permission_matches`
--

LOCK TABLES `user_permission_matches` WRITE;
/*!40000 ALTER TABLE `user_permission_matches` DISABLE KEYS */;
INSERT INTO `user_permission_matches` (`id`, `user_id`, `permission_id`) VALUES (100,1,1),(101,1,2),(102,2,1),(111,11,1),(114,14,1);
/*!40000 ALTER TABLE `user_permission_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(155) NOT NULL,
  `email_new` varchar(155) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `permissions` int(11) NOT NULL,
  `logins` int(100) NOT NULL,
  `account_owner` tinyint(4) NOT NULL DEFAULT '0',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT '0',
  `vericode` varchar(15) NOT NULL,
  `vericode_expiry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL,
  `oauth_provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gpluslink` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `fb_uid` varchar(255) NOT NULL,
  `un_changed` int(1) NOT NULL,
  `msg_exempt` int(1) NOT NULL DEFAULT '0',
  `last_confirm` datetime DEFAULT NULL,
  `protected` int(1) NOT NULL DEFAULT '0',
  `dev_user` int(1) NOT NULL DEFAULT '0',
  `msg_notification` int(1) NOT NULL DEFAULT '1',
  `force_pr` int(1) NOT NULL DEFAULT '0',
  `twoKey` varchar(16) DEFAULT NULL,
  `twoEnabled` int(1) DEFAULT '0',
  `cloak_allowed` tinyint(1) NOT NULL DEFAULT '0',
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `EMAIL` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `email_new`, `username`, `password`, `fname`, `lname`, `permissions`, `logins`, `account_owner`, `account_id`, `company`, `join_date`, `last_login`, `email_verified`, `vericode`, `vericode_expiry`, `active`, `oauth_provider`, `oauth_uid`, `gender`, `locale`, `gpluslink`, `picture`, `created`, `modified`, `fb_uid`, `un_changed`, `msg_exempt`, `last_confirm`, `protected`, `dev_user`, `msg_notification`, `force_pr`, `twoKey`, `twoEnabled`, `cloak_allowed`, `valid_from`, `valid_to`) VALUES (1,'userspicephp@gmail.com',NULL,'admin','$2y$12$E2ZMbq/Dgl6ImbkxSu195..dyyj.472GgerLCZ3CEnWq96oU.rgpW','The','Admin',1,16,1,0,'UserSpice','2016-01-01 00:00:00','2018-03-04 12:19:02',1,'uEFhVkYdTFWepaI','2018-03-04 11:19:02',0,'','','','','','','0000-00-00 00:00:00','1899-11-30 00:00:00','',0,1,'2018-03-04 12:19:02',1,0,1,0,NULL,0,0,NULL,NULL),(2,'noreply@userspice.com',NULL,'user','$2y$12$sN7BhRk2KIW.2OghKdRRmOVAMGwUeyXO5nYKnBvBOH4Kvj6YyW2fm','Sample','User',1,1,1,0,'none','2016-01-02 00:00:00','2018-03-04 10:02:17',1,'B9SEZIIO8uQLQUk','2018-03-04 09:02:17',1,'','','','','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',0,0,'2018-03-04 10:02:17',0,0,1,0,NULL,0,0,NULL,NULL),(11,'C1@C1.COM',NULL,'test_C1','$2y$12$1/bq10u/5B2zWts7Fwob6u57RrSPJUjtyHVd/PrFSdy0TpTaZ2itO','C1','CQ',1,4,1,0,'','2018-03-03 09:50:49','2018-03-04 09:27:00',1,'LPznIxOkIylZoTj','2018-03-04 08:27:00',1,'','','','','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',0,0,'2018-03-04 09:27:00',0,0,1,0,NULL,0,0,'2018-01-17 16:00:00','2018-03-01 10:00:00'),(14,'ca@ca.it',NULL,'cacca','$2y$12$Rx5oP1Zfrep22kuv/UmQ7ONxprUDhxFQmmhI5XLtV87X8n1iSn1pS','Cacca','Cacca',1,3,1,0,'','2018-03-04 11:32:57','2018-03-04 11:44:38',1,'jJp41DSIiFD4ac6','2018-03-04 10:44:38',1,'','','','','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',0,0,'2018-03-04 11:44:38',0,0,1,0,NULL,0,0,'2018-01-17 16:00:00','2018-03-01 10:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_online`
--

DROP TABLE IF EXISTS `users_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_online` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `user_id` int(10) NOT NULL,
  `session` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_online`
--

LOCK TABLES `users_online` WRITE;
/*!40000 ALTER TABLE `users_online` DISABLE KEYS */;
INSERT INTO `users_online` (`id`, `ip`, `timestamp`, `user_id`, `session`) VALUES (1,'127.0.0.1','1520162475',1,''),(3,'127.0.0.1','1520152021',11,''),(4,'127.0.0.1','1520154172',2,''),(5,'127.0.0.1','1520157976',12,''),(6,'127.0.0.1','1520158541',13,''),(7,'127.0.0.1','1520162321',14,'');
/*!40000 ALTER TABLE `users_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_session`
--

DROP TABLE IF EXISTS `users_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `uagent` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_session`
--

LOCK TABLES `users_session` WRITE;
/*!40000 ALTER TABLE `users_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 10:22:42
