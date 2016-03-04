-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2015 at 07:22 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jr`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `society_id` int(10) unsigned NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `blocks_society_id_foreign` (`society_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=130 ;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `society_id`, `name`, `created_at`, `updated_at`) VALUES
(6, 8, 'A', '2015-05-01 10:32:30', '2015-05-01 10:32:30'),
(7, 8, 'B', '2015-05-01 10:32:39', '2015-05-01 10:32:39'),
(8, 8, 'C', '2015-05-01 10:32:59', '2015-05-01 10:32:59'),
(9, 8, 'D', '2015-05-01 10:33:13', '2015-05-01 10:33:13'),
(10, 8, 'E', '2015-05-01 10:33:38', '2015-05-01 10:33:38'),
(11, 8, 'F', '2015-05-01 10:33:56', '2015-05-01 10:33:56'),
(12, 8, 'G', '2015-05-01 10:34:18', '2015-05-01 10:34:18'),
(13, 8, 'H', '2015-05-01 10:34:47', '2015-05-01 10:34:47'),
(14, 8, 'I', '2015-05-01 10:34:58', '2015-05-01 10:34:58'),
(15, 8, 'J', '2015-05-01 10:35:11', '2015-05-01 10:35:11'),
(16, 8, 'K', '2015-05-01 10:35:28', '2015-05-01 10:35:28'),
(17, 8, 'L', '2015-05-01 10:35:38', '2015-05-01 10:35:38'),
(18, 8, 'M', '2015-05-01 10:35:56', '2015-05-01 10:35:56'),
(19, 8, 'N', '2015-05-01 10:36:05', '2015-05-01 10:36:05'),
(20, 8, 'P', '2015-05-01 10:36:24', '2015-05-01 10:36:24'),
(21, 9, 'CCA', '2015-05-01 10:37:28', '2015-05-01 10:37:28'),
(22, 9, 'Q', '2015-05-01 10:37:39', '2015-05-01 10:37:39'),
(23, 9, 'R', '2015-05-01 10:37:47', '2015-05-01 10:37:47'),
(24, 9, 'S', '2015-05-01 10:37:58', '2015-05-01 10:37:58'),
(25, 9, 'T', '2015-05-01 10:38:14', '2015-05-01 10:38:14'),
(26, 9, 'U', '2015-05-01 10:38:43', '2015-05-01 10:38:43'),
(27, 9, 'V', '2015-05-01 11:16:30', '2015-05-01 11:16:30'),
(28, 10, 'W', '2015-05-01 11:18:49', '2015-05-01 11:18:49'),
(29, 10, 'X', '2015-05-01 11:19:21', '2015-05-01 11:19:21'),
(30, 10, 'XX', '2015-05-01 11:19:40', '2015-05-01 11:19:40'),
(31, 10, 'Y', '2015-05-01 11:20:20', '2015-05-01 11:20:20'),
(32, 10, 'Z', '2015-05-01 11:20:44', '2015-05-01 11:20:44'),
(33, 11, 'AA', '2015-05-01 11:22:11', '2015-05-01 12:24:27'),
(34, 11, 'BB', '2015-05-01 11:22:28', '2015-05-01 12:24:42'),
(35, 11, 'CC', '2015-05-01 11:22:47', '2015-05-01 12:24:55'),
(36, 11, 'DD', '2015-05-01 12:25:44', '2015-05-01 12:25:44'),
(37, 11, 'CCA', '2015-05-01 13:30:44', '2015-05-01 13:30:44'),
(38, 11, 'EE', '2015-05-01 13:31:13', '2015-05-01 13:31:13'),
(39, 11, 'FF', '2015-05-01 13:31:23', '2015-05-01 13:31:23'),
(40, 11, 'GG', '2015-05-01 13:31:35', '2015-05-01 13:31:35'),
(41, 11, 'HH', '2015-05-01 13:31:46', '2015-05-01 13:31:46'),
(42, 11, 'JJ', '2015-05-01 13:32:14', '2015-05-01 13:32:14'),
(43, 12, 'A', '2015-05-01 13:33:44', '2015-05-01 13:33:44'),
(44, 12, 'AA', '2015-05-01 13:34:00', '2015-05-01 13:34:00'),
(45, 12, 'B', '2015-05-01 13:34:19', '2015-05-01 13:34:19'),
(46, 12, 'C', '2015-05-01 13:34:44', '2015-05-01 13:34:44'),
(47, 12, 'CCA', '2015-05-01 13:34:56', '2015-05-01 13:34:56'),
(48, 12, 'D', '2015-05-01 13:35:27', '2015-05-01 13:35:27'),
(49, 12, 'E', '2015-05-01 13:36:11', '2015-05-01 13:36:11'),
(50, 12, 'F', '2015-05-01 13:36:24', '2015-05-01 13:36:24'),
(51, 12, 'G', '2015-05-01 13:37:05', '2015-05-01 13:37:05'),
(52, 12, 'H', '2015-05-01 13:38:19', '2015-05-01 13:38:19'),
(53, 12, 'JJ', '2015-05-01 13:38:53', '2015-05-01 13:38:53'),
(54, 12, 'K', '2015-05-01 13:39:29', '2015-05-01 13:39:29'),
(55, 12, 'L', '2015-05-01 13:39:56', '2015-05-01 13:39:56'),
(56, 12, 'M', '2015-05-01 13:40:10', '2015-05-01 13:40:10'),
(57, 13, 'A', '2015-05-01 13:41:57', '2015-05-01 13:41:57'),
(58, 13, 'B', '2015-05-01 13:43:04', '2015-05-01 13:43:04'),
(59, 13, 'C', '2015-05-01 13:43:26', '2015-05-01 13:43:26'),
(60, 13, 'CCA', '2015-05-01 13:44:07', '2015-05-01 13:44:07'),
(61, 13, 'D', '2015-05-01 13:44:27', '2015-05-01 13:44:27'),
(62, 13, 'E', '2015-05-01 13:45:00', '2015-05-01 13:45:00'),
(63, 13, 'F', '2015-05-01 13:45:15', '2015-05-01 13:45:15'),
(64, 13, 'G', '2015-05-01 13:45:41', '2015-05-01 13:45:41'),
(65, 13, 'Golf Course', '2015-05-01 13:46:01', '2015-05-01 13:46:01'),
(66, 13, 'H', '2015-05-01 13:46:18', '2015-05-01 13:46:18'),
(67, 13, 'J', '2015-05-01 13:46:37', '2015-05-01 13:46:37'),
(68, 13, 'K', '2015-05-01 13:48:33', '2015-05-01 13:48:33'),
(69, 13, 'L', '2015-05-01 13:48:44', '2015-05-01 13:48:44'),
(70, 13, 'M', '2015-05-01 13:48:56', '2015-05-01 13:48:56'),
(71, 13, 'MB', '2015-05-01 13:49:25', '2015-05-01 13:49:25'),
(72, 13, 'N', '2015-05-01 13:49:50', '2015-05-01 13:49:50'),
(73, 14, 'CC1', '2015-05-01 13:50:55', '2015-05-01 13:50:55'),
(74, 14, 'CC2', '2015-05-01 13:51:07', '2015-05-01 13:51:07'),
(75, 14, 'CC3', '2015-05-01 13:51:20', '2015-05-01 13:51:20'),
(76, 14, 'CC4', '2015-05-01 13:51:38', '2015-05-01 13:51:38'),
(77, 14, 'p', '2015-05-01 13:51:54', '2015-05-01 13:51:54'),
(78, 14, 'Q', '2015-05-01 13:52:49', '2015-05-01 13:52:49'),
(79, 14, 'R', '2015-05-01 13:52:59', '2015-05-01 13:52:59'),
(80, 14, 'S', '2015-05-01 13:53:09', '2015-05-01 13:53:09'),
(81, 14, 'T', '2015-05-01 13:54:33', '2015-05-01 13:54:33'),
(82, 14, 'U', '2015-05-01 13:54:56', '2015-05-01 13:54:56'),
(83, 14, 'V', '2015-05-01 13:55:07', '2015-05-01 13:55:07'),
(84, 14, 'W', '2015-05-01 13:55:20', '2015-05-01 13:55:20'),
(85, 14, 'X', '2015-05-01 13:55:34', '2015-05-01 13:55:34'),
(86, 14, 'Y', '2015-05-01 13:55:47', '2015-05-01 13:55:47'),
(87, 14, 'Z', '2015-05-01 13:55:58', '2015-05-01 13:55:58'),
(88, 15, 'CCA1', '2015-05-04 10:59:48', '2015-05-04 10:59:48'),
(89, 15, 'CCA2', '2015-05-04 10:59:56', '2015-05-04 10:59:56'),
(90, 15, 'S', '2015-05-04 11:00:21', '2015-05-04 11:00:21'),
(91, 15, 'T', '2015-05-04 11:00:29', '2015-05-04 11:00:29'),
(92, 15, 'U', '2015-05-04 11:00:39', '2015-05-04 11:00:39'),
(93, 15, 'V', '2015-05-04 11:00:47', '2015-05-04 11:00:47'),
(94, 15, 'W', '2015-05-04 11:00:54', '2015-05-04 11:00:54'),
(95, 15, 'X', '2015-05-04 11:01:01', '2015-05-04 11:01:01'),
(96, 15, 'Y', '2015-05-04 11:01:08', '2015-05-04 11:01:08'),
(97, 16, 'L', '2015-05-04 11:01:57', '2015-05-04 11:01:57'),
(98, 16, 'M', '2015-05-04 11:02:05', '2015-05-04 11:02:05'),
(99, 16, 'N', '2015-05-04 11:02:14', '2015-05-04 11:02:14'),
(100, 16, 'P', '2015-05-04 11:02:26', '2015-05-04 11:02:26'),
(101, 16, 'Q', '2015-05-04 11:02:33', '2015-05-04 11:02:33'),
(102, 16, 'R', '2015-05-04 11:02:40', '2015-05-04 11:02:40'),
(103, 17, 'A', '2015-05-04 11:04:01', '2015-05-04 11:04:01'),
(104, 17, 'B', '2015-05-04 11:04:08', '2015-05-04 11:04:08'),
(105, 17, 'C', '2015-05-04 11:04:16', '2015-05-04 11:04:16'),
(106, 17, 'D', '2015-05-04 11:04:30', '2015-05-04 11:04:30'),
(107, 17, 'E', '2015-05-04 11:04:38', '2015-05-04 11:04:38'),
(108, 17, 'F', '2015-05-04 11:04:45', '2015-05-04 11:04:45'),
(109, 17, 'G', '2015-05-04 11:04:52', '2015-05-04 11:04:52'),
(110, 17, 'H', '2015-05-04 11:04:59', '2015-05-04 11:04:59'),
(111, 17, 'J', '2015-05-04 11:05:07', '2015-05-04 11:05:07'),
(112, 17, 'K', '2015-05-04 11:05:29', '2015-05-04 11:05:29'),
(113, 18, 'A', '2015-05-04 11:06:00', '2015-05-04 11:06:00'),
(114, 18, 'B', '2015-05-04 11:06:08', '2015-05-04 11:06:08'),
(115, 18, 'C', '2015-05-04 11:06:16', '2015-05-04 11:06:16'),
(116, 18, 'D', '2015-05-04 11:06:24', '2015-05-04 11:06:24'),
(117, 18, 'CCA', '2015-05-04 11:07:02', '2015-05-04 11:07:02'),
(118, 19, 'A', '2015-05-04 17:24:27', '2015-05-04 17:24:27'),
(119, 19, 'B', '2015-05-04 17:24:35', '2015-05-04 17:24:35'),
(120, 19, 'C', '2015-05-04 17:24:44', '2015-05-04 17:24:44'),
(122, 15, 'Z-1', '2015-05-14 16:56:13', '2015-05-14 16:56:13'),
(123, 15, 'Z-II', '2015-05-14 16:56:27', '2015-05-14 16:56:27'),
(124, 15, 'Z-III', '2015-05-14 16:56:39', '2015-05-14 16:56:39'),
(125, 15, 'Z-IV', '2015-05-14 16:56:52', '2015-05-14 16:56:52'),
(126, 15, 'Z-V', '2015-05-14 16:57:04', '2015-05-14 16:57:04'),
(127, 15, 'Z-VI', '2015-05-14 16:57:17', '2015-05-14 16:57:17'),
(128, 21, 'D', '2015-05-22 14:41:00', '2015-05-22 14:41:00'),
(129, 16, 'Q Block Apartments', '2015-05-22 14:43:52', '2015-05-22 14:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'House', '2015-05-03 22:35:09', '2015-05-03 22:35:09'),
(2, 'Plot', '2015-05-03 22:35:14', '2015-05-03 22:35:14'),
(3, 'Apartment', '2015-05-04 08:41:23', '2015-05-04 08:41:23'),
(4, 'File', '2015-05-11 05:26:23', '2015-05-11 05:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'Karachi', '2015-04-27 18:25:56', '2015-04-27 18:25:56'),
(10, 'Lahore', '2015-05-01 10:09:46', '2015-05-01 10:09:46'),
(11, 'Islamabad', '2015-05-01 10:10:04', '2015-05-01 10:10:04'),
(12, 'Gawadar', '2015-05-01 10:10:32', '2015-05-01 10:10:32'),
(13, 'Multan', '2015-05-01 10:25:15', '2015-05-01 10:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2015_04_27_221356_create_blocks_table', 1),
('2015_04_27_221356_create_cities_table', 1),
('2015_04_27_221356_create_properties_table', 1),
('2015_04_27_221356_create_societies_table', 1),
('2015_04_27_221356_create_users_table', 1),
('2015_04_27_221406_create_foreign_keys', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('maliksajidawan786@gmail.com', '57069fab5f51c850baad011c1ecc630a33b5617ee4c672dee11278c98be0891c', '2015-05-05 08:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `society_id` int(10) unsigned NOT NULL,
  `block_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('direct','indirect') COLLATE utf8_unicode_ci NOT NULL,
  `group` enum('commercial','residential') COLLATE utf8_unicode_ci DEFAULT NULL,
  `estate_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` enum('sale','rent','wanted') COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) unsigned NOT NULL,
  `size_unit` enum('marla','kanal') COLLATE utf8_unicode_ci NOT NULL,
  `location` enum('corner','non-corner') COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `price_unit` enum('thousand','lakh','crore') COLLATE utf8_unicode_ci NOT NULL,
  `price_converted` int(10) unsigned NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `house_type` enum('new','old') COLLATE utf8_unicode_ci DEFAULT NULL,
  `bedrooms` int(10) unsigned DEFAULT NULL,
  `features` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_contact_info` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `share_property` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `sold` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `properties_city_id_foreign` (`city_id`),
  KEY `properties_society_id_foreign` (`society_id`),
  KEY `properties_block_id_foreign` (`block_id`),
  KEY `properties_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=225 ;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `category_id`, `city_id`, `society_id`, `block_id`, `user_id`, `title`, `type`, `group`, `estate_name`, `contact_person`, `mobile`, `phone`, `address`, `property_no`, `purpose`, `size`, `size_unit`, `location`, `price`, `price_unit`, `price_converted`, `picture`, `detail`, `house_type`, `bedrooms`, `features`, `share_contact_info`, `share_property`, `sold`, `created_at`, `updated_at`) VALUES
(12, 1, 10, 13, 60, 3, 'Test House for Sale', 'direct', NULL, '', 'Farhan', '03008433121', '656656', '123 test address', '62', 'sale', 12, 'marla', 'corner', 80, 'lakh', 8000000, NULL, 'test', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-04 08:42:35', '2015-05-04 08:42:35'),
(13, 2, 10, 14, 77, 4, 'Urgent sale', 'indirect', 'residential', 'amir bahi', '03218894008', '03218894008', '111-167-167', '64 Q Dha', '534', 'sale', 1, 'kanal', 'non-corner', 110, 'lakh', 11000000, NULL, '', NULL, NULL, NULL, 'Y', 'Y', 'N', '2015-05-04 10:49:13', '2015-05-11 12:14:49'),
(14, 2, 10, 19, 118, 4, 'Urgent sale', 'direct', NULL, '', '03218894008', '03218894008', '111-167-167', '64 Q Dha', '367', 'sale', 1, 'kanal', 'non-corner', 13500000, 'lakh', 4294967295, NULL, 'Direct plot ha', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-04 18:21:07', '2015-05-04 18:21:07'),
(15, 2, 10, 16, 101, 4, 'Appartment', 'direct', NULL, '', '03218894008', '03218894008', '111-167-167', '64 Q Dha', '11', 'rent', 5, 'marla', 'non-corner', 30, 'thousand', 30000, NULL, 'Apartment for rent', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-04 18:30:04', '2015-05-04 18:30:04'),
(16, 1, 10, 16, 101, 4, '10 marla House', 'direct', NULL, '', '03218894008', '03218894008', '111-167-167', '64 Q Dha phase 8', '176', 'sale', 10, 'marla', 'non-corner', 150, 'lakh', 15000000, NULL, 'Urgent sale', NULL, NULL, NULL, 'Y', 'Y', 'N', '2015-05-04 18:33:35', '2015-05-04 18:33:35'),
(17, 2, 10, 13, 62, 5, 'DHA Phase 6 Pair', 'indirect', NULL, 'Rafi and sons', '03217068411', '03217068411', '35690440', '64-Q DHA Phase 8', '1287/1288', 'sale', 5, 'marla', 'non-corner', 123, 'lakh', 12300000, NULL, 'Offer Required', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 09:02:03', '2015-05-05 09:02:03'),
(18, 2, 10, 16, 101, 4, 'for Sale', 'indirect', NULL, 'Royal estate', 'Azeem ', '03218444779', '35741761-4', 'Phae 3 Y Blk', '188', 'sale', 10, 'marla', 'corner', 85, 'lakh', 8500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 11:54:40', '2015-05-05 11:54:40'),
(19, 2, 10, 16, 101, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111167167', 'jr', '96', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:00:31', '2015-05-05 12:00:31'),
(20, 2, 10, 14, 86, 4, 'Y blk 7', 'indirect', NULL, 'vounture estate', 'Miss Huda', '03238863190', '03238863190', 'Y Blk', '3050', 'sale', 1, 'kanal', 'non-corner', 95, 'lakh', 9500000, NULL, '', NULL, NULL, NULL, 'Y', 'Y', 'N', '2015-05-05 12:06:17', '2015-05-05 12:06:17'),
(21, 2, 10, 16, 98, 4, 'For Sale ', 'indirect', NULL, 'Hotline', 'shafqat', '03008405094', '03008451132', 'air port', '194', 'sale', 10, 'marla', 'non-corner', 100, 'crore', 1000000000, NULL, '', NULL, NULL, NULL, 'Y', 'Y', 'N', '2015-05-05 12:09:37', '2015-05-05 12:09:37'),
(22, 2, 10, 16, 102, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '13', 'sale', 23, 'marla', 'corner', 140, 'lakh', 14000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:10:12', '2015-05-05 12:10:12'),
(23, 2, 10, 14, 84, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '1063', 'sale', 20, 'marla', 'non-corner', 135, 'lakh', 13500000, NULL, '', NULL, NULL, NULL, 'N', 'N', 'N', '2015-05-05 12:12:38', '2015-05-05 12:12:38'),
(24, 2, 10, 13, 61, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '903', 'sale', 5, 'marla', 'corner', 75, 'lakh', 7500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:14:03', '2015-05-05 12:14:03'),
(25, 2, 10, 19, 120, 4, 'For Sale ', 'direct', NULL, '', 'subtain Sb', '03004266899', '03004266899', 'Lhaore', '182', 'sale', 10, 'marla', 'non-corner', 75, 'lakh', 7500000, NULL, '', NULL, NULL, NULL, 'Y', 'Y', 'N', '2015-05-05 12:15:48', '2015-05-05 12:15:48'),
(26, 2, 10, 13, 67, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '365', 'sale', 40, 'marla', 'non-corner', 475, 'lakh', 47500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:20:33', '2015-05-05 12:20:33'),
(27, 2, 10, 14, 86, 4, 'for sale', 'direct', NULL, '', '03218437272', '03218437272', '11-167-167', '64 Q Dha 8', '3905', 'sale', 10, 'marla', 'non-corner', 58, 'lakh', 5800000, NULL, '', NULL, NULL, NULL, 'Y', 'Y', 'N', '2015-05-05 12:21:39', '2015-05-05 12:21:39'),
(28, 2, 10, 13, 68, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '367/15', 'sale', 20, 'marla', 'non-corner', 185, 'lakh', 18500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:22:03', '2015-05-05 12:22:03'),
(29, 2, 10, 13, 62, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '336', 'sale', 20, 'marla', 'non-corner', 155, 'lakh', 15500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:23:27', '2015-05-05 12:23:27'),
(30, 2, 10, 13, 58, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '13', 'sale', 2, 'marla', 'non-corner', 160, 'lakh', 16000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:25:33', '2015-05-05 12:25:33'),
(31, 2, 10, 16, 97, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '172', 'sale', 20, 'marla', 'non-corner', 140, 'lakh', 14000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:28:06', '2015-05-05 12:28:06'),
(32, 2, 10, 14, 77, 4, 'for sale', 'indirect', NULL, ' J R property', '03218894008', '03218894008', '111-167-167', '64 Q Dha 8', '534', 'sale', 1, 'kanal', 'non-corner', 100, 'lakh', 10000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:28:46', '2015-05-05 12:28:46'),
(33, 2, 10, 16, 97, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '20', 'sale', 20, 'marla', 'non-corner', 140, 'lakh', 14000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:30:00', '2015-05-05 12:30:00'),
(34, 2, 10, 16, 97, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '266', 'sale', 22, 'marla', 'non-corner', 145, 'lakh', 14500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:31:46', '2015-05-05 12:31:46'),
(35, 2, 10, 16, 101, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '118,119', 'sale', 10, 'marla', 'non-corner', 95, 'lakh', 9500000, NULL, 'Q.118,119.10Maral.Pair @95lac Each', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:36:48', '2015-05-05 12:36:48'),
(36, 2, 10, 15, 94, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '737', 'sale', 20, 'marla', 'non-corner', 175, 'lakh', 17500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 12:59:53', '2015-05-05 12:59:53'),
(37, 2, 10, 15, 95, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '994', 'sale', 20, 'marla', 'non-corner', 150, 'lakh', 15000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 13:03:24', '2015-05-05 13:03:24'),
(38, 2, 10, 19, 118, 4, 'for Sale', 'indirect', NULL, 'mhy', 'Saddique', '03218894008', '03218894008', '64 Q Dha phase 8', '674', 'sale', 10, 'marla', 'corner', 75, 'lakh', 7500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 17:02:16', '2015-05-05 17:02:16'),
(39, 2, 10, 16, 100, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '119/c', 'sale', 10, 'marla', 'non-corner', 110, 'lakh', 11000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 17:13:05', '2015-05-05 17:13:05'),
(40, 2, 10, 16, 100, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '120', 'sale', 10, 'marla', 'non-corner', 110, 'lakh', 11000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 17:14:16', '2015-05-05 17:14:16'),
(41, 2, 10, 16, 99, 4, 'for Sale', 'indirect', NULL, 'estate one', 'Arif Malik', '03214786148', '03214786148', 'phase 1', '73', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 17:15:00', '2015-05-05 17:15:00'),
(42, 2, 10, 16, 100, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '12', 'sale', 20, 'marla', 'non-corner', 160, 'lakh', 16000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 17:17:30', '2015-05-05 17:17:30'),
(43, 2, 10, 16, 102, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '5', 'sale', 40, 'marla', 'non-corner', 350, 'lakh', 35000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-05 17:19:16', '2015-05-05 17:19:16'),
(44, 2, 10, 16, 100, 4, 'for Sale', 'indirect', NULL, 'sham bulder', 'kamran', '03214702112', '03214702112', 'phase 1', '15', 'sale', 4, 'marla', 'non-corner', 150, 'lakh', 15000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 11:17:40', '2015-05-06 11:17:40'),
(45, 2, 10, 19, 120, 4, 'Urgent sale', 'indirect', NULL, 'divine', 'SHAHBAZ', '03224691645', '03224691645', 'divine garden', '53', 'sale', 1, 'kanal', 'non-corner', 105, 'lakh', 10500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 11:19:40', '2015-05-06 11:19:40'),
(46, 2, 10, 16, 101, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '120', 'sale', 4, 'marla', 'non-corner', 220, 'lakh', 22000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:11:13', '2015-05-06 12:11:13'),
(47, 2, 10, 16, 102, 6, 'Plot for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '124', 'sale', 17, 'marla', 'corner', 115, 'lakh', 11500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:13:28', '2015-05-06 12:13:28'),
(48, 2, 10, 16, 101, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '33', 'sale', 7, 'marla', 'corner', 290, 'lakh', 29000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:14:59', '2015-05-06 12:14:59'),
(49, 2, 10, 15, 90, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '205', 'sale', 20, 'marla', 'non-corner', 118, 'lakh', 11800000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:21:21', '2015-05-06 12:21:21'),
(50, 2, 10, 15, 90, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '993', 'sale', 20, 'marla', 'non-corner', 115, 'lakh', 11500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:22:53', '2015-05-06 12:22:53'),
(51, 2, 10, 16, 100, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '13', 'sale', 4, 'marla', 'non-corner', 165, 'lakh', 16500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:34:42', '2015-05-06 12:34:42'),
(52, 2, 10, 16, 101, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '3', 'sale', 32, 'marla', 'non-corner', 1500, 'lakh', 150000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:35:52', '2015-05-06 12:35:52'),
(53, 2, 10, 15, 91, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '1319', 'sale', 20, 'marla', 'non-corner', 172, 'lakh', 17200000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:37:48', '2015-05-06 12:37:48'),
(54, 2, 10, 15, 90, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '171', 'sale', 20, 'marla', 'non-corner', 140, 'lakh', 14000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:39:04', '2015-05-06 12:39:04'),
(55, 2, 10, 15, 90, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '11', 'sale', 20, 'marla', 'non-corner', 140, 'lakh', 14000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:42:25', '2015-05-06 12:42:25'),
(56, 1, 10, 16, 101, 6, 'House for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '176', 'sale', 10, 'marla', 'non-corner', 150, 'lakh', 15000000, NULL, 'House for sale \r\nQ.176.5Bed@150lac', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:45:53', '2015-05-06 12:45:53'),
(57, 3, 10, 16, 101, 6, 'Apartment for sale', 'direct', NULL, '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '5', 'sale', 4, 'marla', 'non-corner', 55, 'lakh', 5500000, NULL, 'Apartment For Sale\r\nLG.5 .2Bed @55lac', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-06 12:52:13', '2015-05-06 12:52:13'),
(58, 2, 10, 16, 101, 6, 'Plot for sale', 'indirect', NULL, 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '91', 'sale', 4, 'marla', 'non-corner', 200, 'lakh', 20000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-07 10:56:52', '2015-05-07 10:56:52'),
(59, 2, 10, 16, 101, 4, 'for rent apparment first floor', 'direct', 'residential', '', 'Imtiaz sb', '03218894008', '03218894008', '64 Q Dha phase 8', '9', 'rent', 5, 'marla', 'non-corner', 30, 'thousand', 30000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 12:36:49', '2015-05-09 12:38:30'),
(60, 1, 10, 16, 98, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '99', 'sale', 10, 'marla', 'non-corner', 170, 'lakh', 17000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 12:44:59', '2015-05-09 12:44:59'),
(61, 2, 10, 19, 119, 4, '4Marla Commercial', 'indirect', 'commercial', 'Aleem Assocciat', '03218894008', '03218894008', '11-167-167', '64 Q Dha 8', '25', 'sale', 4, 'marla', 'non-corner', 95, 'lakh', 9500000, NULL, 'Commercial plot for sale', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 12:46:56', '2015-05-09 12:46:56'),
(62, 1, 10, 16, 99, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '331', 'sale', 10, 'marla', 'non-corner', 170, 'lakh', 17000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 12:48:40', '2015-05-09 12:48:40'),
(63, 2, 10, 19, 118, 4, 'for Sale', 'indirect', 'residential', 'Javed Shah', 'SHah g', '03218499906', '03218499906', 'Phase 1', '450', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 12:49:45', '2015-05-09 12:49:45'),
(64, 2, 10, 19, 118, 4, 'Right side', 'indirect', 'residential', 'Aleem Assocciat', '03218894008', '03218894008', '111-167-167', '64 dha PHASE 8', '305', 'sale', 1, 'kanal', 'non-corner', 115, 'lakh', 11500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 12:53:07', '2015-05-09 12:53:07'),
(65, 2, 10, 19, 118, 4, 'for Sale', 'indirect', 'residential', 'jAVED sHAH', 'SHah g', '03218499906', '03218499906', 'Phase 1', '543', 'sale', 1, 'kanal', 'non-corner', 105, 'lakh', 10500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 12:55:24', '2015-05-09 12:55:24'),
(66, 2, 10, 19, 118, 4, 'for Sale', 'indirect', 'residential', 'Aleem Assocciat', 'Bilal', '03218894008', '03218894008', 'Phase 1', '431', 'sale', 1, 'kanal', 'non-corner', 120, 'lakh', 12000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 12:57:53', '2015-05-09 12:57:53'),
(67, 2, 10, 19, 118, 4, 'for Sale', 'indirect', 'residential', 'Hotline', 'Shafqat', '03218894008', '032188', 'air port Road', '505', 'sale', 1, 'kanal', 'non-corner', 110, 'lakh', 11000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 13:00:07', '2015-05-09 13:00:07'),
(68, 2, 10, 16, 100, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '109', 'sale', 20, 'marla', 'non-corner', 150, 'lakh', 15000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 13:01:48', '2015-05-09 13:01:48'),
(69, 2, 10, 19, 118, 4, 'for sale', 'indirect', 'residential', 'Aleem Assocciat', 'Bilal', '03218894008', '03218894008', 'Phase 1', '638', 'sale', 1, 'kanal', 'non-corner', 105, 'lakh', 10500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 13:03:03', '2015-05-09 13:03:03'),
(70, 2, 10, 16, 101, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '36', 'sale', 40, 'marla', 'corner', 275, 'lakh', 27500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 13:04:44', '2015-05-09 13:04:44'),
(71, 2, 10, 16, 101, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '50', 'sale', 22, 'marla', 'non-corner', 115, 'lakh', 11500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 13:06:14', '2015-05-09 13:06:14'),
(72, 2, 10, 14, 85, 4, 'Plot for Sale ', 'direct', 'residential', '', 'behroz ', '03235696600', '03235696600', '64 Q Dha 8', '940', 'sale', 1, 'kanal', 'non-corner', 97, 'lakh', 9700000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-09 13:24:54', '2015-05-09 13:24:54'),
(73, 2, 10, 16, 101, 6, 'Plot for sale', 'direct', 'commercial', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '91', 'sale', 4, 'marla', 'non-corner', 200, 'lakh', 20000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:16:33', '2015-05-11 12:16:33'),
(74, 2, 10, 16, 101, 4, 'for Sale', 'direct', 'residential', '', 'Qadoos sb', '03218894008', '03218894008', '64 Q Dha phase 8', '104&105 Pair', 'sale', 10, 'marla', 'non-corner', 95, 'lakh', 9500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:16:43', '2015-05-11 12:16:43'),
(75, 2, 10, 16, 102, 6, 'Plot for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '49''50', 'sale', 10, 'marla', 'non-corner', 90, 'lakh', 9000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:17:58', '2015-05-11 12:17:58'),
(76, 2, 10, 15, 95, 4, 'Urgent sale', 'direct', 'residential', '', 'Usman baig', '03218894008', '03218894008', '64 Q Dha phase 8', '994', 'sale', 1, 'kanal', 'non-corner', 150, 'lakh', 15000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:18:01', '2015-05-11 12:18:01'),
(77, 2, 10, 16, 102, 4, 'Urgent sale', 'direct', 'residential', '', 'Feroz sb', '03218894008', '03218894008', '64 Q Dha phase 8', '62', 'sale', 10, 'marla', 'non-corner', 88, 'lakh', 8800000, NULL, '', NULL, NULL, NULL, 'Y', 'Y', 'N', '2015-05-11 12:20:13', '2015-05-11 12:20:13'),
(78, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '350', 'sale', 10, 'marla', 'non-corner', 80, 'lakh', 8000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:21:06', '2015-05-11 12:21:06'),
(79, 2, 10, 15, 92, 4, 'Urgent sale', 'direct', 'residential', '', 'Aleem sb', '03218894008', '03218894008', '64 Q Dha phase 8', '747', 'sale', 1, 'kanal', 'non-corner', 175, 'lakh', 17500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:21:36', '2015-05-11 12:21:36'),
(80, 2, 10, 15, 94, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '95', 'sale', 20, 'marla', 'non-corner', 210, 'lakh', 21000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:22:40', '2015-05-11 12:22:40'),
(81, 2, 10, 16, 102, 4, 'Urgent sale', 'direct', 'residential', '', 'Ahmed bahll', '03218894008', '03218894008', '64 Q Dha phase 8', '67', 'sale', 10, 'marla', 'corner', 90, 'lakh', 9000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:22:48', '2015-05-11 12:22:48'),
(82, 2, 10, 15, 91, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '1468', 'sale', 20, 'marla', 'non-corner', 185, 'lakh', 18500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:23:48', '2015-05-11 12:23:48'),
(83, 2, 10, 16, 97, 4, 'Urgent sale', 'direct', 'residential', '', 'Abdullah sb', '03218894008', '03218894008', '64 Q Dha phase 8', '193', 'sale', 10, 'marla', 'non-corner', 90, 'lakh', 9000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:23:57', '2015-05-11 12:23:57'),
(84, 2, 10, 15, 93, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '545', 'sale', 20, 'marla', 'non-corner', 180, 'lakh', 18000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:24:56', '2015-05-11 12:24:56'),
(85, 2, 10, 19, 120, 4, 'for Sale', 'indirect', 'residential', 'National Estate', 'Nasir', '03218894008', '03218894008', '64 Q Dha phase 8', '129', 'sale', 10, 'marla', 'non-corner', 72, 'lakh', 7200000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:25:38', '2015-05-11 12:25:38'),
(86, 2, 10, 15, 93, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '1210', 'sale', 20, 'marla', 'non-corner', 112, 'lakh', 11200000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:26:12', '2015-05-11 12:26:12'),
(87, 2, 10, 15, 90, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '1087', 'sale', 20, 'marla', 'non-corner', 118, 'lakh', 11800000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:27:21', '2015-05-11 12:27:21'),
(88, 2, 10, 16, 101, 4, 'Urgent sale', 'direct', 'commercial', '', 'adeel', '03218894008', '03218894008', '64 Q Dha', '22', 'sale', 4, 'marla', 'non-corner', 225, 'lakh', 22500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:27:42', '2015-05-11 12:28:10'),
(89, 2, 10, 16, 101, 4, 'Urgent sale', 'direct', 'commercial', '', 'adeel', '03218894008', '03214786148', '64 Q Dha', '118', 'sale', 4, 'marla', 'non-corner', 225, 'lakh', 22500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:29:39', '2015-05-11 12:29:39'),
(90, 2, 10, 16, 101, 4, 'Urgent sale', 'direct', 'residential', '', 'Khalid sb', '03218894008', '03218894008', '64 Q Dha phase 8', '123', 'sale', 9, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:31:07', '2015-05-11 12:31:07'),
(91, 2, 10, 16, 101, 4, 'for Sale', 'direct', 'residential', '', 'Asif sb', '03218437272', '03218437272', '64 Q Dha phase 8', '187', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:37:46', '2015-05-11 12:37:46'),
(92, 2, 10, 16, 101, 4, 'for Sale', 'direct', 'residential', '', 'Hassam', '03218894008', '03218894008', '64 Q Dha phase 8', '77', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:39:22', '2015-05-11 12:39:22'),
(93, 2, 10, 16, 100, 8, 'For sale', 'direct', 'residential', '', 'Farrukh', '032176666666', '7626262636', 'non', '207', 'sale', 20, 'marla', 'non-corner', 140, 'lakh', 14000000, NULL, 'very good location', NULL, NULL, NULL, 'Y', 'Y', 'N', '2015-05-11 12:40:29', '2015-05-11 12:40:29'),
(94, 2, 10, 16, 102, 4, 'for Sale', 'direct', 'residential', '', 'Tahseen sb', '03218894008', '03214786148', '64 Q Dha phase 8', '124', 'sale', 17, 'marla', 'corner', 115, 'lakh', 11500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:41:00', '2015-05-11 12:41:00'),
(95, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'residential', 'trust deal', 'imran', '03218894008', '03218894008', '64 Q Dha phase 8', '144', 'sale', 1, 'kanal', 'non-corner', 135, 'lakh', 13500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:42:40', '2015-05-11 12:42:40'),
(96, 2, 10, 18, 113, 4, 'Urgent sale', 'direct', 'residential', '', 'Dr Zohair', '03218894008', '03218894008', '64 Q Dha phase 8', '888', 'sale', 5, 'marla', 'non-corner', 50, 'lakh', 5000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:46:00', '2015-05-11 12:46:00'),
(97, 3, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'residential', 'National Estate', 'Nasir', '03214786148', '03218894008', '64 Q Dha phase 8', '6', 'sale', 5, 'marla', 'non-corner', 65, 'lakh', 6500000, NULL, '1rst Floor 2bed room', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:47:42', '2015-05-11 12:47:42'),
(98, 2, 10, 19, 118, 4, 'Urgent sale', 'indirect', 'residential', 'National Estate', 'iqbal', '03218894008', '03218894008', '64 Q Dha phase 8', '509', 'sale', 1, 'kanal', 'non-corner', 110, 'lakh', 11000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 12:58:53', '2015-05-11 12:58:53'),
(99, 2, 10, 19, 119, 4, 'Urgent sale', 'indirect', 'residential', 'National Estate', '03218343111', '03218343111', '111-121-121', '64 Q Dha phase 8', '271', 'sale', 1, 'kanal', 'non-corner', 115, 'lakh', 11500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 13:01:26', '2015-05-11 13:01:26'),
(100, 2, 10, 19, 118, 4, 'Urgent sale', 'indirect', 'residential', 'National Estate', 'iqbal', '03218343111', '03218343111', '64 Q Dha phase 8', '422', 'sale', 16, 'marla', 'corner', 105, 'lakh', 10500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 13:02:45', '2015-05-11 13:02:45'),
(101, 2, 10, 19, 120, 4, 'Urgent sale', 'indirect', 'residential', 'National Estate', 'iqbal', '03218343111', '03218343111', '64 Q Dha phase 8', '86', 'sale', 23, 'marla', 'corner', 115, 'lakh', 11500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 13:03:53', '2015-05-11 13:03:53'),
(102, 2, 10, 19, 120, 4, 'Urgent sale', 'indirect', 'residential', 'Estate Planners', 'Shahid Mehmood', '03214949475', '03214949475', 'phase 1', '54', 'sale', 1, 'kanal', 'non-corner', 105, 'lakh', 10500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 13:09:14', '2015-05-11 13:09:14'),
(103, 2, 10, 19, 120, 4, 'Urgent sale', 'indirect', 'residential', 'Arcon', 'Fayaz', '03236680000', '03236680000', '64 Q Dha', '251&252 pair', 'sale', 1, 'kanal', 'non-corner', 210, 'lakh', 21000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 13:11:09', '2015-05-11 13:11:09'),
(104, 2, 10, 19, 119, 4, 'Urgent sale', 'indirect', 'residential', 'National Estate', 'iqbal', '03218343111', '03218343111', '64 Q Dha', '496', 'sale', 23, 'marla', 'corner', 140, 'lakh', 14000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 13:12:48', '2015-05-11 13:12:48'),
(105, 2, 10, 19, 120, 4, 'Urgent sale', 'indirect', 'residential', 'land stock', 'Sakhi Sarwar', '03218894008', '03218894008', '64 Q Dha', '220', 'sale', 19, 'marla', 'non-corner', 100, 'lakh', 10000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 13:15:15', '2015-05-11 13:15:15'),
(106, 2, 10, 18, 113, 9, '', 'direct', 'residential', '', 'Yousuf Awan', '03218496799', '03218496799', '64 Q Air Avenue', '2122', 'sale', 5, 'marla', 'non-corner', 53, 'lakh', 5300000, NULL, 'This 100% direct plot.', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 14:05:55', '2015-05-11 14:05:55'),
(107, 2, 10, 13, 61, 10, 'For Sale', 'direct', 'residential', '', 'Adeel Malik', '03234320100', '111167167', '64 q', '1161', 'sale', 1, 'kanal', 'non-corner', 140, 'lakh', 14000000, NULL, 'Ghf', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 14:07:30', '2015-05-11 14:07:30'),
(108, 2, 10, 16, 100, 6, 'Plot for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '252', 'sale', 20, 'marla', 'non-corner', 120, 'lakh', 12000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 14:12:32', '2015-05-11 14:12:32'),
(109, 2, 10, 16, 98, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '79', 'sale', 20, 'marla', 'non-corner', 95, 'lakh', 9500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 14:14:48', '2015-05-11 14:14:48'),
(110, 2, 10, 18, 115, 9, '', 'direct', 'residential', '', 'Yousuf Awan', '03218496799', '03218496799', '64 Q', '574', 'sale', 5, 'marla', 'non-corner', 53, 'lakh', 5300000, NULL, '', NULL, NULL, NULL, 'N', 'N', 'N', '2015-05-11 14:16:59', '2015-05-11 14:16:59'),
(111, 1, 10, 16, 101, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '103', 'sale', 10, 'marla', 'corner', 170, 'lakh', 17000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 14:17:04', '2015-05-11 14:17:04'),
(112, 1, 10, 16, 98, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '99', 'sale', 10, 'marla', 'non-corner', 170, 'lakh', 17000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 14:18:51', '2015-05-11 14:18:51'),
(113, 2, 10, 18, 115, 9, '', 'direct', 'residential', '', 'Yousuf Awan', '03218496799', '03218496799', '64 Q', '1756', 'sale', 5, 'marla', 'non-corner', 60, 'lakh', 6000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 14:20:14', '2015-05-11 14:20:14'),
(114, 2, 10, 13, 67, 10, 'For Sale', 'direct', 'residential', '', 'Adeel Malik', '03234320100', '111167167', '64 q', '129', 'sale', 1, 'kanal', 'non-corner', 230, 'lakh', 23000000, NULL, 'Main 100" fit Road', NULL, NULL, NULL, 'N', 'N', 'N', '2015-05-11 14:21:36', '2015-05-11 14:21:36'),
(115, 1, 10, 19, 118, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '400', 'sale', 20, 'marla', 'non-corner', 325, 'lakh', 32500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-11 14:22:38', '2015-05-11 14:22:38'),
(116, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'residential', 'Alamgiran', 'Rizwan', '03004985373', '03004985373', '64 Q Dha phase 8', '58', 'sale', 10, 'marla', 'non-corner', 90, 'lakh', 9000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-12 11:14:58', '2015-05-12 11:14:58'),
(117, 2, 10, 16, 99, 4, 'Urgent sale', 'indirect', 'residential', 'Alamgiran', 'Rizwan', '03004985373', '03004985373', 'phase 1', '73', 'sale', 10, 'marla', 'non-corner', 90, 'lakh', 9000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-12 11:16:32', '2015-05-12 11:16:32'),
(118, 2, 10, 16, 97, 4, 'for Sale', 'indirect', 'residential', 'HOTLINE', 'umer', '03008451083', '03008451083', 'Air Port road', '238', 'sale', 10, 'marla', 'non-corner', 90, 'lakh', 9000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-12 11:27:22', '2015-05-12 11:27:22'),
(119, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'commercial', 'Estate Zone', 'Amir Shahzad', '0321800826', '0321800826', 'phase 1', '120', 'sale', 4, 'marla', 'non-corner', 225, 'lakh', 22500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-12 11:29:55', '2015-05-12 11:29:55'),
(120, 2, 10, 17, 106, 4, 'for Sale', 'indirect', 'residential', 'Estate Zone', 'Amir Shahzad', '0321800826', '0321800826', 'phase 1', '9', 'sale', 2, 'kanal', 'non-corner', 390, 'lakh', 39000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-12 11:31:04', '2015-05-12 11:31:04'),
(121, 2, 10, 16, 98, 6, 'Plot for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '60', 'sale', 10, 'marla', 'corner', 105, 'lakh', 10500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-13 11:55:35', '2015-05-13 12:07:11'),
(122, 2, 10, 16, 101, 6, 'Plot for sale', 'direct', 'commercial', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '27', 'sale', 4, 'marla', 'non-corner', 225, 'lakh', 22500000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-13 11:59:34', '2015-05-13 11:59:34'),
(123, 2, 10, 16, 101, 6, 'Plot for sale', 'direct', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '56', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-13 12:02:40', '2015-05-18 17:55:44'),
(124, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '156', 'sale', 10, 'marla', 'non-corner', 100, 'lakh', 10000000, NULL, '', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-13 12:04:38', '2015-05-13 12:04:38'),
(125, 2, 10, 16, 97, 8, 'For sale', 'direct', 'residential', '', 'Azfur', '0000000', '00000000', '', '118', 'sale', 20, 'marla', 'non-corner', 140, 'lakh', 14000000, NULL, 'very very good deal', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-13 14:15:40', '2015-05-13 14:15:40'),
(126, 2, 10, 16, 102, 8, 'For sale', 'direct', 'residential', '', 'Prodessor uni', '0000009', '000000', '', '21', 'sale', 20, 'marla', 'non-corner', 130, 'lakh', 13000000, NULL, 'good ideal deal', NULL, NULL, NULL, 'N', 'Y', 'N', '2015-05-13 14:19:06', '2015-05-13 14:19:06'),
(127, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '269', 'sale', 10, 'marla', '', 85, 'lakh', 8500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 16:42:20', '2015-05-14 16:45:39'),
(128, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '268', 'sale', 13, 'marla', 'corner', 115, 'lakh', 11500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 16:44:21', '2015-05-14 16:44:21'),
(129, 2, 10, 15, 90, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '11', 'sale', 20, 'marla', '', 140, 'lakh', 14000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 16:48:11', '2015-05-14 16:48:11'),
(130, 2, 10, 15, 90, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '150', 'sale', 20, 'marla', 'corner', 130, 'lakh', 13000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 16:49:27', '2015-05-14 16:49:27'),
(131, 2, 10, 15, 95, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '1078', 'sale', 20, 'marla', '', 135, 'lakh', 13500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 16:50:57', '2015-05-14 16:50:57'),
(132, 2, 10, 15, 92, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '472', 'sale', 20, 'marla', '', 140, 'lakh', 14000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 16:53:09', '2015-05-14 16:53:09'),
(133, 2, 10, 15, 122, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '65', 'sale', 20, 'marla', '', 100, 'lakh', 10000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 16:59:22', '2015-05-14 17:01:37'),
(134, 2, 10, 15, 123, 6, 'House for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '86', 'sale', 20, 'marla', '', 100, 'lakh', 10000000, NULL, '', '', 0, NULL, 'Y', 'Y', 'N', '2015-05-14 17:01:02', '2015-05-14 17:02:41'),
(135, 2, 10, 16, 97, 4, 'Urgent sale', 'indirect', 'residential', 'Javed shah', 'Javed shah', '03218894008', '03218894008', '64 Q Dha phase 8', '354', 'sale', 1, 'kanal', '', 110, 'lakh', 11000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 17:15:50', '2015-05-14 17:15:50'),
(137, 2, 10, 16, 97, 4, 'Urgent sale', 'indirect', 'residential', 'mhy', 'Nasir', '03218894008', '03218894008', '64 Q Dha phase 8', '281', 'sale', 1, 'marla', '', 115, 'lakh', 11500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 17:17:39', '2015-05-19 13:04:13'),
(138, 2, 10, 13, 67, 10, 'For Sale', 'indirect', 'residential', 'JR', 'Adeel Malik', '03234320100', '111167167', '64 q', '466', 'sale', 1, 'kanal', '', 220, 'lakh', 22000000, NULL, 'Good location', '', 0, NULL, 'Y', 'Y', 'N', '2015-05-14 17:18:20', '2015-05-14 17:18:20'),
(139, 2, 10, 16, 99, 4, 'Urgent sale', 'indirect', 'residential', 'Arshad fajar', 'Arshad', '923224397939', '923224397939', 'phase 1', '231&228', 'sale', 10, 'marla', '', 90, 'lakh', 9000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 17:22:30', '2015-05-14 17:22:30'),
(140, 2, 10, 16, 101, 4, 'for Sale', 'indirect', 'commercial', 'Asad associate', 'asad', '03218487749', '03218487749', 'phase 1', '83', 'sale', 4, 'marla', '', 225, 'lakh', 22500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 17:24:57', '2015-05-14 17:24:57'),
(141, 2, 10, 14, 85, 4, 'Urgent sale', 'indirect', 'residential', 'Aqeel molvi', 'Aqeel tajbah', '03218894008', '03218894008', '64 Q Dha phase 8', '213', 'sale', 1, 'kanal', '', 95, 'lakh', 9500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-14 17:26:31', '2015-05-14 17:26:31'),
(142, 2, 10, 16, 101, 8, 'For sale', 'direct', 'residential', '', 'Brg', '00000', '00000', '', '92', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, 'ideal plot', '', 0, NULL, 'N', 'Y', 'N', '2015-05-15 00:10:06', '2015-05-15 00:10:06'),
(143, 2, 10, 19, 120, 4, 'Urgent sale', 'indirect', 'residential', 'Royal Estate', 'Ali', '03237005299', '03237005299', 'phase 3 Y block', '235', 'sale', 1, 'kanal', '', 105, 'lakh', 10500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-15 14:38:33', '2015-05-15 14:38:33'),
(144, 2, 10, 19, 120, 4, 'Urgent sale', 'indirect', 'residential', 'Royal Estate', 'Ali', '03237005299', '03237005299', 'phase 3 Y block', '88&87', 'sale', 1, 'kanal', '', 105, 'lakh', 10500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-15 14:42:36', '2015-05-15 14:42:36'),
(145, 2, 10, 16, 97, 4, 'Urgent sale', 'indirect', 'residential', 'Madina Builders', 'javed', '03218894008', '03218894008', '64 Q Dha', '45', 'sale', 24, 'marla', 'corner', 160, 'lakh', 16000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-15 14:44:12', '2015-05-15 14:44:12'),
(146, 2, 10, 16, 100, 4, 'Urgent sale', 'indirect', 'residential', 'Hassan EST', 'Pervaiz', '03218894008', '03218894008', '64 Q Dha', '57', 'sale', 1, 'marla', '', 115, 'lakh', 11500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-15 16:03:34', '2015-05-15 16:03:34'),
(147, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'residential', 'Zain real EST', 'm tanver jutt', '03218404962', '03218404962', 'phase 1', '192', 'sale', 10, 'marla', '', 90, 'lakh', 9000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-19 10:52:10', '2015-05-19 10:52:10'),
(148, 2, 10, 16, 100, 4, 'Urgent sale', 'indirect', 'residential', 'albarqa', 'Rizwan', '03218894008', '03218894008', 'phase 3 Y block', '105', 'sale', 1, 'kanal', '', 140, 'lakh', 14000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-19 13:01:46', '2015-05-19 13:01:46'),
(149, 2, 10, 16, 97, 4, 'Urgent sale', 'direct', 'residential', '', 'adeel', '03218894008', '03218894008', '64 Q Dha phase 8', '116', 'sale', 1, 'kanal', '', 140, 'lakh', 14000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-19 13:02:54', '2015-05-19 13:02:54'),
(150, 2, 10, 19, 118, 4, 'Urgent sale', 'indirect', 'commercial', 'Good Deal', 'Ahsaan bhatti', '03218894008', '03218894008', 'phase 3 Y block', '67', 'sale', 4, 'marla', '', 215, 'lakh', 21500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-19 13:06:46', '2015-05-19 13:06:46'),
(151, 2, 10, 19, 118, 4, 'Urgent sale', 'indirect', 'commercial', 'Good Deal', 'Ahsaan bhatti', '03218894008', '03214786148', '64 Q Dha', '6', 'sale', 6, 'marla', '', 250, 'lakh', 25000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-19 13:10:18', '2015-05-19 13:10:18'),
(152, 2, 10, 16, 99, 10, 'For Sale', 'direct', 'residential', '', 'Adeel Malik', '03234320100', '111167167', '64 q', '67', 'sale', 10, 'marla', '', 92, 'lakh', 9200000, NULL, '', '', 0, NULL, 'Y', 'Y', 'Y', '2015-05-19 16:14:59', '2015-05-19 16:14:59'),
(153, 2, 10, 19, 119, 8, 'For sale', 'indirect', 'residential', 'Farooq sab', 'farooq jamal', '00000', '00000', '', '159', 'sale', 10, 'marla', 'non-corner', 77, 'lakh', 7700000, NULL, 'price is final', '', 0, NULL, 'N', 'Y', 'N', '2015-05-19 18:37:38', '2015-05-19 18:37:38'),
(154, 2, 10, 16, 99, 8, 'For sale', 'indirect', 'residential', 'Farooq sab', 'farooq jamal', '000000', '000000', '', '269', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, 'everage plot', '', 0, NULL, 'N', 'Y', 'N', '2015-05-19 18:41:48', '2015-05-19 18:41:48'),
(155, 1, 10, 19, 118, 4, 'Urgent sale', 'indirect', 'residential', 'defence est', 'm asif', '03214449732', '03214449732', 'phase 1', '190', 'sale', 10, 'marla', '', 185, 'lakh', 18500000, NULL, '', 'new', 4, NULL, 'N', 'Y', 'N', '2015-05-20 12:05:47', '2015-05-20 12:05:47'),
(156, 2, 10, 19, 118, 4, 'Eden vista', 'indirect', 'residential', 'shahbaz Pakistan EST', '03218894008', '03218894008', '03218894008', '64 Q Dha phase 8', '246', 'sale', 10, 'marla', '', 86, 'lakh', 8600000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 12:33:24', '2015-05-20 12:33:24'),
(157, 2, 10, 16, 100, 6, 'Plot for sale', 'indirect', 'commercial', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '144', 'sale', 20, 'marla', '', 140, 'lakh', 14000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 14:50:50', '2015-05-20 14:50:50'),
(158, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '268', 'sale', 10, 'marla', '', 85, 'lakh', 8500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 14:52:01', '2015-05-20 14:52:01'),
(159, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '269', 'sale', 13, 'marla', 'corner', 110, 'lakh', 11000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 14:53:06', '2015-05-20 14:53:06'),
(160, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'commercial', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '15', 'sale', 4, 'marla', '', 165, 'lakh', 16500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 14:55:15', '2015-05-20 14:55:15'),
(161, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '164', 'sale', 13, 'marla', 'corner', 95, 'lakh', 9500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 14:57:42', '2015-05-20 14:57:42'),
(162, 2, 10, 16, 99, 4, 'for Sale', 'indirect', 'commercial', 'Haroon bahti', 'Devin', '03218894008', '03218894008', 'divine garden', '7', 'sale', 8, 'marla', '', 325, 'lakh', 32500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 15:29:45', '2015-05-20 15:29:45'),
(163, 2, 10, 16, 100, 4, 'Urgent sale', 'indirect', 'residential', 'trust deal', 'imran', '03218894008', '03218894008', '64 Q Dha', '242', 'sale', 1, 'kanal', '', 140, 'lakh', 14000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 15:48:37', '2015-05-20 15:48:37'),
(164, 2, 10, 19, 119, 4, 'Urgent sale', 'indirect', 'residential', 'National Estate', 'iqbal', '03218343111', '03218343111', '64 Q Dha phase 8', '205', 'sale', 10, 'marla', '', 80, 'lakh', 8000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 15:51:19', '2015-05-20 15:54:21'),
(165, 2, 10, 19, 120, 4, 'for Sale', 'indirect', 'residential', 'Haroon bahti', 'haroon', '03218894008', '03218894008', 'divine garden', '36', 'sale', 1, 'kanal', '', 105, 'lakh', 10500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 15:53:17', '2015-05-20 15:53:17'),
(166, 2, 10, 19, 120, 4, 'for Sale', 'direct', 'residential', '', 'sabtain sb', '03218894008', '03218894008', '64 Q Dha phase 8', '182', 'sale', 10, 'marla', '', 75, 'lakh', 7500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-20 21:39:13', '2015-05-20 21:39:13'),
(167, 2, 10, 16, 97, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '108', 'sale', 20, 'marla', 'non-corner', 140, 'lakh', 14000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 08:38:13', '2015-05-21 08:38:13'),
(168, 2, 10, 16, 100, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '144', 'sale', 20, 'marla', '', 135, 'lakh', 13500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 08:39:56', '2015-05-21 08:39:56'),
(169, 1, 10, 16, 102, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '60', 'sale', 10, 'marla', 'corner', 170, 'lakh', 17000000, NULL, '', 'old', 4, 'TV Lounge,Drawing Room,Dinning Room,Servant Quarters,Study Room,Garage,Store Room,Balcony', 'N', 'Y', 'N', '2015-05-21 08:47:47', '2015-05-21 08:47:47'),
(170, 1, 10, 16, 99, 6, 'House For Rent', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '270', 'rent', 10, 'marla', '', 50, 'thousand', 50000, NULL, '', 'old', 4, 'TV Lounge,Drawing Room,Dinning Room,Servant Quarters,Study Room,Garage,Store Room,Balcony', 'N', 'Y', 'N', '2015-05-21 08:52:00', '2015-05-21 08:52:00'),
(171, 3, 10, 16, 101, 6, 'Apartment for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '8', 'sale', 5, 'marla', 'non-corner', 65, 'lakh', 6500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 08:54:15', '2015-05-21 08:54:15'),
(172, 1, 10, 16, 101, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '103', 'sale', 10, 'marla', 'corner', 170, 'lakh', 17000000, NULL, '', 'old', 3, 'TV Lounge,Drawing Room,Dinning Room,Servant Quarters,Study Room,Garage,Store Room,Balcony', 'N', 'Y', 'N', '2015-05-21 08:56:05', '2015-05-21 08:56:05'),
(173, 1, 10, 16, 101, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '160', 'sale', 10, 'marla', '', 170, 'lakh', 17000000, NULL, '', 'new', 4, 'TV Lounge,Drawing Room,Dinning Room,Servant Quarters,Study Room,Garage,Store Room,Balcony', 'N', 'Y', 'N', '2015-05-21 08:58:03', '2015-05-21 08:58:03'),
(174, 1, 10, 16, 100, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '73', 'sale', 23, 'marla', 'non-corner', 325, 'lakh', 32500000, NULL, '', 'old', 5, 'TV Lounge,Drawing Room,Dinning Room,Servant Quarters,Study Room,Garage,Store Room,Balcony', 'N', 'Y', 'N', '2015-05-21 09:00:46', '2015-05-21 09:00:46'),
(175, 3, 10, 16, 101, 6, 'Apartment for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '5', 'sale', 5, 'marla', 'non-corner', 55, 'lakh', 5500000, NULL, 'Lg.5.2Bed', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 09:02:50', '2015-05-21 09:02:50'),
(176, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '51', 'sale', 12, 'marla', '', 105, 'lakh', 10500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 09:47:43', '2015-05-21 09:47:43'),
(177, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '52', 'sale', 13, 'marla', '', 105, 'lakh', 10500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 09:48:53', '2015-05-21 09:48:53'),
(178, 2, 10, 14, 82, 6, 'Plot for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '1426', 'sale', 20, 'marla', '', 90, 'lakh', 9000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 09:50:24', '2015-05-21 09:50:24'),
(179, 2, 10, 15, 94, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '180', 'sale', 20, 'marla', '', 192, 'lakh', 19200000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 09:51:49', '2015-05-21 09:51:49'),
(180, 2, 10, 15, 93, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '705', 'sale', 20, 'marla', '', 190, 'lakh', 19000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 09:53:41', '2015-05-21 09:53:41'),
(181, 1, 10, 17, 104, 6, 'House For Rent', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '50', 'rent', 20, 'marla', 'corner', 110, 'thousand', 110000, NULL, '', 'old', 6, 'TV Lounge,Drawing Room,Dinning Room,Servant Quarters,Study Room,Garage,Store Room,Balcony', 'N', 'Y', 'N', '2015-05-21 10:58:23', '2015-05-21 10:58:23'),
(182, 2, 10, 16, 101, 8, 'For same', 'indirect', 'residential', 'Vicky bhai', '000000', '00000', '125', '', '177', 'sale', 20, 'marla', 'non-corner', 125, 'lakh', 12500000, NULL, 'its a plot on boundry', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 14:24:34', '2015-05-21 14:24:34'),
(183, 2, 10, 15, 93, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '1184', 'sale', 20, 'marla', '', 175, 'lakh', 17500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-21 16:18:10', '2015-05-21 16:18:10'),
(184, 1, 10, 16, 99, 6, 'House for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '263', 'sale', 10, 'marla', 'non-corner', 140, 'lakh', 14000000, NULL, '', 'old', 3, 'TV Lounge,Drawing Room,Dinning Room,Servant Quarters,Study Room,Garage,Store Room,Balcony', 'N', 'Y', 'N', '2015-05-21 16:25:06', '2015-05-21 16:26:13'),
(185, 2, 10, 16, 100, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '202', 'sale', 20, 'marla', '', 135, 'lakh', 13500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-22 13:19:05', '2015-05-22 13:19:05'),
(186, 2, 10, 16, 100, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '223', 'sale', 36, 'marla', 'corner', 275, 'lakh', 27500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-22 13:20:13', '2015-05-22 13:20:13'),
(187, 2, 10, 16, 100, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '109', 'sale', 20, 'marla', '', 150, 'lakh', 15000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-22 13:21:33', '2015-05-22 13:21:33'),
(188, 2, 10, 16, 99, 8, 'For sale', 'indirect', 'residential', 'Gondal', 'nyer gondal', '03229400786', '0000', '', '128', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, 'not a very good location', '', 0, NULL, 'N', 'Y', 'N', '2015-05-22 13:28:21', '2015-05-22 13:28:21'),
(189, 2, 10, 19, 118, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '243', 'sale', 10, 'marla', '', 86, 'lakh', 8600000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-22 14:44:31', '2015-05-22 14:44:31'),
(190, 2, 10, 21, 128, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '3', 'sale', 10, 'marla', '', 53, 'lakh', 5300000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-22 15:00:12', '2015-05-22 15:00:12');
INSERT INTO `properties` (`id`, `category_id`, `city_id`, `society_id`, `block_id`, `user_id`, `title`, `type`, `group`, `estate_name`, `contact_person`, `mobile`, `phone`, `address`, `property_no`, `purpose`, `size`, `size_unit`, `location`, `price`, `price_unit`, `price_converted`, `picture`, `detail`, `house_type`, `bedrooms`, `features`, `share_contact_info`, `share_property`, `sold`, `created_at`, `updated_at`) VALUES
(191, 2, 10, 21, 128, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '161', 'sale', 7, 'marla', '', 45, 'lakh', 4500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-22 15:01:36', '2015-05-22 15:01:36'),
(192, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'residential', 'majer saleem', 'Saleem sb AlI rent Palza 64 Q', '03218894008', '03218894008', 'divine garden', '112', 'sale', 1, 'kanal', 'corner', 115, 'lakh', 11500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-22 15:47:19', '2015-05-22 15:47:19'),
(193, 2, 10, 16, 102, 6, 'Plot for sale', 'indirect', 'commercial', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '14', 'sale', 8, 'marla', '', 360, 'lakh', 36000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-23 11:14:07', '2015-05-23 11:14:07'),
(194, 2, 10, 16, 102, 4, 'Urgent sale', 'indirect', 'commercial', 'GHani EST', 'Mian zubair', '03334885394', '03334885394', 'phase 3 Y block', '14', 'sale', 8, 'marla', '', 360, 'lakh', 36000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-23 11:31:02', '2015-05-23 11:31:02'),
(195, 2, 10, 19, 118, 4, 'Urgent sale', 'indirect', 'residential', 'Aleem Associate', 'Aleem ', '03218894008', '03218894008', 'phase 1', '74', 'sale', 4, 'marla', '', 150, 'lakh', 15000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-23 11:33:10', '2015-05-23 11:33:10'),
(196, 2, 10, 19, 118, 4, 'Urgent sale', 'indirect', 'commercial', 'Aleem Associate', 'Aleem ', '03218894008', '03218894008', 'phase 1', '49', 'sale', 5, 'marla', '', 175, 'lakh', 17500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-23 11:34:38', '2015-05-23 11:34:38'),
(198, 2, 10, 19, 120, 4, 'Urgent sale', 'indirect', 'residential', 'Aleem Associate', 'Aleem ', '03218894008', '03218343111', 'phase 1', '164', 'sale', 10, 'marla', '', 75, 'lakh', 7500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-23 11:37:39', '2015-05-23 11:37:39'),
(199, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'residential', 'Naveed ', 'central park', '03214531153', '03214531153', 'phase 1', '20', 'sale', 2, 'kanal', '', 325, 'lakh', 32500000, NULL, '', '', 0, NULL, 'N', 'N', 'N', '2015-05-23 14:14:32', '2015-05-23 14:14:32'),
(200, 2, 10, 16, 101, 6, 'Plot for sale', 'direct', 'commercial', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '50', 'sale', 4, 'marla', 'non-corner', 225, 'lakh', 22500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-25 17:16:39', '2015-05-25 17:16:39'),
(201, 2, 10, 16, 101, 6, 'Plot for sale', 'direct', 'commercial', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '27', 'sale', 4, 'marla', '', 225, 'lakh', 22500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-25 17:18:18', '2015-05-25 17:18:18'),
(202, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'residential', 'veeto est', 'Qazi Rashid', '03218894008', '03218894008', '64 Q Dha phase 8', '13''14', 'sale', 4, 'kanal', '', 750, 'lakh', 75000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-25 17:39:42', '2015-05-25 17:39:42'),
(203, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'residential', 'veeto est', 'Qazi Rashid', '03218894008', '03218894008', '64 Q Dha phase 8', '33.34', 'sale', 4, 'kanal', '', 750, 'lakh', 75000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-25 17:41:15', '2015-05-25 17:41:15'),
(204, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'commercial', 'veeto est', 'Qazi Rashid', '03008484208', '03008484208', 'phase 1', '2', 'sale', 32, 'marla', '', 15, 'crore', 150000000, NULL, '\r\n', '', 0, NULL, 'N', 'Y', 'N', '2015-05-25 17:43:22', '2015-05-25 17:43:22'),
(205, 2, 10, 16, 101, 4, 'Urgent sale', 'indirect', 'commercial', 'veeto est', 'Qazi Rashid', '03218894008', '03008484208', 'phase 1', '7', 'sale', 32, 'marla', '', 15, 'crore', 150000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-25 17:45:07', '2015-05-25 17:45:07'),
(206, 2, 10, 16, 101, 10, 'For Sale', 'direct', 'residential', '', 'Adeel Malik', '03234320100', '111167167', '64 q', '188', 'sale', 10, 'marla', 'non-corner', 85, 'lakh', 8500000, NULL, 'Direct plot 100 % confirm...', '', 0, NULL, 'Y', 'Y', 'N', '2015-05-26 15:01:09', '2015-05-26 15:01:09'),
(207, 1, 10, 13, 57, 10, 'For Sale', 'direct', 'residential', '', 'Adeel Malik', '03234320100', '111167167', '64 q', '333', 'sale', 10, 'marla', 'non-corner', 240, 'lakh', 24000000, NULL, '', 'new', 5, 'TV Lounge,Drawing Room,Dinning Room,Servant Quarters,Study Room,Garage,Store Room,Balcony', 'Y', 'Y', 'N', '2015-05-26 15:03:21', '2015-05-26 15:03:21'),
(208, 2, 10, 13, 59, 10, 'For Sale', 'indirect', 'residential', 'JR', 'Adeel Malik', '03234320100', '111167167', '64 q', '608', 'sale', 10, 'marla', 'non-corner', 190, 'lakh', 19000000, NULL, '', '', 0, NULL, 'Y', 'Y', 'N', '2015-05-26 15:05:17', '2015-05-26 15:05:17'),
(209, 2, 10, 16, 97, 10, 'For Sale', 'direct', 'residential', '', 'Adeel Malik', '03234320100', '111167167', '64 q', '116', 'sale', 1, 'kanal', 'non-corner', 140, 'lakh', 14000000, NULL, 'Urgent sale seller is needy.', '', 0, NULL, 'Y', 'Y', 'N', '2015-05-26 15:07:13', '2015-05-26 15:07:13'),
(210, 2, 10, 14, 84, 10, 'For Sale', 'indirect', 'residential', 'JR', 'Adeel Malik', '03234320100', '111167167', '64 q', '914', 'sale', 1, 'kanal', '', 135, 'lakh', 13500000, NULL, 'It is direct in islamabad office confirm option', '', 0, NULL, 'Y', 'Y', 'N', '2015-05-26 15:11:19', '2015-05-26 15:11:19'),
(211, 2, 10, 16, 101, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '20', 'sale', 2, 'kanal', 'non-corner', 300, 'lakh', 30000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-28 10:04:59', '2015-05-28 10:04:59'),
(212, 2, 10, 17, 104, 6, 'Plot for sale', 'direct', 'residential', '', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '49', 'sale', 1, 'kanal', 'non-corner', 165, 'lakh', 16500000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-28 10:06:45', '2015-05-28 10:06:45'),
(213, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '273', 'sale', 10, 'marla', '', 86, 'lakh', 8600000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-05-28 14:35:26', '2015-05-28 14:35:26'),
(214, 2, 10, 21, 128, 1, 'Plot For Sale', 'direct', 'residential', '', 'Tanveer Chohan', '03218437272', '35690440', '64-Q', '113', 'sale', 10, 'marla', 'non-corner', 0, 'lakh', 0, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-06-01 11:27:42', '2015-06-01 11:29:11'),
(215, 2, 10, 16, 97, 1, 'FOR SALE', 'direct', 'residential', '', 'Miss Khan', '03218437272', '35690440', '64-Q', '108', 'sale', 1, 'kanal', '', 140, 'lakh', 14000000, NULL, 'Paper Available', '', 0, NULL, 'N', 'Y', 'N', '2015-06-01 14:26:23', '2015-06-01 14:26:23'),
(216, 2, 10, 16, 102, 1, 'For Sale', 'direct', 'residential', '', 'Kashif Top Deal', '03218437272', '35690440', '64-Q', '131', 'sale', 10, 'marla', '', 0, 'lakh', 0, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-06-01 16:01:12', '2015-06-01 16:01:12'),
(217, 2, 10, 16, 97, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '192', 'sale', 10, 'marla', '', 88, 'lakh', 8800000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-06-05 11:51:44', '2015-06-05 11:51:44'),
(218, 2, 10, 19, 118, 1, 'Plot For Sale', 'indirect', 'residential', 'Pakistan Real Estate', 'Shahbaz Yaqoob', '03218487156', '35891124-7', 'Pakistan Real Estate', '243', 'sale', 10, 'marla', '', 86, 'lakh', 8600000, NULL, 'sfassdasd', '', 0, NULL, 'N', 'Y', 'N', '2015-06-08 09:31:33', '2015-06-08 09:33:40'),
(219, 2, 10, 21, 128, 1, '3', 'indirect', 'residential', 'Pakistan Real Estate', 'Shahbaz Yaqoob', '03218487156', '35891124-7', 'Pakistan Real Estate', '60', 'sale', 10, 'marla', '', 60, 'lakh', 6000000, NULL, 'dsdf', '', 0, NULL, 'N', 'Y', 'N', '2015-06-08 09:33:12', '2015-06-08 09:33:12'),
(220, 2, 10, 16, 99, 6, 'Plot for sale', 'indirect', 'residential', 'jr', 'Irfan ahmed', '03004672774', '111 167 167', 'jr', '224', 'sale', 10, 'marla', '', 90, 'lakh', 9000000, NULL, '', '', 0, NULL, 'N', 'Y', 'N', '2015-06-08 11:25:07', '2015-06-08 11:25:07'),
(221, 2, 10, 16, 98, 1, 'For Sale', 'indirect', 'residential', 'Alflah Estate', 'Muhammad asif', '03218437272', '35690440', '64-Q', '224', 'sale', 10, 'marla', '', 90, 'lakh', 9000000, NULL, 'xyz', '', 0, NULL, 'N', 'Y', 'N', '2015-06-11 12:38:35', '2015-06-11 12:38:35'),
(222, 2, 10, 16, 99, 1, 'For Sale', 'direct', 'residential', '', 'Muhammad asif', '03218437272', '35690440', '64-Q', '156', 'sale', 10, 'marla', '', 95, 'lakh', 9500000, NULL, 'Good Location Plot', '', 0, NULL, 'N', 'Y', 'N', '2015-06-11 12:40:46', '2015-06-11 12:40:46'),
(223, 2, 10, 16, 99, 1, 'For Sale', 'direct', 'residential', '', 'Muhammad asif', '03218437272', '35690440', '64-Q', '66', 'sale', 10, 'marla', '', 95, 'lakh', 9500000, NULL, 'Good Location Plot', '', 0, NULL, 'N', 'Y', 'N', '2015-06-11 12:42:22', '2015-06-11 12:42:22'),
(224, 2, 10, 16, 99, 1, 'For Sale', 'direct', 'residential', '', 'Muhammad asif', '03218437272', '35690440', '64-Q', '252', 'sale', 10, 'marla', '', 82, 'lakh', 8200000, NULL, 'Good Location Plot', '', 0, NULL, 'N', 'Y', 'N', '2015-06-11 12:43:58', '2015-06-11 12:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `societies`
--

CREATE TABLE IF NOT EXISTS `societies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int(10) unsigned NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `societies_city_id_foreign` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `societies`
--

INSERT INTO `societies` (`id`, `city_id`, `name`, `created_at`, `updated_at`) VALUES
(8, 10, 'DHA Phase 1', '2015-05-01 10:29:33', '2015-05-01 10:29:33'),
(9, 10, 'DHA Phase 2', '2015-05-01 10:36:49', '2015-05-01 10:36:49'),
(10, 10, 'DHA Phase 3', '2015-05-01 11:17:30', '2015-05-01 11:17:30'),
(11, 10, 'DHA Phase 4', '2015-05-01 11:21:46', '2015-05-01 11:21:46'),
(12, 10, 'DHA Phase 5', '2015-05-01 13:32:42', '2015-05-01 13:32:42'),
(13, 10, 'DHA Phase 6', '2015-05-01 13:41:19', '2015-05-01 13:41:19'),
(14, 10, 'DHA Phase 7', '2015-05-01 13:50:21', '2015-05-01 13:50:21'),
(15, 10, 'DHA Phase 8', '2015-05-04 10:57:57', '2015-05-04 10:57:57'),
(16, 10, 'DHA Phase 8 Ex Air Avenue', '2015-05-04 11:01:39', '2015-05-04 11:01:39'),
(17, 10, 'DHA Phase 8 Ex Park View', '2015-05-04 11:03:17', '2015-05-04 11:03:17'),
(18, 10, 'DHA 9 Town', '2015-05-04 11:05:51', '2015-05-04 11:05:51'),
(19, 10, 'Eden City', '2015-05-04 17:24:14', '2015-05-04 17:24:14'),
(20, 10, 'LDA City ', '2015-05-06 10:43:51', '2015-05-06 10:43:51'),
(21, 10, 'EDEN VISTA', '2015-05-22 14:40:30', '2015-05-22 14:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('admin','staff') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Asif', 'jrasif@gmail.com', '$2y$10$CLT0iII5mI1Mp3lp27OzF./PAoX42d7rEY7svXu4K1JMVHfAE1OXC', 'admin', 'egQrk5WULriFJPZX25MofAh08amWcjc1mQ2yQ3tTsCsCDFva61EsXofHKyRI', '2015-04-27 17:41:48', '2015-06-01 16:01:23'),
(3, 'Sajid', 'maliksajidawan786@gmail.com', '$2y$10$k/2GOEPLpHNYNraodGl/c.Sfg2PqpM2C1Tbly4MbESARRmFTe3OO6', 'staff', 'jwXMCjrXk9cNOP1B3HiZCwOndZT7a3p84TQM8fViVT60QZys1u90PhtCcfPE', '2015-05-01 16:09:18', '2015-05-01 16:15:27'),
(4, 'Asif', 'malikasifawank@yahoo.com', '$2y$10$Q3pQvaeUWbZCzFBKTeLNb.iHgb5GBXdgM6p/unI75goIESvQUGmFe', 'staff', 'daR8Xkrwa2WN6SVOR8NK9Bpuuiar7TU8rxFl4CclmJZCa7FlpMhBMFE1Kvyg', '2015-05-04 10:45:36', '2015-05-19 12:59:39'),
(5, 'Sajid Mahmood', 'malik_sajidawan786@yahoo.com', '$2y$10$.FrTrwZSzqDF6GeFYy2Si.VfFheI2K8ik/gl3eXRXq3cxU6IycVBu', 'staff', 'GAs4X2UKq8BMDxZI8mUa1ELnSXEPbobzJeCuJ4lXkgruQWGyq5YlapC1670q', '2015-05-05 08:59:42', '2015-05-05 09:02:11'),
(6, 'Irfan Ahmed', 'irfanahmed1466@gmail.com', '$2y$10$M8VA205bCmAsWiG0CMJcQeI3kolXTTbZJ.y6qiqK2V5nAeX/ZjX8u', 'staff', NULL, '2015-05-05 11:52:46', '2015-05-05 11:52:46'),
(7, 'Akbar', 'akki.mehar@yahoo.com', '$2y$10$Y14862qWTkVcOg5mntkJL.JCa7T2tglLf6kxKE2YMYNxYaxTDcBbO', 'staff', 'VlPkPRdUH9cFjDMIdwj1OVR7KRf5OBJULHnNFILJJtjKGGTdmNPt1jNmZYta', '2015-05-06 10:49:12', '2015-05-06 11:28:03'),
(8, 'Muhammad', 'asif167@yahoo.com', '$2y$10$lPGzMxuQkLRzZ35pAgEt/.PDAxSyrDWqJJLf9koqt8MNFPeaNLUxm', 'staff', 'R0SjQzMHT8dEGFXNTvtEDo12iae9jP03XrDlRdt9EkXLq3cB1dtz9lWB2ty6', '2015-05-11 12:33:53', '2015-05-15 00:07:27'),
(9, 'Muhammad Yousuf Awan', 'yousufawan21@gmail.com', '$2y$10$jNim0dyI9SJuHDwuuHYMsOAOQq4WY8ZX0ISdBOD/dHU5LurIGAAMO', 'staff', 'nmAZbgZdJYAEBim02sIRw6ZdSaINll3YGx6DjJvZiOyhmmkZFWd2N1Y421zk', '2015-05-11 14:01:54', '2015-05-13 11:55:21'),
(10, 'Adeel Malik', 'adeelahmed307@gmail.com', '$2y$10$i5Xo1uroGMqNs5YJM77zyuf0mYeL7DgCmHbyt4f85.cMPvuBFDhMy', 'staff', NULL, '2015-05-11 14:03:08', '2015-05-11 14:03:08'),
(11, 'Sajid Mahmood', 'malikhassaanasif@gmail.com', '$2y$10$2TFNwrs2txdlPIHUQKAy5.OWhw7rw2MPVXUV79F9t4a/Xa3RKqSl2', 'staff', NULL, '2015-06-01 11:31:36', '2015-06-01 11:31:36'),
(12, 'waqas', 'muhammad@gmail.com', '$2y$10$ejHgTqA9XnEfWVJA5XBz7.rVB0qcVIFHJGU79d8PmlaFfYia7sEBK', 'staff', NULL, '2015-06-20 09:58:33', '2015-06-20 09:58:33');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blocks`
--
ALTER TABLE `blocks`
  ADD CONSTRAINT `blocks_society_id_foreign` FOREIGN KEY (`society_id`) REFERENCES `societies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `properties_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `properties_society_id_foreign` FOREIGN KEY (`society_id`) REFERENCES `societies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `properties_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `societies`
--
ALTER TABLE `societies`
  ADD CONSTRAINT `societies_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
