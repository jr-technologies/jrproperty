-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2016 at 02:03 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jr`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `society_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(129, 16, 'Q Block Apartments', '2015-05-22 14:43:52', '2015-05-22 14:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `migrations` (
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

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
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

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `society_id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
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
  `size` int(10) UNSIGNED NOT NULL,
  `size_unit` enum('marla','kanal') COLLATE utf8_unicode_ci NOT NULL,
  `location` enum('corner','non-corner','facing-park','main-boulevard','average-plot') COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `price_unit` enum('lakh','thousand','crore') COLLATE utf8_unicode_ci NOT NULL,
  `price_converted` int(10) UNSIGNED NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `house_type` enum('new','old') COLLATE utf8_unicode_ci DEFAULT NULL,
  `bedrooms` int(10) UNSIGNED DEFAULT NULL,
  `features` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_contact_info` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `share_property` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `sold` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `category_id`, `city_id`, `society_id`, `block_id`, `user_id`, `title`, `type`, `group`, `estate_name`, `contact_person`, `mobile`, `phone`, `address`, `property_no`, `purpose`, `size`, `size_unit`, `location`, `price`, `price_unit`, `price_converted`, `picture`, `detail`, `house_type`, `bedrooms`, `features`, `share_contact_info`, `share_property`, `sold`, `created_at`, `updated_at`) VALUES
