-- MySQL dump 10.17  Distrib 10.3.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db.ryzomcore.local    Database: nel_ams
-- ------------------------------------------------------
-- Server version	10.2.24-MariaDB-1:10.2.24+maria~bionic

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
-- Table structure for table `ams_user`
--

CREATE DATABASE `nel_ams`;
use `nel_ams`;

DROP TABLE IF EXISTS `ams_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ams_user` (
  `UId` int(10) NOT NULL AUTO_INCREMENT,
  `Login` varchar(64) NOT NULL DEFAULT '',
  `Password` varchar(106) DEFAULT NULL,
  `Email` varchar(255) NOT NULL DEFAULT '',
  `Permission` int(3) NOT NULL DEFAULT 1,
  `FirstName` varchar(255) NOT NULL DEFAULT '',
  `LastName` varchar(255) NOT NULL DEFAULT '',
  `Gender` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Country` char(2) NOT NULL DEFAULT '',
  `ReceiveMail` int(1) NOT NULL DEFAULT 1,
  `Language` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`UId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ams_user`
--

LOCK TABLES `ams_user` WRITE;
/*!40000 ALTER TABLE `ams_user` DISABLE KEYS */;
INSERT INTO `ams_user` VALUES (1,'admin','$6$gKDt67FCRzWjZfHx$hswdz5NOvKd2QLdosybxoYA/hwvrQP4QAeyYhuH50985a4vXNASC6MozvBmG7Sxg3FGts0cs1SfLCOrry5tfv0','localhost@localhost',1,'','',0,'',1,'en'),(2,'testuser','$6$YQFNKpCy6fwvBthq$mZ/PqZbeBNADf0KmbwP.2u0HigQga1R6mMlyUTn1ecto/DUQf2mJ5EJ5IaM/XzPqad4i0oOnGmgmDk5fJHCiy0','testuser@shard01.ryzomcore.local',1,'','',0,'',1,'en');
/*!40000 ALTER TABLE `ams_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

