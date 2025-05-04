-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: April 27, 2025 at 08:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eahpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898980, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2025-04-27 08:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblambulance`
--

CREATE TABLE `tblambulance` (
  `ID` int(11) NOT NULL,
  `AmbulanceType` varchar(250) DEFAULT NULL,
  `AmbRegNum` varchar(250) DEFAULT NULL,
  `DriverName` varchar(250) DEFAULT NULL,
  `DriverContactNumber` bigint(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblambulance`
--

INSERT INTO `tblambulance` (`ID`, `AmbulanceType`, `AmbRegNum`, `DriverName`, `DriverContactNumber`, `CreationDate`, `Status`, `UpdationDate`) VALUES
(1, '1', 'WB14RT5678', 'Soumya Saha', 9874083267, '2025-04-27 06:00:22', 'Pickup', '2025-04-30 14:51:24'),
(2, '2', 'WB15RT5678', 'kamal Yadav', 9123969984, '2025-04-27 06:02:06', 'Assigned', '2025-04-30 14:39:45'),
(3, '1', 'WB14RT5678', 'Ramesh Singh', 9836164220, '2025-04-27 06:00:22', 'Pickup', '2025-04-30 14:51:24'),
(4, '2', 'WB15RT5612', 'Shawon Biswas', 9330558870, '2025-04-27 06:02:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblambulancehiring`
--

CREATE TABLE `tblambulancehiring` (
  `ID` int(11) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `PatientName` varchar(250) DEFAULT NULL,
  `ContactNum` bigint(11) DEFAULT NULL,
  `HiringDate` varchar(250) DEFAULT NULL,
  `HiringTime` varchar(250) DEFAULT NULL,
  `AmbulanceType` int(5) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` mediumtext DEFAULT NULL,
  `State` mediumtext DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `AmbulanceRegNo` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblambulancehiring`
--

INSERT INTO `tblambulancehiring` (`ID`, `BookingNumber`, `PatientName`, `contactNum`, `HiringDate`, `HiringTime`, `AmbulanceType`, `Address`, `City`, `State`, `Message`, `BookingDate`, `Remark`, `Status`, `AmbulanceRegNo`, `UpdationDate`) VALUES
(1, 292564626, 'Kishore Das', 9330558870, '2025-04-29', '22:21', 2, 'O-908, GHU, Block-7', 'Howrah-Maidan', 'Howrah', 'uuk', '2025-04-29 05:20:11', 'Patient reached Hospital', 'Reached', 'WB15RT5678', '2025-04-29 12:34:02'),
(2, 193862343, 'Sayan Roy', 9038019627, '2025-04-29', '23:23', 1, 'O-908, GHU, Block-7', 'A.P.Nagor', 'Kolkata', 'dfserg', '2025-04-29 05:21:41', 'Patient reached to the hospital', 'Reached', 'WB15RT5678', '2025-04-29 05:34:34'),
(3, 901408998, 'Lavanaya Singh', 8910770283, '2025-04-29', '15:33', 1, 'P-816 Kanvya Nagar Geetanjali Apt', 'Dumdum', 'Kolkata', 'Arrange BLS ambulance with gynoclogist', '2025-04-29 05:28:30', 'Patient Pick form given address', 'Pickup', 'WB14RT5678', '2025-05-14 14:51:24'),
(4, 603153853, 'Amit Das', 6291896593, '2025-05-13', '23:04', 1, 'A 123 XYZ Society ', 'Sonarpur', 'South 24 PGS', 'NA', '2025-05-13 17:33:26', 'Patient reached at hospital', 'Reached', 'WB15RT5678', '2025-05-13 01:38:15'),
(5, 369344538, 'Joy Mondal', 7583948474, '2025-04-14', '10:15', 3, 'Hn 18/1 Xyz Apartment Mayur Vihar', 'New Delhi', 'Delhi', 'Please be on time', '2025-04-14 01:44:03', 'Reached hospital\r\n', 'Reached', 'WB15RT5678', '2025-04-14 01:46:26'),
(6, 185258573, 'Akash Sardar', 7980324268, '2025-03-14', '14:08', 3, 'H-908,  HPT Apartment', 'SP Mukherjee Road', 'Kolkata', 'Need Nurse with ambulance', '2025-03-14 14:36:45', 'ambulance assigned', 'Assigned', 'WB15RT5678', '2025-03-14 14:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<div style=\"text-align: center;\"><b>Emergency Ambulance Hiring Portal</b></div><div style=\"text-align: left;\">We prioritize the well-being of our patients above all else. Thats why we offer top-notch ambulance services to ensure swift and secure medical transportation whenever the need arises. Our dedicated team of skilled paramedics and drivers is equipped with state-of-the-art ambulances, ready to respond to emergencies 24/7.<br></div><div style=\"text-align: left;\"><br></div>', NULL, NULL, '2024-03-05 05:00:17'),
(2, 'contactus', 'Contact Us', '27 no. Kamini School Lane,
Salkia, Howrah-711106', 'sohochori25@gmail.com', 9123969984, '2025-03-05 05:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbltrackinghistory`
--

CREATE TABLE `tbltrackinghistory` (
  `ID` int(10) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `AmbulanceRegNum` varchar(250) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltrackinghistory`
--

INSERT INTO `tbltrackinghistory` (`ID`, `BookingNumber`, `AmbulanceRegNum`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 292564626, 'WB15RT5678', 'Assigned', 'Assigned', '2025-04-29 07:05:11'),
(2, 292564626, 'WB15RT5678', 'On the way', 'On the way', '2025-04-29 07:41:03'),
(3, 292564626, 'WB15RT5678', 'Ambulance Pick the patient', 'Pickup', '2025-04-29 08:03:00'),
(4, 292564626, 'WB15RT5678', 'Patient reached Hospital', 'Reached', '2025-04-29 12:34:02'),
(5, 193862343, 'WB15RT5678', 'Ambulance Has been assigned', 'Assigned', '2025-04-13 05:25:18'),
(6, 193862343, 'WB15RT5678', 'Ambulance is on the way reached soon', 'On the way', '2025-04-05 05:33:02'),
(7, 193862343, 'WB15RT5678', 'Patient has been picked', 'Pickup', '2025-04-05 05:33:20'),
(8, 193862343, 'WB15RT5678', 'Patient reached to the hospital', 'Reached', '2025-04-05 05:34:34'),
(9, 901408998, 'WB14RT5678', 'Assigned Ambulance', 'Assigned', '2025-04-05 06:51:45'),
(10, 901408998, 'WB14RT5678', 'On The way', 'On the way', '2025-04-05 06:56:50'),
(11, 603153853, 'WB15RT5678', 'Ambulance Assigned', 'Assigned', '2025-04-14 01:20:22'),
(12, 603153853, 'WB15RT5678', 'Ambulance is on the way to pick the pateint', 'On the way', '2025-04-14 01:20:49'),
(13, 603153853, 'WB15RT5678', 'Patient is picked up and w heading to the hospital', 'Pickup', '2025-04-14 01:28:53'),
(15, 603153853, 'WB15RT5678', 'Patient reached at hospital', 'Reached', '2025-04-14 01:38:15'),
(16, 369344538, 'WB15RT5678', 'Ambulance Assigned ', 'Assigned', '2025-04-14 01:45:04'),
(17, 369344538, 'WB15RT5678', 'Ambulance is on the way to pick the patient', 'On the way', '2025-04-14 01:45:41'),
(18, 369344538, 'WB15RT5678', 'Patient is picked up heading to destination', 'Pickup', '2025-04-14 01:46:07'),
(19, 369344538, 'WB15RT5678', 'Reached hospital\r\n', 'Reached', '2025-04-14 01:46:26'),
(20, 185258573, 'WB15RT5678', 'ambulance assigned', 'Assigned', '2025-04-14 14:39:45'),
(21, 901408998, 'WB14RT5678', 'Patient Pick form given address', 'Pickup', '2025-04-14 14:51:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblambulance`
--
ALTER TABLE `tblambulance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AmbRegNum` (`AmbRegNum`);

--
-- Indexes for table `tblambulancehiring`
--
ALTER TABLE `tblambulancehiring`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ablunaceid` (`AmbulanceRegNo`),
  ADD KEY `BookingNumber` (`BookingNumber`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltrackinghistory`
--
ALTER TABLE `tbltrackinghistory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `abid` (`AmbulanceRegNum`),
  ADD KEY `bid` (`BookingNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblambulance`
--
ALTER TABLE `tblambulance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblambulancehiring`
--
ALTER TABLE `tblambulancehiring`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltrackinghistory`
--
ALTER TABLE `tbltrackinghistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
