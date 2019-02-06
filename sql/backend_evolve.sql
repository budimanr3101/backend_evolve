-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2019 at 02:57 PM
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
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `duration` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `status` enum('unpaid','paid') COLLATE utf8_unicode_ci NOT NULL,
  `tamu` int(11) NOT NULL,
  `kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(5) NOT NULL,
  `features_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  `path_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footers_sosmed`
--

INSERT INTO `footers_sosmed` (`id`, `name`, `icon`, `path_url`) VALUES
(1, 'Twitter', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" viewBox=\"0 0 24 24\" width=\"24\"><path fill=\"#fff\" d=\"M24,5.24619616 C23.1381518,5.63362472 22.2244738,5.88871437 21.2888889,6.00311095 C22.2743441,5.40355599 23.011565,4.45990053 23.362963,3.34826055 C22.4368334,3.90715977 21.4234284,4.30071681 20.3666667,4.51187583 C18.9039309,2.93095261 16.5800458,2.54420482 14.697916,3.56846568 C12.8157862,4.59272653 11.8433969,6.77331701 12.3259259,8.88767181 C8.4037037,8.68808731 4.92962963,6.77885447 2.6,3.87546489 C1.35009518,6.06882613 1.99033783,8.8721064 4.06296296,10.2809976 C3.31387525,10.2573637 2.58118508,10.0520791 1.92592593,9.68224406 L1.92592593,9.74249598 C1.92403325,12.02712 3.50820818,13.9955926 5.71111111,14.4459118 C5.30589257,14.5601073 4.88715867,14.6171271 4.46666667,14.6153703 C4.16833737,14.6152689 3.87069617,14.5862671 3.57777778,14.5287582 C4.19372273,16.4838865 5.96631993,17.8227307 7.98518519,17.857677 C6.31435628,19.1921316 4.25059961,19.916333 2.12592593,19.9137739 C1.74962306,19.914049 1.3736416,19.8914141 1,19.8459905 C3.15819874,21.2541055 5.66899891,22.0017939 8.23333333,21.9999968 C16.9148148,21.9999968 21.6592593,14.6906852 21.6592593,8.34917024 C21.6592593,8.14205425 21.6555556,7.93117252 21.6444444,7.72782228 C22.5702475,7.05164173 23.3682544,6.2109251 24,5.24619616\"/></svg>', 'http://twitter.com/traveloka'),
(2, 'Facebook', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" viewBox=\"0 0 24 24\" width=\"24\"><path fill=\"#fff\" d=\"M7,8.60454545 L9.35682098,8.60454545 L9.35682098,6.29545455 C9.35682098,5.27727273 9.38385907,3.70454545 10.1138878,2.73181818 C10.8889799,1.7 11.9479721,1 13.7730438,1 C16.7472347,1 18,1.42727273 18,1.42727273 L17.4096682,4.95 C17.4096682,4.95 16.4272839,4.66363636 15.5124949,4.66363636 C14.5977059,4.66363636 13.7730438,4.99545455 13.7730438,5.91818182 L13.7730438,8.60454545 L17.5313396,8.60454545 L17.2744777,12.0454545 L13.7775502,12.0454545 L13.7775502,24 L9.35682098,24 L9.35682098,12.0454545 L7,12.0454545 L7,8.60454545 Z\"/></svg>', 'http://facebook.com/traveloka'),
(3, 'Instagram', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" viewBox=\"0 0 24 24\" width=\"24\"><path fill=\"#fff\" d=\"M1,15.6215519 L1,8.37408216 C1.01798289,8.30691395 1.02967583,8.23821793 1.03492756,8.16888271 C1.06112324,7.31752332 1.10041675,6.47052987 1.30561619,5.6410002 C1.77713832,3.76800953 2.86425878,2.40583449 4.64993054,1.63306212 C5.61917047,1.21393134 6.64953364,1.09168486 7.69299464,1.0480254 C7.92002381,1.03929351 8.15141893,1.01746378 8.3784481,1 L15.6259178,1 C15.6930861,1.01798289 15.7617821,1.02967583 15.8311173,1.03492756 C16.6824767,1.06112324 17.5294701,1.10041675 18.3589998,1.30561619 C20.2319905,1.77713832 21.5941655,2.86425878 22.3669379,4.64993054 C22.7860687,5.61917047 22.9083151,6.64953364 22.9519746,7.69299464 C22.9607065,7.92002381 22.9825362,8.15141893 23,8.3784481 L23,15.6259178 C22.9820171,15.6930861 22.9703242,15.7617821 22.9650724,15.8311173 C22.9388768,16.6824767 22.8995833,17.5294701 22.6943838,18.3589998 C22.2228617,20.2319905 21.1357412,21.5941655 19.3500695,22.3669379 C18.3808295,22.7860687 17.3504664,22.9083151 16.3070054,22.9519746 C16.0799762,22.9607065 15.8485811,22.9825362 15.6215519,23 L8.37408216,23 C8.30691395,22.9820171 8.23821793,22.9703242 8.16888271,22.9650724 C7.31752332,22.9388768 6.47052987,22.8995833 5.6410002,22.6943838 C3.76800953,22.2228617 2.40583449,21.1357412 1.63306212,19.3500695 C1.21393134,18.3808295 1.09168486,17.3504664 1.0480254,16.3070054 C1.03929351,16.0799762 1.01746378,15.8485811 1,15.6215519 Z M2.96467553,11.997817 L2.9996031,11.997817 C2.9996031,12.9146656 2.98213931,13.8315142 3.00396904,14.7483628 C3.02579877,15.61282 3.05636039,16.4772772 3.1436793,17.3373685 C3.22663227,18.1668982 3.52351657,18.9309387 4.08672356,19.5727327 C4.86386188,20.4546537 5.88112721,20.830125 7.00754118,20.8956142 C8.30422703,20.9742012 9.60964477,20.996031 10.9106966,21.0091288 C12.1899186,21.0265926 13.4735066,21.0178607 14.7527287,20.991665 C15.6171859,20.9742012 16.4816432,20.9392737 17.3417345,20.8519548 C18.1712641,20.7690018 18.9353046,20.4721175 19.5770986,19.9089105 C20.4590196,19.1317722 20.834491,18.1145068 20.8999802,16.9880929 C20.9785672,15.691407 21.0003969,14.3859893 21.0134947,13.0849375 C21.0309585,11.8057154 21.0222266,10.5264934 20.996031,9.24290534 C20.9785672,8.3784481 20.9436396,7.51399087 20.8563207,6.65389958 C20.7733677,5.82436991 20.4764834,5.06032943 19.9132764,4.41853542 C19.1361381,3.53661441 18.1188728,3.16114308 16.9924588,3.0956539 C15.695773,3.01706688 14.3903552,2.99523715 13.0893034,2.98213931 C11.8100814,2.96467553 10.5264934,2.96467553 9.24727128,2.9996031 C8.29549514,3.02579877 7.33935305,3.04326255 6.40067474,3.18733876 C4.80273864,3.43619766 3.71561818,4.36177813 3.28775551,5.95098234 C3.15045035,6.47774803 3.07138975,7.01799548 3.05199444,7.56201627 C3.00396904,9.04207184 2.99523715,10.5221274 2.96467553,11.997817 Z M12.0109149,6.34391744 C15.1369319,6.34828339 17.6604485,8.8848978 17.6560826,12.0196468 C17.6517166,15.1369319 15.1151022,17.6560826 11.9934511,17.6517166 C8.87179996,17.6473507 6.34391744,15.1107363 6.34828339,11.9759873 C6.35264934,8.86306807 8.88926374,6.3395515 12.0109149,6.34391744 Z M12.0065489,8.33915459 C10.0025799,8.33915459 8.34352054,9.9763842 8.33915459,11.9541576 C8.33915459,13.9974201 9.95892042,15.6564795 11.9585235,15.6564795 C14.006152,15.6564795 15.6564795,14.0279817 15.6564795,12.0065489 C15.6590299,11.03614 15.2758614,10.1044889 14.591316,9.4166681 C13.9067705,8.7288473 12.9769589,8.34123616 12.0065489,8.33915459 L12.0065489,8.33915459 Z M19.1972614,6.12998611 C19.194852,6.86243148 18.5995604,7.45446938 17.8671128,7.45286445 C17.1346653,7.45125952 16.5419739,6.85661852 16.5427744,6.12416963 C16.5435749,5.39172074 17.1375646,4.79837666 17.8700139,4.79837269 C18.2227438,4.79848714 18.56093,4.93895817 18.8099378,5.18878511 C19.0589457,5.43861205 19.1983053,5.77725773 19.1972614,6.12998611 Z\"/></svg>', 'http://instagram.com/traveloka'),
(4, 'Google+', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" viewBox=\"0 0 50 50\" stroke-width=\"0\" fill=\"none\" height=\"24\" stroke=\"currentColor\" stroke-linecap=\"round\" width=\"24\"><path d=\"M45,1H5C2.8,1,1,2.8,1,5v40c0,2.2,1.8,4,4,4h40c2.2,0,4-1.8,4-4V5C49,2.8,47.2,1,45,1z\" fill=\"#FFFFFF\"/><g><g><path d=\"M20.3,10.5c3.3-1.1,7-1.1,10.3,0.1c1.8,0.7,3.5,1.7,4.9,3.1c-0.5,0.5-1,1-1.5,1.5    c-0.9,0.9-1.9,1.9-2.8,2.8c-0.9-0.9-2.1-1.6-3.3-1.9c-1.4-0.4-3-0.5-4.5-0.2c-1.7,0.4-3.3,1.3-4.6,2.5c-1,1-1.8,2.3-2.2,3.6    c-1.7-1.3-3.3-2.6-5-3.9C13.4,14.6,16.6,11.8,20.3,10.5z\" fill=\"#EA4335\"/></g><g><path d=\"M10.3,22c0.3-1.3,0.7-2.6,1.3-3.9c1.7,1.3,3.3,2.6,5,3.9c-0.7,1.9-0.7,4,0,6c-1.7,1.3-3.3,2.6-5,3.9    C10.1,28.8,9.6,25.3,10.3,22z\" fill=\"#FBBC05\"/></g><g><path d=\"M25.3,22.1c4.8,0,9.6,0,14.4,0c0.5,2.7,0.4,5.5-0.4,8.1c-0.7,2.4-2,4.6-3.9,6.4c-1.6-1.3-3.2-2.5-4.9-3.8    c1.6-1.1,2.7-2.8,3.1-4.7c-2.8,0-5.6,0-8.3,0C25.3,26.1,25.3,24.1,25.3,22.1z\" fill=\"#4285F4\"/></g><g><path d=\"M11.6,31.9c1.7-1.3,3.3-2.6,5-3.9c0.6,1.9,1.9,3.6,3.5,4.7c1,0.7,2.2,1.2,3.4,1.5c1.2,0.2,2.4,0.2,3.7,0    c1.2-0.2,2.4-0.7,3.4-1.3c1.6,1.3,3.2,2.5,4.9,3.8c-1.8,1.6-3.9,2.7-6.3,3.3c-2.6,0.6-5.3,0.6-7.8-0.1c-2-0.5-3.9-1.5-5.6-2.8    C14.1,35.6,12.6,33.8,11.6,31.9z\" fill=\"#34A853\"/></g></g></svg>', 'http://gplus.com/traveloka');

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

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_belakang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handphone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('pria','wanita') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama_depan`, `nama_belakang`, `tanggal_lahir`, `handphone`, `gender`) VALUES
(1, 'budiman', 'rahardjo', '31jan1991', '08978582314', 'pria'),
(2, 'rahardjo', 'budiman', '30Jan1990', '08978582315', 'wanita');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_room` (`id_room`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`id_hotel`) REFERENCES `hotel_detail` (`id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`id_room`) REFERENCES `hotel_room` (`id`);

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
