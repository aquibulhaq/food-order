-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 11:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_panel`
--

CREATE TABLE `admin_panel` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_panel`
--

INSERT INTO `admin_panel` (`id`, `full_name`, `username`, `password`) VALUES
(13, 'Maharshi Niloy', 'Babai', '6ce66de0a5025b8babf0ae6c5fa09197'),
(15, 'Rehanul Ahmed', 'Rehan', 'c8cd25edf2b7c59708c28f91be5056d3'),
(16, 'Sadia Rahman', 'Megha', '5d1b6396842a0681454f44c71ffb99a5'),
(17, 'Aquibul Haq Chowdhury', 'Aquib', '473eabd6bf76a03c37bb51a95e49fffa'),
(18, 'Sadi Mahmud Foysal', 'Ovi', '0dbbf2e5d9b935640ec055ff62a710b7'),
(19, 'Admin', 'admin', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(9, 'Pizza', 'Food_Category_990.jpg', 'Yes', 'Yes'),
(10, 'Burger', 'Food_Category_618.jpg', 'Yes', 'Yes'),
(11, 'Momo', 'Food_Category_662.jpg', 'Yes', 'Yes'),
(12, 'Dessert', 'Food_Category_202.jpeg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Mixed Burger', '100.00', 3, '300.00', '2020-11-30 03:49:48', 'Cancelled', 'Ahsan Habib', '01777190023', 'ahsan@gamil.com', 'Mirpur'),
(2, 'Best Burger', '60.00', 4, '240.00', '2020-11-30 03:52:43', 'Delivered', 'Ashik Moni', '01916521221', 'ashik_moni@yahoo.com', 'Dhanmondi'),
(3, 'Smoky BBQ Pizza', '150.00', 2, '300.00', '2020-11-30 04:07:17', 'On Delivery', 'Joy Barua', '01712171811', 'joy96@hotmail.com', 'Baridhara'),
(4, 'Taco', '45.00', 5, '225.00', '2021-05-10 10:53:30', 'Ordered', 'Chanchal Chowdhury', '01319834001', 'chan_chow@gmail.com', 'Dhanmondi');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Taco', 'Taco with cheese, chicken and herbs from Mountains', '45.00', 'Food-Name-1599.jpg', 11, 'Yes', 'Yes'),
(4, 'Best Burger', 'Burger with Ham, Pineapple and lots of Cheese.', '60.00', 'Food-Name-6340.jpg', 10, 'Yes', 'Yes'),
(5, 'Smoky BBQ Pizza', 'Best Firewood Pizza in Town.', '150.00', 'Food-Name-8298.jpg', 9, 'No', 'Yes'),
(6, 'Sadeko Momo', 'Best Spicy Momo for Winter', '70.00', 'Food-Name-7387.jpg', 11, 'Yes', 'Yes'),
(7, 'Mixed Burger', 'Burger with chicken, Ham, Buff, Mushroom and Vegetables', '100.00', 'Food-Name-8611.jpg', 9, 'Yes', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_panel`
--
ALTER TABLE `admin_panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_panel`
--
ALTER TABLE `admin_panel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
