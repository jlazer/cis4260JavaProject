-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `dbo.Categories`
--

DROP TABLE IF EXISTS `dbo.Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.Categories` (
  `CategoryID` tinyint(4) DEFAULT NULL,
  `name` varchar(6) DEFAULT NULL,
  `discription` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.Categories`
--

LOCK TABLES `dbo.Categories` WRITE;
/*!40000 ALTER TABLE `dbo.Categories` DISABLE KEYS */;
INSERT INTO `dbo.Categories` VALUES (1,'Drinks',''),(2,'Meals',''),(3,'Snacks','');
/*!40000 ALTER TABLE `dbo.Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.Products`
--

DROP TABLE IF EXISTS `dbo.Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.Products` (
  `productID` tinyint(4) DEFAULT NULL,
  `productNumber` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` decimal(7,4) DEFAULT NULL,
  `details` varchar(34) DEFAULT NULL,
  `categoryID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.Products`
--

LOCK TABLES `dbo.Products` WRITE;
/*!40000 ALTER TABLE `dbo.Products` DISABLE KEYS */;
INSERT INTO `dbo.Products` VALUES (1,'S001      ','Pretzels                      ',2.9500,'','3         '),(2,'S002      ','Potatoe Chips                 ',3.5000,'salty','3         '),(3,'S004      ','Choclate chip Cookies         ',5.0000,'Yummy yum yum','3         '),(4,'S004      ','Doritos                       ',100.0000,'The real deal','3         '),(5,'S005      ','Beef Jerky                    ',11.4500,'Not vegan','3         '),(6,'S006      ','\'not cat\' Jerky               ',0.9900,'Please buy this, it is not cats ;)','3         '),(7,'S007      ','Turkey Jerky                  ',11.4500,'Not Vegan','3         '),(8,'S008      ','Kale \'Jerky\'                  ',11.4500,'Vegan, Not jerky','3         '),(9,'D001      ','Coffee                        ',2.0000,'','1         '),(10,'D002      ','Covfefe                       ',1.5000,'','1         '),(11,'D003      ','Cola                          ',3.0000,'','1         '),(12,'D004      ','Diet Cola                     ',2.9900,'','1         '),(13,'D005      ','Root Beer                     ',3.0000,'','1         '),(14,'D006      ','Diet Root Beer                ',2.9900,'','1         '),(16,'D007      ','Spriit                        ',3.0000,'','1         '),(17,'D008      ','Diet Spriit                   ',2.9900,'','1         '),(18,'D009      ','Milk                          ',6.0000,'','1         '),(19,'D010      ','Chocky Milk                   ',6.5000,'','1         '),(20,'D011      ','Slushee                       ',4.0000,'','1         '),(21,'M001      ','Hamburger                     ',7.0000,'','2         '),(22,'M002      ','Fried Chicken                 ',8.0000,'','2         '),(23,'M003      ','11in Pizza                    ',11.0000,'','2         '),(24,'M004      ','13in Pizza                    ',13.0000,'','2         '),(25,'M005      ','19in Pizza                    ',14.0000,'','2         '),(26,'M006      ','churro                        ',62.0000,'big churro','2         ');
/*!40000 ALTER TABLE `dbo.Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.Table`
--

DROP TABLE IF EXISTS `dbo.Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.Table` (
  `Id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.Table`
--

LOCK TABLES `dbo.Table` WRITE;
/*!40000 ALTER TABLE `dbo.Table` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo.Table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:24
