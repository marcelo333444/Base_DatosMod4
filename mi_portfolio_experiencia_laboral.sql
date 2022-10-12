-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: mi_portfolio
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `experiencia_laboral`
--

DROP TABLE IF EXISTS `experiencia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia_laboral` (
  `id` int NOT NULL,
  `Nombre_Empresa` varchar(45) DEFAULT NULL,
  `Es_Trabajo_Actual` varchar(45) DEFAULT NULL,
  `Fecha_Inicio` date DEFAULT NULL,
  `Fecha_Fin` date DEFAULT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `Persona_id` int NOT NULL,
  `Empleo_id` int NOT NULL,
  PRIMARY KEY (`id`,`Persona_id`,`Empleo_id`),
  KEY `fk_Experiencia_Laboral_Persona_idx` (`Persona_id`),
  KEY `fk_Experiencia_Laboral_Empleo1_idx` (`Empleo_id`),
  CONSTRAINT `fk_Experiencia_Laboral_Empleo1` FOREIGN KEY (`Empleo_id`) REFERENCES `empleo` (`id`),
  CONSTRAINT `fk_Experiencia_Laboral_Persona` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_laboral`
--

LOCK TABLES `experiencia_laboral` WRITE;
/*!40000 ALTER TABLE `experiencia_laboral` DISABLE KEYS */;
INSERT INTO `experiencia_laboral` VALUES (1,'Ejército Argentino','No','2012-10-21','2019-11-01','Me desempeñe como radio operador y auxiliar del encargado de compania',1,1),(2,'Patrior','No','2018-10-21','2019-11-01','Portero',2,2),(3,'NASA','si','2000-10-21','2023-11-01','Soy Astronauta, viajo a jupiter de ves en cuando',3,3),(4,'MENDOZA NORTE','NO','2019-11-01','2020-01-01','Portero',1,4),(5,'WESTECH','SI','2020-01-01','0000-00-00','Portero',1,5),(5,'WESTECH','SI','2019-01-01','0000-00-00','Portero',2,5);
/*!40000 ALTER TABLE `experiencia_laboral` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-12  3:15:45
