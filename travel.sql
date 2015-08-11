CREATE DATABASE  IF NOT EXISTS `travel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `travel`;
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: travel
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add booking_detail',8,'add_booking_detail'),(23,'Can change booking_detail',8,'change_booking_detail'),(24,'Can delete booking_detail',8,'delete_booking_detail'),(25,'Can add process_form',9,'add_process_form'),(26,'Can change process_form',9,'change_process_form'),(27,'Can delete process_form',9,'delete_process_form'),(28,'Can add transport',10,'add_transport'),(29,'Can change transport',10,'change_transport'),(30,'Can delete transport',10,'delete_transport'),(31,'Can add hotel',11,'add_hotel'),(32,'Can change hotel',11,'change_hotel'),(33,'Can delete hotel',11,'delete_hotel'),(34,'Can add passanger',12,'add_passanger'),(35,'Can change passanger',12,'change_passanger'),(36,'Can delete passanger',12,'delete_passanger'),(37,'Can add ventor',13,'add_ventor'),(38,'Can change ventor',13,'change_ventor'),(39,'Can delete ventor',13,'delete_ventor'),(40,'Can add ventor_details',14,'add_ventor_details'),(41,'Can change ventor_details',14,'change_ventor_details'),(42,'Can delete ventor_details',14,'delete_ventor_details'),(43,'Can add payment_detail',15,'add_payment_detail'),(44,'Can change payment_detail',15,'change_payment_detail'),(45,'Can delete payment_detail',15,'delete_payment_detail'),(46,'Can add payment_for_land',16,'add_payment_for_land'),(47,'Can change payment_for_land',16,'change_payment_for_land'),(48,'Can delete payment_for_land',16,'delete_payment_for_land'),(49,'Can add payment_recived',17,'add_payment_recived'),(50,'Can change payment_recived',17,'change_payment_recived'),(51,'Can delete payment_recived',17,'delete_payment_recived'),(52,'Can add expense',18,'add_expense'),(53,'Can change expense',18,'change_expense'),(54,'Can delete expense',18,'delete_expense'),(55,'Can add profit',19,'add_profit'),(56,'Can change profit',19,'change_profit'),(57,'Can delete profit',19,'delete_profit'),(58,'Can add invoice',20,'add_invoice'),(59,'Can change invoice',20,'change_invoice'),(60,'Can delete invoice',20,'delete_invoice'),(61,'Can add citylist',21,'add_citylist'),(62,'Can change citylist',21,'change_citylist'),(63,'Can delete citylist',21,'delete_citylist');
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
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','admin@admin.com','pbkdf2_sha256$10000$h5svU5iY5qcU$eT1Fb9Vfm2vJdt/dzZyuFvn1y3Omwk8S7GuQaA45dg0=',1,1,1,'2015-08-03 13:34:28','2015-08-03 11:11:18'),(2,'book','book','book','book@book.com','pbkdf2_sha256$10000$tAjgPG22y2bF$8VqkFrIbU0yoOhlo94C+CQZWtVtWUgl/yHTudgEJrfY=',1,1,0,'2015-08-03 13:20:31','2015-08-03 11:12:27'),(3,'process','process','process','processs@gmail.com','pbkdf2_sha256$10000$yE32wRnmAw0s$fYrorhlnfat9mFH7A6XX2Kt5gK7Jj5I1zRxWa5dC/sQ=',1,1,0,'2015-08-03 13:06:20','2015-08-03 11:14:13'),(4,'ventor','ventor','ventor','ventor@ventor.com','pbkdf2_sha256$10000$mxR8NXLm8QQv$Ye6u9trlXmtOxRbtegDIOGMoMI0Cu518SisUD8TyfdM=',1,1,0,'2015-08-03 13:11:00','2015-08-03 11:15:36');
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
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,22),(2,2,23),(6,3,26),(7,3,28),(8,3,29),(9,3,31),(3,3,32),(4,3,34),(5,3,35),(10,4,38),(11,4,40),(12,4,41),(13,4,43),(14,4,44),(15,4,46),(16,4,47),(17,4,49),(18,4,50),(19,4,52),(20,4,53);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_booking_detail`
--

