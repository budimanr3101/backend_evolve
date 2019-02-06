-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for osx10.6 (i386)
--
-- Host: p2d0untihotgr5f6.cbetxkdyhwsb.us-east-1.rds.amazonaws.com    Database: clokepjctrcu3c4e
-- ------------------------------------------------------
-- Server version	10.1.19-MariaDB

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `duration` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `status` enum('unpaid','paid') COLLATE utf8_unicode_ci NOT NULL,
  `tamu` int(11) NOT NULL,
  `kamar` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_hotel` (`id_hotel`),
  KEY `id_room` (`id_room`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`id_hotel`) REFERENCES `hotel_detail` (`id`),
  CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`id_room`) REFERENCES `hotel_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,'2019-01-01','2019-01-02',2,5000000,1,1,'paid',2,1),(2,1,'2019-01-31','2019-02-02',2,5000000,1,1,'unpaid',2,1),(3,1,'2019-02-01','2019-02-10',10,5000000,1,1,'unpaid',2,1);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facility_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (1,'Wifi','wifi.png'),(2,'AC','ac.png'),(3,'Parking','parking.png'),(4,'Elevator','elevator.png'),(5,'Swimming Pool','swimmingpool.png'),(6,'Gym','gym.png');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `features_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (5,'hotel','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" width=\"16\" height=\"20\" viewBox=\"0 0 16 16\" fill=\"#235D9F\" stroke=\"currentColor\" stroke-linecap=\"round\" wtx-context=\"0A3CD08D-60DC-4016-8246-D71E52114CF2\"><path fill-rule=\"evenodd\" d=\"M10,5 L13.9970707,5 C14.5509732,5 15,5.4556644 15,5.99539757 L15,15 L9,15 L1,15 L1,2.00684547 C1,1.45078007 1.4463114,1 1.99754465,1 L9.00245535,1 C9.55338405,1 10,1.44994876 10,2.00684547 L10,5 Z M4,12 L4,15 L7,15 L7,12 L4,12 Z M3,4 C3,4.55613518 3.44762906,5 3.99980749,5 L7.00019251,5 C7.55628335,5 8,4.55228475 8,4 C8,3.44386482 7.55237094,3 7.00019251,3 L3.99980749,3 C3.44371665,3 3,3.44771525 3,4 Z M3,8 C3,8.55613518 3.44762906,9 3.99980749,9 L7.00019251,9 C7.55628335,9 8,8.55228475 8,8 C8,7.44386482 7.55237094,7 7.00019251,7 L3.99980749,7 C3.44371665,7 3,7.44771525 3,8 Z M11,8 C11,8.55613518 11.4477153,9 12,9 C12.5561352,9 13,8.55228475 13,8 C13,7.44386482 12.5522847,7 12,7 C11.4438648,7 11,7.44771525 11,8 Z M11,11 C11,11.5561352 11.4477153,12 12,12 C12.5561352,12 13,11.5522847 13,11 C13,10.4438648 12.5522847,10 12,10 C11.4438648,10 11,10.4477153 11,11 Z\"/></svg>','/hotel'),(6,'pesawat','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" width=\"16\" height=\"20\" viewBox=\"0 0 16 16\" fill=\"#30C5F7\" stroke=\"currentColor\" stroke-linecap=\"round\" wtx-context=\"8F08F48E-E6A8-45CC-BA21-2A3AAD11D2FB\"><path d=\"M7.97519062,3.89887963 L9.29787304,4.16341611 L12.5147829,1.36408588 C13.1061887,0.849449082 14.0084562,0.88578563 14.5615507,1.43888015 C15.115568,1.99289744 15.1490535,2.89645793 14.6363449,3.48564789 L11.8370147,6.70255777 L12.1015995,8.0254816 C12.3855429,7.83462442 12.7707202,7.86198761 13.0214373,8.11270469 C13.3049644,8.39623173 13.3072037,8.85368053 13.0166276,9.14425665 L12.4405667,9.72031757 L13.2199838,13.6174035 C13.3846893,14.4409306 12.2524962,14.840115 11.8642747,14.0953943 L9.22619986,9.03480726 L7.3146526,10.7330129 C7.17480341,10.8449531 6.97654708,10.9616287 6.7182918,11.0354403 C6.66582359,11.0504362 6.61309154,11.0627362 6.56025805,11.072242 L6.56025805,14.2731581 C6.56025805,15.0095007 5.59053285,15.278099 5.21168772,14.6466905 L3.76495746,12.2354734 L1.35374034,10.7887431 C0.722331805,10.409898 0.990930136,9.44017277 1.7272727,9.44017277 L4.92818886,9.44017277 C4.93769465,9.38733928 4.9499946,9.33460722 4.96499048,9.28213902 C5.0388021,9.02388374 5.15547775,8.8256274 5.29159003,8.65712805 L6.96538742,6.77410785 L1.90503647,4.13615614 C1.16031582,3.74793462 1.55950022,2.61574155 2.38302735,2.78044697 L6.28011324,3.55986415 L6.85617417,2.98380322 C7.14235754,2.69761985 7.60222239,2.69348977 7.88772612,2.9789935 C8.13710273,3.22837011 8.16887219,3.61229444 7.97519062,3.89887963 L7.97519062,3.89887963 Z\"/></svg>','/pesawat'),(7,'kereta','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" width=\"16\" height=\"20\" viewBox=\"0 0 16 16\" fill=\"#FCA000\" stroke=\"currentColor\" stroke-linecap=\"round\" wtx-context=\"5B583C37-EA23-45D8-8889-B5DC4EE6579C\"><path fill-rule=\"evenodd\" d=\"M14.115625,13.1258912 C14.1732728,13.229332 14.1739484,13.2305477 14.226059,13.3243125 C14.2631769,13.3907155 14.2899481,13.4372681 14.3121937,13.4738907 C14.2943365,13.4444927 14.2879053,13.43618 14.1300289,13.3452918 C14.3078143,13.4476415 14.4498209,13.6021924 14.5367912,13.787986 L14.9056843,14.5760473 C15.1398269,15.076243 14.9241483,15.6715417 14.4239527,15.9056843 C13.923757,16.1398269 13.3284583,15.9241483 13.0943157,15.4239527 L12.8064451,14.8089788 C12.738062,14.7269874 12.6750901,14.6311562 12.6028333,14.5122005 C12.5655328,14.4507931 12.5281753,14.385832 12.4802876,14.3001619 C12.4231436,14.197359 12.4231436,14.197359 12.3690678,14.1003175 C12.3482607,14.0632293 12.3293582,14.0300076 12.3119573,14 L3.68773969,14 C3.67035481,14.0299839 3.65147616,14.0631701 3.63071263,14.1001913 C3.57667547,14.1971964 3.57667547,14.1971964 3.5195805,14.2999661 C3.47169466,14.3856823 3.43440542,14.4505705 3.39716163,14.5119348 C3.32488323,14.6310235 3.26194009,14.726904 3.19358435,14.8089158 L2.90568434,15.4239527 C2.67154174,15.9241483 2.07624297,16.1398269 1.57604732,15.9056843 C1.07585167,15.6715417 0.86017306,15.076243 1.09431566,14.5760473 L1.46320877,13.787986 C1.55017911,13.6021924 1.69218574,13.4476415 1.8699711,13.3452918 C1.71178684,13.4363573 1.70542289,13.4445907 1.68742439,13.4742457 C1.70966115,13.4376076 1.73641437,13.3910535 1.77356851,13.3245471 C1.82573589,13.2306298 1.82636639,13.2294947 1.88418891,13.1257048 C1.33802911,12.5821377 1,11.8294387 1,10.9966488 L1,5.99818512 C1,2.68547895 3.68277588,0 6.99818512,0 L9.00181488,0 C12.314521,0 15,2.68277588 15,5.99818512 L15,10.9966488 C15,11.8288292 14.6621128,12.5819586 14.115625,13.1258912 Z M3,5.0093689 L3,6.9906311 C3,7.55664682 3.44565467,8 3.99539757,8 L12.0046024,8 C12.5443356,8 13,7.54809015 13,6.9906311 L13,5.0093689 C13,4.44335318 12.5543453,4 12.0046024,4 L3.99539757,4 C3.4556644,4 3,4.45190985 3,5.0093689 Z M4.5,12 C5.32842712,12 6,11.3284271 6,10.5 C6,9.67157288 5.32842712,9 4.5,9 C3.67157288,9 3,9.67157288 3,10.5 C3,11.3284271 3.67157288,12 4.5,12 Z M11.5,12 C12.3284271,12 13,11.3284271 13,10.5 C13,9.67157288 12.3284271,9 11.5,9 C10.6715729,9 10,9.67157288 10,10.5 C10,11.3284271 10.6715729,12 11.5,12 Z\"/></svg>','/kereta'),(8,'tiket bus & travel','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"14\" height=\"20\" viewBox=\"0 0 14 16\" fill=\"#00BE5A\" stroke-width=\"0\" stroke=\"currentColor\" stroke-linecap=\"round\" wtx-context=\"C6FFB541-AFBE-43E2-80DD-6BE56FD14260\"><g fill=\"none\" fill-rule=\"evenodd\" transform=\"translate(-1)\"><rect width=\"16\" height=\"20\"/><path fill=\"#00BE5A\" d=\"M14,8 L14,12 C14,12.7402824 13.5978014,13.3866262 13,13.7324356 L13,15 C13,15.5522847 12.5522847,16 12,16 C11.4477153,16 11,15.5522847 11,15 L11,14 L5,14 L5,15 C5,15.5522847 4.55228475,16 4,16 C3.44771525,16 3,15.5522847 3,15 L3,13.7324356 C2.40219863,13.3866262 2,12.7402824 2,12 L2,8 C1.44771525,8 1,7.55228475 1,7 L1,6 C1,5.44771525 1.44771525,5 2,5 L2,3 C2,1.34314575 3.34314575,3.04359188e-16 5,0 L11,0 C12.6568542,-3.04359188e-16 14,1.34314575 14,3 L14,5 C14.5522847,5 15,5.44771525 15,6 L15,7 C15,7.55228475 14.5522847,8 14,8 Z M11,10 C10.4477153,10 10,10.4477153 10,11 C10,11.5522847 10.4477153,12 11,12 L12,12 C12.5522847,12 13,11.5522847 13,11 C13,10.4477153 12.5522847,10 12,10 L11,10 Z M4,10 C3.44771525,10 3,10.4477153 3,11 C3,11.5522847 3.44771525,12 4,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L4,10 Z M5,2 C4.44771525,2 4,2.44771525 4,3 L4,8 C4,8.55228475 4.44771525,9 5,9 L11,9 C11.5522847,9 12,8.55228475 12,8 L12,3 C12,2.44771525 11.5522847,2 11,2 L5,2 Z\"/></g></svg>','/tiketbus&travel'),(9,'transportasi bandara','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"24\" height=\"20\" viewBox=\"0 0 24 24\" fill=\"#6DD3CE\" stroke-width=\"0\" stroke=\"currentColor\" stroke-linecap=\"round\" wtx-context=\"6A386528-222E-4A76-A2A9-0B140B4EC0CF\"><g fill=\"none\" fill-rule=\"evenodd\"><path d=\"M0 0h24v24H0z\"/><path stroke=\"#6DD3CE\" stroke-linecap=\"round\" stroke-width=\"2\" d=\"M2 21v1M12 21v1\"/><path fill=\"#6DD3CE\" fill-rule=\"nonzero\" d=\"M1.282 16h11.436c.446 0 .607.046.77.134.163.087.291.215.378.378.088.163.134.324.134.77v2.436c0 .446-.046.607-.134.77a.909.909 0 0 1-.378.378c-.163.088-.324.134-.77.134H1.282c-.446 0-.607-.046-.77-.134a.909.909 0 0 1-.378-.378c-.088-.163-.134-.324-.134-.77v-2.436c0-.446.046-.607.134-.77a.909.909 0 0 1 .378-.378c.163-.088.324-.134.77-.134zM3 20a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm8 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z\"/><path stroke=\"#6DD3CE\" stroke-linecap=\"round\" stroke-width=\"2\" d=\"M1 15h2v-2a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2h2M17 12v10\"/><path fill=\"#6DD3CE\" fill-rule=\"nonzero\" d=\"M13.846 0h6.308c1.337 0 1.822.14 2.311.4.49.262.873.646 1.134 1.135.262.489.401.974.401 2.31v4.31c0 1.336-.14 1.821-.4 2.31a2.726 2.726 0 0 1-1.135 1.134c-.489.262-.974.401-2.31.401h-6.31c-1.336 0-1.821-.14-2.31-.4a2.726 2.726 0 0 1-1.134-1.135c-.262-.489-.401-.974-.401-2.31v-4.31c0-1.336.14-1.821.4-2.31A2.726 2.726 0 0 1 11.536.4c.489-.262.974-.401 2.31-.401zM22 5h-3l-3-4h-1l1 4h-2l-1-1h-1v4h1l1-1h2l-1 4h1l3-4h3a1 1 0 0 0 0-2z\"/></g></svg>','/transportasibandara'),(10,'pesawat + hotel','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" width=\"16\" height=\"20\" viewBox=\"0 0 16 16\" fill=\"#931682\" stroke=\"currentColor\" stroke-linecap=\"round\" wtx-context=\"437DFDC9-6D8C-4A4F-93B4-0E64E083021E\"><g fill=\"none\" fill-rule=\"evenodd\"><rect width=\"16\" height=\"16\"/><path fill=\"#931682\" d=\"M2,16 L0,16 L0,7 L4.5,7 L5,6 L4,4 L6,4 L7,5 L9,5 L8,0 L9,0 L12,5 L15.0046024,5 C15.5543453,5 16,5.44386482 16,6 C16,6.55228475 15.5443356,7 15.0046024,7 L7,7 L6,8 L6,9 L7,9 C7.58171161,9 8.10541836,9.24913327 8.47087756,9.64561218 L9,7 L12,7 L9,12 L9,16 L4,16 L4,14 L2,14 L2,16 Z M1,12 L1,13 L5,13 L5,12 L1,12 Z M6,14 L6,15 L8,15 L8,14 L6,14 Z M6,12 L6,13 L8,13 L8,12 L6,12 Z M1,10 L1,11 L5,11 L5,10 L1,10 Z M2,8 L2,9 L4,9 L4,8 L2,8 Z\"/></g></svg>','/pesawathotel'),(11,'aktifitas & rekreasi','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" width=\"16\" height=\"20\" viewBox=\"0 0 16 16\" fill=\"#1ED491\" stroke=\"currentColor\" stroke-linecap=\"round\" wtx-context=\"61318B0F-F8A3-4F90-8B4B-5BF873F62EB4\"><path fill-rule=\"evenodd\" d=\"M0,7 L0,4.99201702 C0,3.8918564 0.894513756,3 1.99406028,3 L14.0059397,3 C15.1072288,3 16,3.90017617 16,4.99201702 L16,7 L15.5,7 C14.6657972,7 14,7.6719457 14,8.50083274 L14,9.49916726 C14,10.3214545 14.6715729,11 15.5,11 L16,11 L16,12.007983 C16,13.1081436 15.1054862,14 14.0059397,14 L1.99406028,14 C0.892771196,14 0,13.0998238 0,12.007983 L0,11 L0.5,11 C1.33420277,11 2,10.3280543 2,9.49916726 L2,8.50083274 C2,7.67854548 1.32842712,7 0.5,7 L-5.55111512e-17,7 Z M10,3 L12,3 L12,14 L10,14 L10,3 Z M3,7 C3,7.55613518 3.44762906,8 3.99980749,8 L7.00019251,8 C7.55628335,8 8,7.55228475 8,7 C8,6.44386482 7.55237094,6 7.00019251,6 L3.99980749,6 C3.44371665,6 3,6.44771525 3,7 Z M3,10 C3,10.5561352 3.44762906,11 3.99980749,11 L7.00019251,11 C7.55628335,11 8,10.5522847 8,10 C8,9.44386482 7.55237094,9 7.00019251,9 L3.99980749,9 C3.44371665,9 3,9.44771525 3,10 Z\"/></svg>','/aktifitas'),(12,'tagihan dan isi ulang','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" width=\"16\" height=\"20\" viewBox=\"0 0 16 16\" fill=\"#073E68\" stroke=\"currentColor\" stroke-linecap=\"round\" wtx-context=\"E16D9A58-4DCB-4864-8675-D874266400FF\"><g fill=\"none\" fill-rule=\"evenodd\"><rect width=\"16\" height=\"16\"/><path fill=\"#073E68\" fill-rule=\"nonzero\" d=\"M14 2v11.5a.5.5 0 0 1-.5.5.5.5 0 0 0-.5.5.5.5 0 1 1-1 0 .5.5 0 1 0-1 0 .5.5 0 1 1-1 0 .5.5 0 1 0-1 0 .5.5 0 1 1-1 0 .5.5 0 1 0-1 0 .5.5 0 1 1-1 0 .5.5 0 1 0-1 0 .5.5 0 1 1-1 0 .5.5 0 1 0-1 0 .5.5 0 1 1-1 0V2a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1zm-3 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2zM5 4a1 1 0 1 0 0 2h3a1 1 0 1 0 0-2H5zm6 5a1 1 0 1 0 0-2 1 1 0 0 0 0 2zM5 7a1 1 0 1 0 0 2h3a1 1 0 1 0 0-2H5zm3 3a1 1 0 0 0 0 2h3a1 1 0 0 0 0-2H8z\"/></g></svg>','/tagihan');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footers_about`
