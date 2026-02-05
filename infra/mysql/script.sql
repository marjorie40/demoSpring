-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: bed_pizza
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `id_user` int NOT NULL AUTO_INCREMENT,
                         `id_admin` int DEFAULT NULL,
                         `id_role` int NOT NULL DEFAULT '1',
                         `id_address` int DEFAULT NULL,
                         `firstname` varchar(255) DEFAULT NULL,
                         `lastname` varchar(255) DEFAULT NULL,
                         `phone` varchar(255) DEFAULT NULL,
                         `email` varchar(255) DEFAULT NULL,
                         `password_hash` varchar(255) NOT NULL,
                         `is_deleted` tinyint(1) DEFAULT NULL,
                         PRIMARY KEY (`id_user`),
                         UNIQUE KEY `id_user` (`id_user`),
                         UNIQUE KEY `phone` (`phone`),
                         UNIQUE KEY `email` (`email`),
                         KEY `id_admin` (`id_admin`),
                         KEY `id_address` (`id_address`),
                         KEY `id_role` (`id_role`),
                         CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `users` (`id_user`),
                         CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_address`) REFERENCES `addresses` (`id_address`),
                         CONSTRAINT `users_ibfk_3` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,3,1,'Julien','Machin','0612345678','julien.admin1@example.com','$2a$12$...',0),(2,NULL,3,2,'Sophie','Truc','0687654321','sophie.admin2@example.com','$2a$12$...',0),(3,1,2,3,'Thomas','Martin','0611223344','thomas.host1@example.com','$2a$12$.98',0),(4,1,2,4,'Camille','Dupont','0655667788','camille.host2@example.com','$2a$12$.213',0),(5,2,1,5,'Lucas','Chauvin','0699887766','lucas.guest1@example.com','$2a$12$.325',0),(6,2,1,6,'Emma','Pomme','0644332211','emma.guest2@example.com','$2a$12$1218',0);
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

-- Dump completed on 2026-02-05 16:14:50
