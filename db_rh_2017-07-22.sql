# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18-0ubuntu0.16.04.1)
# Database: db_rh
# Generation Time: 2017-07-21 21:16:05 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table dokumen_rh
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dokumen_rh`;

CREATE TABLE `dokumen_rh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pengirim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kd_ngr_pengirim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penjual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kd_ngr_penjual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `importir_id` int(10) DEFAULT NULL,
  `nm_pemilik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `almt_pemilik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp_pemilik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ppjk_id` int(10) DEFAULT NULL,
  `nm_angkut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_angkut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plbh_muat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kd_plbh_muat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mawb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_mawb` date DEFAULT NULL,
  `hawb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_hawb` date DEFAULT NULL,
  `bc11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_bc11` date DEFAULT NULL,
  `pos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sk_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk_fasilitas` date DEFAULT NULL,
  `nm_sk_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmpt_penimbunan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kd_tmpt_penimbunan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plbh_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kd_plbh_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_valuta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kd_valuta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ndpbm` decimal(18,2) DEFAULT NULL,
  `cif` decimal(18,2) DEFAULT NULL,
  `asuransi` decimal(18,2) DEFAULT NULL,
  `freight` decimal(18,2) DEFAULT NULL,
  `nilai_pabean` decimal(18,2) DEFAULT NULL,
  `jmlh_kmsn` int(255) DEFAULT NULL,
  `jns_kmsn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `brutto` decimal(18,2) DEFAULT NULL,
  `netto` decimal(18,2) DEFAULT NULL,
  `bm` decimal(18,2) DEFAULT NULL,
  `cukai` decimal(18,2) DEFAULT NULL,
  `ppn` decimal(18,2) DEFAULT NULL,
  `ppnbm` decimal(18,2) DEFAULT NULL,
  `pph` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table importir
# ------------------------------------------------------------

DROP TABLE IF EXISTS `importir`;

CREATE TABLE `importir` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2017_07_20_064651_create_dokumen_rh_table',2),
	(4,'2017_07_21_061339_create_importir_table',3),
	(5,'2017_07_21_062523_create_ppjk_table',4);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ppjk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ppjk`;

CREATE TABLE `ppjk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `nip` (`name`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `name`, `nip`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'rinaldi',NULL,'admin@x.com','$2y$10$xX0zACmoz8.Duom8ZVsRoOmpLFP1wSVAuUQyWORvvdaAVdhh1cLJO',NULL,'2017-07-14 09:20:22','2017-07-14 09:20:22');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
