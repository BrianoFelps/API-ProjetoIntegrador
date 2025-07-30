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

USE railway;

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_property` int NOT NULL,
  `value` varchar(1000) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `page_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_property` (`id_property`),
  KEY `elements_pages_FK` (`page_id`),
  KEY `elements_usuario_FK` (`user_id`),
  CONSTRAINT `elements_ibfk_1` FOREIGN KEY (`id_property`) REFERENCES `elmproperties` (`id`),
  CONSTRAINT `elements_pages_FK` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  CONSTRAINT `elements_usuario_FK` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
INSERT INTO `elements` VALUES (1,1,'h',NULL,1,1),(2,2,'Salmos 91',NULL,1,1),(3,3,'1 Aquele que habita no esconderijo do Altíssimo, à sombra do Onipotente descansará.\n2 Direi do Senhor: Ele é o meu Deus, o meu refúgio, a minha fortaleza, e nele confiarei.\n3 Porque ele te livrará do laço do passarinheiro, e da peste perniciosa.\n4 Ele te cobrirá com as suas penas, e debaixo das suas asas te confiarás; a sua verdade será o teu escudo e broquel.\n5 Não terás medo do terror de noite nem da seta que voa de dia,.\n6 Nem da peste que anda na escuridão, nem da mortandade que assola ao meio-dia.\n7 Mil cairão ao teu lado, e dez mil à tua direita, mas não chegará a ti.                                                                                                                                                                                                                        ',NULL,1,1),(4,4,'religião',NULL,1,1),(5,4,'MASCULINIDADE',NULL,1,1),(6,4,'VIRTUDES CATÓLICAS',NULL,1,1),(7,4,'FILOSOFIA',NULL,1,1),(8,4,'positividade',NULL,1,1),(9,5,'Planejamento semanal',NULL,1,1),(10,5,'Hábitos',NULL,1,1),(11,5,'Metas mensais',NULL,1,1),(12,5,'Orçamento',NULL,1,1),(13,5,'Lista de compras ',NULL,1,1),(14,5,'Metas financeiras',NULL,1,1),(15,5,'Objetivos de longo prazo',NULL,1,1),(16,5,'Objetivos semestrais',NULL,1,1),(17,5,'Áreas da vida',NULL,1,1),(18,6,'DIA A DIA',NULL,1,1),(19,6,'FINANÇAS',NULL,1,1),(20,6,'VIDA',NULL,1,1),(21,7,'Título\n\nTexto\n\nParágrafo\n\nImagem\n\netc.','2027-09-10',1,1),(22,7,'TESTE 2','2006-08-12',1,1),(23,7,'TESTE 3','2007-08-23',1,1),(24,7,'TESTE 4','2027-07-21',1,1),(25,7,'TESTE 5 ajf hdfoiuhdsakjflhsdakjfhdsakjflhadslkjnfhdsaklnflkjdsafkjhdkjlnfhajlfkjsafljkdsakjfdhkjfhdsalkjfhdsakjfhsakdhkfsd','2020-06-18',1,1),(26,2,'Texte titulow',NULL,1,7),(27,3,'texte texto bbbbbb',NULL,1,7),(29,2,'Título do Briano',NULL,1,2),(30,3,'Texto do Briano',NULL,1,2),(82,4,'Santa ceia',NULL,1,7),(83,4,'viagens medievais',NULL,1,7),(84,4,'VIDAS DOS SANTOS',NULL,1,7),(85,4,'filosofia',NULL,1,7),(86,4,'mangás para ler',NULL,1,7),(307,7,'Contexto legal com itens, carregado com base no usuário','2024-06-03',1,7),(308,7,'Contexto legal com itens, carregado com base no usuário','2026-06-18',1,7),(309,7,'Contexto legal com itens, carregado com base no usuário','2024-06-06',1,7),(310,7,'Contexto legal com itens, carregado com base no usuário','2018-02-19',1,7),(311,7,'Contexto legal com itens, carregado com base no usuário','2020-07-24',1,7),(341,6,'FINANÇAS',NULL,1,7),(342,6,'PLANEJAMENTOS',NULL,1,7),(343,6,'LONGO PRAZO',NULL,1,7),(366,5,'Mercado de ações',NULL,1,7),(367,5,'Burocracias do banco',NULL,1,7),(368,5,'Investimentos concretos',NULL,1,7),(369,5,'Dia do lixo',NULL,1,7),(370,5,'Compras semanais',NULL,1,7),(371,5,'Rotina semanal',NULL,1,7),(372,5,'Autoconhecimento',NULL,1,7),(373,5,'Aniversários e lembretes',NULL,1,7),(374,5,'Vida espiritual',NULL,1,7),(385,2,'',NULL,1,4),(386,3,'',NULL,1,4),(387,2,'',NULL,1,4),(388,3,'',NULL,1,4),(389,2,'',NULL,1,4),(390,3,'',NULL,1,4),(391,2,'',NULL,1,11),(392,3,'',NULL,1,11),(393,2,'',NULL,1,11),(394,3,'',NULL,1,11),(395,2,'',NULL,1,11),(396,3,'',NULL,1,11),(397,2,'',NULL,1,11),(398,3,'',NULL,1,11),(399,2,'',NULL,1,11),(400,3,'',NULL,1,11),(401,2,'',NULL,1,11),(402,2,'',NULL,1,11),(403,3,'',NULL,1,11),(404,3,'',NULL,1,11),(405,2,'',NULL,1,11),(406,3,'',NULL,1,11),(407,2,'',NULL,1,11),(408,3,'',NULL,1,11),(409,2,'',NULL,1,11),(410,3,'',NULL,1,11),(411,2,'',NULL,1,11),(412,3,'',NULL,1,11),(413,2,'',NULL,1,11),(414,3,'',NULL,1,11),(415,2,'',NULL,1,11),(416,3,'',NULL,1,11),(417,2,'',NULL,1,11),(418,3,'',NULL,1,11),(419,2,'',NULL,1,11),(420,3,'',NULL,1,11),(421,2,'',NULL,1,11),(422,3,'',NULL,1,11),(423,2,'',NULL,1,11),(424,3,'',NULL,1,11),(425,2,'',NULL,1,11),(426,3,'',NULL,1,11),(427,2,'',NULL,1,11),(428,3,'',NULL,1,11),(429,2,'',NULL,1,11),(430,3,'',NULL,1,11),(431,2,'',NULL,1,11),(432,3,'',NULL,1,11),(433,2,'',NULL,1,11),(434,3,'',NULL,1,11),(435,2,'',NULL,1,11),(436,3,'',NULL,1,11),(437,2,'',NULL,1,11),(438,3,'',NULL,1,11),(439,2,'',NULL,1,11),(440,3,'',NULL,1,11),(441,2,'',NULL,1,12),(442,3,'',NULL,1,12),(443,2,'',NULL,1,16),(444,3,'',NULL,1,16),(445,2,'',NULL,1,16),(446,3,'',NULL,1,16),(447,2,'',NULL,1,16),(448,4,'',NULL,1,16),(449,4,'',NULL,1,16),(450,4,'',NULL,1,16),(451,4,'',NULL,1,16),(452,4,'',NULL,1,16),(453,7,'',NULL,1,16),(454,7,'',NULL,1,16),(455,7,'',NULL,1,16),(456,7,'',NULL,1,16),(457,7,'',NULL,1,16),(458,6,'',NULL,1,16),(459,6,'',NULL,1,16),(460,6,'',NULL,1,16),(461,5,'',NULL,1,16),(462,5,'',NULL,1,16),(463,5,'',NULL,1,16),(464,5,'',NULL,1,16),(465,5,'',NULL,1,16),(466,5,'',NULL,1,16),(467,5,'',NULL,1,16),(468,5,'',NULL,1,16),(469,5,'',NULL,1,16),(470,2,'',NULL,1,16),(471,4,'',NULL,1,16),(472,4,'',NULL,1,16),(473,4,'',NULL,1,16),(474,4,'',NULL,1,16),(475,4,'',NULL,1,16),(476,7,'',NULL,1,16),(477,7,'',NULL,1,16),(478,7,'',NULL,1,16),(479,7,'',NULL,1,16),(480,7,'',NULL,1,16),(481,6,'',NULL,1,16),(482,6,'',NULL,1,16),(483,6,'',NULL,1,16),(484,5,'',NULL,1,16),(485,5,'',NULL,1,16),(486,5,'',NULL,1,16),(487,5,'',NULL,1,16),(488,5,'',NULL,1,16),(489,5,'',NULL,1,16),(490,5,'',NULL,1,16),(491,5,'',NULL,1,16),(492,5,'',NULL,1,16),(493,3,'',NULL,1,16),(494,3,'',NULL,1,16),(495,2,'',NULL,1,16),(496,2,'',NULL,1,16),(497,3,'',NULL,1,16),(498,3,'',NULL,1,16),(499,2,'',NULL,1,16),(500,2,'',NULL,1,16),(501,3,'',NULL,1,16),(502,3,'',NULL,1,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elmproperties`
--

