-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2021 at 12:29 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_water`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladminlogin`
--

CREATE TABLE IF NOT EXISTS `tbladminlogin` (
  `AdminLogin_id` int(11) NOT NULL AUTO_INCREMENT,
  `AdminUsername` varchar(45) DEFAULT NULL,
  `AdminPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AdminLogin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbladminlogin`
--

INSERT INTO `tbladminlogin` (`AdminLogin_id`, `AdminUsername`, `AdminPassword`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_application`
--

CREATE TABLE IF NOT EXISTS `tbl_application` (
  `ApplicationId` int(11) NOT NULL AUTO_INCREMENT,
  `ADId` int(11) DEFAULT NULL,
  `ALId` int(11) DEFAULT NULL,
  `AOId` int(11) DEFAULT NULL,
  `ACId` int(11) DEFAULT NULL,
  `ATypeId` int(11) DEFAULT NULL,
  `ApplicationName` varchar(45) DEFAULT NULL,
  `ApplicationContact` bigint(20) DEFAULT NULL,
  `ApplicationAddress` varchar(45) DEFAULT NULL,
  `IdProof` varchar(45) DEFAULT NULL,
  `ApplicationDate` date DEFAULT NULL,
  `Status` varchar(45) DEFAULT 'Pending',
  `PayStatus` varchar(45) DEFAULT 'Pending',
  PRIMARY KEY (`ApplicationId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_application`
--

INSERT INTO `tbl_application` (`ApplicationId`, `ADId`, `ALId`, `AOId`, `ACId`, `ATypeId`, `ApplicationName`, `ApplicationContact`, `ApplicationAddress`, `IdProof`, `ApplicationDate`, `Status`, `PayStatus`) VALUES
(1, 6, 2, 2, 1, 2, 'ALBINA CHACKO', 9188084887, 'albinachacko123@gmail.com', '8567 8999 4567', '2021-04-15', 'ACCEPTED', 'Done'),
(3, 5, 3, 3, 3, 2, 'SNEHAMOL THOMAS', 8590518644, 'snehamolthomas83@gmail.com', '8567 7999 2345', '2021-04-16', 'ACCEPTED', 'Done'),
(4, 1, 4, 4, 4, 3, 'MOHAN JHON', 9087898767, 'minnu@gmail.com', '8567 8999 4555', '2021-04-27', 'ACCEPTED', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill`
--

CREATE TABLE IF NOT EXISTS `tbl_bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) DEFAULT NULL,
  `previous_reading` varchar(45) DEFAULT NULL,
  `current_reading` varchar(45) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_bill`
--

INSERT INTO `tbl_bill` (`bill_id`, `application_id`, `previous_reading`, `current_reading`, `amount`, `from_date`, `to_date`, `due_date`, `status`) VALUES
(2, 1, '100', '200', 2000, '2021-04-19', '2021-04-30', '2021-05-02', 'Pending'),
(3, 3, '300', '500', 4000, '2021-04-19', '2021-04-30', '2021-05-04', 'Done'),
(4, 4, '200', '500', 6000, '2021-04-27', '2021-04-30', '2021-05-08', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE IF NOT EXISTS `tbl_complaint` (
  `ComplaintId` int(11) NOT NULL AUTO_INCREMENT,
  `ComDId` int(11) DEFAULT NULL,
  `ComLId` int(11) DEFAULT NULL,
  `ComOId` int(11) DEFAULT NULL,
  `ComTypeId` int(11) DEFAULT NULL,
  `ComCId` int(11) DEFAULT NULL,
  `Complaint` varchar(45) DEFAULT NULL,
  `CStatus` varchar(45) DEFAULT 'Pending',
  PRIMARY KEY (`ComplaintId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_complaint`
--

INSERT INTO `tbl_complaint` (`ComplaintId`, `ComDId`, `ComLId`, `ComOId`, `ComTypeId`, `ComCId`, `Complaint`, `CStatus`) VALUES
(1, 6, 2, 2, 2, 1, 'TTTTT', 'ACTION INITIATED');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_connection`
--

CREATE TABLE IF NOT EXISTS `tbl_connection` (
  `TypeId` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TypeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_connection`
--

INSERT INTO `tbl_connection` (`TypeId`, `Type`) VALUES
(2, 'DOMESTIC'),
(3, 'NONDOMESTIC');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `CustomerId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(45) DEFAULT NULL,
  `HouseName` varchar(45) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `DateOfOrder` date DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Place` varchar(45) DEFAULT NULL,
  `Contact` bigint(20) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `CPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`CustomerId`, `CustomerName`, `HouseName`, `DateOfBirth`, `DateOfOrder`, `Gender`, `Place`, `Contact`, `Email`, `CPassword`) VALUES
(1, 'ALBINA CHACKO', 'KOLLAMPARAMBIL', '2000-01-11', '2021-04-13', 'Female', 'NEDUMKANDAM', 9188084887, 'albinachacko123@gmail.com', 'ALBINA'),
(3, 'SNEHAMOL THOMAS', 'VSVMSBB', '1999-12-03', '2021-04-16', 'Female', 'PALA', 8590518644, 'snehamolthomas83@gmail.com', 'SNEHA'),
(4, 'MOHAN  JHON', 'GSHGK', '2000-10-27', '2021-04-27', 'Male', 'KATTAKADA', 9087898767, 'minnu@gmail.com', 'MINNU'),
(5, 'SNEHA', 'VSVMSBBM', '1999-12-03', '2021-05-24', 'Female', 'NEDUMKANDAM', 9987654356, 'snehamolthomas4@gmail.com', 'customer1004');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE IF NOT EXISTS `tbl_district` (
  `DistrictId` int(11) NOT NULL AUTO_INCREMENT,
  `DistrictName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DistrictId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`DistrictId`, `DistrictName`) VALUES
(1, 'THIRUVANANTHAPURAM'),
(2, 'KOLLAM'),
(3, 'ALAPPUZHA'),
(4, 'PATHANAMTHITTA'),
(5, 'KOTTAYAM'),
(6, 'IDUKKI'),
(7, 'ERNAKULAM'),
(8, 'THRISSUR'),
(9, 'PALAKKAD'),
(10, 'MALAPPURAM'),
(11, 'KOZHIKODE'),
(12, 'WAYANAD'),
(13, 'KANNUR'),
(14, 'KASARAGOD');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_engineer`
--

CREATE TABLE IF NOT EXISTS `tbl_engineer` (
  `EngineerId` int(11) NOT NULL AUTO_INCREMENT,
  `EDId` int(11) DEFAULT NULL,
  `ELId` int(11) DEFAULT NULL,
  `EOId` int(11) DEFAULT NULL,
  `EngineerName` varchar(45) DEFAULT NULL,
  `EngineerPhone` bigint(20) DEFAULT NULL,
  `EngineerEmail` varchar(45) DEFAULT NULL,
  `EngPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EngineerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_engineer`
--

INSERT INTO `tbl_engineer` (`EngineerId`, `EDId`, `ELId`, `EOId`, `EngineerName`, `EngineerPhone`, `EngineerEmail`, `EngPassword`) VALUES
(1, 6, 2, 2, 'JAMES PETER', 8567985769, 'jamespeter@gmail.com', 'peter'),
(2, 5, 3, 3, 'THOMAS', 7889865456, 'thomas8888@gmail.com', 'THOMAS'),
(3, 1, 4, 4, 'MARY', 6789778786, 'mary@gmail.com', 'MARY');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE IF NOT EXISTS `tbl_location` (
  `LocationId` int(11) NOT NULL AUTO_INCREMENT,
  `DId` int(11) DEFAULT NULL,
  `LocationName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LocationId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`LocationId`, `DId`, `LocationName`) VALUES
(2, 6, 'NEDUMKANDAM'),
(3, 5, 'PALA'),
(4, 1, 'KATTAKADA'),
(5, 6, 'KATTAPPANA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_office`
--

CREATE TABLE IF NOT EXISTS `tbl_office` (
  `OfficeId` int(11) NOT NULL AUTO_INCREMENT,
  `ODId` int(11) DEFAULT NULL,
  `OLId` int(11) DEFAULT NULL,
  `OfficeName` varchar(45) DEFAULT NULL,
  `LandMark` varchar(45) DEFAULT NULL,
  `OfficeAddress` varchar(45) DEFAULT NULL,
  `OfficePhone` bigint(20) DEFAULT NULL,
  `OfficeEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OfficeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_office`
--

INSERT INTO `tbl_office` (`OfficeId`, `ODId`, `OLId`, `OfficeName`, `LandMark`, `OfficeAddress`, `OfficePhone`, `OfficeEmail`) VALUES
(2, 6, 2, 'WATER SUPPLY NEDUMKANDAM', 'NEARBY CHURCH', 'NEDUMKANDAM', 9857856788, 'watersupplynedumkandam@gmail.com'),
(3, 5, 3, 'WATER SUPPLY PALA', 'NEARBY CHURCH', 'PALA', 8756876545, 'watersupplypala@gmail.com'),
(4, 1, 4, 'WATER SUPPLY KATTAKADA', 'NEARBY CHURCH', 'KATTAKADA', 7685678678, 'watersupplykattakada@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `PaymentId` int(11) NOT NULL AUTO_INCREMENT,
  `PCId` int(11) DEFAULT NULL,
  `ConsumerId` int(11) DEFAULT NULL,
  `PaidAmount` double DEFAULT NULL,
  `PaidDate` date DEFAULT NULL,
  PRIMARY KEY (`PaymentId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`PaymentId`, `PCId`, `ConsumerId`, `PaidAmount`, `PaidDate`) VALUES
(1, 1, 1, 1020, '2021-04-27'),
(4, 3, 3, 1020, '2021-04-28'),
(12, 1, 1, 2000, '2021-04-28'),
(30, 4, 4, 1020, '2021-05-02'),
(31, 1, 1, 2000, '2021-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tariff`
--

CREATE TABLE IF NOT EXISTS `tbl_tariff` (
  `Tariff_Id` int(11) NOT NULL AUTO_INCREMENT,
  `TTId` int(11) DEFAULT NULL,
  `Minimum_Quality` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Addition` int(11) DEFAULT NULL,
  PRIMARY KEY (`Tariff_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_tariff`
--

INSERT INTO `tbl_tariff` (`Tariff_Id`, `TTId`, `Minimum_Quality`, `Amount`, `Addition`) VALUES
(2, 2, 16, 20, 2),
(3, 3, 20, 25, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
