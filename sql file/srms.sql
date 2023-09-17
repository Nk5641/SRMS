-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 05:37 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2021-04-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'C', '2021-04-13 09:06:10', '2021-04-14 05:53:47'),
(2, 'Second', 2, 'A', '2021-04-13 09:06:03', '2021-04-14 17:21:38'),
(4, 'Fourth', 4, 'C', '2021-04-13 09:05:57', '0000-00-00 00:00:00'),
(5, 'Sixth', 6, 'A', '2021-04-13 09:35:08', '0000-00-00 00:00:00'),
(6, 'Sixth', 6, 'B', '2021-04-13 09:07:15', '2021-04-13 18:43:02'),
(7, 'Seventh', 7, 'B', '2021-04-12 18:52:00', '2021-04-13 18:52:15'),
(8, 'Eight', 8, 'A', '2021-04-13 09:07:08', '2021-04-13 19:21:24'),
(11, 'Tenth', 10, 'A', '2021-05-15 05:14:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2021-04-13 09:08:52', '2021-04-13 18:34:32'),
(3, 1, 1, 1, 80, '2021-04-21 16:52:33', '2021-04-13 18:34:25'),
(4, 1, 1, 5, 78, '2021-04-13 17:54:09', '2021-04-13 18:34:26'),
(5, 1, 1, 4, 60, '2021-04-13 17:54:09', '2021-04-13 18:34:26'),
(6, 2, 4, 2, 90, '2021-04-12 18:38:18', NULL),
(7, 2, 4, 1, 75, '2021-04-12 18:38:18', NULL),
(8, 2, 4, 5, 56, '2021-04-12 18:38:18', '2021-04-13 19:26:42'),
(9, 2, 4, 4, 80, '2021-04-12 18:38:18', '2021-04-13 19:26:42'),
(10, 4, 7, 2, 54, '2021-04-12 18:56:21', '2021-04-13 19:03:10'),
(11, 4, 7, 1, 85, '2021-04-12 18:56:21', NULL),
(12, 4, 7, 5, 55, '2021-04-12 18:56:21', '2021-04-13 19:03:10'),
(13, 4, 7, 7, 65, '2021-04-12 18:56:21', '2021-04-13 19:03:10'),
(14, 5, 8, 2, 75, '2021-04-12 19:25:07', NULL),
(15, 5, 8, 1, 56, '2021-04-12 19:25:07', NULL),
(16, 5, 8, 5, 52, '2021-04-12 19:25:07', NULL),
(17, 5, 8, 4, 80, '2021-04-12 19:25:07', NULL),
(18, 6, 9, 2, 33, '2021-05-14 08:55:42', NULL),
(19, 6, 9, 9, 35, '2021-05-14 08:55:42', NULL),
(20, 6, 9, 1, 60, '2021-05-14 08:55:42', NULL),
(21, 6, 9, 4, 40, '2021-05-14 08:55:42', NULL),
(22, 7, 10, 2, 46, '2021-05-14 09:28:56', NULL),
(23, 7, 10, 10, 58, '2021-05-14 09:28:56', NULL),
(24, 7, 10, 1, 89, '2021-05-14 09:28:56', NULL),
(25, 7, 10, 4, 78, '2021-05-14 09:28:56', NULL),
(26, 7, 10, 6, 67, '2021-05-14 09:28:56', NULL),
(27, 8, 10, 2, 90, '2021-05-14 09:42:14', NULL),
(28, 8, 10, 10, 80, '2021-05-14 09:42:14', NULL),
(29, 8, 10, 1, 100, '2021-05-14 09:42:14', NULL),
(30, 8, 10, 4, 98, '2021-05-14 09:42:14', NULL),
(31, 8, 10, 6, 67, '2021-05-14 09:42:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Sarita', '46456', 'info@phpgurukul.com', 'Female', '1995-03-03', 1, '2021-04-09 10:30:57', '2021-04-11 04:36:37', 1),
(2, 'Anuj kumar', '10861', 'anuj@gmail.co', 'Male', '1995-02-02', 4, '2021-04-08 19:18:28', '2021-04-11 04:59:17', 1),
(3, 'amit kumar', '2626', 'amit@gmail.com', 'Male', '2014-08-06', 6, '2021-04-09 18:45:31', '2021-04-10 18:46:02', 1),
(4, 'rahul kumar', '990', 'rahul01@gmail.com', 'Male', '2001-02-03', 7, '2021-04-09 18:54:58', '2021-04-10 18:55:20', 1),
(5, 'sanjeev singh', '122', 'sanjeev01@gmail.com', 'Male', '2002-02-03', 8, '2021-04-09 19:23:53', '2021-04-10 19:24:15', 1),
(7, 'Mayank Prasher', '1913052002', 'prasher6789@gmail.com', 'Male', '2002-06-06', 10, '2021-05-14 09:28:16', NULL, 0),
(8, 'Ramesh', '1913052001', 'Rajesh.123@gmail.com', 'Male', '2000-05-03', 10, '2021-05-14 09:38:41', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2021-04-13 11:16:56', '2021-05-14 09:21:08'),
(4, 1, 2, 1, '2021-04-14 06:46:32', '2021-05-14 09:21:17'),
(5, 1, 4, 1, '2021-04-13 06:46:35', '2021-05-14 09:21:32'),
(6, 1, 5, 1, '2021-04-13 06:46:40', '2021-05-14 09:21:39'),
(8, 4, 4, 1, '2021-04-13 03:21:27', '2021-05-14 09:21:48'),
(10, 4, 1, 1, '2021-04-13 03:22:05', '2021-05-14 09:24:13'),
(12, 4, 2, 1, '2021-04-13 03:22:15', '2021-05-14 09:23:59'),
(13, 4, 5, 1, '2021-04-13 03:22:20', '2021-05-14 09:23:55'),
(14, 6, 1, 1, '2021-04-12 18:44:06', '2021-05-14 09:23:49'),
(15, 6, 2, 1, '2021-04-12 18:44:12', '2021-05-14 09:23:41'),
(16, 6, 4, 1, '2021-04-12 18:44:18', '2021-05-14 09:23:06'),
(17, 6, 6, 1, '2021-04-12 18:44:23', '2021-05-14 09:23:02'),
(18, 7, 1, 1, '2021-04-12 18:53:12', '2021-05-14 09:22:57'),
(19, 7, 7, 1, '2021-05-12 18:53:19', '2021-05-14 09:22:52'),
(20, 7, 2, 1, '2021-04-12 18:53:38', '2021-05-14 09:22:45'),
(21, 7, 6, 1, '2021-05-12 18:53:44', '2021-05-14 09:22:40'),
(22, 7, 5, 1, '2021-04-12 18:53:50', '2021-05-14 09:22:30'),
(23, 8, 1, 1, '2021-04-12 19:22:25', '2021-05-14 09:22:26'),
(24, 8, 2, 1, '2021-04-12 19:22:31', '2021-05-14 09:22:21'),
(25, 8, 4, 1, '2021-04-12 19:22:36', '2021-05-14 09:22:17'),
(26, 8, 6, 1, '2021-04-12 19:22:42', '2021-05-14 09:22:12'),
(27, 8, 5, 1, '2021-04-12 19:22:47', '2021-05-14 09:22:06'),
(28, 9, 1, 0, '2021-05-14 08:14:37', '2021-05-14 09:00:45'),
(29, 9, 2, 1, '2021-05-14 08:14:50', NULL),
(30, 9, 4, 1, '2021-05-14 08:14:58', NULL),
(31, 9, 9, 1, '2021-05-14 08:16:29', NULL),
(32, 10, 1, 1, '2021-05-14 09:26:50', NULL),
(33, 10, 2, 1, '2021-05-14 09:26:57', NULL),
(34, 10, 10, 1, '2021-05-14 09:27:05', NULL),
(35, 10, 4, 1, '2021-05-14 09:27:14', NULL),
(36, 10, 6, 1, '2021-05-14 09:27:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2021-04-13 09:23:57', '2021-04-14 09:46:54'),
(2, 'English', 'ENG11', '2021-04-13 09:24:25', '0000-00-00 00:00:00'),
(4, 'Science', 'SC1', '2021-04-13 09:18:04', '0000-00-00 00:00:00'),
(5, 'Music', 'MS', '2021-04-13 09:36:23', '0000-00-00 00:00:00'),
(6, 'Social Studies', 'SS08', '2021-04-12 18:43:29', '2021-04-13 18:43:45'),
(7, 'Physics', 'PH03', '2021-04-12 18:52:41', '2021-04-13 18:52:55'),
(8, 'Chemistry', 'CH65', '2021-04-12 19:21:46', '2021-04-13 19:22:14'),
(10, 'Hindi', '002', '2021-05-14 09:26:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
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
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
