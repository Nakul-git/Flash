-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 04:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flash`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin` varchar(50) NOT NULL,
  `name` varchar(35) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `agent_id` varchar(12) NOT NULL,
  `name` varchar(35) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `location` varchar(35) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`agent_id`, `name`, `contact_no`, `location`, `password`) VALUES
('A0000001', 'Nakul Joshi', '9755424477', 'Indore', 'nakul@123'),
('A0000007', 'Karan Chopra', '8819807777', 'Indore', 'karan@123'),
('A0000069', 'Harshvardhan Panchal', '8103865262', 'Dewas', 'harsh@123');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `issue_id` varchar(11) NOT NULL,
  `user_id` varchar(12) NOT NULL,
  `agent_id` varchar(12) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `lng` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`issue_id`, `user_id`, `agent_id`, `subject`, `message`, `address`, `lat`, `lng`, `status`) VALUES
('1761494686', 'N1234567890', 'A0000007', 'Hello', 'Hello HI', 'kalani nagar', '22.730879331047092', '75.82318639735605', 'OPEN'),
('2147483647', 'N1234567890', 'A0000007', 'Hello ', 'Hello My name is Karan', '76,vyanktesh Nagar Ext.', '22.7308781951791', '75.82322931270028', 'WAITING'),
('2246372157', 'N1234567890', 'A0000069', 'Karan', 'Hi Panchal', 'kalani nagar', '23.1559', '77.4085', 'OPEN');

-- --------------------------------------------------------

--
-- Table structure for table `issue_images`
--

CREATE TABLE `issue_images` (
  `issue_id` varchar(11) NOT NULL,
  `filename` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_images`
--

INSERT INTO `issue_images` (`issue_id`, `filename`) VALUES
('2540777833', '2eenHGoYPm.jpg'),
('2540777833', 'mansTC2Uff.jpg'),
('2540777833', 'oDTHokI1d9.jpg'),
('2540777833', 'vh6NwWel5j.jpg'),
('4089629944', 'sGvFutlwgN.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(12) NOT NULL,
  `name` varchar(35) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `contact_no`, `address`, `password`) VALUES
('N1234567890', 'Nakul Joshi', '9755424477', '402, lokmanaya nagar, indore, madhya pradesh,452001', 'nakul@123'),
('N1234567891', 'Harshvardhan Panchal', '8103865262', '103,sudama nagar,indore , madhya pradesh. 452002', 'harsh@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `issue_images`
--
ALTER TABLE `issue_images`
  ADD PRIMARY KEY (`issue_id`,`filename`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
