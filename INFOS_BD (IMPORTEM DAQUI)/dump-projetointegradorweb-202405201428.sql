-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: projetointegradorweb
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_property` int NOT NULL,
  `value` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_property` (`id_property`),
  CONSTRAINT `elements_ibfk_1` FOREIGN KEY (`id_property`) REFERENCES `elmproperties` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
INSERT INTO `elements` VALUES (1,1,'a'),(2,2,'Salmos 91'),(3,3,'1 Aquele que habita no esconderijo do Altíssimo, à sombra do Onipotente descansará.\n2 Direi do Senhor: Ele é o meu Deus, o meu refúgio, a minha fortaleza, e nele confiarei.\n3 Porque ele te livrará do laço do passarinheiro, e da peste perniciosa.\n4 Ele te cobrirá com as suas penas, e debaixo das suas asas te confiarás; a sua verdade será o teu escudo e broquel.\n5 Não terás medo do terror de noite nem da seta que voa de dia.\n6 Nem da peste que anda na escuridão, nem da mortandade que assola ao meio-dia.\n7 Mil cairão ao teu lado, e dez mil à tua direita, mas não chegará a ti.'),(4,4,'RELIGIÃO'),(5,4,'MASCULINIDADE'),(6,4,'VIRTUDES CATÓLICAS'),(7,4,'FILOSOFIA'),(8,4,'positividade'),(9,5,'Lista de afazeres'),(10,5,'Rotina diária'),(11,5,'Metas mensais'),(12,5,'Orçamento'),(13,5,'Lista de compras'),(14,5,'Metas financeiras'),(15,5,'Objetivos de longo prazo'),(16,5,'Objetivos semestrais'),(17,5,'Áreas da vida'),(18,6,'DIA A DIA'),(19,6,'FINANÇAS'),(20,6,'VIDA');
/*!40000 ALTER TABLE `elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elmproperties`
--

DROP TABLE IF EXISTS `elmproperties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elmproperties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elmproperties`
--

LOCK TABLES `elmproperties` WRITE;
/*!40000 ALTER TABLE `elmproperties` DISABLE KEYS */;
INSERT INTO `elmproperties` VALUES (1,'Título','Pai'),(2,'InputTitle','Pai'),(3,'InputText','Pai'),(4,'Card','Pai'),(5,'InputWCard','Pai'),(6,'InputWriteIdea','Pai');
/*!40000 ALTER TABLE `elmproperties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emojimenu`
--

DROP TABLE IF EXISTS `emojimenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emojimenu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_emoji` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_emoji` (`id_emoji`),
  CONSTRAINT `emojimenu_ibfk_1` FOREIGN KEY (`id_emoji`) REFERENCES `emojis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emojimenu`
--

LOCK TABLES `emojimenu` WRITE;
/*!40000 ALTER TABLE `emojimenu` DISABLE KEYS */;
INSERT INTO `emojimenu` VALUES (5,1),(7,1),(12,1),(16,1),(8,2),(11,2),(2,3),(4,3),(14,3),(15,3),(13,4),(1,5),(3,5),(6,5),(9,5),(10,5);
/*!40000 ALTER TABLE `emojimenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emojis`
--

DROP TABLE IF EXISTS `emojis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emojis` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `emoji` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emojis`
--

LOCK TABLES `emojis` WRITE;
/*!40000 ALTER TABLE `emojis` DISABLE KEYS */;
INSERT INTO `emojis` VALUES (1,'Sorridente fofo','😊'),(2,'Rindo muito','😂'),(3,'Amoroso','😍'),(4,'Bêbado','🥴'),(5,'Sorridente','😁');
/*!40000 ALTER TABLE `emojis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icons`
--

DROP TABLE IF EXISTS `icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icons` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icons`
--

LOCK TABLES `icons` WRITE;
/*!40000 ALTER TABLE `icons` DISABLE KEYS */;
INSERT INTO `icons` VALUES (1,'Cruz','https://img.icons8.com/material/24/cross.png');
/*!40000 ALTER TABLE `icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_elements` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_emojimenu` int NOT NULL,
  `isFavorited` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_elements` (`id_elements`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_emojimenu` (`id_emojimenu`),
  CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`id_elements`) REFERENCES `elements` (`id`),
  CONSTRAINT `pages_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `pages_ibfk_3` FOREIGN KEY (`id_emojimenu`) REFERENCES `emojimenu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `senha` varchar(18) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `isPremium` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'projetointegradorweb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 14:28:22
