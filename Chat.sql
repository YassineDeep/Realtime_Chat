-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ajax
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.13.10.1

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
-- Table structure for table `IM`
--

DROP TABLE IF EXISTS `IM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IM` (
  `MgsID` int(11) NOT NULL AUTO_INCREMENT,
  `FromID` int(11) NOT NULL,
  `ToID` int(11) NOT NULL,
  `mgs` text,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`MgsID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IM`
--

LOCK TABLES `IM` WRITE;
/*!40000 ALTER TABLE `IM` DISABLE KEYS */;
INSERT INTO `IM` VALUES (12,1,2,'Hello , Are you there ?? ','2014-06-08 03:43:25'),(13,1,2,'Talk to me ... send a msg , NOW','2014-06-08 03:43:40'),(14,2,1,'	\n	No','2014-06-08 03:43:44'),(15,2,1,'	\n	No\n','2014-06-08 03:43:57'),(16,1,2,'Do you see what it ','2014-06-08 03:44:01'),(17,2,1,'a\n','2014-06-08 03:44:05'),(18,2,1,'Yes\n','2014-06-08 03:44:13'),(19,2,1,'Yes\n','2014-06-08 03:44:39'),(20,1,2,'??? ????? ???\n','2014-06-08 03:45:02'),(21,2,1,'3aaa\n','2014-06-08 03:45:15'),(22,2,1,'3aaa\n\n\n','2014-06-08 03:45:23'),(23,1,2,'dah a7san wla Facebook massenger ??','2014-06-08 03:45:27'),(24,2,1,'FeeH Fr2 Fi aL Sor3aT Sydii aL R2ees\n\n\n','2014-06-08 03:45:52'),(25,2,1,'FeeH Fr2 Fi aL Sor3aT Sydii aL R2ees\n\n\n','2014-06-08 03:45:55'),(26,2,1,'FeeH Fr2 Fi aL Sor3aT Sydii aL R2ees\n\n\n','2014-06-08 03:45:57'),(27,2,1,'FeeH Fr2 Fi aL Sor3aT Sydii aL R2ees\n\n\n','2014-06-08 03:45:58'),(28,1,2,'tap wait w e3ml refresh w shoof el farQ ','2014-06-08 03:46:13'),(29,1,2,'e3ml refresh NOW ','2014-06-08 03:46:57'),(30,1,2,'keda 7elw','2014-06-08 03:47:15'),(31,1,2,'ma trod yad ','2014-06-08 03:47:31'),(32,2,1,'aYwn','2014-06-08 03:47:38'),(33,2,1,'aYwn','2014-06-08 03:47:42'),(34,1,2,'3amlat refresh ?? ','2014-06-08 03:47:52'),(35,2,1,'aYwn','2014-06-08 03:48:29'),(36,2,1,'aYwn','2014-06-08 03:48:33'),(37,2,1,'aYwn','2014-06-08 03:48:36'),(38,1,2,'3amlat refresh ?? ','2014-06-08 03:49:25'),(39,2,1,'Sreeeeeeee3 ','2014-06-08 03:50:07'),(40,1,2,'keda sari3\n ?? ','2014-06-08 03:50:10'),(41,2,1,'Sreeeeeeee3 ','2014-06-08 03:50:11'),(42,2,1,'Sreeeeeeee3 ','2014-06-08 03:50:17'),(43,1,2,'mota2ked !! ','2014-06-08 03:50:18'),(44,2,1,'aH Wlmos7f ','2014-06-08 03:50:27'),(45,2,1,'aH Wlmos7f ','2014-06-08 03:50:31'),(46,2,1,'aH oXem BllaH ','2014-06-08 03:50:45'),(47,2,1,'WllHi Mna Raded','2014-06-08 03:50:59'),(48,2,1,'Hahahahahahaha ','2014-06-08 03:51:11'),(49,1,2,'mota2ked !! ','2014-06-08 03:52:14');
/*!40000 ALTER TABLE `IM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `author` varchar(96) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote`
--

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
INSERT INTO `quote` VALUES (1,1,'Don\'t cry because it\'s over, smile because it happened.','Dr. Seuss','life'),(2,1,'You only live once, but if you do it right, once is enough.','Mae West','life'),(3,1,'To live is the rarest thing in the world. Most people exist, that is all.','Oscar Wilde','life'),(4,1,'I may not have gone where I intended to go, but I think I have ended up where I needed to be.','Douglas Adams','life'),(5,1,'A friend is someone who knows all about you and still loves you.','Elbert Hubbard','friend,life'),(6,1,'If you judge people, you have no time to love them.','Mother Teresa','love'),(7,1,'We have nothing to fear but fear itself','John F Kennedy',''),(8,1,'If a man does his best, what else is there?','Gen. George S. Patton','life,victory'),(9,1,'Yesterday\'s the past, tomorrow\'s the future, but today is a gift. That\'s why it\'s called the present.','Bil Keane','life'),(10,2,'Normal; see abnormal','yassine','database'),(11,2,'Hello From ajax','Deeps','ajax'),(12,2,'Hello from France','Francisco ','internationals'),(13,2,'Hello from France','Francisco ','internationals'),(14,2,'Hello From Ajax with jQuery','Yassine','ajax'),(15,2,'Laravel PHP Framework','Yassine','Laravel'),(16,2,'Laravel PHP Framework','Yassine',''),(17,2,'Yassine','yassine','yassine'),(18,2,'Yassine','yassine','yassine'),(19,2,'Yassine','yassine','yassine'),(20,2,'yassin','yasine','yasine'),(21,2,'yassin','yasine','yasine'),(22,2,'yassin','yassin','yassine'),(23,2,'yassin','yassin','yassine'),(24,2,'yassin','yassin','yassine'),(25,2,'Hello ','hello','hello'),(26,2,'Hello ','hello','hello'),(27,2,'yassine abdul-rahman','yassine','yassine'),(28,2,'yassine','yassine','yassine'),(29,2,'Yassine Abdul-Rahman Yassine','yassine','yassine'),(30,2,'hh\n','sdsa',''),(31,2,'Yassine ','Yassine','c');
/*!40000 ALTER TABLE `quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(128) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Walter Wimberly','demo','demo'),(2,'deeb','deeb','deeb');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-08  8:22:51
