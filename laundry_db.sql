-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2024 at 02:14 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u414551508_laundry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archived_category`
--

CREATE TABLE `archived_category` (
  `archive_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `laundry_category_option` varchar(255) NOT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archived_category`
--

INSERT INTO `archived_category` (`archive_id`, `category_id`, `laundry_category_option`, `archived_at`) VALUES
(1, 9, 'rugs', '2024-09-18 10:33:07'),
(2, 10, 'clothes ', '2024-09-21 06:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `archived_customers`
--

CREATE TABLE `archived_customers` (
  `archive_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `brgy` varchar(255) NOT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archived_customers`
--

INSERT INTO `archived_customers` (`archive_id`, `customer_id`, `customer_name`, `contact_number`, `province`, `city`, `address`, `brgy`, `archived_at`) VALUES
(22, 142, '1231', '09135463455', '', '', '11', '', '2024-11-28 13:57:58'),
(23, 143, '1', '09245342532', '', '', '1', '', '2024-11-28 13:58:01'),
(24, 144, '23', '09254345345', '', '', '31', '', '2024-11-28 13:58:04'),
(25, 148, 'test', '09341233112', '', '', '1', '', '2024-11-28 13:58:09'),
(26, 149, '123', '09234214213', '', '', '1', '', '2024-11-28 13:58:12'),
(27, 153, '09', '09134131231', '', '', '12312', '', '2024-11-28 13:58:17'),
(28, 160, '1123', '09231231232', '', '', '1', '', '2024-11-28 13:58:27'),
(29, 165, '23423', '09888888888', '', '', '1', '', '2024-11-28 13:58:30'),
(30, 145, '1', '09123123123', '', '', '', '', '2024-11-28 13:58:38'),
(31, 146, '1', '09312421341', '', '', '', '', '2024-11-28 13:58:42'),
(32, 147, '1', '09234234242', '', '', '', '', '2024-11-28 13:58:45'),
(33, 150, '1', '09821341231', '', '', '', '', '2024-11-28 13:58:49'),
(34, 151, '1', '09234234324', '', '', '', '', '2024-11-28 13:58:51'),
(35, 152, '1', '09123213123', '', '', '', '', '2024-11-28 13:58:54'),
(36, 154, '1', '09123123213', '', '', '', '', '2024-11-28 13:58:58'),
(37, 155, '1', '09234213423', '', '', '', '', '2024-11-28 13:59:00'),
(38, 156, '1', '09242342342', '', '', '', '', '2024-11-28 13:59:02'),
(39, 157, '1', '09121231231', '', '', '', '', '2024-11-28 13:59:06'),
(40, 158, '1', '09354234234', '', '', '', '', '2024-11-28 13:59:08'),
(41, 161, '1', '09234234234', '', '', '', '', '2024-11-28 13:59:11'),
(42, 162, '1', '09132412312', '', '', '', '', '2024-11-28 13:59:15'),
(43, 163, '1', '09923423423', '', '', '', '', '2024-11-28 13:59:18'),
(44, 164, '1', '09999999999', '', '', '', '', '2024-11-28 13:59:20'),
(45, 166, '1', '09213412312', '', '', '', '', '2024-11-28 13:59:23'),
(46, 167, '1', '09777777777', '', '', '', '', '2024-11-28 13:59:26'),
(47, 168, '1', '09666666666', '', '', '', '', '2024-11-28 13:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `archived_service`
--

CREATE TABLE `archived_service` (
  `archive_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `laundry_service_option` varchar(255) NOT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archived_service`
--

INSERT INTO `archived_service` (`archive_id`, `service_id`, `laundry_service_option`, `archived_at`) VALUES
(2, 4, 'Wash only', '2024-09-18 10:47:12'),
(3, 7, 'Shoe clean', '2024-11-12 07:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `archived_users`
--

CREATE TABLE `archived_users` (
  `archive_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archived_users`
--

INSERT INTO `archived_users` (`archive_id`, `user_id`, `username`, `first_name`, `last_name`, `user_role`, `archived_at`) VALUES
(7, 60, 'MagGreene', 'Maggie', 'Greene', 'admin', '2024-10-05 14:41:24'),
(19, 80, 'dorisM', 'Doris', 'Medrano', 'admin', '2024-11-27 14:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(255) NOT NULL,
  `laundry_category_option` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `laundry_category_option`) VALUES
(1, 'Clothes/Table Napkins/Pillowcase'),
(2, 'Bedsheet/Table Cloths/Curtain'),
(3, 'Comforter/Bath towel');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `brgy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_number`, `province`, `city`, `address`, `brgy`) VALUES
(87, 'Lavender Brown', '09897976897', 'bulacan', 'sjdm', 'Sarmiento Village', 'Francisco Homes - Guijo'),
(92, 'Nathaniel Aballa', '09778273232', 'bulacan', 'sjdm', 'Uc 2 Lower', 'Francisco Homes - Mulawin'),
(106, 'Jubilyn Villafuerte', '09876789767', 'bulacan', 'sjdm', 'Chesnut St.', 'Tungkong Mangga'),
(126, 'Theresa Lumabi', '09987768987', 'bulacan', 'sjdm', 'Churchville', 'Francisco Homes - Guijo'),
(137, 'Lisa Manoban', '09878908790', 'bulacan', 'sjdm', 'Sarmiento Village', 'Maharlika'),
(159, 'Tzuyu Chou', '09768908989', 'bulacan', 'sjdm', 'Towerville', 'Kaybanban');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_category`
--

