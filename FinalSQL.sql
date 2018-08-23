-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2018 at 08:49 PM
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
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `forumid` int(11) NOT NULL,
  `sport` varchar(50) NOT NULL,
  `reqInBrief` varchar(200) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`forumid`, `sport`, `reqInBrief`, `description`, `date`, `faculty`) VALUES
(1, 'Volleyball (Women)', 'one volleyball ', 'for freshers \r\n                    ', '2018-07-10', 'Faculty of Science'),
(2, 'Beach Volleyball (Men)', 'sdfv', '\r\n                 asdv   ', '2018-08-07', 'Faculty of Science');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `reg_no` varchar(11) DEFAULT NULL,
  `n_id` varchar(20) DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `faculty` varchar(30) DEFAULT NULL,
  `sport` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `full_name`, `reg_no`, `n_id`, `contact_no`, `age`, `email_address`, `position`, `year`, `faculty`, `sport`, `gender`, `description`) VALUES
(1001, 'Pasindu Gunarathne', '45', '123456789V', 711234567, 24, 'asfs', 'sfd', 2018, 'UCSC', 'Football', 'Male', 'agegrg'),
(1008, 'Mohan', '12', '12', 12, 12, 'm@gmail.com', '-', 2018, 'UCSC', 'Chess', 'male', ''),
(1009, 'Dilith Ranmal', '2014IS123', '946354125V', 753214569, 23, 'dilith@gmail.com', 'parser', 2018, 'UCSC', 'Volleyball', 'male', 'Inter University champions 2017'),
(1010, 'Tashmin Fernando', '2014SC196', '943654189V', 756321456, 23, 'tashmin@gmail.com', 'parser', 2018, 'Faculty of Science', 'Volleyball', 'male', 'Inter University 1st runnerup 2016'),
(1011, 'Sandun Abeckoon', '2015Mgt456', '953621456V', 716935452, 24, 'sandun@gmail.com', 'center', 2018, 'Faculty of Management', 'Volleyball', 'male', 'Inter University champions 2017'),
(1021, 'mohan', '12', '12', 12, 12, 'k@gmail.comn', 'parswer', 2018, 'UCSC', 'Football', 'male', ''),
(1022, 'Yohan', '345', '935423194V', 716398524, 25, 'Yohan@gmail.com', 'center back', 2018, 'UCSC', 'Football', 'male', 'Inter University Championship 2017'),
(1024, 'Damiru', '12873', '9465678546v', 716398524, 15, 'damiru@gmail.com', 'center', 2017, 'UCSC', 'Rugby (Men)', 'male', ''),
(1025, 'Nisal', '546321', '956346896V', 713698526, 23, 'nisal@gmail.com', 'Midfielder', 2018, 'UCSC', 'Football', 'male', ''),
(1026, 'Lasantha devapriya', '2014mg34', '943569789V', 779635478, 25, 'lasantha@gmail.com', 'forward', 2018, 'Faculty of Management', 'Hockey (Men)', 'male', ''),
(1027, 'Heshan Karunarathne', '2016SC25', '956345128V', 787456821, 24, 'heshan@gmail.com', 'single', 2018, 'Faculty of Science', 'Karate (Men)', 'male', NULL),
(1028, 'Heshan Karunarathne', '2016SC25', '956345128V', 787456821, 24, 'heshan@gmail.com', 'single', 2018, 'Faculty of Science', 'Karate (Men)', 'male', NULL),
(1029, 'Lasantha devapriya', '2014mg34', '943569789V', 779635478, 25, 'lasantha@gmail.com', 'forward', 2018, 'Faculty of Management', 'Hockey (Men)', 'male', NULL),
(1030, 'Lasantha devapriya', '2014mg34', '943569789V', 779635478, 25, 'lasantha@gmail.com', 'forward', 2018, 'Faculty of Management', 'Hockey (Men)', 'male', NULL),
(1031, 'Gayani Chathurangi', '2014mg178', '9563451235V', 751239658, 24, 'gayani@gmail.com', 'center', 2018, 'Faculty of Management', 'Volleyball (Women)', 'female', 'SLUG 2017');

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
(19, 'Mohan', '123'),
(27, 'qq', '123'),
(28, 'qw', '123'),
(29, 'asdfgh', '123');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `sponsorId` int(11) NOT NULL,
  `sport` varchar(50) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `budget` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`sponsorId`, `sport`, `eventName`, `venue`, `budget`, `description`, `date`, `faculty`) VALUES
