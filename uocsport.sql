-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2018 at 06:17 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uocsport`
--

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `position` varchar(50) NOT NULL,
  `sport` varchar(50) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `password`) VALUES
(1, 'Pasindu', '123'),
(2, 'admin', '123'),
(4, 'PK', '123'),
(5, 'Tom', '123'),
(6, 'Kane', '123'),
(7, 'Lahiru', '123'),
(8, 'abc', '123'),
(9, 'Dishan', '123'),
(19, 'Mohan', '123');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `Sport_Id` int(10) NOT NULL,
  `Sport_Name` varchar(50) NOT NULL,
  `Captain` varchar(50) NOT NULL,
  `Vice-Captain` varchar(50) NOT NULL,
  `Coach` varchar(50) NOT NULL,
  `In-Charge` varchar(50) NOT NULL,
  `Booked-Time` datetime(6) NOT NULL,
  `Achievements` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sports_cordinator`
--

CREATE TABLE `sports_cordinator` (
  `sport_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `sport` varchar(30) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `rank` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tournament_1`
--

CREATE TABLE `tournament_1` (
  `sport` varchar(20) NOT NULL,
  `UCSC` int(11) NOT NULL,
  `Faculty of science` int(11) NOT NULL,
  `Faculty of management` int(11) NOT NULL,
  `Faculty of art` int(11) NOT NULL,
  `Faculty of medicine` int(11) NOT NULL,
  `Faculty of law` int(11) NOT NULL,
  `Sripali mandapaya` int(11) NOT NULL,
  `MMI` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tournament_2`
--

CREATE TABLE `tournament_2` (
  `sport` varchar(20) NOT NULL,
  `University of Colombo` int(11) NOT NULL,
  `University of Moratuwa` int(11) NOT NULL,
  `University of Ruhuna` int(11) NOT NULL,
  `University of Sabaragamuwa` int(11) NOT NULL,
  `University of Jaffna` int(11) NOT NULL,
  `University of Sri Jayawardenapura` int(11) NOT NULL,
  `University of South Eastern` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `player_id` (`player_id`),
  ADD UNIQUE KEY `player_id_2` (`player_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
