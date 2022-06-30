-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 03:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie_name`
--

CREATE TABLE `movie_name` (
  `id` int(100) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `actor` varchar(100) NOT NULL,
  `actress` varchar(100) NOT NULL,
  `year_of_release` int(50) NOT NULL,
  `director` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_name`
--

INSERT INTO `movie_name` (`id`, `movie`, `actor`, `actress`, `year_of_release`, `director`) VALUES
(1, 'Vikram', 'Kamalhasan', 'None', 2022, 'Lokesh Kanagaraj'),
(2, 'Linga', 'ranjinikanth', 'Anushka Shetty', 2014, 'K. S. Ravikumar'),
(3, 'Master', 'Vijay', 'Malavika Mohan', 2021, 'Lokesh Kanagaraj'),
(4, 'Ghilli', 'Vijay', 'Trisha Krishnan', 2004, 'Dharani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie_name`
--
ALTER TABLE `movie_name`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
