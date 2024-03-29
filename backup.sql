-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: django
-- ------------------------------------------------------
-- Server version	5.7.36

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
  `name` varchar(150) NOT NULL,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add person',7,'add_person'),(26,'Can change person',7,'change_person'),(27,'Can delete person',7,'delete_person'),(28,'Can view person',7,'view_person'),(29,'Can add referrer',8,'add_referrer'),(30,'Can change referrer',8,'change_referrer'),(31,'Can delete referrer',8,'delete_referrer'),(32,'Can view referrer',8,'view_referrer'),(33,'Can add referral',9,'add_referral'),(34,'Can change referral',9,'change_referral'),(35,'Can delete referral',9,'delete_referral'),(36,'Can view referral',9,'view_referral');
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
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$0AiSJygosUDaqs1ceoFsGF$SowQqxlIdDQ4NVLJOB3eJaSUBvfkQdUgitQn/5Bk4Yg=','2021-11-19 01:32:53.838269',1,'admin','','','admin@pyhlie.com',1,1,'2021-11-15 04:32:01.176130'),(2,'pbkdf2_sha256$260000$Qtpe6kK4UriceX25bVDqoF$1C2mFFsnulFPRCnr2EB/s8o6E8B87wifuAST+ECAS4E=',NULL,0,'christopher','','','',0,1,'2021-11-19 01:57:51.878333');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-11-19 01:57:52.083866','2','christopher',1,'[{\"added\": {}}]',4,1);
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'referral','person'),(9,'referral','referral'),(8,'referral','referrer'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-15 04:31:11.522925'),(2,'auth','0001_initial','2021-11-15 04:31:12.133943'),(3,'admin','0001_initial','2021-11-15 04:31:12.274904'),(4,'admin','0002_logentry_remove_auto_add','2021-11-15 04:31:12.292557'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-15 04:31:12.303958'),(6,'contenttypes','0002_remove_content_type_name','2021-11-15 04:31:12.402217'),(7,'auth','0002_alter_permission_name_max_length','2021-11-15 04:31:12.427221'),(8,'auth','0003_alter_user_email_max_length','2021-11-15 04:31:12.448964'),(9,'auth','0004_alter_user_username_opts','2021-11-15 04:31:12.465497'),(10,'auth','0005_alter_user_last_login_null','2021-11-15 04:31:12.516077'),(11,'auth','0006_require_contenttypes_0002','2021-11-15 04:31:12.521738'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-15 04:31:12.539289'),(13,'auth','0008_alter_user_username_max_length','2021-11-15 04:31:12.558439'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-15 04:31:12.581416'),(15,'auth','0010_alter_group_name_max_length','2021-11-15 04:31:12.601003'),(16,'auth','0011_update_proxy_permissions','2021-11-15 04:31:12.613966'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-15 04:31:12.631521'),(18,'referral','0001_initial','2021-11-15 04:31:12.853467'),(19,'sessions','0001_initial','2021-11-15 04:31:12.905849');
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('m84fbxeil1i4j7yjn37e7z1dp8ehpqeq','.eJxVjMEOwiAQRP-FsyEsKSAevfsNZGEXqRpISntq_Hcl6UGPM-_N7CLgtpawdV7CTOIiQJx-u4jpyXUAemC9N5laXZc5yqHIg3Z5a8Sv6-H-HRTs5bueNCVMkA14Zyy6kZ2FSBOzsWdWmr33BEmBtaC8NphMBmaISJmceH8A4tk4MA:1mmUEZ:w2n_2oqjWwvXDHFnhTkPFEsZL29hZ64nK436x6nAf80','2021-11-29 05:08:47.198004'),('tu2iw32ddi4u6lvn3uflwycvplycwrnp','.eJxVjMEOwiAQRP-FsyEsKSAevfsNZGEXqRpISntq_Hcl6UGPM-_N7CLgtpawdV7CTOIiQJx-u4jpyXUAemC9N5laXZc5yqHIg3Z5a8Sv6-H-HRTs5bueNCVMkA14Zyy6kZ2FSBOzsWdWmr33BEmBtaC8NphMBmaISJmceH8A4tk4MA:1mnslp:ahv_pvkaU0z_RMFkf7aHhZ63-Sz2TaKlLKiCP16hz2M','2021-12-03 01:32:53.843609');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_person`
--

DROP TABLE IF EXISTS `referral_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `data_of_birth` date NOT NULL,
  `email` varchar(254) NOT NULL,
  `notes` longtext,
  `createdAt` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_person`
--

LOCK TABLES `referral_person` WRITE;
/*!40000 ALTER TABLE `referral_person` DISABLE KEYS */;
INSERT INTO `referral_person` VALUES (1,'Jodi','Conner','1993-07-13','Jodi.Conner@email.com','Jodi is extremely unlucky and is always getting sick.','2021-11-15 04:33:39.265556'),(2,'Jennifer','Hunt','1970-09-15','Jennifer.Hunt@email.com','Jennifer Hunt\'s records and stuff','2021-11-15 04:35:02.036628'),(3,'Sherri','Keller','1999-07-05','Sherri.Keller@email.com','Sherri Keller age 22.','2021-11-15 04:35:54.214096');
/*!40000 ALTER TABLE `referral_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_referral`
--

DROP TABLE IF EXISTS `referral_referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_referral` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `notes` longtext,
  `createdAt` datetime(6) NOT NULL,
  `person_id` bigint(20) NOT NULL,
  `referrer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `referral_referral_person_id_b625dca8_fk_referral_person_id` (`person_id`),
  KEY `referral_referral_referrer_id_a5dbe67b_fk_referral_referrer_id` (`referrer_id`),
  CONSTRAINT `referral_referral_person_id_b625dca8_fk_referral_person_id` FOREIGN KEY (`person_id`) REFERENCES `referral_person` (`id`),
  CONSTRAINT `referral_referral_referrer_id_a5dbe67b_fk_referral_referrer_id` FOREIGN KEY (`referrer_id`) REFERENCES `referral_referrer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_referral`
--

LOCK TABLES `referral_referral` WRITE;
/*!40000 ALTER TABLE `referral_referral` DISABLE KEYS */;
INSERT INTO `referral_referral` VALUES (1,'2021-09-10 00:00:00.000000','Jodie has been referred to because...','2021-11-15 04:39:30.656574',1,2),(2,'2021-01-07 00:00:00.000000','Jodie has been referred to because...','2021-11-15 04:39:56.884284',1,4),(3,'2021-11-30 00:00:00.000000','Jodie has been referred to because... Jodie is very accident-prone','2021-11-15 04:40:38.126981',1,3),(4,'2021-11-10 00:00:00.000000','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam feugiat eu magna quis pretium. Curabitur eget magna ex. Donec sed cursus nisi, ac facilisis risus. Quisque lobortis ipsum volutpat, varius sem vel, dapibus nisi. Nulla feugiat pulvinar ligula, nec bibendum nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin gravida tincidunt gravida','2021-11-15 04:42:14.590565',2,5),(5,'2021-07-08 00:00:00.000000','Sherri Keller age 22 and is perfectly healthy with no outstanding health issues.','2021-11-15 04:44:13.261500',3,1);
/*!40000 ALTER TABLE `referral_referral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_referrer`
--

DROP TABLE IF EXISTS `referral_referrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_referrer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(12) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_referrer`
--

LOCK TABLES `referral_referrer` WRITE;
/*!40000 ALTER TABLE `referral_referrer` DISABLE KEYS */;
INSERT INTO `referral_referrer` VALUES (1,'ORGANISATION','Australasia Health',NULL,'2021-11-15 04:36:47.613003'),(2,'ORGANISATION','Auckland Hospital',NULL,'2021-11-15 04:37:02.292340'),(3,'ORGANISATION','ACC',NULL,'2021-11-15 04:37:28.449410'),(4,'INDIVIDUAL','Dr James','Smith','2021-11-15 04:37:42.321804'),(5,'INDIVIDUAL','Dr Keller','Myers','2021-11-15 04:38:47.247552');
/*!40000 ALTER TABLE `referral_referrer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-19  2:01:38
