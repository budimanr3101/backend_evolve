-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2019 at 02:02 PM
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
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `facility_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `facility_name`, `icon`) VALUES
(1, 'Wifi', 'wifi.png'),
(2, 'AC', 'ac.png'),
(3, 'Parking', 'parking.png'),
(4, 'Elevator', 'elevator.png'),
(5, 'Swimming Pool', 'swimmingpool.png'),
(6, 'Gym', 'gym.png');

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
(1, 'Twitter', 'twitter.png', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" viewBox=\"0 0 24 24\" width=\"24\"><path fill=\"#fff\" d=\"M24,5.24619616 C23.1381518,5.63362'),
(2, 'Facebook', 'facebook.png', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" viewBox=\"0 0 24 24\" width=\"24\"><path fill=\"#fff\" d=\"M7,8.60454545 L9.35682098,8.604545'),
(3, 'Instagram', 'instagram.png', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" viewBox=\"0 0 24 24\" width=\"24\"><path fill=\"#fff\" d=\"M1,15.6215519 L1,8.37408216 C1.017'),
(4, 'Google+', 'gplus.png', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" viewBox=\"0 0 50 50\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" width=\"24\"><path d=\"M45,1H5C2.8,1,1,2.8,1,5v40c0,2.2,1.8,4,4,4h40c');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_detail`
--

CREATE TABLE `hotel_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(5) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hotel | Apartment'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_detail`
--

INSERT INTO `hotel_detail` (`id`, `name`, `address`, `phone`, `city`, `rating`, `type`) VALUES
(1, 'Kempinski', 'Bundaran HI', '021564526\n', 'Jakarta Pusat\n', 5, 'Hotel'),
(2, 'Four Season', 'Gatot Subroto', '0215465467\n', 'Jakarta Selatan', 5, 'Hotel'),
(3, 'Mulia', 'Bundaran Senayan', '0218679879', 'Jakarta Selatan', 5, 'Hotel'),
(4, 'Ritz Carlton', 'Gatot Mega Kuningan', '0218896789', 'Jakarta Selatan', 5, 'Hotel'),
(5, 'All Season', 'Bundaran Gatot', '021627682', 'Jakarta Barat', 3, 'Hotel');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facility`
--

CREATE TABLE `hotel_facility` (
  `id` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `id_facility` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_facility`
--

INSERT INTO `hotel_facility` (`id`, `id_hotel`, `id_facility`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 4),
(6, 2, 5),
(7, 2, 6),
(8, 3, 1),
(9, 3, 3),
(10, 3, 4),
(11, 4, 4),
(12, 4, 5),
(13, 4, 1),
(14, 5, 1),
(15, 5, 2),
(16, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_photo`
--

CREATE TABLE `hotel_photo` (
  `id` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_photo`
--

INSERT INTO `hotel_photo` (`id`, `id_hotel`, `photo_url`) VALUES
(1, 1, 'photo1.png'),
(2, 1, 'photo2.png'),
(3, 2, 'photo1.png'),
(4, 2, 'photo2.png'),
(5, 2, 'photo3.png'),
(6, 4, 'photo1.png'),
(7, 3, 'photo1.png'),
(8, 5, 'photo1.png'),
(9, 5, 'photo2.png');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room`
--

CREATE TABLE `hotel_room` (
  `id` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Tersedia','Penuh') COLLATE utf8_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_room`
--

INSERT INTO `hotel_room` (`id`, `id_hotel`, `type`, `status`, `price`) VALUES
(1, 1, 'Twinbed', 'Tersedia', 2000000),
(2, 1, 'Queen', 'Tersedia', 3000000),
(3, 1, 'King', 'Penuh', 2000000),
(4, 2, 'King', 'Tersedia', 3000000),
(5, 3, 'Twin', 'Tersedia', 2000000),
(6, 3, 'Queen', 'Tersedia', 3000000),
(7, 4, 'Twin', 'Tersedia', 1000000),
(8, 4, 'King', 'Penuh', 1000000),
(9, 5, 'Twin', 'Penuh', 1000000),
(10, 5, 'Queen', 'Tersedia', 1000000),
(11, 5, 'King', 'Tersedia', 4000000);

-- --------------------------------------------------------

--
-- Table structure for table `room_photo`
--

CREATE TABLE `room_photo` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room_photo`
--

INSERT INTO `room_photo` (`id`, `id_room`, `photo_url`) VALUES
(1, 1, 'room1.png'),
(2, 1, 'room2.png'),
(3, 1, 'room3.png'),
(4, 2, 'room1.png'),
(5, 2, 'room2.png'),
(6, 2, 'room3.png'),
(7, 3, 'room1.png'),
(8, 3, 'room2.png'),
(9, 3, 'room3.png'),
(10, 4, 'room1.png'),
(11, 4, 'room2.png'),
(12, 4, 'room3.png'),
(13, 5, 'room1.png'),
(14, 5, 'room2.png'),
(15, 5, 'room3.png'),
(16, 6, 'room1.png'),
(17, 6, 'room2.png'),
(18, 6, 'room3.png'),
(19, 7, 'room1.png'),
(20, 7, 'room2.png'),
(21, 7, 'room3.png'),
(22, 8, 'room1.png'),
(23, 8, 'room2.png'),
(24, 8, 'room3.png'),
(25, 9, 'room1.png'),
(26, 9, 'room2.png'),
(27, 9, 'room3.png'),
(28, 10, 'room1.png'),
(29, 10, 'room2.png'),
(30, 10, 'room3.png'),
(31, 11, 'room1.png'),
(32, 11, 'room2.png'),
(33, 11, 'room3.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `hotel_detail`
--
ALTER TABLE `hotel_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_facility`
--
ALTER TABLE `hotel_facility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_facility` (`id_facility`);

--
-- Indexes for table `hotel_photo`
--
ALTER TABLE `hotel_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indexes for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indexes for table `room_photo`
--
ALTER TABLE `room_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_room` (`id_room`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `hotel_detail`
--
ALTER TABLE `hotel_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel_facility`
--
ALTER TABLE `hotel_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hotel_photo`
--
ALTER TABLE `hotel_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hotel_room`
--
ALTER TABLE `hotel_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room_photo`
--
ALTER TABLE `room_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel_facility`
--
ALTER TABLE `hotel_facility`
  ADD CONSTRAINT `hotel_facility_ibfk_2` FOREIGN KEY (`id_hotel`) REFERENCES `hotel_detail` (`id`),
  ADD CONSTRAINT `hotel_facility_ibfk_3` FOREIGN KEY (`id_facility`) REFERENCES `facilities` (`id`);

--
-- Constraints for table `hotel_photo`
--
ALTER TABLE `hotel_photo`
  ADD CONSTRAINT `hotel_photo_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel_detail` (`id`);

--
-- Constraints for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD CONSTRAINT `hotel_room_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel_detail` (`id`);

--
-- Constraints for table `room_photo`
--
ALTER TABLE `room_photo`
  ADD CONSTRAINT `room_photo_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `hotel_room` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
