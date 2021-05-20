-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: rentall
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AdminPrivileges`
--

DROP TABLE IF EXISTS `AdminPrivileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AdminPrivileges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roleId` int NOT NULL,
  `previlegeId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `AdminPrivileges_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `AdminRoles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminPrivileges`
--

LOCK TABLES `AdminPrivileges` WRITE;
/*!40000 ALTER TABLE `AdminPrivileges` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdminPrivileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdminRoles`
--

DROP TABLE IF EXISTS `AdminRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AdminRoles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminRoles`
--

LOCK TABLES `AdminRoles` WRITE;
/*!40000 ALTER TABLE `AdminRoles` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdminRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdminUser`
--

DROP TABLE IF EXISTS `AdminUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AdminUser` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailConfirmed` tinyint(1) DEFAULT '0',
  `isSuperAdmin` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_user_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminUser`
--

LOCK TABLES `AdminUser` WRITE;
/*!40000 ALTER TABLE `AdminUser` DISABLE KEYS */;
INSERT INTO `AdminUser` VALUES ('6ee82f10-b422-11eb-8ca1-1ff08fb2b98b','hahz@blkluv.org','$2b$08$iw/1unBoRgSoME8HuuZNYOiApElatMyr6TjnXPhmq9XgS5N6M5zG2',1,1,'2021-05-13 22:10:59','2021-05-13 20:15:17',NULL),('6ee82f10-b422-11eb-8ca4-1ff08fb2b98c','serzh.shatohin@bk.ru','$2b$08$lJtSENOwkC/W64O62UAOtO..Vs9AJoxlq6MprpuRMRxffQNqA93uu',1,1,'2016-12-14 13:59:34','2016-12-14 13:59:34',NULL),('8b16c890-c205-11e6-a2c7-4195de507451','admin@radicalstart.com','$2a$08$SR.h58BFMCbcHbl3y9tvYe9UM.q1SMXh43M51po7FDXQrOcMpQxLy',1,1,'2021-05-13 21:37:28','2021-05-13 19:54:24',NULL);
/*!40000 ALTER TABLE `AdminUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Banner`
--

DROP TABLE IF EXISTS `Banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isEnable` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Banner`
--

LOCK TABLES `Banner` WRITE;
/*!40000 ALTER TABLE `Banner` DISABLE KEYS */;
INSERT INTO `Banner` VALUES (1,'NFT VACATION RENTALS','Home is where the ❤️ is',1,'2019-03-27 11:53:46','2021-05-13 22:43:52');
/*!40000 ALTER TABLE `Banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BedTypes`
--

DROP TABLE IF EXISTS `BedTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BedTypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `bedCount` int DEFAULT NULL,
  `bedType` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  KEY `bedType` (`bedType`),
  CONSTRAINT `BedTypes_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `BedTypes_ibfk_2` FOREIGN KEY (`bedType`) REFERENCES `ListSettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BedTypes`
--

LOCK TABLES `BedTypes` WRITE;
/*!40000 ALTER TABLE `BedTypes` DISABLE KEYS */;
INSERT INTO `BedTypes` VALUES (4,1,1,16,'2019-03-27 09:46:01','2019-03-27 09:46:01'),(5,1,2,17,'2019-03-27 09:46:01','2019-03-27 09:46:01'),(6,1,3,17,'2019-03-27 09:46:01','2019-03-27 09:46:01'),(41,7,1,16,'2019-03-27 10:09:36','2019-03-27 10:09:36'),(42,7,4,17,'2019-03-27 10:09:36','2019-03-27 10:09:36'),(43,7,2,16,'2019-03-27 10:09:36','2019-03-27 10:09:36'),(44,7,3,17,'2019-03-27 10:09:36','2019-03-27 10:09:36'),(45,7,5,18,'2019-03-27 10:09:36','2019-03-27 10:09:36'),(46,7,6,19,'2019-03-27 10:09:36','2019-03-27 10:09:36'),(49,6,1,16,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(50,6,2,16,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(51,5,1,16,'2019-07-04 10:57:10','2019-07-04 10:57:10'),(52,5,2,18,'2019-07-04 10:57:10','2019-07-04 10:57:10'),(53,5,3,18,'2019-07-04 10:57:10','2019-07-04 10:57:10'),(58,3,1,20,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(59,3,2,19,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(60,3,3,20,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(61,2,1,17,'2019-07-04 11:02:19','2019-07-04 11:02:19'),(62,2,2,16,'2019-07-04 11:02:19','2019-07-04 11:02:19'),(74,8,1,16,'2020-04-13 13:10:34','2020-04-13 13:10:34'),(75,8,2,20,'2020-04-13 13:10:34','2020-04-13 13:10:34'),(76,8,3,19,'2020-04-13 13:10:34','2020-04-13 13:10:34'),(77,8,4,19,'2020-04-13 13:10:34','2020-04-13 13:10:34'),(78,8,5,20,'2020-04-13 13:10:34','2020-04-13 13:10:34'),(79,4,1,16,'2020-08-10 07:12:12','2020-08-10 07:12:12');
/*!40000 ALTER TABLE `BedTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogDetails`
--

DROP TABLE IF EXISTS `BlogDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlogDetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pageTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isEnable` tinyint(1) NOT NULL DEFAULT '1',
  `footerCategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isPrivate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogDetails`
--

LOCK TABLES `BlogDetails` WRITE;
/*!40000 ALTER TABLE `BlogDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cancellation`
--

DROP TABLE IF EXISTS `Cancellation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cancellation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `policyName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `policyContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `priorDays` int NOT NULL,
  `accommodationPriorCheckIn` float NOT NULL,
  `accommodationBeforeCheckIn` float NOT NULL,
  `accommodationDuringCheckIn` float NOT NULL,
  `guestFeePriorCheckIn` float NOT NULL,
  `guestFeeBeforeCheckIn` float NOT NULL,
  `guestFeeDuringCheckIn` float NOT NULL,
  `hostFeePriorCheckIn` float NOT NULL,
  `hostFeeBeforeCheckIn` float NOT NULL,
  `hostFeeDuringCheckIn` float NOT NULL,
  `isEnable` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `nonRefundableNightsPriorCheckIn` int DEFAULT '0',
  `nonRefundableNightsBeforeCheckIn` int DEFAULT '1',
  `nonRefundableNightsDuringCheckIn` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancellation`
--

LOCK TABLES `Cancellation` WRITE;
/*!40000 ALTER TABLE `Cancellation` DISABLE KEYS */;
INSERT INTO `Cancellation` VALUES (1,'Flexible','Cancel up to 1 day prior to arrival and get a 100% refund',1,100,100,100,100,100,0,100,100,100,1,'2017-06-09 22:43:35','2017-06-09 22:43:35',0,1,0),(2,'Moderate','Cancel up to 5 days prior to arrival and get a 50% refund',5,100,50,50,100,100,0,100,100,100,1,'2017-06-09 22:46:10','2017-06-09 22:46:10',0,1,0),(3,'Strict','Cancel up to 7 days prior to arrival and get a 50% refund',7,50,0,0,100,100,0,100,100,100,1,'2017-06-09 22:47:38','2017-06-09 22:47:38',0,0,0);
/*!40000 ALTER TABLE `Cancellation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CancellationDetails`
--

DROP TABLE IF EXISTS `CancellationDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CancellationDetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reservationId` int NOT NULL,
  `cancellationPolicy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refundToGuest` float NOT NULL,
  `payoutToHost` float NOT NULL,
  `guestServiceFee` float NOT NULL,
  `hostServiceFee` float NOT NULL,
  `total` float NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancelledBy` enum('host','guest') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservationId` (`reservationId`),
  CONSTRAINT `CancellationDetails_ibfk_1` FOREIGN KEY (`reservationId`) REFERENCES `Reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CancellationDetails`
--

LOCK TABLES `CancellationDetails` WRITE;
/*!40000 ALTER TABLE `CancellationDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `CancellationDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `countryCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countryName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isEnable` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime DEFAULT '2018-09-29 11:22:19',
  `updatedAt` datetime DEFAULT '2018-09-29 11:22:19',
  `dialCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'DZ','Algeria',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+213'),(2,'AF','Afghanistan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+93'),(3,'AL','Albania',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+355'),(4,'AS','AmericanSamoa',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 684'),(5,'AD','Andorra',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+376'),(6,'AO','Angola',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+244'),(7,'AI','Anguilla',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 264'),(8,'AQ','Antarctica',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+672'),(9,'AG','Antigua and Barbuda',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1268'),(10,'AR','Argentina',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+54'),(11,'AM','Armenia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+374'),(12,'AW','Aruba',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+297'),(13,'AU','Australia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+61'),(14,'AT','Austria',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+43'),(15,'AZ','Azerbaijan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+994'),(16,'BS','Bahamas',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 242'),(17,'BH','Bahrain',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+973'),(18,'BD','Bangladesh',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+880'),(19,'BB','Barbados',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 246'),(20,'BY','Belarus',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+375'),(21,'BE','Belgium',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+32'),(22,'BZ','Belize',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+501'),(23,'BJ','Benin',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+229'),(24,'BM','Bermuda',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 441'),(25,'BT','Bhutan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+975'),(26,'BO','Bolivia, Plurinational State of',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+591'),(27,'BA','Bosnia and Herzegovina',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+387'),(28,'BW','Botswana',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+267'),(29,'BR','Brazil',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+55'),(30,'IO','British Indian Ocean Territory',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+246'),(31,'BN','Brunei Darussalam',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+673'),(32,'BG','Bulgaria',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+359'),(33,'BF','Burkina Faso',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+226'),(34,'BI','Burundi',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+257'),(35,'KH','Cambodia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+855'),(36,'CM','Cameroon',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+237'),(37,'CA','Canada',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1'),(38,'CV','Cape Verde',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+238'),(39,'KY','Cayman Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+ 345'),(40,'CF','Central African Republic',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+236'),(41,'TD','Chad',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+235'),(42,'CL','Chile',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+56'),(43,'CN','China',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+86'),(44,'CX','Christmas Island',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+61'),(45,'CC','Cocos (Keeling) Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+61'),(46,'CO','Colombia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+57'),(47,'KM','Comoros',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+269'),(48,'CG','Congo',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+242'),(49,'CD','Congo, The Democratic Republic of the',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+243'),(50,'CK','Cook Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+682'),(51,'CR','Costa Rica',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+506'),(52,'CI','Cote d\'Ivoire',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+225'),(53,'HR','Croatia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+385'),(54,'CU','Cuba',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+53'),(55,'CY','Cyprus',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+357'),(56,'CZ','Czech Republic',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+420'),(57,'DK','Denmark',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+45'),(58,'DJ','Djibouti',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+253'),(59,'DM','Dominica',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 767'),(60,'DO','Dominican Republic',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 849'),(61,'EC','Ecuador',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+593'),(62,'EG','Egypt',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+20'),(63,'SV','El Salvador',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+503'),(64,'GQ','Equatorial Guinea',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+240'),(65,'ER','Eritrea',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+291'),(66,'EE','Estonia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+372'),(67,'ET','Ethiopia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+251'),(68,'FK','Falkland Islands (Malvinas)',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+500'),(69,'FO','Faroe Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+298'),(70,'FJ','Fiji',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+679'),(71,'FI','Finland',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+358'),(72,'FR','France',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+33'),(73,'GF','French Guiana',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+594'),(74,'PF','French Polynesia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+689'),(75,'GA','Gabon',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+241'),(76,'GM','Gambia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+220'),(77,'GE','Georgia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+995'),(78,'DE','Germany',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+49'),(79,'GH','Ghana',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+233'),(80,'GI','Gibraltar',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+350'),(81,'GR','Greece',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+30'),(82,'GL','Greenland',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+299'),(83,'GD','Grenada',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 473'),(84,'GP','Guadeloupe',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+590'),(85,'GU','Guam',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 671'),(86,'GT','Guatemala',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+502'),(87,'GG','Guernsey',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+44'),(88,'GN','Guinea',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+224'),(89,'GW','Guinea-Bissau',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+245'),(90,'GY','Guyana',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+595'),(91,'HT','Haiti',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+509'),(92,'VA','Holy See (Vatican City State)',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+379'),(93,'HN','Honduras',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+504'),(94,'HK','Hong Kong',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+852'),(95,'HU','Hungary',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+36'),(96,'IS','Iceland',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+354'),(97,'IN','India',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+91'),(98,'ID','Indonesia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+62'),(99,'IR','Iran, Islamic Republic of',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+98'),(100,'IQ','Iraq',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+964'),(101,'IE','Ireland',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+353'),(102,'IM','Isle of Man',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+44'),(103,'IL','Israel',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+972'),(104,'IT','Italy',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+39'),(105,'JM','Jamaica',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 876'),(106,'JP','Japan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+81'),(107,'JE','Jersey',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+44'),(108,'JO','Jordan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+962'),(109,'KZ','Kazakhstan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+7 7'),(110,'KE','Kenya',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+254'),(111,'KI','Kiribati',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+686'),(112,'KP','Korea, Democratic People\'s Republic of',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+850'),(113,'KR','Korea, Republic of',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+82'),(114,'KW','Kuwait',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+965'),(115,'KG','Kyrgyzstan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+996'),(116,'LA','Lao People\'s Democratic Republic',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+856'),(117,'LV','Latvia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+371'),(118,'LB','Lebanon',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+961'),(119,'LS','Lesotho',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+266'),(120,'LR','Liberia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+231'),(121,'LY','Libyan Arab Jamahiriya',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+218'),(122,'LI','Liechtenstein',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+423'),(123,'LT','Lithuania',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+370'),(124,'LU','Luxembourg',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+352'),(125,'MO','Macao',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+853'),(126,'MK','Macedonia, The Former Yugoslav Republic of',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+389'),(127,'MG','Madagascar',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+261'),(128,'MW','Malawi',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+265'),(129,'MY','Malaysia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+60'),(130,'MV','Maldives',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+960'),(131,'ML','Mali',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+223'),(132,'MT','Malta',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+356'),(133,'MH','Marshall Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+692'),(134,'MQ','Martinique',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+596'),(135,'MR','Mauritania',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+222'),(136,'MU','Mauritius',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+230'),(137,'YT','Mayotte',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+262'),(138,'MX','Mexico',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+52'),(139,'FM','Micronesia, Federated States of',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+691'),(140,'MD','Moldova, Republic of',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+373'),(141,'MC','Monaco',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+377'),(142,'MN','Mongolia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+976'),(143,'ME','Montenegro',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+382'),(144,'MS','Montserrat',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1664'),(145,'MA','Morocco',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+212'),(146,'MZ','Mozambique',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+258'),(147,'MM','Myanmar',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+95'),(148,'NA','Namibia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+264'),(149,'NR','Nauru',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+674'),(150,'NP','Nepal',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+977'),(151,'NL','Netherlands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+31'),(152,'AN','Netherlands Antilles',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+599'),(153,'NC','New Caledonia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+687'),(154,'NZ','New Zealand',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+64'),(155,'NI','Nicaragua',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+505'),(156,'NE','Niger',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+227'),(157,'NG','Nigeria',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+234'),(158,'NU','Niue',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+683'),(159,'NF','Norfolk Island',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+672'),(160,'MP','Northern Mariana Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 670'),(161,'NO','Norway',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+47'),(162,'OM','Oman',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+968'),(163,'PK','Pakistan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+92'),(164,'PW','Palau',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+680'),(165,'PS','Palestinian Territory, Occupied',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+970'),(166,'PA','Panama',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+507'),(167,'PG','Papua New Guinea',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+675'),(168,'PY','Paraguay',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+595'),(169,'PE','Peru',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+51'),(170,'PH','Philippines',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+63'),(171,'PN','Pitcairn',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+872'),(172,'PL','Poland',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+48'),(173,'PT','Portugal',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+351'),(174,'PR','Puerto Rico',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 939'),(175,'QA','Qatar',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+974'),(176,'RO','Romania',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+40'),(177,'RU','Russia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+7'),(178,'RW','Rwanda',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+250'),(179,'RE','Réunion',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+262'),(180,'BL','Saint Barthélemy',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+590'),(181,'SH','Saint Helena, Ascension and Tristan Da Cunha',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+290'),(182,'KN','Saint Kitts and Nevis',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 869'),(183,'LC','Saint Lucia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 758'),(184,'MF','Saint Martin',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+590'),(185,'PM','Saint Pierre and Miquelon',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+508'),(186,'VC','Saint Vincent and the Grenadines',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 784'),(187,'WS','Samoa',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+685'),(188,'SM','San Marino',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+378'),(189,'ST','Sao Tome and Principe',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+239'),(190,'SA','Saudi Arabia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+966'),(191,'SN','Senegal',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+221'),(192,'RS','Serbia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+381'),(193,'SC','Seychelles',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+248'),(194,'SL','Sierra Leone',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+232'),(195,'SG','Singapore',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+65'),(196,'SK','Slovakia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+421'),(197,'SI','Slovenia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+386'),(198,'SB','Solomon Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+677'),(199,'SO','Somalia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+252'),(200,'ZA','South Africa',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+27'),(201,'GS','South Georgia and the South Sandwich Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+500'),(202,'ES','Spain',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+34'),(203,'LK','Sri Lanka',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+94'),(204,'SD','Sudan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+249'),(205,'SR','Suriname',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+597'),(206,'SJ','Svalbard and Jan Mayen',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+47'),(207,'SZ','Swaziland',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+268'),(208,'SE','Sweden',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+46'),(209,'CH','Switzerland',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+41'),(210,'SY','Syrian Arab Republic',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+963'),(211,'TW','Taiwan, Province of China',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+886'),(212,'TJ','Tajikistan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+992'),(213,'TZ','Tanzania, United Republic of',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+255'),(214,'TH','Thailand',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+66'),(215,'TL','Timor-Leste',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+670'),(216,'TG','Togo',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+228'),(217,'TK','Tokelau',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+690'),(218,'TO','Tonga',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+676'),(219,'TT','Trinidad and Tobago',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 868'),(220,'TN','Tunisia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+216'),(221,'TR','Turkey',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+90'),(222,'TM','Turkmenistan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+993'),(223,'TC','Turks and Caicos Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 649'),(224,'TV','Tuvalu',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+688'),(225,'UG','Uganda',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+256'),(226,'UA','Ukraine',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+380'),(227,'AE','United Arab Emirates',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+971'),(228,'GB','United Kingdom',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+44'),(229,'US','United States',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1'),(230,'UY','Uruguay',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+598'),(231,'UZ','Uzbekistan',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+998'),(232,'VU','Vanuatu',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+678'),(233,'VE','Venezuela, Bolivarian Republic of',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+58'),(234,'VN','Viet Nam',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+84'),(235,'VG','Virgin Islands, British',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 284'),(236,'VI','Virgin Islands, U.S.',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+1 340'),(237,'WF','Wallis and Futuna',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+681'),(238,'YE','Yemen',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+967'),(239,'ZM','Zambia',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+260'),(240,'ZW','Zimbabwe',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+263'),(241,'AX','Åland Islands',1,'2019-03-27 11:53:47','2018-09-29 11:22:19','+358');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Currencies`
--

DROP TABLE IF EXISTS `Currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isEnable` tinyint(1) NOT NULL DEFAULT '1',
  `isBaseCurrency` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isPayment` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Currencies`
--

LOCK TABLES `Currencies` WRITE;
/*!40000 ALTER TABLE `Currencies` DISABLE KEYS */;
INSERT INTO `Currencies` VALUES (1,'AUD',1,0,'2019-03-27 11:53:47','2021-05-13 22:40:03',0),(2,'BGN',1,0,'2019-03-27 11:53:47','2021-05-13 22:40:07',0),(3,'BRL',1,0,'2019-03-27 11:53:47','2021-05-13 22:40:07',0),(4,'CAD',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(5,'CHF',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(6,'CNY',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(7,'CZK',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(8,'DKK',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(9,'EUR',1,0,'2019-03-27 11:53:47','2021-05-13 22:40:05',0),(10,'GBP',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(11,'HKD',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(12,'HRK',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(13,'HUF',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(14,'IDR',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(15,'ILS',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(16,'INR',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(17,'JPY',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(18,'KRW',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(19,'MXN',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(20,'MYR',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(21,'NOK',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(22,'NZD',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(23,'PHP',1,0,'2019-03-27 11:53:47','2021-05-13 22:40:03',0),(24,'PLN',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(25,'RON',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(26,'RUB',1,0,'2019-03-27 11:53:47','2021-05-13 22:40:02',0),(27,'SEK',1,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0),(28,'SGD',1,0,'2019-03-27 11:53:47','2021-05-13 22:40:01',0),(29,'THB',1,0,'2019-03-27 11:53:47','2021-05-13 22:40:00',0),(30,'TRY',1,0,'2019-03-27 11:53:47','2021-05-13 22:39:58',0),(31,'USD',1,1,'2019-03-27 11:53:47','2018-05-02 04:52:36',1),(32,'ZAR',0,0,'2019-03-27 11:53:47','2018-05-02 04:52:36',0);
/*!40000 ALTER TABLE `Currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CurrencyRates`
--

DROP TABLE IF EXISTS `CurrencyRates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CurrencyRates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `currencyCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` float NOT NULL,
  `isBase` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CurrencyRates`
--

LOCK TABLES `CurrencyRates` WRITE;
/*!40000 ALTER TABLE `CurrencyRates` DISABLE KEYS */;
INSERT INTO `CurrencyRates` VALUES (1,'AED',3.673,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(2,'AFN',77.5,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(3,'ALL',100.75,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(4,'AMD',521.883,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(5,'ANG',1.79493,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(6,'AOA',654.023,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(7,'ARS',94.1762,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(8,'AUD',1.28217,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(9,'AWG',1.8,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(10,'AZN',1.7008,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(11,'BAM',1.60205,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(12,'BBD',2,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(13,'BDT',84.7912,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(14,'BGN',1.60011,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(15,'BHD',0.376994,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(16,'BIF',1972,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(17,'BMD',1,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(18,'BND',1.33057,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(19,'BOB',6.89465,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(20,'BRL',5.2533,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(21,'BSD',1,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(22,'BTN',72.9482,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(23,'BWP',10.7721,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(24,'BYN',2.5146,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(25,'BYR',25146,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(26,'BZD',2.0156,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(27,'CAD',1.20584,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(28,'CDF',2000,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(29,'CHF',0.897479,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(30,'CLF',0.025814,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(31,'CLP',712.299,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(32,'CNY',6.4252,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(33,'COP',3679.63,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(34,'CRC',614.385,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(35,'CUC',1,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(36,'CVE',90.975,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(37,'CZK',20.7758,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(38,'DJF',178.025,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(39,'DKK',6.0819,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(40,'DOP',56.915,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(41,'DZD',133.222,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(42,'EGP',15.6815,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(43,'ERN',15.002,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(44,'ETB',42.6,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(45,'EUR',0.817852,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(46,'FJD',2.04338,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(47,'FKP',0.704776,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(48,'GBP',0.704776,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(49,'GEL',3.39,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(50,'GHS',5.76,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(51,'GIP',0.704776,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(52,'GMD',51.2,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(53,'GNF',9870,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(54,'GTQ',7.70967,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(55,'GYD',209.022,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(56,'HKD',7.76595,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(57,'HNL',24.13,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(58,'HRK',6.1512,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(59,'HTG',89.9962,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(60,'HUF',286.752,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(61,'IDR',14316.6,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(62,'ILS',3.25353,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(63,'INR',73.0971,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(64,'IQD',1462.5,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(65,'ISK',122.93,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(66,'JMD',149.993,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(67,'JOD',0.709,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(68,'JPY',108.906,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(69,'KES',107.5,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(70,'KGS',84.517,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(71,'KHR',4072.5,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(72,'KMF',404.225,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(73,'KRW',1126.62,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(74,'KWD',0.300507,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(75,'KYD',0.833286,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(76,'KZT',426.734,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(77,'LAK',9440,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(78,'LBP',1514.83,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(79,'LKR',196.991,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(80,'LRD',171.7,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(81,'LSL',14.01,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(82,'LYD',4.465,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(83,'MAD',8.8,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(84,'MDL',17.6648,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(85,'MGA',3745,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(86,'MKD',50.7042,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(87,'MMK',1557.78,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(88,'MNT',2850.96,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(89,'MOP',7.99808,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(90,'MRO',357,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(91,'MUR',40.296,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(92,'MVR',15.4625,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(93,'MWK',795,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(94,'MXN',19.815,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(95,'MYR',4.1265,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(96,'MZN',59.35,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(97,'NAD',14.06,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(98,'NGN',412.5,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(99,'NIO',35.25,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(100,'NOK',8.21646,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(101,'NPR',116.717,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(102,'NZD',1.37989,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(103,'OMR',0.385017,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(104,'PAB',1,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(105,'PEN',3.743,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(106,'PGK',3.525,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(107,'PHP',47.8668,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(108,'PKR',152.92,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(109,'PLN',3.69689,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(110,'PYG',6725.12,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(111,'QAR',3.641,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(112,'RON',4.0295,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(113,'RSD',96.3034,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(114,'RUB',73.6375,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(115,'RWF',987.5,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(116,'SAR',3.75051,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(117,'SBD',7.98406,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(118,'SCR',16.4261,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(119,'SEK',8.28269,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(120,'SHP',0.704776,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(121,'SLL',10232,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(122,'SOS',585,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(123,'SRD',14.154,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(124,'SSP',130.26,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(125,'STD',20736.9,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(126,'SVC',8.74979,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(127,'SZL',14.01,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(128,'THB',31.41,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(129,'TJS',11.4045,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(130,'TMT',3.5,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(131,'TND',2.727,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(132,'TOP',2.2485,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(133,'TRY',8.3571,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(134,'TTD',6.78596,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(135,'TWD',27.9473,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(136,'TZS',2318.9,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(137,'UAH',27.5437,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(138,'UGX',3532.84,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(139,'UYU',44.195,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(140,'UZS',10572,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(141,'VES',2952150,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(142,'VND',23006.3,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(143,'VUV',108.219,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(144,'WST',2.51332,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(145,'XAF',536.476,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(146,'XAG',0.0354566,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(147,'XAU',0.00053491,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(148,'XCD',2.70255,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(149,'XDR',0.69383,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(150,'XOF',536.476,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(151,'XPD',0.00034382,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(152,'XPF',97.5957,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(153,'XPT',0.000816,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(154,'YER',250,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(155,'ZAR',13.9861,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(156,'ZMW',22.459,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(157,'JEP',0.704776,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(158,'GGP',0.704776,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(159,'IMP',0.704776,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(160,'GBX',8.20702,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(161,'CNH',6.41917,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(162,'MTL',0.306149,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(163,'ZWL',322,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(164,'SGD',1.3291,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(165,'USD',1,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(166,'BTC',0.0000231081,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(167,'BCH',0.000911885,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(168,'BSV',0.00342244,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(169,'ETH',0.00029412,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(170,'ETH2',0.00029412,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(171,'ETC',0.0113913,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(172,'LTC',0.00339144,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(173,'ZRX',0.627818,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(174,'USDC',1,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(175,'BAT',0.914302,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(176,'MANA',0.889869,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(177,'KNC',0.351272,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(178,'LINK',0.023285,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(179,'DNT',3.72912,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(180,'MKR',0.000207701,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(181,'CVC',2.38168,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(182,'OMG',0.114436,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(183,'DAI',0.999256,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(184,'ZEC',0.00398327,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(185,'REP',0.0277932,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(186,'XLM',1.54053,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(187,'EOS',0.108032,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(188,'XTZ',0.173256,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(189,'ALGO',0.736757,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(190,'DASH',0.00326279,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(191,'ATOM',0.0443017,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(192,'OXT',1.85598,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(193,'COMP',0.00149941,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(194,'ENJ',0.525348,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(195,'BAND',0.0760043,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(196,'NMR',0.0162458,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(197,'CGLD',0.18531,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(198,'UMA',0.0395062,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(199,'LRC',1.85185,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(200,'YFI',0.0000137536,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(201,'UNI',0.0285493,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(202,'BAL',0.0197859,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(203,'REN',1.321,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(204,'WBTC',0.0000230842,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(205,'NU',2.47678,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(206,'FIL',0.0100361,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(207,'AAVE',0.001531,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(208,'BNT',0.149306,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(209,'GRT',0.824334,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(210,'SNX',0.0405653,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(211,'STORJ',0.646141,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(212,'SUSHI',0.0467792,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(213,'MATIC',0.391374,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(214,'SKL',1.82966,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(215,'ADA',0.491558,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(216,'ANKR',6.35991,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(217,'CRV',0.291167,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(218,'ICP',0.0058629,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(219,'NKN',1.87617,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(220,'OGN',0.867303,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(221,'1INCH',0.194989,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(222,'USDT',0.999251,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(223,'FORTH',0.0339697,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(224,'CTSI',0.889499,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(225,'TRB',0.0115079,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(226,'MIR',0.133717,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(227,'RLC',0.137845,0,'2021-05-18 20:00:00','2021-05-18 20:00:00'),(228,'USD',1,1,'2021-05-18 20:00:00','2021-05-18 20:00:00');
/*!40000 ALTER TABLE `CurrencyRates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentVerification`
--

DROP TABLE IF EXISTS `DocumentVerification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DocumentVerification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `documentStatus` enum('pending','approved') DEFAULT 'pending',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentVerification`
--

LOCK TABLES `DocumentVerification` WRITE;
/*!40000 ALTER TABLE `DocumentVerification` DISABLE KEYS */;
/*!40000 ALTER TABLE `DocumentVerification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailToken`
--

DROP TABLE IF EXISTS `EmailToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmailToken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `EmailToken_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailToken`
--

LOCK TABLES `EmailToken` WRITE;
/*!40000 ALTER TABLE `EmailToken` DISABLE KEYS */;
INSERT INTO `EmailToken` VALUES (1,'d1d6d5a0-5064-11e9-a14e-635e0fd3bfa6','demo@radicalstart.com','1553672955896','2019-03-27 07:49:16','2019-03-27 07:49:16'),(2,'977bc550-5069-11e9-a14e-635e0fd3bfa6','qa@radicalstart.com','1553675005475','2019-03-27 08:23:25','2019-03-27 08:23:25');
/*!40000 ALTER TABLE `EmailToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FailedTransactionHistory`
--

DROP TABLE IF EXISTS `FailedTransactionHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FailedTransactionHistory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reservationId` int NOT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `amount` float NOT NULL,
  `currency` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `paymentMethodId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservationId` (`reservationId`),
  CONSTRAINT `failedtransactionhistory_ibfk_1` FOREIGN KEY (`reservationId`) REFERENCES `Reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FailedTransactionHistory`
--

LOCK TABLES `FailedTransactionHistory` WRITE;
/*!40000 ALTER TABLE `FailedTransactionHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `FailedTransactionHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FooterBlock`
--

DROP TABLE IF EXISTS `FooterBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FooterBlock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title1` varchar(255) NOT NULL,
  `content1` text NOT NULL,
  `title2` varchar(255) NOT NULL,
  `content2` text NOT NULL,
  `title3` varchar(255) NOT NULL,
  `content3` text NOT NULL,
  `isEnable` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FooterBlock`
--

LOCK TABLES `FooterBlock` WRITE;
/*!40000 ALTER TABLE `FooterBlock` DISABLE KEYS */;
INSERT INTO `FooterBlock` VALUES (1,'NO FEES','We have 0% platform fees for hosts and guests. No middleman is needed for your rental.','NO FORMS','We replaced outdated forms with blockchain smart contracts to simplify your booking experience. Your NFT is all the paperwork that you need.','NO KEYS ','All you need to do is buy your LUV NFT and scan your QR code upon arrival. Your RENT LUV NFT is your ID.',1,'2018-05-22 11:12:19','2021-05-13 22:51:22'),(2,'one','hkh','one ','jkjh','one ','nknk',1,'2018-05-22 11:14:18','2018-05-22 11:14:18'),(3,'one','hkhih','one ','nhjlkhk','one ','klnklh',1,'2018-05-22 11:15:07','2018-05-22 11:15:07'),(4,'fdf','fdsfds','fdsfd','fdsfds','fdsff','fdssdfds',1,'2018-05-22 11:34:58','2018-05-22 11:34:58'),(5,'fdf','fdsfds','fdsfd','fdsfds','fdsff','fdss',1,'2018-05-22 11:35:14','2018-05-22 11:35:14'),(6,'fdf','fdsfds','fdsf','fdsfd','fds','fdss',1,'2018-05-22 11:39:06','2018-05-22 11:39:06');
/*!40000 ALTER TABLE `FooterBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ForgotPassword`
--

DROP TABLE IF EXISTS `ForgotPassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ForgotPassword` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `ForgotPassword_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ForgotPassword`
--

LOCK TABLES `ForgotPassword` WRITE;
/*!40000 ALTER TABLE `ForgotPassword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ForgotPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomeBanner`
--

DROP TABLE IF EXISTS `HomeBanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HomeBanner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `enable` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomeBanner`
--

LOCK TABLES `HomeBanner` WRITE;
/*!40000 ALTER TABLE `HomeBanner` DISABLE KEYS */;
INSERT INTO `HomeBanner` VALUES (3,'368bae930482d951c44ff6585787944e.jpeg',1,'2019-09-06 06:47:24','2019-09-06 06:47:24');
/*!40000 ALTER TABLE `HomeBanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageBanner`
--

DROP TABLE IF EXISTS `ImageBanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ImageBanner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buttonLabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageBanner`
--

LOCK TABLES `ImageBanner` WRITE;
/*!40000 ALTER TABLE `ImageBanner` DISABLE KEYS */;
INSERT INTO `ImageBanner` VALUES (1,'THE SMART CONTRACT WAY OF RENTING','Renting with blockchain technology makes the process simple and seamless','LEARN MORE','e2a09ac3819002edffd36a2d61e8c5c5.jpeg','2019-03-27 11:53:47','2021-05-13 22:47:23');
/*!40000 ALTER TABLE `ImageBanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListBlockedDates`
--

DROP TABLE IF EXISTS `ListBlockedDates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListBlockedDates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `reservationId` int DEFAULT NULL,
  `blockedDates` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `calendarId` int DEFAULT NULL,
  `calendarStatus` enum('available','blocked','reservation') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isSpecialPrice` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  KEY `reservationId` (`reservationId`),
  CONSTRAINT `ListBlockedDates_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ListBlockedDates_ibfk_2` FOREIGN KEY (`reservationId`) REFERENCES `Reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListBlockedDates`
--

LOCK TABLES `ListBlockedDates` WRITE;
/*!40000 ALTER TABLE `ListBlockedDates` DISABLE KEYS */;
INSERT INTO `ListBlockedDates` VALUES (1,7,NULL,'2019-07-04','2019-07-04 06:49:04','2019-07-04 06:56:10',NULL,'blocked',10),(2,7,NULL,'2019-07-05','2019-07-04 06:49:04','2019-07-04 06:56:10',NULL,'blocked',10);
/*!40000 ALTER TABLE `ListBlockedDates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListCalendar`
--

DROP TABLE IF EXISTS `ListCalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListCalendar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  CONSTRAINT `ListCalendar_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListCalendar`
--

LOCK TABLES `ListCalendar` WRITE;
/*!40000 ALTER TABLE `ListCalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `ListCalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListPhotos`
--

DROP TABLE IF EXISTS `ListPhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListPhotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `isCover` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  CONSTRAINT `ListPhotos_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListPhotos`
--

LOCK TABLES `ListPhotos` WRITE;
/*!40000 ALTER TABLE `ListPhotos` DISABLE KEYS */;
INSERT INTO `ListPhotos` VALUES (57,1,'dcda484c967e8df86e64f0f394498c6b.jpeg','image/jpeg',0,'2020-01-23 05:36:39','2020-01-23 05:36:39'),(58,1,'394d7c5d3da2621b559887435d8011d0.jpeg','image/jpeg',0,'2020-01-23 05:36:39','2020-01-23 05:36:39'),(60,1,'8698cc427d4e10b7eb6aaf5038db0040.jpeg','image/jpeg',0,'2020-01-23 05:36:39','2020-01-23 05:36:39'),(61,2,'77d1573a6965309f7a2c23ea11cef7e0.jpeg','image/jpeg',0,'2020-01-23 05:37:31','2020-01-23 05:37:31'),(62,2,'afd75f9701dbf592ce119162fc3e38b7.jpeg','image/jpeg',0,'2020-01-23 05:37:31','2020-01-23 05:37:31'),(63,2,'866f343a16430b0a9b97bfd3b1b6a587.jpeg','image/jpeg',0,'2020-01-23 05:37:31','2020-01-23 05:37:31'),(64,2,'b486b9fc9dde068102e964f37b5ff855.jpeg','image/jpeg',0,'2020-01-23 05:37:31','2020-01-23 05:37:31'),(65,3,'da06a23c01f8a092370cea8803249b4f.jpeg','image/jpeg',0,'2020-01-23 05:38:35','2020-01-23 05:38:35'),(67,3,'8e3a897a800f2c828a16032533a5f209.jpeg','image/jpeg',0,'2020-01-23 05:38:35','2020-01-23 05:38:35'),(68,3,'db757d32c2f546843c4ee734641c53c5.jpeg','image/jpeg',0,'2020-01-23 05:38:35','2020-01-23 05:38:35'),(69,3,'3628f4dc2294d66e680ccf7bb41682f9.jpeg','image/jpeg',0,'2020-01-23 05:38:35','2020-01-23 05:38:35'),(70,3,'27acc79bfce120f16cea205e51a3f324.jpeg','image/jpeg',0,'2020-01-23 05:39:29','2020-01-23 05:39:29'),(71,4,'42050893b5a4b64369f84033cf43987f.jpeg','image/jpeg',0,'2020-01-23 05:40:03','2020-01-23 05:40:03'),(72,4,'6b0622e937f88571711c52bbdf290bc8.jpeg','image/jpeg',0,'2020-01-23 05:40:03','2020-01-23 05:40:03'),(73,4,'3e135cfea39185357f38a98ba1f201b0.jpeg','image/jpeg',0,'2020-01-23 05:40:11','2020-01-23 05:40:11'),(74,4,'91cac4f4d0d3e9cc72ff6ad75c38e663.jpeg','image/jpeg',0,'2020-01-23 05:40:19','2020-01-23 05:40:19'),(75,5,'8ad7c57de58e95f65aae90ddd2360008.jpeg','image/jpeg',0,'2020-01-23 05:41:36','2020-01-23 05:41:36'),(76,5,'84958eea5f87554e55b6544659b5710a.jpeg','image/jpeg',0,'2020-01-23 05:41:42','2020-01-23 05:41:42'),(77,5,'5f15b1ad8688df1c85d321995a0c0737.jpeg','image/jpeg',0,'2020-01-23 05:41:49','2020-01-23 05:41:49'),(78,5,'14a9105e3a02bd3ee426fc872b3a7e74.jpeg','image/jpeg',0,'2020-01-23 05:41:54','2020-01-23 05:41:54'),(79,6,'9d956fb476a25976009d856703a59e84.jpeg','image/jpeg',0,'2020-01-23 05:42:24','2020-01-23 05:42:24'),(80,6,'42a7e827a18c9a51b7b8fedebac09349.jpeg','image/jpeg',0,'2020-01-23 05:42:32','2020-01-23 05:42:32'),(81,6,'8c649d8e694481e5bc77196a7634d397.jpeg','image/jpeg',0,'2020-01-23 05:42:37','2020-01-23 05:42:37'),(82,6,'9be399d3fd4c13f2b03c719728847b68.jpeg','image/jpeg',0,'2020-01-23 05:42:45','2020-01-23 05:42:45'),(83,6,'182abd0d95358fc8616e4461928d27ae.jpeg','image/jpeg',0,'2020-01-23 05:42:51','2020-01-23 05:42:51'),(84,7,'33aeec2a8924021116181daa8074a417.jpeg','image/jpeg',0,'2020-01-23 05:43:40','2020-01-23 05:43:40'),(85,7,'01608e58a5d1c6e843c479da5384e47e.jpeg','image/jpeg',0,'2020-01-23 05:43:57','2020-01-23 05:43:57'),(86,7,'1a32aaeec0eb1e2b51bb5f9143e63670.jpeg','image/jpeg',0,'2020-01-23 05:44:11','2020-01-23 05:44:11'),(87,7,'e981d7b0d542793aef6a917b4eedccb1.jpeg','image/jpeg',0,'2020-01-23 05:44:16','2020-01-23 05:44:16'),(88,1,'3ad006e157cd885569f68988c026bfc4.jpeg','image/jpeg',0,'2020-01-23 05:47:34','2020-01-23 05:47:34'),(89,8,'de5861a5c50f95fd36c2aaa705dad602.jpeg','image/jpeg',0,'2020-01-23 05:51:24','2020-01-23 05:51:24'),(90,8,'90f82aab773399b4b89575ba2d04f6f8.jpeg','image/jpeg',0,'2020-01-23 05:51:24','2020-01-23 05:51:24'),(91,8,'f28fc2ffae8165c6ad2cfc7222d20093.jpeg','image/jpeg',0,'2020-01-23 05:52:02','2020-01-23 05:52:02'),(92,8,'e814f3b9c0221b7a6b64dae48c1ad50b.jpeg','image/jpeg',0,'2020-01-23 05:52:10','2020-01-23 05:52:10');
/*!40000 ALTER TABLE `ListPhotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListSettings`
--

DROP TABLE IF EXISTS `ListSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListSettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `typeId` int NOT NULL,
  `itemName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otherItemName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum` int DEFAULT NULL,
  `minimum` int DEFAULT NULL,
  `startValue` int DEFAULT NULL,
  `endValue` int DEFAULT NULL,
  `step` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isEnable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `itemDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `ListSettings_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `ListSettingsTypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListSettings`
--

LOCK TABLES `ListSettings` WRITE;
/*!40000 ALTER TABLE `ListSettings` DISABLE KEYS */;
INSERT INTO `ListSettings` VALUES (5,3,'Houses',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 07:46:35','2021-05-14 13:01:48',NULL,NULL),(6,3,'Condos/Apartments',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 07:46:42','2021-05-14 13:01:33',NULL,NULL),(7,3,'Studios',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 07:46:49','2021-05-14 13:03:20',NULL,NULL),(8,3,'Cabins',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 07:46:57','2021-05-14 13:02:22',NULL,NULL),(10,4,'1-5 Rooms',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 07:49:23','2017-01-09 07:49:23',NULL,NULL),(11,4,'6-25 Rooms',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 07:49:35','2017-01-09 07:49:35',NULL,NULL),(14,5,'Bedroom  ','bedrooms ',NULL,NULL,1,10,NULL,'1','2017-01-09 07:53:04','2021-05-13 23:01:46',NULL,NULL),(15,6,'Bed','beds',NULL,NULL,1,16,NULL,'1','2017-01-09 07:53:48','2021-05-13 23:01:40',NULL,NULL),(16,7,'Single',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 07:59:47','2017-01-09 07:59:47',NULL,NULL),(17,7,'Double',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 07:59:57','2017-01-09 07:59:57',NULL,NULL),(18,7,'Queen',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:00:05','2017-01-09 08:00:05',NULL,NULL),(19,7,'King',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:00:13','2017-01-09 08:00:13',NULL,NULL),(20,7,'Bunk bed',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:00:20','2017-01-09 08:00:20',NULL,NULL),(21,8,'Bathroom','bathrooms',NULL,NULL,1,8,NULL,'1','2017-01-09 08:12:24','2021-05-14 13:06:38',NULL,NULL),(22,9,'Private Room',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:31:16','2017-01-09 08:31:16',NULL,NULL),(23,9,'Half bath',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:31:28','2021-05-14 13:07:50',NULL,NULL),(24,9,'Full bath',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:31:32','2021-05-14 13:07:39',NULL,NULL),(25,10,'Towels, bed sheets, soap, and toilet paper',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:43:32','2017-01-09 08:43:32',NULL,NULL),(26,10,'WiFi',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:43:42','2021-05-14 13:13:13',NULL,NULL),(27,10,'Shampoo ',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:43:51','2017-01-09 08:43:51',NULL,NULL),(28,10,'Closet/drawers',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:44:00','2017-01-09 08:44:00',NULL,NULL),(29,11,'Smoke detector',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:44:17','2017-01-09 08:44:17',NULL,NULL),(30,11,'Carbon monoxide detector',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:44:25','2017-01-09 08:44:25',NULL,NULL),(31,11,'First aid kit ',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:44:33','2017-01-09 08:44:33',NULL,NULL),(32,11,'Safety card',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 08:44:41','2017-01-09 08:44:41',NULL,NULL),(33,12,'Kitchen',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 09:05:19','2017-01-09 09:05:19',NULL,NULL),(34,12,'Laundry – washer ',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 09:05:26','2017-01-09 09:05:26',NULL,NULL),(35,12,'Laundry – dryer',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 09:05:33','2017-01-09 09:05:33',NULL,NULL),(36,12,'Parking',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-09 09:05:40','2017-01-09 09:05:40',NULL,NULL),(39,2,'Guest','guests',NULL,NULL,1,20,NULL,'1','2017-01-09 10:51:56','2021-05-13 23:07:12',NULL,NULL),(45,13,'Payment information',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 07:48:16','2017-01-18 07:48:16',NULL,NULL),(46,13,'Agree to your House Rules',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 08:02:20','2018-04-12 08:08:01',NULL,NULL),(47,13,'Tell you their trip purpose',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 08:02:29','2017-01-18 08:02:29',NULL,NULL),(48,14,'Children Allowed ',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 10:00:20','2021-05-14 13:20:52',NULL,NULL),(49,14,'Minimum age requirement of primary renter',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 10:00:28','2021-05-14 13:19:41',NULL,NULL),(50,14,'Pets Allowed ',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 10:00:35','2021-05-14 13:20:59',NULL,NULL),(51,14,'Smoking Allowed ',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 10:00:41','2021-05-14 13:20:45',NULL,NULL),(52,14,'Events Allowed ',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 10:00:56','2021-05-14 13:21:05',NULL,NULL),(53,15,'Meet RentAll’s guest requirements',NULL,NULL,NULL,NULL,NULL,NULL,'0','2017-01-18 11:01:08','2021-05-14 13:23:09',NULL,NULL),(54,15,'Agree to your house rules',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 11:01:16','2017-01-18 11:01:16',NULL,NULL),(55,15,'Tell you their trip purpose',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 11:01:25','2017-01-18 11:01:25',NULL,NULL),(56,15,'Let you know how many people are coming on the trip',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 11:03:00','2018-05-02 04:57:56',NULL,NULL),(58,16,'1 day',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 15:19:43','2017-01-18 15:19:43',NULL,NULL),(59,16,'2 days',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 15:19:48','2017-01-18 15:19:48',NULL,NULL),(60,16,'3 days',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 15:19:58','2017-01-18 15:19:58',NULL,NULL),(61,16,'7 days',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 15:20:03','2017-01-18 15:20:03',NULL,NULL),(62,17,'Dates unavailable by default',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 18:01:01','2017-01-18 18:01:01',NULL,NULL),(63,17,'Any time',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 18:01:16','2017-01-18 18:01:16',NULL,NULL),(64,17,'3 months',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 18:01:22','2017-01-18 18:01:22',NULL,NULL),(65,17,'6 months',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 18:01:29','2017-01-18 18:01:29',NULL,NULL),(66,17,'1 year',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-01-18 18:01:42','2017-01-18 18:01:42',NULL,NULL),(67,18,'Night Min','nights min',NULL,NULL,0,100,NULL,'1','2017-01-18 18:18:28','2021-05-14 13:24:23',NULL,NULL),(68,19,'Night Max','nights max',NULL,NULL,0,100,NULL,'1','2017-01-18 18:19:00','2021-05-14 13:24:14',NULL,NULL),(73,10,'Hair Dryer',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-07-28 11:36:34','2021-05-14 13:14:18',NULL,NULL),(74,1,'Guest Room',NULL,NULL,NULL,NULL,NULL,NULL,'0','2017-07-28 14:21:14','2018-04-27 14:15:42',NULL,NULL),(76,1,'Private Room',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-07-30 04:24:13','2017-07-30 04:24:13',NULL,NULL),(77,1,'Entire Place',NULL,NULL,NULL,NULL,NULL,NULL,'1','2017-07-30 04:24:18','2018-04-27 13:10:06',NULL,NULL),(87,10,'LED TV',NULL,NULL,NULL,NULL,NULL,NULL,'0','2018-04-10 05:13:44','2018-04-28 04:52:14',NULL,NULL),(97,10,'Cable TV',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-10 07:29:11','2021-05-14 13:09:36',NULL,NULL),(100,3,'Cottages',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-10 08:56:22','2021-05-14 13:02:15',NULL,NULL),(102,4,'25-50 Rooms',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-10 08:57:40','2018-04-28 04:48:13',NULL,NULL),(103,14,'Loud Music Allowed',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-10 09:00:48','2021-05-14 13:20:23',NULL,NULL),(105,4,'50-100 Rooms',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-12 08:08:55','2018-04-28 04:48:27',NULL,NULL),(106,10,'Coffee Maker',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-12 08:09:22','2021-05-14 13:12:09',NULL,NULL),(110,1,'Boat',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-24 00:24:06','2021-05-14 13:00:11',NULL,NULL),(112,1,'Luxury Property',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-24 02:28:25','2021-05-14 13:00:03',NULL,NULL),(113,1,'Shared Room',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-24 02:28:41','2018-04-24 02:28:41',NULL,NULL),(118,10,'Free Parking',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-24 02:33:13','2021-05-14 13:13:33',NULL,NULL),(119,10,'Swimming Pool',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-24 02:33:23','2020-04-13 13:09:35','d8e103a2e500b56205bd28147fccae88.png',NULL),(123,3,'Bungalows',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-25 14:56:34','2021-05-14 13:02:53',NULL,NULL),(125,14,'Loud People are not allowed',NULL,NULL,NULL,NULL,NULL,NULL,'0','2018-04-25 14:59:40','2018-04-28 04:27:21',NULL,NULL),(126,4,'100+ Rooms',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-28 04:49:12','2018-04-28 04:49:12',NULL,NULL),(127,13,'Confirmed Email',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-28 04:53:50','2018-04-28 04:53:50',NULL,NULL),(128,16,'Same day',NULL,NULL,NULL,NULL,NULL,NULL,'1','2018-04-28 04:55:21','2018-04-30 21:33:25',NULL,NULL),(129,3,'Townhouses',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:03:34','2021-05-14 13:03:34',NULL,NULL),(130,3,'Villas',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:03:41','2021-05-14 13:03:41',NULL,NULL),(131,3,'Resorts',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:03:53','2021-05-14 13:03:53',NULL,NULL),(132,3,'Hotels',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:04:17','2021-05-14 13:04:17',NULL,NULL),(133,3,'Lodges',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:04:31','2021-05-14 13:04:31',NULL,NULL),(134,3,'Guest Houses',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:05:18','2021-05-14 13:05:18',NULL,NULL),(135,10,'Washing Machine',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:12:55','2021-05-14 13:13:54',NULL,NULL),(136,10,'Game Console',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:15:35','2021-05-14 13:15:35',NULL,NULL),(137,14,'Maximum Overnight Guests ',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:20:37','2021-05-14 13:20:37',NULL,NULL),(138,14,'No food or drink in bedrooms',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:22:18','2021-05-14 13:22:18',NULL,NULL),(139,14,'No unregistered guests',NULL,NULL,NULL,NULL,NULL,NULL,'1','2021-05-14 13:22:34','2021-05-14 13:22:34',NULL,NULL);
/*!40000 ALTER TABLE `ListSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListSettingsTypes`
--

DROP TABLE IF EXISTS `ListSettingsTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListSettingsTypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) NOT NULL,
  `fieldType` enum('stringType','numberType') DEFAULT 'stringType',
  `step` int DEFAULT '1',
  `isEnable` varchar(255) DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `typeLabel` varchar(255) DEFAULT NULL,
  `isMultiValue` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListSettingsTypes`
--

LOCK TABLES `ListSettingsTypes` WRITE;
/*!40000 ALTER TABLE `ListSettingsTypes` DISABLE KEYS */;
INSERT INTO `ListSettingsTypes` VALUES (1,'roomType','stringType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Room Type',0),(2,'personCapacity','numberType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Person Capacity',0),(3,'houseType','stringType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','House Type',0),(4,'buildingSize','stringType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Building Size',0),(5,'bedrooms','numberType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Bed Rooms',0),(6,'beds','numberType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Beds',0),(7,'bedType','stringType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Bed Type',0),(8,'bathrooms','numberType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Bathrooms',0),(9,'bathroomType','stringType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Bathroom Type',0),(10,'essentialsAmenities','stringType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Essential Amenities',1),(11,'safetyAmenities','stringType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Safety Amenities',1),(12,'spaces','stringType',1,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Spaces',1),(13,'guestRequirements','stringType',3,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Guest Requirements',0),(14,'houseRules','stringType',3,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','House Rules',1),(15,'reviewGuestBook','stringType',3,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Review How Guests Book',0),(16,'bookingNoticeTime','stringType',3,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Booking Notice Time',0),(17,'maxDaysNotice','stringType',3,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Maximum Days Notice',0),(18,'minNight','numberType',3,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Minimum Nights',0),(19,'maxNight','numberType',3,'1','2019-03-27 11:53:47','0000-00-00 00:00:00','Maximum Nights',0);
/*!40000 ALTER TABLE `ListSettingsTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListViews`
--

DROP TABLE IF EXISTS `ListViews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListViews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`,`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListViews`
--

LOCK TABLES `ListViews` WRITE;
/*!40000 ALTER TABLE `ListViews` DISABLE KEYS */;
INSERT INTO `ListViews` VALUES (1,1,'977bc550-5069-11e9-a14e-635e0fd3bfa6','2019-07-04 13:37:45','2019-07-04 13:37:45'),(2,6,'d1d6d5a0-5064-11e9-a14e-635e0fd3bfa6','2020-04-13 12:54:11','2020-04-13 12:54:11');
/*!40000 ALTER TABLE `ListViews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Listing`
--

DROP TABLE IF EXISTS `Listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Listing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roomType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `houseType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `residenceType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedrooms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buildingSize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beds` int DEFAULT NULL,
  `personCapacity` int DEFAULT NULL,
  `bathrooms` float DEFAULT NULL,
  `bathroomType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buildingName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isMapTouched` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coverPhoto` int DEFAULT NULL,
  `bookingType` enum('request','instant') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'instant',
  `isPublished` tinyint(1) NOT NULL DEFAULT '0',
  `isReady` tinyint(1) NOT NULL DEFAULT '0',
  `reviewsCount` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `Listing_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listing`
--

LOCK TABLES `Listing` WRITE;
/*!40000 ALTER TABLE `Listing` DISABLE KEYS */;
INSERT INTO `Listing` VALUES (1,'d1d6d5a0-5064-11e9-a14e-635e0fd3bfa6',NULL,NULL,'1','2',NULL,NULL,3,3,3,NULL,'US','763 Massachusetts Avenue',NULL,'Middlesex County','MA','02420','42.42703074607657','-71.20063239836423',1,'2019-03-27 09:45:41','2021-05-19 03:00:00','Off-grid it House and stunning view ','The Off-grid itHouse is an architecturally significant house, recently noted by Dwell as one of the \'Best Homes in America\' and in the Los Angeles Times as one of the best houses of all time in Southern California. The Off-grid itHouse is one of 10 IT Houses built in California, which have received much acclaim such as the Western Home award sponsored by Sunset magazine. Also noted as one of the top 10 airbnb rentals worldwide. This is the prototype for the pre-engineered system known as the IT House.\n\nThe house is 100% off-grid, powered by solar panels for energy and hot water, and is located in a pristine remote valley in the beautiful California high desert. The house observes key green principals of smaller footprint, minimal disturbance to the natural beauty of the surrounding landscape, use of renewable resources, and living simply and minimally.\n\nThe setting of the house is remote and serene, a quiet refuge from everything, free from distractions. Amazing views and vistas in all directions.\n\nPerfect for design or green aficionados, writers or those needing a secluded quiet getaway.',58,'request',1,1,0),(2,'d1d6d5a0-5064-11e9-a14e-635e0fd3bfa6',NULL,NULL,'0','1',NULL,NULL,2,2,2,NULL,'US','Guizhou Province Architectural Design & Research Institute, Nanming, , , /','','YunYan','Guizhou','551400','26.8429645','107.2902839',1,'2019-03-27 09:50:28','2021-05-19 03:00:00','Classic Harlem Brownstone - NYC',' Your Master Bedroom is located on the top floor of a classic Harlem brownstone, with a full guests-shared kitchen and bath. The home is located on Sugar Hill and is across the street from St. Nicholas Park and Hamilton Grange.\n\nThe Master Bedroom is on the top floor of a classic Harlem brownstone, build in 1901. It is gorgeous and spacious, facing the front of the house. You will have soft light in the morning, and a wonderful view of the city lights at night.\n\nPop out to the balcony or across the street to the park for some fresh air! Hamilton Heights, where the home is located, is a fun neighborhood with great fine dining, brunch and tasty takeout! You will have plenty of options for restaurants, bars, music venues and historical landmarks to visit during your stay.\n\nOnce home, enjoy the peace and quite of Hamilton Terrace. This beautiful and historic block is a quaint residential enclave you\'ll love at first sight!\n\nGuest access\n\nGuest have complete access to the full kitchen and full bath.',62,'instant',1,1,0),(3,'d1d6d5a0-5064-11e9-a14e-635e0fd3bfa6',NULL,NULL,'0','3',NULL,NULL,3,5,2.5,NULL,'GB','76 Russell Rd, ',NULL,'Nottingham','UK','NG1 5AW','52.9550908','-1.1583049',1,'2019-03-27 09:54:02','2021-05-19 03:00:00','Immaculate Lakefront Condo w/boat slip-THIS IS IT!','Whether you need a romantic getaway for two, a family fun week at the lake, or a fisherman\'s weekend, Smith Mountain Lake & our penthouse condo has it all just steps from the water. From sitting on the deck watching the sunset over the water while enjoying your favorite beverage, to drifting off to sleep cuddled up in our crisp linens after a day on the lake - Come for a visit - fall in love for a lifetime!',68,'request',1,1,0),(4,'d1d6d5a0-5064-11e9-a14e-635e0fd3bfa6',NULL,NULL,'1','1',NULL,NULL,1,1,1,NULL,'US','328 East Fir Avenue, ',NULL,'Atwater','CA','90001','37.3456814','-120.5913511',1,'2019-03-27 09:56:36','2021-05-19 03:00:00','Adorable townhouse near MFL train & hipster spots','Relax in this adorable and cozy little Philly row house in the calm end of Fishtown. Steps from great coffee, cute independent shops and galleries, a stones throw from more hipster amenities, food and nightlife throughout Fishtown and Northern Liberties. And just a quick ride away from Old City, Center City or the airport.\n\nFull kitchen - Laundry - Patio - Free unlimited street parking all around and easy loading area right out front',73,'request',1,1,0),(5,'977bc550-5069-11e9-a14e-635e0fd3bfa6',NULL,NULL,NULL,'3',NULL,NULL,3,3,3,NULL,'GB','Basse Normandie, Rue Verte, ',NULL,'Hérouville-Saint-Clair','France','75116','49.205084','-0.318614',1,'2019-03-27 10:03:30','2021-05-19 03:00:00','Historic Georgian Lakeside Mansion 500 acre Park','This 250 year old delightful and spacious Georgian Menagerie - a replica of that built for Marie Antoinette at Palace of Versailles - is set within 10 acres of private grounds in a 500 acre country park. Sleep in a four poster bed, handmade from oak gifted to the owners by Prince Charles; one of 5 bedrooms available (with a further 2 by separate negotiation)',75,'request',1,1,0),(6,'977bc550-5069-11e9-a14e-635e0fd3bfa6',NULL,NULL,'1','2',NULL,NULL,2,2,2,NULL,'GB','Oristano Stazione F.s., Oristano, ','','Province of Oristano','Italy','09170','39.90105570554223','8.60587392065429',1,'2019-03-27 10:07:00','2021-05-19 03:00:00','Lux LoftApartment Nr City Centre with GatedParking','A ground floor light filled spacious apartment with amazing décor perfect for singles, couples, a romantic retreat, a group of friends, families and business travel. A stone\'s throw from City Centre with easy quick transport links or walking. 15/20 min walk to City Centre . 10 min walk to Cardiff City Stadium. The stunning galleried bedroom area is on a mezzanine level overlooking a large living area. Secure Private Parking and Bike Shed in gated courtyard and outside seating area.',81,'instant',1,1,0),(7,'977bc550-5069-11e9-a14e-635e0fd3bfa6',NULL,NULL,'1','5',NULL,NULL,6,4,4,NULL,'GB','69 Commercial Street',NULL,'Greater London','England','E1 7NE','51.51743291864772','-0.07390837724608446',1,'2019-03-27 10:09:22','2021-05-19 03:00:00','Historic and Stunning, Large Central Bedford House','Amazing Georgian home which can accommodate several families (up to 20+): roaring fires, kitchen range vast living rooms (can be candlelit throughout), third-acre garden; lawn tennis, swimming, piano. Our home is in the centre of Bedford, close for shopping, a huge variety of restaurants and pubs. A five minute walk to the town and beautiful river beyond; less to the bus station, and ten to the railway station with easy access to London (35 minutes) and a short drive (45 minutes) to Cambridge.',87,'request',1,1,0),(8,'977bc550-5069-11e9-a14e-635e0fd3bfa6',NULL,NULL,'1','5',NULL,NULL,5,5,2.5,NULL,'IE','Aidan Chamberlain property is located in Killorglin, IE',NULL,'KE','County Kerry','53665','52.122014593253695','-9.751445003857414',1,'2020-01-23 05:50:54','2021-05-19 03:00:00','River Laune in Main st Killorglin, - 3-star guest','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English the banks of the River Laune in Killorglin, Couples particularly like the location, Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humor and the like). this 3-star guest house has pretty river and mountain views. There is free Wi-Fi throughout, and free private parking on site. Coffey\'s Rivers Edge guest house has a balcony running the width of the house, and you can sit outside to read, play cards, or enjoy a drink and the picturesque views.',90,'request',1,1,0);
/*!40000 ALTER TABLE `Listing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListingData`
--

DROP TABLE IF EXISTS `ListingData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListingData` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int DEFAULT NULL,
  `bookingNoticeTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkInStart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Flexible',
  `checkInEnd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Flexible',
  `minNight` int DEFAULT NULL,
  `maxNight` int DEFAULT NULL,
  `priceMode` tinyint(1) DEFAULT NULL,
  `basePrice` float DEFAULT '0',
  `maxPrice` float DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostingFrequency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weeklyDiscount` float DEFAULT '0',
  `monthlyDiscount` float DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `cleaningPrice` float DEFAULT '0',
  `maxDaysNotice` enum('unavailable','3months','6months','9months','12months','available') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unavailable',
  `cancellationPolicy` int DEFAULT '1',
  `taxRate` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  CONSTRAINT `ListingData_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListingData`
--

LOCK TABLES `ListingData` WRITE;
/*!40000 ALTER TABLE `ListingData` DISABLE KEYS */;
INSERT INTO `ListingData` VALUES (1,1,'59','14','19',0,6,NULL,135,NULL,'USD',NULL,2,5,'2019-03-27 09:49:54','2019-03-27 09:49:54',50,'available',2,0),(2,2,'58','Flexible','Flexible',0,4,NULL,250,NULL,'USD',NULL,5,10,'2019-03-27 09:52:48','2019-03-27 09:52:48',50,'available',3,0),(3,3,'59','14','22',2,0,NULL,500,NULL,'USD',NULL,4,8,'2019-03-27 09:55:45','2019-03-27 09:55:45',50,'available',1,0),(4,4,'58','10','15',1,6,NULL,550,NULL,'USD',NULL,3,6,'2019-03-27 09:59:06','2020-08-10 07:12:37',25,'available',1,0),(5,5,'59','16','19',0,11,NULL,650,NULL,'EUR',NULL,5,15,'2019-03-27 10:05:46','2019-03-27 10:05:46',NULL,'available',3,0),(6,6,'58','11','20',2,0,NULL,850,NULL,'EUR',NULL,5,NULL,'2019-03-27 10:08:24','2019-03-27 10:08:28',50,'available',1,0),(7,7,'59','15','Flexible',1,0,NULL,550,NULL,'EUR',NULL,3,8,'2019-03-27 10:11:05','2019-11-13 11:56:53',45,'available',2,0),(8,8,'60','10','20',3,0,NULL,750,NULL,'USD',NULL,4,12,'2020-01-23 05:53:23','2020-01-23 05:53:23',25,'available',3,0);
/*!40000 ALTER TABLE `ListingData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaymentMethods`
--

DROP TABLE IF EXISTS `PaymentMethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PaymentMethods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `processedIn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `isEnable` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `paymentType` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaymentMethods`
--

LOCK TABLES `PaymentMethods` WRITE;
/*!40000 ALTER TABLE `PaymentMethods` DISABLE KEYS */;
INSERT INTO `PaymentMethods` VALUES (1,'Paypal','3–4 hours','PayPal withdrawal fees','USD','Connect your existing PayPal account.',1,'2017-04-18 20:13:25','2017-04-18 20:13:25',1),(2,'Bank Account','5–7 business days','No fees','USD','Add your bank details',1,'2018-01-04 17:26:45','2018-01-04 17:26:45',2);
/*!40000 ALTER TABLE `PaymentMethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaymentSettings`
--

DROP TABLE IF EXISTS `PaymentSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PaymentSettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paymentName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `paymentMode` enum('live','sandbox') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'sandbox',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APIUserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APIPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APISecret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AppId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaymentSettings`
--

LOCK TABLES `PaymentSettings` WRITE;
/*!40000 ALTER TABLE `PaymentSettings` DISABLE KEYS */;
INSERT INTO `PaymentSettings` VALUES (1,'paypal','false','sandbox','admin@gmail.com','Hello User Id','Hello password','Hello Secret','Hello Id','2019-03-27 11:53:47','2017-02-24 11:29:31');
/*!40000 ALTER TABLE `PaymentSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payout`
--

DROP TABLE IF EXISTS `Payout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payout` (
  `id` int NOT NULL AUTO_INCREMENT,
  `methodId` int NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address2` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `last4Digits` int DEFAULT NULL,
  `isVerified` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `Payout_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payout`
--

LOCK TABLES `Payout` WRITE;
/*!40000 ALTER TABLE `Payout` DISABLE KEYS */;
/*!40000 ALTER TABLE `Payout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PopularLocation`
--

DROP TABLE IF EXISTS `PopularLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PopularLocation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(255) NOT NULL,
  `locationAddress` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `isEnable` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PopularLocation`
--

LOCK TABLES `PopularLocation` WRITE;
/*!40000 ALTER TABLE `PopularLocation` DISABLE KEYS */;
INSERT INTO `PopularLocation` VALUES (2,'Oristano','Oristano Stazione F.s., Oristano, Province of Oristano, Italy','9b1373af96b5dff40edd6bd9e7735cdb.jpeg',1,'2019-03-27 10:20:32','2019-07-04 10:53:02'),(3,'Basse-Normandie','Basse Normandie, Rue Verte, Hérouville-Saint-Clair, France','e6d0fab1f9651b5cffe13922186f8f73.jpeg',1,'2019-03-27 10:27:32','2021-05-15 00:51:17'),(5,'SHIELS','76 Russell Rd, Nottingham, UK','9ccedc7edc9db27c8a0396b3fe9c0b78.jpeg',1,'2019-03-27 10:30:17','2021-05-15 00:45:19'),(13,'Paris','Paris-Charles de Gaulle Airport (CDG), Roissy-en-France, France','7fb231cfd517b3a7357be0a9029e401d.jpeg',1,'2019-07-04 11:20:48','2021-05-15 00:42:25'),(15,'Mexico','Cabo San Lucas, Centro, Marina, Cabo San Lucas, Baja California Sur, Mexico','6bef8b01537ca605471bc3a84d999934.jpeg',1,'2021-05-15 00:34:22','2021-05-15 00:34:22');
/*!40000 ALTER TABLE `PopularLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recommend`
--

DROP TABLE IF EXISTS `Recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recommend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recommend`
--

LOCK TABLES `Recommend` WRITE;
/*!40000 ALTER TABLE `Recommend` DISABLE KEYS */;
INSERT INTO `Recommend` VALUES (1,7,'2019-03-27 10:32:50','2019-03-27 10:32:50'),(2,6,'2019-03-27 10:32:51','2019-03-27 10:32:51'),(3,5,'2019-03-27 10:32:52','2019-03-27 10:32:52'),(4,4,'2019-03-27 10:32:53','2019-03-27 10:32:53'),(5,3,'2019-03-27 10:32:54','2019-03-27 10:32:54'),(6,2,'2019-03-27 10:32:55','2019-03-27 10:32:55'),(7,1,'2019-03-27 10:32:56','2019-03-27 10:32:56');
/*!40000 ALTER TABLE `Recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReportUser`
--

DROP TABLE IF EXISTS `ReportUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ReportUser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reporterId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `reportType` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReportUser`
--

LOCK TABLES `ReportUser` WRITE;
/*!40000 ALTER TABLE `ReportUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReportUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `hostId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guestId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkIn` date NOT NULL,
  `checkOut` date NOT NULL,
  `guests` int DEFAULT '1',
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `basePrice` float NOT NULL,
  `cleaningPrice` float DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` float DEFAULT NULL,
  `discountType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guestServiceFee` float DEFAULT NULL,
  `hostServiceFee` float DEFAULT NULL,
  `total` float(9,2) DEFAULT NULL,
  `confirmationCode` int DEFAULT NULL,
  `paymentState` enum('pending','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `payoutId` int DEFAULT NULL,
  `reservationState` enum('pending','approved','declined','completed','cancelled','expired') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paymentMethodId` tinyint(1) DEFAULT NULL,
  `cancellationPolicy` int DEFAULT NULL,
  `isSpecialPriceAverage` float DEFAULT NULL,
  `dayDifference` float DEFAULT NULL,
  `paymentIntentId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxRate` float DEFAULT '0',
  `isHold` tinyint(1) NOT NULL DEFAULT '0',
  `paymentAttempt` int NOT NULL DEFAULT '0',
  `checkInStart` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkInEnd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookingType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostServiceFeeType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostServiceFeeValue` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReservationSpecialPricing`
--

DROP TABLE IF EXISTS `ReservationSpecialPricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ReservationSpecialPricing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int DEFAULT NULL,
  `reservationId` int DEFAULT NULL,
  `blockedDates` date NOT NULL,
  `isSpecialPrice` float DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReservationSpecialPricing`
--

LOCK TABLES `ReservationSpecialPricing` WRITE;
/*!40000 ALTER TABLE `ReservationSpecialPricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReservationSpecialPricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reviews`
--

DROP TABLE IF EXISTS `Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reservationId` int NOT NULL,
  `listId` int NOT NULL,
  `authorId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewContent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` float NOT NULL,
  `privateFeedback` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parentId` int DEFAULT '0',
  `automated` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  `isAdminEnable` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `reservationId` (`reservationId`),
  KEY `userId` (`userId`),
  CONSTRAINT `Reviews_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SearchSettings`
--

DROP TABLE IF EXISTS `SearchSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SearchSettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `minPrice` float NOT NULL,
  `maxPrice` float NOT NULL,
  `PriceRangecurrency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SearchSettings`
--

LOCK TABLES `SearchSettings` WRITE;
/*!40000 ALTER TABLE `SearchSettings` DISABLE KEYS */;
INSERT INTO `SearchSettings` VALUES (1,10,10000,'USD','2019-03-27 11:53:47','2018-05-02 04:53:20');
/*!40000 ALTER TABLE `SearchSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `SequelizeMeta_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20180804061511-addUserBanStatus.js'),('20180804062523-addIsReadColumnInThreads.js'),('20180809095644-createBedTypeTable.js'),('20180919114144-addBanUserDefault.js'),('20180924105437-updateUserLoginTable.js'),('20180924130941-addNewUserLoginTable.js'),('20180929101729-updateNulledBanUserStatus.js'),('20180929110523-addColumnsForSmsVerification.js'),('20180929112313-updateCountyListWithDialCodes.js'),('20190105123130-addHomePageTypeSiteSettings.js'),('20190202071052-addIsListActiveField.js'),('20190202103305-updatePaymentMethods.js'),('20190206111430-createReportUser.js'),('20190223073145-addIsDeleteAtField.js'),('20190225042333-addReviewsCountInListing.js'),('20190322050510-addSiteSettingsField.js'),('20190325035946-addListBlockedDates.js'),('20190429092459-addColumNewThread.js'),('20190430110742-changeListingDataCloum.js'),('20190503052141-addColumnItemDescriptionListSettingsTable.js'),('20190513044345-addMetaFields.js'),('20190513070310-insertStaticpage.js'),('20190514121558-addCancellationPolicyReservation.js'),('20190525050311-changeDataTypeForItemDescription.js'),('20190527125405-addIsAdminEnableReviews.js'),('20190531062204-addReservationSpecialPricing.js'),('20190603083234-modifyBlogAndStaticPage.js'),('20190603102231-deleteInboxItem.js'),('20190604051522-addReservationFields.js'),('20190614110520-addPhoneStatus.js'),('20190615092318-addCountryNameInUserProfile.js'),('20190622051622-changeColumnLocationUserProfile.js'),('20190701041011-changeColumnTypeInSiteSettingsValue.js'),('20190712094239-deleteCoverPhotoRecordsFromListingTable.js'),('20190824052016-addHomePageLogoSiteSettings.js'),('20190827080301-addHomeBannerImage.js'),('20190828122142-addEmailPageLogoSiteSettings.js'),('20190830111259-addHomeLogoHeightSettings.js'),('20190902042250-addStaticBlockInfo.js'),('20190903093907-addStatusFieldInBlock.js'),('20190910043026-addPaymentIntentIdInReservation.js'),('20191008110026-testMigration.js'),('20191020041756-addUserListing.js'),('20191108043353-updateSteps.js'),('20200110151340-addRoleIdToAdminUser.js'),('20200217052735-addIsVerifiedToPayoutTable.js'),('20200225061630-addIsVerifiedToPayoutTable.js'),('20200323101255-addAppAvailableStatus.js'),('20200323102340-addPlayStoreUrl.js'),('20200323102456-addAppStoreUrl.js'),('20200324122956-contactPageManage.js'),('20200325110911-addWhyHostInfoBlocks.js'),('20200326043522-addHelpStaticPageManage.js'),('20200413120822-changeColumnValueAtWhyHostInfoBlock.js'),('20200413133533-changeColumnValueWhyHostInfoBlock.js'),('20200609101516-addTaxRateinListing.js'),('20200609104246-addColumnInReservation.js'),('20200702125214-addNewColumnsInReservation.js'),('20200706135325-changeDialCodeForCyprus.js'),('20200707112614-updateCancellationContent.js'),('20200716101918-addNewColumnsInReservation.js'),('20200717064917-addBookingTypeColumninReservation.js'),('20200720134623-addBookingTypeColumnInReservation.js'),('20200721095812-AddServiceFeeInReservation.js'),('20200721095829-AddNonRefundableNightInCancellation.js'),('20200722081721-changeDefaultValueinCancellation.js'),('20200727121337-changeColumnvalueInReservation.js'),('20200826050109-addCookiePolicyStaticContent.js'),('20201015082101-addListSettingsImage.js'),('20201015114723-addSideMenuContent.js'),('20210107121042-updateProcessedInPaymentMethod.js'),('20210111061758-changeDateTypeToDateOnlyType.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceFees`
--

DROP TABLE IF EXISTS `ServiceFees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ServiceFees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `guestType` enum('fixed','percentage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guestValue` float NOT NULL,
  `hostType` enum('fixed','percentage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostValue` float NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceFees`
--

LOCK TABLES `ServiceFees` WRITE;
/*!40000 ALTER TABLE `ServiceFees` DISABLE KEYS */;
INSERT INTO `ServiceFees` VALUES (1,'fixed',0,'fixed',0,'USD','2021-05-13 22:42:02','2021-05-13 22:42:02');
/*!40000 ALTER TABLE `ServiceFees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SideMenu`
--

DROP TABLE IF EXISTS `SideMenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SideMenu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `step` int DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `isEnable` tinyint(1) DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SideMenu`
--

LOCK TABLES `SideMenu` WRITE;
/*!40000 ALTER TABLE `SideMenu` DISABLE KEYS */;
INSERT INTO `SideMenu` VALUES (1,'Flexible','Cancel up to 1 day prior to arrival and get a 100% refund.','block1',NULL,NULL,1,'2021-02-03 13:14:58','2021-02-03 13:14:58'),(2,'Moderate','Cancel up to 5 days prior to arrival and get a 50% refund.','block2',NULL,NULL,1,'2021-02-03 13:14:58','2021-02-03 13:14:58'),(3,'Strict','Cancel up to 7 days prior to arrival and get a 50% refund.','block3',NULL,NULL,1,'2021-02-03 13:14:58','2021-02-03 13:14:58');
/*!40000 ALTER TABLE `SideMenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteSettings`
--

DROP TABLE IF EXISTS `SiteSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteSettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteSettings`
--

LOCK TABLES `SiteSettings` WRITE;
/*!40000 ALTER TABLE `SiteSettings` DISABLE KEYS */;
INSERT INTO `SiteSettings` VALUES (1,'Site Name','siteName','RENT LUV - NFTs','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(2,'Site Title','siteTitle','RENT LUV - NFTs','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(3,'Meta Keyword','metaKeyword','NFT Vacation rentals, NFT rentals, NFT home rentals, NFT real estate, NFT hotels, NFT car rentals, NFT boat rentals, NFT house rentals, NFT, rental NFT','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(4,'Meta Discription','metaDescription','RENT LUV tokenizes the travel industry with a blockchain-based NFT sharing platform. Conceptually similar to Airbnb but with a big blockchain twist, NFTs enables homeowners, car owners, and yacht owners the ability to rent out their property.','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(10,'Facebook Link','facebookLink','https://www.facebook.com/radicalstartnow/','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(11,'Twitter Link','twitterLink','https://twitter.com/radicalstartnow','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(12,'Instagram Link','instagramLink','https://www.instagram.com/?hl=en','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(64,'Logo Height','logoHeight','65','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(65,'Logo Width','logoWidth','125','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(66,'Home Page Banner Layout','homePageType','2','site_settings','2019-03-27 11:53:47','2021-05-14 12:03:58'),(67,'Video URL','videoLink','https://www.youtube.com/watch?v=5y2P4z7DM88','site_settings','2019-07-04 06:09:18','2021-05-14 12:03:58'),(68,'Phone Number Status','phoneNumberStatus','1','site_settings','2019-07-04 06:47:57','2021-05-14 12:03:58'),(72,'Home Logo Height','homeLogoHeight','65','site_settings','2019-09-06 06:41:03','2021-05-14 12:03:58'),(73,'Home Logo Width','homeLogoWidth','125','site_settings','2019-09-06 06:41:03','2021-05-14 12:03:58'),(77,'App Available Status','appAvailableStatus','0','site_settings','2020-04-13 11:33:08','2021-05-14 12:03:58'),(78,'PlayStore URL','playStoreUrl','https://play.google.com/store','site_settings','2020-04-13 11:33:08','2021-05-14 12:03:58'),(79,'AppStore URL','appStoreUrl','https://www.apple.com/ios/app-store/','site_settings','2020-04-13 11:33:09','2021-05-14 12:03:58'),(80,'email','email','info@rentluv.com','site_settings','2020-04-13 11:33:09','2021-05-14 12:03:58'),(81,'Phone Number','phoneNumber','+0 000 0000','site_settings','2020-04-13 11:33:09','2021-05-14 12:03:58'),(82,'Address','address','Your Location, Country','site_settings','2020-04-13 11:33:09','2021-05-14 12:03:58'),(86,'Home Page Logo','homeLogo','3f144233400798d132eeacdf3a9e497e.png','site_settings','2021-05-13 23:10:36','2021-05-14 12:03:58'),(87,'Email Logo','emailLogo','1bf904295be4b1b51ecd5c06fe9885bf.png','site_settings','2021-05-14 01:45:13','2021-05-14 12:03:58'),(88,'Logo','Logo','dbb1064d9ab501594e26a6a5cb6a1294.png','site_settings','2021-05-14 01:45:13','2021-05-14 12:03:58');
/*!40000 ALTER TABLE `SiteSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StaticInfoBlock`
--

DROP TABLE IF EXISTS `StaticInfoBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StaticInfoBlock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `isEnable` tinyint(1) DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StaticInfoBlock`
--

LOCK TABLES `StaticInfoBlock` WRITE;
/*!40000 ALTER TABLE `StaticInfoBlock` DISABLE KEYS */;
INSERT INTO `StaticInfoBlock` VALUES (1,'RENT A HOME, CAR OR BOAT WITH AN NFT','We decentralized the travel industry with NFTs.',NULL,'header',1,'2019-09-06 06:41:03','2021-05-13 22:56:48'),(2,'No more middleman','Reduced paperwork and fees to maximize your trip enjoyment! ','6e43a271d065551362e9e57911b144ff.jpeg','block1',1,'2019-09-06 06:41:03','2021-05-13 22:56:48'),(3,'Trusted Blockchain Technology','Our community is completely driven by blockchain and your LUV.','e1f916093207db35c01154c4a82dc357.jpeg','block2',1,'2019-09-06 06:41:03','2021-05-13 22:56:48');
/*!40000 ALTER TABLE `StaticInfoBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StaticPage`
--

DROP TABLE IF EXISTS `StaticPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StaticPage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StaticPage`
--

LOCK TABLES `StaticPage` WRITE;
/*!40000 ALTER TABLE `StaticPage` DISABLE KEYS */;
INSERT INTO `StaticPage` VALUES (1,'About Us','<p><br></p><h1>We believe in family vacays</h1><p><br></p><p>The pandemic has helped us all value more quality time with the people we love. Our focus is on the importance of connection and the joy that celebrating meaningful moments together brings. That’s the magic of spreading LUV.</p><p><br></p><h1>We have a place for everyone</h1><p><br></p><p>We utilize $LUV to make vacations affordable for anyone because everyone deserves a vacay. RENT LUV takes diversity and inclusion seriously because we believe that family is everything.</p>','ABOUT ','Our mission is to find every family affordable vacation rentals to relax, reconnect, and enjoy precious time away together.','2019-07-12 07:58:42','2021-05-14 13:55:20'),(2,'Trust & Safety','<h1><strong>Overview </strong></h1><p><br></p><p>On any given night, 2 million people stay in rental homes in 100,000 cities all over the world. There are more than 6 million listings in 191 countries to choose from —that’s more than the top five hotel chains combined.</p><p><br></p><p>What makes all of that possible? Trust.</p><p><br></p><h1><strong>Community Standards </strong></h1><p><br></p><p>Creating a world where anyone can truly belong requires a foundation of trust grounded inconsistent expectations of host and guest behavior. We’ve established these Community Standards to help guide behavior and codify the values that underpin our global community.</p><p><br></p><p>This is a living document, as we’re constantly refining our approach to meet the needs of our community. But these five standards—safety, security, fairness, authenticity, and reliability—remain central pillars in our efforts to help ensure safety and foster belonging. We’re always working to make sure they’re upheld and enforced.</p><p><br></p><h2>Safety</h2><p>Your RENT LUV experience begins the moment you embrace adventure. That’s only possible when you trust this community and feel safe. As a result, we require that you refrain from endangering or threatening anyone.</p><p><br></p><p>•Harming yourself or others</p><p>You should not commit physical or sexual assault, sexual abuse, sexual harassment, domestic violence, robbery, human trafficking, other acts of violence, or hold anyone against their will. Members of dangerous organizations, including terrorists, organized crime, and violent racist groups, are not welcome in this community. RENT LUV is committed to working with law enforcement as appropriate and responding to valid law enforcement requests.</p><p><br></p><p>We take suicide, self-injury, eating disorders, and hard drug abuse extremely seriously and work to help people in crisis.</p><p><br></p><p>•Threatening anyone</p><p>You should not convey an intent to harm anyone by your words or physical actions. We also take threats of self-harm as seriously as we do actions and may intervene if we become aware of a threat.</p><p><br></p><p>•Creating hazardous situations</p><p>You should not keep unsecured weapons, disease risks, or dangerous animals in your listing, nor should you create conditions that increase the likelihood of a fire or impede escape in the event of an emergency.</p><h2><br></h2><h2>Security</h2><p>Our RENT LUV community members share their homes, neighborhoods, and experiences. Whether you’re opening your home as a host or experiencing a host’s hospitality as a guest, you should trust that you will feel secure. We ask you to respect others’ property, information, and personal belongings.</p><p><br></p><p>•Theft, vandalism, or extortion</p><p>You should not take property that isn’t yours, use someone’s property without their permission, copy others’ keys or identity documents, damage others’ property, remain in listings after a stay is concluded, or threaten anyone with bad ratings or any other penalty or harm to obtain compensation or other benefits.</p><p><br></p><p>•Spam, phishing, or fraud</p><p>You should not make transactions outside of RENT LUV payments system; commit booking fraud, credit card fraud, or launder money; attempt to drive traffic to other sites or market unrelated products; divert payments meant for others; abuse our referrals system, or make false claims against other members of the community.</p><p><br></p><p>•Violating others’ privacy or intellectual property rights</p><p>You should not spy on other people; cameras are not allowed in your listing unless they are previously disclosed and visible, and they are never permitted in private spaces (such as bathrooms or sleeping areas). You should not access others’ accounts without authorization or violate others’ privacy, copyrights, or trademarks.</p><h2><br></h2><h2>Fairness</h2><p>The global RENT LUV community is as diverse, unique, and vibrant as the world around us. Fairness is what holds us together, what makes it possible for us to trust one another, integrate seamlessly within communities, and feel as if can we can truly belong.</p><p><br></p><p>•Discriminatory behavior or hate speech</p><p>You should treat everyone with respect in every interaction. So, you should follow all applicable laws and not treat others differently because of their race, ethnicity, national origin, religious affiliation, sexual orientation, sex, gender, gender identity, disability, or serious diseases. Similarly, insulting others on these bases is not allowed.</p><p><br></p><p>•Bullying or harassing others</p><p>You should not share personal information to shame or blackmail others, target others with unwanted behavior, defame others, or violate our review and content standards.</p><p><br></p><p>•Disturbing the surrounding community</p><p>You should not disturb common spaces, treat neighbors as “front desk staff,” create a pervasive nuisance for those around you, or persistently fail to respond to neighbor or community concerns.</p><h2><br></h2><h2>Authenticity</h2><p>Your RENT LUV experiences should be full of delightful moments and surprising adventures. Since our community is built on trust, authenticity is essential—it requires a balance of shared expectations, honest interactions, and accurate details.</p><p><br></p><p>•Misrepresenting yourself</p><p>You should not provide a false name or date of birth, use listings for commercial purposes without your host’s permission, have events or parties without your host’s approval, maintain duplicate accounts, or create an account if you’re under 18.</p><p><br></p><p>•Misrepresenting your spaces</p><p>You should not provide inaccurate location information, have incorrect availability, mislead people about the type, nature, or details of your listing, substitute one listing for another, set up fake or fraudulent listings, leave fraudulent reviews, engage in deceptive pricing, or fail to disclose hazards and habitability issues.</p><p><br></p><p>•Experiences that are merely transactions</p><p>RENT LUV began as a way to allow people to share their property with NFTs.</p><h2><br></h2><h2>Reliability</h2><p>Every RENT LUV experience is unique and each detail specific to a home, a neighborhood, and a host. Since our community makes commitments based on these details, we have to be able to trust each other’s reliability—whether it be in timely communication, the condition of the home, or in the expectations we set.</p><p><br></p><p>•Providing uninhabitable spaces</p><p>You should not provide spaces with sub-standard cleanliness or undisclosed lack of running water or electricity. You should not provide spaces that are not legitimate sleeping quarters (e.g. camping gear), not stationary for the duration of the stay (e.g. moving boats), or lack access to dedicated restroom facilities (e.g. directing guests to use public bathrooms).</p><p><br></p><p>•Breaking commitments</p><p>With absent extenuating circumstances, you should not cancel after the deadline set in the relevant cancellation policy. You should also not fail to make check-in possible, fail to pay, or break the host’s house rules.</p><p><br></p><p>•Being unresponsive</p><p>You should not have persistently and pervasively low ratings, be unresponsive during booking or throughout a stay, fail to provide an adequate point of contact for hosting, or refuse to participate in our resolution process.</p><p><br></p>','TRUST & SAFETY','Your safety is our priority','2019-07-12 07:58:42','2021-05-14 13:39:17'),(3,'Travel Credit','<h2>Overview</h2><p>RENT LUV is offering Members who cancel a Qualifying Reservation the option to have RENT LUV help fund their next booking (the “<strong>Offer</strong>”). The Offer is made for a limited time only but may be extended from time to time by RENT LUV. If you have a Qualifying Reservation, you will be presented with the Offer in the reservation cancellation flow or another part of the RENT LUV Platform.</p><p><br></p><h2>Important Definitions</h2><p>“<strong>Expiration Date</strong>” means: (i) the last day that you can redeem the Offer by confirming your next booking through the RENT LUV Platform, and (ii) the last day that your next booking can begin (i.e. check-in must be no later than the Expiration Date). The Expiration Date is December 30, 2021, unless we specify another date through the RENT LUV Platform.</p><p><br></p><p>“<strong>Offer Amount</strong>” means the amount of the Offer as displayed to you in the RENT LUV Platform (not to exceed 200% of your booking value). The Offer Amount may vary depending on factors such as the applicable Listing cancellation policy or the amount you have actually paid for your reservation. In some cases, the Offer Amount may be equal to the amount you paid in RENT LUV fees for the Qualifying Reservation.</p><p><br></p><p>“<strong>Qualifying Reservation</strong>” means a booking for a stay that was made on or before March 14, 2020, and has been designated in the Airbnb Platform as being eligible for the Offer. The following are expressly excluded: (i) reservations that have already begun, (ii) reservations that were previously canceled, (iii) reservations made by Members who reside in mainland China for stays in mainland China, and (iv) Luxe reservations or any reservation made on Luxury Retreats.</p><p><br></p><p><br></p><h2>How it Works</h2><p>The Offer may only be redeemed through the RENT LUV Platform on or before the Expiration Date. When you make your next booking, RENT LUV will fund and issue a promotional $LUV credit in the Offer Amount (the “<strong>Travel Credit</strong>”). Your next booking must also have a check-in date no later than the Expiration Date to use the Travel Credit. The Travel Credit will automatically be added during checkout and will reduce the cost of that booking by the Offer Amount. All redemption of Travel Credit is final and may not be canceled. You are not required to apply the Travel Credit to your next booking and may elect to apply it to a later booking, subject to the Expiration Date. If any portion of the Travel Credit is not used in your next booking, you may be required to contact RENT LUV customer support to re-activate the unused portion of the Travel Credit. If you apply the Travel Credit to a booking and the booking is canceled: (i) you will be refunded based on the Host’s cancellation policy for the amount paid with your NFT, and (ii) the amount of the Travel Credit you used for the canceled booking will be reinstated for future use, subject to the original Expiration Date.</p><p><br></p><p>Travel Credits: (i) is $LUV issued for promotional purposes; (ii) are non-refundable and non-transferable; (iii) are not cash, currency and not a stored value, gift card, or store credit product; (iv) cannot be combined with other offers, coupons or discounts; (v) cannot be redeemed for cash, check or credit, except where required by law; and (vi) cannot be used or reissued past the Expiration Date. You may not purchase or sell Travel Credits and Airbnb does not sell Travel Credits. Travel Credits are the property of Airbnb.</p><p><br></p><p>If you initiate a chargeback with your bank or credit card company (also known as a “charge dispute” or “reversal”) for the return of the funds charged for the Qualifying Reservation, you won’t be eligible for Travel Credit for such booking. Airbnb reserves its right to refuse, void, cancel, reject or hold for review your Travel Credit, if it believes that you initiated a chargeback for the Qualifying Reservation and elected to receive Travel Credit despite the chargeback.</p><p><br></p><p>If for any reason you believe that there is a discrepancy regarding your Travel Credit, please contact us. Airbnb may require you to submit additional information in order to make a determination regarding your Travel Credit.</p><h2><br></h2><h2>Your Waiver and Release; No Refunds</h2><p>By accepting the Offer you are agreeing that the Offer Amount is in lieu of any refund you might be entitled to receive in connection with canceling the Qualifying Reservation—whether under the Listing or applicable law. By electing to receive Travel Credit or by using the Travel Credit you are agreeing to these Travel Credit Terms.</p><p><br></p><p>You release RENT LUV and the host of the Qualifying Listing from any and all claims and liabilities, without limitation, relating to the Qualifying Reservation, your inability to complete the Qualifying Reservation, and/or any refund or compensation you might be entitled to in relation to canceling the Qualifying Reservation.</p><h2><br></h2><h2>Miscellaneous</h2><p>You understand and agree that you are solely responsible for determining for your jurisdiction (i) the applicable tax reporting requirements, and (ii) the taxes that should be paid in connection with the Offer and the Travel Credit. Where applicable, RENT LUV may be required to account for VAT on any services for which the Travel Credits are redeemed. In no event will RENT LUV be liable for any special, incidental, punitive, exemplary, or consequential damages of any kind even if we have been informed in advance of the possibility of such damages. In no event will RENT LUV aggregate liability to you in connection with the Offer exceed the Offer Amount. Except where prohibited by law, RENT LUV reserves the right to refuse, void, cancel, reject or hold for review any Travel Credit mistakenly applied in an incorrect denomination or applied or procured, directly or indirectly, in connection with fraudulent actions, fraudulent claims, compensation abuse or in connection with any violation of these Travel Credit Terms or the RENT LUV Terms. RENT LUV also reserves the right to any remedy, including disqualifying you from participation in the Offer, if it suspects or determines that you have committed fraud or otherwise violated the Travel Credit Terms or RENT LUV Terms.</p><p>We can update these terms at any time without prior notice. If we modify these terms, we will post the modification on the RENT LUV.com website, applications, or services, which are effective upon posting. Use of any Travel Credit after any modification shall constitute consent to such modification.</p>','TRAVEL CREDIT','Travel Credit Terms and Conditions for RENT LUV.','2019-07-12 07:58:42','2021-05-14 14:19:49'),(4,'Terms & Privacy','<p></p>','TERMS & PRIVACY','Terms & Privacy','2019-07-12 07:58:42','2021-05-13 23:00:14'),(5,'Help','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen books. </p>','HELP','Help page description','2020-04-13 11:33:10','2021-05-13 23:00:21'),(6,'Cookie Policy','<h2>What Are Cookies?</h2><p><br></p><p>A cookie is a text file stored on your computer. Cookies store bits of information that we use to help make our website work. They can’t run any code and don’t contain viruses. No one can read our cookies except us.</p><p><br></p><p><strong>How We Use Cookies&nbsp;</strong></p><p>RENTLUV.com uses cookies to improve your experience on this website. We’d like to let you know a few things about our cookies:</p><ul><li>Certain cookies are essential to the proper function of this site</li><li>Cookies help us to understand what content is most useful to our visitors, and allow us to customize our services, content, and advertising</li></ul><p><br></p><p><strong>Types of Cookies We Use</strong></p><p><br></p><p><strong>﻿First and third-party cookies</strong></p><p>There are many different types of cookies and at wwwRENTLUV.com we use them all. Those set by us are called&nbsp;<em>\'first-party cookies\'</em>. Those set by our partners and suppliers are called&nbsp;<em>\'third-party cookies\'</em>.</p><p>Third-party cookies enable visitors to our website to see and interact with content such as advertising provided to us by other companies. The same cookies can also help us with website analytics. Further details on third-party cookies are set out later in this policy.</p><p><br></p><p><strong>Session and persistent cookies</strong></p><p>As with most websites, we also use \'session cookies\', which exist only for the length of time that you visit our site and are deleted once you close your browser, along with \'permanent cookies\' also known as \'persistent cookies\' which remain stored on your browser ready for use the next time you visit our website.</p><p><br></p><p><strong>Essential cookies</strong></p><p>These are required to help you access secure areas, such as your customer account pages. Essential cookies are critical because you can’t access these services without them.</p><p><br></p><p><strong>Performance and functionality cookies</strong></p><p>These cookies ensure the display of handy features such as maps and videos. We use them because they help to enhance the performance and functionality of our website, and we want the time you spend on our site to be both useful and engaging.</p><p><br></p><p><strong>Analytics and customization cookies</strong></p><p>We use analytics and customization cookies to gather information on how the website is being used by our visitors and to discover how popular our marketing campaigns are. We also use the data we get to help customize the website for you and make the content you see as relevant as possible.</p><p><br></p><p><strong>Advertising cookies</strong></p><p>Advertising cookies are used to ensure that we only show you the adverts and messages we think you will want to see. Cleverly, they also help us to restrict the number of times you see the same advert, ensure the ad is properly displayed.&nbsp;</p><p>When you access a site/application containing advertising of RENT LUV, this advertisement may contain a cookie. This cookie may, subject to your choice, be stored on your device, and allow us to recognize the browser on your device for the duration of the cookie.</p><p><br></p><p>These cookies are used:</p><ul><li>To account for the number of displays and activations of our advertising content on sites / third party applications, to identify these contents and sites/applications, determine the number of users who clicked on the content</li><li>To calculate the amounts owed to parties in the chain of broadcast advertising (advertising agency, advertising, website/distribution medium) and compile statistics</li><li>To adapt the presentation of the site which publishes our advertising content,&nbsp;according to the display preferences of your device (choice of language, display resolution, operating system used) when you visit our website and on the hardware and software to view or read your terminal includes, according to the location data (latitude and longitude) that is transmitted to us (or our suppliers) from your device with your prior consent</li><li>To follow subsequent browsing done by your device on sites/applications or other advertising content on which we operate cookies.</li></ul><p><br></p><p><strong>Cookies issued by third parties&nbsp;</strong></p><p><strong>a. advertising</strong></p><p>Advertising content (graphics, animations, video, etc.) in our broadcast advertising may contain cookies placed by third parties.&nbsp;The placement and the use of cookies by such third parties are subject to the privacy policy of these third parties.&nbsp;</p><p>These cookies help the third parties (while the cookies are valid) to:</p><ul><li>Count the number of display advertising content delivered via our advertising, identify and advertisements displayed, the number of users who clicked on each ad, allowing them to calculate the amounts due and thereby establish statistics;</li><li>Recognize your device at any subsequent browsing of any other site or service on which these advertisers or third parties also place these cookies and, if necessary, adapt these third party sites and services or advertisements they broadcast to your device.</li><li>For example, anonymous browser cookies, are dropped by our advertising providers (such as Google, Facebook, Microsoft, and Criteo), to allow them to track (on behalf of RENT LUV) products viewed by the users and pages visited on HomeAway.&nbsp;</li></ul><p><br></p><p>The information collected will be used by these advertising providers to display advertisements on other websites, or “publishers”. These publishers may also place cookies in your browser. These cookies are there so that the publishers recognize that our advertising providers have a personalized advertisement available for your browser.</p><p><br></p><p>Most advertising networks offer you a way to opt-out of targeted and online behavioral advertising.&nbsp;If you’d like to find out more information on how to opt-out visit Your Online Choices [LINK:&nbsp;<a href=\"http://www.youronlinechoices.eu/\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"keychainify-checked\">http://www.youronlinechoices.eu/</a>] website.</p><p><br></p><p><strong>b. Google Analytics</strong></p><p>Google Analytics, a web analytics service provided by Google Inc., uses cookies to gather information about how visitors use our site.</p><p>Google Analytics uses its own cookies, to analyze the use of the site on behalf of the operator of that site.&nbsp;The information generated by the cookies about your use of the website is transmitted to Google.&nbsp;This information is then used for the purpose of compiling statistical reports to enable us to measure and analyze the number of visits to the site and its pages, the average time spent on the site, and the pages viewed.&nbsp;</p><p><br></p><p>For further information about Google Analytics please visit&nbsp;<a href=\"http://www.google.com/analytics\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"keychainify-checked\">www.google.com/analytics</a>&nbsp;and for details of Google Analytics’ Privacy Policy, please visit&nbsp;<a href=\"https://policies.google.com/privacy\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"keychainify-checked\">https://policies.google.com/privacy</a>.</p><p><br></p><p><strong>c. Social buttons</strong></p><p>These \"social buttons\" are visible on our website to allow you to share content via social networks, including Facebook, Pinterest, Twitter, LinkedIn, YouTube, and Google Plus. Cookies are placed by these platforms on our site, and allow them to collect information about your browsing.  </p><p><br></p><p><strong>d. IT tests</strong></p><p>These cookies, emanating from our contracted suppliers, test at our request the features of our site and the performance of user navigation of our site.</p><p><br></p><p><strong>Your Choices Regarding Cookies&nbsp;</strong></p><p>We hope you’re now feeling confident about what cookies can do, and how we use them at RENT LUV to improve your website experience, but we know that you may want to manage your cookies from time to time to so here is some guidance.</p><p>You can choose to have your computer warn you each time a cookie is being set, or you can choose to turn off all cookies. You do this through your browser settings. Each browser is a little different, so look at your browser’s Help menu to learn the correct way to modify your cookies.</p><p>If you turn cookies off, you won\'t have access to many features that make your experience more efficient and some of our services will not function properly.</p><p><br></p><p><br></p>','COOKIE POLICY','Information About Cookies on RENT LUV','2021-02-03 13:01:43','2021-05-14 13:30:49');
/*!40000 ALTER TABLE `StaticPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ThreadItems`
--

DROP TABLE IF EXISTS `ThreadItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ThreadItems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `threadId` int NOT NULL,
  `sentBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `isRead` tinyint(1) DEFAULT NULL,
  `type` enum('message','inquiry','preApproved','declined','approved','pending','cancelledByHost','cancelledByGuest','intantBooking','requestToBook','confirmed','expired','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'message',
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `personCapacity` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `reservationId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `threadId` (`threadId`),
  CONSTRAINT `ThreadItems_ibfk_1` FOREIGN KEY (`threadId`) REFERENCES `Threads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ThreadItems`
--

LOCK TABLES `ThreadItems` WRITE;
/*!40000 ALTER TABLE `ThreadItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `ThreadItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Threads`
--

DROP TABLE IF EXISTS `Threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Threads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isRead` tinyint(1) DEFAULT NULL,
  `messageUpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  CONSTRAINT `Threads_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Threads`
--

LOCK TABLES `Threads` WRITE;
/*!40000 ALTER TABLE `Threads` DISABLE KEYS */;
/*!40000 ALTER TABLE `Threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reservationId` int NOT NULL,
  `payerEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payerId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiverEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiverId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `total` float NOT NULL,
  `transactionFee` float DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipn_track_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentType` enum('booking','cancellation','host') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'booking',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `paymentMethodId` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `reservationId` (`reservationId`),
  CONSTRAINT `Transaction_ibfk_1` FOREIGN KEY (`reservationId`) REFERENCES `Reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransactionHistory`
--

DROP TABLE IF EXISTS `TransactionHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TransactionHistory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reservationId` int NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payoutId` int NOT NULL,
  `payoutEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `fees` float DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `transactionId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentMethodId` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reservationId` (`reservationId`),
  CONSTRAINT `TransactionHistory_ibfk_1` FOREIGN KEY (`reservationId`) REFERENCES `Reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransactionHistory`
--

LOCK TABLES `TransactionHistory` WRITE;
/*!40000 ALTER TABLE `TransactionHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransactionHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailConfirmed` tinyint(1) DEFAULT '0',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userBanStatus` tinyint(1) DEFAULT '0',
  `userDeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('977bc550-5069-11e9-a14e-635e0fd3bfa6','qa@radicalstart.com','$2a$08$lqcmo6OgjVbcioD1uDAlueCdu6JYBwZe2xaoc1dEparRYKDjFrv9y',1,'email','2019-03-27 08:23:25','2019-03-27 08:23:25',0,NULL),('d1d6d5a0-5064-11e9-a14e-635e0fd3bfa6','demo@radicalstart.com','$2a$08$jkiXGz2lM41L47LdWFTBZuLhwT3dTLDK3Nmhjx6PrRydp0DEEb9gG',1,'email','2019-03-27 07:49:15','2019-03-27 07:49:15',0,NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAmenities`
--

DROP TABLE IF EXISTS `UserAmenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserAmenities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `amenitiesId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  CONSTRAINT `UserAmenities_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAmenities`
--

LOCK TABLES `UserAmenities` WRITE;
/*!40000 ALTER TABLE `UserAmenities` DISABLE KEYS */;
INSERT INTO `UserAmenities` VALUES (1,1,26,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(2,1,25,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(3,1,27,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(4,1,73,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(5,1,118,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(21,7,27,'2019-03-27 10:09:33','2019-03-27 10:09:33'),(22,7,73,'2019-03-27 10:09:33','2019-03-27 10:09:33'),(23,7,25,'2019-03-27 10:09:33','2019-03-27 10:09:33'),(24,7,118,'2019-03-27 10:09:33','2019-03-27 10:09:33'),(28,6,27,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(29,6,25,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(30,6,118,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(31,5,25,'2019-07-04 10:57:09','2019-07-04 10:57:09'),(32,5,73,'2019-07-04 10:57:09','2019-07-04 10:57:09'),(33,5,28,'2019-07-04 10:57:09','2019-07-04 10:57:09'),(37,3,26,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(38,3,27,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(39,3,73,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(40,2,25,'2019-07-04 11:02:18','2019-07-04 11:02:18'),(41,2,119,'2019-07-04 11:02:18','2019-07-04 11:02:18'),(42,2,73,'2019-07-04 11:02:18','2019-07-04 11:02:18'),(57,8,26,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(58,8,25,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(59,8,27,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(60,8,73,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(61,8,119,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(62,8,118,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(63,8,28,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(64,4,27,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(65,4,25,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(66,4,73,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(67,4,28,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(68,4,118,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(69,4,26,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(70,4,119,'2020-08-10 07:12:12','2020-08-10 07:12:12');
/*!40000 ALTER TABLE `UserAmenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserClaim`
--

DROP TABLE IF EXISTS `UserClaim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserClaim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `UserClaim_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserClaim`
--

LOCK TABLES `UserClaim` WRITE;
/*!40000 ALTER TABLE `UserClaim` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserClaim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserHouseRules`
--

DROP TABLE IF EXISTS `UserHouseRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserHouseRules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `houseRulesId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  KEY `houseRulesId` (`houseRulesId`),
  CONSTRAINT `UserHouseRules_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `UserHouseRules_ibfk_2` FOREIGN KEY (`houseRulesId`) REFERENCES `ListSettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserHouseRules`
--

LOCK TABLES `UserHouseRules` WRITE;
/*!40000 ALTER TABLE `UserHouseRules` DISABLE KEYS */;
INSERT INTO `UserHouseRules` VALUES (1,1,'2019-03-27 09:49:54','2019-03-27 09:49:54',48),(2,1,'2019-03-27 09:49:54','2019-03-27 09:49:54',50),(3,1,'2019-03-27 09:49:54','2019-03-27 09:49:54',51),(4,2,'2019-03-27 09:52:48','2019-03-27 09:52:48',50),(5,2,'2019-03-27 09:52:48','2019-03-27 09:52:48',52),(6,3,'2019-03-27 09:55:45','2019-03-27 09:55:45',50),(7,3,'2019-03-27 09:55:45','2019-03-27 09:55:45',52),(11,5,'2019-03-27 10:05:46','2019-03-27 10:05:46',51),(12,5,'2019-03-27 10:05:46','2019-03-27 10:05:46',50),(13,5,'2019-03-27 10:05:46','2019-03-27 10:05:46',52),(17,6,'2019-03-27 10:08:28','2019-03-27 10:08:28',50),(18,6,'2019-03-27 10:08:28','2019-03-27 10:08:28',51),(19,6,'2019-03-27 10:08:28','2019-03-27 10:08:28',49),(25,7,'2019-11-13 11:56:53','2019-11-13 11:56:53',50),(26,8,'2020-01-23 05:53:23','2020-01-23 05:53:23',48),(27,8,'2020-01-23 05:53:23','2020-01-23 05:53:23',50),(28,8,'2020-01-23 05:53:23','2020-01-23 05:53:23',52),(29,8,'2020-01-23 05:53:23','2020-01-23 05:53:23',49),(30,8,'2020-01-23 05:53:23','2020-01-23 05:53:23',51),(31,4,'2020-08-10 07:12:37','2020-08-10 07:12:37',49),(32,4,'2020-08-10 07:12:37','2020-08-10 07:12:37',50),(33,4,'2020-08-10 07:12:37','2020-08-10 07:12:37',52);
/*!40000 ALTER TABLE `UserHouseRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserListingData`
--

DROP TABLE IF EXISTS `UserListingData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserListingData` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `settingsId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  CONSTRAINT `UserListingData_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserListingData`
--

LOCK TABLES `UserListingData` WRITE;
/*!40000 ALTER TABLE `UserListingData` DISABLE KEYS */;
INSERT INTO `UserListingData` VALUES (6,1,77,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(7,1,5,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(8,1,10,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(9,1,16,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(10,1,22,'2019-03-27 09:46:00','2019-03-27 09:46:00'),(66,7,77,'2019-03-27 10:09:32','2019-03-27 10:09:32'),(67,7,5,'2019-03-27 10:09:32','2019-03-27 10:09:32'),(68,7,11,'2019-03-27 10:09:32','2019-03-27 10:09:32'),(69,7,16,'2019-03-27 10:09:32','2019-03-27 10:09:32'),(70,7,22,'2019-03-27 10:09:32','2019-03-27 10:09:32'),(76,6,76,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(77,6,6,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(78,6,10,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(79,6,16,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(80,6,22,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(81,5,77,'2019-07-04 10:57:09','2019-07-04 10:57:09'),(82,5,5,'2019-07-04 10:57:09','2019-07-04 10:57:09'),(83,5,10,'2019-07-04 10:57:09','2019-07-04 10:57:09'),(84,5,16,'2019-07-04 10:57:09','2019-07-04 10:57:09'),(85,5,22,'2019-07-04 10:57:09','2019-07-04 10:57:09'),(91,3,113,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(92,3,6,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(93,3,10,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(94,3,16,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(95,3,22,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(96,2,74,'2019-07-04 11:02:18','2019-07-04 11:02:18'),(97,2,5,'2019-07-04 11:02:18','2019-07-04 11:02:18'),(98,2,10,'2019-07-04 11:02:18','2019-07-04 11:02:18'),(99,2,16,'2019-07-04 11:02:18','2019-07-04 11:02:18'),(100,2,22,'2019-07-04 11:02:18','2019-07-04 11:02:18'),(116,8,77,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(117,8,5,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(118,8,11,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(119,8,16,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(120,8,22,'2020-04-13 13:10:32','2020-04-13 13:10:32'),(121,4,113,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(122,4,7,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(123,4,10,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(124,4,22,'2020-08-10 07:12:12','2020-08-10 07:12:12');
/*!40000 ALTER TABLE `UserListingData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserListingSteps`
--

DROP TABLE IF EXISTS `UserListingSteps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserListingSteps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `step1` enum('inactive','active','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `step2` enum('inactive','active','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `step3` enum('inactive','active','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `step4` enum('inactive','active','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  CONSTRAINT `UserListingSteps_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserListingSteps`
--

LOCK TABLES `UserListingSteps` WRITE;
/*!40000 ALTER TABLE `UserListingSteps` DISABLE KEYS */;
INSERT INTO `UserListingSteps` VALUES (1,1,'completed','completed','completed','2019-03-27 09:45:45','2019-03-27 09:49:54','completed'),(2,2,'completed','completed','completed','2019-03-27 09:50:29','2019-03-27 09:52:49','completed'),(3,3,'completed','completed','completed','2019-03-27 09:54:04','2019-03-27 09:55:45','completed'),(4,4,'completed','completed','completed','2019-03-27 09:56:38','2019-03-27 09:59:06','completed'),(5,5,'completed','completed','completed','2019-03-27 10:03:31','2019-03-27 10:05:46','completed'),(6,6,'completed','completed','completed','2019-03-27 10:07:00','2019-03-27 10:08:24','completed'),(7,7,'completed','completed','completed','2019-03-27 10:09:22','2019-03-27 10:11:05','completed'),(8,8,'completed','completed','completed','2020-01-23 05:50:56','2020-01-23 05:53:24','completed');
/*!40000 ALTER TABLE `UserListingSteps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserLogin`
--

DROP TABLE IF EXISTS `UserLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserLogin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deviceType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deviceId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deviceDetail` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserLogin`
--

LOCK TABLES `UserLogin` WRITE;
/*!40000 ALTER TABLE `UserLogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserProfile`
--

DROP TABLE IF EXISTS `UserProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserProfile` (
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profileId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateOfBirth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferredLanguage` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferredCurrency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `stripeCusId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int DEFAULT '1',
  `verificationCode` int DEFAULT NULL,
  `countryCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `profileId` (`profileId`),
  UNIQUE KEY `UserProfile_profileId_unique` (`profileId`),
  CONSTRAINT `UserProfile_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserProfile`
--

LOCK TABLES `UserProfile` WRITE;
/*!40000 ALTER TABLE `UserProfile` DISABLE KEYS */;
INSERT INTO `UserProfile` VALUES ('977bc550-5069-11e9-a14e-635e0fd3bfa6',2,'Radical','QA','Radical QA','1-2000-1','d61ba8288aa9dc05f73b34d9d8fc4871.jpeg','Female',NULL,'en','EUR','I always wanted to be a great writer, like Victor Hugo who wrote \"Les Miserable\", or like Roman Roland who wrote \"John Christopher\". They have influenced millions of people through their books. I also wanted to be a great psychologist, like William James or Sigmund Freud, who could read people’s mind. Of course, I am nowhere close to these people, yet. I am just someone who does some teaching, some research, and some writing. But my dream is still alive.','Lives in The City, United Kingdom','2019-03-27 08:23:25','2019-07-04 10:31:38',NULL,1,NULL,NULL,NULL),('d1d6d5a0-5064-11e9-a14e-635e0fd3bfa6',1,'Demo','User','Demo User','10-1994-5','13579aa2edf46b7a707be6b537259f45.jpeg','Male',NULL,'en','USD','I am a person who is positive about every aspect of life. There are many things I like to do, to see, and to experience. I like to read, I like to write; I like to think, I like to dream; I like to talk, I like to listen. I like to see the sunrise in the morning, I like to see the moonlight at night; I like to feel the music flowing on my face, I like to smell the wind coming from the ocean. I like to look at the clouds in the sky with a blank mind, I like to do thought experiment when I cannot sleep in the middle of the night. I like flowers in spring, rain in summer, leaves in autumn, and snow in winter. I like to sleep early, I like to get up late; I like to be alone, I like to be surrounded by people. I like country’s peace, I like metropolis’ noise; I like the beautiful west lake in Hangzhou, I like the flat cornfield in Campaign. I like delicious food and comfortable shoes; I like good books and romantic movies. I like the land and the nature, I like people. And, I like to laugh.','Architect based in Los Angeles,  CA.','2019-03-27 07:49:16','2019-07-04 11:29:49',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `UserProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSafetyAmenities`
--

DROP TABLE IF EXISTS `UserSafetyAmenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserSafetyAmenities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `safetyAmenitiesId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  CONSTRAINT `UserSafetyAmenities_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSafetyAmenities`
--

LOCK TABLES `UserSafetyAmenities` WRITE;
/*!40000 ALTER TABLE `UserSafetyAmenities` DISABLE KEYS */;
INSERT INTO `UserSafetyAmenities` VALUES (1,1,32,'2019-03-27 09:46:01','2019-03-27 09:46:01'),(2,1,29,'2019-03-27 09:46:01','2019-03-27 09:46:01'),(3,1,31,'2019-03-27 09:46:01','2019-03-27 09:46:01'),(15,7,30,'2019-03-27 10:09:33','2019-03-27 10:09:33'),(16,7,32,'2019-03-27 10:09:33','2019-03-27 10:09:33'),(19,6,30,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(20,6,32,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(21,5,30,'2019-07-04 10:57:10','2019-07-04 10:57:10'),(22,5,29,'2019-07-04 10:57:10','2019-07-04 10:57:10'),(23,5,31,'2019-07-04 10:57:10','2019-07-04 10:57:10'),(26,3,29,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(27,3,31,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(28,2,30,'2019-07-04 11:02:19','2019-07-04 11:02:19'),(29,2,32,'2019-07-04 11:02:19','2019-07-04 11:02:19'),(38,8,30,'2020-04-13 13:10:33','2020-04-13 13:10:33'),(39,8,32,'2020-04-13 13:10:33','2020-04-13 13:10:33'),(40,8,29,'2020-04-13 13:10:33','2020-04-13 13:10:33'),(41,8,31,'2020-04-13 13:10:33','2020-04-13 13:10:33'),(42,4,29,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(43,4,31,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(44,4,32,'2020-08-10 07:12:12','2020-08-10 07:12:12'),(45,4,30,'2020-08-10 07:12:12','2020-08-10 07:12:12');
/*!40000 ALTER TABLE `UserSafetyAmenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSpaces`
--

DROP TABLE IF EXISTS `UserSpaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserSpaces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `spacesId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listId` (`listId`),
  KEY `spacesId` (`spacesId`),
  CONSTRAINT `UserSpaces_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `UserSpaces_ibfk_2` FOREIGN KEY (`spacesId`) REFERENCES `ListSettings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSpaces`
--

LOCK TABLES `UserSpaces` WRITE;
/*!40000 ALTER TABLE `UserSpaces` DISABLE KEYS */;
INSERT INTO `UserSpaces` VALUES (1,1,36,'2019-03-27 09:46:01','2019-03-27 09:46:01'),(2,1,34,'2019-03-27 09:46:01','2019-03-27 09:46:01'),(13,7,34,'2019-03-27 10:09:33','2019-03-27 10:09:33'),(14,7,36,'2019-03-27 10:09:33','2019-03-27 10:09:33'),(15,7,33,'2019-03-27 10:09:33','2019-03-27 10:09:33'),(18,6,34,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(19,6,36,'2019-07-04 10:52:39','2019-07-04 10:52:39'),(20,5,34,'2019-07-04 10:57:10','2019-07-04 10:57:10'),(21,5,33,'2019-07-04 10:57:10','2019-07-04 10:57:10'),(22,5,35,'2019-07-04 10:57:10','2019-07-04 10:57:10'),(24,3,33,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(25,3,36,'2019-07-04 11:00:34','2019-07-04 11:00:34'),(26,2,34,'2019-07-04 11:02:19','2019-07-04 11:02:19'),(27,2,33,'2019-07-04 11:02:19','2019-07-04 11:02:19'),(33,8,33,'2020-04-13 13:10:33','2020-04-13 13:10:33'),(34,8,34,'2020-04-13 13:10:33','2020-04-13 13:10:33'),(35,8,35,'2020-04-13 13:10:33','2020-04-13 13:10:33'),(36,8,36,'2020-04-13 13:10:33','2020-04-13 13:10:33'),(37,4,34,'2020-08-10 07:12:12','2020-08-10 07:12:12');
/*!40000 ALTER TABLE `UserSpaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserVerifiedInfo`
--

DROP TABLE IF EXISTS `UserVerifiedInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserVerifiedInfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isEmailConfirmed` tinyint(1) DEFAULT '0',
  `isFacebookConnected` tinyint(1) DEFAULT '0',
  `isGoogleConnected` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isIdVerification` tinyint(1) DEFAULT '0',
  `isPhoneVerified` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `UserVerifiedInfo_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserVerifiedInfo`
--

LOCK TABLES `UserVerifiedInfo` WRITE;
/*!40000 ALTER TABLE `UserVerifiedInfo` DISABLE KEYS */;
INSERT INTO `UserVerifiedInfo` VALUES (1,'d1d6d5a0-5064-11e9-a14e-635e0fd3bfa6',1,0,0,'2019-03-27 07:49:16','2019-03-27 07:49:16',0,0),(2,'977bc550-5069-11e9-a14e-635e0fd3bfa6',1,0,0,'2019-03-27 08:23:25','2019-03-27 08:23:25',0,0);
/*!40000 ALTER TABLE `UserVerifiedInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WhyHostInfoBlock`
--

DROP TABLE IF EXISTS `WhyHostInfoBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WhyHostInfoBlock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WhyHostInfoBlock`
--

LOCK TABLES `WhyHostInfoBlock` WRITE;
/*!40000 ALTER TABLE `WhyHostInfoBlock` DISABLE KEYS */;
INSERT INTO `WhyHostInfoBlock` VALUES (1,'Host Banner Title 1','hostBannerTitle1','THE HOSTESS WITH THE MOSTES','2020-04-13 11:33:10','2021-05-14 12:05:09'),(2,'Host Banner Image 1','hostBannerImage1','2ae2bf4b77268d77302393a6bd452041.jpeg','2020-04-13 11:33:10','2021-05-14 12:05:09'),(3,'Why Block Title 1','whyBlockTitle1','WHAT IS AN NFT?','2020-04-13 11:33:10','2021-05-14 12:15:19'),(4,'Why Block Title 2','whyBlockTitle2','DECENTRALIZED RENTALS','2020-04-13 11:33:10','2021-05-14 12:15:19'),(5,'Why Block Content 1','whyBlockContent1','An NFT is a non-fungible token created with blockchain technology that verifies its authentication. In the case of the travel industry, a plane ticket or hotel room can be an NFT because there is only one in existence verified with blockchain technology.','2020-04-13 11:33:10','2021-05-14 12:15:19'),(6,'Why Block Content 2','whyBlockContent2','Decentralized rentals meaning there is no middleman centralized between the host and guest. This allows us to secure your booking with blockchain technology, expedite your booking time and remove unnecessary fees. \n','2020-04-13 11:33:10','2021-05-14 12:15:19'),(7,'Hosting Block Title Heading','hostingBlockTitleHeading','HOW RENT LUV WORKS?','2020-04-13 11:33:10','2021-05-14 12:17:56'),(8,'Hosting Block Title 1','hostingBlockTitle1','CREATE','2020-04-13 11:33:10','2021-05-14 12:17:56'),(9,'Hosting Block Title 2','hostingBlockTitle2','UPLOAD','2020-04-13 11:33:10','2021-05-14 12:17:56'),(10,'Hosting Block Title 3','hostingBlockTitle3','GET PAID','2020-04-13 11:33:10','2021-05-14 12:17:56'),(11,'Hosting Block Content 1','hostingBlockContent1','Create a sweet video walkthrough of your rental home, yacht, or car.\n\n\n','2020-04-13 11:33:10','2021-05-14 12:17:56'),(12,'Hosting Block Content 2','hostingBlockContent2','Create an NFT by uploading your video to the LUV NFT (https://luvnft.com) marketplace. ','2020-04-13 11:33:10','2021-05-14 12:17:56'),(13,'Hosting Block Content 3','hostingBlockContent3','Once someone buys your NFT, you will get paid instantly. No hosting fees equal a higher ROI (return on your investment). You also receive $LUV for each booking.\n\n','2020-04-13 11:33:10','2021-05-14 12:17:56'),(14,'Cover Section Title 1','coverSectionTitle1','THE BENEFITS OF NFT RENTALS','2020-04-13 11:33:10','2021-05-14 17:49:17'),(15,'Cover Section Image 1','coverSectionImage1','dac8609c12c8681d239b9b99c773b5c0.png','2020-04-13 11:33:10','2021-05-14 17:49:17'),(16,'Cover Section Content 1','coverSectionContent1','Guests have the opportunity to market your rental better than you and profit from the secondary sale without the host being involved. The host will receive the royalties off of each sale. All of the buyers of your rental are verified with blockchain technology. \n ','2020-04-13 11:33:10','2021-05-14 17:49:17'),(17,'Cover Section Content 2','coverSectionContent2','The amount of $LUV a guest has or spreads allows you to evaluate if they are a good fit for your rental.  A host and guest receive LUV Coins for positive activity on Rent LUV and offline. \n\n','2020-04-13 11:33:10','2021-05-14 17:49:17'),(18,'Cover Section Feature 1','coverSectionFeature1','No more booking fees\n','2020-04-13 11:33:10','2021-05-14 17:49:17'),(19,'Cover Section Feature 2','coverSectionFeature2','No more split-fees \n','2020-04-13 11:33:10','2021-05-14 17:49:17'),(20,'Cover Section Feature 3','coverSectionFeature3','No more guest service fees ','2020-04-13 11:33:10','2021-05-14 17:49:17'),(21,'Cover Section Feature 4','coverSectionFeature4','No host-only fees\n','2020-04-13 11:33:10','2021-05-14 17:49:17'),(22,'Cover Section Feature 5','coverSectionFeature5','No host service fees\n','2020-04-13 11:33:10','2021-05-14 17:49:17'),(23,'Cover Section Feature 6','coverSectionFeature6','No cleaning fees','2020-04-13 11:33:10','2021-05-14 17:49:17'),(24,'Payment Title Heading','paymentTitleHeading','REWARD LUV','2020-04-13 11:33:10','2021-05-14 12:26:27'),(25,'Payment Title 1','paymentTitle1','REVIEW LUV','2020-04-13 11:33:10','2021-05-14 12:26:27'),(26,'Payment Title 2','paymentTitle2','LOYALTY LUV','2020-04-13 11:33:10','2021-05-14 12:26:27'),(27,'Payment Title 3','paymentTitle3','CASH IN YOUR LUV','2020-04-13 11:33:10','2021-05-14 12:26:27'),(28,'Payment Content 1','paymentContent1','Guests receive $LUV for leaving reviews, and hosts receive $LUV for positive reviews. \n\n','2020-04-13 11:33:10','2021-05-14 12:26:27'),(29,'Payment Content 2','paymentContent2','More bookings will equate to more $LUV. We will onboard local businesses throughout the world that will accept your $LUV as a form of payment. \n\n','2020-04-13 11:33:10','2021-05-14 12:26:27'),(30,'Payment Content 3','paymentContent3','Earn enough $LUV to qualify for free Rent LUV bookings. \n\n\n\n','2020-04-13 11:33:10','2021-05-14 12:26:27'),(31,'Quote Section Title 1','quoteSectionTitle1','I am excited about how NFTs in the virtual world are going to be applied to real estate in the physical world. I suspect that people will soon be able to buy a building.','2020-04-13 11:33:10','2021-05-14 12:28:48'),(32,'Quote Section Title 2','quoteSectionTitle2','Blockchain solves the problem of manipulation. When I speak about it in the West, people say they trust Google, Facebook, or their banks. But the rest of the world doesn’t trust organizations.','2020-04-13 11:33:10','2021-05-14 12:28:48'),(33,'Quote Section Content 1','quoteSectionContent1','Legendary venture capitalist, Tim Draper\n','2020-04-13 11:33:10','2021-05-14 12:28:48'),(34,'Quote Section Content 2','quoteSectionContent2','Vitalik Buterin, inventor of Ethereum \n','2020-04-13 11:33:10','2021-05-14 12:28:48'),(35,'Quote Section Image 1','quoteSectionImage1','7124b257a3a990c90b4507d569774d69.jpeg','2020-04-13 11:33:10','2021-05-14 12:28:48'),(36,'Quote Section Image 2','quoteSectionImage2','eeeea4b2e706fd97aac9cda8c533f088.jpeg','2020-04-13 11:33:10','2021-05-14 12:28:48'),(37,'Quote Section Button 1','quoteSectionButton1','SIGN UP','2020-04-13 11:33:10','2021-05-14 12:28:48'),(38,'Quote Section Button 2','quoteSectionButton2','SIGN UP','2020-04-13 11:33:10','2021-05-14 12:28:48'),(39,'FAQ Title 1','faqTitle1','How do I get paid with NFT rentals?','2020-04-13 11:33:10','2021-05-14 12:55:56'),(40,'FAQ Title 2','faqTitle2','How do you verify the guest with NFT rentals?','2020-04-13 11:33:10','2021-05-14 12:55:56'),(41,'FAQ Title 3','faqTitle3','What happens in the event of a cancellation?','2020-04-13 11:33:10','2021-05-14 12:55:56'),(42,'FAQ Title 4','faqTitle4','How will a guest purchase my NFTs?','2020-04-13 11:33:10','2021-05-14 12:55:56'),(43,'FAQ Title 5','faqTitle5','','2020-04-13 11:33:10','2021-05-14 12:55:56'),(44,'FAQ Title 6','faqTitle6','','2020-04-13 11:33:10','2021-05-14 12:55:56'),(45,'FAQ Title 7','faqTitle7','','2020-04-13 11:33:10','2021-05-14 12:55:56'),(46,'FAQ Title 8','faqTitle8','','2020-04-13 11:33:10','2021-05-14 12:55:56'),(47,'FAQ Content 1','faqContent1','First, you create a digital wallet on luvnft.com, then create an NFT for your rental which creates a smart contract. Once someone purchases your NFT on LUV NFT Marketplace you will receive $KSM equivalent to the USD cost of your rental. In the event of someone reselling your NFT rental on LUV NFT Marketplace, you will receive royalties on each sale.','2020-04-13 11:33:10','2021-05-14 12:55:56'),(48,'FAQ Content 2','faqContent2','The buyer of your RENT LUV NFT on LUV NFT Marketplace has your NFT rental stored in their secure digital wallet. The RENT LUV NFT can\'t be cloned, duplicated, or destroyed. The NFT can be displayed to the anyone needing to verify temporary ownership of your rental. The guest can also be verified with a QR code reader. \n','2020-04-13 11:33:10','2021-05-14 12:55:56'),(49,'FAQ Content 3','faqContent3','One of the many benefits of NFT rentals is the ability for a guest to resell or transfer a rental in the event of a cancellation without the host being involved. These options will increase your rental bookings, reduce cancellations and reduce guests having to contact you as the host.','2020-04-13 11:33:10','2021-05-14 12:55:56'),(50,'FAQ Content 4','faqContent4','LUV NFT allows guests the ability to easily purchase crypto through an exchange and buy NFTs with a debit or credit card. \n','2020-04-13 11:33:10','2021-05-14 12:55:56'),(51,'FAQ Content 5','faqContent5','','2020-04-13 11:33:10','2021-05-14 12:55:56'),(52,'FAQ Content 6','faqContent6','','2020-04-13 11:33:10','2021-05-14 12:55:56'),(53,'FAQ Content 7','faqContent7','','2020-04-13 11:33:10','2021-05-14 12:55:56'),(54,'FAQ Content 8','faqContent8','','2020-04-13 11:33:10','2021-05-14 12:55:56');
/*!40000 ALTER TABLE `WhyHostInfoBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WishList`
--

DROP TABLE IF EXISTS `WishList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WishList` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wishListGroupId` int NOT NULL,
  `listId` int NOT NULL,
  `userId` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isListActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishListGroupId` (`wishListGroupId`),
  KEY `listId` (`listId`),
  CONSTRAINT `WishList_ibfk_1` FOREIGN KEY (`wishListGroupId`) REFERENCES `WishListGroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `WishList_ibfk_2` FOREIGN KEY (`listId`) REFERENCES `Listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WishList`
--

LOCK TABLES `WishList` WRITE;
/*!40000 ALTER TABLE `WishList` DISABLE KEYS */;
/*!40000 ALTER TABLE `WishList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WishListGroup`
--

DROP TABLE IF EXISTS `WishListGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WishListGroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `userId` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `isPublic` int DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WishListGroup`
--

LOCK TABLES `WishListGroup` WRITE;
/*!40000 ALTER TABLE `WishListGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `WishListGroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19  3:56:30
