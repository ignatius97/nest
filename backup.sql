CREATE DATABASE  IF NOT EXISTS `covidStores` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `covidStores`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: covidstore
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `SalesAgentID` int(11) DEFAULT NULL,
  `firstname` char(15) DEFAULT NULL,
  `lastname` char(15) DEFAULT NULL,
  `NIN` char(20) DEFAULT NULL,
  `telephonenumber` char(10) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerID`),
  KEY `SalesAgentID` (`SalesAgentID`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`SalesAgentID`) REFERENCES `salesagent` (`SalesAgentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installment`
--

DROP TABLE IF EXISTS `installment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `installment` (
  `installmentID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseID` int(11) DEFAULT NULL,
  `installmentdate` datetime DEFAULT NULL,
  `installmentamount` int(11) DEFAULT NULL,
  PRIMARY KEY (`installmentID`),
  KEY `purchaseID` (`purchaseID`),
  CONSTRAINT `installment_ibfk_1` FOREIGN KEY (`purchaseID`) REFERENCES `purchaserecord` (`purchaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installment`
--

LOCK TABLES `installment` WRITE;
/*!40000 ALTER TABLE `installment` DISABLE KEYS */;
/*!40000 ALTER TABLE `installment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `product` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `StoreManagerID` int(11) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `productname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `StoreManagerID` (`StoreManagerID`),
  KEY `categoryID` (`categoryID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`StoreManagerID`) REFERENCES `storemanager` (`StoreManagerID`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `productcategory` (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (10,11,10,'diningtable'),(11,11,10,'sofaseats'),(12,11,10,'bike');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `productcategory` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(20) DEFAULT NULL,
  `categorydescription` text,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory`
--

LOCK TABLES `productcategory` WRITE;
/*!40000 ALTER TABLE `productcategory` DISABLE KEYS */;
INSERT INTO `productcategory` VALUES (10,'furniture','red');
/*!40000 ALTER TABLE `productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaserecord`
--

DROP TABLE IF EXISTS `purchaserecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `purchaserecord` (
  `purchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `SalesAgentID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `purchasedate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`purchaseID`),
  KEY `SalesAgentID` (`SalesAgentID`),
  KEY `productID` (`productID`),
  KEY `customerID` (`customerID`),
  CONSTRAINT `purchaserecord_ibfk_1` FOREIGN KEY (`SalesAgentID`) REFERENCES `salesagent` (`SalesAgentID`),
  CONSTRAINT `purchaserecord_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  CONSTRAINT `purchaserecord_ibfk_3` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaserecord`
--

LOCK TABLES `purchaserecord` WRITE;
/*!40000 ALTER TABLE `purchaserecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaserecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesagent`
--

DROP TABLE IF EXISTS `salesagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `salesagent` (
  `SalesAgentID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `StoreManagerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SalesAgentID`),
  KEY `userID` (`userID`),
  KEY `StoreManagerID` (`StoreManagerID`),
  CONSTRAINT `salesagent_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `salesagent_ibfk_2` FOREIGN KEY (`StoreManagerID`) REFERENCES `storemanager` (`StoreManagerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesagent`
--

LOCK TABLES `salesagent` WRITE;
/*!40000 ALTER TABLE `salesagent` DISABLE KEYS */;
INSERT INTO `salesagent` VALUES (10,12,11);
/*!40000 ALTER TABLE `salesagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `stock` (
  `stockID` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `measurementunit` char(2) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  PRIMARY KEY (`stockID`),
  KEY `productID` (`productID`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storemanager`
--

DROP TABLE IF EXISTS `storemanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `storemanager` (
  `StoreManagerID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`StoreManagerID`),
  KEY `userID` (`userID`),
  CONSTRAINT `storemanager_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storemanager`
--

LOCK TABLES `storemanager` WRITE;
/*!40000 ALTER TABLE `storemanager` DISABLE KEYS */;
INSERT INTO `storemanager` VALUES (11,20);
/*!40000 ALTER TABLE `storemanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (12,'Bridget','1234'),(20,'MUGUME','12345');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `userdetails` (
  `userID` int(11) DEFAULT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  KEY `userID` (`userID`),
  CONSTRAINT `userdetails_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES (20,'Davis','Mugume');
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-24 20:41:15
