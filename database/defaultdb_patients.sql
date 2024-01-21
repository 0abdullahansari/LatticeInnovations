CREATE DATABASE  IF NOT EXISTS defaultdb /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `defaultdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: database-theattice.a.aivencloud.com    Database: defaultdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--


--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` smallint NOT NULL AUTO_INCREMENT,
  `psych_id` smallint NOT NULL,
  `patient_name` varchar(40) NOT NULL,
  `address` varchar(80) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(70) NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `patients_ibfk_1` (`psych_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`psych_id`) REFERENCES `psychiatrists` (`psych_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,5,'Vikram','A-12, Lajpat Nagar, New Delhi','vikram.gupta@yahoo.com','+919876543212','$2b$04$7XV63wgUt1ZzYgi3NLj4u.1JQU0UR1TUBUnhbc.WZhNmYZDwk5j3W','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819517/vgzvilnhqsumrccoebzg.jpg'),(2,22,'Neha Verma','D-7, Hauz Khas, New Delhi','neha.verma@hotmail.com','+919876543213','$2b$04$gG.hdu0TR1GpIheL/6dG3uv3p6jTx3/Lf2Rjik6F9DEDrJwDcxW7m','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819626/q5kjqxfy1qew5rrwgfeb.jpg'),(3,12,'Rajesh Aggarwal','E-28, Greater Kailash, New Delhi','rajesh.kumar@gmail.com','+919876543214','$2b$04$dFvBvMn.OT9G6odC12h/NeZmxxGkE/T70E/u7YOBmdTcVYA0kn2CK','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819717/hdp1k3yzvsb4qqanceq6.jpg'),(4,30,'Shivani Sharma','F-15, Saket, New Delhi','shivani.sharma@outlook.com','+919876543215','$2b$04$HOavLrUGH4ybPN2MoQa2xugwVHH.ZXT68GeCUaGGKOU6vbdoI6V6q','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819766/faj1zlsxmxn3zud0jnxo.jpg'),(5,9,'Amit Rawat','B-5, Green Park, New Delhi','amit.rawat@gmail.com','+919876543216','$2b$04$.CZkHjHnvrXJxpQVapv4uOMHb0LnF6hTT1AkgLvq7QUh8cszrltsC','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819806/wa9heaiwlfytyxou9mmq.jpg'),(6,18,'Priya Mittal','G-10, South Extension, New Delhi','priya.mittal@yahoo.com','+919876543217','$2b$04$dWL5SZmxPggCmKk5A4k/ze4cYK2Ts5yx7UnIst85rDtUl/fO0BiBa','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819842/c91turmcs4t8wahmwrac.jpg'),(7,4,'Ankit Shah','C-33, Vasant Vihar, New Delhi','ankit.shah@live.com','+919876543218','$2b$04$YMg72crlCSrZe0kGpNs/zeIXGm5snvKlbKhZFozhcfcHZbxb.DOjy','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819867/spha37jsiwdoureysbbj.jpg'),(8,27,'Pooja Singh','H-20, Rohini, New Delhi','pooja.singh@protonmail.com','+919876543219','$2b$04$uXwADY91jPNm70iTUIAxPezLgWoHhwuAmFuM9Hx4DTOjk6fMJ6Z3m','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819894/sww5xry3bbmjsqqkznln.jpg'),(9,15,'Rohit Aggarwal','D-18, Dwarka, New Delhi','rohit.agrawal@gmail.com','+919876543220','$2b$04$9sKh5PxPM1zCmxJGi8JxiexSicbx6CLo7T7SAW2iySNFCmLO8sH/K','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819969/lugfldgtvxvmyl3mir8h.jpg'),(10,7,'Ayesha Khan','E-12, Janakpuri, New Delhi','ayesha.khan@gmail.com','+919876543221','$2b$04$VpqKAfHgovubQUVCqNDsweHAZUGhXsdpX0LtaiDk2EIXpyCEsGbOG','http://res.cloudinary.com/dzjxwddew/image/upload/v1705819999/wgn8a9itomewx2cq1xmp.jpg'),(11,14,'Ravi Sharma','C-20, Malviya Nagar, New Delhi','ravi.sharma@gmail.com','+919876543222','$2b$04$tX2HrGD6hN.iRbGONMTEnumpZRvTp2RJVjxQ8MMy3LFUkKYumWrfa','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820095/vdjlfhtovvpgmthpjksz.jpg'),(12,3,'Priyanka Soori','A-8, Connaught Place, New Delhi','priyankasooori@yahoo.com','+919876543223','$2b$04$v1hOCBUkoEL7Nez3MPU74.WJfgRTUc5HUx83zz60f8.WU6.3cONAG','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820282/kzbtbsxetvnmca7t3eyr.jpg'),(13,25,'Deepak Singh','G-5, Rajouri Garden, New Delhi','deepaksingh@hotmail.com','+919876543224','$2b$04$3fkTKyNgr0kvJ4r9Kdjj9OOlKdnw/XUS9vkKWbiAyN/11F/ozVRGS','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820344/o9ggbreqwa2nw44ldauj.jpg'),(14,16,'Anjali Jain','D-25, Karol Bagh, New Delhi','anjalijain@outlook.com','+919876543225','$2b$04$5hjhOtKXX4WApbgiL1XzXe4xXJL57UgywC7e/gDs6CQtA8pDzIgnu','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820376/eofcsdvcfsoz7dta5zgc.jpg'),(15,11,'Rohan Aggarwal','F-22, Rohini, New Delhi','rohanagarwal@gmail.com','+919876543226','$2b$04$51bMnE9j8ZXXlIvbnrC0vOsE/dv0qGvmAUWEnWAWlDjF2wH8DW..i','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820496/tlaybtme2uqmenqpcaqy.jpg'),(16,29,'Divya Malhotra','H-10, Saket, New Delhi','divyamalhotra@yahoo.com','+919876543227','$2b$04$cSDuIeFzpweyQRwh1LNSGOKCwySKHzXcYbet9LIvxuniqRGljJwOC','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820543/hiox4liikipqyejva2uy.jpg'),(17,6,'Suresh Kumar','B-15, Vasant Kunj, New Delhi','sureshkumar@live.com','+919876543228','$2b$04$dt8BnWQLhTf45JbfThAoyOjgaqkqnYf871ZHeiBoKKOm/M0pr9Tp2','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820591/fscznuvn1msdo3n5dhkt.jpg'),(18,20,'Manisha Shah','E-7, Dwarka, New Delhi','manishashah@gmail.com','+919876543229','$2b$04$VR9NC3uXPxKV7LUhFzpk8eRUE3y5COJB90y06UcZPm6a0YaVWYQ2O','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820662/iujdbbgc4l99mvn8ixu1.jpg'),(19,10,'Kunal Gupta','C-10, Janakpuri, New Delhi','kunalgupta@protonmail.com','+919876543230','$2b$04$DG4T7HgJOrQ5uPLSH3AF8uIh5SqmJD1HxGq1q44A9/NCb9zDDEE76','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820698/czonxv0p19caug9gmj2f.jpg'),(20,26,'Nisha Madhulika','D-12, Vasant Vihar, New Delhi','nishamadhulika@gmail.com','+919876543231','$2b$04$CZvj8ivaiLxPyDxOHc93XOKdHdw0TAIJ6n2UlCCbHNO.1/zl8lzim','http://res.cloudinary.com/dzjxwddew/image/upload/v1705820740/htrrylmzcn8kjcdtymx8.jpg'),(21,19,'Amit Kumar','E-25, Malviya Nagar, New Delhi','amitkumar_sharma@yahoo.com',NULL,'$2b$04$TpSXVFBzYy/6VM1tjdpCUeKi88rmB/jgGi7eatmjMEK0/wcFRfqjW','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821398/bv2uls1ma4huajnhpvml.jpg'),(22,13,'Deepika Singh','B-18, Connaught Place, New Delhi','deepikasingh@hotmail.com','+919876543233','$2b$04$atw3Gf5uk84vp9fACLb.7.6YQFjFMM5XsEp4X6SHanq.PcQe9yo8K','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821604/odwkdbfrry9wc2pqfojp.jpg'),(23,28,'Arjun Gupta','G-15, Rajouri Garden, New Delhi','arjungupta@yahoo.com',NULL,'$2b$04$orgeuMeDNkYS08NI/OPbl.hgT2cnuRKDuGiIjZz55wGUtqkJCCMb.','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821629/epw8srqpf8ynm4azijkb.jpg'),(24,21,'Kavita Jain','D-10, Karol Bagh, New Delhi','kavitajain@outlook.com','+919876543235','$2b$04$KfWqiBj3rmavssWlO1osKex12zl99urFmCe5KuSpqKBjtcqs.mX.W','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821651/uqc5skr7tvcgjipqho2c.jpg'),(25,23,'Sachin Agarwal','F-18, Rohini, New Delhi','sachinagarwal@gmail.com',NULL,'$2b$04$w35o.CKWsDUvGmVDbx8wm.G2f.Oi7PNzUGjaU9iOLxY9ZMgetF9Se','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821677/pp54bjfndgmbzgqosu0q.jpg'),(26,24,'Ananya Malhotra','H-5, Saket, New Delhi','ananyamalhotra@live.com','+919876543237','$2b$04$wAKXJmvrnYDc280HUiFqjOZsCdF.QSEHlrN4XJ6lqfzQfKE7mBSxC','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821702/pwvb2xlkcy8pu5mqirni.jpg'),(27,1,'Rahul Verma','B-22, Vasant Kunj, New Delhi','rahulverma@yahoo.com',NULL,'$2b$04$iMvm6Z43RCbPEAqsstindOJmlTYHhn87Pui7NxQGxI8GUOVTiD7MO','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821725/drvvjjr6w3kby0a7yxu1.jpg'),(28,2,'Neetu Shah','C-8, Dwarka, New Delhi','neetushah@gmail.com',NULL,'$2b$04$ZrgwNUsF/tvvKIR2GQImROsyzQpkz6Yqa6uTCEsd3/LB0PFVhMIEu','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821748/vk8cghbrmuaxxcikumyj.jpg'),(29,14,'Sudhir Kapoor','E-15, Janakpuri, New Delhi','sudhirkapoor@protonmail.com',NULL,'$2b$04$y4nXaXR3fUqvobmZPBTyC.DMjOApclgSf.riE3mOnaDbj0R1qYPLa','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821771/pbwrobet8snmvu6cpgu3.jpg'),(30,17,'Pooja Singh','D-20, Vasant Vihar, New Delhi','poojasingh@gmail.com','+919876543241','$2b$04$hhs2LQkv.3kNZeZbRdkdwuBP5RiBBWY8P.bsI9a73g2JVC9/rxZgK','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821791/fp5sp5trqwpit3zcklya.jpg'),(31,8,'Kunal Mehra','F-12, Malviya Nagar, New Delhi','kunalmehra@yahoo.com','+919876543242','$2b$04$Oml640Qv8Ox5WxIcjewCo.gggfe3jlS8qhL9E6Ck.6usvwwlyBgPi','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821882/pqlt2zl9icemjiywtlzd.jpg'),(32,5,'Simran Kapoor','A-22, Connaught Place, New Delhi','simrankapoor@hotmail.com','+919876543243','$2b$04$wUgrDQj/IsDRtZZuncp01utRpCzk2QD0tMGz.0QCXR74xdRgUTTfS','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821894/jhpqhbs42endzym72ogq.jpg'),(33,16,'Rajat Sharma','C-5, Rajouri Garden, New Delhi','rajatsharma@yahoo.com',NULL,'$2b$04$kkqdYvLF1kscdJtyIpqzs.ncQOxWu/D4iTYgsuJwr9t6LLQ4lJHO.','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821914/l2pngfa2t6l8sbzvfum8.jpg'),(34,11,'Shweta Verma','D-15, Karol Bagh, New Delhi','shwetaverma@outlook.com',NULL,'$2b$04$bfCFqhQocrKWojIBfE483OaM.g762/QdaYtZNR./TxUdIxgAcL1vS','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821931/rcyo3crehhudwmoiojrp.jpg'),(35,25,'Anil Gupta','H-18, Rohini, New Delhi','anilgupta@gmail.com','+919876543246','$2b$04$/s4/zVUJ2QHxQ3Wy3l7AS.KEFL6vZmgOFlVXDU5HeGc7MnspJBE.u','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821946/zz0vktn9k8rnikrsb070.jpg'),(36,18,'Nidhi Malhotra','G-5, Saket, New Delhi','nidhimalhotra@live.com',NULL,'$2b$04$BL3dSfB7/axEcWYxILB8V.4pKiguVGdzMDVQ8csNHGQXDfUd7HndK','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821965/fryl7w1onxkznp8b7tdm.jpg'),(37,7,'Vikas Jain','B-10, Vasant Kunj, New Delhi','vikasjain@yahoo.com','+919876543248','$2b$04$o4MSGTOsAh7RxkjKsL59GejpoSDP.h1Ojk4BNq8vG.tr4Xad4sTty','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821981/ghkq7t6gfybb9yof28te.jpg'),(38,29,'Ritu Shah','E-8, Dwarka, New Delhi','ritushah@gmail.com','+919876543249','$2b$04$GoMn4PYnbjw.wpSA8MVc0ePqFOswad2YhkNLZTU1owdXlHPAYcAFC','http://res.cloudinary.com/dzjxwddew/image/upload/v1705821994/eb5kmqlwqahm2c3ewhju.jpg'),(39,12,'Arjun Kapoor','F-15, Janakpuri, New Delhi','arjunkapoor@protonmail.com','+919876543250','$2b$04$9764hYALy3MZOUEefsYsTOC/gdhIwnlSyVq0/mO3jr9WGnarBG2rC','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822008/gxo9fxrluf9kigsqut59.jpg'),(40,23,'Priyanka Sharma','D-18, Vasant Vihar, New Delhi','priyankasharma@gmail.com',NULL,'$2b$04$rkCcUiPu9p7BydkwplWnVeplM2Ejch.9lwdvhirREyZ9pzCNPBYm6','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822028/j1isgcondd5gvvbxukxn.jpg'),(41,10,'Alok Patel','D-25, Malviya Nagar, New Delhi','alokpatel@yahoo.com','+919876543252','$2b$04$Xk.ffvTG0FJoox20Mogkj.axqi1QPKHi6vjAXfahaX5VYL89A9UmC','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822284/gbavlgc1fuaxtdnl25w6.jpg'),(42,14,'Radhika Singh','E-18, Connaught Place, New Delhi','radhikasingh@hotmail.com',NULL,'$2b$04$xVZaE6K2V8xNXozfU8pMP.J2NwyU98GlHQ2UTSAjxwQJTtmxdTgnm','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822302/g6mnugkuil4eq0aspsbo.jpg'),(43,19,'Ravi Kumar','G-15, Rajouri Garden, New Delhi','ravikumar@yahoo.com','+919876543254','$2b$04$4g12JRqBCsdUt4s7HZPeu.XXbeCbpAAZlBbIPqtUxiwoEuRWCvTXW','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822318/mgmloefduxbfln8ptgd7.jpg'),(44,26,'Anita Verma','D-10, Karol Bagh, New Delhi','anitaverma@outlook.com',NULL,'$2b$04$4B6.Gh80p/GqITwEB23bt.0RquekUX34GoAQPJrCHsS3jWs0QSs56','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822335/sfaruwwe9ydehs51bgxo.jpg'),(45,6,'Rajesh Gupta','H-18, Rohini, New Delhi','rajeshgupta@gmail.com','+919876543256','$2b$04$rjNSApf3Yxc//NzuQSDv0OMl64NgKc4jTEpXSTrykuuzwmnb7wgLa','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822348/lht1vspyj9hldyxm5g1d.jpg'),(46,27,'Manisha Sharma','G-5, Saket, New Delhi','manishasharma@live.com','+919876543257','$2b$04$aWZiNdcUjT0vKDZt.K0JF.GbRyM9br76FOo1w8KIek43EKopFZXzi','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822359/wyc6qbwjum3cltonrnbz.jpg'),(47,15,'Amita Jain','B-10, Vasant Kunj, New Delhi','amitajain@yahoo.com','+919876543258','$2b$04$WGxUPctuO9w2XVchr.4o.uOD9rNKE7xYynK5YVLR4afG6G6jI4wuK','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822373/mniz7e95td3vhf3uk6xm.jpg'),(48,9,'Saurabh Shah','E-8, Dwarka, New Delhi','saurabhshah@gmail.com',NULL,'$2b$04$J/jtCaB4dyk6RCIqbXrujeeiMAc7GLutZMw07.BDu8ba26hAAh8Sm','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822396/xmyyc2q4rzo7cljufpfy.jpg'),(49,21,'Kavita Malhotra','F-15, Janakpuri, New Delhi','kavitamalhotra@protonmail.com','+919876543260','$2b$04$xjB8daDdeObSpV8Y0iKJ..3EyfZRA.UewUNAZVHfAX5aiQ4BSjV5q','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822408/ajwrs9tsqeetpiciw0lo.jpg'),(50,13,'Vijay Singh','D-18, Vasant Vihar, New Delhi','vijaysingh@gmail.com','+919876543261','$2b$04$Jln/tDXNx563IIHllCYmWunHarKi4O3ylxIQGaqZ4CQubLyp7.C.K','http://res.cloudinary.com/dzjxwddew/image/upload/v1705822419/grdsnimgf28y4losgzeo.jpg');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-21 14:51:07
