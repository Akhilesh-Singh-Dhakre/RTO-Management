-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 12:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_p1`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `aadhar` char(12) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`aadhar`, `street`, `city`, `state`) VALUES
('124242012344', 'Rani Bagh', 'Indore', 'M.P.'),
('124242012345', 'Nanda Nagar', 'Indore', 'M.P.'),
('124242012346', 'kila maidan road', 'Indore', 'M.P.');

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `first_name` varchar(30) DEFAULT NULL,
  `middle_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `aadhar` char(12) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone_no` char(10) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`first_name`, `middle_name`, `last_name`, `aadhar`, `gender`, `dob`, `phone_no`, `mail_id`) VALUES
('Aman', ' ', 'Sharma', '124242012344', 'M', '2004-03-13', '8955527995', 'amansharma13032004@gmail.com'),
('Akhilesh', 'Singh', 'Dhakre', '124242012345', 'M', '2003-04-30', '9893436612', 'akhileshdhakre123@gmail.com'),
('Akhil', 'Singh', 'Chouhan', '124242012346', 'M', '2004-08-21', '9111330273', 'akhilsinghchouhan5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `aadhar` char(12) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `cdesc` text DEFAULT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dl`
--

CREATE TABLE `dl` (
  `aadhar` char(12) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cov` varchar(20) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `eid` varchar(10) DEFAULT NULL,
  `dl_id` int(11) NOT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  `dl_status` int(11) DEFAULT NULL,
  `dl_issue_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inspector`
--

CREATE TABLE `inspector` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `privilege` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inspector`
--

INSERT INTO `inspector` (`id`, `username`, `password`, `privilege`) VALUES
(1242420, 'Asd1242420', 'Asd@1242420', 'appro');

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `id` int(11) NOT NULL,
  `aadhar` char(12) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `license_no` varchar(20) DEFAULT NULL,
  `cov` varchar(20) DEFAULT NULL,
  `license_issue_date` date DEFAULT NULL,
  `license_expiry_date` date DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `llr`
--

CREATE TABLE `llr` (
  `aadhar` char(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cov` varchar(20) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `eid` varchar(10) DEFAULT NULL,
  `llr_id` int(11) NOT NULL,
  `epwd` char(10) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  `llr_status` int(11) DEFAULT NULL,
  `llr_issue_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `district` varchar(30) NOT NULL,
  `rto_address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`district`, `rto_address`) VALUES
('Indore', 'Palda Main Rd, Nayta Mundla');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `aadhar` char(12) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cov` varchar(30) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  `r_id` int(11) NOT NULL,
  `passwd` varchar(30) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  `reg_status` int(11) DEFAULT NULL,
  `reg_issue_date` date DEFAULT NULL,
  `vno` varchar(20) DEFAULT NULL,
  `reg_expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`aadhar`, `name`, `cov`, `model`, `company`, `rdate`, `r_id`, `passwd`, `mail_id`, `reg_status`, `reg_issue_date`, `vno`, `reg_expiry_date`) VALUES
('124242012345', 'Akhilesh Singh Dhakre', 'LMV', 'sp125', 'Honda', '2022-11-21', 1234, 'Akhilesh@123', 'akhileshdhakre123@gmail.com', 1, '2022-11-14', 'MP09CZ1274', '2040-11-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`aadhar`);

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`aadhar`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `aadhar` (`aadhar`);

--
-- Indexes for table `dl`
--
ALTER TABLE `dl`
  ADD PRIMARY KEY (`dl_id`),
  ADD KEY `aadhar` (`aadhar`);

--
-- Indexes for table `inspector`
--
ALTER TABLE `inspector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aadhar` (`aadhar`);

--
-- Indexes for table `llr`
--
ALTER TABLE `llr`
  ADD PRIMARY KEY (`llr_id`),
  ADD KEY `aadhar` (`aadhar`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`district`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `aadhar` (`aadhar`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`);

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`);

--
-- Constraints for table `dl`
--
ALTER TABLE `dl`
  ADD CONSTRAINT `dl_ibfk_1` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`);

--
-- Constraints for table `license`
--
ALTER TABLE `license`
  ADD CONSTRAINT `license_ibfk_1` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`);

--
-- Constraints for table `llr`
--
ALTER TABLE `llr`
  ADD CONSTRAINT `llr_ibfk_1` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`);

--
-- Constraints for table `reg`
--
ALTER TABLE `reg`
  ADD CONSTRAINT `reg_ibfk_1` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