(1, 2, 10, 16, 98, 3, NULL, 'direct', 'residential', NULL, '', '', '', NULL, '130', 'sale', 10, 'marla', 'corner', 0, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-03-02 15:23:28', '2016-03-02 15:23:28'),
(2, 1, 10, 16, 98, 3, NULL, 'direct', 'commercial', NULL, '', '', '', NULL, '130', 'sale', 10, 'marla', 'corner', 2, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-03-02 15:38:53', '2016-03-02 15:38:53'),
(3, 2, 10, 16, 98, 3, NULL, 'direct', 'commercial', NULL, '', '', '', NULL, '130', 'sale', 10, 'marla', 'corner', 2, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-01-02 15:39:14', '2016-03-02 15:39:14'),
(4, 2, 10, 16, 98, 4, NULL, 'direct', 'commercial', NULL, 'kljljkl', '9890808', '09808', '908098', '130', 'sale', 10, 'marla', 'corner', 2, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-01-02 17:34:16', '2016-03-04 07:30:17'),
(7, 2, 5, 16, 98, 1, NULL, 'direct', 'commercial', NULL, NULL, NULL, NULL, NULL, '120', 'rent', 10, 'marla', 'corner', 10, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-01-01 20:13:14', '2016-03-02 20:13:14'),
(9, 1, 10, 10, 98, 3, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '10', 'rent', 10, 'marla', 'corner', 10, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-03-04 05:04:06', '2016-03-04 05:04:06'),
(10, 1, 10, 10, 98, 3, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '10', 'rent', 10, 'marla', 'corner', 10, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-03-04 05:05:18', '2016-03-04 05:05:18'),
(11, 1, 10, 10, 98, 3, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '10', 'rent', 10, 'marla', 'corner', 10, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-03-04 05:07:01', '2016-03-04 05:07:01'),
(12, 1, 10, 10, 98, 3, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '10', 'rent', 10, 'marla', 'corner', 10, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-03-04 05:09:04', '2016-03-04 05:09:04'),
(13, 1, 10, 10, 98, 3, NULL, 'indirect', NULL, NULL, 'waqas', NULL, '01232520', NULL, '10', 'rent', 10, 'marla', 'corner', 10, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-03-04 05:10:00', '2016-03-04 05:10:00'),
(14, 2, 10, 10, 28, 4, NULL, 'indirect', 'residential', 'dsfdsf', '980980', '0980980', '098098', 'klj klj klj', '140', 'sale', 10, 'marla', 'non-corner', 10, 'lakh', 0, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', 'Y', '2016-03-04 07:53:38', '2016-03-04 07:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `societies`
--

CREATE TABLE `societies` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('admin','staff') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Asif', 'jrasif@gmail.com', '$2y$10$JmuNko.tRb9dw36bz/UhNeYskW7dbmiQifxHsNdyN.hqXO6ezj9ha', 'admin', 'xtqay1snoETigZgzjDhEmiDDWfothkdbpik1kvOUr5WgzIzqwP8C5jTHw10m', '2015-04-27 17:41:48', '2016-03-04 06:51:54'),
(3, 'Sajid', 'maliksajidawan786@gmail.com', '$2y$10$k/2GOEPLpHNYNraodGl/c.Sfg2PqpM2C1Tbly4MbESARRmFTe3OO6', 'staff', 'jwXMCjrXk9cNOP1B3HiZCwOndZT7a3p84TQM8fViVT60QZys1u90PhtCcfPE', '2015-05-01 16:09:18', '2015-05-01 16:15:27'),
(4, 'Asif', 'malikasifawank@yahoo.com', '$2y$10$2GmAUifQScKagT9g0gjJyevT2s4b2TtJW.HhfWY73zsmKEivbXyxq', 'staff', '3x47CLWIEvjEC1kUsipnOd3uYW4ONQ9cwBIC2UsNQJgxYMOV79M1DdM4fVgT', '2015-05-04 10:45:36', '2016-03-04 06:51:40'),
(5, 'Sajid Mahmood', 'malik_sajidawan786@yahoo.com', '$2y$10$.FrTrwZSzqDF6GeFYy2Si.VfFheI2K8ik/gl3eXRXq3cxU6IycVBu', 'staff', 'GAs4X2UKq8BMDxZI8mUa1ELnSXEPbobzJeCuJ4lXkgruQWGyq5YlapC1670q', '2015-05-05 08:59:42', '2015-05-05 09:02:11'),
(6, 'Irfan Ahmed', 'irfanahmed1466@gmail.com', '$2y$10$oV9Z/DdfE/pelG5K6QhgJulOaTiKtB8sKFAyWa9gH7HnQr6Mrn7J6', 'staff', NULL, '2015-05-05 11:52:46', '2016-03-01 17:13:08'),
(7, 'Akbar', 'akki.mehar@yahoo.com', '$2y$10$2uplSzKYkkYV7pSHM30AYe5bvyTOULBjwuZ1Gi4vczAFONDVGZr.m', 'staff', 'VlPkPRdUH9cFjDMIdwj1OVR7KRf5OBJULHnNFILJJtjKGGTdmNPt1jNmZYta', '2015-05-06 10:49:12', '2016-03-01 17:13:27'),
(8, 'Muhammad', 'asif167@yahoo.com', '$2y$10$lPGzMxuQkLRzZ35pAgEt/.PDAxSyrDWqJJLf9koqt8MNFPeaNLUxm', 'staff', 'R0SjQzMHT8dEGFXNTvtEDo12iae9jP03XrDlRdt9EkXLq3cB1dtz9lWB2ty6', '2015-05-11 12:33:53', '2015-05-15 00:07:27'),
(9, 'Muhammad Yousuf Awan', 'yousufawan21@gmail.com', '$2y$10$jNim0dyI9SJuHDwuuHYMsOAOQq4WY8ZX0ISdBOD/dHU5LurIGAAMO', 'staff', 'nmAZbgZdJYAEBim02sIRw6ZdSaINll3YGx6DjJvZiOyhmmkZFWd2N1Y421zk', '2015-05-11 14:01:54', '2015-05-13 11:55:21'),
(10, 'Adeel Malik', 'adeelahmed307@gmail.com', '$2y$10$i5Xo1uroGMqNs5YJM77zyuf0mYeL7DgCmHbyt4f85.cMPvuBFDhMy', 'staff', NULL, '2015-05-11 14:03:08', '2015-05-11 14:03:08'),
(11, 'Sajid Mahmood', 'malikhassaanasif@gmail.com', '$2y$10$2TFNwrs2txdlPIHUQKAy5.OWhw7rw2MPVXUV79F9t4a/Xa3RKqSl2', 'staff', NULL, '2015-06-01 11:31:36', '2015-06-01 11:31:36'),
(12, 'waqas', 'muhammad@gmail.com', '$2y$10$ejHgTqA9XnEfWVJA5XBz7.rVB0qcVIFHJGU79d8PmlaFfYia7sEBK', 'staff', NULL, '2015-06-20 09:58:33', '2015-06-20 09:58:33'),
(13, '', '', '$2y$10$KFLIYQmOIze6oOccsLQn5e54sHZxtf5Td/KkYcpOrHMx/s/ocwLLm', 'staff', NULL, '2016-03-04 03:21:35', '2016-03-04 03:21:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_society_id_foreign` (`society_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_name_unique` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_city_id_foreign` (`city_id`),
  ADD KEY `properties_society_id_foreign` (`society_id`),
  ADD KEY `properties_block_id_foreign` (`block_id`),
  ADD KEY `properties_user_id_foreign` (`user_id`);

--
-- Indexes for table `societies`
--
ALTER TABLE `societies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `societies_city_id_foreign` (`city_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `societies`
--
ALTER TABLE `societies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
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
