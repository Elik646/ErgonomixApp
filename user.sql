-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2024 at 05:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reglog`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password_hash`) VALUES
(13, 'Elman', 'elik646@gmail.com', '$2y$10$5R7BFTRekw81vQY35T76jeaWqqypTF29kSJT3s1NR8Y4k1MqNKGXy'),
(34, 'Mammad', 'mammad@gmail.com', '$2y$10$vPraKQxzYQpSRDXNgaLHOOmLDC78zr92D6ElsOTlmzoWu8pOco7U.'),
(37, 'Sayyad', 'sayyad@gmail.com', '$2y$10$AK0Y5bI8DUDPtd5wKjCdl.ob1QQULlXctDs4XZGHbDZcl/pQs0xrq'),
(44, 'Arif', 'arif@gmail.com', '$2y$10$enhbXyCvkeT5jWZrRewt.OPTUqkm6fDkXaTP0V8t/PeDcRzy8SQXW'),
(49, 'Katrina', 'katrinamickovic@gmail.com', '$2y$10$csg/8pHLKpSqojSH6F0mTuMrRypVGThbVLKlg7.ZZjuu6W7ch/7lS'),
(50, 'Ulbinnisa', 'ulbinnisa@gmail.com', '$2y$10$VQiGbmrblALqNZwwnQnvDOfkT2QFLdQ/8Qp0iwYYSk1WkU.bzQaDG'),
(51, 'Muhiddin', 'muhiddinprogamer@gmail.com', '$2y$10$lFC4Q5RW6gP6Rbfr0kMQW.OVJR44Mzmcp84.c5V713W5wvtA/yr3u'),
(53, 'Mobiddin', 'mobiddin@gmail.com', '$2y$10$LiZLSUfvmel0KktOfkGEJO8UORfyCHWIy8SHNmulCrHEZDpWE1RKq'),
(54, 'Umud', 'umudchik@gmail.com', '$2y$10$aNhIlx0ZFA4Mqqq/tSFl.uKJc0I6ppwpKT48530/AgRdItnfVvW.S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
