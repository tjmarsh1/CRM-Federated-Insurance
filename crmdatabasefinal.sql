-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: crm
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business` (
  `client_id` int(11) DEFAULT NULL,
  `business_id` int(11) NOT NULL,
  `business_name` varchar(25) NOT NULL,
  `business_address` varchar(40) NOT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `business_email` varchar(45) DEFAULT NULL,
  `general_notes` varchar(150) DEFAULT NULL,
  `communication_id` int(11) DEFAULT NULL,
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`business_id`),
  KEY `policy_id_idx` (`business_phone`),
  KEY `client_id_idx` (`client_id`),
  KEY `communication_id_idx` (`communication_id`),
  KEY `policy_id_idx1` (`policy_id`),
  CONSTRAINT `client_id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`),
  CONSTRAINT `policy_id` FOREIGN KEY (`policy_id`) REFERENCES `insurance_policy` (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (NULL,123,'walmart','123 walmart st','123-456-7891','walmart@walmart.com',NULL,NULL,NULL),(NULL,1021,'Emerald Enterprises','246 Pine St Anytown USA','555-345-6789','info@emeraldent.com',NULL,NULL,NULL),(NULL,1283,'Creative Concepts','987 2nd Ave Anytown USA','555-567-8901','info@creativeconcepts.com',NULL,NULL,NULL),(NULL,1765,'Acme Inc','123 Main St Anytown USA','555-123-4567','info@acmeinc.com',NULL,NULL,NULL),(NULL,3175,'Dynamic Data Solutions','321 3rd St Anytown USA','555-890-1234','info@ddsolutions.com',NULL,NULL,NULL),(NULL,3947,'Endless Possibilities','135 Oak St Anytown USA','555-890-1234','info@endlesspos.com',NULL,NULL,NULL),(NULL,4201,'Cactus Corporation','321 Oak St Anytown USA','555-876-5432','info@cactuscorp.com',NULL,NULL,NULL),(NULL,5402,'Elite Enterprises','789 Maple Ave Anytown USA','555-678-9012','info@eliteent.com',NULL,NULL,NULL),(NULL,6712,'Cardinal Industries','555 1st St Anytown USA','555-345-6789','info@cardinalind.com',NULL,NULL,NULL),(NULL,8294,'Bright Ideas','789 Elm St Anytown USA','555-234-5678','info@brightideas.com',NULL,NULL,NULL),(NULL,8536,'Design Dynamics','654 Cedar St Anytown USA','555-432-1098','info@designdyn.com',NULL,NULL,NULL),(NULL,9943,'Best Buy','456 Center St Somewhere','555-987-6543','info@bestbuy.com',NULL,NULL,NULL);
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `c_first_name` varchar(45) NOT NULL,
  `c_last_name` varchar(45) DEFAULT NULL,
  `c_phone` varchar(20) DEFAULT NULL,
  `c_email` varchar(45) DEFAULT NULL,
  `c_role` varchar(45) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'John','Doe','1234567890','john.doe@example.com','CEO'),(2,'Jane','Smith','9876543210','jane.smith@example.com','Manager'),(3,'Michael','Johnson','5551234567','michael.johnson@example.com','HR'),(4,'Emily','Brown','9998887777','emily.brown@example.com','Co-Founder'),(5,'David','Taylor','1112223333','david.taylor@example.com','CEO'),(6,'Olivia','Anderson','4445556666','olivia.anderson@example.com','Manager'),(7,'James','Wilson','7778889999','james.wilson@example.com','HR'),(8,'Sophia','Martin','2223334444','sophia.martin@example.com','Co-Founder'),(9,'William','Clark','6667778888','william.clark@example.com','CEO'),(10,'Ava','Hall','1119993333','ava.hall@example.com','Manager'),(11,'Henry','Garcia','4441117777','henry.garcia@example.com','HR'),(12,'Elizabeth','Lee','7775559999','elizabeth.lee@example.com','Co-Founder'),(13,'Daniel','Lopez','2221118888','daniel.lopez@example.com','CEO'),(14,'Grace','Young','5554446666','grace.young@example.com','Manager'),(15,'Lucas','Hernandez','9998884444','lucas.hernandez@example.com','HR'),(16,'Ella','Walker','3331117777','ella.walker@example.com','Co-Founder'),(17,'Alexander','Turner','6665559999','alexander.turner@example.com','CEO'),(18,'Liam','Perez','2227778888','liam.perez@example.com','Manager'),(19,'Sophia','Flores','7774446666','sophia.flores@example.com','HR'),(20,'Harper','Gonzalez','1113339999','harper.gonzalez@example.com','Co-Founder');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication`
