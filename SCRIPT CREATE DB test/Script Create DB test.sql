/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.19-MariaDB : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `mcustomer2` */

DROP TABLE IF EXISTS `mcustomer2`;

CREATE TABLE `mcustomer2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `id_mcustomer_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_mcustomer_type` (`id_mcustomer_type`),
  CONSTRAINT `id_mcustomer_type` FOREIGN KEY (`id_mcustomer_type`) REFERENCES `mcustomertype` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `mcustomer2` */

insert  into `mcustomer2`(`id`,`nama`,`alamat`,`tanggal_lahir`,`updated_at`,`created_at`,`id_mcustomer_type`) values 
(1,'Joni','Tes Alamat1','2003-11-14','2022-06-27',NULL,NULL),
(3,'jeje','tes alamat 2','1996-12-13','2022-06-27','2022-06-27',NULL),
(4,'juju','Tes Alamat 3','1994-04-13','2022-06-27','2022-06-27',NULL),
(5,'jaja','Tes alamat 4','1993-04-12','2022-06-27','2022-06-27',NULL),
(6,'lili','Tes Alamat','1998-12-15','2022-06-27','2022-06-27',NULL);

/*Table structure for table `mcustomertype` */

DROP TABLE IF EXISTS `mcustomertype`;

CREATE TABLE `mcustomertype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `mcustomertype` */

insert  into `mcustomertype`(`ID`,`Nama`,`Keterangan`,`Status`) values 
(1,'Sales','Test Sales','Tes Status Sales');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2022_06_27_041436_create_mcustomer_table',1);

/*Table structure for table `mpegawai` */

DROP TABLE IF EXISTS `mpegawai`;

CREATE TABLE `mpegawai` (
  `IDPegawai` int(11) NOT NULL AUTO_INCREMENT,
  `Kode` varchar(50) DEFAULT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDPegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mpegawai` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `tgajid` */

DROP TABLE IF EXISTS `tgajid`;

CREATE TABLE `tgajid` (
  `IDGajiD` int(11) NOT NULL,
  `IDGaji` int(11) DEFAULT NULL,
  `IDPegawai` int(11) DEFAULT NULL,
  `Jenis` enum('Jam','Harian') DEFAULT NULL,
  `Gaji` double DEFAULT NULL,
  `TotalJamKerja` float DEFAULT NULL,
  `GajiSubtotal` double DEFAULT NULL,
  `BPJS` double DEFAULT NULL,
  `Tabungan` double DEFAULT NULL,
  `GajiTotal` double DEFAULT NULL,
  PRIMARY KEY (`IDGajiD`),
  KEY `IDGaji` (`IDGaji`),
  KEY `IDPegawai` (`IDPegawai`),
  CONSTRAINT `IDGaji` FOREIGN KEY (`IDGaji`) REFERENCES `tgajih` (`IDGaji`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IDPegawai` FOREIGN KEY (`IDPegawai`) REFERENCES `mpegawai` (`IDPegawai`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tgajid` */

/*Table structure for table `tgajih` */

DROP TABLE IF EXISTS `tgajih`;

CREATE TABLE `tgajih` (
  `IDGaji` int(11) NOT NULL AUTO_INCREMENT,
  `Kode` varchar(50) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  PRIMARY KEY (`IDGaji`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tgajih` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
