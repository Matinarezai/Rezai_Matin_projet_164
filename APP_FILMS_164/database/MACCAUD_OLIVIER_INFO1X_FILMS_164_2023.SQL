-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: mar14

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS mar14;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS mar14;

-- Utilisation de cette base de donnée

USE mar14;
-- --------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for
CREATE DATABASE IF NOT EXISTS `` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE ``;

-- Dumping structure for table .tbldepartements
CREATE TABLE IF NOT EXISTS `tbldepartements` (
  `DNo` smallint NOT NULL,
  `DNom` varchar(20) DEFAULT NULL,
  `DLoc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table .tbldepartements: ~0 rows (approximately)

-- Dumping structure for table .tblemployes
CREATE TABLE IF NOT EXISTS `tblemployes` (
  `ENo` smallint NOT NULL,
  `ENom` varchar(20) DEFAULT NULL,
  `EJob` varchar(20) DEFAULT NULL,
  `EChef` smallint DEFAULT NULL,
  `EDebut` datetime DEFAULT NULL,
  `Esal` char(10) DEFAULT NULL,
  `ECom` char(10) DEFAULT NULL,
  `Dno` smallint DEFAULT NULL,
  `Droit13eme` char(10) DEFAULT NULL,
  `PNo` int DEFAULT NULL,
  PRIMARY KEY (`ENo`),
  KEY `Dno` (`Dno`),
  KEY `PNo` (`PNo`),
  CONSTRAINT `tblemployes_ibfk_1` FOREIGN KEY (`Dno`) REFERENCES `tbldepartements` (`DNo`),
  CONSTRAINT `tblemployes_ibfk_2` FOREIGN KEY (`PNo`) REFERENCES `tblprojets` (`PNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table .tblemployes: ~0 rows (approximately)

-- Dumping structure for table .tblprojets
CREATE TABLE IF NOT EXISTS `tblprojets` (
  `PNo` int NOT NULL,
  `PNom` char(10) DEFAULT NULL,
  `PLoc` char(10) DEFAULT NULL,
  PRIMARY KEY (`PNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table .tblprojets: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