LOCK TABLES `elmproperties` WRITE;
/*!40000 ALTER TABLE `elmproperties` DISABLE KEYS */;
INSERT INTO `elmproperties` VALUES (1,'Título','Pai'),(2,'InputTitle','Pai'),(3,'InputText','Pai'),(4,'Card','Pai'),(5,'InputWCard','Pai'),(6,'InputWriteIdea','Pai'),(7,'FScard','Pai');
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
  `page_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_emoji` (`id_emoji`),
  KEY `emojimenu_pages_FK` (`page_id`),
  KEY `emojimenu_usuario_FK` (`user_id`),
  CONSTRAINT `emojimenu_ibfk_1` FOREIGN KEY (`id_emoji`) REFERENCES `emojis` (`id`),
  CONSTRAINT `emojimenu_pages_FK` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  CONSTRAINT `emojimenu_usuario_FK` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91960 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emojimenu`
--

LOCK TABLES `emojimenu` WRITE;
/*!40000 ALTER TABLE `emojimenu` DISABLE KEYS */;
INSERT INTO `emojimenu` VALUES (1,6,1,1),(2,7,1,1),(3,8,1,1),(4,9,1,1),(5,1,1,1),(6,5,1,1),(7,14,1,1),(8,10,1,1),(9,15,1,1),(10,12,1,1),(11,13,1,1),(12,16,1,1),(13,14,1,1),(14,17,1,1),(15,18,1,1),(16,1,1,1),(91945,8,1,7),(91946,9,1,7),(91947,16,1,7),(91948,6,1,7),(91949,17,1,7),(91950,10,1,7),(91951,11,1,7),(91952,12,1,7),(91953,18,1,7),(91954,3,1,7),(91955,13,1,7),(91956,15,1,7),(91957,1,1,7),(91958,14,1,7),(91959,7,1,7);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emojis`
--

