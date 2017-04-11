-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add article',7,'add_article'),(20,'Can change article',7,'change_article'),(21,'Can delete article',7,'delete_article'),(22,'Can add Category',8,'add_category'),(23,'Can change Category',8,'change_category'),(24,'Can delete Category',8,'delete_category'),(25,'Can add Good',9,'add_item'),(26,'Can change Good',9,'change_item'),(27,'Can delete Good',9,'delete_item'),(28,'Can add Order',10,'add_zakaz2'),(29,'Can change Order',10,'change_zakaz2'),(30,'Can delete Order',10,'delete_zakaz2'),(31,'Can add person',11,'add_person'),(32,'Can change person',11,'change_person'),(33,'Can delete person',11,'delete_person');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$T9ysV2Ks0Sx7$rV3ZYiuNyhqi77qJKPbSM5gGLDkWzQH5OViKQFWjsPk=','2017-04-10 18:00:09',1,'jeka','','','evgendemidovs@gmail.com',1,1,'2017-02-17 06:11:17');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_user_id_73871a5c9f3ca2b4_fk_auth_user_id` (`user_id`),
  CONSTRAINT `blog_article_user_id_73871a5c9f3ca2b4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_category_724874d1` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'belt','belt'),(2,'purse','purse');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_item`
--

DROP TABLE IF EXISTS `blog_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_item_category_id_1eba6935dd5a9bc1_fk_blog_category_id` (`category_id`),
  KEY `blog_item_724874d1` (`alias`),
  CONSTRAINT `blog_item_category_id_1eba6935dd5a9bc1_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_item`
--

