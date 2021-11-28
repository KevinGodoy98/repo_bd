-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

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
-- Current Database: `Austro`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Austro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `Austro`;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `cedula` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES ('0105652747','Leonardo alvarado','cuenca','0979395837','calvaradot1@est.ups.edu.ec');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cuenta`
--

DROP TABLE IF EXISTS `Cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuenta` (
  `cuenta_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saldo` double(14,4) NOT NULL,
  `cliente_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cuenta_id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `Cuenta_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `Cliente` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuenta`
--

LOCK TABLES `Cuenta` WRITE;
/*!40000 ALTER TABLE `Cuenta` DISABLE KEYS */;
INSERT INTO `Cuenta` VALUES ('12132224',200.1700,'0105652747');
/*!40000 ALTER TABLE `Cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferencia`
--

DROP TABLE IF EXISTS `transferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferencia` (
  `id_transferencia` int(255) NOT NULL AUTO_INCREMENT,
  `saldoTransferencia` double(14,4) NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `banco_origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuenta_origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_transferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferencia`
--

LOCK TABLES `transferencia` WRITE;
/*!40000 ALTER TABLE `transferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `BancoPichincha`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `BancoPichincha` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `BancoPichincha`;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `cedula` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES ('0105904312','Kevin Cordero','cuenca','0991269100','ckevin@est.ups.edu.ec');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cuenta`
--

DROP TABLE IF EXISTS `Cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuenta` (
  `cuenta_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saldo` double(14,4) NOT NULL,
  `cliente_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cuenta_id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `Cuenta_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `Cliente` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuenta`
--

LOCK TABLES `Cuenta` WRITE;
/*!40000 ALTER TABLE `Cuenta` DISABLE KEYS */;
INSERT INTO `Cuenta` VALUES ('12132225',250.9000,'0105904312');
/*!40000 ALTER TABLE `Cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferencia`
--

DROP TABLE IF EXISTS `transferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferencia` (
  `id_transferencia` int(255) NOT NULL AUTO_INCREMENT,
  `saldoTransferencia` double(14,4) NOT NULL,
  `fecha` date DEFAULT NULL,
  `banco_origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuenta_origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_transferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferencia`
--

LOCK TABLES `transferencia` WRITE;
/*!40000 ALTER TABLE `transferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `Jep`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Jep` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `Jep`;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `cedula` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES ('0105263123','kevin godoy','cuenca','0984965930','kgodoym@est.ups.edu.ec');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cuenta`
--

DROP TABLE IF EXISTS `Cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuenta` (
  `cuenta_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saldo` double(14,4) NOT NULL,
  `cliente_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cuenta_id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `Cuenta_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `Cliente` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuenta`
--

LOCK TABLES `Cuenta` WRITE;
/*!40000 ALTER TABLE `Cuenta` DISABLE KEYS */;
INSERT INTO `Cuenta` VALUES ('12132223',800.9000,'0105263123');
/*!40000 ALTER TABLE `Cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferencia`
--

DROP TABLE IF EXISTS `transferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferencia` (
  `id_transferencia` int(255) NOT NULL AUTO_INCREMENT,
  `saldoTransferencia` double(14,4) NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `banco_origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuenta_origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_transferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferencia`
--

LOCK TABLES `transferencia` WRITE;
/*!40000 ALTER TABLE `transferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `central`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `central` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `central`;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `cedula` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('0105263122','kevin cordero','cuenca','0984965931','calvaradot1@est.ups.edu.ec','1234');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferencia`
--

DROP TABLE IF EXISTS `transferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferencia` (
  `id_transferencia` int(255) NOT NULL AUTO_INCREMENT,
  `id_cliente` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saldoTransferencia` double(14,4) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `banco_origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banco_destino` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuenta_origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuenta_destino` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_transferencia`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `transferencia_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferencia`
--

LOCK TABLES `transferencia` WRITE;
/*!40000 ALTER TABLE `transferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `practica2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `practica2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `practica2`;

--
-- Table structure for table `CLIENTE`
--

DROP TABLE IF EXISTS `CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENTE` (
  `cedula` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTE`
--

LOCK TABLES `CLIENTE` WRITE;
/*!40000 ALTER TABLE `CLIENTE` DISABLE KEYS */;
INSERT INTO `CLIENTE` VALUES ('0101130862','Kevin','Cordero','123321','NA','calvaradot1@est.ups.edu.ec'),('0101240612','Kevin','Godoy','123321','Na x2','alvaradolayonardo@gmail.com'),('0105652747','Leo','Alvarado','123321','072897510','leo.alvarado.torres@gmail.com');
/*!40000 ALTER TABLE `CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUENTA_FINANCIERA`
--

DROP TABLE IF EXISTS `CUENTA_FINANCIERA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUENTA_FINANCIERA` (
  `id` bigint(20) NOT NULL,
  `cliente_cedula` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion_id` int(10) DEFAULT NULL,
  `numero_cuenta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saldo_actual` double(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CUENTA_FINANCIERA_CLIENTE_cedula_fk` (`cliente_cedula`),
  KEY `CUENTA_FINANCIERA_INSTITUCION_id_fk` (`institucion_id`),
  CONSTRAINT `CUENTA_FINANCIERA_CLIENTE_cedula_fk` FOREIGN KEY (`cliente_cedula`) REFERENCES `CLIENTE` (`cedula`),
  CONSTRAINT `CUENTA_FINANCIERA_INSTITUCION_id_fk` FOREIGN KEY (`institucion_id`) REFERENCES `INSTITUCION_FINANCIERA` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUENTA_FINANCIERA`
--

LOCK TABLES `CUENTA_FINANCIERA` WRITE;
/*!40000 ALTER TABLE `CUENTA_FINANCIERA` DISABLE KEYS */;
INSERT INTO `CUENTA_FINANCIERA` VALUES (0,'0105652747',0,'001001002',523.0000),(1,'0101130862',1,'002003004',2000.0000),(2,'0101240612',2,'003004005',3000.0000),(3,'0105652747',1,'001001003',4532.0000);
/*!40000 ALTER TABLE `CUENTA_FINANCIERA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSTITUCION_FINANCIERA`
--

DROP TABLE IF EXISTS `INSTITUCION_FINANCIERA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INSTITUCION_FINANCIERA` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSTITUCION_FINANCIERA`
--

LOCK TABLES `INSTITUCION_FINANCIERA` WRITE;
/*!40000 ALTER TABLE `INSTITUCION_FINANCIERA` DISABLE KEYS */;
INSERT INTO `INSTITUCION_FINANCIERA` VALUES (0,'JEP','Parque Industrial','001002003'),(1,'BANCO PICHINCHA','Frente a la tienda del godoy','001002003'),(2,'BANCO DEL AUSTRO','Parque Calderon','001002003');
/*!40000 ALTER TABLE `INSTITUCION_FINANCIERA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANSFERENCIA_BANCARIA`
--

DROP TABLE IF EXISTS `TRANSFERENCIA_BANCARIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRANSFERENCIA_BANCARIA` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cuenta_financiera_origen` bigint(20) DEFAULT NULL,
  `cuenta_financiera_destino` bigint(20) DEFAULT NULL,
  `monto_transferido` double(12,4) DEFAULT NULL,
  `motivo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TRANSFERENCIA_BANCARIA_CUENTA_FINANCIERA_id_fk` (`cuenta_financiera_origen`),
  KEY `TRANSFERENCIA_BANCARIA_CUENTA_FINANCIERA_id_fk_2` (`cuenta_financiera_destino`),
  CONSTRAINT `TRANSFERENCIA_BANCARIA_CUENTA_FINANCIERA_id_fk` FOREIGN KEY (`cuenta_financiera_origen`) REFERENCES `CUENTA_FINANCIERA` (`id`),
  CONSTRAINT `TRANSFERENCIA_BANCARIA_CUENTA_FINANCIERA_id_fk_2` FOREIGN KEY (`cuenta_financiera_destino`) REFERENCES `CUENTA_FINANCIERA` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANSFERENCIA_BANCARIA`
--

LOCK TABLES `TRANSFERENCIA_BANCARIA` WRITE;
/*!40000 ALTER TABLE `TRANSFERENCIA_BANCARIA` DISABLE KEYS */;
INSERT INTO `TRANSFERENCIA_BANCARIA` VALUES (1,0,1,10.0000,'Pago de HBO'),(2,0,1,10.0000,'Pago de HBO'),(3,1,2,10.0000,'Pago de HBO'),(4,1,2,10.0000,'Pago de HBO'),(5,1,2,10.0000,'Pago de HBO'),(6,1,2,50.0000,'Pago de HBO'),(7,0,1,10.0000,'Pago de HBO'),(8,0,1,10.0000,'Pago de HBO'),(9,0,1,10.0000,'Pago de HBO'),(10,0,2,10.0000,'Pago de HBO'),(11,2,0,30.0000,'Pago de HBO'),(12,2,0,30.0000,'Pago de HBO'),(21,0,1,30.0000,'Pago de HBO'),(22,0,1,30.0000,'Pago de H2O'),(25,0,1,30.0000,'Pago de H43332O'),(28,0,1,10.0000,'NINGUNO'),(29,0,1,10.0000,'NINGUNO'),(30,0,1,10.0000,'Angel Huaraca'),(31,0,1,20.0000,'asd'),(32,0,1,120.0000,'Compra de zapatos'),(33,0,1,40.0000,'Compra de Telefono'),(34,0,1,10.0000,'Netflix'),(35,0,1,5.0000,'Compra de un Mouse'),(36,0,1,15.0000,'Vneta de un perro'),(37,0,1,150.0000,'Compra de un Iphone'),(38,0,1,30.0000,'Pago de H43332O'),(39,NULL,1,5.0000,'cerveza'),(40,NULL,1,10.0000,'Cargador iphone'),(41,NULL,1,5.0000,'funciona'),(42,NULL,1,5.0000,'funciona'),(43,NULL,1,5.0000,'funciona'),(44,NULL,1,5.0000,'funciona'),(45,NULL,1,20.0000,'ASD'),(46,0,1,20.0000,'ASD'),(47,0,1,20.0000,'ASD'),(48,0,1,20.0000,'ASD'),(49,0,1,15.0000,'Dispositivo wifi'),(50,0,1,5.0000,'Azucar'),(51,0,1,3.0000,'Pollo'),(52,0,1,1.0000,'Recarga claro'),(53,0,1,1.0000,'Recarga'),(54,0,1,1.0000,'Recarga'),(55,0,1,1.0000,'pollo');
/*!40000 ALTER TABLE `TRANSFERENCIA_BANCARIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dummy`
--

DROP TABLE IF EXISTS `dummy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dummy` (
  `texto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dummy`
--

LOCK TABLES `dummy` WRITE;
/*!40000 ALTER TABLE `dummy` DISABLE KEYS */;
INSERT INTO `dummy` VALUES ('0'),('0'),('0'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('2'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1'),('1');
/*!40000 ALTER TABLE `dummy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-28 11:57:58
