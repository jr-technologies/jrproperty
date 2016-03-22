-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2016 at 06:16 AM
-- Server version: 5.5.44-MariaDB-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jrproper_jr`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=149 ;

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
(30, 13, 'XX', '2015-05-01 11:19:40', '2015-05-01 11:19:40'),
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
(129, 16, 'Q Block Apartments', '2015-05-22 14:43:52', '2015-05-22 14:43:52'),
(130, 22, 'A', '2016-03-08 12:19:25', '2016-03-08 12:19:25'),
(131, 22, 'B', '2016-03-08 12:19:33', '2016-03-08 12:19:33'),
(132, 22, 'C', '2016-03-08 12:19:49', '2016-03-08 12:19:49'),
(133, 22, 'D', '2016-03-08 12:20:08', '2016-03-08 12:20:08'),
(134, 22, 'E', '2016-03-08 12:20:19', '2016-03-08 12:20:19'),
(135, 22, 'F', '2016-03-08 12:20:26', '2016-03-08 12:20:26'),
(136, 22, 'G', '2016-03-08 12:20:34', '2016-03-08 12:20:34'),
(137, 22, 'H', '2016-03-08 12:20:43', '2016-03-08 12:20:43'),
(138, 22, 'J', '2016-03-08 12:20:57', '2016-03-08 12:20:57'),
(139, 22, 'K', '2016-03-08 12:21:05', '2016-03-08 12:21:05'),
(140, 22, 'L', '2016-03-08 12:21:17', '2016-03-08 12:21:17'),
(141, 22, 'M', '2016-03-08 12:21:30', '2016-03-08 12:21:30'),
(142, 22, 'N', '2016-03-08 12:21:47', '2016-03-08 12:21:47'),
(143, 22, 'P', '2016-03-18 12:11:37', '2016-03-18 12:11:37'),
(144, 22, 'Q', '2016-03-18 12:11:50', '2016-03-18 12:11:50'),
(145, 26, 'A', '2016-03-19 11:12:37', '2016-03-19 11:12:37'),
(146, 26, 'B', '2016-03-19 11:12:46', '2016-03-19 11:12:46'),
(147, 26, 'C', '2016-03-19 11:12:55', '2016-03-19 11:12:55'),
(148, 26, 'D', '2016-03-19 11:13:03', '2016-03-19 11:13:03');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'Karachi', '2015-04-27 18:25:56', '2016-03-04 06:40:25'),
(10, 'Lahore', '2015-05-01 10:09:46', '2015-05-01 10:09:46'),
(11, 'Islamabad', '2015-05-01 10:10:04', '2015-05-01 10:10:04'),
(12, 'Gawadar', '2015-05-01 10:10:32', '2015-05-01 10:10:32'),
(13, 'Multan', '2015-05-01 10:25:15', '2015-05-01 10:25:15'),
(14, '', '2016-03-04 04:51:43', '2016-03-04 04:51:43');

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
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification`, `created_at`, `updated_at`) VALUES
(2, 'DHA Phase 9, 5 Marla File rate 45 Lac....', '2016-03-10 09:23:19', '0000-00-00 00:00:00'),
(3, 'Cricket match will be played JR Property vs TPM on saturday 03:30pm at DHA Phase 8 Q Block Air Avenue Lahore....', '2016-03-10 09:23:19', '0000-00-00 00:00:00'),
(4, 'Tomorrow will be lunch at JR Property, all staff members contribute 150 Rupees per head.... ', '2016-03-10 09:23:19', '0000-00-00 00:00:00'),
(5, 'LDA City File Rates: 5 Marla at 35 Lac,\r\n10 Marla at 55 Lac and 1 Kanal at 75 Lac....', '2016-03-10 09:23:19', '0000-00-00 00:00:00'),
(6, 'DHA Phase 8 Z block 5 Marla file at 55 Lac....', '2016-03-10 09:23:19', '0000-00-00 00:00:00');

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
  `contact_person` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` enum('sale','rent','wanted') COLLATE utf8_unicode_ci NOT NULL,
  `size` double unsigned NOT NULL,
  `size_unit` enum('marla','kanal','square feet','square yards','square meters') COLLATE utf8_unicode_ci NOT NULL,
  `location` enum('corner','non-corner','facing-park','main-boulevard','average') COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `price_unit` enum('lakh','thousand','crore') COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=146 ;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `category_id`, `city_id`, `society_id`, `block_id`, `user_id`, `title`, `type`, `group`, `estate_name`, `contact_person`, `mobile`, `phone`, `address`, `property_no`, `purpose`, `size`, `size_unit`, `location`, `price`, `price_unit`, `price_converted`, `picture`, `detail`, `house_type`, `bedrooms`, `features`, `share_contact_info`, `share_property`, `sold`, `created_at`, `updated_at`) VALUES
(15, 2, 10, 15, 92, 4, NULL, 'indirect', 'residential', 'JR Properoetytg', '22222', '111111111111111', '7455465', '64-Q', '25', 'sale', 2250, 'marla', 'corner', 252000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', '', '', '2016-03-04 08:17:53', '2016-03-14 07:50:39'),
(16, 2, 10, 19, 118, 4, NULL, 'direct', 'commercial', NULL, 'atif', '03218894008', '03218894008', 'dha phase 1', '15', 'sale', 1800, 'marla', '', 425000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-07 18:19:57', '2016-03-14 07:50:39'),
(17, 2, 10, 16, 19, 4, NULL, 'indirect', 'residential', 'Dr Rizwan', 'Rizwan', '03218894008', '03218894008', 'phase one', '22', 'sale', 2250, 'marla', 'average', 11000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-07 18:30:29', '2016-03-14 07:50:39'),
(18, 2, 10, 16, 20, 15, NULL, 'indirect', 'residential', '', 'Javaid shah', '', '', '', '27', 'sale', 2250, 'marla', 'average', 11000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 05:42:02', '2016-03-14 07:50:39'),
(19, 2, 10, 16, 19, 15, NULL, 'indirect', 'residential', 'Shah', 'Shah', '098272727', '', '', '315', 'sale', 2250, 'marla', 'corner', 11500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 11:54:16', '2016-03-14 07:50:39'),
(20, 2, 10, 22, 140, 3, NULL, 'indirect', 'residential', 'Rafi And Sons', 'M Ejaz', '0300/0323-4700347', '0300/0323-4700347', 'DHA Phase 1', '1058', 'sale', 2250, 'marla', 'corner', 5500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 12:26:41', '2016-03-17 16:24:53'),
(21, 2, 10, 17, 103, 15, NULL, 'indirect', 'residential', 'Millat', 'Arshd ', '0000', '0000', '', '337', 'sale', 4500, 'marla', 'average', 16700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 12:39:26', '2016-03-14 07:50:40'),
(22, 2, 10, 12, 55, 10, NULL, 'direct', 'residential', NULL, 'Adeel Malik', '0323 4320100', '0323 4320100', '64 Q', '373', 'sale', 4500, 'kanal', 'facing-park', 30000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-08 12:43:45', '2016-03-14 07:50:40'),
(25, 3, 10, 16, 22, 4, NULL, 'direct', 'residential', NULL, 'imtiaz sb', '03218894008', '03218894008', '64Q phase 8', '7', 'rent', 1125, 'marla', 'average', 7500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 13:27:20', '2016-03-14 07:50:40'),
(27, 2, 10, 16, 101, 10, NULL, 'direct', 'residential', NULL, 'Adeel Malik', '0323 4320100', '0323 4320100', '64 Q', '94', 'sale', 2250, 'marla', '', 9500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-08 13:37:57', '2016-03-14 07:50:40'),
(28, 2, 10, 16, 17, 4, NULL, 'direct', 'residential', NULL, 'Abdullah', '03218894008', '03218894008', 'Phase 8', '193', 'sale', 2250, 'marla', 'average', 10000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-08 13:43:32', '2016-03-14 07:50:40'),
(30, 2, 10, 16, 102, 15, NULL, '', 'residential', NULL, NULL, NULL, NULL, NULL, '87', 'sale', 2250, 'marla', 'average', 9500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-09 17:45:00', '2016-03-14 07:50:40'),
(31, 2, 10, 15, 124, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'Shan', '03214070540', '03214070540', 'Garrison Estate', '791', 'sale', 1125, 'marla', 'average', 3100000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 11:50:08', '2016-03-14 07:50:40'),
(32, 2, 10, 15, 126, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'Shan', '03214070540', '03214070540', 'Garrison Estate', '100', 'sale', 1125, 'marla', 'average', 2700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 11:57:52', '2016-03-14 07:50:40'),
(33, 2, 10, 15, 126, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'Shan', '03214070540', '03214070540', 'Garrison Estate', '425', 'sale', 2250, 'marla', 'average', 5800000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 12:07:29', '2016-03-14 07:50:40'),
(34, 2, 10, 14, 78, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'nadeem', '03214949499', '03214949499', 'Garrison Estate', '733', 'sale', 4500, 'kanal', 'average', 11500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 12:19:22', '2016-03-14 07:50:40'),
(35, 2, 10, 13, 66, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'nadeem', '03214949499', '03214949499', 'Garrison Estate', '228', 'sale', 4500, 'kanal', '', 21500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 12:40:13', '2016-03-22 13:54:07'),
(36, 2, 10, 13, 64, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'nadeem', '03214949499', '03214949499', 'Garrison Estate', '377', 'sale', 4500, 'kanal', '', 20000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 12:47:05', '2016-03-19 13:19:38'),
(37, 2, 10, 16, 101, 10, NULL, 'direct', 'commercial', NULL, 'Nasir shb', '0323 4320100', '0323 4320100', '64 Q', '72', 'sale', 900, 'marla', 'corner', 20000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-10 13:40:31', '2016-03-14 07:50:40'),
(39, 2, 10, 13, 62, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'nadeem', '03214949499', '03214949499', 'Garrison Estate', '1122', 'sale', 1125, 'marla', 'average', 6000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 14:31:00', '2016-03-14 07:50:40'),
(40, 2, 10, 14, 86, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'farooq', '03218456626', '03218456626', 'Garrison Estate', '1540', 'sale', 4500, 'kanal', 'average', 10800000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 14:37:19', '2016-03-14 07:50:40'),
(41, 2, 10, 14, 79, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'farooq', '03218456626', '03218456626', 'Garrison Estate', '478', 'sale', 4500, 'kanal', 'average', 15000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 14:42:08', '2016-03-14 07:50:40'),
(42, 2, 10, 13, 62, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1711', 'sale', 1125, 'marla', 'average', 6000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 14:56:24', '2016-03-14 07:50:40'),
(43, 2, 10, 13, 62, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1634', 'sale', 1125, 'marla', 'average', 5600000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:02:59', '2016-03-14 07:50:40'),
(44, 2, 10, 13, 62, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1252', 'sale', 1125, 'marla', 'average', 6200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:06:33', '2016-03-14 07:50:40'),
(45, 2, 10, 13, 61, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1169', 'sale', 1575, 'marla', 'average', 9700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:11:42', '2016-03-14 07:50:40'),
(46, 2, 10, 13, 61, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '871', 'sale', 1575, 'marla', 'average', 9000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:15:02', '2016-03-14 07:50:40'),
(47, 2, 10, 13, 72, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1031', 'sale', 4500, 'kanal', 'average', 16000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:18:35', '2016-03-14 07:50:40'),
(48, 2, 10, 13, 72, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '465', 'sale', 4500, 'kanal', 'average', 16000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:20:48', '2016-03-14 07:50:40'),
(49, 2, 10, 16, 99, 15, NULL, '', 'residential', NULL, NULL, NULL, NULL, NULL, '186', 'sale', 2250, 'marla', '', 8500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-15 12:45:01', '2016-03-15 12:45:01'),
(50, 2, 10, 16, 102, 15, NULL, 'indirect', 'residential', 'me', '9999999', '76767', '567676575', 'dfvdfgdfg', '82', 'sale', 2250, 'marla', '', 95, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-15 22:08:00', '2016-03-15 22:08:00'),
(51, 2, 10, 16, 100, 7, NULL, 'direct', 'residential', NULL, 'Akbar', '03215424272', '03215424272', 'Jr', '248', 'sale', 4500, 'kanal', 'non-corner', 14500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'Y', '2016-03-16 13:56:31', '2016-03-21 16:50:34'),
(52, 2, 10, 19, 118, 15, NULL, 'direct', 'commercial', NULL, 'Junaid gulber ', '999999999', '44444444', ')(($$&(', '36', 'sale', 900, 'marla', '', 200, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-17 15:16:57', '2016-03-17 15:16:57'),
(58, 2, 10, 22, 134, 3, NULL, 'indirect', 'residential', 'Estate International', 'Mehmood Ahmed Virk', '03004002213', '03004002213', 'K Block', '108', 'sale', 4500, 'kanal', '', 8100000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-17 16:24:32', '2016-03-17 16:24:32'),
(59, 2, 10, 13, 72, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '657', 'sale', 4500, 'kanal', '', 14600000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 10:45:11', '2016-03-18 10:47:09'),
(60, 2, 10, 22, 132, 19, NULL, 'indirect', 'residential', 'easy deal', 'mumtaz', '03218468555', '03218468555', 'easy deal', '476', 'sale', 4500, 'kanal', '', 9500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 10:58:31', '2016-03-18 10:58:31'),
(61, 2, 10, 22, 141, 19, NULL, 'indirect', 'residential', 'easy deal', 'mumtaz', '03218468555', '03218468555', 'easy deal', '664', 'sale', 4500, 'kanal', '', 700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 11:04:10', '2016-03-18 11:04:10'),
(62, 2, 10, 22, 133, 19, NULL, 'indirect', 'residential', 'easy deal', 'mumtaz', '03218468555', '03218468555', 'easy deal', '227', 'sale', 4500, 'kanal', '', 9700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 11:09:47', '2016-03-18 11:09:47'),
(63, 2, 10, 14, 83, 19, NULL, 'indirect', 'residential', 'estate masters', 'bilal bhatti', '03229977997', '03229977997', 'estate masters', '1090', 'sale', 4500, 'kanal', '', 14500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 11:23:05', '2016-03-18 11:23:05'),
(64, 2, 10, 14, 79, 19, NULL, 'indirect', 'residential', 'estate masters', 'bilal bhatti', '03229977997', '03229977997', 'estate masters', '550', 'sale', 4500, 'kanal', '', 14500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 11:28:49', '2016-03-18 11:28:49'),
(65, 2, 10, 14, 84, 19, NULL, 'indirect', 'residential', 'estate masters', 'bilal bhatti', '03229977997', '03229977997', 'estate masters', '594', 'sale', 4500, 'kanal', '', 15500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 11:38:21', '2016-03-18 11:38:21'),
(66, 2, 10, 22, 132, 19, NULL, 'indirect', 'residential', 'estate masters', 'imtiaz', '03228888429', '03228888429', 'estate masters', '813', 'sale', 4500, 'kanal', '', 7300000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 11:45:29', '2016-03-18 11:45:29'),
(67, 2, 10, 22, 142, 19, NULL, 'indirect', 'residential', 'estate masters', 'imtiaz', '03228888429', '03228888429', 'estate masters', '897', 'sale', 4500, 'kanal', '', 6800000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 11:48:49', '2016-03-18 11:48:49'),
(68, 2, 10, 14, 81, 19, NULL, 'indirect', 'residential', 'estate masters', 'iqbal', '03214427373', '03214427373', 'estate masters', '1810', 'sale', 2250, 'marla', '', 700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 11:53:58', '2016-03-18 11:53:58'),
(69, 2, 10, 13, 62, 19, NULL, 'indirect', 'residential', 'estate masters', 'iqbal', '03214427373', '03214427373', 'estate masters', '1597', 'sale', 1125, 'marla', '', 5700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 12:01:44', '2016-03-18 12:01:44'),
(70, 2, 10, 22, 143, 19, NULL, 'indirect', 'residential', 'zain baba estate', 'zahid', '03224446270', '03224446270', 'zain baba estate', '769', 'sale', 4500, 'kanal', '', 6200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 12:18:27', '2016-03-18 12:36:42'),
(71, 2, 10, 22, 144, 19, NULL, 'indirect', 'residential', 'zain baba estate', 'zahid', '03224446270', '03224446270', 'zain baba estate', '103', 'sale', 4500, 'kanal', '', 8500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 12:32:56', '2016-03-18 12:32:56'),
(72, 2, 10, 22, 132, 19, NULL, 'indirect', 'residential', 'zain baba estate', 'zahid', '03224446270', '03224446270', 'zain baba estate', '314', 'sale', 4500, 'kanal', '', 10600000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 12:38:57', '2016-03-18 12:38:57'),
(73, 2, 10, 22, 138, 19, NULL, 'indirect', 'residential', 'zain baba estate', 'zahid', '03224446270', '03224446270', 'zain baba estate', '1884', 'sale', 2250, 'marla', '', 4700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 12:41:55', '2016-03-18 12:41:55'),
(74, 2, 10, 14, 84, 19, NULL, 'indirect', 'residential', 'town estate', 'imran ', '03222003088', '03222003088', 'town estate', '1071', 'sale', 4500, 'kanal', '', 14200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-18 12:50:50', '2016-03-18 12:50:50'),
(75, 2, 10, 14, 84, 19, NULL, 'indirect', 'residential', 'town estate', 'imran', '03222003088', '03222003088', 'town estate', '480', 'sale', 4500, 'kanal', '', 1500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:02:12', '2016-03-19 10:02:12'),
(76, 2, 10, 14, 82, 19, NULL, 'indirect', 'residential', 'town estate', 'imran', '03222003088', '03222003088', 'town estate', '1156', 'sale', 4500, 'kanal', '', 1200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:05:25', '2016-03-19 10:05:25'),
(77, 2, 10, 14, 79, 19, NULL, 'indirect', 'residential', 'town estate', 'imran', '03222003088', '03222003088', 'town estate', '129', 'sale', 4500, 'kanal', '', 14600000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:09:12', '2016-03-19 10:09:12'),
(78, 2, 10, 14, 79, 19, NULL, 'indirect', 'residential', 'town estate', 'imran', '03222003088', '03222003088', 'town estate', '311', 'sale', 4500, 'kanal', '', 1400000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:12:51', '2016-03-19 10:12:51'),
(79, 2, 10, 14, 77, 19, NULL, 'indirect', 'residential', 'town estate', 'imran', '03222003088', '03222003088', 'town estate', '51', 'sale', 4500, 'kanal', '', 1700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:15:02', '2016-03-19 10:15:02'),
(80, 2, 10, 14, 84, 19, NULL, 'indirect', 'residential', 'town estate', 'imran', '03222003088', '03222003088', 'town estate', '854', 'sale', 4500, 'kanal', '', 1500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:17:10', '2016-03-19 10:17:10'),
(81, 2, 10, 14, 82, 19, NULL, 'indirect', 'residential', 'foster estate', 'ali', '03218445938', '03218445938', 'foster estate', '1819', 'sale', 4500, 'kanal', 'average', 10500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:22:52', '2016-03-19 10:22:52'),
(82, 2, 10, 14, 79, 19, NULL, 'indirect', 'residential', 'foster estate', 'ali', '03218445938', '03218445938', 'foster estate', '289', 'sale', 4500, 'kanal', 'corner', 15500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:29:15', '2016-03-19 10:29:15'),
(83, 2, 10, 14, 82, 19, NULL, 'indirect', 'residential', 'foster estate', 'ali', '03218445938', '03218445938', 'foster estate', '131', 'sale', 4500, 'kanal', 'average', 1300000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:33:54', '2016-03-19 10:33:54'),
(84, 2, 10, 14, 86, 19, NULL, 'indirect', 'residential', 'foster estate', 'ali', '03218445938', '03218445938', 'foster estate', '3905', 'sale', 2250, 'marla', 'average', 7200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:38:34', '2016-03-19 10:38:34'),
(85, 2, 10, 14, 86, 19, NULL, 'indirect', 'residential', 'foster estate', 'ali', '03218445938', '03218445938', 'foster estate', '1540', 'sale', 4500, 'kanal', 'average', 11500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:42:25', '2016-03-19 10:42:25'),
(86, 2, 10, 22, 132, 19, NULL, 'indirect', 'residential', 'foster estate', 'ali', '03218445938', '03218445938', 'foster estate', '322', 'sale', 4500, 'kanal', 'average', 10200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 10:56:26', '2016-03-19 10:56:26'),
(87, 2, 10, 22, 132, 19, NULL, 'indirect', 'residential', 'foster estate', 'ali', '03218445938', '03218445938', 'foster estate', '818', 'sale', 4500, 'kanal', 'average', 8200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 11:03:28', '2016-03-19 11:03:28'),
(88, 2, 10, 18, 116, 19, NULL, 'indirect', 'residential', 'No.1 properties', 'khawaja adeel', '03334310919', '03334310919', 'khawaja adee', '1197', 'sale', 1125, 'marla', 'corner', 5300000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 11:17:10', '2016-03-19 11:17:10'),
(89, 2, 10, 18, 116, 19, NULL, 'indirect', 'residential', 'No.1 properties', 'khawaja adeel', '03334310919', '03334310919', 'N0.1 properties', '783', 'sale', 1125, 'marla', '', 5200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 11:23:31', '2016-03-19 11:23:31'),
(90, 2, 10, 18, 114, 19, NULL, 'indirect', 'residential', 'No.1 properties', 'khawaja adeel', '03334310919', '03334310919', 'N0.1 properties', '808', 'sale', 1125, 'marla', '', 5600000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 12:07:26', '2016-03-19 12:07:26'),
(91, 2, 10, 18, 115, 19, NULL, 'indirect', 'residential', 'No.1 properties', 'khawaja adeel', '03334310919', '03334310919', 'N0.1 properties', '306', 'sale', 1125, 'marla', '', 5800000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 12:54:37', '2016-03-19 12:54:37'),
(92, 2, 10, 18, 115, 19, NULL, 'indirect', 'residential', 'No.1 properties', 'khawaja adeel', '03334310919', '03334310919', 'N0.1 properties', '297', 'sale', 1125, 'marla', '', 5600000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 12:56:00', '2016-03-19 12:56:00'),
(93, 2, 10, 18, 116, 19, NULL, 'indirect', 'residential', 'No.1 properties', 'khawaja adeel', '03334310919', '03334310919', 'N0.1 properties', '1243', 'sale', 1800, 'marla', '', 7900000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-19 12:57:21', '2016-03-19 12:57:21'),
(94, 2, 10, 16, 102, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '140', 'sale', 4500, 'kanal', '', 1400000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 15:47:36', '2016-03-21 15:47:36'),
(95, 2, 10, 16, 100, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '135', 'sale', 4500, 'kanal', '', 13500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 15:50:57', '2016-03-21 15:50:57'),
(96, 2, 10, 13, 59, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '830', 'sale', 4500, 'kanal', '', 19500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 15:57:12', '2016-03-21 15:57:12'),
(97, 2, 10, 13, 59, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '242', 'sale', 4500, 'kanal', '', 18500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:02:39', '2016-03-21 16:02:39'),
(98, 2, 10, 13, 58, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '4', 'sale', 4500, 'kanal', '', 18500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:05:37', '2016-03-21 16:05:37'),
(99, 2, 10, 13, 61, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '84', 'sale', 4500, 'kanal', '', 2200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:08:41', '2016-03-21 16:08:41'),
(100, 2, 10, 13, 67, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '305', 'sale', 4500, 'kanal', '', 22500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:10:34', '2016-03-21 16:10:34'),
(101, 2, 10, 13, 67, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '350', 'sale', 9000, 'kanal', '', 48500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:25:02', '2016-03-21 16:25:02'),
(102, 2, 10, 14, 86, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '2262', 'sale', 4500, 'kanal', '', 1200000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:28:04', '2016-03-21 16:28:04'),
(103, 2, 10, 14, 82, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '313', 'sale', 4500, 'kanal', '', 13500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:29:20', '2016-03-21 16:29:20'),
(104, 2, 10, 14, 80, 19, NULL, 'direct', 'residential', NULL, 'Malik adeel', '03234320100', '03234320100', 'JR Property', '197', 'sale', 4500, 'kanal', '', 1300000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:30:47', '2016-03-21 16:30:47'),
(105, 2, 10, 16, 99, 6, NULL, 'direct', 'residential', NULL, '0300-4672774', '0300-4672774', '111 167 167', 'DHA Phase 8', '219', 'sale', 2250, 'marla', 'corner', 9500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:47:39', '2016-03-21 16:47:39'),
(106, 2, 10, 16, 99, 6, NULL, 'indirect', 'residential', 'JR Property', '0300-4672774', '0300-4672774', '0300-4672774', 'DHA Phase 8', '73', 'sale', 2250, 'marla', '', 10000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 16:56:43', '2016-03-21 16:59:19'),
(107, 2, 10, 16, 97, 6, NULL, 'indirect', 'residential', 'JR Property', '0300-4672774', '0300-4672774', '0300-4672774', 'DHA Phase 8', '242', 'sale', 2250, 'marla', '', 9500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-21 17:07:03', '2016-03-21 17:07:03'),
(108, 2, 10, 22, 142, 9, NULL, 'indirect', 'residential', 'JR Property', '03218496799', '03218496799', '03218496799', 'JR Property Phase 8', '925', 'sale', 4500, 'kanal', 'corner', 8000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-21 21:56:39', '2016-03-21 21:56:39'),
(109, 2, 10, 22, 132, 9, NULL, 'indirect', 'residential', 'JR Property', '03218496799', '03218496799', '03218496799', 'JR Property Phase 8', '536', 'sale', 4500, 'kanal', '', 9500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-21 21:59:41', '2016-03-21 21:59:41'),
(110, 2, 10, 22, 139, 9, NULL, 'indirect', 'residential', 'JR Property', '03218496799', '03218496799', '03218496799', 'JR Property Phase 8', '1649', 'sale', 2250, 'marla', 'facing-park', 5500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-22 11:53:44', '2016-03-22 11:53:44'),
(111, 2, 10, 16, 97, 6, NULL, 'indirect', 'residential', 'JR Property', '0300-4672774', '0300-4672774', '0300-4672774', 'DHA Phase 8', '256', 'sale', 5175, 'marla', '', 16000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-22 11:59:10', '2016-03-22 11:59:10'),
(112, 2, 10, 16, 100, 6, NULL, 'indirect', 'residential', 'JR Property', '0300-4672774', '0300-4672774', '0300-4672774', 'DHA Phase 8', '69', 'sale', 4725, 'marla', '', 13500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-22 12:00:43', '2016-03-22 12:00:43'),
(113, 2, 10, 15, 93, 6, NULL, 'indirect', 'residential', 'JR Property', '0300-4672774', '0300-4672774', '0300-4672774', 'DHA Phase 8', '1093', 'sale', 4500, 'marla', '', 18000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-22 12:25:12', '2016-03-22 12:25:12'),
(114, 2, 10, 15, 95, 6, NULL, 'direct', 'residential', NULL, '0300-4672774', '0300-4672774', '0300-4672774', 'DHA Phase 8', '994', 'sale', 4500, 'marla', 'main-boulevard', 17500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-22 12:27:02', '2016-03-22 12:27:02'),
(115, 2, 10, 15, 95, 6, NULL, 'indirect', 'residential', 'JR Property', '0300-4672774', '0300-4672774', '111 167 167', 'DHA Phase 8', '384', 'sale', 4500, 'marla', '', 19000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-22 12:29:47', '2016-03-22 12:29:47'),
(116, 2, 10, 15, 91, 6, NULL, 'indirect', 'residential', 'JR Property', '0300-4672774', '0300-4672774', '111 167 167', 'DHA Phase 8', '682', 'sale', 4500, 'marla', '', 14000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-22 12:31:37', '2016-03-22 12:31:37'),
(117, 2, 10, 16, 102, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '62', 'sale', 2250, 'marla', '', 1000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 13:35:01', '2016-03-22 13:59:37'),
(118, 2, 10, 16, 102, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '44', 'sale', 2475, 'marla', '', 1100000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 13:39:42', '2016-03-22 13:59:10'),
(119, 2, 10, 16, 102, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '85', 'sale', 2250, 'marla', '', 9500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 13:40:57', '2016-03-22 13:58:20'),
(120, 2, 10, 16, 101, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '138', 'sale', 4500, 'kanal', '', 13500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 13:42:33', '2016-03-22 13:57:47'),
(121, 2, 10, 16, 101, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '155', 'sale', 2250, 'marla', '', 1000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 13:44:35', '2016-03-22 13:57:21'),
(122, 2, 10, 16, 101, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '192', 'sale', 2250, 'marla', '', 1000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 13:46:46', '2016-03-22 13:56:03'),
(123, 2, 10, 16, 100, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '27', 'sale', 2250, 'marla', '', 10500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 13:51:49', '2016-03-22 13:57:03'),
(124, 2, 10, 16, 100, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '130', 'sale', 2250, 'marla', '', 1100000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 14:03:32', '2016-03-22 14:03:32'),
(125, 2, 10, 16, 100, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '279', 'sale', 4500, 'kanal', '', 13500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 14:05:11', '2016-03-22 14:05:11'),
(126, 2, 10, 16, 100, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '69', 'sale', 4500, 'kanal', '', 1400000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 14:43:38', '2016-03-22 14:43:38'),
(127, 2, 10, 16, 97, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '352', 'sale', 4500, 'kanal', '', 12500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 14:45:40', '2016-03-22 14:45:40'),
(128, 2, 10, 16, 97, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '130', 'sale', 2250, 'marla', '', 9500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 14:47:13', '2016-03-22 15:12:40'),
(129, 2, 10, 16, 97, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '222', 'sale', 2250, 'marla', '', 1100000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 14:49:20', '2016-03-22 14:49:20'),
(130, 2, 10, 16, 97, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '193', 'sale', 2250, 'marla', '', 10500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 14:54:50', '2016-03-22 14:54:50'),
(131, 2, 10, 16, 98, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '18', 'sale', 2250, 'marla', '', 10500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 14:57:31', '2016-03-22 14:57:31'),
(132, 2, 10, 16, 98, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '73', 'sale', 2250, 'marla', '', 1100000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 14:59:26', '2016-03-22 15:12:57'),
(133, 2, 10, 16, 98, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '104', 'sale', 2250, 'marla', '', 10800000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:05:56', '2016-03-22 15:05:56'),
(135, 2, 10, 16, 99, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '283', 'sale', 2250, 'marla', '', 1000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:30:44', '2016-03-22 15:30:44'),
(136, 2, 10, 16, 99, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '251', 'sale', 2250, 'marla', '', 9500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:34:11', '2016-03-22 15:34:11'),
(137, 2, 10, 16, 99, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '277', 'sale', 2250, 'marla', '', 10500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:35:41', '2016-03-22 15:35:41'),
(138, 2, 10, 16, 99, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '340', 'sale', 2250, 'marla', '', 900000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:37:44', '2016-03-22 15:37:44'),
(139, 2, 10, 16, 99, 19, NULL, 'direct', 'residential', NULL, 'Asif  Mehmood', '03218894008', '03218894008', 'JR Property', '315', 'sale', 2250, 'marla', '', 10500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:39:26', '2016-03-22 15:39:26'),
(140, 2, 10, 18, 115, 19, NULL, 'direct', 'residential', NULL, 'Muhammad Furqan', '03334266203', '03334266203', 'JR Property', '1638', 'sale', 1125, 'marla', '', 5900000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:43:26', '2016-03-22 15:43:26'),
(141, 2, 10, 18, 115, 19, NULL, 'direct', 'residential', NULL, 'Muhammad Furqan', '03334266203', '03334266203', 'JR Property', '1287', 'sale', 1125, 'marla', '', 5700000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:49:13', '2016-03-22 15:49:13'),
(142, 2, 10, 18, 115, 19, NULL, 'direct', 'residential', NULL, 'Muhammad Furqan', '03334266203', '03334266203', 'JR Property', '1284', 'sale', 1125, 'marla', '', 5650000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:55:42', '2016-03-22 15:55:42'),
(143, 2, 10, 18, 115, 19, NULL, 'direct', 'residential', NULL, 'Muhammad Furqan', '03334266203', '03334266203', 'JR Property', '574', 'sale', 1125, 'marla', '', 5600000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 15:59:00', '2016-03-22 15:59:00'),
(144, 2, 10, 18, 115, 19, NULL, 'direct', 'residential', NULL, 'Muhammad Furqan', '03334266203', '03334266203', 'JR Property', '416', 'sale', 1125, 'marla', '', 5800000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 16:01:29', '2016-03-22 16:01:29'),
(145, 2, 10, 18, 115, 19, NULL, 'direct', 'residential', NULL, 'Muhammad Furqan', '03334266203', '03334266203', 'JR Property', '231', 'sale', 1125, 'marla', '', 5500000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-22 16:08:07', '2016-03-22 16:08:07');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `societies`
--

INSERT INTO `societies` (`id`, `city_id`, `name`, `created_at`, `updated_at`) VALUES
(8, 10, 'DHA Phase 1', '2015-05-01 10:29:33', '2016-03-04 06:40:42'),
(9, 10, 'DHA Phase 2', '2015-05-01 10:36:49', '2015-05-01 10:36:49'),
(10, 10, 'DHA Phase 3', '2015-05-01 11:17:30', '2015-05-01 11:17:30'),
(11, 10, 'DHA Phase 4', '2015-05-01 11:21:46', '2015-05-01 11:21:46'),
(12, 10, 'DHA Phase 5', '2015-05-01 13:32:42', '2015-05-01 13:32:42'),
(13, 10, 'DHA Phase 6', '2015-05-01 13:41:19', '2015-05-01 13:41:19'),
(14, 10, 'DHA Phase 7', '2015-05-01 13:50:21', '2015-05-01 13:50:21'),
(15, 10, 'DHA Phase 8', '2015-05-04 10:57:57', '2015-05-04 10:57:57'),
(16, 10, 'Air Avenue', '2015-05-04 11:01:39', '2016-03-09 09:34:53'),
(17, 10, 'Park View', '2015-05-04 11:03:17', '2016-03-09 09:54:15'),
(18, 10, 'DHA 9 Town', '2015-05-04 11:05:51', '2015-05-04 11:05:51'),
(19, 10, 'Eden City', '2015-05-04 17:24:14', '2015-05-04 17:24:14'),
(20, 10, 'LDA City ', '2015-05-06 10:43:51', '2015-05-06 10:43:51'),
(21, 10, 'EDEN VISTA', '2015-05-22 14:40:30', '2015-05-22 14:40:30'),
(22, 10, 'DHA 9 Prism', '2016-03-07 17:56:30', '2016-03-07 17:56:30'),
(23, 10, 'Air Avenue Apartments', '2016-03-08 14:01:55', '2016-03-08 14:01:55'),
(24, 10, 'Eden Agora Commercial', '2016-03-19 11:11:36', '2016-03-19 11:11:36'),
(25, 10, 'Park View Files', '2016-03-19 11:11:59', '2016-03-19 11:11:59'),
(26, 10, 'Eden Vista', '2016-03-19 11:12:13', '2016-03-19 11:12:13');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'jrproperty167@gmail.com', '$2y$10$cdyEB27wSvi/uk9AYe4uieF8RHFauBYrlReymjVQ3Q8tUkuWlU7De', 'admin', '7QXGu8g6xfGt0E8l4rzwz0IuOlkWSRqRi49NLGXxHjp9c8SWIVm5bLa43Z3n', '2015-04-27 17:41:48', '2016-03-21 16:45:38'),
(3, 'Sajid', 'maliksajidawan786@gmail.com', '$2y$10$FQ/U.zoij7yu0wCF4Fi2COh2ct/O1cEqA5DwZXfgA4ptfpunV2Mxe', 'staff', 'Mj4GJplhXIggF9KxN3ZQIDZBXHvCie0Vv0o76yH8VdL8MxyosWMEwGSiwDkd', '2015-05-01 16:09:18', '2016-03-10 14:25:26'),
(4, 'Asif Mehmood', 'malikasifawank@yahoo.com', '$2y$10$fFDWw1niPuYuNOLR6vV.W.5cEuU89YpXDyPQbDlnPPbtrJ2KiGEnS', 'staff', 'bbgieqov1LLus93dcyayxPi6xljQZBTK2gJ6ESJznaIYuDfd11IcmV5yOUnM', '2015-05-04 10:45:36', '2016-03-21 16:39:58'),
(6, 'Irfan Ahmed', 'irfanahmed1466@gmail.com', '$2y$10$uHJwSSO1Vcz2YL4qSjkVc.eylXrt0xpc7Zh0ppAAM3FFn3rP1Z1De', 'staff', NULL, '2015-05-05 11:52:46', '2016-03-21 16:40:11'),
(7, 'Akbar', 'akki.mehar@yahoo.com', '$2y$10$1SqsnnnxqfCB80Y0QAdq8OkJ4pKN6hYaqh/XSO8mstjzhjs/98CU.', 'staff', '32riee6xgN2WEW4qhGeyNgEfPMzsxcxGCF5i8AoZFERDunuzYM4LarttnM6L', '2015-05-06 10:49:12', '2016-03-07 17:31:58'),
(9, 'Yousuf Awan', 'yousufawan21@gmail.com', '$2y$10$0SHQ3HuSxj8NJrU1qEnml.3aozKdUl/Ja9cmnRAtFJdYY0mHLCoba', 'staff', 'WBH3btWLN1IHRbOR1HFLmQlTBuhwRpj9PVbTI2Hv1g5b8KrdQupszMtGRhQT', '2015-05-11 14:01:54', '2016-03-22 11:54:35'),
(10, 'Adeel Malik', 'adeelahmed307@gmail.com', '$2y$10$JHsGG3QWiZrBrVuMIbXZSOhc83A5JL7fqz64TL1UQU4giYQVq1oHu', 'staff', 'TKXUtM4mEWIE5Ym226xy7O8bNi4n6Kw2MARWw8hLSb4JFUlldMeV7eI2T1Pd', '2015-05-11 14:03:08', '2016-03-07 17:32:21'),
(14, 'Sheraz Ahmad', 'sheraz.ahmad@msn.com', '$2y$10$jP2960W6Vprp/WRaAHrk/O9AAhwyPRuO.uRwYlcGxvcFcdd7CkWm2', 'staff', '8B8C8StsyanwlHqXu3eFHQbg0M9OYeRAAHHH0h4gUipP9K06KcliD0Otyz1Y', '2016-03-07 17:21:11', '2016-03-07 17:48:39'),
(15, 'Muhammad Asif', 'jrasif@gmail.com', '$2y$10$6Rb5DE6oMtteEkiVSGBIb.luDY.ngL0.dbhpA0Jen2uF/iSik5QNy', 'staff', 'AfUuCEJq3l97fPOcxbhc2PS9pVQ0ZYnL9w7aLR0cr129kUe2fLvRWIdRQ7IG', '2016-03-07 17:37:38', '2016-03-07 17:38:36'),
(17, 'Furqan Chishty', 'furqan.chishty007@gmail.com', '', 'staff', NULL, '2016-03-08 13:34:26', '2016-03-08 13:37:09'),
(18, 'JR Team', 'jrteam@gmail.com', '$2y$10$F4fzgjxaz6zIK/EJ.qfh..Woae4gkNnlnxE8QbgP2oe74xZEAHVMG', 'staff', '46rRdOzcdAxqV2SWzdITyGSlD8wABv2LyMNJgCbk0Zh01COPBcRHh9wgg5QK', '2016-03-09 15:11:57', '2016-03-18 10:17:09'),
(19, 'Hamid-JR', 'hamidjr@gmail.com', '$2y$10$CFm68sAPJNuABG3c2Em1j.vUm1FMGaSus/LQX.XZTd3Yd/KRmXoA.', 'staff', NULL, '2016-03-10 11:46:49', '2016-03-21 10:13:40');

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
