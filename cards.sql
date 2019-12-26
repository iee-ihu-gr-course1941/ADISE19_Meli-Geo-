-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2019 at 07:00 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysql_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `card_value` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`card_value`, `color`, `number`) VALUES
('0', 'green', 1),
('1', 'green', 1),
('1', 'green', 2),
('2', 'green', 1),
('2', 'green', 2),
('3', 'green', 1),
('3', 'green', 2),
('4', 'green', 1),
('4', 'green', 2),
('5', 'green', 1),
('5', 'green', 2),
('6', 'green', 1),
('6', 'green', 2),
('7', 'green', 1),
('7', 'green', 2),
('8', 'green', 1),
('8', 'green', 2),
('9', 'green', 1),
('9', 'green', 2),
('Skip', 'green', 1),
('Skip', 'green', 2),
('Draw Two', 'green', 1),
('Draw Two', 'green', 2),
('Reverse', 'green', 1),
('Reverse', 'green', 2),
('0', 'red', 1),
('1', 'red', 1),
('1', 'red', 2),
('2', 'red', 1),
('2', 'red', 2),
('3', 'red', 1),
('3', 'red', 2),
('4', 'red', 1),
('4', 'red', 2),
('5', 'red', 1),
('5', 'red', 2),
('6', 'red', 1),
('6', 'red', 2),
('7', 'red', 1),
('7', 'red', 2),
('8', 'red', 1),
('8', 'red', 2),
('9', 'red', 1),
('9', 'red', 2),
('Skip', 'red', 1),
('Skip', 'red', 2),
('Draw Two', 'red', 1),
('Draw Two', 'red', 2),
('Reverse', 'red', 1),
('Reverse', 'red', 2),
('0', 'blue', 1),
('1', 'blue', 1),
('1', 'blue', 2),
('2', 'blue', 1),
('2', 'blue', 2),
('3', 'blue', 1),
('3', 'blue', 2),
('4', 'blue', 1),
('4', 'blue', 2),
('5', 'blue', 1),
('5', 'blue', 2),
('6', 'blue', 1),
('6', 'blue', 2),
('7', 'blue', 1),
('7', 'blue', 2),
('8', 'blue', 1),
('8', 'blue', 2),
('9', 'blue', 1),
('9', 'blue', 2),
('Skip', 'blue', 1),
('Skip', 'blue', 2),
('Draw Two', 'blue', 1),
('Draw Two', 'blue', 2),
('Reverse', 'blue', 1),
('Reverse', 'blue', 2),
('0', 'yellow', 1),
('1', 'yellow', 1),
('1', 'yellow', 2),
('2', 'yellow', 1),
('2', 'yellow', 2),
('3', 'yellow', 1),
('3', 'yellow', 2),
('4', 'yellow', 1),
('4', 'yellow', 2),
('5', 'yellow', 1),
('5', 'yellow', 2),
('6', 'yellow', 1),
('6', 'yellow', 2),
('7', 'yellow', 1),
('7', 'yellow', 2),
('8', 'yellow', 1),
('8', 'yellow', 2),
('9', 'ytellow', 1),
('9', 'yellow', 2),
('Skip', 'yellow', 1),
('Skip', 'yellow', 2),
('Draw Two', 'yellow', 1),
('Draw Two', 'yellow', 2),
('Reverse', 'yellow', 1),
('Reverse', 'yellow', 2),
('Wild', 'none', 1),
('Wild', 'none', 2),
('Wild', 'none', 3),
('Wild', 'none', 4),
('Wild Draw Four', 'none', 1),
('Wild Draw Four', 'none', 2),
('Wild Draw Four', 'none', 3),
('Wild Draw Four', 'none', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
