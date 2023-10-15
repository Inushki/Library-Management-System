-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2023 at 08:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `SerialNo` int(11) NOT NULL,
  `AdminID` varchar(10) NOT NULL,
  `AdminName` varchar(100) NOT NULL,
  `EmpID` varchar(10) DEFAULT NULL,
  `NIC` varchar(12) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `ConNo` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `SerialNo` int(11) NOT NULL,
  `BID` varchar(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Genre` varchar(30) DEFAULT NULL,
  `PubliYear` varchar(4) DEFAULT NULL,
  `Edition` varchar(10) DEFAULT NULL,
  `ISBN` varchar(30) DEFAULT NULL,
  `ShelfNo` varchar(5) DEFAULT NULL,
  `Available` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issuereturn`
--

CREATE TABLE `issuereturn` (
  `SerialNo` int(11) NOT NULL,
  `issueReturnID` varchar(10) NOT NULL,
  `MemID` varchar(10) NOT NULL,
  `BookID` varchar(10) NOT NULL,
  `IssueDate` varchar(10) NOT NULL,
  `DueDate` varchar(10) NOT NULL,
  `Status` varchar(8) DEFAULT NULL,
  `ReturnDate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `serialno` int(11) NOT NULL,
  `loginid` varchar(10) NOT NULL,
  `id` varchar(8) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `logindate` date DEFAULT NULL,
  `logintime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`serialno`, `loginid`, `id`, `username`, `password`, `logindate`, `logintime`) VALUES
(1, '12', '14568766', 'SD', '123', '2023-08-08', '21:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `SerialNo` int(11) NOT NULL,
  `MemID` varchar(10) NOT NULL,
  `MemName` varchar(100) DEFAULT NULL,
  `MemType` varchar(10) DEFAULT NULL,
  `NIC` varchar(12) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `ConNo` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`SerialNo`, `MemID`, `MemName`, `MemType`, `NIC`, `DOB`, `ConNo`, `Address`, `Gender`, `username`, `password`) VALUES
(1, 'MID-1', 'inu', 'Student', 'dwdw', '2023-08-05', 'dwd', ' vsd', 'Male', 'inushki', '111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `SerialNo` (`SerialNo`),
  ADD UNIQUE KEY `NIC` (`NIC`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BID`),
  ADD UNIQUE KEY `SerialNo` (`SerialNo`);

--
-- Indexes for table `issuereturn`
--
ALTER TABLE `issuereturn`
  ADD PRIMARY KEY (`issueReturnID`),
  ADD UNIQUE KEY `SerialNo` (`SerialNo`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginid`),
  ADD UNIQUE KEY `serialno` (`serialno`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemID`),
  ADD UNIQUE KEY `SerialNo` (`SerialNo`),
  ADD UNIQUE KEY `NIC` (`NIC`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `SerialNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `SerialNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issuereturn`
--
ALTER TABLE `issuereturn`
  MODIFY `SerialNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `serialno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `SerialNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