CREATE TABLE `delivery_category` (
  `d_categoryID` int(255) NOT NULL,
  `delivery_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_category`
--

INSERT INTO `delivery_category` (`d_categoryID`, `delivery_category`) VALUES
(1, 'Delivery (outside Gaya-gaya)'),
(2, 'Delivery (within Gaya-gaya)');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `laundry_service_option` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `laundry_service_option`) VALUES
(1, 'Wash/Dry/Fold'),
(2, 'Wash/Dry/Press'),
(3, 'Dry only');

-- --------------------------------------------------------

--
-- Table structure for table `service_category_price`
--

CREATE TABLE `service_category_price` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_category_price`
--

INSERT INTO `service_category_price` (`id`, `service_id`, `category_id`, `price`) VALUES
(1, 1, 1, 35.00),
(2, 1, 2, 45.00),
(3, 1, 3, 55.00),
(4, 2, 1, 80.00),
(5, 2, 2, 100.00),
(6, 3, 1, 35.00),
(7, 3, 2, 45.00),
(8, 3, 3, 55.00),
(9, 8, 4, 85.00);

-- --------------------------------------------------------

--
-- Table structure for table `service_options`
--

CREATE TABLE `service_options` (
  `option_id` int(255) NOT NULL,
  `option_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_options`
--

INSERT INTO `service_options` (`option_id`, `option_name`) VALUES
(1, 'Delivery'),
(2, 'Customer Pick-Up'),
(3, 'Rush');

-- --------------------------------------------------------

--
-- Table structure for table `service_option_price`
--

CREATE TABLE `service_option_price` (
  `option_price_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `d_categoryID` int(255) NOT NULL,
  `service_option_type` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_option_price`
--

INSERT INTO `service_option_price` (`option_price_id`, `option_id`, `d_categoryID`, `service_option_type`, `price`) VALUES
(1, 1, 1, 'Delivery (outside gaya-gaya)', 50.00),
(3, 3, 0, 'Rush', 50.00),
(6, 1, 2, 'Delivery (within Gaya-gaya)', 25.00);

-- --------------------------------------------------------

--
-- Table structure for table `service_request`
--

CREATE TABLE `service_request` (
  `request_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_order_id` varchar(50) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `service_id` int(255) NOT NULL,
  `laundry_service_option` varchar(100) NOT NULL,
  `category_id` int(255) NOT NULL,
  `laundry_category_option` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `request_date` date NOT NULL,
  `service_request_date` date NOT NULL DEFAULT current_timestamp(),
  `service_req_time` time NOT NULL DEFAULT current_timestamp(),
  `order_status` enum('completed','active','cancelled') NOT NULL DEFAULT 'active',
  `remarks` enum('Pending','Delivered','Undelivered','Claimed','Unclaimed') CHARACTER SET ucs2 COLLATE ucs2_general_ci DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_request`
--

