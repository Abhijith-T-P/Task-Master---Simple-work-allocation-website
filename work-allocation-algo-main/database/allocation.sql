-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 07:30 PM
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
-- Database: `allocation`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dev`
--

CREATE TABLE `tbl_dev` (
  `dev_id` int(11) NOT NULL,
  `dev_name` varchar(25) NOT NULL,
  `dev_branch` int(11) NOT NULL,
  `dev_email` varchar(20) NOT NULL,
  `dev_password` varchar(20) NOT NULL,
  `dev_status` int(11) NOT NULL DEFAULT 0,
  `dev_load` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_dev`
--

INSERT INTO `tbl_dev` (`dev_id`, `dev_name`, `dev_branch`, `dev_email`, `dev_password`, `dev_status`, `dev_load`) VALUES
(1, 'Abhijith', 0, 'abhi@mail.com', 'wasd', 0, 3),
(2, 'vy', 0, 'vy@gm.co', 'vy', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manager`
--

CREATE TABLE `tbl_manager` (
  `manager_id` int(11) NOT NULL,
  `manager_name` varchar(25) NOT NULL,
  `manager_email` varchar(30) NOT NULL,
  `manager_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manager`
--

INSERT INTO `tbl_manager` (`manager_id`, `manager_name`, `manager_email`, `manager_password`) VALUES
(1, 'ary', 'ary@gmail.co', 'ary');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ticket`
--

CREATE TABLE `tbl_ticket` (
  `ticket_id` int(11) NOT NULL,
  `ticket_name` varchar(20) NOT NULL,
  `ticket_type` varchar(20) NOT NULL,
  `ticket_priority` int(11) NOT NULL,
  `ticket_set_date` date NOT NULL DEFAULT current_timestamp(),
  `ticket_deadline` date NOT NULL,
  `ticket_status` int(11) NOT NULL DEFAULT 0,
  `dev_id` int(11) NOT NULL,
  `ticket_difficulty` int(11) NOT NULL,
  `dev_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ticket`
--

INSERT INTO `tbl_ticket` (`ticket_id`, `ticket_name`, `ticket_type`, `ticket_priority`, `ticket_set_date`, `ticket_deadline`, `ticket_status`, `dev_id`, `ticket_difficulty`, `dev_type`) VALUES
(1, 'dark Mode', 'update', 4, '2023-10-27', '2023-10-31', 3, 1, 0, 'backend'),
(13, 'zxcvfdsa', 'bugfix', 2, '2023-10-28', '2023-11-02', 3, 1, 5, 'backend'),
(14, 'task alplaa', 'newf', 3, '2023-10-28', '2023-11-13', 1, 1, 5, 'cloud'),
(15, 'alocation algorithm', 'update', 3, '2023-10-28', '2023-10-30', 1, 2, 5, 'backend'),
(16, 'task alplaa', 'newf', 3, '2023-10-28', '2023-11-13', 3, 2, 5, 'cloud');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dev`
--
ALTER TABLE `tbl_dev`
  ADD PRIMARY KEY (`dev_id`);

--
-- Indexes for table `tbl_manager`
--
ALTER TABLE `tbl_manager`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dev`
--
ALTER TABLE `tbl_dev`
  MODIFY `dev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_manager`
--
ALTER TABLE `tbl_manager`
  MODIFY `manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
