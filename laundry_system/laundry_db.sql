-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 03:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_db`
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
  `address` varchar(255) NOT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archived_customers`
--

INSERT INTO `archived_customers` (`archive_id`, `customer_id`, `customer_name`, `contact_number`, `address`, `archived_at`) VALUES
(3, 22, 'vanilla', '23456645654', 'sjdm', '2024-09-16 16:17:34'),
(4, 23, 'ming', '34567654321', 'sjdm', '2024-09-16 16:34:10'),
(5, 28, 'frf', '34567897654', 'ggg', '2024-10-02 10:53:58'),
(6, 33, 'nitnit lomi', '80000888888', '', '2024-10-02 10:54:12'),
(7, 34, 'nitnit lomi', '70000000000', '', '2024-10-02 10:54:17'),
(8, 27, 'milky', '33325253252', 'quezon city', '2024-11-01 15:27:42'),
(9, 24, 'christine', '09997852239', 'laguna', '2024-11-01 15:29:05'),
(10, 36, 'Christinee', '09951273842', 'SJDM', '2024-11-01 16:12:12'),
(11, 29, 'denise', '22220000000', '', '2024-11-01 16:55:31'),
(12, 26, 'winnie', '53459876574', 'ctvl', '2024-11-02 08:04:34'),
(13, 31, 'nitinit', '50000000000', '', '2024-11-02 11:26:10'),
(14, 51, 'Minnie', '23456432456', '', '2024-11-06 07:31:28'),
(15, 42, 'Kristine', '65644564564', 'Isabela Road', '2024-11-06 07:32:01'),
(16, 43, 'Milton', '74747444445', '', '2024-11-06 07:34:22'),
(17, 50, 'Mickey', '23455643535', '', '2024-11-06 07:43:35'),
(18, 49, 'Gwen', '42343435345', 'sjdm', '2024-11-06 07:45:06');

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
(1, 5, 'Dry only', '2024-09-16 17:24:16'),
(2, 4, 'Wash only', '2024-09-18 10:47:12');

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
(1, 54, 'dan1233', 'dan', 'brown', 'admin', '2024-09-11 13:51:05'),
(3, 56, 'pongSy', 'pong', 'Sy', 'admin', '2024-09-11 15:20:08'),
(4, 57, 'vanilla28', 'Vanilla', 'Cream', 'admin', '2024-09-14 08:20:37'),
(5, 58, 'jellybeanDC', 'Jellybean', 'Dela Cruz', 'admin', '2024-09-16 14:21:46'),
(6, 59, 'den123', 'denise', 'v', 'staff', '2024-09-30 05:23:57'),
(7, 60, 'MagGreene', 'Maggie', 'Greene', 'admin', '2024-10-05 14:41:24'),
(8, 61, 'AriGrande93', 'Ariana', 'Grande', 'staff', '2024-10-05 14:41:28'),
(9, 62, 'AGrande', 'Ari', 'Grande', 'admin', '2024-10-05 14:41:33'),
(10, 68, 'Almira', 'Almira', 'Serkira', 'admin', '2024-11-06 08:44:07'),
(11, 70, 'deniseV0', 'denise', 'v', 'admin', '2024-11-06 08:51:04'),
(12, 69, 'deniseV', 'denise', 'v', 'admin', '2024-11-06 08:51:08'),
(13, 71, 'villa00', 'denise', 'villa', 'admin', '2024-11-06 08:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `laundry_category_option` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `laundry_category_option`) VALUES
(1, 'Clothes/Table Napkins/Pillowcase'),
(2, 'Bedsheet/Table Cloths/Curtain\r\n'),
(3, 'Comforter/Bath towel\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_number`, `address`) VALUES
(19, 'tin', '87654367890', 'sjdm'),
(30, 'nitnit', '00999999999', ''),
(32, 'roi', '80000000000', ''),
(35, 'christine', '82828228288', ''),
(37, 'Idowl', '09123457899', ''),
(38, 'Hatig', '09123456789', ''),
(39, 'Dil', '09123456788', ''),
(40, 'Dil', '09122222222', ''),
(41, 'Liam ', '44444444444', 'Argentina'),
(44, 'Kristine', '43442424234', ''),
(45, 'Kristine', '43535345334', ''),
(46, 'Kristine', '34343324423', ''),
(47, 'Kristine', '23456576876', ''),
(48, 'Cristine', '11111111111', 'SJDM'),
(52, 'Pink Sweat', '22222222222', 'Cypress'),
(53, 'adi', '90000000000', ''),
(54, 'tobi', '88888888888', 'verde green');

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
(1, 1, 1, '35.00'),
(2, 1, 2, '45.00'),
(3, 1, 3, '55.00'),
(4, 2, 1, '80.00'),
(5, 2, 2, '100.00'),
(6, 3, 1, '35.00'),
(7, 3, 2, '45.00'),
(8, 3, 3, '55.00');

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
  `service_option_type` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_option_price`
--

INSERT INTO `service_option_price` (`option_price_id`, `option_id`, `service_option_type`, `price`) VALUES
(1, 1, 'Delivery', '50.00'),
(3, 3, 'Rush', '50.00');

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
  `order_status` enum('completed','active','cancelled') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_request`
--

INSERT INTO `service_request` (`request_id`, `customer_id`, `customer_order_id`, `customer_name`, `contact_number`, `service_id`, `laundry_service_option`, `category_id`, `laundry_category_option`, `quantity`, `weight`, `price`, `request_date`, `service_request_date`, `service_req_time`, `order_status`) VALUES
(1, 16, '0', 'dsfs', '32434242224', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 5, '5.00', '35.00', '2024-09-04', '2024-09-01', '21:01:52', ''),
(2, 17, '0', 'rd', '98767546789', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 2, '7.00', '35.00', '0000-00-00', '2024-09-01', '21:01:52', ''),
(3, 18, '0', 'roi', '98767546786', 1, 'Wash/Dry/Fold', 3, 'Comforter/Bath towel\r\n', 7, '18.00', '65.00', '2024-09-04', '2024-09-01', '21:01:52', 'completed'),
(4, 19, '0', 'tun', '87654367890', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 3, '6.00', '55.00', '0000-00-00', '2024-09-01', '21:01:52', 'cancelled'),
(5, 20, '0', 'dsgs', '43567890765', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 5, '20.00', '55.00', '0000-00-00', '2024-09-06', '21:01:52', 'cancelled'),
(6, 21, '0', 'chris', '34565432345', 3, 'Dry only', 3, 'Comforter/Bath towel\r\n', 3, '6.00', '55.00', '0000-00-00', '2024-09-06', '21:01:52', 'active'),
(7, 22, '0', 'vanilla', '23456645654', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 8, '7.00', '80.00', '2024-09-20', '2024-09-17', '00:15:01', 'completed'),
(8, 23, '0', 'ming', '34567654321', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 6, '6.00', '100.00', '2024-09-20', '2024-09-17', '00:32:52', 'completed'),
(9, 24, '0', 'christine', '09997852239', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 6, '6.00', '100.00', '2024-09-23', '2024-09-20', '17:54:59', 'completed'),
(10, 24, '0', 'christine', '09997852239', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 5, '7.00', '55.00', '2024-09-23', '2024-09-20', '18:17:59', 'completed'),
(11, 25, '0', 'tintin', '09059748294', 3, 'Dry only', 3, 'Comforter/Bath towel\r\n', 7, '6.00', '55.00', '2024-09-23', '2024-09-20', '18:26:02', 'completed'),
(12, 25, '0', 'tintin', '09059748294', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 4, '5.00', '35.00', '2024-09-23', '2024-09-20', '18:26:02', 'completed'),
(13, 26, '0', 'winnie', '53459876574', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 4, '6.00', '55.00', '2024-09-23', '2024-09-20', '21:18:18', 'completed'),
(14, 27, '0', 'milky', '33325253252', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 5, '6.00', '100.00', '2024-09-25', '2024-09-22', '21:18:02', 'completed'),
(15, 24, '', 'Christine', '09997852239', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 4, '7.00', '80.00', '0000-00-00', '2024-09-28', '22:50:13', 'cancelled'),
(17, 28, '', 'frf', '34567897654', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 6, '7.00', '55.00', '0000-00-00', '2024-09-30', '15:38:52', 'cancelled'),
(18, 29, '', 'denise', '22220000000', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 2, '5.00', '55.00', '2024-09-28', '2024-09-30', '15:43:15', 'completed'),
(21, 31, 'order_66fa5b508b935', 'nitinit', '50000000000', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 1, '6.00', '55.00', '2024-09-30', '2024-09-30', '16:03:28', 'completed'),
(22, 18, 'order_66fa5c9080943', 'roi', '80000000000', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 1, '7.00', '100.00', '2024-09-30', '2024-09-30', '16:08:48', 'completed'),
(23, 33, 'order_66fa5cd4099d7', 'nitnit lomi', '80000888888', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 2, '5.00', '55.00', '0000-00-00', '2024-09-30', '16:09:56', 'cancelled'),
(24, 33, 'order_66fa5d5c78310', 'nitnit lomi', '70000000000', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 2, '6.00', '35.00', '2024-09-28', '2024-09-30', '16:12:12', 'completed'),
(25, 33, 'order_66fa5d5c78310', 'nitnit lomi', '70000000000', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 1, '6.00', '80.00', '2024-09-28', '2024-09-30', '16:12:12', 'completed'),
(26, 24, 'order_66fd2c6e35fe1', 'christine', '82828228288', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 6, '7.00', '100.00', '2024-10-02', '2024-10-02', '19:20:14', 'completed'),
(27, 36, 'ord_6703ed88000fa', 'Christinee', '09951273842', 1, 'Wash/Dry/Fold', 3, 'Comforter/Bath towel\r\n', 3, '8.00', '65.00', '2024-10-07', '2024-10-07', '22:17:44', 'completed'),
(28, 37, 'ord_670f2750b0128', 'Idowl', '09123457899', 3, 'Dry only', 1, 'Clothes/Table Napkins/Pillowcase', 1, '20.00', '35.00', '0000-00-00', '2024-10-16', '10:39:12', 'cancelled'),
(29, 41, 'ord_67132a9f8e8a9', 'Liam ', '44444444444', 1, 'Wash/Dry/Fold', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 4, '10.00', '55.00', '2024-10-19', '2024-10-19', '11:42:23', 'completed'),
(30, 42, 'ord_67191dff2f712', 'Kristine', '65644564564', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 4, '10.00', '35.00', '2024-10-24', '2024-10-24', '00:02:07', 'completed'),
(31, 42, 'ord_671925e957323', 'Kristine', '43442424234', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 5, '5.00', '100.00', '2024-10-24', '2024-10-24', '00:35:53', 'completed'),
(32, 42, 'ord_671925e957323', 'Kristine', '43535345334', 2, 'Wash/Dry/Press', 1, 'Clothes/Table Napkins/Pillowcase', 2, '5.00', '80.00', '2024-10-24', '2024-10-24', '00:35:53', 'completed'),
(33, 42, 'ord_671925e957323', 'Kristine', '43535345334', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 6, '6.00', '100.00', '2024-10-24', '2024-10-24', '00:35:53', 'completed'),
(34, 42, 'ord_671931b845adb', 'Kristine', '34343324423', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 6, '10.00', '35.00', '2024-10-24', '2024-10-24', '01:26:16', 'completed'),
(35, 42, 'ord_6719a82daae51', 'Kristine', '23456576876', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 1, '5.00', '35.00', '2024-10-24', '2024-10-24', '09:51:41', 'completed'),
(36, 48, 'ord_6719a8bc89519', 'Cristine', '11111111111', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 2, '5.00', '35.00', '2024-10-24', '2024-10-24', '09:54:04', 'completed'),
(37, 48, 'ord_6719a8bc89519', 'Cristine', '11111111111', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 3, '6.00', '100.00', '2024-10-24', '2024-10-24', '09:54:04', 'completed'),
(38, 49, 'ord_6721e19056af1', 'Gwen', '42343435345', 2, 'Wash/Dry/Press', 2, 'Bedsheet/Table Cloths/Curtain\r\n', 6, '6.00', '100.00', '2024-11-02', '2024-10-30', '15:34:40', 'completed'),
(39, 50, 'ord_6721e2e779428', 'Mickey', '23455643535', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 7, '6.00', '35.00', '0000-00-00', '2024-10-30', '15:40:23', 'active'),
(40, 51, 'ord_6721e3af8bea7', 'Minnie', '23456432456', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 5, '7.00', '35.00', '0000-00-00', '2024-10-30', '15:43:43', 'active'),
(41, 52, 'ord_672b3071a4042', 'Pink Sweat', '22222222222', 1, 'Wash/Dry/Fold', 3, 'Comforter/Bath towel\r\n', 6, '6.00', '55.00', '2024-11-07', '2024-11-06', '17:01:37', 'completed'),
(42, 53, 'ord_672b31f279e58', 'adi', '90000000000', 1, 'Wash/Dry/Fold', 1, 'Clothes/Table Napkins/Pillowcase', 1, '5.00', '35.00', '2024-11-09', '2024-11-06', '17:08:02', 'completed'),
(43, 54, 'ord_672b32751a9f9', 'tobi', '88888888888', 1, 'Wash/Dry/Fold', 3, 'Comforter/Bath towel\r\n', 1, '7.00', '55.00', '2024-11-07', '2024-11-06', '17:10:13', 'completed');

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
  `customer_address` varchar(50) NOT NULL,
  `service_option_id` int(100) NOT NULL,
  `service_option_name` varchar(50) NOT NULL,
  `laundry_cycle` enum('standard','rush') NOT NULL,
  `total_amount` decimal(65,2) DEFAULT NULL,
  `delivery_fee` decimal(65,2) DEFAULT NULL,
  `rush_fee` decimal(65,2) DEFAULT NULL,
  `amount_tendered` decimal(65,2) DEFAULT NULL,
  `money_change` decimal(65,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `request_id`, `customer_id`, `customer_name`, `customer_address`, `service_option_id`, `service_option_name`, `laundry_cycle`, `total_amount`, `delivery_fee`, `rush_fee`, `amount_tendered`, `money_change`) VALUES
(5, 9, 24, 'christine', '', 1, 'Delivery', 'rush', '460.00', '50.00', '25.00', '500.00', '40.00'),
(6, 10, 24, 'christine', '', 1, 'Delivery', 'rush', '460.00', '50.00', '25.00', '500.00', '40.00'),
(7, 11, 25, 'tintin', '', 1, 'Delivery', 'rush', '580.00', '50.00', '25.00', '600.00', '20.00'),
(8, 12, 25, 'tintin', '', 1, 'Delivery', 'rush', '580.00', '50.00', '25.00', '600.00', '20.00'),
(9, 13, 26, 'winnie', '', 1, 'Delivery', 'rush', '405.00', '50.00', '25.00', '420.00', '15.00'),
(10, 14, 27, 'milky', '', 1, 'Delivery', 'standard', '650.00', '50.00', '0.00', '700.00', '50.00'),
(11, 18, 29, 'denise', '', 1, 'Delivery', 'rush', '350.00', '50.00', '25.00', '500.00', '150.00'),
(12, 21, 31, 'nitinit', '', 1, 'Delivery', 'rush', '405.00', '50.00', '25.00', '500.00', '95.00'),
(13, 22, 18, 'roi', '', 1, 'Delivery', 'standard', '750.00', '50.00', '0.00', '800.00', '50.00'),
(14, 24, 33, 'nitnit lomi', '', 2, 'Customer Pick-Up', 'rush', '715.00', '0.00', '25.00', '1000.00', '285.00'),
(15, 25, 33, 'nitnit lomi', '', 2, 'Customer Pick-Up', 'rush', '715.00', '0.00', '25.00', '1000.00', '285.00'),
(16, 26, 24, 'christine', 'laguna', 1, 'Delivery', 'rush', '775.00', '50.00', '25.00', '800.00', '25.00'),
(17, 27, 36, 'Christinee', 'SJDM', 1, 'Delivery', 'rush', '595.00', '50.00', '25.00', '600.00', '5.00'),
(18, 29, 41, 'Liam ', 'Argentina', 1, 'Delivery', 'rush', '625.00', '50.00', '25.00', '700.00', '75.00'),
(19, 30, 42, 'Kristine', 'Isabela', 2, 'Customer Pick-Up', 'standard', '350.00', '0.00', '0.00', '500.00', '150.00'),
(20, 31, 42, 'Kristine', 'Isabela', 1, 'Delivery', 'rush', '1575.00', '50.00', '25.00', '1600.00', '25.00'),
(21, 32, 42, 'Kristine', 'Isabela', 1, 'Delivery', 'rush', '1575.00', '50.00', '25.00', '1600.00', '25.00'),
(22, 33, 42, 'Kristine', 'Isabela', 1, 'Delivery', 'rush', '1575.00', '50.00', '25.00', '1600.00', '25.00'),
(23, 34, 42, 'Kristine', 'Isabela Road', 1, 'Delivery', 'rush', '250.00', '50.00', '25.00', '300.00', '50.00'),
(24, 35, 42, 'Kristine', 'Isabela Road', 1, 'Delivery', 'rush', '250.00', '50.00', '25.00', '300.00', '50.00'),
(25, 36, 48, 'Cristine', 'SJDM', 1, 'Delivery', 'rush', '850.00', '50.00', '25.00', '1000.00', '150.00'),
(26, 37, 48, 'Cristine', 'SJDM', 1, 'Delivery', 'rush', '850.00', '50.00', '25.00', '1000.00', '150.00'),
(27, 38, 49, 'Gwen', 'sjdm', 1, 'Delivery', 'rush', '675.00', '50.00', '25.00', '700.00', '25.00'),
(28, 41, 52, 'Pink Sweat', 'Cypress', 2, 'Customer Pick-Up', 'rush', '380.00', '0.00', '50.00', '400.00', '20.00'),
(29, 42, 53, 'adi', '', 2, 'Customer Pick-Up', 'standard', '175.00', '0.00', '0.00', '500.00', '325.00'),
(30, 43, 54, 'tobi', 'verde green', 1, 'Delivery', 'rush', '485.00', '50.00', '50.00', '500.00', '15.00');

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
(1, 'dorisDC', 'Doris', 'Medrano', 'admin', '', '2024-06-28 22:48:05', 'Inactive', '', '', '2024-06-23 10:00:05'),
(42, 'msc43', 'mascaraa', 'haws', 'admin', '', '2024-08-22 16:00:57', 'Active', '', '', '2024-08-22 16:00:57'),
(45, 'mascara12', 'mascara', 'cdh', 'admin', '$2y$10$g8v', '2024-08-28 22:22:20', 'Active', '', '', '2024-08-28 22:22:20'),
(63, 'MaggieGreene', 'Maggie', 'Greene', 'admin', '$2y$10$gL7C7FnTEX5qAq3Xvh3gZuH9exjSUKK0nd4vxvyPQ3X.aGbsMY05O', '2024-10-05 22:23:50', 'Active', '', '', '2024-10-05 22:23:50'),
(64, 'Ariana Butera', 'Ariana', 'Butera', 'staff', '$2y$10$MIiAilu.k73bYBiczjgzpep3XVNvcGPN6AypViZdp3si4rW5sxhjC', '2024-10-05 22:43:51', 'Active', '', '', '2024-10-05 22:43:51'),
(65, 'mkyg', 'milky', 'grande', 'admin', '$2y$10$vAUCI6A//eF5N1r5cHoX..iueBMkB46Hj0YCh8342r8l1TxlihNim', '2024-10-24 01:17:56', 'Active', '', '', '2024-10-24 01:17:56'),
(66, 'Tintin', 'Christine', 'Haduca', 'admin', '$2y$10$rqzvpRcGxQCSplwxULjIAe0CYQ1EtfN82W0bUpGZnjUq5aWYhvn4W', '2024-11-03 22:28:15', 'Active', '', '', '2024-11-03 22:28:15'),
(67, 'Tin', 'Tin', 'Hdc', 'admin', '$2y$10$v.l8WiZvkl6Xe5KVNiHttuV6JDwv4hg4I8lbsR9xfKrz0ETr54Pny', '2024-11-06 16:40:52', 'Active', 'What year were you born?', '$2y$10$4mbziMKzzuyNqOmLZMGnIOE14hGHbSWI2/4xx7Qi7lu2TNH8pMSCy', '2024-11-06 16:40:52'),
(72, 'villa00', 'denise', 'villa', 'admin', '$2y$10$vLd7qrRDxGoiSYEU3jZydeUJq01BvkSCS7NBcgDNp3g.JV82srEw6', '2024-11-06 16:55:45', 'Active', 'In what province were you born?', '$2y$10$rq0dCpsf6oJ8GhGz3ujwyu0Bq1lNb9l5jmeaBMUM229nE4EXZE3yi', '2024-11-06 16:55:45');

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
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `archived_customers`
--
ALTER TABLE `archived_customers`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `archived_service`
--
ALTER TABLE `archived_service`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `archived_users`
--
ALTER TABLE `archived_users`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_category_price`
--
ALTER TABLE `service_category_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_options`
--
ALTER TABLE `service_options`
  MODIFY `option_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_option_price`
--
ALTER TABLE `service_option_price`
  MODIFY `option_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_request`
--
ALTER TABLE `service_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;