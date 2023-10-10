-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql306.infinityfree.com
-- Generation Time: Oct 01, 2023 at 12:43 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_35113511_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `alaram_airs`
--

CREATE TABLE `alaram_airs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengukur_air_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alaram_airs`
--

INSERT INTO `alaram_airs` (`id`, `pengukur_air_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '0', '2023-09-29 23:55:00', '2023-09-30 08:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'ui', 'yb', 'ybyg', 'uh', 'iuhi', '2023-09-28 23:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `grafik_airs`
--

CREATE TABLE `grafik_airs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengukur_air_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `nilai_awal` int(11) DEFAULT NULL,
  `batas_air` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grafik_airs`
--

INSERT INTO `grafik_airs` (`id`, `pengukur_air_id`, `nilai`, `nilai_awal`, `batas_air`, `waktu`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 10, '10', '2023-09-29 23:55:00', '2023-09-29 23:10:48', '2023-09-29 23:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `log_airs`
--

CREATE TABLE `log_airs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengukur_air_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_airs`
--

INSERT INTO `log_airs` (`id`, `pengukur_air_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-09-17 23:55:00', '2023-09-29 23:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_05_153252_create_pengukur_airs_table', 1),
(5, '2021_08_05_153925_create_grafik_airs_table', 1),
(6, '2021_08_05_175308_create_log_airs_table', 1),
(7, '2021_08_07_210526_create_alaram_airs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengukur_airs`
--

CREATE TABLE `pengukur_airs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warna_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengukur_airs`
--

INSERT INTO `pengukur_airs` (`id`, `id_alat`, `nama`, `posisi`, `warna_label`, `waktu`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Sensor Banjir', 'Sungai Ciloa Wetland', 'red', '2023-09-30 08:55:00', 1, '2023-09-28 08:08:07', '2023-09-30 08:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `Report`
--

CREATE TABLE `Report` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warna_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Report`
--

INSERT INTO `Report` (`id`, `id_alat`, `nama`, `posisi`, `warna_label`, `waktu`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Sensor Banjir', 'Sungai Ciloa Wetland', '10', '2023-09-29 23:55:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(2, '2', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:50:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(3, '3', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:45:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(4, '4', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:40:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(5, '5', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:35:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(6, '6', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:30:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(7, '7', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:25:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(8, '8', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:20:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(9, '9', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:15:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(10, '10', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:10:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(11, '11', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:05:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(12, '12', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 23:00:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(13, '13', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 22:55:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(14, '14', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 22:50:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(15, '15', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 22:45:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(16, '16', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 22:40:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(17, '17', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 22:35:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(18, '18', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 22:30:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(19, '19', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 22:25:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(20, '20', 'Sensor Banjir', 'Sungai Ciloa Wertland', '15', '2023-09-29 22:20:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(21, '21', 'Sensor Banjir', 'Sungai Ciloa Wertland', '15', '2023-09-29 22:15:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(22, '22', 'Sensor Banjir', 'Sungai Ciloa Wertland', '15', '2023-09-29 22:10:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(23, '23', 'Sensor Banjir', 'Sungai Ciloa Wertland', '15', '2023-09-29 22:05:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(24, '24', 'Sensor Banjir', 'Sungai Ciloa Wertland', '20', '2023-09-29 22:00:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(25, '25', 'Sensor Banjir', 'Sungai Ciloa Wertland', '20', '2023-09-29 21:55:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(26, '26', 'Sensor Banjir', 'Sungai Ciloa Wertland', '15', '2023-09-29 21:50:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(27, '27', 'Sensor Banjir', 'Sungai Ciloa Wertland', '15', '2023-09-29 21:45:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(28, '28', 'Sensor Banjir', 'Sungai Ciloa Wertland', '15', '2023-09-29 21:40:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(29, '29', 'Sensor Banjir', 'Sungai Ciloa Wertland', '15', '2023-09-29 21:30:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(30, '30', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 21:25:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(31, '31', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 21:20:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(32, '32', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 21:15:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(33, '33', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 21:10:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(34, '34', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 21:05:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(35, '35', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 21:00:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(36, '36', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:55:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(37, '37', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:50:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(38, '38', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:50:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(39, '39', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:45:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(40, '40', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:40:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(41, '41', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:35:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(42, '42', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:30:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(43, '43', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:25:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(44, '44', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:20:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(45, '45', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:15:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(46, '46', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:10:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(47, '47', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:05:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(48, '48', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 20:00:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(49, '49', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:55:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(50, '50', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:50:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(51, '51', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:45:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(52, '52', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:40:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(53, '53', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:35:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(54, '54', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:30:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(55, '55', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:25:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(56, '56', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:20:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(57, '57', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:15:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(58, '58', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:10:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(59, '59', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:05:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(60, '60', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 19:00:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(61, '61', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:55:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(62, '62', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:50:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(63, '63', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:45:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(64, '64', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:40:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(65, '65', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:35:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(66, '66', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:30:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(67, '67', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:25:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(68, '68', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:20:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(69, '69', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:15:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(70, '70', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:10:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(71, '71', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:05:00', 1, '2023-09-28 08:08:07', '2023-09-28 08:08:07'),
(72, '72', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 18:00:00', 1, '2023-09-28 18:00:00', '2023-09-28 08:08:07'),
(73, '73', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:55:00', 1, '2023-09-28 17:55:00', '2023-09-28 08:08:07'),
(74, '74', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:50:00', 1, '2023-09-28 17:50:00', '2023-09-28 08:08:07'),
(75, '75', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:45:00', 1, '2023-09-28 17:45:00', '2023-09-28 08:08:07'),
(76, '76', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:40:00', 1, '2023-09-28 17:40:00', '2023-09-28 08:08:07'),
(77, '77', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:35:00', 1, '2023-09-28 17:35:00', '2023-09-28 08:08:07'),
(78, '78', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:30:00', 1, '2023-09-28 17:30:00', '2023-09-28 08:08:07'),
(79, '79', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:25:00', 1, '2023-09-28 17:25:00', '2023-09-28 08:08:07'),
(80, '80', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:20:00', 1, '2023-09-28 17:20:00', '2023-09-28 08:08:07'),
(81, '81', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:15:00', 1, '2023-09-28 17:15:00', '2023-09-28 08:08:07'),
(82, '82', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:10:00', 1, '2023-09-28 17:10:00', '2023-09-28 08:08:07'),
(83, '83', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:05:00', 1, '2023-09-28 17:05:00', '2023-09-28 08:08:07'),
(84, '84', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 17:00:00', 1, '2023-09-28 17:00:00', '2023-09-28 08:08:07'),
(85, '85', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:55:00', 1, '2023-09-28 16:55:00', '2023-09-28 08:08:07'),
(86, '86', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:50:00', 1, '2023-09-28 16:50:00', '2023-09-28 08:08:07'),
(87, '87', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:45:00', 1, '2023-09-28 16:45:00', '2023-09-28 08:08:07'),
(88, '88', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:40:00', 1, '2023-09-28 16:40:00', '2023-09-28 08:08:07'),
(89, '89', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:35:00', 1, '2023-09-28 16:35:00', '2023-09-28 08:08:07'),
(90, '90', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:30:00', 1, '2023-09-28 16:30:00', '2023-09-28 08:08:07'),
(91, '91', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:25:00', 1, '2023-09-28 16:25:00', '2023-09-28 08:08:07'),
(92, '92', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:20:00', 1, '2023-09-28 16:20:00', '2023-09-28 08:08:07'),
(93, '93', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:15:00', 1, '2023-09-28 16:15:00', '2023-09-28 08:08:07'),
(94, '94', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:10:00', 1, '2023-09-28 16:10:00', '2023-09-28 08:08:07'),
(95, '95', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:05:00', 1, '2023-09-28 16:05:00', '2023-09-28 08:08:07'),
(96, '96', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 16:00:00', 1, '2023-09-28 16:00:00', '2023-09-28 08:08:07'),
(97, '97', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 15:55:00', 1, '2023-09-28 15:55:00', '2023-09-28 08:08:07'),
(98, '98', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 15:50:00', 1, '2023-09-28 15:50:00', '2023-09-28 08:08:07'),
(99, '99', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 15:45:00', 1, '2023-09-28 15:45:00', '2023-09-28 08:08:07'),
(100, '100', 'Sensor Banjir', 'Sungai Ciloa Wertland', '10', '2023-09-29 15:40:00', 1, '2023-09-28 15:40:00', '2023-09-28 08:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pe', 'pe@gmail.com', '2023-09-26 09:12:32', 'pepepepe', 'EduKoBSZb5', '2023-09-26 09:12:32', '2023-09-26 09:12:32'),
(13, 'pi', 'pi@gmail.com', NULL, '$2y$10$WZ4P2QcguLlwjmfSJh9zNeztqKopqF03PWcFXpI67DHyYDJHH5C2O', '6Jr5QxZ2mmyjW05Z1uoxQ8Aj1MCHQoWuff8BaMz1wgd7BEtYsJ8aHagRW4tu', '2023-09-30 06:05:50', '2023-09-30 06:05:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alaram_airs`
--
ALTER TABLE `alaram_airs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grafik_airs`
--
ALTER TABLE `grafik_airs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_airs`
--
ALTER TABLE `log_airs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengukur_airs`
--
ALTER TABLE `pengukur_airs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alaram_airs`
--
ALTER TABLE `alaram_airs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `grafik_airs`
--
ALTER TABLE `grafik_airs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `log_airs`
--
ALTER TABLE `log_airs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengukur_airs`
--
ALTER TABLE `pengukur_airs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