--

DROP TABLE IF EXISTS `footers_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footers_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `path_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footers_about`
--

LOCK TABLES `footers_about` WRITE;
/*!40000 ALTER TABLE `footers_about` DISABLE KEYS */;
INSERT INTO `footers_about` VALUES (3,'Cara Pesan','http://localhost:1337/carapesan'),(4,'Hubungi Kami','http://localhost:1337/hubungikami'),(5,'Pusat Bantuan','http://localhost:1337/pusatbantuan'),(6,'Karier','http://localhost:1337/karier'),(7,'Cicilan','http://localhost:1337/cicilan'),(8,'Tentang Kami','http://localhost:1337/tentangkami');
/*!40000 ALTER TABLE `footers_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footers_sosmed`
--

DROP TABLE IF EXISTS `footers_sosmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footers_sosmed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  `path_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footers_sosmed`
--

LOCK TABLES `footers_sosmed` WRITE;
/*!40000 ALTER TABLE `footers_sosmed` DISABLE KEYS */;
INSERT INTO `footers_sosmed` VALUES (1,'Twitter','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" viewBox=\"0 0 24 24\" width=\"24\"><path fill=\"#fff\" d=\"M24,5.24619616 C23.1381518,5.63362472 22.2244738,5.88871437 21.2888889,6.00311095 C22.2743441,5.40355599 23.011565,4.45990053 23.362963,3.34826055 C22.4368334,3.90715977 21.4234284,4.30071681 20.3666667,4.51187583 C18.9039309,2.93095261 16.5800458,2.54420482 14.697916,3.56846568 C12.8157862,4.59272653 11.8433969,6.77331701 12.3259259,8.88767181 C8.4037037,8.68808731 4.92962963,6.77885447 2.6,3.87546489 C1.35009518,6.06882613 1.99033783,8.8721064 4.06296296,10.2809976 C3.31387525,10.2573637 2.58118508,10.0520791 1.92592593,9.68224406 L1.92592593,9.74249598 C1.92403325,12.02712 3.50820818,13.9955926 5.71111111,14.4459118 C5.30589257,14.5601073 4.88715867,14.6171271 4.46666667,14.6153703 C4.16833737,14.6152689 3.87069617,14.5862671 3.57777778,14.5287582 C4.19372273,16.4838865 5.96631993,17.8227307 7.98518519,17.857677 C6.31435628,19.1921316 4.25059961,19.916333 2.12592593,19.9137739 C1.74962306,19.914049 1.3736416,19.8914141 1,19.8459905 C3.15819874,21.2541055 5.66899891,22.0017939 8.23333333,21.9999968 C16.9148148,21.9999968 21.6592593,14.6906852 21.6592593,8.34917024 C21.6592593,8.14205425 21.6555556,7.93117252 21.6444444,7.72782228 C22.5702475,7.05164173 23.3682544,6.2109251 24,5.24619616\"/></svg>','http://twitter.com/traveloka'),(2,'Facebook','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" viewBox=\"0 0 24 24\" width=\"24\"><path fill=\"#fff\" d=\"M7,8.60454545 L9.35682098,8.60454545 L9.35682098,6.29545455 C9.35682098,5.27727273 9.38385907,3.70454545 10.1138878,2.73181818 C10.8889799,1.7 11.9479721,1 13.7730438,1 C16.7472347,1 18,1.42727273 18,1.42727273 L17.4096682,4.95 C17.4096682,4.95 16.4272839,4.66363636 15.5124949,4.66363636 C14.5977059,4.66363636 13.7730438,4.99545455 13.7730438,5.91818182 L13.7730438,8.60454545 L17.5313396,8.60454545 L17.2744777,12.0454545 L13.7775502,12.0454545 L13.7775502,24 L9.35682098,24 L9.35682098,12.0454545 L7,12.0454545 L7,8.60454545 Z\"/></svg>','http://facebook.com/traveloka'),(3,'Instagram','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" viewBox=\"0 0 24 24\" width=\"24\"><path fill=\"#fff\" d=\"M1,15.6215519 L1,8.37408216 C1.01798289,8.30691395 1.02967583,8.23821793 1.03492756,8.16888271 C1.06112324,7.31752332 1.10041675,6.47052987 1.30561619,5.6410002 C1.77713832,3.76800953 2.86425878,2.40583449 4.64993054,1.63306212 C5.61917047,1.21393134 6.64953364,1.09168486 7.69299464,1.0480254 C7.92002381,1.03929351 8.15141893,1.01746378 8.3784481,1 L15.6259178,1 C15.6930861,1.01798289 15.7617821,1.02967583 15.8311173,1.03492756 C16.6824767,1.06112324 17.5294701,1.10041675 18.3589998,1.30561619 C20.2319905,1.77713832 21.5941655,2.86425878 22.3669379,4.64993054 C22.7860687,5.61917047 22.9083151,6.64953364 22.9519746,7.69299464 C22.9607065,7.92002381 22.9825362,8.15141893 23,8.3784481 L23,15.6259178 C22.9820171,15.6930861 22.9703242,15.7617821 22.9650724,15.8311173 C22.9388768,16.6824767 22.8995833,17.5294701 22.6943838,18.3589998 C22.2228617,20.2319905 21.1357412,21.5941655 19.3500695,22.3669379 C18.3808295,22.7860687 17.3504664,22.9083151 16.3070054,22.9519746 C16.0799762,22.9607065 15.8485811,22.9825362 15.6215519,23 L8.37408216,23 C8.30691395,22.9820171 8.23821793,22.9703242 8.16888271,22.9650724 C7.31752332,22.9388768 6.47052987,22.8995833 5.6410002,22.6943838 C3.76800953,22.2228617 2.40583449,21.1357412 1.63306212,19.3500695 C1.21393134,18.3808295 1.09168486,17.3504664 1.0480254,16.3070054 C1.03929351,16.0799762 1.01746378,15.8485811 1,15.6215519 Z M2.96467553,11.997817 L2.9996031,11.997817 C2.9996031,12.9146656 2.98213931,13.8315142 3.00396904,14.7483628 C3.02579877,15.61282 3.05636039,16.4772772 3.1436793,17.3373685 C3.22663227,18.1668982 3.52351657,18.9309387 4.08672356,19.5727327 C4.86386188,20.4546537 5.88112721,20.830125 7.00754118,20.8956142 C8.30422703,20.9742012 9.60964477,20.996031 10.9106966,21.0091288 C12.1899186,21.0265926 13.4735066,21.0178607 14.7527287,20.991665 C15.6171859,20.9742012 16.4816432,20.9392737 17.3417345,20.8519548 C18.1712641,20.7690018 18.9353046,20.4721175 19.5770986,19.9089105 C20.4590196,19.1317722 20.834491,18.1145068 20.8999802,16.9880929 C20.9785672,15.691407 21.0003969,14.3859893 21.0134947,13.0849375 C21.0309585,11.8057154 21.0222266,10.5264934 20.996031,9.24290534 C20.9785672,8.3784481 20.9436396,7.51399087 20.8563207,6.65389958 C20.7733677,5.82436991 20.4764834,5.06032943 19.9132764,4.41853542 C19.1361381,3.53661441 18.1188728,3.16114308 16.9924588,3.0956539 C15.695773,3.01706688 14.3903552,2.99523715 13.0893034,2.98213931 C11.8100814,2.96467553 10.5264934,2.96467553 9.24727128,2.9996031 C8.29549514,3.02579877 7.33935305,3.04326255 6.40067474,3.18733876 C4.80273864,3.43619766 3.71561818,4.36177813 3.28775551,5.95098234 C3.15045035,6.47774803 3.07138975,7.01799548 3.05199444,7.56201627 C3.00396904,9.04207184 2.99523715,10.5221274 2.96467553,11.997817 Z M12.0109149,6.34391744 C15.1369319,6.34828339 17.6604485,8.8848978 17.6560826,12.0196468 C17.6517166,15.1369319 15.1151022,17.6560826 11.9934511,17.6517166 C8.87179996,17.6473507 6.34391744,15.1107363 6.34828339,11.9759873 C6.35264934,8.86306807 8.88926374,6.3395515 12.0109149,6.34391744 Z M12.0065489,8.33915459 C10.0025799,8.33915459 8.34352054,9.9763842 8.33915459,11.9541576 C8.33915459,13.9974201 9.95892042,15.6564795 11.9585235,15.6564795 C14.006152,15.6564795 15.6564795,14.0279817 15.6564795,12.0065489 C15.6590299,11.03614 15.2758614,10.1044889 14.591316,9.4166681 C13.9067705,8.7288473 12.9769589,8.34123616 12.0065489,8.33915459 L12.0065489,8.33915459 Z M19.1972614,6.12998611 C19.194852,6.86243148 18.5995604,7.45446938 17.8671128,7.45286445 C17.1346653,7.45125952 16.5419739,6.85661852 16.5427744,6.12416963 C16.5435749,5.39172074 17.1375646,4.79837666 17.8700139,4.79837269 C18.2227438,4.79848714 18.56093,4.93895817 18.8099378,5.18878511 C19.0589457,5.43861205 19.1983053,5.77725773 19.1972614,6.12998611 Z\"/></svg>','http://instagram.com/traveloka'),(4,'Google+','<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" viewBox=\"0 0 50 50\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" width=\"24\"><path d=\"M45,1H5C2.8,1,1,2.8,1,5v40c0,2.2,1.8,4,4,4h40c2.2,0,4-1.8,4-4V5C49,2.8,47.2,1,45,1z\" fill=\"#FFFFFF\"/><g><g><path d=\"M20.3,10.5c3.3-1.1,7-1.1,10.3,0.1c1.8,0.7,3.5,1.7,4.9,3.1c-0.5,0.5-1,1-1.5,1.5    c-0.9,0.9-1.9,1.9-2.8,2.8c-0.9-0.9-2.1-1.6-3.3-1.9c-1.4-0.4-3-0.5-4.5-0.2c-1.7,0.4-3.3,1.3-4.6,2.5c-1,1-1.8,2.3-2.2,3.6    c-1.7-1.3-3.3-2.6-5-3.9C13.4,14.6,16.6,11.8,20.3,10.5z\" fill=\"#EA4335\"/></g><g><path d=\"M10.3,22c0.3-1.3,0.7-2.6,1.3-3.9c1.7,1.3,3.3,2.6,5,3.9c-0.7,1.9-0.7,4,0,6c-1.7,1.3-3.3,2.6-5,3.9    C10.1,28.8,9.6,25.3,10.3,22z\" fill=\"#FBBC05\"/></g><g><path d=\"M25.3,22.1c4.8,0,9.6,0,14.4,0c0.5,2.7,0.4,5.5-0.4,8.1c-0.7,2.4-2,4.6-3.9,6.4c-1.6-1.3-3.2-2.5-4.9-3.8    c1.6-1.1,2.7-2.8,3.1-4.7c-2.8,0-5.6,0-8.3,0C25.3,26.1,25.3,24.1,25.3,22.1z\" fill=\"#4285F4\"/></g><g><path d=\"M11.6,31.9c1.7-1.3,3.3-2.6,5-3.9c0.6,1.9,1.9,3.6,3.5,4.7c1,0.7,2.2,1.2,3.4,1.5c1.2,0.2,2.4,0.2,3.7,0    c1.2-0.2,2.4-0.7,3.4-1.3c1.6,1.3,3.2,2.5,4.9,3.8c-1.8,1.6-3.9,2.7-6.3,3.3c-2.6,0.6-5.3,0.6-7.8-0.1c-2-0.5-3.9-1.5-5.6-2.8    C14.1,35.6,12.6,33.8,11.6,31.9z\" fill=\"#34A853\"/></g></g></svg>','http://gplus.com/traveloka');
/*!40000 ALTER TABLE `footers_sosmed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_detail`
--

DROP TABLE IF EXISTS `hotel_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(5) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hotel | Apartment',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_detail`
--

LOCK TABLES `hotel_detail` WRITE;
/*!40000 ALTER TABLE `hotel_detail` DISABLE KEYS */;
INSERT INTO `hotel_detail` VALUES (1,'Kempinski','Bundaran HI','021564526\n','Jakarta Pusat\n',5,'Hotel'),(2,'Four Season','Gatot Subroto','0215465467\n','Jakarta Selatan',5,'Hotel'),(3,'Mulia','Bundaran Senayan','0218679879','Jakarta Selatan',5,'Hotel'),(4,'Ritz Carlton','Gatot Mega Kuningan','0218896789','Jakarta Selatan',5,'Hotel'),(5,'All Season','Bundaran Gatot','021627682','Jakarta Barat',3,'Hotel');
/*!40000 ALTER TABLE `hotel_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_facility`
--

DROP TABLE IF EXISTS `hotel_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hotel` int(11) NOT NULL,
  `id_facility` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_hotel` (`id_hotel`),
  KEY `id_facility` (`id_facility`),
  CONSTRAINT `hotel_facility_ibfk_2` FOREIGN KEY (`id_hotel`) REFERENCES `hotel_detail` (`id`),
  CONSTRAINT `hotel_facility_ibfk_3` FOREIGN KEY (`id_facility`) REFERENCES `facilities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_facility`
--

LOCK TABLES `hotel_facility` WRITE;
/*!40000 ALTER TABLE `hotel_facility` DISABLE KEYS */;
INSERT INTO `hotel_facility` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,4),(6,2,5),(7,2,6),(8,3,1),(9,3,3),(10,3,4),(11,4,4),(12,4,5),(13,4,1),(14,5,1),(15,5,2),(16,5,3);
/*!40000 ALTER TABLE `hotel_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_photo`
--

DROP TABLE IF EXISTS `hotel_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hotel` int(11) NOT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_hotel` (`id_hotel`),
  CONSTRAINT `hotel_photo_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_photo`
--

LOCK TABLES `hotel_photo` WRITE;
/*!40000 ALTER TABLE `hotel_photo` DISABLE KEYS */;
INSERT INTO `hotel_photo` VALUES (1,1,'photo1.png'),(2,1,'photo2.png'),(3,2,'photo1.png'),(4,2,'photo2.png'),(5,2,'photo3.png'),(6,4,'photo1.png'),(7,3,'photo1.png'),(8,5,'photo1.png'),(9,5,'photo2.png');
/*!40000 ALTER TABLE `hotel_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_room`
--

DROP TABLE IF EXISTS `hotel_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hotel` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Tersedia','Penuh') COLLATE utf8_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_hotel` (`id_hotel`),
  CONSTRAINT `hotel_room_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_room`
--

LOCK TABLES `hotel_room` WRITE;
/*!40000 ALTER TABLE `hotel_room` DISABLE KEYS */;
INSERT INTO `hotel_room` VALUES (1,1,'Twinbed','Tersedia',2000000),(2,1,'Queen','Tersedia',3000000),(3,1,'King','Penuh',2000000),(4,2,'King','Tersedia',3000000),(5,3,'Twin','Tersedia',2000000),(6,3,'Queen','Tersedia',3000000),(7,4,'Twin','Tersedia',1000000),(8,4,'King','Penuh',1000000),(9,5,'Twin','Penuh',1000000),(10,5,'Queen','Tersedia',1000000),(11,5,'King','Tersedia',4000000);
/*!40000 ALTER TABLE `hotel_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_photo`
--

DROP TABLE IF EXISTS `room_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_room` int(11) NOT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_room` (`id_room`),
  CONSTRAINT `room_photo_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `hotel_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_photo`
--

LOCK TABLES `room_photo` WRITE;
/*!40000 ALTER TABLE `room_photo` DISABLE KEYS */;
INSERT INTO `room_photo` VALUES (1,1,'room1.png'),(2,1,'room2.png'),(3,1,'room3.png'),(4,2,'room1.png'),(5,2,'room2.png'),(6,2,'room3.png'),(7,3,'room1.png'),(8,3,'room2.png'),(9,3,'room3.png'),(10,4,'room1.png'),(11,4,'room2.png'),(12,4,'room3.png'),(13,5,'room1.png'),(14,5,'room2.png'),(15,5,'room3.png'),(16,6,'room1.png'),(17,6,'room2.png'),(18,6,'room3.png'),(19,7,'room1.png'),(20,7,'room2.png'),(21,7,'room3.png'),(22,8,'room1.png'),(23,8,'room2.png'),(24,8,'room3.png'),(25,9,'room1.png'),(26,9,'room2.png'),(27,9,'room3.png'),(28,10,'room1.png'),(29,10,'room2.png'),(30,10,'room3.png'),(31,11,'room1.png'),(32,11,'room2.png'),(33,11,'room3.png');
/*!40000 ALTER TABLE `room_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_belakang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handphone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('pria','wanita') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'budiman','rahardjo','31jan1991','08978582314','pria'),(2,'rahardjo','budiman','30Jan1990','08978582315','wanita');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-06 21:27:53
