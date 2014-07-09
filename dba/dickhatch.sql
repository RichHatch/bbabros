-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 184.168.228.6    Database: dickhatch
-- ------------------------------------------------------
-- Server version	5.0.96-log

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(10) NOT NULL auto_increment,
  `comment` text collate utf8_unicode_ci NOT NULL COMMENT 'the comment the user wishes to make',
  `reference_table` varchar(255) collate utf8_unicode_ci NOT NULL COMMENT 'usually video or image',
  `reference_id` int(10) NOT NULL COMMENT 'resource_id of the reference_table (video_id or image_id)',
  `user_id` int(10) NOT NULL,
  `created` datetime NOT NULL default '1970-01-01 00:00:00',
  `modified` datetime NOT NULL default '1970-01-01 00:00:00',
  PRIMARY KEY  (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (16,'STOP COCK-BLOCKING ME BRO, I\\\'M GETTIN A BEEJ! ','video',2,7,'2011-03-29 22:57:37','2011-03-29 22:57:37'),(17,'This shit is the best hahaha \\\"I did my stretches, I\\\'m ready to fuck!\\\"','video',11,8,'2011-03-29 22:58:34','2011-03-29 22:58:34'),(18,'Damn.. Sluts.','video',14,8,'2011-03-29 23:02:30','2011-03-29 23:02:30'),(19,'It\\\'s funny seeing this without it being the Jontage.','video',53,1,'2011-03-30 21:28:07','2011-03-30 21:28:07'),(20,'Hahaha,god damn we rock.','video',11,13,'2011-04-01 22:33:24','2011-04-01 22:33:24'),(21,'\\\"Probably, I\\\'m gonna video tape it.\\\"','video',7,13,'2011-04-01 22:36:20','2011-04-01 22:36:20'),(22,'Did you hit that up?','video',72,17,'2011-04-02 23:37:30','2011-04-02 23:37:30'),(23,'Most ridiculous video on here','video',41,17,'2011-04-03 00:28:01','2011-04-03 00:28:01'),(24,'Hahahaha. ','video',52,17,'2011-04-03 00:30:03','2011-04-03 00:30:03'),(25,'EPIC','video',59,17,'2011-04-03 00:31:52','2011-04-03 00:31:52'),(26,'Super weird haha','video',53,8,'2011-04-06 22:49:18','2011-04-06 22:49:18');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `image_id` int(10) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL COMMENT 'name of file',
  `location` varchar(255) collate utf8_unicode_ci default NULL COMMENT 'location of file',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tells us where images are stored';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'2010-12-149519.13.38.jpg','images/2010-12-149519.13.38.jpg','2011-02-17 21:20:58','2011-02-17 21:20:58');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL auto_increment,
  `first_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `username` varchar(255) collate utf8_unicode_ci default NULL,
  `password` varchar(255) collate utf8_unicode_ci NOT NULL,
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Dick','Hatch','dick.hatch','75105193bfdd0db68cd7b988dda79744a9baea41','dick.hatch.bba@gmail.com',1,'2011-02-17 21:15:00','2011-02-17 21:15:00'),(6,'Nash','Ricci',NULL,'216b0fc555ea8e5c898aa01605c0d7a2036719bb','nash.ricci@yotes.collegeofidaho.edu',1,'2011-03-09 23:34:37','2011-03-09 23:34:37'),(5,'Ben','Mitchell',NULL,'7ad6d54c487a6224633826bb4f26fa51bbfa1f12','bam4@rice.edu',1,'2011-02-25 17:27:40','2011-02-25 17:27:40'),(7,'alex','goold',NULL,'882ed418d4eb9c5a63cd6026b652982a78f96efb','alex.goold@yotes.collegeofidaho.edu',1,'2011-03-10 13:04:07','2011-03-10 13:04:07'),(8,'Jon','Emery',NULL,'2de43112164e7b252d1d8ef572aeddfd6282f799','jon.h.emery@gmail.com',1,'2011-03-17 00:07:32','2011-03-17 00:07:32'),(9,'Jordan','Kuttler',NULL,'9cf984e10328f2091906d47d01ad3195dd8f6b09','jkuttler1@hotmail.com',1,'2011-03-29 22:32:52','2011-03-29 22:32:52'),(10,'Gabe','',NULL,'da39a3ee5e6b4b0d3255bfef95601890afd80709','gabe.c.inglis@gmail.com',0,'2011-03-29 23:26:24','2011-03-29 23:26:24'),(11,'Gabe','Inglis',NULL,'6c062ced6168d4c313e264b3e5264c1bb6014c51','gabe.c.inglis@gmail.com',1,'2011-03-29 23:26:54','2011-03-29 23:26:54'),(12,'Zeke','Wilson',NULL,'5aa66eef101217e7b4b35f78a31b851411a9a791','ezekial.wilson@yotes.collegeofidaho.edu',1,'2011-03-30 00:23:25','2011-03-30 00:23:25'),(13,'Eric','Emery',NULL,'448b52ae0e5fa816a3a85a254126547f3ab4edd3','Eric.trueemotion@gmail.com',1,'2011-03-30 07:54:16','2011-03-30 07:54:16'),(14,'anon','',NULL,'','',1,'2011-03-30 20:39:38','2011-03-30 20:39:38'),(15,'Peter','Bergman',NULL,'2063da4d3a2bd0e7d99351e28da735589e17bbac','peterbergman22@gmail.com',1,'2011-03-30 22:51:24','2011-03-30 22:51:24'),(16,'Alexander','Gidley',NULL,'a486ab1e8cb79b5a5d9a678706a38844f046be15','gidness7@gmail.com',1,'2011-03-31 09:30:28','2011-03-31 09:30:28'),(17,'David','Flannery',NULL,'a000b1eb368bd968e7feadf2ee17f0ab136d0d82','dflanneryconnected@gmail.com',1,'2011-03-31 11:51:02','2011-03-31 11:51:02'),(18,'Mark','Matsuyama',NULL,'88bbd5bc8536ec5b7609d5e14b3667c70f5eebfc','mark_matsuyama@msn.com',1,'2011-03-31 16:58:23','2011-03-31 16:58:23'),(19,'Doug','\\\'The Wallaby\\\' Germano',NULL,'5e07e3a09df9cfee0ca0cc71c142cf5511535601','dgermano2001@yahoo.com',1,'2011-04-03 10:03:51','2011-04-03 10:03:51'),(20,'Andrew','Knox',NULL,'c5998cfd340aea2f691e6680f531ec26599f6277','Andrew.Knox@yotes.collegeofidaho.edu',1,'2011-04-05 12:04:25','2011-04-05 12:04:25'),(21,'yrxdws','yrxdws',NULL,'da39a3ee5e6b4b0d3255bfef95601890afd80709','dutbrv@ycnade.com',0,'2011-05-19 11:27:25','2011-05-19 11:27:25'),(22,'Dallan','Withers',NULL,'b03883b75fe05decdf9cd8d98ce83e06a458ea3e','dallan.withers@yotes.collegeofidaho.edu',1,'2011-05-23 16:36:12','2011-05-23 16:36:12'),(23,'Chris','Miller',NULL,'234280ec10f2f11c3bed2e17e5d3adc9874b6c15','chris.miller4402@me.com',1,'2011-12-21 22:52:20','2011-12-21 22:52:20'),(24,'David','Flannery',NULL,'30a06b9d44662330931331aa0bbffc154c01bb07','Dflanneryconnected@gmail.com',1,'2011-12-24 11:50:16','2011-12-24 11:50:16'),(25,'Drew','Wellman',NULL,'468ee5cbd54e42b8aeaad13c130f780f0d091173','Wellman.andrew1@gmail.com',0,'2011-12-26 19:09:40','2011-12-26 19:09:40'),(26,'Drew','Wellman',NULL,'3c7507a5bb5b48d6939cccba1fc90039314074e8','wellman.andrew1@gmail.com',1,'2012-01-12 16:38:34','2012-01-12 16:38:34'),(27,'devin','hansen',NULL,'dd9398c824d05921299c0309e63e036eca0a8cfa','devink_hansen@yahoo.com',1,'2012-01-28 11:00:21','2012-01-28 11:00:21'),(28,'Daniel','Lemus',NULL,'934379ca41d0b8302546933b264be20e38dc63d5','daniel.lemus8@gmail.com',1,'2012-02-28 08:29:46','2012-02-28 08:29:46'),(29,'Art','Napionek',NULL,'4f468a6824d620bf0f58640c0bc423bcb35dc48f','artnapionek@gmail.com',0,'2012-06-13 23:28:11','2012-06-13 23:28:11'),(30,'Robin','Cruz',NULL,'5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','froastyfreak@yahoo.com',0,'2014-01-23 15:47:31','2014-01-23 15:47:31');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `video_id` int(10) NOT NULL auto_increment,
  `video_group_id` int(10) NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL COMMENT 'name of file',
  `location` varchar(255) collate utf8_unicode_ci default NULL COMMENT 'location of file',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`video_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tells us where videos are stored';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,1,'Rally 3:30pm','Mf3ckSBCc6Y','2011-02-17 21:23:02','2011-02-17 21:23:02'),(3,1,'Rally almost nothing','ZRZfgXPJyNs','2011-02-22 18:11:49','2011-02-22 18:11:49'),(2,1,'Rally Alex Rape','MGD8PU8riIU','2011-02-20 17:39:03','2011-02-20 17:39:03'),(4,1,'Rally Car Rage','mWzyv-Pf1BQ','2011-02-22 18:11:49','2011-02-22 18:11:49'),(5,1,'Rally Chris Chug','hhGDnEbJNW8','2011-02-22 18:11:49','2011-02-22 18:11:49'),(6,1,'Rally Chris Makeout','Qin0J4KqcbM','2011-02-22 18:11:49','2011-02-22 18:11:49'),(7,1,'Rally Crazy Peter1','pX4Eas9iA5A','2011-02-22 18:11:49','2011-02-22 18:11:49'),(8,1,'Rally Crazy Peter2','Qgg5Rs4AQMo','2011-02-22 18:11:49','2011-02-22 18:11:49'),(9,1,'Rally Crazy Peter3','wPFpFDzV2hE','2011-02-22 18:11:49','2011-02-22 18:11:49'),(10,1,'Rally Dance Dark','mzaDBWs9y6s','2011-02-22 18:11:49','2011-02-22 18:11:49'),(11,1,'Rally Eric Gidley Hip Thrusting','dxLLpTw8U0Q','2011-02-22 18:11:49','2011-02-22 18:11:49'),(12,1,'Rally Eric Makeout','TyjIxffDvt4','2011-02-22 18:11:49','2011-02-22 18:11:49'),(13,1,'Rally First Rage','HmsaeqJ2ikI','2011-02-22 18:11:49','2011-02-22 18:11:49'),(14,1,'Rally Foreigner','Uj1MgZm6ZHg','2011-02-22 18:11:49','2011-02-22 18:11:49'),(15,1,'Rally Gidley Bed','4YnY3oq5r44','2011-02-22 18:11:49','2011-02-22 18:11:49'),(16,1,'Rally Gidley Thiz Face','RiSTy0pMYQY','2011-02-22 18:11:49','2011-02-22 18:11:49'),(17,1,'Rally Lap Dance','Y1yvTslTFec','2011-02-22 18:11:49','2011-02-22 18:11:49'),(18,1,'Rally Nothing','PtoD5ICSPvk','2011-02-22 18:11:49','2011-02-22 18:11:49'),(19,1,'Rally Peter Nuck','UGyIo51Vve4','2011-02-22 18:11:49','2011-02-22 18:11:49'),(20,1,'Rally Pool Table Makeout Sesh','bdyfZiCC2Sw','2011-02-22 18:11:49','2011-02-22 18:11:49'),(21,1,'Rally Rage Basement','jcOebT8oInU','2011-02-22 18:11:49','2011-02-22 18:11:49'),(22,1,'Rally Shianne Filming1','cBLmrzyHM_0','2011-02-22 18:11:49','2011-02-22 18:11:49'),(23,1,'Rally Shianne Filming2','2EoaIJdDT4A','2011-02-22 18:11:49','2011-02-22 18:11:49'),(24,1,'Rally Shianne Filming3','Db0Kj3h3LFY','2011-02-22 18:11:49','2011-02-22 18:11:49'),(25,1,'Rally Shianne Filming4','BBAyscSQ4XE','2011-02-22 18:11:49','2011-02-22 18:11:49'),(26,1,'Rally Shianne','moO2_IDR5uE','2011-02-22 18:11:49','2011-02-22 18:11:49'),(27,1,'Rally Stairs','jquGyUIEL2k','2011-02-22 18:11:49','2011-02-22 18:11:49'),(28,1,'Rally Truck Upside down','JHL8o1xQ70E','2011-02-22 18:11:51','2011-02-22 18:11:51'),(29,2,'14 Year Olds','VkvNIjKgi4s','2011-03-29 21:47:57','2011-03-29 21:47:57'),(30,2,'Alex Hot Chick','j71skX0H-hM','2011-03-29 22:17:56','2011-03-29 22:17:56'),(31,2,'Alex House','VWYK8lzm7BM','2011-03-29 22:18:18','2011-03-29 22:18:18'),(32,2,'At Peters','2lmHFAWDAKw','2011-03-29 22:18:42','2011-03-29 22:18:42'),(33,2,'At Peters2','bFz23OrKCuI','2011-03-29 22:19:00','2011-03-29 22:19:00'),(34,2,'Biscuits','TQ71kmtVewg','2011-03-29 22:19:23','2011-03-29 22:19:23'),(35,2,'Biscuits Root','Dwoa951x_Oo','2011-03-29 22:29:59','2011-03-29 22:29:59'),(36,2,'Blazer Drift','YJjY2dLZmIk','2011-03-30 06:11:10','2011-03-30 06:11:10'),(37,2,'Car Nothing','VYr_R2EU488','2011-03-30 06:11:56','2011-03-30 06:11:56'),(38,2,'Car Nothing2','p1jXKHENghM','2011-03-30 06:12:26','2011-03-30 06:12:26'),(39,2,'Celery','G934x9k1yus','2011-03-30 06:12:52','2011-03-30 06:12:52'),(40,2,'Doug Going to Bed Boring','XUDctEyYBds','2011-03-30 06:13:18','2011-03-30 06:13:18'),(41,2,'Doug Whistle','X66MYWdrXgM','2011-03-30 06:13:42','2011-03-30 06:13:42'),(42,2,'Driving to Meridian','3NDxl0R5JuI','2011-03-30 06:14:13','2011-03-30 06:14:13'),(43,2,'In Peters Car','CZRxK-HERrU','2011-03-30 06:14:38','2011-03-30 06:14:38'),(44,2,'Jacki','Dr18WtRBRtg','2011-03-30 06:15:04','2011-03-30 06:15:04'),(45,2,'Jon Paper','hdNFONKVOSo','2011-03-30 06:15:31','2011-03-30 06:15:31'),(46,2,'Jon Paper2','xRrk2eRuQ7Q','2011-03-30 06:15:54','2011-03-30 06:15:54'),(47,2,'Laughy Alex','HdMauvN6sfM','2011-03-30 06:16:17','2011-03-30 06:16:17'),(48,2,'Laughy Alex2','Uxib1-Qfwcs','2011-03-30 06:16:43','2011-03-30 06:16:43'),(49,2,'Mark Nuck','A-fjGPIJ0j8','2011-03-30 20:23:18','2011-03-30 20:23:18'),(50,2,'Naked Alex','6VKwJwJTdyA','2011-03-30 20:23:52','2011-03-30 20:23:52'),(51,2,'Naked','Bs9caLDB1cM','2011-03-30 20:24:27','2011-03-30 20:24:27'),(52,2,'Naked Doug','bZLZGmWqqIo','2011-03-30 20:24:53','2011-03-30 20:24:53'),(53,2,'No Not Tonight','lxQgFXsAPIA','2011-03-30 21:10:42','2011-03-30 21:10:42'),(54,2,'Nuck.com','pCsHtoKr2AQ','2011-03-30 21:11:07','2011-03-30 21:11:07'),(55,2,'Single Cup','YoZJaoPy8iQ','2011-03-30 21:30:42','2011-03-30 21:30:42'),(56,2,'Snuke in the Snizz','GAuWDquW79Q','2011-03-30 21:31:11','2011-03-30 21:31:11'),(57,2,'That Much Beer In My Stomach','5AG5XsHPk4Y','2011-03-30 21:31:45','2011-03-30 21:31:45'),(58,2,'Walking to Peters','DKfrijLKf8s','2011-03-30 21:49:05','2011-03-30 21:49:05'),(59,2,'Walmart','wBI7u2erjos','2011-03-30 22:03:08','2011-03-30 22:03:08'),(60,3,'Finney Fun Run1','357mxbPEoEU','2011-03-30 22:17:40','2011-03-30 22:17:40'),(61,3,'Finney Fun Run2','357mxbPEoEU','2011-03-31 23:24:38','2011-03-31 23:24:38'),(62,3,'Finney Fun Run3','nvTEWzFaiPs','2011-03-31 23:25:07','2011-03-31 23:25:07'),(63,3,'Kurt\'s Birthday','3AoNRD_7jGM','2011-03-31 23:25:34','2011-03-31 23:25:34'),(64,3,'Kurt\'s Birthday2','MmP4NGuN4fI','2011-03-31 23:25:51','2011-03-31 23:25:51'),(65,3,'Kurt\'s Birthday3','O4FzjNo-KwA','2011-03-31 23:26:10','2011-03-31 23:26:10'),(66,3,'Kurt\'s Birthday4','uiCRe3Zm3ao','2011-03-31 23:26:31','2011-03-31 23:26:31'),(67,3,'Kurt\'s Birthday5','6Zq1qJy1YYo','2011-03-31 23:27:05','2011-03-31 23:27:05'),(68,3,'Naomi Setup','0L39zX2sc7g','2011-03-31 23:28:04','2011-03-31 23:28:04'),(69,3,'Naomi Setup2','H4LxVBLO3YQ','2011-03-31 23:28:15','2011-03-31 23:28:15'),(70,3,'Naomi Setup3','fcxqWM-KIC8','2011-03-31 23:28:31','2011-03-31 23:28:31'),(71,3,'Naomi Proposal2','DmrKDNwrC9M','2011-03-31 23:28:48','2011-03-31 23:28:48'),(72,3,'Naomi Ultimate Proposal','ci_GXVuhn20','2011-03-31 23:30:03','2011-03-31 23:30:03'),(73,3,'nothing','REQ4NDOgbj8','2011-03-31 23:30:29','2011-03-31 23:30:29'),(74,3,'Pool in McCain','cdVNhxwHSa0','2011-03-31 23:31:19','2011-03-31 23:31:19'),(75,3,'Pre-Naomi','cHur-ybkNVE','2011-03-31 23:31:40','2011-03-31 23:31:40'),(76,3,'Walking Through the Quad','YUF-Xx04d78','2011-03-31 23:32:01','2011-03-31 23:32:01'),(77,3,'Walking Through the Quad2','OYR0yGmYwno','2011-03-31 23:32:18','2011-03-31 23:32:18'),(78,2,'Boise Beer Mile','7-dGy2LEfMY','2011-04-01 05:04:58','2011-04-01 05:04:58');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_group`
--

DROP TABLE IF EXISTS `video_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_group` (
  `video_group_id` int(10) NOT NULL auto_increment,
  `label` varchar(255) default NULL COMMENT 'type of video',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`video_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tells us which videos are part of which groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_group`
--

LOCK TABLES `video_group` WRITE;
/*!40000 ALTER TABLE `video_group` DISABLE KEYS */;
INSERT INTO `video_group` VALUES (1,'McCall','2011-02-22 18:23:57','2011-03-10 21:10:44'),(2,'Rage','2011-02-22 18:27:18','2011-02-22 18:27:18'),(3,'Caldwell Rage','2011-03-30 22:17:09','2011-03-30 22:17:09');
/*!40000 ALTER TABLE `video_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-20  5:42:22
