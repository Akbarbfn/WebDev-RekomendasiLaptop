-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 03:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saw_laravel_gaming`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `harga` char(25) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `link_pembelian` varchar(255) NOT NULL,
  `total` double DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `harga`, `foto`, `link_pembelian`, `total`, `rank`, `created_at`, `updated_at`) VALUES
('A01', 'Lenovo Legion 5 15IAH7H', 'Processor Intel Core  i7-12700H 14 Cores 20 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3060 6 GB, 15.6-inch FHD (1920 x 1080)', '22.499.000', 'G - LENOVO LEGION 5 15IAH7H.jpg', 'https://www.tokopedia.com/agusidstoreapple/lenovo-ideapad-gaming-3-core-i5-11300h-8gb-256gb-rtx-3050-15-6-fhd-black-512gb-non-bundling?extParam=ivf%3Dfalse%26src%3Dsearch', 0.90430555555556, 6, '2023-02-05 09:42:31', '2023-05-28 08:32:46'),
('A02', 'Lenovo Ideapad Gaming 3', 'Processor Amd Ryzen 7-5800H 8 Cores 16 Threads, Ram 8 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4 GB, 15.6-inch FHD (1920 x 1080)', '13.639.000', 'G- Lenovo Ideapad Gaming 3.jpg', 'https://www.tokopedia.com/lenovosurabaya/lenovo-ideapad-gaming-3-uyid-ryzen-7-5800h-8gb-512gb-rtx-3050-4gb-w11-8-gb?extParam=ivf%3Dfalse&src=topads', 0.86638888888889, 13, '2023-05-28 08:01:13', '2023-05-28 08:32:46'),
('A03', 'Lenovo Ideapad Gaming 3i', 'Processor Amd Ryzen 5-5600H 6 Cores 12 Threads, Ram 8 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4 GB, 15.6-inch FHD (1920 x 1080)', '14.999.000', 'G- Lenovo Ideapad Gaming 3i.jpeg', 'https://www.tokopedia.com/dottacomputer/lenovo-ideapad-gaming-3i-qeid-ryzen-5-5600h-win11-8gb-512gb-rtx-3050-8-gb?extParam=ivf%3Dfalse%26src%3Dsearch&refined=true', 0.8375, 15, '2023-05-28 08:02:00', '2023-05-28 08:32:46'),
('A04', 'Lenovo Legion 5 Pro 16', 'Processor Amd Ryzen 7-5800H 8 Cores 16 Threads, Ram 32 GB, SSD 2TB, NVIDIA GeForce RTX 3070 8 GB, 15.6-inch FHD (1920 x 1080)', '23.499.000', 'G - Lenovo LEGION 5 PRO.jpg', 'https://www.tokopedia.com/haercom/lenovo-legion-5-pro-16-rtx3070-ryzen-7-5800-32gb-2tb-ssd-w10-16-qhd-unit-only-16gb-512gb-ssd', 0.91333333333333, 5, '2023-05-28 08:02:58', '2023-05-28 08:32:46'),
('A05', 'Acer Nitro 5 AN515-58', 'Processor Intel Core  i9-12900H 14 Cores 20 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3060 6 GB, 15.6-inch FHD (1920 x 1080)', '20.499.000', 'G - Acer Nitro An515.jpg', 'https://www.tokopedia.com/collinsofficial/acer-nitro-5-an515-58-i9-12900h-16gb-512gb-rtx3060-15-6-165hz-w11-ohs?src=topads', 0.93319444444444, 3, '2023-05-28 08:05:31', '2023-05-28 08:20:25'),
('A06', 'Acer Nitro 5 AN515-15', 'Processor Intel Core  i5-12500H 12 Cores 12 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4 GB, 15.6-inch FHD (1920 x 1080)', '13.729.000', 'G - Acer Nitro 5 AN515 2.jpg', 'https://www.tokopedia.com/agresid/acer-nitro-5-an515-i5-12500h-8gb-16gb-512ssd-rtx3050-144hz-w11-ohs-non-bundle?extParam=ivf%3Dfalse&src=topads', 0.82986111111111, 16, '2023-05-28 08:07:19', '2023-05-28 08:32:46'),
('A07', 'Acer Nitro 5 AN515 Ryzen 7', 'Processor Amd Ryzen 7-6800H 8 Cores 12 Threads, Ram 8 GB, SSD 512GB, NVIDIA GeForce RTX 3060 6 GB, 15.6-inch FHD (1920 x 1080)', '18.899.000', 'G - Acer Nitro An515.jpg', 'https://www.tokopedia.com/agresid/acer-nitro-5-an515-ryzen-7-6800h-16gb-512ssd-rtx3060-w11-ohs-15-6fhd-rtx3060-non-bundle?extParam=ivf%3Dfalse&src=topads', 0.88305555555556, 10, '2023-05-28 08:08:52', '2023-05-28 08:32:46'),
('A08', 'Acer Predator Helios PH16-71', 'Processor Intel Core i9-13900HX 24 Cores 32 Threads, Ram 16 GB, SSD 1TB, NVIDIA GeForce RTX 4070 8 GB, 16-inch WQXGA (2560 x 1600)', '35.998.000', 'G - Acer Predator.jpg', 'https://www.tokopedia.com/tokojbc/acer-predator-helios-ph16-71-99zw-rtx4070-8gb-i9-13900hx-16gb-1tbssd?src=topads', 0.96430555555556, 1, '2023-05-28 08:10:14', '2023-05-28 08:13:55'),
('A09', 'Asus Tuf Dash FX515PE', 'Processor Intel Core i7-11370H Processor 4 Cores 8 Threads, Ram 16 GB, SSD 1TB, NVIDIA GeForce RTX 3050 TI 4 GB, 15.6-inch FHD (1920 X 1080)', '15.399.000', 'G - Asus Tuf Dash.png', 'https://www.tokopedia.com/kliktech/asus-tuf-dash-fx516pe-i7-11370h-40gb-2tb-ssd-rtx3050ti-fhd-144hz-win11-1thn-16-1tb-4gb-promo-unit?extParam=ivf%3Dfalse&src=topads', 0.90208333333333, 8, '2023-05-28 08:15:02', '2023-05-28 08:32:46'),
('A10', 'Asus ROG Zephyrus G14', 'Processor Amd Ryzen 9 6900HS Mobile Processor 8 Cores 16 Threads, Ram 16 GB, SSD 1TB, Amd RX6700S 8GB, 14-inch QHD+ (2560 x 1600)', '21.899.000', 'G - Asus Zephyrus.jpg', 'https://www.tokopedia.com/toptech/asus-rog-zephyrus-g14-2022-ryzen-9-6900hs-16gb-1tb-rx6700s-8gb-qhd-16gb-non-bundling?extParam=ivf%3Dfalse%26src%3Dsearch', 0.95001984126984, 2, '2023-05-28 08:16:04', '2023-05-28 08:20:25'),
('A11', 'Asus ROG Zephyrus G14-GA401QC', 'Processor Amd Ryzen 7 5800HS 8 Cores 16 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4GB, 14-inch QHD (1920 x 1080)', '19.519.000', 'G - Asus Zephyrus 2.png', 'https://www.tokopedia.com/protechcom/asus-rog-zephyrus-g14-ga401qc-ryzen-7-5800hs-8gb-512gb-rtx3050-4gb?extParam=ivf%3Dfalse%26src%3Dsearch', 0.87335317460317, 12, '2023-05-28 08:17:06', '2023-05-28 08:32:46'),
('A12', 'Asus ROG Strix G15-G513QC', 'Processor Amd Ryzen 5 5600H Processor 8 Cores 8 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4GB, 15.6-inch FHD (1920×1080)', '13.399.000', 'G - Asus ROG G Strix 15.png', '4.	https://www.tokopedia.com/rogsstoreid/asus-rog-strix-g15-g513qc-rtx3050-4gb-ryzen-5-5600-32gb-1tb-ssd-144hz-standar-16gb-50aca?extParam=ivf%3Dfalse&src=topads', 0.85875, 14, '2023-05-28 08:18:07', '2023-05-28 08:32:46'),
('A13', 'MSI Cyborg 15 - A12VF', 'Processor Intel Core i7-12650H 10 Cores 16 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 4060 8 GB, 15.6-inch FHD (1920 X 1080)', '18.899.000', 'G - MSI Cyborg 15.jpg', 'https://www.tokopedia.com/msi-official/msi-cyborg-15-a12vf-i7-12650h-16gb-512gb-rtx4060-15-6-fhd-144hz-w11?extParam=ivf%3Dtrue%26src%3Dsearch', 0.92097222222222, 4, '2023-05-28 08:23:45', '2023-05-28 08:32:46'),
('A14', 'MSI Gaming GF63 Thin 12VE', 'Processor Intel Core i5-12450H 8 Cores 12 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 4050 6 GB, 15.6-inch FHD (1920 X 1080)', '14.389.999', 'G - MSI GF63 Thin.jpg', 'https://www.tokopedia.com/msi-official/msi-gf63-thin-12ve-i5-12450h-16gb-512gb-rtx4050-6gb-15-6-w11-144hz?extParam=cmp%3D1%26ivf%3Dfalse%26src%3Dsearch', 0.87541666666667, 11, '2023-05-28 08:24:22', '2023-05-28 08:32:46'),
('A15', 'MSI Bravo 15 C7VE', 'Processor Amd Ryzen 5 7535HS 6 Cores 12 Threads, Ram 32 GB, SSD 512GB, NVIDIA GeForce RTX 4050 6GB, 15.6-inch FHD (1920 x 1080)', '17.599.000', 'G - MSI Bravo 15.jpg', 'https://www.tokopedia.com/gameridos/msi-bravo-15-c7ve-rtx4050-ryzen-5-7535hs-16-32gb-512-ssd-w11-15-144hz-normal-ram-16gb-2b61e', 0.89666666666667, 9, '2023-05-28 08:27:37', '2023-05-28 08:32:46'),
('A16', 'MSI Bravo 15-C7VE Ryzen 7', 'Processor Amd Ryzen 7-7735HS 8 Cores 16 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 4050 6 GB, 15.6\" FHD (1920 x 1080)', '17.745.000', 'E - MSI Bravo 15.png', 'https://www.tokopedia.com/level99id/laptop-gaming-msi-bravo-15-c7ve-027id-ryzen-7-7735hs-rtx4050-15-6-fhd?extParam=ivf%3Dfalse%26src%3Dsearch', 0.90430555555556, 7, '2023-05-28 08:29:02', '2023-05-28 08:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `tb_crisp`
--

CREATE TABLE `tb_crisp` (
  `id_crisp` bigint(20) UNSIGNED NOT NULL,
  `kode_kriteria` varchar(16) DEFAULT NULL,
  `nama_crisp` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_crisp`
