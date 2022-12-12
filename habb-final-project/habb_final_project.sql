-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2019 at 10:33 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `habb_final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `habb_booking`
--

CREATE TABLE `habb_booking` (
  `id` int(11) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `vehicle_number` varchar(255) NOT NULL,
  `wheelers` varchar(244) DEFAULT NULL,
  `contact_number` varchar(255) NOT NULL,
  `booking_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `habb_booking`
--

INSERT INTO `habb_booking` (`id`, `fullname`, `vehicle_number`, `wheelers`, `contact_number`, `booking_time`) VALUES
(1, 'Bhaskar Adhikari', 'ST 03 1234', NULL, '9877777778', '2019-10-23 08:38:44'),
(2, 'Bhaskar Don', 'BA 14 2223', '4', '9887777888', '2019-10-23 08:47:49'),
(3, 'Ravi Khadka', 'Ba 19 2002', '2', '9888887777', '2019-10-23 09:01:51'),
(4, 'mukesh', 'Ba 25 2252', '4', '9877552', '2019-10-23 09:02:27'),
(5, 'yestai ho', 'ba 22 554', '4+', '55445555', '2019-10-23 09:05:56'),
(6, 'Ram ParsAD ', 'BA 22 122', '4', '9875555', '2019-10-23 09:06:42'),
(7, 'Hari Bahadur', 'BA 88 456', '2', '45612300', '2019-10-23 09:07:25'),
(8, 'Mukesh Bahadur', 'BA 14 2225', '4+', '45617899', '2019-10-23 09:08:01'),
(9, 'mukesh', 'ST 03 1234', '4', '9877777778', '2019-10-23 12:58:42'),
(10, 'Bhaskar Adhikari', 'ST 03 1234', '2', '9888887777', '2019-10-23 13:05:14'),
(11, 'mukesh ko ', 'BA 14 2225', '4', '988877755', '2019-10-31 10:03:39'),
(12, 'Gita ', 'BA 77 25554', '2', '9877755', '2019-10-31 10:03:59'),
(13, 'Tipper Diver', 'Ba 5 5455', '4+', '588877777', '2019-10-31 10:04:22'),
(14, 'reer', '45454', '4', '88888888', '2019-10-31 10:18:23'),
(15, 'fdfdf', '5454', '4', '555555', '2019-10-31 10:19:34'),
(16, 'fdfdf', '5454', '4', '555555', '2019-10-31 10:20:12'),
(17, 'hello hhh', '5555', '4', '98777555', '2019-10-31 10:24:18'),
(18, 'heheh', '55', '4', '222333', '2019-10-31 10:25:00'),
(19, 'hellooo', '556', '4', '2222333', '2019-10-31 10:26:00'),
(20, 'hjhjjj', '55', '2', '98765554', '2019-10-31 10:28:03'),
(21, 'hehhh', '9888', '4', '5666666', '2019-10-31 10:28:26'),
(22, 'aaaas', '56', '2', '9888888', '2019-10-31 10:28:39'),
(23, 'aaaas', '56', '2', '9888888', '2019-10-31 10:29:49'),
(24, 'ddd', '333', '4', '111222', '2019-10-31 10:29:59'),
(25, 'dsds', 'ddd', '4', '65656', '2019-10-31 10:31:15'),
(26, 'dsds', 'ddd', '4', '65656', '2019-10-31 10:32:53'),
(27, 'dsds', 'ddd', '4', '65656', '2019-10-31 10:36:37'),
(28, 'dsds', 'ddd', '4', '65656', '2019-10-31 10:36:54'),
(29, 'dsds', 'ddd', '4', '65656', '2019-10-31 10:37:11'),
(30, 'dsds', 'ddd', '4', '65656', '2019-10-31 10:37:18'),
(31, 'dsds', 'ddd', '4', '65656', '2019-10-31 10:39:14'),
(32, 'dsds', 'ddd', '4', '65656', '2019-10-31 10:39:23'),
(33, 'wwww', '85', '4', '9888888', '2019-10-31 10:44:57'),
(34, 'heheh', '55', '4', '5656565', '2019-10-31 10:46:09'),
(35, 'heheh', '55', '4', '5656565', '2019-10-31 10:46:13'),
(36, 'heheh', '55', '4', '5656565', '2019-10-31 10:46:17'),
(37, 'abaa vayo', 'BA 55 555', '4', '98887777', '2019-10-31 10:48:02'),
(38, 'hell', 'BA 55 ', '4+', '999999', '2019-10-31 10:48:16'),
(39, 'hell', 'BA 55 ', '4+', '999999', '2019-10-31 10:48:20'),
(40, 'hell', 'BA 55 ', '4+', '999999', '2019-10-31 10:48:23'),
(41, 'fdfd', '54', '4+', '54545454', '2019-10-31 10:48:34'),
(42, 'hh', '9888', '4', '9988888888', '2019-10-31 10:51:23'),
(43, 'hehh', '988', '2', '656565656', '2019-10-31 10:51:34'),
(44, 'aava', 'BA 5 999', '2', '9877755', '2019-10-31 10:53:21'),
(45, 'aava', 'BA 5 999', '2', '9877755', '2019-10-31 10:53:24'),
(46, 'aava', 'BA 5 999', '2', '9877755', '2019-10-31 10:53:27'),
(47, 'dsdsd', '656', '4', '5656556', '2019-10-31 10:55:53'),
(48, 'hjhj', '998', '2', '9877555', '2019-10-31 11:02:31'),
(49, 'hjhj', '998', '2', '9877555', '2019-10-31 11:02:51'),
(50, 'mukesh', '55', '4', '9888887777', '2019-10-31 13:35:40'),
(51, 'Bhaskar Adhikari', '55', '4', '9888887777', '2019-11-01 06:30:12'),
(52, 'Bhaskar Adhikari', 'ST 03 1234', '2', '9888887777', '2019-11-01 06:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'tester1@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2019-07-05 05:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `VehicleCat` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `VehicleCat`, `CreationDate`) VALUES
(1, 'Four Wheeler Vehicle', '2019-07-05 11:06:50'),
(2, 'Two Wheeler Vehicle', '2019-07-05 11:07:09'),
(4, 'Bicycles', '2019-07-07 11:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `ID` int(10) NOT NULL,
  `ParkingNumber` varchar(120) DEFAULT NULL,
  `VehicleCategory` varchar(120) NOT NULL,
  `VehicleCompanyname` varchar(120) DEFAULT NULL,
  `RegistrationNumber` varchar(120) DEFAULT NULL,
  `OwnerName` varchar(120) DEFAULT NULL,
  `OwnerContactNumber` bigint(10) DEFAULT NULL,
  `InTime` timestamp NULL DEFAULT current_timestamp(),
  `OutTime` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ParkingCharge` varchar(120) NOT NULL,
  `Remark` mediumtext NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`ID`, `ParkingNumber`, `VehicleCategory`, `VehicleCompanyname`, `RegistrationNumber`, `OwnerName`, `OwnerContactNumber`, `InTime`, `OutTime`, `ParkingCharge`, `Remark`, `Status`) VALUES
(1, '509645766', 'Two Wheeler Vehicle', 'apache', '9882', 'Bhaskar', 9855533388, '2019-08-26 14:46:53', '2019-10-23 09:28:00', '25', 'going out', 'Out'),
(2, '376626729', 'Four Wheeler Vehicle', 'honda', '2552', 'Mukesh', 9855533388, '2019-08-26 14:47:22', '2019-10-23 09:28:08', '100', 'vehicle parked', 'Out'),
(12, '787684095', 'Two Wheeler Vehicle', 'bajaj', '8998', 'birat', 987744522, '2019-08-26 14:48:03', '2019-10-31 10:00:57', '158', 'vdfgfd', 'Out'),
(13, '736017215', 'Four Wheeler Vehicle', 'Lamborghini', '9860', 'Bhaskar', 9844433321, '2019-08-26 14:48:54', NULL, '', '', ''),
(14, '467707641', 'Four Wheeler Vehicle', 'ferrari', '9850', 'Birate', 9854673122, '2019-08-26 14:49:36', NULL, '', '', ''),
(15, '645367863', 'Four Wheeler Vehicle', 'masaretti', '3421', 'hemanta', 9756712354, '2019-08-26 14:50:14', NULL, '', '', ''),
(16, '290978176', 'Four Wheeler Vehicle', 'Rolls Royace', '8848', 'Anish', 9999999999, '2019-08-26 14:50:53', NULL, '', '', ''),
(17, '192340159', 'Two Wheeler Vehicle', 'tvs', '8848', 'hemanta', 9854673122, '2019-08-27 04:38:59', NULL, '', '', ''),
(18, '196817935', 'Two Wheeler Vehicle', 'apache', '2552', 'birat', 9866522552, '2019-08-28 03:46:00', NULL, '', '', ''),
(19, '814101187', 'Four Wheeler Vehicle', 'honda', '2552', 'nabin', 9999999999, '2019-08-28 05:17:10', NULL, '', '', ''),
(20, '501842705', 'Four Wheeler Vehicle', 'ferrari', '8888', 'bahubali', 8888888888, '2019-08-28 05:26:54', '2019-08-28 05:27:39', '100', 'going', 'Out'),
(21, '264853408', 'Four Wheeler Vehicle', 'apache', '8998', 'kiran', 12, '2019-08-28 05:28:44', '2019-08-28 07:38:29', '50', 'going out', 'Out'),
(22, '116272376', 'Two Wheeler Vehicle', 'apache', '2552', 'Birate', 9999999999, '2019-08-28 07:37:22', NULL, '', '', ''),
(23, '362917220', 'Four Wheeler Vehicle', 'honda', '2552', 'hemanta', 9866522552, '2019-08-28 07:48:31', '2019-08-28 07:50:42', '50', 'going out', 'Out'),
(24, '709660392', 'Two Wheeler Vehicle', 'apache', '2552', 'Ravi', 9844433321, '2019-08-29 04:55:32', '2019-08-29 04:56:18', '25', 'going out', 'Out'),
(25, '381715831', 'Two Wheeler Vehicle', 'apache', '2552', 'birat', 9844433321, '2019-08-30 04:22:34', '2019-08-30 04:23:20', '100', 'going out', 'Out'),
(26, '15', 'Four Wheeler Vehicle', 'apache', '434343', 'Mukesh Hello', 56666444, '2019-10-23 09:24:41', '2019-10-31 05:26:10', '25', 'going iut', 'Out'),
(27, '12', 'Four Wheeler Vehicle', 'ferrari', '2552', 'hello hi', 987777885, '2019-10-31 05:30:07', '2019-10-31 10:47:35', '122', 'dfdfdf', 'Out'),
(28, '100', 'Four Wheeler Vehicle', 'XYZ', '8998', 'Birate', 987744522, '2019-10-31 05:30:51', '2019-10-31 10:23:02', '555', 'asasas', 'Out'),
(29, '41', 'Four Wheeler Vehicle', 'ds', '222', 'jjj', 12222, '2019-10-31 10:43:23', '2019-10-31 10:45:54', '2222', 'fgfggf', 'Out'),
(30, '83', '0', 'dsds', '545', 'Mukesh', 4554545, '2019-10-31 10:49:27', '2019-10-31 10:52:15', '100', 'sdsds', 'Out'),
(31, '14', 'Four Wheeler Vehicle', 'ferrari', '55', 'Ravi', 987744522, '2019-10-31 13:38:15', '2019-10-31 13:40:24', '10', 'going out', 'Out'),
(32, '11', 'Four Wheeler Vehicle', 'apache', '2552', 'hemanta', 9854673122, '2019-11-01 06:31:16', '2019-11-01 06:31:57', '20', 'going out', 'Out');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `habb_booking`
--
ALTER TABLE `habb_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `habb_booking`
--
ALTER TABLE `habb_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
