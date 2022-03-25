-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 04:47 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Chan Zhi Lam', 'j18027823@student.newinti.edu.my', 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2019-11-21 07:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `id` int(11) NOT NULL,
  `studentId` char(20) NOT NULL,
  `studentClass` varchar(100) DEFAULT NULL,
  `attndStatus` char(1) DEFAULT NULL,
  `attndShift` char(2) DEFAULT NULL,
  `attndDate` date DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `attndMarkBy` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`id`, `studentId`, `studentClass`, `attndStatus`, `attndShift`, `attndDate`, `postingDate`, `attndMarkBy`) VALUES
(82, '5', 'STA 2101', '1', '1', '2019-12-02', '2019-12-02 15:35:37', '8'),
(83, '6', 'STA 2101', '0', '1', '2019-12-02', '2019-12-02 15:35:37', '8'),
(84, '7', 'STA 2101', '1', '1', '2019-12-02', '2019-12-02 15:35:37', '8'),
(85, '8', 'STA 2101', '2', '1', '2019-12-02', '2019-12-02 15:35:37', '8'),
(86, '9', 'STA 2101', '2', '1', '2019-12-02', '2019-12-02 15:35:37', '8'),
(87, '10', 'STA 2101', '1', '1', '2019-12-02', '2019-12-02 15:35:37', '8'),
(88, '5', 'STA 2101', '1', '2', '2019-12-02', '2019-12-02 15:35:56', '8'),
(89, '6', 'STA 2101', '1', '2', '2019-12-02', '2019-12-02 15:35:56', '8'),
(90, '7', 'STA 2101', '0', '2', '2019-12-02', '2019-12-02 15:35:56', '8'),
(91, '8', 'STA 2101', '1', '2', '2019-12-02', '2019-12-02 15:35:56', '8'),
(92, '9', 'STA 2101', '1', '2', '2019-12-02', '2019-12-02 15:35:56', '8'),
(93, '10', 'STA 2101', '1', '2', '2019-12-02', '2019-12-02 15:35:56', '8');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `className` varchar(200) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `className`, `postingDate`) VALUES
(6, 'ICT 2100', '2019-11-21 07:01:26'),
(7, 'ICT 2106', '2019-11-21 10:06:59'),
(8, 'ICT 2108', '2019-11-21 10:07:10'),
(9, 'IBM 2104', '2019-11-21 11:46:42'),
(10, 'IBM2017', '2019-11-22 03:16:13'),
(11, 'STA 2101', '2019-11-22 04:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblparents`
--

CREATE TABLE `tblparents` (
  `id` int(11) NOT NULL,
  `parentName` varchar(255) DEFAULT NULL,
  `parentAddress` mediumtext DEFAULT NULL,
  `parentRelStudent` varchar(255) DEFAULT NULL,
  `parentContact` char(12) DEFAULT NULL,
  `parentEmail` varchar(150) DEFAULT NULL,
  `parentOccupation` varchar(255) DEFAULT NULL,
  `parentJob` varchar(255) DEFAULT NULL,
  `parentUsername` varchar(50) DEFAULT NULL,
  `parentPassword` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `isActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblparents`
--

INSERT INTO `tblparents` (`id`, `parentName`, `parentAddress`, `parentRelStudent`, `parentContact`, `parentEmail`, `parentOccupation`, `parentJob`, `parentUsername`, `parentPassword`, `regDate`, `updationDate`, `isActive`) VALUES
(9, 'Tester_Dad', 'jalan inti, 52300 , Kuala Lumpur', 'Dad', '0122445756', 'dad123@gmail.com', 'Supervisor', 'Salesman', 'testerdad', 'e19d5cd5af0378da05f63f891c7467af', '2019-11-21 07:00:00', NULL, 1),
(10, 'demo_Dad', 'demo dad', 'dad', '0133424445', 'demodad@gmail.com', 'Accountant', 'Accountant', 'demodad', 'e9972845cc2c5875bdee2fc98f80751c', '2019-11-22 01:15:29', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblrfid`
--

CREATE TABLE `tblrfid` (
  `id` int(25) NOT NULL,
  `studentId` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `id` int(11) NOT NULL,
  `staffName` varchar(150) DEFAULT NULL,
  `staffContact` bigint(12) DEFAULT NULL,
  `staffUsername` varchar(50) DEFAULT NULL,
  `staffPassword` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`id`, `staffName`, `staffContact`, `staffUsername`, `staffPassword`, `regDate`, `lastUpdationDate`) VALUES
(8, 'Mr.Chan', 122465652, 'mrchan', '84d97a9fa70d62e4d3b15b25e19d0377', '2019-11-21 07:57:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `studentAdress` mediumtext DEFAULT NULL,
  `studentContact` bigint(12) DEFAULT NULL,
  `studentDob` date DEFAULT NULL,
  `studentJoinDate` date DEFAULT NULL,
  `studentMarticulationId` varchar(50) DEFAULT NULL,
  `studentClass` char(50) DEFAULT NULL,
  `studentUsername` varchar(50) DEFAULT NULL,
  `studentPassword` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `parentId`, `studentName`, `studentAdress`, `studentContact`, `studentDob`, `studentJoinDate`, `studentMarticulationId`, `studentClass`, `studentUsername`, `studentPassword`, `regDate`, `lastUpdationDate`) VALUES
(5, 9, 'tester1', 'testing jalan', 123124342, '2000-11-18', '2018-10-18', 'J18027823', 'STA 2101', 'tester', 'f5d1278e8109edd94e1e4197e04873b9', '2019-11-21 09:59:34', '2019-11-22 04:08:57'),
(6, 9, 'demo12', 'demo12', 123343234, '1999-10-10', '2019-10-10', 'J18027824', 'STA 2101', 'demo12', '0451e06539777666b3a0a3cc420d06df', '2019-11-21 10:18:56', '2019-11-22 04:09:09'),
(7, 9, 'demo1', 'demo1', 122432324, '1999-12-12', '2018-12-12', 'J18027826', 'STA 2101', 'demo1', 'e368b9938746fa090d6afd3628355133', '2019-11-21 11:44:24', '2019-11-22 04:09:24'),
(8, 10, 'Dylan', 'jalan aman', 133423423, '2005-09-15', '2018-10-10', 'J18027728', 'STA 2101', 'dylan', '4f97319b308ed6bd3f0c195c176bbd77', '2019-11-22 01:17:05', '2019-11-22 04:09:50'),
(9, 10, 'claire', 'claire', 111111111, '2000-10-10', '2010-10-10', 'J18027827', 'STA 2101', 'claire', '182e500f562c7b95a2ae0b4dd9f47bb2', '2019-11-22 01:20:41', '2019-11-22 04:10:09'),
(10, 10, 'sunny', 'sunny', 111111111, '2000-11-11', '2011-11-11', 'J18027831', 'STA 2101', 'sunny', '533c5ba8368075db8f6ef201546bd71a', '2019-11-22 01:23:09', '2019-11-22 04:10:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblparents`
--
ALTER TABLE `tblparents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblparents`
--
ALTER TABLE `tblparents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