--

INSERT INTO `tb_crisp` (`id_crisp`, `kode_kriteria`, `nama_crisp`, `nilai`, `created_at`, `updated_at`) VALUES
(2, 'C02', 'Rp 11.100.000 - Rp 13.000.000', 60, '2023-03-14 10:40:44', '2023-05-28 07:55:03'),
(3, 'C02', 'Rp 9.1000.000 - Rp 11.000.000', 70, '2023-03-14 10:40:50', '2023-05-28 07:55:10'),
(4, 'C01', 'Processor Intel Core i7 / Amd Ryzen 7', 80, '2023-03-14 10:40:58', '2023-05-28 07:52:19'),
(5, 'C01', 'Processor Intel Core i9 / Amd Ryzen 9', 90, '2023-03-14 10:41:04', '2023-05-28 07:52:10'),
(6, 'C02', '> Rp. 13.100.000', 50, '2023-03-14 10:41:15', '2023-05-29 00:05:56'),
(7, 'C01', 'Processor Intel Core i3 / Amd Ryzen 3', 60, '2023-03-14 10:41:53', '2023-05-28 07:52:33'),
(8, 'C01', 'Processor Intel Core i5 / Amd Ryzen 5', 70, '2023-03-14 10:42:07', '2023-05-28 07:52:26'),
(9, 'C02', 'Rp 7.100.000 - Rp 9.000.000', 80, '2023-03-14 10:42:22', '2023-05-28 07:55:18'),
(10, 'C02', 'Rp 5.000.000 - Rp 7.000.000', 90, '2023-03-14 10:42:32', '2023-05-28 07:55:24'),
(11, 'C03', '4 GB', 50, '2023-03-14 10:42:49', '2023-05-28 07:55:42'),
(12, 'C03', '8 GB', 60, '2023-03-14 10:42:58', '2023-05-28 07:55:48'),
(13, 'C03', '16 GB', 70, '2023-03-14 10:43:05', '2023-05-28 07:55:57'),
(14, 'C03', '32 GB', 80, '2023-03-14 10:43:12', '2023-05-28 07:56:04'),
(15, 'C03', '64 GB', 90, '2023-03-14 10:43:57', '2023-05-28 07:56:12'),
(16, 'C04', '1 GB VRAM', 50, '2023-03-14 10:44:08', '2023-05-28 07:56:24'),
(17, 'C04', '2 GB VRAM', 60, '2023-03-14 10:44:20', '2023-05-28 07:56:30'),
(18, 'C04', '4 GB VRAM', 70, '2023-03-14 10:44:25', '2023-05-28 07:57:11'),
(19, 'C04', '6 GB VRAM', 80, '2023-03-14 10:44:31', '2023-05-28 07:56:58'),
(20, 'C04', '8 GB VRAM', 90, '2023-03-14 10:44:39', '2023-05-28 07:57:05'),
(21, 'C05', '128 GB', 50, '2023-03-14 10:44:52', '2023-05-28 07:57:22'),
(22, 'C05', '256 GB', 60, '2023-03-14 10:45:00', '2023-05-28 07:57:30'),
(23, 'C05', '512 GB', 70, '2023-03-14 10:45:06', '2023-05-28 07:57:36'),
(24, 'C05', '1 TB', 80, '2023-03-14 10:45:12', '2023-05-28 07:57:42'),
(25, 'C05', '2 TB', 90, '2023-03-14 10:45:20', '2023-05-28 07:57:48'),
(26, 'C06', '13 inci', 50, '2023-04-01 02:40:06', '2023-05-28 07:58:08'),
(27, 'C06', '14 inci', 60, '2023-04-01 02:40:13', '2023-05-28 07:58:16'),
(28, 'C06', '15\'6 inci', 70, '2023-04-01 02:40:19', '2023-05-28 07:58:27'),
(29, 'C06', '17 inci', 80, '2023-04-01 02:40:31', '2023-05-28 07:58:35'),
(30, 'C06', '18 inci', 90, '2023-04-01 02:40:46', '2023-05-28 07:58:43'),
(31, 'C07', 'Gaming', 1, '2023-05-05 20:50:18', '2023-05-05 20:52:26'),
(32, 'C07', 'Editing', 1, '2023-05-05 20:50:26', '2023-05-05 20:52:34'),
(33, 'C07', 'Keseharian', 1, '2023-05-05 20:50:55', '2023-05-05 20:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(255) DEFAULT NULL,
  `atribut` varchar(16) DEFAULT NULL,
  `bobot` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `atribut`, `bobot`, `created_at`, `updated_at`) VALUES
