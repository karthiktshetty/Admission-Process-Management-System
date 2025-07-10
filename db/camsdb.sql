-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 03:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmapplications`
--

CREATE TABLE `tbladmapplications` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) NOT NULL,
  `CourseApplied` varchar(120) DEFAULT NULL,
  `FatherName` varchar(120) DEFAULT NULL,
  `MotherName` varchar(120) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Nationality` varchar(120) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `CorrespondenceAdd` varchar(350) NOT NULL,
  `PermanentAdd` varchar(350) NOT NULL,
  `SecondaryBoard` varchar(120) DEFAULT NULL,
  `SecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SecondaryBoardper` varchar(120) DEFAULT NULL,
  `SecondaryBoardstream` varchar(120) DEFAULT NULL,
  `SSecondaryBoard` varchar(120) DEFAULT NULL,
  `SSecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SSecondaryBoardper` varchar(120) DEFAULT NULL,
  `SSecondaryBoardstream` varchar(120) DEFAULT NULL,
  `GraUni` varchar(120) DEFAULT NULL,
  `GraUniyop` varchar(120) DEFAULT NULL,
  `GraUnidper` varchar(120) DEFAULT NULL,
  `GraUnistream` varchar(120) DEFAULT NULL,
  `PGUni` varchar(120) DEFAULT NULL,
  `PGUniyop` varchar(120) DEFAULT NULL,
  `PGUniper` varchar(120) DEFAULT NULL,
  `PGUnistream` varchar(120) DEFAULT NULL,
  `TransferCertificate` varchar(120) DEFAULT NULL,
  `TenMarksheeet` varchar(120) DEFAULT NULL,
  `TwelveMarksheet` varchar(120) DEFAULT NULL,
  `GraduationCertificate` varchar(120) DEFAULT NULL,
  `PostgraduationCertificate` varchar(120) DEFAULT NULL,
  `Declaration` varchar(120) DEFAULT NULL,
  `Signature` varchar(120) DEFAULT NULL,
  `CourseApplieddate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` varchar(255) DEFAULT NULL,
  `FeeAmount` decimal(10,0) DEFAULT NULL,
  `AdminStatus` varchar(20) DEFAULT NULL,
  `AdminRemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `UserPic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'admin', 'Admin', 876545789, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-05-18 04:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `PhoneNumber` bigint(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `PhoneNumber`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Kiran', 'kran@gmail.com', NULL, 'cost of volvo place pritampura to dwarka', '2021-07-05 07:26:24', 1),
(2, 'Sarita Pandey', 'sar@gmail.com', NULL, 'huiyuihhjjkhkjvhknv iyi tuyvuoiup', '2021-07-09 12:48:40', 1),
(3, 'Test', 'test@gmail.com', NULL, 'Want to know price of forest cake', '2021-07-16 12:51:06', 1),
(4, 'Anuj', 'ak330@gmail.com', NULL, 'This is for testing.', '2021-07-18 14:35:50', 1),
(5, 'Nikhil', 'nk@gmail.com', 7798799999, 'hello', '2022-02-28 04:26:49', 1),
(6, 'Anuj', 'ak@gmail.com', 1234567890, 'This is for testing', '2022-03-04 01:29:21', 1),
(7, 'Test', 'test@gmail.com', 12365478910, 'This iis for testing', '2022-03-04 01:45:01', 1),
(8, 'Subhan Raj', 'shubhanraj2002@gmail.com', 9450430095, 'a', '2023-05-19 19:08:27', 1),
(9, 'gagan', 'gagan@gdsagfsad', 3242423, 'fsdfsafsd', '2024-12-07 18:04:18', 1),
(10, 'Gagan', 'gagan@gdsagfsad', 3242423, 'fsdfsdfsdsdssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', '2024-12-07 18:05:50', 1),
(11, 'nwe ', 'gagan@gdsagfsad', 3242423, 'fsdfds', '2024-12-07 18:37:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `ID` int(11) NOT NULL,
  `CourseName` varchar(90) DEFAULT NULL,
  `CourseDescription` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`ID`, `CourseName`, `CourseDescription`, `CreationDate`) VALUES
(11, 'CSE', 'COMPUTE SCIENCE AND ENGENERING', '2024-12-08 14:26:18'),
(12, 'ECE', 'ELECTRICAL ENGENERING', '2024-12-08 14:26:40'),
(13, 'AIML', 'ARTIFICIAL INTELEGENCE AND MACHINE LEARING', '2024-12-08 14:27:09'),
(14, 'ME', 'MACHENICAL ENGENERING', '2024-12-08 14:27:26'),
(15, 'ISE', 'INFORMATION SCIENCE', '2024-12-08 14:27:47'),
(16, 'CE', 'CIVIL ENGENERING', '2024-12-08 14:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblfees`
--

CREATE TABLE `tblfees` (
  `ID` int(5) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `PaymentAmount` decimal(10,0) DEFAULT NULL,
  `ModeofPayments` varchar(200) DEFAULT NULL,
  `TransactionNumber` int(10) DEFAULT NULL,
  `DateofTransaction` date DEFAULT NULL,
  `SubmissionDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfees`
--

INSERT INTO `tblfees` (`ID`, `UserID`, `PaymentAmount`, `ModeofPayments`, `TransactionNumber`, `DateofTransaction`, `SubmissionDate`) VALUES
(1, 3, 60000, 'Credit Card', 789456, '2022-03-02', '2022-03-02 11:20:49'),
(3, 4, 250000, 'E-Wallet', 2147483647, '2022-03-03', '2022-03-04 00:19:08'),
(4, 5, 45230, 'UPI', 1597452, '2022-03-04', '2022-03-04 01:41:16'),
(5, 6, 72000, 'Credit Card', 789456, '2022-03-04', '2022-03-04 04:38:12'),
(6, 11, 11111, 'Debit Card', 12221111, '2024-12-03', '2024-12-08 07:59:00'),
(7, 12, 400000, 'Debit Card', 12221111, '2024-12-10', '2024-12-08 08:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(11) NOT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Decription` varchar(350) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `Title`, `Decription`, `CreationDate`) VALUES
(16, 'Training and Placement:', 'Placement cell provides pre-placement training, peer mentoring and opportunities in top companies\r\n\r\nEvery year 470+ companies visit Sahyadri\r\n\r\nHighest Package offered ?43.98 LPA (Belc Co. Ltd.); ?40.00 LPA (Microsoft.); ?35.00 LPA (JEMS)', '2024-12-08 14:35:14'),
(17, 'nwe ', 'new notice ', '2024-12-08 14:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'Sahyadri About Us', 'Bhandary Foundation (R) was established in 2001, with a vision to impart the Societal development in the field of Education, Health, Sports and Culture. It established Sahyadri College of Engineering & Management in 2007. The campus is spread on a sprawling 35 acres of land on the bank of the Netravati River with a combined workforce and student strength of nearly 4,000. The college offers B.E, M.Tech & MBA along with Visvesvaraya Technological University recognized research centers for award of M.Sc(Eng) and Ph.D degrees. The Institute is recognized by AICTE, UGC and MoE. The college has approximately 6.00 Lakh Sq-ft. built-up area including hostel facilities.\r\n\r\nThe college is accredited by NAAC, NBA and IE(I). It is recognized by the DSI', NULL, NULL, NULL, ''),
(2, 'contactus', ' Sahyadri Campus, Adyar, Mangaluru, Karnataka, India - 575007', '\r\nSahyadri Campus, Adyar, Mangaluru, Karnataka, India - 575007', 'sahyadri@sahyadri.edu.in', 824227722, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(60) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmapplications`
--
ALTER TABLE `tbladmapplications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CourseName` (`CourseName`);

--
-- Indexes for table `tblfees`
--
ALTER TABLE `tblfees`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmapplications`
--
ALTER TABLE `tbladmapplications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblfees`
--
ALTER TABLE `tblfees`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
