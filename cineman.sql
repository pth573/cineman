-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: cineman
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `ghe328`
--

DROP TABLE IF EXISTS `ghe328`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ghe328` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `phongchieu328id` int DEFAULT NULL,
                          `vitri` varchar(50) NOT NULL,
                          `mota` varchar(255) NOT NULL,
                          PRIMARY KEY (`id`),
                          KEY `phongchieu328id` (`phongchieu328id`),
                          CONSTRAINT `ghe328_ibfk_1` FOREIGN KEY (`phongchieu328id`) REFERENCES `phongchieu328` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghe328`
--

LOCK TABLES `ghe328` WRITE;
/*!40000 ALTER TABLE `ghe328` DISABLE KEYS */;
INSERT INTO `ghe328` VALUES (1,1,'A1','Ghế VIP'),(2,1,'A2','Ghế thường'),(3,2,'B1','Ghế VIP'),(4,2,'B2','Ghế thường'),(5,3,'C1','Ghế thường');
/*!40000 ALTER TABLE `ghe328` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang328`
--

DROP TABLE IF EXISTS `khachhang328`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang328` (
                                `id` int NOT NULL,
                                PRIMARY KEY (`id`),
                                CONSTRAINT `khachhang328_ibfk_1` FOREIGN KEY (`id`) REFERENCES `thanhvien328` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang328`
--

LOCK TABLES `khachhang328` WRITE;
/*!40000 ALTER TABLE `khachhang328` DISABLE KEYS */;
INSERT INTO `khachhang328` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `khachhang328` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichchieu328`
--

DROP TABLE IF EXISTS `lichchieu328`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichchieu328` (
                                `id` int NOT NULL AUTO_INCREMENT,
                                `phim328id` int NOT NULL,
                                `phongchieu328id` int NOT NULL,
                                `ngaygiobatdau` datetime DEFAULT NULL,
                                `ngaygioketthuc` datetime DEFAULT NULL,
                                PRIMARY KEY (`id`),
                                KEY `phim328id` (`phim328id`),
                                KEY `phongchieu328id` (`phongchieu328id`),
                                CONSTRAINT `lichchieu328_ibfk_1` FOREIGN KEY (`phim328id`) REFERENCES `phim328` (`id`),
                                CONSTRAINT `lichchieu328_ibfk_2` FOREIGN KEY (`phongchieu328id`) REFERENCES `phongchieu328` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichchieu328`
--

LOCK TABLES `lichchieu328` WRITE;
/*!40000 ALTER TABLE `lichchieu328` DISABLE KEYS */;
INSERT INTO `lichchieu328` VALUES (25,1,1,'2024-10-31 01:20:00','2024-10-31 02:20:00'),(26,1,1,'2024-10-31 01:20:00','2024-10-31 02:20:00'),(27,1,1,'2024-10-31 01:20:00','2024-10-31 02:20:00');
/*!40000 ALTER TABLE `lichchieu328` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien328`
--

DROP TABLE IF EXISTS `nhanvien328`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien328` (
                               `id` int NOT NULL,
                               `chucvu` varchar(50) NOT NULL,
                               PRIMARY KEY (`id`),
                               CONSTRAINT `nhanvien328_ibfk_1` FOREIGN KEY (`id`) REFERENCES `thanhvien328` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien328`
--

LOCK TABLES `nhanvien328` WRITE;
/*!40000 ALTER TABLE `nhanvien328` DISABLE KEYS */;
INSERT INTO `nhanvien328` VALUES (2,'QUANLY');
/*!40000 ALTER TABLE `nhanvien328` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phim328`
--

DROP TABLE IF EXISTS `phim328`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phim328` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `ten` varchar(255) NOT NULL,
                           `mota` text,
                           `theloai` varchar(100) DEFAULT NULL,
                           `thoiluong` int DEFAULT NULL,
                           `ngaygiokhoichieu` datetime DEFAULT NULL,
                           `ngaygioketthuc` datetime DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phim328`
--

LOCK TABLES `phim328` WRITE;
/*!40000 ALTER TABLE `phim328` DISABLE KEYS */;
INSERT INTO `phim328` VALUES (1,'Phim 1','Mô tả phim 1','Hành động',120,'2024-10-30 18:00:00','2024-12-30 20:00:00'),(2,'Phim 2','Mô tả phim 2','Kinh dị',90,'2024-10-31 19:00:00','2024-12-31 20:30:00'),(3,'Phim 3','Mô tả phim 3','Hài',105,'2024-11-01 20:00:00','2024-12-01 21:45:00'),(4,'Phim 4','Mô tả phim 4','Khoa học viễn tưởng',150,'2024-12-02 21:00:00','2025-11-02 23:30:00'),(5,'Phim 5','Mô tả phim 5','Tình cảm',130,'2024-12-03 18:00:00','2025-11-03 20:10:00');
/*!40000 ALTER TABLE `phim328` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongchieu328`
--

DROP TABLE IF EXISTS `phongchieu328`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongchieu328` (
                                 `id` int NOT NULL AUTO_INCREMENT,
                                 `ten` varchar(255) NOT NULL,
                                 `soluongghe` int NOT NULL,
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongchieu328`
--

LOCK TABLES `phongchieu328` WRITE;
/*!40000 ALTER TABLE `phongchieu328` DISABLE KEYS */;
INSERT INTO `phongchieu328` VALUES (1,'Phòng chiếu 1',100),(2,'Phòng chiếu 2',150),(3,'Phòng chiếu 3',200);
/*!40000 ALTER TABLE `phongchieu328` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanhvien328`
--

DROP TABLE IF EXISTS `thanhvien328`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thanhvien328` (
                                `id` int NOT NULL AUTO_INCREMENT,
                                `ten` varchar(50) NOT NULL,
                                `ngaysinh` date DEFAULT NULL,
                                `email` varchar(50) DEFAULT NULL,
                                `sdt` varchar(50) DEFAULT NULL,
                                `tendangnhap` varchar(50) DEFAULT NULL,
                                `matkhau` varchar(50) DEFAULT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanhvien328`
--

LOCK TABLES `thanhvien328` WRITE;
/*!40000 ALTER TABLE `thanhvien328` DISABLE KEYS */;
INSERT INTO `thanhvien328` VALUES (1,'hang','2003-07-05','hang572003@gmail.com','0124234234','user1','12345'),(2,'Hằng ','2024-10-09','phamhang572003@gmail.com','0346016897','user','123'),(3,'Hằng ','2024-10-03','phamhang572003@gmail.com','0346016897','user','aa'),(4,'Hằng ','2024-10-01','phamhang572003@gmail.com','0346016897','user2','123');
/*!40000 ALTER TABLE `thanhvien328` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06  0:28:28
