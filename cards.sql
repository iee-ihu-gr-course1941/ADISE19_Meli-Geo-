-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 28 Δεκ 2019 στις 20:15:11
-- Έκδοση διακομιστή: 10.4.8-MariaDB
-- Έκδοση PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `uno`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `cards`
--

CREATE TABLE `cards` (
  `id` int(108) NOT NULL,
  `name` varchar(10) NOT NULL,
  `value` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `cards`
--

INSERT INTO `cards` (`id`, `name`, `value`, `color`) VALUES
(1, 'red 0', '0', 'red'),
(2, 'red 1', '1', 'red'),
(13, 'red 1', '1', 'red'),
(14, 'red 2', '2', 'red'),
(15, 'red 2', '2', 'red'),
(16, 'red 3', '3', 'red'),
(17, 'red 3', '3', 'red'),
(18, 'red 4', '4', 'red'),
(19, 'red 4', '4', 'red'),
(20, 'red 5', '5', 'red'),
(21, 'red 5', '5', 'red'),
(22, 'red 6', '6', 'red'),
(23, 'red 6', '6', 'red'),
(24, 'red 7', '7', 'red'),
(25, 'red 7', '7', 'red'),
(26, 'red 8', '8', 'red'),
(27, 'red 8', '8', 'red'),
(28, 'red 9', '9', 'red'),
(29, 'red S ', 'Skip', 'red'),
(30, 'red S', 'Skip', 'red'),
(31, 'red R', 'Reverse', 'red'),
(32, 'red R', 'Reverse', 'red'),
(33, 'red +2', 'Draw Two', 'red'),
(34, 'red +2', 'Draw Two', 'red'),
(35, 'yellow 0 ', '0', 'yellow'),
(36, 'yellow 1 ', '1', 'yellow'),
(37, 'yellow 1 ', '1', 'yellow'),
(38, 'yellow 2', '2', 'yellow'),
(39, 'yellow 2', '2', 'yellow'),
(40, 'yellow 3', '3', 'yellow'),
(41, 'yellow 3', '3', 'yellow'),
(42, 'yellow 4', '4', 'yellow'),
(43, 'yellow 4', '4', 'yellow'),
(44, 'yellow 5', '5', 'yellow'),
(45, 'yellow 5', '5', 'yellow'),
(46, 'yellow 6', '6', 'yellow'),
(47, 'yellow 6', '6', 'yellow'),
(48, 'yellow 7', '7', 'yellow'),
(49, 'yellow 7', '7', 'yellow'),
(50, 'yellow 8', '8', 'yellow'),
(51, 'yellow 8', '8', 'yellow'),
(52, 'yellow 9', '9', 'yellow'),
(53, 'yellow 9', '9', 'yellow'),
(54, 'yellow 9', '9', 'yellow'),
(55, 'yellow S', 'Skip', 'yellow'),
(56, 'yellow S', 'Skip', 'yellow'),
(57, 'yellow R', 'Reverse', 'yellow'),
(58, 'yellow R', 'Reverse', 'yellow'),
(59, 'yellow +2', 'Draw Two', 'yellow'),
(60, 'yellow +2', 'Draw Two', 'yellow'),
(61, 'green 0', '0', 'green'),
(62, 'green 1', '1', 'green'),
(63, 'green 1', '1', 'green'),
(64, 'green 2', '2', 'green'),
(65, 'green 2', '2', 'green'),
(66, 'green 3', '3', 'green'),
(67, 'green 3', '3', 'green'),
(68, 'green 4', '4', 'green'),
(69, 'green 4', '4', 'green'),
(70, 'green 5', '5', 'green'),
(71, 'green 5', '5', 'green'),
(72, 'green 6', '6', 'green'),
(73, 'green 6', '6', 'green'),
(74, 'green 7', '7', 'green'),
(75, 'green 7', '7', 'green'),
(76, 'green 8', '8', 'green'),
(77, 'green 8', '8', 'green'),
(78, 'green 9', '9', 'green'),
(79, 'green 9', '9', 'green'),
(80, 'green S', 'Skip', 'green'),
(81, 'green S', 'Skip', 'green'),
(82, 'green R', 'Reverse', 'green'),
(83, 'green R', 'Reverse', 'green'),
(84, 'green +2', 'Draw Two', 'green'),
(85, 'green +2', 'Draw Two', 'green'),
(86, 'blue 0', '0', 'blue'),
(87, 'blue 1', '1', 'blue'),
(88, 'blue 1', '1', 'blue'),
(89, 'blue 2', '2', 'blue'),
(90, 'blue 2', '2', 'blue'),
(91, 'blue 3', '3', 'blue'),
(92, 'blue 3', '3', 'blue'),
(93, 'blue 4', '4', 'blue'),
(94, 'blue 4', '4', 'blue'),
(95, 'blue 5', '5', 'blue'),
(96, 'blue 5', '5', 'blue'),
(97, 'blue 6', '6', 'blue'),
(98, 'blue 6', '6', 'blue'),
(99, 'blue 7', '7', 'blue'),
(100, 'blue 7', '7', 'blue'),
(101, 'blue 8', '8', 'blue'),
(102, 'blue 8', '8', 'blue'),
(103, 'blue 9', '9', 'blue'),
(104, 'blue 9', '9', 'blue'),
(105, 'blue S', 'Skip', 'blue'),
(106, 'blue S', 'Skip', 'blue'),
(107, 'blue R', 'Reverse', 'blue'),
(108, 'blue R', 'Reverse', 'blue'),
(109, 'blue +2', 'Draw Two', 'blue'),
(110, 'blue +2', 'Draw Two ', 'blue'),
(111, 'W', 'Wild', 'none'),
(112, 'W', 'Wild', 'none'),
(113, 'W', 'Wild', 'none'),
(114, 'W', 'Wild', 'none'),
(115, '+4', 'Draw Four', 'none'),
(116, '+4', 'Draw Four', 'none'),
(117, '+4', 'Draw Four', 'none'),
(118, '+4', 'Draw Four', 'none');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(108) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
