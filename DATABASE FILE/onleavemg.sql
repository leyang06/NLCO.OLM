-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2023 at 05:52 PM
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
-- Database: `onleavemg`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeeblood`
--

CREATE TABLE `employeeblood` (
  `bId` int(11) NOT NULL,
  `bName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeeblood`
--

INSERT INTO `employeeblood` (`bId`, `bName`) VALUES
(1, 'AB+'),
(2, 'AB-'),
(3, 'A+'),
(4, 'A-'),
(5, 'B+'),
(6, 'B-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `employeedepartment`
--

CREATE TABLE `employeedepartment` (
  `dptId` int(11) NOT NULL,
  `dptName` varchar(100) DEFAULT NULL,
  `dptEmployeeCodeNumberWhoAddDept` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeedepartment`
--

INSERT INTO `employeedepartment` (`dptId`, `dptName`, `dptEmployeeCodeNumberWhoAddDept`) VALUES
(1, 'HR Department', 'NLCO01'),
(2, 'IT Department', 'NLCO01'),
(3, 'Finance Department', 'NLCO01'),
(4, 'Audit Department', 'NLCO01'),
(5, 'Payroll Department', 'NLCO01'),
(6, 'Bookkeeping Department', 'NLCO01'),
(7, 'Corp. Tax Department', 'NLCO01'),
(8, 'Individual Tax Department', 'NLCO01'),
(9, 'Insurance Department', 'NLCO01');

-- --------------------------------------------------------

--
-- Table structure for table `employeedesignation`
--

CREATE TABLE `employeedesignation` (
  `desiId` int(11) NOT NULL,
  `desiDptId` int(11) DEFAULT NULL,
  `desiDesignationName` varchar(100) DEFAULT NULL,
  `desiEmployeeCodeNumberWhoAddDesi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeedesignation`
--

INSERT INTO `employeedesignation` (`desiId`, `desiDptId`, `desiDesignationName`, `desiEmployeeCodeNumberWhoAddDesi`) VALUES
(1, 1, 'HR', 'NLCO01'),
(2, 2, 'IT Manager', 'NLCO01'),
(3, 2, 'Net Monitor Officer', 'NLCO01'),
(4, 2, 'IT Associate', 'NLCO01'),
(5, 3, 'Finance Manager', 'NLCO01'),
(6, 3, 'Finance Officer', 'NLCO01'),
(7, 4, 'Internal Auditor', 'NLCO01'),
(8, 5, 'Payroll Department Head', 'NLCO01'),
(9, 5, 'Jr. Accountant', 'NLCO01'),
(10, 5, 'Senior Accountant', 'NLCO01'),
(11, 6, 'Bookkeeping Department Head', 'NLCO01'),
(12, 6, 'Jr. Accountant', 'NLCO01'),
(13, 6, 'Senior Accountant', 'NLCO01'),
(14, 7, 'Corp. Tax Department Head', 'NLCO01'),
(15, 7, 'Senior Accountant', 'NLCO01'),
(16, 7, 'Jr. Accountant', 'NLCO01'),
(17, 8, 'Individual Tax Department Head', 'NLCO01'),
(18, 8, 'Senior Accountant', 'NLCO01'),
(19, 8, 'Jr. Accountant', 'NLCO01'),
(20, 9, 'Insurance Department Head', 'NLCO01'),
(21, 9, 'Senior Accountant', 'NLCO01'),
(22, 9, 'Jr. Accountant', 'NLCO01');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `eId` int(11) NOT NULL,
  `eEmployeeCodeNumber` varchar(100) DEFAULT NULL,
  `eFirstName` varchar(45) DEFAULT NULL,
  `eLastName` varchar(45) DEFAULT NULL,
  `eDateOfBirth` date DEFAULT NULL,
  `eBloodGroup` int(11) DEFAULT NULL,
  `eGender` varchar(10) DEFAULT NULL,
  `ePhoneNumberPersonal` varchar(20) DEFAULT NULL,
  `ePhoneNumberOffice` varchar(20) DEFAULT NULL,
  `eParmanentAddress` varchar(255) DEFAULT NULL,
  `ePresentAddress` varchar(255) DEFAULT NULL,
  `eDptId` int(11) DEFAULT NULL,
  `eDesignationId` int(11) DEFAULT NULL,
  `eEmailAddress` varchar(100) DEFAULT NULL,
  `ePassword` varchar(255) DEFAULT NULL,
  `eEmployeeCodeNumberWhoAddEmployee` varchar(45) DEFAULT NULL,
  `eEmployeeVerification` int(11) DEFAULT NULL,
  `eWhoVerifytheEmployee` varchar(45) DEFAULT NULL,
  `eLastLogin` datetime DEFAULT NULL,
  `eEmpType` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`eId`, `eEmployeeCodeNumber`, `eFirstName`, `eLastName`, `eDateOfBirth`, `eBloodGroup`, `eGender`, `ePhoneNumberPersonal`, `ePhoneNumberOffice`, `eParmanentAddress`, `ePresentAddress`, `eDptId`, `eDesignationId`, `eEmailAddress`, `ePassword`, `eEmployeeCodeNumberWhoAddEmployee`, `eEmployeeVerification`, `eWhoVerifytheEmployee`, `eLastLogin`, `eEmpType`) VALUES
