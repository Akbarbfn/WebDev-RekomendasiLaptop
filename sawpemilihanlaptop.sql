-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2022 at 05:32 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saw_laravel`
--

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
(1, '2022_04_30_224512_create_tb_kriteria_table', 1),
(2, '2022_04_30_224540_create_tb_alternatif_table', 1),
(3, '2022_04_30_224604_create_tb_crisp_table', 1),
(4, '2022_04_30_224637_create_tb_rel_alternatif_table', 1),
(5, '2022_04_30_224653_create_tb_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_alternatif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `total`, `rank`, `created_at`, `updated_at`) VALUES
('A01', 'Alternatif 1', '-', 0.73076923076923, 1, '2022-12-07 10:17:18', '2022-12-07 11:02:33'),
('A02', 'Alternatif 2', '-', 0.42051282051282, 6, '2022-12-07 10:17:18', '2022-12-07 11:02:33'),
('A03', 'Alternatif 3', '-', 0.31153846153846, 7, '2022-12-07 10:17:18', '2022-12-07 11:02:33'),
('A04', 'Alternatif 4', '-', 0.66666666666667, 2, '2022-12-07 10:17:18', '2022-12-07 11:02:33'),
('A05', 'Alternatif 5', '-', 0.52307692307692, 4, '2022-12-07 10:17:18', '2022-12-07 11:02:33'),
('A06', 'Alternatif 6', '-', 0.63076923076923, 3, '2022-12-07 10:17:18', '2022-12-07 11:02:33'),
('A07', 'Alternatif 7', '-', 0.43846153846154, 5, '2022-12-07 10:17:19', '2022-12-07 11:02:33'),
('A08', 'Alternatif 8', '-', 0.26666666666667, 8, '2022-12-07 10:17:19', '2022-12-07 11:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `tb_crisp`
--

CREATE TABLE `tb_crisp` (
  `id_crisp` bigint(20) UNSIGNED NOT NULL,
  `kode_kriteria` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_crisp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_crisp`
--

INSERT INTO `tb_crisp` (`id_crisp`, `kode_kriteria`, `nama_crisp`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 'C01', 'Sangat Rendah', 1, '2022-12-07 10:17:16', '2022-12-07 10:17:16'),
(2, 'C01', 'Rendah', 2, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(3, 'C01', 'Cukup', 3, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(4, 'C01', 'Tinggi', 4, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(5, 'C01', 'Sangat Tinggi', 5, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(6, 'C02', 'Sangat Rendah', 1, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(7, 'C02', 'Rendah', 2, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(8, 'C02', 'Cukup', 3, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(9, 'C02', 'Tinggi', 4, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(10, 'C02', 'Sangat Tinggi', 5, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(11, 'C03', 'Sangat Rendah', 1, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
(12, 'C03', 'Rendah', 2, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(13, 'C03', 'Cukup', 3, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(14, 'C03', 'Tinggi', 4, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(15, 'C03', 'Sangat Tinggi', 5, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(16, 'C04', 'Sangat Rendah', 1, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(17, 'C04', 'Rendah', 2, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(18, 'C04', 'Cukup', 3, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(19, 'C04', 'Tinggi', 4, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(20, 'C04', 'Sangat Tinggi', 5, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(21, 'C05', 'Sangat Rendah', 1, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(22, 'C05', 'Rendah', 2, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(23, 'C05', 'Cukup', 3, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(24, 'C05', 'Tinggi', 4, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
(25, 'C05', 'Sangat Tinggi', 5, '2022-12-07 10:17:18', '2022-12-07 10:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atribut` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bobot` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `atribut`, `bobot`, `created_at`, `updated_at`) VALUES
('C01', 'Kriteria 1', 'benefit', 3, '2022-12-07 10:17:16', '2022-12-07 10:17:16'),
('C02', 'Kriteria 2', 'benefit', 2, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
('C03', 'Kriteria 3', 'cost', 5, '2022-12-07 10:17:17', '2022-12-07 10:17:17'),
('C04', 'Kriteria 4', 'benefit', 2, '2022-12-07 10:17:18', '2022-12-07 10:17:18'),
('C05', 'Kriteria 5', 'benefit', 1, '2022-12-07 10:17:18', '2022-12-07 10:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `kode_alternatif` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_kriteria` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_crisp` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `id_crisp`, `created_at`, `updated_at`) VALUES
(1, 'A01', 'C01', 5, NULL, NULL),
(2, 'A01', 'C02', 9, NULL, NULL),
(3, 'A01', 'C03', 12, NULL, NULL),
(4, 'A01', 'C04', 20, NULL, NULL),
(5, 'A01', 'C05', 22, NULL, NULL),
(6, 'A02', 'C01', 1, NULL, NULL),
(7, 'A02', 'C02', 10, NULL, NULL),
(8, 'A02', 'C03', 13, NULL, NULL),
(9, 'A02', 'C04', 17, NULL, NULL),
(10, 'A02', 'C05', 22, NULL, NULL),
(11, 'A03', 'C01', 1, NULL, NULL),
(12, 'A03', 'C02', 7, NULL, NULL),
(13, 'A03', 'C03', 14, NULL, NULL),
(14, 'A03', 'C04', 16, NULL, NULL),
(15, 'A03', 'C05', 25, NULL, NULL),
(16, 'A04', 'C01', 5, NULL, NULL),
(17, 'A04', 'C02', 10, NULL, NULL),
(18, 'A04', 'C03', 13, NULL, NULL),
(19, 'A04', 'C04', 18, NULL, NULL),
(20, 'A04', 'C05', 24, NULL, NULL),
(21, 'A05', 'C01', 4, NULL, NULL),
(22, 'A05', 'C02', 8, NULL, NULL),
(23, 'A05', 'C03', 15, NULL, NULL),
(24, 'A05', 'C04', 19, NULL, NULL),
(25, 'A05', 'C05', 23, NULL, NULL),
(26, 'A06', 'C01', 2, NULL, NULL),
(27, 'A06', 'C02', 6, NULL, NULL),
(28, 'A06', 'C03', 11, NULL, NULL),
(29, 'A06', 'C04', 18, NULL, NULL),
(30, 'A06', 'C05', 22, NULL, NULL),
(31, 'A07', 'C01', 2, NULL, NULL),
(32, 'A07', 'C02', 7, NULL, NULL),
(33, 'A07', 'C03', 12, NULL, NULL),
(34, 'A07', 'C04', 17, NULL, NULL),
(35, 'A07', 'C05', 22, NULL, NULL),
(36, 'A08', 'C01', 1, NULL, NULL),
(37, 'A08', 'C02', 6, NULL, NULL),
(38, 'A08', 'C03', 13, NULL, NULL),
(39, 'A08', 'C04', 16, NULL, NULL),
(40, 'A08', 'C05', 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_user` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`, `status_user`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '$2y$10$z5VcF4PqVAhf22F5.7Ygvu5Bzo.75vZnZx.z1dvyw5DuAEANZrg3C', 'admin', 1, NULL, NULL),
(2, 'User', 'user', '$2y$10$.xBDpSCjnDBcq6TIwtC18OWtxu6lLiRz.s.0MVE3JoZRsvgtq/vRe', 'user', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `tb_crisp`
--
ALTER TABLE `tb_crisp`
  ADD PRIMARY KEY (`id_crisp`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_crisp`
--
ALTER TABLE `tb_crisp`
  MODIFY `id_crisp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
