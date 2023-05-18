-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 02:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `order_date`, `price`, `quantity`) VALUES
(1, 3, '2023-05-18', 500, 3),
(2, 1, '2023-05-16', 450, 10),
(3, 1, '2023-04-16', 300, 5),
(4, 2, '2023-05-12', 350, 9),
(5, 7, '2023-05-08', 500, 7),
(6, 4, '2023-05-09', 500, 3),
(7, 5, '2023-05-12', 500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL CHECK (`age` >= 18),
  `gender` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `city` varchar(15) NOT NULL DEFAULT 'Surat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `age`, `gender`, `phone`, `city`) VALUES
(1, 'yash', 21, 'male', '1472583690', 'Bhavnager'),
(2, 'kano', 18, 'male', '4879561237', 'Surat'),
(3, 'jenish', 20, 'male', '9987546128', 'Surat'),
(4, 'vinay', 23, 'male', '0258964713', 'Surat'),
(5, 'pooja', 21, 'female', '998561147', 'rajkot'),
(6, 'shivani', 23, 'female', '7894561230', 'rajkot'),
(7, 'jatin', 21, 'male', '4785120369', 'Bhavnager'),
(8, 'jemisha', 26, 'female', '4785465469', 'junaghadh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `phone` (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