LOCK TABLES `emojis` WRITE;
/*!40000 ALTER TABLE `emojis` DISABLE KEYS */;
INSERT INTO `emojis` VALUES (0,'Insira o emoji',NULL),(1,'Sorridente fofo','😊'),(2,'Rindo muito','😂'),(3,'Amoroso','😍'),(4,'Bêbado','🥴'),(5,'Sorridente','😁'),(6,'Cruz latina','✝️'),(7,'Igreja','⛪'),(8,'Moai','🗿'),(9,'Rosto sorridente com aréola','😇'),(10,'Lista','📋'),(11,'Saco de dinheiro','💰'),(12,'Nota de dólar','💵'),(13,'Carrinho de compras','🛒'),(14,'Calendário','📅'),(15,'Calendário espiral','🗓️'),(16,'Avião','✈️'),(17,'Planta nascente','🌱'),(18,'Parede de tijolos','🧱');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(50) NOT NULL,
  `isFavorited` tinyint(1) NOT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_usuario_FK` (`id_usuario`),
  CONSTRAINT `pages_usuario_FK` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Ponto de equilíbrio',1,1),(2,'PdE Card',1,1),(3,'PdE Card',0,1),(4,'PdE Card',1,1),(5,'PdE Card',0,1),(6,'PdE Card',1,1),(7,'Ponto de equilíbrio 1',0,1),(8,'Ponto de equilíbrio 2',1,1),(9,'Ponto de equilíbrio 3',1,1),(10,'Nome da página',0,NULL),(11,'Nome da página',0,NULL),(12,'Nome da página',0,NULL),(13,'Nome da página',0,NULL),(14,'Nome da página',0,NULL),(15,'Nome da página',0,NULL),(16,'Nome da página',0,NULL),(17,'Nome da página',0,NULL),(18,'Nome da página',0,NULL),(19,'Nome da página',0,NULL),(20,'Nome da página',0,NULL);
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
  `nome_inteiro` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(18) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `isPremium` tinyint(1) NOT NULL,
  `page_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_pages_FK` (`page_id`),
  CONSTRAINT `usuario_pages_FK` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Terry Crews','Paidocris','TCrews@gmail.com','(44) 33333-3333',1,1),(2,'Briano Felps','Briano123','briano@gmail.com','1',1,7),(3,'Kauan  Andre','121415','pjlkauan78@gmail.com','1',1,8),(4,'lethycia alves','lele0708','lethycinha.alvess@gmail.com','1',1,9),(5,'foxsa Istoico','makunga','marcosviniciosdasilvainglezros@gmail.com','1',1,1),(6,'Ana Paula  Martins Loback ','ana121415','ana.m.loback@gmail.com','1',1,1),(7,'a a','a','a@a.com','1',1,9),(8,'Marcos Vinicius','az04','Theprogrammerfoxsa@gmail.com','1',1,1),(9,'Briano Felps','1','briansticknodesbr@gmail.com','1',1,NULL),(10,'gfdgsfdg sdfgdsfgdsf','a','abobora@ad.com','1',1,NULL),(11,'g g','g','g@g.com','1',1,15),(12,'a a','a','a@a2.com','1',1,16),(13,'adfa fds','a','a2@hotm.com','1',1,17),(14,'adfa fds','a','kjahj@gmail.com','1',1,18),(15,'Briano ab','aa','abw@gmail.com','1',1,19),(16,'Briano ab','aa','abwa@gmail.com','1',1,20);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'projetointegradorweb'
--

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

-- Dump completed on 2024-07-03 13:41:29
