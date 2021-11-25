CREATE DATABASE  IF NOT EXISTS `classement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `classement`;
-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: classement
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'anime'),(2,'90'),(3,'80'),(4,'2000');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `points` int DEFAULT '0',
  `genre_id` int NOT NULL,
  PRIMARY KEY (`id`,`genre_id`),
  UNIQUE KEY `url_UNIQUE` (`url`),
  KEY `fk_music_genre_idx` (`genre_id`),
  CONSTRAINT `fk_music_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES (1,'https://www.youtube.com/embed/faqmNf_fZlE','Hunter X Hunter - Opening 1 | Departure!',0,1),(2,'https://www.youtube.com/embed/JBqxVX_LXvk','Fire Force – Opening Theme – Inferno',0,1),(3,'https://www.youtube.com/embed/pmanD_s7G3U','Demon Slayer | OP | \"Gurenge\" by LiSA HD',0,1),(4,'https://www.youtube.com/embed/v8bZVdTgXoY','TVアニメ『呪術廻戦』ノンクレジットOPムービー／OPテーマ：Eve「廻廻奇譚」',0,1),(5,'https://www.youtube.com/embed/tF4faMbs5oQ','ＴＶアニメ 「Ｄｒ．ＳＴＯＮＥ」 第1クールOP＜Good Morning World!＞ノンクレジット映像',0,1),(6,'https://www.youtube.com/embed/l2j1qM7gx54','『僕のヒーローアカデミア』ヒロアカ2期第2クールオープニングムービー／「空に歌えば」amazarashi／ヒロアカOP',0,1),(7,'https://www.youtube.com/embed/UW_-eBc0U7U','The God of High School - Opening (HD)',0,1),(8,'https://www.youtube.com/embed/CID-sYQNCew','Attack on Titan Season 2 - Official Opening Song - Shinzou wo Sasageyo by Linked Horizon',0,1),(9,'https://www.youtube.com/embed/lTlzDfhPtFA','\"Kaguya-sama: Love Is War?\" Opening Theme (Limited Time Only)',0,1),(10,'https://www.youtube.com/embed/swwUoExDIng','Attack on Titan Season 3 - Official Opening | OP1 [ RED SWAN ]',0,1),(11,'https://www.youtube.com/embed/apII5VFTce0','Tower of God - Opening | TOP',0,1),(12,'https://www.youtube.com/embed/zuW_qSQXFx0','Mahoutsukai no Yome OP',0,1),(13,'https://www.youtube.com/embed/bgo9dJB_icw','TVアニメ「BEASTARS」ノンクレジット OP',0,1),(14,'https://www.youtube.com/embed/8-91y7BJ8QA','Keep Your Hands Off Eizouken! - Opening | Easy Breezy',0,1),(15,'https://www.youtube.com/embed/dsK8SsfqdHE','Black Clover - Opening 3 (HD)',0,1),(16,'https://www.youtube.com/embed/4evV8Fr5A8U','Black Clover - Opening 10 (HD)',0,1),(17,'https://www.youtube.com/embed/-eYK3YP524A','Soul Eater – Opening Theme 2 – Papermoon',0,1),(18,'https://www.youtube.com/embed/I59V9pjEOLI','Mirai Nikki Opening 1 [VOSTFR]',0,1),(19,'https://www.youtube.com/embed/ORDXWrL5EuQ','Yuri!!! on Ice ユーリ!!! on ICE Opening \"History Maker\"',0,1),(20,'https://www.youtube.com/embed/6vaVwbc_soo','All Out!! OP Full',0,1),(21,'https://www.youtube.com/embed/sF0QLtk3YH0','Psycho-pass ED 1 - Monster without a name (Creditless)',0,1),(22,'https://www.youtube.com/embed/KVg8NZHRv04','Hajime No Ippo New Challenger Opening Full',0,1),(23,'https://www.youtube.com/embed/CaksNlNniis','Deleted video',0,1),(24,'https://www.youtube.com/embed/4pT-eLMjUaY','Masamune-kun no Revenge OP / Opening [HD]',0,1),(25,'https://www.youtube.com/embed/yMcCtcR6nOg','Rainbow: Nisha Rokubou no Shichinin - Opening [sub esp] (TV version)',0,1),(26,'https://www.youtube.com/embed/7Ap_nc9ez3k','Noragami Aragoto Opening Fulli - Hey kids! lyrics',0,1),(27,'https://www.youtube.com/embed/gtRDL8PNwjw','BOKU NO HERO ACADEMIA OPENING (僕のヒーローアカデミア Op)',0,1),(28,'https://www.youtube.com/embed/f8d3bW42aFY','TVアニメ「坂本ですが？」ノンテロップOP',0,1),(29,'https://www.youtube.com/embed/7KupdWsCU4Y','Haikyuu Season 2 Opening 2',0,1),(30,'https://www.youtube.com/embed/PBoaCHmvCZY','Yamada-kun to 7-nin no Majo - Opening Full - Lyric',0,1),(31,'https://www.youtube.com/embed/PzcRgzM7wk8','Blue Exorcist Season 2 -Kyoto Saga- Official Opening Song (UVERworld)',0,1),(32,'https://www.youtube.com/embed/d8wBMkvtRaI','Re:Re: - Asian Kung-Fu Generation // ERASED // Boku Dake ga Inai Machi OP',0,1),(33,'https://www.youtube.com/embed/4ZYozk9gm0w','Air Gear Opening 1 [Full]',0,1),(34,'https://www.youtube.com/embed/ptxv3IxC8ZQ','Kuroshitsuji Opening 1',0,1),(35,'https://www.youtube.com/embed/VT6LFOIofRE','\"Libera Me From Hell\" with subs',0,1),(36,'https://www.youtube.com/embed/8UbS2pKIyOQ','Nanatsu no taizai opening 1',0,1),(37,'https://www.youtube.com/embed/uMeR2W19wT0','ノンテロップスペシャル版　TVアニメ「東京喰種トーキョーグール」オープニング映像 TK from 凛として時雨/unravel',0,1),(38,'https://www.youtube.com/embed/HdQCWXh3XXU','Re:Zero kara Hajimeru Isekai Seikatsu Ending FULL - Re：ゼロから始める異世界生活 ED 「STYX HELIX」',0,1),(39,'https://www.youtube.com/embed/lMqMAOHAhmM','君の名は (Kimino nawa) - なんでもないや (Nandemonaiya) ┃Cover by Raon Lee',0,1),(40,'https://www.youtube.com/embed/m_7u3UknLUg','TRUSTRICK / 未来形Answer【Music Video(short ver.)】',0,1),(41,'https://www.youtube.com/embed/W5ZIZ6v7egU','Taneda Risa - Wareta Ringo (Shinsekai Yori Ending)',0,1),(42,'https://www.youtube.com/embed/u6dHVsDFbdU','ChihayaFuru Opening 1 Full',0,1),(43,'https://www.youtube.com/embed/2uq34TeWEdQ','Deleted video',0,1),(44,'https://www.youtube.com/embed/KMZBauH47Jo','▶ Full Metal Alchemist  Brotherhood- Opening 4 HD',0,1),(45,'https://www.youtube.com/embed/BnEHZ8bi5Zk','Bakuman. 2 - Opening [HD 720p]',0,1),(46,'https://www.youtube.com/embed/MQ2wWTAO5B4','Beelzebub Opening 2 - HD',0,1),(47,'https://www.youtube.com/embed/sk3ZJslK2ks','Durarara opening 1 lyrics [Full Version English Lyrics In Desc.]',0,1),(48,'https://www.youtube.com/embed/Pb0N855lp_4','High School Of The Dead Op 1 HD',0,1),(49,'https://www.youtube.com/embed/KpDstvOgL7s','Kore Wa Zombie Desu Ka Opening HD season 1',0,1),(50,'https://www.youtube.com/embed/pffz3UqKnWU','Mirai Nikki Ending Full (Blood Teller)',0,1);
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-25 15:33:48
