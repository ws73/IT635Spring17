-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: DigitalEvidenceSystem
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `VehicleAccident`
--

DROP TABLE IF EXISTS `VehicleAccident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VehicleAccident` (
  `accident` varchar(255) DEFAULT NULL,
  `driver` varchar(255) DEFAULT NULL,
  `car_model` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `officer` varchar(255) DEFAULT NULL,
  `case_ID` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`case_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VehicleAccident`
--

LOCK TABLES `VehicleAccident` WRITE;
/*!40000 ALTER TABLE `VehicleAccident` DISABLE KEYS */;
INSERT INTO `VehicleAccident` VALUES ('car_crashes','James','toyota camry','union','male','june 20th,2016','Marco','110','Newark'),('broadsided','Darline','honda civic','orange','female','june 21st 2016','Tim','111','Newark'),('head-on','John','honda accord','irvington','male','june 23rd 2016','Tim','112','Newark'),('slideswipe','karl','ford explorer','east orange','male','july 24rd 2016','Matt','113','south orange');
/*!40000 ALTER TABLE `VehicleAccident` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-21 21:41:22