(19, 'NLCO01', 'Leony', 'Gampoy', '1993-10-17', 7, 'Female', '09656992949', '0', 'Caloocan City', 'Purok 5, Brgy. Matobato, Calbayog City, Samar', 1, 1, 'leony@aaaamericancpa.com', '000000', 'NLCO01', 1, 'NLCO01', '2023-03-17 01:39:43', 1),
(20, 'Test101', 'test', 'test', '2000-01-01', 1, 'Male', '123', '123', 'a', 'a', 2, 4, 'aaa@aaa.com', '123456', 'NLCO01', 1, 'NLCO01', '2023-03-18 06:50:37', 3),
(21, 'NLCO02', 'Lhea Jane', 'Cabudsan', '1993-01-06', 7, 'Female', '09656992949', '00000', 'Purok 2, Brgy. Dagum, Calbayog City, Samar', 'Purok 2, Brgy. Dagum, Calbayog City, Samar', 2, 4, 'lhea@aaaamericancpa.com', '010693', 'NLCO01', 1, 'NLCO01', '2023-03-18 06:33:33', 1),
(22, 'NLCO03', 'James Revo', 'Salurio', '1998-08-04', 1, 'Male', '0000', '0000', 'Purok 3, Brgy. Obrero, Calbayog City', 'Purok 3, Brgy. Obrero, Calbayog City', 2, 4, 'james@aaaamericancpa.com', '000000', 'NLCO02', 1, 'NLCO02', '2023-03-18 06:49:10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `employeeleaveapplicationdetails`
--

CREATE TABLE `employeeleaveapplicationdetails` (
  `lId` int(11) NOT NULL,
  `lEmployeeCodeNumberWhoApply` varchar(45) DEFAULT NULL,
  `lApplyDate` date DEFAULT NULL,
  `lLeaveId` tinyint(4) DEFAULT NULL,
  `lEmployeeImargencyAddress` varchar(255) DEFAULT NULL,
  `lLeaveFromDate` date DEFAULT NULL,
  `lLeaveToDate` date DEFAULT NULL,
  `lTotalLeaveDays` int(11) DEFAULT NULL,
  `lTotalLeaveDaysRemain` int(11) DEFAULT NULL,
  `lLeaveReason` varchar(255) DEFAULT NULL,
  `lAlternativeEmployeeCardNumber` varchar(45) DEFAULT NULL,
  `lIsApproved` tinyint(4) DEFAULT NULL,
  `lIsRecomanded` tinyint(4) DEFAULT NULL,
  `lWhoRecomand` varchar(100) DEFAULT NULL,
  `lWhoApproved` varchar(100) DEFAULT NULL,
  `lWhoEdit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeeleaveapplicationdetails`
--

INSERT INTO `employeeleaveapplicationdetails` (`lId`, `lEmployeeCodeNumberWhoApply`, `lApplyDate`, `lLeaveId`, `lEmployeeImargencyAddress`, `lLeaveFromDate`, `lLeaveToDate`, `lTotalLeaveDays`, `lTotalLeaveDaysRemain`, `lLeaveReason`, `lAlternativeEmployeeCardNumber`, `lIsApproved`, `lIsRecomanded`, `lWhoRecomand`, `lWhoApproved`, `lWhoEdit`) VALUES
(10, 'Test101', '2023-03-16', 3, 'a', '2023-03-18', '2023-03-18', 0, 1, 'Birthday ko!', 'Test101', 1, 1, 'NLCO01', 'NLCO01', NULL),
(11, 'Test101', '2023-03-17', 3, 'AAAA', '2023-03-19', '2023-03-25', 6, -5, 'VACAY', 'Test101', 0, 0, NULL, NULL, NULL),
(12, 'Test101', '2023-03-17', 2, 'a', '2023-03-18', '2023-03-19', 1, 4, 'a', 'Test101', 0, 0, NULL, NULL, NULL),
(13, 'Test101', '2023-03-17', 1, 'q', '2023-03-18', '2023-03-19', 1, 2, 'q', 'Test101', 0, 0, NULL, NULL, NULL),
(14, 'Test101', '2023-03-17', 8, 'q', '2023-03-18', '2023-03-18', 0, 30, 'q', 'Test101', 0, 0, NULL, NULL, NULL),
(15, 'Test101', '2023-03-17', 8, 'a', '2023-03-18', '2023-03-25', 7, 23, 'a', 'Test101', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leavedetails`
--

CREATE TABLE `leavedetails` (
  `lId` tinyint(4) NOT NULL,
  `lType` varchar(30) DEFAULT NULL,
  `lTotalDays` int(11) DEFAULT NULL,
  `lEmployeeCodeNumberWhoAddLeave` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leavedetails`
--

INSERT INTO `leavedetails` (`lId`, `lType`, `lTotalDays`, `lEmployeeCodeNumberWhoAddLeave`) VALUES
(1, 'Casual Leave', 3, 'NLCO01'),
(2, 'Sick Leave', 5, 'NLCO01'),
(3, 'Birthday Leave', 1, 'NLCO01'),
(4, 'Maternity Leave', 90, 'NLCO01'),
(5, 'Paternity Leave', 7, 'NLCO01'),
(6, 'Bereavement Leave', 3, 'NLCO01'),
(7, 'Sabbatical Leave', 0, 'NLCO01'),
(8, 'Unpaid Leave', 30, 'NLCO01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeeblood`
--
ALTER TABLE `employeeblood`
  ADD PRIMARY KEY (`bId`);

--
-- Indexes for table `employeedepartment`
--
ALTER TABLE `employeedepartment`
  ADD PRIMARY KEY (`dptId`),
  ADD KEY `employeedepartment_ibfk_1` (`dptEmployeeCodeNumberWhoAddDept`);

--
-- Indexes for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  ADD PRIMARY KEY (`desiId`),
  ADD KEY `desiDptId` (`desiDptId`) USING BTREE,
  ADD KEY `desiDesignationName` (`desiDesignationName`),
  ADD KEY `employeedesignation_ibfk_1` (`desiEmployeeCodeNumberWhoAddDesi`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`eId`),
  ADD UNIQUE KEY `eCodeNumber_UNIQUE` (`eEmployeeCodeNumber`);

--
-- Indexes for table `employeeleaveapplicationdetails`
--
ALTER TABLE `employeeleaveapplicationdetails`
  ADD PRIMARY KEY (`lId`),
  ADD KEY `lEmployeeLeaveType_fk_lType` (`lLeaveId`),
  ADD KEY `lEmployeeCodeNumberWhoApply` (`lEmployeeCodeNumberWhoApply`),
  ADD KEY `lWhoRecomand` (`lWhoRecomand`),
  ADD KEY `lWhoApproved` (`lWhoApproved`);

--
-- Indexes for table `leavedetails`
--
ALTER TABLE `leavedetails`
  ADD PRIMARY KEY (`lId`),
  ADD KEY `lType` (`lType`),
  ADD KEY `employeeleave_ibfk_1` (`lEmployeeCodeNumberWhoAddLeave`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeeblood`
--
ALTER TABLE `employeeblood`
  MODIFY `bId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employeedepartment`
--
ALTER TABLE `employeedepartment`
  MODIFY `dptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  MODIFY `desiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employeeleaveapplicationdetails`
--
ALTER TABLE `employeeleaveapplicationdetails`
  MODIFY `lId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `leavedetails`
--
ALTER TABLE `leavedetails`
  MODIFY `lId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeedepartment`
--
ALTER TABLE `employeedepartment`
  ADD CONSTRAINT `employeedepartment_ibfk_1` FOREIGN KEY (`dptEmployeeCodeNumberWhoAddDept`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`);

--
-- Constraints for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  ADD CONSTRAINT `desiDeptId_fk_dptId` FOREIGN KEY (`desiDptId`) REFERENCES `employeedepartment` (`dptId`),
  ADD CONSTRAINT `employeedesignation_ibfk_1` FOREIGN KEY (`desiEmployeeCodeNumberWhoAddDesi`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`);

--
-- Constraints for table `employeeleaveapplicationdetails`
--
ALTER TABLE `employeeleaveapplicationdetails`
  ADD CONSTRAINT `employeeleaveapplicationdetails_ibfk_1` FOREIGN KEY (`lEmployeeCodeNumberWhoApply`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`),
  ADD CONSTRAINT `employeeleaveapplicationdetails_ibfk_2` FOREIGN KEY (`lLeaveId`) REFERENCES `leavedetails` (`lId`),
  ADD CONSTRAINT `employeeleaveapplicationdetails_ibfk_3` FOREIGN KEY (`lWhoRecomand`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`),
  ADD CONSTRAINT `employeeleaveapplicationdetails_ibfk_4` FOREIGN KEY (`lWhoApproved`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`);

--
-- Constraints for table `leavedetails`
--
ALTER TABLE `leavedetails`
  ADD CONSTRAINT `leavedetails_ibfk_1` FOREIGN KEY (`lEmployeeCodeNumberWhoAddLeave`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
