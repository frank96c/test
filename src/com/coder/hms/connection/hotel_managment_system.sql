-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel_managment_system
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `CustomerId` bigint(100) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Country` varchar(45) NOT NULL,
  `Document` varchar(45) DEFAULT NULL,
  `DocumentNo` varchar(45) DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `MaritalStatus` varchar(45) DEFAULT 'SINGLE',
  `FatherName` varchar(45) DEFAULT NULL,
  `MotherName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `ReservationId` bigint(100) NOT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (3,'GOOGLE','JSON','United States','PASSPORT','USA-X98908','1990-02-22 06:36:00','MAN','SINGLE','LARRY','HACKMEN','google@gmail.com',4,'0555887123'),(4,'AÇELYA ','IŞIK','Virgin Islands U.S.','PASSPORT','VS346110','1990-01-10 04:48:49','WOMAN','SINGLE','EVREN','SOFIA','dilek_kelebek@gmail.com',5,'0090 505 1350067'),(5,'MAISON','ARMYEN','Brazil','PASSPORT','BR77XU1','1988-12-10 03:00:50','MAN','MARRIED','GRIGORA','ALYONA','maison_88@hotmail.com',6,'02 400 127374475');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hotel`
--

DROP TABLE IF EXISTS `Hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hotel` (
  `Id` bigint(25) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `starCount` int(11) DEFAULT NULL,
  `picture` longblob,
  `Owner` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `RoomCapacity` int(11) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `RoomTypes` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hotel`
--

LOCK TABLES `Hotel` WRITE;
/*!40000 ALTER TABLE `Hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HotelSystemStatus`
--

DROP TABLE IF EXISTS `HotelSystemStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HotelSystemStatus` (
  `id` bigint(5) NOT NULL AUTO_INCREMENT,
  `dateTime` date NOT NULL,
  `isAuditted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HotelSystemStatus`
--

LOCK TABLES `HotelSystemStatus` WRITE;
/*!40000 ALTER TABLE `HotelSystemStatus` DISABLE KEYS */;
INSERT INTO `HotelSystemStatus` VALUES (1,'2017-08-30',1);
/*!40000 ALTER TABLE `HotelSystemStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Payment` (
  `Id` bigint(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `paymentType` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `currency` varchar(45) DEFAULT NULL,
  `explanation` varchar(45) DEFAULT NULL,
  `roomNumber` varchar(45) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES (1,'EARLY PAYMENT','CASH PAYMENT','30','DOLLAR','','3001','2017-08-26 03:50:09'),(2,'EARLY PAYMENT','CASH PAYMENT','30','EURO','','1003','2017-08-26 03:54:51'),(5,'EARLY PAYMENT','CASH PAYMENT','820','TURKISH LIRA','FEE','1002','2017-08-26 05:34:37'),(6,'EARLY PAYMENT','CASH PAYMENT','200','TURKISH LIRA','DEPOSITE','2001','2017-08-28 02:49:03'),(7,'EARLY PAYMENT','CASH PAYMENT','100','DOLLAR','DEPOSITE','3002','2017-08-29 02:17:49'),(8,'EARLY PAYMENT','CASH PAYMENT','145','TURKISH LIRA','ROOM RATES PAYMENT','2001','2017-08-29 03:54:23'),(9,'BALANCE','CASH PAYMENT','10.296','TURKISH LIRA','CASH PAYMENT','3002','2017-08-31 01:43:44'),(11,'BALANCE','CASH PAYMENT','10285','TURKISH LIRA','CASH PAYMENT','3002','2017-08-31 01:45:20'),(12,'BALANCE','CASH PAYMENT','0.7','TURKISH LIRA','DISCOUNT','3002','2017-08-31 01:45:53'),(13,'BALANCE','CASH PAYMENT','1','TURKISH LIRA','WATER FEE','3002','2017-08-31 01:56:49'),(14,'EARLY PAYMENT','CASH PAYMENT','10640','TURKISH LIRA','XXXX','3002','2017-08-31 01:58:33');
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posting`
--

DROP TABLE IF EXISTS `Posting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Posting` (
  `Id` bigint(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `postType` varchar(45) DEFAULT 'SYSTEM',
  `price` varchar(45) DEFAULT NULL,
  `currency` varchar(45) DEFAULT NULL,
  `explanation` varchar(45) DEFAULT NULL,
  `roomNumber` varchar(45) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posting`
--

LOCK TABLES `Posting` WRITE;
/*!40000 ALTER TABLE `Posting` DISABLE KEYS */;
INSERT INTO `Posting` VALUES (2,'ROOM RATES','SYSTEM','11440','TURKISH LIRA','ROOM RATES','3002','2017-08-30 12:52:41'),(3,'MINIBAR','SYSTEM','1','TURKISH LIRA','MINI WATER','3002','2017-08-31 01:56:16');
/*!40000 ALTER TABLE `Posting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reservation` (
  `Id` bigint(100) NOT NULL AUTO_INCREMENT,
  `theNumber` varchar(45) NOT NULL,
  `checkinDate` date NOT NULL,
  `checkoutDate` date NOT NULL,
  `paymentStatus` tinyint(4) DEFAULT NULL,
  `hostType` varchar(45) NOT NULL,
  `groupName` varchar(75) NOT NULL,
  `totalDays` int(11) DEFAULT '0',
  `agency` varchar(50) NOT NULL,
  `creditType` varchar(45) NOT NULL,
  `bookStatus` varchar(45) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `isCheckedIn` varchar(45) NOT NULL DEFAULT 'NO',
  `agencyRefNo` varchar(45) DEFAULT 'ZERO',
  `referanceNo` varchar(45) DEFAULT 'ZERO',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */;
