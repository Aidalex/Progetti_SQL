CREATE DATABASE  IF NOT EXISTS `elenco_zoo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `elenco_zoo`;
-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: localhost    Database: elenco_zoo
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `animale`
--

DROP TABLE IF EXISTS `animale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animale` (
  `Chip` int NOT NULL AUTO_INCREMENT,
  `Tipo_specie` varchar(15) NOT NULL,
  `Nome` varchar(15) NOT NULL,
  `Peso` int NOT NULL,
  `Eta` int NOT NULL,
  `ID_recinto` int NOT NULL,
  PRIMARY KEY (`Chip`),
  KEY `FK_animale_recinto_idx` (`ID_recinto`),
  CONSTRAINT `FK_animale_recinto` FOREIGN KEY (`ID_recinto`) REFERENCES `recinto` (`ID_recinto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animale`
--

LOCK TABLES `animale` WRITE;
/*!40000 ALTER TABLE `animale` DISABLE KEYS */;
INSERT INTO `animale` VALUES (1,'Giraffa','Pimpa',200,5,1),(2,'Giraffa','Luisa',210,9,1),(3,'Giraffa','Gioconda',215,11,1),(4,'Tigre','Mario',150,9,2),(5,'Tigre','Maria',152,10,2),(6,'Leone','Pippo',147,11,3),(7,'Leone','Pluto',145,8,3),(8,'Leone','Topolino',143,7,3),(9,'Leone','Ugo',98,3,3),(10,'Orso Polare','Calogero',450,12,4),(11,'Squalo','Teresa',320,8,5),(12,'Squalo','Cosimo',322,10,5),(13,'Elefante','Riccardo',350,3,6),(14,'Elefante','Enrico',710,7,6),(15,'Elefante','Erminio',710,7,6),(16,'Bradipo','Flash',15,11,7),(17,'Bradipo','Sonic',18,15,7),(18,'Delfino','Ettore',130,9,8),(19,'Pinguino','Filiberto',10,4,9),(20,'Pinguino','Umberto',9,6,9),(21,'Pinguino','Lamberto',12,7,9),(22,'Pinguino','Roberto',11,11,9),(23,'Pinguino','Luigi',8,5,9),(24,'Giraffa','Superman',230,15,10),(25,'Giraffa','Wonderwoman',212,14,10),(26,'Giraffa','Catwoman',210,7,10),(27,'Giraffa','Acquaman',235,16,10),(28,'Elefante','Spiderman',750,9,10),(29,'Elefante','Batman',746,5,10),(30,'Bradipo','Frodo',13,8,11),(31,'Bradipo','Pipino',14,11,11),(32,'Bradipo','Sam',14,13,11),(33,'Leone','Augusta',166,7,12),(34,'Leone','Peppe',156,9,12),(35,'Elefante','Goku',766,15,13),(36,'Elefante','Ignazio',699,9,14),(37,'Elefante','Marilu',689,6,14),(38,'Giraffa','Antonietta',453,7,14),(39,'Giraffa','Marzia',452,9,14),(40,'Leone','Karim',163,8,15),(41,'Leone','Maya',154,11,15),(42,'Boa','Secco',23,9,16),(43,'Priranha','Eminem',4,9,17),(44,'Priranha','Tupac',5,7,17),(45,'Priranha','Ice-Cube',2,1,17),(46,'Priranha','Akon',4,3,17),(47,'Priranha','Fedez',4,9,17),(48,'Tigre','Massimo',215,7,18),(49,'Leone','Emilio',198,11,19),(50,'Leone','Elisa',165,12,19),(51,'Giraffa','Alessandra',462,9,20),(52,'Elefante','Ciro',723,7,20),(53,'Orso Polare','Achille',596,9,21),(54,'Leone','Vaniglia',215,11,22),(55,'Leone','Cannella',210,10,22),(56,'Tigre','Kashmir',230,5,23),(57,'Boa','Riccardo',21,8,24),(58,'Bradipo','Mario',13,15,25),(59,'Bradipo','Albano',12,6,26),(60,'Bradipo','Romina',15,6,26),(61,'Pinguino','Luca',10,6,27),(62,'Bradipo','Cristino',12,5,28),(63,'Leone','Zucchero',215,3,29),(64,'Boa','Sguiscido',13,2,30),(65,'Elefante','Melchiorre',746,16,31),(66,'Foca','Monaca',215,7,32),(67,'Foca','Matilde',206,6,33),(68,'Foca','Ester',210,6,33),(69,'Orso Polare','Orso',596,14,34),(70,'Delfino','Azzurrina',230,11,35),(71,'Delfino','Nerina',216,8,35),(72,'Squalo','Sdentato',350,15,36),(73,'Pinguino','Aldo',12,7,37),(74,'Pinguino','Giovanni',13,7,37),(75,'Pinguino','Giacomo',10,7,37),(76,'Squalo','Joker',215,12,38),(77,'Piranha','Ave',6,2,39),(78,'Piranha','Maria',7,4,39);
/*!40000 ALTER TABLE `animale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citta`
--

DROP TABLE IF EXISTS `citta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citta` (
  `ID_citta` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) NOT NULL,
  `Cap` varchar(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_citta`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citta`
--

LOCK TABLES `citta` WRITE;
/*!40000 ALTER TABLE `citta` DISABLE KEYS */;
INSERT INTO `citta` VALUES (1,'Fasano','72015'),(2,'Cumiana','10040'),(3,'Bussolengo','37012'),(4,'Riccione','47838'),(5,'Valbrembo','24030'),(6,'Lignano Sabbiadoro','33054'),(7,'Ravenna','48125'),(8,'Pistoia','51100'),(9,'Roma','00197'),(10,'Pombia','28050'),(11,'Jesolo','30016'),(12,'Pesco Sannita','82020'),(13,'Napoli','80125'),(14,'Cecina','57023'),(15,'Falconara Marittima','60015'),(16,'Genova','16128'),(17,'Napoli','80121');
/*!40000 ALTER TABLE `citta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recinto`
--

DROP TABLE IF EXISTS `recinto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recinto` (
  `ID_recinto` int NOT NULL AUTO_INCREMENT,
  `Habitat` varchar(10) NOT NULL,
  `ID_zoo` int NOT NULL,
  PRIMARY KEY (`ID_recinto`),
  KEY `FK_recinto_zoo_idx` (`ID_zoo`),
  CONSTRAINT `FK_recinto_zoo` FOREIGN KEY (`ID_zoo`) REFERENCES `zoo` (`ID_zoo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recinto`
--

LOCK TABLES `recinto` WRITE;
/*!40000 ALTER TABLE `recinto` DISABLE KEYS */;
INSERT INTO `recinto` VALUES (1,'Savana',1),(2,'Giungla',1),(3,'Savana',2),(4,'Mare',2),(5,'Polare',2),(6,'Savana',3),(7,'Giungla',3),(8,'Mare',4),(9,'Ghiaccio',4),(10,'Savana',5),(11,'Giungla',5),(12,'Savana',6),(13,'Savana',6),(14,'Savana',7),(15,'Savana',7),(16,'Giungla',8),(17,'Mare',8),(18,'Giungla',9),(19,'Savana',9),(20,'Savana',9),(21,'Ghiaccio',9),(22,'Savana',10),(23,'Giungla',10),(24,'Giungla',11),(25,'Giungla',11),(26,'Giungla',12),(27,'Ghiaccio',12),(28,'Giungla',13),(29,'Savana',13),(30,'Giungla',13),(31,'Savana',14),(32,'Ghiaccio',14),(33,'Ghiaccio',15),(34,'Ghiaccio',15),(35,'Mare',16),(36,'Mare',16),(37,'Ghiaccio',16),(38,'Mare',17),(39,'Mare',17);
/*!40000 ALTER TABLE `recinto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specie`
--

DROP TABLE IF EXISTS `specie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specie` (
  `ID_zoo` int NOT NULL,
  `Tipo_specie` varchar(15) NOT NULL,
  `Quantita` int NOT NULL,
  `ID_recinto` int NOT NULL,
  PRIMARY KEY (`ID_zoo`,`Tipo_specie`),
  KEY `FK_specie_recinto_idx` (`ID_recinto`),
  CONSTRAINT `FK_specie_recinto` FOREIGN KEY (`ID_recinto`) REFERENCES `recinto` (`ID_recinto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specie`
--

LOCK TABLES `specie` WRITE;
/*!40000 ALTER TABLE `specie` DISABLE KEYS */;
INSERT INTO `specie` VALUES (1,'Giraffa',3,1),(1,'Tigre',2,2),(2,'Leone',4,3),(2,'Orso Polare',1,4),(2,'Squalo',2,5),(3,'Bradipo',2,7),(3,'Elefante',3,6),(4,'Delfino',1,8),(4,'Pinguino',5,9),(5,'Bradipo',3,11),(5,'Elefante',2,10),(5,'Giraffa',4,10),(6,'Elefante',1,13),(6,'Leone',2,12),(7,'Elefante',2,14),(7,'Giraffa',2,14),(7,'Leone',2,15),(8,'Boa',1,16),(8,'Priranha',5,17),(9,'Elefante',1,20),(9,'Giraffa',1,20),(9,'Leone',2,19),(9,'Orso Polare',1,21),(9,'Tigre',1,18),(10,'Leone',2,22),(10,'Tigre',1,23),(11,'Boa',1,24),(11,'Bradipo',1,25),(12,'Bradipo',2,26),(12,'Pinguino',1,27),(13,'Boa',1,30),(13,'Bradipo',1,28),(13,'Leone',1,29),(14,'Elefante',1,31),(14,'Foca',1,32),(15,'Foca',2,33),(15,'Orso Polare',1,34),(16,'Delfino',2,35),(16,'Pinguino',3,37),(16,'Squalo',1,36),(17,'Piranha',2,39),(17,'Squalo',1,38);
/*!40000 ALTER TABLE `specie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoo`
--

DROP TABLE IF EXISTS `zoo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoo` (
  `ID_zoo` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(40) NOT NULL,
  `Indirizzo` varchar(40) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `ID_citta` int NOT NULL,
  PRIMARY KEY (`ID_zoo`),
  KEY `FK_zoo_citta_idx` (`ID_citta`),
  CONSTRAINT `FK_zoo_citta` FOREIGN KEY (`ID_citta`) REFERENCES `citta` (`ID_citta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoo`
--

LOCK TABLES `zoo` WRITE;
/*!40000 ALTER TABLE `zoo` DISABLE KEYS */;
INSERT INTO `zoo` VALUES (1,'Zoosafari','Via Dello Zoosafari ','0804414455',1),(2,'Zoom Torino','Strada Pscina 36','0119070318',2),(3,'Parco Natura Viva','Localita\' Quercia','0456770033',3),(4,'Oltremare','Via Ascoli Piceno 6','05414271',4),(5,'Parco Faunistico Le Cornelle','Via Cornelle 16','035527640',5),(6,'Parco Zoo Punta Verde','Via Giorgio Scerbanenco 19/1','0431428775',6),(7,'Safari Ravenna','Via dei Tre Lati 2/X','0544690020',7),(8,'Giardino Zoologico di Pistoia','Via Pieve a Celle Nuova 160/A','0573911219',8),(9,'Bioparco di Roma','Viale del Giardino Zoologico 20','063608211',9),(10,'Safari Park','Via Larino 3','0321956431',10),(11,'Tropicarium Park','Via Aquileia 123',NULL,11),(12,'Zoo delle Maitine','Via Fontana dell\'Occhio 1','0824981084',12),(13,'Lo Zoo di Napoli','Via John Fitzgerald Kennedy 76','08119363154',13),(14,'Parco Gallorose','Via Aurelia Sud 65','3488883778',14),(15,'Parco Zoo Falcolanara','Via Castello di Barcaglione 10','071911312',15),(16,'Acquario di Genova','Ponte Spinola','01023451',16),(17,'Acquario di Napoli','Via Comunale','0815833442',17);
/*!40000 ALTER TABLE `zoo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-04  2:08:26
