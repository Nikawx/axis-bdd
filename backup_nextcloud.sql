-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nextcloud
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oc_accounts`
--

DROP TABLE IF EXISTS `oc_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_accounts` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_accounts`
--

LOCK TABLES `oc_accounts` WRITE;
/*!40000 ALTER TABLE `oc_accounts` DISABLE KEYS */;
INSERT INTO `oc_accounts` VALUES ('ubuntu_admin','{\"displayname\":{\"value\":\"ubuntu_admin\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"v2-federated\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"v2-federated\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"fediverse\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\"},\"profile_enabled\":{\"value\":\"1\"}}');
/*!40000 ALTER TABLE `oc_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_accounts_data`
--

DROP TABLE IF EXISTS `oc_accounts_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_accounts_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `accounts_data_uid` (`uid`),
  KEY `accounts_data_name` (`name`),
  KEY `accounts_data_value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_accounts_data`
--

LOCK TABLES `oc_accounts_data` WRITE;
/*!40000 ALTER TABLE `oc_accounts_data` DISABLE KEYS */;
INSERT INTO `oc_accounts_data` VALUES (1,'ubuntu_admin','displayname','ubuntu_admin'),(2,'ubuntu_admin','address',''),(3,'ubuntu_admin','website',''),(4,'ubuntu_admin','email',''),(5,'ubuntu_admin','phone',''),(6,'ubuntu_admin','twitter',''),(7,'ubuntu_admin','fediverse',''),(8,'ubuntu_admin','organisation',''),(9,'ubuntu_admin','role',''),(10,'ubuntu_admin','headline',''),(11,'ubuntu_admin','biography',''),(12,'ubuntu_admin','profile_enabled','1');
/*!40000 ALTER TABLE `oc_accounts_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity`
--

DROP TABLE IF EXISTS `oc_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_activity` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `user` varchar(64) DEFAULT NULL,
  `affecteduser` varchar(64) NOT NULL,
  `app` varchar(32) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `subjectparams` longtext NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `messageparams` longtext DEFAULT NULL,
  `file` varchar(4000) DEFAULT NULL,
  `link` varchar(4000) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`activity_id`),
  KEY `activity_user_time` (`affecteduser`,`timestamp`),
  KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  KEY `activity_filter` (`affecteduser`,`type`,`app`,`timestamp`),
  KEY `activity_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity`
--

LOCK TABLES `oc_activity` WRITE;
/*!40000 ALTER TABLE `oc_activity` DISABLE KEYS */;
INSERT INTO `oc_activity` VALUES (1,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"7\":\"\\/Documents\"}]','','[]','/Documents','http://192.168.64.128/apps/files/?dir=/','files',7),(2,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"8\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://192.168.64.128/apps/files/?dir=/Documents','files',8),(3,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"8\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://192.168.64.128/apps/files/?dir=/Documents','files',8),(4,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"9\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://192.168.64.128/apps/files/?dir=/Documents','files',9),(5,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"9\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://192.168.64.128/apps/files/?dir=/Documents','files',9),(6,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"10\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://192.168.64.128/apps/files/?dir=/Documents','files',10),(7,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"10\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://192.168.64.128/apps/files/?dir=/Documents','files',10),(8,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"11\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://192.168.64.128/apps/files/?dir=/Documents','files',11),(9,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"11\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://192.168.64.128/apps/files/?dir=/Documents','files',11),(10,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"12\":\"\\/Readme.md\"}]','','[]','/Readme.md','http://192.168.64.128/apps/files/?dir=/','files',12),(11,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"12\":\"\\/Readme.md\"}]','','[]','/Readme.md','http://192.168.64.128/apps/files/?dir=/','files',12),(12,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"13\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://192.168.64.128/apps/files/?dir=/','files',13),(13,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"13\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://192.168.64.128/apps/files/?dir=/','files',13),(14,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"14\":\"\\/Templates credits.md\"}]','','[]','/Templates credits.md','http://192.168.64.128/apps/files/?dir=/','files',14),(15,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"14\":\"\\/Templates credits.md\"}]','','[]','/Templates credits.md','http://192.168.64.128/apps/files/?dir=/','files',14),(16,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"15\":\"\\/Photos\"}]','','[]','/Photos','http://192.168.64.128/apps/files/?dir=/','files',15),(17,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"16\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',16),(18,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"16\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',16),(19,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"17\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',17),(20,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"17\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',17),(21,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"18\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://192.168.64.128/apps/files/?dir=/Photos','files',18),(22,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"18\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://192.168.64.128/apps/files/?dir=/Photos','files',18),(23,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"19\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',19),(24,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"19\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',19),(25,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"20\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',20),(26,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"20\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',20),(27,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"21\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',21),(28,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"21\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',21),(29,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"22\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',22),(30,1702570054,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"22\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',22),(31,1702570054,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"23\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',23),(32,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"23\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',23),(33,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"24\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',24),(34,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"24\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://192.168.64.128/apps/files/?dir=/Photos','files',24),(35,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"25\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://192.168.64.128/apps/files/?dir=/','files',25),(36,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"25\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://192.168.64.128/apps/files/?dir=/','files',25),(37,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"26\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://192.168.64.128/apps/files/?dir=/','files',26),(38,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"26\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://192.168.64.128/apps/files/?dir=/','files',26),(39,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"27\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://192.168.64.128/apps/files/?dir=/','files',27),(40,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"27\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://192.168.64.128/apps/files/?dir=/','files',27),(41,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"28\":\"\\/Templates\"}]','','[]','/Templates','http://192.168.64.128/apps/files/?dir=/','files',28),(42,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"29\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://192.168.64.128/apps/files/?dir=/Templates','files',29),(43,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"29\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://192.168.64.128/apps/files/?dir=/Templates','files',29),(44,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"30\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://192.168.64.128/apps/files/?dir=/Templates','files',30),(45,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"30\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://192.168.64.128/apps/files/?dir=/Templates','files',30),(46,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"31\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',31),(47,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"31\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',31),(48,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"32\":\"\\/Templates\\/Business model canvas.ods\"}]','','[]','/Templates/Business model canvas.ods','http://192.168.64.128/apps/files/?dir=/Templates','files',32),(49,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"32\":\"\\/Templates\\/Business model canvas.ods\"}]','','[]','/Templates/Business model canvas.ods','http://192.168.64.128/apps/files/?dir=/Templates','files',32),(50,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"33\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://192.168.64.128/apps/files/?dir=/Templates','files',33),(51,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"33\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://192.168.64.128/apps/files/?dir=/Templates','files',33),(52,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"34\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://192.168.64.128/apps/files/?dir=/Templates','files',34),(53,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"34\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://192.168.64.128/apps/files/?dir=/Templates','files',34),(54,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"35\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://192.168.64.128/apps/files/?dir=/Templates','files',35),(55,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"35\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://192.168.64.128/apps/files/?dir=/Templates','files',35),(56,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"36\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://192.168.64.128/apps/files/?dir=/Templates','files',36),(57,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"36\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://192.168.64.128/apps/files/?dir=/Templates','files',36),(58,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"37\":\"\\/Templates\\/Yellow idea.odp\"}]','','[]','/Templates/Yellow idea.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',37),(59,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"37\":\"\\/Templates\\/Yellow idea.odp\"}]','','[]','/Templates/Yellow idea.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',37),(60,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"38\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://192.168.64.128/apps/files/?dir=/Templates','files',38),(61,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"38\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://192.168.64.128/apps/files/?dir=/Templates','files',38),(62,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"39\":\"\\/Templates\\/Resume.odt\"}]','','[]','/Templates/Resume.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',39),(63,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"39\":\"\\/Templates\\/Resume.odt\"}]','','[]','/Templates/Resume.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',39),(64,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"40\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://192.168.64.128/apps/files/?dir=/Templates','files',40),(65,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"40\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://192.168.64.128/apps/files/?dir=/Templates','files',40),(66,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"41\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://192.168.64.128/apps/files/?dir=/Templates','files',41),(67,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"41\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://192.168.64.128/apps/files/?dir=/Templates','files',41),(68,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"42\":\"\\/Templates\\/Photo book.odt\"}]','','[]','/Templates/Photo book.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',42),(69,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"42\":\"\\/Templates\\/Photo book.odt\"}]','','[]','/Templates/Photo book.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',42),(70,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"43\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://192.168.64.128/apps/files/?dir=/Templates','files',43),(71,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"43\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://192.168.64.128/apps/files/?dir=/Templates','files',43),(72,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"44\":\"\\/Templates\\/Gotong royong.odp\"}]','','[]','/Templates/Gotong royong.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',44),(73,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"44\":\"\\/Templates\\/Gotong royong.odp\"}]','','[]','/Templates/Gotong royong.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',44),(74,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"45\":\"\\/Templates\\/Syllabus.odt\"}]','','[]','/Templates/Syllabus.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',45),(75,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"45\":\"\\/Templates\\/Syllabus.odt\"}]','','[]','/Templates/Syllabus.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',45),(76,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"46\":\"\\/Templates\\/Modern company.odp\"}]','','[]','/Templates/Modern company.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',46),(77,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"46\":\"\\/Templates\\/Modern company.odp\"}]','','[]','/Templates/Modern company.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',46),(78,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"47\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',47),(79,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"47\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',47),(80,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"48\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://192.168.64.128/apps/files/?dir=/Templates','files',48),(81,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"48\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://192.168.64.128/apps/files/?dir=/Templates','files',48),(82,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"49\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',49),(83,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"49\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',49),(84,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"50\":\"\\/Templates\\/Party invitation.odt\"}]','','[]','/Templates/Party invitation.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',50),(85,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"50\":\"\\/Templates\\/Party invitation.odt\"}]','','[]','/Templates/Party invitation.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',50),(86,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"51\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',51),(87,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"51\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://192.168.64.128/apps/files/?dir=/Templates','files',51),(88,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"52\":\"\\/Templates\\/Timesheet.ods\"}]','','[]','/Templates/Timesheet.ods','http://192.168.64.128/apps/files/?dir=/Templates','files',52),(89,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"52\":\"\\/Templates\\/Timesheet.ods\"}]','','[]','/Templates/Timesheet.ods','http://192.168.64.128/apps/files/?dir=/Templates','files',52),(90,1702570055,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"53\":\"\\/Templates\\/Mother\'s day.odt\"}]','','[]','/Templates/Mother\'s day.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',53),(91,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','changed_self','[{\"53\":\"\\/Templates\\/Mother\'s day.odt\"}]','','[]','/Templates/Mother\'s day.odt','http://192.168.64.128/apps/files/?dir=/Templates','files',53),(92,1702570055,30,'file_changed','ubuntu_admin','ubuntu_admin','files','renamed_self','[{\"28\":\"\\/\\/Mod\\u00e8les\"},{\"28\":\"\\/\\/Templates\"}]','','[]','//Modèles','http://192.168.64.128/apps/files/?dir=/','files',28),(93,1702570055,30,'calendar','ubuntu_admin','ubuntu_admin','dav','calendar_add_self','{\"actor\":\"ubuntu_admin\",\"calendar\":{\"id\":1,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',1),(94,1702570055,30,'contacts','ubuntu_admin','ubuntu_admin','dav','addressbook_add_self','{\"actor\":\"ubuntu_admin\",\"addressbook\":{\"id\":1,\"uri\":\"contacts\",\"name\":\"Contacts\"}}','','[]','','','addressbook',1),(95,1702570244,30,'file_created','ubuntu_admin','ubuntu_admin','files','created_self','[{\"63\":\"\\/Talk\"}]','','[]','/Talk','http://192.168.64.128/apps/files/?dir=/','files',63);
/*!40000 ALTER TABLE `oc_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity_mq`
--

DROP TABLE IF EXISTS `oc_activity_mq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_activity_mq` (
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amq_timestamp` int(11) NOT NULL DEFAULT 0,
  `amq_latest_send` int(11) NOT NULL DEFAULT 0,
  `amq_type` varchar(255) NOT NULL,
  `amq_affecteduser` varchar(64) NOT NULL,
  `amq_appid` varchar(32) NOT NULL,
  `amq_subject` varchar(255) NOT NULL,
  `amq_subjectparams` longtext DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mail_id`),
  KEY `amp_user` (`amq_affecteduser`),
  KEY `amp_latest_send_time` (`amq_latest_send`),
  KEY `amp_timestamp_time` (`amq_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity_mq`
--

LOCK TABLES `oc_activity_mq` WRITE;
/*!40000 ALTER TABLE `oc_activity_mq` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_activity_mq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbookchanges`
--

DROP TABLE IF EXISTS `oc_addressbookchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_addressbookchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `addressbookid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addressbookid_synctoken` (`addressbookid`,`synctoken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbookchanges`
--

LOCK TABLES `oc_addressbookchanges` WRITE;
/*!40000 ALTER TABLE `oc_addressbookchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_addressbookchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbooks`
--

DROP TABLE IF EXISTS `oc_addressbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_addressbooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `addressbook_index` (`principaluri`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbooks`
--

LOCK TABLES `oc_addressbooks` WRITE;
/*!40000 ALTER TABLE `oc_addressbooks` DISABLE KEYS */;
INSERT INTO `oc_addressbooks` VALUES (1,'principals/users/ubuntu_admin','Contacts','contacts',NULL,1);
/*!40000 ALTER TABLE `oc_addressbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_appconfig`
--

DROP TABLE IF EXISTS `oc_appconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_appconfig` (
  `appid` varchar(32) NOT NULL DEFAULT '',
  `configkey` varchar(64) NOT NULL DEFAULT '',
  `configvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`appid`,`configkey`),
  KEY `appconfig_config_key_index` (`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_appconfig`
--

LOCK TABLES `oc_appconfig` WRITE;
/*!40000 ALTER TABLE `oc_appconfig` DISABLE KEYS */;
INSERT INTO `oc_appconfig` VALUES ('activity','enabled','yes'),('activity','installed_version','2.19.0'),('activity','types','filesystem'),('backgroundjob','lastjob','49'),('calendar','enabled','yes'),('calendar','installed_version','4.6.0'),('calendar','types',''),('circles','enabled','yes'),('circles','installed_version','27.0.1'),('circles','loopback_tmp_scheme','http'),('circles','maintenance_run','0'),('circles','maintenance_update','{\"3\":1703060809,\"2\":1703060809,\"1\":1703060809}'),('circles','types','filesystem,dav'),('cloud_federation_api','enabled','yes'),('cloud_federation_api','installed_version','1.10.0'),('cloud_federation_api','types','filesystem'),('comments','enabled','yes'),('comments','installed_version','1.17.0'),('comments','types','logging'),('contacts','enabled','yes'),('contacts','installed_version','5.5.0'),('contacts','types','dav'),('contactsinteraction','enabled','yes'),('contactsinteraction','installed_version','1.8.0'),('contactsinteraction','types','dav'),('core','installedat','1702570048.6701'),('core','lastcron','1703061162'),('core','lastupdateResult','{\"version\":\"27.1.5.1\",\"versionstring\":\"Nextcloud 27.1.5\",\"url\":\"https:\\/\\/download.nextcloud.com\\/server\\/releases\\/nextcloud-27.1.5.zip\",\"web\":\"https:\\/\\/docs.nextcloud.com\\/server\\/27\\/admin_manual\\/maintenance\\/upgrade.html\",\"changes\":\"https:\\/\\/updates.nextcloud.com\\/changelog_server\\/?version=27.1.5\",\"autoupdater\":\"1\",\"eol\":\"0\"}'),('core','lastupdatedat','1703060784'),('core','oc.integritycheck.checker','[]'),('core','public_files','files_sharing/public.php'),('core','public_webdav','dav/appinfo/v1/publicwebdav.php'),('core','vendor','nextcloud'),('dashboard','enabled','yes'),('dashboard','installed_version','7.7.0'),('dashboard','types',''),('dav','enabled','yes'),('dav','installed_version','1.27.0'),('dav','types','filesystem'),('federatedfilesharing','enabled','yes'),('federatedfilesharing','installed_version','1.17.0'),('federatedfilesharing','types',''),('federation','enabled','yes'),('federation','installed_version','1.17.0'),('federation','types','authentication'),('files','enabled','yes'),('files','installed_version','1.22.0'),('files','types','filesystem'),('files_pdfviewer','enabled','yes'),('files_pdfviewer','installed_version','2.8.0'),('files_pdfviewer','types',''),('files_reminders','enabled','yes'),('files_reminders','installed_version','1.0.0'),('files_reminders','types',''),('files_rightclick','enabled','yes'),('files_rightclick','installed_version','1.6.0'),('files_rightclick','types',''),('files_sharing','enabled','yes'),('files_sharing','installed_version','1.19.0'),('files_sharing','types','filesystem'),('files_trashbin','enabled','yes'),('files_trashbin','installed_version','1.17.0'),('files_trashbin','types','filesystem,dav'),('files_versions','enabled','yes'),('files_versions','installed_version','1.20.0'),('files_versions','types','filesystem,dav'),('firstrunwizard','enabled','yes'),('firstrunwizard','installed_version','2.16.0'),('firstrunwizard','types','logging'),('logreader','enabled','yes'),('logreader','installed_version','2.12.0'),('logreader','types','logging'),('lookup_server_connector','enabled','yes'),('lookup_server_connector','installed_version','1.15.0'),('lookup_server_connector','types','authentication'),('mail','enabled','yes'),('mail','installed_version','3.5.0'),('mail','types',''),('nextcloud_announcements','enabled','yes'),('nextcloud_announcements','installed_version','1.16.0'),('nextcloud_announcements','pub_date','Thu, 24 Oct 2019 00:00:00 +0200'),('nextcloud_announcements','types','logging'),('notes','enabled','yes'),('notes','installed_version','4.9.0'),('notes','types',''),('notifications','enabled','yes'),('notifications','installed_version','2.15.0'),('notifications','types','logging'),('oauth2','enabled','yes'),('oauth2','installed_version','1.15.1'),('oauth2','types','authentication'),('password_policy','enabled','yes'),('password_policy','installed_version','1.17.0'),('password_policy','types','authentication'),('photos','enabled','yes'),('photos','installed_version','2.3.0'),('photos','lastPlaceMappedUser','ubuntu_admin'),('photos','lastPlaceMappingDone','true'),('photos','types','dav,authentication'),('privacy','enabled','yes'),('privacy','installed_version','1.11.0'),('privacy','types',''),('provisioning_api','enabled','yes'),('provisioning_api','installed_version','1.17.0'),('provisioning_api','types','prevent_group_restriction'),('recommendations','enabled','yes'),('recommendations','installed_version','1.6.0'),('recommendations','types',''),('related_resources','enabled','yes'),('related_resources','installed_version','1.2.0'),('related_resources','types',''),('richdocuments','enabled','yes'),('richdocuments','installed_version','8.2.3'),('richdocuments','types','prevent_group_restriction'),('serverinfo','cached_count_filecache','145'),('serverinfo','cached_count_storages','2'),('serverinfo','enabled','yes'),('serverinfo','installed_version','1.17.0'),('serverinfo','types',''),('settings','enabled','yes'),('settings','installed_version','1.9.0'),('settings','types',''),('sharebymail','enabled','yes'),('sharebymail','installed_version','1.17.0'),('sharebymail','types','filesystem'),('spreed','enabled','yes'),('spreed','installed_version','17.1.3'),('spreed','signaling_token_privkey_es256','-----BEGIN PRIVATE KEY-----\nMIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgQFgtRe7+DJYNdWM4\nJX+3H2Ka8OaUpo/T2LmxRBiUIy2hRANCAARQ+Wquo8ngPPlRE1AzaAmqiagOL1Ut\n3sPlP0BtRvIodn0AkyrlOJKYjEsdaSVOtcEFRwpx4V1zefQy7U1cfWWQ\n-----END PRIVATE KEY-----\n'),('spreed','signaling_token_pubkey_es256','-----BEGIN PUBLIC KEY-----\nMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEUPlqrqPJ4Dz5URNQM2gJqomoDi9V\nLd7D5T9AbUbyKHZ9AJMq5TiSmIxLHWklTrXBBUcKceFdc3n0Mu1NXH1lkA==\n-----END PUBLIC KEY-----\n'),('spreed','types','dav,prevent_group_restriction'),('support','enabled','yes'),('support','installed_version','1.10.0'),('support','types','session'),('survey_client','enabled','yes'),('survey_client','installed_version','1.15.0'),('survey_client','types',''),('systemtags','enabled','yes'),('systemtags','installed_version','1.17.0'),('systemtags','types','logging'),('text','enabled','yes'),('text','installed_version','3.8.0'),('text','types','dav'),('theming','enabled','yes'),('theming','installed_version','2.2.0'),('theming','types','logging'),('twofactor_backupcodes','enabled','yes'),('twofactor_backupcodes','installed_version','1.16.0'),('twofactor_backupcodes','types',''),('updatenotification','core','27.1.5.1'),('updatenotification','enabled','yes'),('updatenotification','installed_version','1.17.0'),('updatenotification','notes','4.9.1'),('updatenotification','spreed','17.1.4'),('updatenotification','types',''),('updatenotification','update_check_errors','0'),('user_status','enabled','yes'),('user_status','installed_version','1.7.0'),('user_status','types',''),('viewer','enabled','yes'),('viewer','installed_version','2.1.0'),('viewer','types',''),('weather_status','enabled','yes'),('weather_status','installed_version','1.7.0'),('weather_status','types',''),('workflowengine','enabled','yes'),('workflowengine','installed_version','2.9.0'),('workflowengine','types','filesystem');
/*!40000 ALTER TABLE `oc_appconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_authorized_groups`
--

DROP TABLE IF EXISTS `oc_authorized_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_authorized_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admindel_groupid_idx` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_authorized_groups`
--

LOCK TABLES `oc_authorized_groups` WRITE;
/*!40000 ALTER TABLE `oc_authorized_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_authorized_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_authtoken`
--

DROP TABLE IF EXISTS `oc_authtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_authtoken` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL DEFAULT '',
  `login_name` varchar(255) NOT NULL DEFAULT '',
  `password` longtext DEFAULT NULL,
  `name` longtext NOT NULL,
  `token` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(5) unsigned DEFAULT 0,
  `remember` smallint(5) unsigned DEFAULT 0,
  `last_activity` int(10) unsigned DEFAULT 0,
  `last_check` int(10) unsigned DEFAULT 0,
  `scope` longtext DEFAULT NULL,
  `expires` int(10) unsigned DEFAULT NULL,
  `private_key` longtext DEFAULT NULL,
  `public_key` longtext DEFAULT NULL,
  `version` smallint(5) unsigned NOT NULL DEFAULT 1,
  `password_invalid` tinyint(1) DEFAULT 0,
  `password_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authtoken_token_index` (`token`),
  KEY `authtoken_last_activity_idx` (`last_activity`),
  KEY `authtoken_uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_authtoken`
--

LOCK TABLES `oc_authtoken` WRITE;
/*!40000 ALTER TABLE `oc_authtoken` DISABLE KEYS */;
INSERT INTO `oc_authtoken` VALUES (7,'ubuntu_admin','ubuntu_admin','4T9NqtgKHZRPOlS4JKPEWCpqvqYf2MnlU8IqZp1NRiUPvJlF1DlYWqmYCFbHZNO1OXy50VaQK3kt2DxmNSeaLouXiPG7/C/G2v4TnF3EaygGLCHJmcA2w8IVLYiY7nPRkSApAcUZAhGnz96V18vpVSTAAV0d3NexmilQC4ameFYO02p3ufhvhjk8uX78Izr/4+FBOUhgV29Ixfk1CYXUmc4xRmO9SDfUH1AyRJ5tN112A5ki+PXCQNpk1xF/tB7B+amGsXJno6tcLv4TMTKqxyXuxxgVMp62xHUd6pRPxEdteFrVnCgINJnZRsW3YG9Jan79tw5n3A9fUS2gA5d4Iw==','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','b0b548c15382451c0604f9bdf03465991e8671b5eeb0f08230629a804b34ba10a471bc28fb91a89fc03172e4954b1e7f2b27179d3be881d15f491b8dff69fd2e',0,1,1703061254,1703061223,NULL,NULL,'8cc8c037e6ba4222580133213aa0f85e60d74409154b57c3a9ba3927bf07cf0dc5cf46b09f5efbc12b39040a0e96ea54a513b1ab48cbb194e53d1c3b0ff05ad393b0c46aba61d6e0570a542854e9efacd53d3a92094888da7e50a6ffb734f9ddabd68f92967e1c59f858fff79e5ef14baa4a80422ff031813807af721727e57213c5222384f3bfa7a4d64c78351c3cb936962d9ef92bb70ce4cd88ddb62fe887ad667b3a78a6bf96cfad9e12f751c3115957d489ea23958a300fe1dd00fe5bff78274fba1421fa5372141bdcfffc1deb843d52bcec0612677a9946fd3620eb8d6d02fe8eeca770ae8acbbae2cfb2b9f18900d9039c199900c0911f48455e789cd5bec40b1a48a75b580e0eed1cfac3f5a96eac65f64c30c03edda2cba5eca9ae7e5646da7fe8d20dcec8444ea29ceaeab38b82854e08ada4803789389a44ffbb7881ef72d19433d05f627541c50fee98b7116bdde93aa69145a0cd15adc2cd468ec24aa549926f94c6fa05f2be9d98db95c2a481731cf830dabe6de01a27e9c1845b4e9b8522bf29296858ae354b828256b96a4b13a1ac1257c9d22892958777a3a4302e37772b99d9452fd92da74407db9b87ebda60e0fbd9aee91df6c9c03acbfc9bf4bc1c075d4b928cbd90fd5d7045ce1f52d8f577407f3dc70a6504826b0b0a381c4049168bbc39467f2bb5f6e9caeeaf0f71d3f3eb36d8891c0709f1209dbfb1dc1d6f2b52631d82ca068d7a2b3e3437badcabc725ac1232c9fb8045271b97d04ca5106247e4ee9d67f6ad86420b8ece7b18a069f11e9b06901490b06532ed3683a9cd4a2b6634dca694cf02e037486d46ff0792d5e933b14a561feb9643f7cb2690507d9b1d61de7f20406793f754c51abb203b0eab731b85abe5b9ed630824d0d469ad5aff67930110ce899cbbe39f50b2677608136fe89a408972b9e9ee8adf67eaddcb7d50f3ac5667b97b6b987f7e3512770ff61d50725a8956c3654bac8de4a1fa4301ae1c97112b2cbdb17487ada180aade2e2929b34cba66a04fba9692d11df4b55dc43a3e9076c230e1c823dd4ed84f4ca61bb20c06af916e15520f6912c5bb76d6989851e97774e8abeac5f9d022ee3d0afc75ea85e5e07c0cb888707be9684b2dead10d7642dd6524decb90c0a4d97e0bc8c8624ef2dad5a37dea5edecbae1acc8455ebe3471cce6660a7652840f6651c97b0b9920d292550bd9a2b5bfb49de693aa71eb8d54363f1cd38e6c63243fe287948a529e5837fe302ac7c820260d8312b2c7ee18c601a44ee4894b5295093647b4f0859e06818a5c9cfcdacab952faf5419c28c2d925357990b13edb884747a13179a4375826dffd705e14d310fa6d1036456393cb892a95ff05e719b99b54cd1bb72a64855176c20442beb341b7ce6e3395f3e4aa25b7844a46abb229ec808219b3dca99f05250f67fedb91bb5c46080a2d4a64b3ad81bd3d7470f92edbc2989b6b321c8a35d8c087e81411a200b8150cf6815f3a59b6ef736b506b88d8e22237bf6867f308fc8a504dd501117bf26452890b5d914e5a16f912a9986e60fa308247097efd74875c2670a4603cf5ecf240ffa330b72d014596ccf614a6bad6dce554007e344baefaa03c190448c8338ba33b836c02f08b50fb87113d469f716554877e1b61ac94f9493d5edca9da6606cbc0d24b83e4ec873ac7a385fe7c4c1643ad2d560584e5958723707e7e733cdd109ea6bbb09095c7a6a2b062d804ddada1afc92aaa697f376b359febae9dcfd2ba7a51bbceee2c86e5badb280bd52086bda5483122c6cd92b78899b2cc566c07f64f07eee94d2ed29b33fccdada44d53f8a49576f57b735c7abab31eda54e6271c7f703379095eb1bf3241e20bae14d17f8095e73e6cc163db3f8d2fdd9d16628ba3446c09e50960e962a1bccd582aee0deaa63552c79bf28d56a294ea36353b69af208519d0fe85cdf1853e61486169ecbb5bf0dd33da3d4e44f31e7af9f50c00635832c8a57293bb0bae0ca30592b25b1c609ac9321c1e34a5003d92b663ec4225e5aabd7b2bcbb548706e2fd731edd8210f5c2bb847cf98beac4f4a0766da65f94f391cb19b59bb83b521e2cbc52a948575eb131a99efdfe28414ca8903cfbe5748d6eff18d4ffff0d64c37d76bbbf4a128607d64db830218ca8957aeb56a4b4f185f6473a520f84aaf2ef41d512fd55c6219e5e2928a52b620effbffd140dba86f58a85e8eedcf4a6a4d75234e37d165bc548d0c3acd46f317f67484e966bbb8e801d9b99088e119518ca465981702c69a8192c7f6d63d0931dabec9d81877534a11a8cbea495a00b9d41f9d8aa9baa59648191f3cae8d1d7bf881e9292e55effc38fcef36789460778c400b2345ac73374443f099b9d3cb1c2c83722b1ac11aaf6502940|264415d30952db46b48973eb79a75f38|d564a899cf9b4ad0b9308f9cd21eb6d9bbd8621a468d076579cd55ae15cbe32dc55b5700fd7ba42019dba9127fcf77977f88af8c2bbcdf3a764e0e550976d31b|3','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA+7R4ct+WrXmiM5b2XwQy\nO1ekn0DR/tyKwLEWh/jqaPmp/EGD3CH0EaIKMtL1O9VTeWuZxnUFA9fO/9OS58Kj\nW4M5tNmhlaNQz/oYquGCq8G/dn8LfL+qa9Uw1W7XnqMF0RDp1PxSkmvncxOt8EUE\nHMBBu3UxprBX2duoAXDDyhl96NwmKCW6MW6iB+4Zazt7JIw1v1uy0kGC/xb7WOIu\nOMzaua6N4rvAje1ASluWAW4S0jT/sfz67qCv5NJalrDG0OBK0ACo+WjhNiMnYgsq\nqEyOYrlQaGrDQ6oPFcODNbBEfepl6qjuhI5VAS/3F6VjtPeNW2cdVYfZznSnl8Wh\n3QIDAQAB\n-----END PUBLIC KEY-----\n',2,0,'3|$argon2id$v=19$m=65536,t=4,p=1$TWZXUlNTa01jdHVRRW9ILw$qZDGg3TXogwE6SetYoa1oDTp8QEco7iCZk9IR04hqLs');
/*!40000 ALTER TABLE `oc_authtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_bruteforce_attempts`
--

DROP TABLE IF EXISTS `oc_bruteforce_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_bruteforce_attempts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `occurred` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `subnet` varchar(255) NOT NULL DEFAULT '',
  `metadata` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bruteforce_attempts_ip` (`ip`),
  KEY `bruteforce_attempts_subnet` (`subnet`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_bruteforce_attempts`
--

LOCK TABLES `oc_bruteforce_attempts` WRITE;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_appt_bookings`
--

DROP TABLE IF EXISTS `oc_calendar_appt_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_appt_bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appt_config_id` bigint(20) unsigned NOT NULL,
  `created_at` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `display_name` varchar(128) NOT NULL,
  `description` longtext DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `timezone` varchar(32) NOT NULL,
  `confirmed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_bk_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_appt_bookings`
--

LOCK TABLES `oc_calendar_appt_bookings` WRITE;
/*!40000 ALTER TABLE `oc_calendar_appt_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_appt_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_appt_configs`
--

DROP TABLE IF EXISTS `oc_calendar_appt_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_appt_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` longtext DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `visibility` varchar(10) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `target_calendar_uri` varchar(255) NOT NULL,
  `calendar_freebusy_uris` longtext DEFAULT NULL,
  `availability` longtext DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `increment` int(11) NOT NULL,
  `preparation_duration` int(11) NOT NULL DEFAULT 0,
  `followup_duration` int(11) NOT NULL DEFAULT 0,
  `time_before_next_slot` int(11) DEFAULT NULL,
  `daily_max` int(11) DEFAULT NULL,
  `future_limit` int(11) DEFAULT NULL,
  `create_talk_room` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_appt_configs`
--

LOCK TABLES `oc_calendar_appt_configs` WRITE;
/*!40000 ALTER TABLE `oc_calendar_appt_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_appt_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_invitations`
--

DROP TABLE IF EXISTS `oc_calendar_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_invitations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `recurrenceid` varchar(255) DEFAULT NULL,
  `attendee` varchar(255) NOT NULL,
  `organizer` varchar(255) NOT NULL,
  `sequence` bigint(20) unsigned DEFAULT NULL,
  `token` varchar(60) NOT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_invitation_tokens` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_invitations`
--

LOCK TABLES `oc_calendar_invitations` WRITE;
/*!40000 ALTER TABLE `oc_calendar_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_reminders`
--

DROP TABLE IF EXISTS `oc_calendar_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_reminders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendar_id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `is_recurring` smallint(6) DEFAULT NULL,
  `uid` varchar(255) NOT NULL,
  `recurrence_id` bigint(20) unsigned DEFAULT NULL,
  `is_recurrence_exception` smallint(6) NOT NULL,
  `event_hash` varchar(255) NOT NULL,
  `alarm_hash` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `is_relative` smallint(6) NOT NULL,
  `notification_date` bigint(20) unsigned NOT NULL,
  `is_repeat_based` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_reminder_objid` (`object_id`),
  KEY `calendar_reminder_uidrec` (`uid`,`recurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_reminders`
--

LOCK TABLES `oc_calendar_reminders` WRITE;
/*!40000 ALTER TABLE `oc_calendar_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources`
--

DROP TABLE IF EXISTS `oc_calendar_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) DEFAULT NULL,
  `resource_id` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `group_restrictions` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_resources_email` (`email`),
  KEY `calendar_resources_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources`
--

LOCK TABLES `oc_calendar_resources` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources_md`
--

DROP TABLE IF EXISTS `oc_calendar_resources_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_resources_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_md_idk` (`resource_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources_md`
--

LOCK TABLES `oc_calendar_resources_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms`
--

DROP TABLE IF EXISTS `oc_calendar_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) DEFAULT NULL,
  `resource_id` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `group_restrictions` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_rooms_email` (`email`),
  KEY `calendar_rooms_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms`
--

LOCK TABLES `oc_calendar_rooms` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms_md`
--

DROP TABLE IF EXISTS `oc_calendar_rooms_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_rooms_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_md_idk` (`room_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms_md`
--

LOCK TABLES `oc_calendar_rooms_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarchanges`
--

DROP TABLE IF EXISTS `oc_calendarchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendarchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `calendarid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `calid_type_synctoken` (`calendarid`,`calendartype`,`synctoken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarchanges`
--

LOCK TABLES `oc_calendarchanges` WRITE;
/*!40000 ALTER TABLE `oc_calendarchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects`
--

DROP TABLE IF EXISTS `oc_calendarobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendarobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendardata` longblob DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `calendarid` bigint(20) unsigned NOT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `componenttype` varchar(8) DEFAULT NULL,
  `firstoccurence` bigint(20) unsigned DEFAULT NULL,
  `lastoccurence` bigint(20) unsigned DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `classification` int(11) DEFAULT 0,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  `deleted_at` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calobjects_index` (`calendarid`,`calendartype`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects`
--

LOCK TABLES `oc_calendarobjects` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects_props`
--

DROP TABLE IF EXISTS `oc_calendarobjects_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendarobjects_props` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendarid` bigint(20) NOT NULL DEFAULT 0,
  `objectid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) DEFAULT NULL,
  `parameter` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `calendarobject_index` (`objectid`,`calendartype`),
  KEY `calendarobject_name_index` (`name`,`calendartype`),
  KEY `calendarobject_value_index` (`value`,`calendartype`),
  KEY `calendarobject_calid_index` (`calendarid`,`calendartype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects_props`
--

LOCK TABLES `oc_calendarobjects_props` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendars`
--

DROP TABLE IF EXISTS `oc_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `description` varchar(255) DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT 0,
  `calendarcolor` varchar(255) DEFAULT NULL,
  `timezone` longtext DEFAULT NULL,
  `components` varchar(64) DEFAULT NULL,
  `transparent` smallint(6) NOT NULL DEFAULT 0,
  `deleted_at` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calendars_index` (`principaluri`,`uri`),
  KEY `cals_princ_del_idx` (`principaluri`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendars`
--

LOCK TABLES `oc_calendars` WRITE;
/*!40000 ALTER TABLE `oc_calendars` DISABLE KEYS */;
INSERT INTO `oc_calendars` VALUES (1,'principals/users/ubuntu_admin','Personal','personal',1,NULL,0,'#0082c9',NULL,'VEVENT',0,NULL);
/*!40000 ALTER TABLE `oc_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarsubscriptions`
--

DROP TABLE IF EXISTS `oc_calendarsubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendarsubscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `principaluri` varchar(255) DEFAULT NULL,
  `displayname` varchar(100) DEFAULT NULL,
  `refreshrate` varchar(10) DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT 0,
  `calendarcolor` varchar(255) DEFAULT NULL,
  `striptodos` smallint(6) DEFAULT NULL,
  `stripalarms` smallint(6) DEFAULT NULL,
  `stripattachments` smallint(6) DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `source` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calsub_index` (`principaluri`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarsubscriptions`
--

LOCK TABLES `oc_calendarsubscriptions` WRITE;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards`
--

DROP TABLE IF EXISTS `oc_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT 0,
  `carddata` longblob DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `lastmodified` bigint(20) unsigned DEFAULT NULL,
  `etag` varchar(32) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_abid` (`addressbookid`),
  KEY `cards_abiduri` (`addressbookid`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards`
--

LOCK TABLES `oc_cards` WRITE;
/*!40000 ALTER TABLE `oc_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards_properties`
--

DROP TABLE IF EXISTS `oc_cards_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cards_properties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT 0,
  `cardid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `card_contactid_index` (`cardid`),
  KEY `card_name_index` (`name`),
  KEY `card_value_index` (`value`),
  KEY `cards_prop_abid` (`addressbookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards_properties`
--

LOCK TABLES `oc_cards_properties` WRITE;
/*!40000 ALTER TABLE `oc_cards_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cards_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_circle`
--

DROP TABLE IF EXISTS `oc_circles_circle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_circles_circle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(31) NOT NULL,
  `name` varchar(127) NOT NULL,
  `display_name` varchar(255) DEFAULT '',
  `sanitized_name` varchar(127) DEFAULT '',
  `instance` varchar(255) DEFAULT '',
  `config` int(10) unsigned DEFAULT NULL,
  `source` int(10) unsigned DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `contact_addressbook` int(10) unsigned DEFAULT NULL,
  `contact_groupname` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8195F548E3C68343` (`unique_id`),
  KEY `IDX_8195F548D48A2F7C` (`config`),
  KEY `IDX_8195F5484230B1DE` (`instance`),
  KEY `IDX_8195F5485F8A7F73` (`source`),
  KEY `IDX_8195F548C317B362` (`sanitized_name`),
  KEY `dname` (`display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_circle`
--

LOCK TABLES `oc_circles_circle` WRITE;
/*!40000 ALTER TABLE `oc_circles_circle` DISABLE KEYS */;
INSERT INTO `oc_circles_circle` VALUES (1,'TcgyFhk35BnFUaRTslJKITB1s1Gtfky','user:ubuntu_admin:TcgyFhk35BnFUaRTslJKITB1s1Gtfky','ubuntu_admin','','',1,1,'[]','','2023-12-14 16:07:34',0,''),(2,'wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38','app:circles:wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38','Circles','','',8193,10001,'[]','','2023-12-14 16:07:34',0,'');
/*!40000 ALTER TABLE `oc_circles_circle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_event`
--

DROP TABLE IF EXISTS `oc_circles_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_circles_event` (
  `token` varchar(63) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `event` longtext DEFAULT NULL,
  `result` longtext DEFAULT NULL,
  `interface` int(11) NOT NULL DEFAULT 0,
  `severity` int(11) DEFAULT NULL,
  `retry` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `creation` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`token`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_event`
--

LOCK TABLES `oc_circles_event` WRITE;
/*!40000 ALTER TABLE `oc_circles_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_member`
--

DROP TABLE IF EXISTS `oc_circles_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_circles_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `single_id` varchar(31) DEFAULT NULL,
  `circle_id` varchar(31) NOT NULL,
  `member_id` varchar(31) DEFAULT NULL,
  `user_id` varchar(127) NOT NULL,
  `user_type` smallint(6) NOT NULL DEFAULT 1,
  `instance` varchar(255) DEFAULT '',
  `invited_by` varchar(31) DEFAULT NULL,
  `level` smallint(6) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `cached_name` varchar(255) DEFAULT '',
  `cached_update` datetime DEFAULT NULL,
  `contact_id` varchar(127) DEFAULT NULL,
  `contact_meta` longtext DEFAULT NULL,
  `joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_member_cisiuiutil` (`circle_id`,`single_id`,`user_id`,`user_type`,`instance`,`level`),
  KEY `circles_member_cisi` (`circle_id`,`single_id`),
  KEY `IDX_25C66A49E7A1254A` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_member`
--

LOCK TABLES `oc_circles_member` WRITE;
/*!40000 ALTER TABLE `oc_circles_member` DISABLE KEYS */;
INSERT INTO `oc_circles_member` VALUES (1,'wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38','wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38','wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38','circles',10000,'',NULL,9,'Member','[]','Circles','2023-12-14 16:07:34','',NULL,'2023-12-14 16:07:34'),(2,'TcgyFhk35BnFUaRTslJKITB1s1Gtfky','TcgyFhk35BnFUaRTslJKITB1s1Gtfky','TcgyFhk35BnFUaRTslJKITB1s1Gtfky','ubuntu_admin',1,'','wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38',9,'Member','[]','ubuntu_admin','2023-12-14 16:07:34','',NULL,'2023-12-14 16:07:34');
/*!40000 ALTER TABLE `oc_circles_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_membership`
--

DROP TABLE IF EXISTS `oc_circles_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_circles_membership` (
  `circle_id` varchar(31) NOT NULL,
  `single_id` varchar(31) NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `inheritance_first` varchar(31) NOT NULL,
  `inheritance_last` varchar(31) NOT NULL,
  `inheritance_depth` int(10) unsigned NOT NULL,
  `inheritance_path` longtext NOT NULL,
  PRIMARY KEY (`single_id`,`circle_id`),
  KEY `IDX_8FC816EAE7C1D92B` (`single_id`),
  KEY `circles_membership_ifilci` (`inheritance_first`,`inheritance_last`,`circle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_membership`
--

LOCK TABLES `oc_circles_membership` WRITE;
/*!40000 ALTER TABLE `oc_circles_membership` DISABLE KEYS */;
INSERT INTO `oc_circles_membership` VALUES ('TcgyFhk35BnFUaRTslJKITB1s1Gtfky','TcgyFhk35BnFUaRTslJKITB1s1Gtfky',9,'TcgyFhk35BnFUaRTslJKITB1s1Gtfky','TcgyFhk35BnFUaRTslJKITB1s1Gtfky',1,'[\"TcgyFhk35BnFUaRTslJKITB1s1Gtfky\"]'),('wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38','wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38',9,'wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38','wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38',1,'[\"wwyIBVu5sYOjYH9uRJYOVesJ8KU4j38\"]');
/*!40000 ALTER TABLE `oc_circles_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_mount`
--

DROP TABLE IF EXISTS `oc_circles_mount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_circles_mount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mount_id` varchar(31) NOT NULL,
  `circle_id` varchar(31) NOT NULL,
  `single_id` varchar(31) NOT NULL,
  `token` varchar(63) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `mountpoint` longtext DEFAULT NULL,
  `mountpoint_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_mount_cimipt` (`circle_id`,`mount_id`,`parent`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_mount`
--

LOCK TABLES `oc_circles_mount` WRITE;
/*!40000 ALTER TABLE `oc_circles_mount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_mount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_mountpoint`
--

DROP TABLE IF EXISTS `oc_circles_mountpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_circles_mountpoint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mount_id` varchar(31) NOT NULL,
  `single_id` varchar(31) NOT NULL,
  `mountpoint` longtext DEFAULT NULL,
  `mountpoint_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_mountpoint_ms` (`mount_id`,`single_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_mountpoint`
--

LOCK TABLES `oc_circles_mountpoint` WRITE;
/*!40000 ALTER TABLE `oc_circles_mountpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_mountpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_remote`
--

DROP TABLE IF EXISTS `oc_circles_remote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_circles_remote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT 'Unknown',
  `interface` int(11) NOT NULL DEFAULT 0,
  `uid` varchar(20) DEFAULT NULL,
  `instance` varchar(127) DEFAULT NULL,
  `href` varchar(254) DEFAULT NULL,
  `item` longtext DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F94EF834230B1DE` (`instance`),
  KEY `IDX_F94EF83539B0606` (`uid`),
  KEY `IDX_F94EF8334F8E741` (`href`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_remote`
--

LOCK TABLES `oc_circles_remote` WRITE;
/*!40000 ALTER TABLE `oc_circles_remote` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_remote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_share_lock`
--

DROP TABLE IF EXISTS `oc_circles_share_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_circles_share_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(31) NOT NULL,
  `circle_id` varchar(31) NOT NULL,
  `instance` varchar(127) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_337F52F8126F525E70EE2FF6` (`item_id`,`circle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_share_lock`
--

LOCK TABLES `oc_circles_share_lock` WRITE;
/*!40000 ALTER TABLE `oc_circles_share_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_share_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_token`
--

DROP TABLE IF EXISTS `oc_circles_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_circles_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `share_id` int(11) DEFAULT NULL,
  `circle_id` varchar(31) DEFAULT NULL,
  `single_id` varchar(31) DEFAULT NULL,
  `member_id` varchar(31) DEFAULT NULL,
  `token` varchar(31) DEFAULT NULL,
  `password` varchar(127) DEFAULT NULL,
  `accepted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sicisimit` (`share_id`,`circle_id`,`single_id`,`member_id`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_token`
--

LOCK TABLES `oc_circles_token` WRITE;
/*!40000 ALTER TABLE `oc_circles_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_accesscache`
--

DROP TABLE IF EXISTS `oc_collres_accesscache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_collres_accesscache` (
  `user_id` varchar(64) NOT NULL,
  `collection_id` bigint(20) NOT NULL DEFAULT 0,
  `resource_type` varchar(64) NOT NULL DEFAULT '',
  `resource_id` varchar(64) NOT NULL DEFAULT '',
  `access` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`user_id`,`collection_id`,`resource_type`,`resource_id`),
  KEY `collres_user_res` (`user_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_accesscache`
--

LOCK TABLES `oc_collres_accesscache` WRITE;
/*!40000 ALTER TABLE `oc_collres_accesscache` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_accesscache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_collections`
--

DROP TABLE IF EXISTS `oc_collres_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_collres_collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_collections`
--

LOCK TABLES `oc_collres_collections` WRITE;
/*!40000 ALTER TABLE `oc_collres_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_resources`
--

DROP TABLE IF EXISTS `oc_collres_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_collres_resources` (
  `collection_id` bigint(20) NOT NULL,
  `resource_type` varchar(64) NOT NULL,
  `resource_id` varchar(64) NOT NULL,
  PRIMARY KEY (`collection_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_resources`
--

LOCK TABLES `oc_collres_resources` WRITE;
/*!40000 ALTER TABLE `oc_collres_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments`
--

DROP TABLE IF EXISTS `oc_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `topmost_parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `children_count` int(10) unsigned NOT NULL DEFAULT 0,
  `actor_type` varchar(64) NOT NULL DEFAULT '',
  `actor_id` varchar(64) NOT NULL DEFAULT '',
  `message` longtext DEFAULT NULL,
  `verb` varchar(64) DEFAULT NULL,
  `creation_timestamp` datetime DEFAULT NULL,
  `latest_child_timestamp` datetime DEFAULT NULL,
  `object_type` varchar(64) NOT NULL DEFAULT '',
  `object_id` varchar(64) NOT NULL DEFAULT '',
  `reference_id` varchar(64) DEFAULT NULL,
  `reactions` varchar(4000) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_parent_id_index` (`parent_id`),
  KEY `comments_topmost_parent_id_idx` (`topmost_parent_id`),
  KEY `comments_object_index` (`object_type`,`object_id`,`creation_timestamp`),
  KEY `comments_actor_index` (`actor_type`,`actor_id`),
  KEY `expire_date` (`expire_date`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments`
--

LOCK TABLES `oc_comments` WRITE;
/*!40000 ALTER TABLE `oc_comments` DISABLE KEYS */;
INSERT INTO `oc_comments` VALUES (1,0,0,0,'users','ubuntu_admin','{\"message\":\"conversation_created\",\"parameters\":[]}','system','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(2,0,0,0,'guests','changelog','## Bienvenue sur Nextcloud Talk !\nDans cette conversation, vous serez informé des nouvelles fonctionnalités disponibles sur Nextcloud Talk.','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(3,0,0,0,'guests','changelog','## Nouveau sur Talk 6','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(4,0,0,0,'guests','changelog','- Microsoft Edge et Safari peuvent désormais être utilisés pour participer aux appels audio et vidéo','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(5,0,0,0,'guests','changelog','- Les conversations un-à-un sont désormais persistantes et ne peuvent plus être transformées en conversations de groupe par accident. De plus, lorsque l\'un des participants quitte la conversation, celle-ci n\'est plus automatiquement supprimée. Ce n\'est que si les deux participants quittent la conversation que celle-ci est supprimée du serveur.','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(6,0,0,0,'guests','changelog','-  Vous pouvez notifier tous les participants en écrivant \"@all\" dans la discussion','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(7,0,0,0,'guests','changelog','- Avec la touche \"flèche du haut\" vous pouvez renvoyer votre dernier message','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(8,0,0,0,'guests','changelog','- Talk peut maintenant utiliser des commandes, envoyez \"/help\" comme un message dans le tchat pour vérifier si l\'administrateur en a configuré','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(9,0,0,0,'guests','changelog','- Avec les projets vous pouvez créer des liens rapides entre des conversations, des fichiers et d\'autres éléments','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(10,0,0,0,'guests','changelog','## Nouveau sur Talk 7','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(11,0,0,0,'guests','changelog','- Désormais vous pouvez mentionner les invités dans la discussion','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(12,0,0,0,'guests','changelog','- Les conversations peuvent désormais avoir une salle d\'attente. Cela permet aux modérateurs de rejoindre la conversation et l\'appel afin de préparer la réunion pendant que les invités attendent','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(13,0,0,0,'guests','changelog','## Nouveau sur Talk 8','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(14,0,0,0,'guests','changelog','- Vous pouvez maintenant répondre directement aux messages, ce qui permet aux autres utilisateurs de mieux comprendre le contexte de votre message','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(15,0,0,0,'guests','changelog','- La recherche de conversations et de participants permet désormais de filtrer vos conversations existantes, ce qui facilite considérablement la recherche de conversations antérieures','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(16,0,0,0,'guests','changelog','- Vous pouvez désormais ajouter des groupes d\'utilisateurs aux conversations lorsque l\'application Cercles est installée','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(17,0,0,0,'guests','changelog','## Nouveau sur Talk 9','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(18,0,0,0,'guests','changelog','- Découvrez la nouvelle vue en grille des appels','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(19,0,0,0,'guests','changelog','- Vous pouvez maintenant téléverser et glisser-déposer des fichiers directement depuis votre appareil vers la discussion.','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(20,0,0,0,'guests','changelog','Les fichiers partagés sont maintenant ouverts directement à l\'intérieur de la conversation avec les applications de visionnage','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(21,0,0,0,'guests','changelog','## Nouveau sur Talk 10','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(22,0,0,0,'guests','changelog','- Vous pouvez maintenant rechercher dans les discussions et les messages depuis la recherche unifiée de la barre supérieure','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(23,0,0,0,'guests','changelog','- Mettez du piment dans vos messages avec les émojis du sélecteur d\'émojis','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(24,0,0,0,'guests','changelog','- Vous pouvez maintenant modifier votre micro et votre caméra pendant l\'appel','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(25,0,0,0,'guests','changelog','## Nouveau sur Talk 11','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(26,0,0,0,'guests','changelog','- Donnez à vos conversations un contexte avec une description et ouvrez-les pour que les utilisateurs connectés puissent les trouver et s\'y joindre.','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(27,0,0,0,'guests','changelog','- Voir un état de lecture et renvoyer les messages échoués','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(28,0,0,0,'guests','changelog','- Lever la main lors d\'un appel avec la touche R','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(29,0,0,0,'guests','changelog','## Nouveau sur Talk 12','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(30,0,0,0,'guests','changelog','- Participez à la même conversation et appelez depuis plusieurs appareils','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(31,0,0,0,'guests','changelog','- Envoyez des messages vocaux, partagez votre emplacement ou vos coordonnées','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(32,0,0,0,'guests','changelog','- Ajoutez des groupes à une conversation et les nouveaux membres du groupe seront automatiquement ajoutés en tant que participants','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(33,0,0,0,'guests','changelog','## Nouveau sur Talk 13','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(34,0,0,0,'guests','changelog','- Une prévisualisation de vos flux audio et vidéo est montrée avant de rejoindre un appel','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(35,0,0,0,'guests','changelog','- Vous pouvez maintenant flouter l\'arrière-plan dans la nouvelle disposition de la fenêtre d\'appel','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(36,0,0,0,'guests','changelog','- Les modérateurs peuvent maintenant donner des permissions générales et individuelles aux participants','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(37,0,0,0,'guests','changelog','## Nouveau sur Talk 14','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(38,0,0,0,'guests','changelog','- Vous pouvez désormais réagir aux messages des discussions','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(39,0,0,0,'guests','changelog','- Dans le panneau latéral, vous pouvez désormais trouver une vue globale des derniers objets partagés','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(40,0,0,0,'guests','changelog','## Nouveau sur Talk 15','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(41,0,0,0,'guests','changelog','- Utiliser un sondage pour connaître l\'opinion des autres ou définir une date','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(42,0,0,0,'guests','changelog','- Configurer une durée d\'expiration pour les messages','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(43,0,0,0,'guests','changelog','- Commence les appels sans notifier les autres dans les grandes conversations. Vous pouvez envoyer une notification d\'appel individuel une fois que l\'appel a commencé.','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(44,0,0,0,'guests','changelog','- Envoi des messages sans notifier les destinataires si ce n\'est pas urgent','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(45,0,0,0,'guests','changelog','## Nouveau sur Talk 16','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(46,0,0,0,'guests','changelog','- Les émojis peuvent maintenant être autocomplétés en tapant un « : »','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(47,0,0,0,'guests','changelog','- Liez divers éléments grâce au sélecteur intelligent en tapant un « / »','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(48,0,0,0,'guests','changelog','- Les modérateurs peuvent désormais créer des salles de sous-groupes (requiert le serveur de signalement externe)','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(49,0,0,0,'guests','changelog','- Les appels peuvent maintenant être enregistrés (requiert le serveur de signalement externe)','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(50,0,0,0,'guests','changelog','## Nouveau sur Talk 17\n- Les conversations peuvent maintenant avoir comme icône un avatar ou un emoji\n- des fonds d\'écran virtuels sont maintenant disponibles en plus du fond flouté pour les appels vidéos\n- Les réactions sont maintenant possible pendant les appels\n- Des indicateurs montrent quels utilisateurs sont actuellement en train d\'écrire des messages\n- Les groupes peuvent maintenant être mentionnés dans les conversations\n- Les enregistrements d\'appel sont automatiquement retranscrits si une application de transcription est configurée\n- Les messages peuvent être traduits automatiquement si une application de traduction est configurée','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL),(51,0,0,0,'guests','changelog','## Nouveau sur Talk 17.1\n- La syntaxe **Markdown** peut maintenant être utilisée dans la messagerie instantanée\n- Les Webhooks sont maintenant disponibles pour créer des robots conversationnels. Voir la documentation pour plus d\'informations : https://nextcloud-talk.readthedocs.io/en/latest/bot-list/\n- Définir un rappel sur un message pour être notifié à nouveau plus tard','comment','2023-12-14 16:10:46',NULL,'chat','1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `oc_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments_read_markers`
--

DROP TABLE IF EXISTS `oc_comments_read_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_comments_read_markers` (
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `object_type` varchar(64) NOT NULL DEFAULT '',
  `object_id` varchar(64) NOT NULL DEFAULT '',
  `marker_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`object_type`,`object_id`),
  KEY `comments_marker_object_index` (`object_type`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments_read_markers`
--

LOCK TABLES `oc_comments_read_markers` WRITE;
/*!40000 ALTER TABLE `oc_comments_read_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_comments_read_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_cal_proxy`
--

DROP TABLE IF EXISTS `oc_dav_cal_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_dav_cal_proxy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(64) NOT NULL,
  `proxy_id` varchar(64) NOT NULL,
  `permissions` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_cal_proxy_uidx` (`owner_id`,`proxy_id`,`permissions`),
  KEY `dav_cal_proxy_ipid` (`proxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_cal_proxy`
--

LOCK TABLES `oc_dav_cal_proxy` WRITE;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_shares`
--

DROP TABLE IF EXISTS `oc_dav_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_dav_shares` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access` smallint(6) DEFAULT NULL,
  `resourceid` bigint(20) unsigned NOT NULL,
  `publicuri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_shares_index` (`principaluri`,`resourceid`,`type`,`publicuri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_shares`
--

LOCK TABLES `oc_dav_shares` WRITE;
/*!40000 ALTER TABLE `oc_dav_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_direct_edit`
--

DROP TABLE IF EXISTS `oc_direct_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_direct_edit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `editor_id` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `share_id` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  `accessed` tinyint(1) DEFAULT 0,
  `file_path` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4D5AFECA5F37A13B` (`token`),
  KEY `direct_edit_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_direct_edit`
--

LOCK TABLES `oc_direct_edit` WRITE;
/*!40000 ALTER TABLE `oc_direct_edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_direct_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_directlink`
--

DROP TABLE IF EXISTS `oc_directlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_directlink` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) DEFAULT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  `token` varchar(60) DEFAULT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `directlink_token_idx` (`token`),
  KEY `directlink_expiration_idx` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_directlink`
--

LOCK TABLES `oc_directlink` WRITE;
/*!40000 ALTER TABLE `oc_directlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_directlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_federated_reshares`
--

DROP TABLE IF EXISTS `oc_federated_reshares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_federated_reshares` (
  `share_id` bigint(20) NOT NULL,
  `remote_id` varchar(255) DEFAULT '',
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_federated_reshares`
--

LOCK TABLES `oc_federated_reshares` WRITE;
/*!40000 ALTER TABLE `oc_federated_reshares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_federated_reshares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_file_locks`
--

DROP TABLE IF EXISTS `oc_file_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_file_locks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lock` int(11) NOT NULL DEFAULT 0,
  `key` varchar(64) NOT NULL,
  `ttl` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lock_key_index` (`key`),
  KEY `lock_ttl_index` (`ttl`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_file_locks`
--

LOCK TABLES `oc_file_locks` WRITE;
/*!40000 ALTER TABLE `oc_file_locks` DISABLE KEYS */;
INSERT INTO `oc_file_locks` VALUES (1,0,'files/4a49de377fd7cff58cd9cd987dde649f',1702573659),(2,0,'files/00d303f083a0e12e22aeedf18cfea27a',1703064486),(3,0,'files/8972ac352714fecd5f1da74d2d472ba5',1702573844),(5,0,'files/5243f52f7a7973256243698e01cb5133',1703064486),(6,0,'files/a9f35e36d1b2d548278623cd5e9bb411',1702573847),(7,0,'files/661631ad7c5cd50c4efd826c5f60159b',1702573847),(8,0,'files/5dc2e738699f5a670fc817ad69144830',1702573847),(9,0,'files/a914aa6078bdfaa33988f5d8350653e0',1702573847),(10,0,'files/e3047c3026576328e902c5dfcbcfbf0b',1702573847),(11,0,'files/4fe9bd62c0169380605e38b44b62b1e6',1702573847),(12,0,'files/707d1eeb2ffce97373bae029543e09d8',1702573847),(13,0,'files/4754cbc176863e74785707e7ab00176b',1702573847),(14,0,'files/72997a88a40929ae563d08502c1e8ca2',1702573847),(15,0,'files/61c887260250e86fde4f19f26fe7ffe6',1702573847),(16,0,'files/29b9ca7f383bbceab68de834b3ff0176',1702573847),(17,0,'files/d92b15b78c5e3e2562e527ab9d1473e9',1702573847),(18,0,'files/a2d217e0a1f5c31d863cab2041f96793',1702573847),(19,0,'files/651d2a9b159abdecf10b095b4548c84a',1702573847),(20,0,'files/f9d9e89084fdc0374dd35a9c0d255646',1702573847),(21,0,'files/771fcd9ec81d42164ddd9e4c7c08d87f',1702573847),(22,0,'files/3a98d5e6782287990142f6809f3b68f1',1702573847),(23,0,'files/8b0f09512199b36cefde7159a461f085',1702573847),(24,0,'files/45cd918dfa07383f28ba437fe8881c49',1702573847),(25,0,'files/0af37ea4655a6cbdec023494433b3557',1702573847),(26,0,'files/2897191f9dacf2d91b0770ce8a769ed2',1702573847),(27,0,'files/bb20bbb0492ea4fc17ea2a9e4990b9d6',1702573847),(30,0,'files/3bd8d1d9b0fe6f35cc2dcc15c6b4b63c',1703064486),(31,0,'files/0867fc453f3dc69fb16d2fe78d1143db',1702573847),(32,0,'files/23eabfef9bcfcb1bb40ef70fbae80000',1702573847),(33,0,'files/9049f41170aaf2edc9a2b7fa7118ffc0',1702573847),(34,0,'files/f1d44c3ccd30b6e7a44360b4bd3e0c0f',1702573847),(35,0,'files/5cb04b88b7fe8645fef92d711b1afcb5',1702573847),(36,0,'files/4cedc58454a8330162a732b4d912b242',1702573847),(37,0,'files/15443461bbf63cd3fb2b8666d2f2b118',1702573847),(38,0,'files/761be60fbf56201ceb6fb841f046e7ee',1702573847),(42,0,'files/a46692bb2df61f4c239fc7e5d3c1d130',1703064387),(43,0,'files/02165d945dd69f3f48565f6d27564420',1703064387),(44,0,'files/d566e5eaa9affb66777d5fb45f974ab2',1703064387),(45,0,'files/91fc72b09b40800c6b1907cb0ae54b31',1703064387),(46,0,'files/e5ad74a407bacd89428eafbc9daed5ef',1703064387),(47,0,'files/e0b6b52fcbe66edab9d222cf9e295017',1703064387),(48,0,'files/1e085b15a74f7a7dd7a83eeecbda6bdd',1703064387),(49,0,'files/86586f81e8d0a925d0437e4e4036a63b',1703064387),(51,0,'files/feb2efd2365bb7a8b6eefb1436f5f5d3',1703064387),(52,0,'files/b5a6946bb7fe4e55f143313d351856ae',1703064387),(53,0,'files/666609a4ad1a6a7b41193a3a9c2e7f9e',1703064387),(55,0,'files/7533c5cc15600a608e8c6fd211bdaa07',1703064387),(56,0,'files/224025397e3d552b95f196f91f739602',1703064387),(57,0,'files/13e8a6874588d616c353f1b4f67cd7bd',1703064387),(58,0,'files/132afcce664adfbdefbe1cc7c72c6fbb',1703064387),(59,0,'files/7d8c67c00c8a005fefb4ecc71362e818',1703064388),(65,0,'files/65cbd4d0e4298c38e8a90cea3013828b',1703064468),(66,0,'files/98ee733a52f493fd2c754cc89d402f6f',1703064468),(67,0,'files/7a8fa97a545ebf952df081b30fdb1919',1703064468),(68,0,'files/0f7e79d9842f912c9f41486928ef4e3c',1703064468),(69,0,'files/6b4a229f1809771b378d52ec834969e0',1703064468),(70,0,'files/050ff540cc7b5ec356ad8b572d6d642e',1703064468),(71,0,'files/e95a2b3d6a896d2aef70880208e1fdf5',1703064468),(72,0,'files/77e71a5d4e0001e5e8e11f25a3f58f80',1703064468),(76,0,'files/fd0e5bb3fda140f5d60357768f03054d',1703064468),(77,0,'files/bcf207bc591b18e3ad40e146f796867f',1703064468),(78,0,'files/6efd9756ea6c6b98339965a813914dd4',1703064468),(79,0,'files/a728fe459e4d1fa5946bdeeff433cea9',1703064468),(80,0,'files/df8b170c974e80d9c9775fda1a7dc0c0',1703064468),(81,0,'files/c5a208dcb86a1a2da64503dacaae5908',1703064468),(82,0,'files/b68c50aef6c719fdc9e8c5e0e2101cf4',1703064468),(83,0,'files/b3c630fa838c3fd8cc00b71f2aded0ff',1703064468),(84,0,'files/ea5323127d2565dca563353f42575f43',1703064468),(85,0,'files/8fc8fb0142894150ce1f749099b6fbe4',1703064468),(86,0,'files/85be9cc8c900965dd08e95c28ff238f6',1703064468),(87,0,'files/c349156631ac83566bb65eb10ff43e3d',1703064468),(88,0,'files/9637c328bd3af0a02b8e50deb0259c21',1703064468),(89,0,'files/8807fc1fae4f8d23f8fe092417409c65',1703064468),(90,0,'files/c91380a4e007589c0af422f5f98e1278',1703064468),(91,0,'files/c0d6ab027dac7816fcddaf96f6674950',1703064468),(92,0,'files/323a2bf2fec6ef3ade2bd7a83a8ced86',1703064468),(93,0,'files/2c8839f428842d4bf225af399e82be18',1703064486),(94,0,'files/6cf761c671f57417d224cb6dc4faf2d6',1703064486),(95,0,'files/08bd8d917da3a26475604a7a9d7102f7',1703064468),(96,0,'files/ac9c344613ed6d9d2ab075db2ab95541',1703064468),(97,0,'files/d0f465f13c447d2cb590ea3a17d8b5ec',1703064468),(98,0,'files/b1b965a3d82860178ed0fcf74ca8c893',1703064468),(99,0,'files/3fe9e0e13e4b9cec8167c04a8631acf7',1703064468),(100,0,'files/7aa686c9564771fd838ebb835c82a4d0',1703064468),(101,0,'files/50092327653ae6dea04ca5f5542b065d',1703064469),(102,0,'files/e6c4e7f98ac4bf3cf5d92ab92acdebb3',1703064469),(103,0,'files/6df64eed69b7f2d65cabb6ebccb43147',1703064469),(104,0,'files/9e17a3e34dcc5f7cb401af5f7b8754ef',1703064469),(105,0,'files/9e99dab531bcb6a22cd8f9b3c973638b',1703064469),(106,0,'files/7b6fc5dbb47b7ef586f9b882a17e687d',1703064469),(107,0,'files/9d2c6659ec610465a564aa7cd2154a22',1703064469),(108,0,'files/605c3c569e0dbdaa2195509e5b514690',1703064469),(109,0,'files/eb33c1bf616e5cab82c6f7edd95894b1',1703064469),(110,0,'files/9857890d67e956e5e33a0819d0397937',1703064469),(111,0,'files/693753a428e79bfb90bb967ce4ed37b1',1703064469),(112,0,'files/d502f9b1ee34c2f1f85884447f9c9fb1',1703064469),(113,0,'files/b1a1c936378739feab482ce80b4f9c55',1703064469),(114,0,'files/21cbcfe724b2607e102aa889dbcc0bfb',1703064469),(115,0,'files/b42940f4deb7b13042baf406c98674ae',1703064469),(117,0,'files/6d1d1d6e8b010e46e22fd4b7e62c20cd',1703064479),(118,0,'files/3d0cdb2918df06238c782becd1d67a08',1703064479),(119,0,'files/fd41dbe52aa8501405a685fb8e1f2754',1703064479),(120,0,'files/45adad7216ade696c39e0b11aed94c41',1703064479),(121,0,'files/e498db7a33a853ab2b03e9d9f4d2cf8a',1703064479),(122,0,'files/c31c69a844b482ac2a46b7a98462bb3c',1703064479),(123,0,'files/8ac9d14a20b876fe9d16047e61cc2450',1703064479),(124,0,'files/6f2d412be70aa6fe509d673d1d3b6501',1703064479),(125,0,'files/81cd7390bc6d114069dfe77e008abd96',1703064479),(126,0,'files/0a20af71baa57d68e6344ef3b7a375ff',1703064479),(127,0,'files/8877feead6d3b6a0aa5fd9d29416cc91',1703064479),(128,0,'files/9a2f16d0fd47f6cc86705c44d59f4661',1703064479),(129,0,'files/b4199e09b0b55de3005c688334b53401',1703064479),(133,0,'files/ad9bb0f388861bd39264e1b3b7361e77',1703064479),(135,0,'files/63922caee6402c31b95bf4f5f6277b05',1703064479),(137,0,'files/67568d52c9e033edd4042701bbee1fe3',1703064479),(139,0,'files/9c43fb5bb30e25ee69bec654544a621e',1703064479),(140,0,'files/c4dc268fe416f718f6a56827049e11fa',1703064479),(141,0,'files/5205b57729eeb6aad1713b1d78645b38',1703064479),(142,0,'files/de19ecb9154055aa45ff7a429d2d0289',1703064479),(143,0,'files/b34ad514d161994807f63b4b0059caae',1703064479),(147,0,'files/1536898463f4d76cb054e9cc80ca32fe',1703064479),(148,0,'files/407ea3cf06fad56ded74ba3b75b01562',1703064479),(149,0,'files/27fb91db561b4f2eccceb9fbbbb7d391',1703064479),(150,0,'files/16e2aacd1ae4e64fa8a33271328ed265',1703064479),(151,0,'files/ab4b58c76129fbc63154a966d6695aef',1703064479),(152,0,'files/149141f990661077fa3bfd5453f1d111',1703064479),(153,0,'files/7ed4c7258c72d7e71b208e7f4b2c07f6',1703064479),(157,0,'files/405f3b1d4bac7fda3e4c55fb96e5ad8e',1703064479),(158,0,'files/cd8b599191fc5c508dbefb17ef2681a1',1703064479),(159,0,'files/a7d44523a9d254595a7060967ecdb27a',1703064479),(160,0,'files/8812feede8c5563614c0318239890e4e',1703064479),(161,0,'files/aa036b05c59ef7320a6960f82a4adedc',1703064479),(162,0,'files/c77612a0c180a680857a1e1ed1fd8035',1703064479),(163,0,'files/7f00b38ac49d648413e0b175490adc5a',1703064479),(164,0,'files/20774b40eaca50b36738b0884f5bd7e9',1703064479),(168,0,'files/9bf6397281f6d4b22cdfe8e3e2b564ce',1703064479),(169,0,'files/88f8a23fff9d3fd84e2a1e3a5c8ea050',1703064479),(170,0,'files/32d965da5a3690059a1f02b59471ffdf',1703064479),(171,0,'files/508bb247d0148516d666ced071295d15',1703064479),(172,0,'files/7fd74e6fcf83291a5109a7b0ac621af8',1703064479),(173,0,'files/e6cda528fbf224ababfd5693de5bcbe8',1703064479),(174,0,'files/b11410d8ee7edbb6be8afef6c4d71bec',1703064479),(178,0,'files/78b568f11ce8e4d478739bca2e8596eb',1703064479),(179,0,'files/35d4aabc2e0424f7d21183b6dac75902',1703064479),(180,0,'files/d6e81d374415bfc9f8a8e59b933750e6',1703064479),(181,0,'files/45eecd6c10b1cd52320690aab221d7e4',1703064479),(182,0,'files/3c651da2ec944c18283d54dae518f605',1703064479),(183,0,'files/737e29f72bb176f0494995ba02c68ccb',1703064479),(184,0,'files/1de97a3b52d788a4c14364a74b255bab',1703064479),(188,0,'files/3675461542bd1dae7b3b5dd58196773e',1703064479),(189,0,'files/4633ebe901ebf6c6157796b74e20bfbf',1703064479),(190,0,'files/1dc6dc9312824735f312b6091394f0ee',1703064479),(191,0,'files/b34215570acc7853fb5dc18acb8dc186',1703064479),(192,0,'files/868d71c7d093a3b6be67b01acbeef15b',1703064479),(193,0,'files/2dcc69343caced739e39599df0d74465',1703064479),(197,0,'files/2a5a77a1b1ccb9cc216ba4adecc74ab5',1703064479),(198,0,'files/ed8c95302775a08a8af03ae87ae465c4',1703064479),(199,0,'files/f75228b50da0b10aa4608e4be92c6b18',1703064479),(200,0,'files/b4a3050383d6c1f9765a3cd5c7157ec4',1703064479),(201,0,'files/8dbff4e166afdf62a7ce763b178b428b',1703064479),(202,0,'files/84ff52af01b5453f4417b2a8fa052b1b',1703064479),(203,0,'files/48b35472d6608309a5951ddb77e50a9e',1703064479),(204,0,'files/9e257dac890166449da3dcb45841868b',1703064479),(208,0,'files/90b30acfd391edc89178109445abbc8b',1703064485),(209,0,'files/c50971b3e63574af7cff70e5c410ec61',1703064485),(210,0,'files/3d356dad3c1ebafba17d9d5ee280dcf9',1703064485),(211,0,'files/f88ca1baa1187b326b34332d41a20494',1703064485),(212,0,'files/3268ccec4d2f4fc6813d185713016853',1703064485),(213,0,'files/80eaf923e9e0a4f033cc503492366070',1703064485),(214,0,'files/9291bb9d6391a8b4da7cfa9d12bd9534',1703064485),(218,0,'files/b73a1ed92c3937b89f80406837c4c24d',1703064485),(219,0,'files/7c80eed64d3801bb6f62b1ed9eb04354',1703064485),(220,0,'files/95f3b11d2bcdfc541b9ee815188907c2',1703064485),(221,0,'files/b799748e40c9c41272daa7b03d5c45bd',1703064485),(222,0,'files/50cac544288dd3d8e3aceb43b2015424',1703064485),(223,0,'files/9da1905c27f027199d1ceae8e209b606',1703064485),(224,0,'files/db4eb48b03c05d4a16efb2d95a36e8ea',1703064485),(225,0,'files/9d9fc470372e4fb0aeff8d9e717bcfb4',1703064485),(229,0,'files/e9d46f7ea8be73d0f1fa73f59b1827fd',1703064485),(230,0,'files/220af80cd124300daa387d17dc05fbf8',1703064485),(231,0,'files/bcccd51ecca724343c9ef49dea175b6c',1703064485),(232,0,'files/6ea6a18519446a6e99e86c86a5147b98',1703064485),(233,0,'files/7a96cb6d52803aabd7136a41a7e08833',1703064485),(234,0,'files/74aae4661743a76ca4d544d044bbc56f',1703064485),(235,0,'files/7fe49301d89ae817261f78f110b632de',1703064485),(239,0,'files/2a3d3c52c0942f5850a11e1689b3e45d',1703064485),(240,0,'files/e5413cfa349264183cdad9a0af74e138',1703064485),(241,0,'files/1c0a7ec7a2a30205f9844977c9fede31',1703064485),(242,0,'files/1b712049b342c4ddb2b855d4f1a2c6f0',1703064485),(243,0,'files/cec26372827c73d07f588493cbf0e634',1703064485),(244,0,'files/25498b84e173a033d2963807f2508626',1703064485),(245,0,'files/914e1f4abe415a7dd1327e3f35efff19',1703064485),(246,0,'files/58ec0c7f0793676a697a24e875a882d9',1703064485),(247,0,'files/9800795ac8fc65eb5c1ec8e9c2381a8d',1703064485),(248,0,'files/b52b1505e1488aeb70aacc76e03fd0b3',1703064485),(249,0,'files/6c683293bd364743128fb800f45441ae',1703064485),(251,0,'files/6c349d5060b28347e248f628018bf563',1703064485),(252,0,'files/12f6ff316fbeebeef023e7e882126bd8',1703064485),(255,0,'files/0fa9e6ad7ffed4d002c01a4b32944f88',1703064485),(259,0,'files/f6f5e36ae52078876cbbd44cc7bed5f9',1703064485),(260,0,'files/1f6790e143b798988068f775813eec35',1703064485),(261,0,'files/582b6c7a2b363975dadb1d6dacbc9760',1703064485),(262,0,'files/09a50365fd3573a1ae6309c2024d6b78',1703064485),(263,0,'files/53585f159e865ffa84bf66fc9ad927c9',1703064485),(264,0,'files/2712bbeb5c2b1002ebbc04dfed40398a',1703064485),(265,0,'files/dfd948201372596e963bd3353565c076',1703064485),(269,0,'files/3eefab5f6364384c01b0f7627f86afd7',1703064485),(270,0,'files/308a2b380d84b5ef1ca64998c1114bf8',1703064485),(271,0,'files/0a50e03097c3d81846c77335efe51e4b',1703064485),(272,0,'files/85ccd06c9e8b7a7f5c0a7313960041c3',1703064485),(273,0,'files/70ca47e0a7e579820ba4bde5ef29c827',1703064485),(274,0,'files/db65fe2fc2e4579c885860eaf5f0ce98',1703064485),(275,0,'files/cd975b77bddda54734e3473dd5436f13',1703064485),(276,0,'files/4b3fa2959bb8a07ea80b117b06bd58f7',1703064485),(277,0,'files/80949b9f178829fe07c7c97423ff7a32',1703064485),(278,0,'files/5106b5c07e995de50401087fed46a31c',1703064485),(279,0,'files/9082006bc01c03c288d3204c06fa72ec',1703064485),(280,0,'files/8a8a83d0ef84458bf4e3664ea38f4028',1703064485),(281,0,'files/e422e538a723b17149f2d6596599acff',1703064485),(285,0,'files/8a00866aac6f1327dc8d8a5b24a77b0a',1703064485),(289,0,'files/97f60f530c797aba8aacdc8f44b563c6',1703064485),(290,0,'files/f4dd523e8c76dcbe79648867cbaad1e1',1703064485),(291,0,'files/89da0c322e2660879e5eb7826d8a97e3',1703064485),(292,0,'files/adeb7470ba9c2fe6f1bd95c46bc268eb',1703064485),(293,0,'files/cc969dd2ca16528b89b24bea196295d6',1703064485),(294,0,'files/33ea4bb03e24b994954a6f3addd0cf32',1703064485),(295,0,'files/5f842144638144c3cf7cf7413f222dd7',1703064485),(299,0,'files/3b19abac74084038e814b61be84a162f',1703064485),(300,0,'files/998924d21d9d98a603342ab1ce8b2004',1703064485),(301,0,'files/f2aa9744627c2e143d8ffcb75cf4aba1',1703064485),(302,0,'files/00296fa75429aa3f11ae774f36347e29',1703064485),(303,0,'files/f77f6951f4321ffd17421988ccac4146',1703064485),(304,0,'files/ab51e39e89ee6fe8661aaf5d6a3df83c',1703064485),(305,0,'files/8f462b3c2888c0d416a9db7b59203c6c',1703064485),(306,0,'files/55b056f57cfc2bc7d6a9948b09418e2a',1703064485),(310,0,'files/5b29d20032ff144d1abbd18663ac4d8e',1703064486),(311,0,'files/d7fea528010a15690da97039a213f8db',1703064486),(312,0,'files/9ff84b52ce5d1b2e61d426f465318a49',1703064486),(313,0,'files/eebd6512c78f7bd38e5782cdf0228202',1703064486),(314,0,'files/d565720e5c1a4aaaea4673818b538201',1703064486),(315,0,'files/ea71b19d5eb5f96ca3e3c807eed2e6a7',1703064486),(316,0,'files/f64d47884c3dd501a4a80c49c7f9e979',1703064486),(317,0,'files/e27f3ae33952030b35b2782b149679ef',1703064486),(322,0,'files/c4c20b0c366167067a6c70114f153512',1703064486),(324,0,'files/4266e0fe6c9b2deb7add1b05b1bf308a',1703064486),(325,0,'files/e4d0deb1134fdef282ff4f958e46a52d',1703064486),(326,0,'files/6c11726b9fff221d49bf8cbc703a9fcc',1703064486),(327,0,'files/83d288f3cf411222c931b0dd720bcd49',1703064486),(330,0,'files/da770bafa10b797e2b5d88cc836ae8a3',1703064486),(331,0,'files/71576e503f71a36a1debbdc3b41024b1',1703064486),(332,0,'files/2a05fb2a637966c2340c66b0f230edcf',1703064486),(333,0,'files/a863b2b47f8364943b74fad9b7cde2cc',1703064486),(337,0,'files/039dadfdaff4e1527d1156a83c5c9f1a',1703064486),(338,0,'files/63159b2a03574be7ac74501edc7f7901',1703064486),(339,0,'files/35f21424b3f1da3f0eb3876612edeea1',1703064486),(340,0,'files/bdc63f8e7efb693197cdc3113524811f',1703064486),(341,0,'files/609d7cfef4eece027d5a96a47d52c6b0',1703064486),(342,0,'files/c6d187c1c0135a3bf293f1df8ab3d622',1703064486),(343,0,'files/b28f3a5f147cd18a078e688f8029a423',1703064486);
/*!40000 ALTER TABLE `oc_file_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_file_metadata`
--

DROP TABLE IF EXISTS `oc_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_file_metadata` (
  `id` bigint(20) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`,`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_file_metadata`
--

LOCK TABLES `oc_file_metadata` WRITE;
/*!40000 ALTER TABLE `oc_file_metadata` DISABLE KEYS */;
INSERT INTO `oc_file_metadata` VALUES (16,'size','{\"width\":1600,\"height\":1067}'),(17,'size','{\"width\":1600,\"height\":1066}'),(19,'size','{\"width\":1920,\"height\":1281}'),(20,'size','{\"width\":1600,\"height\":1067}'),(21,'size','{\"width\":1600,\"height\":1067}'),(22,'size','{\"width\":1200,\"height\":1800}'),(23,'size','{\"width\":3000,\"height\":2000}'),(24,'size','{\"width\":1600,\"height\":1067}'),(27,'size','{\"width\":500,\"height\":500}');
/*!40000 ALTER TABLE `oc_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache`
--

DROP TABLE IF EXISTS `oc_filecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filecache` (
  `fileid` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage` bigint(20) NOT NULL DEFAULT 0,
  `path` varchar(4000) DEFAULT NULL,
  `path_hash` varchar(32) NOT NULL DEFAULT '',
  `parent` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(250) DEFAULT NULL,
  `mimetype` bigint(20) NOT NULL DEFAULT 0,
  `mimepart` bigint(20) NOT NULL DEFAULT 0,
  `size` bigint(20) NOT NULL DEFAULT 0,
  `mtime` bigint(20) NOT NULL DEFAULT 0,
  `storage_mtime` bigint(20) NOT NULL DEFAULT 0,
  `encrypted` int(11) NOT NULL DEFAULT 0,
  `unencrypted_size` bigint(20) NOT NULL DEFAULT 0,
  `etag` varchar(40) DEFAULT NULL,
  `permissions` int(11) DEFAULT 0,
  `checksum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  KEY `fs_parent_name_hash` (`parent`,`name`),
  KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  KEY `fs_storage_size` (`storage`,`size`,`fileid`),
  KEY `fs_id_storage_size` (`fileid`,`storage`,`size`),
  KEY `fs_parent` (`parent`),
  KEY `fs_mtime` (`mtime`),
  KEY `fs_size` (`size`),
  KEY `fs_storage_path_prefix` (`storage`,`path`(64))
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache`
--

LOCK TABLES `oc_filecache` WRITE;
/*!40000 ALTER TABLE `oc_filecache` DISABLE KEYS */;
INSERT INTO `oc_filecache` VALUES (1,1,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,37549142,1702572528,1702572528,0,0,'657b31f0da99a',23,''),(2,1,'files','45b963397aa40d4a0063e0d85e4fe7a1',1,'files',2,1,37549142,1702570244,1702570244,0,0,'657b290473faf',31,''),(3,2,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1702570059,1702570059,0,0,'657b284b34173',23,''),(4,2,'appdata_ocsnsfa54thc','0bb2dfaa876972e3aa53c6812ffeafbd',3,'appdata_ocsnsfa54thc',2,1,0,1703060788,1703060788,0,0,'657b2846a81ef',31,''),(5,2,'appdata_ocsnsfa54thc/photos','e6a840fb9d8568e3dcb1887060da1575',4,'photos',2,1,0,1702570054,1702570054,0,0,'657b2846a8e9c',31,''),(6,2,'appdata_ocsnsfa54thc/photos/geonames','2c8922830b49ec284ffffcd4fa457f10',5,'geonames',2,1,0,1702570054,1702570054,0,0,'657b2846a9834',31,''),(7,1,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',2,'Documents',2,1,1108865,1702570054,1702570054,0,0,'657b2846c030c',31,''),(8,1,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',7,'Nextcloud flyer.pdf',4,3,1083339,1702570054,1702570054,0,0,'95c5d7fe910a6161c0917977a3d529f3',27,''),(9,1,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',7,'Example.md',6,5,1095,1702570054,1702570054,0,0,'c5d72874061dedb2cc39c886160246cf',27,''),(10,1,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',7,'Readme.md',6,5,136,1702570054,1702570054,0,0,'7d71844c10bcb8cddfa3024fe177cddc',27,''),(11,1,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',7,'Welcome to Nextcloud Hub.docx',7,3,24295,1702570054,1702570054,0,0,'0088303475038e790cd7df504efd6f67',27,''),(12,1,'files/Readme.md','49af83716f8dcbfa89aaf835241c0b9f',2,'Readme.md',6,5,206,1702570054,1702570054,0,0,'9adfb63d8e0601a70909094341801a01',27,''),(13,1,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',2,'Nextcloud intro.mp4',9,8,3963036,1702570054,1702570054,0,0,'e62ad51c3335c43ff43665d9233c5840',27,''),(14,1,'files/Templates credits.md','f7c01e3e0b55bb895e09dc08d19375b3',2,'Templates credits.md',6,5,2403,1702570054,1702570054,0,0,'0a9c52787125ab5cae1b8d54876995e6',27,''),(15,1,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',2,'Photos',2,1,5656463,1702570055,1702570055,0,0,'657b284704542',31,''),(16,1,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',15,'Toucan.jpg',11,10,167989,1702570054,1702570054,0,0,'0523d8e29f50561e70acaaa67b32584d',27,''),(17,1,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',15,'Library.jpg',11,10,2170375,1702570054,1702570054,0,0,'7177ecf40411b00dcf8f601229f575f5',27,''),(18,1,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',15,'Readme.md',6,5,150,1702570054,1702570054,0,0,'f5eaef836492ec41dd892d14189e096d',27,''),(19,1,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',15,'Vineyard.jpg',11,10,427030,1702570054,1702570054,0,0,'e13bed55acc03b9c14822bb85c29f04d',27,''),(20,1,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',15,'Gorilla.jpg',11,10,474653,1702570054,1702570054,0,0,'7824e3f835f82a48c6c9c53556359f50',27,''),(21,1,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',15,'Frog.jpg',11,10,457744,1702570054,1702570054,0,0,'46e62a299277d327a16a012386a360f7',27,''),(22,1,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',15,'Steps.jpg',11,10,567689,1702570054,1702570054,0,0,'aefc8073565ffd4bcabbdbb88a91054a',27,''),(23,1,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',15,'Nextcloud community.jpg',11,10,797325,1702570054,1702570054,0,0,'b8047e493bce90f33c32b5515b89caed',27,''),(24,1,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',15,'Birdie.jpg',11,10,593508,1702570055,1702570055,0,0,'a11000d6dd9bf7bc49c24a1fee57425d',27,''),(25,1,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',2,'Reasons to use Nextcloud.pdf',4,3,976625,1702570055,1702570055,0,0,'b3f650f824417f262d1996e113b76f4f',27,''),(26,1,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',2,'Nextcloud Manual.pdf',4,3,15069794,1702570055,1702570055,0,0,'049bde06095294dc2a04291dee4dedbe',27,''),(27,1,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',2,'Nextcloud.png',12,10,50598,1702570055,1702570055,0,0,'f1470c63a150e53d25d6213433835c22',27,''),(28,1,'files/Modèles','c383bdb412226c98c6aff8329740cf98',2,'Modèles',2,1,10721152,1702570055,1702570055,0,0,'657b2847823b7',31,''),(29,1,'files/Modèles/Flowchart.odg','521b480aac3f23e4748d74af98a8139c',28,'Flowchart.odg',13,3,11836,1702570055,1702570055,0,0,'5a82e3b50017ec017ceabba3f85924d2',27,''),(30,1,'files/Modèles/Org chart.odg','b659ac31f8ce8f469c9450b0223e63a2',28,'Org chart.odg',13,3,13878,1702570055,1702570055,0,0,'e5576cf8458370939512e8bcf5787193',27,''),(31,1,'files/Modèles/Elegant.odp','45079a713138598a765cedcec432408c',28,'Elegant.odp',14,3,14316,1702570055,1702570055,0,0,'030e5020ab75fe0eb702a70f9e6f13ce',27,''),(32,1,'files/Modèles/Business model canvas.ods','97d3836a244f26a79c8bd9f021738f69',28,'Business model canvas.ods',15,3,52843,1702570055,1702570055,0,0,'4d707c32a81a95c3e02b48e469e10234',27,''),(33,1,'files/Modèles/Readme.md','b6707620836319e7d2283111008bb097',28,'Readme.md',6,5,554,1702570055,1702570055,0,0,'e1cf0d8015c4c9a80d7a11a4f769bd58',27,''),(34,1,'files/Modèles/Business model canvas.odg','ab9fcdff13d1fd859d7836413ddb5ca3',28,'Business model canvas.odg',13,3,16988,1702570055,1702570055,0,0,'7d14851e97e96452e8e97fcb33d33206',27,''),(35,1,'files/Modèles/Diagram & table.ods','3582ff36e4ee457de884283340ade535',28,'Diagram & table.ods',15,3,13378,1702570055,1702570055,0,0,'89fe537d12e4c3685d05e9e203ed6d40',27,''),(36,1,'files/Modèles/Mindmap.odg','6c1a96660bb6340a992bece06779862a',28,'Mindmap.odg',13,3,13653,1702570055,1702570055,0,0,'e9f14b3a9b62b2cb3d9317de1e095416',27,''),(37,1,'files/Modèles/Yellow idea.odp','95cbfe8452366beab0cd3e23be704db3',28,'Yellow idea.odp',14,3,81196,1702570055,1702570055,0,0,'842f9b851309404f4bff1fea1f64b487',27,''),(38,1,'files/Modèles/Meeting notes.md','47c4d16bb04ec460ab4b03949d5b5f4e',28,'Meeting notes.md',6,5,326,1702570055,1702570055,0,0,'b9d37ce25a58a1156f5dac5c1d7590c1',27,''),(39,1,'files/Modèles/Resume.odt','3ea0ddbce77d993b4ecf4e6b6cc03975',28,'Resume.odt',16,3,39404,1702570055,1702570055,0,0,'bd4337e9e86ac41e8337ec95dcadbbbf',27,''),(40,1,'files/Modèles/SWOT analysis.whiteboard','c2d40c422cb07ec685ebfff854e1b7f5',28,'SWOT analysis.whiteboard',17,3,38605,1702570055,1702570055,0,0,'69f8542c13283021b62c4f7e971bc544',27,''),(41,1,'files/Modèles/Impact effort matrix.whiteboard','e352fe4a411e73546adb0a5b91a635d6',28,'Impact effort matrix.whiteboard',17,3,52674,1702570055,1702570055,0,0,'de85f08c4193dba9341ef134c12f60e4',27,''),(42,1,'files/Modèles/Photo book.odt','f17b1b56c3af45224c308c8ef2dafa7a',28,'Photo book.odt',16,3,5155877,1702570055,1702570055,0,0,'1865fbddc630439b2925f6a8f715df45',27,''),(43,1,'files/Modèles/Expense report.ods','11abc7eb7c946bc057525db4a69470f9',28,'Expense report.ods',15,3,13441,1702570055,1702570055,0,0,'4424a0ab848223daef45f614209b759e',27,''),(44,1,'files/Modèles/Gotong royong.odp','f79a4dc3abde3efafd469ca65373af8d',28,'Gotong royong.odp',14,3,3509628,1702570055,1702570055,0,0,'d6a1c52dbbab6bae965a7fe963e743c8',27,''),(45,1,'files/Modèles/Syllabus.odt','d1fcbeab1c3511c69729883f407057fb',28,'Syllabus.odt',16,3,30354,1702570055,1702570055,0,0,'b8daebe51708c24670790d7f388e3c46',27,''),(46,1,'files/Modèles/Modern company.odp','703aed025c59d4911d117dff167e5b81',28,'Modern company.odp',14,3,317015,1702570055,1702570055,0,0,'c442aeb58a7bcf60561e96bc0e7ac936',27,''),(47,1,'files/Modèles/Invoice.odt','2a4ecb0ac12c5fd98b0843d1cc53b2e2',28,'Invoice.odt',16,3,17276,1702570055,1702570055,0,0,'f54ca58f6d7783e647f404d94d104d03',27,''),(48,1,'files/Modèles/Product plan.md','92725efee5a2092a27815b6d2ce55fc9',28,'Product plan.md',6,5,573,1702570055,1702570055,0,0,'5a5b464476b7e4fc78dca115b5d0cc2f',27,''),(49,1,'files/Modèles/Letter.odt','f4dc7dc422b42252acca40a95b6ac1c6',28,'Letter.odt',16,3,15961,1702570055,1702570055,0,0,'8bc85152320bdf49406fd5a54e4b96b4',27,''),(50,1,'files/Modèles/Party invitation.odt','6fc4fc09f040fadbcf8a440cb0e90fe0',28,'Party invitation.odt',16,3,868111,1702570055,1702570055,0,0,'0a576b706ab1fb5058ad6854902d1f42',27,''),(51,1,'files/Modèles/Simple.odp','d042bb9978ce8440e206259d07eef599',28,'Simple.odp',14,3,14810,1702570055,1702570055,0,0,'3a63d8e1e27a2bb3f18596a3280c1b86',27,''),(52,1,'files/Modèles/Timesheet.ods','7f0cc5a61420a7f65ebdb765222a93f5',28,'Timesheet.ods',15,3,88394,1702570055,1702570055,0,0,'a62d6b3a7655edb05c6d850ee5e98f0a',27,''),(53,1,'files/Modèles/Mother\'s day.odt','3972ff8b7b08f725004c38b72af0f9f3',28,'Mother\'s day.odt',16,3,340061,1702570055,1702570055,0,0,'51f7d7b3f13e96a85ae5c8a2357f643d',27,''),(54,2,'appdata_ocsnsfa54thc/js','ebf703fa55bca30b8f7e8f8968d3f3a4',4,'js',2,1,0,1703060786,1703060786,0,0,'657b284a94143',31,''),(55,2,'appdata_ocsnsfa54thc/js/core','fed1211722035f5f109363e1004ace03',54,'core',2,1,0,1702570058,1702570058,0,0,'657b284a94cd7',31,''),(56,2,'appdata_ocsnsfa54thc/js/core/merged-template-prepend.js','87e1280bd87377ad22d3ea837fc72a63',55,'merged-template-prepend.js',18,3,12238,1702570058,1702570058,0,0,'885644dcc16eda0701acf44bd05cf0ff',27,''),(57,2,'appdata_ocsnsfa54thc/js/core/merged-template-prepend.js.deps','3d3ac5de56af72452a0c1b673d922654',55,'merged-template-prepend.js.deps',17,3,266,1702570058,1702570058,0,0,'117378c4e2f018fec48a4bfa67fdefe2',27,''),(58,2,'appdata_ocsnsfa54thc/js/core/merged-template-prepend.js.gzip','9f93a803672a29268f4695b0ef1db446',55,'merged-template-prepend.js.gzip',19,3,3098,1702570058,1702570058,0,0,'475eba019c6ee1b7f1fa756346bfd16b',27,''),(59,2,'appdata_ocsnsfa54thc/theming','13e83afa41d1a896d9ba4de467b91c51',4,'theming',2,1,0,1702570058,1702570058,0,0,'657b284a9f57e',31,''),(60,2,'appdata_ocsnsfa54thc/theming/global','6c3daa450045fd50228da1566325b8ae',59,'global',2,1,0,1702570246,1702570246,0,0,'657b284aa2248',31,''),(61,2,'appdata_ocsnsfa54thc/appstore','9710ee58ea762f8a0a3fd70a25fb25d3',4,'appstore',2,1,0,1703061048,1703061048,0,0,'657b284b30c29',31,''),(62,2,'appdata_ocsnsfa54thc/appstore/apps.json','6f99ed331e041ddabfbab3cbc78f0c5c',61,'apps.json',20,3,2445924,1703060805,1703060805,0,0,'fcce068fdda2eaa8eeb2635bbaa208e3',27,''),(63,1,'files/Talk','a12e821edb92901676dee9cfe1487de3',2,'Talk',2,1,0,1702570244,1702570244,0,0,'657b290473583',31,''),(64,2,'appdata_ocsnsfa54thc/theming/global/0','a1dba5adbf86438b9888b48c1a66ff96',60,'0',2,1,0,1703060879,1703060879,0,0,'657b2906f117f',31,''),(65,2,'appdata_ocsnsfa54thc/avatar','69c43239526f132d903d020a804852f1',4,'avatar',2,1,0,1702570246,1702570246,0,0,'657b2906f1a2c',31,''),(66,2,'appdata_ocsnsfa54thc/avatar/ubuntu_admin','b3a29c726cf3707c2fcfe91f6a00af82',65,'ubuntu_admin',2,1,0,1703060801,1703060801,0,0,'657b2906f285a',31,''),(67,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_folder.svg','26083a9942792d4ae95f8e537eaa0d72',64,'icon-core-#0082c9filetypes_folder.svg',21,10,255,1702570246,1702570246,0,0,'aa06efe99ca052e27f78cf2a71164b21',27,''),(68,2,'appdata_ocsnsfa54thc/preview','15b44c25e07a97a4978ed6717a76a2e9',4,'preview',2,1,0,1702570247,1702570247,0,0,'657b290708dd2',31,''),(69,2,'appdata_ocsnsfa54thc/preview/1','4b8dde8283e6acd327c59ca6cac561fa',68,'1',2,1,-1,1702570247,1702570247,0,0,'657b29070a793',31,''),(70,2,'appdata_ocsnsfa54thc/preview/1/f','420ddc79ddb7b886362c42e4e951638d',69,'f',2,1,-1,1702570247,1702570247,0,0,'657b29070a5e3',31,''),(71,2,'appdata_ocsnsfa54thc/preview/1/f/f','06746fba0b5aa14f3d2a54a69b72a804',70,'f',2,1,-1,1702570247,1702570247,0,0,'657b29070a37d',31,''),(72,2,'appdata_ocsnsfa54thc/preview/1/f/f/1','2a25d89a9ddab2b64424387bfb73f81b',71,'1',2,1,-1,1702570247,1702570247,0,0,'657b29070a157',31,''),(73,2,'appdata_ocsnsfa54thc/preview/1/f/f/1/d','53d068e5545541483390a388858a2779',72,'d',2,1,-1,1702570247,1702570247,0,0,'657b290709f58',31,''),(74,2,'appdata_ocsnsfa54thc/preview/1/f/f/1/d/e','7f08b6214b8e1b810600c20f821cf62f',73,'e',2,1,-1,1702570247,1702570247,0,0,'657b290709dbd',31,''),(75,2,'appdata_ocsnsfa54thc/preview/1/f/f/1/d/e/7','b6fb0fb0f7f5dcabb4c529cf38adbea9',74,'7',2,1,-1,1702570247,1702570247,0,0,'657b290709c02',31,''),(76,2,'appdata_ocsnsfa54thc/preview/1/f/f/1/d/e/7/24','6a8fa3943bb54160230bb5384c40a15f',75,'24',2,1,0,1703060879,1703060879,0,0,'657b290709a09',31,''),(77,2,'appdata_ocsnsfa54thc/preview/1/f/f/1/d/e/7/24/1600-1067-max.jpg','9d9546c83abb0bb0da4809212f5dccb7',76,'1600-1067-max.jpg',11,10,165982,1702570247,1702570247,0,0,'dbcd8412e0ccbe68f8b57a248d708ddc',27,''),(78,2,'appdata_ocsnsfa54thc/preview/1/f/f/1/d/e/7/24/256-256-crop.jpg','592fd87f549d6f27f013f391754ed204',76,'256-256-crop.jpg',11,10,13155,1702570247,1702570247,0,0,'330800bb740d9c4746ec7a47d68ee431',27,''),(79,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_application-pdf.svg','28eb733372da87abc97254b6741ec4c3',64,'icon-core-#0082c9filetypes_application-pdf.svg',21,10,1038,1702570247,1702570247,0,0,'1af3d8364e40b1c4d45563bc5813e622',27,''),(80,2,'appdata_ocsnsfa54thc/preview/0','d12c439fa24bd67acab0974fdcc57eef',68,'0',2,1,-1,1702570247,1702570247,0,0,'657b29072d3df',31,''),(81,2,'appdata_ocsnsfa54thc/preview/0/2','0e9ea1203ba2f0216c0a93267761b6de',80,'2',2,1,-1,1702570247,1702570247,0,0,'657b29072d2ad',31,''),(82,2,'appdata_ocsnsfa54thc/preview/0/2/e','bb076d7c75ca83c4ea001e60bb8d8b3d',81,'e',2,1,-1,1702570247,1702570247,0,0,'657b29072d18a',31,''),(83,2,'appdata_ocsnsfa54thc/preview/0/2/e/7','6f7e6b0df5310a6f24aae3a85ae2780b',82,'7',2,1,-1,1702570247,1702570247,0,0,'657b29072d018',31,''),(84,2,'appdata_ocsnsfa54thc/preview/0/2/e/7/4','22db3c1821e1857d2aa69d5ca934c74a',83,'4',2,1,-1,1702570247,1702570247,0,0,'657b29072cebf',31,''),(85,2,'appdata_ocsnsfa54thc/preview/0/2/e/7/4/f','3d53e1c4c3e5923e30d574246fa12bb4',84,'f',2,1,-1,1702570247,1702570247,0,0,'657b29072cd83',31,''),(86,2,'appdata_ocsnsfa54thc/preview/0/2/e/7/4/f/1','a44e4774eb104851041bfc992464a1d6',85,'1',2,1,-1,1702570247,1702570247,0,0,'657b29072cc30',31,''),(87,2,'appdata_ocsnsfa54thc/preview/0/2/e/7/4/f/1/27','0d6a3ae6c55319822e38eda4965cb674',86,'27',2,1,0,1703060868,1703060868,0,0,'657b29072ca7c',31,''),(88,2,'appdata_ocsnsfa54thc/avatar/ubuntu_admin/avatar-dark.png','008d14ae946955a9e8f906b4476f6a10',66,'avatar-dark.png',12,10,11213,1703060801,1703060801,0,0,'15d4a9fe1046d3f22b01679a926700f8',27,''),(89,2,'appdata_ocsnsfa54thc/preview/0/2/e/7/4/f/1/27/500-500-max.png','3e453d7a242412d2e595c49893d51065',87,'500-500-max.png',12,10,50545,1702570247,1702570247,0,0,'5dc70758ef972eaf1fdd2f0ae2434fb4',27,''),(90,2,'appdata_ocsnsfa54thc/avatar/ubuntu_admin/generated','8b018d1f982f9a7da8a0937b8880e332',66,'generated',17,3,0,1703060801,1703060801,0,0,'e106b9ca41dcba8bdcf1cc566bd67ebc',27,''),(91,2,'appdata_ocsnsfa54thc/avatar/ubuntu_admin/avatar-dark.64.png','2b6eafbcccfc2f04e810873d5bed54ab',66,'avatar-dark.64.png',12,10,607,1702570247,1702570247,0,0,'8d7fb47dfbabfb15f6ad518c848af57d',27,''),(92,2,'appdata_ocsnsfa54thc/preview/0/2/e/7/4/f/1/27/256-256-crop.png','bf0131b72e5c281841da320407c7fd4d',87,'256-256-crop.png',12,10,46474,1702570247,1702570247,0,0,'e109abdb8c7274c34ffa3eb5cead935b',27,''),(93,2,'appdata_ocsnsfa54thc/preview/3','08e7b9ca88d4e928a1b0d1878f122d92',68,'3',2,1,-1,1702570247,1702570247,0,0,'657b29073eb8b',31,''),(94,2,'appdata_ocsnsfa54thc/preview/3/4','3e6f1a49e5641e53081e2cb6be5b68dd',93,'4',2,1,-1,1702570247,1702570247,0,0,'657b29073ea2a',31,''),(95,2,'appdata_ocsnsfa54thc/preview/3/4/1','b5b454d2d62d578e3c3ab87a45d7679a',94,'1',2,1,-1,1702570247,1702570247,0,0,'657b29073e8f8',31,''),(96,2,'appdata_ocsnsfa54thc/preview/3/4/1/7','e9c7ce0db421afcac4655fdb924f9398',95,'7',2,1,-1,1702570247,1702570247,0,0,'657b29073e7c1',31,''),(97,2,'appdata_ocsnsfa54thc/preview/3/4/1/7/3','845ac820de467f5e08ea9ce8c3f815c0',96,'3',2,1,-1,1702570247,1702570247,0,0,'657b29073e659',31,''),(98,2,'appdata_ocsnsfa54thc/preview/3/4/1/7/3/c','c7b9ba43e70db276b3de82e12720d576',97,'c',2,1,-1,1702570247,1702570247,0,0,'657b29073e4f6',31,''),(99,2,'appdata_ocsnsfa54thc/preview/3/4/1/7/3/c/b','695b2f1267e19d56eddd0b9a08732228',98,'b',2,1,-1,1702570247,1702570247,0,0,'657b29073e2f6',31,''),(100,2,'appdata_ocsnsfa54thc/preview/3/4/1/7/3/c/b/30','f917e6a61d9f11fc2077bc12de0621dc',99,'30',2,1,0,1702570247,1702570247,0,0,'657b29073e01d',31,''),(101,2,'appdata_ocsnsfa54thc/preview/3/4/1/7/3/c/b/30/256-181-max.png','61c0b75a89840e70c17cb5fbd938d43c',100,'256-181-max.png',12,10,2321,1702570247,1702570247,0,0,'1b284059be62d0728de67df205063653',27,''),(102,2,'appdata_ocsnsfa54thc/preview/3/4/1/7/3/c/b/30/181-181-crop.png','69830b23db4472fd62abf990f16d850c',100,'181-181-crop.png',12,10,4849,1702570247,1702570247,0,0,'d5aa9b2666e878c8549ab9e7d4e21b42',27,''),(103,2,'appdata_ocsnsfa54thc/preview/6','1d151da923ab3455266959c769cc4bc6',68,'6',2,1,-1,1702570247,1702570247,0,0,'657b290746ebc',31,''),(104,2,'appdata_ocsnsfa54thc/preview/6/e','7f3bc2327949d8620d66937d67d9b5cb',103,'e',2,1,-1,1702570247,1702570247,0,0,'657b290746d20',31,''),(105,2,'appdata_ocsnsfa54thc/preview/6/e/a','777d8e6d957c6cc6bd7a375ec1cef096',104,'a',2,1,-1,1702570247,1702570247,0,0,'657b290746b6d',31,''),(106,2,'appdata_ocsnsfa54thc/preview/6/e/a/9','7c3a3072fe2743393ea126ccf996fbbe',105,'9',2,1,-1,1702570247,1702570247,0,0,'657b29074682c',31,''),(107,2,'appdata_ocsnsfa54thc/preview/6/e/a/9/a','3a1bf649bf4e1980e44ad7b0392365ca',106,'a',2,1,-1,1702570247,1702570247,0,0,'657b2907466d7',31,''),(108,2,'appdata_ocsnsfa54thc/preview/6/e/a/9/a/b','b2174c4f1810735610948bf8dcfd41e8',107,'b',2,1,-1,1702570247,1702570247,0,0,'657b2907465b8',31,''),(109,2,'appdata_ocsnsfa54thc/preview/6/e/a/9/a/b/1','833327fb83d695ad0878e133e6327896',108,'1',2,1,-1,1702570247,1702570247,0,0,'657b29074646a',31,''),(110,2,'appdata_ocsnsfa54thc/preview/6/e/a/9/a/b/1/29','d2e4902da9b4236552fdbdbb6dfb4f85',109,'29',2,1,0,1702570247,1702570247,0,0,'657b2907462ad',31,''),(111,2,'appdata_ocsnsfa54thc/preview/6/e/a/9/a/b/1/29/181-256-max.png','a02f724d9f9ceb36ae834c0891f7dfdd',110,'181-256-max.png',12,10,2564,1702570247,1702570247,0,0,'7869f76075cfffb6d62a9791d0d9f1a5',27,''),(112,2,'appdata_ocsnsfa54thc/preview/6/e/a/9/a/b/1/29/181-181-crop.png','794b0f355f6c2af28a74e68909f2fae8',110,'181-181-crop.png',12,10,5219,1702570247,1702570247,0,0,'b4a00e1f771e968170ba30a476535734',27,''),(113,1,'cache','0fea6a13c52b4d4725368f24b045ca84',1,'cache',2,1,0,1702572528,1702572528,0,0,'657b31f0d9b3d',31,''),(114,2,'appdata_ocsnsfa54thc/js/files','d9f84ce7828045a8d1242045b014dac0',54,'files',2,1,0,1703060786,1703060786,0,0,'6582a5325dbbc',31,''),(115,2,'appdata_ocsnsfa54thc/js/files/merged-index.js','fbe36f875a95a43ec59acbaa1fc27ce3',114,'merged-index.js',18,3,423882,1703060786,1703060786,0,0,'1ef0478eb5f4a6f85d744f8c5582b73b',27,''),(116,2,'appdata_ocsnsfa54thc/js/files/merged-index.js.deps','05234d294902556f89f60eda332e725e',114,'merged-index.js.deps',17,3,2185,1703060786,1703060786,0,0,'d794de13a16c07ceb5aeb49513ea12fa',27,''),(117,2,'appdata_ocsnsfa54thc/js/files/merged-index.js.gzip','2616432e3ab2e4de298fbe0ac5644d6f',114,'merged-index.js.gzip',19,3,95988,1703060786,1703060786,0,0,'c957e3778bb4ac2a15f8f9746215a085',27,''),(118,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_image.svg','aae7e7161a9b58ebb745be984d19f9cd',64,'icon-core-#0082c9filetypes_image.svg',21,10,352,1703060787,1703060787,0,0,'d1ecb225469a8d8f5775b243c0e9f865',27,''),(119,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_x-office-drawing.svg','254517a53d673bd6397fe4a25decca74',64,'icon-core-#0082c9filetypes_x-office-drawing.svg',21,10,270,1703060787,1703060787,0,0,'38ca3578766a44bd52c7745933057aee',27,''),(120,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_text.svg','a5d33954ccc5c3fc7e9fea1109286db8',64,'icon-core-#0082c9filetypes_text.svg',21,10,295,1703060787,1703060787,0,0,'38667e66428a197ecd9100a0eea67465',27,''),(121,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_video.svg','6f0539dc8dd324d9913f394e47dd57b1',64,'icon-core-#0082c9filetypes_video.svg',21,10,277,1703060787,1703060787,0,0,'a2e26ad41742b852012be80fcb77a99f',27,''),(122,2,'appdata_ocsnsfa54thc/preview/a','a01990eb58b95e740d5587dcab3f034d',68,'a',2,1,-1,1703060787,1703060787,0,0,'6582a533cc5ab',31,''),(123,2,'appdata_ocsnsfa54thc/preview/a/a','b0eb429dbcaaefc61f750ed186e2e6d8',122,'a',2,1,-1,1703060787,1703060787,0,0,'6582a533cc45e',31,''),(124,2,'appdata_ocsnsfa54thc/preview/a/a/b','f65d2ffadb5c9be31880b96257332a36',123,'b',2,1,-1,1703060787,1703060787,0,0,'6582a533cc219',31,''),(125,2,'appdata_ocsnsfa54thc/preview/a/a/b/3','6ae27bc973892cf522d1d0304824c48a',124,'3',2,1,-1,1703060787,1703060787,0,0,'6582a533cc0e7',31,''),(126,2,'appdata_ocsnsfa54thc/preview/a/a/b/3/2','0f01f3ec3b83d1ae07c856fff7a9f5ed',125,'2',2,1,-1,1703060787,1703060787,0,0,'6582a533cbf99',31,''),(127,2,'appdata_ocsnsfa54thc/preview/a/a/b/3/2/3','94be3b09fb1acebe3368b8df79988896',126,'3',2,1,-1,1703060787,1703060787,0,0,'6582a533cbe45',31,''),(128,2,'appdata_ocsnsfa54thc/preview/a/a/b/3/2/3/8','0dadb24f039f4ee83a5d76282090e78c',127,'8',2,1,-1,1703060787,1703060787,0,0,'6582a533cbcad',31,''),(129,2,'appdata_ocsnsfa54thc/preview/a/a/b/3/2/3/8/14','c78396e8e62742537e729a646472efb3',128,'14',2,1,0,1703060788,1703060788,0,0,'6582a533cb84f',31,''),(130,2,'appdata_ocsnsfa54thc/preview/c','1b3ed74d55331c31b2a9493181add945',68,'c',2,1,-1,1703060787,1703060787,0,0,'6582a533d18e5',31,''),(131,2,'appdata_ocsnsfa54thc/preview/c/2','8e3ea90670ca56420a4856fe8ab2034b',130,'2',2,1,-1,1703060787,1703060787,0,0,'6582a533d0f29',31,''),(132,2,'appdata_ocsnsfa54thc/preview/c/2/0','0d501164b46225fcd8f841bb0deb0998',131,'0',2,1,-1,1703060787,1703060787,0,0,'6582a533d0bbf',31,''),(133,2,'appdata_ocsnsfa54thc/preview/c/2/0/a','55ef6bb6cce5fb7b25b936c5a483a5fa',132,'a',2,1,-1,1703060787,1703060787,0,0,'6582a533d06a5',31,''),(134,2,'appdata_ocsnsfa54thc/preview/c/2/0/a/d','e9a21d713b93a2872f408b2c32da7feb',133,'d',2,1,-1,1703060787,1703060787,0,0,'6582a533d03c5',31,''),(135,2,'appdata_ocsnsfa54thc/preview/c/2/0/a/d/4','4d2817f3c2cd6343a73e05200d24592e',134,'4',2,1,-1,1703060787,1703060787,0,0,'6582a533cff5e',31,''),(136,2,'appdata_ocsnsfa54thc/preview/c/2/0/a/d/4/d','986e193af0a6cae0b86daed9c5aa6a3c',135,'d',2,1,-1,1703060787,1703060787,0,0,'6582a533cfc65',31,''),(137,2,'appdata_ocsnsfa54thc/preview/c/2/0/a/d/4/d/12','17d75755f64b0334168940a810b87d39',136,'12',2,1,0,1703060788,1703060788,0,0,'6582a533cf93f',31,''),(138,2,'appdata_ocsnsfa54thc/preview/0/2/e/7/4/f/1/27/256-256.png','9220b7bfad2293a7ee2370eb509ccf20',87,'256-256.png',12,10,46474,1703060787,1703060787,0,0,'20116e2a7e31878a5c7a0c9e67de0808',27,''),(139,2,'appdata_ocsnsfa54thc/preview/c/2/0/a/d/4/d/12/4096-4096-max.png','75ec2d3dc0f09d914816ca329e44174e',137,'4096-4096-max.png',12,10,47775,1703060787,1703060787,0,0,'e59be4d965ef01a6f72446da8f1e6aec',27,''),(140,2,'appdata_ocsnsfa54thc/preview/a/a/b/3/2/3/8/14/4096-4096-max.png','5d405e56051d17f7155d5d387c80a0b0',129,'4096-4096-max.png',12,10,198113,1703060787,1703060787,0,0,'660f939f2a1feb598a82e25ef67ae15c',27,''),(141,2,'appdata_ocsnsfa54thc/text','9783cf0d4173a5ed3aeaec989fbc6f28',4,'text',2,1,0,1703060788,1703060788,0,0,'6582a53409fac',31,''),(142,2,'appdata_ocsnsfa54thc/text/documents','553794b24ef297c2097bf99a07c84e40',141,'documents',2,1,0,1703060788,1703060788,0,0,'6582a5340cc1f',31,''),(143,2,'appdata_ocsnsfa54thc/preview/c/2/0/a/d/4/d/12/256-256.png','4d08cd7322074848aa7cbfebab2003a1',137,'256-256.png',12,10,9083,1703060788,1703060788,0,0,'7bca425c1f8f4fbf42ac59833b60b4c4',27,''),(144,2,'appdata_ocsnsfa54thc/preview/a/a/b/3/2/3/8/14/256-256.png','d95f9dae14282ce7d5a2d8b5eb6bc3db',129,'256-256.png',12,10,34261,1703060788,1703060788,0,0,'12f3d47ece5f305d85a68495632a7d68',27,''),(145,2,'appdata_ocsnsfa54thc/avatar/ubuntu_admin/avatar-dark.512.png','b21f2b64cb26cbf99d792d4430612d16',66,'avatar-dark.512.png',12,10,4802,1703060801,1703060801,0,0,'f0f82083cc87e6ad7c9ebfa405d71eca',27,''),(146,2,'appdata_ocsnsfa54thc/preview/0/2/e/7/4/f/1/27/64-64.png','3eb503311a66779bb5826909e4a2da3f',87,'64-64.png',12,10,4459,1703060868,1703060868,0,0,'80bb8619b191f3c54eaca5e991049e62',27,''),(147,2,'appdata_ocsnsfa54thc/preview/1/f/f/1/d/e/7/24/64-43.jpg','97e27c7da1db12b9ab57538bf66a9480',76,'64-43.jpg',11,10,1561,1703060868,1703060868,0,0,'443b18b3e1b2bc36515600b5bd8e3b3e',27,''),(148,2,'appdata_ocsnsfa54thc/preview/1/f/f/1/d/e/7/24/1024-683.jpg','bd2b438184590b882ee8a7bddf35dd9a',76,'1024-683.jpg',11,10,84107,1703060868,1703060868,0,0,'46cef7e5ff0d1024fee067c1959cc75a',27,''),(149,2,'appdata_ocsnsfa54thc/preview/c/7','89bd144b08ac86c492ba4fa0883f0b31',130,'7',2,1,-1,1703060868,1703060868,0,0,'6582a5845ae50',31,''),(150,2,'appdata_ocsnsfa54thc/preview/c/7/4','587b569f04ecd52238b287301dde4279',149,'4',2,1,-1,1703060868,1703060868,0,0,'6582a5845a807',31,''),(151,2,'appdata_ocsnsfa54thc/preview/c/7/4/d','659135127426b0aa916596a2ef4ecfa7',150,'d',2,1,-1,1703060868,1703060868,0,0,'6582a5845a6d3',31,''),(152,2,'appdata_ocsnsfa54thc/preview/c/7/4/d/9','7269f5abbdc5cab65d7a1c60ac088483',151,'9',2,1,-1,1703060868,1703060868,0,0,'6582a5845b7a9',31,''),(154,2,'appdata_ocsnsfa54thc/preview/c/7/4/d/9/7','f4997f26cdf4ef707677d4ca894382ec',152,'7',2,1,-1,1703060868,1703060868,0,0,'6582a5845b59a',31,''),(155,2,'appdata_ocsnsfa54thc/preview/c/7/4/d/9/7/b','2e4c21b19ca214973d50f3909d214814',154,'b',2,1,-1,1703060868,1703060868,0,0,'6582a5845b2f5',31,''),(156,2,'appdata_ocsnsfa54thc/preview/c/7/4/d/9/7/b/16','b270339cc87e29c94d02ec4b7f3d9ffc',155,'16',2,1,0,1703060868,1703060868,0,0,'6582a58459d04',31,''),(159,2,'appdata_ocsnsfa54thc/preview/7','76cc7f26b1656c1e4583a903ca99f2f8',68,'7',2,1,-1,1703060868,1703060868,0,0,'6582a584632ce',31,''),(160,2,'appdata_ocsnsfa54thc/preview/7/0','9eb716ff870bd3ab1b71f59c25009ee0',159,'0',2,1,-1,1703060868,1703060868,0,0,'6582a584630ec',31,''),(161,2,'appdata_ocsnsfa54thc/preview/7/0/e','87a43803554aeae00c9971a61699e0eb',160,'e',2,1,-1,1703060868,1703060868,0,0,'6582a58462df8',31,''),(162,2,'appdata_ocsnsfa54thc/preview/7/0/e/f','27a72d8d5c3f93c5f22138699f5ef586',161,'f',2,1,-1,1703060868,1703060868,0,0,'6582a5846090d',31,''),(163,2,'appdata_ocsnsfa54thc/preview/7/0/e/f/d','9b3e458a393c2ae0d6ab5531ae68670a',162,'d',2,1,-1,1703060868,1703060868,0,0,'6582a5846077b',31,''),(164,2,'appdata_ocsnsfa54thc/preview/c/7/4/d/9/7/b/16/1600-1067-max.jpg','6c618851594d34cc0fca43bcb717f5e0',156,'1600-1067-max.jpg',11,10,137923,1703060868,1703060868,0,0,'8cc9054a5099f4156507a5c6c4d31171',27,''),(165,2,'appdata_ocsnsfa54thc/preview/7/0/e/f/d/f','fdc90cd8d0e140af05d0fc53764efd98',163,'f',2,1,-1,1703060868,1703060868,0,0,'6582a584605c8',31,''),(166,2,'appdata_ocsnsfa54thc/preview/7/0/e/f/d/f/2','d6ff1bd59381d5bbd39d560c7e9aa5d6',165,'2',2,1,-1,1703060868,1703060868,0,0,'6582a584603de',31,''),(167,2,'appdata_ocsnsfa54thc/preview/7/0/e/f/d/f/2/17','d4ee2d95662ebfe06d7659a713e8ef40',166,'17',2,1,0,1703060868,1703060868,0,0,'6582a5846015f',31,''),(168,2,'appdata_ocsnsfa54thc/preview/c/7/4/d/9/7/b/16/1024-683.jpg','78b15711afc5baae01d645425d32ad68',156,'1024-683.jpg',11,10,85790,1703060868,1703060868,0,0,'125c16f57a75819211dea666fed8453e',27,''),(169,2,'appdata_ocsnsfa54thc/preview/c/7/4/d/9/7/b/16/64-43.jpg','186047b0b9f4c177a581c774ad06bab2',156,'64-43.jpg',11,10,1783,1703060868,1703060868,0,0,'a35c94df16c07941687ce728ff346696',27,''),(170,2,'appdata_ocsnsfa54thc/preview/7/0/e/f/d/f/2/17/1600-1066-max.jpg','c549968ab341a79fa57a6c14a41bd5a6',167,'1600-1066-max.jpg',11,10,351167,1703060868,1703060868,0,0,'7c771a9e3ebdb136738c493860cca445',27,''),(171,2,'appdata_ocsnsfa54thc/preview/7/0/e/f/d/f/2/17/64-43.jpg','bf693f3828056b9e4d604037b6a6abe0',167,'64-43.jpg',11,10,1552,1703060868,1703060868,0,0,'88c0ca632c97a0f2401921d744edfea9',27,''),(172,2,'appdata_ocsnsfa54thc/preview/1/f/0','8effa65b2dae6e5e4e0d27eb9b79394e',70,'0',2,1,-1,1703060868,1703060868,0,0,'6582a584973ac',31,''),(173,2,'appdata_ocsnsfa54thc/preview/1/f/0/e','a9f2e25ec62bd50824df4f230173a1b0',172,'e',2,1,-1,1703060868,1703060868,0,0,'6582a58497279',31,''),(174,2,'appdata_ocsnsfa54thc/preview/1/f/0/e/3','830a995732a28f1933faed760e4c584c',173,'3',2,1,-1,1703060868,1703060868,0,0,'6582a58497141',31,''),(175,2,'appdata_ocsnsfa54thc/preview/1/f/0/e/3/d','4f963549a8c37e0fa574ef679934ee7a',174,'d',2,1,-1,1703060868,1703060868,0,0,'6582a58496fe2',31,''),(176,2,'appdata_ocsnsfa54thc/preview/1/f/0/e/3/d/a','0e4970d61664e994aa3eaf8cb8af04c4',175,'a',2,1,-1,1703060868,1703060868,0,0,'6582a58496e4d',31,''),(177,2,'appdata_ocsnsfa54thc/preview/1/f/0/e/3/d/a/19','8b562b95f489701547193fce5d91c612',176,'19',2,1,0,1703060868,1703060868,0,0,'6582a58496bcf',31,''),(178,2,'appdata_ocsnsfa54thc/preview/1/f/0/e/3/d/a/19/1920-1281-max.jpg','91ab5cd4132f23de6c54e3ec1607d468',177,'1920-1281-max.jpg',11,10,294390,1703060868,1703060868,0,0,'30863548bb6ae42fe5cc60a37355bc73',27,''),(179,2,'appdata_ocsnsfa54thc/preview/1/f/0/e/3/d/a/19/64-43.jpg','44b6e0e1c5cebfd16c10af62bac3eb87',177,'64-43.jpg',11,10,1556,1703060868,1703060868,0,0,'5d09bab0abfc08045660a35c9bf3ad9d',27,''),(180,2,'appdata_ocsnsfa54thc/preview/7/0/e/f/d/f/2/17/1024-682.jpg','876fc2ccb16bddc8b287dd01e3e4b684',167,'1024-682.jpg',11,10,151922,1703060868,1703060868,0,0,'e3a720c5942f9533962dc57c885faf44',27,''),(181,2,'appdata_ocsnsfa54thc/preview/9','9f76b9bf11db1ca59a001c2faebf9f10',68,'9',2,1,-1,1703060886,1703060886,0,0,'6582a584c9ad6',31,''),(182,2,'appdata_ocsnsfa54thc/preview/9/8','0cdc676becbac5ea0889ed6b2055940b',181,'8',2,1,-1,1703060868,1703060868,0,0,'6582a584c99a4',31,''),(183,2,'appdata_ocsnsfa54thc/preview/9/8/f','fe94612d3e5e17ec51981b0fddccec48',182,'f',2,1,-1,1703060868,1703060868,0,0,'6582a584c9852',31,''),(184,2,'appdata_ocsnsfa54thc/preview/9/8/f/1','b1a12bdcc371ddd8e73e0ded7aaa1324',183,'1',2,1,-1,1703060868,1703060868,0,0,'6582a584c9732',31,''),(185,2,'appdata_ocsnsfa54thc/preview/9/8/f/1/3','b91839c10adf03bb0725a6566a2076d8',184,'3',2,1,-1,1703060868,1703060868,0,0,'6582a584c95d9',31,''),(186,2,'appdata_ocsnsfa54thc/preview/9/8/f/1/3/7','e0e95d4fec469c003baac56297f9d26d',185,'7',2,1,-1,1703060868,1703060868,0,0,'6582a584c9498',31,''),(187,2,'appdata_ocsnsfa54thc/preview/9/8/f/1/3/7/0','0cde851d3cdd2e58f6219b2b45ac9f97',186,'0',2,1,-1,1703060868,1703060868,0,0,'6582a584c9334',31,''),(188,2,'appdata_ocsnsfa54thc/preview/9/8/f/1/3/7/0/20','2792d26340f79f99412ccb7e0b4d9e61',187,'20',2,1,0,1703060869,1703060869,0,0,'6582a584c914f',31,''),(189,2,'appdata_ocsnsfa54thc/preview/1/f/0/e/3/d/a/19/1024-683.jpg','e8822eebb92f56cbec8e3bacdfa43cd0',177,'1024-683.jpg',11,10,101252,1703060868,1703060868,0,0,'96806035710db8208e6dc6d7b7a8c7cb',27,''),(190,2,'appdata_ocsnsfa54thc/preview/9/8/f/1/3/7/0/20/1600-1067-max.jpg','db6e1d624fa45d1a23b9bc4eaf1fb8b6',188,'1600-1067-max.jpg',11,10,232378,1703060868,1703060868,0,0,'aef4bf22b0ddacf9a67649a5617a58bf',27,''),(191,2,'appdata_ocsnsfa54thc/preview/3/c','ed16f0bc719bf98b9e1bdd45bddb824d',93,'c',2,1,-1,1703060868,1703060868,0,0,'6582a584ddcc3',31,''),(192,2,'appdata_ocsnsfa54thc/preview/3/c/5','60d304507ea32043b737b1c80dfe7c45',191,'5',2,1,-1,1703060868,1703060868,0,0,'6582a584ddb84',31,''),(193,2,'appdata_ocsnsfa54thc/preview/3/c/5/9','6db2a786e9daa6845de571336f42201f',192,'9',2,1,-1,1703060868,1703060868,0,0,'6582a584dda11',31,''),(194,2,'appdata_ocsnsfa54thc/preview/3/c/5/9/d','d101114d95f9d648f7f4e8caa1509275',193,'d',2,1,-1,1703060868,1703060868,0,0,'6582a584dd85d',31,''),(195,2,'appdata_ocsnsfa54thc/preview/3/c/5/9/d/c','770ffad500e337057f7cc2c00170556e',194,'c',2,1,-1,1703060868,1703060868,0,0,'6582a584dd66b',31,''),(196,2,'appdata_ocsnsfa54thc/preview/3/c/5/9/d/c/0','d5f067f462fff40fb30f26352acc7165',195,'0',2,1,-1,1703060868,1703060868,0,0,'6582a584dd4b4',31,''),(197,2,'appdata_ocsnsfa54thc/preview/3/c/5/9/d/c/0/21','ca17e8e7568d60729ec11aaf223eaad8',196,'21',2,1,0,1703060869,1703060869,0,0,'6582a584dd280',31,''),(198,2,'appdata_ocsnsfa54thc/preview/3/c/5/9/d/c/0/21/1600-1067-max.jpg','b309f86504ff9e502fd2ef0644ccc323',197,'1600-1067-max.jpg',11,10,147631,1703060868,1703060868,0,0,'6ff2986c5b46cdfddeb9da605030136a',27,''),(199,2,'appdata_ocsnsfa54thc/preview/3/c/5/9/d/c/0/21/64-43.jpg','d951cb18ae10195de47f6b9976aadcb9',197,'64-43.jpg',11,10,1296,1703060868,1703060868,0,0,'7352166aa641c77bba7cb78a39a53de1',27,''),(200,2,'appdata_ocsnsfa54thc/preview/b','e969905b4d89a864df525e41154be6a4',68,'b',2,1,-1,1703060869,1703060869,0,0,'6582a58503b9e',31,''),(201,2,'appdata_ocsnsfa54thc/preview/b/6','c35ca0cf4017d463df4fb76524cee185',200,'6',2,1,-1,1703060869,1703060869,0,0,'6582a58503a76',31,''),(202,2,'appdata_ocsnsfa54thc/preview/b/6/d','9c1e9f7e77a1093c24dbddd51da469e5',201,'d',2,1,-1,1703060869,1703060869,0,0,'6582a58503969',31,''),(203,2,'appdata_ocsnsfa54thc/preview/b/6/d/7','90d1bd67711f013376725215125895d2',202,'7',2,1,-1,1703060869,1703060869,0,0,'6582a58503852',31,''),(204,2,'appdata_ocsnsfa54thc/preview/b/6/d/7/6','c5a970993e0efa404360da5a1933a933',203,'6',2,1,-1,1703060869,1703060869,0,0,'6582a5850371f',31,''),(205,2,'appdata_ocsnsfa54thc/preview/b/6/d/7/6/7','25f5a4add8a1a8fbbbb1480c3e7d03ca',204,'7',2,1,-1,1703060869,1703060869,0,0,'6582a585035f7',31,''),(206,2,'appdata_ocsnsfa54thc/preview/b/6/d/7/6/7/d','ed12d92cbd29560212ab708fa028b934',205,'d',2,1,-1,1703060869,1703060869,0,0,'6582a58503499',31,''),(207,2,'appdata_ocsnsfa54thc/preview/b/6/d/7/6/7/d/22','675b0da9097ea3bc1de208cef192d049',206,'22',2,1,0,1703060869,1703060869,0,0,'6582a585032ec',31,''),(208,2,'appdata_ocsnsfa54thc/preview/9/8/f/1/3/7/0/20/1024-683.jpg','85af82030fb18953b91a6b37675bed10',188,'1024-683.jpg',11,10,100530,1703060869,1703060869,0,0,'f53a091f919dbaaf7484aaf690ef5190',27,''),(209,2,'appdata_ocsnsfa54thc/preview/3/c/5/9/d/c/0/21/1024-683.jpg','f55dff0d36ee8e42020b0fc164dcb49f',197,'1024-683.jpg',11,10,57393,1703060869,1703060869,0,0,'633234fc209669fc9769d4095d09a210',27,''),(210,2,'appdata_ocsnsfa54thc/preview/9/8/f/1/3/7/0/20/64-43.jpg','6466b87b7c903e6985089c4ca190a0b5',188,'64-43.jpg',11,10,1280,1703060869,1703060869,0,0,'aeeb967195ddc81b8e0329ebae5f9ef7',27,''),(211,2,'appdata_ocsnsfa54thc/preview/3/7','a18bb8ba7b59745c17f8b9248bc0a673',93,'7',2,1,-1,1703060869,1703060869,0,0,'6582a58521b9b',31,''),(212,2,'appdata_ocsnsfa54thc/preview/3/7/6','422d0c78717a08680dcaeb3a3ea19718',211,'6',2,1,-1,1703060869,1703060869,0,0,'6582a585219c6',31,''),(213,2,'appdata_ocsnsfa54thc/preview/3/7/6/9','2eee34fdd9f767f9804c0f43963f1eb5',212,'9',2,1,-1,1703060869,1703060869,0,0,'6582a58521758',31,''),(214,2,'appdata_ocsnsfa54thc/preview/3/7/6/9/3','90dede0c3fcc9962233145d6a9792dbe',213,'3',2,1,-1,1703060869,1703060869,0,0,'6582a58521135',31,''),(215,2,'appdata_ocsnsfa54thc/preview/3/7/6/9/3/c','663eefe5a057bf525584ac5b26abb611',214,'c',2,1,-1,1703060869,1703060869,0,0,'6582a58520f21',31,''),(216,2,'appdata_ocsnsfa54thc/preview/3/7/6/9/3/c/f','812271bbbe7f9fc213bf8469abf2bd10',215,'f',2,1,-1,1703060869,1703060869,0,0,'6582a58520d3b',31,''),(217,2,'appdata_ocsnsfa54thc/preview/3/7/6/9/3/c/f/23','f661cb889b0bcc928756d9b45d7abe54',216,'23',2,1,0,1703060869,1703060869,0,0,'6582a58523241',31,''),(219,2,'appdata_ocsnsfa54thc/preview/b/6/d/7/6/7/d/22/1200-1800-max.jpg','9104e61836e4237fd2298b284fd404cd',207,'1200-1800-max.jpg',11,10,207095,1703060869,1703060869,0,0,'aa3bff13bc95d8e72321c2cd899cdc5c',27,''),(220,2,'appdata_ocsnsfa54thc/preview/3/7/6/9/3/c/f/23/3000-2000-max.jpg','38d3875d18ccd5ad7f8ce48ea4b8e449',217,'3000-2000-max.jpg',11,10,808212,1703060869,1703060869,0,0,'9f02ded1101584750d124186e0ab0087',27,''),(221,2,'appdata_ocsnsfa54thc/preview/b/6/d/7/6/7/d/22/43-64.jpg','75554430e9440771a9217ed76ff322b4',207,'43-64.jpg',11,10,1188,1703060869,1703060869,0,0,'4e73d912a1836c7504d0790f9055146c',27,''),(222,2,'appdata_ocsnsfa54thc/preview/b/6/d/7/6/7/d/22/683-1024.jpg','e554a3b18e042cf97f11e80e775418ba',207,'683-1024.jpg',11,10,67059,1703060869,1703060869,0,0,'92b60faeb0da4c2b37d7e8eb3942b952',27,''),(223,2,'appdata_ocsnsfa54thc/preview/3/7/6/9/3/c/f/23/64-43.jpg','38e4291c951ede799ac5aa783e6ad11f',217,'64-43.jpg',11,10,1747,1703060869,1703060869,0,0,'06e2a6db1152a83549146115c7283045',27,''),(224,2,'appdata_ocsnsfa54thc/preview/3/7/6/9/3/c/f/23/1024-683.jpg','8bf2a8548b0aa61d10331bd694189947',217,'1024-683.jpg',11,10,170172,1703060869,1703060869,0,0,'2979a805cdbb67f32bff9652d4c4725a',27,''),(225,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_x-office-document.svg','1710ee8d33f2afd67be6d3fb9377caca',64,'icon-core-#0082c9filetypes_x-office-document.svg',21,10,295,1703060879,1703060879,0,0,'da2fff61c40ee82b4e660e33ba7a4034',27,''),(226,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_x-office-presentation.svg','481bb04405d1ef04f87abb187257a4a2',64,'icon-core-#0082c9filetypes_x-office-presentation.svg',21,10,261,1703060879,1703060879,0,0,'f7ff91b9e3be18570cbdeb2924d7cea3',27,''),(227,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_x-office-spreadsheet.svg','e96841ef9be121a133f43319b0bfbcad',64,'icon-core-#0082c9filetypes_x-office-spreadsheet.svg',21,10,327,1703060879,1703060879,0,0,'d714e16c2918433a99ff70e6158684af',27,''),(228,2,'appdata_ocsnsfa54thc/theming/global/0/icon-core-#0082c9filetypes_file.svg','4dcbaace0d436b7c51e549adb6d47ce5',64,'icon-core-#0082c9filetypes_file.svg',21,10,228,1703060879,1703060879,0,0,'7b3c59ab5f309b84bc40b3140d9641b5',27,''),(229,2,'appdata_ocsnsfa54thc/preview/1/f/f/1/d/e/7/24/256-171.jpg','f1e82d179da7645e81ce15037dab7cb3',76,'256-171.jpg',11,10,10355,1703060879,1703060879,0,0,'5d2b1e80ba37e0bdb1340b402e6f4402',27,''),(230,2,'appdata_ocsnsfa54thc/preview/6/3','ad3747a04e49b20fbe2b48496eb1aa8d',103,'3',2,1,-1,1703060879,1703060879,0,0,'6582a58f48984',31,''),(231,2,'appdata_ocsnsfa54thc/preview/6/3/6','efe3f757a0369f76ea47c14f6701a3db',230,'6',2,1,-1,1703060879,1703060879,0,0,'6582a58f4852a',31,''),(232,2,'appdata_ocsnsfa54thc/preview/6/3/6/4','671c7ae64f463e44340c6dd05943c2bb',231,'4',2,1,-1,1703060879,1703060879,0,0,'6582a58f48388',31,''),(233,2,'appdata_ocsnsfa54thc/preview/6/3/6/4/d','276b13174f4379e97efbb25948d13ae3',232,'d',2,1,-1,1703060879,1703060879,0,0,'6582a58f47fbb',31,''),(234,2,'appdata_ocsnsfa54thc/preview/6/3/6/4/d/3','fb16d0c5a0de331b224da29342fcaf1f',233,'3',2,1,-1,1703060879,1703060879,0,0,'6582a58f47e6d',31,''),(235,2,'appdata_ocsnsfa54thc/preview/6/3/6/4/d/3/f','f0063efcdb767a3b4c8ea7de415292d4',234,'f',2,1,-1,1703060879,1703060879,0,0,'6582a58f47d11',31,''),(236,2,'appdata_ocsnsfa54thc/preview/c/1','728d7b720f7b0da48a9a0774689a79d3',130,'1',2,1,-1,1703060879,1703060879,0,0,'6582a58f4b346',31,''),(237,2,'appdata_ocsnsfa54thc/preview/6/3/6/4/d/3/f/32','6d1aad010303476124072454c676ffc1',235,'32',2,1,0,1703060879,1703060879,0,0,'6582a58f47983',31,''),(238,2,'appdata_ocsnsfa54thc/preview/c/1/6','910864493955621368a98d7b0c3df902',236,'6',2,1,-1,1703060879,1703060879,0,0,'6582a58f4b09a',31,''),(239,2,'appdata_ocsnsfa54thc/preview/c/1/6/a','45decce5a44b731a06c5fa66bdfe7d1f',238,'a',2,1,-1,1703060879,1703060879,0,0,'6582a58f4ad26',31,''),(240,2,'appdata_ocsnsfa54thc/preview/c/1/6/a/5','9cbb37c4cabb0fe817c08ef5da48b9b3',239,'5',2,1,-1,1703060879,1703060879,0,0,'6582a58f4aaaa',31,''),(241,2,'appdata_ocsnsfa54thc/preview/c/1/6/a/5/3','caa4eaffc90b9e5dc61f9182e31f2d66',240,'3',2,1,-1,1703060879,1703060879,0,0,'6582a58f4a78f',31,''),(242,2,'appdata_ocsnsfa54thc/preview/c/1/6/a/5/3/2','ebc4336c407cacc1a0ffcdb1fabf050f',241,'2',2,1,-1,1703060879,1703060879,0,0,'6582a58f4a53d',31,''),(243,2,'appdata_ocsnsfa54thc/preview/c/1/6/a/5/3/2/31','53df0918cf2358520bce4f8d9195b933',242,'31',2,1,0,1703060879,1703060879,0,0,'6582a58f4a108',31,''),(244,2,'appdata_ocsnsfa54thc/preview/1/8','9faf3ac67b51240857b3aec2ebf1e8e2',69,'8',2,1,-1,1703060879,1703060879,0,0,'6582a58f4fcd5',31,''),(245,2,'appdata_ocsnsfa54thc/preview/1/8/2','ac15f36c03289236814a5b0545e02ec1',244,'2',2,1,-1,1703060879,1703060879,0,0,'6582a58f4fb23',31,''),(246,2,'appdata_ocsnsfa54thc/preview/1/8/2/b','f662a85aa2e10ae377f6e1b64603d3d2',245,'b',2,1,-1,1703060879,1703060879,0,0,'6582a58f4f8b5',31,''),(247,2,'appdata_ocsnsfa54thc/preview/1/8/2/b/e','e68d47ab85b5aa66a63682b79d000a1a',246,'e',2,1,-1,1703060879,1703060879,0,0,'6582a58f4f549',31,''),(248,2,'appdata_ocsnsfa54thc/preview/1/8/2/b/e/0','c3adf8691223592484f222665f63bf02',247,'0',2,1,-1,1703060879,1703060879,0,0,'6582a58f4f350',31,''),(249,2,'appdata_ocsnsfa54thc/preview/1/8/2/b/e/0/c','6f51aabbf468e26da17e2b13b617fe6c',248,'c',2,1,-1,1703060879,1703060879,0,0,'6582a58f4f1a0',31,''),(250,2,'appdata_ocsnsfa54thc/preview/1/8/2/b/e/0/c/33','24fbec36cd882fa74bbd29c0ef38d065',249,'33',2,1,0,1703060879,1703060879,0,0,'6582a58f4efc0',31,''),(251,2,'appdata_ocsnsfa54thc/preview/c/1/6/a/5/3/2/31/256-144-max.png','2dbc3b0070ff2c0f429f8be424ee402f',243,'256-144-max.png',12,10,1898,1703060879,1703060879,0,0,'9f35d6a3234ee41d91ed406920c443de',27,''),(252,2,'appdata_ocsnsfa54thc/preview/6/3/6/4/d/3/f/32/512-376-max.png','80ca680c49258fd4f80f8f1149346f5f',237,'512-376-max.png',12,10,13892,1703060879,1703060879,0,0,'7791f1221de2a194ced457cc4c999d8f',27,''),(253,2,'appdata_ocsnsfa54thc/preview/6/3/6/4/d/3/f/32/256-188.png','3c74a0aa4f14df20620e58727de250e6',237,'256-188.png',12,10,18455,1703060879,1703060879,0,0,'57be1f5b3891824a0f72c7c64143eefa',27,''),(254,2,'appdata_ocsnsfa54thc/preview/1/c','4e37744f56f99a5665d39c138098e4f8',69,'c',2,1,-1,1703060879,1703060879,0,0,'6582a58f5d225',31,''),(255,2,'appdata_ocsnsfa54thc/preview/1/c/3','b956af8fc0b47db8e2c759f3e2f1c17d',254,'3',2,1,-1,1703060879,1703060879,0,0,'6582a58f5d0eb',31,''),(256,2,'appdata_ocsnsfa54thc/preview/1/c/3/8','a50eb5649f549e7598ca241f2488f3f1',255,'8',2,1,-1,1703060879,1703060879,0,0,'6582a58f5cfa8',31,''),(257,2,'appdata_ocsnsfa54thc/preview/1/c/3/8/3','8d43dddaf4bc8d5553de6560345053c6',256,'3',2,1,-1,1703060879,1703060879,0,0,'6582a58f5ce4a',31,''),(258,2,'appdata_ocsnsfa54thc/preview/1/c/3/8/3/c','d7ffe0b7bb4b4d0ef1b3d88423d6369b',257,'c',2,1,-1,1703060879,1703060879,0,0,'6582a58f5cb68',31,''),(259,2,'appdata_ocsnsfa54thc/preview/1/c/3/8/3/c/d','17853ef3c8931dae1a193b9c98353f83',258,'d',2,1,-1,1703060879,1703060879,0,0,'6582a58f5c986',31,''),(260,2,'appdata_ocsnsfa54thc/preview/1/c/3/8/3/c/d/35','f84b8e98e8831efe56cdfcce03862b3a',259,'35',2,1,0,1703060879,1703060879,0,0,'6582a58f5c72d',31,''),(261,2,'appdata_ocsnsfa54thc/preview/1/c/3/8/3/c/d/35/201-255-max.png','8ac923963435a8f8acf44b7a9a51bade',260,'201-255-max.png',12,10,2090,1703060879,1703060879,0,0,'3499fe2597164c472e1d95ab08542d89',27,''),(262,2,'appdata_ocsnsfa54thc/preview/e','9cd2e5c8b56111dfeb4331fc33919e2e',68,'e',2,1,-1,1703060879,1703060879,0,0,'6582a58f63ae3',31,''),(263,2,'appdata_ocsnsfa54thc/preview/e/3','bc68cf47b032aedecc0a913badee9f6b',262,'3',2,1,-1,1703060879,1703060879,0,0,'6582a58f638ce',31,''),(264,2,'appdata_ocsnsfa54thc/preview/e/3/6','ba3c25c90729247e43e12e43c7a915df',263,'6',2,1,-1,1703060879,1703060879,0,0,'6582a58f637a8',31,''),(265,2,'appdata_ocsnsfa54thc/preview/e/3/6/9','0a6eb6e40b01d89cb79c885832df1263',264,'9',2,1,-1,1703060879,1703060879,0,0,'6582a58f63687',31,''),(266,2,'appdata_ocsnsfa54thc/preview/e/3/6/9/8','a0f94ef4572d703ffa34a34d2fcbf66d',265,'8',2,1,-1,1703060879,1703060879,0,0,'6582a58f63564',31,''),(267,2,'appdata_ocsnsfa54thc/preview/e/3/6/9/8/5','355902b39c9454bad7aae6128a567133',266,'5',2,1,-1,1703060879,1703060879,0,0,'6582a58f63430',31,''),(268,2,'appdata_ocsnsfa54thc/preview/e/3/6/9/8/5/3','04645cb8d6f8a990d24c3fcbd2dc548b',267,'3',2,1,-1,1703060879,1703060879,0,0,'6582a58f632ce',31,''),(269,2,'appdata_ocsnsfa54thc/preview/e/3/6/9/8/5/3/34','c861ea57298b54422e0edc7077004015',268,'34',2,1,0,1703060879,1703060879,0,0,'6582a58f630e9',31,''),(270,2,'appdata_ocsnsfa54thc/preview/1/9','85795419e5480e054306ac75c5337e5d',69,'9',2,1,-1,1703060879,1703060879,0,0,'6582a58f68377',31,''),(271,2,'appdata_ocsnsfa54thc/preview/1/9/c','fc450e5351a89998585bb0f0855a8620',270,'c',2,1,-1,1703060879,1703060879,0,0,'6582a58f681f1',31,''),(272,2,'appdata_ocsnsfa54thc/preview/e/3/6/9/8/5/3/34/256-181-max.png','3f1d2c347c30da98c4d4f7fc4cee7d84',269,'256-181-max.png',12,10,4032,1703060879,1703060879,0,0,'531db412ca13c720510642d8b04a2f2e',27,''),(273,2,'appdata_ocsnsfa54thc/preview/1/9/c/a','a8e8921bb2278d08452d076e95d6365e',271,'a',2,1,-1,1703060879,1703060879,0,0,'6582a58f68088',31,''),(274,2,'appdata_ocsnsfa54thc/preview/1/9/c/a/1','9ec1b8b8d7f7854443724e497c3d5ce2',273,'1',2,1,-1,1703060879,1703060879,0,0,'6582a58f67e4b',31,''),(275,2,'appdata_ocsnsfa54thc/preview/1/9/c/a/1/4','a31edc8b9b6214c210d2d4f8fe560195',274,'4',2,1,-1,1703060879,1703060879,0,0,'6582a58f67bcf',31,''),(276,2,'appdata_ocsnsfa54thc/preview/1/9/c/a/1/4/e','cdafaf6dbc1fb29dd4fea77211feb18b',275,'e',2,1,-1,1703060879,1703060879,0,0,'6582a58f679ef',31,''),(277,2,'appdata_ocsnsfa54thc/preview/1/9/c/a/1/4/e/36','d6ef0171fe644deb3b628c694910a11d',276,'36',2,1,0,1703060879,1703060879,0,0,'6582a58f677e7',31,''),(278,2,'appdata_ocsnsfa54thc/preview/1/9/c/a/1/4/e/36/256-181-max.png','56ab7ab20f606f9af00a95cab7f21564',277,'256-181-max.png',12,10,3789,1703060879,1703060879,0,0,'41844be1c68de7d2fa0aaa74541ed911',27,''),(279,2,'appdata_ocsnsfa54thc/preview/a/5','729f478bc0cf7c4a04363abcef262134',122,'5',2,1,-1,1703060879,1703060879,0,0,'6582a58f729fa',31,''),(280,2,'appdata_ocsnsfa54thc/preview/a/5/7','2b42099dd1090d3f5465cfe4c656309b',279,'7',2,1,-1,1703060879,1703060879,0,0,'6582a58f728cc',31,''),(281,2,'appdata_ocsnsfa54thc/preview/a/5/7/7','149a088f77e1a3cb8cc73bf49afa6172',280,'7',2,1,-1,1703060879,1703060879,0,0,'6582a58f7279b',31,''),(282,2,'appdata_ocsnsfa54thc/preview/a/5/7/7/1','d92b85bd019720f174c0c3aacc6f23c7',281,'1',2,1,-1,1703060879,1703060879,0,0,'6582a58f7265c',31,''),(283,2,'appdata_ocsnsfa54thc/preview/a/5/7/7/1/b','0a3633af81b730711bc9e1958d3cf6bf',282,'b',2,1,-1,1703060879,1703060879,0,0,'6582a58f724f7',31,''),(284,2,'appdata_ocsnsfa54thc/preview/a/5/7/7/1/b/c','5c96ff14adc96f57f6e9123fcc011ce3',283,'c',2,1,-1,1703060879,1703060879,0,0,'6582a58f7232e',31,''),(285,2,'appdata_ocsnsfa54thc/preview/a/5/7/7/1/b/c/38','3a444c76e5c5276be00e077ac5e9e76d',284,'38',2,1,0,1703060879,1703060879,0,0,'6582a58f720dd',31,''),(286,2,'appdata_ocsnsfa54thc/preview/1/8/2/b/e/0/c/33/4096-4096-max.png','a692ae552f98d5b832462de067c316d9',250,'4096-4096-max.png',12,10,111919,1703060879,1703060879,0,0,'13d0eaea0c0e40f2982b5e24dcacc55c',27,''),(287,2,'appdata_ocsnsfa54thc/preview/a/5/b','6d501241aadb8603162c4825bb9ac1cd',279,'b',2,1,-1,1703060879,1703060879,0,0,'6582a58f7b947',31,''),(288,2,'appdata_ocsnsfa54thc/preview/a/5/b/f','623f734cc8af0239c707a8c95caf2ef1',287,'f',2,1,-1,1703060879,1703060879,0,0,'6582a58f7b768',31,''),(289,2,'appdata_ocsnsfa54thc/preview/a/5/b/f/c','079159b6b4fe5b6d158828b5cfc53b0f',288,'c',2,1,-1,1703060879,1703060879,0,0,'6582a58f7b583',31,''),(290,2,'appdata_ocsnsfa54thc/preview/a/5/b/f/c/9','8cab0a8515f0bfb1b81eda5213fa7273',289,'9',2,1,-1,1703060879,1703060879,0,0,'6582a58f7b24e',31,''),(291,2,'appdata_ocsnsfa54thc/preview/a/5/b/f/c/9/e','34d63f6e47b7552ab971f7879f338d62',290,'e',2,1,-1,1703060879,1703060879,0,0,'6582a58f7af4e',31,''),(292,2,'appdata_ocsnsfa54thc/preview/a/5/b/f/c/9/e/37','bfb96377827e5cac050397a4feb51f79',291,'37',2,1,0,1703060879,1703060879,0,0,'6582a58f7a740',31,''),(293,2,'appdata_ocsnsfa54thc/preview/a/5/b/f/c/9/e/37/512-288-max.png','733d938e7ade99231bd53f4c9d6211fa',292,'512-288-max.png',12,10,13279,1703060879,1703060879,0,0,'b582f544cdb52a6cf6d7ae43ea1be8e6',27,''),(294,2,'appdata_ocsnsfa54thc/preview/a/5/b/f/c/9/e/37/256-144.png','1a943db51b625de7a2c6834452cf2bc7',292,'256-144.png',12,10,14648,1703060879,1703060879,0,0,'8ffbe1923f396eff98548c0e0c27976d',27,''),(295,2,'appdata_ocsnsfa54thc/preview/a/5/7/7/1/b/c/38/4096-4096-max.png','1284e3dc1da11b0cde1bcd75c6fc27d2',285,'4096-4096-max.png',12,10,69608,1703060879,1703060879,0,0,'629d497cc9a2a765de4253921a445295',27,''),(296,2,'appdata_ocsnsfa54thc/preview/d','be9c6713cd867784e6821d23737f487b',68,'d',2,1,-1,1703060879,1703060879,0,0,'6582a58f95727',31,''),(297,2,'appdata_ocsnsfa54thc/preview/d/6','f046d31cd2387d745c30f5e0bd5e470a',296,'6',2,1,-1,1703060879,1703060879,0,0,'6582a58f95621',31,''),(298,2,'appdata_ocsnsfa54thc/preview/d/6/7','9595f8370adc567e5379a4f96e34988e',297,'7',2,1,-1,1703060879,1703060879,0,0,'6582a58f95512',31,''),(299,2,'appdata_ocsnsfa54thc/preview/d/6/7/d','610c5d7fb96b4bbd9ad8b7958fda7cae',298,'d',2,1,-1,1703060879,1703060879,0,0,'6582a58f953ff',31,''),(300,2,'appdata_ocsnsfa54thc/preview/d/6/7/d/8','7fbdd66d17fb951882f70d7819feece2',299,'8',2,1,-1,1703060879,1703060879,0,0,'6582a58f952c5',31,''),(301,2,'appdata_ocsnsfa54thc/preview/d/6/7/d/8/a','b7b6d5993011cff6a0126e8373f252f2',300,'a',2,1,-1,1703060879,1703060879,0,0,'6582a58f9515e',31,''),(302,2,'appdata_ocsnsfa54thc/preview/d/6/7/d/8/a/b','053a69a78922b9a7e2a3c61cc0aafeae',301,'b',2,1,-1,1703060879,1703060879,0,0,'6582a58f94f3d',31,''),(303,2,'appdata_ocsnsfa54thc/preview/d/6/7/d/8/a/b/39','4b25f41907e24efa3f1e5dd62437ec14',302,'39',2,1,0,1703060879,1703060879,0,0,'6582a58f93900',31,''),(304,2,'appdata_ocsnsfa54thc/preview/d/6/7/d/8/a/b/39/396-512-max.png','b9337a777f12d8ee61bb05c39e8aaca1',303,'396-512-max.png',12,10,23262,1703060879,1703060879,0,0,'5192ce368dad3f7285f678185e4c9cc3',27,''),(305,2,'appdata_ocsnsfa54thc/preview/d/6/7/d/8/a/b/39/198-256.png','5c2404f947f6e512277b9a095b9d8c8a',303,'198-256.png',12,10,30535,1703060879,1703060879,0,0,'e619da5a3d9ec4f37502cef440647dc9',27,''),(306,2,'appdata_ocsnsfa54thc/preview/1/8/2/b/e/0/c/33/256-256.png','a52ac455b88165990a64bc7c039f2660',250,'256-256.png',12,10,20678,1703060879,1703060879,0,0,'c8facb69c4e56b308dedd9e8f88e1427',27,''),(307,2,'appdata_ocsnsfa54thc/preview/a/5/7/7/1/b/c/38/256-256.png','1ef2c36f6ff029cf29b8bd1a893fbd91',285,'256-256.png',12,10,12517,1703060879,1703060879,0,0,'4b038cf8ed6a280ae3dbce6efa5c327b',27,''),(308,2,'appdata_ocsnsfa54thc/preview/a/1','c6e9232dfbcb16609c96752678a6858b',122,'1',2,1,-1,1703060885,1703060885,0,0,'6582a59599d4f',31,''),(309,2,'appdata_ocsnsfa54thc/preview/a/1/d','3a7552cb97a2b72848781f8d94a0b094',308,'d',2,1,-1,1703060885,1703060885,0,0,'6582a59599be2',31,''),(310,2,'appdata_ocsnsfa54thc/preview/a/1/d/0','394a6cd31080432339aa841ac863b1dc',309,'0',2,1,-1,1703060885,1703060885,0,0,'6582a595999c7',31,''),(311,2,'appdata_ocsnsfa54thc/preview/a/1/d/0/c','cc01a6c4e293f69b0f5c387551b04ee2',310,'c',2,1,-1,1703060885,1703060885,0,0,'6582a595991b5',31,''),(312,2,'appdata_ocsnsfa54thc/preview/a/1/d/0/c/6','5c05c2045a98c6bdad4af1f9b76d2b67',311,'6',2,1,-1,1703060885,1703060885,0,0,'6582a59598d42',31,''),(313,2,'appdata_ocsnsfa54thc/preview/a/1/d/0/c/6/e','5552d49cd76b1f9b9ae431fa12bb7564',312,'e',2,1,-1,1703060885,1703060885,0,0,'6582a59598759',31,''),(314,2,'appdata_ocsnsfa54thc/preview/a/1/d/0/c/6/e/42','5794e1bf9477bce4cd3c9cdeceb7be5a',313,'42',2,1,0,1703060885,1703060885,0,0,'6582a59598426',31,''),(315,2,'appdata_ocsnsfa54thc/preview/f','9b98558b4244243c51ab287f2802b2bf',68,'f',2,1,-1,1703060885,1703060885,0,0,'6582a5959df9a',31,''),(316,2,'appdata_ocsnsfa54thc/preview/f/7','682e61f563f578e0410b91a1cad6bba9',315,'7',2,1,-1,1703060885,1703060885,0,0,'6582a5959ddfe',31,''),(317,2,'appdata_ocsnsfa54thc/preview/f/7/1','ab689e9ffbe6037a0efeb38ff3572104',316,'1',2,1,-1,1703060885,1703060885,0,0,'6582a5959d6c6',31,''),(318,2,'appdata_ocsnsfa54thc/preview/f/7/1/7','8b0763a0a246e1a1736a846f29328a66',317,'7',2,1,-1,1703060885,1703060885,0,0,'6582a5959d54b',31,''),(319,2,'appdata_ocsnsfa54thc/preview/f/7/1/7/7','ccda11be484cd9d99ee1a346a6806c53',318,'7',2,1,-1,1703060885,1703060885,0,0,'6582a5959d3d2',31,''),(320,2,'appdata_ocsnsfa54thc/preview/f/7/1/7/7/1','c2b62b7fbd6f089f65708c473fea93ed',319,'1',2,1,-1,1703060885,1703060885,0,0,'6582a5959cd44',31,''),(321,2,'appdata_ocsnsfa54thc/preview/f/7/1/7/7/1/6','89163c64a20ddf872647e33571527877',320,'6',2,1,-1,1703060885,1703060885,0,0,'6582a5959cb83',31,''),(322,2,'appdata_ocsnsfa54thc/preview/f/7/1/7/7/1/6/44','836060e16838334b8f89613f967201ca',321,'44',2,1,0,1703060885,1703060885,0,0,'6582a5959c94a',31,''),(323,2,'appdata_ocsnsfa54thc/preview/1/7','f4914d9c890b8f85bb17a7e143e71a0e',69,'7',2,1,-1,1703060885,1703060885,0,0,'6582a595a2dd8',31,''),(324,2,'appdata_ocsnsfa54thc/preview/1/7/e','a8e490979b3d73ca2c574c6c7b8be865',323,'e',2,1,-1,1703060885,1703060885,0,0,'6582a595a2c9a',31,''),(325,2,'appdata_ocsnsfa54thc/preview/1/7/e/6','2aca0372d801ed15b6ab3a9b4f38c45b',324,'6',2,1,-1,1703060885,1703060885,0,0,'6582a595a2b4b',31,''),(326,2,'appdata_ocsnsfa54thc/preview/a/1/d/0/c/6/e/42/362-512-max.png','f6e7d385d9447a0abcfc3309d9ce75f4',314,'362-512-max.png',12,10,88877,1703060885,1703060885,0,0,'eb0e0d211f6ba938d83f696a9d5489e7',27,''),(327,2,'appdata_ocsnsfa54thc/preview/1/7/e/6/2','10d0cbd454a7edb2f0220caaf4d90f3a',325,'2',2,1,-1,1703060885,1703060885,0,0,'6582a595a29c3',31,''),(328,2,'appdata_ocsnsfa54thc/preview/1/7/e/6/2/1','b52117c7f9f8fa13a42ee0a6fa6a5d27',327,'1',2,1,-1,1703060885,1703060885,0,0,'6582a595a1b3e',31,''),(329,2,'appdata_ocsnsfa54thc/preview/1/7/e/6/2/1/6','4e89e37d7997b129f2796868ce35ec5d',328,'6',2,1,-1,1703060885,1703060885,0,0,'6582a595a181a',31,''),(330,2,'appdata_ocsnsfa54thc/preview/1/7/e/6/2/1/6/43','a88de9674b277ede3da7c83452a3fecc',329,'43',2,1,0,1703060885,1703060885,0,0,'6582a595a1389',31,''),(331,2,'appdata_ocsnsfa54thc/preview/f/7/1/7/7/1/6/44/512-288-max.png','8d7e374a3edf914c656421c726eeabc7',322,'512-288-max.png',12,10,23378,1703060885,1703060885,0,0,'f719b11feace8707836b334d5e1df80e',27,''),(332,2,'appdata_ocsnsfa54thc/preview/1/7/e/6/2/1/6/43/236-255-max.png','b0958b3f625dd52e32172d8d625ebfef',330,'236-255-max.png',12,10,4699,1703060885,1703060885,0,0,'83d4008a49184a1d6010b8e0d5ba84d2',27,''),(333,2,'appdata_ocsnsfa54thc/preview/a/1/d/0/c/6/e/42/181-256.png','fa282de2d276cdda0f3da7818f696639',314,'181-256.png',12,10,90651,1703060885,1703060885,0,0,'5f47030abeb1c46c69b7be3f3922f93e',27,''),(334,2,'appdata_ocsnsfa54thc/preview/f/7/1/7/7/1/6/44/256-144.png','dfaf0db6e603a2e5c6345b481853a7d1',322,'256-144.png',12,10,28525,1703060885,1703060885,0,0,'d57ce80da23a7fb785e0f17c46aa73dc',27,''),(335,2,'appdata_ocsnsfa54thc/preview/d/9','91c46348ca28e2a7bc8aa593218b5bb4',296,'9',2,1,-1,1703060885,1703060885,0,0,'6582a595b4378',31,''),(336,2,'appdata_ocsnsfa54thc/preview/d/9/d','3789c6038a65ad9310dfa3c922158411',335,'d',2,1,-1,1703060885,1703060885,0,0,'6582a595b41fd',31,''),(337,2,'appdata_ocsnsfa54thc/preview/d/9/d/4','6aa02d67cb1054bcb50f8e1f83e326ec',336,'4',2,1,-1,1703060885,1703060885,0,0,'6582a595b4099',31,''),(338,2,'appdata_ocsnsfa54thc/preview/d/9/d/4/f','7b71b74c8da86337be9fa37a69e2465f',337,'f',2,1,-1,1703060885,1703060885,0,0,'6582a595b3f08',31,''),(339,2,'appdata_ocsnsfa54thc/preview/d/9/d/4/f/4','0f3989b4c90a1df288dbd77270d78ae3',338,'4',2,1,-1,1703060885,1703060885,0,0,'6582a595b3d48',31,''),(340,2,'appdata_ocsnsfa54thc/preview/d/9/d/4/f/4/9','61b806e60bc4ec8ae0d433d66361681a',339,'9',2,1,-1,1703060885,1703060885,0,0,'6582a595b3b64',31,''),(341,2,'appdata_ocsnsfa54thc/preview/d/9/d/4/f/4/9/46','585ed9c2f8cf090ed4d904d6d3539966',340,'46',2,1,0,1703060885,1703060885,0,0,'6582a595b38e9',31,''),(342,2,'appdata_ocsnsfa54thc/preview/6/c','8a6af78c4d05c365a8fd037a927a4e88',103,'c',2,1,-1,1703060885,1703060885,0,0,'6582a595b62e5',31,''),(343,2,'appdata_ocsnsfa54thc/preview/6/c/8','6efe87b0ede0314572bdbfcdeab1462f',342,'8',2,1,-1,1703060885,1703060885,0,0,'6582a595b616d',31,''),(344,2,'appdata_ocsnsfa54thc/preview/6/c/8/3','69e051f8247877e1c92a4fba13866ea0',343,'3',2,1,-1,1703060885,1703060885,0,0,'6582a595b5ffa',31,''),(345,2,'appdata_ocsnsfa54thc/preview/6/c/8/3/4','1211d5c48c49fed370b3e5443e6627a3',344,'4',2,1,-1,1703060885,1703060885,0,0,'6582a595b5e8a',31,''),(346,2,'appdata_ocsnsfa54thc/preview/6/c/8/3/4/9','760b39dedea0d3a913c8f4306db43e27',345,'9',2,1,-1,1703060885,1703060885,0,0,'6582a595b5969',31,''),(347,2,'appdata_ocsnsfa54thc/preview/6/c/8/3/4/9/c','8dfb38d812cf0e3888bd9e52fb808b61',346,'c',2,1,-1,1703060885,1703060885,0,0,'6582a595b55b0',31,''),(348,2,'appdata_ocsnsfa54thc/preview/6/c/8/3/4/9/c/45','69282d7277e2a6745c620d973128c141',347,'45',2,1,0,1703060885,1703060885,0,0,'6582a595b52d0',31,''),(349,2,'appdata_ocsnsfa54thc/preview/d/9/d/4/f/4/9/46/512-288-max.png','7254f451b58ad4c5554d25394e2e7d69',341,'512-288-max.png',12,10,40065,1703060885,1703060885,0,0,'42055bb88928b98826a25508762bdd31',27,''),(350,2,'appdata_ocsnsfa54thc/preview/6/c/8/3/4/9/c/45/396-512-max.png','6ef5788a5fb0a3be61c908e2950cecc4',348,'396-512-max.png',12,10,19811,1703060885,1703060885,0,0,'e928a585b181541f1d5162a0bbf7fe2b',27,''),(351,2,'appdata_ocsnsfa54thc/preview/6/7','cc83635269ec2d2cc70d75f0c26402fc',103,'7',2,1,-1,1703060885,1703060885,0,0,'6582a595bb51b',31,''),(352,2,'appdata_ocsnsfa54thc/preview/6/7/c','443f525e6caa9848eaefdcddb1ea313b',351,'c',2,1,-1,1703060885,1703060885,0,0,'6582a595bb36d',31,''),(353,2,'appdata_ocsnsfa54thc/preview/6/7/c/6','819eee754ff204d2c0b36e44bd25c0b2',352,'6',2,1,-1,1703060885,1703060885,0,0,'6582a595bb215',31,''),(354,2,'appdata_ocsnsfa54thc/preview/6/7/c/6/a','4ab4cd4e538261b993211b2f794964e0',353,'a',2,1,-1,1703060885,1703060885,0,0,'6582a595bb08a',31,''),(355,2,'appdata_ocsnsfa54thc/preview/6/7/c/6/a/1','45d8a972566c4a427337e804dcce47d8',354,'1',2,1,-1,1703060885,1703060885,0,0,'6582a595baec3',31,''),(356,2,'appdata_ocsnsfa54thc/preview/6/7/c/6/a/1/e','7f1bca59a6ab826bfc4bec6d25cdf523',355,'e',2,1,-1,1703060885,1703060885,0,0,'6582a595bac80',31,''),(357,2,'appdata_ocsnsfa54thc/preview/6/7/c/6/a/1/e/47','c9e0335681084e11afa565467b93411c',356,'47',2,1,0,1703060885,1703060885,0,0,'6582a595ba896',31,''),(358,2,'appdata_ocsnsfa54thc/preview/d/9/d/4/f/4/9/46/256-144.png','7165784ff40e2a6717be6af660ae2572',341,'256-144.png',12,10,49824,1703060885,1703060885,0,0,'9d78ba9ecfae54e1265c0b5f2b4a1f59',27,''),(359,2,'appdata_ocsnsfa54thc/preview/6/7/c/6/a/1/e/47/181-256-max.png','af5ceda99aed712f2f5eee934a8ceff0',357,'181-256-max.png',12,10,3547,1703060885,1703060885,0,0,'b887a4138176ccc12b6e3cb7d34daf1c',27,''),(360,2,'appdata_ocsnsfa54thc/preview/6/c/8/3/4/9/c/45/198-256.png','b81844ba0ddb3cd06b472e1d4cfb2aef',348,'198-256.png',12,10,24762,1703060885,1703060885,0,0,'9401b7679a59763461353da0a9b85233',27,''),(361,2,'appdata_ocsnsfa54thc/preview/f/4','b99954493b9b5620bafb593df88127d1',315,'4',2,1,-1,1703060885,1703060885,0,0,'6582a595ca5e7',31,''),(362,2,'appdata_ocsnsfa54thc/preview/f/4/5','c8a578f18076a21c1a234900b80cb81a',361,'5',2,1,-1,1703060885,1703060885,0,0,'6582a595ca3fc',31,''),(363,2,'appdata_ocsnsfa54thc/preview/f/4/5/7','9ef59cae8cffe159dae3077c5cea2d4f',362,'7',2,1,-1,1703060885,1703060885,0,0,'6582a595ca0fa',31,''),(364,2,'appdata_ocsnsfa54thc/preview/f/4/5/7/c','9cde90086e86f22f2edd0d1717bdcd8e',363,'c',2,1,-1,1703060885,1703060885,0,0,'6582a595c9eb9',31,''),(365,2,'appdata_ocsnsfa54thc/preview/f/4/5/7/c/5','1ee600da4181d1493b1523a9d29b1d4d',364,'5',2,1,-1,1703060885,1703060885,0,0,'6582a595c9b6b',31,''),(366,2,'appdata_ocsnsfa54thc/preview/f/4/5/7/c/5/4','b00095d0eb0ad9518fa44912cf82ba97',365,'4',2,1,-1,1703060885,1703060885,0,0,'6582a595c96a6',31,''),(367,2,'appdata_ocsnsfa54thc/preview/f/4/5/7/c/5/4/49','a9a07ace81429ef59f4a74e8c282f3f5',366,'49',2,1,0,1703060885,1703060885,0,0,'6582a595c941a',31,''),(368,2,'appdata_ocsnsfa54thc/preview/6/4','a8efb4b9032dff0093f89593994a5518',103,'4',2,1,-1,1703060885,1703060885,0,0,'6582a595cb7c9',31,''),(369,2,'appdata_ocsnsfa54thc/preview/6/4/2','0e45859c379d718bdd064440f262d433',368,'2',2,1,-1,1703060885,1703060885,0,0,'6582a595cb657',31,''),(370,2,'appdata_ocsnsfa54thc/preview/6/4/2/e','b205bec51f5a329f2f61ca0c8eb241ed',369,'e',2,1,-1,1703060885,1703060885,0,0,'6582a595cb50e',31,''),(371,2,'appdata_ocsnsfa54thc/preview/6/4/2/e/9','91cba878f704229e04a7d3214d1ba17b',370,'9',2,1,-1,1703060885,1703060885,0,0,'6582a595cb390',31,''),(372,2,'appdata_ocsnsfa54thc/preview/6/4/2/e/9/2','46e7ff045c1405e6e3fd04261b143240',371,'2',2,1,-1,1703060885,1703060885,0,0,'6582a595cb1e9',31,''),(373,2,'appdata_ocsnsfa54thc/preview/6/4/2/e/9/2/e','e23b173a2bd92161db79cc94f1d50111',372,'e',2,1,-1,1703060885,1703060885,0,0,'6582a595cae2e',31,''),(374,2,'appdata_ocsnsfa54thc/preview/6/4/2/e/9/2/e/48','921c876ba43f45e1e49e2a855929936c',373,'48',2,1,0,1703060886,1703060886,0,0,'6582a595cac45',31,''),(375,2,'appdata_ocsnsfa54thc/preview/f/4/5/7/c/5/4/49/181-256-max.png','ade2166c09fe78d81b7fb601af08c1d4',367,'181-256-max.png',12,10,4052,1703060885,1703060885,0,0,'aab7e47abcc7b30c64954ce253ce5d2f',27,''),(376,2,'appdata_ocsnsfa54thc/preview/c/0','4d929b55a02a97a25e8789d1a6c890de',130,'0',2,1,-1,1703060885,1703060885,0,0,'6582a595d49ae',31,''),(377,2,'appdata_ocsnsfa54thc/preview/c/0/c','5677461f733fbcea70391bb5cb179ab1',376,'c',2,1,-1,1703060885,1703060885,0,0,'6582a595d4884',31,''),(378,2,'appdata_ocsnsfa54thc/preview/c/0/c/7','970abf95657bd7d971aee860bcf97409',377,'7',2,1,-1,1703060885,1703060885,0,0,'6582a595d4756',31,''),(379,2,'appdata_ocsnsfa54thc/preview/c/0/c/7/c','2816810d56bc4e1690a4ca3bfed3efb3',378,'c',2,1,-1,1703060885,1703060885,0,0,'6582a595d461c',31,''),(380,2,'appdata_ocsnsfa54thc/preview/c/0/c/7/c/7','ce23e1d61c5c124c69953ce698de5ba0',379,'7',2,1,-1,1703060885,1703060885,0,0,'6582a595d44c5',31,''),(381,2,'appdata_ocsnsfa54thc/preview/c/0/c/7/c/7/6','2424d8a7be867d52241dbdddd0e67429',380,'6',2,1,-1,1703060885,1703060885,0,0,'6582a595d4337',31,''),(382,2,'appdata_ocsnsfa54thc/preview/c/0/c/7/c/7/6/50','e65e59edabd369b0afc849bc6c57ee98',381,'50',2,1,0,1703060885,1703060885,0,0,'6582a595d4124',31,''),(383,2,'appdata_ocsnsfa54thc/preview/2','3552390842f56b4f5d27ed5a2a965293',68,'2',2,1,-1,1703060885,1703060885,0,0,'6582a595d8c4d',31,''),(384,2,'appdata_ocsnsfa54thc/preview/2/8','7365d4e721b298e80c1e9c43578297d6',383,'8',2,1,-1,1703060885,1703060885,0,0,'6582a595d8ae4',31,''),(385,2,'appdata_ocsnsfa54thc/preview/2/8/3','ff2847ce03d948678b7478e02a481d15',384,'3',2,1,-1,1703060885,1703060885,0,0,'6582a595d8953',31,''),(386,2,'appdata_ocsnsfa54thc/preview/2/8/3/8','ac01b7e65874255a442dbcf0427945a7',385,'8',2,1,-1,1703060885,1703060885,0,0,'6582a595d87dd',31,''),(387,2,'appdata_ocsnsfa54thc/preview/2/8/3/8/0','2f69ac6e99920cef9d430f9c9f879a87',386,'0',2,1,-1,1703060885,1703060885,0,0,'6582a595d861e',31,''),(388,2,'appdata_ocsnsfa54thc/preview/2/8/3/8/0/2','9fc2242e82015c62dc5e3b42ae6b56fe',387,'2',2,1,-1,1703060885,1703060885,0,0,'6582a595d8468',31,''),(389,2,'appdata_ocsnsfa54thc/preview/2/8/3/8/0/2/3','6edbcd3a481a8eadbec89797e3254660',388,'3',2,1,-1,1703060885,1703060885,0,0,'6582a595d82c2',31,''),(390,2,'appdata_ocsnsfa54thc/preview/2/8/3/8/0/2/3/51','df227ef58a4cf8652bff5f96f231f007',389,'51',2,1,0,1703060885,1703060885,0,0,'6582a595d80b2',31,''),(391,2,'appdata_ocsnsfa54thc/preview/c/0/c/7/c/7/6/50/361-512-max.png','e7cc2a7739502ace9c902d471db99d2b',382,'361-512-max.png',12,10,66899,1703060885,1703060885,0,0,'fdfc499eb04c5630625078ba8ec0b7aa',27,''),(392,2,'appdata_ocsnsfa54thc/preview/2/8/3/8/0/2/3/51/256-144-max.png','dcdf92475ccffb5fc8841a8d51c1900c',390,'256-144-max.png',12,10,2197,1703060885,1703060885,0,0,'388dee24e8e8515594d79003cd35311e',27,''),(393,2,'appdata_ocsnsfa54thc/preview/6/4/2/e/9/2/e/48/4096-4096-max.png','c2e0df9e73337e4038597422281603c8',374,'4096-4096-max.png',12,10,67723,1703060885,1703060885,0,0,'060431a4b863a985bc450fb14abfe95c',27,''),(394,2,'appdata_ocsnsfa54thc/preview/c/0/c/7/c/7/6/50/181-256.png','4e74c712b60b28ac475b0442b38fad8f',382,'181-256.png',12,10,69766,1703060885,1703060885,0,0,'6b2715db049ac3ab39b256d0da944089',27,''),(395,2,'appdata_ocsnsfa54thc/preview/d/8','fe68ac1675ae6a1ddae03a4c552c1c47',296,'8',2,1,-1,1703060885,1703060885,0,0,'6582a59601860',31,''),(396,2,'appdata_ocsnsfa54thc/preview/d/8/2','a5b531683f2c75d622305c50618b8133',395,'2',2,1,-1,1703060885,1703060885,0,0,'6582a596016d8',31,''),(397,2,'appdata_ocsnsfa54thc/preview/d/8/2/c','9885af00a87c4c804933e399fefe22bb',396,'c',2,1,-1,1703060885,1703060885,0,0,'6582a59601541',31,''),(398,2,'appdata_ocsnsfa54thc/preview/d/8/2/c/8','9895bec0534f4b57d4c6e3c77d73a81d',397,'8',2,1,-1,1703060885,1703060885,0,0,'6582a5960139e',31,''),(399,2,'appdata_ocsnsfa54thc/preview/d/8/2/c/8/d','695b75bae4d5476cb2edc09e93cf80f7',398,'d',2,1,-1,1703060885,1703060885,0,0,'6582a59600d39',31,''),(400,2,'appdata_ocsnsfa54thc/preview/d/8/2/c/8/d/1','25c3ebcf08e85821f0787589d7edf0e3',399,'1',2,1,-1,1703060885,1703060885,0,0,'6582a59600a51',31,''),(401,2,'appdata_ocsnsfa54thc/preview/d/8/2/c/8/d/1/53','0ce4bdd1d218c32ef58edfb52effe0d0',400,'53',2,1,0,1703060886,1703060886,0,0,'6582a5960046f',31,''),(402,2,'appdata_ocsnsfa54thc/preview/9/a','0368a36fee31515522a36415ade525db',181,'a',2,1,-1,1703060886,1703060886,0,0,'6582a596073dd',31,''),(403,2,'appdata_ocsnsfa54thc/preview/9/a/1','cde891dc8a88a980f314580380c4af6d',402,'1',2,1,-1,1703060886,1703060886,0,0,'6582a59607193',31,''),(404,2,'appdata_ocsnsfa54thc/preview/9/a/1/1','1004454ec7e8840339055e4b3148bdf0',403,'1',2,1,-1,1703060886,1703060886,0,0,'6582a59606e82',31,''),(405,2,'appdata_ocsnsfa54thc/preview/9/a/1/1/5','940539151bb554204619304ca43d2c36',404,'5',2,1,-1,1703060886,1703060886,0,0,'6582a59606bd2',31,''),(406,2,'appdata_ocsnsfa54thc/preview/9/a/1/1/5/8','5bf68a4961daa0100c88cc4b0a0687cc',405,'8',2,1,-1,1703060886,1703060886,0,0,'6582a59606930',31,''),(407,2,'appdata_ocsnsfa54thc/preview/9/a/1/1/5/8/1','90e72b5e470601b164a1eb6ec0037a3a',406,'1',2,1,-1,1703060886,1703060886,0,0,'6582a596065ab',31,''),(408,2,'appdata_ocsnsfa54thc/preview/9/a/1/1/5/8/1/52','198ba40cc4dc666b1a06a5cdb7377c30',407,'52',2,1,0,1703060886,1703060886,0,0,'6582a5960637c',31,''),(409,2,'appdata_ocsnsfa54thc/preview/d/8/2/c/8/d/1/53/361-512-max.png','68b8a181e9a092f13dfc0325046bd8e2',401,'361-512-max.png',12,10,76482,1703060886,1703060886,0,0,'0f690a9570bdfffd13454c82a8c6ca82',27,''),(410,2,'appdata_ocsnsfa54thc/preview/9/4096-4096-max.png','7a15ffff978371c203d16a4f40f7ffbb',181,'4096-4096-max.png',12,10,199884,1703060886,1703060886,0,0,'8e7ddb924d3e2960e988dcd83d2651c7',27,''),(411,2,'appdata_ocsnsfa54thc/preview/9/a/1/1/5/8/1/52/328-441-max.png','a1e4c546dde684c73ccace4bd4dbff9a',408,'328-441-max.png',12,10,21466,1703060886,1703060886,0,0,'638e9c9d01c55965279c40003e79018a',27,''),(412,2,'appdata_ocsnsfa54thc/preview/d/8/2/c/8/d/1/53/181-256.png','ab03dcc514f669a0b2c2a5420f1ff775',401,'181-256.png',12,10,75633,1703060886,1703060886,0,0,'47aecbf14bbb2b432f18e6d0782d2511',27,''),(413,2,'appdata_ocsnsfa54thc/preview/9/a/1/1/5/8/1/52/190-256.png','2feab6ad152b5e648a31debab8f51155',408,'190-256.png',12,10,54644,1703060886,1703060886,0,0,'97796284a6a40c66bd2b6839ed0b15d1',27,''),(414,2,'appdata_ocsnsfa54thc/preview/6/4/2/e/9/2/e/48/256-256.png','4609b7d340f9e5a2f3063c620fb7c907',374,'256-256.png',12,10,12156,1703060886,1703060886,0,0,'f51851de913950892a8d15dc2dff39e2',27,''),(415,2,'appdata_ocsnsfa54thc/preview/d/3','ad0badcabacd998c1b4787ec8b56ea02',296,'3',2,1,-1,1703060886,1703060886,0,0,'6582a59638591',31,''),(416,2,'appdata_ocsnsfa54thc/preview/d/3/d','858396c20a2a6a1b2f34c62349bacad0',415,'d',2,1,-1,1703060886,1703060886,0,0,'6582a596383e6',31,''),(417,2,'appdata_ocsnsfa54thc/preview/d/3/d/9','77262c338f8568e55b4a00a8a9182d21',416,'9',2,1,-1,1703060886,1703060886,0,0,'6582a59638051',31,''),(418,2,'appdata_ocsnsfa54thc/preview/d/3/d/9/4','d70ab0d49b8dda25b5b0e43067bc5a28',417,'4',2,1,-1,1703060886,1703060886,0,0,'6582a59637a20',31,''),(419,2,'appdata_ocsnsfa54thc/preview/d/3/d/9/4/4','647a91604c1cfd1a91b8ee74ae419f55',418,'4',2,1,-1,1703060886,1703060886,0,0,'6582a5963788f',31,''),(420,2,'appdata_ocsnsfa54thc/preview/d/3/d/9/4/4/6','4a5ac49a6974ccd40068c54077dd08c5',419,'6',2,1,-1,1703060886,1703060886,0,0,'6582a59637700',31,''),(421,2,'appdata_ocsnsfa54thc/preview/d/3/d/9/4/4/6/10','23f8ec39a37a5d5ddd153b5b59e95c3e',420,'10',2,1,0,1703060886,1703060886,0,0,'6582a59637570',31,''),(422,2,'appdata_ocsnsfa54thc/preview/d/3/d/9/4/4/6/10/4096-4096-max.png','f030eb5ef8d68db2736ab43f612b1a2d',421,'4096-4096-max.png',12,10,37890,1703060886,1703060886,0,0,'57eaf1b64543bd60c9585e0eded29a9d',27,''),(423,2,'appdata_ocsnsfa54thc/preview/9/256-256.png','3d6c6171e0e4d85865353de0dcebe101',181,'256-256.png',12,10,36633,1703060886,1703060886,0,0,'3d9b52e22f7bb0d0579e028a711397c9',27,''),(424,2,'appdata_ocsnsfa54thc/preview/d/3/d/9/4/4/6/10/256-256.png','f1c5d6df25884b1a618a075c375e6abf',421,'256-256.png',12,10,6736,1703060886,1703060886,0,0,'20faf1f20db55c3b645e342ea6f99a35',27,''),(425,2,'appdata_ocsnsfa54thc/appstore/future-apps.json','4ff9cbead923d1e9435223a9d940512f',61,'future-apps.json',20,3,1676360,1703061048,1703061048,0,0,'0185c80dd938577fe18174a89b442452',27,'');
/*!40000 ALTER TABLE `oc_filecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache_extended`
--

DROP TABLE IF EXISTS `oc_filecache_extended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filecache_extended` (
  `fileid` bigint(20) unsigned NOT NULL,
  `metadata_etag` varchar(40) DEFAULT NULL,
  `creation_time` bigint(20) NOT NULL DEFAULT 0,
  `upload_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fileid`),
  KEY `fce_ctime_idx` (`creation_time`),
  KEY `fce_utime_idx` (`upload_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache_extended`
--

LOCK TABLES `oc_filecache_extended` WRITE;
/*!40000 ALTER TABLE `oc_filecache_extended` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filecache_extended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_files_reminders`
--

DROP TABLE IF EXISTS `oc_files_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_files_reminders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  `due_date` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `notified` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reminders_uniq_idx` (`user_id`,`file_id`,`due_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_files_reminders`
--

LOCK TABLES `oc_files_reminders` WRITE;
/*!40000 ALTER TABLE `oc_files_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_files_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_files_trash`
--

DROP TABLE IF EXISTS `oc_files_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_files_trash` (
  `auto_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(250) NOT NULL DEFAULT '',
  `user` varchar(64) NOT NULL DEFAULT '',
  `timestamp` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(512) NOT NULL DEFAULT '',
  `type` varchar(4) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auto_id`),
  KEY `id_index` (`id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `user_index` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_files_trash`
--

LOCK TABLES `oc_files_trash` WRITE;
/*!40000 ALTER TABLE `oc_files_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_files_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_files_versions`
--

DROP TABLE IF EXISTS `oc_files_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_files_versions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_id` bigint(20) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `size` bigint(20) NOT NULL,
  `mimetype` bigint(20) NOT NULL,
  `metadata` longtext NOT NULL COMMENT '(DC2Type:json)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `files_versions_uniq_index` (`file_id`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_files_versions`
--

LOCK TABLES `oc_files_versions` WRITE;
/*!40000 ALTER TABLE `oc_files_versions` DISABLE KEYS */;
INSERT INTO `oc_files_versions` VALUES (1,8,1702570054,1083339,4,'[]'),(2,9,1702570054,1095,6,'[]'),(3,10,1702570054,136,6,'[]'),(4,11,1702570054,24295,7,'[]'),(5,12,1702570054,206,6,'[]'),(6,13,1702570054,3963036,9,'[]'),(7,14,1702570054,2403,6,'[]'),(8,16,1702570054,167989,11,'[]'),(9,17,1702570054,2170375,11,'[]'),(10,18,1702570054,150,6,'[]'),(11,19,1702570054,427030,11,'[]'),(12,20,1702570054,474653,11,'[]'),(13,21,1702570054,457744,11,'[]'),(14,22,1702570054,567689,11,'[]'),(15,23,1702570054,797325,11,'[]'),(16,24,1702570055,593508,11,'[]'),(17,25,1702570055,976625,4,'[]'),(18,26,1702570055,15069794,4,'[]'),(19,27,1702570055,50598,12,'[]'),(20,29,1702570055,11836,13,'[]'),(21,30,1702570055,13878,13,'[]'),(22,31,1702570055,14316,14,'[]'),(23,32,1702570055,52843,15,'[]'),(24,33,1702570055,554,6,'[]'),(25,34,1702570055,16988,13,'[]'),(26,35,1702570055,13378,15,'[]'),(27,36,1702570055,13653,13,'[]'),(28,37,1702570055,81196,14,'[]'),(29,38,1702570055,326,6,'[]'),(30,39,1702570055,39404,16,'[]'),(31,40,1702570055,38605,17,'[]'),(32,41,1702570055,52674,17,'[]'),(33,42,1702570055,5155877,16,'[]'),(34,43,1702570055,13441,15,'[]'),(35,44,1702570055,3509628,14,'[]'),(36,45,1702570055,30354,16,'[]'),(37,46,1702570055,317015,14,'[]'),(38,47,1702570055,17276,16,'[]'),(39,48,1702570055,573,6,'[]'),(40,49,1702570055,15961,16,'[]'),(41,50,1702570055,868111,16,'[]'),(42,51,1702570055,14810,14,'[]'),(43,52,1702570055,88394,15,'[]'),(44,53,1702570055,340061,16,'[]');
/*!40000 ALTER TABLE `oc_files_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_checks`
--

DROP TABLE IF EXISTS `oc_flow_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_flow_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) NOT NULL DEFAULT '',
  `operator` varchar(16) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_checks`
--

LOCK TABLES `oc_flow_checks` WRITE;
/*!40000 ALTER TABLE `oc_flow_checks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations`
--

DROP TABLE IF EXISTS `oc_flow_operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_flow_operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) NOT NULL DEFAULT '',
  `name` varchar(256) DEFAULT '',
  `checks` longtext DEFAULT NULL,
  `operation` longtext DEFAULT NULL,
  `entity` varchar(256) NOT NULL DEFAULT 'OCA\\WorkflowEngine\\Entity\\File',
  `events` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations`
--

LOCK TABLES `oc_flow_operations` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations_scope`
--

DROP TABLE IF EXISTS `oc_flow_operations_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_flow_operations_scope` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_id` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `value` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_scope` (`operation_id`,`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations_scope`
--

LOCK TABLES `oc_flow_operations_scope` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_admin`
--

DROP TABLE IF EXISTS `oc_group_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_group_admin` (
  `gid` varchar(64) NOT NULL DEFAULT '',
  `uid` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `group_admin_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_admin`
--

LOCK TABLES `oc_group_admin` WRITE;
/*!40000 ALTER TABLE `oc_group_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_group_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_user`
--

DROP TABLE IF EXISTS `oc_group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_group_user` (
  `gid` varchar(64) NOT NULL DEFAULT '',
  `uid` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `gu_uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_user`
--

LOCK TABLES `oc_group_user` WRITE;
/*!40000 ALTER TABLE `oc_group_user` DISABLE KEYS */;
INSERT INTO `oc_group_user` VALUES ('admin','ubuntu_admin');
/*!40000 ALTER TABLE `oc_group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_groups`
--

DROP TABLE IF EXISTS `oc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_groups` (
  `gid` varchar(64) NOT NULL DEFAULT '',
  `displayname` varchar(255) NOT NULL DEFAULT 'name',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_groups`
--

LOCK TABLES `oc_groups` WRITE;
/*!40000 ALTER TABLE `oc_groups` DISABLE KEYS */;
INSERT INTO `oc_groups` VALUES ('admin','admin');
/*!40000 ALTER TABLE `oc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_jobs`
--

DROP TABLE IF EXISTS `oc_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL DEFAULT '',
  `argument` varchar(4000) NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT 0,
  `last_checked` int(11) DEFAULT 0,
  `reserved_at` int(11) DEFAULT 0,
  `execution_duration` int(11) DEFAULT 0,
  `argument_hash` varchar(32) DEFAULT NULL,
  `time_sensitive` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `job_class_index` (`class`),
  KEY `job_lastcheck_reserved` (`last_checked`,`reserved_at`),
  KEY `job_argument_hash` (`class`,`argument_hash`),
  KEY `jobs_time_sensitive` (`time_sensitive`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_jobs`
--

LOCK TABLES `oc_jobs` WRITE;
/*!40000 ALTER TABLE `oc_jobs` DISABLE KEYS */;
INSERT INTO `oc_jobs` VALUES (1,'OCA\\UserStatus\\BackgroundJob\\ClearOldStatusesBackgroundJob','null',1703061158,1703061158,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(2,'OCA\\Photos\\Jobs\\AutomaticPlaceMapperJob','null',1702570246,1702570246,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(3,'OCA\\Activity\\BackgroundJob\\EmailNotification','null',1702572084,1702572084,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(4,'OCA\\Activity\\BackgroundJob\\ExpireActivities','null',1702572518,1702572518,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(5,'OCA\\Activity\\BackgroundJob\\DigestMail','null',1702572531,1702572531,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(6,'OCA\\Federation\\SyncJob','null',1702572883,1702572883,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(7,'OCA\\Files_Versions\\BackgroundJob\\ExpireVersions','null',1702572885,1702572885,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(8,'OCA\\Files\\BackgroundJob\\ScanFiles','null',1702572978,1702572978,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(9,'OCA\\Files\\BackgroundJob\\DeleteOrphanedItems','null',1702572983,1702572983,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(10,'OCA\\Files\\BackgroundJob\\CleanupFileLocks','null',1702572989,1702572989,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(11,'OCA\\Files\\BackgroundJob\\CleanupDirectEditingTokens','null',1702572992,1702572992,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(12,'OCA\\Files\\BackgroundJob\\DeleteExpiredOpenLocalEditor','null',1702573855,1702573855,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(13,'OCA\\NextcloudAnnouncements\\Cron\\Crawler','null',1702573868,1702573868,0,20,'37a6259cc0c1dae299a7866489dff0bd',1),(14,'OCA\\Files_Sharing\\DeleteOrphanedSharesJob','null',1702573922,1702573922,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(15,'OCA\\Files_Sharing\\ExpireSharesJob','null',1702574562,1702574562,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(16,'OCA\\Files_Sharing\\BackgroundJob\\FederatedSharesDiscoverJob','null',1702574573,1702574573,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(17,'OCA\\FilesReminders\\BackgroundJob\\CleanUpReminders','null',1702574605,1702574605,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(18,'OCA\\FilesReminders\\BackgroundJob\\ScheduledNotifications','null',1702574612,1702574612,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(19,'OCA\\DAV\\BackgroundJob\\CleanupDirectLinksJob','null',1702574641,1702574641,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(20,'OCA\\DAV\\BackgroundJob\\UpdateCalendarResourcesRoomsBackgroundJob','null',1702574649,1702574649,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(21,'OCA\\DAV\\BackgroundJob\\CleanupInvitationTokenJob','null',1702575535,1702575535,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(22,'OCA\\DAV\\BackgroundJob\\EventReminderJob','null',1702575749,1702575749,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(23,'OCA\\DAV\\BackgroundJob\\CalendarRetentionJob','null',1703060177,1703060177,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(24,'OCA\\DAV\\BackgroundJob\\PruneOutdatedSyncTokensJob','null',1703060203,1703060203,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(25,'OCA\\UpdateNotification\\Notification\\BackgroundJob','null',1703060784,1703060784,0,21,'37a6259cc0c1dae299a7866489dff0bd',1),(26,'OCA\\Files_Trashbin\\BackgroundJob\\ExpireTrash','null',1703060787,1703060787,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(27,'OCA\\Support\\BackgroundJobs\\CheckSubscription','null',1703060801,1703060801,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(28,'OCA\\ContactsInteraction\\BackgroundJob\\CleanupJob','null',1703060803,1703060803,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(29,'OCA\\Notifications\\BackgroundJob\\GenerateUserSettings','null',1703060806,1703060806,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(30,'OCA\\Notifications\\BackgroundJob\\SendNotificationMails','null',1703060808,1703060808,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(31,'OCA\\Circles\\Cron\\Maintenance','null',1703060808,1703060808,0,1,'37a6259cc0c1dae299a7866489dff0bd',1),(32,'OCA\\ServerInfo\\Jobs\\UpdateStorageStats','null',1703060809,1703060809,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(33,'OCA\\WorkflowEngine\\BackgroundJobs\\Rotate','null',1703060810,1703060810,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(34,'OCA\\Text\\Cron\\Cleanup','null',1703060811,1703060811,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(35,'OC\\Authentication\\Token\\TokenCleanupJob','null',1703060812,1703060812,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(36,'OC\\Log\\Rotate','null',1703060857,1703060857,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(37,'OC\\Preview\\BackgroundCleanupJob','null',1703060868,1703060868,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(38,'OC\\TextProcessing\\RemoveOldTasksBackgroundJob','null',1703060870,1703060870,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(48,'OCA\\Calendar\\BackgroundJob\\CleanUpOutdatedBookingsJob','null',1703061160,1703061160,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(49,'OCA\\Contacts\\Cron\\SocialUpdateRegistration','null',1703061162,1703061162,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(50,'OCA\\Mail\\BackgroundJob\\CleanupJob','null',0,1702570177,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(51,'OCA\\Mail\\BackgroundJob\\OutboxWorkerJob','null',0,1702570177,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(52,'OCA\\Mail\\BackgroundJob\\IMipMessageJob','null',0,1702570177,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(53,'OCA\\Mail\\BackgroundJob\\DraftsJob','null',0,1702570177,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(54,'OCA\\Mail\\BackgroundJob\\TrashRetentionJob','null',0,1702570177,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(55,'OCA\\Mail\\BackgroundJob\\WakeJob','null',0,1702570177,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(56,'OCA\\Richdocuments\\Backgroundjobs\\ObtainCapabilities','null',0,1702570199,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(57,'OCA\\Richdocuments\\Backgroundjobs\\Cleanup','null',0,1702570199,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(58,'OCA\\Talk\\BackgroundJob\\CheckHostedSignalingServer','null',0,1702570244,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(59,'OCA\\Talk\\BackgroundJob\\CheckMatterbridges','null',0,1702570244,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(60,'OCA\\Talk\\BackgroundJob\\CheckReferenceIdColumn','null',0,1702570244,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(61,'OCA\\Talk\\BackgroundJob\\ExpireChatMessages','null',0,1702570244,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(62,'OCA\\Talk\\BackgroundJob\\ExpireSignalingMessage','null',0,1702570244,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(63,'OCA\\Talk\\BackgroundJob\\Reminder','null',0,1702570244,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(64,'OCA\\Talk\\BackgroundJob\\RemoveEmptyRooms','null',0,1702570244,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(65,'OCA\\Talk\\BackgroundJob\\ResetAssignedSignalingServer','null',0,1702570244,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(66,'OCA\\FirstRunWizard\\Notification\\BackgroundJob','{\"uid\":\"ubuntu_admin\"}',0,1702570461,0,0,'77760759621cf5ee54cadd61cca6ef06',1);
/*!40000 ALTER TABLE `oc_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_known_users`
--

DROP TABLE IF EXISTS `oc_known_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_known_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `known_to` varchar(255) NOT NULL,
  `known_user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ku_known_to` (`known_to`),
  KEY `ku_known_user` (`known_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_known_users`
--

LOCK TABLES `oc_known_users` WRITE;
/*!40000 ALTER TABLE `oc_known_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_known_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_login_flow_v2`
--

DROP TABLE IF EXISTS `oc_login_flow_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_login_flow_v2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(20) unsigned NOT NULL,
  `started` smallint(5) unsigned NOT NULL DEFAULT 0,
  `poll_token` varchar(255) NOT NULL,
  `login_token` varchar(255) NOT NULL,
  `public_key` text NOT NULL,
  `private_key` text NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `app_password` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poll_token` (`poll_token`),
  UNIQUE KEY `login_token` (`login_token`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_login_flow_v2`
--

LOCK TABLES `oc_login_flow_v2` WRITE;
/*!40000 ALTER TABLE `oc_login_flow_v2` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_login_flow_v2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_accounts`
--

DROP TABLE IF EXISTS `oc_mail_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `inbound_host` varchar(64) NOT NULL DEFAULT '',
  `inbound_port` varchar(6) NOT NULL DEFAULT '',
  `inbound_ssl_mode` varchar(10) NOT NULL DEFAULT '',
  `inbound_user` varchar(64) NOT NULL DEFAULT '',
  `inbound_password` varchar(2048) DEFAULT NULL,
  `outbound_host` varchar(64) DEFAULT NULL,
  `outbound_port` varchar(6) DEFAULT NULL,
  `outbound_ssl_mode` varchar(10) DEFAULT NULL,
  `outbound_user` varchar(64) DEFAULT NULL,
  `outbound_password` varchar(2048) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `last_mailbox_sync` int(11) NOT NULL DEFAULT 0,
  `editor_mode` varchar(64) NOT NULL DEFAULT 'plaintext',
  `order` int(11) NOT NULL DEFAULT 1,
  `show_subscribed_only` tinyint(1) DEFAULT 0,
  `personal_namespace` varchar(255) DEFAULT NULL,
  `drafts_mailbox_id` int(11) DEFAULT NULL,
  `sent_mailbox_id` int(11) DEFAULT NULL,
  `trash_mailbox_id` int(11) DEFAULT NULL,
  `sieve_enabled` tinyint(1) DEFAULT 0,
  `sieve_host` varchar(64) DEFAULT NULL,
  `sieve_port` varchar(6) DEFAULT NULL,
  `sieve_ssl_mode` varchar(10) DEFAULT NULL,
  `sieve_user` varchar(64) DEFAULT NULL,
  `sieve_password` varchar(2048) DEFAULT NULL,
  `provisioning_id` int(11) DEFAULT NULL,
  `signature_above_quote` tinyint(1) DEFAULT 0,
  `signature_mode` smallint(6) NOT NULL DEFAULT 0,
  `auth_method` varchar(255) NOT NULL DEFAULT 'password',
  `archive_mailbox_id` int(11) DEFAULT NULL,
  `oauth_refresh_token` varchar(3000) DEFAULT NULL,
  `oauth_token_ttl` int(11) DEFAULT NULL,
  `oauth_access_token` longtext DEFAULT NULL,
  `smime_certificate_id` int(11) DEFAULT NULL,
  `junk_mailbox_id` int(11) DEFAULT NULL,
  `quota_percentage` int(11) DEFAULT NULL,
  `trash_retention_days` int(11) DEFAULT NULL,
  `snooze_mailbox_id` int(11) DEFAULT NULL,
  `search_body` tinyint(1) DEFAULT 0,
  `ooo_follows_system` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mail_userid_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_accounts`
--

LOCK TABLES `oc_mail_accounts` WRITE;
/*!40000 ALTER TABLE `oc_mail_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_aliases`
--

DROP TABLE IF EXISTS `oc_mail_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `signature` text DEFAULT NULL,
  `signature_mode` smallint(6) NOT NULL DEFAULT 0,
  `smime_certificate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_aliases`
--

LOCK TABLES `oc_mail_aliases` WRITE;
/*!40000 ALTER TABLE `oc_mail_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_attachments`
--

DROP TABLE IF EXISTS `oc_mail_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_message_id` int(11) DEFAULT NULL,
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `mime_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_attach_userid_index` (`user_id`),
  KEY `IDX_6C63D3AD31594979` (`local_message_id`),
  CONSTRAINT `attachment_local_message` FOREIGN KEY (`local_message_id`) REFERENCES `oc_mail_local_messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_attachments`
--

LOCK TABLES `oc_mail_attachments` WRITE;
/*!40000 ALTER TABLE `oc_mail_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_classifiers`
--

DROP TABLE IF EXISTS `oc_mail_classifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_classifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `estimator` varchar(255) NOT NULL,
  `app_version` varchar(31) NOT NULL,
  `training_set_size` int(11) NOT NULL,
  `validation_set_size` int(11) NOT NULL,
  `recall_important` decimal(10,5) NOT NULL,
  `precision_important` decimal(10,5) NOT NULL,
  `f1_score_important` decimal(10,5) NOT NULL,
  `duration` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_clssfr_accnt_id_type` (`account_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_classifiers`
--

LOCK TABLES `oc_mail_classifiers` WRITE;
/*!40000 ALTER TABLE `oc_mail_classifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_classifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_coll_addresses`
--

DROP TABLE IF EXISTS `oc_mail_coll_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_coll_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_coll_addr_userid_index` (`user_id`),
  KEY `mail_coll_addr_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_coll_addresses`
--

LOCK TABLES `oc_mail_coll_addresses` WRITE;
/*!40000 ALTER TABLE `oc_mail_coll_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_coll_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_local_messages`
--

DROP TABLE IF EXISTS `oc_mail_local_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_local_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL,
  `account_id` int(11) NOT NULL,
  `alias_id` int(11) DEFAULT NULL,
  `send_at` int(11) DEFAULT NULL,
  `subject` tinytext NOT NULL,
  `body` longtext NOT NULL,
  `html` tinyint(1) DEFAULT 0,
  `in_reply_to_message_id` text DEFAULT NULL,
  `failed` tinyint(1) DEFAULT 0,
  `editor_body` longtext DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `smime_sign` tinyint(1) DEFAULT 0,
  `smime_certificate_id` int(11) DEFAULT NULL,
  `smime_encrypt` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_local_messages`
--

LOCK TABLES `oc_mail_local_messages` WRITE;
/*!40000 ALTER TABLE `oc_mail_local_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_local_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_mailboxes`
--

DROP TABLE IF EXISTS `oc_mail_mailboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_mailboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `attributes` varchar(255) NOT NULL DEFAULT '[]',
  `delimiter` varchar(1) DEFAULT NULL,
  `messages` int(11) NOT NULL,
  `unseen` int(11) NOT NULL,
  `selectable` tinyint(1) DEFAULT 0,
  `special_use` varchar(255) NOT NULL DEFAULT '[]',
  `sync_new_lock` int(11) DEFAULT NULL,
  `sync_changed_lock` int(11) DEFAULT NULL,
  `sync_vanished_lock` int(11) DEFAULT NULL,
  `sync_new_token` varchar(255) DEFAULT NULL,
  `sync_changed_token` varchar(255) DEFAULT NULL,
  `sync_vanished_token` varchar(255) DEFAULT NULL,
  `sync_in_background` tinyint(1) DEFAULT 0,
  `my_acls` varchar(32) DEFAULT NULL,
  `shared` tinyint(1) DEFAULT 0,
  `name_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_mb_account_id_name_hash` (`account_id`,`name_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_mailboxes`
--

LOCK TABLES `oc_mail_mailboxes` WRITE;
/*!40000 ALTER TABLE `oc_mail_mailboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_mailboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_message_tags`
--

DROP TABLE IF EXISTS `oc_mail_message_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_message_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imap_message_id` varchar(1023) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_msg_imap_id_idx` (`imap_message_id`(128))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_message_tags`
--

LOCK TABLES `oc_mail_message_tags` WRITE;
/*!40000 ALTER TABLE `oc_mail_message_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_message_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_messages`
--

DROP TABLE IF EXISTS `oc_mail_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `message_id` varchar(1023) DEFAULT NULL,
  `mailbox_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `sent_at` int(11) NOT NULL,
  `flag_answered` tinyint(1) DEFAULT 0,
  `flag_deleted` tinyint(1) DEFAULT 0,
  `flag_draft` tinyint(1) DEFAULT 0,
  `flag_flagged` tinyint(1) DEFAULT 0,
  `flag_seen` tinyint(1) DEFAULT 0,
  `flag_forwarded` tinyint(1) DEFAULT 0,
  `flag_junk` tinyint(1) DEFAULT 0,
  `flag_notjunk` tinyint(1) DEFAULT 0,
  `flag_attachments` tinyint(1) DEFAULT 0,
  `flag_important` tinyint(1) DEFAULT 0,
  `structure_analyzed` tinyint(1) DEFAULT 0,
  `preview_text` varchar(255) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `references` longtext DEFAULT NULL,
  `in_reply_to` varchar(1023) DEFAULT NULL,
  `thread_root_id` varchar(1023) DEFAULT NULL,
  `flag_mdnsent` tinyint(1) DEFAULT 0,
  `imip_message` tinyint(1) DEFAULT 0,
  `imip_processed` tinyint(1) DEFAULT 0,
  `imip_error` tinyint(1) DEFAULT 0,
  `encrypted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mail_messages_id_flags` (`mailbox_id`,`flag_important`,`flag_deleted`,`flag_seen`),
  KEY `mail_messages_id_flags2` (`mailbox_id`,`flag_deleted`,`flag_flagged`),
  KEY `mail_messages_mailbox_id` (`mailbox_id`),
  KEY `mail_msg_thrd_root_snt_idx` (`mailbox_id`,`thread_root_id`(64),`sent_at`),
  KEY `mail_messages_mb_id_uid` (`mailbox_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_messages`
--

LOCK TABLES `oc_mail_messages` WRITE;
/*!40000 ALTER TABLE `oc_mail_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_messages_retention`
--

DROP TABLE IF EXISTS `oc_mail_messages_retention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_messages_retention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `known_since` int(11) NOT NULL,
  `mailbox_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_msg_retention_mbuid_idx` (`mailbox_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_messages_retention`
--

LOCK TABLES `oc_mail_messages_retention` WRITE;
/*!40000 ALTER TABLE `oc_mail_messages_retention` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_messages_retention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_messages_snoozed`
--

DROP TABLE IF EXISTS `oc_mail_messages_snoozed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_messages_snoozed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snoozed_until` int(11) NOT NULL,
  `src_mailbox_id` int(11) DEFAULT NULL,
  `mailbox_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_msg_snoozed_mbuid_idx` (`mailbox_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_messages_snoozed`
--

LOCK TABLES `oc_mail_messages_snoozed` WRITE;
/*!40000 ALTER TABLE `oc_mail_messages_snoozed` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_messages_snoozed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_provisionings`
--

DROP TABLE IF EXISTS `oc_mail_provisionings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_provisionings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provisioning_domain` varchar(63) NOT NULL DEFAULT '',
  `email_template` varchar(255) NOT NULL DEFAULT '',
  `imap_user` varchar(128) NOT NULL DEFAULT '',
  `imap_host` varchar(255) NOT NULL DEFAULT '',
  `imap_port` smallint(5) unsigned NOT NULL,
  `imap_ssl_mode` varchar(64) NOT NULL DEFAULT '',
  `smtp_user` varchar(128) NOT NULL DEFAULT '',
  `smtp_host` varchar(255) NOT NULL DEFAULT '',
  `smtp_port` smallint(5) unsigned NOT NULL,
  `smtp_ssl_mode` varchar(64) NOT NULL DEFAULT '',
  `sieve_enabled` tinyint(1) DEFAULT 0,
  `sieve_user` varchar(128) DEFAULT NULL,
  `sieve_host` varchar(128) DEFAULT NULL,
  `sieve_port` smallint(5) unsigned DEFAULT NULL,
  `sieve_ssl_mode` varchar(64) DEFAULT NULL,
  `ldap_aliases_provisioning` tinyint(1) DEFAULT 0,
  `ldap_aliases_attribute` varchar(255) DEFAULT '',
  `master_password_enabled` tinyint(1) DEFAULT 0,
  `master_password` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_provsng_dm_idx` (`provisioning_domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_provisionings`
--

LOCK TABLES `oc_mail_provisionings` WRITE;
/*!40000 ALTER TABLE `oc_mail_provisionings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_provisionings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_recipients`
--

DROP TABLE IF EXISTS `oc_mail_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_recipients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `local_message_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_recipient_msg_id_idx` (`message_id`),
  KEY `mail_recipient_email_idx` (`email`),
  KEY `IDX_715DB7E31594979` (`local_message_id`),
  CONSTRAINT `recipient_local_message` FOREIGN KEY (`local_message_id`) REFERENCES `oc_mail_local_messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_recipients`
--

LOCK TABLES `oc_mail_recipients` WRITE;
/*!40000 ALTER TABLE `oc_mail_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_smime_certificates`
--

DROP TABLE IF EXISTS `oc_mail_smime_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_smime_certificates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `certificate` longtext NOT NULL,
  `private_key` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_smime_certs_uid_idx` (`user_id`),
  KEY `mail_smime_certs_id_uid_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_smime_certificates`
--

LOCK TABLES `oc_mail_smime_certificates` WRITE;
/*!40000 ALTER TABLE `oc_mail_smime_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_smime_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_tags`
--

DROP TABLE IF EXISTS `oc_mail_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `imap_label` varchar(64) NOT NULL,
  `display_name` varchar(128) NOT NULL,
  `color` varchar(9) DEFAULT '#fff',
  `is_default_tag` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_msg_tags_usr_lbl_idx` (`user_id`,`imap_label`),
  KEY `mail_msg_tags_usr_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_tags`
--

LOCK TABLES `oc_mail_tags` WRITE;
/*!40000 ALTER TABLE `oc_mail_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_trusted_senders`
--

DROP TABLE IF EXISTS `oc_mail_trusted_senders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_trusted_senders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'individual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_trusted_sender_uniq` (`email`,`user_id`),
  KEY `mail_trusted_senders_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_trusted_senders`
--

LOCK TABLES `oc_mail_trusted_senders` WRITE;
/*!40000 ALTER TABLE `oc_mail_trusted_senders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_trusted_senders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_migrations`
--

DROP TABLE IF EXISTS `oc_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_migrations` (
  `app` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`app`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_migrations`
--

LOCK TABLES `oc_migrations` WRITE;
/*!40000 ALTER TABLE `oc_migrations` DISABLE KEYS */;
INSERT INTO `oc_migrations` VALUES ('activity','2006Date20170808154933'),('activity','2006Date20170808155040'),('activity','2006Date20170919095939'),('activity','2007Date20181107114613'),('activity','2008Date20181011095117'),('activity','2010Date20190416112817'),('activity','2011Date20201006132544'),('activity','2011Date20201006132545'),('activity','2011Date20201006132546'),('activity','2011Date20201006132547'),('activity','2011Date20201207091915'),('calendar','2040Date20210908101001'),('calendar','3000Date20211109132439'),('calendar','3010Date20220111090252'),('calendar','4050Date20230614163505'),('circles','0022Date20220526111723'),('circles','0022Date20220526113601'),('circles','0022Date20220703115023'),('circles','0023Date20211216113101'),('circles','0024Date20220203123901'),('circles','0024Date20220203123902'),('circles','0024Date20220317190331'),('circles','0028Date20230705222601'),('contactsinteraction','010000Date20200304152605'),('core','13000Date20170705121758'),('core','13000Date20170718121200'),('core','13000Date20170814074715'),('core','13000Date20170919121250'),('core','13000Date20170926101637'),('core','14000Date20180129121024'),('core','14000Date20180404140050'),('core','14000Date20180516101403'),('core','14000Date20180518120534'),('core','14000Date20180522074438'),('core','14000Date20180626223656'),('core','14000Date20180710092004'),('core','14000Date20180712153140'),('core','15000Date20180926101451'),('core','15000Date20181015062942'),('core','15000Date20181029084625'),('core','16000Date20190207141427'),('core','16000Date20190212081545'),('core','16000Date20190427105638'),('core','16000Date20190428150708'),('core','17000Date20190514105811'),('core','18000Date20190920085628'),('core','18000Date20191014105105'),('core','18000Date20191204114856'),('core','19000Date20200211083441'),('core','20000Date20201109081915'),('core','20000Date20201109081918'),('core','20000Date20201109081919'),('core','20000Date20201111081915'),('core','21000Date20201120141228'),('core','21000Date20201202095923'),('core','21000Date20210119195004'),('core','21000Date20210309185126'),('core','21000Date20210309185127'),('core','22000Date20210216080825'),('core','23000Date20210721100600'),('core','23000Date20210906132259'),('core','23000Date20210930122352'),('core','23000Date20211203110726'),('core','23000Date20211213203940'),('core','24000Date20211210141942'),('core','24000Date20211213081506'),('core','24000Date20211213081604'),('core','24000Date20211222112246'),('core','24000Date20211230140012'),('core','24000Date20220131153041'),('core','24000Date20220202150027'),('core','24000Date20220404230027'),('core','24000Date20220425072957'),('core','25000Date20220515204012'),('core','25000Date20220602190540'),('core','25000Date20220905140840'),('core','25000Date20221007010957'),('core','27000Date20220613163520'),('core','27000Date20230309104325'),('core','27000Date20230309104802'),('core','28000Date20230616104802'),('core','28000Date20230728104802'),('core','28000Date20230803221055'),('dav','1004Date20170825134824'),('dav','1004Date20170919104507'),('dav','1004Date20170924124212'),('dav','1004Date20170926103422'),('dav','1005Date20180413093149'),('dav','1005Date20180530124431'),('dav','1006Date20180619154313'),('dav','1006Date20180628111625'),('dav','1008Date20181030113700'),('dav','1008Date20181105104826'),('dav','1008Date20181105104833'),('dav','1008Date20181105110300'),('dav','1008Date20181105112049'),('dav','1008Date20181114084440'),('dav','1011Date20190725113607'),('dav','1011Date20190806104428'),('dav','1012Date20190808122342'),('dav','1016Date20201109085907'),('dav','1017Date20210216083742'),('dav','1018Date20210312100735'),('dav','1024Date20211221144219'),('dav','1027Date20230504122946'),('federatedfilesharing','1010Date20200630191755'),('federatedfilesharing','1011Date20201120125158'),('federation','1010Date20200630191302'),('files','11301Date20191205150729'),('files','12101Date20221011153334'),('files_reminders','10000Date20230725162149'),('files_sharing','11300Date20201120141438'),('files_sharing','21000Date20201223143245'),('files_sharing','22000Date20210216084241'),('files_sharing','24000Date20220208195521'),('files_sharing','24000Date20220404142216'),('files_trashbin','1010Date20200630192639'),('files_versions','1020Date20221114144058'),('mail','0100Date20180825194217'),('mail','0110Date20180825195812'),('mail','0110Date20180825201241'),('mail','0130Date20190408134101'),('mail','0156Date20190828140357'),('mail','0161Date20190902103559'),('mail','0161Date20190902103701'),('mail','0161Date20190902114635'),('mail','0180Date20190927124207'),('mail','0190Date20191118160843'),('mail','0210Date20191212144925'),('mail','1020Date20191002091034'),('mail','1020Date20191002091035'),('mail','1020Date20200206134751'),('mail','1030Date20200228105714'),('mail','1040Date20200422130220'),('mail','1040Date20200422142920'),('mail','1040Date20200506111214'),('mail','1040Date20200515080614'),('mail','1040Date20200529124657'),('mail','1050Date20200624101359'),('mail','1050Date20200831124954'),('mail','1050Date20200921141700'),('mail','1050Date20200923180030'),('mail','1060Date20201015084952'),('mail','1080Date20201119084820'),('mail','1080Date20210108093802'),('mail','1090Date20210127160127'),('mail','1090Date20210216154409'),('mail','1096Date20210407150016'),('mail','1100Date20210304143008'),('mail','1100Date20210317164707'),('mail','1100Date20210326103929'),('mail','1100Date20210409091311'),('mail','1100Date20210419080523'),('mail','1100Date20210419121734'),('mail','1100Date20210421113423'),('mail','1100Date20210512142306'),('mail','1101Date20210616141806'),('mail','1105Date20210922104324'),('mail','1110Date20210908114229'),('mail','1115Date20211216144446'),('mail','1120Date20220223094709'),('mail','1124Date20220531094751'),('mail','1124Date20220601084530'),('mail','1130Date20220412111833'),('mail','1130Date20220520062301'),('mail','1140Date20220628174152'),('mail','1140Date20220701103556'),('mail','1140Date20220808203258'),('mail','1140Date20221027171138'),('mail','1140Date20221113205737'),('mail','1140Date20221206162029'),('mail','2000Date20220908130842'),('mail','2010Date20221002201527'),('mail','2020Date20221103140538'),('mail','2100Date20221013143851'),('mail','2300Date20221205160349'),('mail','2300Date20221215143450'),('mail','2300Date20221216115727'),('mail','2300Date20230120085320'),('mail','2300Date20230127093733'),('mail','2300Date20230214104736'),('mail','2300Date20230221170502'),('mail','3000Date20230301152454'),('mail','3001Date20230307113544'),('mail','3300Date20230706140531'),('mail','3300Date20230801124717'),('mail','3400Date20230807300513'),('mail','3400Date20230814160451'),('mail','3400Date20230818160236'),('mail','3400Date20230819161945'),('mail','3400Date20230823153943'),('mail','3400Date20230907103114'),('mail','3500Date20231005091430'),('mail','3500Date20231009102414'),('mail','3500Date20231114180656'),('mail','3500Date20231115182612'),('mail','3500Date20231115184458'),('notes','3005Date20200528204430'),('notes','3005Date20200528204431'),('notifications','2004Date20190107135757'),('notifications','2010Date20210218082811'),('notifications','2010Date20210218082855'),('notifications','2011Date20210930134607'),('notifications','2011Date20220826074907'),('oauth2','010401Date20181207190718'),('oauth2','010402Date20190107124745'),('oauth2','011601Date20230522143227'),('photos','20000Date20220727125801'),('photos','20001Date20220830131446'),('photos','20003Date20221102170153'),('photos','20003Date20221103094628'),('privacy','100Date20190217131943'),('richdocuments','2060Date20200302131958'),('richdocuments','2060Date20200302132145'),('richdocuments','30704Date20200626072306'),('richdocuments','30709Date20201111104147'),('richdocuments','30717Date20210310164901'),('richdocuments','50200Date20211220212457'),('spreed','10000Date20200819121721'),('spreed','10000Date20201012144235'),('spreed','10000Date20201015134000'),('spreed','10000Date20201015143852'),('spreed','10000Date20201015150000'),('spreed','11000Date20200922161218'),('spreed','11000Date20201011082810'),('spreed','11000Date20201201102528'),('spreed','11000Date20201204110210'),('spreed','11000Date20201209142525'),('spreed','11000Date20201209142526'),('spreed','11001Date20210211111527'),('spreed','11001Date20210212105406'),('spreed','12000Date20210217134030'),('spreed','12000Date20210401124139'),('spreed','12000Date20210528100404'),('spreed','13000Date20210625232111'),('spreed','13000Date20210901164235'),('spreed','13000Date20210921142733'),('spreed','13000Date20211007192733'),('spreed','14000Date20211203132513'),('spreed','14000Date20220217115327'),('spreed','14000Date20220328153054'),('spreed','14000Date20220330141647'),('spreed','15000Date20220427183026'),('spreed','15000Date20220503121308'),('spreed','15000Date20220506005058'),('spreed','16000Date20221110151714'),('spreed','16000Date20221116163301'),('spreed','16000Date20221208013745'),('spreed','16000Date20230502145340'),('spreed','18000Date20230504205823'),('spreed','18000Date20230808120823'),('spreed','18000Date20230821112014'),('spreed','18000Date20230824123939'),('spreed','2000Date20170707093535'),('spreed','2000Date20171026140256'),('spreed','2000Date20171026140257'),('spreed','2001Date20170707115443'),('spreed','2001Date20170913104501'),('spreed','2001Date20170921145301'),('spreed','2001Date20170929092606'),('spreed','2001Date20171009132424'),('spreed','2001Date20171026134605'),('spreed','2001Date20171026141336'),('spreed','2001Date20171031102049'),('spreed','2001Date20180103144447'),('spreed','2001Date20180103150836'),('spreed','3002Date20180319104030'),('spreed','3003Date20180707222130'),('spreed','3003Date20180718112436'),('spreed','3003Date20180718133519'),('spreed','3003Date20180720162342'),('spreed','3003Date20180722152733'),('spreed','3003Date20180722152849'),('spreed','3003Date20180730080327'),('spreed','4099Date20181001123058'),('spreed','5099Date20190121102337'),('spreed','5099Date20190319134820'),('spreed','6099Date20190627172429'),('spreed','7000Date20190717141457'),('spreed','7000Date20190724121136'),('spreed','7000Date20190724121137'),('spreed','8000Date20200331144101'),('spreed','8000Date20200402124456'),('spreed','8000Date20200407073807'),('spreed','8000Date20200407115318'),('text','010000Date20190617184535'),('text','030001Date20200402075029'),('text','030201Date20201116110353'),('text','030201Date20201116123153'),('text','030501Date20220202101853'),('text','030701Date20230207131313'),('twofactor_backupcodes','1002Date20170607104347'),('twofactor_backupcodes','1002Date20170607113030'),('twofactor_backupcodes','1002Date20170919123342'),('twofactor_backupcodes','1002Date20170926101419'),('twofactor_backupcodes','1002Date20180821043638'),('user_status','0001Date20200602134824'),('user_status','0002Date20200902144824'),('user_status','1000Date20201111130204'),('user_status','2301Date20210809144824'),('workflowengine','2000Date20190808074233'),('workflowengine','2200Date20210805101925');
/*!40000 ALTER TABLE `oc_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mimetypes`
--

DROP TABLE IF EXISTS `oc_mimetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mimetypes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mimetype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mimetype_id_index` (`mimetype`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mimetypes`
--

LOCK TABLES `oc_mimetypes` WRITE;
/*!40000 ALTER TABLE `oc_mimetypes` DISABLE KEYS */;
INSERT INTO `oc_mimetypes` VALUES (3,'application'),(19,'application/gzip'),(18,'application/javascript'),(20,'application/json'),(17,'application/octet-stream'),(4,'application/pdf'),(13,'application/vnd.oasis.opendocument.graphics'),(14,'application/vnd.oasis.opendocument.presentation'),(15,'application/vnd.oasis.opendocument.spreadsheet'),(16,'application/vnd.oasis.opendocument.text'),(7,'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),(1,'httpd'),(2,'httpd/unix-directory'),(10,'image'),(22,'image/heic'),(11,'image/jpeg'),(12,'image/png'),(21,'image/svg+xml'),(23,'image/webp'),(5,'text'),(6,'text/markdown'),(8,'video'),(9,'video/mp4'),(24,'video/quicktime');
/*!40000 ALTER TABLE `oc_mimetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mounts`
--

DROP TABLE IF EXISTS `oc_mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage_id` bigint(20) NOT NULL,
  `root_id` bigint(20) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `mount_point` varchar(4000) NOT NULL,
  `mount_id` bigint(20) DEFAULT NULL,
  `mount_provider_class` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mounts_storage_index` (`storage_id`),
  KEY `mounts_root_index` (`root_id`),
  KEY `mounts_mount_id_index` (`mount_id`),
  KEY `mounts_user_root_path_index` (`user_id`,`root_id`,`mount_point`(128)),
  KEY `mounts_class_index` (`mount_provider_class`),
  KEY `mount_user_storage` (`storage_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mounts`
--

LOCK TABLES `oc_mounts` WRITE;
/*!40000 ALTER TABLE `oc_mounts` DISABLE KEYS */;
INSERT INTO `oc_mounts` VALUES (1,1,1,'ubuntu_admin','/ubuntu_admin/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider');
/*!40000 ALTER TABLE `oc_mounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notes_meta`
--

DROP TABLE IF EXISTS `oc_notes_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_notes_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `last_update` int(11) NOT NULL,
  `etag` varchar(32) NOT NULL,
  `content_etag` varchar(32) NOT NULL,
  `file_etag` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notes_meta_file_user_index` (`file_id`,`user_id`),
  KEY `notes_meta_file_id_index` (`file_id`),
  KEY `notes_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notes_meta`
--

LOCK TABLES `oc_notes_meta` WRITE;
/*!40000 ALTER TABLE `oc_notes_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_notes_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications`
--

DROP TABLE IF EXISTS `oc_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(32) NOT NULL,
  `user` varchar(64) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `object_type` varchar(64) NOT NULL,
  `object_id` varchar(64) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `subject_parameters` longtext DEFAULT NULL,
  `message` varchar(64) DEFAULT NULL,
  `message_parameters` longtext DEFAULT NULL,
  `link` varchar(4000) DEFAULT NULL,
  `icon` varchar(4000) DEFAULT NULL,
  `actions` longtext DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `oc_notifications_app` (`app`),
  KEY `oc_notifications_user` (`user`),
  KEY `oc_notifications_timestamp` (`timestamp`),
  KEY `oc_notifications_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications`
--

LOCK TABLES `oc_notifications` WRITE;
/*!40000 ALTER TABLE `oc_notifications` DISABLE KEYS */;
INSERT INTO `oc_notifications` VALUES (1,'firstrunwizard','ubuntu_admin',1702570244,'app','recognize','apphint-recognize','[]','','[]','','','[]'),(2,'firstrunwizard','ubuntu_admin',1702570244,'app','groupfolders','apphint-groupfolders','[]','','[]','','','[]'),(3,'firstrunwizard','ubuntu_admin',1702570244,'app','forms','apphint-forms','[]','','[]','','','[]'),(4,'firstrunwizard','ubuntu_admin',1702570244,'app','deck','apphint-deck','[]','','[]','','','[]'),(5,'firstrunwizard','ubuntu_admin',1702570244,'app','tasks','apphint-tasks','[]','','[]','','','[]'),(6,'updatenotification','ubuntu_admin',1703060794,'core','27.1.5.1','update_available','{\"version\":\"Nextcloud 27.1.5\"}','','[]','','','[]'),(7,'updatenotification','ubuntu_admin',1703060805,'notes','4.9.1','update_available','[]','','[]','','','[]'),(8,'updatenotification','ubuntu_admin',1703060805,'spreed','17.1.4','update_available','[]','','[]','','','[]');
/*!40000 ALTER TABLE `oc_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications_pushhash`
--

DROP TABLE IF EXISTS `oc_notifications_pushhash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_notifications_pushhash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `token` int(11) NOT NULL DEFAULT 0,
  `deviceidentifier` varchar(128) NOT NULL,
  `devicepublickey` varchar(512) NOT NULL,
  `devicepublickeyhash` varchar(128) NOT NULL,
  `pushtokenhash` varchar(128) NOT NULL,
  `proxyserver` varchar(256) NOT NULL,
  `apptype` varchar(32) NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oc_npushhash_uid` (`uid`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications_pushhash`
--

LOCK TABLES `oc_notifications_pushhash` WRITE;
/*!40000 ALTER TABLE `oc_notifications_pushhash` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_notifications_pushhash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications_settings`
--

DROP TABLE IF EXISTS `oc_notifications_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_notifications_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `batch_time` int(11) NOT NULL DEFAULT 0,
  `last_send_id` bigint(20) NOT NULL DEFAULT 0,
  `next_send_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notset_user` (`user_id`),
  KEY `notset_nextsend` (`next_send_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications_settings`
--

LOCK TABLES `oc_notifications_settings` WRITE;
/*!40000 ALTER TABLE `oc_notifications_settings` DISABLE KEYS */;
INSERT INTO `oc_notifications_settings` VALUES (1,'ubuntu_admin',0,0,0);
/*!40000 ALTER TABLE `oc_notifications_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_access_tokens`
--

DROP TABLE IF EXISTS `oc_oauth2_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oauth2_access_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `hashed_code` varchar(128) NOT NULL,
  `encrypted_token` varchar(786) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_access_hash_idx` (`hashed_code`),
  KEY `oauth2_access_client_id_idx` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_access_tokens`
--

LOCK TABLES `oc_oauth2_access_tokens` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_clients`
--

DROP TABLE IF EXISTS `oc_oauth2_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oauth2_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `client_identifier` varchar(64) NOT NULL,
  `secret` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_client_id_idx` (`client_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_clients`
--

LOCK TABLES `oc_oauth2_clients` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_open_local_editor`
--

DROP TABLE IF EXISTS `oc_open_local_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_open_local_editor` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `path_hash` varchar(64) NOT NULL,
  `expiration_time` bigint(20) unsigned NOT NULL,
  `token` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openlocal_user_path_token` (`user_id`,`path_hash`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_open_local_editor`
--

LOCK TABLES `oc_open_local_editor` WRITE;
/*!40000 ALTER TABLE `oc_open_local_editor` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_open_local_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_photos_albums`
--

DROP TABLE IF EXISTS `oc_photos_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_photos_albums` (
  `album_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `created` bigint(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `last_added_photo` bigint(20) NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `pa_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_photos_albums`
--

LOCK TABLES `oc_photos_albums` WRITE;
/*!40000 ALTER TABLE `oc_photos_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_photos_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_photos_albums_collabs`
--

DROP TABLE IF EXISTS `oc_photos_albums_collabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_photos_albums_collabs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NOT NULL,
  `collaborator_id` varchar(64) NOT NULL,
  `collaborator_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `album_collabs_uniq_collab` (`album_id`,`collaborator_id`,`collaborator_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_photos_albums_collabs`
--

LOCK TABLES `oc_photos_albums_collabs` WRITE;
/*!40000 ALTER TABLE `oc_photos_albums_collabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_photos_albums_collabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_photos_albums_files`
--

DROP TABLE IF EXISTS `oc_photos_albums_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_photos_albums_files` (
  `album_file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `added` bigint(20) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`album_file_id`),
  UNIQUE KEY `paf_album_file` (`album_id`,`file_id`),
  KEY `paf_folder` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_photos_albums_files`
--

LOCK TABLES `oc_photos_albums_files` WRITE;
/*!40000 ALTER TABLE `oc_photos_albums_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_photos_albums_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_preferences`
--

DROP TABLE IF EXISTS `oc_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_preferences` (
  `userid` varchar(64) NOT NULL DEFAULT '',
  `appid` varchar(32) NOT NULL DEFAULT '',
  `configkey` varchar(64) NOT NULL DEFAULT '',
  `configvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`userid`,`appid`,`configkey`),
  KEY `preferences_app_key` (`appid`,`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_preferences`
--

LOCK TABLES `oc_preferences` WRITE;
/*!40000 ALTER TABLE `oc_preferences` DISABLE KEYS */;
INSERT INTO `oc_preferences` VALUES ('ubuntu_admin','activity','configured','yes'),('ubuntu_admin','avatar','generated','true'),('ubuntu_admin','core','lang','fr'),('ubuntu_admin','core','templateDirectory','Modèles/'),('ubuntu_admin','core','timezone','Europe/Paris'),('ubuntu_admin','dashboard','firstRun','0'),('ubuntu_admin','firstrunwizard','apphint','18'),('ubuntu_admin','firstrunwizard','show','0'),('ubuntu_admin','login','lastLogin','1703060913'),('ubuntu_admin','login_token','lq22pMWfBSg56wnWJSC3Re9+JJ9cl3op','1703060914'),('ubuntu_admin','notifications','sound_notification','no'),('ubuntu_admin','notifications','sound_talk','no'),('ubuntu_admin','password_policy','failedLoginAttempts','0'),('ubuntu_admin','spreed','changelog','50');
/*!40000 ALTER TABLE `oc_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_privacy_admins`
--

DROP TABLE IF EXISTS `oc_privacy_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_privacy_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayname` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_privacy_admins`
--

LOCK TABLES `oc_privacy_admins` WRITE;
/*!40000 ALTER TABLE `oc_privacy_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_privacy_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_profile_config`
--

DROP TABLE IF EXISTS `oc_profile_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_profile_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `config` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_config_user_id_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_profile_config`
--

LOCK TABLES `oc_profile_config` WRITE;
/*!40000 ALTER TABLE `oc_profile_config` DISABLE KEYS */;
INSERT INTO `oc_profile_config` VALUES (1,'ubuntu_admin','{\"talk\":{\"visibility\":\"show_users_only\"},\"address\":{\"visibility\":\"show_users_only\"},\"avatar\":{\"visibility\":\"show\"},\"biography\":{\"visibility\":\"show\"},\"displayname\":{\"visibility\":\"show\"},\"headline\":{\"visibility\":\"show\"},\"organisation\":{\"visibility\":\"show\"},\"role\":{\"visibility\":\"show\"},\"email\":{\"visibility\":\"show_users_only\"},\"phone\":{\"visibility\":\"show_users_only\"},\"twitter\":{\"visibility\":\"show\"},\"website\":{\"visibility\":\"show\"}}');
/*!40000 ALTER TABLE `oc_profile_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_properties`
--

DROP TABLE IF EXISTS `oc_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) NOT NULL DEFAULT '',
  `propertypath` varchar(255) NOT NULL DEFAULT '',
  `propertyname` varchar(255) NOT NULL DEFAULT '',
  `propertyvalue` longtext NOT NULL,
  `valuetype` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `property_index` (`userid`),
  KEY `properties_path_index` (`userid`,`propertypath`),
  KEY `properties_pathonly_index` (`propertypath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_properties`
--

LOCK TABLES `oc_properties` WRITE;
/*!40000 ALTER TABLE `oc_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ratelimit_entries`
--

DROP TABLE IF EXISTS `oc_ratelimit_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ratelimit_entries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hash` varchar(128) NOT NULL,
  `delete_after` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ratelimit_hash` (`hash`),
  KEY `ratelimit_delete_after` (`delete_after`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ratelimit_entries`
--

LOCK TABLES `oc_ratelimit_entries` WRITE;
/*!40000 ALTER TABLE `oc_ratelimit_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ratelimit_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_reactions`
--

DROP TABLE IF EXISTS `oc_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_reactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL,
  `message_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(64) NOT NULL DEFAULT '',
  `actor_id` varchar(64) NOT NULL DEFAULT '',
  `reaction` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_reaction_unique` (`parent_id`,`actor_type`,`actor_id`,`reaction`),
  KEY `comment_reaction` (`reaction`),
  KEY `comment_reaction_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_reactions`
--

LOCK TABLES `oc_reactions` WRITE;
/*!40000 ALTER TABLE `oc_reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recent_contact`
--

DROP TABLE IF EXISTS `oc_recent_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recent_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_uid` varchar(64) NOT NULL,
  `uid` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `federated_cloud_id` varchar(255) DEFAULT NULL,
  `card` longblob NOT NULL,
  `last_contact` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recent_contact_actor_uid` (`actor_uid`),
  KEY `recent_contact_id_uid` (`id`,`actor_uid`),
  KEY `recent_contact_uid` (`uid`),
  KEY `recent_contact_email` (`email`),
  KEY `recent_contact_fed_id` (`federated_cloud_id`),
  KEY `recent_contact_last_contact` (`last_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recent_contact`
--

LOCK TABLES `oc_recent_contact` WRITE;
/*!40000 ALTER TABLE `oc_recent_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recent_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_richdocuments_assets`
--

DROP TABLE IF EXISTS `oc_richdocuments_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_richdocuments_assets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) DEFAULT NULL,
  `fileid` bigint(20) NOT NULL,
  `token` varchar(64) DEFAULT NULL,
  `timestamp` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rd_assets_token_idx` (`token`),
  UNIQUE KEY `rd_assets_timestamp_idx` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_richdocuments_assets`
--

LOCK TABLES `oc_richdocuments_assets` WRITE;
/*!40000 ALTER TABLE `oc_richdocuments_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_richdocuments_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_richdocuments_direct`
--

DROP TABLE IF EXISTS `oc_richdocuments_direct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_richdocuments_direct` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(64) DEFAULT NULL,
  `uid` varchar(64) DEFAULT NULL,
  `fileid` bigint(20) NOT NULL,
  `timestamp` bigint(20) unsigned DEFAULT 0,
  `template_destination` bigint(20) DEFAULT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `share` varchar(64) DEFAULT NULL,
  `initiator_host` varchar(255) DEFAULT NULL,
  `initiator_token` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rd_direct_token_idx` (`token`),
  KEY `rd_direct_timestamp_idx` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_richdocuments_direct`
--

LOCK TABLES `oc_richdocuments_direct` WRITE;
/*!40000 ALTER TABLE `oc_richdocuments_direct` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_richdocuments_direct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_richdocuments_template`
--

DROP TABLE IF EXISTS `oc_richdocuments_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_richdocuments_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) DEFAULT NULL,
  `fileid` bigint(20) NOT NULL,
  `templateid` bigint(20) NOT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rd_t_user_file` (`userid`,`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_richdocuments_template`
--

LOCK TABLES `oc_richdocuments_template` WRITE;
/*!40000 ALTER TABLE `oc_richdocuments_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_richdocuments_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_richdocuments_wopi`
--

DROP TABLE IF EXISTS `oc_richdocuments_wopi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_richdocuments_wopi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` varchar(64) DEFAULT NULL,
  `editor_uid` varchar(64) DEFAULT NULL,
  `guest_displayname` varchar(64) DEFAULT NULL,
  `fileid` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT 0,
  `canwrite` tinyint(1) DEFAULT 0,
  `server_host` varchar(255) NOT NULL DEFAULT 'localhost',
  `token` varchar(32) DEFAULT '',
  `expiry` bigint(20) unsigned DEFAULT NULL,
  `template_destination` bigint(20) DEFAULT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `hide_download` tinyint(1) DEFAULT 0,
  `direct` tinyint(1) DEFAULT 0,
  `remote_server` varchar(255) DEFAULT '',
  `remote_server_token` varchar(32) DEFAULT '',
  `share` varchar(64) DEFAULT NULL,
  `token_type` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rd_wopi_token_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_richdocuments_wopi`
--

LOCK TABLES `oc_richdocuments_wopi` WRITE;
/*!40000 ALTER TABLE `oc_richdocuments_wopi` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_richdocuments_wopi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_schedulingobjects`
--

DROP TABLE IF EXISTS `oc_schedulingobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_schedulingobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `calendardata` longblob DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedulobj_principuri_index` (`principaluri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_schedulingobjects`
--

LOCK TABLES `oc_schedulingobjects` WRITE;
/*!40000 ALTER TABLE `oc_schedulingobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_schedulingobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share`
--

DROP TABLE IF EXISTS `oc_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_share` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `share_type` smallint(6) NOT NULL DEFAULT 0,
  `share_with` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uid_owner` varchar(64) NOT NULL DEFAULT '',
  `uid_initiator` varchar(64) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `item_type` varchar(64) NOT NULL DEFAULT '',
  `item_source` varchar(255) DEFAULT NULL,
  `item_target` varchar(255) DEFAULT NULL,
  `file_source` bigint(20) DEFAULT NULL,
  `file_target` varchar(512) DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT 0,
  `stime` bigint(20) NOT NULL DEFAULT 0,
  `accepted` smallint(6) NOT NULL DEFAULT 0,
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT 0,
  `share_name` varchar(64) DEFAULT NULL,
  `password_by_talk` tinyint(1) DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `hide_download` smallint(6) DEFAULT 0,
  `label` varchar(255) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `password_expiration_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_share_type_index` (`item_type`,`share_type`),
  KEY `file_source_index` (`file_source`),
  KEY `token_index` (`token`),
  KEY `share_with_index` (`share_with`),
  KEY `parent_index` (`parent`),
  KEY `owner_index` (`uid_owner`),
  KEY `initiator_index` (`uid_initiator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share`
--

LOCK TABLES `oc_share` WRITE;
/*!40000 ALTER TABLE `oc_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share_external`
--

DROP TABLE IF EXISTS `oc_share_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_share_external` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) DEFAULT -1,
  `share_type` int(11) DEFAULT NULL,
  `remote` varchar(512) NOT NULL,
  `remote_id` varchar(255) DEFAULT '',
  `share_token` varchar(64) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `name` varchar(4000) NOT NULL,
  `owner` varchar(64) NOT NULL,
  `user` varchar(64) NOT NULL,
  `mountpoint` varchar(4000) NOT NULL,
  `mountpoint_hash` varchar(32) NOT NULL,
  `accepted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share_external`
--

LOCK TABLES `oc_share_external` WRITE;
/*!40000 ALTER TABLE `oc_share_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_storages`
--

DROP TABLE IF EXISTS `oc_storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_storages` (
  `numeric_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(64) DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `last_checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`numeric_id`),
  UNIQUE KEY `storages_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_storages`
--

LOCK TABLES `oc_storages` WRITE;
/*!40000 ALTER TABLE `oc_storages` DISABLE KEYS */;
INSERT INTO `oc_storages` VALUES (1,'home::ubuntu_admin',1,NULL),(2,'local::/var/www/nextcloud/data/',1,NULL);
/*!40000 ALTER TABLE `oc_storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_storages_credentials`
--

DROP TABLE IF EXISTS `oc_storages_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_storages_credentials` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) DEFAULT NULL,
  `identifier` varchar(64) NOT NULL,
  `credentials` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stocred_ui` (`user`,`identifier`),
  KEY `stocred_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_storages_credentials`
--

LOCK TABLES `oc_storages_credentials` WRITE;
/*!40000 ALTER TABLE `oc_storages_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_storages_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag`
--

DROP TABLE IF EXISTS `oc_systemtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_systemtag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `visibility` smallint(6) NOT NULL DEFAULT 1,
  `editable` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_ident` (`name`,`visibility`,`editable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag`
--

LOCK TABLES `oc_systemtag` WRITE;
/*!40000 ALTER TABLE `oc_systemtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_group`
--

DROP TABLE IF EXISTS `oc_systemtag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_systemtag_group` (
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `gid` varchar(255) NOT NULL,
  PRIMARY KEY (`gid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_group`
--

LOCK TABLES `oc_systemtag_group` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_object_mapping`
--

DROP TABLE IF EXISTS `oc_systemtag_object_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_systemtag_object_mapping` (
  `objectid` varchar(64) NOT NULL DEFAULT '',
  `objecttype` varchar(64) NOT NULL DEFAULT '',
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`objecttype`,`objectid`,`systemtagid`),
  KEY `systag_by_tagid` (`systemtagid`,`objecttype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_object_mapping`
--

LOCK TABLES `oc_systemtag_object_mapping` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_attachments`
--

DROP TABLE IF EXISTS `oc_talk_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `message_id` bigint(20) unsigned NOT NULL,
  `message_time` bigint(20) unsigned NOT NULL,
  `object_type` varchar(64) NOT NULL,
  `actor_type` varchar(64) NOT NULL,
  `actor_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `objects_in_room` (`room_id`,`object_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_attachments`
--

LOCK TABLES `oc_talk_attachments` WRITE;
/*!40000 ALTER TABLE `oc_talk_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_attendees`
--

DROP TABLE IF EXISTS `oc_talk_attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_attendees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(32) NOT NULL,
  `actor_id` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT '',
  `pin` varchar(32) DEFAULT NULL,
  `participant_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `favorite` tinyint(1) DEFAULT 0,
  `notification_level` int(11) DEFAULT 0,
  `last_joined_call` int(10) unsigned NOT NULL DEFAULT 0,
  `last_read_message` bigint(20) DEFAULT 0,
  `last_mention_message` bigint(20) DEFAULT 0,
  `read_privacy` smallint(5) unsigned DEFAULT 0,
  `access_token` varchar(64) DEFAULT NULL,
  `remote_id` varchar(255) DEFAULT NULL,
  `last_mention_direct` bigint(20) NOT NULL DEFAULT 0,
  `permissions` int(11) NOT NULL DEFAULT 0,
  `notification_calls` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ta_ident` (`room_id`,`actor_type`,`actor_id`),
  KEY `ta_roompin` (`room_id`,`pin`),
  KEY `ta_room` (`room_id`),
  KEY `ta_actor` (`actor_type`,`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_attendees`
--

LOCK TABLES `oc_talk_attendees` WRITE;
/*!40000 ALTER TABLE `oc_talk_attendees` DISABLE KEYS */;
INSERT INTO `oc_talk_attendees` VALUES (1,1,'users','ubuntu_admin','ubuntu_admin',NULL,3,0,0,0,1,0,0,NULL,NULL,0,0,1);
/*!40000 ALTER TABLE `oc_talk_attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_bots_conversation`
--

DROP TABLE IF EXISTS `oc_talk_bots_conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_bots_conversation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bot_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `token` varchar(64) DEFAULT NULL,
  `state` smallint(5) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `talk_bots_convo_uniq` (`bot_id`,`token`),
  KEY `talk_bots_convo_token` (`token`,`state`),
  KEY `talk_bots_convo_id` (`bot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_bots_conversation`
--

LOCK TABLES `oc_talk_bots_conversation` WRITE;
/*!40000 ALTER TABLE `oc_talk_bots_conversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_bots_conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_bots_server`
--

DROP TABLE IF EXISTS `oc_talk_bots_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_bots_server` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(4000) NOT NULL,
  `url_hash` varchar(64) NOT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `secret` varchar(128) NOT NULL,
  `error_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  `last_error_date` datetime DEFAULT NULL,
  `last_error_message` varchar(4000) DEFAULT NULL,
  `state` smallint(5) unsigned DEFAULT 0,
  `features` int(10) unsigned NOT NULL DEFAULT 3,
  PRIMARY KEY (`id`),
  UNIQUE KEY `talk_bots_server_urlhash` (`url_hash`),
  UNIQUE KEY `talk_bots_server_secret` (`secret`),
  KEY `talk_bots_server_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_bots_server`
--

LOCK TABLES `oc_talk_bots_server` WRITE;
/*!40000 ALTER TABLE `oc_talk_bots_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_bots_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_bridges`
--

DROP TABLE IF EXISTS `oc_talk_bridges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_bridges` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `json_values` longtext NOT NULL,
  `enabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbr_room_id` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_bridges`
--

LOCK TABLES `oc_talk_bridges` WRITE;
/*!40000 ALTER TABLE `oc_talk_bridges` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_bridges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_commands`
--

DROP TABLE IF EXISTS `oc_talk_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(64) DEFAULT '',
  `name` varchar(64) NOT NULL,
  `command` varchar(64) NOT NULL,
  `script` longtext NOT NULL,
  `response` int(11) NOT NULL DEFAULT 1,
  `enabled` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_commands`
--

LOCK TABLES `oc_talk_commands` WRITE;
/*!40000 ALTER TABLE `oc_talk_commands` DISABLE KEYS */;
INSERT INTO `oc_talk_commands` VALUES (1,'','talk','help','help',1,3);
/*!40000 ALTER TABLE `oc_talk_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_internalsignaling`
--

DROP TABLE IF EXISTS `oc_talk_internalsignaling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_internalsignaling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tis_recipient_time` (`recipient`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_internalsignaling`
--

LOCK TABLES `oc_talk_internalsignaling` WRITE;
/*!40000 ALTER TABLE `oc_talk_internalsignaling` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_internalsignaling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_invitations`
--

DROP TABLE IF EXISTS `oc_talk_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_invitations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `access_token` varchar(64) NOT NULL,
  `remote_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CA0C61A054177093` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_invitations`
--

LOCK TABLES `oc_talk_invitations` WRITE;
/*!40000 ALTER TABLE `oc_talk_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_poll_votes`
--

DROP TABLE IF EXISTS `oc_talk_poll_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_poll_votes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `actor_type` varchar(64) NOT NULL,
  `actor_id` varchar(64) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `talk_poll_vote` (`poll_id`,`actor_type`,`actor_id`),
  KEY `talk_vote_room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_poll_votes`
--

LOCK TABLES `oc_talk_poll_votes` WRITE;
/*!40000 ALTER TABLE `oc_talk_poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_poll_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_polls`
--

DROP TABLE IF EXISTS `oc_talk_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_polls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) NOT NULL,
  `question` longtext DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `votes` longtext DEFAULT NULL,
  `num_voters` bigint(20) DEFAULT 0,
  `actor_type` varchar(64) NOT NULL,
  `actor_id` varchar(64) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT 0,
  `result_mode` smallint(6) DEFAULT 0,
  `max_votes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `talk_poll_room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_polls`
--

LOCK TABLES `oc_talk_polls` WRITE;
/*!40000 ALTER TABLE `oc_talk_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_reminders`
--

DROP TABLE IF EXISTS `oc_talk_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_reminders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `message_id` bigint(20) unsigned NOT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `talk_reminder_user_msg` (`user_id`,`message_id`),
  KEY `talk_reminder_exectime` (`date_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_reminders`
--

LOCK TABLES `oc_talk_reminders` WRITE;
/*!40000 ALTER TABLE `oc_talk_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_rooms`
--

DROP TABLE IF EXISTS `oc_talk_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `token` varchar(32) DEFAULT '',
  `type` int(11) NOT NULL,
  `password` varchar(255) DEFAULT '',
  `active_since` datetime DEFAULT NULL,
  `active_guests` int(10) unsigned NOT NULL DEFAULT 0,
  `last_activity` datetime DEFAULT NULL,
  `last_message` bigint(20) DEFAULT 0,
  `object_type` varchar(64) DEFAULT '',
  `object_id` varchar(64) DEFAULT '',
  `read_only` int(11) NOT NULL DEFAULT 0,
  `lobby_state` int(11) NOT NULL DEFAULT 0,
  `lobby_timer` datetime DEFAULT NULL,
  `assigned_hpb` int(11) DEFAULT NULL,
  `sip_enabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `listable` smallint(5) unsigned DEFAULT 0,
  `call_flag` int(11) NOT NULL DEFAULT 0,
  `default_permissions` int(11) NOT NULL DEFAULT 0,
  `call_permissions` int(11) NOT NULL DEFAULT 0,
  `remote_server` varchar(512) DEFAULT NULL,
  `remote_token` varchar(32) DEFAULT NULL,
  `message_expiration` int(11) NOT NULL DEFAULT 0,
  `breakout_room_mode` int(11) NOT NULL DEFAULT 0,
  `breakout_room_status` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(24) DEFAULT '',
  `call_recording` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tr_room_token` (`token`),
  KEY `last_active` (`last_activity`),
  KEY `tr_listable` (`listable`),
  KEY `remote_id` (`remote_server`,`remote_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_rooms`
--

LOCK TABLES `oc_talk_rooms` WRITE;
/*!40000 ALTER TABLE `oc_talk_rooms` DISABLE KEYS */;
INSERT INTO `oc_talk_rooms` VALUES (1,'ubuntu_admin','hbf39ux3',4,'',NULL,0,'2023-12-14 16:10:46',51,'','',1,0,NULL,NULL,0,NULL,0,0,0,0,NULL,NULL,0,0,0,'',0);
/*!40000 ALTER TABLE `oc_talk_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_sessions`
--

DROP TABLE IF EXISTS `oc_talk_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_talk_sessions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attendee_id` bigint(20) unsigned NOT NULL,
  `session_id` varchar(512) NOT NULL,
  `in_call` int(11) NOT NULL DEFAULT 0,
  `last_ping` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ts_session` (`session_id`),
  KEY `ts_in_call` (`in_call`),
  KEY `ts_last_ping` (`last_ping`),
  KEY `ts_attendee_id` (`attendee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_sessions`
--

LOCK TABLES `oc_talk_sessions` WRITE;
/*!40000 ALTER TABLE `oc_talk_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_documents`
--

DROP TABLE IF EXISTS `oc_text_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_text_documents` (
  `id` bigint(20) unsigned NOT NULL,
  `current_version` bigint(20) unsigned DEFAULT 0,
  `last_saved_version` bigint(20) unsigned DEFAULT 0,
  `last_saved_version_time` bigint(20) unsigned NOT NULL,
  `last_saved_version_etag` varchar(64) DEFAULT '',
  `base_version_etag` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_documents`
--

LOCK TABLES `oc_text_documents` WRITE;
/*!40000 ALTER TABLE `oc_text_documents` DISABLE KEYS */;
INSERT INTO `oc_text_documents` VALUES (12,0,0,1702570054,'9adfb63d8e0601a70909094341801a01','9adfb63d8e0601a70909094341801a01');
/*!40000 ALTER TABLE `oc_text_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_sessions`
--

DROP TABLE IF EXISTS `oc_text_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_text_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) DEFAULT NULL,
  `guest_name` varchar(64) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `token` varchar(64) NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `last_contact` bigint(20) unsigned NOT NULL,
  `last_awareness_message` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rd_session_token_idx` (`token`),
  KEY `ts_lastcontact` (`last_contact`),
  KEY `ts_docid_lastcontact` (`document_id`,`last_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_sessions`
--

LOCK TABLES `oc_text_sessions` WRITE;
/*!40000 ALTER TABLE `oc_text_sessions` DISABLE KEYS */;
INSERT INTO `oc_text_sessions` VALUES (1,'ubuntu_admin',NULL,'#d09e6d','BPxQfmIMaZ+5Xbvg8vz152/Jexm8+bo4737Ho50kRKPLJD3ZTAkBVp3p86oY+07F',12,1703060788,'AWgB99DT4QcBYHsidXNlciI6eyJuYW1lIjoidWJ1bnR1X2FkbWluIiwiY2xpZW50SWQiOjIwODM4NDIxNjcsImNvbG9yIjoiI2QwOWU2ZCIsImxhc3RVcGRhdGUiOjE3MDMwNjA3ODd9fQ=='),(2,'ubuntu_admin',NULL,'#d09e6d','y+yi9B3F48PkfccFWMskliIXmFcAo5mv2Kg7ilwbd9Xz/+9q2K0esE8myWgTLwLv',12,1703060996,'AWgBrbmg3w4BYHsidXNlciI6eyJuYW1lIjoidWJ1bnR1X2FkbWluIiwiY2xpZW50SWQiOjM5NTc4NTc0NTMsImNvbG9yIjoiI2QwOWU2ZCIsImxhc3RVcGRhdGUiOjE3MDMwNjA5OTV9fQ==');
/*!40000 ALTER TABLE `oc_text_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_steps`
--

DROP TABLE IF EXISTS `oc_text_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_text_steps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` bigint(20) unsigned NOT NULL,
  `session_id` bigint(20) unsigned NOT NULL,
  `data` longtext NOT NULL,
  `version` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `rd_steps_did_idx` (`document_id`),
  KEY `rd_steps_version_idx` (`version`),
  KEY `textstep_session` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_steps`
--

LOCK TABLES `oc_text_steps` WRITE;
/*!40000 ALTER TABLE `oc_text_steps` DISABLE KEYS */;
INSERT INTO `oc_text_steps` VALUES (1,12,1,'[\"AALcAgEK99DT4QcABwEHZGVmYXVsdAMHaGVhZGluZwcA99DT4QcABgQA99DT4QcBJldlbGNvbWUgdG8gTmV4dGNsb3VkISDwn5OxIOKYge+4jyDwn5K7KAD30NPhBwAFbGV2ZWwBfQEoAPfQ0+EHAAJpZAF\\/KAD30NPhBwAEdXVpZAF\\/h\\/fQ0+EHAAMJcGFyYWdyYXBoBwD30NPhByMGBAD30NPhBySkAUhlcmUgeW91IGNhbiBhZGQgYSBkZXNjcmlwdGlvbiBvciBhbnkgb3RoZXIgaW5mbyByZWxldmFudCBmb3IgdGhlIGZvbGRlci4gSXQgd2lsbCBzaG93IGFzIGEgIlJlYWRtZS5tZCIgYW5kIGluIHRoZSB3ZWIgaW50ZXJmYWNlIGFsc28gZW1iZWRkZWQgbmljZWx5IHVwIGF0IHRoZSB0b3Auh\\/fQ0+EHIwMJcGFyYWdyYXBoAA==\",\"AAJgAQL30NPhB8oBqPfQ0+EHIQF3Fmgtd2VsY29tZS10by1uZXh0Y2xvdWSo99DT4QciAXckYmI4NTZiYjUtMTUwMy00NDFkLTgzNDYtNDdkZGRlNjg1NzFmAffQ0+EHASEC\"]',2);
/*!40000 ALTER TABLE `oc_text_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_textprocessing_tasks`
--

DROP TABLE IF EXISTS `oc_textprocessing_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_textprocessing_tasks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `input` longtext NOT NULL,
  `output` longtext DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `user_id` varchar(64) DEFAULT NULL,
  `app_id` varchar(32) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `last_updated` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `tp_tasks_updated` (`last_updated`),
  KEY `tp_tasks_status_type_nonunique` (`status`,`type`),
  KEY `tp_tasks_uid_appid_ident` (`user_id`,`app_id`,`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_textprocessing_tasks`
--

LOCK TABLES `oc_textprocessing_tasks` WRITE;
/*!40000 ALTER TABLE `oc_textprocessing_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_textprocessing_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_trusted_servers`
--

DROP TABLE IF EXISTS `oc_trusted_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_trusted_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) NOT NULL,
  `url_hash` varchar(255) NOT NULL DEFAULT '',
  `token` varchar(128) DEFAULT NULL,
  `shared_secret` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `sync_token` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_hash` (`url_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_trusted_servers`
--

LOCK TABLES `oc_trusted_servers` WRITE;
/*!40000 ALTER TABLE `oc_trusted_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_trusted_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_backupcodes`
--

DROP TABLE IF EXISTS `oc_twofactor_backupcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_twofactor_backupcodes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `code` varchar(128) NOT NULL,
  `used` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `twofactor_backupcodes_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_backupcodes`
--

LOCK TABLES `oc_twofactor_backupcodes` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_providers`
--

DROP TABLE IF EXISTS `oc_twofactor_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_twofactor_providers` (
  `provider_id` varchar(32) NOT NULL,
  `uid` varchar(64) NOT NULL,
  `enabled` smallint(6) NOT NULL,
  PRIMARY KEY (`provider_id`,`uid`),
  KEY `twofactor_providers_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_providers`
--

LOCK TABLES `oc_twofactor_providers` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_providers` DISABLE KEYS */;
INSERT INTO `oc_twofactor_providers` VALUES ('backup_codes','ubuntu_admin',0);
/*!40000 ALTER TABLE `oc_twofactor_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_status`
--

DROP TABLE IF EXISTS `oc_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_timestamp` int(10) unsigned NOT NULL,
  `is_user_defined` tinyint(1) DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `custom_icon` varchar(255) DEFAULT NULL,
  `custom_message` longtext DEFAULT NULL,
  `clear_at` int(10) unsigned DEFAULT NULL,
  `is_backup` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_status_uid_ix` (`user_id`),
  KEY `user_status_clr_ix` (`clear_at`),
  KEY `user_status_tstmp_ix` (`status_timestamp`),
  KEY `user_status_iud_ix` (`is_user_defined`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_status`
--

LOCK TABLES `oc_user_status` WRITE;
/*!40000 ALTER TABLE `oc_user_status` DISABLE KEYS */;
INSERT INTO `oc_user_status` VALUES (1,'ubuntu_admin','online',1703061158,0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_transfer_owner`
--

DROP TABLE IF EXISTS `oc_user_transfer_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_transfer_owner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source_user` varchar(64) NOT NULL,
  `target_user` varchar(64) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `node_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_transfer_owner`
--

LOCK TABLES `oc_user_transfer_owner` WRITE;
/*!40000 ALTER TABLE `oc_user_transfer_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_user_transfer_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_users`
--

DROP TABLE IF EXISTS `oc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_users` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `displayname` varchar(64) DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `uid_lower` varchar(64) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `user_uid_lower` (`uid_lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_users`
--

LOCK TABLES `oc_users` WRITE;
/*!40000 ALTER TABLE `oc_users` DISABLE KEYS */;
INSERT INTO `oc_users` VALUES ('ubuntu_admin',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$cTJ2aDFmZUZRa0UySGdsTw$WXRT5J1CHxycqPF+dvejngzu8XS1yo9d+5mKGlYyobo','ubuntu_admin');
/*!40000 ALTER TABLE `oc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory`
--

DROP TABLE IF EXISTS `oc_vcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_vcategory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `category` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`),
  KEY `type_index` (`type`),
  KEY `category_index` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory`
--

LOCK TABLES `oc_vcategory` WRITE;
/*!40000 ALTER TABLE `oc_vcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory_to_object`
--

DROP TABLE IF EXISTS `oc_vcategory_to_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_vcategory_to_object` (
  `objid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `categoryid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`,`objid`,`type`),
  KEY `vcategory_objectd_index` (`objid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory_to_object`
--

LOCK TABLES `oc_vcategory_to_object` WRITE;
/*!40000 ALTER TABLE `oc_vcategory_to_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory_to_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_webauthn`
--

DROP TABLE IF EXISTS `oc_webauthn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_webauthn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `public_key_credential_id` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webauthn_uid` (`uid`),
  KEY `webauthn_publicKeyCredentialId` (`public_key_credential_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_webauthn`
--

LOCK TABLES `oc_webauthn` WRITE;
/*!40000 ALTER TABLE `oc_webauthn` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_webauthn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_whats_new`
--

DROP TABLE IF EXISTS `oc_whats_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_whats_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(64) NOT NULL DEFAULT '11',
  `etag` varchar(64) NOT NULL DEFAULT '',
  `last_check` int(10) unsigned NOT NULL DEFAULT 0,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `version` (`version`),
  KEY `version_etag_idx` (`version`,`etag`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_whats_new`
--

LOCK TABLES `oc_whats_new` WRITE;
/*!40000 ALTER TABLE `oc_whats_new` DISABLE KEYS */;
INSERT INTO `oc_whats_new` VALUES (1,'27.1.5','d41d8cd98f00b204e9800998ecf8427e',1703061027,'[]');
/*!40000 ALTER TABLE `oc_whats_new` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20  8:34:53