(1, 'Beach Volleyball (Men)', 'Inter Faculty', 'UOC ground', '1000000', '\r\n          Annual event          ', '2018-08-01', 'Faculty of Management'),
(3, 'Rugby (Women)', 'Freshers', 'UOC ground', '50000', 'need of practice tools', '2018-08-20', 'Faculty of Management');

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
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `nic` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `joined_date` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `staff_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`nic`, `name`, `email`, `dob`, `joined_date`, `address`, `contact_no`, `password`, `staff_type`) VALUES
('942770405V', 'bassa', 'bassa@gmail.com', '2018-08-09', '2018-08-16', '145,AKRAWITA, kosgama', 776709705, '', 'Male'),
('942478234V', 'pasidu', 'pasindu@gmail.com', '2018-08-02', '2018-08-10', '245,pandura', 769854236, '45698', 'staff_1'),
('934387279V', 'rakitha', 'rakitha@4049.com', '2018-08-01', '2018-08-10', '131,434343', 78932146, '123654', 'data_entry'),
('0123456', 'qwerty', 'qwerty@gmail.com', '1994-08-02', '2018-08-03', '125,ghjm,lkju', 798564123, '12345', 'data_entry');

-- --------------------------------------------------------

--
-- Table structure for table `tournament_1`
--

CREATE TABLE `tournament_1` (
  `sport` varchar(20) NOT NULL,
  `ucsc` int(11) DEFAULT NULL,
  `fos` int(11) DEFAULT NULL,
  `mgt` int(11) DEFAULT NULL,
  `art` int(11) DEFAULT NULL,
  `med` int(11) DEFAULT NULL,
  `law` int(11) DEFAULT NULL,
  `sripali` int(11) DEFAULT NULL,
  `mmi` int(11) DEFAULT NULL,
  `nur` int(11) DEFAULT NULL,
  `tech` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `result_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournament_1`
--

INSERT INTO `tournament_1` (`sport`, `ucsc`, `fos`, `mgt`, `art`, `med`, `law`, `sripali`, `mmi`, `nur`, `tech`, `year`, `type`, `result_id`) VALUES
('Football', 7, 3, 5, 1, 1, 1, 1, 0, 1, 0, 2018, 'Freshers', 1),
('Tennis (Men)', 7, 3, 0, 0, 1, 0, 5, 0, 1, 0, 2018, 'Freshers', 2),
('Netball', 7, 1, 1, 1, 5, 3, 0, 1, 0, 1, 2018, 'Faculty', 3),
('Volleyball (Women)', 1, 3, 1, 0, 5, 1, 0, 1, 7, 3, 2018, 'Freshers', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tournament_2`
--

CREATE TABLE `tournament_2` (
  `sport` varchar(20) NOT NULL,
  `uoc` int(11) NOT NULL,
  `uom` int(11) NOT NULL,
  `uor` int(11) NOT NULL,
  `uob` int(11) NOT NULL,
  `uoj` int(11) NOT NULL,
  `ujp` int(11) NOT NULL,
  `uou` int(11) NOT NULL,
  `uok` int(10) NOT NULL,
  `uop` int(10) NOT NULL,
  `urj` int(10) NOT NULL,
  `year` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `result2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournament_2`
--

INSERT INTO `tournament_2` (`sport`, `uoc`, `uom`, `uor`, `uob`, `uoj`, `ujp`, `uou`, `uok`, `uop`, `urj`, `year`, `type`, `result2_id`) VALUES
('Volleyball (Men)', 3, 1, 5, 7, 1, 1, 1, 1, 1, 0, 2018, 'uni', 1),
('Elle (Women)', 5, 3, 5, 0, 0, 7, 1, 3, 1, 0, 2018, 'uni', 2),
('Football', 7, 1, 1, 1, 5, 1, 1, 1, 3, 1, 2018, 'uni', 3),
('Volleyball (Women)', 7, 1, 0, 3, 5, 1, 0, 1, 1, 0, 2018, 'uni', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`forumid`);

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
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`sponsorId`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`Sport_Id`);

--
-- Indexes for table `tournament_1`
--
ALTER TABLE `tournament_1`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `tournament_2`
--
ALTER TABLE `tournament_2`
  ADD PRIMARY KEY (`result2_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `forumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1032;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `sponsorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `Sport_Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tournament_1`
--
ALTER TABLE `tournament_1`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tournament_2`
--
ALTER TABLE `tournament_2`
  MODIFY `result2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
