-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: sagheer
-- ------------------------------------------------------
-- Server version	5.5.8

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
-- Table structure for table `tbl_laptop`
--

DROP TABLE IF EXISTS `tbl_laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_laptop` (
  `c_id` int(30) unsigned NOT NULL,
  `l_id` int(30) unsigned NOT NULL,
  `c_name` varchar(45) NOT NULL,
  `cpu` varchar(45) NOT NULL,
  `ram` varchar(45) NOT NULL,
  `hard_disk` varchar(45) NOT NULL,
  `display` varchar(45) NOT NULL,
  `operating_system` varchar(45) NOT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `price` int(40) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_laptop`
--

LOCK TABLES `tbl_laptop` WRITE;
/*!40000 ALTER TABLE `tbl_laptop` DISABLE KEYS */;
INSERT INTO `tbl_laptop` VALUES (1,1,'samsung','i3','4GB','500GB','15.6\"','windows 7','RV511',28500),(2,2,'hp','i5','8GB','1000GB','15.6\"','DOS','15-BS145',38000),(3,3,'apple','i7','16GB','256GB','15.4\"','MAC OS','macbook pro',90000),(4,4,'acer','i3','4GB','1000GB','15.6\"','windows 10','aspire 3',25990),(5,5,'dell','i3','4GB','500GB','14\"','ubuntu 14','vostro 3486',29650),(6,6,'lenovo','i3','4GB','1000GB','15.6\"','windows 10','ideapad  320E',28400),(7,7,'asus','i3','4GB','1000GB','15.6\"','DOS','ideapad  320E',28000),(8,8,'micromax','atom','2GB','32GB','11.6\"','windows 10','lapbook',9890),(9,9,'microsoft','i5','8GB','256GB','13.5\"','windows 10','surface ',152000),(10,10,'alienware','i7','16GB','128GB SSD','15.6\"','windows 10 ','15 gaming',133000),(11,11,'lg','i5','8GB','256GB','15\"','windows 10','gram',104000),(12,12,'iball','intel','4GB','32GB','14\"','windows 10','compbook',16500),(13,13,'lava','atom','2GB','32GB','14\"','windows 10','helium 14',15000),(2,14,'hp','i5','8GB','1000GB','15.6\"','windows 10','pavilion 15',48000),(1,15,'samsung','celeron','4GB','16GB','11.6\"','chrome','chromebook 3',43200),(3,16,'apple','i5','8GB','128GB SSD','13.3\"','MAC OS','macbook air',54500),(4,17,'acer','i5','8GB','1000GB','15.6\"','windows 10','nitro 5',86490),(5,18,'dell','i5','4GB','1000GB','15.6\"','DOS','inspiron 15 3567',84000),(6,19,'lenovo','i3','8GB','2000GB','15.6\"','DOS','ideapad 320-15ISK',37500),(7,20,'asus','i5','4GB','1000GB','15.6\"','DOS','R-series R558UR',38000),(8,21,'micromax','intel 4-core','2GB','32GB','11.6\"','windows 10','canvas laptab 2',16000),(9,22,'microsoft','i5','4GB','128GB','12\"','windows 10','surface pro 4',60000),(10,23,'alienware','i7','8GB','1000GB','17.3\"','windows 8','17 ANW17',158000),(12,24,'iball','atom','2GB','16GB','11.6\"','windows 10','compbook i360 ',13500),(13,25,'lava','atom','2GB','32GB','12.5','windows 10','helium 12',13000);
/*!40000 ALTER TABLE `tbl_laptop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-26  8:22:12
