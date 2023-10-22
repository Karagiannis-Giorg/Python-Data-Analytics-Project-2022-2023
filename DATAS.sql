-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: covid_19_data
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `top1_date`
--

DROP TABLE IF EXISTS `top1_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top1_date` (
  `Commodity` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top1_date`
--

LOCK TABLES `top1_date` WRITE;
/*!40000 ALTER TABLE `top1_date` DISABLE KEYS */;
INSERT INTO `top1_date` VALUES ('All','26/11/2021',2227000000),('Electrical machinery and equip','06/11/2020',96000000),('Fish, crustaceans, and molluscs','25/09/2017',21003000),('Fruit','03/05/2020',63000000),('Logs, wood, and wood articles','30/07/2021',97412000),('Meat and edible offal','21/05/2017',99014000),('Mechanical machinery and equip','02/10/2018',143000000),('Milk powder, butter, and cheese','04/12/2019',419087000),('Non-food manufactured goods','26/06/2020',565000000);
/*!40000 ALTER TABLE `top1_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top5_commodities`
--

DROP TABLE IF EXISTS `top5_commodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top5_commodities` (
  `Country` varchar(255) DEFAULT NULL,
  `Commodity` varchar(255) DEFAULT NULL,
  `Value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top5_commodities`
--

LOCK TABLES `top5_commodities` WRITE;
/*!40000 ALTER TABLE `top5_commodities` DISABLE KEYS */;
INSERT INTO `top5_commodities` VALUES ('All','All',1603470000000),('All','Non-food manufactured goods',403154000000),('All','Milk powder, butter, and cheese',98779100000),('All','Mechanical machinery and equip',57567000000),('All','Meat and edible offal',51212800000),('Australia','All',107686000000),('China','All',182406000000),('China','Milk powder, butter, and cheese',31223500000),('China','Logs, wood, and wood articles',18102800000),('China','Electrical machinery and equip',16478000000),('China','Meat and edible offal',15465300000),('East Asia (excluding China)','All',89245000000),('East Asia (excluding China)','Milk powder, butter, and cheese',27317100000),('European Union (27)','All',26644000000),('Japan','All',23155000000),('Total (excluding China)','All',291991000000),('United Kingdom','All',21591000000),('United States','All',40477000000),('United States','Meat and edible offal',11844300000);
/*!40000 ALTER TABLE `top5_commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top5_months`
--

DROP TABLE IF EXISTS `top5_months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top5_months` (
  `Month` varchar(255) DEFAULT NULL,
  `Value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top5_months`
--

LOCK TABLES `top5_months` WRITE;
/*!40000 ALTER TABLE `top5_months` DISABLE KEYS */;
INSERT INTO `top5_months` VALUES ('November',293319000000),('October',285447000000),('May',284795000000),('July',280907000000),('March',278525000000);
/*!40000 ALTER TABLE `top5_months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_ton_per_commodity`
--

DROP TABLE IF EXISTS `total_ton_per_commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_ton_per_commodity` (
  `Commodity` varchar(255) DEFAULT NULL,
  `TONNES` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_ton_per_commodity`
--

LOCK TABLES `total_ton_per_commodity` WRITE;
/*!40000 ALTER TABLE `total_ton_per_commodity` DISABLE KEYS */;
INSERT INTO `total_ton_per_commodity` VALUES ('Fish, crustaceans, and molluscs',1832000),('Logs, wood, and wood articles',264402000),('Meat and edible offal',10372000),('Milk powder, butter, and cheese',35791000);
/*!40000 ALTER TABLE `total_ton_per_commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_ton_per_country`
--

DROP TABLE IF EXISTS `total_ton_per_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_ton_per_country` (
  `Country` varchar(255) DEFAULT NULL,
  `TONNES` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_ton_per_country`
--

LOCK TABLES `total_ton_per_country` WRITE;
/*!40000 ALTER TABLE `total_ton_per_country` DISABLE KEYS */;
INSERT INTO `total_ton_per_country` VALUES ('All',185349000),('China',119573000),('East Asia (excluding China)',6137000),('United States',1338000);
/*!40000 ALTER TABLE `total_ton_per_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_ton_per_month`
--

DROP TABLE IF EXISTS `total_ton_per_month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_ton_per_month` (
  `Month` varchar(255) DEFAULT NULL,
  `TONNES` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_ton_per_month`
--

LOCK TABLES `total_ton_per_month` WRITE;
/*!40000 ALTER TABLE `total_ton_per_month` DISABLE KEYS */;
INSERT INTO `total_ton_per_month` VALUES ('January',20022000),('February',25850000),('March',28334000),('April',24862000),('May',26527000),('June',27495000),('July',28326000),('August',25285000),('September',24033000),('October',28009000),('November',28244000),('December',25410000);
/*!40000 ALTER TABLE `total_ton_per_month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_ton_per_transport`
--

DROP TABLE IF EXISTS `total_ton_per_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_ton_per_transport` (
  `Transport` varchar(255) DEFAULT NULL,
  `TONNES` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_ton_per_transport`
--

LOCK TABLES `total_ton_per_transport` WRITE;
/*!40000 ALTER TABLE `total_ton_per_transport` DISABLE KEYS */;
INSERT INTO `total_ton_per_transport` VALUES ('All',312397000);
/*!40000 ALTER TABLE `total_ton_per_transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_ton_per_weekday`
--

DROP TABLE IF EXISTS `total_ton_per_weekday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_ton_per_weekday` (
  `Weekday` varchar(255) DEFAULT NULL,
  `TONNES` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_ton_per_weekday`
--

LOCK TABLES `total_ton_per_weekday` WRITE;
/*!40000 ALTER TABLE `total_ton_per_weekday` DISABLE KEYS */;
INSERT INTO `total_ton_per_weekday` VALUES ('Sunday',43239000),('Monday',48527000),('Tuesday',42585000),('Wednesday',44998000),('Thursday',43047000),('Friday',47760000),('Saturday',42241000);
/*!40000 ALTER TABLE `total_ton_per_weekday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_usd_per_commodity`
--

DROP TABLE IF EXISTS `total_usd_per_commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_usd_per_commodity` (
  `Commodity` varchar(255) DEFAULT NULL,
  `DOLLARS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_usd_per_commodity`
--

LOCK TABLES `total_usd_per_commodity` WRITE;
/*!40000 ALTER TABLE `total_usd_per_commodity` DISABLE KEYS */;
INSERT INTO `total_usd_per_commodity` VALUES ('All',2386670000000),('Electrical machinery and equip',51554000000),('Fish, crustaceans, and molluscs',15445000000),('Fruit',22197000000),('Logs, wood, and wood articles',50381000000),('Meat and edible offal',78512000000),('Mechanical machinery and equip',72603000000),('Milk powder, butter, and cheese',157284000000),('Non-food manufactured goods',403154000000);
/*!40000 ALTER TABLE `total_usd_per_commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_usd_per_country`
--

DROP TABLE IF EXISTS `total_usd_per_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_usd_per_country` (
  `Country` varchar(255) DEFAULT NULL,
  `DOLLARS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_usd_per_country`
--

LOCK TABLES `total_usd_per_country` WRITE;
/*!40000 ALTER TABLE `total_usd_per_country` DISABLE KEYS */;
INSERT INTO `total_usd_per_country` VALUES ('All',2315200000000),('Australia',107686000000),('China',282650000000),('East Asia (excluding China)',116556000000),('European Union (27)',26644000000),('Japan',23155000000),('Total (excluding China)',291991000000),('United Kingdom',21591000000),('United States',52320000000);
/*!40000 ALTER TABLE `total_usd_per_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_usd_per_month`
--

DROP TABLE IF EXISTS `total_usd_per_month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_usd_per_month` (
  `Month` varchar(255) DEFAULT NULL,
  `DOLLARS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_usd_per_month`
--

LOCK TABLES `total_usd_per_month` WRITE;
/*!40000 ALTER TABLE `total_usd_per_month` DISABLE KEYS */;
INSERT INTO `total_usd_per_month` VALUES ('January',244882000000),('February',244682000000),('March',278497000000),('April',266910000000),('May',284768000000),('June',273339000000),('July',280879000000),('August',253427000000),('September',259601000000),('October',285419000000),('November',293291000000),('December',272102000000);
/*!40000 ALTER TABLE `total_usd_per_month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_usd_per_transport`
--

DROP TABLE IF EXISTS `total_usd_per_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_usd_per_transport` (
  `Transport` varchar(255) DEFAULT NULL,
  `DOLLARS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_usd_per_transport`
--

LOCK TABLES `total_usd_per_transport` WRITE;
/*!40000 ALTER TABLE `total_usd_per_transport` DISABLE KEYS */;
INSERT INTO `total_usd_per_transport` VALUES ('Air',132602000000),('All',2436790000000),('Sea',668400000000);
/*!40000 ALTER TABLE `total_usd_per_transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_usd_per_weekday`
--

DROP TABLE IF EXISTS `total_usd_per_weekday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_usd_per_weekday` (
  `Weekday` varchar(255) DEFAULT NULL,
  `DOLLARS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_usd_per_weekday`
--

LOCK TABLES `total_usd_per_weekday` WRITE;
/*!40000 ALTER TABLE `total_usd_per_weekday` DISABLE KEYS */;
INSERT INTO `total_usd_per_weekday` VALUES ('Sunday',309677000000),('Monday',566712000000),('Tuesday',520469000000),('Wednesday',517338000000),('Thursday',532286000000),('Friday',533090000000),('Saturday',258225000000);
/*!40000 ALTER TABLE `total_usd_per_weekday` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-13 19:09:57
