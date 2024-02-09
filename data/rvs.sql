-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 10:06 PM
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
-- Database: `rvs`
--

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `msisdn` varchar(25) NOT NULL,
  `source` text NOT NULL,
  `created_after` date NOT NULL,
  `created_before` date NOT NULL,
  `create_by` text NOT NULL,
  `category` text NOT NULL,
  `comments` int(100) NOT NULL,
  `type` varchar(25) NOT NULL,
  `number_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `id` int(11) NOT NULL,
  `calling_party` varchar(25) NOT NULL,
  `called_party` varchar(25) NOT NULL,
  `call_date` date NOT NULL,
  `service_key` varchar(25) NOT NULL,
  `node` varchar(25) NOT NULL,
  `terminating_operator` varchar(25) NOT NULL,
  `home_operator` varchar(25) NOT NULL,
  `srism_result` varchar(25) NOT NULL,
  `ati_result` varchar(25) NOT NULL,
  `subscriber_state` varchar(25) NOT NULL,
  `verification_decision` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whitelist`
--

CREATE TABLE `whitelist` (
  `msisdn` int(25) NOT NULL,
  `home_operator` varchar(25) NOT NULL,
  `source` varchar(25) NOT NULL,
  `created_after` date NOT NULL,
  `created_before` date NOT NULL,
  `created_by` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