INSERT INTO `Reservation` VALUES (4,'1002','2017-08-26','2017-08-29',1,'B.B','GOOGLE JSON',3,'WEB','STANDART CUSTOMER CREDIT','GUARANTEE','','YES','GOOG-00',''),(5,'2001','2017-08-29','2017-08-30',0,'B.B','AÇELYA IŞIK',1,'WEB','STANDART CUSTOMER CREDIT','GUARANTEE','PLEASE FOLLOW ROOM RATE','YES','120039',''),(6,'3002','2017-08-29','2017-08-30',1,'B.B','MAISON ARMYEN',1,'OTHER','STANDART CUSTOMER CREDIT','GUARANTEE','','YES','7701-X','');
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `theRoomId` bigint(100) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` double DEFAULT '0',
  `totalPrice` double DEFAULT '0',
  `balance` double DEFAULT '0',
  `cleaningStatus` varchar(100) DEFAULT 'CLEAN',
  `usageStatus` varchar(45) DEFAULT 'EMPTY',
  `personCount` int(20) DEFAULT '0',
  `customerGrupName` varchar(150) DEFAULT NULL,
  `ReservationId` bigint(100) NOT NULL,
  `currency` varchar(45) DEFAULT 'TURKISH LIRA',
  `remainingDebt` double DEFAULT '0',
  PRIMARY KEY (`theRoomId`),
  UNIQUE KEY `theRoomId_UNIQUE` (`theRoomId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES (1,'1001','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(2,'1002','DOUBLE',0,0,0,'CLEAN','EMPTY',0,'',0,'',0),(3,'1003','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(4,'2001','DOUBLE',0,0,0,'DND','EMPTY',0,'',0,'',0),(5,'2002','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(6,'2003','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(7,'3001','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(8,'3002','DOUBLE',0,0,0,'DIRTY','EMPTY',0,'',0,'',0),(9,'3003','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(10,'4001','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(11,'4002','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(12,'4003','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(13,'5001','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(14,'5002','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(15,'5003','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(16,'6001','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(17,'6002','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(18,'6003','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(19,'7001','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(20,'7002','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(21,'7003','DOUBLE',0,0,0,'CLEAN','EMPTY',0,'',0,'',0),(22,'8001','DOUBLE',0,0,0,'CLEAN','EMPTY',0,'',0,'',0),(23,'8002','DOUBLE',0,0,0,'CLEAN','EMPTY',0,'',0,'',0),(24,'8003','DOUBLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(25,'1004','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(26,'1005','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(27,'2004','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(28,'2005','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(29,'3004','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(30,'3005','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(31,'4004','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(32,'4005','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(33,'5004','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(34,'5005','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(35,'6004','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(36,'6005','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(37,'7004','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(38,'7005','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(39,'8004','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(40,'8005','TWIN',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(41,'1006','TRIPLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(42,'2006','TRIPLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(43,'3006','TRIPLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(44,'4006','TRIPLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(45,'5006','TRIPLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(46,'6006','TRIPLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(47,'7006','TRIPLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0),(48,'8006','TRIPLE',0,0,0,'CLEAN','EMPTY',0,NULL,0,NULL,0);
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `Id` bigint(100) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `NickName` varchar(60) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Onur','Işik','Coder ACJHP','coder958','hexa.octabin@gmail.com','USER'),(2,'System','Creator','admin','123','system@gmail.com','ADMIN');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-18  0:27:07