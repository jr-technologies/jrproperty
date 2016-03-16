-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2016 at 06:35 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sajid_sajid_jr2`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=143 ;

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
(142, 22, 'N', '2016-03-08 12:21:47', '2016-03-08 12:21:47');

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
  `size` int(10) unsigned NOT NULL,
  `size_unit` enum('marla','kanal') COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `category_id`, `city_id`, `society_id`, `block_id`, `user_id`, `title`, `type`, `group`, `estate_name`, `contact_person`, `mobile`, `phone`, `address`, `property_no`, `purpose`, `size`, `size_unit`, `location`, `price`, `price_unit`, `price_converted`, `picture`, `detail`, `house_type`, `bedrooms`, `features`, `share_contact_info`, `share_property`, `sold`, `created_at`, `updated_at`) VALUES
(15, 2, 10, 15, 92, 4, NULL, 'indirect', 'residential', 'JR Properoetytg', '22222', '111111111111111', '7455465', '64-Q', '25', 'sale', 10, 'marla', 'corner', 252000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', '', '', '2016-03-04 08:17:53', '2016-03-04 08:18:53'),
(16, 2, 10, 19, 118, 4, NULL, 'direct', 'commercial', NULL, 'atif', '03218894008', '03218894008', 'dha phase 1', '15', 'sale', 8, 'marla', '', 425000000, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-07 18:19:57', '2016-03-07 18:31:02'),
(17, 2, 10, 16, 19, 4, NULL, 'indirect', 'residential', 'Dr Rizwan', 'Rizwan', '03218894008', '03218894008', 'phase one', '22', 'sale', 10, 'marla', 'average', 110, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-07 18:30:29', '2016-03-07 18:30:29'),
(18, 2, 10, 16, 20, 15, NULL, 'indirect', 'residential', '', 'Javaid shah', '', '', '', '27', 'sale', 10, 'marla', 'average', 110, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 05:42:02', '2016-03-08 05:42:02'),
(19, 2, 10, 16, 19, 15, NULL, 'indirect', 'residential', 'Shah', 'Shah', '098272727', '', '', '315', 'sale', 10, 'marla', 'corner', 115, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 11:54:16', '2016-03-08 11:54:16'),
(20, 2, 10, 22, 140, 3, NULL, 'indirect', 'residential', 'Rafi And Sons', 'M Ejaz', '0300/0323-4700347', '0300/0323-4700347', 'DHA Phase 1', '1058', 'sale', 10, 'marla', 'corner', 55, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-08 12:26:41', '2016-03-10 16:10:42'),
(21, 2, 10, 17, 103, 15, NULL, 'indirect', 'residential', 'Millat', 'Arshd ', '0000', '0000', '', '337', 'sale', 20, 'marla', 'average', 167, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 12:39:26', '2016-03-08 12:39:26'),
(22, 2, 10, 12, 55, 10, NULL, 'direct', 'residential', NULL, 'Adeel Malik', '0323 4320100', '0323 4320100', '64 Q', '373', 'sale', 1, 'kanal', 'facing-park', 300, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-08 12:43:45', '2016-03-08 12:43:45'),
(25, 3, 10, 16, 22, 4, NULL, 'direct', 'residential', NULL, 'imtiaz sb', '03218894008', '03218894008', '64Q phase 8', '7', 'rent', 5, 'marla', 'average', 75, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 13:27:20', '2016-03-08 13:27:20'),
(27, 2, 10, 16, 101, 10, NULL, 'direct', 'residential', NULL, 'Adeel Malik', '0323 4320100', '0323 4320100', '64 Q', '94', 'sale', 10, 'marla', '', 95, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'N', '2016-03-08 13:37:57', '2016-03-10 13:33:26'),
(28, 2, 10, 16, 17, 4, NULL, 'direct', 'residential', NULL, 'Abdullah', '03218894008', '03218894008', 'Phase 8', '193', 'sale', 10, 'marla', 'average', 100, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-08 13:43:32', '2016-03-08 13:43:32'),
(29, 2, 10, 22, 132, 9, NULL, 'indirect', 'residential', '', '03218496799', '03218496799', '03218496799', '', '633', 'sale', 1, 'kanal', '', 93, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-08 13:48:05', '2016-03-08 13:49:50'),
(30, 2, 10, 16, 102, 15, NULL, '', 'residential', NULL, NULL, NULL, NULL, NULL, '87', 'sale', 10, 'marla', 'average', 95, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-09 17:45:00', '2016-03-09 17:45:00'),
(31, 2, 10, 15, 124, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'Shan', '03214070540', '03214070540', 'Garrison Estate', '791', 'sale', 5, 'marla', 'average', 31, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 11:50:08', '2016-03-10 11:50:08'),
(32, 2, 10, 15, 126, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'Shan', '03214070540', '03214070540', 'Garrison Estate', '100', 'sale', 5, 'marla', 'average', 27, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 11:57:52', '2016-03-10 11:57:52'),
(33, 2, 10, 15, 126, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'Shan', '03214070540', '03214070540', 'Garrison Estate', '425', 'sale', 10, 'marla', 'average', 58, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 12:07:29', '2016-03-10 12:07:29'),
(34, 2, 10, 14, 78, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'nadeem', '03214949499', '03214949499', 'Garrison Estate', '733', 'sale', 1, 'kanal', 'average', 115, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 12:19:22', '2016-03-10 12:19:22'),
(35, 2, 10, 13, 66, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'nadeem', '03214949499', '03214949499', 'Garrison Estate', '228', 'sale', 1, 'kanal', 'average', 215, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 12:40:13', '2016-03-10 12:40:13'),
(36, 2, 10, 13, 64, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'nadeem', '03214949499', '03214949499', 'Garrison Estate', '377', 'sale', 1, 'kanal', 'average', 200, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-10 12:47:05', '2016-03-10 12:47:05'),
(37, 2, 10, 16, 101, 10, NULL, 'direct', 'commercial', NULL, 'Nasir shb', '0323 4320100', '0323 4320100', '64 Q', '72', 'sale', 4, 'marla', 'corner', 200, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-10 13:40:31', '2016-03-10 13:40:31'),
(38, 2, 10, 22, 142, 9, NULL, 'indirect', 'residential', 'Riasat', '', '03218496799', '03218496799', '', '925', 'sale', 1, 'marla', 'corner', 0, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', '2016-03-10 13:57:30', '2016-03-10 13:57:30'),
(39, 2, 10, 13, 62, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'nadeem', '03214949499', '03214949499', 'Garrison Estate', '1122', 'sale', 5, 'marla', 'average', 60, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 14:31:00', '2016-03-10 14:31:00'),
(40, 2, 10, 14, 86, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'farooq', '03218456626', '03218456626', 'Garrison Estate', '1540', 'sale', 1, 'kanal', 'average', 108, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 14:37:19', '2016-03-10 14:37:19'),
(41, 2, 10, 14, 79, 19, NULL, 'indirect', 'residential', 'Garrison Estate', 'farooq', '03218456626', '03218456626', 'Garrison Estate', '478', 'sale', 1, 'kanal', 'average', 150, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 14:42:08', '2016-03-10 14:42:08'),
(42, 2, 10, 13, 62, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1711', 'sale', 5, 'marla', 'average', 60, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 14:56:24', '2016-03-10 14:56:24'),
(43, 2, 10, 13, 62, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1634', 'sale', 5, 'marla', 'average', 56, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:02:59', '2016-03-10 15:02:59'),
(44, 2, 10, 13, 62, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1252', 'sale', 5, 'marla', 'average', 62, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:06:33', '2016-03-10 15:06:33'),
(45, 2, 10, 13, 61, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1169', 'sale', 7, 'marla', 'average', 97, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:11:42', '2016-03-10 15:11:42'),
(46, 2, 10, 13, 61, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '871', 'sale', 7, 'marla', 'average', 90, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:15:02', '2016-03-10 15:15:02'),
(47, 2, 10, 13, 72, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '1031', 'sale', 1, 'kanal', 'average', 160, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:18:35', '2016-03-10 15:18:35'),
(48, 2, 10, 13, 72, 19, NULL, 'indirect', 'residential', 'defence developer', 'anwar shah', '03244345532', '03244345532', 'defence developer', '465', 'sale', 1, 'kanal', 'average', 160, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'N', 'Y', 'N', '2016-03-10 15:20:48', '2016-03-10 15:20:48');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

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
(23, 10, 'Air Avenue Apartments', '2016-03-08 14:01:55', '2016-03-08 14:01:55');

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
(1, 'Admin', 'jrproperty167@gmail.com', '$2y$10$cdyEB27wSvi/uk9AYe4uieF8RHFauBYrlReymjVQ3Q8tUkuWlU7De', 'admin', 'KTUp4lQvgHbiDsx1KnTJ7HxH7AvGNsSsIhyR090nx4vbaXcDysuTddzQ88Rt', '2015-04-27 17:41:48', '2016-03-10 16:10:18'),
(3, 'Sajid', 'maliksajidawan786@gmail.com', '$2y$10$FQ/U.zoij7yu0wCF4Fi2COh2ct/O1cEqA5DwZXfgA4ptfpunV2Mxe', 'staff', 'Mj4GJplhXIggF9KxN3ZQIDZBXHvCie0Vv0o76yH8VdL8MxyosWMEwGSiwDkd', '2015-05-01 16:09:18', '2016-03-10 14:25:26'),
(4, 'Asif Mehmood', 'malikasifawank@yahoo.com', '$2y$10$fs8mzgO3G9jv5BCSux5RA.c4WEmA97cOxwk8Co8NmVEfnIsYVrx1G', 'staff', 'bbgieqov1LLus93dcyayxPi6xljQZBTK2gJ6ESJznaIYuDfd11IcmV5yOUnM', '2015-05-04 10:45:36', '2016-03-07 17:30:59'),
(6, 'Irfan Ahmed', 'irfanahmed1466@gmail.com', '$2y$10$oV9Z/DdfE/pelG5K6QhgJulOaTiKtB8sKFAyWa9gH7HnQr6Mrn7J6', 'staff', NULL, '2015-05-05 11:52:46', '2016-03-01 17:13:08'),
(7, 'Akbar', 'akki.mehar@yahoo.com', '$2y$10$1SqsnnnxqfCB80Y0QAdq8OkJ4pKN6hYaqh/XSO8mstjzhjs/98CU.', 'staff', '32riee6xgN2WEW4qhGeyNgEfPMzsxcxGCF5i8AoZFERDunuzYM4LarttnM6L', '2015-05-06 10:49:12', '2016-03-07 17:31:58'),
(9, 'Yousuf Awan', 'yousufawan21@gmail.com', '$2y$10$vthYRiADyBMvG8L4UH2ABOiFcmiCanPhrBsQK1euY./gFvGpa0xXG', 'staff', '29kxg8aJtBukpFXLNvr0cXpwL7cFOoUwoFzUpQI8byKqXUwCmgKhuBK10qce', '2015-05-11 14:01:54', '2016-03-08 13:55:43'),
(10, 'Adeel Malik', 'adeelahmed307@gmail.com', '$2y$10$JHsGG3QWiZrBrVuMIbXZSOhc83A5JL7fqz64TL1UQU4giYQVq1oHu', 'staff', 'TKXUtM4mEWIE5Ym226xy7O8bNi4n6Kw2MARWw8hLSb4JFUlldMeV7eI2T1Pd', '2015-05-11 14:03:08', '2016-03-07 17:32:21'),
(14, 'Sheraz Ahmad', 'sheraz.ahmad@msn.com', '$2y$10$jP2960W6Vprp/WRaAHrk/O9AAhwyPRuO.uRwYlcGxvcFcdd7CkWm2', 'staff', '8B8C8StsyanwlHqXu3eFHQbg0M9OYeRAAHHH0h4gUipP9K06KcliD0Otyz1Y', '2016-03-07 17:21:11', '2016-03-07 17:48:39'),
(15, 'Muhammad Asif', 'jrasif@gmail.com', '$2y$10$6Rb5DE6oMtteEkiVSGBIb.luDY.ngL0.dbhpA0Jen2uF/iSik5QNy', 'staff', 'AfUuCEJq3l97fPOcxbhc2PS9pVQ0ZYnL9w7aLR0cr129kUe2fLvRWIdRQ7IG', '2016-03-07 17:37:38', '2016-03-07 17:38:36'),
(17, 'Furqan Chishty', 'furqan.chishty007@gmail.com', '', 'staff', NULL, '2016-03-08 13:34:26', '2016-03-08 13:37:09'),
(18, 'JR Team', 'jrteam@gmail.com', '$2y$10$F4fzgjxaz6zIK/EJ.qfh..Woae4gkNnlnxE8QbgP2oe74xZEAHVMG', 'staff', NULL, '2016-03-09 15:11:57', '2016-03-11 09:52:11'),
(19, 'Hamid-JR', 'hamidjr@gmail.com', '$2y$10$W/NqojrDzf6QTzXK7rzBLOSF0b9exbtmDGFnnYKxZdqKAHL4teeAG', 'staff', NULL, '2016-03-10 11:46:49', '2016-03-10 12:10:27');

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
