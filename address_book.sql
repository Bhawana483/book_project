-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 11:19 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `address_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `address` varchar(150) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `type` enum('home','work','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `master_id`, `date_added`, `date_modified`, `address`, `city`, `state`, `zipcode`, `type`) VALUES
(2, 6, '2020-12-26 13:09:14', '2020-12-26 13:09:14', '265k Nehru Nagar,, Shree Nagar Road, Ajmer', 'Ajmer', 'ra', '305001', 'home'),
(3, 7, '2020-12-26 14:56:53', '2020-12-26 14:56:53', '265k Nehru Nagar,, Shree Nagar Road, Ajmer', 'Ajmer', 'ra', '305001', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` enum('home','work','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `master_id`, `date_added`, `date_modified`, `email`, `type`) VALUES
(2, 7, '2020-12-26 14:56:53', '2020-12-26 14:56:53', 'bhawanatanwar219@gmail.com', 'work');

-- --------------------------------------------------------

--
-- Table structure for table `fax`
--

CREATE TABLE `fax` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `fax_number` varchar(25) NOT NULL,
  `type` enum('home','work','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fax`
--

INSERT INTO `fax` (`id`, `master_id`, `date_added`, `date_modified`, `fax_number`, `type`) VALUES
(2, 7, '2020-12-26 14:56:53', '2020-12-26 14:56:53', '778787878', 'work');

-- --------------------------------------------------------

--
-- Table structure for table `master_name`
--

CREATE TABLE `master_name` (
  `id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `f_name` varchar(75) DEFAULT NULL,
  `l_name` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_name`
--

INSERT INTO `master_name` (`id`, `date_added`, `date_modified`, `f_name`, `l_name`) VALUES
(2, '2020-12-26 11:41:29', '2020-12-26 11:41:29', 'bhawana', 'tanwar'),
(3, '2020-12-26 11:44:02', '2020-12-26 11:44:02', 'bhawana', 'tanwar'),
(6, '2020-12-26 13:09:14', '2020-12-26 13:09:14', 'Bhawana', 'Tanwar'),
(7, '2020-12-26 14:56:53', '2020-12-26 14:56:53', 'abc', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `personal_notes`
--

CREATE TABLE `personal_notes` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_notes`
--

INSERT INTO `personal_notes` (`id`, `master_id`, `date_added`, `date_modified`, `note`) VALUES
(2, 7, '2020-12-26 14:56:53', '2020-12-26 14:56:53', 'something');

-- --------------------------------------------------------

--
-- Table structure for table `telephone`
--

CREATE TABLE `telephone` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `tel_number` varchar(25) NOT NULL,
  `type` enum('home','work','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telephone`
--

INSERT INTO `telephone` (`id`, `master_id`, `date_added`, `date_modified`, `tel_number`, `type`) VALUES
(2, 7, '2020-12-26 14:56:53', '2020-12-26 14:56:53', '1234567890', 'home');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fax`
--
ALTER TABLE `fax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_name`
--
ALTER TABLE `master_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_notes`
--
ALTER TABLE `personal_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_id` (`master_id`);

--
-- Indexes for table `telephone`
--
ALTER TABLE `telephone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fax`
--
ALTER TABLE `fax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_name`
--
ALTER TABLE `master_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_notes`
--
ALTER TABLE `personal_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `telephone`
--
ALTER TABLE `telephone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
