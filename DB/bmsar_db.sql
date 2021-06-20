-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 05:48 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmsar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_events`
--

CREATE TABLE `admin_events` (
  `event_name` char(255) DEFAULT NULL,
  `event_desc` char(255) DEFAULT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_events`
--

INSERT INTO `admin_events` (`event_name`, `event_desc`, `event_id`) VALUES
('chess', 'chess tournament is battle of brains', 1),
('chess', 'intra college chess tournament', 2),
('chess3', 'chess finale', 3),
('Football meet 2021', 'desc', 4),
('basketball championship', 'desc', 5),
('tennis titans', 'desc', 6),
('international golf', 'desc', 7),
('national rollball', 'desc', 8),
('inter college volleyball', 'desc', 9),
('badminton training', 'desc', 10),
('marathon march 21', 'desc', 11),
('Football championship', 'desc', 12),
('basketball league', 'desc', 13),
('intra college tennis team select', 'desc', 14),
('golf', 'desc', 15),
('rollball national', 'desc', 16),
('international volleyball', 'desc', 17),
('national badminton', 'desc', 18),
('national marathon', 'desc', 19),
('Football tournament', 'desc', 20),
('basketball tournament', 'desc', 21),
('national tennis', 'desc', 22),
('golf gambit', 'desc', 23),
('rollball', 'desc', 24),
('volleyball infinity', 'desc', 25),
('badminton browl', 'desc', 26),
('walkathon', 'desc', 27),
('annual cricket', 'desc', 28),
('basketball', 'desc', 29),
('T tennis', 'desc', 30),
('cricket nationals', 'desc', 31),
('rollball under 21', 'desc', 32),
('volleyball', 'desc', 33),
('badminton', 'desc', 34),
('marathon', 'desc', 35);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_name` char(255) NOT NULL,
  `passw` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_name`, `passw`) VALUES
('admin123', 's2s2s2'),
('foreign_admin', 's2s2s2'),
('global_admin', 'BMSCE123'),
('local_admin', '123456'),
('rahul_thakur', 'BMSCE');

-- --------------------------------------------------------

--
-- Table structure for table `event_date`
--

CREATE TABLE `event_date` (
  `reg_start` date DEFAULT NULL,
  `reg_due` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_date`
--

INSERT INTO `event_date` (`reg_start`, `reg_due`, `event_start`, `event_id`) VALUES
('2021-06-20', '2021-06-25', '2021-07-01', 1),
('2021-06-21', '2021-06-25', '2021-07-20', 2),
('2021-06-02', '2021-06-30', '2021-07-13', 3),
('2021-06-28', '2021-06-30', '2021-07-10', 4),
('2021-06-30', '2021-07-01', '2021-07-01', 5),
('2021-06-02', '2021-06-25', '2021-07-10', 6),
('2021-05-28', '2021-06-20', '2021-08-02', 7),
('2021-06-01', '2021-06-05', '2021-07-01', 8),
('2021-07-05', '2021-07-30', '2021-07-10', 9),
('2021-06-05', '2021-06-24', '2021-07-10', 10),
('2021-07-03', '2021-07-05', '2021-06-10', 11),
('2021-07-28', '2021-07-30', '2021-07-20', 12),
('2021-05-31', '2021-06-30', '2021-07-21', 13),
('2021-05-27', '2021-06-25', '2021-08-23', 14),
('2021-05-25', '2021-06-25', '2021-08-19', 15),
('2021-05-15', '2021-06-05', '2021-07-01', 16),
('2021-06-28', '2021-07-05', '2021-07-06', 17),
('2021-05-28', '2021-06-29', '2021-07-08', 18),
('2021-06-17', '2021-06-25', '2021-09-10', 19),
('2021-05-28', '2021-06-05', '2021-07-10', 20),
('2021-06-03', '2021-06-05', '2021-08-10', 21),
('2021-06-02', '2021-06-30', '2021-06-10', 22),
('2021-05-28', '2021-06-05', '2021-06-10', 23),
('2021-06-03', '2021-06-24', '2021-06-10', 24),
('2021-06-02', '2021-06-05', '2021-06-10', 25),
('2021-06-04', '2021-06-05', '2021-06-10', 26);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `usn` char(255) NOT NULL,
  `passw` char(255) DEFAULT NULL,
  `email` char(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`usn`, `passw`, `email`) VALUES
('1BM19CS141', 's1s1', NULL),
('1BM19CS142', 's1s1', NULL),
('1BM19CS143', 's1s1', NULL),
('1BM19CS144', 's1s1', NULL),
('1BM19CS145', 's1s1', NULL),
('1BM19CS146', 's1s1', NULL),
('1BM19CS147', 's1s1', NULL),
('1BM19CS148', 's1s1', NULL),
('1BM19CS149', 's1s1', NULL),
('1BM19CS150', 's1s1', NULL),
('1BM19CS151', 's1s1', NULL),
('1BM19CS152', 'shouri789', NULL),
('1BM19CS153', 's1s1', NULL),
('1BM19CS154', 's1s1', NULL),
('1BM19CS155', 's1s1', NULL),
('1BM19CS156', 's1s1', NULL),
('1BM19CS157', 'siddustonks', NULL),
('1BM19CS158', 's1s1', NULL),
('1BM19CS159', 's1s1', NULL),
('1BM19CS160', 's1s1', NULL),
('1BM19CS161', 's1s1', NULL),
('1BM19CS162', 's1s1', NULL),
('1BM19CS163', 's1s1', NULL),
('1BM19CS164', 's1s1', NULL),
('1BM19CS165', 's1s1', NULL),
('1BM19CS166', 's1s1', NULL),
('1BM19CS167', 's1s1', NULL),
('1BM19CS168', 's1s1', NULL),
('1BM19CS169', 's1s1', NULL),
('1BM19CS170', 's1s1', NULL),
('1BM19CS171', 's1s1', NULL),
('1BM19CS172', 's1s1', NULL),
('1BM19CS173', 's1s1', NULL),
('1BM19CS174', 's1s1', NULL),
('1BM19CS175', 's1s1', NULL),
('1BM19CS176', 's1s1', NULL),
('1BM19CS177', 's1s1', NULL),
('1BM19CS178', 's1s1', NULL),
('1BM19CS179', 's1s1', NULL),
('1BM19CS180', 's1s1', NULL),
('1BM19CS181', 's1s1', NULL),
('1BM19CS182', 's1s1', NULL),
('1BM19CS183', 's1s1', NULL),
('1BM19CS184', 's1s1', NULL),
('1BM19CS185', 's1s1', NULL),
('1BM19CS186', 's1s1', NULL),
('1BM19CS190', 's1s1', NULL),
('1BM19CS191', 's1s1', NULL),
('1BM19CS221', 'piyush123', NULL),
('1BM19CS231', 'akash321', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `fname` char(255) DEFAULT NULL,
  `lname` char(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `branch` char(25) DEFAULT NULL,
  `mail` char(100) DEFAULT NULL,
  `usn` char(255) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_events`
--
ALTER TABLE `admin_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `event_date`
--
ALTER TABLE `event_date`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`usn`,`event_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_date`
--
ALTER TABLE `event_date`
  ADD CONSTRAINT `FK_event_date` FOREIGN KEY (`event_id`) REFERENCES `admin_events` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
