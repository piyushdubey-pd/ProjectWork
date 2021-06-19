-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 02:05 PM
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
  `event_id` int(11) NOT NULL,
  `event_name` char(255) DEFAULT NULL,
  `event_desc` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_events`
--

INSERT INTO `admin_events` (`event_id`, `event_name`, `event_desc`) VALUES
(1, 'chess', 'chess tournament is battle of brains'),
(2, 'chess', 'intra college chess tournament'),
(3, 'chess3', 'chess finale'),
(4, 'Football meet 2021', 'desc'),
(5, 'basketball championship', 'desc'),
(6, 'tennis titans', 'desc'),
(7, 'international golf', 'desc'),
(8, 'national rollball', 'desc'),
(9, 'inter college volleyball', 'desc'),
(10, 'badminton training', 'desc'),
(11, 'marathon march 21', 'desc'),
(12, 'Football championship', 'desc'),
(13, 'basketball league', 'desc'),
(14, 'intra college tennis team select', 'desc'),
(15, 'golf', 'desc'),
(16, 'rollball national', 'desc'),
(17, 'international volleyball', 'desc'),
(18, 'national badminton', 'desc'),
(19, 'national marathon', 'desc'),
(20, 'Football tournament', 'desc'),
(21, 'basketball tournament', 'desc'),
(22, 'national tennis', 'desc'),
(23, 'golf gambit', 'desc'),
(24, 'rollball', 'desc'),
(25, 'volleyball infinity', 'desc'),
(26, 'badminton browl', 'desc'),
(27, 'walkathon', 'desc'),
(28, 'annual cricket', 'desc'),
(29, 'basketball', 'desc'),
(30, 'T tennis', 'desc'),
(31, 'cricket nationals', 'desc'),
(32, 'rollball under 21', 'desc'),
(33, 'volleyball', 'desc'),
(34, 'badminton', 'desc'),
(35, 'marathon', 'desc');

-- --------------------------------------------------------

--
-- Table structure for table `event_date`
--

CREATE TABLE `event_date` (
  `event_id` int(11) NOT NULL,
  `reg_start` date DEFAULT NULL,
  `reg_due` date DEFAULT NULL,
  `event_start` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_date`
--

INSERT INTO `event_date` (`event_id`, `reg_start`, `reg_due`, `event_start`) VALUES
(1, '2021-05-30', '2021-06-05', '2021-06-10'),
(2, '2021-06-10', '2021-06-15', '2021-06-20'),
(3, '2021-06-02', '2021-06-05', '2021-06-10'),
(4, '2021-05-28', '2021-06-05', '2021-06-10'),
(5, '2021-06-28', '2021-06-05', '2021-06-10'),
(6, '2021-06-02', '2021-06-05', '2021-06-10'),
(7, '2021-05-28', '2021-06-05', '2021-06-10'),
(8, '2021-05-28', '2021-06-05', '2021-06-10'),
(9, '2021-05-28', '2021-06-30', '2021-06-10'),
(10, '2021-06-02', '2021-06-15', '2021-06-10'),
(11, '2021-06-03', '2021-06-25', '2021-06-10'),
(12, '2021-07-28', '2021-06-05', '2021-06-10'),
(13, '2021-05-31', '2021-06-05', '2021-06-10'),
(14, '2021-05-27', '2021-06-05', '2021-06-10'),
(15, '2021-05-25', '2021-06-05', '2021-06-10'),
(16, '2021-05-15', '2021-06-05', '2021-06-10'),
(17, '2021-05-28', '2021-06-05', '2021-06-10'),
(18, '2021-05-28', '2021-06-05', '2021-06-10'),
(19, '2021-05-17', '2021-06-05', '2021-06-10'),
(20, '2021-05-28', '2021-06-05', '2021-06-10'),
(21, '2021-06-03', '2021-06-05', '2021-06-10'),
(22, '2021-06-02', '2021-06-05', '2021-06-10'),
(23, '2021-05-28', '2021-06-05', '2021-06-10'),
(24, '2021-06-03', '2021-06-05', '2021-06-10'),
(25, '2021-06-02', '2021-06-05', '2021-06-10'),
(26, '2021-06-04', '2021-06-05', '2021-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `usn` char(255) NOT NULL,
  `passw` char(255) DEFAULT NULL,
  `slno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`usn`, `passw`, `slno`) VALUES
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
  `usn` char(10) NOT NULL,
  `branch` char(25) DEFAULT NULL,
  `mail` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`fname`, `lname`, `year`, `usn`, `branch`, `mail`) VALUES
('Piyush', 'Dubey', 2, '1BM19CS221', 'CSE', 'piyushdubey.te19@bmsce.ac.in'),
('Akash', 'Shrivastava', 2, '1BM19CS231', 'CSE', 'akash.te19@bmsce.ac.in'),
('Piyush1', 'Dubey1', 2, '1BM19CS241', 'CSE', 'piyushdubey72090@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_events`
--
ALTER TABLE `admin_events`
  ADD PRIMARY KEY (`event_id`);

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
  ADD PRIMARY KEY (`usn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_events`
--
ALTER TABLE `admin_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_date`
--
ALTER TABLE `event_date`
  ADD CONSTRAINT `event_date_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `admin_events` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
