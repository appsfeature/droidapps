-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2022 at 09:08 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `droid_apps`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_account`
--

CREATE TABLE `table_account` (
  `id` int(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `role` int(100) NOT NULL DEFAULT 0,
  `pkg_id` varchar(100) DEFAULT NULL,
  `user_id` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `active` int(100) NOT NULL DEFAULT 1,
  `validity` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_account`
--

INSERT INTO `table_account` (`id`, `name`, `role`, `pkg_id`, `user_id`, `password`, `active`, `validity`) VALUES
(1, 'Admin', 1, 'com.appsfeature', 'admin', '123', 1, '2024-01-31 19:15:44'),
(3, 'Amit Jain', 0, 'com.appsfeature.bizwiz', 'amit', '123', 1, '2022-05-17 19:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `table_app`
--

CREATE TABLE `table_app` (
  `app_id` int(100) NOT NULL,
  `pkg_id` varchar(500) NOT NULL,
  `app_name` varchar(500) NOT NULL,
  `visibility` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_app`
--

INSERT INTO `table_app` (`app_id`, `pkg_id`, `app_name`, `visibility`) VALUES
(1, 'com.appsfeature', 'Appsfeature', 1),
(2, 'com.appsfeature.bizwiz', 'BizWiz', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_category`
--

CREATE TABLE `table_category` (
  `pkg_id` varchar(100) NOT NULL,
  `cat_id` int(100) NOT NULL,
  `sub_cat_id` int(100) NOT NULL DEFAULT 0,
  `title` varchar(1000) NOT NULL,
  `item_type` int(100) DEFAULT 0,
  `image` varchar(1000) DEFAULT NULL,
  `ranking` int(100) NOT NULL DEFAULT 0,
  `visibility` int(100) NOT NULL DEFAULT 1,
  `json_data` varchar(5000) DEFAULT NULL,
  `other_property` varchar(1000) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_category`
--

INSERT INTO `table_category` (`pkg_id`, `cat_id`, `sub_cat_id`, `title`, `item_type`, `image`, `ranking`, `visibility`, `json_data`, `other_property`, `updated_at`, `created_at`) VALUES
('com.sample.live', 13, 5, 'Category Live Exam', 0, NULL, 0, 1, NULL, NULL, '2022-01-20 07:28:20', '2022-01-26 16:19:23'),
('com.sample.live', 14, 5, 'Category Live Exam 2', 0, NULL, 0, 1, NULL, NULL, '2022-01-20 07:28:20', '2022-01-26 16:19:23'),
('com.bizwiz.global', 15, 5, 'BizWiz Category 1', 0, NULL, 0, 1, NULL, NULL, '2022-01-20 07:28:20', '2022-01-26 16:19:23'),
('com.appsfeature', 108, 0, 'Dashboard', 0, NULL, 0, 1, '', '', NULL, '2022-02-03 17:12:07'),
('com.appsfeature', 109, 108, 'Mobile Shop', 1, NULL, 0, 1, '', '', NULL, '2022-02-03 17:15:17'),
('com.appsfeature', 110, 108, 'Cloth Shop', 1, NULL, 0, 1, '', '', NULL, '2022-02-03 17:15:33'),
('com.appsfeature', 111, 108, 'Electronics', 0, NULL, 0, 1, '', '', NULL, '2022-02-03 19:20:14'),
('com.appsfeature', 112, 111, 'Laptops', 0, NULL, 0, 1, '', '', NULL, '2022-02-03 19:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `table_content`
--

CREATE TABLE `table_content` (
  `pkg_id` varchar(100) NOT NULL,
  `id` int(100) NOT NULL,
  `cat_id` int(100) NOT NULL DEFAULT 0,
  `sub_cat_id` int(100) NOT NULL DEFAULT 0,
  `title` varchar(1000) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `item_type` int(100) DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `visibility` int(100) NOT NULL DEFAULT 1,
  `ranking` int(100) DEFAULT 0,
  `json_data` varchar(5000) DEFAULT NULL,
  `other_property` varchar(1000) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_content`
--

INSERT INTO `table_content` (`pkg_id`, `id`, `cat_id`, `sub_cat_id`, `title`, `description`, `item_type`, `image`, `link`, `visibility`, `ranking`, `json_data`, `other_property`, `updated_at`, `created_at`) VALUES
('com.sample.live', 3, 13, 5, 'Live exam scheduled on 25th ', NULL, 0, NULL, NULL, 1, 0, NULL, NULL, '2022-01-20 12:59:38', '2022-01-26 16:18:09'),
('com.bizwiz.global', 4, 13, 5, 'BizWiz video striming soon.', NULL, 0, NULL, NULL, 1, 0, NULL, NULL, '2022-01-20 12:59:38', '2022-01-26 16:18:09'),
('com.appsfeature.bizwiz', 34, 0, 0, 'Happy Hours', '', 0, NULL, 'https://github.com/appsfeature/droidapps', 1, 0, NULL, '2022-01-31T11:25', '', '2022-01-28 05:56:01'),
('com.appsfeature', 39, 109, 0, 'Android Phones', '', 0, NULL, '', 1, 0, '', '', NULL, '2022-02-03 18:21:14'),
('com.appsfeature', 40, 109, 0, 'Apple Phones', '', 0, NULL, '', 1, 0, '', '', NULL, '2022-02-03 18:21:35'),
('com.appsfeature', 41, 110, 0, 'Womens Cloth', '', 0, NULL, '', 1, 0, '', '', NULL, '2022-02-03 18:23:39'),
('com.appsfeature', 42, 110, 0, 'Mens Cloth', '', 0, NULL, '', 1, 0, '', '', NULL, '2022-02-03 18:23:51'),
('com.appsfeature', 43, 112, 0, 'Dell Laptop', '', 0, NULL, '', 1, 0, '', '', NULL, '2022-02-03 19:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `table_item_type`
--

CREATE TABLE `table_item_type` (
  `pkg_id` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `item_type` int(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `visibility` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_item_type`
--

INSERT INTO `table_item_type` (`pkg_id`, `id`, `item_type`, `title`, `visibility`) VALUES
('com.appsfeature', 1, 3, 'Home Slider', 1),
('com.appsfeature', 2, 0, 'Category', 1),
('com.appsfeature', 3, 1, 'Content', 1),
('com.appsfeature', 4, 2, 'Item', 1),
('com.appsfeature.bizwiz', 5, 0, 'Home Slider', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_json`
--

CREATE TABLE `table_json` (
  `pkg_id` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `cat_id` int(100) DEFAULT 0,
  `json_data` text NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_account`
--
ALTER TABLE `table_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_app`
--
ALTER TABLE `table_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `table_category`
--
ALTER TABLE `table_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_id` (`cat_id`);

--
-- Indexes for table `table_content`
--
ALTER TABLE `table_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `table_item_type`
--
ALTER TABLE `table_item_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_json`
--
ALTER TABLE `table_json`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_account`
--
ALTER TABLE `table_account`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_app`
--
ALTER TABLE `table_app`
  MODIFY `app_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_category`
--
ALTER TABLE `table_category`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `table_content`
--
ALTER TABLE `table_content`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `table_item_type`
--
ALTER TABLE `table_item_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_json`
--
ALTER TABLE `table_json`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
