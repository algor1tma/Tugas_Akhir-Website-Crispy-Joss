-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2025 at 06:28 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `nama`, `no_telp`, `alamat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Admin', '08123456789', 'Jl. Admin No. 1', '2025-06-26 04:42:55', '2025-06-26 10:51:21', NULL),
(2, 4, 'algo', '11111111111145', 'testq', '2025-06-26 04:57:50', '2025-06-26 14:09:55', NULL),
(3, 18, 'yyyy', '089876587876', 'mmm', '2025-08-25 02:31:23', '2025-08-25 02:31:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `user_id`, `nama`, `no_telp`, `alamat`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'karyawan', '08987654321', 'Jl. Karyawan No. 25', 'profile_dOn8AaEYkZ_1751801042.jpg', '2025-06-26 04:42:55', '2025-07-06 11:24:10', NULL),
(2, 5, 'winter', '23456754323345', 'jombang77', NULL, '2025-06-26 05:00:03', '2025-06-26 05:00:03', NULL),
(3, 6, 'algoee', '12345678654334', 'jember', NULL, '2025-06-26 05:19:17', '2025-08-25 14:39:59', '2025-08-25 14:39:59'),
(4, 7, 'karyawanQ', '09426473826473', 'jln jombang', NULL, '2025-08-03 21:49:28', '2025-08-03 21:49:28', NULL),
(5, 8, 'aizen', '08987654321', 'Jember', NULL, '2025-08-20 06:43:11', '2025-08-20 06:43:11', NULL),
(6, 10, 'genji pp', '083129930489', 'jombang', NULL, '2025-08-20 14:14:13', '2025-08-20 14:17:18', '2025-08-20 14:17:18'),
(7, 12, 'vergil', '82937492643243', 'jombang', NULL, '2025-08-20 14:16:00', '2025-08-20 14:20:25', '2025-08-20 14:20:25'),
(8, 15, 'Algooo', '083129930489', 'jombang', NULL, '2025-08-21 01:07:12', '2025-08-21 01:07:12', NULL),
(9, 17, 'Algo febri', '87434623746343', 'jombang', NULL, '2025-08-21 02:48:55', '2025-08-21 02:48:55', NULL),
(10, 19, 'Algo', '09394823985', 'jombang', NULL, '2025-08-25 02:34:43', '2025-08-25 02:34:43', NULL),
(11, 22, 'Algoritma Dwifebri Fathiyakan', '08413325467788', 'jombang', NULL, '2025-08-25 06:25:01', '2025-08-25 06:25:01', NULL),
(12, 23, 'Algoritma Dwifebri Fathiyakan', '08623456521763', 'jember', NULL, '2025-08-25 06:25:38', '2025-08-25 06:25:38', NULL),
(13, 25, 'febri', '09842094234', 'jember', NULL, '2025-08-25 10:30:19', '2025-08-25 14:39:38', NULL),
(14, 26, 'diyo anggara', '08423842374623', 'jember', NULL, '2025-08-25 13:57:11', '2025-08-25 13:59:25', '2025-08-25 13:59:25'),
(15, 27, 'sipuden', '08623165377', 'jember', NULL, '2025-08-26 07:08:26', '2025-08-26 07:08:26', NULL),
(16, 28, 'fathiyakan', '09242093849237', 'jember', NULL, '2025-08-26 08:19:55', '2025-08-26 08:19:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporanpenjualans`
--

