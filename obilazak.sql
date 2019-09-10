CREATE DATABASE  IF NOT EXISTS `obilazak` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `obilazak`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: obilazak
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'marijaredzepovic','marijare');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorije`
--

DROP TABLE IF EXISTS `kategorije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategorije` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorije`
--

LOCK TABLES `kategorije` WRITE;
/*!40000 ALTER TABLE `kategorije` DISABLE KEYS */;
INSERT INTO `kategorije` VALUES (1,'smestaj'),(2,'restorani'),(3,'znamenitosti');
/*!40000 ALTER TABLE `kategorije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poruke`
--

DROP TABLE IF EXISTS `poruke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poruke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime_prezime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `odgovoreno` int(11) NOT NULL,
  `sadrzaj_poruke` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poruke`
--

LOCK TABLES `poruke` WRITE;
/*!40000 ALTER TABLE `poruke` DISABLE KEYS */;
INSERT INTO `poruke` VALUES (1,'Marija Redzepovic','marijadarkova@gmail.com',1,'Molim vas da mi odgovorite');
/*!40000 ALTER TABLE `poruke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restoran`
--

DROP TABLE IF EXISTS `restoran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restoran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_restorana` varchar(256) NOT NULL,
  `opis_restorana` varchar(256) NOT NULL,
  `slika_restorana` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restoran`
--

LOCK TABLES `restoran` WRITE;
/*!40000 ALTER TABLE `restoran` DISABLE KEYS */;
INSERT INTO `restoran` VALUES (1,'Restoran Srbija','Restoran, ulica Karadjordjeva br. 4, 18430 Kursumlija, kontakt: 027/381-434. Odlican restoran u centru grada.','RestoranSrbija.jpg'),(2,'Restoran Nego','Nalazi se u ulici Vuka Karadzica 44, 18430 Kursumlija.Restoran sa vrhunskom kuhinjom.','RestoranNego.jpg');
/*!40000 ALTER TABLE `restoran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smestaj`
--

DROP TABLE IF EXISTS `smestaj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smestaj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_smestaja` varchar(45) NOT NULL,
  `opis_smestaja` varchar(1500) NOT NULL,
  `slika_smestaja` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smestaj`
--

LOCK TABLES `smestaj` WRITE;
/*!40000 ALTER TABLE `smestaj` DISABLE KEYS */;
INSERT INTO `smestaj` VALUES (1,'Hostel Franica','Hostel se nalazi u centru grada, u ulici 16. Februar, br. 21. Raspolaze kapacitetom od 12 soba sa ukupno 32 lezaja. Sobe su opremljene savremenim namestajem, LED televizorima, WiFi internet konekcijom, klima uredjajima, etaznim grejanjem I kupatilom. U sklopu hostela nalzi se kafe klub sa kazinom. Hostel nudi: prenociste, prenociste sa doruckom, polupansion I pansion. Kontakt: 027 / 389 – 088; 066/441-000 (rezervacije), 066/ 442-000.','HostelFranica.jpg'),(2,'Motel Stara Vrba','Motel Stara Vrba se nalazi u Kursumliji, na magistralnom putu od Nisa ka Pristini. Poseduje a-la-carte restoran u kome se sluze jela tradicionalne kuhinje. Bezicni internet se moze besplatno koristiti.','StaraVrba.jpg');
/*!40000 ALTER TABLE `smestaj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `znamenitost`
--

DROP TABLE IF EXISTS `znamenitost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `znamenitost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_znamenitosti` varchar(256) NOT NULL,
  `opis_znamenitosti` varchar(1500) NOT NULL,
  `slika_znamenitosti` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `znamenitost`
--

LOCK TABLES `znamenitost` WRITE;
/*!40000 ALTER TABLE `znamenitost` DISABLE KEYS */;
INSERT INTO `znamenitost` VALUES (1,'Arheo Park Plocnik','Neolitsko naselje Plocnik prostiralo se pored Toplice na skoro150 ha, a otkriveno je prilikom prokopavanja trase za zeleznicku prugu. Istrazivanja su otkrila osnove kuca i ognjista na osnovu cega je rekonstruisan njihov danasnji izgled, a obilje pronadjenog keramickog materijala, figurina i alata govori o visokom nivou razvoja praistorijske zajednice.','Plocnik.jpg'),(2,'Manastir Stefana Nemanje','Manastir Svetog Nikole u Kursumliji je prva zaduzbina Stefana Nemanje, osnivaca slavne Dinastije Nemanjica srednjovekovne Srbije. Manastir Svetog Nikole, smesten u severnom delu grada, uz tok reke Toplice su od 1163 – 1166. godine izgradili graditelji iz Konstantinopolja, a zaduzbinar ga je posvetio Svetom Nikoli. ','Manastir.jpg');
/*!40000 ALTER TABLE `znamenitost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'obilazak'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-10  9:25:19
