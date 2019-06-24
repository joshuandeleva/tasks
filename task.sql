-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 02:57 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crude`
--

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int(40) NOT NULL,
  `task_name` varchar(50) NOT NULL,
  `date_to_do` datetime(5) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `task_name`, `date_to_do`, `status`) VALUES
(2, 'disco', '2019-06-18 00:00:00.00000', 'pending'),
(3, 'washing', '2019-06-20 00:00:00.00000', 'success'),
(8, 'disco', '2019-07-05 00:00:00.00000', 'not complete'),
(9, 'read', '2019-06-27 00:00:00.00000', 'pending'),
(10, 'dance', '2019-06-20 00:00:00.00000', 'pending'),
(11, 'disco', '2019-06-19 00:00:00.00000', 'pending'),
(12, 'movie day', '0000-00-00 00:00:00.00000', ''),
(13, 'movie day', '0000-00-00 00:00:00.00000', ''),
(14, 'movie day', '0000-00-00 00:00:00.00000', ''),
(15, 'movie day', '0000-00-00 00:00:00.00000', ''),
(16, 'movie day', '0000-00-00 00:00:00.00000', ''),
(17, 'movie day', '0000-00-00 00:00:00.00000', ''),
(18, 'movie day', '0000-00-00 00:00:00.00000', ''),
(19, 'movie day', '0000-00-00 00:00:00.00000', ''),
(20, '', '2019-06-19 00:00:00.00000', 'success'),
(21, 'movie day', '2019-06-17 00:00:00.00000', 'success'),
(22, 'sleep', '2019-06-28 00:00:00.00000', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
