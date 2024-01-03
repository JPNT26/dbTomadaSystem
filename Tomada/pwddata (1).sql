-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 03:27 AM
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
-- Database: `pwddata`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `pass` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `pass`) VALUES
('admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');

-- --------------------------------------------------------

--
-- Table structure for table `pwdinfo`
--

CREATE TABLE `pwdinfo` (
  `id` int(10) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `middlename` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `age` int(5) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `birthplace` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` bigint(12) NOT NULL,
  `disabilities` varchar(50) NOT NULL,
  `alive` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pwdinfo`
--

INSERT INTO `pwdinfo` (`id`, `firstname`, `middlename`, `lastname`, `sex`, `age`, `birthdate`, `birthplace`, `address`, `contact`, `disabilities`, `alive`) VALUES
(1, 'John Paul', 'Fegi', 'Tomada', 'Male', 21, '18/05/2002', 'San Juan', 'San Juan', 9532205821, 'Sensory', '1'),
(2, 'Yanna ', 'Tampos', 'Brua', 'Male', 20, '18/12/2003', 'Anhawan', 'Osao San Juan', 9354800245, 'Physical', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pwdinfo`
--
ALTER TABLE `pwdinfo`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
