-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 05:01 PM
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
  `foto` blob NOT NULL,
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
('A01', 'Lenovo Legion 5 15IAH7H', 'Processor Intel Core  i7-12700H 14 Cores 20 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3060 6 GB, 15.6-inch FHD (1920 x 1080)', '22.499.000', 0x47202d204c454e4f564f204c4547494f4e203520313549414837482e6a7067, 'https://www.tokopedia.com/agusidstoreapple/lenovo-ideapad-gaming-3-core-i5-11300h-8gb-256gb-rtx-3050-15-6-fhd-black-512gb-non-bundling?extParam=ivf%3Dfalse%26src%3Dsearch', 0.90430555555556, 9, '2023-02-05 09:42:31', '2023-05-29 07:05:40'),
('A02', 'Lenovo Ideapad Gaming 3', 'Processor Amd Ryzen 7-5800H 8 Cores 16 Threads, Ram 8 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4 GB, 15.6-inch FHD (1920 x 1080)', '13.639.000', 0x472d204c656e6f766f20496465617061642047616d696e6720332e6a7067, 'https://www.tokopedia.com/lenovosurabaya/lenovo-ideapad-gaming-3-uyid-ryzen-7-5800h-8gb-512gb-rtx-3050-4gb-w11-8-gb?extParam=ivf%3Dfalse&src=topads', 0.86638888888889, 23, '2023-05-28 08:01:13', '2023-05-29 07:12:24'),
('A03', 'Lenovo Ideapad Gaming 3i', 'Processor Amd Ryzen 5-5600H 6 Cores 12 Threads, Ram 8 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4 GB, 15.6-inch FHD (1920 x 1080)', '14.999.000', 0x472d204c656e6f766f20496465617061642047616d696e672033692e6a706567, 'https://www.tokopedia.com/dottacomputer/lenovo-ideapad-gaming-3i-qeid-ryzen-5-5600h-win11-8gb-512gb-rtx-3050-8-gb?extParam=ivf%3Dfalse%26src%3Dsearch&refined=true', 0.8375, 25, '2023-05-28 08:02:00', '2023-05-29 07:12:24'),
('A04', 'Lenovo Legion 5 Pro 16', 'Processor Amd Ryzen 7-5800H 8 Cores 16 Threads, Ram 32 GB, SSD 2TB, NVIDIA GeForce RTX 3070 8 GB, 15.6-inch FHD (1920 x 1080)', '23.499.000', 0x47202d204c656e6f766f204c4547494f4e20352050524f2e6a7067, 'https://www.tokopedia.com/haercom/lenovo-legion-5-pro-16-rtx3070-ryzen-7-5800-32gb-2tb-ssd-w10-16-qhd-unit-only-16gb-512gb-ssd', 0.91333333333333, 8, '2023-05-28 08:02:58', '2023-05-29 07:05:40'),
('A05', 'Acer Nitro 5 AN515-58', 'Processor Intel Core  i9-12900H 14 Cores 20 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3060 6 GB, 15.6-inch FHD (1920 x 1080)', '20.499.000', 0x47202d2041636572204e6974726f20416e3531352e6a7067, 'https://www.tokopedia.com/collinsofficial/acer-nitro-5-an515-58-i9-12900h-16gb-512gb-rtx3060-15-6-165hz-w11-ohs?src=topads', 0.93319444444444, 6, '2023-05-28 08:05:31', '2023-05-29 07:05:40'),
('A06', 'Acer Nitro 5 AN515-15', 'Processor Intel Core  i5-12500H 12 Cores 12 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4 GB, 15.6-inch FHD (1920 x 1080)', '13.729.000', 0x47202d2041636572204e6974726f203520414e35313520322e6a7067, 'https://www.tokopedia.com/agresid/acer-nitro-5-an515-i5-12500h-8gb-16gb-512ssd-rtx3050-144hz-w11-ohs-non-bundle?extParam=ivf%3Dfalse&src=topads', 0.82986111111111, 27, '2023-05-28 08:07:19', '2023-05-29 07:12:24'),
('A07', 'Acer Nitro 5 AN515 Ryzen 7', 'Processor Amd Ryzen 7-6800H 8 Cores 12 Threads, Ram 8 GB, SSD 512GB, NVIDIA GeForce RTX 3060 6 GB, 15.6-inch FHD (1920 x 1080)', '18.899.000', 0x47202d2041636572204e6974726f20416e3531352e6a7067, 'https://www.tokopedia.com/agresid/acer-nitro-5-an515-ryzen-7-6800h-16gb-512ssd-rtx3060-w11-ohs-15-6fhd-rtx3060-non-bundle?extParam=ivf%3Dfalse&src=topads', 0.88305555555556, 18, '2023-05-28 08:08:52', '2023-05-29 07:12:24'),
('A08', 'Acer Predator Helios PH16-71', 'Processor Intel Core i9-13900HX 24 Cores 32 Threads, Ram 16 GB, SSD 1TB, NVIDIA GeForce RTX 4070 8 GB, 15\'6-inch WQXGA (2560 x 1600)', '35.998.000', 0x47202d2041636572205072656461746f722e6a7067, 'https://www.tokopedia.com/tokojbc/acer-predator-helios-ph16-71-99zw-rtx4070-8gb-i9-13900hx-16gb-1tbssd?src=topads', 0.96430555555556, 2, '2023-05-28 08:10:14', '2023-05-29 06:58:33'),
('A09', 'Asus Tuf Dash FX515PE', 'Processor Intel Core i7-11370H Processor 4 Cores 8 Threads, Ram 16 GB, SSD 1TB, NVIDIA GeForce RTX 3050 TI 4 GB, 15.6-inch FHD (1920 X 1080)', '15.399.000', 0x47202d20417375732054756620446173682e706e67, 'https://www.tokopedia.com/kliktech/asus-tuf-dash-fx516pe-i7-11370h-40gb-2tb-ssd-rtx3050ti-fhd-144hz-win11-1thn-16-1tb-4gb-promo-unit?extParam=ivf%3Dfalse&src=topads', 0.90208333333333, 11, '2023-05-28 08:15:02', '2023-05-29 07:05:40'),
('A10', 'Asus ROG Zephyrus G14', 'Processor Amd Ryzen 9 6900HS Mobile Processor 8 Cores 16 Threads, Ram 16 GB, SSD 1TB, Amd RX6700S 8GB, 14-inch QHD+ (2560 x 1600)', '21.899.000', 0x47202d2041737573205a657068797275732e6a7067, 'https://www.tokopedia.com/toptech/asus-rog-zephyrus-g14-2022-ryzen-9-6900hs-16gb-1tb-rx6700s-8gb-qhd-16gb-non-bundling?extParam=ivf%3Dfalse%26src%3Dsearch', 0.95001984126984, 3, '2023-05-28 08:16:04', '2023-05-29 06:58:33'),
('A11', 'Asus ROG Zephyrus G14-GA401QC', 'Processor Amd Ryzen 7 5800HS 8 Cores 16 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4GB, 14-inch QHD (1920 x 1080)', '19.519.000', 0x47202d2041737573205a6570687972757320322e706e67, 'https://www.tokopedia.com/protechcom/asus-rog-zephyrus-g14-ga401qc-ryzen-7-5800hs-8gb-512gb-rtx3050-4gb?extParam=ivf%3Dfalse%26src%3Dsearch', 0.87335317460317, 21, '2023-05-28 08:17:06', '2023-05-29 07:12:24'),
('A12', 'Asus ROG Strix G15-G513QC', 'Processor Amd Ryzen 5 5600H Processor 8 Cores 8 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4GB, 15.6-inch FHD (1920×1080)', '13.399.000', 0x47202d204173757320524f4720472053747269782031352e706e67, '4.	https://www.tokopedia.com/rogsstoreid/asus-rog-strix-g15-g513qc-rtx3050-4gb-ryzen-5-5600-32gb-1tb-ssd-144hz-standar-16gb-50aca?extParam=ivf%3Dfalse&src=topads', 0.85875, 24, '2023-05-28 08:18:07', '2023-05-29 07:12:24'),
('A13', 'MSI Cyborg 15 - A12VF', 'Processor Intel Core i7-12650H 10 Cores 16 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 4060 8 GB, 15.6-inch FHD (1920 X 1080)', '18.899.000', 0x47202d204d5349204379626f72672031352e6a7067, 'https://www.tokopedia.com/msi-official/msi-cyborg-15-a12vf-i7-12650h-16gb-512gb-rtx4060-15-6-fhd-144hz-w11?extParam=ivf%3Dtrue%26src%3Dsearch', 0.92097222222222, 7, '2023-05-28 08:23:45', '2023-05-29 07:05:40'),
('A14', 'MSI Gaming GF63 Thin 12VE', 'Processor Intel Core i5-12450H 8 Cores 12 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 4050 6 GB, 15.6-inch FHD (1920 X 1080)', '14.389.999', 0x47202d204d53492047463633205468696e2e6a7067, 'https://www.tokopedia.com/msi-official/msi-gf63-thin-12ve-i5-12450h-16gb-512gb-rtx4050-6gb-15-6-w11-144hz?extParam=cmp%3D1%26ivf%3Dfalse%26src%3Dsearch', 0.87541666666667, 19, '2023-05-28 08:24:22', '2023-05-29 07:12:24'),
('A15', 'MSI Bravo 15 C7VE', 'Processor Amd Ryzen 5 7535HS 6 Cores 12 Threads, Ram 32 GB, SSD 512GB, NVIDIA GeForce RTX 4050 6GB, 15.6-inch FHD (1920 x 1080)', '17.599.000', 0x47202d204d534920427261766f2031352e6a7067, 'https://www.tokopedia.com/gameridos/msi-bravo-15-c7ve-rtx4050-ryzen-5-7535hs-16-32gb-512-ssd-w11-15-144hz-normal-ram-16gb-2b61e', 0.89666666666667, 14, '2023-05-28 08:27:37', '2023-05-29 07:12:24'),
('A16', 'MSI Bravo 15-C7VE Ryzen 7', 'Processor Amd Ryzen 7-7735HS 8 Cores 16 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 4050 6 GB, 15.6\" FHD (1920 x 1080)', '17.745.000', 0x45202d204d534920427261766f2031352e706e67, 'https://www.tokopedia.com/level99id/laptop-gaming-msi-bravo-15-c7ve-027id-ryzen-7-7735hs-rtx4050-15-6-fhd?extParam=ivf%3Dfalse%26src%3Dsearch', 0.90430555555556, 10, '2023-05-28 08:29:02', '2023-05-29 07:05:40'),
('A17', 'Lenovo Ideapad Slim 5', 'Processor Amd Ryzen 5 5625U 6 Cores 12 Threads, Ram 16 GB, SSD 512GB, Integrated AMD Radeon Graphics 2 GB, 14\" FHD (1920 x 1080) IPS', '9.099.000', 0x45202d204c656e6f766f204944454150414420534c494d20352e6a7067, 'https://www.tokopedia.com/lenovoauthorizedjakbar/laptop-lenovo-ideapad-slim-5-ryzen-5-5625u-512gb-ssd-16gb-win11-ohs-abyss-blue?extParam=ivf%3Dfalse&src=topads', 0.7735119047619, 32, '2023-05-29 06:46:54', '2023-05-29 08:13:50'),
('A18', 'Lenovo Ideapad 5i Pro', 'Processor Intel Core i7-1260P 12 Cores 16 Threads, Ram 16 GB, SSD 1TB, NVIDIA GeForce RTX 2050 4 GB, 14-inch 2K (2240 x 1400', '16.399.000', 0x45202d204c656e6f766f204944454150414420352050524f2e6a7067, 'https://www.tokopedia.com/gateway/lenovo-ideapad-5i-pro-i7-1260p-1tb-ssd-16gb-rtx2050-100-srgb-win11-ohs-storm-grey-no-bundling?extParam=ivf%3Dfalse%26src%3Dsearch', 0.88779761904762, 15, '2023-05-29 06:47:47', '2023-05-29 07:12:24'),
('A19', 'Lenovo Yoga Slim 7 Pro', 'Processor Amd Ryzen 7 5800HS Creator Edition 8 Cores 16 Threads, Ram 16 GB, SSD 1TB, NVIDIA GeForce MX450 2GB, 14\" 2.8K (2880x1800) IPS', '13.735.000', 0x45202d204c656e6f766f2d596f67612d536c696d2d372d50726f2d325549442e6a7067, 'https://shopee.co.id/LENOVO-YOGA-SLIM-7-PRO-14-2.8K-RYZEN-7-5800HS-16GB-1TBSSD-MX450-2GB-W11-OHS-14.0-SLV-46ID-i.78730497.13189272497?sp_atk=f6a2a8e7-6cdc-442a-a3e4-e0cf6f646f60&xptdk=f6a2a8e7-6cdc-442a-a3e4-e0cf6f646f60', 0.87113095238095, 22, '2023-05-29 06:48:41', '2023-05-29 07:12:24'),
('A20', 'Lenovo Thinkpad X1 Extreme', 'Processor Intel Core I7-11850 8 Cores 16 Threads, Ram 16 GB, SSD 1TB, NVIDIA GeForce RTX 3070 8GB, 15\'6-inch WQUXGA (3840 x 2400) IPS', '24.499.000', 0x45202d204c656e6f766f205468696e6b7061642058312e6a7067, 'https://www.tokopedia.com/prostorecomputer/lenovo-thinkpad-x1-extreme-4k-uhd-rtx3070-8gb-i7-11850-16gb-1tbssd-laptop?extParam=ivf%3Dfalse%26src%3Dsearch', 0.93541666666667, 5, '2023-05-29 06:49:17', '2023-05-29 07:05:40'),
('A21', 'Asus VivoBook Pro 16X', 'Processor Intel Core i9-12900H 14 Cores 20 Threads, Ram 32 GB, SSD 1TB, NVIDIA GeForce RTX 3060 6GB, 15’6-inch, 4K (3840 x 2400) OLED', '32.342.000', 0x45202d202041737573205649564f424f4f4b2050524f203136582e706e67, 'https://www.tokopedia.com/collinsofficial/asus-vivobook-pro-16x-oled-n7601zm-i9-12900h-32g-1tb-rtx3060-6g-4k-w11?utm_source=google&utm_medium=organic&utm_campaign=pdp-seo', 0.96888888888889, 1, '2023-05-29 06:54:09', '2023-05-29 06:58:33'),
('A22', 'Asus VivoBook Pro 14X', 'Processor Amd Ryzen 7 5800H 8 Cores 16 Threads, Ram 16 GB, SSD 1TB, NVIDIA GeForce RTX 3050 Ti 4GB, 14-inch 2.8K (2880 x 1800) OLED', '16.999.000', 0x45202d202041737573205649564f424f4f4b2050524f203134582e706e67, 'https://www.tokopedia.com/asus/asus-vivobook-pro-14x-oled-m7400qe-oled714-cool-silver', 0.88779761904762, 16, '2023-05-29 06:54:45', '2023-05-29 07:12:24'),
('A23', 'Asus VivoBook Pro 14 OLED', 'Processor Amd Ryzen 5 5600H 6 Cores 12 Threads, Ram 8 GB, SSD 512GB, NVIDIA GeForce RTX 3050 4GB, 14-inch, 2.8K (2880 x 1800) OLED', '11.499.000', 0x45202d2041737573205669766f626f6f6b2050726f203134204f6c65642e706e67, 'https://www.tokopedia.com/mitrarob/laptop-editing-asus-vivobook-pro-14-oled-ryzen-5-nvidia-rtx3050-4gb-non-paket?extParam=ivf%3Dfalse%26src%3Dsearch', 0.79154761904762, 29, '2023-05-29 06:55:20', '2023-05-29 07:12:24'),
('A24', 'Asus Expertbook B1400CEAE', 'Processor Intel Core i5-1135G7 4 Cores 8 Threads, Ram 8 GB, SSD 256GB, Intel Graphics 1GB,14-inch LED Backlit FHD (1920 x 1080)', '14.499.000', 0x45202d204173757320457870657274426f6f6b2e6a7067, 'https://www.tokopedia.com/asusexpertbook/asus-expertbook-b1400ceae-ek5820x-star-black', 0.77543650793651, 31, '2023-05-29 06:56:05', '2023-05-29 08:13:50'),
('A25', 'Acer Swift 14-SF14', 'Processor Intel Core i7-13700H 14 Cores 20 Threads, Ram 16 GB, SSD 1TB Intel Iris® Xe Graphics 4 GB, 16-inch, 14.0-inch FHD (2560 x 1600) IPS', '19.979.000', 0x45202d20416365722053776966742031342e6a7067, '1.	https://www.tokopedia.com/intelstore-id/acer-swift-14-sf14-core-i7-13700h-16gb-1tbssd-irisxe-wqxga-100-srgb-non-bundle-windows-11-home', 0.90208333333333, 12, '2023-05-29 07:01:09', '2023-05-29 07:05:40'),
('A26', 'Acer Swift 3 SF314-43', 'Processor Amd Ryzen 5 5500U 6 Cores 12 Threads, Ram 16 GB, SSD 512GB, AMD Radeon Graphics 2 GB, 14-inch Full HD (1920 x 1080)', '9.910.000', 0x45202d204163657220537769667420332e6a7067, 'https://www.tokopedia.com/collinsofficial/acer-swift-3-sf314-43-amd-ryzen-5-5500u-16gb-512gb-14-fhd-ips-w10-ohs?extParam=ivf%3Dfalse&src=topads', 0.7735119047619, 33, '2023-05-29 07:01:52', '2023-05-29 08:13:50'),
('A27', 'Acer Conceptd 3 Ezel Pro', 'Processor Intel Core i7-10750H 14 Cores 20 Threads, Ram 16 GB, SSD 1TB, Nvidia Quadro T1000 4 GB, 14-inch FHD (1920 x 1080) IPS Touchscreen', '31.999.000', 0x45202d204163657220436f6e636570742045647a656c2e706e67, 'https://www.tokopedia.com/acerid/acer-conceptd-3-ezel-pro-i7-10750h-16gb-1tb-ssd-quadro-t1000-w10-pro?utm_source=google&utm_medium=organic&utm_campaign=pdp-seo', 0.88779761904762, 17, '2023-05-29 07:02:44', '2023-05-29 07:12:24'),
('A28', 'Acer Predator Helios 300 PH-315', 'Processor Intel Core i9-12900H 14 Cores 20 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 3070 Ti 8 GB, 15.6-inch QHD (2560 x 1440) IPS', '28.499.000', 0x45202d2041636572205072656461746f722048656c696f73203330302e6a7067, 'https://www.tokopedia.com/elitenotebook/acer-predator-helios-300-ph315-55-i9-12900h-rtx3070ti-16g-512g-qhd-w11?extParam=ivf%3Dfalse%26src%3Dsearch', 0.94986111111111, 4, '2023-05-29 07:03:20', '2023-05-29 07:05:40'),
('A29', 'MSI For Creator M16-9S7', 'Processor Intel Core i7-12700H 14 Cores 20 Threads, Ram 16 GB, SSD 1TB, NVIDIA GeForce RTX 3050 Ti 4 GB, 15\'6-inch QHD+ (2560 x 1600) IPS', '22.999.000', 0x45202d204d53492043524541544f522e706e67, 'https://www.tokopedia.com/msi-official/msi-creator-m16-9s7-158432-269id-i7-12700h-16g-1tb-rtx3050ti-4gb?extParam=ivf%3Dfalse%26src%3Dsearch', 0.90208333333333, 13, '2023-05-29 07:08:07', '2023-05-29 07:12:24'),
('A30', 'MSI Modern 14-B11SB-9S7', 'Processor Intel Core i7-1195G7 4 Cores 8 Threads, Ram 8 GB, SSD 512GB, NVIDIA GeForce MX450 2 GB, 14-inch FHD (1920 x 1080)', '11.499.000', 0x45202d204d5349204d4f4445524e2e706e67, 'https://www.tokopedia.com/msi-official/msi-modern-14-b11sb-9s7-14d224-693-i7-1195g7-8gb-512gb-mx450-2gb?extParam=ivf%3Dfalse&src=topads', 0.80376984126984, 28, '2023-05-29 07:08:43', '2023-05-29 07:12:24'),
('A31', 'MSI Bravo 15-B55D-9S7', 'Processor Amd Ryzen 7 5800H 8 Cores 16 Threads, Ram 8 GB, SSD 512GB, AMD Radeon RX 5500M 4GB , 15.6-inch FHD (1920 x 1080)', '12.999.000', 0x47202d204d534920427261766f2031352e6a7067, 'https://www.tokopedia.com/msi-official/msi-bravo-15-b5dd-9s7-158k12-241-ryzen-7-5800h-8gb-512gb-rx5500m-4gb?extParam=ivf%3Dfalse%26src%3Dsearch', 0.83472222222222, 26, '2023-05-29 07:09:19', '2023-05-29 07:12:24'),
('A32', 'MSI Bravo 15 RTX Series', 'Processor Amd Ryzen 5 7535HS 6 Cores 12 Threads, Ram 16 GB, SSD 512GB, NVIDIA GeForce RTX 4050 6GB, 15.6-inch FHD (1920 x 1080) IPS', '16.599.000', 0x45202d204d534920427261766f2031352e706e67, 'https://www.tokopedia.com/nvidiageforcelt/msi-bravo-15-rtx-4050-ryzen-5-7535hs-16gb-512ssd-144hz-c7ve-028-tanpa-antigores-0b7b8?extParam=cmp%3D1%26ivf%3Dfalse%26src%3Dsearch', 0.87541666666667, 20, '2023-05-29 07:10:06', '2023-05-29 07:12:24'),
('A33', 'Lenovo V14 G2', 'Processor Amd Ryzen 3 5300U 4 Cores 8 Threads, Ram 4 GB, SSD 256GB, AMD Radeon Graphic 2 GB, 14-inch HD (1366 x 768)', '5.899.000', 0x4b202d204c656e6f766f205631342047322e6a7067, 'https://www.tokopedia.com/sinarmulia/lenovo-v14-g2-ryzen-3-5300u-256gb-ssd-4gb-win-ohs-original?extParam=ivf%3Dfalse&src=topads', 0.65751984126984, 47, '2023-05-29 07:23:38', '2023-05-29 08:13:50'),
('A34', 'Lenovo Ideapad Slim 3i', 'Processor Intel Core i3-1115G4 2 Cores 4 Threads, Ram 8 GB, SSD 256GB, Intel UHD Graphic 2 GB, 14-inch FHD (1920 x 1080) TN', '6.189.000', 0x4b2d204c656e6f766f204964656170616420536c696d2033692e6a7067, 'https://www.tokopedia.com/intelstore-id/laptop-lenovo-ideapad-slim-3i-core-i3-1115g4-8gb-256ssd-14-fhd-blit-non-bundle-8-gb?extParam=ivf%3Dfalse&src=topads', 0.67876984126984, 44, '2023-05-29 07:24:21', '2023-05-29 08:13:50'),
('A35', 'Lenovo Ideapad Slim 3', 'Processor Amd Ryzen 5 5625U 6 Cores 12 Threads, Ram 8 GB, SSD 512GB, AMD Radeon Graphic 2 GB, 14-inch FHD (1920 x 1080) TN', '7.739.000', 0x4b2d204c656e6f766f204964656170616420536c696d2033692e6a7067, 'https://www.tokopedia.com/rogsstoreid/lenovo-ideapad-slim-3-14-amd-ryzen-5-5625u-8gb-512gb-ssd-ohs-14-0fhd-laptop-8gb-512gb-ssd?extParam=ivf%3Dfalse%26src%3Dsearch', 0.73529761904762, 36, '2023-05-29 07:42:23', '2023-05-29 08:13:50'),
('A36', 'Lenovo Ideapad Slim 1', 'Processor Amd Ryzen 3-7320U 4 Cores 8 Threads, Ram 8 GB, SSD 512GB, AMD Radeon 610M Graphic 2 GB, 14-inch FHD (1920 x 1080) TN', '6.599.000', 0x4b202d204c656e6f766f204964656170616420536c696d20312e6a706567, 'https://www.tokopedia.com/sinarmulia/lenovo-ideapad-slim-1-ryzen-3-7320u-512gb-ssd-8gb-win11-ohs-sand', 0.69321428571429, 42, '2023-05-29 07:42:54', '2023-05-29 08:13:50'),
('A37', 'Asus M415DAO', 'Processor Amd Ryzen 3 3250U 2 Cores 4 Threads, Ram 8 GB, SSD 512GB, AMD Radeon Graphic 2 GB, 14-inch FHD (1920 x 1080)', '5.999.000', 0x4b202d2041737573204d3431352e706e67, 'https://www.tokopedia.com/rogsstoreid/asus-m415dao-vips352-ryzen-3-3250-8gb-512ssd-vega3-w10-ohs-14-0fhd-ips-8-512ssd-grey?extParam=ivf%3Dfalse&src=topads', 0.69321428571429, 43, '2023-05-29 07:54:48', '2023-05-29 08:13:50'),
('A38', 'Asus Vivobook A416JAO', 'Processor Intel Core i3-1005G1 2 Cores 4 Threads, Ram 4 GB, SSD 512GB, Intel UHD Graphic 2 GB, 14-inch FHD (1920 x 1080) IPS', '6.209.000', 0x4b202d204173757320413431362e706e67, 'https://www.tokopedia.com/rogsstoreid/laptop-asus-vivobook-a416jao-i3-1005g1-4gb-256ssd-w11-ohs-14-0fhd-ips-8-256-fhd?extParam=ivf%3Dfalse&src=topads', 0.67196428571429, 46, '2023-05-29 07:55:14', '2023-05-29 08:13:50'),
('A39', 'Asus Vivobook Flip TM420UA', 'Processor Amd Ryzen 7 5700U 8 Cores 16 Threads, Ram 8 GB, SSD 1TB, AMD Radeon Graphic 8 2 GB, 14-inch FHD (1920 x 1080)', '8.499.000', 0x4b202d204173757320544d34323055412e6a7067, 'https://www.tokopedia.com/knkdepoktownsquare/asus-vivobook-flip-tm420ua-ryzen-7-5700u-16gb-1tb-touch-exdisplay-8gb-ddr4-512gb-ssd?extParam=ivf%3Dfalse&src=topads', 0.77863095238095, 30, '2023-05-29 07:55:58', '2023-05-29 08:13:50'),
('A40', 'Asus Vivobook 14X M1403QA', 'Processor Amd Ryzen 5 5600H 6 Cores 12 Threads, Ram 8 GB, SSD 512GB, AMD Radeon Graphic 5 2 GB, 14-inch WUXGA (1920 x 1080) IPS', '8.074.000', 0x4b202d204173757320313458204d3134303351412e706e67, 'https://www.tokopedia.com/gudanglaptop/asus-vivobook-14x-m1403qa-vips551-ryzen-5-5600h-16gb-512gb-win11-ohs-ram-8gb-silver-tanpa-antigores?extParam=ivf%3Dtrue&src=topads', 0.73529761904762, 37, '2023-05-29 07:56:42', '2023-05-29 08:13:50'),
('A41', 'Acer Travelmate TMP214', 'Processor Amd Ryzen 3 PRO 4450U 4 Cores 8 Threads, Ram 4 GB, SSD 256GB, AMD Radeon Graphic 2 GB, 14-inch HD (1366 x 720)', '5.898.000', 0x4b202d20414345522054524156454c4d41544520544d503231342d34312e6a7067, 'https://www.tokopedia.com/sentralkomputer/acer-travelmate-tmp214-41-ryzen-3-pro-4450u-4gb-256gb-ssd-win-10?extParam=ivf%3Dfalse&src=topads', 0.65751984126984, 48, '2023-05-29 07:59:23', '2023-05-29 08:13:50'),
('A42', 'Acer Swift 3 Infinity', 'Processor Intel Core  i5-1135G7 4 Cores 8 Threads, Ram 8 GB, SSD 512GB, Intel Iris Xe Graphics 2GB , 14-inch FHD (1920 x 1080) IPS', '8.295.168', 0x4b202d2041636572205377696674203320496e66696e6974792e6a7067, 'https://www.tokopedia.com/mur4hk0m/acer-swift-3-infinity-4-sf314-511-intel-evo-i5-1135g7-16gb-512gb-14-ram-8gb?extParam=ivf%3Dfalse&src=topads', 0.73529761904762, 38, '2023-05-29 07:59:52', '2023-05-29 08:13:50'),
('A43', 'Acer Aspire 3 A315', 'Processor Amd Ryzen 5 7520U 4 Cores 8 Threads, Ram 8 GB, SSD 512GB, AMD Radeon Graphic Vega 7 2 GB, 15’6-inch FHD ( 1920 x 1080 ) IPS', '7.449.000', 0x4b202d204143455220415350495245203320413331352e6a7067, 'https://www.tokopedia.com/technocentral/laptop-acer-aspire-3-a315-ryzen-5-7520-8-gb-512-ssd-vega-7-laptop?extParam=ivf%3Dfalse&src=topads', 0.74958333333333, 35, '2023-05-29 08:03:14', '2023-05-29 08:13:50'),
('A44', 'Acer Aspire Slim 5 A514', 'Processor Intel Core  i5- 1115G4 2 Cores 4 Threads, Ram 8 GB, SSD 512GB, NVIDIA GeForce MX350 2 GB, 14-inch HD (1366 x 768) IPS', '6.580.000', 0x4b202d20416365722041737069726520536c696d20352e6a7067, 'https://www.tokopedia.com/royalltech/acer-aspire-5-slim-a514-mx350-2gb-i3-1115g4-8gb-512ssd-w11-ohs-14-0-laptop?extParam=cmp%3D1%26ivf%3Dfalse%26src%3Dsearch', 0.72210317460317, 40, '2023-05-29 08:03:36', '2023-05-29 08:13:50'),
('A45', 'MSI Modern 14 C11M', 'Processor Intel Core  i3-1115G4 2 Cores 4 Threads, Ram 8 GB, SSD 256GB, Intel UHD Graphic 2 GB, 14-inch FHD ( 1920 x 1080 ) IPS', '5.999.000', 0x4b202d204d5349204d4f4445524e204331314d2e6a7067, 'https://www.tokopedia.com/msisakura/msi-modern-14-c11m-i3-1115g4-8gb-256gb-intel-uhd-graphics-14-fhd-w11?extParam=ivf%3Dfalse&src=topads', 0.67876984126984, 45, '2023-05-29 08:04:04', '2023-05-29 08:13:50'),
('A46', 'MSI Modern 14 C5M', 'Processor Amd Ryzen 7 5825U 8 Cores 16 Threads, Ram 8 GB, SSD 512GB, AMD Radeon Graphic 2 GB, 14-inch FHD ( 1920 x 1080 ) IPS', '8.499.000', 0x4b202d204d53492e6a7067, 'https://www.tokopedia.com/msi-official/msi-modern-14-c5m-ryzen-7-5825u-amd-radeon-graphics-14-fhd-w11-ram-8gb?extParam=ivf%3Dtrue&src=topads', 0.76418650793651, 34, '2023-05-29 08:04:35', '2023-05-29 08:13:50'),
('A47', 'MSI Modern 14', 'Processor Amd Ryzen 5 5625U 6 Cores 12 Threads, Ram 8 GB, SSD 512GB, AMD Radeon Graphic 2 GB, 14-inch FHD ( 1920 x 1080 ) IPS', '6.834.999', 0x45202d204d5349204d4f4445524e2e706e67, 'https://www.tokopedia.com/amd-id/msi-modern-14-ryzen-5-5625u-8gb-512ssd-w11-14fhd-ips-blit-c5m-005-black-8gb-tanpa-antigores?extParam=cmp%3D1%26ivf%3Dfalse%26src%3Dsearch', 0.72210317460317, 41, '2023-05-29 08:05:25', '2023-05-29 08:13:50'),
('A48', 'MSI Modern 14 C11M i5', 'Processor Intel Core  i5-1155G7 4 Cores 8 Threads, Ram 8 GB, SSD 512GB, Intel Iris Xe Graphic 2 GB , 14-inch FHD ( 1920 x 1080 ) IPS', '7.235.999', 0x4b202d204d5349492e6a7067, 'https://www.tokopedia.com/intelstore-id/msi-modern-14-c11m-i5-1155g7-8gb-512ssd-irisxe-w11-14-fhd-ips-blit-non-bundle-tanpa-ohs?extParam=cmp%3D1%26ivf%3Dtrue&src=topads', 0.73529761904762, 39, '2023-05-29 08:08:07', '2023-05-29 08:13:50');

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
(207, 'A16', 'C07', 31, NULL, '2023-05-28 08:32:42'),
(208, 'A17', 'C01', 8, NULL, '2023-05-29 06:49:43'),
(209, 'A17', 'C02', 3, NULL, '2023-05-29 06:49:43'),
(210, 'A17', 'C03', 13, NULL, '2023-05-29 06:49:43'),
(211, 'A17', 'C04', 17, NULL, '2023-05-29 06:49:43'),
(212, 'A17', 'C05', 23, NULL, '2023-05-29 06:49:43'),
(213, 'A17', 'C06', 27, NULL, '2023-05-29 06:50:32'),
(214, 'A17', 'C07', 32, NULL, '2023-05-29 06:49:43'),
(215, 'A18', 'C01', 4, NULL, '2023-05-29 06:50:24'),
(216, 'A18', 'C02', 6, NULL, '2023-05-29 06:50:24'),
(217, 'A18', 'C03', 13, NULL, '2023-05-29 06:50:24'),
(218, 'A18', 'C04', 18, NULL, '2023-05-29 06:50:24'),
(219, 'A18', 'C05', 24, NULL, '2023-05-29 06:50:24'),
(220, 'A18', 'C06', 27, NULL, '2023-05-29 06:50:24'),
(221, 'A18', 'C07', 32, NULL, '2023-05-29 06:50:24'),
(222, 'A19', 'C01', 4, NULL, '2023-05-29 06:51:03'),
(223, 'A19', 'C02', 6, NULL, '2023-05-29 06:51:03'),
(224, 'A19', 'C03', 13, NULL, '2023-05-29 06:51:03'),
(225, 'A19', 'C04', 17, NULL, '2023-05-29 06:51:03'),
(226, 'A19', 'C05', 24, NULL, '2023-05-29 06:51:03'),
(227, 'A19', 'C06', 27, NULL, '2023-05-29 06:51:03'),
(228, 'A19', 'C07', 32, NULL, '2023-05-29 06:51:03'),
(229, 'A20', 'C01', 4, NULL, '2023-05-29 06:51:40'),
(230, 'A20', 'C02', 6, NULL, '2023-05-29 06:51:40'),
(231, 'A20', 'C03', 13, NULL, '2023-05-29 06:51:40'),
(232, 'A20', 'C04', 20, NULL, '2023-05-29 06:51:40'),
(233, 'A20', 'C05', 24, NULL, '2023-05-29 06:51:40'),
(234, 'A20', 'C06', 28, NULL, '2023-05-29 06:51:40'),
(235, 'A20', 'C07', 32, NULL, '2023-05-29 06:51:40'),
(236, 'A21', 'C01', 5, NULL, '2023-05-29 06:56:31'),
(237, 'A21', 'C02', 6, NULL, '2023-05-29 06:56:31'),
(238, 'A21', 'C03', 14, NULL, '2023-05-29 06:56:31'),
(239, 'A21', 'C04', 19, NULL, '2023-05-29 06:56:31'),
(240, 'A21', 'C05', 24, NULL, '2023-05-29 06:56:31'),
(241, 'A21', 'C06', 28, NULL, '2023-05-29 06:56:31'),
(242, 'A21', 'C07', 32, NULL, '2023-05-29 06:56:31'),
(243, 'A22', 'C01', 4, NULL, '2023-05-29 06:56:52'),
(244, 'A22', 'C02', 6, NULL, '2023-05-29 06:56:52'),
(245, 'A22', 'C03', 13, NULL, '2023-05-29 06:56:52'),
(246, 'A22', 'C04', 18, NULL, '2023-05-29 06:56:52'),
(247, 'A22', 'C05', 24, NULL, '2023-05-29 06:56:52'),
(248, 'A22', 'C06', 27, NULL, '2023-05-29 06:56:52'),
(249, 'A22', 'C07', 32, NULL, '2023-05-31 02:53:30'),
(250, 'A23', 'C01', 8, NULL, '2023-05-29 06:57:14'),
(251, 'A23', 'C02', 2, NULL, '2023-05-29 06:58:30'),
(252, 'A23', 'C03', 12, NULL, '2023-05-29 06:57:14'),
(253, 'A23', 'C04', 18, NULL, '2023-05-29 06:57:14'),
(254, 'A23', 'C05', 23, NULL, '2023-05-29 06:57:14'),
(255, 'A23', 'C06', 27, NULL, '2023-05-29 06:57:14'),
(256, 'A23', 'C07', 32, NULL, '2023-05-29 06:57:14'),
(257, 'A24', 'C01', 8, NULL, '2023-05-29 06:58:18'),
(258, 'A24', 'C02', 6, NULL, '2023-05-29 06:58:18'),
(259, 'A24', 'C03', 12, NULL, '2023-05-29 06:58:18'),
(260, 'A24', 'C04', 16, NULL, '2023-05-29 06:58:18'),
(261, 'A24', 'C05', 22, NULL, '2023-05-29 06:58:18'),
(262, 'A24', 'C06', 27, NULL, '2023-05-29 06:58:18'),
(263, 'A24', 'C07', 32, NULL, '2023-05-29 06:58:18'),
(264, 'A25', 'C01', 4, NULL, '2023-05-29 07:04:03'),
(265, 'A25', 'C02', 6, NULL, '2023-05-29 07:04:03'),
(266, 'A25', 'C03', 13, NULL, '2023-05-29 07:04:03'),
(267, 'A25', 'C04', 18, NULL, '2023-05-29 07:04:03'),
(268, 'A25', 'C05', 24, NULL, '2023-05-29 07:04:03'),
(269, 'A25', 'C06', 28, NULL, '2023-05-29 07:04:03'),
(270, 'A25', 'C07', 32, NULL, '2023-05-29 07:04:03'),
(271, 'A26', 'C01', 8, NULL, '2023-05-29 07:04:35'),
(272, 'A26', 'C02', 3, NULL, '2023-05-29 07:04:25'),
(273, 'A26', 'C03', 13, NULL, '2023-05-29 07:04:26'),
(274, 'A26', 'C04', 17, NULL, '2023-05-29 07:04:26'),
(275, 'A26', 'C05', 23, NULL, '2023-05-29 07:04:26'),
(276, 'A26', 'C06', 27, NULL, '2023-05-29 07:04:26'),
(277, 'A26', 'C07', 32, NULL, '2023-05-29 07:04:26'),
(278, 'A27', 'C01', 4, NULL, '2023-05-29 07:05:06'),
(279, 'A27', 'C02', 6, NULL, '2023-05-29 07:05:06'),
(280, 'A27', 'C03', 13, NULL, '2023-05-29 07:05:06'),
(281, 'A27', 'C04', 18, NULL, '2023-05-29 07:05:06'),
(282, 'A27', 'C05', 24, NULL, '2023-05-29 07:05:06'),
(283, 'A27', 'C06', 27, NULL, '2023-05-29 07:05:06'),
(284, 'A27', 'C07', 32, NULL, '2023-05-29 07:05:06'),
(285, 'A28', 'C01', 5, NULL, '2023-05-29 07:05:33'),
(286, 'A28', 'C02', 6, NULL, '2023-05-29 07:05:33'),
(287, 'A28', 'C03', 13, NULL, '2023-05-29 07:05:33'),
(288, 'A28', 'C04', 20, NULL, '2023-05-29 07:05:33'),
(289, 'A28', 'C05', 23, NULL, '2023-05-29 07:05:33'),
(290, 'A28', 'C06', 28, NULL, '2023-05-29 07:05:33'),
(291, 'A28', 'C07', 32, NULL, '2023-05-29 07:05:33'),
(292, 'A29', 'C01', 4, NULL, '2023-05-29 07:10:36'),
(293, 'A29', 'C02', 6, NULL, '2023-05-29 07:10:36'),
(294, 'A29', 'C03', 13, NULL, '2023-05-29 07:10:36'),
(295, 'A29', 'C04', 18, NULL, '2023-05-29 07:10:36'),
(296, 'A29', 'C05', 24, NULL, '2023-05-29 07:10:36'),
(297, 'A29', 'C06', 28, NULL, '2023-05-29 07:10:36'),
(298, 'A29', 'C07', 32, NULL, '2023-05-29 07:10:36'),
(299, 'A30', 'C01', 4, NULL, '2023-05-29 07:11:07'),
(300, 'A30', 'C02', 2, NULL, '2023-05-29 07:11:07'),
(301, 'A30', 'C03', 12, NULL, '2023-05-29 07:11:07'),
(302, 'A30', 'C04', 17, NULL, '2023-05-29 07:11:07'),
(303, 'A30', 'C05', 23, NULL, '2023-05-29 07:11:07'),
(304, 'A30', 'C06', 27, NULL, '2023-05-29 07:11:07'),
(305, 'A30', 'C07', 32, NULL, '2023-05-29 07:11:07'),
(306, 'A31', 'C01', 4, NULL, '2023-05-29 07:11:33'),
(307, 'A31', 'C02', 2, NULL, '2023-05-29 07:11:33'),
(308, 'A31', 'C03', 12, NULL, '2023-05-29 07:11:33'),
(309, 'A31', 'C04', 18, NULL, '2023-05-29 07:11:33'),
(310, 'A31', 'C05', 23, NULL, '2023-05-29 07:11:33'),
(311, 'A31', 'C06', 28, NULL, '2023-05-29 07:11:33'),
(312, 'A31', 'C07', 32, NULL, '2023-05-29 07:11:33'),
(313, 'A32', 'C01', 8, NULL, '2023-05-29 07:12:03'),
(314, 'A32', 'C02', 6, NULL, '2023-05-29 07:12:03'),
(315, 'A32', 'C03', 13, NULL, '2023-05-29 07:12:03'),
(316, 'A32', 'C04', 19, NULL, '2023-05-29 07:12:03'),
(317, 'A32', 'C05', 23, NULL, '2023-05-29 07:12:03'),
(318, 'A32', 'C06', 28, NULL, '2023-05-29 07:12:03'),
(319, 'A32', 'C07', 32, NULL, '2023-05-29 07:12:03'),
(320, 'A33', 'C01', 7, NULL, '2023-05-29 07:43:20'),
(321, 'A33', 'C02', 10, NULL, '2023-05-29 07:43:20'),
(322, 'A33', 'C03', 11, NULL, '2023-05-29 07:43:20'),
(323, 'A33', 'C04', 17, NULL, '2023-05-29 07:43:20'),
(324, 'A33', 'C05', 22, NULL, '2023-05-29 07:43:20'),
(325, 'A33', 'C06', 27, NULL, '2023-05-29 07:43:20'),
(326, 'A33', 'C07', 33, NULL, '2023-05-29 07:43:20'),
(327, 'A34', 'C01', 7, NULL, '2023-05-29 07:43:43'),
(328, 'A34', 'C02', 10, NULL, '2023-05-29 07:43:43'),
(329, 'A34', 'C03', 12, NULL, '2023-05-29 07:43:43'),
(330, 'A34', 'C04', 17, NULL, '2023-05-29 07:43:43'),
(331, 'A34', 'C05', 22, NULL, '2023-05-29 07:43:43'),
(332, 'A34', 'C06', 27, NULL, '2023-05-29 07:43:43'),
(333, 'A34', 'C07', 33, NULL, '2023-05-29 07:43:43'),
(334, 'A35', 'C01', 8, NULL, '2023-05-29 07:44:22'),
(335, 'A35', 'C02', 9, NULL, '2023-05-29 07:44:22'),
(336, 'A35', 'C03', 12, NULL, '2023-05-29 07:44:22'),
(337, 'A35', 'C04', 17, NULL, '2023-05-29 07:44:22'),
(338, 'A35', 'C05', 23, NULL, '2023-05-29 07:44:22'),
(339, 'A35', 'C06', 27, NULL, '2023-05-29 07:44:22'),
(340, 'A35', 'C07', 33, NULL, '2023-05-29 07:44:22'),
(341, 'A36', 'C01', 7, NULL, '2023-05-29 07:44:46'),
(342, 'A36', 'C02', 10, NULL, '2023-05-29 07:44:46'),
(343, 'A36', 'C03', 12, NULL, '2023-05-29 07:44:46'),
(344, 'A36', 'C04', 17, NULL, '2023-05-29 07:44:46'),
(345, 'A36', 'C05', 23, NULL, '2023-05-29 07:44:46'),
(346, 'A36', 'C06', 27, NULL, '2023-05-29 07:44:46'),
(347, 'A36', 'C07', 33, NULL, '2023-05-29 07:44:46'),
(348, 'A37', 'C01', 7, NULL, '2023-05-29 08:08:39'),
(349, 'A37', 'C02', 10, NULL, '2023-05-29 08:08:39'),
(350, 'A37', 'C03', 12, NULL, '2023-05-29 08:08:39'),
(351, 'A37', 'C04', 17, NULL, '2023-05-29 08:08:39'),
(352, 'A37', 'C05', 23, NULL, '2023-05-29 08:08:39'),
(353, 'A37', 'C06', 27, NULL, '2023-05-29 08:08:39'),
(354, 'A37', 'C07', 33, NULL, '2023-05-29 08:08:39'),
(355, 'A38', 'C01', 7, NULL, '2023-05-29 08:08:57'),
(356, 'A38', 'C02', 10, NULL, '2023-05-29 08:08:57'),
(357, 'A38', 'C03', 11, NULL, '2023-05-29 08:08:57'),
(358, 'A38', 'C04', 17, NULL, '2023-05-29 08:08:57'),
(359, 'A38', 'C05', 23, NULL, '2023-05-29 08:08:57'),
(360, 'A38', 'C06', 27, NULL, '2023-05-29 08:08:57'),
(361, 'A38', 'C07', 33, NULL, '2023-05-29 08:09:02'),
(362, 'A39', 'C01', 4, NULL, '2023-05-29 08:09:26'),
(363, 'A39', 'C02', 9, NULL, '2023-05-29 08:09:26'),
(364, 'A39', 'C03', 12, NULL, '2023-05-29 08:09:26'),
(365, 'A39', 'C04', 17, NULL, '2023-05-29 08:09:26'),
(366, 'A39', 'C05', 24, NULL, '2023-05-29 08:09:26'),
(367, 'A39', 'C06', 27, NULL, '2023-05-29 08:09:26'),
(368, 'A39', 'C07', 33, NULL, '2023-05-29 08:09:26'),
(369, 'A40', 'C01', 8, NULL, '2023-05-29 08:09:58'),
(370, 'A40', 'C02', 9, NULL, '2023-05-29 08:09:58'),
(371, 'A40', 'C03', 12, NULL, '2023-05-29 08:09:58'),
(372, 'A40', 'C04', 17, NULL, '2023-05-29 08:09:58'),
(373, 'A40', 'C05', 23, NULL, '2023-05-29 08:09:58'),
(374, 'A40', 'C06', 27, NULL, '2023-05-29 08:09:58'),
(375, 'A40', 'C07', 33, NULL, '2023-05-29 08:09:58'),
(376, 'A41', 'C01', 7, NULL, '2023-05-29 08:10:31'),
(377, 'A41', 'C02', 10, NULL, '2023-05-29 08:10:31'),
(378, 'A41', 'C03', 11, NULL, '2023-05-29 08:10:31'),
(379, 'A41', 'C04', 17, NULL, '2023-05-29 08:10:31'),
(380, 'A41', 'C05', 22, NULL, '2023-05-29 08:10:31'),
(381, 'A41', 'C06', 27, NULL, '2023-05-29 08:10:31'),
(382, 'A41', 'C07', 33, NULL, '2023-05-29 08:10:31'),
(383, 'A42', 'C01', 8, NULL, '2023-05-29 08:10:55'),
(384, 'A42', 'C02', 9, NULL, '2023-05-29 08:10:55'),
(385, 'A42', 'C03', 12, NULL, '2023-05-29 08:10:55'),
(386, 'A42', 'C04', 17, NULL, '2023-05-29 08:10:55'),
(387, 'A42', 'C05', 23, NULL, '2023-05-29 08:10:55'),
(388, 'A42', 'C06', 27, NULL, '2023-05-29 08:10:55'),
(389, 'A42', 'C07', 33, NULL, '2023-05-29 08:10:55'),
(390, 'A43', 'C01', 8, NULL, '2023-05-29 08:11:23'),
(391, 'A43', 'C02', 9, NULL, '2023-05-29 08:11:23'),
(392, 'A43', 'C03', 12, NULL, '2023-05-29 08:11:23'),
(393, 'A43', 'C04', 17, NULL, '2023-05-29 08:11:23'),
(394, 'A43', 'C05', 23, NULL, '2023-05-29 08:11:23'),
(395, 'A43', 'C06', 28, NULL, '2023-05-29 08:11:23'),
(396, 'A43', 'C07', 33, NULL, '2023-05-29 08:11:23'),
(397, 'A44', 'C01', 8, NULL, '2023-05-29 08:11:56'),
(398, 'A44', 'C02', 10, NULL, '2023-05-29 08:11:56'),
(399, 'A44', 'C03', 12, NULL, '2023-05-29 08:11:56'),
(400, 'A44', 'C04', 17, NULL, '2023-05-29 08:11:56'),
(401, 'A44', 'C05', 23, NULL, '2023-05-29 08:11:56'),
(402, 'A44', 'C06', 27, NULL, '2023-05-29 08:11:56'),
(403, 'A44', 'C07', 33, NULL, '2023-05-29 08:11:56'),
(404, 'A45', 'C01', 7, NULL, '2023-05-29 08:12:30'),
(405, 'A45', 'C02', 10, NULL, '2023-05-29 08:12:30'),
(406, 'A45', 'C03', 12, NULL, '2023-05-29 08:12:30'),
(407, 'A45', 'C04', 17, NULL, '2023-05-29 08:12:30'),
(408, 'A45', 'C05', 22, NULL, '2023-05-29 08:12:30'),
(409, 'A45', 'C06', 27, NULL, '2023-05-29 08:12:30'),
(410, 'A45', 'C07', 33, NULL, '2023-05-29 08:12:30'),
(411, 'A46', 'C01', 4, NULL, '2023-05-29 08:12:56'),
(412, 'A46', 'C02', 9, NULL, '2023-05-29 08:12:56'),
(413, 'A46', 'C03', 12, NULL, '2023-05-29 08:12:56'),
(414, 'A46', 'C04', 17, NULL, '2023-05-29 08:12:56'),
(415, 'A46', 'C05', 23, NULL, '2023-05-29 08:12:56'),
(416, 'A46', 'C06', 27, NULL, '2023-05-29 08:12:56'),
(417, 'A46', 'C07', 33, NULL, '2023-05-29 08:12:56'),
(418, 'A47', 'C01', 8, NULL, '2023-05-29 08:13:23'),
(419, 'A47', 'C02', 10, NULL, '2023-05-29 08:13:23'),
(420, 'A47', 'C03', 12, NULL, '2023-05-29 08:13:23'),
(421, 'A47', 'C04', 17, NULL, '2023-05-29 08:13:23'),
(422, 'A47', 'C05', 23, NULL, '2023-05-29 08:13:23'),
(423, 'A47', 'C06', 27, NULL, '2023-05-29 08:13:23'),
(424, 'A47', 'C07', 33, NULL, '2023-05-29 08:13:23'),
(425, 'A48', 'C01', 8, NULL, '2023-05-29 08:13:47'),
(426, 'A48', 'C02', 9, NULL, '2023-05-29 08:13:47'),
(427, 'A48', 'C03', 12, NULL, '2023-05-29 08:13:47'),
(428, 'A48', 'C04', 17, NULL, '2023-05-29 08:13:47'),
(429, 'A48', 'C05', 23, NULL, '2023-05-29 08:13:47'),
(430, 'A48', 'C06', 27, NULL, '2023-05-29 08:13:47'),
(431, 'A48', 'C07', 33, NULL, '2023-05-29 08:13:47');

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
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
