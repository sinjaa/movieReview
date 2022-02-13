-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 06:36 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `letzspread`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `user_sno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone_num` varchar(14) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `msg` varchar(160) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`user_sno`, `name`, `phone_num`, `email`, `msg`, `date`) VALUES
(1, 'Sinja', '0164700000', 'sinja@gmail.com', 'hi', '2021-09-07 15:32:23'),
(2, 'Admin', '209019', 'letsspreadblogs@gmail.com', 'test', '2021-09-10 10:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `tagline` varchar(120) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `date` datetime(6) DEFAULT current_timestamp(6),
  `img_file` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'Ranada Prasad Shaha University', 'best university at Narayanganj', 'rpsu', 'Ranada Prasad Shaha University is a private University in Narayanganj Bangladesh. It\'s fast Private University in Narayanganj.[1] Officially recognized by the University Grants Commission of Bangladesh. RPSU is a coeducational Bangladeshi higher education institution and offers courses and programs leading to officially recognized higher education degrees in several areas of study.', '2021-09-08 15:01:43.000000', 'rpsu.jpg'),
(2, 'Bitcoin', 'Crypto-currency', 'bitcoin', 'Bitcoin is a decentralized digital currency, without a central bank or single administrator, that can be sent from user to user on the peer-to-peer bitcoin network without the need for intermediaries.', '2021-09-08 15:01:58.000000', 'bitcoin.jpg'),
(3, 'Cox\'s Bazar Sea Beach', 'Wonderful Longest Sea Beach!', 'coxsbazar', 'Cox\'s Bazar is one of the longest sea beaches in the world. It’s a sandy beach with an unbroken 155 Km length. The sea beach is the main attraction of the Cox\'s Bazar town. There are large number of hotels, resorts, guest houses, motels and restaurants have been established in the city. Several international standard 3 to 5 star hotels and resorts are available, which provide exclusive beachside area with accessories for the tourist. It’s crowded mainly during pick season, which starts from October through March. It’s a stunning and beautiful place to enjoy swimming, walking, and to observe sunrise and sunset. It’s a wonderful beach to visit for the family, friends and tourists and to enjoy the amazing nature.', '2021-09-07 15:48:39.473394', 'coxs.jpg'),
(5, 'database', 'dbms', 'dbms', 'database management system', '2021-09-07 15:43:40.825329', ''),
(6, 'ERE', 'TRER', 'P09OIOJY', 'KMUKJYUJYRDTYESRQTYE5RDT', '2021-09-02 15:02:24.000000', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`user_sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `user_sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