('C01', 'Processor', 'benefit', 0.26, '2022-05-10 21:20:42', '2023-05-20 05:36:48'),
('C02', 'Harga', 'cost', 0.19, '2022-05-10 21:20:42', '2023-05-20 05:36:56'),
('C03', 'RAM', 'benefit', 0.17, '2022-05-10 21:20:42', '2023-05-20 05:37:05'),
('C04', 'VGA', 'benefit', 0.15, '2022-05-10 21:20:42', '2023-03-03 02:17:14'),
('C05', 'Penyimpanan', 'benefit', 0.13, '2022-05-10 21:20:42', '2023-05-20 05:37:15'),
('C06', 'Layar', 'benefit', 0.1, '2023-04-01 02:39:54', '2023-05-20 05:37:21'),
('C07', 'Kategori', 'benefit', 0, '2023-05-05 20:49:22', '2023-05-05 20:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `kode_alternatif` varchar(16) DEFAULT NULL,
  `kode_kriteria` varchar(16) DEFAULT NULL,
  `id_crisp` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `id_crisp`, `created_at`, `updated_at`) VALUES
(1, 'A01', 'C01', 4, NULL, '2023-05-20 05:32:16'),
(2, 'A01', 'C02', 6, NULL, '2023-05-28 08:00:05'),
(3, 'A01', 'C03', 13, NULL, '2023-03-14 10:46:11'),
(4, 'A01', 'C04', 19, NULL, '2023-05-28 08:00:05'),
(5, 'A01', 'C05', 23, NULL, '2023-05-28 08:00:05'),
(43, 'A01', 'C06', 28, NULL, '2023-05-28 08:00:05'),
(55, 'A01', 'C07', 31, NULL, '2023-05-20 05:32:16'),
(103, 'A02', 'C01', 4, NULL, '2023-05-28 08:03:37'),
(104, 'A02', 'C02', 6, NULL, '2023-05-28 08:03:37'),
(105, 'A02', 'C03', 12, NULL, '2023-05-28 08:03:37'),
(106, 'A02', 'C04', 18, NULL, '2023-05-28 08:03:37'),
(107, 'A02', 'C05', 23, NULL, '2023-05-28 08:03:37'),
(108, 'A02', 'C06', 28, NULL, '2023-05-28 08:03:37'),
(109, 'A02', 'C07', 31, NULL, '2023-05-28 08:03:37'),
(110, 'A03', 'C01', 8, NULL, '2023-05-28 08:04:04'),
(111, 'A03', 'C02', 6, NULL, '2023-05-28 08:04:04'),
(112, 'A03', 'C03', 12, NULL, '2023-05-28 08:04:04'),
(113, 'A03', 'C04', 18, NULL, '2023-05-28 08:04:04'),
(114, 'A03', 'C05', 23, NULL, '2023-05-28 08:04:04'),
(115, 'A03', 'C06', 28, NULL, '2023-05-28 08:04:04'),
(116, 'A03', 'C07', 31, NULL, '2023-05-28 08:04:04'),
(117, 'A04', 'C01', 7, NULL, '2023-05-28 08:04:30'),
(118, 'A04', 'C02', 6, NULL, '2023-05-28 08:04:30'),
(119, 'A04', 'C03', 14, NULL, '2023-05-28 08:04:30'),
(120, 'A04', 'C04', 20, NULL, '2023-05-28 08:04:30'),
(121, 'A04', 'C05', 25, NULL, '2023-05-28 08:04:30'),
(122, 'A04', 'C06', 28, NULL, '2023-05-28 08:04:30'),
(123, 'A04', 'C07', 31, NULL, '2023-05-28 08:04:30'),
(124, 'A05', 'C01', 5, NULL, '2023-05-28 08:10:41'),
(125, 'A05', 'C02', 6, NULL, '2023-05-28 08:10:41'),
(126, 'A05', 'C03', 13, NULL, '2023-05-28 08:10:41'),
(127, 'A05', 'C04', 19, NULL, '2023-05-28 08:10:41'),
(128, 'A05', 'C05', 23, NULL, '2023-05-28 08:10:41'),
(129, 'A05', 'C06', 28, NULL, '2023-05-28 08:10:41'),
(130, 'A05', 'C07', 31, NULL, '2023-05-28 08:10:41'),
(131, 'A06', 'C01', 7, NULL, '2023-05-28 08:11:02'),
(132, 'A06', 'C02', 6, NULL, '2023-05-28 08:11:02'),
(133, 'A06', 'C03', 13, NULL, '2023-05-28 08:11:02'),
(134, 'A06', 'C04', 18, NULL, '2023-05-28 08:11:02'),
(135, 'A06', 'C05', 23, NULL, '2023-05-28 08:11:02'),
(136, 'A06', 'C06', 28, NULL, '2023-05-28 08:11:02'),
(137, 'A06', 'C07', 31, NULL, '2023-05-28 08:11:02'),
(138, 'A07', 'C01', 4, NULL, '2023-05-28 08:12:27'),
(139, 'A07', 'C02', 6, NULL, '2023-05-28 08:12:27'),
(140, 'A07', 'C03', 12, NULL, '2023-05-28 08:12:27'),
(141, 'A07', 'C04', 19, NULL, '2023-05-28 08:12:27'),
(142, 'A07', 'C05', 23, NULL, '2023-05-28 08:12:27'),
(143, 'A07', 'C06', 28, NULL, '2023-05-28 08:12:27'),
(144, 'A07', 'C07', 31, NULL, '2023-05-28 08:12:27'),
(145, 'A08', 'C01', 5, NULL, '2023-05-28 08:13:54'),
(146, 'A08', 'C02', 6, NULL, '2023-05-28 08:12:57'),
(147, 'A08', 'C03', 13, NULL, '2023-05-28 08:12:57'),
(148, 'A08', 'C04', 20, NULL, '2023-05-28 08:12:57'),
(149, 'A08', 'C05', 24, NULL, '2023-05-28 08:12:57'),
(150, 'A08', 'C06', 28, NULL, '2023-05-28 08:12:57'),
(151, 'A08', 'C07', 31, NULL, '2023-05-28 08:12:57'),
(152, 'A09', 'C01', 4, NULL, '2023-05-28 08:19:02'),
(153, 'A09', 'C02', 6, NULL, '2023-05-28 08:19:02'),
(154, 'A09', 'C03', 13, NULL, '2023-05-28 08:19:02'),
(155, 'A09', 'C04', 18, NULL, '2023-05-28 08:19:02'),
(156, 'A09', 'C05', 24, NULL, '2023-05-28 08:19:02'),
(157, 'A09', 'C06', 28, NULL, '2023-05-28 08:19:29'),
(158, 'A09', 'C07', 31, NULL, '2023-05-28 08:19:02'),
(159, 'A10', 'C01', 5, NULL, '2023-05-28 08:19:23'),
(160, 'A10', 'C02', 6, NULL, '2023-05-28 08:19:23'),
(161, 'A10', 'C03', 13, NULL, '2023-05-28 08:19:23'),
(162, 'A10', 'C04', 20, NULL, '2023-05-28 08:19:23'),
(163, 'A10', 'C05', 24, NULL, '2023-05-28 08:19:23'),
(164, 'A10', 'C06', 27, NULL, '2023-05-28 08:19:23'),
(165, 'A10', 'C07', 31, NULL, '2023-05-28 08:19:23'),
(166, 'A11', 'C01', 4, NULL, '2023-05-28 08:19:47'),
(167, 'A11', 'C02', 6, NULL, '2023-05-28 08:19:47'),
(168, 'A11', 'C03', 13, NULL, '2023-05-28 08:19:47'),
(169, 'A11', 'C04', 18, NULL, '2023-05-28 08:19:47'),
(170, 'A11', 'C05', 23, NULL, '2023-05-28 08:19:47'),
(171, 'A11', 'C06', 27, NULL, '2023-05-28 08:19:47'),
(172, 'A11', 'C07', 31, NULL, '2023-05-28 08:19:47'),
(173, 'A12', 'C01', 8, NULL, '2023-05-28 08:20:08'),
(174, 'A12', 'C02', 6, NULL, '2023-05-28 08:20:08'),
(175, 'A12', 'C03', 13, NULL, '2023-05-28 08:20:08'),
(176, 'A12', 'C04', 18, NULL, '2023-05-28 08:20:08'),
(177, 'A12', 'C05', 23, NULL, '2023-05-28 08:20:08'),
(178, 'A12', 'C06', 28, NULL, '2023-05-28 08:20:08'),
(179, 'A12', 'C07', 31, NULL, '2023-05-28 08:20:08'),
(180, 'A13', 'C01', 4, NULL, '2023-05-28 08:29:29'),
(181, 'A13', 'C02', 6, NULL, '2023-05-28 08:29:29'),
(182, 'A13', 'C03', 13, NULL, '2023-05-28 08:29:29'),
(183, 'A13', 'C04', 20, NULL, '2023-05-28 08:29:29'),
(184, 'A13', 'C05', 23, NULL, '2023-05-28 08:29:29'),
(185, 'A13', 'C06', 28, NULL, '2023-05-28 08:29:29'),
(186, 'A13', 'C07', 31, NULL, '2023-05-28 08:29:29'),
(187, 'A14', 'C01', 8, NULL, '2023-05-28 08:30:50'),
(188, 'A14', 'C02', 6, NULL, '2023-05-28 08:30:50'),
(189, 'A14', 'C03', 13, NULL, '2023-05-28 08:30:50'),
(190, 'A14', 'C04', 19, NULL, '2023-05-28 08:32:12'),
(191, 'A14', 'C05', 23, NULL, '2023-05-28 08:32:12'),
(192, 'A14', 'C06', 28, NULL, '2023-05-28 08:32:12'),
(193, 'A14', 'C07', 31, NULL, '2023-05-28 08:30:50'),
(194, 'A15', 'C01', 8, NULL, '2023-05-28 08:31:57'),
(195, 'A15', 'C02', 6, NULL, '2023-05-28 08:31:57'),
(196, 'A15', 'C03', 14, NULL, '2023-05-28 08:31:57'),
(197, 'A15', 'C04', 19, NULL, '2023-05-28 08:31:57'),
(198, 'A15', 'C05', 23, NULL, '2023-05-28 08:31:57'),
(199, 'A15', 'C06', 28, NULL, '2023-05-28 08:31:57'),
(200, 'A15', 'C07', 31, NULL, '2023-05-28 08:31:57'),
(201, 'A16', 'C01', 4, NULL, '2023-05-28 08:32:42'),
(202, 'A16', 'C02', 6, NULL, '2023-05-28 08:32:42'),
(203, 'A16', 'C03', 13, NULL, '2023-05-28 08:32:42'),
(204, 'A16', 'C04', 19, NULL, '2023-05-28 08:32:42'),
(205, 'A16', 'C05', 23, NULL, '2023-05-28 08:32:42'),
(206, 'A16', 'C06', 28, NULL, '2023-05-28 08:32:42'),
(207, 'A16', 'C07', 31, NULL, '2023-05-28 08:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  `status_user` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`, `status_user`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '$2y$10$/yUoYaW2wKyxfX3/1THiGuSyZoZaMdlZ5KjjxDzM6b0LLU7VQE3IW', 'admin', 1, NULL, NULL);

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
  MODIFY `id_crisp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
