-- MySQL dump 10.13  Distrib 5.5.42, for osx10.6 (i386)
--
-- Host: localhost    Database: ControlPlanta
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add Producto',7,'add_producto'),(20,'Can change Producto',7,'change_producto'),(21,'Can delete Producto',7,'delete_producto'),(22,'Can add Familia',8,'add_familiadelproducto'),(23,'Can change Familia',8,'change_familiadelproducto'),(24,'Can delete Familia',8,'delete_familiadelproducto'),(28,'Can add cajero',10,'add_cajero'),(29,'Can change cajero',10,'change_cajero'),(30,'Can delete cajero',10,'delete_cajero'),(31,'Can add Venta',11,'add_venta'),(32,'Can change Venta',11,'change_venta'),(33,'Can delete Venta',11,'delete_venta'),(34,'Can add lote',12,'add_lote'),(35,'Can change lote',12,'change_lote'),(36,'Can delete lote',12,'delete_lote'),(37,'Can add canal',13,'add_canal'),(38,'Can change canal',13,'change_canal'),(39,'Can delete canal',13,'delete_canal'),(40,'Can add proveedor',14,'add_proveedor'),(41,'Can change proveedor',14,'change_proveedor'),(42,'Can delete proveedor',14,'delete_proveedor'),(43,'Can add prueba',15,'add_prueba'),(44,'Can change prueba',15,'change_prueba'),(45,'Can delete prueba',15,'delete_prueba'),(46,'Can add Deshuese',16,'add_deshuese'),(47,'Can change Deshuese',16,'change_deshuese'),(48,'Can delete Deshuese',16,'delete_deshuese'),(49,'Can add Inventario Total',17,'add_detalledeshuese'),(50,'Can change Inventario Total',17,'change_detalledeshuese'),(51,'Can delete Inventario Total',17,'delete_detalledeshuese'),(52,'Can add Inventario Total',18,'add_inventariototal'),(53,'Can change Inventario Total',18,'change_inventariototal'),(54,'Can delete Inventario Total',18,'delete_inventariototal'),(64,'Can add cliente',22,'add_cliente'),(65,'Can change cliente',22,'change_cliente'),(66,'Can delete cliente',22,'delete_cliente'),(67,'Can add client type',23,'add_clienttype'),(68,'Can change client type',23,'change_clienttype'),(69,'Can delete client type',23,'delete_clienttype'),(70,'Can add Venta',24,'add_venta'),(71,'Can change Venta',24,'change_venta'),(72,'Can delete Venta',24,'delete_venta'),(73,'Can add identification type',25,'add_identificationtype'),(74,'Can change identification type',25,'change_identificationtype'),(75,'Can delete identification type',25,'delete_identificationtype'),(76,'Can add cliente',26,'add_cliente'),(77,'Can change cliente',26,'change_cliente'),(78,'Can delete cliente',26,'delete_cliente'),(79,'Can add Tipo de cliente',27,'add_clienttype'),(80,'Can change Tipo de cliente',27,'change_clienttype'),(81,'Can delete Tipo de cliente',27,'delete_clienttype'),(82,'Can add Tipo de identificación',28,'add_identificationtype'),(83,'Can change Tipo de identificación',28,'change_identificationtype'),(84,'Can delete Tipo de identificación',28,'delete_identificationtype'),(85,'Can add Detalle de Venta',29,'add_detalleproductos'),(86,'Can change Detalle de Venta',29,'change_detalleproductos'),(87,'Can delete Detalle de Venta',29,'delete_detalleproductos'),(88,'Can add Detalle de Pago',30,'add_detallespago'),(89,'Can change Detalle de Pago',30,'change_detallespago'),(90,'Can delete Detalle de Pago',30,'delete_detallespago'),(91,'Can add Tipo de Pago',31,'add_tipospago'),(92,'Can change Tipo de Pago',31,'change_tipospago'),(93,'Can delete Tipo de Pago',31,'delete_tipospago'),(94,'Can add Tipo de Tarjeta',32,'add_tipostarjeta'),(95,'Can change Tipo de Tarjeta',32,'change_tipostarjeta'),(96,'Can delete Tipo de Tarjeta',32,'delete_tipostarjeta'),(97,'Can add Resumen de Inventario',33,'add_resumeninventario'),(98,'Can change Resumen de Inventario',33,'change_resumeninventario'),(99,'Can delete Resumen de Inventario',33,'delete_resumeninventario'),(100,'Can add Entradas en Inventario',34,'add_entradasinventario'),(101,'Can change Entradas en Inventario',34,'change_entradasinventario'),(102,'Can delete Entradas en Inventario',34,'delete_entradasinventario'),(103,'Can add Tipos entradas Inventario',35,'add_tiposentradas'),(104,'Can change Tipos entradas Inventario',35,'change_tiposentradas'),(105,'Can delete Tipos entradas Inventario',35,'delete_tiposentradas'),(106,'Can add Entradas en Inventario',36,'add_salidasinventario'),(107,'Can change Entradas en Inventario',36,'change_salidasinventario'),(108,'Can delete Entradas en Inventario',36,'delete_salidasinventario'),(109,'Can add Tipos salidas Inventario',37,'add_tipossalidas'),(110,'Can change Tipos salidas Inventario',37,'change_tipossalidas'),(111,'Can delete Tipos salidas Inventario',37,'delete_tipossalidas'),(112,'Can add Cuenta por cobrar',38,'add_detallecuenta'),(113,'Can change Cuenta por cobrar',38,'change_detallecuenta'),(114,'Can delete Cuenta por cobrar',38,'delete_detallecuenta'),(118,'Can add Variable Global',40,'add_variableglobal'),(119,'Can change Variable Global',40,'change_variableglobal'),(120,'Can delete Variable Global',40,'delete_variableglobal'),(121,'Can add Abono',41,'add_abono'),(122,'Can change Abono',41,'change_abono'),(123,'Can delete Abono',41,'delete_abono'),(124,'Can add Materia Prima',42,'add_materiaprima'),(125,'Can change Materia Prima',42,'change_materiaprima'),(126,'Can delete Materia Prima',42,'delete_materiaprima'),(127,'Can add Familia MP',43,'add_familiadelamateria'),(128,'Can change Familia MP',43,'change_familiadelamateria'),(129,'Can delete Familia MP',43,'delete_familiadelamateria'),(130,'Can add Resumen de Inventario MP',44,'add_resumeninventariomp'),(131,'Can change Resumen de Inventario MP',44,'change_resumeninventariomp'),(132,'Can delete Resumen de Inventario MP',44,'delete_resumeninventariomp'),(133,'Can add Entrada en Inventario',45,'add_entradasinventariomp'),(134,'Can change Entrada en Inventario',45,'change_entradasinventariomp'),(135,'Can delete Entrada en Inventario',45,'delete_entradasinventariomp'),(136,'Can add Tipo de entrada Inventario',46,'add_tiposentradasmp'),(137,'Can change Tipo de entrada Inventario',46,'change_tiposentradasmp'),(138,'Can delete Tipo de entrada Inventario',46,'delete_tiposentradasmp'),(139,'Can add Salida en Inventario',47,'add_salidasinventariomp'),(140,'Can change Salida en Inventario',47,'change_salidasinventariomp'),(141,'Can delete Salida en Inventario',47,'delete_salidasinventariomp'),(142,'Can add Tipo de salida Inventario',48,'add_tipossalidasmp'),(143,'Can change Tipo de salida Inventario',48,'change_tipossalidasmp'),(144,'Can delete Tipo de salida Inventario',48,'delete_tipossalidasmp');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$bIm8xSlJp0Fy$1C03EhjxcHQTUAgQ4rcykk5QH2tFNAmKr7BGVQE13ic=','2015-08-10 14:58:12',1,'emanuelziga','','','emanuzuniga@gmail.com',1,1,'2015-05-19 04:42:32'),(2,'pbkdf2_sha256$20000$XbZsE2dvN7DL$IDn0oyvImBvOBM9Ktt56hLEhza32gfDxLUjFqaQ4hUs=','2015-08-10 01:42:49',0,'emanuelziga2','','','',1,1,'2015-07-04 17:21:02');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (71,2,10),(72,2,16),(73,2,17),(74,2,18),(75,2,19),(76,2,20),(77,2,21),(78,2,22),(79,2,23),(80,2,24),(81,2,28),(82,2,31),(83,2,32),(84,2,33),(85,2,34),(86,2,35),(87,2,36),(88,2,37),(89,2,38),(90,2,39),(91,2,40),(92,2,41),(93,2,42),(94,2,43),(95,2,44),(96,2,45),(97,2,46),(98,2,47),(99,2,48),(100,2,49),(101,2,50),(102,2,51),(103,2,52),(104,2,53),(105,2,54),(106,2,70),(107,2,71),(108,2,72),(109,2,76),(110,2,77),(111,2,78),(112,2,85),(113,2,86),(114,2,87),(115,2,88),(116,2,89),(117,2,90),(118,2,91),(119,2,92),(120,2,93),(121,2,94),(122,2,95),(123,2,96),(124,2,98),(125,2,100),(126,2,101),(127,2,102),(128,2,103),(129,2,104),(130,2,105),(131,2,106),(132,2,107),(133,2,108),(134,2,109),(135,2,110),(136,2,111),(137,2,112),(138,2,113),(139,2,114);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajeros_cajero`
--

DROP TABLE IF EXISTS `cajeros_cajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajeros_cajero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `identification` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identification` (`identification`),
  KEY `cajeros_cajero_user_id_355bca7ef48e8b0d_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cajeros_cajero_user_id_355bca7ef48e8b0d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajeros_cajero`
--

LOCK TABLES `cajeros_cajero` WRITE;
/*!40000 ALTER TABLE `cajeros_cajero` DISABLE KEYS */;
INSERT INTO `cajeros_cajero` VALUES (1,'Emanuel','Zúñiga Infante','113530032',1);
/*!40000 ALTER TABLE `cajeros_cajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canales_canal`
--

DROP TABLE IF EXISTS `canales_canal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canales_canal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `consecutive` int(10) unsigned NOT NULL,
  `weight` double NOT NULL,
  `qualification` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fierro_id` int(11) NOT NULL,
  `isonlote` tinyint(1) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `vendido` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `canales_canal_4e40757c` (`fierro_id`),
  KEY `canales_canal_d3c0c18a` (`tipo_id`),
  CONSTRAINT `canal_tipo_id_17bc3f4af303f4c_fk_productos_familiadelproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `productos_familiadelproducto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canales_canal`
--

