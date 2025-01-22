-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 01:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photo_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `nama`) VALUES
(1, 'Hutan'),
(2, 'Alam'),
(3, 'Kota'),
(4, 'Padang Rumput'),
(5, 'Gurun'),
(6, 'Pantai'),
(7, 'Gunung');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) NOT NULL,
  `title` varchar(225) NOT NULL,
  `filename` varchar(225) NOT NULL,
  `filesize` varchar(12) NOT NULL,
  `height` int(10) NOT NULL,
  `width` int(10) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `filename`, `filesize`, `height`, `width`, `category_id`, `description`) VALUES
(1, 'Bunga Indah', 'DSC_0020.jpg', '82738', 500, 752, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari. Selain keindahannya, bunga juga sering digunakan dalam berbagai acara, seperti pernikahan, perayaan, dan sebagai simbol perasaan. Bunga dapat memberikan kebahagiaan dan keindahan di sekitar kita.'),
(2, 'DSC_0021', 'DSC_0021.jpg', '74597', 500, 752, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari. Selain keindahannya, bunga juga sering digunakan dalam berbagai acara, seperti pernikahan, perayaan, dan sebagai simbol perasaan. Bunga dapat memberikan kebahagiaan dan keindahan di sekitar kita.'),
(3, 'DSC_0033', 'DSC_0033.jpg', '78894', 500, 752, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari. Selain keindahannya, bunga juga sering digunakan dalam berbagai acara, seperti pernikahan, perayaan, dan sebagai simbol perasaan. Bunga dapat memberikan kebahagiaan dan keindahan di sekitar kita.'),
(4, 'DSC_0034', 'DSC_0034.jpg', '88694', 500, 752, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari. Selain keindahannya, bunga juga sering digunakan dalam berbagai acara, seperti pernikahan, perayaan, dan sebagai simbol perasaan. Bunga dapat memberikan kebahagiaan dan keindahan di sekitar kita.'),
(7, 'DSC_0339', 'DSC_0339.jpg', '52028', 500, 752, NULL, 'Senja di pantai adalah momen yang memukau ketika matahari perlahan tenggelam di cakrawala, menciptakan semburat warna merah, oranye, dan ungu di langit. Suasana tenang dan angin sepoi-sepoi menambah keindahan, menjadikan senja sebagai waktu yang tepat untuk merenung dan menikmati keindahan alam. Keindahan senja di pantai sering kali menjadi inspirasi bagi banyak orang, baik dalam seni maupun dalam kehidupan sehari-hari.'),
(8, 'DSC_0348', 'DSC_0348.jpg', '46032', 500, 752, NULL, 'Senja di pantai adalah momen yang memukau ketika matahari perlahan tenggelam di cakrawala, menciptakan semburat warna merah, oranye, dan ungu di langit. Suasana tenang dan angin sepoi-sepoi menambah keindahan, menjadikan senja sebagai waktu yang tepat untuk merenung dan menikmati keindahan alam. Keindahan senja di pantai sering kali menjadi inspirasi bagi banyak orang, baik dalam seni maupun dalam kehidupan sehari-hari.'),
(9, 'DSC_0358', 'DSC_0358.jpg', '122311', 752, 500, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari.'),
(10, 'DSC_0397', 'DSC_0397.jpg', '80074', 500, 752, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari.'),
(11, 'DSC_0417', 'DSC_0417.jpg', '85956', 500, 752, NULL, 'awdBunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari.'),
(12, 'DSC_0446', 'DSC_0446.jpg', '154531', 500, 752, NULL, 'awdBunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari.'),
(13, 'DSC_0450', 'DSC_0450.jpg', '133664', 752, 500, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari.'),
(14, 'DSC_0845', 'DSC_0845.jpg', '88422', 500, 752, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari.'),
(15, 'DSC_0847', 'DSC_0847.jpg', '62999', 500, 752, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari.'),
(16, 'DSC_0850', 'DSC_0850.jpg', '76065', 500, 752, NULL, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari.'),
(17, 'DSC_0871', 'DSC_0871.jpg', '75912', 500, 752, NULL, NULL),
(18, 'DSC_0876', 'DSC_0876.jpg', '59987', 752, 500, NULL, NULL),
(19, 'DSC_0934', 'DSC_0934.jpg', '152469', 500, 752, NULL, NULL),
(20, 'DSC_1105', 'DSC_1105.jpg', '50075', 500, 752, NULL, NULL),
(21, 'DSC_1142', 'DSC_1142.jpg', '50157', 500, 752, NULL, NULL),
(22, 'DSC_2057m', 'DSC_2057m.jpg', '50843', 500, 752, NULL, NULL),
(23, 'DSC_2132', 'DSC_2132.jpg', '148733', 500, 752, NULL, NULL),
(24, 'DSC_2174', 'DSC_2174.jpg', '140209', 500, 752, NULL, NULL),
(25, 'DSC_2870', 'DSC_2870.jpg', '83335', 500, 752, NULL, NULL),
(26, 'DSC_2940', 'DSC_2940.jpg', '96054', 500, 752, NULL, 'Senja di pantai adalah momen yang memukau ketika matahari perlahan tenggelam di cakrawala, menciptakan semburat warna merah, oranye, dan ungu di langit. Suasana tenang dan angin sepoi-sepoi menambah keindahan, menjadikan senja sebagai waktu yang tepat untuk merenung dan menikmati keindahan alam. Keindahan senja di pantai sering kali menjadi inspirasi bagi banyak orang, baik dalam seni maupun dalam kehidupan sehari-hari.'),
(27, 'DSC_4145', 'DSC_4145.jpg', '67161', 500, 752, NULL, NULL),
(28, 'DSC_4258', 'DSC_4258.jpg', '105039', 500, 752, NULL, NULL),
(29, 'DSC_4321', 'DSC_4321.jpg', '102209', 500, 752, NULL, NULL),
(30, 'DSC_4351', 'DSC_4351.jpg', '100738', 500, 752, NULL, NULL),
(31, 'DSC_4384', 'DSC_4384.jpg', '76389', 500, 752, NULL, NULL),
(32, 'DSC_4399', 'DSC_4399.jpg', '91516', 500, 752, NULL, NULL),
(33, 'DSC_4561', 'DSC_4561.jpg', '96441', 752, 500, NULL, 'awd'),
(34, 'DSC_4607', 'DSC_4607.jpg', '48775', 500, 752, NULL, 'awd'),
(35, 'DSC_5645', 'DSC_5645.jpg', '130074', 500, 752, NULL, 'awd'),
(36, 'DSC_5907', 'DSC_5907.jpg', '91607', 500, 752, NULL, 'adaw'),
(37, 'DSC_6494', 'DSC_6494.jpg', '60279', 500, 752, NULL, 'awda'),
(38, 'DSC_6558', 'DSC_6558.jpg', '120338', 500, 752, NULL, 'awd'),
(39, 'DSC_6590', 'DSC_6590.jpg', '136606', 500, 752, NULL, 'adaw'),
(40, 'DSC_6603', 'DSC_6603.jpg', '82053', 500, 752, NULL, 'awd'),
(41, 'DSC_6824', 'DSC_6824.jpg', '155162', 500, 752, NULL, 'awd'),
(42, 'DSC_6857', 'DSC_6857.jpg', '131043', 500, 752, NULL, 'awd'),
(43, 'DSC_8125', 'DSC_8125.jpg', '69628', 500, 752, NULL, 'awd'),
(61, 'pexels-abhi-more-454774667-30308411', 'pexels-abhi-more-454774667-30308411.jpg', '2528132', 3648, 5472, 5, 'Bunga adalah bagian dari tanaman yang biasanya berwarna-warni dan memiliki aroma yang harum. Bunga berfungsi sebagai alat reproduksi bagi tanaman, di mana serbuk sari dan putik bertemu untuk menghasilkan biji. Setiap jenis bunga memiliki bentuk, ukuran, dan warna yang berbeda-beda, seperti mawar yang melambangkan cinta, melati yang dikenal dengan keharumannya, dan bunga matahari yang selalu menghadap ke arah matahari.                    \r\n                        '),
(62, 'pexels-arts-1496373', 'pexels-arts-1496373.jpg', '4343006', 6000, 4000, 1, 'Hutan adalah ekosistem yang kaya akan keanekaragaman hayati, terdiri dari berbagai jenis pohon, tanaman, hewan, dan mikroorganisme. Hutan memainkan peran penting dalam menjaga keseimbangan ekosistem dan memberikan banyak manfaat bagi manusia dan lingkungan.                    \r\n                        '),
(63, 'pexels-christian-heitz-285904-842711', 'pexels-christian-heitz-285904-842711.jpg', '1847928', 3648, 5472, 7, 'Gunung adalah bentuk relief yang menjulang tinggi di atas permukaan tanah, biasanya memiliki puncak yang tajam dan lereng yang curam. Gunung terbentuk melalui berbagai proses geologis, termasuk aktivitas vulkanik, pergeseran lempeng tektonik, dan erosi.'),
(64, 'pexels-francesco-ungaro-1525041', 'pexels-francesco-ungaro-1525041.jpg', '3274389', 4000, 6000, 7, 'Gunung adalah bentuk relief yang menjulang tinggi di atas permukaan tanah, biasanya memiliki puncak yang tajam dan lereng yang curam. Gunung terbentuk melalui berbagai proses geologis, termasuk aktivitas vulkanik, pergeseran lempeng tektonik, dan erosi.                    \r\n                        '),
(65, 'pexels-katja-79053-592077', 'pexels-katja-79053-592077.jpg', '1063313', 2736, 3648, 1, 'Gunung adalah bentuk relief yang menjulang tinggi di atas permukaan tanah, biasanya memiliki puncak yang tajam dan lereng yang curam. Gunung terbentuk melalui berbagai proses geologis, termasuk aktivitas vulkanik, pergeseran lempeng tektonik, dan erosi.                    \r\n                        '),
(66, 'pexels-sanaan-3052361', 'pexels-sanaan-3052361.jpg', '1492501', 5790, 3843, 3, 'Kota di malam hari memiliki pesona dan keunikan tersendiri yang sering kali berbeda dari suasana siang hari. Ketika matahari terbenam, lampu-lampu kota mulai menyala, menciptakan suasana yang hidup dan dinamis.                        '),
(68, 'pexels-valentin-cvetanoski-2147958923-30253477', 'pexels-valentin-cvetanoski-2147958923-30253477.jpg', '1234109', 2592, 3872, 3, 'kota yang indah                    \r\n                        '),
(69, 'pexels-tracehudson-2724664', 'pexels-tracehudson-2724664.jpg', '349933', 2560, 2048, 7, 'gunung yang menjulang tinggi                    \r\n                        ');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) NOT NULL,
  `title` varchar(225) NOT NULL,
  `photo_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `photo_id`) VALUES
(1, 'asu', 1),
(2, 'anjay', 59),
(3, 'uh', 9),
(4, 'aaa', 16),
(7, 'aw', 8),
(8, 'gunung', 69),
(9, 'hutan', 62);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_2` (`title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_2` (`title`),
  ADD KEY `title` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`id`) REFERENCES `photos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