--

DROP TABLE IF EXISTS `communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communication` (
  `communication_id` int(11) NOT NULL,
  `communication_type` varchar(45) DEFAULT NULL,
  `communication_data` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`communication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
/*!40000 ALTER TABLE `communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district_manager`
--

DROP TABLE IF EXISTS `district_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district_manager` (
  `district_id` int(11) NOT NULL,
  `d_username` varchar(45) NOT NULL,
  `d_password` varchar(45) NOT NULL,
  `d_email` varchar(45) NOT NULL,
  `d_first_name` varchar(20) NOT NULL,
  `d_last_name` varchar(20) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`district_id`),
  KEY `region_id_idx` (`region_id`),
  CONSTRAINT `region_id` FOREIGN KEY (`region_id`) REFERENCES `region_manager` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_manager`
--

LOCK TABLES `district_manager` WRITE;
/*!40000 ALTER TABLE `district_manager` DISABLE KEYS */;
INSERT INTO `district_manager` VALUES (1,'user1','pass1','user1@example.com','John','Doe',NULL),(2,'user2','pass2','user2@example.com','Jane','Smith',NULL),(3,'user3','pass3','user3@example.com','Michael','Johnson',NULL),(4,'user4','pass4','user4@example.com','Emily','Brown',NULL),(5,'user5','pass5','user5@example.com','David','Taylor',NULL),(6,'user6','pass6','user6@example.com','Olivia','Anderson',NULL),(7,'user7','pass7','user7@example.com','James','Wilson',NULL),(8,'user8','pass8','user8@example.com','Sophia','Martin',NULL),(9,'user9','pass9','user9@example.com','William','Clark',NULL),(10,'user10','pass10','user10@example.com','Ava','Hall',NULL);
/*!40000 ALTER TABLE `district_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_policy`
--

DROP TABLE IF EXISTS `insurance_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_policy` (
  `policy_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `policy_type` varchar(50) NOT NULL,
  `policy_status` varchar(20) NOT NULL,
  `policy_expdate` date NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`policy_id`),
  KEY `payment_id_idx` (`payment_id`),
  CONSTRAINT `payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_policy`
--

LOCK TABLES `insurance_policy` WRITE;
/*!40000 ALTER TABLE `insurance_policy` DISABLE KEYS */;
INSERT INTO `insurance_policy` VALUES (1,NULL,'life-insurance','yes','2023-07-31',NULL),(2,NULL,'commercial property','no','2022-12-15',NULL),(3,NULL,'general liability','yes','2024-03-28',NULL),(4,NULL,'workers compensation','no','2023-06-30',NULL),(5,NULL,'commercial auto','yes','2023-09-10',NULL),(6,NULL,'environmental liability','no','2022-11-05',NULL),(7,NULL,'life-insurance','yes','2024-02-28',NULL),(8,NULL,'commercial property','no','2023-04-15',NULL),(9,NULL,'general liability','yes','2022-09-20',NULL),(10,NULL,'workers compensation','no','2024-01-10',NULL),(11,NULL,'commercial auto','yes','2023-08-31',NULL),(12,NULL,'environmental liability','no','2023-02-25',NULL),(13,NULL,'life-insurance','yes','2023-05-30',NULL),(14,NULL,'commercial property','no','2022-10-15',NULL),(15,NULL,'general liability','yes','2024-06-05',NULL);
/*!40000 ALTER TABLE `insurance_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketing_rep`
--

DROP TABLE IF EXISTS `marketing_rep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketing_rep` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `mr_address` varchar(50) DEFAULT NULL,
  `mr_notes` varchar(150) DEFAULT NULL,
  `territory_id` int(11) DEFAULT NULL,
  `p_client_id` int(11) DEFAULT NULL,
  `communication_id` int(11) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `territory_id_idx` (`territory_id`),
  KEY `p_client_id_idx` (`p_client_id`),
  KEY `communication_id_idx` (`communication_id`),
  KEY `district_id_idx` (`district_id`),
  KEY `business_id_idx` (`business_id`),
  CONSTRAINT `business_id` FOREIGN KEY (`business_id`) REFERENCES `business` (`business_id`),
  CONSTRAINT `communication_id` FOREIGN KEY (`communication_id`) REFERENCES `communication` (`communication_id`),
  CONSTRAINT `district_id` FOREIGN KEY (`district_id`) REFERENCES `district_manager` (`district_id`),
  CONSTRAINT `p_client_id` FOREIGN KEY (`p_client_id`) REFERENCES `potential_clients` (`p_client_id`),
  CONSTRAINT `territory_id` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`territory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketing_rep`
--

LOCK TABLES `marketing_rep` WRITE;
/*!40000 ALTER TABLE `marketing_rep` DISABLE KEYS */;
INSERT INTO `marketing_rep` VALUES (1,'john.doe','password123','john.doe@example.com','John','Doe','1234 Elm St',NULL,NULL,102,NULL,5,NULL),(2,'jane.smith','myp@ssword','jane.smith@example.com','Jane','Smith','5678 Oak Ave',NULL,NULL,107,NULL,3,NULL),(3,'michael.johnson','m1k3yp@ss','michael.johnson@example.com','Michael','Johnson','9876 Birch Rd',NULL,NULL,115,NULL,6,NULL),(4,'emily.brown','pass1234','emily.brown@example.com','Emily','Brown','4567 Maple Ln',NULL,NULL,130,NULL,1,NULL),(5,'david.taylor','taylor@d','david.taylor@example.com','David','Taylor','2345 Cedar St',NULL,NULL,101,NULL,10,NULL),(6,'olivia.anderson','oanderson','olivia.anderson@example.com','Olivia','Anderson','7890 Pine Ave',NULL,NULL,143,NULL,9,NULL),(7,'james.wilson','wils0nj','james.wilson@example.com','James','Wilson','5678 Elm Rd',NULL,NULL,102,NULL,4,NULL),(8,'sophia.martin','martin@123','sophia.martin@example.com','Sophia','Martin','1234 Oak Ave',NULL,NULL,118,NULL,7,NULL),(9,'william.clark','clarkw88','william.clark@example.com','William','Clark','9876 Birch Rd',NULL,NULL,141,NULL,2,NULL),(10,'ava.hall','password567','ava.hall@example.com','Ava','Hall','4567 Maple Ln',NULL,NULL,154,NULL,8,NULL),(11,'henry.garcia','garcia88','henry.garcia@example.com','Henry','Garcia','2345 Cedar St',NULL,NULL,103,NULL,5,NULL),(12,'elizabeth.lee','lee456','elizabeth.lee@example.com','Elizabeth','Lee','7890 Pine Ave',NULL,NULL,107,NULL,3,NULL),(13,'daniel.lopez','dlopezpass','daniel.lopez@example.com','Daniel','Lopez','5678 Elm Rd',NULL,NULL,110,NULL,10,NULL),(14,'grace.young','youngg','grace.young@example.com','Grace','Young','1234 Oak Ave',NULL,NULL,120,NULL,1,NULL),(15,'lucas.hernandez','hernandez','lucas.hernandez@example.com','Lucas','Hernandez','9876 Birch Rd',NULL,NULL,129,NULL,6,NULL);
/*!40000 ALTER TABLE `marketing_rep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_amount` varchar(20) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'paper checks','0'),(2,'EFT','2500'),(3,'credit card','0'),(4,'paper checks','10000'),(5,'EFT','0'),(6,'credit card','5000'),(7,'paper checks','0'),(8,'EFT','15000'),(9,'credit card','0'),(10,'paper checks','0'),(11,'EFT','2000'),(12,'credit card','0'),(13,'paper checks','0'),(14,'EFT','10000'),(15,'credit card','0'),(16,'paper checks','0'),(17,'EFT','0'),(18,'credit card','500'),(19,'paper checks','0'),(20,'EFT','8000'),(21,'credit card','0'),(22,'paper checks','0'),(23,'EFT','300'),(24,'credit card','0'),(25,'paper checks','0'),(26,'EFT','12000'),(27,'credit card','0'),(28,'paper checks','0'),(29,'EFT','0'),(30,'credit card','20000');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potential_clients`
--

DROP TABLE IF EXISTS `potential_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `potential_clients` (
  `p_client_id` int(11) NOT NULL,
  `p_business` varchar(30) DEFAULT NULL,
  `p_rank` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`p_client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potential_clients`
--

LOCK TABLES `potential_clients` WRITE;
/*!40000 ALTER TABLE `potential_clients` DISABLE KEYS */;
INSERT INTO `potential_clients` VALUES (101,'ABC Inc.','1'),(102,'XYZ Corporation','2'),(103,'LMN Industries','3'),(104,'PQR Ltd.','4'),(105,'UVW Enterprises','5'),(106,'IJK Corporation','6'),(107,'QRS Inc.','7'),(108,'EFG Ltd.','8'),(109,'HIJ Corporation','9'),(110,'OPQ Industries','10'),(111,'STU Enterprises','11'),(112,'VWX Ltd.','12'),(113,'YZA Inc.','13'),(114,'BCD Corporation','14'),(115,'KLM Industries','15'),(116,'NOP Ltd.','16'),(117,'CDE Enterprises','17'),(118,'FGH Inc.','18'),(119,'WXY Corporation','19'),(120,'ZAB Industries','20'),(121,'DEF Ltd.','21'),(122,'GHI Corporation','22'),(123,'JKL Enterprises','23'),(124,'MNO Inc.','24'),(125,'PQR Ltd.','25'),(126,'STU Industries','26'),(127,'VWX Corporation','27'),(128,'YZA Enterprises','28'),(129,'BCD Inc.','29'),(130,'EFG Ltd.','30'),(131,'HIJ Corporation','31'),(132,'OPQ Industries','32'),(133,'QRS Ltd.','33'),(134,'UVW Enterprises','34'),(135,'IJK Corporation','35'),(136,'LMN Inc.','36'),(137,'FGH Industries','37'),(138,'CDE Ltd.','38'),(139,'WXY Corporation','39'),(140,'ZAB Enterprises','40'),(141,'DEF Inc.','41'),(142,'GHI Ltd.','42'),(143,'JKL Corporation','43'),(144,'MNO Industries','44'),(145,'PQR Enterprises','45'),(146,'STU Inc.','46'),(147,'VWX Ltd.','47'),(148,'YZA Corporation','48'),(149,'BCD Enterprises','49'),(150,'EFG Inc.','50'),(151,'HIJ Industries','51'),(152,'OPQ Ltd.','52'),(153,'QRS Corporation','53'),(154,'UVW Enterprises','54'),(155,'IJK Inc.','55'),(156,'LMN Ltd.','56'),(157,'FGH Corporation','57'),(158,'Target','58'),(159,'Walmart','59'),(160,'Amazon','60');
/*!40000 ALTER TABLE `potential_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_manager`
--

DROP TABLE IF EXISTS `region_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region_manager` (
  `region_id` int(11) NOT NULL,
  `r_username` varchar(45) NOT NULL,
  `r_password` varchar(45) NOT NULL,
  `r_email` varchar(45) NOT NULL,
  `r_first_name` varchar(20) NOT NULL,
  `r_last_name` varchar(20) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_manager`
--

LOCK TABLES `region_manager` WRITE;
/*!40000 ALTER TABLE `region_manager` DISABLE KEYS */;
INSERT INTO `region_manager` VALUES (1,'emma.smith','password123','emma.smith@example.com','Emma','Smith'),(2,'olivia.johnson','myp@ssword','olivia.johnson@example.com','Olivia','Johnson'),(3,'ava.brown','avabrown123','ava.brown@example.com','Ava','Brown'),(4,'sophia.taylor','taylor123','sophia.taylor@example.com','Sophia','Taylor'),(5,'mia.anderson','mia1234','mia.anderson@example.com','Mia','Anderson'),(6,'amelia.wilson','ameliawil','amelia.wilson@example.com','Amelia','Wilson'),(7,'harper.martin','martin@123','harper.martin@example.com','Harper','Martin'),(8,'evelyn.clark','evelyn123','evelyn.clark@example.com','Evelyn','Clark'),(9,'abigail.hall','hallab123','abigail.hall@example.com','Abigail','Hall'),(10,'emily.davis','password567','emily.davis@example.com','Emily','Davis');
/*!40000 ALTER TABLE `region_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `user_id` int(11) NOT NULL,
  `meeting` date DEFAULT NULL,
  `reminder` varchar(45) DEFAULT NULL,
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `territory`
--

DROP TABLE IF EXISTS `territory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `territory` (
  `territory_id` int(11) NOT NULL,
  `territory_name` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `territory_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`territory_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `marketing_rep` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `territory`
--

LOCK TABLES `territory` WRITE;
/*!40000 ALTER TABLE `territory` DISABLE KEYS */;
/*!40000 ALTER TABLE `territory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 18:41:50
