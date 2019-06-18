-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: stu
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `衣柜`
--

DROP TABLE IF EXISTS `衣柜`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `衣柜` (
  `品牌` varchar(32) DEFAULT NULL,
  `类型` varchar(32) DEFAULT NULL,
  `价格` float DEFAULT NULL,
  `颜色` char(1) DEFAULT NULL,
  `喜爱程度` char(1) DEFAULT NULL,
  `描述` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `衣柜`
--

LOCK TABLES `衣柜` WRITE;
/*!40000 ALTER TABLE `衣柜` DISABLE KEYS */;
/*!40000 ALTER TABLE `衣柜` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `author` varchar(32) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (2,'我不','大冰','2017-04-06'),(3,'呐喊','鲁迅','1989-10-21'),(4,'围城','钱钟书','1965-02-01');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
INSERT INTO `buy` VALUES (10040,'明天','2019-06-17 11:38:20');
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `sex` enum('男','女') DEFAULT NULL,
  `score` float unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'贾丽丽',12,NULL,99),(3,'温雯',8,NULL,90),(4,'王磊',9,NULL,80);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_person`
--

DROP TABLE IF EXISTS `game_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_person` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) NOT NULL,
  `WORK` enum('法师','射手','刺客') NOT NULL,
  `SKILL` set('冷却','眩晕','飞行') DEFAULT NULL,
  `ATTACK` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_person`
--

LOCK TABLES `game_person` WRITE;
/*!40000 ALTER TABLE `game_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sport` (
  `id` int(11) DEFAULT NULL,
  `athlete` varchar(16) NOT NULL,
  `sign_date` datetime DEFAULT NULL,
  `score` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES (10036,'刘翔','2017-05-04 10:12:56','02:45:56'),(10026,'王小波','2019-06-17 11:27:11','02:45:56'),(10038,'赵瑞','2019-06-17 00:00:00','02:15:56'),(10040,'明天','2019-06-17 00:00:00','02:53:56'),(10040,'明天','2019-06-17 11:29:10','02:53:56');
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_hobby`
--

DROP TABLE IF EXISTS `stu_hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_hobby` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) NOT NULL,
  `HOBBY` set('唱歌','跳舞','钢琴') DEFAULT NULL,
  `COURSE` char(1) DEFAULT NULL,
  `PRICE` decimal(6,2) DEFAULT NULL,
  `COMMENT` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_hobby`
--

LOCK TABLES `stu_hobby` WRITE;
/*!40000 ALTER TABLE `stu_hobby` DISABLE KEYS */;
INSERT INTO `stu_hobby` VALUES (1,' 张山','唱歌,跳舞','A',6668.00,'好');
/*!40000 ALTER TABLE `stu_hobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) NOT NULL,
  `AGE` int(10) unsigned NOT NULL,
  `SEX` enum('男','女') DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `SCORE` float DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'李金丽',22,'女',NULL,23),(2,'贾丽丽',21,'女',NULL,86),(3,'王磊',23,'男',NULL,85),(5,'张山',22,'男',NULL,85),(6,'温雯',22,'女',NULL,88);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 14:23:39
