-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: elegantcut
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('357ecbfe-30b9-4801-a03f-d9f0f53a85ca','9f95c7db1c37ca5f5016584c559d0619d7d99c355a78e49e1787725f5b3b8f72','2026-02-28 19:10:28.361','20260228191027_init',NULL,NULL,'2026-02-28 19:10:27.995',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barberos_servicios`
--

DROP TABLE IF EXISTS `barberos_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barberos_servicios` (
  `id_barbero_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_barbero` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  PRIMARY KEY (`id_barbero_servicio`),
  KEY `id_barbero` (`id_barbero`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `barberos_servicios_ibfk_1` FOREIGN KEY (`id_barbero`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `barberos_servicios_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barberos_servicios`
--

LOCK TABLES `barberos_servicios` WRITE;
/*!40000 ALTER TABLE `barberos_servicios` DISABLE KEYS */;
INSERT INTO `barberos_servicios` VALUES (1,3,11),(2,6,11),(3,7,11),(4,10,11),(5,11,11),(6,12,11),(7,13,11),(8,3,12),(9,6,12),(10,7,12),(11,10,12),(12,11,12),(13,12,12),(14,13,12),(15,3,13),(16,6,13),(17,7,13),(18,10,13),(19,11,13),(20,12,13),(21,13,13),(22,3,14),(23,6,14),(24,7,14),(25,10,14),(26,11,14),(27,12,14),(28,13,14),(29,3,15),(30,6,15),(31,7,15),(32,10,15),(33,11,15),(34,12,15),(35,13,15),(36,3,16),(37,6,16),(38,7,16),(39,10,16),(40,11,16),(41,12,16),(42,13,16),(43,3,17),(44,6,17),(45,7,17),(46,10,17),(47,11,17),(48,12,17),(49,13,17),(50,3,18),(51,6,18),(52,7,18),(53,10,18),(54,11,18),(55,12,18),(56,13,18),(57,3,19),(58,6,19),(59,7,19),(60,10,19),(61,11,19),(62,12,19),(63,13,19),(71,3,21),(72,6,21),(73,7,21),(74,10,21),(75,11,21),(76,12,21),(77,13,21),(78,3,22),(79,6,22),(80,7,22),(81,10,22),(82,11,22),(83,12,22),(84,13,22),(85,3,23),(86,6,23),(87,7,23),(88,10,23),(89,11,23),(90,12,23),(91,13,23),(92,3,24),(93,6,24),(94,7,24),(95,10,24),(96,11,24),(97,12,24),(98,13,24),(106,3,26),(107,6,26),(108,7,26),(109,10,26),(110,11,26),(111,12,26),(112,13,26),(113,3,27),(114,6,27),(115,7,27),(116,10,27),(117,11,27),(118,12,27),(119,13,27),(127,3,29),(128,6,29),(129,7,29),(130,10,29),(131,11,29),(132,12,29),(133,13,29),(134,3,30),(135,6,30),(136,7,30),(137,10,30),(138,11,30),(139,12,30),(140,13,30),(155,3,33),(156,6,33),(157,7,33),(158,10,33),(159,11,33),(160,12,33),(161,13,33),(169,3,35),(170,6,35),(171,7,35),(172,10,35),(173,11,35),(174,12,35),(175,13,35),(183,3,37),(184,6,37),(185,7,37),(186,10,37),(187,11,37),(188,12,37),(189,13,37),(256,3,38),(257,11,38),(258,13,38),(259,3,39),(260,7,39),(261,10,39),(262,11,39),(263,13,39),(264,3,40),(265,7,40),(266,10,40),(267,11,40),(268,13,40);
/*!40000 ALTER TABLE `barberos_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `id_genero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `fk_servicio_genero` (`id_genero`),
  CONSTRAINT `fk_servicio_genero` FOREIGN KEY (`id_genero`) REFERENCES `genero_servicio` (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (7,'Cortes de Cabello','Servicios de corte de cabello masculino cl├ísico y moderno',1,1),(8,'Barba y Afeitado','Arreglo, perfilado y afeitado de barba',1,1),(9,'Tratamientos Especiales','Servicios adicionales como mascarillas y cuidado facial',1,1),(11,'U├▒as','Servicios de manicure, pedicure y cuidado de u├▒as',1,2),(12,'Cortes Cabello Largo','Cortes dise├▒ados para cabello largo',1,2),(13,'Cortes Cabello Corto','Cortes modernos y cl├ísicos para cabello corto',1,2),(14,'Color / Tintes','Aplicaci├│n de tintes, decoloraci├│n y coloraci├│n capilar',1,2),(15,'Peinados','Peinados para eventos y ocasiones especiales',1,2),(16,'Mascarillas','Tratamientos capilares y faciales con mascarillas',1,2);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigos_verificacion`
--

DROP TABLE IF EXISTS `codigos_verificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codigos_verificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `codigo` varchar(6) NOT NULL,
  `tipo` enum('registro','recuperacion') NOT NULL,
  `expira_en` timestamp NOT NULL DEFAULT current_timestamp(),
  `usado` tinyint(1) DEFAULT 0,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_email_codigo` (`email`,`codigo`,`tipo`,`usado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigos_verificacion`
--

LOCK TABLES `codigos_verificacion` WRITE;
/*!40000 ALTER TABLE `codigos_verificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `codigos_verificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_cita_servicio`
--

DROP TABLE IF EXISTS `detalle_cita_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_cita_servicio` (
  `id_detalle_cita_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_reservas` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_cita_servicio`),
  KEY `fk_detalle_reserva` (`id_reservas`),
  KEY `fk_detalle_servicio` (`id_servicio`),
  CONSTRAINT `fk_detalle_reserva` FOREIGN KEY (`id_reservas`) REFERENCES `reservas` (`id_reservas`),
  CONSTRAINT `fk_detalle_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_cita_servicio`
--

LOCK TABLES `detalle_cita_servicio` WRITE;
/*!40000 ALTER TABLE `detalle_cita_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_cita_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_cita`
--

DROP TABLE IF EXISTS `estado_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_cita` (
  `id_estado_cita` int(11) NOT NULL AUTO_INCREMENT,
  `confirmada` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id_estado_cita`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_cita`
--

LOCK TABLES `estado_cita` WRITE;
/*!40000 ALTER TABLE `estado_cita` DISABLE KEYS */;
INSERT INTO `estado_cita` VALUES (1,0);
/*!40000 ALTER TABLE `estado_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero_servicio`
--

DROP TABLE IF EXISTS `genero_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero_servicio` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero_servicio`
--

LOCK TABLES `genero_servicio` WRITE;
/*!40000 ALTER TABLE `genero_servicio` DISABLE KEYS */;
INSERT INTO `genero_servicio` VALUES (1,'Caballero'),(2,'Dama');
/*!40000 ALTER TABLE `genero_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horarios` (
  `id_horarios` int(11) NOT NULL AUTO_INCREMENT,
  `hora_inicio` int(11) NOT NULL,
  `hora_fin` int(11) NOT NULL,
  PRIMARY KEY (`id_horarios`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,8,9);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `id_tipo_pago` int(11) DEFAULT NULL,
  `id_reservas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `fk_pago_reserva` (`id_reservas`),
  KEY `fk_pago_tipo` (`id_tipo_pago`),
  CONSTRAINT `fk_pago_reserva` FOREIGN KEY (`id_reservas`) REFERENCES `reservas` (`id_reservas`),
  CONSTRAINT `fk_pago_tipo` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portafolios`
--

DROP TABLE IF EXISTS `portafolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portafolios` (
  `id_portafolio` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `biografia` text DEFAULT NULL,
  `experiencia` varchar(100) DEFAULT NULL,
  `especialidades` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`especialidades`)),
  `calificacion` decimal(2,1) DEFAULT 5.0,
  `rese├▒as_count` int(11) DEFAULT 0,
  `instagram` varchar(100) DEFAULT NULL,
  `fotos_portafolio` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fotos_portafolio`)),
  PRIMARY KEY (`id_portafolio`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `portafolios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portafolios`
--

LOCK TABLES `portafolios` WRITE;
/*!40000 ALTER TABLE `portafolios` DISABLE KEYS */;
INSERT INTO `portafolios` VALUES (1,6,'Desarrollador con m├ís de 8 a├▒os de experiencia en soluciones en la nube.','Senior Full Stack Developer','[\"Node.js\",\"Prisma ORM\",\"NestJS\",\"Arquitectura Hexagonal\"]',4.5,25,'https://instagram.com/dev_profile','[\"https://tu-bucket.com/proyecto1.jpg\",\"https://tu-bucket.com/proyecto2.jpg\"]');
/*!40000 ALTER TABLE `portafolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pqrs`
--

DROP TABLE IF EXISTS `pqrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pqrs` (
  `id_pqrs` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` enum('Peticion','Queja','Reclamo','Sugerencia') NOT NULL,
  `asunto` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_creacion` datetime DEFAULT current_timestamp(),
  `estado` enum('Pendiente','En Proceso','Resuelto','Cerrado') DEFAULT 'Pendiente',
  `id_usuario` int(11) NOT NULL,
  `respuesta_admin` text DEFAULT NULL,
  PRIMARY KEY (`id_pqrs`),
  KEY `fk_usuario_pqrs` (`id_usuario`),
  CONSTRAINT `fk_usuario_pqrs` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pqrs`
--

LOCK TABLES `pqrs` WRITE;
/*!40000 ALTER TABLE `pqrs` DISABLE KEYS */;
INSERT INTO `pqrs` VALUES (1,'Sugerencia','Mejorar aire acondicionado','Estar├¡a genial que el local estuviera m├ís fresco.','2026-03-01 14:14:50','Pendiente',2,NULL);
/*!40000 ALTER TABLE `pqrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resenas`
--

DROP TABLE IF EXISTS `resenas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resenas` (
  `id_resena` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(100) NOT NULL,
  `email_cliente` varchar(100) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `fecha_resena` datetime DEFAULT current_timestamp(),
  `estado` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_resena`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resenas`
--

LOCK TABLES `resenas` WRITE;
/*!40000 ALTER TABLE `resenas` DISABLE KEYS */;
INSERT INTO `resenas` VALUES (1,'Nicolas Admin','nicolas@example.com',5,'Excelente servicio, el sistema de gesti├│n est├í quedando genial.','2026-03-01 15:05:42',0);
/*!40000 ALTER TABLE `resenas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservas` (
  `id_reservas` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `observaciones` varchar(70) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_estado_cita` int(11) DEFAULT NULL,
  `id_horarios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reservas`),
  KEY `fk_reserva_estado` (`id_estado_cita`),
  KEY `fk_reserva_horario` (`id_horarios`),
  KEY `fk_reserva_usuario` (`id_usuario`),
  CONSTRAINT `fk_reserva_estado` FOREIGN KEY (`id_estado_cita`) REFERENCES `estado_cita` (`id_estado_cita`),
  CONSTRAINT `fk_reserva_horario` FOREIGN KEY (`id_horarios`) REFERENCES `horarios` (`id_horarios`),
  CONSTRAINT `fk_reserva_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (6,'2026-03-15 00:00:00','Corte degradado con dise├▒o en la nuca',2,3,1,1),(7,'2026-03-02 00:00:00','me gustaria loneas',2,3,1,1),(8,'2026-03-05 00:00:00','me gistaria hacerme un decoloraod tambien',2,6,1,1),(9,'2026-03-11 00:00:00','Me gustria la linea',2,13,1,1);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Cliente'),(3,'Barbero');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `duracion` int(11) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `fk_servicio_categoria` (`id_categoria`),
  CONSTRAINT `fk_servicio_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (11,'Fade (Degradado)',18000.00,40,'Degradado bajo, medio o alto con transici├│n limpia',7,'fade_kpg382'),(12,'Taper Fade',18000.00,40,'Degradado sutil en patillas y nuca',7,'taper_fade_yilrmn'),(13,'Undercut',20000.00,45,'Laterales cortos con desconexi├│n superior',7,'under_cut_eoi8ul'),(14,'French Crop',18000.00,40,'Corte con flequillo texturizado al frente',7,'french_crop_sw9lfc'),(15,'Broccoli Haircut',22000.00,50,'Corte con volumen y rizos moderno juvenil',7,'Broccoli_Haircut_vcfikn'),(16,'Mullet Moderno',22000.00,50,'Corto adelante y largo atr├ís con estilo moderno',7,'mullet_yjcceg'),(17,'Burst Fade / Mohicano',20000.00,45,'Degradado en arco estilo mohicano',7,'mullet_i5oqn3'),(18,'eBoy Cut',18000.00,40,'Corte con raya al medio tipo librito',7,'librito_fefjuw'),(19,'Buzz Cut',12000.00,20,'Rapado uniforme en toda la cabeza',7,'buzcut_hptyju'),(21,'Pompadour',20000.00,45,'Volumen superior peinado hacia atr├ís',7,'pompadour_e9auj6'),(22,'Side Part',18000.00,40,'Corte cl├ísico con raya al lado',7,'side_part_klxqgq'),(23,'Barba 3 d├¡as',8000.00,20,'Barba corta tipo sombra',8,'barba_3_dias_nkdkyt'),(24,'Barba corporativa',10000.00,25,'Barba perfilada y uniforme',8,'barba_corpo_yfvc0z'),(26,'Barba candado',9000.00,20,'Barba solo en barbilla y bigote',8,'candao_z4rnfy'),(27,'Barba balbo',12000.00,25,'Barba sin patillas con bigote separado',8,'balbo_scpfhn'),(29,'Barba circular',10000.00,25,'Barba en forma circular cerrada',8,'circular_cerrada_cepvvy'),(30,'Van Dyke',12000.00,25,'Perilla puntiaguda con bigote fino',8,'van_dyke_n4rtmh'),(33,'Garibaldi',16000.00,35,'Barba larga y redondeada',8,'garibaldi_mjhlai'),(35,'Perilla',7000.00,15,'Vello solo en barbilla',8,'perilla_lasqn1'),(37,'Mutton Chops',12000.00,25,'Patillas gruesas con bigote',8,'mutton_u3dn43'),(38,'Keratina Caballero',80000.00,90,'Tratamiento de alisado y reparaci├│n capilar',9,'keratina_sncx1b'),(39,'Tinte Cabello Corto',50000.00,60,'Coloraci├│n en cabello corto',9,'tinte_corto_ze8aqi'),(40,'Tinte Cabello Largo',120000.00,90,'Coloraci├│n en cabello largo',9,'tinte_largo_lypdkh');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pago`
--

DROP TABLE IF EXISTS `tipo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_pago` (
  `id_tipo_pago` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pago`
--

LOCK TABLES `tipo_pago` WRITE;
/*!40000 ALTER TABLE `tipo_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `prim_nombre` varchar(70) NOT NULL,
  `seg_nombre` varchar(70) DEFAULT NULL,
  `apellido1` varchar(70) NOT NULL,
  `apellido2` varchar(70) DEFAULT NULL,
  `email` varchar(70) NOT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `id_rol` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `foto_perfil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `username` (`username`),
  KEY `fk_rol_usuario` (`id_rol`),
  CONSTRAINT `fk_rol_usuario` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'nicolas_dev','Nicolas','Andres','Minguez','Garcia','nicolas@example.com','$2a$10$EjemploDeHashBcryptAqui...','123456789',0,2,'2026-02-28 19:44:12','2026-02-28 19:44:12','profiles/default.png'),(3,'danny_ben','Daniel','Felipe','Bentancour','P├®rez','danny_bar@email.com','$2b$10$oUntsptl4bLQLydq5Z8Zf.SN75WpVTzb4QxkVcsk5UuqwRDkpEnqe','3109876543',1,3,'2026-03-01 19:44:41','2026-03-01 19:44:41','danni_bentancour_cavhya'),(4,'juan_perez88','Juan','Camilo','Perez','Rodriguez','juan.perez@email.com','$2a$10$HashSeguroDePrueba12345','3201112233',0,1,'2026-03-01 20:01:27','2026-03-01 20:01:27','profiles/user_default.png'),(5,'Lucho diaz','Luis','Fernando','Diaz','Garcia','LuisDiaz@example.com','$2b$10$plmD2ptHyE49OrrCAQoDteWNLzsVBlOw..oUk7ftFfEhTeFxt36C6','4055874521',1,2,'2026-03-02 02:02:31','2026-03-02 02:02:31','profiles/default.png'),(6,'Alejandro_mora','Alejandro','Daniel','Mora','Paez','mora_bar@email.com','$2b$10$SA7xrudOkfrke6fq9HoscOO7Mgf71PtzRt5pYgAkokCUetBAURlbi','3213925370',1,3,'2026-03-03 03:26:30','2026-03-03 03:26:30','Alejandro_Mora_ljpxsm'),(7,'Cris_di','Cristian','Daniel','Diaz','Molina','diaz_bar@email.com','$2b$10$vSMatbveFWokECb7ZQtceem98hv7nq6LUF2h6wijtEVKDdbBfdagO','3115548752',1,3,'2026-03-03 08:36:51','2026-03-03 08:36:51','cridtian_diaz_vfykyh'),(8,'Luz','luz','franco','marina','hernandez','jn147880@gmail.com','$2b$10$HcHuhFHPaOHNhOQbynfQneDGfA8OtJf28c.lgGSuVhUQzwbOHSUmW','32255669878',1,2,'2026-03-03 09:07:16','2026-03-03 09:07:16',NULL),(9,'weba','xd','xd','xd','xd','elkinsanchezp@gmail.com','$2b$10$IQ4xFW8IEJRs0LRaTRgBcOR5.LgOMFhg7HSMOXZFPW4C3y1GC4Rn.','3214588745',1,2,'2026-03-05 03:14:02','2026-03-05 03:14:02',NULL),(10,'Ferney_con','Ferney','Segundo','Contalvo','Ramirez','ferney_bar@gmail.com','$2b$10$BqUUIXIv4AgterFgFhvc1evAmN881c4qoxfK/.RpuFZkjmJ2527x6','3024025569',1,3,'2026-03-07 01:16:42','2026-03-07 01:16:42','Ferney_Contalvo_xh0ht1'),(11,'Mauro_novoa','Mauricio','Facundo','Novoa','Novoa','mauro_bar@gmail.com','$2b$10$pIpfhlpKHzTn5xgKAzLYeeS46.dJE5yR9LJqTy0/BqQoXOB3zr62y','30240258745',1,3,'2026-03-07 01:19:50','2026-03-07 01:19:50','mauricio_novoa_n6tf8n'),(12,'Juli_cor','Julian','Ra├║l','Cordero','Novoa','julian_cor@gmail.com','$2b$10$mLKr4lqxEhJgHwSFVZ9/P.qKdYYkx9wlpOaV/j94FKySMdnfTrEf.','3144091434',1,3,'2026-03-07 01:23:09','2026-03-07 01:23:09','julian_cordero_m0gw8l'),(13,'Camila_puen','Camila','Juliana','Puentes','Cordero','Camila_puen@gmail.com','$2b$10$3jjSbd158fL1KLJCkdOaG.2gZx5nKO/Dtxrm2uEkJ0ehvWPfy9AEy','3214578621',1,3,'2026-03-07 01:28:07','2026-03-07 01:28:07','Camila_Puentes_oijyph');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-26  2:54:04
