CREATE
DATABASE  IF NOT EXISTS `classement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE
`classement`;
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
CREATE TABLE `genre`
(
    `id`   int         NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK
TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre`
VALUES (1, 'anime'),
       (2, '90'),
       (3, '2000'),
       (4, 'top50');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music`
(
    `id`       int          NOT NULL AUTO_INCREMENT,
    `url`      varchar(255) NOT NULL,
    `name`     varchar(255) NOT NULL,
    `points`   int DEFAULT '0',
    `genre_id` int          NOT NULL,
    PRIMARY KEY (`id`, `genre_id`),
    UNIQUE KEY `url_UNIQUE` (`url`),
    KEY        `fk_music_genre_idx` (`genre_id`),
    CONSTRAINT `fk_music_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK
TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music`
VALUES (1, 'https://www.youtube.com/embed/faqmNf_fZlE', 'Hunter X Hunter - Opening 1 | Departure!', 0, 1),
       (2, 'https://www.youtube.com/embed/JBqxVX_LXvk', 'Fire Force – Opening Theme – Inferno', 0, 1),
       (3, 'https://www.youtube.com/embed/pmanD_s7G3U', 'Demon Slayer | OP | \"Gurenge\" by LiSA HD', 0, 1),
       (4, 'https://www.youtube.com/embed/v8bZVdTgXoY', 'TVアニメ『呪術廻戦』ノンクレジットOPムービー／OPテーマ：Eve「廻廻奇譚」', 0, 1),
       (5, 'https://www.youtube.com/embed/tF4faMbs5oQ', 'ＴＶアニメ 「Ｄｒ．ＳＴＯＮＥ」 第1クールOP＜Good Morning World!＞ノンクレジット映像', 0, 1),
       (6, 'https://www.youtube.com/embed/l2j1qM7gx54', '『僕のヒーローアカデミア』ヒロアカ2期第2クールオープニングムービー／「空に歌えば」amazarashi／ヒロアカOP',
        0, 1),
       (7, 'https://www.youtube.com/embed/UW_-eBc0U7U', 'The God of High School - Opening (HD)', 0, 1),
       (9, 'https://www.youtube.com/embed/lTlzDfhPtFA',
        '\"Kaguya-sama: Love Is War?\" Opening Theme (Limited Time Only)', 0, 1),
       (10, 'https://www.youtube.com/embed/swwUoExDIng',
        'Attack on Titan Season 3 - Official Opening | OP1 [ RED SWAN ]', 0, 1),
       (11, 'https://www.youtube.com/embed/apII5VFTce0', 'Tower of God - Opening | TOP', 0, 1),
       (12, 'https://www.youtube.com/embed/zuW_qSQXFx0', 'Mahoutsukai no Yome OP', 0, 1),
       (13, 'https://www.youtube.com/embed/bgo9dJB_icw', 'TVアニメ「BEASTARS」ノンクレジット OP', 0, 1),
       (14, 'https://www.youtube.com/embed/8-91y7BJ8QA', 'Keep Your Hands Off Eizouken! - Opening | Easy Breezy', 0, 1),
       (15, 'https://www.youtube.com/embed/dsK8SsfqdHE', 'Black Clover - Opening 3 (HD)', 0, 1),
       (16, 'https://www.youtube.com/embed/4evV8Fr5A8U', 'Black Clover - Opening 10 (HD)', 0, 1),
       (17, 'https://www.youtube.com/embed/-eYK3YP524A', 'Soul Eater – Opening Theme 2 – Papermoon', 0, 1),
       (18, 'https://www.youtube.com/embed/I59V9pjEOLI', 'Mirai Nikki Opening 1 [VOSTFR]', 0, 1),
       (19, 'https://www.youtube.com/embed/ORDXWrL5EuQ', 'Yuri!!! on Ice ユーリ!!! on ICE Opening \"History Maker\"', 0,
        1),
       (21, 'https://www.youtube.com/embed/sF0QLtk3YH0', 'Psycho-pass ED 1 - Monster without a name (Creditless)', 0,
        1),
       (22, 'https://www.youtube.com/embed/KVg8NZHRv04', 'Hajime No Ippo New Challenger Opening Full', 0, 1),
       (26, 'https://www.youtube.com/embed/7Ap_nc9ez3k', 'Noragami Aragoto Opening Fulli - Hey kids! lyrics', 0, 1),
       (27, 'https://www.youtube.com/embed/gtRDL8PNwjw', 'BOKU NO HERO ACADEMIA OPENING (僕のヒーローアカデミア Op)', 0, 1),
       (28, 'https://www.youtube.com/embed/f8d3bW42aFY', 'TVアニメ「坂本ですが？」ノンテロップOP', 0, 1),
       (30, 'https://www.youtube.com/embed/PBoaCHmvCZY', 'Yamada-kun to 7-nin no Majo - Opening Full - Lyric', 0, 1),
       (33, 'https://www.youtube.com/embed/4ZYozk9gm0w', 'Air Gear Opening 1 [Full]', 0, 1),
       (35, 'https://www.youtube.com/embed/VT6LFOIofRE', '\"Libera Me From Hell\" with subs', 0, 1),
       (37, 'https://www.youtube.com/embed/uMeR2W19wT0',
        'ノンテロップスペシャル版　TVアニメ「東京喰種トーキョーグール」オープニング映像 TK from 凛として時雨/unravel', 0, 1),
       (38, 'https://www.youtube.com/embed/HdQCWXh3XXU',
        'Re:Zero kara Hajimeru Isekai Seikatsu Ending FULL - Re：ゼロから始める異世界生活 ED 「STYX HELIX」', 0, 1),
       (39, 'https://www.youtube.com/embed/lMqMAOHAhmM',
        '君の名は (Kimino nawa) - なんでもないや (Nandemonaiya) ┃Cover by Raon Lee', 0, 1),
       (40, 'https://www.youtube.com/embed/m_7u3UknLUg', 'TRUSTRICK / 未来形Answer【Music Video(short ver.)】', 0, 1),
       (41, 'https://www.youtube.com/embed/W5ZIZ6v7egU', 'Taneda Risa - Wareta Ringo (Shinsekai Yori Ending)', 0, 1),
       (42, 'https://www.youtube.com/embed/u6dHVsDFbdU', 'ChihayaFuru Opening 1 Full', 0, 1),
       (44, 'https://www.youtube.com/embed/KMZBauH47Jo', '▶ Full Metal Alchemist  Brotherhood- Opening 4 HD', 0, 1),
       (46, 'https://www.youtube.com/embed/MQ2wWTAO5B4', 'Beelzebub Opening 2 - HD', 0, 1),
       (47, 'https://www.youtube.com/embed/sk3ZJslK2ks',
        'Durarara opening 1 lyrics [Full Version English Lyrics In Desc.]', 0, 1),
       (48, 'https://www.youtube.com/embed/Pb0N855lp_4', 'High School Of The Dead Op 1 HD', 0, 1),
       (49, 'https://www.youtube.com/embed/KpDstvOgL7s', 'Kore Wa Zombie Desu Ka Opening HD season 1', 0, 1),
       (50, 'https://www.youtube.com/embed/pffz3UqKnWU', 'Mirai Nikki Ending Full (Blood Teller)', 0, 1),
       (51, 'https://www.youtube.com/embed/fPO76Jlnz6c',
        'Coolio - Gangstas Paradise (feat. L.V.) [Official Music Video]', 0, 2),
       (52, 'https://www.youtube.com/embed/6NXnxTNIWkc', '4 Non Blondes - Whats Up (Official Music Video)', 0, 2),
       (53, 'https://www.youtube.com/embed/NR6rgLIBGuQ', 'FORD  \"Home Again\" (Quarantine  Performance)', 0, 2),
       (54, 'https://www.youtube.com/embed/hTWKbfoikeg', 'Nirvana - Smells Like Teen Spirit (Official Music Video)', 0,
        2),
       (55, 'https://www.youtube.com/embed/XFkzRNyygfk', 'Radiohead - Creep', 0, 2),
       (56, 'https://www.youtube.com/embed/ZyhrYis509A', 'Aqua - Barbie Girl (Official Music Video)', 0, 2),
       (57, 'https://www.youtube.com/embed/dhQcHQv0E8s', '\"Dream Killers\" Divine Love Mission in 432hz', 0, 2),
       (58, 'https://www.youtube.com/embed/tAGnKpE4NCI', 'Metallica: Nothing Else Matters (Official Music Video)', 0,
        2),
       (59, 'https://www.youtube.com/embed/XH40eYBHW4s', '\"Filthy Rich\" Since I  (Lyric Music Video) 432hz', 0, 2),
       (60, 'https://www.youtube.com/embed/Y0pdQU87dc8', '(Everything I Do) I Do It For You (Official Music Video)', 0,
        2),
       (61, 'https://www.youtube.com/embed/FxYw0XPEoKE', 'Whitney Houston - I Have Nothing (Official HD Video)', 0, 2),
       (62, 'https://www.youtube.com/embed/vdaT4OcC5_0',
        '\"Someone Like You\"  Sugarhill Gang, Furious5, Mele Mel, Scorpio ft. Barshon', 0, 2),
       (63, 'https://www.youtube.com/embed/1lyu1KKwC74', 'The Verve - Bitter Sweet Symphony (Official Music Video)', 0,
        2),
       (64, 'https://www.youtube.com/embed/9BMwcO6_hyA', 'Bon Jovi - Always (Official Music Video)', 0, 2),
       (65, 'https://www.youtube.com/embed/tNyxEgOIcn8', '\"String Lights\"-  Beneath Velvet Skies  in 432hz', 0, 2),
       (66, 'https://www.youtube.com/embed/xwtdhWltSIg', 'R.E.M. - Losing My Religion (Official Music Video)', 0, 2),
       (67, 'https://www.youtube.com/embed/6Ejga4kJUts', 'The Cranberries - Zombie (Official Music Video)', 0, 2),
       (68, 'https://www.youtube.com/embed/YlUKcNNmywk',
        'Red Hot Chili Peppers - Californication [Official Music Video]', 0, 2),
       (69, 'https://www.youtube.com/embed/C-u5WLJ9Yk4', 'Britney Spears - ...Baby One More Time (Official Video)', 0,
        2),
       (70, 'https://www.youtube.com/embed/7x8wPt8xarE', 'Bryan Adams - Please Forgive Me (Official Music Video)', 0,
        2),
       (71, 'https://www.youtube.com/embed/p2Rch6WvPJE', 'Toni Braxton - Un-Break My Heart (Official HD Video)', 0, 2),
       (72, 'https://www.youtube.com/embed/QNJL6nfu__Q',
        'Michael Jackson - They Don’t Care About Us (Brazil Version) (Official Video)', 0, 2),
       (73, 'https://www.youtube.com/embed/vU05Eksc_iM', 'Oasis - Wonderwall (Official HD Remastered Video)', 0, 2),
       (74, 'https://www.youtube.com/embed/nZXRV4MezEw', 'Cher - Believe [Official Music Video]', 0, 2),
       (75, 'https://www.youtube.com/embed/oKOtzIo-uYw', 'Fugees - Killing Me Softly With His Song (Official Video)', 0,
        2),
       (76, 'https://www.youtube.com/embed/3JWTaaS7LdU', 'Whitney Houston - I Will Always Love You (Official 4K Video)',
        0, 2),
       (77, 'https://www.youtube.com/embed/UrIiLvg58SY', 'Extreme - More Than Words (Official Music Video)', 0, 2),
       (78, 'https://www.youtube.com/embed/gJLIiF15wjQ', 'Spice Girls - Wannabe', 0, 2),
       (79, 'https://www.youtube.com/embed/EK_LN3XEcnw', 'Lou Bega - Mambo No. 5 (A Little Bit of...) (Official Video)',
        0, 2),
       (80, 'https://www.youtube.com/embed/G6Kspj3OO0s', 'The Cranberries - Linger', 0, 2),
       (81, 'https://www.youtube.com/embed/TR3Vdo5etCQ', 'No Doubt - Dont Speak (Official 4K Music Video)', 0, 2),
       (82, 'https://www.youtube.com/embed/nPLV7lGbmT4', 'Santana - Maria Maria ft. The Product G&B (Official Video)',
        0, 2),
       (83, 'https://www.youtube.com/embed/LKaXY4IdZ40',
        'Whitney Houston, Mariah Carey - When You Believe (Official HD Video)', 0, 2),
       (84, 'https://www.youtube.com/embed/CD-E-LDc384', 'Metallica: Enter Sandman (Official Music Video)', 0, 2),
       (85, 'https://www.youtube.com/embed/p47fEXGabaY', 'Ricky Martin - Livin La Vida Loca', 0, 2),
       (86, 'https://www.youtube.com/embed/FrLequ6dUdM', 'TLC - No Scrubs (Official Video)', 0, 2),
       (87, 'https://www.youtube.com/embed/JkK8g6FMEXE', 'Aerosmith - I Dont Want to Miss a Thing (Official HD Video)',
        0, 2),
       (88, 'https://www.youtube.com/embed/NvR60Wg9R7Q', 'Bon Jovi - Bed Of Roses (Official Music Video)', 0, 2),
       (89, 'https://www.youtube.com/embed/xat1GVnl8-k', 'Bloodhound Gang - The Bad Touch (Official Video)', 0, 2),
       (90, 'https://www.youtube.com/embed/9X_ViIPA-Gc',
        'Meat Loaf - Id Do Anything For Love (But I Wont Do That) (Official Music Video)', 0, 2),
       (91, 'https://www.youtube.com/embed/EScLmWJs82I', 'Mr.President - Coco Jamboo (1996) [Official Video]', 0, 2),
       (92, 'https://www.youtube.com/embed/NKMtZm2YuBE',
        'Puff Daddy [feat. Faith Evans & 112] - Ill Be Missing You (Official Music Video)', 0, 2),
       (93, 'https://www.youtube.com/embed/j8fHNdrZTSI',
        'Céline Dion - Its All Coming Back to Me Now (Official Extended Remastered HD Video)', 0, 2),
       (94, 'https://www.youtube.com/embed/L_jWHffIx5E', 'Smash Mouth - All Star', 0, 2),
       (95, 'https://www.youtube.com/embed/fregObNcHC8', 'Nirvana - The Man Who Sold The World (MTV Unplugged)', 0, 2),
       (96, 'https://www.youtube.com/embed/7iNbnineUCI',
        'The Offspring - The Kids Arent Alright (Official Music Video)', 0, 2),
       (97, 'https://www.youtube.com/embed/ZJL4UGSbeFg',
        'Shania Twain - Man! I Feel Like A Woman (Official Music Video)', 0, 2),
       (98, 'https://www.youtube.com/embed/XAi3VTSdTxU', 'Michael Jackson - Earth Song (Official Video)', 0, 2),
       (99, 'https://www.youtube.com/embed/zRIbf6JqkNc', 'Guns N Roses - Dont Cry', 0, 2),
       (100, 'https://www.youtube.com/embed/6Whgn_iE5uc', 'Santana - Smooth ft. Rob Thomas (Official Video)', 0, 2),
       (101, 'https://www.youtube.com/embed/tollGa3S0o8', 'Taylor Swift - All Too Well: The Short Film', 0, 4),
       (102, 'https://www.youtube.com/embed/MxjrsDV8Aeo',
        'CKay - Love Nwantiti (ft. ElGrandeToto) [North African Remix] [Official Music Video]', 0, 4),
       (103, 'https://www.youtube.com/embed/dNCWe_6HAM8', 'LISA - EXCLUSIVE PERFORMANCE VIDEO', 0, 4),
       (104, 'https://www.youtube.com/embed/vPwaXytZcgI', 'TWICE “SCIENTIST” M/V', 0, 4),
       (105, 'https://www.youtube.com/embed/gvyUuxdRdR4',
        'Raataan Lambiyan – Official Video | Shershaah | Sidharth – Kiara | Tanishk B| Jubin Nautiyal  |Asees', 0, 4),
       (106, 'https://www.youtube.com/embed/y8trd3gjJt0', 'Farruko - Pepas (Official Video)', 0, 4),
       (107, 'https://www.youtube.com/embed/1--qqQrimMA',
        'Dil Galti Kar Baitha Hai | Meet Bros Ft. Jubin Nautiyal | Mouni Roy | Manoj M | Ashish P | Bhushan K', 0, 4),
       (108, 'https://www.youtube.com/embed/UTHLKHL_whs', 'Lil Nas X, Jack Harlow - INDUSTRY BABY (Official Video)', 0,
        4),
       (109, 'https://www.youtube.com/embed/kTJczUoc26U', 'The Kid LAROI, Justin Bieber - STAY (Official Video)', 0, 4),
       (110, 'https://www.youtube.com/embed/RgzLnmTaCAU',
        'Kusu Kusu Song Ft Nora Fatehi | Satyameva Jayate 2 | John A, Divya K | Tanishk B, Zahrah Khan, Dev N', 0, 4),
       (111, 'https://www.youtube.com/embed/l9u8Zb4fY1c',
        'Tip Tip Song: Sooryavanshi | Akshay Kumar, Katrina Kaif | Udit N, Alka Y, Tanishk | Rohit Shetty', 0, 4),
       (112, 'https://www.youtube.com/embed/ksY3wb4vtlA',
        'Badshah - Jugnu (Official Video) | Nikhita Gandhi | Akanksha Sharma', 0, 4),
       (113, 'https://www.youtube.com/embed/Gt9WzC4WDEA',
        'Naatu Naatu Lyrical (Telugu) - RRR - NTR, Ram Charan | M M Keeravaani | SS Rajamouli |Rahul,Bhairava', 0, 4),
       (114, 'https://www.youtube.com/embed/awkkyBH2zEo', 'LISA - LALISA M/V', 0, 4),
       (115, 'https://www.youtube.com/embed/U3ASj1L6_sY', 'Adele - Easy On Me (Official Video)', 0, 4),
       (116, 'https://www.youtube.com/embed/f5_wn8mexmM', 'TWICE \"The Feels\" M/V', 0, 4),
       (117, 'https://www.youtube.com/embed/Q-GOFPM01d0',
        'Na Ja (Official Video) Pav Dharia | SOLO | New Punjabi Songs 2018 | White Hill Music', 0, 4),
       (118, 'https://www.youtube.com/embed/TNIbXs_iNq8',
        'Paulo Pires, MC Danny, Marcynho Sensação - Ameaça (Videoclipe Oficial)', 0, 4),
       (119, 'https://www.youtube.com/embed/w4ClQO0FFQg',
        'Param Sundari -Official Video | Mimi | Kriti Sanon, Pankaj Tripathi | @A. R. Rahman| Shreya |Amitabh', 0, 4),
       (120, 'https://www.youtube.com/embed/XXYlFuWEuKI', 'The Weeknd - Save Your Tears (Official Music Video)', 0, 4),
       (121, 'https://www.youtube.com/embed/F5tSoaJ93ac',
        'Imagine Dragons & JID - Enemy (from the series Arcane League of Legends) | Official Music Video', 0, 4),
       (122, 'https://www.youtube.com/embed/WMweEpGlu_U', 'BTS (방탄소년단) Butter Official MV', 0, 4),
       (123, 'https://www.youtube.com/embed/5UMCrq-bBCg',
        'Taylor Swift ft. Chris Stapleton - I Bet You Think About Me (Taylors Version) (Officia...', 0, 4),
       (124, 'https://www.youtube.com/embed/C70GJYVoZ4Y',
        'Saami Saami (Telugu) Lyrical | Pushpa Songs | Allu Arjun, Rashmika | DSP | Mounika Yadav | Sukumar', 0, 4),
       (125, 'https://www.youtube.com/embed/UDVr3ab3NVM', 'Marília Mendonça & Maiara e Maraisa - Todo Mundo Menos Você',
        0, 4),
       (126, 'https://www.youtube.com/embed/ey6H_cBy-OQ',
        'Zé Felipe e MC Danny - Toma Toma Vapo Vapo (Videoclipe Oficial)', 0, 4),
       (127, 'https://www.youtube.com/embed/sCbbMZ-q4-I',
        'Lut Gaye (Full Song) Emraan Hashmi, Yukti | Jubin N, Tanishk B, Manoj M | Bhushan K | Radhika-Vinay', 0, 4),
       (128, 'https://www.youtube.com/embed/0f3ZHuC-l0c', 'TINI, L-Gante - Bar (Official Video)', 0, 4),
       (129, 'https://www.youtube.com/embed/e-CEd6xrRQc', 'ROSALÍA - LA FAMA (Official Video) ft. The Weeknd', 0, 4),
       (130, 'https://www.youtube.com/embed/I8va_ChEIAI',
        'Marília Mendonça & Maiara e Maraisa - Esqueça-me Se For Capaz', 0, 4),
       (131, 'https://www.youtube.com/embed/ua-bwaciKAM',
        'ले लो पुदीना - आ गया #Pawan Singh का तहलका मचाने वाला पावरफुल वीडियो - Pudina Ae Haseena - Ft. Maahi', 0, 4),
       (132, 'https://www.youtube.com/embed/s9AICwTKgOg',
        'Chatak Matak (Official Video) | Sapna Choudhary | Renuka Panwar | New Haryanvi Songs Haryanavi 2021', 0, 4),
       (133, 'https://www.youtube.com/embed/2V_uAAAH-_Q', 'Doja Cat - Woman (Visualizer)', 0, 4),
       (134, 'https://www.youtube.com/embed/7mbNrE7tdXQ',
        '#VIDEO | #Ankush Raja | अईहा ससुरारी जीजा जी | #Shilpi Raj | #Shilpi Raghwani | Bhojpuri Chhath Geet', 0, 4),
       (135, 'https://www.youtube.com/embed/GG7fLOmlhYg',
        'Bruno Mars, Anderson .Paak, Silk Sonic - Smokin Out The Window [Official Music Video]', 0, 4),
       (136, 'https://www.youtube.com/embed/orJSJGHjBLI', 'Ed Sheeran - Bad Habits [Official Video]', 0, 4),
       (137, 'https://www.youtube.com/embed/WPdWvnAAurg', 'aespa 에스파 Savage MV', 0, 4),
       (138, 'https://www.youtube.com/embed/BGkL2Pq-g3A',
        'Muslim -Etnaset  مسلم - اتنسيت (الاغنية الرسمية لفيلم عروستي)', 0, 4),
       (139, 'https://www.youtube.com/embed/5GJWxDKyk3A', 'Billie Eilish - Happier Than Ever (Official Music Video)', 0,
        4),
       (140, 'https://www.youtube.com/embed/mRD0-GxqHVo', 'Glass Animals - Heat Waves (Official Video)', 0, 4),
       (141, 'https://www.youtube.com/embed/SXX_Y7v89Mk',
        'Official Video - ककरी भईल बा कमरिया लपक के 2 - Samar Singh - Shilpi Raj - Kakri Bhayil Ba Kamriya 2', 0, 4),
       (142, 'https://www.youtube.com/embed/Xh89WD3CBEU',
        'I JUST WANNA PEN FAN YOU DAI BOR ? - สิงโต นำโชค (อ้ายจัสวอนน่าเป็นแฟนยูได้บ่ ?)  [Official MV]', 0, 4),
       (143, 'https://www.youtube.com/embed/RljdPIfnp0U', 'Maluma - Sobrio (Official Video)', 0, 4),
       (144, 'https://www.youtube.com/embed/tC1L9qjOzXs',
        'Ranjha - Full Song|Shershaah|Sidharth -Kiara|B Praak|Jasleen Royal|Anvita Dutt', 0, 4),
       (145, 'https://www.youtube.com/embed/VaNYrskkWBk', 'DeepSystem - Hey My Love (new video)', 0, 4),
       (146, 'https://www.youtube.com/embed/dI3xkL7qUAc', 'Doja Cat - Need to Know (Official Video)', 0, 4),
       (147, 'https://www.youtube.com/embed/ia5CdcuqSWk',
        'Terre Pyaar Mein (Official Video) | Surroor 2021 The Album | Himesh Reshammiya | Shivangi Verma', 0, 4),
       (148, 'https://www.youtube.com/embed/qod03PVTLqk',
        'Elton John, Dua Lipa - Cold Heart (PNAU Remix) (Official Video)', 0, 4),
       (149, 'https://www.youtube.com/embed/Il0S8BoucSA', 'Ed Sheeran - Shivers [Official Video]', 0, 4),
       (150, 'https://www.youtube.com/embed/g2BzGJnNvEw', 'Grupo Firme -  Ya Superame - (Official Video)', 0, 4);
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK
TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-25 15:59:11