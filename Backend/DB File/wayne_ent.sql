-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 09:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wayne_ent`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `form_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`form_data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `form_data`) VALUES
(3, '[{\"name\":\"cosplays\",\"type\":\"form name\",\"required\":false},{\"name\":\"name\",\"type\":\"text\",\"required\":true},{\"name\":\"mail\",\"type\":\"email\",\"required\":false},{\"name\":\"h\",\"type\":\"date range\",\"required\":true},{\"name\":\"j\",\"type\":\"checkbox\",\"options\":[\"a\",\"b\",\"c\"],\"required\":true}]'),
(7, '[{\"name\":\"test form\",\"type\":\"form name\",\"required\":false},{\"name\":\"name\",\"type\":\"text\",\"required\":true},{\"name\":\"Status\",\"type\":\"number\",\"required\":true}]'),
(8, '[{\"name\":\"final test\",\"type\":\"form name\",\"required\":false},{\"name\":\"Name\",\"type\":\"text\",\"required\":true},{\"name\":\"Status\",\"type\":\"number\",\"required\":true}]');

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `id` int(5) NOT NULL,
  `forms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group3`
--

CREATE TABLE `group3` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `h` varchar(40) DEFAULT NULL,
  `j` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group3`
--

INSERT INTO `group3` (`id`, `name`, `mail`, `h`, `j`) VALUES
(1, 'batman', 'batman@gotham.com', '{\"Start\":\"2024-02-01\",\"End\":\"2024-02-10\"', '[\"a\",\"b\",\"c\"]'),
(2, 'newguy', 'rdgvhbh', '{\"Start\":\"2024-02-07\",\"End\":\"2024-02-02\"', '[\"\",\"\",\"c\"]'),
(3, 'olwin', 'olwin23@gmail.com', '{\"Start\":\"2024-02-14\",\"End\":\"2024-02-14\"', '[\"a\",\"b\",\"c\"]'),
(4, 'olwin', 'olwin23@gmail.com', '{\"Start\":\"2024-02-14\",\"End\":\"2024-02-14\"', '[\"a\",\"b\",\"c\"]'),
(5, 'olwin', 'olwintest@gmail.com', '{\"Start\":\"2024-02-14\",\"End\":\"2024-02-21\"', '[\"a\",\"b\",\"c\"]'),
(6, 'test4', 'test@gmail.com', '{\"Start\":\"2024-02-07\",\"End\":\"2024-02-26\"', '[\"a\",\"b\",\"c\"]'),
(7, 'finaltest', 'testtest@gmail.com', '{\"Start\":\"2024-02-12\",\"End\":\"2024-02-20\"', '[\"a\",\"b\",\"c\"]'),
(8, 'lasttest', 'testfinal@gmail.com', '{\"Start\":\"2024-02-05\",\"End\":\"2024-02-27\"', '[\"a\",\"b\",\"c\"]');

-- --------------------------------------------------------

--
-- Table structure for table `group7`
--

CREATE TABLE `group7` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `Status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group7`
--

INSERT INTO `group7` (`id`, `name`, `Status`) VALUES
(1, 'olwin', '200'),
(2, 'test2', '200'),
(3, 'finaltest3', '200');

-- --------------------------------------------------------

--
-- Table structure for table `group8`
--

CREATE TABLE `group8` (
  `id` int(11) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group8`
--

INSERT INTO `group8` (`id`, `Name`, `Status`) VALUES
(1, 'Frontend final test', '200');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group3`
--
ALTER TABLE `group3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group7`
--
ALTER TABLE `group7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group8`
--
ALTER TABLE `group8`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `container`
--
ALTER TABLE `container`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group3`
--
ALTER TABLE `group3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `group7`
--
ALTER TABLE `group7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `group8`
--
ALTER TABLE `group8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
