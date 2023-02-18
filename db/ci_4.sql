-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2023 at 02:19 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto1', 'naruto1', 'Masashi Kishimoto', 'Shomen Jump', 'naruto.jpg', NULL, '2022-12-23 01:22:16'),
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', 'onepiece.jpg', NULL, NULL),
(8, 'coba 4', 'coba-4', 'test', 'test', '1651661287_1915bb76da7f415bc117.jpg', '2022-05-04 04:28:47', '2022-05-04 05:48:07'),
(10, 'yang berubah hanya judul', 'yang-berubah-hanya-judul', 'test', 'test', '1651661103_c3237c9ceafae27f766e.png', '2022-05-04 05:43:15', '2022-05-04 05:45:03'),
(11, 'test', 'test', 'test', 'test', '1671780165_414a487021f2f4411d5d.jpg', '2022-05-04 05:52:49', '2022-12-23 01:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-05-04-134958', 'App\\Database\\Migrations\\User', 'default', 'App', 1651720741, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Violet Haryanti', 'Jr. Ronggowarsito No. 192, Pontianak 49420, NTB', '1992-05-04 09:22:42', '2022-05-04 23:49:58'),
(2, 'Emong Saptono', 'Jln. Bara No. 579, Gunungsitoli 35971, Jatim', '2005-06-04 00:44:02', '2022-05-04 23:49:58'),
(3, 'Ibun Mangunsong S.Gz', 'Psr. Yosodipuro No. 496, Batu 54389, Sulteng', '1973-06-03 08:17:07', '2022-05-04 23:49:58'),
(4, 'Tania Farida', 'Ki. Ters. Pasir Koja No. 807, Mataram 79943, Papua', '1973-09-18 06:04:41', '2022-05-04 23:49:58'),
(5, 'Aurora Maya Novitasari S.Psi', 'Dk. Wora Wari No. 839, Singkawang 96192, Kaltim', '2013-02-06 22:02:45', '2022-05-04 23:49:58'),
(6, 'Nabila Lailasari', 'Dk. Sadang Serang No. 851, Batu 96311, DIY', '2010-03-01 04:03:27', '2022-05-04 23:49:58'),
(7, 'Citra Novitasari', 'Psr. Kyai Gede No. 748, Lhokseumawe 25429, NTB', '1979-08-31 13:47:33', '2022-05-04 23:49:58'),
(8, 'Marsito Gading Zulkarnain', 'Ki. Jagakarsa No. 186, Malang 86988, Gorontalo', '1999-11-17 09:33:22', '2022-05-04 23:49:58'),
(9, 'Rahayu Purnawati', 'Ds. Uluwatu No. 875, Bengkulu 68849, Kalsel', '1986-11-10 09:23:39', '2022-05-04 23:49:58'),
(10, 'Alika Palastri', 'Ki. Muwardi No. 151, Batu 58136, Gorontalo', '1998-11-16 18:53:59', '2022-05-04 23:49:58'),
(11, 'Fitria Diah Handayani M.Ak', 'Ds. Banda No. 958, Tanjung Pinang 84922, Papua', '2001-01-09 14:10:07', '2022-05-04 23:49:58'),
(12, 'Chelsea Usamah', 'Kpg. Halim No. 406, Sorong 64490, Sulteng', '1994-04-30 01:31:16', '2022-05-04 23:49:58'),
(13, 'Violet Ajeng Zulaika S.Psi', 'Psr. Bara No. 79, Ambon 81271, Babel', '2008-06-13 14:30:17', '2022-05-04 23:49:58'),
(14, 'Hasim Sitompul', 'Gg. Jend. A. Yani No. 504, Administrasi Jakarta Timur 97075, NTT', '2006-09-04 03:26:02', '2022-05-04 23:49:58'),
(15, 'Bella Nasyiah', 'Dk. Sugiyopranoto No. 381, Sungai Penuh 91104, Aceh', '1978-08-23 08:06:35', '2022-05-04 23:49:58'),
(16, 'Elvina Victoria Hariyah', 'Psr. Bakau No. 482, Balikpapan 24465, Kepri', '1988-06-13 19:58:05', '2022-05-04 23:49:58'),
(17, 'Tirta Emin Latupono', 'Dk. Bakhita No. 785, Metro 49292, Jatim', '2012-11-23 18:53:53', '2022-05-04 23:49:58'),
(18, 'Kenari Hutagalung', 'Kpg. Soekarno Hatta No. 641, Malang 22140, Gorontalo', '1985-02-04 15:04:33', '2022-05-04 23:49:58'),
(19, 'Koko Bagas Sitompul', 'Jr. Camar No. 410, Mataram 56766, Pabar', '2006-02-16 09:42:09', '2022-05-04 23:49:58'),
(20, 'Cindy Agustina', 'Kpg. Muwardi No. 131, Pasuruan 23167, Sumbar', '1976-02-01 06:50:55', '2022-05-04 23:49:58'),
(21, 'Usyi Nurdiyanti', 'Dk. Imam No. 608, Bima 10040, NTB', '1983-06-08 04:32:51', '2022-05-04 23:49:58'),
(22, 'Najwa Fitriani Permata', 'Kpg. Barat No. 539, Tidore Kepulauan 44370, Sumbar', '2006-10-28 10:25:15', '2022-05-04 23:49:58'),
(23, 'Prayitna Bagya Samosir', 'Dk. Bambon No. 959, Manado 35733, DIY', '1971-12-08 17:41:02', '2022-05-04 23:49:58'),
(24, 'Shakila Susanti', 'Jln. Jend. A. Yani No. 258, Cirebon 13049, Sultra', '2021-08-22 14:14:13', '2022-05-04 23:49:58'),
(25, 'Mala Nuraini', 'Jr. Juanda No. 30, Palopo 81813, Riau', '1988-04-13 08:10:42', '2022-05-04 23:49:58'),
(26, 'Lukman Cecep Suwarno', 'Ds. Agus Salim No. 939, Dumai 87220, Kaltara', '1991-06-29 16:31:53', '2022-05-04 23:49:58'),
(27, 'Laswi Gamblang Simanjuntak M.Pd', 'Dk. Yos Sudarso No. 49, Serang 53217, Jatim', '1975-10-21 09:56:23', '2022-05-04 23:49:58'),
(28, 'Artanto Sihotang', 'Dk. Panjaitan No. 565, Sukabumi 28706, Sulbar', '2007-12-09 12:18:05', '2022-05-04 23:49:58'),
(29, 'Jefri Unggul Manullang S.I.Kom', 'Psr. Kiaracondong No. 523, Pontianak 31995, Jatim', '2021-10-16 18:30:05', '2022-05-04 23:49:58'),
(30, 'Nilam Zamira Palastri', 'Dk. Pasir Koja No. 299, Surakarta 76402, Pabar', '1998-01-06 00:18:03', '2022-05-04 23:49:58'),
(31, 'Gantar Tarihoran', 'Psr. Banal No. 348, Administrasi Jakarta Timur 87869, Babel', '1984-01-09 14:53:21', '2022-05-04 23:49:58'),
(32, 'Ajeng Qori Farida S.Pt', 'Jln. Sutoyo No. 703, Bogor 18619, Sumut', '1990-09-26 07:20:21', '2022-05-04 23:49:58'),
(33, 'Tina Namaga M.TI.', 'Psr. Reksoninten No. 541, Cimahi 12997, Kalbar', '2015-09-15 20:49:06', '2022-05-04 23:49:58'),
(34, 'Prima Maryadi', 'Jln. Sukajadi No. 64, Palu 93325, Malut', '1996-01-12 16:40:13', '2022-05-04 23:49:58'),
(35, 'Dewi Wahyuni', 'Ds. Barat No. 561, Tanjung Pinang 74915, Sulsel', '2001-07-07 16:12:13', '2022-05-04 23:49:58'),
(36, 'Indra Halim', 'Jln. Sugiono No. 520, Semarang 53094, Bali', '2016-07-10 23:27:39', '2022-05-04 23:49:58'),
(37, 'Prayogo Tampubolon S.E.I', 'Psr. Muwardi No. 41, Magelang 20673, Jambi', '1977-03-17 20:50:03', '2022-05-04 23:49:58'),
(38, 'Kusuma Wibowo', 'Psr. Kiaracondong No. 954, Palembang 88348, Bengkulu', '2008-10-07 09:55:26', '2022-05-04 23:49:58'),
(39, 'Langgeng Manullang', 'Ki. Bagis Utama No. 719, Palembang 92534, Kepri', '2002-11-30 18:20:21', '2022-05-04 23:49:58'),
(40, 'Kayla Widiastuti', 'Gg. R.M. Said No. 295, Sawahlunto 96614, NTT', '1982-11-07 21:33:33', '2022-05-04 23:49:58'),
(41, 'Vanesa Usamah', 'Jln. Nakula No. 319, Pematangsiantar 93402, DKI', '1988-02-12 01:20:58', '2022-05-04 23:49:58'),
(42, 'Ayu Tania Winarsih', 'Psr. Rajawali Barat No. 622, Batu 44150, Sumsel', '1972-10-14 15:41:19', '2022-05-04 23:49:58'),
(43, 'Hani Uyainah', 'Ki. Yogyakarta No. 208, Malang 45283, Gorontalo', '1987-10-15 13:31:06', '2022-05-04 23:49:58'),
(44, 'Cornelia Fujiati S.I.Kom', 'Kpg. Siliwangi No. 821, Jambi 71753, Maluku', '1972-02-15 18:43:08', '2022-05-04 23:49:58'),
(45, 'Ika Suryatmi', 'Psr. Tangkuban Perahu No. 210, Payakumbuh 43236, DKI', '1989-08-29 07:30:19', '2022-05-04 23:49:58'),
(46, 'Victoria Utami', 'Dk. Bagas Pati No. 813, Administrasi Jakarta Utara 31594, NTT', '1992-09-08 00:35:43', '2022-05-04 23:49:58'),
(47, 'Novi Puput Lailasari', 'Ki. Pacuan Kuda No. 369, Tomohon 89343, Bali', '2011-11-03 11:25:14', '2022-05-04 23:49:58'),
(48, 'Mala Karen Agustina', 'Gg. Raden No. 996, Samarinda 36968, Sultra', '1995-08-21 01:22:37', '2022-05-04 23:49:58'),
(49, 'Asmadi Adinata Setiawan S.Farm', 'Kpg. Jagakarsa No. 540, Solok 69072, Gorontalo', '1974-12-08 08:56:05', '2022-05-04 23:49:58'),
(50, 'Zulfa Purwanti', 'Psr. Kali No. 974, Bukittinggi 96081, NTT', '1981-11-28 21:21:51', '2022-05-04 23:49:58'),
(51, 'nama 1', 'jawa barat', '2023-01-27 21:53:45', '2023-02-03 23:01:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
