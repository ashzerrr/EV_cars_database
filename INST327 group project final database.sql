CREATE DATABASE  IF NOT EXISTS `ev_database` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ev_database`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: ev_database
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cafv_type`
--

DROP TABLE IF EXISTS `cafv_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafv_type` (
  `cafv_type_id` int NOT NULL,
  `cafv_type` varchar(45) DEFAULT NULL,
  `vin` varchar(45) NOT NULL,
  PRIMARY KEY (`cafv_type_id`,`vin`),
  KEY `fk_cafv_type_vehicle1_idx` (`vin`),
  CONSTRAINT `fk_cafv_type_vehicle1` FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafv_type`
--

LOCK TABLES `cafv_type` WRITE;
/*!40000 ALTER TABLE `cafv_type` DISABLE KEYS */;
INSERT INTO `cafv_type` VALUES (1,'Not eligible','3FA6P0PU5F'),(1,'Not eligible','5UXTS1C06M'),(1,'Not eligible','JF2GTDNC8K'),(1,'Not eligible','JTDKARFP8H'),(1,'Not eligible','WP0AD2A73G'),(2,'Eligibilty Unkown','1G1FZ6S05M'),(2,'Eligibilty Unkown','5YJ3E1EC0N'),(2,'Eligibilty Unkown','5YJSA1E51N'),(2,'Eligibilty Unkown','7SAXCAE59P'),(3,'Clean Alternative','1G1FX6S03H'),(3,'Clean Alternative','1N4AZ0CP0F'),(3,'Clean Alternative','1N4AZ1CP3K'),(3,'Clean Alternative','5UXTA6C0XM'),(3,'Clean Alternative','5YJ3E1EA5K'),(3,'Clean Alternative','5YJ3E1EB1J'),(3,'Clean Alternative','5YJ3E1EB5J'),(3,'Clean Alternative','5YJSA1DN2D'),(3,'Clean Alternative','5YJSA1DPXC'),(3,'Clean Alternative','5YJSA1E20H'),(3,'Clean Alternative','5YJYGDEEXL'),(3,'Clean Alternative','JTMAB3FV5R');
/*!40000 ALTER TABLE `cafv_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `census_tract`
--

DROP TABLE IF EXISTS `census_tract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `census_tract` (
  `2020_census_tract` varchar(45) NOT NULL,
  `vin` varchar(45) NOT NULL,
  PRIMARY KEY (`vin`,`2020_census_tract`),
  KEY `fk_census_tract_vehicle1_idx` (`vin`),
  CONSTRAINT `fk_census_tract_vehicle1` FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `census_tract`
--

LOCK TABLES `census_tract` WRITE;
/*!40000 ALTER TABLE `census_tract` DISABLE KEYS */;
INSERT INTO `census_tract` VALUES ('53035092200','1G1FX6S03H'),('53053061200','1G1FZ6S05M'),('53033023300','1N4AZ0CP0F'),('53033032323','1N4AZ1CP3K'),('53061041704','3FA6P0PU5F'),('53035091301','5UXTA6C0XM'),('53033004702','5UXTS1C06M'),('53061041812','5YJ3E1EA5K'),('53035091100','5YJ3E1EB1J'),('53035080200','5YJ3E1EB5J'),('53033023807','5YJ3E1EC0N'),('53057951800','5YJSA1DN2D'),('53067010600','5YJSA1DPXC'),('53033000900','5YJSA1E20H'),('53053070309','5YJSA1E51N'),('53033009300','5YJYGDEEXL'),('53035092200','7SAXCAE59P'),('53033021802','JF2GTDNC8K'),('53035092200','JTDKARFP8H'),('53035090502','JTMAB3FV5R'),('53061052009','WP0AD2A73G');
/*!40000 ALTER TABLE `census_tract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `count_of_vehicles_in_district`
--

DROP TABLE IF EXISTS `count_of_vehicles_in_district`;
/*!50001 DROP VIEW IF EXISTS `count_of_vehicles_in_district`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `count_of_vehicles_in_district` AS SELECT 
 1 AS `legislative_district`,
 1 AS `vehicle_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `electric_utility`
--

DROP TABLE IF EXISTS `electric_utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electric_utility` (
  `utility_id` int NOT NULL,
  `electric_utility` varchar(100) DEFAULT NULL,
  `vin` varchar(45) NOT NULL,
  PRIMARY KEY (`utility_id`,`vin`),
  KEY `fk_electric_utility_vehicle1_idx` (`vin`),
  CONSTRAINT `fk_electric_utility_vehicle1` FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electric_utility`
--

LOCK TABLES `electric_utility` WRITE;
/*!40000 ALTER TABLE `electric_utility` DISABLE KEYS */;
INSERT INTO `electric_utility` VALUES (1,'PUGET SOUND ENERGY INC','1G1FX6S03H'),(1,'PUGET SOUND ENERGY INC','1N4AZ1CP3K'),(1,'PUGET SOUND ENERGY INC','3FA6P0PU5F'),(1,'PUGET SOUND ENERGY INC','5UXTA6C0XM'),(1,'PUGET SOUND ENERGY INC','5YJ3E1EA5K'),(1,'PUGET SOUND ENERGY INC','5YJ3E1EB1J'),(1,'PUGET SOUND ENERGY INC','5YJ3E1EB5J'),(1,'PUGET SOUND ENERGY INC','5YJSA1DN2D'),(1,'PUGET SOUND ENERGY INC','5YJSA1DPXC'),(1,'PUGET SOUND ENERGY INC','7SAXCAE59P'),(1,'PUGET SOUND ENERGY INC','JTDKARFP8H'),(1,'PUGET SOUND ENERGY INC','JTMAB3FV5R'),(1,'PUGET SOUND ENERGY INC','WP0AD2A73G'),(2,'CITY OF SEATTLE-(WA)|CITY OF TACOMA-(WA)','5UXTS1C06M'),(2,'CITY OF SEATTLE-(WA)|CITY OF TACOMA-(WA)','5YJSA1E20H'),(2,'CITY OF SEATTLE-(WA)|CITY OF TACOMA-(WA)','5YJYGDEEXL'),(3,'BONNEVILLE POWER ADMINISTRATION||CITY OF TACOMA -(WA)||PENINSULA LIGHT COMPANY','1G1FZ6S05M'),(4,'PUGET SOUND ENERGY INC | CITY OF TACOMA-(WA)','1N4AZ0CP0F'),(4,'PUGET SOUND ENERGY INC | CITY OF TACOMA-(WA)','5YJ3E1EC0N'),(4,'PUGET SOUND ENERGY INC | CITY OF TACOMA-(WA)','5YJSA1E51N'),(4,'PUGET SOUND ENERGY INC | CITY OF TACOMA-(WA)','JF2GTDNC8K');
/*!40000 ALTER TABLE `electric_utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `electric_vehicle_count_by_city`
--

DROP TABLE IF EXISTS `electric_vehicle_count_by_city`;
/*!50001 DROP VIEW IF EXISTS `electric_vehicle_count_by_city`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `electric_vehicle_count_by_city` AS SELECT 
 1 AS `city`,
 1 AS `electric_vehicle_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ev_type`
--

DROP TABLE IF EXISTS `ev_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_type` (
  `ev_type_id` int NOT NULL,
  `ev_type` varchar(45) DEFAULT NULL,
  `vin` varchar(45) NOT NULL,
  PRIMARY KEY (`ev_type_id`,`vin`),
  KEY `fk_ev_type_vehicle1_idx` (`vin`),
  CONSTRAINT `fk_ev_type_vehicle1` FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_type`
--

LOCK TABLES `ev_type` WRITE;
/*!40000 ALTER TABLE `ev_type` DISABLE KEYS */;
INSERT INTO `ev_type` VALUES (1,'Plug-in Hybrid','3FA6P0PU5F'),(1,'Plug-in Hybrid','5UXTA6C0XM'),(1,'Plug-in Hybrid','5UXTS1C06M'),(1,'Plug-in Hybrid','JF2GTDNC8K'),(1,'Plug-in Hybrid','JTDKARFP8H'),(1,'Plug-in Hybrid','JTMAB3FV5R'),(1,'Plug-in Hybrid','WP0AD2A73G'),(2,'Battery Electric Vehicle','1G1FX6S03H'),(2,'Battery Electric Vehicle','1G1FZ6S05M'),(2,'Battery Electric Vehicle','1N4AZ0CP0F'),(2,'Battery Electric Vehicle','1N4AZ1CP3K'),(2,'Battery Electric Vehicle','5YJ3E1EA5K'),(2,'Battery Electric Vehicle','5YJ3E1EB1J'),(2,'Battery Electric Vehicle','5YJ3E1EB5J'),(2,'Battery Electric Vehicle','5YJ3E1EC0N'),(2,'Battery Electric Vehicle','5YJSA1DN2D'),(2,'Battery Electric Vehicle','5YJSA1DPXC'),(2,'Battery Electric Vehicle','5YJSA1E20H'),(2,'Battery Electric Vehicle','5YJSA1E51N'),(2,'Battery Electric Vehicle','5YJYGDEEXL'),(2,'Battery Electric Vehicle','7SAXCAE59P');
/*!40000 ALTER TABLE `ev_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legislative_district`
--

DROP TABLE IF EXISTS `legislative_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legislative_district` (
  `legislative_district` varchar(45) NOT NULL,
  `vin` varchar(45) NOT NULL,
  PRIMARY KEY (`vin`,`legislative_district`),
  KEY `fk_legislative_district_vehicle1_idx` (`vin`),
  CONSTRAINT `fk_legislative_district_vehicle1` FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legislative_district`
--

LOCK TABLES `legislative_district` WRITE;
/*!40000 ALTER TABLE `legislative_district` DISABLE KEYS */;
INSERT INTO `legislative_district` VALUES ('26','1G1FX6S03H'),('27','1G1FZ6S05M'),('48','1N4AZ0CP0F'),('45','1N4AZ1CP3K'),('21','3FA6P0PU5F'),('35','5UXTA6C0XM'),('36','5UXTS1C06M'),('21','5YJ3E1EA5K'),('23','5YJ3E1EB1J'),('23','5YJ3E1EB5J'),('41','5YJ3E1EC0N'),('40','5YJSA1DN2D'),('22','5YJSA1DPXC'),('46','5YJSA1E20H'),('31','5YJSA1E51N'),('11','5YJYGDEEXL'),('26','7SAXCAE59P'),('1','JF2GTDNC8K'),('26','JTDKARFP8H'),('23','JTMAB3FV5R'),('1','WP0AD2A73G');
/*!40000 ALTER TABLE `legislative_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `location_of_hybrid_vehicles`
--

DROP TABLE IF EXISTS `location_of_hybrid_vehicles`;
/*!50001 DROP VIEW IF EXISTS `location_of_hybrid_vehicles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `location_of_hybrid_vehicles` AS SELECT 
 1 AS `Vehicle_EV_type`,
 1 AS `county`,
 1 AS `city`,
 1 AS `state`,
 1 AS `zip_code`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int NOT NULL,
  `county` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zip_code` int NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Kitsap','Port Orchard','WA',98366),(2,'Kitsap','Seabeck','WA',98380),(3,'Kitsap','Poulsbo','WA',98370),(4,'Snohomish','Bothell','WA',98012),(5,'Kitsap','Bremerton','WA',98310),(6,'King','Redmond','WA',98052),(7,'King','Renton','WA',98055),(8,'King','Bellevue','WA',98107),(9,'King','Bellevue','WA',98007),(10,'King','Seattle','WA',98125),(11,'Kitsap','Port Orchard','WA',98366),(12,'King','Bellevue','WA',98087),(13,'Kitsap','Poulsbo','WA',98370),(14,'Thurston','Olympia','WA',98502),(15,'Pierce','Tacoma','WA',98405),(16,'Pierce','Bonney Lake','WA',98391),(17,'King','Bellevue','WA',98004),(18,'Skagit','Burlington','WA',98233),(19,'King','Bothell','WA',98011);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `precise_vehicle_location`
--

DROP TABLE IF EXISTS `precise_vehicle_location`;
/*!50001 DROP VIEW IF EXISTS `precise_vehicle_location`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `precise_vehicle_location` AS SELECT 
 1 AS `county`,
 1 AS `city`,
 1 AS `state`,
 1 AS `zip_code`,
 1 AS `geocoded_column`,
 1 AS `vin`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vin` varchar(45) NOT NULL,
  `model_year` int NOT NULL,
  `make` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `base_msrp` varchar(45) DEFAULT NULL,
  `dol_vehicle_id` int NOT NULL,
  PRIMARY KEY (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('1G1FX6S03H',2017,'CHEVROLET','BOLT EV','',176855283),('1G1FZ6S05M',2021,'CHEVROLET','BOLT EV','',273607099),('1N4AZ0CP0F',2015,'NISSAN','LEAF','',105509778),('1N4AZ1CP3K',2019,'NISSAN','LEAF','',476346482),('3FA6P0PU5F',2015,'FORD','FUSION','',9620047),('5UXTA6C0XM',2021,'BMW','X5','',267929112),('5UXTS1C06M',2021,'BMW','X3','',135327104),('5YJ3E1EA5K',2019,'TESLA','MODEL 3','',110038288),('5YJ3E1EB1J',2018,'TESLA','MODEL 3','',475911439),('5YJ3E1EB5J',2018,'TESLA','MODEL 3','',474363746),('5YJ3E1EC0N',2022,'TESLA','MODEL 3','',258924354),('5YJSA1DN2D',2013,'TESLA','MODEL 3','69900',180374904),('5YJSA1DPXC',2012,'TESLA','MODEL S','59900',188634442),('5YJSA1E20H',2017,'TESLA','MODEL S','',348605603),('5YJSA1E51N',2022,'TESLA','MODEL S','',187584183),('5YJYGDEEXL',2020,'TESLA','MODEL Y','',123289442),('7SAXCAE59P',2023,'TESLA','MODEL X','',245689888),('JF2GTDNC8K',2019,'SUBARU','CROSSTREK','34995',175410441),('JTDKARFP8H',2017,'TOYOTA','PRIUS PRIME','',181646636),('JTMAB3FV5R',2024,'TOYOTA','RAV4 PRIM','',271853067),('WP0AD2A73G',2016,'PORSCHE','PANAMERA','',101971278);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_coordinates`
--

DROP TABLE IF EXISTS `vehicle_coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_coordinates` (
  `geocoded_column` varchar(45) NOT NULL,
  `vin` varchar(45) NOT NULL,
  PRIMARY KEY (`geocoded_column`,`vin`),
  KEY `fk_vehicle_coordinates_vehicle1_idx` (`vin`),
  CONSTRAINT `fk_vehicle_coordinates_vehicle1` FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_coordinates`
--

LOCK TABLES `vehicle_coordinates` WRITE;
/*!40000 ALTER TABLE `vehicle_coordinates` DISABLE KEYS */;
INSERT INTO `vehicle_coordinates` VALUES ('(-122.63847 47.54103)','1G1FX6S03H'),('(-122.22901 47.72201)','1G1FZ6S05M'),('(-122.1436732 47.6157551)','1N4AZ0CP0F'),('(-122.13158 47.67858)','1N4AZ1CP3K'),('(-122.206146 47.839957)','3FA6P0PU5F'),('(-122.8728334 47.5798304)','5UXTA6C0XM'),('(-122.38591 47.67597)','5UXTS1C06M'),('(-122.27336 47.861417)','5YJ3E1EA5K'),('(-122.6368884 47.7469547)','5YJ3E1EB1J'),('(-122.6231895 47.5930874)','5YJ3E1EB5J'),('(-122.1872 47.61001)','5YJ3E1EC0N'),('(-122.33029 48.46846)','5YJSA1DN2D'),('(-122.92333 47.03779)','5YJSA1DPXC'),('(-122.30253 47.72656)','5YJSA1E20H'),('(-122.17144 47.19175)','5YJSA1E51N'),('(-122.2003346 47.4487206)','5YJYGDEEXL'),('(-122.63847 47.54103)','7SAXCAE59P'),('(-122. 20563 47.76144)','JF2GTDNC8K'),('(-122.63847 47.54103)','JTDKARFP8H'),('(-122.6368884 47.7469547)','JTMAB3FV5R'),('(-122.206146 47.839957)','WP0AD2A73G');
/*!40000 ALTER TABLE `vehicle_coordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_location`
--

DROP TABLE IF EXISTS `vehicle_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_location` (
  `location_id` int NOT NULL,
  `vin` varchar(45) NOT NULL,
  PRIMARY KEY (`location_id`,`vin`),
  KEY `fk_vehicle_location_vehicle1_idx` (`vin`),
  CONSTRAINT `fk_vehicle_location_locations1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`),
  CONSTRAINT `fk_vehicle_location_vehicle1` FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_location`
--

LOCK TABLES `vehicle_location` WRITE;
/*!40000 ALTER TABLE `vehicle_location` DISABLE KEYS */;
INSERT INTO `vehicle_location` VALUES (11,'1G1FX6S03H'),(15,'1G1FZ6S05M'),(9,'1N4AZ0CP0F'),(6,'1N4AZ1CP3K'),(4,'3FA6P0PU5F'),(2,'5UXTA6C0XM'),(8,'5UXTS1C06M'),(12,'5YJ3E1EA5K'),(3,'5YJ3E1EB1J'),(5,'5YJ3E1EB5J'),(17,'5YJ3E1EC0N'),(18,'5YJSA1DN2D'),(14,'5YJSA1DPXC'),(10,'5YJSA1E20H'),(16,'5YJSA1E51N'),(7,'5YJYGDEEXL'),(1,'7SAXCAE59P'),(19,'JF2GTDNC8K'),(1,'JTDKARFP8H'),(13,'JTMAB3FV5R'),(4,'WP0AD2A73G');
/*!40000 ALTER TABLE `vehicle_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vehicles_cafv_clean_alternative`
--

DROP TABLE IF EXISTS `vehicles_cafv_clean_alternative`;
/*!50001 DROP VIEW IF EXISTS `vehicles_cafv_clean_alternative`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehicles_cafv_clean_alternative` AS SELECT 
 1 AS `cafv_type`,
 1 AS `vin`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `count_of_vehicles_in_district`
--

/*!50001 DROP VIEW IF EXISTS `count_of_vehicles_in_district`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_of_vehicles_in_district` AS select `legislative_district`.`legislative_district` AS `legislative_district`,count(`v`.`vin`) AS `vehicle_count` from (`vehicle` `v` join `legislative_district` on((`v`.`vin` = `legislative_district`.`vin`))) group by `legislative_district`.`legislative_district` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `electric_vehicle_count_by_city`
--

/*!50001 DROP VIEW IF EXISTS `electric_vehicle_count_by_city`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `electric_vehicle_count_by_city` AS select `l`.`city` AS `city`,count(`v`.`vin`) AS `electric_vehicle_count` from (((`vehicle` `v` join `vehicle_location` `vl` on((`v`.`vin` = `vl`.`vin`))) join `locations` `l` on((`vl`.`location_id` = `l`.`location_id`))) join `ev_type` `e` on((`v`.`vin` = `e`.`vin`))) where (`e`.`ev_type` = 'Battery Electric Vehicle') group by `l`.`city` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `location_of_hybrid_vehicles`
--

/*!50001 DROP VIEW IF EXISTS `location_of_hybrid_vehicles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `location_of_hybrid_vehicles` AS select `e`.`ev_type` AS `Vehicle_EV_type`,`l`.`county` AS `county`,`l`.`city` AS `city`,`l`.`state` AS `state`,`l`.`zip_code` AS `zip_code` from ((`locations` `l` join `vehicle_location` `v` on((`l`.`location_id` = `v`.`location_id`))) join `ev_type` `e` on((`v`.`vin` = `e`.`vin`))) where (`e`.`ev_type` = 'Plug-in Hybrid') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `precise_vehicle_location`
--

/*!50001 DROP VIEW IF EXISTS `precise_vehicle_location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `precise_vehicle_location` AS select `l`.`county` AS `county`,`l`.`city` AS `city`,`l`.`state` AS `state`,`l`.`zip_code` AS `zip_code`,`vc`.`geocoded_column` AS `geocoded_column`,`v`.`vin` AS `vin` from ((`locations` `l` join `vehicle_location` `v` on((`l`.`location_id` = `v`.`location_id`))) join `vehicle_coordinates` `vc` on((`vc`.`vin` = `v`.`vin`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicles_cafv_clean_alternative`
--

/*!50001 DROP VIEW IF EXISTS `vehicles_cafv_clean_alternative`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicles_cafv_clean_alternative` AS select `cafv_type`.`cafv_type` AS `cafv_type`,`v`.`vin` AS `vin` from (`cafv_type` join `vehicle` `v` on((`cafv_type`.`vin` = `v`.`vin`))) having `cafv_type`.`cafv_type` in (select `cafv_type`.`cafv_type` from `cafv_type` where (`cafv_type`.`cafv_type` = 'Clean Alternative')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09 14:07:30
