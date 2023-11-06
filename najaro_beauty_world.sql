-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 06:25 PM
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
-- Database: `najaro_beauty_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` int(11) DEFAULT NULL,
  `remember_token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand_models`
--

CREATE TABLE `brand_models` (
  `brand_model_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `_lft` int(11) DEFAULT NULL,
  `_rgt` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `market_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `shops_count` int(11) DEFAULT NULL,
  `products_count` int(11) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_options`
--

CREATE TABLE `m_options` (
  `m_option_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_option_values`
--

CREATE TABLE `m_option_values` (
  `m_option_value_id` int(11) NOT NULL,
  `m_option_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_m_option_values`
--

CREATE TABLE `product_m_option_values` (
  `product_m_option_value_id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `m_option_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_option_values`
--

CREATE TABLE `product_option_values` (
  `product_option_value_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `product_type_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_type_m_options`
--

CREATE TABLE `product_type_m_options` (
  `product_type_m_option_id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `M_option_id` int(11) DEFAULT NULL,
  `M_option_value_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `shop_id` int(11) NOT NULL,
  `market_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `product_types_count` int(11) DEFAULT NULL,
  `products_count` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `brand_models`
--
ALTER TABLE `brand_models`
  ADD PRIMARY KEY (`brand_model_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `product_type_id` (`product_type_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`market_id`);

--
-- Indexes for table `m_options`
--
ALTER TABLE `m_options`
  ADD PRIMARY KEY (`m_option_id`);

--
-- Indexes for table `m_option_values`
--
ALTER TABLE `m_option_values`
  ADD PRIMARY KEY (`m_option_value_id`),
  ADD KEY `m_option_id` (`m_option_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `product_type_id` (`product_type_id`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`option_value_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `product_type_id` (`product_type_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `market_id` (`market_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `product_m_option_values`
--
ALTER TABLE `product_m_option_values`
  ADD PRIMARY KEY (`product_m_option_value_id`),
  ADD KEY `product_type_id` (`product_type_id`),
  ADD KEY `m_option_id` (`m_option_id`);

--
-- Indexes for table `product_option_values`
--
ALTER TABLE `product_option_values`
  ADD PRIMARY KEY (`product_option_value_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `option_value_id` (`option_value_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `product_type_m_options`
--
ALTER TABLE `product_type_m_options`
  ADD PRIMARY KEY (`product_type_m_option_id`),
  ADD KEY `product_type_id` (`product_type_id`),
  ADD KEY `M_option_id` (`M_option_id`),
  ADD KEY `M_option_value_id` (`M_option_value_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `market_id` (`market_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`shop_id`);

--
-- Constraints for table `brand_models`
--
ALTER TABLE `brand_models`
  ADD CONSTRAINT `brand_models_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `brand_models_ibfk_2` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`product_type_id`);

--
-- Constraints for table `m_option_values`
--
ALTER TABLE `m_option_values`
  ADD CONSTRAINT `m_option_values_ibfk_1` FOREIGN KEY (`m_option_id`) REFERENCES `m_options` (`m_option_id`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`product_type_id`);

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_ibfk_1` FOREIGN KEY (`option_id`) REFERENCES `options` (`option_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`product_type_id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`market_id`) REFERENCES `markets` (`market_id`),
  ADD CONSTRAINT `products_ibfk_5` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`shop_id`);

--
-- Constraints for table `product_m_option_values`
--
ALTER TABLE `product_m_option_values`
  ADD CONSTRAINT `product_m_option_values_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`product_type_id`),
  ADD CONSTRAINT `product_m_option_values_ibfk_2` FOREIGN KEY (`m_option_id`) REFERENCES `m_options` (`m_option_id`);

--
-- Constraints for table `product_option_values`
--
ALTER TABLE `product_option_values`
  ADD CONSTRAINT `product_option_values_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `product_option_values_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `options` (`option_id`),
  ADD CONSTRAINT `product_option_values_ibfk_3` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`option_value_id`);

--
-- Constraints for table `product_type_m_options`
--
ALTER TABLE `product_type_m_options`
  ADD CONSTRAINT `product_type_m_options_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`product_type_id`),
  ADD CONSTRAINT `product_type_m_options_ibfk_2` FOREIGN KEY (`M_option_id`) REFERENCES `m_options` (`m_option_id`),
  ADD CONSTRAINT `product_type_m_options_ibfk_3` FOREIGN KEY (`M_option_value_id`) REFERENCES `m_option_values` (`m_option_value_id`);

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `markets` (`market_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