INSERT INTO `service_request` (`request_id`, `customer_id`, `customer_order_id`, `customer_name`, `contact_number`, `service_id`, `laundry_service_option`, `category_id`, `laundry_category_option`, `quantity`, `weight`, `price`, `request_date`, `service_request_date`, `service_req_time`, `order_status`, `remarks`) VALUES
(75, 87, 'ord_6746b53c1e226', 'Lavender Brown', '09897976897', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 5, 6.00, 80.00, '2024-11-28', '2024-11-27', '05:59:24', 'completed', 'Claimed'),
(76, 87, 'ord_6746b6264fd5d', 'Lavender Brown', '09897976897', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 5, 10.00, 45.00, '2024-11-28', '2024-11-27', '06:03:18', 'completed', 'Claimed'),
(83, 92, 'ord_67473d5c769a2', 'Nathaniel Aballa', '09778273232', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 6, 5.00, 35.00, '2024-11-29', '2024-11-27', '15:40:12', 'completed', 'Pending'),
(95, 106, 'ord_6747c523eb636', 'Jubilyn Villafuerte', '09876789767', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 5, 8.00, 35.00, '2024-11-29', '2024-11-28', '01:19:31', 'completed', 'Pending'),
(119, 126, 'ord_6747db7fa9080', 'Theresa Lumabi', '09987768987', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 7, 8.00, 35.00, '2024-11-29', '2024-11-28', '02:54:55', 'completed', 'Pending'),
(130, 137, 'ord_674824d46b4ed', 'Lisa Manoban', '09878908790', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 3, 6.00, 80.00, '2024-11-29', '2024-11-28', '08:07:48', 'completed', 'Undelivered'),
(136, 142, 'ord_67485712171ed', '1231', '09135463455', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 1, 5.00, 80.00, '2024-11-29', '2024-11-28', '11:42:10', 'completed', 'Pending'),
(137, 143, 'ord_6748582e6c2ee', '1', '09245342532', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 5, 5.00, 80.00, '2024-11-29', '2024-11-28', '11:46:54', 'completed', 'Pending'),
(138, 144, 'ord_674858a76bf82', '23', '09254345345', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 2, 5.00, 35.00, '2024-11-29', '2024-11-28', '11:48:55', 'completed', 'Pending'),
(139, 143, 'ord_67485a8296b8a', '1', '09123123123', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain', 9, 5.93, 45.00, '2024-11-29', '2024-11-28', '11:56:50', 'completed', 'Pending'),
(140, 143, 'ord_674860ce32703', '1', '09312421341', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 2, 5.00, 80.00, '2024-11-29', '2024-11-28', '12:23:42', 'completed', 'Pending'),
(141, 143, 'ord_67486116e7f37', '1', '09234234242', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain', 9, 5.00, 45.00, '2024-11-29', '2024-11-28', '12:24:54', 'completed', 'Pending'),
(142, 148, 'ord_674861b8081ae', 'test', '09341233112', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 2, 5.00, 35.00, '2024-11-29', '2024-11-28', '12:27:36', 'completed', 'Pending'),
(143, 149, 'ord_674861f6ec411', '123', '09234214213', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 9, 5.00, 80.00, '2024-11-29', '2024-11-28', '12:28:38', 'completed', 'Pending'),
(144, 143, 'ord_674862263bce5', '1', '09821341231', 3, 'Dry only', 2, 'Bedsheet/Table Cloths/Curtain', 8, 5.00, 45.00, '2024-11-29', '2024-11-28', '12:29:26', 'completed', 'Pending'),
(145, 143, 'ord_674862ab93d8b', '1', '09234234324', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 8, 5.00, 80.00, '2024-11-29', '2024-11-28', '12:31:39', 'completed', 'Pending'),
(146, 143, 'ord_674862d9bf203', '1', '09123213123', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain', 9, 5.00, 100.00, '2024-11-29', '2024-11-28', '12:32:25', 'completed', 'Pending'),
(147, 153, 'ord_6748634987c6a', '09', '09134131231', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 2, 5.00, 35.00, '2024-11-29', '2024-11-28', '12:34:17', 'completed', 'Pending'),
(148, 143, 'ord_674863c67a86e', '1', '09123123213', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 7, 5.00, 80.00, '2024-11-29', '2024-11-28', '12:36:22', 'completed', 'Pending'),
(149, 143, 'ord_674863fe9ea28', '1', '09234213423', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 7, 5.00, 80.00, '2024-11-29', '2024-11-28', '12:37:18', 'completed', 'Pending'),
(150, 143, 'ord_6748646299d44', '1', '09242342342', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 1, 5.00, 35.00, '2024-11-29', '2024-11-28', '12:38:58', 'completed', 'Pending'),
(151, 143, 'ord_674866245eb60', '1', '09123123123', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 2, 5.00, 35.00, '2024-11-29', '2024-11-28', '12:46:28', 'completed', 'Pending'),
(152, 143, 'ord_674867ec726fd', '1', '09121231231', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 3, 5.00, 80.00, '2024-11-29', '2024-11-28', '12:54:04', 'completed', 'Pending'),
(153, 143, 'ord_6748688ee17a2', '1', '09354234234', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain', 8, 5.00, 100.00, '2024-11-29', '2024-11-28', '12:56:46', 'completed', 'Pending'),
(154, 159, 'ord_67486a01dc17d', 'Tzuyu Chou', '09768908989', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 5, 5.00, 80.00, '2024-11-29', '2024-11-28', '13:02:57', 'completed', 'Pending'),
(155, 143, 'ord_67486a166c375', '1', '09123123123', 3, 'Dry only', 1, 'Clothes/Table Napkins/Pillowcase', 2, 5.00, 35.00, '2024-11-29', '2024-11-28', '13:03:18', 'completed', 'Pending'),
(156, 160, 'ord_67486aeef2a32', '1123', '09231231232', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 8, 5.00, 35.00, '2024-11-29', '2024-11-28', '13:06:54', 'completed', 'Pending'),
(157, 143, 'ord_67486cc8f3664', '1', '09234213423', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain', 7, 5.00, 45.00, '2024-11-29', '2024-11-28', '13:14:48', 'completed', 'Pending'),
(158, 143, 'ord_67486d50c9b87', '1', '09234234234', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain', 2, 5.00, 45.00, '2024-11-29', '2024-11-28', '13:17:04', 'completed', 'Pending'),
(159, 143, 'ord_67486f1d20c54', '1', '09132412312', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 8, 5.00, 80.00, '2024-11-29', '2024-11-28', '13:24:45', 'completed', 'Pending'),
(160, 143, 'ord_6748701584036', '1', '09923423423', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain', 8, 5.00, 100.00, '2024-11-29', '2024-11-28', '13:28:53', 'completed', 'Pending'),
(161, 143, 'ord_674870f8a7de5', '1', '09999999999', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 3, 5.00, 80.00, '2024-11-29', '2024-11-28', '13:32:40', 'completed', 'Pending'),
(162, 165, 'ord_674871ff17d3d', '23423', '09888888888', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 7, 5.00, 35.00, '2024-11-29', '2024-11-28', '13:37:03', 'completed', 'Pending'),
(163, 143, 'ord_674873a155027', '1', '09213412312', 3, 'Dry only', 1, 'Clothes/Table Napkins/Pillowcase', 10, 5.00, 35.00, '2024-11-29', '2024-11-28', '13:44:01', 'completed', 'Pending'),
(164, 143, 'ord_674874a2e5c3a', '1', '09777777777', 1, 'Wash/Dry/Fold', 3, 'Comforter/Bath towel', 7, 5.00, 55.00, '2024-11-29', '2024-11-28', '13:48:18', 'completed', 'Pending'),
(165, 143, 'ord_674874db0c019', '1', '09666666666', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain', 8, 5.00, 45.00, '2024-11-29', '2024-11-28', '13:49:15', 'completed', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL,
  `min_kilos` int(100) NOT NULL,
  `max_kilos` int(100) NOT NULL,
  `delivery_day` int(8) NOT NULL,
  `rush_delivery_day` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `min_kilos`, `max_kilos`, `delivery_day`, `rush_delivery_day`) VALUES
(1, 5, 20, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `brgy` varchar(255) NOT NULL,
  `service_option_id` int(100) NOT NULL,
  `service_option_name` varchar(50) NOT NULL,
  `laundry_cycle` enum('Standard','Rush') NOT NULL,
  `total_amount` decimal(65,2) DEFAULT NULL,
  `delivery_fee` decimal(65,2) DEFAULT NULL,
  `rush_fee` decimal(65,2) DEFAULT NULL,
  `amount_tendered` decimal(65,2) DEFAULT NULL,
  `money_change` decimal(65,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `request_id`, `customer_id`, `customer_name`, `province`, `city`, `customer_address`, `brgy`, `service_option_id`, `service_option_name`, `laundry_cycle`, `total_amount`, `delivery_fee`, `rush_fee`, `amount_tendered`, `money_change`) VALUES
(51, 75, 87, 'Lavender Brown', 'bulacan', 'sjdm', 'Sarmiento Village', 'Francisco Homes - Guijo', 1, 'Delivery', 'Rush', 580.00, 50.00, 50.00, 600.00, 20.00),
(52, 76, 87, 'Lavender Brown', 'bulacan', 'sjdm', 'Sarmiento Village', 'Francisco Homes - Guijo', 2, 'Customer Pick-Up', 'Rush', 500.00, 0.00, 50.00, 500.00, 0.00),
(59, 83, 92, 'Nathaniel Aballa', 'bulacan', 'sjdm', 'Blk 15 Lot 20 UC 2 Lower Area G', 'Ciudad Real', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 300.00, 25.00),
(71, 95, 106, 'Jubilyn Villafuerte', 'bulacan', 'sjdm', 'Chesnut St.', 'Tungkong Mangga', 2, 'Customer Pick-Up', 'Rush', 330.00, 0.00, 50.00, 500.00, 170.00),
(95, 119, 126, 'Theresa Lumabi', 'bulacan', 'sjdm', 'Churchville', 'Francisco Homes - Guijo', 2, 'Customer Pick-Up', 'Rush', 330.00, 0.00, 50.00, 500.00, 170.00),
(106, 130, 137, 'Lisa Manoban', 'bulacan', 'sjdm', 'Sarmiento Village', 'Maharlika', 1, 'Delivery', 'Rush', 580.00, 50.00, 50.00, 600.00, 20.00),
(112, 136, 142, '1231', 'bulacan', 'sjdm', '11', 'Kaypian', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(113, 137, 143, '1', 'bulacan', 'sjdm', '1', 'Muzon East', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(114, 138, 144, '23', 'bulacan', 'sjdm', '31', 'Muzon East', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 275.00, 0.00),
(115, 139, 143, '1', 'bulacan', 'sjdm', '1', 'Kaypian', 1, 'Delivery', 'Rush', 366.85, 50.00, 50.00, 500.00, 133.15),
(116, 140, 143, '1', 'bulacan', 'sjdm', '1', 'Muzon Proper', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(117, 141, 143, '1', 'bulacan', 'sjdm', '1', 'Muzon South', 1, 'Delivery', 'Rush', 325.00, 50.00, 50.00, 325.00, 0.00),
(118, 142, 148, 'test', 'bulacan', 'sjdm', '1', 'Muzon East', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 275.00, 0.00),
(119, 143, 149, '123', 'bulacan', 'sjdm', '1', 'Muzon West', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(120, 144, 143, '1', 'bulacan', 'sjdm', '3', 'Muzon South', 1, 'Delivery', 'Rush', 325.00, 50.00, 50.00, 325.00, 0.00),
(121, 145, 143, '1', 'bulacan', 'sjdm', '11', 'Muzon West', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(122, 146, 143, '1', 'bulacan', 'sjdm', '1', 'Muzon South', 1, 'Delivery', 'Rush', 600.00, 50.00, 50.00, 1000.00, 400.00),
(123, 147, 153, '09', 'bulacan', 'sjdm', '12312', 'Muzon West', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 300.00, 25.00),
(124, 148, 143, '1', 'bulacan', 'sjdm', '1', 'Muzon West', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(125, 149, 143, '1', 'bulacan', 'sjdm', '1', 'Muzon West', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(126, 150, 143, '1', 'bulacan', 'sjdm', '09', 'Muzon West', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 275.00, 0.00),
(127, 151, 143, '1', 'bulacan', 'sjdm', '13', 'Maharlika', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 275.00, 0.00),
(128, 152, 143, '1', 'bulacan', 'sjdm', '1', 'Kaybanban', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(129, 153, 143, '1', 'bulacan', 'sjdm', '1', '', 1, 'Delivery', 'Rush', 600.00, 50.00, 50.00, 600.00, 0.00),
(130, 155, 143, '1', 'bulacan', 'sjdm', '1', 'Kaypian', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 275.00, 0.00),
(131, 154, 159, 'Tzuyu Chou', 'bulacan', 'sjdm', 'Towerville', 'Kaybanban', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(132, 156, 160, '1123', 'bulacan', 'sjdm', '1', 'Muzon West', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 275.00, 0.00),
(133, 157, 143, '1', 'bulacan', 'sjdm', '1', 'Muzon East', 1, 'Delivery', 'Rush', 325.00, 50.00, 50.00, 325.00, 0.00),
(134, 158, 143, '1', 'bulacan', 'sjdm', '1231', 'Muzon Proper', 1, 'Delivery', 'Rush', 325.00, 50.00, 50.00, 325.00, 0.00),
(135, 159, 143, '1', 'bulacan', 'sjdm', '1', 'Paradise 3', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 5500.00, 5000.00),
(136, 160, 143, '1', 'bulacan', 'sjdm', '112312', 'Kaybanban', 1, 'Delivery', 'Rush', 600.00, 50.00, 50.00, 600.00, 0.00),
(137, 161, 143, '1', 'bulacan', 'sjdm', '1', 'Muzon West', 1, 'Delivery', 'Rush', 500.00, 50.00, 50.00, 500.00, 0.00),
(138, 162, 165, '23423', 'bulacan', 'sjdm', '1', 'Muzon West', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 275.00, 0.00),
(139, 163, 143, '1', 'bulacan', 'sjdm', '1231', 'Gumaoc West', 1, 'Delivery', 'Rush', 275.00, 50.00, 50.00, 275.00, 0.00),
(140, 164, 143, '1', 'bulacan', 'sjdm', '11', 'Maharlika', 1, 'Delivery', 'Rush', 375.00, 50.00, 50.00, 375.00, 0.00),
(141, 165, 143, '1', 'bulacan', 'sjdm', '1', 'Maharlika', 1, 'Delivery', 'Rush', 325.00, 50.00, 50.00, 325.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_role` enum('admin','staff') NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_active` datetime NOT NULL DEFAULT current_timestamp(),
  `user_status` enum('Active','Inactive') NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `first_name`, `last_name`, `user_role`, `password`, `last_active`, `user_status`, `question`, `answer`, `date_created`) VALUES
(66, 'Tintin', 'Christine', 'Haduca', 'admin', '$2y$10$rqzvpRcGxQCSplwxULjIAe0CYQ1EtfN82W0bUpGZnjUq5aWYhvn4W', '2024-11-28 14:02:08', 'Active', '', '', '2024-11-03 22:28:15'),
(81, 'ArianaButera', 'Ariana', 'Butera', 'staff', '$2y$10$GatSS8MpXV9wDChITZ80kOVJTJgffdQV0M5JSRsVmXILKO.n9pTVK', '2024-11-28 13:42:22', 'Active', 'What year were you born?', '$2y$10$QpNAff9yBJ1ZYVGnpdCPIeMMDwXzKtJ4N/XFTMAczGxdviEzouvJq', '2024-11-28 08:22:08'),
(82, 'AAballa', 'Alexis', 'Aballa', 'staff', '$2y$10$a4h1kgGGXfLX3jtXcGWEV.XnlFJqrd9xpqUZVXKDf5vr.9Y3U2b0y', '2024-11-28 10:44:09', 'Active', 'What year were you born?', '$2y$10$U5y5b0pj/5KVuVorgHdKXeYRwhsz57hvVv7TqfFRdNRasW6a.XOre', '2024-11-28 10:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`profile_id`, `user_id`, `username`, `password`, `user_role`) VALUES
(1, 1, 'dorisDC', '12345678', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archived_category`
--
ALTER TABLE `archived_category`
  ADD PRIMARY KEY (`archive_id`);

--
-- Indexes for table `archived_customers`
--
ALTER TABLE `archived_customers`
  ADD PRIMARY KEY (`archive_id`);

--
-- Indexes for table `archived_service`
--
ALTER TABLE `archived_service`
  ADD PRIMARY KEY (`archive_id`);

--
-- Indexes for table `archived_users`
--
ALTER TABLE `archived_users`
  ADD PRIMARY KEY (`archive_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `delivery_category`
--
ALTER TABLE `delivery_category`
  ADD PRIMARY KEY (`d_categoryID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_category_price`
--
ALTER TABLE `service_category_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_options`
--
ALTER TABLE `service_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `service_option_price`
--
ALTER TABLE `service_option_price`
  ADD PRIMARY KEY (`option_price_id`);

--
-- Indexes for table `service_request`
--
ALTER TABLE `service_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archived_category`
--
ALTER TABLE `archived_category`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `archived_customers`
--
ALTER TABLE `archived_customers`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `archived_service`
--
ALTER TABLE `archived_service`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `archived_users`
--
ALTER TABLE `archived_users`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `delivery_category`
--
ALTER TABLE `delivery_category`
  MODIFY `d_categoryID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_category_price`
--
ALTER TABLE `service_category_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service_options`
--
ALTER TABLE `service_options`
  MODIFY `option_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_option_price`
--
ALTER TABLE `service_option_price`
  MODIFY `option_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_request`
--
ALTER TABLE `service_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