LOCK TABLES `canales_canal` WRITE;
/*!40000 ALTER TABLE `canales_canal` DISABLE KEYS */;
INSERT INTO `canales_canal` VALUES (1,'2015-06-18',1,575,'A',1,1,2,0),(2,'2015-06-18',15,95.2,'A',2,1,1,0),(3,'2015-06-18',5,8,'A',1,0,3,0),(4,'2015-06-18',2,85.2,'AA',1,1,1,0),(5,'2015-06-18',3,75,'C',1,1,1,0),(6,'2015-06-18',4,105,'C',1,1,1,0),(7,'2015-06-18',5,77.2,'B',1,0,1,1),(8,'2015-06-18',2,650,'A',1,1,2,0),(9,'2015-06-18',3,555,'B',1,1,2,0),(10,'2015-06-18',5,450,'A',2,1,2,0),(11,'2015-06-18',56,854.75,'B',1,1,2,0),(12,'2015-06-18',23,525.125,'A',1,1,2,0),(13,'2015-06-18',563,575.25,'A',2,0,2,0),(14,'2015-06-18',145,452.1248,'A',1,1,2,0),(15,'2015-06-18',365,254.21248,'A',1,1,2,0),(16,'2015-06-18',14,142,'AA',1,1,2,0),(17,'2015-06-18',124,154,'AA',1,1,2,0),(18,'2015-06-19',1,85.6,'A',1,1,1,0),(19,'2015-06-19',2,77.25,'B',1,1,1,0),(20,'2015-06-19',3,92.3,'C',1,1,1,0),(21,'2015-06-19',4,101.23,'D',1,1,1,0),(22,'2015-06-19',5,55.25,'C',1,1,1,0),(23,'2015-06-19',1,525.36,'A',2,1,2,0),(24,'2015-06-19',2,485.25,'B',2,1,2,0),(25,'2015-06-19',3,652.23,'C',2,1,2,0),(26,'2015-08-04',458,120,'D',1,1,1,0),(27,'2015-08-04',2545,98,'B',2,1,1,0),(28,'2015-08-04',1514,1254,'A',1,1,1,0),(29,'2015-08-04',12525,27,'AA',2,0,1,1),(30,'2015-08-09',123,99,'AA',1,1,1,0),(31,'2015-08-09',1234,95.23,'B',2,1,1,0),(32,'2015-08-10',1234568,88.96,'A',1,1,1,0);
/*!40000 ALTER TABLE `canales_canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_cliente`
--

DROP TABLE IF EXISTS `clientes_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `phone_number` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `identification` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `credit` tinyint(1) NOT NULL,
  `credit_limit` double NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci DEFAULT NULL,
  `associated` tinyint(1) NOT NULL,
  `associated_code` int(10) unsigned DEFAULT NULL,
  `clienttype_id` int(11) NOT NULL,
  `identificationtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `identification` (`identification`),
  UNIQUE KEY `associated_code` (`associated_code`),
  KEY `clientes_cliente_9836c189` (`clienttype_id`),
  KEY `clientes_cliente_ad3c3909` (`identificationtype_id`),
  CONSTRAINT `cliente_clienttype_id_5e82a672ad1b0b01_fk_clientes_clienttype_id` FOREIGN KEY (`clienttype_id`) REFERENCES `clientes_clienttype` (`id`),
  CONSTRAINT `D09ef2206c4d2b6cc78d10f84a47cbfb` FOREIGN KEY (`identificationtype_id`) REFERENCES `clientes_identificationtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_cliente`
--

LOCK TABLES `clientes_cliente` WRITE;
/*!40000 ALTER TABLE `clientes_cliente` DISABLE KEYS */;
INSERT INTO `clientes_cliente` VALUES (1,'0001','Cliente','Contado','0000-0000','000000000','Sin dirección',0,0,'',0,NULL,1,1),(2,'0002','Emanuel','Zúñiga Infante','8302-1964','113530032','Las Juntas de pacuar, Daniel Flores',1,100000,'emanuelziga@gmail.com',0,NULL,2,1),(3,'0003','Omar','Valerio','8888-8888','113530033','Palmares, Daniel Flores',1,300000,'ovalerioso@gmail.com',0,NULL,3,1);
/*!40000 ALTER TABLE `clientes_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_clienttype`
--

DROP TABLE IF EXISTS `clientes_clienttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes_clienttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_clienttype`
--

LOCK TABLES `clientes_clienttype` WRITE;
/*!40000 ALTER TABLE `clientes_clienttype` DISABLE KEYS */;
INSERT INTO `clientes_clienttype` VALUES (1,'Cliente General'),(2,'Distribuidor'),(3,'Gobierno');
/*!40000 ALTER TABLE `clientes_clienttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_identificationtype`
--

DROP TABLE IF EXISTS `clientes_identificationtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes_identificationtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_identificationtype`
--

LOCK TABLES `clientes_identificationtype` WRITE;
/*!40000 ALTER TABLE `clientes_identificationtype` DISABLE KEYS */;
INSERT INTO `clientes_identificationtype` VALUES (1,'Cédula Nacional'),(2,'Cédula Jurídica'),(3,'Pasaporte-Extranjeros');
/*!40000 ALTER TABLE `clientes_identificationtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasCobrar_abono`
--

DROP TABLE IF EXISTS `cuentasCobrar_abono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasCobrar_abono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `detalle` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `moneda` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `montocol` double NOT NULL,
  `montodolar` double NOT NULL,
  `digitos` int(11) NOT NULL,
  `autorizacion` int(11) NOT NULL,
  `transfnum` int(11) NOT NULL,
  `chequenum` int(11) NOT NULL,
  `bancocheque` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `saldoant` double NOT NULL,
  `saldoactual` double DEFAULT NULL,
  `tipopago_id` int(11) NOT NULL,
  `tipotarjeta_id` int(11) NOT NULL,
  `bancotransf` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuentasCobrar_tipopago_id_e9a813b137342d4_fk_ventas_tipospago_id` (`tipopago_id`),
  KEY `cuenta_tipotarjeta_id_1729601068ad1d85_fk_ventas_tipostarjeta_id` (`tipotarjeta_id`),
  CONSTRAINT `cuentasCobrar_tipopago_id_e9a813b137342d4_fk_ventas_tipospago_id` FOREIGN KEY (`tipopago_id`) REFERENCES `ventas_tipospago` (`id`),
  CONSTRAINT `cuenta_tipotarjeta_id_1729601068ad1d85_fk_ventas_tipostarjeta_id` FOREIGN KEY (`tipotarjeta_id`) REFERENCES `ventas_tipostarjeta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasCobrar_abono`
--

LOCK TABLES `cuentasCobrar_abono` WRITE;
/*!40000 ALTER TABLE `cuentasCobrar_abono` DISABLE KEYS */;
INSERT INTO `cuentasCobrar_abono` VALUES (1,'2015-08-15','11:19:59','Abono a Facturas','Colones',1500,0,0,0,0,0,'',0,0,1,6,''),(2,'2015-08-17','22:39:48','Abono a Facturas 17','Dolares',2000,0,0,0,0,0,'',5176.771,3176.771,1,1,'<option value=\"1\">Nacional</option>\n                                <option value=\"2\">Costa Rica</option>\n                                <option value=\"2\">BAC</option>'),(3,'2015-08-18','09:32:24','Abono a Factura(s) 18','Dolares',9000,0,0,0,0,0,'',19584.528,10584.528,1,1,'<option value=\"1\">Nacional</option>\n                                <option value=\"2\">Costa Rica</option>\n                                <option value=\"2\">BAC</option>'),(4,'2015-08-18','09:33:33','Abono a Factura(s) 18,19','Colones',5270,10,0,0,0,0,'',10584.528,5314.528,1,1,'<option value=\"1\">Nacional</option>\n                                <option value=\"2\">Costa Rica</option>\n                                <option value=\"2\">BAC</option>'),(5,'2015-08-18','09:51:22','Abono a Factura(s) 20','Colones',1412.5,2.68026565464896,0,0,0,0,'',1412.5,0,1,1,'Nacional'),(6,'2015-08-18','12:01:36','Abono a Factura(s) 21','Dolares',450,0,0,0,0,0,'',1412.5,962.5,1,1,'Nacional'),(7,'2015-08-18','12:02:28','Abono a Factura(s) 21','Dolares',962.5,0,0,0,0,0,'',962.5,0,1,1,'Nacional');
/*!40000 ALTER TABLE `cuentasCobrar_abono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasCobrar_abono_facturas`
--

DROP TABLE IF EXISTS `cuentasCobrar_abono_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasCobrar_abono_facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abono_id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abono_id` (`abono_id`,`venta_id`),
  KEY `cuentasCobrar_abono_venta_id_7f93180b583a0ba1_fk_ventas_venta_id` (`venta_id`),
  CONSTRAINT `cuentasCobrar_abono_id_2b2be5e6b6f5d0a_fk_cuentasCobrar_abono_id` FOREIGN KEY (`abono_id`) REFERENCES `cuentasCobrar_abono` (`id`),
  CONSTRAINT `cuentasCobrar_abono_venta_id_7f93180b583a0ba1_fk_ventas_venta_id` FOREIGN KEY (`venta_id`) REFERENCES `ventas_venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasCobrar_abono_facturas`
--

LOCK TABLES `cuentasCobrar_abono_facturas` WRITE;
/*!40000 ALTER TABLE `cuentasCobrar_abono_facturas` DISABLE KEYS */;
INSERT INTO `cuentasCobrar_abono_facturas` VALUES (1,1,3),(2,2,17),(3,3,18),(4,4,18),(5,4,19),(6,5,20),(7,6,21),(8,7,21);
/*!40000 ALTER TABLE `cuentasCobrar_abono_facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasCobrar_detallecuenta`
--

DROP TABLE IF EXISTS `cuentasCobrar_detallecuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasCobrar_detallecuenta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` double NOT NULL,
  `cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `cuentasCobrar__cliente_id_e99d9e6b06a2ac0_fk_clientes_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `clientes_cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasCobrar_detallecuenta`
--

LOCK TABLES `cuentasCobrar_detallecuenta` WRITE;
/*!40000 ALTER TABLE `cuentasCobrar_detallecuenta` DISABLE KEYS */;
INSERT INTO `cuentasCobrar_detallecuenta` VALUES (1,0,1),(2,0,2),(5,0,3);
/*!40000 ALTER TABLE `cuentasCobrar_detallecuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasCobrar_detallecuenta_abonos`
--

DROP TABLE IF EXISTS `cuentasCobrar_detallecuenta_abonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasCobrar_detallecuenta_abonos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detallecuenta_id` int(11) NOT NULL,
  `abono_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `detallecuenta_id` (`detallecuenta_id`,`abono_id`),
  KEY `cuentasCobra_abono_id_5c24894b4096b0df_fk_cuentasCobrar_abono_id` (`abono_id`),
  CONSTRAINT `cuentasCobra_abono_id_5c24894b4096b0df_fk_cuentasCobrar_abono_id` FOREIGN KEY (`abono_id`) REFERENCES `cuentasCobrar_abono` (`id`),
  CONSTRAINT `D490a5f1a76435fe05e7957c38382864` FOREIGN KEY (`detallecuenta_id`) REFERENCES `cuentasCobrar_detallecuenta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasCobrar_detallecuenta_abonos`
--

LOCK TABLES `cuentasCobrar_detallecuenta_abonos` WRITE;
/*!40000 ALTER TABLE `cuentasCobrar_detallecuenta_abonos` DISABLE KEYS */;
INSERT INTO `cuentasCobrar_detallecuenta_abonos` VALUES (15,2,3),(16,2,4),(17,2,5),(18,2,6),(19,2,7),(2,5,2);
/*!40000 ALTER TABLE `cuentasCobrar_detallecuenta_abonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasCobrar_detallecuenta_pending`
--

DROP TABLE IF EXISTS `cuentasCobrar_detallecuenta_pending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasCobrar_detallecuenta_pending` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detallecuenta_id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `detallecuenta_id` (`detallecuenta_id`,`venta_id`),
  KEY `cuentasCobrar_detal_venta_id_2d4c1622e2399cfa_fk_ventas_venta_id` (`venta_id`),
  CONSTRAINT `cuentasCobrar_detal_venta_id_2d4c1622e2399cfa_fk_ventas_venta_id` FOREIGN KEY (`venta_id`) REFERENCES `ventas_venta` (`id`),
  CONSTRAINT `D827662b43d15a54e6d52ab542fd1ab1` FOREIGN KEY (`detallecuenta_id`) REFERENCES `cuentasCobrar_detallecuenta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasCobrar_detallecuenta_pending`
--

LOCK TABLES `cuentasCobrar_detallecuenta_pending` WRITE;
/*!40000 ALTER TABLE `cuentasCobrar_detallecuenta_pending` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentasCobrar_detallecuenta_pending` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deshueses_deshuese`
--

DROP TABLE IF EXISTS `deshueses_deshuese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deshueses_deshuese` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pesototal` double NOT NULL,
  `mermakg` double DEFAULT NULL,
  `mermapor` double DEFAULT NULL,
  `lote_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deshueses_deshuese_d0ea3e58` (`lote_id`),
  CONSTRAINT `deshueses_deshuese_lote_id_635c83cf48db50c4_fk_lotes_lote_id` FOREIGN KEY (`lote_id`) REFERENCES `lotes_lote` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deshueses_deshuese`
--

LOCK TABLES `deshueses_deshuese` WRITE;
/*!40000 ALTER TABLE `deshueses_deshuese` DISABLE KEYS */;
INSERT INTO `deshueses_deshuese` VALUES (1,92,3.2,3.361,18),(2,145,0.25,0.172,19),(5,1629.84,33,1.985,22),(6,254.35,0.8,0.314,23),(7,150.065,6.415,4.1,24),(8,191.005,3.225,1.66,26),(9,87.92,1.04,1.169,27);
/*!40000 ALTER TABLE `deshueses_deshuese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deshueses_deshuese_detalle`
--

DROP TABLE IF EXISTS `deshueses_deshuese_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deshueses_deshuese_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deshuese_id` int(11) NOT NULL,
  `detalledeshuese_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deshuese_id` (`deshuese_id`,`detalledeshuese_id`),
  KEY `D7a27375425bae127c9962ba69f4d6df` (`detalledeshuese_id`),
  CONSTRAINT `D7a27375425bae127c9962ba69f4d6df` FOREIGN KEY (`detalledeshuese_id`) REFERENCES `deshueses_detalledeshuese` (`id`),
  CONSTRAINT `deshueses__deshuese_id_6623446cb9b1c068_fk_deshueses_deshuese_id` FOREIGN KEY (`deshuese_id`) REFERENCES `deshueses_deshuese` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deshueses_deshuese_detalle`
--

LOCK TABLES `deshueses_deshuese_detalle` WRITE;
/*!40000 ALTER TABLE `deshueses_deshuese_detalle` DISABLE KEYS */;
INSERT INTO `deshueses_deshuese_detalle` VALUES (1,1,1),(2,2,2),(5,5,5),(6,5,6),(7,5,7),(8,5,8),(9,5,9),(10,5,10),(11,5,11),(12,5,12),(13,6,13),(14,6,14),(15,6,15),(16,6,16),(17,6,17),(18,6,18),(19,7,19),(20,7,20),(21,7,21),(22,7,22),(27,8,23),(23,8,24),(24,8,25),(25,8,26),(26,8,27),(28,9,28),(29,9,29),(30,9,30);
/*!40000 ALTER TABLE `deshueses_deshuese_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deshueses_detalledeshuese`
--

DROP TABLE IF EXISTS `deshueses_detalledeshuese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deshueses_detalledeshuese` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peso` double NOT NULL,
  `lote_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deshueses_detalledeshu_lote_id_4c77bed7a5d035ca_fk_lotes_lote_id` (`lote_id`),
  KEY `deshueses__producto_id_6b722475a8237420_fk_productos_producto_id` (`producto_id`),
  CONSTRAINT `deshueses_detalledeshu_lote_id_4c77bed7a5d035ca_fk_lotes_lote_id` FOREIGN KEY (`lote_id`) REFERENCES `lotes_lote` (`id`),
  CONSTRAINT `deshueses__producto_id_6b722475a8237420_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deshueses_detalledeshuese`
--

LOCK TABLES `deshueses_detalledeshuese` WRITE;
/*!40000 ALTER TABLE `deshueses_detalledeshuese` DISABLE KEYS */;
INSERT INTO `deshueses_detalledeshuese` VALUES (1,92,18,1),(2,145,19,1),(5,321.2,22,46),(6,425.35,22,49),(7,52.3,22,45),(8,452.3,22,58),(9,201.23,22,51),(10,12.23,22,53),(11,120.23,22,66),(12,45,22,47),(13,52.23,23,6),(14,101.23,23,9),(15,15.23,23,8),(16,42.23,23,15),(17,32.58,23,21),(18,10.85,23,23),(19,14.85,24,36),(20,46.245,24,6),(21,5.45,24,4),(22,83.52,24,7),(23,50.53,26,7),(24,60.125,26,10),(25,15.35,26,8),(26,60,26,18),(27,5,26,19),(28,22.96,27,8),(29,50.96,27,3),(30,14,27,9);
/*!40000 ALTER TABLE `deshueses_detalledeshuese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-05-19 05:23:48','1','Emanuel Zúñiga Infante',1,'',10,1),(3,'2015-05-19 05:24:36','1','Res',1,'',8,1),(4,'2015-05-19 05:24:44','2','Cerdo',1,'',8,1),(5,'2015-05-19 05:25:17','1','Chuleta de cerdo',1,'',7,1),(6,'2015-05-20 01:22:27','1','Emanuel Zuniga',1,'',14,1),(7,'2015-05-20 01:37:57','2','2015-05-1915',1,'',13,1),(8,'2015-05-20 01:41:45','2','0001-01-0115',3,'',13,1),(9,'2015-05-20 01:42:06','3','0001-01-0116',1,'',13,1),(10,'2015-05-27 02:10:16','4','2015-05-2632',1,'',13,1),(11,'2015-05-27 02:10:44','5','2015-05-2656',1,'',13,1),(12,'2015-05-27 17:04:50','6','2015-05-276',1,'',13,1),(13,'2015-06-01 23:44:32','7','2015-06-01156',1,'',13,1),(14,'2015-06-02 00:43:39','3','154165',1,'',12,1),(15,'2015-06-02 00:44:48','2','154165',3,'',12,1),(16,'2015-06-02 00:44:48','3','154165',3,'',12,1),(17,'2015-06-02 23:36:15','2','Keren Granados',3,'',10,1),(18,'2015-06-02 23:36:15','3','test test',3,'',10,1),(19,'2015-06-02 23:36:15','4','wed wed',3,'',10,1),(20,'2015-06-02 23:36:15','5','Marian zuñiga ',3,'',10,1),(21,'2015-06-02 23:40:25','8','2015-06-021564',1,'',13,1),(22,'2015-06-08 16:08:34','3','2015-05-1916',3,'',13,1),(23,'2015-06-08 16:08:34','4','2015-05-2632',3,'',13,1),(24,'2015-06-08 16:08:34','5','2015-05-2656',3,'',13,1),(25,'2015-06-08 16:08:34','6','2015-05-276',3,'',13,1),(26,'2015-06-08 16:08:34','7','2015-06-01156',3,'',13,1),(27,'2015-06-08 16:08:34','8','2015-06-021564',3,'',13,1),(28,'2015-06-08 16:08:34','9','2015-06-024',3,'',13,1),(29,'2015-06-08 16:08:34','10','2015-06-02373',3,'',13,1),(30,'2015-06-08 16:08:34','11','2015-06-02252',3,'',13,1),(31,'2015-06-08 16:08:34','12','2015-06-0223',3,'',13,1),(32,'2015-06-08 16:08:34','13','2015-06-024555',3,'',13,1),(33,'2015-06-08 16:08:34','14','2015-06-0415',3,'',13,1),(34,'2015-06-08 16:08:34','15','2015-06-0428',3,'',13,1),(35,'2015-06-08 16:08:34','16','2015-06-05234',3,'',13,1),(36,'2015-06-08 16:08:34','17','2015-06-0521',3,'',13,1),(37,'2015-06-08 16:08:34','18','2015-06-0845',3,'',13,1),(38,'2015-06-08 16:09:01','1','154165',3,'',12,1),(39,'2015-06-08 16:09:01','2','12',3,'',12,1),(40,'2015-06-08 16:09:01','3','1245',3,'',12,1),(41,'2015-06-08 16:09:01','4','8546',3,'',12,1),(42,'2015-06-08 16:09:01','5','5246',3,'',12,1),(43,'2015-06-08 16:09:01','6','2546',3,'',12,1),(44,'2015-06-08 16:09:01','7','258456',3,'',12,1),(45,'2015-06-08 16:09:01','8','1456',3,'',12,1),(46,'2015-06-08 16:09:01','9','5286',3,'',12,1),(47,'2015-06-08 16:09:01','10','52863',3,'',12,1),(48,'2015-06-08 16:09:01','11','528634',3,'',12,1),(49,'2015-06-08 16:09:01','12','52863447',3,'',12,1),(50,'2015-06-08 16:09:01','13','52585',3,'',12,1),(51,'2015-06-08 16:09:01','14','478456',3,'',12,1),(52,'2015-06-08 16:09:01','15','4565687',3,'',12,1),(53,'2015-06-08 16:09:01','16','45656872',3,'',12,1),(54,'2015-06-08 16:09:01','17','52897',3,'',12,1),(55,'2015-06-08 16:09:01','18','fewf3',3,'',12,1),(56,'2015-06-08 16:09:01','19','erge',3,'',12,1),(57,'2015-06-08 16:09:01','20','fesdf',3,'',12,1),(58,'2015-06-08 16:09:01','21','23234',3,'',12,1),(59,'2015-06-08 16:09:01','22','emanuel',3,'',12,1),(60,'2015-06-08 16:09:01','23','emanuel2',3,'',12,1),(61,'2015-06-08 16:09:01','24','emanuel3',3,'',12,1),(62,'2015-06-08 16:09:01','25','emanuel4',3,'',12,1),(63,'2015-06-08 16:09:01','26','emanuel8',3,'',12,1),(64,'2015-06-08 16:09:01','27','emanuel9',3,'',12,1),(65,'2015-06-08 16:09:01','28','DIOS',3,'',12,1),(66,'2015-06-08 16:09:01','29','DIOS2',3,'',12,1),(67,'2015-06-08 16:09:01','30','DIOS3',3,'',12,1),(68,'2015-06-08 16:09:01','31','DIOSDIOS',3,'',12,1),(69,'2015-06-08 16:09:01','32','DIOSDIOS2',3,'',12,1),(70,'2015-06-08 16:09:01','33','DIOSDIOS3',3,'',12,1),(71,'2015-06-08 16:09:01','34','diosestaes',3,'',12,1),(72,'2015-06-08 16:09:01','35','diosestaes2',3,'',12,1),(73,'2015-06-08 16:09:01','36','diosestaes3',3,'',12,1),(74,'2015-06-08 16:09:01','37','diosestaes4',3,'',12,1),(75,'2015-06-08 16:09:01','38','diosestaes5',3,'',12,1),(76,'2015-06-08 16:09:01','39','diosesbueno',3,'',12,1),(77,'2015-06-08 16:09:01','40','diosesbueno2',3,'',12,1),(78,'2015-06-08 16:09:01','41','diosesbueno4',3,'',12,1),(79,'2015-06-08 16:09:01','42','diosesbueno5',3,'',12,1),(80,'2015-06-08 16:09:01','43','diosesbueno6',3,'',12,1),(81,'2015-06-08 16:09:01','44','diosesbueno7',3,'',12,1),(82,'2015-06-08 16:09:01','45','diosesbueno8',3,'',12,1),(83,'2015-06-08 16:09:01','46','diosesbueno9',3,'',12,1),(84,'2015-06-08 16:09:01','47','diosesbueno10',3,'',12,1),(85,'2015-06-08 16:09:01','48','diosesbueno11',3,'',12,1),(86,'2015-06-08 16:09:01','49','diosesbueno15',3,'',12,1),(87,'2015-06-08 16:09:01','50','estasi',3,'',12,1),(88,'2015-06-08 16:09:01','51','16846',3,'',12,1),(89,'2015-06-08 16:09:01','52','estasi32',3,'',12,1),(90,'2015-06-08 16:09:01','53','estasi31',3,'',12,1),(91,'2015-06-08 16:09:01','54','emanu',3,'',12,1),(92,'2015-06-08 16:09:01','55','estasi30',3,'',12,1),(93,'2015-06-08 16:18:09','20','2015-06-0885',1,'',13,1),(94,'2015-06-08 16:30:19','1','estasi30',3,'',12,1),(95,'2015-06-08 22:49:45','19','2015-06-0810',2,'Modificado/a isonlote.',13,1),(96,'2015-06-09 02:19:11','19','2015-06-0810',2,'Modificado/a isonlote.',13,1),(97,'2015-06-09 02:19:14','20','2015-06-0885',2,'Modificado/a isonlote.',13,1),(98,'2015-06-09 02:30:25','19','2015-06-0810',3,'',13,1),(99,'2015-06-09 02:30:25','20','2015-06-0885',3,'',13,1),(100,'2015-06-09 02:30:32','2','102',3,'',12,1),(101,'2015-06-09 02:30:32','3','145',3,'',12,1),(102,'2015-06-09 02:30:32','4','146',3,'',12,1),(103,'2015-06-09 02:30:32','5','121484',3,'',12,1),(104,'2015-06-09 02:30:32','6','1534',3,'',12,1),(105,'2015-06-09 02:30:32','7','14558',3,'',12,1),(106,'2015-06-09 02:30:32','8','emanuel',3,'',12,1),(107,'2015-06-09 02:30:55','21','2015-06-0845',1,'',13,1),(108,'2015-06-09 04:09:37','1','14525',2,'Modificado/a date.',12,1),(109,'2015-06-09 04:09:40','2','145252',2,'Modificado/a date.',12,1),(110,'2015-06-09 04:09:47','3','1452523',2,'Modificado/a date.',12,1),(111,'2015-06-12 00:44:04','21','2015-06-08 A055 45',3,'',13,1),(112,'2015-06-12 00:44:16','22','2015-06-08 A055 145',3,'',13,1),(113,'2015-06-12 00:44:16','23','2015-06-10 A055 15',3,'',13,1),(114,'2015-06-12 00:44:16','24','2015-06-10 A055 145',3,'',13,1),(115,'2015-06-12 00:44:16','25','2015-06-10 A055 12',3,'',13,1),(116,'2015-06-12 00:44:16','26','2015-06-10 A055 854',3,'',13,1),(117,'2015-06-12 00:44:16','27','2015-06-10 A055 256',3,'',13,1),(118,'2015-06-12 00:44:16','28','2015-06-10 A055 77',3,'',13,1),(119,'2015-06-12 00:44:16','29','2015-06-10 A055 256',3,'',13,1),(120,'2015-06-12 00:44:16','30','2015-06-10 A055 13',3,'',13,1),(121,'2015-06-12 00:44:16','31','2015-06-10 A055 1548',3,'',13,1),(122,'2015-06-12 00:44:16','32','2015-06-10 A055 214687',3,'',13,1),(123,'2015-06-12 00:44:16','33','2015-06-10 A055 8548',3,'',13,1),(124,'2015-06-12 00:51:15','1','2015-06-11 A055 145',1,'',13,1),(125,'2015-06-12 00:51:31','2','2015-06-11 A055 65',1,'',13,1),(126,'2015-06-12 00:51:42','3','2015-06-11 A055 36',1,'',13,1),(127,'2015-06-12 00:52:42','20','11/06/2015-1',1,'',12,1),(128,'2015-06-12 01:01:26','21','85647',1,'',12,1),(129,'2015-06-12 01:01:44','21','85647',3,'',12,1),(130,'2015-06-12 01:01:57','1','DetalleDeshuese object',1,'',17,1),(131,'2015-06-12 01:02:09','2','DetalleDeshuese object',1,'',17,1),(132,'2015-06-12 01:02:20','20','11/06/2015-1',3,'',12,1),(133,'2015-06-12 20:07:08','2','B90 Bch Especial',3,'',7,1),(134,'2015-06-12 20:07:08','3','Bistec Marinado Res esp',3,'',7,1),(135,'2015-06-12 20:07:08','4','Bistec Paleta',3,'',7,1),(136,'2015-06-12 20:08:26','1','Res',3,'',8,1),(137,'2015-06-12 20:08:26','2','Cerdo',3,'',8,1),(138,'2015-06-12 20:08:35','3','Carne de Cerdo',1,'',8,1),(139,'2015-06-12 20:09:29','4','Carne de Cerdo',1,'',8,1),(140,'2015-06-12 20:10:22','1','Carne de Cerdo',1,'',8,1),(141,'2015-06-12 20:10:55','2','Carne de Res',1,'',8,1),(142,'2015-06-12 20:11:02','3','Pollo',1,'',8,1),(143,'2015-06-14 18:31:56','27','14/06/2015-1',2,'Modificado/a isondeshuese.',12,1),(144,'2015-06-14 18:32:53','27','14/06/2015-1',2,'Modificado/a isondeshuese.',12,1),(145,'2015-06-14 18:34:00','27','14/06/2015-1',2,'Modificado/a isondeshuese.',12,1),(146,'2015-06-14 18:34:14','27','14/06/2015-1',2,'Modificado/a isondeshuese.',12,1),(147,'2015-06-17 01:57:27','1','1',3,'',17,1),(148,'2015-06-17 01:57:27','2','2',3,'',17,1),(149,'2015-06-17 01:57:27','3','3',3,'',17,1),(150,'2015-06-17 01:57:27','4','4',3,'',17,1),(151,'2015-06-17 01:57:27','5','5',3,'',17,1),(152,'2015-06-17 01:57:27','6','6',3,'',17,1),(153,'2015-06-17 01:57:27','7','7',3,'',17,1),(154,'2015-06-17 01:57:27','8','8',3,'',17,1),(155,'2015-06-17 01:57:27','9','9',3,'',17,1),(156,'2015-06-17 01:57:27','10','10',3,'',17,1),(157,'2015-06-17 01:57:27','11','11',3,'',17,1),(158,'2015-06-17 01:57:27','12','12',3,'',17,1),(159,'2015-06-17 01:57:27','13','13',3,'',17,1),(160,'2015-06-17 01:57:27','14','14',3,'',17,1),(161,'2015-06-17 01:57:27','15','15',3,'',17,1),(162,'2015-06-17 01:57:27','16','16',3,'',17,1),(163,'2015-06-17 01:57:27','17','17',3,'',17,1),(164,'2015-06-17 01:57:27','18','18',3,'',17,1),(165,'2015-06-17 01:57:27','19','19',3,'',17,1),(166,'2015-06-17 01:57:27','20','20',3,'',17,1),(167,'2015-06-17 01:57:27','21','21',3,'',17,1),(168,'2015-06-17 01:57:27','22','22',3,'',17,1),(169,'2015-06-17 01:57:27','23','23',3,'',17,1),(170,'2015-06-17 01:57:27','24','24',3,'',17,1),(171,'2015-06-17 01:57:27','25','25',3,'',17,1),(172,'2015-06-17 01:57:27','26','26',3,'',17,1),(173,'2015-06-17 01:57:27','27','27',3,'',17,1),(174,'2015-06-17 01:57:27','28','28',3,'',17,1),(175,'2015-06-17 01:57:27','29','29',3,'',17,1),(176,'2015-06-17 01:57:27','30','30',3,'',17,1),(177,'2015-06-17 01:57:27','31','31',3,'',17,1),(178,'2015-06-17 01:57:27','32','32',3,'',17,1),(179,'2015-06-17 01:57:27','33','33',3,'',17,1),(180,'2015-06-17 01:57:27','34','34',3,'',17,1),(181,'2015-06-17 01:57:27','35','35',3,'',17,1),(182,'2015-06-17 01:57:27','36','36',3,'',17,1),(183,'2015-06-17 01:57:27','37','37',3,'',17,1),(184,'2015-06-17 01:57:27','38','38',3,'',17,1),(185,'2015-06-17 01:57:27','39','39',3,'',17,1),(186,'2015-06-17 01:57:27','40','40',3,'',17,1),(187,'2015-06-17 01:57:27','41','41',3,'',17,1),(188,'2015-06-17 01:57:27','42','42',3,'',17,1),(189,'2015-06-17 01:57:27','43','43',3,'',17,1),(190,'2015-06-17 01:57:27','44','44',3,'',17,1),(191,'2015-06-17 01:57:27','45','45',3,'',17,1),(192,'2015-06-17 01:57:27','46','46',3,'',17,1),(193,'2015-06-17 01:57:27','47','47',3,'',17,1),(194,'2015-06-17 01:57:27','48','48',3,'',17,1),(195,'2015-06-17 01:57:27','49','49',3,'',17,1),(196,'2015-06-17 01:57:27','50','50',3,'',17,1),(197,'2015-06-17 01:57:27','51','51',3,'',17,1),(198,'2015-06-17 01:57:27','52','52',3,'',17,1),(199,'2015-06-17 01:57:27','53','53',3,'',17,1),(200,'2015-06-17 01:57:27','54','54',3,'',17,1),(201,'2015-06-17 01:57:27','55','55',3,'',17,1),(202,'2015-06-17 01:57:35','1','16/06/2015-1',3,'',16,1),(203,'2015-06-18 02:14:21','1','Bistec Cerdo',3,'',18,1),(204,'2015-06-18 02:14:21','2','Carne para tamal',3,'',18,1),(205,'2015-06-18 02:14:21','3','Cabeza lomo',3,'',18,1),(206,'2015-06-18 02:14:21','4','Babe back rib',3,'',18,1),(207,'2015-06-18 02:14:21','5','Carne cerdo para Azar',3,'',18,1),(208,'2015-06-18 02:14:21','6','Cabeza lomo',3,'',18,1),(209,'2015-06-18 02:14:21','7','Carne cerdo para Azar',3,'',18,1),(210,'2015-06-18 02:14:21','8','Bistec Cerdo',3,'',18,1),(211,'2015-06-18 02:14:21','9','Babe back rib',3,'',18,1),(212,'2015-06-18 02:14:21','10','Cabeza Chuleta',3,'',18,1),(213,'2015-06-18 02:14:43','2','16/06/2015-2',3,'',16,1),(214,'2015-06-18 02:14:43','3','16/06/2015-1',3,'',16,1),(215,'2015-06-18 02:14:43','4','16/06/2015-2',3,'',16,1),(216,'2015-06-18 02:14:43','5','16/06/2015-2',3,'',16,1),(217,'2015-06-18 02:14:43','6','16/06/2015-1',3,'',16,1),(218,'2015-06-18 02:14:43','7','17/06/2015-1',3,'',16,1),(219,'2015-06-18 02:14:43','8','17/06/2015-1',3,'',16,1),(220,'2015-06-18 02:14:57','56','56',3,'',17,1),(221,'2015-06-18 02:14:57','57','57',3,'',17,1),(222,'2015-06-18 02:14:57','58','58',3,'',17,1),(223,'2015-06-18 02:14:57','59','59',3,'',17,1),(224,'2015-06-18 02:14:57','60','60',3,'',17,1),(225,'2015-06-18 02:14:57','61','61',3,'',17,1),(226,'2015-06-18 02:14:57','62','62',3,'',17,1),(227,'2015-06-18 02:14:57','63','63',3,'',17,1),(228,'2015-06-18 02:14:57','64','64',3,'',17,1),(229,'2015-06-18 02:14:57','65','65',3,'',17,1),(230,'2015-06-18 02:14:57','66','66',3,'',17,1),(231,'2015-06-18 02:14:57','67','67',3,'',17,1),(232,'2015-06-18 02:14:57','68','68',3,'',17,1),(233,'2015-06-18 02:14:57','69','69',3,'',17,1),(234,'2015-06-18 02:14:57','70','70',3,'',17,1),(235,'2015-06-18 02:14:57','71','71',3,'',17,1),(236,'2015-06-18 02:14:57','72','72',3,'',17,1),(237,'2015-06-18 02:14:57','73','73',3,'',17,1),(238,'2015-06-18 02:14:57','74','74',3,'',17,1),(239,'2015-06-18 02:14:57','75','75',3,'',17,1),(240,'2015-06-18 02:14:57','76','76',3,'',17,1),(241,'2015-06-18 02:14:57','77','77',3,'',17,1),(242,'2015-06-18 02:14:57','78','78',3,'',17,1),(243,'2015-06-18 02:14:57','79','79',3,'',17,1),(244,'2015-06-18 02:14:57','80','80',3,'',17,1),(245,'2015-06-18 02:14:57','81','81',3,'',17,1),(246,'2015-06-18 21:35:17','1','2015-06-11 A055 145',3,'',13,1),(247,'2015-06-18 21:35:17','2','2015-06-11 A055 65',3,'',13,1),(248,'2015-06-18 21:35:17','3','2015-06-11 A055 36',3,'',13,1),(249,'2015-06-18 21:35:17','4','2015-06-11 A055 1265',3,'',13,1),(250,'2015-06-18 21:35:17','5','2015-06-11 A055 458214',3,'',13,1),(251,'2015-06-18 21:35:17','6','2015-06-12 A055 45',3,'',13,1),(252,'2015-06-18 21:35:17','7','2015-06-12 A055 96',3,'',13,1),(253,'2015-06-18 21:35:17','8','2015-06-12 A055 8564',3,'',13,1),(254,'2015-06-18 21:35:17','9','2015-06-12 A055 4',3,'',13,1),(255,'2015-06-18 21:35:17','10','2015-06-12 A055 566',3,'',13,1),(256,'2015-06-18 21:35:17','11','2015-06-14 A055 1',3,'',13,1),(257,'2015-06-18 21:35:17','12','2015-06-14 A055 2',3,'',13,1),(258,'2015-06-18 21:35:17','13','2015-06-14 A055 3',3,'',13,1),(259,'2015-06-18 21:35:17','14','2015-06-14 A055 4',3,'',13,1),(260,'2015-06-18 21:35:17','15','2015-06-14 A055 4',3,'',13,1),(261,'2015-06-18 21:35:17','16','2015-06-16 A055 1',3,'',13,1),(262,'2015-06-18 21:35:17','17','2015-06-16 A055 1',3,'',13,1),(263,'2015-06-18 21:35:17','18','2015-06-16 A055 3',3,'',13,1),(264,'2015-06-18 21:35:17','19','2015-06-16 A055 5',3,'',13,1),(265,'2015-06-18 21:35:17','20','2015-06-16 A055 6',3,'',13,1),(266,'2015-06-18 21:35:17','21','2015-06-17 A055 1',3,'',13,1),(267,'2015-06-18 21:35:17','22','2015-06-18 A055 1',3,'',13,1),(268,'2015-06-18 21:35:17','23','2015-06-18 A055 2',3,'',13,1),(269,'2015-06-18 21:35:17','24','2015-06-18 A055 2',3,'',13,1),(270,'2015-06-18 21:35:27','22','11/06/2015-1',3,'',12,1),(271,'2015-06-18 21:35:27','23','11/06/2015-2',3,'',12,1),(272,'2015-06-18 21:35:27','24','12/06/2015-1',3,'',12,1),(273,'2015-06-18 21:35:27','25','12/06/2015-2',3,'',12,1),(274,'2015-06-18 21:35:27','26','12/06/2015-3',3,'',12,1),(275,'2015-06-18 21:35:27','27','14/06/2015-1',3,'',12,1),(276,'2015-06-18 21:35:27','28','14/06/2015-2',3,'',12,1),(277,'2015-06-18 21:35:27','29','16/06/2015-1',3,'',12,1),(278,'2015-06-18 21:35:27','30','16/06/2015-2',3,'',12,1),(279,'2015-06-18 21:35:27','31','17/06/2015-1',3,'',12,1),(280,'2015-06-18 21:35:27','32','18/06/2015-1',3,'',12,1),(281,'2015-06-18 21:35:27','33','18/06/2015-2',3,'',12,1),(282,'2015-06-18 21:37:09','2','A053 Omar Valerio',1,'',14,1),(283,'2015-06-18 23:07:35','8','2015-06-18 A055 2 Carne de Res',2,'Modificado/a isonlote.',13,1),(284,'2015-06-18 23:07:40','9','2015-06-18 A055 3 Carne de Res',2,'Modificado/a isonlote.',13,1),(285,'2015-06-18 23:09:54','1','18/06/2015-1',3,'',12,1),(286,'2015-06-18 23:09:54','2','18/06/2015-2',3,'',12,1),(287,'2015-06-18 23:09:54','3','18/06/2015-3',3,'',12,1),(288,'2015-06-18 23:09:54','4','18/06/2015-4',3,'',12,1),(289,'2015-06-18 23:09:54','5','18/06/2015-5',3,'',12,1),(290,'2015-06-18 23:09:54','6','18/06/2015-6',3,'',12,1),(291,'2015-06-18 23:09:54','7','18/06/2015-7',3,'',12,1),(292,'2015-06-18 23:09:54','8','18/06/2015-8',3,'',12,1),(293,'2015-06-18 23:09:54','9','18/06/2015-9',3,'',12,1),(294,'2015-06-18 23:09:54','10','18/06/2015-10',3,'',12,1),(295,'2015-06-18 23:09:54','11','18/06/2015-11',3,'',12,1),(296,'2015-06-18 23:09:54','12','18/06/2015-12',3,'',12,1),(297,'2015-06-18 23:10:07','9','2015-06-18 A055 3 Carne de Res',2,'Modificado/a isonlote.',13,1),(298,'2015-06-18 23:10:12','11','2015-06-18 A055 56 Carne de Res',2,'Modificado/a isonlote.',13,1),(299,'2015-06-18 23:10:17','13','2015-06-18 A053 563 Carne de Res',2,'Modificado/a isonlote.',13,1),(300,'2015-06-18 23:12:01','13','18/06/2015-1',3,'',12,1),(301,'2015-06-18 23:12:01','14','18/06/2015-8',3,'',12,1),(302,'2015-06-19 00:18:34','18','18/06/2015-4',2,'Modificado/a isondeshuese.',12,1),(303,'2015-06-19 00:37:17','16','18/06/2015-2',2,'Modificado/a totalweight.',12,1),(304,'2015-06-19 00:37:24','17','18/06/2015-3',2,'Modificado/a totalweight.',12,1),(305,'2015-06-19 00:41:21','19','145',1,'',12,1),(306,'2015-06-19 00:41:40','19','145',2,'Modificado/a isondeshuese.',12,1),(307,'2015-06-19 00:42:52','20','qwq',1,'',12,1),(308,'2015-06-19 22:48:12','21','1',1,'',12,1),(309,'2015-06-19 23:39:44','16','18/06/2015-2',3,'',12,1),(310,'2015-06-19 23:39:44','20','qwq',3,'',12,1),(318,'2015-06-24 01:55:48','1','Azadura Cerdo',2,'Modificado/a price.',7,1),(319,'2015-06-24 01:56:00','2','Babe back rib',2,'Modificado/a price.',7,1),(320,'2015-06-24 01:56:14','3','Bistec Cerdo',2,'Modificado/a price.',7,1),(321,'2015-06-24 23:15:03','1','Azadura Cerdo',2,'Modificado/a taxes y taxes_amount.',7,1),(322,'2015-06-25 00:27:08','2','Babe back rib',2,'Modificado/a taxes y taxes_amount.',7,1),(323,'2015-06-26 16:06:41','1','Azadura Cerdo',2,'Modificado/a price1, price2 y price3.',7,1),(324,'2015-06-26 16:07:08','2','Babe back rib',2,'Modificado/a price1, price2 y price3.',7,1),(325,'2015-06-26 17:40:13','1','Cliente General',1,'',23,1),(326,'2015-06-26 17:42:37','1','Estimado Cliente',1,'',22,1),(327,'2015-06-26 18:19:46','1','Cédula Nacional',1,'',25,1),(328,'2015-06-26 18:19:57','2','Cédula Jurídica',1,'',25,1),(329,'2015-06-26 18:20:10','3','Pasaporte',1,'',25,1),(330,'2015-06-26 22:08:43','1','Cliente General',1,'',27,1),(331,'2015-06-26 22:09:35','1','Cliente Contado',1,'',26,1),(332,'2015-06-26 22:10:05','2','Distribuidor',1,'',27,1),(333,'2015-06-26 22:10:11','3','Gobierno',1,'',27,1),(334,'2015-06-26 22:11:06','3','Pasaporte-Extranjeros',2,'Modificado/a name.',28,1),(335,'2015-06-26 22:13:46','2','Emanuel Zúñiga Infante',1,'',26,1),(336,'2015-06-26 22:14:33','2','Emanuel Zúñiga Infante',2,'No ha cambiado ningún campo.',26,1),(337,'2015-06-26 23:17:45','3','Omar Valerio',1,'',26,1),(338,'2015-06-26 23:18:42','1','Azadura Cerdo',2,'Modificado/a cost, utility1, utility2 y utility3.',7,1),(339,'2015-06-26 23:21:56','1','Azadura Cerdo',2,'Modificado/a autoprice.',7,1),(340,'2015-07-03 17:31:33','2','Emanuel Zúñiga Infante',2,'Modificado/a clienttype.',26,1),(341,'2015-07-03 17:31:59','2','Emanuel Zúñiga Infante',2,'Modificado/a clienttype.',26,1),(342,'2015-07-03 23:14:52','1','emanuelziga',2,'Modificado/a first_name y last_name.',4,1),(343,'2015-07-04 00:42:49','1','emanuelziga',2,'Modificado/a first_name y last_name.',4,1),(344,'2015-07-04 16:50:52','1','Cliente General',1,'',27,1),(345,'2015-07-04 16:51:01','2','Distribuidor',1,'',27,1),(346,'2015-07-04 16:51:07','3','Gobierno',1,'',27,1),(347,'2015-07-04 16:51:28','1','Cédula Nacional',1,'',28,1),(348,'2015-07-04 16:51:37','2','Cédula Jurídica',1,'',28,1),(349,'2015-07-04 16:51:45','3','Pasaporte-Extranjeros',1,'',28,1),(350,'2015-07-04 16:52:30','1','Cliente Contado',1,'',26,1),(351,'2015-07-04 16:53:15','2','Emanuel Zúñiga Infante',1,'',26,1),(352,'2015-07-04 16:54:27','3','Omar Valerio',1,'',26,1),(353,'2015-07-04 17:21:03','2','emanuelziga2',1,'',4,1),(354,'2015-07-04 17:22:57','2','emanuelziga2',2,'Modificado/a is_superuser.',4,1),(355,'2015-07-04 17:23:41','2','emanuelziga2',2,'No ha cambiado ningún campo.',4,1),(356,'2015-07-04 17:23:54','2','emanuelziga2',2,'Modificado/a is_staff y is_superuser.',4,1),(357,'2015-07-09 18:21:04','1','Azadura Cerdo',1,'',33,1),(358,'2015-07-09 18:21:32','2','Babe back rib',1,'',33,1),(359,'2015-07-09 18:52:31','3','Bistec Cerdo',1,'',33,1),(360,'2015-07-09 18:52:38','4','Cabeza cerdo',1,'',33,1),(361,'2015-07-09 21:54:43','1','Azadura Cerdo',2,'Modificado/a cantidad.',33,1),(362,'2015-07-10 01:53:38','2','Babe back rib',2,'Modificado/a cantidad.',33,1),(363,'2015-07-10 01:53:42','3','Bistec Cerdo',2,'Modificado/a cantidad.',33,1),(364,'2015-07-10 03:04:43','1','Efectivo',1,'',31,1),(365,'2015-07-10 03:05:14','2','Tarjeta',1,'',31,1),(366,'2015-07-10 03:05:30','3','Crédito',1,'',31,1),(367,'2015-07-10 03:05:39','1','Visa',1,'',32,1),(368,'2015-07-10 03:05:53','2','Master Card',1,'',32,1),(369,'2015-07-10 03:06:02','3','American Express',1,'',32,1),(370,'2015-07-10 03:06:06','4','Discover',1,'',32,1),(371,'2015-07-10 03:06:13','5','Otra',1,'',32,1),(372,'2015-07-10 03:56:25','6','Sin Tarjeta',1,'',32,1),(373,'2015-07-10 17:11:11','2','Babe back rib',2,'Modificado/a ventaneg.',7,1),(374,'2015-07-10 17:14:59','2','Babe back rib',2,'Modificado/a ventaneg.',7,1),(375,'2015-07-10 17:15:32','2','Babe back rib',2,'Modificado/a ventaneg.',7,1),(376,'2015-07-15 17:06:26','1','1',1,'',11,1),(377,'2015-07-23 16:33:57','79','Lomo Aguja LA',3,'',33,1),(378,'2015-07-23 16:33:57','80','Lomo Entraña LE',3,'',33,1),(379,'2015-07-23 16:34:39','81','Lomo Entraña LE',3,'',33,1),(380,'2015-07-23 16:36:40','82','Lomito',3,'',33,1),(381,'2015-07-23 23:15:02','1','Producción',1,'',35,1),(382,'2015-07-23 23:15:12','2','Compras',1,'',35,1),(383,'2015-07-23 23:15:52','3','Ajuste Toma Física',1,'',35,1),(384,'2015-07-23 23:16:03','4','Devolución',1,'',35,1),(385,'2015-07-25 17:45:48','5','Reproceso',1,'',35,1),(386,'2015-07-25 17:46:15','1','Ventas',1,'',37,1),(387,'2015-07-25 17:46:41','2','Desecho',1,'',37,1),(388,'2015-07-25 17:46:52','3','Ajuste Toma Física',1,'',37,1),(389,'2015-07-25 17:47:14','4','Producto Vencido',1,'',37,1),(390,'2015-07-25 17:47:19','5','Reproceso',1,'',37,1),(391,'2015-08-04 23:43:06','29','2015-08-04 A053 12525 Carne de Cerdo',2,'Modificado/a vendido.',13,1),(392,'2015-08-04 23:43:23','29','2015-08-04 A053 12525 Carne de Cerdo',2,'Modificado/a vendido.',13,1),(393,'2015-08-04 23:58:00','4','Canal Entero de Cerdo',1,'',8,1),(394,'2015-08-04 23:58:12','5','Canal Entero de Res',1,'',8,1),(395,'2015-08-05 00:05:40','106','Canal Entero de Cerdo Kg',1,'',7,1),(396,'2015-08-05 00:06:15','107','Canal Entero de Res Kg',1,'',7,1),(397,'2015-08-05 00:06:36','106','Canal Entero de Cerdo Kg',2,'Modificado/a fractioned.',7,1),(398,'2015-08-05 00:06:54','107','Canal Entero de Res Kg',2,'Modificado/a fractioned.',7,1),(399,'2015-08-06 23:00:07','1','Efectivo',1,'',31,1),(400,'2015-08-06 23:00:15','2','Tarjeta',1,'',31,1),(401,'2015-08-06 23:00:25','3','Crédito',1,'',31,1),(402,'2015-08-06 23:00:54','1','Visa',1,'',32,1),(403,'2015-08-06 23:00:59','2','Master Card',1,'',32,1),(404,'2015-08-06 23:01:09','3','American Express',1,'',32,1),(405,'2015-08-06 23:01:13','4','Discover',1,'',32,1),(406,'2015-08-06 23:01:16','5','Otra',1,'',32,1),(407,'2015-08-06 23:03:23','6','Efectivo',1,'',32,1),(408,'2015-08-07 00:58:49','1','41',1,'',11,1),(409,'2015-08-07 17:00:45','1','DetallesPago object',3,'',30,1),(410,'2015-08-07 17:00:45','2','DetallesPago object',3,'',30,1),(411,'2015-08-08 04:37:12','1','1',1,'',38,1),(412,'2015-08-08 04:37:40','2','2',1,'',38,1),(413,'2015-08-08 04:38:02','3','3',1,'',38,1),(414,'2015-08-09 21:17:48','1','Azadura Cerdo',2,'Modificado/a inventory.',7,1),(415,'2015-08-10 01:41:21','2','emanuelziga2',2,'Modificado/a user_permissions.',4,1),(416,'2015-08-10 01:42:40','2','emanuelziga2',2,'Modificado/a user_permissions.',4,1),(417,'2015-08-15 01:36:55','1','1',1,'',40,1),(418,'2015-08-15 17:19:54','1','1',1,'',38,1),(419,'2015-08-15 17:20:24','1','1',1,'',41,1),(420,'2015-08-17 17:15:06','1','1',2,'Modificado/a total.',38,1),(421,'2015-08-17 23:38:30','1','1',2,'Modificado/a cliente.',38,1),(422,'2015-08-17 23:38:41','2','2',1,'',38,1),(423,'2015-08-17 23:38:46','3','3',1,'',38,1),(424,'2015-08-17 23:42:34','3','3',3,'',38,1),(425,'2015-08-17 23:51:16','4','4',1,'',38,1),(426,'2015-08-17 23:51:27','4','4',3,'',38,1),(427,'2015-08-17 23:58:47','5','5',1,'',38,1),(428,'2015-08-18 04:39:28','5','5',2,'Modificado/a total.',38,1),(429,'2015-08-18 21:32:11','1','Condimentos',1,'',43,1),(430,'2015-08-18 21:33:00','1','Condimento Prueba 1',1,'',42,1),(431,'2015-08-18 22:24:40','2','Babe back rib',2,'Modificado/a inventory y ventaneg.',7,1),(432,'2015-08-18 22:25:01','2','Babe back rib',2,'Modificado/a cantidad.',33,1),(433,'2015-08-19 00:01:58','1','Producción',1,'',46,1),(434,'2015-08-19 00:02:11','2','Compras',1,'',46,1),(435,'2015-08-19 00:02:17','3','Ajuste Toma Física',1,'',46,1),(436,'2015-08-19 00:02:24','4','Devolución',1,'',46,1),(437,'2015-08-19 00:02:33','5','Reproceso',1,'',46,1),(438,'2015-08-19 00:02:52','1','Ventas',1,'',48,1),(439,'2015-08-19 00:02:59','2','Desecho',1,'',48,1),(440,'2015-08-19 00:03:10','3','Ajuste Toma Física',1,'',48,1),(441,'2015-08-19 00:03:17','4','Producto Vencido',1,'',48,1),(442,'2015-08-19 00:03:23','5','Reproceso',1,'',48,1),(443,'2015-08-19 00:16:49','3','Condimento Prueba 1',1,'',44,1),(444,'2015-08-19 00:17:50','3','Condimento Prueba 1',2,'Modificado/a cantidad.',44,1),(445,'2015-08-19 00:26:34','2','Condimento Prueba 2',1,'',42,1),(446,'2015-08-19 00:32:49','4','Condimento Prueba 2',1,'',44,1),(447,'2015-08-19 02:32:32','4','Transferencia Bancaria',1,'',31,1),(448,'2015-08-19 02:32:41','5','Cheque',1,'',31,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'cajeros','cajero'),(13,'canales','canal'),(26,'clientes','cliente'),(27,'clientes','clienttype'),(28,'clientes','identificationtype'),(22,'clients','cliente'),(23,'clients','clienttype'),(25,'clients','identificationtype'),(5,'contenttypes','contenttype'),(41,'cuentasCobrar','abono'),(38,'cuentasCobrar','detallecuenta'),(16,'deshueses','deshuese'),(17,'deshueses','detalledeshuese'),(34,'inventarios','entradasinventario'),(18,'inventarios','inventariototal'),(33,'inventarios','resumeninventario'),(36,'inventarios','salidasinventario'),(35,'inventarios','tiposentradas'),(37,'inventarios','tipossalidas'),(45,'inventariosMP','entradasinventariomp'),(44,'inventariosMP','resumeninventariomp'),(47,'inventariosMP','salidasinventariomp'),(46,'inventariosMP','tiposentradasmp'),(48,'inventariosMP','tipossalidasmp'),(12,'lotes','lote'),(43,'materiasPrimas','familiadelamateria'),(42,'materiasPrimas','materiaprima'),(8,'productos','familiadelproducto'),(7,'productos','producto'),(14,'proveedores','proveedor'),(15,'prueba','prueba'),(24,'sales','venta'),(6,'sessions','session'),(40,'variablesGlobales','variableglobal'),(29,'ventas','detalleproductos'),(30,'ventas','detallespago'),(31,'ventas','tipospago'),(32,'ventas','tipostarjeta'),(11,'ventas','venta');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-05-19 04:41:48'),(2,'auth','0001_initial','2015-05-19 04:41:49'),(3,'admin','0001_initial','2015-05-19 04:41:49'),(4,'contenttypes','0002_remove_content_type_name','2015-05-19 04:41:49'),(5,'auth','0002_alter_permission_name_max_length','2015-05-19 04:41:49'),(6,'auth','0003_alter_user_email_max_length','2015-05-19 04:41:49'),(7,'auth','0004_alter_user_username_opts','2015-05-19 04:41:49'),(8,'auth','0005_alter_user_last_login_null','2015-05-19 04:41:49'),(9,'auth','0006_require_contenttypes_0002','2015-05-19 04:41:49'),(10,'sessions','0001_initial','2015-05-19 04:41:49'),(11,'productos','0001_initial','2015-05-19 04:53:08'),(12,'cajeros','0001_initial','2015-05-19 05:14:54'),(15,'canales','0001_initial','2015-05-20 00:31:24'),(16,'lotes','0001_initial','2015-05-20 00:31:24'),(17,'ventas','0002_auto_20150519_1831','2015-05-20 00:31:24'),(18,'canales','0002_auto_20150519_1855','2015-05-20 00:55:10'),(19,'lotes','0002_auto_20150519_1855','2015-05-20 00:55:10'),(20,'proveedores','0001_initial','2015-05-20 00:55:10'),(21,'canales','0002_auto_20150519_1921','2015-05-20 01:21:36'),(22,'canales','0002_auto_20150519_1937','2015-05-20 01:37:48'),(23,'prueba','0001_initial','2015-05-25 22:50:00'),(24,'lotes','0002_auto_20150601_1845','2015-06-02 00:45:11'),(25,'canales','0003_canal_isonlote','2015-06-08 22:44:07'),(26,'lotes','0003_auto_20150608_1643','2015-06-08 22:44:07'),(27,'lotes','0004_lote_date','2015-06-09 02:35:08'),(28,'canales','0004_auto_20150608_2145','2015-06-09 03:45:17'),(29,'deshueses','0001_initial','2015-06-11 17:27:06'),(30,'inventarios','0001_initial','2015-06-11 17:27:06'),(31,'deshueses','0002_auto_20150611_1129','2015-06-11 17:29:12'),(32,'deshueses','0003_auto_20150611_1856','2015-06-12 00:56:59'),(33,'deshueses','0004_auto_20150611_1856','2015-06-12 00:56:59'),(34,'lotes','0005_lote_isondeshuese','2015-06-12 01:05:07'),(35,'lotes','0006_auto_20150611_1906','2015-06-12 01:06:08'),(36,'deshueses','0005_remove_deshuese_productos','2015-06-17 00:27:14'),(37,'deshueses','0006_auto_20150616_2000','2015-06-17 02:01:39'),(38,'inventarios','0002_auto_20150617_2004','2015-06-18 02:04:34'),(39,'inventarios','0003_inventariototal_tipo','2015-06-18 21:09:25'),(40,'canales','0005_canal_tipo','2015-06-18 21:41:51'),(41,'inventarios','0004_auto_20150618_1541','2015-06-18 21:41:51'),(42,'lotes','0007_lote_tipo','2015-06-18 21:41:51'),(43,'lotes','0008_auto_20150618_1711','2015-06-18 23:11:18'),(44,'clientes','0002_cliente_code','2015-06-24 01:19:07'),(45,'clientes','0003_auto_20150623_1918','2015-06-24 01:19:07'),(46,'productos','0002_auto_20150626_1002','2015-06-26 16:02:58'),(48,'ventas','0002_venta_cashier','2015-06-26 17:19:02'),(49,'ventas','0002_venta_irpor8','2015-06-26 17:36:19'),(51,'clients','0002_cliente_jidentification','2015-06-26 17:44:04'),(53,'clients','0001_initial','2015-06-26 18:18:05'),(54,'clients','0002_auto_20150626_1209','2015-06-26 18:18:05'),(55,'clients','0003_cliente_identificationtype','2015-06-26 18:18:05'),(56,'sales','0001_initial','2015-06-26 18:18:05'),(57,'clients','0004_auto_20150626_1545','2015-06-26 21:45:23'),(58,'clientes','0001_initial','2015-07-04 02:27:23'),(60,'inventarios','0005_auto_20150709_1217','2015-07-09 18:18:19'),(61,'inventarios','0006_auto_20150709_1218','2015-07-09 18:18:19'),(62,'inventarios','0007_auto_20150709_1220','2015-07-09 18:20:29'),(63,'productos','0003_producto_ventaneg','2015-07-09 21:14:39'),(64,'ventas','0002_auto_20150709_2102','2015-07-10 03:02:09'),(65,'ventas','0003_auto_20150709_2117','2015-07-10 03:17:43'),(66,'ventas','0004_auto_20150709_2211','2015-07-10 04:11:31'),(67,'ventas','0005_detalleproductos_ivporc','2015-07-10 17:29:53'),(68,'ventas','0006_remove_detalleproductos_ivporc','2015-07-10 17:30:36'),(69,'ventas','0007_remove_venta_ticketnum','2015-07-10 18:09:19'),(70,'ventas','0008_venta_ticketnum','2015-07-15 00:22:42'),(71,'ventas','0009_auto_20150714_1828','2015-07-15 00:28:35'),(72,'ventas','0010_venta_client','2015-07-15 00:30:26'),(73,'ventas','0011_auto_20150715_1105','2015-07-15 17:05:29'),(74,'ventas','0001_initial','2015-07-15 17:13:57'),(75,'productos','0004_producto_inventory','2015-07-24 00:53:50'),(76,'inventarios','0008_entradasinventario_nuevopeso','2015-07-25 16:09:57'),(77,'inventarios','0009_entradasinventario_cajero','2015-07-25 16:12:10'),(78,'inventarios','0010_auto_20150725_1015','2015-07-25 16:15:32'),(79,'lotes','0009_auto_20150804_1556','2015-08-04 21:56:57'),(80,'canales','0006_canal_vendido','2015-08-04 23:38:58'),(81,'ventas','0002_auto_20150807_2009','2015-08-08 02:11:08'),(82,'ventas','0003_venta_saldo','2015-08-08 02:11:08'),(83,'clientes','0002_cliente_total','2015-08-08 02:12:42'),(84,'clientes','0003_remove_cliente_total','2015-08-08 02:21:18'),(86,'cuentasCobrar','0002_auto_20150807_2220','2015-08-08 04:20:15'),(87,'cuentasCobrar','0003_auto_20150807_2237','2015-08-08 04:37:08'),(88,'ventas','0004_venta_anulada','2015-08-08 05:01:46'),(89,'ventas','0005_auto_20150814_1633','2015-08-14 22:41:43'),(90,'variablesGlobales','0001_initial','2015-08-15 01:30:23'),(91,'variablesGlobales','0002_variableglobal_descripcion','2015-08-15 01:35:31'),(92,'cuentasCobrar','0004_auto_20150815_1109','2015-08-15 17:09:25'),(93,'variablesGlobales','0003_auto_20150815_1109','2015-08-15 17:09:25'),(94,'cuentasCobrar','0001_initial','2015-08-15 17:17:45'),(95,'cuentasCobrar','0002_auto_20150815_1117','2015-08-15 17:17:45'),(96,'cuentasCobrar','0003_auto_20150817_2158','2015-08-18 03:58:13'),(97,'materiasPrimas','0001_initial','2015-08-18 21:31:28'),(98,'materiasPrimas','0002_auto_20150818_1611','2015-08-18 22:11:23'),(99,'inventariosMP','0001_initial','2015-08-18 22:11:24'),(100,'productos','0005_producto_minimum','2015-08-18 22:35:48'),(101,'materiasPrimas','0003_materiaprima_minimum','2015-08-18 22:39:35'),(102,'ventas','0006_auto_20150818_2102','2015-08-19 03:02:13');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0fxx9k20sexeqqqho7cy0mwgi60qo49f','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-10 16:59:12'),('1zcvaff9na2gazmn4kh8kpgtjvj58eix','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-07-16 02:05:34'),('29usr0pwqhe0fg93tdz5r0gyy9wu6g1w','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-08-24 01:43:21'),('5qhu7bc7549g30rtnr9i51srio0as6ru','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-07-23 21:37:57'),('701wc626g2ojs36gymykz55h1u0bstqg','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-07-02 21:02:56'),('7rqlu5mdvnliqodx69u3chxesmrcoi8r','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-07-21 23:09:20'),('8bfljtiwtg63vh12vm3nh2e33h25us11','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-30 17:08:55'),('actnda8tr9aeqap1d5dbz5lcmh7jnp2j','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-16 23:31:39'),('aq901hpjf7h00iw8nvgp5yqe0rlgrut9','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-10 17:00:34'),('cp4ninr5fwgn2z4aby67q5plki7jvpha','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-07-29 00:10:58'),('e6toezb2d8081xocu1sgr3leasi6t246','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-23 04:11:33'),('hjvtj5iot6wkng7kubqkox8mcptfyx96','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-07-18 17:24:56'),('kjej808vbp3kipi4ci4cvrysrjaf5gsb','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-08-24 14:58:12'),('mce0jzg2a3885flcxajq0b3x9maof1iu','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-25 17:31:02'),('p3uzm87o8bj5yjxk42gbqw70tczlh7df','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-08-21 00:47:44'),('pscq082jlo6jgc2edftostjbg1n0nvel','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-23 04:16:59'),('qi527jdbxl2f75wygq71rfgihufn4obi','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-07-02 17:26:27'),('s6p4g1vvot6venqbryipttlizubt4zl4','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-28 19:57:41'),('si8tdk9fhl470nrrpv2g8nc5ug1chl53','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-02 04:45:05'),('t1oedr37pi18lqoyj8jxh1v3di2atjci','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-23 01:27:54'),('uz2j8fznushzq8jlyahov1gu6ssj2f1v','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-17 02:18:25'),('vpiw5ljtdtol3mxaog8q1vj3x1c5a8gr','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-08-05 23:43:40'),('xmvqxv5knyxnvpfpn13t4iq84gccz464','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-09 18:01:46'),('yak5bwsasz8m3ko7994yfkc0xvtp0a22','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-24 20:56:26'),('zunctzpxx7q5xbjy3bw9jhvu2boum7hk','ZmNlNjQyYzhhMjVjMDRiMTI4MjRmOWExYzVkOWE4ZmJiMzI3MWM0Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkM2VmNDJmMWYwM2U5ZjM4YWJjNDhhMGQxODljZDBhYzU5MzhjYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-23 04:16:12');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventariosMP_entradasinventariomp`
--

DROP TABLE IF EXISTS `inventariosMP_entradasinventariomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventariosMP_entradasinventariomp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `peso` double NOT NULL,
  `nuevopeso` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `materiaprima_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `d22cf0b6908206614dc27fdd4eb59abf` (`materiaprima_id`),
  KEY `inventariosMP_entradasinventariomp_d3c0c18a` (`tipo_id`),
  KEY `inventariosMP_entradasinventariomp_abfe0f96` (`usuario_id`),
  CONSTRAINT `d22cf0b6908206614dc27fdd4eb59abf` FOREIGN KEY (`materiaprima_id`) REFERENCES `materiasPrimas_materiaprima` (`id`),
  CONSTRAINT `inventariosMP_e_usuario_id_30e8b958b10b90f3_fk_cajeros_cajero_id` FOREIGN KEY (`usuario_id`) REFERENCES `cajeros_cajero` (`id`),
  CONSTRAINT `inv_tipo_id_2eb766321a8daa32_fk_inventariosMP_tiposentradasmp_id` FOREIGN KEY (`tipo_id`) REFERENCES `inventariosMP_tiposentradasmp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventariosMP_entradasinventariomp`
--

LOCK TABLES `inventariosMP_entradasinventariomp` WRITE;
/*!40000 ALTER TABLE `inventariosMP_entradasinventariomp` DISABLE KEYS */;
INSERT INTO `inventariosMP_entradasinventariomp` VALUES (1,'Entrada por toma Física',0,25,'2015-08-18','18:15:45',1,3,1),(2,'Entrada por toma Física',0,12,'2015-08-18','18:18:03',1,3,1),(3,'Entrada por compra de producto Factura # 123456',25.35,0,'2015-08-18','18:18:40',1,2,1),(4,'Entrada por devolución',12.25,49.6,'2015-08-18','18:19:54',1,4,1),(5,'Entrada por toma Física',-10,-10,'2015-08-18','18:33:35',1,3,1),(6,'Entrada por toma Física',25,25,'2015-08-18','18:36:21',1,3,1),(7,'Entrada por devolución',-1,24,'2015-08-18','18:36:31',1,4,1),(8,'Entrada por devolución',1,25,'2015-08-18','18:38:52',1,4,1),(9,'Entrada por compra de producto Factura # 1254',125,125,'2015-08-18','18:39:16',2,2,1);
/*!40000 ALTER TABLE `inventariosMP_entradasinventariomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventariosMP_resumeninventariomp`
--

DROP TABLE IF EXISTS `inventariosMP_resumeninventariomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventariosMP_resumeninventariomp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` double NOT NULL,
  `materiaprima_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `materiaprima_id` (`materiaprima_id`),
  CONSTRAINT `D96f7ce3fe90e1622e4d6de5c7a7763a` FOREIGN KEY (`materiaprima_id`) REFERENCES `materiasPrimas_materiaprima` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventariosMP_resumeninventariomp`
--

LOCK TABLES `inventariosMP_resumeninventariomp` WRITE;
/*!40000 ALTER TABLE `inventariosMP_resumeninventariomp` DISABLE KEYS */;
INSERT INTO `inventariosMP_resumeninventariomp` VALUES (3,25,1),(4,125,2);
/*!40000 ALTER TABLE `inventariosMP_resumeninventariomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventariosMP_salidasinventariomp`
--

DROP TABLE IF EXISTS `inventariosMP_salidasinventariomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventariosMP_salidasinventariomp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `peso` double NOT NULL,
  `nuevopeso` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `materiaprima_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eca04a8f61928f29903b90b3d239361d` (`materiaprima_id`),
  KEY `inventariosMP_salidasinventariomp_d3c0c18a` (`tipo_id`),
  KEY `inventariosMP_salidasinventariomp_abfe0f96` (`usuario_id`),
  CONSTRAINT `eca04a8f61928f29903b90b3d239361d` FOREIGN KEY (`materiaprima_id`) REFERENCES `materiasPrimas_materiaprima` (`id`),
  CONSTRAINT `inventariosMP_sa_usuario_id_894d8fea2105519_fk_cajeros_cajero_id` FOREIGN KEY (`usuario_id`) REFERENCES `cajeros_cajero` (`id`),
  CONSTRAINT `inve_tipo_id_5e2ac32ac1122d26_fk_inventariosMP_tipossalidasmp_id` FOREIGN KEY (`tipo_id`) REFERENCES `inventariosMP_tipossalidasmp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventariosMP_salidasinventariomp`
--

LOCK TABLES `inventariosMP_salidasinventariomp` WRITE;
/*!40000 ALTER TABLE `inventariosMP_salidasinventariomp` DISABLE KEYS */;
INSERT INTO `inventariosMP_salidasinventariomp` VALUES (1,'Salida por Producto vencido',2.25,47.35,'2015-08-18','18:25:40',1,4,1);
/*!40000 ALTER TABLE `inventariosMP_salidasinventariomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventariosMP_tiposentradasmp`
--

DROP TABLE IF EXISTS `inventariosMP_tiposentradasmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventariosMP_tiposentradasmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventariosMP_tiposentradasmp`
--

LOCK TABLES `inventariosMP_tiposentradasmp` WRITE;
/*!40000 ALTER TABLE `inventariosMP_tiposentradasmp` DISABLE KEYS */;
INSERT INTO `inventariosMP_tiposentradasmp` VALUES (1,'Producción'),(2,'Compras'),(3,'Ajuste Toma Física'),(4,'Devolución'),(5,'Reproceso');
/*!40000 ALTER TABLE `inventariosMP_tiposentradasmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventariosMP_tipossalidasmp`
--

DROP TABLE IF EXISTS `inventariosMP_tipossalidasmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventariosMP_tipossalidasmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventariosMP_tipossalidasmp`
--

LOCK TABLES `inventariosMP_tipossalidasmp` WRITE;
/*!40000 ALTER TABLE `inventariosMP_tipossalidasmp` DISABLE KEYS */;
INSERT INTO `inventariosMP_tipossalidasmp` VALUES (1,'Ventas'),(2,'Desecho'),(3,'Ajuste Toma Física'),(4,'Producto Vencido'),(5,'Reproceso');
/*!40000 ALTER TABLE `inventariosMP_tipossalidasmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarios_entradasinventario`
--

DROP TABLE IF EXISTS `inventarios_entradasinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarios_entradasinventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `peso` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `producto_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `nuevopeso` double NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventarios_producto_id_818dc917b78a186_fk_productos_producto_id` (`producto_id`),
  KEY `inventarios_entradasinventario_d3c0c18a` (`tipo_id`),
  KEY `inventarios_entradasinventario_abfe0f96` (`usuario_id`),
  CONSTRAINT `inventarios_ent_usuario_id_62e67a3fd7b58923_fk_cajeros_cajero_id` FOREIGN KEY (`usuario_id`) REFERENCES `cajeros_cajero` (`id`),
  CONSTRAINT `inventarios_producto_id_818dc917b78a186_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`),
  CONSTRAINT `inventa_tipo_id_5b033349dc4fa31c_fk_inventarios_tiposentradas_id` FOREIGN KEY (`tipo_id`) REFERENCES `inventarios_tiposentradas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios_entradasinventario`
--

LOCK TABLES `inventarios_entradasinventario` WRITE;
/*!40000 ALTER TABLE `inventarios_entradasinventario` DISABLE KEYS */;
INSERT INTO `inventarios_entradasinventario` VALUES (1,'Entrada por toma Física',0,'2015-07-25','10:37:48',4,3,12,1),(2,'Entrada por toma Física',0,'2015-07-25','10:49:19',3,3,1,1),(3,'Entrada por toma Física',0,'2015-07-25','10:50:28',3,3,11.3,1),(4,'Entrada por toma Física',0,'2015-07-25','10:51:29',3,3,13,1),(5,'Entrada por toma Física',0,'2015-07-25','10:52:10',3,3,1,1),(6,'Entrada por devolución Factura # 123456',1,'2015-07-25','11:18:06',2,4,0,1),(7,'Entrada por devolución Factura # 123456',12.23,'2015-07-25','11:19:00',2,4,0,1),(8,'Entrada por Producción',12.35,'2015-07-25','11:22:01',5,1,0,1),(9,'Entrada por compra de producto Factura # 458524',115.25,'2015-07-25','11:28:21',49,2,0,1),(10,'Entrada por toma Física',0,'2015-07-25','13:25:50',2,3,40.25,1),(11,'Entrada por Producción',12.25,'2015-07-25','13:30:48',7,1,0,1),(12,'Entrada por toma Física',0,'2015-07-25','13:43:12',2,3,21,1),(13,'Entrada por toma Física',0,'2015-07-25','14:01:55',1,3,15,1),(14,'Entrada por toma Física',0,'2015-08-09','19:23:05',1,3,135,1),(15,'Entrada por producción del lote 26',50.53,'2015-08-09','20:20:17',7,1,62.78,1),(16,'Entrada por producción del lote 26',60.125,'2015-08-09','20:20:17',10,1,60.125,1),(17,'Entrada por producción del lote 26',15.35,'2015-08-09','20:20:17',8,1,15.35,1),(18,'Entrada por producción del lote 26',60,'2015-08-09','20:20:17',18,1,60,1),(19,'Entrada por producción del lote 26',5,'2015-08-09','20:20:17',19,1,5,1),(20,'Entrada por producción del lote 27',22.96,'2015-08-10','09:02:32',8,1,38.31,1),(21,'Entrada por producción del lote 27',50.96,'2015-08-10','09:02:32',3,1,51.96,1),(22,'Entrada por producción del lote 27',14,'2015-08-10','09:02:32',9,1,14,1),(23,'Entrada por toma Física',0,'2015-08-18','17:55:40',1,3,15,1);
/*!40000 ALTER TABLE `inventarios_entradasinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarios_inventariototal`
--

DROP TABLE IF EXISTS `inventarios_inventariototal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarios_inventariototal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peso` double DEFAULT NULL,
  `vencimiento` date NOT NULL,
  `lote_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventarios_inventario_lote_id_71aac843efeabddb_fk_lotes_lote_id` (`lote_id`),
  KEY `inventario_producto_id_307f67e0ab9395c1_fk_productos_producto_id` (`producto_id`),
  KEY `inventarios_inventariototal_d3c0c18a` (`tipo_id`),
  CONSTRAINT `inventarios_inventario_lote_id_71aac843efeabddb_fk_lotes_lote_id` FOREIGN KEY (`lote_id`) REFERENCES `lotes_lote` (`id`),
  CONSTRAINT `inventario_producto_id_307f67e0ab9395c1_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`),
  CONSTRAINT `inve_tipo_id_31eb73e135f09c63_fk_productos_familiadelproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `productos_familiadelproducto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios_inventariototal`
--

LOCK TABLES `inventarios_inventariototal` WRITE;
/*!40000 ALTER TABLE `inventarios_inventariototal` DISABLE KEYS */;
INSERT INTO `inventarios_inventariototal` VALUES (1,92,'2015-07-18',18,1,1),(2,145,'2015-07-18',19,1,1),(5,321.2,'2015-07-19',22,46,2),(6,425.35,'2015-07-19',22,49,2),(7,52.3,'2015-07-19',22,45,2),(8,452.3,'2015-07-19',22,58,2),(9,201.23,'2015-07-19',22,51,2),(10,12.23,'2015-07-19',22,53,2),(11,120.23,'2015-07-19',22,66,2),(12,45,'2015-07-19',22,47,2),(13,52.23,'2015-07-19',23,6,1),(14,101.23,'2015-07-19',23,9,1),(15,15.23,'2015-07-19',23,8,1),(16,42.23,'2015-07-19',23,15,1),(17,32.58,'2015-07-19',23,21,1),(18,10.85,'2015-07-19',23,23,1),(19,14.85,'2015-07-19',24,36,1),(20,46.245,'2015-07-19',24,6,1),(21,5.45,'2015-07-19',24,4,1),(22,83.52,'2015-07-19',24,7,1),(23,50.53,'2015-09-09',26,7,1),(24,60.125,'2015-09-09',26,10,1),(25,15.35,'2015-09-09',26,8,1),(26,60,'2015-09-09',26,18,1),(27,5,'2015-09-09',26,19,1),(28,22.96,'2015-09-10',27,8,1),(29,50.96,'2015-09-10',27,3,1),(30,14,'2015-09-10',27,9,1);
/*!40000 ALTER TABLE `inventarios_inventariototal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarios_resumeninventario`
--

DROP TABLE IF EXISTS `inventarios_resumeninventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarios_resumeninventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` double NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `producto_id` (`producto_id`),
  CONSTRAINT `inventario_producto_id_320f592648155e2a_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios_resumeninventario`
--

LOCK TABLES `inventarios_resumeninventario` WRITE;
/*!40000 ALTER TABLE `inventarios_resumeninventario` DISABLE KEYS */;
INSERT INTO `inventarios_resumeninventario` VALUES (1,12,1),(2,0,2),(3,51.96,3),(4,0,4),(5,0,5),(6,0,6),(7,62.78,7),(8,38.31,8),(9,14,9),(10,60.125,10),(11,0,11),(12,0,12),(13,0,13),(14,0,14),(15,0,15),(16,0,16),(17,0,17),(18,60,18),(19,5,19),(20,0,20),(21,0,21),(22,0,22),(23,0,23),(24,0,24),(25,0,25),(26,0,26),(27,0,27),(28,0,28),(29,0,29),(30,0,30),(31,0,31),(32,0,32),(33,0,33),(34,0,34),(35,0,35),(36,0,36),(37,0,37),(38,0,38),(39,0,39),(40,0,40),(41,0,41),(42,0,42),(43,0,43),(44,0,44),(45,0,45),(46,0,46),(47,0,47),(48,0,48),(49,0,49),(50,0,50),(51,0,51),(52,0,52),(53,0,53),(54,0,54),(55,0,55),(56,0,56),(57,0,57),(58,0,58),(59,0,59),(60,0,60),(61,0,61),(62,0,62),(63,0,63),(64,0,64),(65,0,65),(66,0,66),(67,0,67),(68,0,68),(69,0,69),(70,0,70),(71,0,71),(72,0,72),(73,0,73),(74,0,74),(75,0,75),(76,0,76),(77,0,77),(78,0,78),(79,0,79),(80,0,80),(81,0,81),(82,0,82),(83,0,83),(84,0,84),(85,0,85),(86,0,86),(87,0,87),(88,0,88),(89,0,89),(90,0,90),(91,0,91),(92,0,92),(93,0,93),(94,0,94),(95,0,95),(96,0,96),(97,0,97),(98,0,98),(99,0,99),(100,0,100),(101,0,101),(102,0,102),(103,0,103),(104,0,104),(105,0,105);
/*!40000 ALTER TABLE `inventarios_resumeninventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarios_salidasinventario`
--

DROP TABLE IF EXISTS `inventarios_salidasinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarios_salidasinventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `peso` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `producto_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `nuevopeso` double NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventario_producto_id_1fa91f34fd8a7a0c_fk_productos_producto_id` (`producto_id`),
  KEY `inventarios_salidasinventario_d3c0c18a` (`tipo_id`),
  KEY `inventarios_salidasinventario_abfe0f96` (`usuario_id`),
  CONSTRAINT `inventarios_sal_usuario_id_2f0aa8592f729e57_fk_cajeros_cajero_id` FOREIGN KEY (`usuario_id`) REFERENCES `cajeros_cajero` (`id`),
  CONSTRAINT `inventario_producto_id_1fa91f34fd8a7a0c_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`),
  CONSTRAINT `inventar_tipo_id_55563154becd086a_fk_inventarios_tipossalidas_id` FOREIGN KEY (`tipo_id`) REFERENCES `inventarios_tipossalidas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios_salidasinventario`
--

LOCK TABLES `inventarios_salidasinventario` WRITE;
/*!40000 ALTER TABLE `inventarios_salidasinventario` DISABLE KEYS */;
INSERT INTO `inventarios_salidasinventario` VALUES (1,'Salida por toma Física',0,'2015-07-25','13:29:58',2,3,20.12,1),(2,'Salida por toma Física',0,'2015-07-25','13:43:39',2,3,20,1),(3,'Salida por toma Física',0,'2015-07-25','13:48:59',2,3,21,1),(4,'Salida por toma Física',0,'2015-07-25','13:49:13',2,3,22,1),(5,'Salida por toma Física',0,'2015-07-25','13:49:48',2,3,1,1),(6,'Salida por toma Física',0,'2015-07-25','13:56:10',1,3,20,1),(7,'Salida por toma Física',0,'2015-07-25','13:56:26',1,3,10,1),(8,'Salida por toma Física',0,'2015-07-25','13:56:51',1,3,9,1),(9,'Salida por Producto vencido',1,'2015-07-25','13:58:12',1,4,0,1),(10,'Salida por Producto vencido',9,'2015-07-25','14:00:07',1,4,0,1),(11,'Salida por Producto vencido',1,'2015-07-25','14:06:10',1,4,0,1),(12,'Salida por desecho de producto',0,'2015-07-25','14:06:22',1,2,0,1),(13,'Salida por venta, Factura # 12345',2,'2015-07-25','14:08:08',1,1,0,1),(14,'Salida por venta',25.25,'2015-08-09','15:14:17',1,1,-13.25,1),(15,'Salida por venta, Factura # undefined',3,'2015-08-09','15:22:38',1,1,132.25,1),(16,'Salida por venta, Factura # 12',0.25,'2015-08-09','15:25:28',1,1,132,1),(17,'Salida por toma Física',0,'2015-08-09','19:23:30',1,3,122.35,1),(18,'Salida por toma Física',0,'2015-08-09','19:24:59',1,3,120.33,1),(19,'Salida por venta, Factura # 13',4,'2015-08-09','19:30:04',1,1,116.33,1),(20,'Salida por venta, Factura # 14',27,'2015-08-14','16:53:57',106,1,0,1),(21,'Salida por venta, Factura # 15',77.2,'2015-08-14','16:55:03',106,1,0,1),(22,'Salida por venta, Factura # 16',1,'2015-08-17','17:59:28',2,1,0,1),(23,'Salida por venta, Factura # 17',2,'2015-08-17','22:11:17',2,1,-2,1),(24,'Salida por venta, Factura # 17',1,'2015-08-17','22:11:17',1,1,115.33,1),(25,'Salida por venta, Factura # 18',2,'2015-08-18','09:30:17',2,1,-4,1),(26,'Salida por venta, Factura # 18',6,'2015-08-18','09:30:17',1,1,109.33,1),(27,'Salida por venta, Factura # 19',2,'2015-08-18','09:31:46',2,1,-6,1),(28,'Salida por venta, Factura # 19',1,'2015-08-18','09:31:46',1,1,108.33,1),(29,'Salida por venta, Factura # 20',1,'2015-08-18','09:50:59',1,1,107.33,1),(30,'Salida por venta, Factura # 21',1,'2015-08-18','11:47:12',1,1,106.33,1),(31,'Salida por venta, Factura # 22',3,'2015-08-18','16:36:33',1,1,103.33,1),(32,'Salida por venta, Factura # 23',1,'2015-08-18','21:10:01',1,1,14,1),(33,'Salida por venta, Factura # 24',1,'2015-08-18','21:11:15',1,1,13,1),(34,'Salida por venta, Factura # 25',1,'2015-08-18','21:12:26',1,1,12,1);
/*!40000 ALTER TABLE `inventarios_salidasinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarios_tiposentradas`
--

DROP TABLE IF EXISTS `inventarios_tiposentradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarios_tiposentradas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios_tiposentradas`
--

LOCK TABLES `inventarios_tiposentradas` WRITE;
/*!40000 ALTER TABLE `inventarios_tiposentradas` DISABLE KEYS */;
INSERT INTO `inventarios_tiposentradas` VALUES (1,'Producción'),(2,'Compras'),(3,'Ajuste Toma Física'),(4,'Devolución'),(5,'Reproceso');
/*!40000 ALTER TABLE `inventarios_tiposentradas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarios_tipossalidas`
--

DROP TABLE IF EXISTS `inventarios_tipossalidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarios_tipossalidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios_tipossalidas`
--

LOCK TABLES `inventarios_tipossalidas` WRITE;
/*!40000 ALTER TABLE `inventarios_tipossalidas` DISABLE KEYS */;
INSERT INTO `inventarios_tipossalidas` VALUES (1,'Ventas'),(2,'Desecho'),(3,'Ajuste Toma Física'),(4,'Producto Vencido'),(5,'Reproceso');
/*!40000 ALTER TABLE `inventarios_tipossalidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lotes_lote`
--

DROP TABLE IF EXISTS `lotes_lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lotes_lote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lotenum` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `canalesqty` int(10) unsigned NOT NULL,
  `totalweight` double NOT NULL,
  `date` date NOT NULL,
  `isondeshuese` tinyint(1) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lotes_lote_lotenum_3bf62ef546f35fb4_uniq` (`lotenum`),
  KEY `lotes_lote_d3c0c18a` (`tipo_id`),
  CONSTRAINT `lote_tipo_id_23ca59db0b2883a4_fk_productos_familiadelproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `productos_familiadelproducto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotes_lote`
--

LOCK TABLES `lotes_lote` WRITE;
/*!40000 ALTER TABLE `lotes_lote` DISABLE KEYS */;
INSERT INTO `lotes_lote` VALUES (15,'18/06/2015-1',1,854.75,'2015-06-18',0,2),(17,'18/06/2015-3',1,45,'2015-06-18',0,2),(18,'18/06/2015-4',1,95.2,'2015-06-18',1,1),(19,'145',3,145.25,'2015-06-11',1,1),(21,'1',3,185.2,'2015-06-19',0,1),(22,'19/06/2015-2',3,1662.84,'2015-06-19',1,2),(23,'19/06/2015-3',3,255.15,'2015-06-19',1,1),(24,'19/06/2015-4',2,156.48,'2015-06-19',1,1),(25,'04/08/2015-1',3,1472,'2015-08-04',0,1),(26,'09/08/2015-1',2,194.23,'2015-08-09',1,1),(27,'10/08/2015-1',1,88.96,'2015-08-10',1,1);
/*!40000 ALTER TABLE `lotes_lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lotes_lote_canales`
--

DROP TABLE IF EXISTS `lotes_lote_canales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lotes_lote_canales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lote_id` int(11) NOT NULL,
  `canal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lote_id` (`lote_id`,`canal_id`),
  KEY `lotes_lote_canales_canal_id_78c78eb489a45862_fk_canales_canal_id` (`canal_id`),
  CONSTRAINT `lotes_lote_canales_canal_id_78c78eb489a45862_fk_canales_canal_id` FOREIGN KEY (`canal_id`) REFERENCES `canales_canal` (`id`),
  CONSTRAINT `lotes_lote_canales_lote_id_db83d2678454470_fk_lotes_lote_id` FOREIGN KEY (`lote_id`) REFERENCES `lotes_lote` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotes_lote_canales`
--

LOCK TABLES `lotes_lote_canales` WRITE;
/*!40000 ALTER TABLE `lotes_lote_canales` DISABLE KEYS */;
INSERT INTO `lotes_lote_canales` VALUES (20,15,11),(26,17,11),(24,18,2),(30,19,2),(31,19,4),(32,19,5),(37,21,2),(38,21,4),(39,21,5),(42,22,23),(40,22,24),(41,22,25),(43,23,18),(44,23,19),(45,23,20),(46,24,21),(47,24,22),(48,25,26),(49,25,27),(50,25,28),(51,26,30),(52,26,31),(53,27,32);
/*!40000 ALTER TABLE `lotes_lote_canales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lotes_lote_fierro`
--

DROP TABLE IF EXISTS `lotes_lote_fierro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lotes_lote_fierro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lote_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lote_id` (`lote_id`,`proveedor_id`),
  KEY `lotes__proveedor_id_523be0788ea4c08a_fk_proveedores_proveedor_id` (`proveedor_id`),
  CONSTRAINT `lotes_lote_fierro_lote_id_2610d390e3a74189_fk_lotes_lote_id` FOREIGN KEY (`lote_id`) REFERENCES `lotes_lote` (`id`),
  CONSTRAINT `lotes__proveedor_id_523be0788ea4c08a_fk_proveedores_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_proveedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotes_lote_fierro`
--

LOCK TABLES `lotes_lote_fierro` WRITE;
/*!40000 ALTER TABLE `lotes_lote_fierro` DISABLE KEYS */;
INSERT INTO `lotes_lote_fierro` VALUES (1,25,1),(2,25,2),(3,26,1),(4,26,2),(5,27,1);
/*!40000 ALTER TABLE `lotes_lote_fierro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiasPrimas_familiadelamateria`
--

DROP TABLE IF EXISTS `materiasPrimas_familiadelamateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiasPrimas_familiadelamateria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiasPrimas_familiadelamateria`
--

LOCK TABLES `materiasPrimas_familiadelamateria` WRITE;
/*!40000 ALTER TABLE `materiasPrimas_familiadelamateria` DISABLE KEYS */;
INSERT INTO `materiasPrimas_familiadelamateria` VALUES (1,'Condimentos');
/*!40000 ALTER TABLE `materiasPrimas_familiadelamateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiasPrimas_materiaprima`
--

DROP TABLE IF EXISTS `materiasPrimas_materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiasPrimas_materiaprima` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `bar_code` int(10) unsigned DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `inventory` double NOT NULL,
  `cost` double NOT NULL,
  `category_id` int(11) NOT NULL,
  `minimum` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`),
  UNIQUE KEY `bar_code` (`bar_code`),
  KEY `D365222f6a9ec55d6ce30ff5cd851a54` (`category_id`),
  CONSTRAINT `D365222f6a9ec55d6ce30ff5cd851a54` FOREIGN KEY (`category_id`) REFERENCES `materiasPrimas_familiadelamateria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiasPrimas_materiaprima`
--

LOCK TABLES `materiasPrimas_materiaprima` WRITE;
/*!40000 ALTER TABLE `materiasPrimas_materiaprima` DISABLE KEYS */;
INSERT INTO `materiasPrimas_materiaprima` VALUES (1,'1001',NULL,'Condimento Prueba 1',25,1500,1,0),(2,'1002',NULL,'Condimento Prueba 2',125,0,1,0);
/*!40000 ALTER TABLE `materiasPrimas_materiaprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_familiadelproducto`
--

DROP TABLE IF EXISTS `productos_familiadelproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos_familiadelproducto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_familiadelproducto`
--

LOCK TABLES `productos_familiadelproducto` WRITE;
/*!40000 ALTER TABLE `productos_familiadelproducto` DISABLE KEYS */;
INSERT INTO `productos_familiadelproducto` VALUES (4,'Canal Entero de Cerdo'),(5,'Canal Entero de Res'),(1,'Carne de Cerdo'),(2,'Carne de Res'),(3,'Pollo');
/*!40000 ALTER TABLE `productos_familiadelproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_producto`
--

DROP TABLE IF EXISTS `productos_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `bar_code` int(10) unsigned DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fractioned` tinyint(1) NOT NULL,
  `taxes` tinyint(1) NOT NULL,
  `taxes_amount` double NOT NULL,
  `category_id` int(11) NOT NULL,
  `autoprice` tinyint(1) NOT NULL,
  `cost` double NOT NULL,
  `price1` double NOT NULL,
  `price2` double NOT NULL,
  `price3` double NOT NULL,
  `utility1` double NOT NULL,
  `utility2` double NOT NULL,
  `utility3` double NOT NULL,
  `ventaneg` tinyint(1) NOT NULL,
  `inventory` double NOT NULL,
  `minimum` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`),
  UNIQUE KEY `bar_code` (`bar_code`),
  KEY `category_id_4b6bd89ad1e1ec3a_fk_productos_familiadelproducto_id` (`category_id`),
  CONSTRAINT `category_id_4b6bd89ad1e1ec3a_fk_productos_familiadelproducto_id` FOREIGN KEY (`category_id`) REFERENCES `productos_familiadelproducto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_producto`
--

LOCK TABLES `productos_producto` WRITE;
/*!40000 ALTER TABLE `productos_producto` DISABLE KEYS */;
INSERT INTO `productos_producto` VALUES (1,'1001',NULL,'Azadura Cerdo',1,1,13,1,1,1000,1850.25,1750.25,1650.25,50,25,10,0,12,0),(2,'1002',NULL,'Babe back rib',1,1,13,1,0,0,2245.36,2145.36,2045.36,0,0,0,0,0,0),(3,'1003',NULL,'Bistec Cerdo',1,0,0,1,0,0,0,0,0,0,0,0,0,51.96,0),(4,'1004',NULL,'Cabeza cerdo',1,0,0,1,0,0,0,0,0,0,0,0,0,12,0),(5,'1005',NULL,'Cabeza Chuleta',1,0,0,1,0,0,0,0,0,0,0,0,0,12.35,0),(6,'1006',NULL,'Cabeza lomo',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(7,'1007',NULL,'Carne cerdo para Azar',1,0,0,1,0,0,0,0,0,0,0,0,0,62.78,0),(8,'1008',NULL,'Carne para tamal',1,0,0,1,0,0,0,0,0,0,0,0,0,38.31,0),(9,'1009',NULL,'Chuleta BBQ',1,0,0,1,0,0,0,0,0,0,0,0,0,14,0),(10,'1010',NULL,'Chuleta Entera',1,0,0,1,0,0,0,0,0,0,0,0,0,60.125,0),(11,'1011',NULL,'Chuleta marinada',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(12,'1012',NULL,'Chuleta Picada',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(13,'1013',NULL,'Chuleta Riñonada',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(14,'1014',NULL,'Codillo Carnudo',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(15,'1015',NULL,'Costilla cerdo BBQ',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(16,'1016',NULL,'Costilla cerdo marinada',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(17,'1017',NULL,'Costilla con falda entera',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(18,'1018',NULL,'Costilla Entera',1,0,0,1,0,0,0,0,0,0,0,0,0,60,0),(19,'1019',NULL,'Costilla Picada',1,0,0,1,0,0,0,0,0,0,0,0,0,5,0),(20,'1020',NULL,'Costilla Ribblets',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(21,'1021',NULL,'Costilla San Luis',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(22,'1022',NULL,'Diafracma',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(23,'1023',NULL,'Fajitas Cerdo',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(24,'1024',NULL,'Fajitas Cerdo parrilleras',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(25,'1025',NULL,'Falda cerdo',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(26,'1026',NULL,'Lengua',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(27,'1027',NULL,'Lomito',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(28,'1028',NULL,'Lomo entero',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(29,'1029',NULL,'Medallones cerdo',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(30,'1030',NULL,'Molida cerdo',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(31,'1031',NULL,'Paleta Cerdo',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(32,'1032',NULL,'Panzada',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(33,'1033',NULL,'Papada',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(34,'1034',NULL,'Pellejo Tocino',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(35,'1035',NULL,'Pezuña',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(36,'1036',NULL,'Picada Fina cerdo',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(37,'1037',NULL,'Pierna Americana',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(38,'1038',NULL,'Pierna Jimmy',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(39,'1039',NULL,'Pierna navideña',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(40,'1040',NULL,'Posta en Trozo',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(41,'1041',NULL,'Recorte Cerdo 80/20',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(42,'1042',NULL,'Trocitos cantones',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(43,'1043',NULL,'Trocitos chicharron',1,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(44,'2001',NULL,'B90 Bch Especial',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(45,'2002',NULL,'Bistec Marinado Res esp',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(46,'2003',NULL,'Bistec Paleta',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(47,'2004',NULL,'Bistec para Parrilla',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(48,'2005',NULL,'Bistec Punta solomo',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(49,'2006',NULL,'Bistec Vuelta Lomo',1,0,0,2,0,0,0,0,0,0,0,0,0,115.25,0),(50,'2007',NULL,'Bolita',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(51,'2008',NULL,'Bistec Cuarto',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(52,'2009',NULL,'BVH Carnes Rojas',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(53,'2010',NULL,'Cacho Vuelta',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(54,'2011',NULL,'Cachos SCT',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(55,'2012',NULL,'Carne Roja ( SHK1 Raton)',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(56,'2013',NULL,'Carne Roja B95',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(57,'2014',NULL,'Carne Tacos ( Mechar)',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(58,'2015',NULL,'Carnitas res marinadas',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(59,'2016',NULL,'Cesina',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(60,'2017',NULL,'Chorizo Campesino',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(61,'2018',NULL,'Chorizo Criollo',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(62,'2019',NULL,'Chorizo Criollo chile',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(63,'2020',NULL,'Chorizo Especial',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(64,'2021',NULL,'Chu Lomo Aguja',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(65,'2022',NULL,'Costilla Entera',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(66,'2023',NULL,'Costilla Picada',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(67,'2024',NULL,'Costilla res Marinada',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(68,'2025',NULL,'Delmonico',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(69,'2026',NULL,'Fajitas de Res',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(70,'2027',NULL,'Faldilla',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(71,'2028',NULL,'Filete Especial',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(72,'2029',NULL,'Giba',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(73,'2030',NULL,'Hueso de sopa',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(74,'2031',NULL,'Hueso Pecueso',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(75,'2032',NULL,'Hueso Pecueso Esp.',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(76,'2033',NULL,'Hueso Pescueso picado',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(77,'2034',NULL,'Jarrete',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(78,'2035',NULL,'Lengua',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(79,'2036',NULL,'Lomito',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(80,'2037',NULL,'Lomo Aguja LA',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(81,'2038',NULL,'Lomo Entraña LE',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(82,'2039',NULL,'Higado',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(83,'2040',NULL,'Lomo Pecho FM',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(84,'2041',NULL,'Lomo Pierna SL',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(85,'2042',NULL,'Mano De Piedra',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(86,'2043',NULL,'Medallones Res Mignom',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(87,'2044',NULL,'Molida corriente 18%',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(88,'2045',NULL,'Molida especial 10% grasa',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(89,'2046',NULL,'Molida premium 100%',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(90,'2047',NULL,'Molida selecta 5%Grasa',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(91,'2048',NULL,'Mondongo',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(92,'2049',NULL,'Osobuco',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(93,'2050',NULL,'Paleta CLD',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(94,'2051',NULL,'Pecho',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(95,'2052',NULL,'Prime rib',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(96,'2053',NULL,'Punta solomo',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(97,'2054',NULL,'Quititeña',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(98,'2055',NULL,'Rabo',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(99,'2056',NULL,'Raton',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(100,'2057',NULL,'Ribey',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(101,'2058',NULL,'Sirloin',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(102,'2059',NULL,'Solomo Limpio',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(103,'2060',NULL,'Trocitos Corrientes',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(104,'2061',NULL,'Trocitos Especiales',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(105,'2062',NULL,'Vaso',1,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(106,'4001',NULL,'Canal Entero de Cerdo Kg',1,1,13,4,0,0,0,0,0,0,0,0,0,0,0),(107,'5001',NULL,'Canal Entero de Res Kg',1,1,13,5,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `productos_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_proveedor`
--

DROP TABLE IF EXISTS `proveedores_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores_proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `identification` int(10) unsigned NOT NULL,
  `provcode` int(10) unsigned NOT NULL,
  `fierro` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identification` (`identification`),
  UNIQUE KEY `provcode` (`provcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_proveedor`
--

LOCK TABLES `proveedores_proveedor` WRITE;
/*!40000 ALTER TABLE `proveedores_proveedor` DISABLE KEYS */;
INSERT INTO `proveedores_proveedor` VALUES (1,'Emanuel','Zuniga',113530032,12345,'A055'),(2,'Omar','Valerio',1475866,123456,'A053');
/*!40000 ALTER TABLE `proveedores_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba_prueba`
--

DROP TABLE IF EXISTS `prueba_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prueba_prueba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba_prueba`
--

LOCK TABLES `prueba_prueba` WRITE;
/*!40000 ALTER TABLE `prueba_prueba` DISABLE KEYS */;
/*!40000 ALTER TABLE `prueba_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variablesGlobales_variableglobal`
--

DROP TABLE IF EXISTS `variablesGlobales_variableglobal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variablesGlobales_variableglobal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `valornum` double NOT NULL,
  `valortext` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variablesGlobales_variableglobal`
--

LOCK TABLES `variablesGlobales_variableglobal` WRITE;
/*!40000 ALTER TABLE `variablesGlobales_variableglobal` DISABLE KEYS */;
INSERT INTO `variablesGlobales_variableglobal` VALUES (1,'cambiodolar',527,'','Tipo de cambio dolar');
/*!40000 ALTER TABLE `variablesGlobales_variableglobal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_detalleproductos`
--

DROP TABLE IF EXISTS `ventas_detalleproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_detalleproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preciouni` double NOT NULL,
  `cantidad` double NOT NULL,
  `iv` tinyint(1) NOT NULL,
  `total` double NOT NULL,
  `producto_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ventas_deta_producto_id_d234feba6029f0f_fk_productos_producto_id` (`producto_id`),
  CONSTRAINT `ventas_deta_producto_id_d234feba6029f0f_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_detalleproductos`
--

LOCK TABLES `ventas_detalleproductos` WRITE;
/*!40000 ALTER TABLE `ventas_detalleproductos` DISABLE KEYS */;
INSERT INTO `ventas_detalleproductos` VALUES (1,1500,1,1,1500,1,''),(2,1500,1,1,1500,1,''),(3,1500,1,1,1500,1,''),(4,1500,1,1,1500,1,''),(5,1500,1,1,1500,1,''),(6,1500,1,1,1500,1,''),(7,2245.36,1,1,2245.36,2,''),(8,1500,1,1,1500,1,''),(9,2245.36,1,1,2245.36,2,''),(10,1500,1,1,1500,1,''),(11,1250,10,1,12500,1,''),(12,2145.36,1,1,2145.36,2,''),(13,2145.36,3,1,6436.08,2,''),(14,1500,2,1,3000,1,''),(15,2245.36,1,1,2245.36,2,''),(16,300,575.25,1,172575,107,''),(17,1500,1,1,1500,1,''),(18,1500,1,1,1500,1,''),(19,1500,1,1,1500,1,''),(20,1500,1,1,1500,1,''),(21,1500,1,1,1500,1,''),(22,1500,25.25,1,37875,1,''),(23,1500,3,1,4500,1,''),(24,1500,0.25,1,375,1,''),(25,1500,4,1,6000,1,''),(26,500,27,1,13500,106,''),(27,100,77.2,1,7720,106,'Canal Cerdo id# 7'),(28,2045.36,1,1,2045.36,2,'Babe back rib'),(29,2045.36,2,1,4090.72,2,'Babe back rib'),(30,1100,1,1,1100,1,'Azadura Cerdo'),(31,2145.36,2,1,4290.72,2,'Babe back rib'),(32,1250,6,1,7500,1,'Azadura Cerdo'),(33,2145.36,2,1,4290.72,2,'Babe back rib'),(34,1250,1,1,1250,1,'Azadura Cerdo'),(35,1250,1,1,1250,1,'Azadura Cerdo'),(36,1250,1,1,1250,1,'Azadura Cerdo'),(37,1500,3,1,4500,1,'Azadura Cerdo'),(38,1500,1,1,1500,1,'Azadura Cerdo'),(39,1500,1,1,1500,1,'Azadura Cerdo'),(40,1500,1,1,1500,1,'Azadura Cerdo');
/*!40000 ALTER TABLE `ventas_detalleproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_detallespago`
--

DROP TABLE IF EXISTS `ventas_detallespago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_detallespago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `montoefectivo` double DEFAULT NULL,
  `vuelto` double DEFAULT NULL,
  `digitos` int(11) DEFAULT NULL,
  `autorizacion` int(11) DEFAULT NULL,
  `tarjeta_id` int(11) NOT NULL,
  `tipopago_id` int(11) NOT NULL,
  `bancocheque` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `bancotransf` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `chequenum` int(11) NOT NULL,
  `transfnum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ventas_detallespago_19347eed` (`tarjeta_id`),
  KEY `ventas_detallespago_b7b6de0f` (`tipopago_id`),
  CONSTRAINT `ventas_detal_tipopago_id_1948c0e3100ba33d_fk_ventas_tipospago_id` FOREIGN KEY (`tipopago_id`) REFERENCES `ventas_tipospago` (`id`),
  CONSTRAINT `ventas_det_tarjeta_id_666244140d5450f2_fk_ventas_tipostarjeta_id` FOREIGN KEY (`tarjeta_id`) REFERENCES `ventas_tipostarjeta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_detallespago`
--

LOCK TABLES `ventas_detallespago` WRITE;
/*!40000 ALTER TABLE `ventas_detallespago` DISABLE KEYS */;
INSERT INTO `ventas_detallespago` VALUES (1,5000,767.74,NULL,NULL,6,1,'Nacional','Nacional',0,0),(2,6000,1767.74,NULL,NULL,6,1,'Nacional','Nacional',0,0),(3,0,0,NULL,NULL,6,3,'Nacional','Nacional',0,0),(4,0,0,NULL,NULL,6,3,'Nacional','Nacional',0,0),(5,190000,9156.69,NULL,NULL,6,1,'Nacional','Nacional',0,0),(6,2000,305,NULL,NULL,6,1,'Nacional','Nacional',0,0),(7,0,0,NULL,NULL,6,1,'Nacional','Nacional',0,0),(8,0,0,NULL,NULL,6,1,'Nacional','Nacional',0,0),(9,2000,305,NULL,NULL,6,1,'Nacional','Nacional',0,0),(10,2000,305,NULL,NULL,6,1,'Nacional','Nacional',0,0),(11,43000,201.25,NULL,NULL,6,1,'Nacional','Nacional',0,0),(12,6000,915,NULL,NULL,6,1,'Nacional','Nacional',0,0),(13,500,76.25,NULL,NULL,6,1,'Nacional','Nacional',0,0),(14,10000,3220,NULL,NULL,6,1,'Nacional','Nacional',0,0),(15,16000,745,NULL,NULL,6,1,'Nacional','Nacional',0,0),(16,0,0,NULL,NULL,6,3,'Nacional','Nacional',0,0),(17,0,0,NULL,NULL,6,3,'Nacional','Nacional',0,0),(18,0,0,NULL,NULL,6,3,'Nacional','Nacional',0,0),(19,0,0,NULL,NULL,6,3,'Nacional','Nacional',0,0),(20,0,0,NULL,NULL,6,3,'Nacional','Nacional',0,0),(21,0,0,NULL,NULL,6,3,'Nacional','Nacional',0,0),(22,0,0,NULL,NULL,6,3,'Nacional','Nacional',0,0),(23,6000,915,NULL,NULL,6,1,'Nacional','Nacional',0,0),(24,0,0,0,0,6,4,'-','Nacional',0,123456),(25,0,0,0,0,6,4,'Nacional','Nacional',456789,0),(26,0,0,0,0,6,5,'Nacional','-',5285,0);
/*!40000 ALTER TABLE `ventas_detallespago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_tipospago`
--

DROP TABLE IF EXISTS `ventas_tipospago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_tipospago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_tipospago`
--

LOCK TABLES `ventas_tipospago` WRITE;
/*!40000 ALTER TABLE `ventas_tipospago` DISABLE KEYS */;
INSERT INTO `ventas_tipospago` VALUES (1,'Efectivo'),(2,'Tarjeta'),(3,'Crédito'),(4,'Transferencia Bancaria'),(5,'Cheque');
/*!40000 ALTER TABLE `ventas_tipospago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_tipostarjeta`
--

DROP TABLE IF EXISTS `ventas_tipostarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_tipostarjeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_tipostarjeta`
--

LOCK TABLES `ventas_tipostarjeta` WRITE;
/*!40000 ALTER TABLE `ventas_tipostarjeta` DISABLE KEYS */;
INSERT INTO `ventas_tipostarjeta` VALUES (1,'Visa'),(2,'Master Card'),(3,'American Express'),(4,'Discover'),(5,'Otra'),(6,'Efectivo');
/*!40000 ALTER TABLE `ventas_tipostarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_venta`
--

DROP TABLE IF EXISTS `ventas_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecliente` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `totolkilogramos` double NOT NULL,
  `cantidadarticulos` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `iv` double NOT NULL,
  `descopor` double NOT NULL,
  `desctocol` double NOT NULL,
  `total` double NOT NULL,
  `cashier_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `datosdelpago_id` int(11) NOT NULL,
  `saldo` double NOT NULL,
  `anulada` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ventas_venta_cashier_id_265e9e0c1b554064_fk_cajeros_cajero_id` (`cashier_id`),
  KEY `ventas_venta_client_id_1aac0d822854d779_fk_clientes_cliente_id` (`client_id`),
  KEY `venta_datosdelpago_id_6f69e7c529ca2de9_fk_ventas_detallespago_id` (`datosdelpago_id`),
  CONSTRAINT `ventas_venta_cashier_id_265e9e0c1b554064_fk_cajeros_cajero_id` FOREIGN KEY (`cashier_id`) REFERENCES `cajeros_cajero` (`id`),
  CONSTRAINT `ventas_venta_client_id_1aac0d822854d779_fk_clientes_cliente_id` FOREIGN KEY (`client_id`) REFERENCES `clientes_cliente` (`id`),
  CONSTRAINT `venta_datosdelpago_id_6f69e7c529ca2de9_fk_ventas_detallespago_id` FOREIGN KEY (`datosdelpago_id`) REFERENCES `ventas_detallespago` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_venta`
--

LOCK TABLES `ventas_venta` WRITE;
/*!40000 ALTER TABLE `ventas_venta` DISABLE KEYS */;
INSERT INTO `ventas_venta` VALUES (1,'Cliente Contado','2015-08-07','11:09:23',2,2,3745.36,486.897,0,0,4232.257,1,1,2,0,0),(2,'Emanuel Zúñiga Infante','2015-08-07','23:24:38',11,2,14645.36,1903.897,0,0,16549.257,1,2,3,16549.257,0),(3,'Emanuel Zúñiga Infante','2015-08-07','23:27:19',3,1,6436.08,836.69,0,0,7272.77,1,2,4,7272.77,0),(4,'Cliente Contado','2015-08-08','11:20:04',578.25,3,177820.36,20804.9823,10,17782.036,180843.3063,1,1,5,0,0),(5,'Cliente Contado','2015-08-08','11:27:24',1,1,1500,195,0,0,1695,1,1,6,0,0),(6,'Cliente Contado','2015-08-09','14:34:33',1,1,1500,195,0,0,1695,1,1,7,0,0),(7,'Cliente Contado','2015-08-09','14:35:28',1,1,1500,195,0,0,1695,1,1,8,0,0),(8,'Cliente Contado','2015-08-09','14:37:22',1,1,1500,195,0,0,1695,1,1,9,0,0),(9,'Cliente Contado','2015-08-09','14:38:13',1,1,1500,195,0,0,1695,1,1,10,0,0),(10,'Cliente Contado','2015-08-09','15:14:17',25.25,1,37875,4923.75,0,0,42798.75,1,1,11,0,0),(11,'Cliente Contado','2015-08-09','15:22:38',3,1,4500,585,0,0,5085,1,1,12,0,0),(12,'Cliente Contado','2015-08-09','15:25:28',0.25,1,375,48.75,0,0,423.75,1,1,13,0,0),(13,'Cliente Contado','2015-08-09','19:30:04',4,1,6000,780,0,0,6780,1,1,14,0,0),(14,'Cliente Contado','2015-08-14','16:53:57',27,1,13500,1755,0,0,15255,1,1,15,0,0),(15,'Emanuel Zúñiga Infante','2015-08-14','16:55:03',77.2,1,7720,1003.6,0,0,8723.6,1,2,16,8723.6,0),(16,'Omar Valerio','2015-08-17','17:59:28',1,1,2045.36,265.897,0,0,2311.257,1,3,17,0,0),(17,'Omar Valerio','2015-08-17','22:11:17',3,2,5190.72,674.794,0,0,5865.514,1,3,18,0,0),(18,'Emanuel Zúñiga Infante','2015-08-18','09:30:17',8,2,11790.72,1532.794,0,0,13323.514,1,2,19,0,0),(19,'Emanuel Zúñiga Infante','2015-08-18','09:31:46',3,2,5540.72,720.294,0,0,6261.014,1,2,20,0,0),(20,'Emanuel Zúñiga Infante','2015-08-18','09:50:59',1,1,1250,162.5,0,0,1412.5,1,2,21,0,0),(21,'Emanuel Zúñiga Infante','2015-08-18','11:47:12',1,1,1250,162.5,0,0,1412.5,1,2,22,0,0),(22,'Cliente Contado','2015-08-18','16:36:33',3,1,4500,585,0,0,5085,1,1,23,0,0),(23,'Cliente Contado','2015-08-18','21:10:01',1,1,1500,195,0,0,1695,1,1,24,0,0),(24,'Cliente Contado','2015-08-18','21:11:15',1,1,1500,195,0,0,1695,1,1,25,0,0),(25,'Cliente Contado','2015-08-18','21:12:26',1,1,1500,195,0,0,1695,1,1,26,0,0);
/*!40000 ALTER TABLE `ventas_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_venta_detalleproductos`
--

DROP TABLE IF EXISTS `ventas_venta_detalleproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_venta_detalleproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venta_id` int(11) NOT NULL,
  `detalleproductos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `venta_id` (`venta_id`,`detalleproductos_id`),
  KEY `D39478a14290d4cee233f800d7f1dcd0` (`detalleproductos_id`),
  CONSTRAINT `D39478a14290d4cee233f800d7f1dcd0` FOREIGN KEY (`detalleproductos_id`) REFERENCES `ventas_detalleproductos` (`id`),
  CONSTRAINT `ventas_venta_detalle_venta_id_75b2a21f78c261f_fk_ventas_venta_id` FOREIGN KEY (`venta_id`) REFERENCES `ventas_venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_venta_detalleproductos`
--

LOCK TABLES `ventas_venta_detalleproductos` WRITE;
/*!40000 ALTER TABLE `ventas_venta_detalleproductos` DISABLE KEYS */;
INSERT INTO `ventas_venta_detalleproductos` VALUES (1,1,9),(2,1,10),(3,2,11),(4,2,12),(5,3,13),(7,4,14),(8,4,15),(6,4,16),(9,5,17),(10,6,18),(11,7,19),(12,8,20),(13,9,21),(14,10,22),(15,11,23),(16,12,24),(17,13,25),(18,14,26),(19,15,27),(20,16,28),(21,17,29),(22,17,30),(24,18,31),(23,18,32),(25,19,33),(26,19,34),(27,20,35),(28,21,36),(29,22,37),(30,23,38),(31,24,39),(32,25,40);
/*!40000 ALTER TABLE `ventas_venta_detalleproductos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-18 21:50:47
