-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 08:12 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_attendance`
--

CREATE TABLE IF NOT EXISTS `add_attendance` (
  `student_id` varchar(50) DEFAULT NULL,
  `student_dept` varchar(50) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_sec` varchar(50) DEFAULT NULL,
  `student_attendance` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_attendance`
--

INSERT INTO `add_attendance` (`student_id`, `student_dept`, `student_name`, `student_sec`, `student_attendance`) VALUES
('1004', 'cs', 'sacdsa', 'd', 'p');

-- --------------------------------------------------------

--
-- Table structure for table `admin_leave_approval`
--

CREATE TABLE IF NOT EXISTS `admin_leave_approval` (
  `student_id` varchar(50) DEFAULT NULL,
  `student_dept` varchar(50) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_sec` varchar(50) DEFAULT NULL,
  `leave_approval` varchar(50) DEFAULT NULL,
  `no_of_days` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apply_leave`
--

CREATE TABLE IF NOT EXISTS `apply_leave` (
  `student_id` varchar(50) NOT NULL DEFAULT '',
  `reason` varchar(50) DEFAULT NULL,
  `no_of_days` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('facebook', 'hello'),
('google', 'hello'),
('Messi', 'missi2'),
('Nissi', 'dolly'),
('Nissi1', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`id` int(11) NOT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `student_dept` varchar(50) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_sec` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `student_dept`, `student_name`, `student_sec`) VALUES
(2, NULL, 'CSE', 'Nikki', 'r'),
(4, '2002', 'MECH', 'Nissi2', 'A'),
(5, '3001', 'CSE', 'mark', 'S'),
(8, '1003', 'asDAS', 'DAS', 'ASD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_leave`
--
ALTER TABLE `apply_leave`
 ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
