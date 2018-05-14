-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 14, 2018 at 06:17 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `training`
--

-- --------------------------------------------------------

--
-- Table structure for table `Dept`
--

CREATE TABLE IF NOT EXISTS `Dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `loc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `Dept`
--

INSERT INTO `Dept` (`id`, `name`, `loc`) VALUES
(113, 'Sales', 'Delhi'),
(114, 'Marketing', 'Noida'),
(115, 'Sales', 'Delhi'),
(116, 'Marketing', 'Noida'),
(117, 'Sales', 'Delhi'),
(118, 'Marketing', 'Noida');

-- --------------------------------------------------------

--
-- Table structure for table `Emp`
--

CREATE TABLE IF NOT EXISTS `Emp` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `job` varchar(30) NOT NULL,
  `salary` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `Emp`
--

INSERT INTO `Emp` (`id`, `name`, `job`, `salary`) VALUES
(20, 'Ravi', 'Trainer', 45000),
(22, 'Ravi', 'Trainer', 45000),
(23, 'Amit', 'Trainee', 12000),
(24, 'Ravi', 'Trainer', 45000),
(25, 'AA', 'xx', 5555),
(26, 'Ravikant', 'Manager', 85000);

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE IF NOT EXISTS `Employees` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `salary` int(6) NOT NULL,
  `deptId` int(5) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Emp_Dept`
--

CREATE TABLE IF NOT EXISTS `Emp_Dept` (
  `empId` int(8) NOT NULL,
  `deptId` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Emp_Dept`
--

INSERT INTO `Emp_Dept` (`empId`, `deptId`) VALUES
(1, 101),
(2, 101),
(3, 102),
(4, 104);

-- --------------------------------------------------------

--
-- Table structure for table `UserMaster`
--

CREATE TABLE IF NOT EXISTS `UserMaster` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `mailId` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `UserMaster`
--

INSERT INTO `UserMaster` (`id`, `name`, `mailId`, `password`, `isActive`) VALUES
(1, 'Neeraj', 'neeraj@gmail.com', '1234', 1),
(2, 'Raman', 'raman@gmail.com', '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `User_Roles`
--

CREATE TABLE IF NOT EXISTS `User_Roles` (
  `roleId` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `role` varchar(35) NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `User_Roles`
--

INSERT INTO `User_Roles` (`roleId`, `username`, `role`) VALUES
(1, 'neeraj@gmail.com', 'ADMIN'),
(2, 'raman@gmail.com', 'USER');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