CREATE TABLE `laporanpenjualans` (
  `id` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `total_penjualan` int NOT NULL,
  `total_produk_terjual` int NOT NULL,
  `jumlah_transaksi` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_18_000000_create_all_tables', 1),
(6, '2024_05_04_130531_create_karyawans_table', 1),
(7, '2024_05_04_132113_create_admins_table', 1),
(8, '2024_05_30_change_supplier_to_user_in_raw_material_logs', 1),
(9, '2025_05_21_115459_create_transaksis_table', 1),
(10, '2025_05_21_232303_create_pelanggan_table', 1),
(11, '2025_05_22_104808_create_laporanpenjualans_table', 1),
(12, '2025_06_26_055500_create_supers_table', 1),
(13, '2025_07_07_000001_update_raw_material_logs_price_subtotal', 2),
(14, '2025_07_07_131323_update_quantiry_product_recipes', 3),
(15, '2025_07_31_223728_add_type_at_raw_material_logs', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_foto.jpg',
  `id_user` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_recipes`
--

CREATE TABLE `product_recipes` (
  `id` bigint UNSIGNED NOT NULL,
  `produk_id` bigint UNSIGNED NOT NULL,
  `raw_material_id` bigint UNSIGNED NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` enum('g','kg','ml','l','pcs') COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_recipes`
--

INSERT INTO `product_recipes` (`id`, `produk_id`, `raw_material_id`, `quantity`, `unit`, `notes`, `created_at`, `updated_at`) VALUES
(1064, 2, 1, '155.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1065, 2, 2, '30.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1066, 2, 3, '10.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1067, 2, 4, '2.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1068, 2, 5, '1.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1069, 2, 6, '2.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1070, 2, 7, '5.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1071, 2, 11, '30.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1072, 2, 12, '8.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1073, 2, 14, '10.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1074, 2, 7, '3.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1075, 2, 13, '10.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1076, 2, 17, '2.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1077, 2, 4, '1.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1078, 2, 22, '80.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1079, 2, 16, '20.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1080, 2, 15, '5.00', 'g', NULL, '2025-08-03 22:20:03', '2025-08-03 22:20:03'),
(1081, 4, 1, '150.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1082, 4, 2, '30.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1083, 4, 3, '10.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1084, 4, 4, '2.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1085, 4, 5, '1.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1086, 4, 6, '2.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1087, 4, 7, '5.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1088, 4, 9, '15.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1089, 4, 10, '3.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1090, 4, 14, '8.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1091, 4, 7, '3.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1092, 4, 18, '15.00', 'ml', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1093, 4, 17, '2.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1094, 4, 4, '1.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1095, 4, 22, '80.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1096, 4, 16, '20.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1097, 4, 15, '5.00', 'g', NULL, '2025-08-03 22:20:21', '2025-08-03 22:20:21'),
(1098, 5, 1, '150.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1099, 5, 2, '30.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1100, 5, 3, '10.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1101, 5, 4, '2.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1102, 5, 5, '1.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1103, 5, 6, '2.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1104, 5, 7, '5.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1105, 5, 9, '35.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1106, 5, 10, '15.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1107, 5, 12, '10.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1108, 5, 14, '12.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1109, 5, 7, '5.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1110, 5, 13, '10.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1111, 5, 17, '3.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1112, 5, 4, '2.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1113, 5, 22, '80.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1114, 5, 16, '25.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1115, 5, 15, '8.00', 'g', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1116, 5, 24, '1.00', 'pcs', NULL, '2025-08-03 22:20:32', '2025-08-03 22:20:32'),
(1117, 7, 1, '150.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1118, 7, 2, '30.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1119, 7, 3, '10.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1120, 7, 4, '2.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1121, 7, 5, '1.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1122, 7, 6, '2.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1123, 7, 7, '5.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1124, 7, 9, '25.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1125, 7, 10, '5.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1126, 7, 14, '10.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1127, 7, 7, '3.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1128, 7, 13, '15.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1129, 7, 17, '3.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1130, 7, 4, '1.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1131, 7, 23, '1.00', 'pcs', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1132, 7, 22, '80.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1133, 7, 16, '20.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1134, 7, 15, '5.00', 'g', NULL, '2025-08-03 22:20:42', '2025-08-03 22:20:42'),
(1171, 3, 1, '150.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1172, 3, 2, '30.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1173, 3, 3, '10.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1174, 3, 4, '2.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1175, 3, 5, '1.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1176, 3, 6, '2.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1177, 3, 7, '5.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1178, 3, 9, '20.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1179, 3, 10, '8.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1180, 3, 14, '12.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1181, 3, 7, '4.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1182, 3, 19, '3.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1183, 3, 17, '3.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1184, 3, 4, '1.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1185, 3, 22, '80.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1186, 3, 16, '20.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1187, 3, 15, '5.00', 'g', NULL, '2025-08-19 06:27:47', '2025-08-19 06:27:47'),
(1197, 1, 1, '150.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1198, 1, 2, '30.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1199, 1, 3, '10.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1200, 1, 4, '2.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1201, 1, 5, '1.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1202, 1, 6, '2.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1203, 1, 7, '5.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1204, 1, 9, '25.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1205, 1, 10, '5.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1206, 1, 14, '10.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1207, 1, 7, '3.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1208, 1, 13, '15.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1209, 1, 17, '3.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1210, 1, 4, '1.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1211, 1, 22, '80.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1212, 1, 16, '20.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1213, 1, 15, '5.00', 'g', NULL, '2025-08-24 14:37:15', '2025-08-24 14:37:15'),
(1214, 37, 7, '20.00', 'g', NULL, '2025-08-25 14:44:13', '2025-08-25 14:44:13'),
(1215, 37, 12, '5.00', 'g', NULL, '2025-08-25 14:44:13', '2025-08-25 14:44:13'),
(1216, 37, 2, '20.00', 'g', NULL, '2025-08-25 14:44:13', '2025-08-25 14:44:13'),
(1217, 37, 12, '4.00', 'g', NULL, '2025-08-25 14:44:13', '2025-08-25 14:44:13'),
(1235, 38, 23, '1.00', 'pcs', NULL, '2025-08-26 08:28:05', '2025-08-26 08:28:05'),
(1236, 38, 1, '20.00', 'g', NULL, '2025-08-26 08:28:05', '2025-08-26 08:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_produk` decimal(10,2) NOT NULL,
  `stok_produk` int NOT NULL DEFAULT '0',
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_produk` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `nama_produk`, `harga_produk`, `stok_produk`, `foto`, `deskripsi_produk`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ayam Paket Dahsyat 1', '10000.00', 2, '1751687173.png', 'Ayam paha/sayap crispy  dengan sambal merah pedas, disajikan dengan nasi putih', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(2, 'Ayam Paket Dahsyat  2', '13000.00', 2, '1751264863.png', 'Ayam crispy paha atas/ dada dengan saos segar dan pedas, disajikan dengan nasi putih', '2025-06-26 04:42:55', '2025-08-25 10:35:08', NULL),
(3, 'Ayam Geprek Paket 1', '16000.00', 1, '1751687061.png', 'Ayam crispy yg di geprek dengan sambal cabe yang gurih dan pedas, disajikan dengan nasi putih', '2025-06-26 04:42:55', '2025-08-19 06:33:03', NULL),
(4, 'Ayam Geprek paket 2', '19000.00', 15, '1751686957.png', 'Ayam crispy yang di geprek dengan sambal  pedas, disajikan dengan nasi putih', '2025-06-26 04:42:55', '2025-08-03 22:20:21', NULL),
(5, 'Ayam Crispy Paket 1', '13000.00', 4, '1751687221.png', 'Ayam crispy paha/sayap dengan sambal pedas, sama teh kotak/ air mineral', '2025-06-26 04:42:55', '2025-08-25 14:50:56', NULL),
(6, 'Ayam Geprek Keju', '25000.00', 8, 'ayam-geprek-keju.jpg', 'Ayam crispy dengan sambal dan keju mozarella yang meleleh', '2025-06-26 04:42:55', '2025-06-26 13:17:11', '2025-06-26 13:17:11'),
(7, 'Ayam Crispy Paket 2', '16000.00', 10, '1751687212.png', 'Ayam Crispy paha atas/dada dengan saos pedas dengan nasi putih, dengan teh kotak/air mineral', '2025-06-26 04:42:55', '2025-08-26 08:29:25', NULL),
(8, 'Paket Geprek Jumbo', '28000.00', 12, 'paket-geprek-jumbo.jpg', 'Ayam geprek dengan porsi jumbo, telur ceplok, nasi putih dan lalapan lengkap', '2025-06-26 04:42:55', '2025-06-26 23:22:47', '2025-06-26 23:22:47'),
(9, 'Es Teh Manis', '5000.00', 50, 'es-teh-manis.jpg', 'Es teh manis segar untuk menemani makan', '2025-06-26 04:42:55', '2025-06-30 03:31:08', '2025-06-30 03:31:08'),
(10, 'Es Teh Tawar', '4000.00', 50, 'es-teh-tawar.jpg', 'Es teh tawar segar tanpa gula', '2025-06-26 04:42:55', '2025-06-26 23:23:04', '2025-06-26 23:23:04'),
(11, 'Teh Anget', '5000.00', 30, 'teh-anget.jpg', 'Teh hangat manis untuk cuaca dingin', '2025-06-26 04:42:55', '2025-06-30 03:31:04', '2025-06-30 03:31:04'),
(12, 'Nasi Putih', '5000.00', 100, 'nasi-putih.jpg', 'Nasi putih hangat', '2025-06-26 04:42:55', '2025-06-26 23:24:21', '2025-06-26 23:24:21'),
(13, 'Telur Ceplok', '4000.00', 25, 'telur-ceplok.jpg', 'Telur ceplok dengan kuning setengah matang', '2025-06-26 04:42:55', '2025-06-26 23:24:26', '2025-06-26 23:24:26'),
(14, 'Lalapan', '3000.00', 30, 'lalapan.jpg', 'Lalapan segar timun, tomat, dan kemangi', '2025-06-26 04:42:55', '2025-06-26 23:24:31', '2025-06-26 23:24:31'),
(15, 'Kentang Goreng', '8000.00', 20, NULL, 'kentang goreng crispy joss', '2025-06-26 23:26:48', '2025-06-30 03:29:48', '2025-06-30 03:29:48'),
(16, 'weqqw', '2.00', 3, NULL, NULL, '2025-06-29 11:22:06', '2025-06-30 03:29:29', '2025-06-30 03:29:29'),
(17, 'Ayam Paket Dahsyat 1', '1.00', 2, NULL, NULL, '2025-06-29 11:29:42', '2025-06-30 03:29:38', '2025-06-30 03:29:38'),
(18, 'i99999', '89898.00', 7, NULL, NULL, '2025-06-30 03:30:40', '2025-06-30 03:30:59', '2025-06-30 03:30:59'),
(19, 'ayam beset beset', '10000.00', 10, '1751360393.png', NULL, '2025-07-01 06:45:24', '2025-07-01 09:00:11', '2025-07-01 09:00:11'),
(20, 'bebek', '50000.00', 2, NULL, NULL, '2025-07-01 06:48:02', '2025-07-01 09:00:16', '2025-07-01 09:00:16'),
(21, 'geprek paket 1', '221424.00', 21, '1751686624.png', NULL, '2025-07-05 03:36:03', '2025-07-05 03:37:11', '2025-07-05 03:37:11'),
(22, 'geprek paket 1', '23144.00', 2323124, NULL, NULL, '2025-07-05 04:04:50', '2025-07-05 04:05:07', '2025-07-05 04:05:07'),
(23, 'nasi gepok', '313313.00', 30, NULL, NULL, '2025-07-05 04:13:46', '2025-07-31 16:39:50', '2025-07-31 16:39:50'),
(24, 'geprek paket 1', '242424.00', 4343, NULL, NULL, '2025-07-05 04:22:25', '2025-07-31 16:52:56', '2025-07-31 16:52:56'),
(25, 'geprek paket 78', '23244.00', 34, NULL, NULL, '2025-07-06 11:14:20', '2025-07-31 16:53:02', '2025-07-31 16:53:02'),
(26, 'geprek paket 23', '233333.00', 34, NULL, NULL, '2025-07-06 11:15:09', '2025-07-06 11:20:45', '2025-07-06 11:20:45'),
(27, 'geprek paket 14', '34342.00', 43, NULL, NULL, '2025-07-06 11:25:49', '2025-07-31 16:53:07', '2025-07-31 16:53:07'),
(28, 'geprek paket 155', '786878.00', 64, NULL, NULL, '2025-07-07 06:00:00', '2025-07-31 16:53:12', '2025-07-31 16:53:12'),
(29, 'test baru', '10000.00', 2, '1751869051.jfif', 'test baru', '2025-07-07 06:17:31', '2025-07-21 09:49:39', '2025-07-21 09:49:39'),
(30, 'geprek paket 55', '50000.00', 6, NULL, NULL, '2025-07-31 15:44:41', '2025-07-31 16:53:17', '2025-07-31 16:53:17'),
(31, 'testtt', '7182.00', 0, NULL, NULL, '2025-07-31 16:02:29', '2025-07-31 16:53:22', '2025-07-31 16:53:22'),
(32, 'geprek paket test', '30000.00', 20, '1754259456.png', NULL, '2025-08-03 22:17:36', '2025-08-25 14:44:25', '2025-08-25 14:44:25'),
(34, 'ayam paket dahsyat 44', '20000.00', 5, '1755703187.jpg', NULL, '2025-08-20 15:19:22', '2025-08-24 14:40:18', '2025-08-24 14:40:18'),
(35, 'geprek paket 33', '2000.00', 2, '1755703221.png', NULL, '2025-08-20 15:20:21', '2025-08-20 15:20:25', '2025-08-20 15:20:25'),
(37, 'ayam geprek sambal hijau', '10000.00', 6, '1755745219.png', NULL, '2025-08-21 02:58:09', '2025-08-25 14:44:13', NULL),
(38, 'ayam paket 5', '20000.00', 20, '1756196885.png', NULL, '2025-08-26 08:28:05', '2025-08-26 08:28:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `raw_materials`
--

CREATE TABLE `raw_materials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` decimal(10,2) NOT NULL DEFAULT '0.00',
  `minimum_stock` decimal(10,2) NOT NULL DEFAULT '10.00',
  `unit` enum('g','kg','ml','l','pcs') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_materials`
--

INSERT INTO `raw_materials` (`id`, `name`, `price`, `stock`, `minimum_stock`, `unit`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ayam Fillet', '172.00', '401.00', '500.00', 'g', 'Daging ayam fillet segar untuk ayam geprek', '2025-06-26 04:42:55', '2025-08-26 08:28:05', NULL),
(2, 'Tepung Terigu', '10.00', '840.00', '200.00', 'g', 'Tepung terigu untuk coating ayam', '2025-06-26 04:42:55', '2025-08-25 14:44:13', NULL),
(3, 'Tepung Maizena', '12.00', '620.00', '100.00', 'g', 'Tepung maizena untuk tekstur crispy', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(4, 'Garam', '5.00', '384.00', '50.00', 'g', 'Garam dapur untuk bumbu', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(5, 'Merica Bubuk', '25.00', '162.00', '20.00', 'g', 'Merica bubuk untuk bumbu', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(6, 'Penyedap Rasa', '15.00', '224.00', '30.00', 'g', 'Penyedap rasa ayam', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(7, 'Bawang Putih', '30.00', '65.00', '50.00', 'g', 'Bawang putih segar', '2025-06-26 04:42:55', '2025-08-25 14:44:13', NULL),
(8, 'Jahe', '20.00', '300.00', '30.00', 'g', 'Jahe segar untuk bumbu', '2025-06-26 04:42:55', '2025-06-26 04:42:55', NULL),
(9, 'Cabai Merah Keriting', '25.00', '335.00', '100.00', 'g', 'Cabai merah untuk sambal', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(10, 'Cabai Rawit Merah', '40.00', '325.00', '50.00', 'g', 'Cabai rawit untuk sambal pedas', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(11, 'Cabai Hijau Besar', '20.00', '510.00', '80.00', 'g', 'Cabai hijau untuk sambal ijo', '2025-06-26 04:42:55', '2025-08-19 06:22:06', NULL),
(12, 'Cabai Rawit Hijau', '35.00', '291.00', '40.00', 'g', 'Cabai rawit hijau untuk sambal ijo pedas', '2025-06-26 04:42:55', '2025-08-25 14:44:13', NULL),
(13, 'Tomat', '15.00', '640.00', '100.00', 'g', 'Tomat segar untuk sambal', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(14, 'Bawang Merah', '25.00', '412.00', '80.00', 'g', 'Bawang merah untuk bumbu sambal', '2025-06-26 04:42:55', '2025-08-26 08:22:04', NULL),
(15, 'Daun Kemangi', '10.00', '205.00', '20.00', 'g', 'Daun kemangi segar untuk pelengkap', '2025-06-26 04:42:55', '2025-08-25 14:48:00', NULL),
(16, 'Timun', '8.00', '230.00', '100.00', 'g', 'Timun untuk lalapan', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(17, 'Gula Pasir', '12.00', '681.00', '100.00', 'g', 'Gula pasir untuk sambal', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(18, 'Kecap Manis', '8.00', '1952.00', '200.00', 'ml', 'Kecap manis untuk sambal kecap', '2025-06-26 04:42:55', '2025-07-31 15:52:35', NULL),
(19, 'Terasi', '50.00', '79.00', '10.00', 'g', 'Terasi untuk sambal terasi', '2025-06-26 04:42:55', '2025-08-19 06:27:47', NULL),
(20, 'Asam Jawa', '15.00', '211.00', '20.00', 'g', 'Asam jawa untuk sambal asam', '2025-06-26 04:42:55', '2025-08-21 03:47:59', NULL),
(21, 'Minyak Goreng', '15.00', '3499.00', '500.00', 'ml', 'Minyak goreng untuk menggoreng', '2025-06-26 04:42:55', '2025-08-26 08:24:51', NULL),
(22, 'Beras', '12.00', '1950.00', '500.00', 'g', 'Beras untuk nasi putih', '2025-06-26 04:42:55', '2025-08-24 14:37:15', NULL),
(23, 'Telur Ayam', '2500.00', '28.00', '5.00', 'pcs', 'Telur ayam untuk telur ceplok/dadar', '2025-06-26 04:42:55', '2025-08-26 08:28:05', NULL),
(24, 'Teh Celup', '500.00', '98.00', '10.00', 'pcs', 'Teh celup untuk es teh', '2025-06-26 04:42:55', '2025-07-06 11:23:00', NULL),
(25, 'Gula Pasir (Minuman)', '12.00', '2000.00', '200.00', 'g', 'Gula untuk minuman', '2025-06-26 04:42:55', '2025-06-26 04:42:55', NULL),
(26, 'Es Batu', '100.00', '100.00', '10.00', 'pcs', 'Es batu untuk minuman dingin', '2025-06-26 04:42:55', '2025-06-29 22:05:34', NULL),
(27, 'Ayam Fillet', '13344.00', '1.00', '10.00', 'g', NULL, '2025-06-28 13:43:30', '2025-06-28 13:44:48', '2025-06-28 13:44:48'),
(28, 'ayam', '32434.00', '5.00', '10.00', 'kg', NULL, '2025-06-28 14:16:25', '2025-06-28 14:18:20', '2025-06-28 14:18:20'),
(29, 'cabai7', '345353.00', '7.00', '10.00', 'kg', NULL, '2025-06-28 14:17:36', '2025-06-28 14:18:05', '2025-06-28 14:18:05'),
(30, 'algo', '80000.00', '12.00', '10.00', 'kg', NULL, '2025-07-04 05:47:56', '2025-07-04 05:49:55', '2025-07-04 05:49:55'),
(31, 'nasi', '23132.00', '3123213.00', '10.00', 'g', NULL, '2025-07-05 04:05:36', '2025-07-06 10:52:42', '2025-07-06 10:52:42'),
(32, 'nasi koda', '5465.00', '3342.00', '42442.00', 'g', NULL, '2025-07-05 04:06:25', '2025-07-05 04:07:17', '2025-07-05 04:07:17'),
(33, 'ayam', '3033.00', '303.00', '10.00', 'g', NULL, '2025-07-06 10:53:39', '2025-07-06 10:55:21', '2025-07-06 10:55:21'),
(34, 'cabai dangdut', '23444.00', '3444.00', '10.00', 'g', NULL, '2025-07-06 11:02:47', '2025-07-06 11:03:20', '2025-07-06 11:03:20'),
(35, 'cabai dangdut', '2333.00', '34.00', '10.00', 'g', NULL, '2025-07-06 11:14:45', '2025-07-06 11:15:39', '2025-07-06 11:15:39'),
(36, 'cabe dangdut', '13123.00', '12.00', '10.00', 'kg', NULL, '2025-07-07 05:29:27', '2025-07-07 05:32:15', '2025-07-07 05:32:15'),
(37, 'emas murni', '1000000.00', '100.00', '10.00', 'g', 'test', '2025-07-07 05:44:16', '2025-07-07 05:52:15', '2025-07-07 05:52:15'),
(38, 'emas murni', '1000000.00', '100.00', '10.00', 'g', 'test', '2025-07-07 05:52:36', '2025-08-04 04:26:05', '2025-08-04 04:26:05'),
(39, 'cabai dangdut', '123444.00', '24.00', '10.00', 'kg', NULL, '2025-07-08 05:00:01', '2025-07-31 16:39:17', '2025-07-31 16:39:17'),
(40, 'garam dan  madu', '2000.00', '12.00', '10.00', 'g', NULL, '2025-07-31 16:42:08', '2025-07-31 16:42:08', NULL),
(41, 'nasi', '150.00', '2000.00', '10.00', 'g', NULL, '2025-08-20 14:37:13', '2025-08-20 14:38:24', '2025-08-20 14:38:24'),
(42, 'nasi', '150.00', '2000.00', '10.00', 'g', NULL, '2025-08-20 14:38:51', '2025-08-20 14:38:58', '2025-08-20 14:38:58'),
(43, 'nasi merah', '20.00', '10.00', '10.00', 'g', NULL, '2025-08-21 02:50:15', '2025-08-21 02:50:15', NULL),
(44, 'nasi', '200.00', '10.00', '10.00', 'g', NULL, '2025-08-24 11:04:23', '2025-08-24 14:35:33', '2025-08-24 14:35:33'),
(45, 'ayam popo', '200.00', '20.00', '10.00', 'g', NULL, '2025-08-24 14:31:24', '2025-08-24 14:31:48', '2025-08-24 14:31:48'),
(46, 'kentang', '230.00', '20.00', '10.00', 'g', 'test', '2025-08-25 10:32:20', '2025-08-25 14:53:41', NULL),
(47, 'test', '200.00', '20.00', '10.00', 'g', NULL, '2025-08-25 14:55:28', '2025-08-25 14:56:14', '2025-08-25 14:56:14'),
(48, 'nasi uduk', '200.00', '12.00', '10.00', 'g', NULL, '2025-08-26 01:27:52', '2025-08-26 01:27:52', NULL),
(49, 'beras merah', '200.00', '20.00', '10.00', 'g', NULL, '2025-08-26 08:21:08', '2025-08-26 08:21:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_logs`
--

CREATE TABLE `raw_material_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `raw_material_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `type` enum('in','out','adjustment','production','expired','damaged','pemakaian') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `subtotal` decimal(20,2) NOT NULL DEFAULT '0.00',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_material_logs`
--

INSERT INTO `raw_material_logs` (`id`, `raw_material_id`, `user_id`, `type`, `quantity`, `price`, `subtotal`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 'production', '150.00', '35.00', '5250.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(2, 2, 2, 'production', '30.00', '10.00', '300.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(3, 3, 2, 'production', '10.00', '12.00', '120.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(4, 4, 2, 'production', '2.00', '5.00', '10.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(5, 5, 2, 'production', '1.00', '25.00', '25.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(6, 6, 2, 'production', '2.00', '15.00', '30.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(7, 7, 2, 'production', '5.00', '30.00', '150.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(8, 21, 2, 'production', '100.00', '15.00', '1500.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(9, 9, 2, 'production', '25.00', '25.00', '625.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(10, 10, 2, 'production', '5.00', '40.00', '200.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(11, 14, 2, 'production', '10.00', '25.00', '250.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(12, 7, 2, 'production', '3.00', '30.00', '90.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(13, 13, 2, 'production', '15.00', '15.00', '225.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(14, 17, 2, 'production', '3.00', '12.00', '36.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(15, 4, 2, 'production', '1.00', '5.00', '5.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(16, 22, 2, 'production', '80.00', '12.00', '960.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(17, 16, 2, 'production', '20.00', '8.00', '160.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(18, 15, 2, 'production', '5.00', '10.00', '50.00', 'Pengurangan untuk produksi Ayam Geprek Original (Penambahan stok: 1)', '2025-06-26 06:12:19', '2025-06-26 06:12:19', NULL),
(19, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(20, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(21, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(22, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(23, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(24, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(25, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(26, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(27, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(28, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(29, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(30, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(31, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(32, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(33, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(34, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(35, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(36, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(37, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(38, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(39, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(40, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(41, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(42, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(43, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(44, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(45, 9, 2, 'production', '-25.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(46, 10, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(47, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(48, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(49, 13, 2, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(50, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(51, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(52, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(53, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(54, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0001 - Qty: 1', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(55, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(56, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(57, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(58, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(59, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(60, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(61, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(62, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(63, 9, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(64, 10, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(65, 14, 2, 'production', '-12.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(66, 7, 2, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(67, 19, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(68, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(69, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(70, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(71, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(72, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(73, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(74, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(75, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(76, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(77, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(78, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(79, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(80, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(81, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(82, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(83, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(84, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(85, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(86, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(87, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(88, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(89, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(90, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0002 - Qty: 1', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(91, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(92, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(93, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(94, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(95, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(96, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(97, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(98, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(99, 9, 2, 'production', '-25.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(100, 10, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(101, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(102, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(103, 13, 2, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(104, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(105, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(106, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(107, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(108, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(109, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(110, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(111, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(112, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(113, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(114, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(115, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(116, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(117, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(118, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(119, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(120, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(121, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(122, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(123, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(124, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(125, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(126, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0003 - Qty: 1', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(127, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(128, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(129, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(130, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(131, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(132, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(133, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(134, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(135, 9, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(136, 10, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(137, 14, 2, 'production', '-12.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(138, 7, 2, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(139, 19, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(140, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(141, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(142, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(143, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(144, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0004 - Qty: 1', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(145, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(146, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(147, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(148, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(149, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(150, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(151, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(152, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(153, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(154, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(155, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(156, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(157, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(158, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(159, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(160, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(161, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(162, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0005 - Qty: 1', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(163, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(164, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(165, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(166, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(167, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(168, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(169, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(170, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(171, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(172, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(173, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(174, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(175, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(176, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(177, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(178, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(179, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(180, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0006 - Qty: 1', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(181, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(182, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(183, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(184, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(185, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(186, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(187, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(188, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(189, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(190, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(191, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(192, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(193, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(194, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(195, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(196, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(197, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(198, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0007 - Qty: 1', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(199, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(200, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(201, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(202, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(203, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(204, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(205, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(206, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(207, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(208, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(209, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(210, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(211, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(212, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(213, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(214, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(215, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(216, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(217, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(218, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(219, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(220, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(221, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(222, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(223, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(224, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(225, 9, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(226, 10, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(227, 14, 2, 'production', '-12.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(228, 7, 2, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(229, 19, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(230, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(231, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(232, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(233, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(234, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Terasi - Transaksi TRX-20250626-0008 - Qty: 1', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(235, 1, 2, 'production', '-155.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(236, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(237, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(238, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(239, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(240, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(241, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(242, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(243, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(244, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(245, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(246, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(247, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(248, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(249, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(250, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(251, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(252, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Sambal Ijo - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(253, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(254, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(255, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(256, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(257, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(258, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(259, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(260, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(261, 9, 2, 'production', '-25.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(262, 10, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(263, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(264, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(265, 13, 2, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(266, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(267, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(268, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(269, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(270, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Original - Transaksi TRX-20250626-0009 - Qty: 1', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(271, 27, 2, 'adjustment', '1.00', '13344.00', '13344.00', 'Penyesuaian stok awal', '2025-06-28 13:43:30', '2025-06-28 13:43:30', NULL),
(272, 1, 2, 'production', '-300.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(273, 2, 2, 'production', '-60.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL);
INSERT INTO `raw_material_logs` (`id`, `raw_material_id`, `user_id`, `type`, `quantity`, `price`, `subtotal`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(274, 3, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(275, 4, 2, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(276, 5, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(277, 6, 2, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(278, 7, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(279, 21, 2, 'production', '-200.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(280, 9, 2, 'production', '-50.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(281, 10, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(282, 14, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(283, 7, 2, 'production', '-6.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(284, 13, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(285, 17, 2, 'production', '-6.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(286, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(287, 22, 2, 'production', '-160.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(288, 16, 2, 'production', '-40.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(289, 15, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250628-0001 - Qty: 2', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(290, 28, 2, 'adjustment', '5.00', '32434.00', '162170.00', 'Penyesuaian stok awal', '2025-06-28 14:16:25', '2025-06-28 14:16:25', NULL),
(291, 29, 2, 'adjustment', '7.00', '345353.00', '2417471.00', 'Penyesuaian stok awal', '2025-06-28 14:17:36', '2025-06-28 14:17:36', NULL),
(292, 1, 2, 'in', '1.00', '35.00', '35.00', 'Pembelian bahan baku', '2025-06-28 14:19:22', '2025-06-28 14:19:22', NULL),
(293, 21, 2, 'production', '1.00', '15.00', '15.00', 'Pengurangan untuk produksi weqqw (Penambahan stok: 1)', '2025-06-29 11:25:35', '2025-06-29 11:25:35', NULL),
(294, 26, 2, 'out', '93.00', '100.00', '9300.00', NULL, '2025-06-29 21:59:13', '2025-06-29 21:59:13', NULL),
(295, 26, 2, 'in', '93.00', '100.00', '9300.00', NULL, '2025-06-29 22:05:34', '2025-06-29 22:05:34', NULL),
(296, 20, 2, 'in', '1.00', '15.00', '15.00', 'Pembelian bahan baku', '2025-07-01 06:41:26', '2025-07-01 06:41:26', NULL),
(297, 20, 2, 'in', '1.00', '15.00', '15.00', 'Pembelian bahan baku', '2025-07-01 06:41:37', '2025-07-01 06:41:37', NULL),
(298, 1, 2, 'in', '1.00', '35.00', '35.00', 'Pembelian bahan baku', '2025-07-01 06:41:37', '2025-07-01 06:41:37', NULL),
(299, 1, 1, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(300, 2, 1, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(301, 3, 1, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(302, 4, 1, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(303, 5, 1, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(304, 6, 1, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(305, 7, 1, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(306, 21, 1, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(307, 9, 1, 'production', '-25.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(308, 10, 1, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(309, 14, 1, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(310, 7, 1, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(311, 13, 1, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(312, 17, 1, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(313, 4, 1, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(314, 22, 1, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(315, 16, 1, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(316, 15, 1, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0001 - Qty: 1', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(317, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(318, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(319, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(320, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(321, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(322, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(323, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(324, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(325, 9, 2, 'production', '-25.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(326, 10, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(327, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(328, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(329, 13, 2, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(330, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(331, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(332, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(333, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(334, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250701-0002 - Qty: 1', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(335, 1, 2, 'production', '-155.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(336, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(337, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(338, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(339, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(340, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(341, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(342, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(343, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(344, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(345, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(346, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(347, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(348, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(349, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(350, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(351, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(352, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250701-0003 - Qty: 1', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(353, 20, 2, 'in', '5.00', '15.00', '75.00', 'Pembelian bahan baku', '2025-07-04 05:30:53', '2025-07-04 05:30:53', NULL),
(354, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(355, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(356, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(357, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(358, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(359, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(360, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(361, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(362, 9, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(363, 10, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(364, 14, 2, 'production', '-12.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(365, 7, 2, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(366, 19, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(367, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(368, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(369, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(370, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(371, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(372, 1, 2, 'production', '-155.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(373, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(374, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(375, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(376, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(377, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(378, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(379, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(380, 11, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(381, 12, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(382, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(383, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(384, 13, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(385, 17, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(386, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(387, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(388, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(389, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat  2 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(390, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(391, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(392, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(393, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(394, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(395, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(396, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(397, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(398, 9, 2, 'production', '-25.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(399, 10, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(400, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(401, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(402, 13, 2, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(403, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(404, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(405, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(406, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(407, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250704-0001 - Qty: 1', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(408, 30, 2, 'adjustment', '12.00', '80000.00', '960000.00', 'Penyesuaian stok awal', '2025-07-04 05:47:56', '2025-07-04 05:47:56', NULL),
(409, 32, 2, 'adjustment', '3.00', '5465.00', '16395.00', 'Penyesuaian stok awal', '2025-07-05 04:06:25', '2025-07-05 04:06:25', NULL),
(410, 32, 2, 'in', '3339.00', '5465.00', '18247635.00', 'Penyesuaian stok melalui edit bahan baku', '2025-07-05 04:07:04', '2025-07-05 04:07:04', NULL),
(411, 20, 2, 'in', '1866.00', '15.00', '27990.00', 'Penyesuaian stok melalui edit bahan baku', '2025-07-06 10:51:42', '2025-07-06 10:51:42', NULL),
(412, 20, 2, 'out', '1866.00', '15.00', '27990.00', 'Penyesuaian stok melalui edit bahan baku', '2025-07-06 10:51:48', '2025-07-06 10:51:48', NULL),
(413, 33, 2, 'adjustment', '303.00', '30333.00', '9190899.00', 'Penyesuaian stok awal', '2025-07-06 10:53:39', '2025-07-06 10:53:39', NULL),
(414, 33, 2, 'in', '2730.00', '3033.00', '8280090.00', 'Penyesuaian stok melalui edit bahan baku', '2025-07-06 10:54:28', '2025-07-06 10:54:28', NULL),
(415, 33, 2, 'out', '2730.00', '3033.00', '8280090.00', 'Penyesuaian stok melalui edit bahan baku', '2025-07-06 10:54:36', '2025-07-06 10:54:36', NULL),
(416, 33, 2, 'in', '2736.00', '3033.00', '8298288.00', 'Penyesuaian stok melalui edit bahan baku', '2025-07-06 10:54:59', '2025-07-06 10:54:59', NULL),
(417, 33, 2, 'out', '2736.00', '3033.00', '8298288.00', 'Penyesuaian stok melalui edit bahan baku', '2025-07-06 10:55:07', '2025-07-06 10:55:07', NULL),
(418, 34, 2, 'adjustment', '34.00', '234.00', '7956.00', 'Penyesuaian stok awal', '2025-07-06 11:02:47', '2025-07-06 11:02:47', NULL),
(419, 34, 2, 'in', '3410.00', '234.00', '797940.00', 'Penyesuaian stok melalui edit bahan baku', '2025-07-06 11:03:07', '2025-07-06 11:03:07', NULL),
(420, 35, 2, 'adjustment', '34.00', '2333.00', '79322.00', 'Penyesuaian stok awal', '2025-07-06 11:14:45', '2025-07-06 11:14:45', NULL),
(421, 1, 3, 'production', '-450.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(422, 2, 3, 'production', '-90.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(423, 3, 3, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(424, 4, 3, 'production', '-6.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(425, 5, 3, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(426, 6, 3, 'production', '-6.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(427, 7, 3, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(428, 21, 3, 'production', '-300.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(429, 9, 3, 'production', '-45.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(430, 10, 3, 'production', '-9.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(431, 14, 3, 'production', '-24.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(432, 7, 3, 'production', '-9.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(433, 18, 3, 'production', '-45.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(434, 17, 3, 'production', '-6.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(435, 4, 3, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(436, 22, 3, 'production', '-240.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(437, 16, 3, 'production', '-60.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(438, 15, 3, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Geprek paket 2 - Transaksi TRX-20250706-0001 - Qty: 3', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(439, 1, 3, 'production', '-300.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(440, 2, 3, 'production', '-60.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(441, 3, 3, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(442, 4, 3, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(443, 5, 3, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(444, 6, 3, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(445, 7, 3, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(446, 21, 3, 'production', '-200.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(447, 9, 3, 'production', '-70.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(448, 10, 3, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(449, 12, 3, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(450, 14, 3, 'production', '-24.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(451, 7, 3, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(452, 13, 3, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(453, 17, 3, 'production', '-6.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(454, 4, 3, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(455, 22, 3, 'production', '-160.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(456, 16, 3, 'production', '-50.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(457, 15, 3, 'production', '-16.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(458, 24, 3, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 1 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(459, 1, 3, 'production', '-300.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(460, 2, 3, 'production', '-60.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(461, 3, 3, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(462, 4, 3, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(463, 5, 3, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(464, 6, 3, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(465, 7, 3, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(466, 21, 3, 'production', '-240.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(467, 9, 3, 'production', '-50.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(468, 10, 3, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(469, 14, 3, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(470, 7, 3, 'production', '-6.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(471, 13, 3, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(472, 17, 3, 'production', '-6.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(473, 4, 3, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(474, 23, 3, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(475, 22, 3, 'production', '-160.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(476, 16, 3, 'production', '-40.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(477, 15, 3, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Crispy Paket 2 - Transaksi TRX-20250706-0001 - Qty: 2', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(478, 20, 1, 'in', '1.00', '15.00', '15.00', 'Pembelian bahan baku', '2025-07-06 11:26:20', '2025-07-06 11:26:20', NULL),
(479, 1, 1, 'in', '2.00', '172.00', '344.00', 'Pembelian bahan baku', '2025-07-06 11:26:20', '2025-07-06 11:26:20', NULL),
(480, 36, 2, 'adjustment', '12.00', '13123.00', '157476.00', 'Penyesuaian stok awal', '2025-07-07 05:29:27', '2025-07-07 05:29:27', NULL),
(481, 38, 2, 'adjustment', '100.00', '1000000.00', '100000000.00', 'Penyesuaian stok awal', '2025-07-07 05:52:36', '2025-07-07 05:52:36', NULL),
(482, 17, 2, 'production', '-195.00', NULL, '0.00', 'Penjualan produk geprek paket 155 - Transaksi TRX-20250707-0001 - Qty: 3', '2025-07-07 06:01:45', '2025-07-07 06:01:45', NULL),
(483, 14, 1, 'in', '1.00', '25.00', '25.00', 'Pembelian bahan baku', '2025-07-07 14:26:13', '2025-07-07 14:26:13', NULL),
(484, 1, 1, 'in', '1.00', '172.00', '172.00', 'Pembelian bahan baku', '2025-07-07 14:26:13', '2025-07-07 14:26:13', NULL),
(485, 14, 2, 'in', '1.00', '25.00', '25.00', 'Pembelian bahan baku', '2025-07-08 03:50:26', '2025-07-08 03:50:26', NULL),
(486, 1, 2, 'in', '1.00', '172.00', '172.00', 'Pembelian bahan baku', '2025-07-08 03:50:26', '2025-07-08 03:50:26', NULL),
(487, 1, 1, 'in', '2.00', '172.00', '344.00', 'Pembelian bahan baku', '2025-07-08 03:51:19', '2025-07-08 03:51:19', NULL),
(488, 1, 1, 'in', '100.00', '172.00', '17200.00', 'Penyesuaian stok melalui edit bahan baku', '2025-07-08 03:56:04', '2025-07-08 03:56:04', NULL),
(489, 39, 1, 'adjustment', '24.00', '123444.00', '2962656.00', 'Penyesuaian stok awal', '2025-07-08 05:00:01', '2025-07-08 05:00:01', NULL),
(490, 1, 1, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(491, 2, 1, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(492, 3, 1, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(493, 4, 1, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(494, 5, 1, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(495, 6, 1, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(496, 7, 1, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(497, 21, 1, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(498, 9, 1, 'production', '-25.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(499, 10, 1, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(500, 14, 1, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(501, 7, 1, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(502, 13, 1, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(503, 17, 1, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(504, 4, 1, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(505, 22, 1, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(506, 16, 1, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(507, 15, 1, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250708-0001 - Qty: 1', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(508, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(509, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(510, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(511, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(512, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(513, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(514, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(515, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(516, 9, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(517, 10, 2, 'production', '-8.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(518, 14, 2, 'production', '-12.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(519, 7, 2, 'production', '-4.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(520, 19, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(521, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(522, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(523, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(524, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(525, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Geprek Paket 1 - Transaksi TRX-20250717-0001 - Qty: 1', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(526, 14, 2, 'pemakaian', '1.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-07-31 15:39:47', '2025-07-31 15:39:47', NULL),
(527, 1, 2, 'pemakaian', '1.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-07-31 15:39:47', '2025-07-31 15:39:47', NULL),
(528, 20, 2, 'pemakaian', '1.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-07-31 15:39:47', '2025-07-31 15:39:47', NULL),
(529, 21, 2, 'pemakaian', '10.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-07-31 15:40:23', '2025-07-31 15:40:23', NULL),
(530, 1, 2, 'production', '-150.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(531, 2, 2, 'production', '-30.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(532, 3, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(533, 4, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(534, 5, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(535, 6, 2, 'production', '-2.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(536, 7, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(537, 21, 2, 'production', '-100.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(538, 9, 2, 'production', '-25.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(539, 10, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(540, 14, 2, 'production', '-10.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(541, 7, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(542, 13, 2, 'production', '-15.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(543, 17, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(544, 4, 2, 'production', '-1.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(545, 22, 2, 'production', '-80.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(546, 16, 2, 'production', '-20.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(547, 15, 2, 'production', '-5.00', NULL, '0.00', 'Penjualan produk Ayam Paket Dahsyat 1 - Transaksi TRX-20250731-0001 - Qty: 1', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(548, 18, 2, 'production', '-3.00', NULL, '0.00', 'Penjualan produk nasi gepok - Transaksi TRX-20250731-0002 - Qty: 1', '2025-07-31 15:52:36', '2025-07-31 15:52:36', NULL),
(549, 17, 2, 'production', '-23.00', NULL, '0.00', 'Penjualan produk nasi gepok - Transaksi TRX-20250731-0002 - Qty: 1', '2025-07-31 15:52:36', '2025-07-31 15:52:36', NULL),
(550, 1, 2, 'production', '20.00', '172.00', '3440.00', 'Pengurangan untuk produksi testtt (Penambahan stok: 2)', '2025-07-31 16:02:29', '2025-07-31 16:02:29', NULL),
(551, 21, 2, 'pemakaian', '200.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-07-31 16:05:15', '2025-07-31 16:05:15', NULL),
(552, 21, 1, 'pemakaian', '2.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-07-31 16:19:01', '2025-07-31 16:19:01', NULL),
(553, 1, 1, 'in', '444.00', '172.00', '76368.00', 'Pembelian bahan baku', '2025-07-31 16:41:03', '2025-07-31 16:41:03', NULL),
(554, 40, 1, 'adjustment', '12.00', '2000.00', '24000.00', 'Penyesuaian stok awal', '2025-07-31 16:42:08', '2025-07-31 16:42:08', NULL),
(555, 1, 1, 'production', '300.00', '172.00', '51600.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(556, 2, 1, 'production', '60.00', '10.00', '600.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(557, 3, 1, 'production', '20.00', '12.00', '240.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(558, 4, 1, 'production', '4.00', '5.00', '20.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(559, 5, 1, 'production', '2.00', '25.00', '50.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(560, 6, 1, 'production', '4.00', '15.00', '60.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL);
INSERT INTO `raw_material_logs` (`id`, `raw_material_id`, `user_id`, `type`, `quantity`, `price`, `subtotal`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(561, 7, 1, 'production', '10.00', '30.00', '300.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(562, 21, 1, 'production', '200.00', '15.00', '3000.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(563, 9, 1, 'production', '50.00', '25.00', '1250.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(564, 10, 1, 'production', '10.00', '40.00', '400.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(565, 14, 1, 'production', '20.00', '25.00', '500.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(566, 7, 1, 'production', '6.00', '30.00', '180.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(567, 13, 1, 'production', '30.00', '15.00', '450.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(568, 17, 1, 'production', '6.00', '12.00', '72.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(569, 4, 1, 'production', '2.00', '5.00', '10.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(570, 22, 1, 'production', '160.00', '12.00', '1920.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(571, 16, 1, 'production', '40.00', '8.00', '320.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(572, 15, 1, 'production', '10.00', '10.00', '100.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 2)', '2025-07-31 16:52:35', '2025-07-31 16:52:35', NULL),
(573, 1, 2, 'in', '200.00', '172.00', '34400.00', 'Pembelian bahan baku', '2025-08-03 22:01:53', '2025-08-03 22:01:53', NULL),
(574, 20, 2, 'in', '34.00', '15.00', '510.00', 'Pembelian bahan baku', '2025-08-03 22:01:53', '2025-08-03 22:01:53', NULL),
(575, 1, 2, 'production', '400.00', '172.00', '68800.00', 'Pengurangan untuk produksi geprek paket test (Penambahan stok: 20)', '2025-08-03 22:17:36', '2025-08-03 22:17:36', NULL),
(576, 1, 2, 'production', '20.00', '172.00', '3440.00', 'Pengurangan untuk produksi geprek paket test (Penambahan stok: 1)', '2025-08-03 22:21:39', '2025-08-03 22:21:39', NULL),
(577, 21, 2, 'in', '20.00', '15.00', '300.00', 'Pembelian bahan baku', '2025-08-03 22:26:20', '2025-08-03 22:26:20', NULL),
(578, 21, 2, 'pemakaian', '20.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-03 22:26:47', '2025-08-03 22:26:47', NULL),
(579, 22, 1, 'pemakaian', '10.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-04 04:00:27', '2025-08-04 04:00:27', NULL),
(580, 9, 1, 'pemakaian', '2.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-04 04:01:07', '2025-08-04 04:01:07', NULL),
(581, 9, 1, 'pemakaian', '8.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-04 04:01:32', '2025-08-04 04:01:32', NULL),
(582, 21, 1, 'pemakaian', '7.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-04 04:04:29', '2025-08-04 04:04:29', NULL),
(583, 20, 2, 'pemakaian', '1.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-04 04:45:11', '2025-08-04 04:45:11', NULL),
(584, 14, 2, 'pemakaian', '1.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-04 04:45:11', '2025-08-04 04:45:11', NULL),
(585, 20, 1, 'pemakaian', '10.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-06 23:12:27', '2025-08-06 23:12:27', NULL),
(586, 21, 1, 'pemakaian', '10.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-06 23:12:39', '2025-08-06 23:12:39', NULL),
(587, 1, 2, 'in', '1000.00', '172.00', '172000.00', 'Pembelian bahan baku', '2025-08-06 23:16:05', '2025-08-06 23:16:05', NULL),
(604, 15, 2, 'in', '1.00', '10.00', '10.00', 'Penyesuaian stok melalui edit bahan baku', '2025-08-06 23:18:28', '2025-08-06 23:18:28', NULL),
(605, 11, 2, 'in', '10.00', '20.00', '200.00', 'Pembelian bahan baku', '2025-08-19 06:22:06', '2025-08-19 06:22:06', NULL),
(606, 21, 2, 'in', '1000.00', '15.00', '15000.00', 'Pembelian bahan baku', '2025-08-19 06:24:41', '2025-08-19 06:24:41', NULL),
(607, 21, 2, 'pemakaian', '1000.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-19 06:25:28', '2025-08-19 06:25:28', NULL),
(624, 1, 2, 'production', '300.00', '172.00', '51600.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(625, 2, 2, 'production', '60.00', '10.00', '600.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(626, 3, 2, 'production', '20.00', '12.00', '240.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(627, 4, 2, 'production', '4.00', '5.00', '20.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(628, 5, 2, 'production', '2.00', '25.00', '50.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(629, 6, 2, 'production', '4.00', '15.00', '60.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(630, 7, 2, 'production', '10.00', '30.00', '300.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(631, 9, 2, 'production', '40.00', '25.00', '1000.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(632, 10, 2, 'production', '16.00', '40.00', '640.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(633, 14, 2, 'production', '24.00', '25.00', '600.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(634, 7, 2, 'production', '8.00', '30.00', '240.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(635, 19, 2, 'production', '6.00', '50.00', '300.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(636, 17, 2, 'production', '6.00', '12.00', '72.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(637, 4, 2, 'production', '2.00', '5.00', '10.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(638, 22, 2, 'production', '160.00', '12.00', '1920.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(639, 16, 2, 'production', '40.00', '8.00', '320.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(640, 15, 2, 'production', '10.00', '10.00', '100.00', 'Pengurangan untuk produksi Ayam Geprek Paket 1 (Penambahan stok: 2)', '2025-08-19 06:27:47', '2025-08-19 06:27:47', NULL),
(641, 21, 3, 'in', '5000.00', '15.00', '75000.00', 'Pembelian bahan baku', '2025-08-20 14:05:50', '2025-08-20 14:05:50', NULL),
(642, 41, 1, 'adjustment', '2000.00', '150.00', '300000.00', 'Penyesuaian stok awal', '2025-08-20 14:37:13', '2025-08-20 14:37:13', NULL),
(643, 42, 1, 'adjustment', '2000.00', '150.00', '300000.00', 'Penyesuaian stok awal', '2025-08-20 14:38:51', '2025-08-20 14:38:51', NULL),
(644, 20, 1, 'in', '10.00', '15.00', '150.00', 'Pembelian bahan baku', '2025-08-20 14:39:32', '2025-08-20 14:39:32', NULL),
(645, 20, 1, 'production', '25.00', '15.00', '375.00', 'Pengurangan untuk produksi ayam paket dahsyat 44 (Penambahan stok: 5)', '2025-08-20 15:19:23', '2025-08-20 15:19:23', NULL),
(646, 20, 1, 'production', '4.00', '15.00', '60.00', 'Pengurangan untuk produksi geprek paket 33 (Penambahan stok: 2)', '2025-08-20 15:20:21', '2025-08-20 15:20:21', NULL),
(647, 20, 1, 'in', '1.00', '15.00', '15.00', 'Pembelian bahan baku', '2025-08-21 01:13:07', '2025-08-21 01:13:07', NULL),
(648, 1, 1, 'in', '5.00', '172.00', '860.00', 'Pembelian bahan baku', '2025-08-21 01:13:07', '2025-08-21 01:13:07', NULL),
(649, 21, 1, 'pemakaian', '1.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-21 01:15:16', '2025-08-21 01:15:16', NULL),
(650, 43, 1, 'adjustment', '10.00', '20.00', '200.00', 'Penyesuaian stok awal', '2025-08-21 02:50:15', '2025-08-21 02:50:15', NULL),
(651, 1, 1, 'in', '200.00', '172.00', '34400.00', 'Pembelian bahan baku', '2025-08-21 02:51:05', '2025-08-21 02:51:05', NULL),
(652, 21, 1, 'pemakaian', '2000.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-21 02:52:38', '2025-08-21 02:52:38', NULL),
(653, 21, 1, 'out', '3729.00', '15.00', '55935.00', 'Penyesuaian stok melalui edit bahan baku', '2025-08-21 02:54:04', '2025-08-21 02:54:04', NULL),
(654, 7, 1, 'production', '100.00', '30.00', '3000.00', 'Pengurangan untuk produksi ayam geprek keju (Penambahan stok: 5)', '2025-08-21 02:58:09', '2025-08-21 02:58:09', NULL),
(655, 20, 1, 'pemakaian', '1.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-21 03:47:59', '2025-08-21 03:47:59', NULL),
(656, 44, 2, 'adjustment', '10.00', '200.00', '2000.00', 'Penyesuaian stok awal', '2025-08-24 11:04:23', '2025-08-24 11:04:23', NULL),
(657, 45, 1, 'adjustment', '20.00', '200.00', '4000.00', 'Penyesuaian stok awal', '2025-08-24 14:31:24', '2025-08-24 14:31:24', NULL),
(658, 1, 1, 'production', '150.00', '172.00', '25800.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(659, 2, 1, 'production', '30.00', '10.00', '300.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(660, 3, 1, 'production', '10.00', '12.00', '120.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(661, 4, 1, 'production', '2.00', '5.00', '10.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(662, 5, 1, 'production', '1.00', '25.00', '25.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(663, 6, 1, 'production', '2.00', '15.00', '30.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(664, 7, 1, 'production', '5.00', '30.00', '150.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(665, 9, 1, 'production', '25.00', '25.00', '625.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(666, 10, 1, 'production', '5.00', '40.00', '200.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(667, 14, 1, 'production', '10.00', '25.00', '250.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(668, 7, 1, 'production', '3.00', '30.00', '90.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(669, 13, 1, 'production', '15.00', '15.00', '225.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(670, 17, 1, 'production', '3.00', '12.00', '36.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(671, 4, 1, 'production', '1.00', '5.00', '5.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(672, 22, 1, 'production', '80.00', '12.00', '960.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(673, 16, 1, 'production', '20.00', '8.00', '160.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(674, 15, 1, 'production', '5.00', '10.00', '50.00', 'Pengurangan untuk produksi Ayam Paket Dahsyat 1 (Penambahan stok: 1)', '2025-08-24 14:37:15', '2025-08-24 14:37:15', NULL),
(675, 46, 1, 'adjustment', '20.00', '230.00', '4600.00', 'Penyesuaian stok awal', '2025-08-25 10:32:20', '2025-08-25 10:32:20', NULL),
(676, 14, 1, 'in', '2.00', '25.00', '50.00', 'Pembelian bahan baku', '2025-08-25 14:41:27', '2025-08-25 14:41:27', NULL),
(677, 21, 1, 'pemakaian', '1.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-25 14:42:01', '2025-08-25 14:42:01', NULL),
(678, 7, 1, 'production', '20.00', '30.00', '600.00', 'Pengurangan untuk produksi ayam geprek sambal hijau (Penambahan stok: 1)', '2025-08-25 14:44:13', '2025-08-25 14:44:13', NULL),
(679, 12, 1, 'production', '5.00', '35.00', '175.00', 'Pengurangan untuk produksi ayam geprek sambal hijau (Penambahan stok: 1)', '2025-08-25 14:44:13', '2025-08-25 14:44:13', NULL),
(680, 2, 1, 'production', '20.00', '10.00', '200.00', 'Pengurangan untuk produksi ayam geprek sambal hijau (Penambahan stok: 1)', '2025-08-25 14:44:13', '2025-08-25 14:44:13', NULL),
(681, 12, 1, 'production', '4.00', '35.00', '140.00', 'Pengurangan untuk produksi ayam geprek sambal hijau (Penambahan stok: 1)', '2025-08-25 14:44:13', '2025-08-25 14:44:13', NULL),
(682, 15, 1, 'in', '200.00', '10.00', '2000.00', 'Pembelian bahan baku', '2025-08-25 14:48:00', '2025-08-25 14:48:00', NULL),
(683, 47, 2, 'adjustment', '20.00', '200.00', '4000.00', 'Penyesuaian stok awal', '2025-08-25 14:55:28', '2025-08-25 14:55:28', NULL),
(684, 48, 1, 'adjustment', '12.00', '200.00', '2400.00', 'Penyesuaian stok awal', '2025-08-26 01:27:52', '2025-08-26 01:27:52', NULL),
(685, 49, 1, 'adjustment', '20.00', '200.00', '4000.00', 'Penyesuaian stok awal', '2025-08-26 08:21:08', '2025-08-26 08:21:08', NULL),
(686, 14, 1, 'in', '2.00', '25.00', '50.00', 'Pembelian bahan baku', '2025-08-26 08:22:04', '2025-08-26 08:22:04', NULL),
(687, 21, 1, 'in', '5000.00', '15.00', '75000.00', 'Pembelian bahan baku', '2025-08-26 08:24:29', '2025-08-26 08:24:29', NULL),
(688, 21, 1, 'pemakaian', '2000.00', '0.00', '0.00', 'Pemakaian bahan baku', '2025-08-26 08:24:51', '2025-08-26 08:24:51', NULL),
(689, 23, 1, 'production', '20.00', '2500.00', '50000.00', 'Pengurangan untuk produksi ayam paket 5 (Penambahan stok: 20)', '2025-08-26 08:28:05', '2025-08-26 08:28:05', NULL),
(690, 1, 1, 'production', '400.00', '172.00', '68800.00', 'Pengurangan untuk produksi ayam paket 5 (Penambahan stok: 20)', '2025-08-26 08:28:05', '2025-08-26 08:28:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supers`
--

CREATE TABLE `supers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supers`
--

INSERT INTO `supers` (`id`, `user_id`, `nama`, `no_telp`, `alamat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Super Administrator', '081234567890', 'Jl. Admin Super No. 1, Jakarta', '2025-06-26 04:42:55', '2025-06-26 04:42:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `total_harga` decimal(10,2) NOT NULL DEFAULT '0.00',
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `status` enum('pending','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `tanggal_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_transaksi`, `user_id`, `total_harga`, `metode_pembayaran`, `status`, `tanggal_transaksi`, `customer_name`, `customer_phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'TRX-20250626-0001', 2, '37000.00', 'cash', 'pending', '2025-06-26 06:20:06', 'febri', '2345654323', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(2, 'TRX-20250626-0002', 2, '39000.00', 'cash', 'pending', '2025-06-26 06:28:40', 'febrioo', '45687654567', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(3, 'TRX-20250626-0003', 2, '37000.00', 'cash', 'pending', '2025-06-26 06:34:12', 'alegoo', '3456765456', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(4, 'TRX-20250626-0004', 2, '20000.00', 'cash', 'pending', '2025-06-26 06:36:46', 'hh', '77777777', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(5, 'TRX-20250626-0005', 2, '19000.00', 'cash', 'pending', '2025-06-26 06:39:50', 'j', '34534555', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(6, 'TRX-20250626-0006', 2, '19000.00', 'cash', 'pending', '2025-06-26 06:47:18', 'j', '77777777', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(7, 'TRX-20250626-0007', 2, '19000.00', 'cash', 'pending', '2025-06-26 07:03:32', 'fer', '2345677543', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(8, 'TRX-20250626-0008', 2, '39000.00', 'cash', 'pending', '2025-06-26 07:07:11', 'dwi', '32456655433', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(9, 'TRX-20250626-0009', 2, '37000.00', 'cash', 'pending', '2025-06-26 13:16:04', 'febri', '123456754332', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(10, 'TRX-20250628-0001', 2, '20000.00', 'cash', 'pending', '2025-06-28 14:02:27', 'algo', '09876557893121', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(11, 'TRX-20250701-0001', 1, '10000.00', 'cash', 'pending', '2025-07-01 08:50:06', 'wrwrw', '34567231212', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(12, 'TRX-20250701-0002', 2, '10000.00', 'cash', 'pending', '2025-07-01 09:07:46', 'fsdfhbsfsd', '23425523', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(13, 'TRX-20250701-0003', 2, '13000.00', 'cash', 'pending', '2025-07-01 11:31:46', 'febri', '343253253243', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(14, 'TRX-20250704-0001', 2, '39000.00', 'cash', 'pending', '2025-07-04 05:46:29', 'febri', '06567897630443', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(16, 'TRX-20250706-0001', 3, '115000.00', 'cash', 'pending', '2025-07-06 11:22:59', 'febri', '2342424324', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(17, 'TRX-20250707-0001', 2, '2360634.00', 'cash', 'pending', '2025-07-07 06:01:45', 'febri', '9834343533', '2025-07-07 06:01:45', '2025-07-07 06:01:45', NULL),
(18, 'TRX-20250708-0001', 1, '10000.00', 'cash', 'pending', '2025-07-08 06:07:50', 'febri', '345678765', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(20, 'TRX-20250717-0001', 2, '16000.00', 'cash', 'pending', '2025-07-17 14:45:27', 'febri', '2335343563466', '2025-07-17 14:45:27', '2025-07-17 14:45:27', NULL),
(21, 'TRX-20250731-0001', 2, '10000.00', 'cash', 'pending', '2025-07-31 15:42:45', 'fdebri', '9897876989869', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(22, 'TRX-20250731-0002', 2, '313313.00', 'cash', 'pending', '2025-07-31 15:52:35', 'srf', '1343243324', '2025-07-31 15:52:35', '2025-07-31 15:52:35', NULL),
(23, 'TRX-20250731-0003', 2, '14364.00', 'cash', 'pending', '2025-07-31 16:03:24', 'febri77', '2342424324', '2025-07-31 16:03:24', '2025-07-31 16:03:24', NULL),
(26, 'TRX-20250731-0004', 1, '110000.00', 'cash', 'pending', '2025-07-31 16:50:44', 'febri', '3284798274', '2025-07-31 16:50:44', '2025-07-31 16:50:44', NULL),
(28, 'TRX-20250731-0005', 1, '112000.00', 'cash', 'pending', '2025-07-31 16:51:41', 'febri', '93845893475', '2025-07-31 16:51:41', '2025-07-31 16:51:41', NULL),
(29, 'TRX-20250804-0001', 2, '30000.00', 'cash', 'pending', '2025-08-03 22:18:56', 'febri', '23424243243432', '2025-08-03 22:18:56', '2025-08-03 22:18:56', NULL),
(30, 'TRX-20250819-0001', 2, '16000.00', 'cash', 'pending', '2025-08-19 06:33:03', 'febri5', '09876543', '2025-08-19 06:33:03', '2025-08-19 06:33:03', NULL),
(31, 'TRX-20250820-0001', 1, '23000.00', 'cash', 'pending', '2025-08-20 15:41:04', 'febrii', '23947237463243', '2025-08-20 15:41:04', '2025-08-20 15:41:04', NULL),
(32, 'TRX-20250820-0002', 3, '13000.00', 'cash', 'pending', '2025-08-20 15:45:24', 'febrii', '21894712412122', '2025-08-20 15:45:24', '2025-08-20 15:45:24', NULL),
(33, 'TRX-20250821-0001', 1, '29000.00', 'cash', 'pending', '2025-08-21 03:01:26', 'febri', '38947273247234', '2025-08-21 03:01:26', '2025-08-21 03:01:26', NULL),
(34, 'TRX-20250824-0001', 1, '13000.00', 'cash', 'pending', '2025-08-24 14:25:56', 'febri', '23477892364236', '2025-08-24 14:25:56', '2025-08-24 14:25:56', NULL),
(35, 'TRX-20250825-0001', 1, '13000.00', 'cash', 'pending', '2025-08-25 10:35:08', 'febri', '09423484325', '2025-08-25 10:35:08', '2025-08-25 10:35:08', NULL),
(36, 'TRX-20250825-0002', 1, '26000.00', 'cash', 'pending', '2025-08-25 14:50:56', 'febri', '09383920853252', '2025-08-25 14:50:56', '2025-08-25 14:50:56', NULL),
(37, 'TRX-20250826-0001', 1, '32000.00', 'cash', 'pending', '2025-08-26 08:29:25', 'febri genji', '02834098275', '2025-08-26 08:29:25', '2025-08-26 08:29:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint UNSIGNED NOT NULL,
  `transaksi_id` bigint UNSIGNED NOT NULL,
  `produk_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `subtotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `produk_id`, `quantity`, `price`, `subtotal`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1, '19000.00', '19000.00', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(2, 1, 1, 1, '18000.00', '18000.00', '2025-06-26 06:20:06', '2025-06-26 06:20:06', NULL),
(3, 2, 3, 1, '20000.00', '20000.00', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(4, 2, 2, 1, '19000.00', '19000.00', '2025-06-26 06:28:40', '2025-06-26 06:28:40', NULL),
(5, 3, 1, 1, '18000.00', '18000.00', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(6, 3, 2, 1, '19000.00', '19000.00', '2025-06-26 06:34:12', '2025-06-26 06:34:12', NULL),
(7, 4, 3, 1, '20000.00', '20000.00', '2025-06-26 06:36:46', '2025-06-26 06:36:46', NULL),
(8, 5, 2, 1, '19000.00', '19000.00', '2025-06-26 06:39:50', '2025-06-26 06:39:50', NULL),
(9, 6, 2, 1, '19000.00', '19000.00', '2025-06-26 06:47:18', '2025-06-26 06:47:18', NULL),
(10, 7, 2, 1, '19000.00', '19000.00', '2025-06-26 07:03:32', '2025-06-26 07:03:32', NULL),
(11, 8, 2, 1, '19000.00', '19000.00', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(12, 8, 3, 1, '20000.00', '20000.00', '2025-06-26 07:07:11', '2025-06-26 07:07:11', NULL),
(13, 9, 2, 1, '19000.00', '19000.00', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(14, 9, 1, 1, '18000.00', '18000.00', '2025-06-26 13:16:04', '2025-06-26 13:16:04', NULL),
(15, 10, 1, 2, '10000.00', '20000.00', '2025-06-28 14:02:27', '2025-06-28 14:02:27', NULL),
(16, 11, 1, 1, '10000.00', '10000.00', '2025-07-01 08:50:06', '2025-07-01 08:50:06', NULL),
(17, 12, 1, 1, '10000.00', '10000.00', '2025-07-01 09:07:46', '2025-07-01 09:07:46', NULL),
(18, 13, 2, 1, '13000.00', '13000.00', '2025-07-01 11:31:46', '2025-07-01 11:31:46', NULL),
(19, 14, 3, 1, '16000.00', '16000.00', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(20, 14, 2, 1, '13000.00', '13000.00', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(21, 14, 1, 1, '10000.00', '10000.00', '2025-07-04 05:46:29', '2025-07-04 05:46:29', NULL),
(22, 16, 4, 3, '19000.00', '57000.00', '2025-07-06 11:22:59', '2025-07-06 11:22:59', NULL),
(23, 16, 5, 2, '13000.00', '26000.00', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(24, 16, 7, 2, '16000.00', '32000.00', '2025-07-06 11:23:00', '2025-07-06 11:23:00', NULL),
(25, 17, 28, 3, '786878.00', '2360634.00', '2025-07-07 06:01:45', '2025-07-07 06:01:45', NULL),
(26, 18, 1, 1, '10000.00', '10000.00', '2025-07-08 06:07:50', '2025-07-08 06:07:50', NULL),
(27, 20, 3, 1, '16000.00', '16000.00', '2025-07-17 14:45:28', '2025-07-17 14:45:28', NULL),
(28, 21, 1, 1, '10000.00', '10000.00', '2025-07-31 15:42:45', '2025-07-31 15:42:45', NULL),
(29, 22, 23, 1, '313313.00', '313313.00', '2025-07-31 15:52:36', '2025-07-31 15:52:36', NULL),
(30, 23, 31, 2, '7182.00', '14364.00', '2025-07-31 16:03:24', '2025-07-31 16:03:24', NULL),
(31, 26, 1, 11, '10000.00', '110000.00', '2025-07-31 16:50:44', '2025-07-31 16:50:44', NULL),
(32, 28, 3, 7, '16000.00', '112000.00', '2025-07-31 16:51:41', '2025-07-31 16:51:41', NULL),
(33, 29, 32, 1, '30000.00', '30000.00', '2025-08-03 22:18:56', '2025-08-03 22:18:56', NULL),
(34, 30, 3, 1, '16000.00', '16000.00', '2025-08-19 06:33:03', '2025-08-19 06:33:03', NULL),
(35, 31, 2, 1, '13000.00', '13000.00', '2025-08-20 15:41:04', '2025-08-20 15:41:04', NULL),
(36, 31, 1, 1, '10000.00', '10000.00', '2025-08-20 15:41:04', '2025-08-20 15:41:04', NULL),
(37, 32, 5, 1, '13000.00', '13000.00', '2025-08-20 15:45:24', '2025-08-20 15:45:24', NULL),
(38, 33, 2, 1, '13000.00', '13000.00', '2025-08-21 03:01:26', '2025-08-21 03:01:26', NULL),
(39, 33, 7, 1, '16000.00', '16000.00', '2025-08-21 03:01:26', '2025-08-21 03:01:26', NULL),
(40, 34, 5, 1, '13000.00', '13000.00', '2025-08-24 14:25:56', '2025-08-24 14:25:56', NULL),
(41, 35, 2, 1, '13000.00', '13000.00', '2025-08-25 10:35:08', '2025-08-25 10:35:08', NULL),
(42, 36, 5, 2, '13000.00', '26000.00', '2025-08-25 14:50:56', '2025-08-25 14:50:56', NULL),
(43, 37, 7, 2, '16000.00', '32000.00', '2025-08-26 08:29:25', '2025-08-26 08:29:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` enum('admin','karyawan','pelanggan','super') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `roles`, `remember_token`, `created_at`, `updated_at`, `last_login`, `deleted_at`) VALUES
(1, 'superadmin', '$2y$10$lZkUL/2DlAZVgnSLI.cnJuCEIwEdWBojseZAnOhnMcRkboPRDIU1m', 'super', NULL, '2025-06-26 04:42:55', '2025-06-26 05:14:30', NULL, NULL),
(2, 'Admin', '$2y$10$TKTbG3QKSxweFmisNtCYcekCEHdI/IqqDUrt7ObOnjIsssLsXmP..', 'admin', NULL, '2025-06-26 04:42:55', '2025-06-26 10:51:21', NULL, NULL),
(3, 'karyawan', '$2y$10$t8FU6iwx82cOWyeKhIoX1uYD1Rl29392mrY3JYrk01Gx/8OG1dl3a', 'karyawan', NULL, '2025-06-26 04:42:55', '2025-07-06 11:24:29', NULL, NULL),
(4, 'algo', '$2y$10$aTTyLYCl0dFJ3bvb05HN5eJEVKtsEfkC0QqZjW0uoePzGHZv.j242', 'admin', NULL, '2025-06-26 04:57:50', '2025-06-26 14:11:20', NULL, NULL),
(5, 'winter', '$2y$10$enbWZh282mhY2lB4GLJtf.rUwbwape51cgJ4rK9laZSHezbxk3/S.', 'karyawan', NULL, '2025-06-26 05:00:03', '2025-06-26 05:00:03', NULL, NULL),
(6, 'algoee', '$2y$10$t9ZvwWXiepQKG7wZZy7z2e6Mzz9zkCd2mFaNH1HSV13lJA4QTS216', 'karyawan', NULL, '2025-06-26 05:19:17', '2025-08-25 14:39:59', NULL, '2025-08-25 14:39:59'),
(7, 'karyawanQ', '$2y$10$6dJGVyMUxcfPRI08xeuFO.HV14Hd55yUgKOrGQlJkOQvJ19pdyC1e', 'karyawan', NULL, '2025-08-03 21:49:28', '2025-08-03 21:49:28', NULL, NULL),
(8, 'aizen', '$2y$10$EQweTFEQrKbWiiAU3RKez.Z0ljHjaNINn1HnzaibLt2mfVpjIqPCG', 'karyawan', NULL, '2025-08-20 06:43:11', '2025-08-20 06:43:11', NULL, NULL),
(10, 'genji pp', '$2y$10$PTXSfNslw1dtMweuDYQ3i.qxQcOEdX/ZfHg0d2narTaq52Fp0M8JW', 'karyawan', NULL, '2025-08-20 14:14:13', '2025-08-20 14:17:18', NULL, '2025-08-20 14:17:18'),
(12, 'vergil', '$2y$10$uckdgOt0xscSK57Yi/kN3OzIqxplT0SIC3yyl78Vp4G/IqRElZBt.', 'karyawan', NULL, '2025-08-20 14:16:00', '2025-08-20 14:20:25', NULL, '2025-08-20 14:20:25'),
(15, 'Algooo', '$2y$10$ZpbRoOjy3SQZV14L1woIhuvnW3DuqdgyXitrQUS8PgOl4nVXHMXAi', 'karyawan', NULL, '2025-08-21 01:07:12', '2025-08-21 01:07:12', NULL, NULL),
(17, 'Algo febri', '$2y$10$ZnMZ007IKf04uoU9MD00w.A5cn7vJFSjD.zqpLpnQZgaA6shzOzLy', 'karyawan', NULL, '2025-08-21 02:48:55', '2025-08-21 02:48:55', NULL, NULL),
(18, 'xxxxx', '$2y$10$CCBiTqyfFXbu6L7N8EYcVOX5.zPgakLswihYrJxwD961W.HvgkVgi', 'admin', NULL, '2025-08-25 02:31:23', '2025-08-25 02:31:23', NULL, NULL),
(19, 'adminpp', '$2y$10$I9osWC/G7SZCVPSje0sHvOOrX.8HJP3Peg6pCr0GcfgiSzwzPw/kG', 'karyawan', NULL, '2025-08-25 02:34:43', '2025-08-25 02:34:43', NULL, NULL),
(22, 'febrigg', '$2y$10$zVXqXvPp6TwytTuEftBlAeX.NpS483UBAqwNqJJbdhW2h.TOLAFde', 'karyawan', NULL, '2025-08-25 06:25:01', '2025-08-25 06:25:01', NULL, NULL),
(23, 'alegooo', '$2y$10$p8uqTUPZMdwG8Jdxs6x/u..317mKuijg6Pj/fh/oyFskgVg/A7y0W', 'karyawan', NULL, '2025-08-25 06:25:38', '2025-08-25 06:25:38', NULL, NULL),
(25, 'algojo', '$2y$10$8fsYaSOV59QxJPIvLe11puYl/EkHY7OSFXumLccI4jiFpCI5O1RGa', 'karyawan', NULL, '2025-08-25 10:30:19', '2025-08-25 10:30:19', NULL, NULL),
(26, 'diyo7678', '$2y$10$DZZcpKiVmM48FEaBpldTROMEixfoK1FC.33q1GSKuLkwx738o/6iq', 'karyawan', NULL, '2025-08-25 13:57:11', '2025-08-25 13:59:25', NULL, '2025-08-25 13:59:25'),
(27, 'naruto', '$2y$10$tg/U68QjnpSYf.Cmpnj6vOYkIQo5DoR4b50tAkZMbgLW7oPVq0o6i', 'karyawan', NULL, '2025-08-26 07:08:26', '2025-08-26 07:08:26', NULL, NULL),
(28, 'febri soleh', '$2y$10$7Wr3e86lVQdsCaQD.P8q2eYVJG38mCaRyUBKagu3MCzuqtHsF09iS', 'karyawan', NULL, '2025-08-26 08:19:55', '2025-08-26 08:19:55', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karyawan_user_id_foreign` (`user_id`);

--
-- Indexes for table `laporanpenjualans`
--
ALTER TABLE `laporanpenjualans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pelanggan_no_telp_unique` (`no_telp`),
  ADD UNIQUE KEY `pelanggan_id_user_unique` (`id_user`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_recipes`
--
ALTER TABLE `product_recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_recipes_produk_id_foreign` (`produk_id`),
  ADD KEY `product_recipes_raw_material_id_foreign` (`raw_material_id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_materials`
--
ALTER TABLE `raw_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_material_logs`
--
ALTER TABLE `raw_material_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raw_material_logs_raw_material_id_foreign` (`raw_material_id`),
  ADD KEY `raw_material_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `supers`
--
ALTER TABLE `supers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supers_user_id_foreign` (`user_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksi_kode_transaksi_unique` (`kode_transaksi`),
  ADD KEY `transaksi_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `transaksi_details_produk_id_foreign` (`produk_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `laporanpenjualans`
--
ALTER TABLE `laporanpenjualans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_recipes`
--
ALTER TABLE `product_recipes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1237;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `raw_materials`
--
ALTER TABLE `raw_materials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `raw_material_logs`
--
ALTER TABLE `raw_material_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=691;

--
-- AUTO_INCREMENT for table `supers`
--
ALTER TABLE `supers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_recipes`
--
ALTER TABLE `product_recipes`
  ADD CONSTRAINT `product_recipes_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_recipes_raw_material_id_foreign` FOREIGN KEY (`raw_material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `raw_material_logs`
--
ALTER TABLE `raw_material_logs`
  ADD CONSTRAINT `raw_material_logs_raw_material_id_foreign` FOREIGN KEY (`raw_material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `raw_material_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `supers`
--
ALTER TABLE `supers`
  ADD CONSTRAINT `supers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