LOCK TABLES `blog_item` WRITE;
/*!40000 ALTER TABLE `blog_item` DISABLE KEYS */;
INSERT INTO `blog_item` VALUES (1,'belt1',350,'http://demidoff.us.to:81/1/1015/1015a/1.jpg','http://demidoff.us.to:81/1/1015/1015a/2.jpg','http://demidoff.us.to:81/1/1015/1015a/3.jpg','http://demidoff.us.to:81/1/1015/1015a/4.jpg','belt1',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(2,'belt2',350,'http://demidoff.us.to:81/1/1015/1015b/1.jpg','http://demidoff.us.to:81/1/1015/1015b/2.jpg','http://demidoff.us.to:81/1/1015/1015b/3.jpg','http://demidoff.us.to:81/1/1015/1015b/4.jpg','belt2',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(3,'belt3',350,'http://demidoff.us.to:81/1/1015/1015c/1.jpg','http://demidoff.us.to:81/1/1015/1015c/2.jpg','http://demidoff.us.to:81/1/1015/1015c/3.jpg','http://demidoff.us.to:81/1/1015/1015c/4.jpg','belt3',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(5,'belt6',400,'http://demidoff.us.to:81/1/1016/1016b/1.jpg','http://demidoff.us.to:81/1/1016/1016b/2.jpg','http://demidoff.us.to:81/1/1016/1016b/3.jpg','http://demidoff.us.to:81/1/1016/1016b/4.jpg','belt6',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(6,'belt5',400,'http://demidoff.us.to:81/1/1016/1016c/1.jpg','http://demidoff.us.to:81/1/1016/1016c/2.jpg','http://demidoff.us.to:81/1/1016/1016c/3.jpg','http://demidoff.us.to:81/1/1016/1016c/4.jpg','belt5',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(7,'belt7',350,'http://demidoff.us.to:81/1/1002/1002a/1.jpg','http://demidoff.us.to:81/1/1002/1002a/2.jpg','http://demidoff.us.to:81/1/1002/1002a/3.jpg','http://demidoff.us.to:81/1/1002/1002a/4.jpg','belt7',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(8,'belt8',350,'http://demidoff.us.to:81/1/1002/1002b/1.jpg','http://demidoff.us.to:81/1/1002/1002b/2.jpg','http://demidoff.us.to:81/1/1002/1002b/3.jpg','http://demidoff.us.to:81/1/1002/1002b/4.jpg','belt78',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(9,'belt9',350,'http://demidoff.us.to:81/1/1002/1002c/1.jpg','http://demidoff.us.to:81/1/1002/1002c/2.jpg','http://demidoff.us.to:81/1/1002/1002c/3.jpg','http://demidoff.us.to:81/1/1002/1002c/1.jpg4','belt9',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(10,'belt10',400,'http://demidoff.us.to:81/1/1011/1011a/1.jpg','http://demidoff.us.to:81/1/1011/1011a/2.jpg','http://demidoff.us.to:81/1/1011/1011a/3.jpg','http://demidoff.us.to:81/1/1011/1011a/4.jpg','belt10',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(12,'belt11',400,'http://demidoff.us.to:81/1/1011/1011b/1.jpg','http://demidoff.us.to:81/1/1011/1011b/2.jpg','http://demidoff.us.to:81/1/1011/1011b/3.jpg','http://demidoff.us.to:81/1/1011/1011b/4.jpg','belt11',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(13,'belt12',400,'http://demidoff.us.to:81/1/1011/1011c/1.jpg','http://demidoff.us.to:81/1/1011/1011c/2.jpg','http://demidoff.us.to:81/1/1011/1011c/3.jpg','http://demidoff.us.to:81/1/1011/1011c/4.jpg','belt12',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(14,'belt13',350,'http://demidoff.us.to:81/1/1003/1003a/1.jpg','http://demidoff.us.to:81/1/1003/1003a/2.jpg','http://demidoff.us.to:81/1/1003/1003a/3.jpg','http://demidoff.us.to:81/1/1003/1003a/4.jpg','belt13',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(15,'belt14',350,'http://demidoff.us.to:81/1/1003/1003b/1.jpg','http://demidoff.us.to:81/1/1003/1003b/2.jpg','http://demidoff.us.to:81/1/1003/1003b/3.jpg','http://demidoff.us.to:81/1/1003/1003b/4.jpg','belt4',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(16,'belt15',350,'http://demidoff.us.to:81/1/1003/1003c/1.jpg','http://demidoff.us.to:81/1/1003/1003c/2.jpg','http://demidoff.us.to:81/1/1003/1003c/3.jpg','http://demidoff.us.to:81/1/1003/1003c/4.jpg','belt15',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(17,'belt16',400,'http://demidoff.us.to:81/1/1013/1013a/1.jpg','http://demidoff.us.to:81/1/1013/1013a/2.jpg','http://demidoff.us.to:81/1/1013/1013a/3.jpg','http://demidoff.us.to:81/1/1013/1013a/4.jpg','belt16',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(18,'belt17',400,'http://demidoff.us.to:81/1/1013/1013b/1.jpg','http://demidoff.us.to:81/1/1013/1013b/2.jpg','http://demidoff.us.to:81/1/1013/1013b/3.jpg','http://demidoff.us.to:81/1/1013/1013b/4.jpg','belt17',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(19,'belt18',400,'http://demidoff.us.to:81/1/1013/1013c/1.jpg','http://demidoff.us.to:81/1/1013/1013c/2.jpg','http://demidoff.us.to:81/1/1013/1013c/3.jpg','http://demidoff.us.to:81/1/1013/1013c/4.jpg','belt18',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(20,'belt19',350,'http://demidoff.us.to:81/1/1001/1001a/1.jpg','http://demidoff.us.to:81/1/1001/1001a/2.jpg','http://demidoff.us.to:81/1/1001/1001a/3.jpg','http://demidoff.us.to:81/1/1001/1001a/4.jpg','belt19',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(21,'belt20',350,'http://demidoff.us.to:81/1/1001/1001b/1.jpg','http://demidoff.us.to:81/1/1001/1001b/2.jpg','http://demidoff.us.to:81/1/1001/1001b/3.jpg','http://demidoff.us.to:81/1/1001/1001b/4.jpg','belt20',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(22,'belt21',350,'http://demidoff.us.to:81/1/1001/1001c/1.jpg','http://demidoff.us.to:81/1/1001/1001c/1.jpg','http://demidoff.us.to:81/1/1001/1001c/1.jpg','http://demidoff.us.to:81/1/1001/1001c/1.jpg','belt21',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(23,'belt22',350,'http://demidoff.us.to:81/1/1005/1005a/1.jpg','http://demidoff.us.to:81/1/1005/1005a/2.jpg','http://demidoff.us.to:81/1/1005/1005a/3.jpg','http://demidoff.us.to:81/1/1005/1005a/4.jpg','belt22',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(24,'belt23',350,'http://demidoff.us.to:81/1/1005/1005b/1.jpg','http://demidoff.us.to:81/1/1005/1005b/2.jpg','http://demidoff.us.to:81/1/1005/1005b/3.jpg','http://demidoff.us.to:81/1/1005/1005b/4.jpg','belt23',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(25,'belt24',350,'http://demidoff.us.to:81/1/1005/1005c/1.jpg','http://demidoff.us.to:81/1/1005/1005c/2.jpg','http://demidoff.us.to:81/1/1005/1005c/3.jpg','http://demidoff.us.to:81/1/1005/1005c/4.jpg','belt24',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(26,'belt25',400,'http://demidoff.us.to:81/1/1012/1012a/1.jpg','http://demidoff.us.to:81/1/1012/1012a/2.jpg','http://demidoff.us.to:81/1/1012/1012a/3.jpg','http://demidoff.us.to:81/1/1012/1012a/4.jpg','belt25',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(27,'belt26',400,'http://demidoff.us.to:81/1/1012/1012b/1.jpg','http://demidoff.us.to:81/1/1012/1012b/2.jpg','http://demidoff.us.to:81/1/1012/1012b/3.jpg','http://demidoff.us.to:81/1/1012/1012b/4.jpg','belt26',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(28,'belt27',400,'http://demidoff.us.to:81/1/1012/1012C/1.jpg','http://demidoff.us.to:81/1/1012/1012C/2.jpg','http://demidoff.us.to:81/1/1012/1012C/3.jpg','http://demidoff.us.to:81/1/1012/1012C/4jpg','belt27',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(29,'belt28',400,'http://demidoff.us.to:81/1/1014/1014a/1.jpg','http://demidoff.us.to:81/1/1014/1014a/2.jpg','http://demidoff.us.to:81/1/1014/1014a/3.jpg','http://demidoff.us.to:81/1/1014/1014a/4.jpg','belt28',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(30,'belt29',400,'http://demidoff.us.to:81/1/1014/1014b/1.jpg','http://demidoff.us.to:81/1/1014/1014b/2.jpg','http://demidoff.us.to:81/1/1014/1014b/3.jpg','http://demidoff.us.to:81/1/1014/1014b/4.jpg','belt29',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(31,'belt30',400,'http://demidoff.us.to:81/1/1014/1014c/1.jpg','http://demidoff.us.to:81/1/1014/1014c/2.jpg','http://demidoff.us.to:81/1/1014/1014c/3.jpg','http://demidoff.us.to:81/1/1014/1014c/4.jpg','belt30',1,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(32,'purse1',350,'http://demidoff.us.to:81/2/1101/1101a/1.jpg','http://demidoff.us.to:81/2/1101/1101a/2.jpg','http://demidoff.us.to:81/2/1101/1101a/3.jpg','http://demidoff.us.to:81/2/1101/1101a/4.jpg','purse1',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(33,'purse2',350,'http://demidoff.us.to:81/2/1101/1101b/1.jpg','http://demidoff.us.to:81/2/1101/1101b/2.jpg','http://demidoff.us.to:81/2/1101/1101b/3.jpg','http://demidoff.us.to:81/2/1101/1101b/4.jpg','purse2',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(34,'purse3',350,'http://demidoff.us.to:81/2/1101/1101c/1.jpg','http://demidoff.us.to:81/2/1101/1101c/2.jpg','http://demidoff.us.to:81/2/1101/1101c/3.jpg','http://demidoff.us.to:81/2/1101/1101c/4.jpg','purse3',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(35,'purse4',350,'http://demidoff.us.to:81/2/1102/1102a/1.jpg','http://demidoff.us.to:81/2/1102/1102a/2.jpg','http://demidoff.us.to:81/2/1102/1102a/3.jpg','http://demidoff.us.to:81/2/1102/1102a/4.jpg','purse4',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(36,'purse5',350,'http://demidoff.us.to:81/2/1102/1102b/1.jpg','http://demidoff.us.to:81/2/1102/1102b/2.jpg','http://demidoff.us.to:81/2/1102/1102b/3.jpg','http://demidoff.us.to:81/2/1102/1102b/4.jpg','purse5',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(37,'purse6',350,'http://demidoff.us.to:81/2/1102/1102c/1.jpg','http://demidoff.us.to:81/2/1102/1102c/2.jpg','http://demidoff.us.to:81/2/1102/1102c/3.jpg','http://demidoff.us.to:81/2/1102/1102c/4.jpg','purse6',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(38,'purse7',350,'http://demidoff.us.to:81/2/1103/1103a/1.jpg','http://demidoff.us.to:81/2/1103/1103a/2.jpg','http://demidoff.us.to:81/2/1103/1103a/3.jpg','http://demidoff.us.to:81/2/1103/1103a/4.jpg','350',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(39,'purse8',350,'http://demidoff.us.to:81/2/1103/1103b/1.jpg','http://demidoff.us.to:81/2/1103/1103b/2.jpg','http://demidoff.us.to:81/2/1103/1103b/3.jpg','http://demidoff.us.to:81/2/1103/1103b/4.jpg','purse8',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(40,'purse9',350,'http://demidoff.us.to:81/2/1103/1103c/1.jpg','http://demidoff.us.to:81/2/1103/1103c/2.jpg','http://demidoff.us.to:81/2/1103/1103c/3.jpg','http://demidoff.us.to:81/2/1103/1103c/4.jpg','purse9',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(41,'purse10',350,'http://demidoff.us.to:81/2/1104/1104b/1.jpg','http://demidoff.us.to:81/2/1104/1104b/2.jpg','http://demidoff.us.to:81/2/1104/1104b/3.jpg','http://demidoff.us.to:81/2/1104/1104b/4.jpg','purse10',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00'),(42,'purse11',350,'http://demidoff.us.to:81/2/1104/1104c/1.jpg','http://demidoff.us.to:81/2/1104/1104c/2.jpg','http://demidoff.us.to:81/2/1104/1104c/3.jpg','http://demidoff.us.to:81/2/1104/1104c/4.jpg','purse11',2,'2017-03-26 17:26:47.469779+00:00','2017-04-10 11:48:05.301185+00:00');
/*!40000 ALTER TABLE `blog_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_person`
--

DROP TABLE IF EXISTS `blog_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_person`
--

LOCK TABLES `blog_person` WRITE;
/*!40000 ALTER TABLE `blog_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_zakaz2`
--

DROP TABLE IF EXISTS `blog_zakaz2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_zakaz2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `zakaz` varchar(255) NOT NULL,
  `summa` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `delivery` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_zakaz2`
--

LOCK TABLES `blog_zakaz2` WRITE;
/*!40000 ALTER TABLE `blog_zakaz2` DISABLE KEYS */;
INSERT INTO `blog_zakaz2` VALUES (1,'aga','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1012/1012b/1.jpg\"}]',400,'2017-02-18 08:29:40','gaga',4141),(2,'aga','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1012/1012b/1.jpg\"}]',400,'2017-02-18 08:29:46','gaga',4141),(3,'rqrq','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"}]',750,'2017-02-18 08:30:10','rqrq',4141),(4,'rqrq','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"}]',750,'2017-02-18 08:30:44','rqrq',15151551),(5,'rqrq','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"}]',400,'2017-02-18 08:31:00','rqrq',15151551),(6,'faf','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"}]',750,'2017-02-18 08:32:13','afa',4141),(7,'faf','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"}]',750,'2017-02-18 08:32:17','afa',4141),(8,'faf','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"}]',750,'2017-02-18 08:33:19','afagaga',4141),(9,'ffffaf','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"}]',750,'2017-02-18 08:33:21','afagaga',4141),(10,'faf','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"},{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"}]',1150,'2017-02-18 08:39:04','afa',14141),(11,'faf','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"},{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"}]',1150,'2017-02-18 08:39:09','afa',14141),(12,'faf','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1011/1011c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"},{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"}]',1150,'2017-02-18 08:39:16','afa',14141),(13,'afa','[]',0,'2017-02-18 08:41:08','afaf',4141),(14,'fa','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1016/1016c/1.jpg\"}]',400,'2017-02-18 08:41:18','fafa',4141),(15,'farqrq','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1016/1016c/1.jpg\"}]',400,'2017-02-18 08:41:59','fafa',414115151),(16,'fa','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1016/1016c/1.jpg\"}]',400,'2017-02-18 08:43:27','fafa',4141),(17,'fa','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1016/1016c/1.jpg\"}]',400,'2017-02-18 08:43:34','fafa',4141),(18,'fa','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1016/1016c/1.jpg\"}]',400,'2017-02-18 08:43:44','fafa',4141),(19,'afafafa','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1012/1012b/1.jpg\"}]',400,'2017-02-18 08:46:19','faffff',4141),(20,'fa','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1016/1016c/1.jpg\"},{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"}]',800,'2017-02-19 10:31:49','fafaf',6141),(21,'fafa','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"}]',750,'2017-02-19 14:17:22','fafa',4141),(22,'faf','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"}]',400,'2017-02-19 14:48:56','afaaf',4141),(23,'ttwt','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"},{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"}]',1150,'2017-02-19 16:35:23','twtw',4141),(24,'fsf','[{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015b/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015b/1.jpg\"}]',700,'2017-02-19 16:52:30','sfsfs',3131),(25,'cacca','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"}]',400,'2017-02-19 18:58:28','caca',4141),(26,'adad','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"},{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1015/1015b/1.jpg\"}]',750,'2017-02-19 19:04:31','ada',4141),(27,'fafa','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"}]',400,'2017-02-19 19:14:02','fafa',4141),(28,'Demydov','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1013/1013a/1.jpg\"}]',400,'2017-02-19 20:21:31','????? 1',2147483647),(29,'faf','[]',0,'2017-02-22 17:00:15','afafa',4141),(30,'fgaga','[]',0,'2017-02-23 06:09:10','gaga',4141),(31,'faf','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1014/1014c/1.jpg\"}]',400,'2017-02-23 08:52:15','afafa',41415),(32,'fafa','[{\"price\":\"\\n    400 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1012/1012C/1.jpg\"}]',400,'2017-02-26 13:21:13','fafa',4141),(33,'Jeka','[{\"price\":\"\\n    350 ???\\n\\n\",\"img\":\"http://demidoff.us.to:81/1/1005/1005a/1.jpg\"}]',350,'2017-03-20 17:06:17','efsaf',61414141),(34,'fag','[{\"price\":\"350 ???\",\"img\":\"http://demidoff.us.to:81/1/1015/1015a/1.jpg\"},{\"price\":\"350 ???\",\"img\":\"http://demidoff.us.to:81/2/1101/1101b/1.jpg\"}]',700,'2017-04-10 12:22:09','faf',1141);
/*!40000 ALTER TABLE `blog_zakaz2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-02-17 08:38:21','1','Catogory belt',1,'',8,1),(2,'2017-02-17 08:39:34','1','Good belt1',1,'',9,1),(3,'2017-02-17 08:41:00','1','Good belt1',2,'Changed image, image1, image2 and image3.',9,1),(4,'2017-02-17 08:42:32','1','Good belt1',2,'Changed image3.',9,1),(5,'2017-02-17 08:56:00','2','Good belt2',1,'',9,1),(6,'2017-02-17 08:56:35','2','Good belt2',2,'Changed image1.',9,1),(7,'2017-02-17 08:58:17','3','Good belt3',1,'',9,1),(8,'2017-02-17 09:08:59','4','Good belt4',1,'',9,1),(9,'2017-02-17 09:09:34','5','Good belt6',1,'',9,1),(10,'2017-02-17 09:10:17','6','Good belt5',1,'',9,1),(11,'2017-02-17 09:22:25','7','Good belt7',1,'',9,1),(12,'2017-02-17 09:23:08','8','Good belt8',1,'',9,1),(13,'2017-02-17 09:23:46','9','Good belt9',1,'',9,1),(14,'2017-02-17 09:26:25','9','Good belt9',2,'Changed image, image1, image2, image3 and alias.',9,1),(15,'2017-02-17 10:05:56','10','Good belt10',1,'',9,1),(16,'2017-02-17 10:06:00','11','Good belt10',1,'',9,1),(17,'2017-02-17 10:06:42','11','Good belt10',3,'',9,1),(18,'2017-02-17 10:09:11','12','Good belt11',1,'',9,1),(19,'2017-02-17 10:09:36','13','Good belt12',1,'',9,1),(20,'2017-02-17 10:40:35','14','Good belt13',1,'',9,1),(21,'2017-02-17 10:40:57','14','Good belt13',2,'Changed image1 and image2.',9,1),(22,'2017-02-17 10:41:31','15','Good belt14',1,'',9,1),(23,'2017-02-17 10:42:25','16','Good belt15',1,'',9,1),(24,'2017-02-17 10:49:32','17','Good belt16',1,'',9,1),(25,'2017-02-17 10:50:10','18','Good belt17',1,'',9,1),(26,'2017-02-17 10:50:49','19','Good belt18',1,'',9,1),(27,'2017-02-17 10:57:56','20','Good belt19',1,'',9,1),(28,'2017-02-17 10:58:30','21','Good belt20',1,'',9,1),(29,'2017-02-17 10:59:08','22','Good belt21',1,'',9,1),(30,'2017-02-17 12:12:21','23','Good belt22',1,'',9,1),(31,'2017-02-17 12:13:05','24','Good belt23',1,'',9,1),(32,'2017-02-17 12:13:43','25','Good belt24',1,'',9,1),(33,'2017-02-17 13:05:56','26','Good belt25',1,'',9,1),(34,'2017-02-17 13:06:37','27','Good belt26',1,'',9,1),(35,'2017-02-17 13:07:21','28','Good belt27',1,'',9,1),(36,'2017-02-17 13:14:51','29','Good belt28',1,'',9,1),(37,'2017-02-17 13:15:28','30','Good belt29',1,'',9,1),(38,'2017-02-17 13:16:11','31','Good belt30',1,'',9,1),(39,'2017-02-17 19:20:27','13','Good belt12',2,'Changed image1, image2 and image3.',9,1),(40,'2017-02-19 16:28:38','4','Good belt4',3,'',9,1),(41,'2017-02-23 08:44:38','2','Catogory purse',1,'',8,1),(42,'2017-02-23 08:45:34','32','Good purse1',1,'',9,1),(43,'2017-02-23 08:46:33','32','Good purse1',2,'No fields changed.',9,1),(44,'2017-02-23 08:47:16','1','Good belt1',2,'Changed image1 and image2.',9,1),(45,'2017-02-23 08:49:16','32','Good purse1',2,'No fields changed.',9,1),(46,'2017-02-23 08:51:21','33','Good purse2',1,'',9,1),(47,'2017-02-23 12:11:16','34','Good purse3',1,'',9,1),(48,'2017-02-23 12:14:49','35','Good purse4',1,'',9,1),(49,'2017-02-23 12:18:05','36','Good purse5',1,'',9,1),(50,'2017-02-23 12:37:04','37','Good purse6',1,'',9,1),(51,'2017-02-23 12:41:18','38','Good purse7',1,'',9,1),(52,'2017-02-23 12:41:53','39','Good purse8',1,'',9,1),(53,'2017-02-23 12:42:33','40','Good purse9',1,'',9,1),(54,'2017-02-23 12:45:58','41','Good purse10',1,'',9,1),(55,'2017-02-23 12:46:35','42','Good purse11',1,'',9,1),(56,'2017-03-20 16:56:08','1','Good belt1',2,'Changed image.',9,1),(57,'2017-03-20 17:09:42','1','Good belt1',2,'Changed image.',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','article'),(8,'blog','category'),(9,'blog','item'),(11,'blog','person'),(10,'blog','zakaz2'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-02-17 06:08:14'),(2,'auth','0001_initial','2017-02-17 06:08:18'),(3,'admin','0001_initial','2017-02-17 06:08:18'),(4,'contenttypes','0002_remove_content_type_name','2017-02-17 06:08:18'),(5,'auth','0002_alter_permission_name_max_length','2017-02-17 06:08:18'),(6,'auth','0003_alter_user_email_max_length','2017-02-17 06:08:18'),(7,'auth','0004_alter_user_username_opts','2017-02-17 06:08:18'),(8,'auth','0005_alter_user_last_login_null','2017-02-17 06:08:18'),(9,'auth','0006_require_contenttypes_0002','2017-02-17 06:08:18'),(10,'blog','0001_initial','2017-02-17 06:08:24'),(11,'sessions','0001_initial','2017-02-17 06:08:24'),(12,'blog','0002_item_color','2017-04-10 12:21:00'),(13,'blog','0003_item_size','2017-04-10 12:21:00');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ccnpzfv003mi2n7kso4b8o7zxj939nds','ODRhODAwYTk4ZmMzMzFiYjg5YTAxMzczN2FhNDJlMDc2YzIwMmI5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwZjVjZmY5OTVlNTY4YjU0ODU0NDlmMmU4YTY3M2QwNTU5NWQ3ZTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-03 06:11:32'),('kwdj3eabr1ahz2r0e4kecnlia4trioj6','ODRhODAwYTk4ZmMzMzFiYjg5YTAxMzczN2FhNDJlMDc2YzIwMmI5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwZjVjZmY5OTVlNTY4YjU0ODU0NDlmMmU4YTY3M2QwNTU5NWQ3ZTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-03 16:55:54'),('sf766rhnpkg0p8hxjc7xtao49xaw3ens','ODRhODAwYTk4ZmMzMzFiYjg5YTAxMzczN2FhNDJlMDc2YzIwMmI5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwZjVjZmY5OTVlNTY4YjU0ODU0NDlmMmU4YTY3M2QwNTU5NWQ3ZTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-03 19:20:09'),('str8fhe6ni4k43zf8yvg8ys8o9rxfylj','ODRhODAwYTk4ZmMzMzFiYjg5YTAxMzczN2FhNDJlMDc2YzIwMmI5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwZjVjZmY5OTVlNTY4YjU0ODU0NDlmMmU4YTY3M2QwNTU5NWQ3ZTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-05 16:18:42'),('z67zsjsv5g6l0y8u7mxutgqam4ylnkzg','ODRhODAwYTk4ZmMzMzFiYjg5YTAxMzczN2FhNDJlMDc2YzIwMmI5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwZjVjZmY5OTVlNTY4YjU0ODU0NDlmMmU4YTY3M2QwNTU5NWQ3ZTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-24 18:00:09'),('zf0alo3vt7gjphik8fnljlqa4crhy35y','ODRhODAwYTk4ZmMzMzFiYjg5YTAxMzczN2FhNDJlMDc2YzIwMmI5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwZjVjZmY5OTVlNTY4YjU0ODU0NDlmMmU4YTY3M2QwNTU5NWQ3ZTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-04 08:46:38');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-11 20:00:50