DROP TABLE IF EXISTS `booking_booking_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_booking_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  `date_of_departure` date DEFAULT NULL,
  `no_of_days` int(11) NOT NULL,
  `meal_plan` varchar(50) NOT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `infant` int(11) NOT NULL,
  `accommodation` varchar(10) NOT NULL,
  `accommodation_type` varchar(10) NOT NULL,
  `flight` varchar(10) NOT NULL,
  `train` varchar(10) NOT NULL,
  `bus` varchar(10) NOT NULL,
  `car` varchar(10) NOT NULL,
  `group` varchar(10) NOT NULL,
  `meal_plan_dropdown` varchar(10) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `notes` longtext NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_booking_detail`
--

LOCK TABLES `booking_booking_detail` WRITE;
/*!40000 ALTER TABLE `booking_booking_detail` DISABLE KEYS */;
INSERT INTO `booking_booking_detail` VALUES (1,1,'test',500.00,'sdfs','test',1234567890,'author@gmail.com','2015-08-03',5,'mec',1,2,2,'hotel','3star','economy','','','','','ep','cheque/dd','dsfsf',1),(2,3,'holiday',6000.00,'test','test',1234567890,'test@gmail.com','2015-08-03',3,'mec',2,2,2,'hotel','3star','economy','','','','','cp','cheque/dd','sample',1),(3,2,'test',500.00,'test','test',123456789,'spmuthu21@gmail.com','2015-08-03',2,'mec',1,1,2,'hotel','3star','economy','','','','','cp','cheque/dd','asdasd',1),(4,4,'test',500.00,'sdfs','test',423423,'author@gmail.com','2015-08-03',4,'mec',1,1,2,'resort','2star','economy','','','','','ep','cheque/dd','sample',1),(5,5,'holiday',234.00,'test','test',423423,'processs@gmail.com','2015-08-03',3,'mec',2,2,2,'hotel','3star','economy','','','','','cp','cheque/dd','cdfsdf',1);
/*!40000 ALTER TABLE `booking_booking_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_expense`
--

DROP TABLE IF EXISTS `booking_expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `air` decimal(10,2) NOT NULL,
  `hotel` decimal(10,2) NOT NULL,
  `transfort` decimal(10,2) NOT NULL,
  `other` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_expense_d0087054` (`vendor_id`),
  CONSTRAINT `vendor_id_refs_id_2a6abbc` FOREIGN KEY (`vendor_id`) REFERENCES `booking_ventor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_expense`
--

LOCK TABLES `booking_expense` WRITE;
/*!40000 ALTER TABLE `booking_expense` DISABLE KEYS */;
INSERT INTO `booking_expense` VALUES (1,1,500.00,500.00,500.00,500.00),(2,1,500.00,500.00,500.00,500.00);
/*!40000 ALTER TABLE `booking_expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_hotel`
--

DROP TABLE IF EXISTS `booking_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `destination` varchar(50) NOT NULL,
  `hotel_name` varchar(50) NOT NULL,
  `checkin` varchar(50) NOT NULL,
  `checkout` varchar(50) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `meal_type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_hotel_e580efc4` (`process_id`),
  CONSTRAINT `process_id_refs_id_2ddb0fd4` FOREIGN KEY (`process_id`) REFERENCES `booking_process_form` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_hotel`
--

LOCK TABLES `booking_hotel` WRITE;
/*!40000 ALTER TABLE `booking_hotel` DISABLE KEYS */;
INSERT INTO `booking_hotel` VALUES (1,1,'2015-08-03','test','dfghfdgh','dfghdfh','hdghdfh','hfdghdfh','test','test'),(2,1,'2015-08-03','test','test','test','test','test','test','test');
/*!40000 ALTER TABLE `booking_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_invoice`
--

DROP TABLE IF EXISTS `booking_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `invoice_date` date NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_date` date NOT NULL,
  `pan` int(11) NOT NULL,
  `invoice_to` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `no_of_pax` int(11) NOT NULL,
  `package` longtext NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `service_charge` decimal(10,2) NOT NULL,
  `service_tax` decimal(10,2) NOT NULL,
  `total_value` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_invoice`
--

LOCK TABLES `booking_invoice` WRITE;
/*!40000 ALTER TABLE `booking_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_passanger`
--

DROP TABLE IF EXISTS `booking_passanger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_passanger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `passport` int(11) NOT NULL,
  `place_of_issue` varchar(50) NOT NULL,
  `date_of_issue` date DEFAULT NULL,
  `date_of_expiry` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_passanger_e580efc4` (`process_id`),
  CONSTRAINT `process_id_refs_id_2e4c190a` FOREIGN KEY (`process_id`) REFERENCES `booking_process_form` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_passanger`
--

LOCK TABLES `booking_passanger` WRITE;
/*!40000 ALTER TABLE `booking_passanger` DISABLE KEYS */;
INSERT INTO `booking_passanger` VALUES (1,1,'sample','male','2015-08-03',324324,'sample','2015-08-03','2015-08-03'),(2,1,'sample','female','2015-08-03',325325,'sample','2015-08-03','2015-08-03');
/*!40000 ALTER TABLE `booking_passanger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_payment_detail`
--

DROP TABLE IF EXISTS `booking_payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_payment_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `destination` varchar(50) NOT NULL,
  `vendor_name` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `made_of_pay` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_payment_detail_d0087054` (`vendor_id`),
  CONSTRAINT `vendor_id_refs_id_fb8d18c1` FOREIGN KEY (`vendor_id`) REFERENCES `booking_ventor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_payment_detail`
--

LOCK TABLES `booking_payment_detail` WRITE;
/*!40000 ALTER TABLE `booking_payment_detail` DISABLE KEYS */;
INSERT INTO `booking_payment_detail` VALUES (1,1,'2015-08-03','dasfas','sadfsa',123213,'cash'),(2,1,'2015-08-03','asdfsd','sadfsad',12312,'cash');
/*!40000 ALTER TABLE `booking_payment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_payment_for_land`
--

DROP TABLE IF EXISTS `booking_payment_for_land`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_payment_for_land` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `destination` varchar(50) NOT NULL,
  `visa_free` varchar(50) NOT NULL,
  `food` varchar(50) NOT NULL,
  `entry_fee` varchar(50) NOT NULL,
  `toll_fee` varchar(50) NOT NULL,
  `driver_fee` varchar(50) NOT NULL,
  `guide_fee` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_payment_for_land_d0087054` (`vendor_id`),
  CONSTRAINT `vendor_id_refs_id_425a67d` FOREIGN KEY (`vendor_id`) REFERENCES `booking_ventor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_payment_for_land`
--

LOCK TABLES `booking_payment_for_land` WRITE;
/*!40000 ALTER TABLE `booking_payment_for_land` DISABLE KEYS */;
INSERT INTO `booking_payment_for_land` VALUES (1,1,'2015-08-03','dsafsd','sdaf','sadfas','sadfas','sadfs','',''),(2,1,'2015-08-03','sadfsa','sadfsad','sadfas','sadfd','sadfasd','','');
/*!40000 ALTER TABLE `booking_payment_for_land` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_payment_recived`
--

DROP TABLE IF EXISTS `booking_payment_recived`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_payment_recived` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `made_of_pay` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_payment_recived_d0087054` (`vendor_id`),
  CONSTRAINT `vendor_id_refs_id_4766dded` FOREIGN KEY (`vendor_id`) REFERENCES `booking_ventor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_payment_recived`
--

LOCK TABLES `booking_payment_recived` WRITE;
/*!40000 ALTER TABLE `booking_payment_recived` DISABLE KEYS */;
INSERT INTO `booking_payment_recived` VALUES (1,1,'2015-08-03',500.00,'sadfsad'),(2,1,'2015-08-03',500.00,'sadfa');
/*!40000 ALTER TABLE `booking_payment_recived` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_process_form`
--

DROP TABLE IF EXISTS `booking_process_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_process_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  `date_of_departure` date DEFAULT NULL,
  `no_of_days` int(11) NOT NULL,
  `meal_plan` varchar(50) NOT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `infant` int(11) NOT NULL,
  `accommodation` varchar(10) NOT NULL,
  `accommodation_type` varchar(10) NOT NULL,
  `flight` varchar(10) NOT NULL,
  `train` varchar(10) NOT NULL,
  `bus` varchar(10) NOT NULL,
  `car` varchar(10) NOT NULL,
  `group` varchar(10) NOT NULL,
  `meal_plan_dropdown` varchar(10) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `notes` longtext NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `process_id` (`process_id`),
  CONSTRAINT `process_id_refs_id_c063a034` FOREIGN KEY (`process_id`) REFERENCES `booking_booking_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_process_form`
--

LOCK TABLES `booking_process_form` WRITE;
/*!40000 ALTER TABLE `booking_process_form` DISABLE KEYS */;
INSERT INTO `booking_process_form` VALUES (1,1,1,'test',500.00,'sdfs','test',1234567890,'author@gmail.com','2015-08-03',5,'mec',1,1,2,'hotel','3star','economy','','','','','ep','cheque/dd','dsfsf',1),(4,2,2,'test',500.00,'test','test',123456789,'spmuthu21@gmail.com','2015-08-03',2,'mec',1,1,2,'hotel','3star','economy','','','','','cp','cheque/dd','asdasd',0),(5,4,4,'test',500.00,'sdfs','test',423423,'author@gmail.com','2015-08-03',4,'mec',1,1,2,'resort','2star','economy','','','','','ep','cheque/dd','sample',0),(7,5,5,'holiday',234.00,'test','test',423423,'processs@gmail.com','2015-08-03',3,'mec',2,2,2,'hotel','3star','economy','','','','','cp','cheque/dd','cdfsdf',0);
/*!40000 ALTER TABLE `booking_process_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_profit`
--

DROP TABLE IF EXISTS `booking_profit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_profit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `total_expense` decimal(10,2) NOT NULL,
  `profit` decimal(10,2) NOT NULL,
  `percentage` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_profit_d0087054` (`vendor_id`),
  CONSTRAINT `vendor_id_refs_id_9457deff` FOREIGN KEY (`vendor_id`) REFERENCES `booking_ventor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_profit`
--

LOCK TABLES `booking_profit` WRITE;
/*!40000 ALTER TABLE `booking_profit` DISABLE KEYS */;
INSERT INTO `booking_profit` VALUES (1,1,500.00,500.00,500.00,'10');
/*!40000 ALTER TABLE `booking_profit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_transport`
--

DROP TABLE IF EXISTS `booking_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `destination` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `departure_time` datetime DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `cab_no` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_transport_e580efc4` (`process_id`),
  CONSTRAINT `process_id_refs_id_2fe16491` FOREIGN KEY (`process_id`) REFERENCES `booking_process_form` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_transport`
--

LOCK TABLES `booking_transport` WRITE;
/*!40000 ALTER TABLE `booking_transport` DISABLE KEYS */;
INSERT INTO `booking_transport` VALUES (1,1,'2015-08-03','test',2,'2015-08-03 23:36:55','2015-08-03 23:36:56','test',123456789,'2134213','test'),(2,1,'2015-08-03','test',2,'2015-08-03 23:37:24','2015-08-03 23:37:26','test',123456789,'123456','test'),(3,1,'2015-08-03','test',3,'2015-08-03 23:38:00','2015-08-03 23:38:01','test',12345678,'123456','test');
/*!40000 ALTER TABLE `booking_transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_ventor`
--

DROP TABLE IF EXISTS `booking_ventor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_ventor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  `date_of_departure` date DEFAULT NULL,
  `no_of_days` int(11) NOT NULL,
  `meal_plan` varchar(50) NOT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `infant` int(11) NOT NULL,
  `accommodation` varchar(10) NOT NULL,
  `accommodation_type` varchar(10) NOT NULL,
  `flight` varchar(10) NOT NULL,
  `train` varchar(10) NOT NULL,
  `bus` varchar(10) NOT NULL,
  `car` varchar(10) NOT NULL,
  `group` varchar(10) NOT NULL,
  `meal_plan_dropdown` varchar(10) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `notes` longtext NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `process_id` (`process_id`),
  CONSTRAINT `process_id_refs_id_fa2933` FOREIGN KEY (`process_id`) REFERENCES `booking_process_form` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_ventor`
--

LOCK TABLES `booking_ventor` WRITE;
/*!40000 ALTER TABLE `booking_ventor` DISABLE KEYS */;
INSERT INTO `booking_ventor` VALUES (1,1,1,'test',500.00,'sdfs','test',1234567890,'author@gmail.com','2015-08-03',5,'mec',1,1,2,'hotel','3star','economy','','','','','ep','','dsfsf',1);
/*!40000 ALTER TABLE `booking_ventor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_ventor_details`
--

DROP TABLE IF EXISTS `booking_ventor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_ventor_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `destination` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_ventor_details_d0087054` (`vendor_id`),
  CONSTRAINT `vendor_id_refs_id_d6fef160` FOREIGN KEY (`vendor_id`) REFERENCES `booking_ventor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_ventor_details`
--

LOCK TABLES `booking_ventor_details` WRITE;
/*!40000 ALTER TABLE `booking_ventor_details` DISABLE KEYS */;
INSERT INTO `booking_ventor_details` VALUES (1,1,'2015-08-03','sdfgsd','sdfsdf',21312),(2,1,'2015-08-03','dsfsdf','sdfsd',12312);
/*!40000 ALTER TABLE `booking_ventor_details` ENABLE KEYS */;
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
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-08-03 11:12:27',1,3,'2','book',1,''),(2,'2015-08-03 11:12:53',1,3,'2','book',2,'Changed password, first_name, last_name, email, is_staff and user_permissions.'),(3,'2015-08-03 11:14:14',1,3,'3','process',1,''),(4,'2015-08-03 11:15:16',1,3,'3','process',2,'Changed password, first_name, last_name, email, is_staff and user_permissions.'),(5,'2015-08-03 11:15:36',1,3,'4','ventor',1,''),(6,'2015-08-03 11:16:51',1,3,'4','ventor',2,'Changed password, first_name, last_name, email, is_staff and user_permissions.'),(7,'2015-08-03 11:18:37',2,8,'1','test',1,''),(8,'2015-08-03 13:04:05',2,8,'2','holiday',1,''),(9,'2015-08-03 13:09:42',3,9,'1','test',2,'Added transport \"Transport object\". Added transport \"Transport object\". Added transport \"Transport object\". Added hotel \"Hotel object\". Added hotel \"Hotel object\". Added passanger \"Passanger object\". Added passanger \"Passanger object\".'),(10,'2015-08-03 13:19:57',1,8,'3','test',1,''),(11,'2015-08-03 13:21:23',2,8,'4','test',1,''),(12,'2015-08-03 13:23:23',1,8,'5','holiday',1,''),(13,'2015-08-03 13:24:06',1,8,'5','holiday',2,'Changed booking_id.'),(14,'2015-08-03 13:27:23',1,13,'1','Ventor object',2,'Added ventor_details \"Ventor_details object\". Added ventor_details \"Ventor_details object\". Added payment_detail \"Payment_detail object\". Added payment_detail \"Payment_detail object\". Added payment_for_land \"Payment_for_land object\". Added payment_for_land \"Payment_for_land object\". Added payment_recived \"Payment_recived object\". Added payment_recived \"Payment_recived object\". Added expense \"expense object\". Added expense \"expense object\". Added profit \"Profit object\".');
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'booking_detail','booking','booking_detail'),(9,'process_form','booking','process_form'),(10,'transport','booking','transport'),(11,'hotel','booking','hotel'),(12,'passanger','booking','passanger'),(13,'ventor','booking','ventor'),(14,'ventor_details','booking','ventor_details'),(15,'payment_detail','booking','payment_detail'),(16,'payment_for_land','booking','payment_for_land'),(17,'payment_recived','booking','payment_recived'),(18,'expense','booking','expense'),(19,'profit','booking','profit'),(20,'invoice','booking','invoice'),(21,'citylist','hotels','citylist');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
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
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bb34803dbd8c46a0a2ba91f57b9aeab9','OWQzM2U3NDIyM2IwMDczM2Q2NzAyZWQ3NjNmZjkxNjAwYzUzZGNmNjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-08-17 13:34:28');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-10 14:49:23
