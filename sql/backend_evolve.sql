-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2019 at 03:07 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_evolve`
--

-- --------------------------------------------------------

--
-- Table structure for table `footers_about`
--

CREATE TABLE `footers_about` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `path_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footers_about`
--

INSERT INTO `footers_about` (`id`, `name`, `path_url`) VALUES
(3, 'Cara Pesan', 'http://localhost:1337/carapesan'),
(4, 'Hubungi Kami', 'http://localhost:1337/hubungikami'),
(5, 'Pusat Bantuan', 'http://localhost:1337/pusatbantuan'),
(6, 'Karier', 'http://localhost:1337/karier'),
(7, 'Cicilan', 'http://localhost:1337/cicilan'),
(8, 'Tentang Kami', 'http://localhost:1337/tentangkami');

-- --------------------------------------------------------

--
-- Table structure for table `footers_sosmed`
--

CREATE TABLE `footers_sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footers_sosmed`
--

INSERT INTO `footers_sosmed` (`id`, `name`, `icon`, `path_url`) VALUES
(1, 'Twitter', 'twitter.png', 'http://twitter.com/traveloka'),
(2, 'Facebook', 'facebook.png', 'http://facebook.com/traveloka'),
(3, 'Instagram', 'instagram.png', 'http://instagram.com/traveloka'),
(4, 'Google+', 'gplus.png', 'http://plus.google.com/traveloka');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(5) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facility` text COLLATE utf8_unicode_ci NOT NULL,
  `nearby` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `footers_about`
--
ALTER TABLE `footers_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers_sosmed`
--
ALTER TABLE `footers_sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `footers_about`
--
ALTER TABLE `footers_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `footers_sosmed`
--
ALTER TABLE `footers_sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
