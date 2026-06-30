-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: talent_platform
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `review_count` int DEFAULT NULL,
  `price_from` double DEFAULT NULL,
  `bio` varchar(2000) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `goals` varchar(1000) DEFAULT NULL,
  `interests` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_candidate_subcategory` (`role_id`),
  KEY `idx_candidate_user` (`user_id`),
  CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `sub_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_candidate_subcategory` FOREIGN KEY (`role_id`) REFERENCES `sub_category` (`id`),
  CONSTRAINT `fk_candidate_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES ('039445e6-f8c4-4b27-81e5-179be11d99ef','Pratham','Java Deqveloper','sub1',2,'Mumbai',NULL,NULL,NULL,14243,'Hlefhewkhejrhkehrkhbr,ebbre','6046bba1-0de9-4a7a-965a-cf07ebe03798',NULL,NULL,NULL),('14061dad-7a05-4e10-859b-8fd2016de4b5','Fahil','Python Developer','sub3',1200,'Delhi',NULL,NULL,NULL,1000,'Hwllo highasgkkbskaghskghAKHJKHJKAXas','b8dbf775-065f-47d1-9708-30d6724724c5',NULL,NULL,NULL),('2047ae8f-252b-417e-9f1a-c726ac60b94e','manya','Singer',NULL,12432124,'Mumbai',NULL,NULL,NULL,124342,'sgrwerqtwetw35tw3t53t53','4867d547-8967-4a47-ae47-012a1e1d2e92',NULL,NULL,NULL),('362c8168-10d2-450b-9ab7-4099c1593e36','omjadhav','Java Developer',NULL,5235,'Delhi',NULL,NULL,NULL,254,'wrfgyuifgyilawilfguefgui','fa1070cb-5668-414f-902d-2b87eac52c5d',NULL,NULL,NULL),('3efe8573-5c71-432c-b024-eff5edcf8d53','Madhu','Doctor','sub12',2,'Sambhajinagar','https://i.pinimg.com/736x/15/f5/fb/15f5fbd7d67a775f065337f8d172dad1.jpg',NULL,NULL,2500,'Cute and Sweet','57fac984-68fd-4bf4-b7ad-4bbf0e07b32a',NULL,NULL,NULL),('4ff5f99a-231d-11f1-afb3-0c9a3c3a182f','Amit Sharma','Designer','sub6',9,'Mumbai, India','https://randomuser.me/api/portraits/men/25.jpg',4.4,155,1802,'Experienced professional delivering high-quality services','44e726cb-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60744-231d-11f1-afb3-0c9a3c3a182f','Priya Mehta','Cricketer','sub6',2,'Bangalore, India','https://randomuser.me/api/portraits/men/21.jpg',4.9,76,624,'Experienced professional delivering high-quality services','44e78492-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff6079f-231d-11f1-afb3-0c9a3c3a182f','Rohit Verma','Angular Developer','sub2',10,'Mumbai, India','https://randomuser.me/api/portraits/men/9.jpg',4.7,80,2211,'Experienced professional delivering high-quality services','44e78994-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff607ce-231d-11f1-afb3-0c9a3c3a182f','Neha Kapoor','Angular Developer','sub12',4,'Delhi, India','https://randomuser.me/api/portraits/men/46.jpg',4.9,245,673,'Experienced professional delivering high-quality services','44e78c4a-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60809-231d-11f1-afb3-0c9a3c3a182f','Arjun Singh','Angular Developer','sub6',11,'Delhi, India','https://randomuser.me/api/portraits/men/28.jpg',4.3,226,1969,'Experienced professional delivering high-quality services','44e78e91-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff6083e-231d-11f1-afb3-0c9a3c3a182f','Sneha Iyer','Angular Developer','sub1',7,'Pune, India','https://randomuser.me/api/portraits/men/48.jpg',4.4,73,1752,'Experienced professional delivering high-quality services','44e7914d-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60867-231d-11f1-afb3-0c9a3c3a182f','Rahul Jain','Cricketer','sub1',2,'Hyderabad, India','https://randomuser.me/api/portraits/men/41.jpg',4,189,1775,'Experienced professional delivering high-quality services','44e79387-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff6089c-231d-11f1-afb3-0c9a3c3a182f','Pooja Sharma','Angular Developer','sub1',10,'Bangalore, India','https://randomuser.me/api/portraits/men/50.jpg',4.8,232,1217,'Experienced professional delivering high-quality services','44e79668-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff608c2-231d-11f1-afb3-0c9a3c3a182f','Kunal Shah','Cricketer','sub4',11,'Hyderabad, India','https://randomuser.me/api/portraits/men/31.jpg',4.4,126,2201,'Experienced professional delivering high-quality services','44e7986b-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff608ec-231d-11f1-afb3-0c9a3c3a182f','Meera Nair','Cricketer','sub2',4,'Bangalore, India','https://randomuser.me/api/portraits/men/27.jpg',4.7,210,3387,'Experienced professional delivering high-quality services','44e79b02-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60914-231d-11f1-afb3-0c9a3c3a182f','Vikas Yadav','Java Developer','sub2',2,'Pune, India','https://randomuser.me/api/portraits/men/36.jpg',4.1,99,3480,'Experienced professional delivering high-quality services','44e79d85-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff6094b-231d-11f1-afb3-0c9a3c3a182f','Ankit Gupta','Java Developer','sub1',3,'Mumbai, India','https://randomuser.me/api/portraits/men/13.jpg',4.2,111,3236,'Experienced professional delivering high-quality services','44e79f9e-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff6096e-231d-11f1-afb3-0c9a3c3a182f','Ritika Roy','Designer','sub4',4,'Bangalore, India','https://randomuser.me/api/portraits/men/31.jpg',4.1,164,2396,'Experienced professional delivering high-quality services','44e7a18a-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60995-231d-11f1-afb3-0c9a3c3a182f','Sahil Khan','Angular Developer','sub2',9,'Bangalore, India','https://randomuser.me/api/portraits/men/25.jpg',4.2,134,2200,'Experienced professional delivering high-quality services','44e7a3b9-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff609c0-231d-11f1-afb3-0c9a3c3a182f','Deepak Joshi','Java Developer','sub1',2,'Hyderabad, India','https://randomuser.me/api/portraits/men/18.jpg',4,77,2284,'Experienced professional delivering high-quality services','44e7a5d6-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff609e5-231d-11f1-afb3-0c9a3c3a182f','Aman Verma','Angular Developer','sub6',10,'Mumbai, India','https://randomuser.me/api/portraits/men/46.jpg',4.6,110,2596,'Experienced professional delivering high-quality services','44e7a7ad-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60a0b-231d-11f1-afb3-0c9a3c3a182f','Shreya Das','Cricketer','sub4',8,'Delhi, India','https://randomuser.me/api/portraits/men/36.jpg',4,229,1962,'Experienced professional delivering high-quality services','44e7a9a1-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60a31-231d-11f1-afb3-0c9a3c3a182f','Harsh Mehta','Angular Developer','sub6',6,'Delhi, India','https://randomuser.me/api/portraits/men/9.jpg',4.3,223,2086,'Experienced professional delivering high-quality services','44e7abda-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60a55-231d-11f1-afb3-0c9a3c3a182f','Divya Reddy','Designer','sub2',5,'Pune, India','https://randomuser.me/api/portraits/men/6.jpg',4.4,157,2212,'Experienced professional delivering high-quality services','44e7adff-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60a7b-231d-11f1-afb3-0c9a3c3a182f','Yash Agarwal','Cricketer','sub2',4,'Mumbai, India','https://randomuser.me/api/portraits/men/5.jpg',4.4,187,1349,'Experienced professional delivering high-quality services','44e7b014-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60aa4-231d-11f1-afb3-0c9a3c3a182f','Kriti Jain','Angular Developer','sub2',5,'Hyderabad, India','https://randomuser.me/api/portraits/men/47.jpg',4.2,117,564,'Experienced professional delivering high-quality services','44e7b236-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60ac8-231d-11f1-afb3-0c9a3c3a182f','Manish Pandey','Cricketer','sub2',3,'Bangalore, India','https://randomuser.me/api/portraits/men/34.jpg',4.4,93,2774,'Experienced professional delivering high-quality services','44e7b463-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60aec-231d-11f1-afb3-0c9a3c3a182f','Nikhil Arora','Doctor','sub4',7,'Pune, India','https://randomuser.me/api/portraits/men/18.jpg',4.2,58,2142,'Experienced professional delivering high-quality services','44e7b680-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60b14-231d-11f1-afb3-0c9a3c3a182f','Simran Kaur','Angular Developer','sub2',4,'Bangalore, India','https://randomuser.me/api/portraits/men/39.jpg',4.7,124,2495,'Experienced professional delivering high-quality services','44e7b8b3-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60b3a-231d-11f1-afb3-0c9a3c3a182f','Tushar Gupta','Java Developer','sub2',2,'Delhi, India','https://randomuser.me/api/portraits/men/49.jpg',4.6,249,1165,'Experienced professional delivering high-quality services','44e7baff-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60b5d-231d-11f1-afb3-0c9a3c3a182f','Rohan Das','Angular Developer','sub1',4,'Pune, India','https://randomuser.me/api/portraits/men/38.jpg',4.4,224,722,'Experienced professional delivering high-quality services','44e7bdf9-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60b81-231d-11f1-afb3-0c9a3c3a182f','Anjali Singh','Chef','sub6',5,'Bangalore, India','https://randomuser.me/api/portraits/men/44.jpg',4.1,180,791,'Experienced professional delivering high-quality services','44e7c04b-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60ba7-231d-11f1-afb3-0c9a3c3a182f','Suresh Yadav','Angular Developer','sub6',6,'Delhi, India','https://randomuser.me/api/portraits/men/47.jpg',4.2,137,1871,'Experienced professional delivering high-quality services','44e7c2e6-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60bf9-231d-11f1-afb3-0c9a3c3a182f','Komal Jain','Angular Developer','sub4',3,'Delhi, India','https://randomuser.me/api/portraits/men/11.jpg',4.4,133,3126,'Experienced professional delivering high-quality services','44e7c79a-231d-11f1-afb3-0c9a3c3a182f',NULL,NULL,NULL),('4ff60c2e-231d-11f1-afb3-0c9a3c3a182f','manya','Chef','sub6',6,'Hyderabad, India','https://randomuser.me/api/portraits/men/31.jpg',4.1,138,669,'Experienced professional delivering high-quality services','4867d547-8967-4a47-ae47-012a1e1d2e92',NULL,NULL,NULL),('57e810ed-fe5b-46d0-9692-8c01713eb160','Prathamesh','Java Developer','sub1',2,'Pune','https://images.pexels.com/photos/7207125/pexels-photo-7207125.jpeg',NULL,NULL,200,'im a professional java developer','e820eb44-5ca5-4214-acc2-98a3508c121b',NULL,NULL,NULL),('5ce49a68-2252-11f1-b55c-0c9a3c3a182f','Rahul Sharma','Java Developer',NULL,4,'Pune, India','https://randomuser.me/api/portraits/men/1.jpg',4.7,120,1500,'Experienced Java backend developer',NULL,NULL,NULL,NULL),('5ce4a7b3-2252-11f1-b55c-0c9a3c3a182f','Anjali Verma','Angular Developer',NULL,3,'Bangalore, India','https://randomuser.me/api/portraits/women/2.jpg',4.8,95,1200,'Frontend Angular specialist',NULL,NULL,NULL,NULL),('5ce4ac72-2252-11f1-b55c-0c9a3c3a182f','Virat Kohli','Cricketer',NULL,15,'India','https://randomuser.me/api/portraits/men/3.jpg',5,1000,5000,'World-class batsman',NULL,NULL,NULL,NULL),('5ce4af83-2252-11f1-b55c-0c9a3c3a182f','Chef Marco','Italian Chef',NULL,10,'Italy','https://randomuser.me/api/portraits/men/4.jpg',4.9,300,2500,'Expert in Italian cuisine',NULL,NULL,NULL,NULL),('8685f7e4-dbe6-49d5-9fe5-49a294f36740','Shanti','Shanti','sub1',12,'Pune',NULL,NULL,NULL,223,'Bijssakjahmadswewewqew','f122639a-e487-4f6c-a7f5-a959082a5986',NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `candidate_id` char(36) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_candidate_skills` (`candidate_id`),
  CONSTRAINT `candidate_skills_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_candidate_skills` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (1,'5ce49a68-2252-11f1-b55c-0c9a3c3a182f','Spring Boot'),(2,'5ce49a68-2252-11f1-b55c-0c9a3c3a182f','Microservices'),(3,'5ce49a68-2252-11f1-b55c-0c9a3c3a182f','MySQL'),(4,'5ce4a7b3-2252-11f1-b55c-0c9a3c3a182f','Angular'),(5,'5ce4a7b3-2252-11f1-b55c-0c9a3c3a182f','TypeScript'),(6,'5ce4ac72-2252-11f1-b55c-0c9a3c3a182f','Batting'),(7,'5ce4ac72-2252-11f1-b55c-0c9a3c3a182f','Leadership'),(8,'5ce4af83-2252-11f1-b55c-0c9a3c3a182f','Pasta'),(9,'5ce4af83-2252-11f1-b55c-0c9a3c3a182f','Pizza'),(43,'362c8168-10d2-450b-9ab7-4099c1593e36','Java'),(44,'362c8168-10d2-450b-9ab7-4099c1593e36','Html'),(45,'2047ae8f-252b-417e-9f1a-c726ac60b94e','Singing'),(46,'14061dad-7a05-4e10-859b-8fd2016de4b5','Python'),(47,'14061dad-7a05-4e10-859b-8fd2016de4b5','Django'),(48,'039445e6-f8c4-4b27-81e5-179be11d99ef','Java'),(49,'039445e6-f8c4-4b27-81e5-179be11d99ef','Springboot'),(50,'8685f7e4-dbe6-49d5-9fe5-49a294f36740','Java'),(51,'8685f7e4-dbe6-49d5-9fe5-49a294f36740','React'),(52,'3efe8573-5c71-432c-b024-eff5edcf8d53','Heart'),(53,'57e810ed-fe5b-46d0-9692-8c01713eb160','Java'),(54,'57e810ed-fe5b-46d0-9692-8c01713eb160','Springboot'),(55,'57e810ed-fe5b-46d0-9692-8c01713eb160','React');
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` char(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('cat1','Digital & Software','Tech and IT services','https://images.unsplash.com/photo-1518770660439-4636190af475','code'),('cat10','Photography','Professional photographers','https://images.unsplash.com/photo-1516035069371-29a1b244cc32','camera'),('cat2','Sports','Professional athletes','https://www.google.com/url?sa=t&source=web&rct=j&url=https%3A%2F%2Fwww.istockphoto.com%2Fstock-photos%2Fsports-and-recreation&ved=0CBYQjRxqFwoTCMi3m5rLqpMDFQAAAAAdAAAAABAF&opi=89978449','activity'),('cat3','Culinary','Food and chefs','https://images.unsplash.com/photo-1498579809087-ef1e558fd1da','utensils'),('cat4','Design','Creative design services','https://images.unsplash.com/photo-1500530855697-b586d89ba3ee','palette'),('cat5','Marketing','Digital marketing experts','https://images.unsplash.com/photo-1556745757-8d76bdb6984b','megaphone'),('cat6','Writing','Content writing and blogging','https://images.unsplash.com/photo-1455390582262-044cdead277a','pen'),('cat7','Finance','Financial and accounting services','https://images.unsplash.com/photo-1554224155-6726b3ff858f','dollar'),('cat8','Education','Tutors and trainers','https://images.unsplash.com/photo-1523240795612-9a054b0db644','book'),('cat9','Healthcare','Doctors and medical experts','https://images.unsplash.com/photo-1588776814546-ec7e97c4a5b3','heart');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations` (
  `id` char(36) NOT NULL,
  `buyer_id` varchar(255) DEFAULT NULL,
  `seller_id` varchar(255) DEFAULT NULL,
  `last_message` varchar(255) DEFAULT NULL,
  `last_message_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_seller` (`seller_id`),
  KEY `idx_conversations_users` (`buyer_id`,`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
INSERT INTO `conversations` VALUES ('0a6fff48-21e7-4faa-a945-3f76664ad148','4867d547-8967-4a47-ae47-012a1e1d2e92','5ce4ac72-2252-11f1-b55c-0c9a3c3a182f','what are you doing','2026-03-18 22:16:32','2026-03-18 22:15:35'),('58550ef3-afd4-498d-846c-2af0e46c174a','f122639a-e487-4f6c-a7f5-a959082a5986','5ce4ac72-2252-11f1-b55c-0c9a3c3a182f','hiii','2026-03-21 10:57:19','2026-03-21 10:57:14'),('6d1efa4a-41fc-4da6-9217-c2d529530bdd','e820eb44-5ca5-4214-acc2-98a3508c121b','4867d547-8967-4a47-ae47-012a1e1d2e92','hi howw are you','2026-03-22 07:51:10','2026-03-22 07:49:51'),('8ceae68f-9390-4ef6-b554-4b8fdc67b6e8','e820eb44-5ca5-4214-acc2-98a3508c121b','f122639a-e487-4f6c-a7f5-a959082a5986','grgekhea','2026-03-22 07:49:33','2026-03-22 07:49:27'),('986126c2-82ed-4e01-a83b-13a332357fc4','4867d547-8967-4a47-ae47-012a1e1d2e92','5ce4af83-2252-11f1-b55c-0c9a3c3a182f',NULL,NULL,'2026-03-18 22:58:36'),('b7782d45-5a18-4c59-ac03-93db160302a4','4867d547-8967-4a47-ae47-012a1e1d2e92','b8dbf775-065f-47d1-9708-30d6724724c5','hii','2026-03-19 10:14:28','2026-03-19 10:02:46'),('c9245754-7629-435a-ad65-2b10faf243e4','f122639a-e487-4f6c-a7f5-a959082a5986','4867d547-8967-4a47-ae47-012a1e1d2e92','hiii','2026-03-21 10:59:10','2026-03-21 10:58:13'),('c9672fb7-0763-47d3-b7f3-86897d72e83b','6046bba1-0de9-4a7a-965a-cf07ebe03798','4867d547-8967-4a47-ae47-012a1e1d2e92','Hi my name is xyzzzz','2026-03-21 04:44:02','2026-03-21 04:43:32'),('c96ca5d9-20d2-42d0-bf11-7d9c6e52fbd1','b8dbf775-065f-47d1-9708-30d6724724c5','4867d547-8967-4a47-ae47-012a1e1d2e92','hi','2026-03-21 19:17:02','2026-03-19 10:04:12'),('f1c3c591-5f33-4dab-803b-ee4437e99bc5','6046bba1-0de9-4a7a-965a-cf07ebe03798','fa1070cb-5668-414f-902d-2b87eac52c5d','hii','2026-03-21 04:42:12','2026-03-21 04:42:06');
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` varchar(255) NOT NULL,
  `conversation_id` char(36) DEFAULT NULL,
  `sender_id` char(36) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_sender` (`sender_id`),
  KEY `idx_messages_conv` (`conversation_id`),
  CONSTRAINT `fk_conversation` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES ('0a6dec37-a8ca-4969-833a-7f2d5ee03a56','c9672fb7-0763-47d3-b7f3-86897d72e83b','6046bba1-0de9-4a7a-965a-cf07ebe03798','Hi my name is xyzzzz',0,'2026-03-21 04:44:02'),('0ad47b90-a091-4c37-9538-6ad314400738','6d1efa4a-41fc-4da6-9217-c2d529530bdd','4867d547-8967-4a47-ae47-012a1e1d2e92','hi howw are you',0,'2026-03-22 07:51:10'),('21417db4-7731-4e15-a3dc-37d2f6cb796e','c9245754-7629-435a-ad65-2b10faf243e4','4867d547-8967-4a47-ae47-012a1e1d2e92','hiii',0,'2026-03-21 10:59:10'),('55b4f961-60af-47ce-b1a6-dfa8e369f8c1','58550ef3-afd4-498d-846c-2af0e46c174a','f122639a-e487-4f6c-a7f5-a959082a5986','hiii',0,'2026-03-21 10:57:19'),('5be13b8e-0e95-4a0d-a075-c39ededeabea','f1c3c591-5f33-4dab-803b-ee4437e99bc5','6046bba1-0de9-4a7a-965a-cf07ebe03798','hii',0,'2026-03-21 04:42:12'),('9023e5fb-c549-4d99-9288-211c5f29ac5f','c9672fb7-0763-47d3-b7f3-86897d72e83b','6046bba1-0de9-4a7a-965a-cf07ebe03798','hiii',0,'2026-03-21 04:43:39'),('90c25686-5bad-4333-a8ba-5e73449e7436','0a6fff48-21e7-4faa-a945-3f76664ad148','4867d547-8967-4a47-ae47-012a1e1d2e92','hiii',0,'2026-03-18 22:15:41'),('96967464-c521-4705-8a63-ed9f5fcec054','b7782d45-5a18-4c59-ac03-93db160302a4','b8dbf775-065f-47d1-9708-30d6724724c5','hii',0,'2026-03-19 10:14:28'),('a24c29f9-208e-48e9-9040-751eac2d8732','c9245754-7629-435a-ad65-2b10faf243e4','f122639a-e487-4f6c-a7f5-a959082a5986','Hiii',0,'2026-03-21 10:58:19'),('a6dd3562-d4ea-4e43-99ab-6b8ae0b05f17','c96ca5d9-20d2-42d0-bf11-7d9c6e52fbd1','4867d547-8967-4a47-ae47-012a1e1d2e92','hi',0,'2026-03-21 19:17:02'),('b9281a70-0d3c-4e62-b8f3-d80972622961','6d1efa4a-41fc-4da6-9217-c2d529530bdd','e820eb44-5ca5-4214-acc2-98a3508c121b','hii',0,'2026-03-22 07:49:55'),('c0ba0393-d2a3-44e8-abff-cc2cf097e96b','8ceae68f-9390-4ef6-b554-4b8fdc67b6e8','e820eb44-5ca5-4214-acc2-98a3508c121b','grgekhea',0,'2026-03-22 07:49:33'),('cd9334ef-fe69-4670-9ce9-4f02851b6ae8','0a6fff48-21e7-4faa-a945-3f76664ad148','4867d547-8967-4a47-ae47-012a1e1d2e92','what are you doing',0,'2026-03-18 22:16:32'),('e5216929-3214-4eb7-be3f-1b758efeeb9c','b7782d45-5a18-4c59-ac03-93db160302a4','4867d547-8967-4a47-ae47-012a1e1d2e92','hiii',0,'2026-03-19 10:02:51');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` varchar(255) NOT NULL,
  `candidate_id` char(36) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `project_type` varchar(255) DEFAULT NULL,
  `required_roles` varchar(1000) DEFAULT NULL,
  `required_skills` varchar(1000) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `owner_id` varchar(255) DEFAULT NULL,
  `team_size` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_candidate` (`candidate_id`),
  CONSTRAINT `fk_project_candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('00448a42-89bf-46c1-a631-3efe70112d8d',NULL,'Ecommerce','hkvdvyldguiyddvsfhk.guifydfvhk.vhk.djsdfvavd','sdiugfildwsgfvsdvbf;vds;k','commercial','Python Developers','Python','Open','4867d547-8967-4a47-ae47-012a1e1d2e92',1),('08a8295e-4701-411f-9f57-76f7cac14e9a',NULL,'Stock Market Prediction','Sigdbmdkjfhoewhljbem,mejlheqeewrwew','https://images.pexels.com/photos/7207125/pexels-photo-7207125.jpeg','commercial','Java developer','Java , Marketing','Open','e820eb44-5ca5-4214-acc2-98a3508c121b',4),('217307a5-c6b1-4a93-b786-49b79f622da0',NULL,'Collage Project','agdjagjegrtewgrhjewvrgewkrgewrrw','geggregrgekgreqgkrgkqg','academic','Java Developer','Java,react','Open','6046bba1-0de9-4a7a-965a-cf07ebe03798',4),('66985991-35a4-4b97-a8f2-741d8584cb99',NULL,'Shanti Sabhagruh','shantabai shantabai lakhachi jaan rupachi khaan najrecha baan tir kamaan mariti chakra tuza ka nakhra','12','opensource','Cricketer','Bowling','Open','f122639a-e487-4f6c-a7f5-a959082a5986',11),('6aa523a4-2252-11f1-b55c-0c9a3c3a182f','5ce49a68-2252-11f1-b55c-0c9a3c3a182f','E-Commerce Backend','Built scalable backend using Spring Boot','https://images.unsplash.com/photo-1556742049-0cfed4f6a45d',NULL,NULL,NULL,NULL,NULL,NULL),('6aa52e13-2252-11f1-b55c-0c9a3c3a182f','5ce4a7b3-2252-11f1-b55c-0c9a3c3a182f','Portfolio Website','Angular based modern UI','https://images.unsplash.com/photo-1498050108023-c5249f4df085',NULL,NULL,NULL,NULL,NULL,NULL),('6aa531a7-2252-11f1-b55c-0c9a3c3a182f','5ce4af83-2252-11f1-b55c-0c9a3c3a182f','Italian Restaurant Menu','Designed premium menu','https://images.unsplash.com/photo-1525755662778-989d0524087e',NULL,NULL,NULL,NULL,NULL,NULL),('f8da8f38-847d-4619-b6b4-90413334130d',NULL,'basedsd','bsdsdasndkjsdasdsaadbakbdkfkaj','dksankdksajkndka','commercial','sdsdasljd','sdkjsnadjnsajnd','Open','b8dbf775-065f-47d1-9708-30d6724724c5',1);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_invitations`
--

DROP TABLE IF EXISTS `project_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_invitations` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `candidate_id` varchar(255) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp99nb1y5ttic4wp5pltjewnfc` (`candidate_id`),
  KEY `FK23axmrvcwxfnp08lgoj0k9p80` (`project_id`),
  CONSTRAINT `FK23axmrvcwxfnp08lgoj0k9p80` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `FKp99nb1y5ttic4wp5pltjewnfc` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_invitations`
--

LOCK TABLES `project_invitations` WRITE;
/*!40000 ALTER TABLE `project_invitations` DISABLE KEYS */;
INSERT INTO `project_invitations` VALUES ('13c38389-c7ef-478d-b96d-7689d54acdaa','2026-03-22 00:57:56.494924','b8dbf775-065f-47d1-9708-30d6724724c5','REJECTED','2047ae8f-252b-417e-9f1a-c726ac60b94e','f8da8f38-847d-4619-b6b4-90413334130d'),('163a3c02-7980-49df-ac8e-6806f31460fe','2026-03-19 15:09:56.723586','4867d547-8967-4a47-ae47-012a1e1d2e92','PENDING','5ce4ac72-2252-11f1-b55c-0c9a3c3a182f','00448a42-89bf-46c1-a631-3efe70112d8d'),('5caddfd0-a545-4ff7-87e2-4f4be69857a9','2026-03-21 10:13:26.826245','6046bba1-0de9-4a7a-965a-cf07ebe03798','PENDING','4ff60c2e-231d-11f1-afb3-0c9a3c3a182f','217307a5-c6b1-4a93-b786-49b79f622da0'),('6218740f-aebf-4d26-81fa-3ecaf94edee8','2026-03-22 13:19:24.832829','e820eb44-5ca5-4214-acc2-98a3508c121b','PENDING','8685f7e4-dbe6-49d5-9fe5-49a294f36740','08a8295e-4701-411f-9f57-76f7cac14e9a'),('8736baed-79a1-4a06-ac20-3871ed4455d1','2026-03-21 16:28:09.541667','f122639a-e487-4f6c-a7f5-a959082a5986','PENDING','4ff60c2e-231d-11f1-afb3-0c9a3c3a182f','66985991-35a4-4b97-a8f2-741d8584cb99'),('af9a6ab8-1ac8-4b4d-94fc-74b6013ed0be','2026-03-19 15:22:22.074577','4867d547-8967-4a47-ae47-012a1e1d2e92','ACCEPTED','2047ae8f-252b-417e-9f1a-c726ac60b94e','00448a42-89bf-46c1-a631-3efe70112d8d'),('b7c1475a-f73e-4340-8cd4-0e8245e6057f','2026-03-19 15:32:39.697538','4867d547-8967-4a47-ae47-012a1e1d2e92','ACCEPTED','14061dad-7a05-4e10-859b-8fd2016de4b5','00448a42-89bf-46c1-a631-3efe70112d8d'),('e9a477d2-2464-4e89-a80a-1cde8b3aae6d','2026-03-21 10:11:59.203026','6046bba1-0de9-4a7a-965a-cf07ebe03798','PENDING','362c8168-10d2-450b-9ab7-4099c1593e36','217307a5-c6b1-4a93-b786-49b79f622da0'),('f9cbb1b9-94da-404e-b0cf-f4697d2f29a7','2026-03-22 13:19:48.089301','e820eb44-5ca5-4214-acc2-98a3508c121b','ACCEPTED','2047ae8f-252b-417e-9f1a-c726ac60b94e','08a8295e-4701-411f-9f57-76f7cac14e9a'),('fcedd23e-6ae0-4132-8f75-1944db291b5e','2026-03-21 16:27:10.301797','f122639a-e487-4f6c-a7f5-a959082a5986','PENDING','5ce4ac72-2252-11f1-b55c-0c9a3c3a182f','66985991-35a4-4b97-a8f2-741d8584cb99'),('ff77c029-66c6-4d89-9cb7-54c041d53e25','2026-03-19 15:09:34.384245','4867d547-8967-4a47-ae47-012a1e1d2e92','PENDING','5ce4af83-2252-11f1-b55c-0c9a3c3a182f','00448a42-89bf-46c1-a631-3efe70112d8d');
/*!40000 ALTER TABLE `project_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_category` (
  `id` char(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` VALUES ('sub1','Java Developer','cat1'),('sub10','Accountant','cat7'),('sub11','Tutor','cat8'),('sub12','Doctor','cat9'),('sub13','Photographer','cat10'),('sub2','Angular Developer','cat1'),('sub3','Python Developer','cat1'),('sub4','Cricketer','cat2'),('sub5','Footballer','cat2'),('sub6','Chef','cat3'),('sub7','UI/UX Designer','cat4'),('sub8','SEO Specialist','cat5'),('sub9','Content Writer','cat6');
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_users_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('44e726cb-231d-11f1-afb3-0c9a3c3a182f','Amit Sharma','amit1@gmail.com','pass','seller',NULL),('44e78492-231d-11f1-afb3-0c9a3c3a182f','Priya Mehta','priya2@gmail.com','pass','seller',NULL),('44e78994-231d-11f1-afb3-0c9a3c3a182f','Rohit Verma','rohit3@gmail.com','pass','seller',NULL),('44e78c4a-231d-11f1-afb3-0c9a3c3a182f','Neha Kapoor','neha4@gmail.com','pass','seller',NULL),('44e78e91-231d-11f1-afb3-0c9a3c3a182f','Arjun Singh','arjun5@gmail.com','pass','seller',NULL),('44e7914d-231d-11f1-afb3-0c9a3c3a182f','Sneha Iyer','sneha6@gmail.com','pass','seller',NULL),('44e79387-231d-11f1-afb3-0c9a3c3a182f','Rahul Jain','rahul7@gmail.com','pass','seller',NULL),('44e79668-231d-11f1-afb3-0c9a3c3a182f','Pooja Sharma','pooja8@gmail.com','pass','seller',NULL),('44e7986b-231d-11f1-afb3-0c9a3c3a182f','Kunal Shah','kunal9@gmail.com','pass','seller',NULL),('44e79b02-231d-11f1-afb3-0c9a3c3a182f','Meera Nair','meera10@gmail.com','pass','seller',NULL),('44e79d85-231d-11f1-afb3-0c9a3c3a182f','Vikas Yadav','vikas11@gmail.com','pass','seller',NULL),('44e79f9e-231d-11f1-afb3-0c9a3c3a182f','Ankit Gupta','ankit12@gmail.com','pass','seller',NULL),('44e7a18a-231d-11f1-afb3-0c9a3c3a182f','Ritika Roy','ritika13@gmail.com','pass','seller',NULL),('44e7a3b9-231d-11f1-afb3-0c9a3c3a182f','Sahil Khan','sahil14@gmail.com','pass','seller',NULL),('44e7a5d6-231d-11f1-afb3-0c9a3c3a182f','Deepak Joshi','deepak15@gmail.com','pass','seller',NULL),('44e7a7ad-231d-11f1-afb3-0c9a3c3a182f','Aman Verma','aman16@gmail.com','pass','seller',NULL),('44e7a9a1-231d-11f1-afb3-0c9a3c3a182f','Shreya Das','shreya17@gmail.com','pass','seller',NULL),('44e7abda-231d-11f1-afb3-0c9a3c3a182f','Harsh Mehta','harsh18@gmail.com','pass','seller',NULL),('44e7adff-231d-11f1-afb3-0c9a3c3a182f','Divya Reddy','divya19@gmail.com','pass','seller',NULL),('44e7b014-231d-11f1-afb3-0c9a3c3a182f','Yash Agarwal','yash20@gmail.com','pass','seller',NULL),('44e7b236-231d-11f1-afb3-0c9a3c3a182f','Kriti Jain','kriti21@gmail.com','pass','seller',NULL),('44e7b463-231d-11f1-afb3-0c9a3c3a182f','Manish Pandey','manish22@gmail.com','pass','seller',NULL),('44e7b680-231d-11f1-afb3-0c9a3c3a182f','Nikhil Arora','nikhil23@gmail.com','pass','seller',NULL),('44e7b8b3-231d-11f1-afb3-0c9a3c3a182f','Simran Kaur','simran24@gmail.com','pass','seller',NULL),('44e7baff-231d-11f1-afb3-0c9a3c3a182f','Tushar Gupta','tushar25@gmail.com','pass','seller',NULL),('44e7bdf9-231d-11f1-afb3-0c9a3c3a182f','Rohan Das','rohan26@gmail.com','pass','seller',NULL),('44e7c04b-231d-11f1-afb3-0c9a3c3a182f','Anjali Singh','anjali27@gmail.com','pass','seller',NULL),('44e7c2e6-231d-11f1-afb3-0c9a3c3a182f','Suresh Yadav','suresh28@gmail.com','pass','seller',NULL),('44e7c530-231d-11f1-afb3-0c9a3c3a182f','Varun Malhotra','varun29@gmail.com','pass','seller',NULL),('44e7c79a-231d-11f1-afb3-0c9a3c3a182f','Komal Jain','komal30@gmail.com','pass','seller',NULL),('4867d547-8967-4a47-ae47-012a1e1d2e92','manya','manya@gmail.com','$2a$10$8KEBb8nxNbtEIWF9FO5kwuhNRZ9OFB.bq56pP5E/i.TLIquwbGffm','seller',NULL),('57fac984-68fd-4bf4-b7ad-4bbf0e07b32a','Madhu','madhu@gmail.com','$2a$10$prM7h6cHiLRZASQ3B20Wbee9xHuyRlTGe2bYA8ckzWExj18RIrzSm','seller',NULL),('6046bba1-0de9-4a7a-965a-cf07ebe03798','Pratham','pratham@gmail.com','$2a$10$L82K7Jy4CDLSLqQA0i4HkOdSfS7DlFBdlwM7Id7vnnTdl9wI3oA5S','seller',NULL),('71e8c3f3-2252-11f1-b55c-0c9a3c3a182f','Client User','client@test.com','password123','CLIENT',NULL),('71ea7118-2252-11f1-b55c-0c9a3c3a182f','Rahul Sharma','rahul@test.com','password123','FREELANCER',NULL),('b8dbf775-065f-47d1-9708-30d6724724c5','Fahil','fa@gmail.com','$2a$10$OJeTOPVkIJgA3dm0FHx4MevY2FNoeJwwdDms/zqWSlmnZ.5ejUegS','seller',NULL),('e820eb44-5ca5-4214-acc2-98a3508c121b','Prathamesh','pra@gmail.com','$2a$10$5EfO1KYszN/7YzDMQQeYaOnLrJgFUq8cyIx5JTeozXWi1fVoyoypm','seller',NULL),('f122639a-e487-4f6c-a7f5-a959082a5986','Shanti','shanti@gmail.com','$2a$10$xrkI4X6fBi.rAHnsBe/gn.OouLTK/E6tLf/SCuG730Wq96jM2rBwi','seller',NULL),('fa1070cb-5668-414f-902d-2b87eac52c5d','omjadhav','om@gmail.com','$2a$10$w/txCZhqaMMlkbB30moGYu9TmB8Wdrs0Z6sFYgzJddHqI7T9EHv3e','seller',NULL);
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

-- Dump completed on 2026-03-22 23:11:16
