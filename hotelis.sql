-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 11:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
SET FOREIGN_KEY_CHECKS=OFF;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelis`
--

-- --------------------------------------------------------

--
-- Table structure for table `cleaners`
--

DROP TABLE IF EXISTS `cleaners`;
CREATE TABLE `cleaners` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `hotel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
CREATE TABLE `guests` (
  `id` int(11) NOT NULL,
  `firstName` varchar(64) DEFAULT NULL,
  `lastName` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `firstName`, `lastName`) VALUES
(1, NULL, NULL),
(2, 'Jane', 'Doe'),
(3, 'John', 'Smith');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`) VALUES
(1, 'Ritz'),
(2, 'Liberty'),
(3, 'Grand');

-- --------------------------------------------------------

--
-- Table structure for table `receptions`
--

DROP TABLE IF EXISTS `receptions`;
CREATE TABLE `receptions` (
  `id` int(11) NOT NULL,
  `hotelFK` int(11) DEFAULT NULL,
  `description` text DEFAULT '',
  `hotel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `roomNumber` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `toClean` tinyint(1) DEFAULT NULL,
  `guest` int(11) DEFAULT NULL,
  `hotel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomNumber`, `floor`, `price`, `toClean`, `guest`, `hotel`) VALUES
(1, 101, 1, 150, 0, 1, 3),
(2, 102, 1, 150, 0, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cleaners`
--
ALTER TABLE `cleaners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CleanerInHotel` (`hotel`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptions`
--
ALTER TABLE `receptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ReceptionInHotel` (`hotel`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_GuestInRoom` (`guest`),
  ADD KEY `FK_RoomInHotel` (`hotel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cleaners`
--
ALTER TABLE `cleaners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receptions`
--
ALTER TABLE `receptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cleaners`
--
ALTER TABLE `cleaners`
  ADD CONSTRAINT `FK_CleanerInHotel` FOREIGN KEY (`hotel`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receptions`
--
ALTER TABLE `receptions`
  ADD CONSTRAINT `FK_ReceptionInHotel` FOREIGN KEY (`hotel`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `FK_GuestInRoom` FOREIGN KEY (`guest`) REFERENCES `guests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_RoomInHotel` FOREIGN KEY (`hotel`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

SET FOREIGN_KEY_CHECKS=ON;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
