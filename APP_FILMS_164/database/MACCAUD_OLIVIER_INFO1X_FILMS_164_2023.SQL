-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: matin_rezai_info

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS matin_rezai_info;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS matin_rezai_info;

-- Utilisation de cette base de donnée

USE matin_rezai_info;
-- --------------------------------------------------------
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for matin_rezai_info
CREATE DATABASE IF NOT EXISTS `matin_rezai_info` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `matin_rezai_info`;

-- Dumping structure for table matin_rezai_info.account_login
CREATE TABLE IF NOT EXISTS `account_login` (
  `id_account_login` int NOT NULL,
  `username` text,
  `password` text,
  `id_role` int DEFAULT NULL,
  `id_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`id_account_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.account_login: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.account_role
CREATE TABLE IF NOT EXISTS `account_role` (
  `id_role` int NOT NULL,
  `nom_role` text,
  `droit_lecture` int DEFAULT NULL,
  `droit_ecriture` int DEFAULT NULL,
  `droit_demande` int DEFAULT NULL,
  `droit_demen_user` int DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.account_role: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.account_session
CREATE TABLE IF NOT EXISTS `account_session` (
  `id_session` int NOT NULL,
  `id_account_login` int DEFAULT NULL,
  `status` text,
  `timeout` int DEFAULT NULL,
  `session_token` text,
  PRIMARY KEY (`id_session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.account_session: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.departement
CREATE TABLE IF NOT EXISTS `departement` (
  `id_departement` int NOT NULL,
  `nom_departement` text,
  PRIMARY KEY (`id_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.departement: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.groupe
CREATE TABLE IF NOT EXISTS `groupe` (
  `id_groupe` int NOT NULL,
  `nom_groupe` text,
  PRIMARY KEY (`id_groupe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.groupe: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.licence
CREATE TABLE IF NOT EXISTS `licence` (
  `id_licence` int NOT NULL,
  `nom_licence` text,
  `date_de_debut` date DEFAULT NULL,
  `date_de_fin` date DEFAULT NULL,
  `numero_licence` text,
  `prix` double DEFAULT NULL,
  `nombre_licence` int DEFAULT '1',
  PRIMARY KEY (`id_licence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.licence: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.lien_groupe
CREATE TABLE IF NOT EXISTS `lien_groupe` (
  `id_lien_groupe` int NOT NULL,
  `id_groupe` int DEFAULT NULL,
  `id_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`id_lien_groupe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.lien_groupe: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.lien_licences
CREATE TABLE IF NOT EXISTS `lien_licences` (
  `id_lien_licences` int NOT NULL,
  `id_licence` int DEFAULT NULL,
  `id_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`id_lien_licences`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.lien_licences: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.localisation
CREATE TABLE IF NOT EXISTS `localisation` (
  `id_localisation` int NOT NULL,
  `numero_rue` text,
  `NPA` int DEFAULT NULL,
  `ville` text,
  `nom_bureau` text,
  `etage` int DEFAULT NULL,
  `id_pays` int DEFAULT NULL,
  PRIMARY KEY (`id_localisation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.localisation: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.marque
CREATE TABLE IF NOT EXISTS `marque` (
  `id_marque` int NOT NULL,
  `nom_marque` text,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.marque: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.materiel
CREATE TABLE IF NOT EXISTS `materiel` (
  `id_materiel` int NOT NULL,
  `type` text,
  `garantie` int DEFAULT NULL,
  `numero_serie` text,
  `prix` double DEFAULT NULL,
  `date_de_achat` date DEFAULT NULL,
  `commentaire` text,
  `id_modele` int DEFAULT NULL,
  `id_marque` int DEFAULT NULL,
  `id_utilisateur` int DEFAULT NULL,
  `id_composant` int DEFAULT NULL,
  PRIMARY KEY (`id_materiel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.materiel: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.modele
CREATE TABLE IF NOT EXISTS `modele` (
  `id_modele` int NOT NULL,
  `nom_modele` text,
  PRIMARY KEY (`id_modele`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.modele: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.pays
CREATE TABLE IF NOT EXISTS `pays` (
  `id_pays` int NOT NULL,
  `nom_pays` text,
  PRIMARY KEY (`id_pays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.pays: ~0 rows (approximately)

-- Dumping structure for table matin_rezai_info.utilisateur
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int NOT NULL,
  `nom` text,
  `prenom` text,
  `date_naiss` date DEFAULT NULL,
  `email` text,
  `adress` text,
  `numero_telephone` text,
  `etat` text,
  `id_localisation` int DEFAULT NULL,
  `id_departement` int DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table matin_rezai_info.utilisateur: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;