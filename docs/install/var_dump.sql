object(stdClass)#2 (2) {
  ["codecheck"]=>
  bool(true)
  ["dbdata"]=>
  string(141868) "-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 10:10 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lims`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 1, 1, '2018-12-18 02:58:02', '2019-01-20 09:59:06'),
(3, '21211', 'Sa', NULL, 0, NULL, 0, 1, '2018-12-18 02:58:56', '2019-01-20 09:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, '2019-01-02', 1, 1, '10:00am', '6:30pm', 1, NULL, '2019-01-02 03:30:50', '2019-01-02 03:30:50'),
(3, '2019-01-02', 3, 1, '10:15am', '6:30pm', 0, NULL, '2019-01-02 03:57:12', '2019-01-02 03:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'yousuf', 'aks.jpg', 'aks', '31123', 'yousuf@kds.com', '442343324', 'halishahar', 'chittagong', NULL, NULL, 'sdgs', 1, '2018-05-12 21:49:30', '2019-03-02 05:20:38'),
(2, 'tariq', NULL, 'big tree', NULL, 'tariq@bigtree.com', '321312', 'khulshi', 'chittagong', NULL, NULL, NULL, 1, '2018-05-12 21:57:54', '2018-06-15 00:07:11'),
(3, 'test', NULL, 'test', NULL, 'test@test.com', '3211', 'erewrwqre', 'afsf', NULL, NULL, NULL, 0, '2018-05-30 02:38:58', '2018-05-30 02:39:57'),
(5, 'modon', 'mogaTel.jpg', 'mogaTel', '', 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', '', '', 'bd', 1, '2018-09-01 03:59:54', '2018-10-07 02:35:51'),
(6, 'a', NULL, 'a', NULL, 'a@a.com', 'q', 'q', 'q', NULL, NULL, NULL, 0, '2018-10-07 02:33:39', '2018-10-07 02:34:18'),
(7, 'a', NULL, 'a', NULL, 'a@a.com', 'a', 'a', 'a', NULL, NULL, NULL, 0, '2018-10-07 02:34:36', '2018-10-07 02:36:07'),
(8, 'x', 'x.JPG', 'x', NULL, 'x@x.com', 'x', 'x', 'x', NULL, NULL, NULL, 1, '2019-03-18 11:02:42', '2019-03-18 11:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'HP', 'HP.jpg', 1, '2018-05-12 09:06:14', '2019-03-02 05:32:21'),
(4, 'samsung', 'samsung.jpg', 1, '2018-05-12 09:08:41', '2018-07-04 03:38:37'),
(5, 'Apple', 'Apple.jpg', 1, '2018-08-31 23:34:49', '2018-12-06 03:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', 9, 1, '2018-05-12 03:27:25', '2019-03-01 15:07:21'),
(2, 'electronics', NULL, 1, '2018-05-12 03:35:57', '2019-03-01 15:07:21'),
(3, 'computer', 2, 1, '2018-05-12 03:36:08', '2019-04-10 04:16:06'),
(4, 'toy', NULL, 1, '2018-05-23 22:57:48', '2019-03-01 15:09:27'),
(7, 'jacket', NULL, 0, '2018-05-27 22:39:51', '2018-05-27 22:40:48'),
(9, 'food', NULL, 1, '2018-06-25 01:21:40', '2018-09-03 03:41:28'),
(10, 'anda', NULL, 0, '2018-08-28 23:36:31', '2018-08-28 23:37:34'),
(11, 'anda', NULL, 0, '2018-08-28 23:48:06', '2018-08-28 23:53:22'),
(12, 'accessories', NULL, 1, '2018-12-04 23:28:53', '2019-04-10 04:17:03'),
(14, 'nn', NULL, 0, '2019-04-10 04:22:30', '2019-04-10 05:38:47'),
(15, 'nm', NULL, 0, '2019-04-10 04:22:36', '2019-04-10 05:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `minimum_amount`, `quantity`, `used`, `expired_date`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sonar bangla', 'percentage', 20, 0, 100, 2, '2018-12-31', 1, 1, '2018-10-25 22:38:50', '2019-03-02 05:42:26'),
(2, 'i love bangladesh', 'fixed', 200, 1000, 50, 1, '2018-12-31', 1, 1, '2018-10-27 02:59:26', '2019-03-02 05:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'dhiman', 'lioncoders', 'dhiman@gmail.com', '+8801111111101', NULL, 'kajir deuri', 'chittagong', NULL, NULL, 'bd', 190, 20, 1, '2018-05-12 10:00:48', '2019-02-22 05:37:27'),
(2, 2, 'moinul', 'lioncoders', NULL, '+8801200000001', NULL, 'jamalkhan', 'chittagong', NULL, NULL, 'bd', 100, 20, 1, '2018-05-12 10:04:51', '2019-02-22 05:38:08'),
(3, 3, 'tariq', 'big tree', NULL, '3424', NULL, 'khulshi', 'chittagong', NULL, NULL, 'bd', NULL, NULL, 1, '2018-05-12 10:07:52', '2019-03-02 05:54:07'),
(4, 1, 'test', NULL, NULL, '4234', NULL, 'frwerw', 'qwerwqr', NULL, NULL, NULL, NULL, NULL, 0, '2018-05-30 01:35:28', '2018-05-30 01:37:38'),
(8, 1, 'anwar', 'smart it', 'anwar@smartit.com', '32321', NULL, 'nasirabad', 'chittagong', NULL, NULL, 'bd', NULL, NULL, 0, '2018-09-01 03:26:13', '2018-09-01 03:29:55'),
(11, 1, 'walk-in-customer', NULL, NULL, '01923000001', '11111', 'mohammadpur', 'dhaka', NULL, NULL, NULL, NULL, 0, 1, '2018-09-02 01:30:54', '2019-04-13 04:45:42'),
(15, 1, 's', NULL, NULL, '2', NULL, 's', '3e', NULL, NULL, NULL, NULL, NULL, 0, '2018-11-05 04:00:39', '2018-11-08 03:37:08'),
(16, 1, 'asas', NULL, NULL, '2121', NULL, 'dasd', 'asdd', NULL, NULL, NULL, NULL, NULL, 0, '2018-12-01 00:07:53', '2018-12-03 21:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'general', '0', 1, '2018-05-12 08:09:36', '2019-03-02 06:01:35'),
(2, 'distributor', '-10', 1, '2018-05-12 08:12:14', '2019-03-02 06:02:12'),
(3, 'reseller', '5', 1, '2018-05-12 08:12:26', '2018-05-30 01:18:14'),
(4, 'test', '12', 0, '2018-05-30 01:17:16', '2018-05-30 01:17:57'),
(5, 'test', '0', 0, '2018-08-03 09:10:27', '2018-08-03 09:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `address`, `delivered_by`, `recieved_by`, `file`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dr-20180808-044431', 1, 'kajir deuri chittagong bd', 'abul', 'dhiman', NULL, NULL, '3', '2018-08-08 10:44:55', '2018-11-06 04:59:06'),
(2, 'dr-20181106-105936', 88, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '2', '2018-11-06 04:59:43', '2018-11-06 05:10:38'),
(3, 'dr-20181106-111321', 79, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '3', '2018-11-06 05:13:25', '2018-11-06 05:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sale', 1, '2018-12-27 05:16:47', '2018-12-27 10:40:23'),
(2, 'xyz', 1, '2018-12-27 10:28:47', '2018-12-27 10:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `amount`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 90, 1, 1, 'first deposit', '2018-08-25 22:48:23', '2018-08-26 01:18:55'),
(3, 100, 2, 1, NULL, '2018-08-26 00:53:16', '2018-08-26 21:42:39'),
(4, 50, 1, 1, NULL, '2018-09-04 22:56:19', '2018-09-04 22:56:19'),
(5, 50, 1, 1, NULL, '2018-09-10 00:08:40', '2018-09-10 00:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'john', 'john@gmail.com', '10001', 2, 12, 'johngmailcom.jpg', 'GEC', 'chittagong', 'Bangladesh', 1, '2018-12-30 00:48:37', '2019-03-02 06:50:23'),
(3, 'tests', 'test@test.com', '111', 1, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-30 22:20:51', '2019-01-03 00:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `reference_no`, `expense_category_id`, `warehouse_id`, `account_id`, `user_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(2, 'er-20180817-012254', 1, 2, 1, 1, 150, 'first expense...', '2018-08-17 07:22:54', '2018-08-17 07:44:13'),
(3, 'er-20180817-014241', 1, 1, 1, 1, 125, 'second expense...', '2018-08-17 07:42:41', '2018-08-17 07:43:50'),
(4, 'er-20181022-043609', 2, 1, 1, 1, 1000, NULL, '2018-10-22 10:36:09', '2018-10-22 10:36:09'),
(5, 'er-20181101-050207', 2, 2, 1, 1, 1000, NULL, '2018-10-31 23:02:07', '2018-10-31 23:02:07'),
(6, 'er-20181101-050231', 2, 1, 1, 1, 550, NULL, '2018-10-31 23:02:31', '2018-10-31 23:02:31'),
(7, 'er-20181105-091913', 1, 1, 1, 1, 2000, NULL, '2018-11-05 03:19:13', '2018-11-05 03:19:13'),
(8, 'er-20181105-091929', 2, 2, 1, 1, 1000, NULL, '2018-11-05 03:19:29', '2018-11-05 03:19:29'),
(9, 'er-20190101-063342', 2, 1, 1, 1, 100, NULL, '2019-01-01 00:33:42', '2019-01-01 00:33:42'),
(10, 'er-20190103-070018', 2, 2, 1, 9, 2000, NULL, '2019-01-03 01:00:18', '2019-01-03 01:00:18'),
(11, 'er-20190209-104656', 2, 2, 1, 1, 500, NULL, '2019-02-09 04:46:56', '2019-02-09 04:46:56'),
(12, 'er-20190209-104716', 2, 1, 1, 1, 400, NULL, '2019-02-09 04:47:16', '2019-02-09 04:47:16'),
(14, 'er-20190303-104142', 2, 2, 1, 1, 250, 'jjj', '2019-03-03 04:41:42', '2019-03-20 09:17:16'),
(15, 'er-20190404-095645', 2, 1, 1, 1, 200, NULL, '2019-04-04 03:56:45', '2019-04-04 03:56:45'),
(16, 'er-20190528-103306', 2, 1, 1, 1, 560, NULL, '2019-05-28 04:33:06', '2019-05-28 04:33:06'),
(17, 'er-20190528-103325', 2, 2, 1, 1, 600, NULL, '2019-05-28 04:33:25', '2019-05-28 04:33:25'),
(19, 'er-20190613-101955', 2, 2, 1, 1, 800, NULL, '2019-06-13 04:19:55', '2019-06-13 04:19:55'),
(20, 'er-20191019-033149', 2, 1, 1, 1, 300, NULL, '2019-10-19 09:31:49', '2019-10-19 09:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '16718342', 'washing', 1, '2018-08-16 00:32:48', '2019-03-02 07:02:07'),
(2, '60128975', 'electric bill', 1, '2018-08-16 00:39:18', '2018-08-16 00:39:18'),
(3, '83954970', 'test', 0, '2018-08-16 00:50:28', '2018-08-16 00:51:40'),
(4, '1234', 'snacks', 1, '2018-09-01 02:40:04', '2018-09-01 02:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `currency`, `staff_access`, `date_format`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'LIMS', 'logo.png', 'USD', 'own', 'd/m/Y', 'default.css', '2018-07-06 06:13:11', '2019-10-26 03:54:59', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `card_no`, `amount`, `expense`, `customer_id`, `user_id`, `expired_date`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3571097513020486', 1400, 400, 1, NULL, '2020-12-31', 1, 1, '2018-08-18 01:57:40', '2019-11-10 13:06:01'),
(2, '0452297501931931', 370, 100, 2, NULL, '2020-12-31', 1, 1, '2018-08-18 02:46:43', '2019-11-10 12:56:28'),
(3, '123', 13123, 0, 1, NULL, '2018-08-19', 1, 0, '2018-08-18 22:38:21', '2018-08-18 22:38:28'),
(4, '1862381252690499', 100, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:16:28', '2018-09-30 00:17:21'),
(5, '2300813717254199', 143, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:18:49', '2018-09-30 00:20:20'),
(6, '8327019475026421', 1, 0, 1, NULL, '2018-10-07', 1, 0, '2018-10-07 03:12:41', '2018-10-07 03:12:55'),
(7, '2063379780590151', 1, 0, 1, NULL, '2018-10-23', 1, 0, '2018-10-23 00:23:22', '2018-10-23 00:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_card_recharges`
--

INSERT INTO `gift_card_recharges` (`id`, `gift_card_id`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 100, 1, '2018-08-24 23:08:29', '2018-08-24 23:08:29'),
(2, 1, 200, 1, '2018-08-24 23:08:50', '2018-08-24 23:08:50'),
(3, 1, 100, 1, '2018-09-04 23:50:41', '2018-09-04 23:50:41'),
(4, 1, 50, 1, '2018-09-04 23:51:38', '2018-09-04 23:51:38'),
(5, 1, 50, 1, '2018-09-04 23:53:36', '2018-09-04 23:53:36'),
(6, 2, 50, 1, '2018-09-04 23:54:34', '2018-09-04 23:54:34'),
(7, 5, 10, 1, '2018-09-30 00:19:48', '2018-09-30 00:19:48'),
(8, 5, 10, 1, '2018-09-30 00:20:04', '2018-09-30 00:20:04'),
(9, 2, 100, 1, '2018-10-07 03:13:05', '2018-10-07 03:13:05'),
(10, 1, 200, 1, '2018-10-07 03:13:39', '2018-10-07 03:13:39'),
(11, 1, 300, 1, '2018-10-23 00:22:49', '2018-10-23 00:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 02:20:08', '2019-01-02 04:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-07 22:59:17', '2019-11-03 06:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(33, 'spr-20180809-055453', 1, NULL, 2, 1, 1000, 0, 'Cash', NULL, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(34, 'spr-20180809-055553', 1, NULL, 2, 1, 1200, 0, 'Cheque', NULL, '2018-08-08 23:55:53', '2018-08-08 23:56:36'),
(35, 'spr-20180809-063214', 1, NULL, 3, 1, 897, 0, 'Cheque', NULL, '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(36, 'spr-20180825-034836', 1, NULL, 4, 1, 100, 0, 'Gift Card', '100 bucks paid...', '2018-08-24 21:48:36', '2018-08-25 00:57:35'),
(39, 'spr-20180825-083634', 1, NULL, 4, 1, 200, 0, 'Gift Card', NULL, '2018-08-25 02:36:34', '2018-08-25 02:36:34'),
(41, 'spr-20180826-094836', 1, NULL, 6, 1, 20, 0, 'Deposit', '20 bucks paid', '2018-08-26 03:48:36', '2018-08-26 21:42:13'),
(42, 'spr-20180827-073545', 1, NULL, 7, 1, 880, 0, 'Cash', NULL, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(43, 'ppr-20180830-071637', 1, 13, NULL, 1, 100, 0, 'Cash', '100 bucks paid...', '2018-08-30 01:16:37', '2018-08-30 01:16:37'),
(44, 'ppr-20180830-090718', 1, 13, NULL, 1, 200, 0, 'Cheque', NULL, '2018-08-30 03:07:18', '2018-08-30 03:07:18'),
(46, 'spr-20180902-053954', 1, NULL, 8, 1, 3529.8, 0, 'Cash', 'fully paid', '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(49, 'spr-20180903-033314', 1, NULL, 9, 1, 20, 0, 'Deposit', 'fully paid', '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(50, 'spr-20180903-050138', 1, NULL, 10, 1, 200, 0, 'Gift Card', '50 bucks due...', '2018-09-02 23:01:38', '2018-09-09 21:40:28'),
(51, 'spr-20180903-100821', 1, NULL, 11, 1, 5500, 0, 'Cheque', NULL, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(53, 'ppr-20180903-101524', 1, 16, NULL, 1, 1750, 0, 'Cheque', NULL, '2018-09-03 04:15:24', '2018-10-06 01:09:20'),
(78, 'spr-20180926-092105', 1, NULL, 31, 1, 560, 0, 'Cash', NULL, '2018-09-26 03:21:05', '2018-09-26 03:21:05'),
(79, 'spr-20181006-065017', 1, NULL, 30, 1, 100, 0, 'Cheque', NULL, '2018-10-06 00:50:17', '2018-10-06 00:51:55'),
(80, 'spr-20181006-065222', 1, NULL, 30, 1, 20, 0, 'Cash', NULL, '2018-10-06 00:52:22', '2018-10-06 00:52:22'),
(82, 'ppr-20181006-070935', 1, 16, NULL, 1, 1600, 0, 'Cash', NULL, '2018-10-06 01:09:35', '2018-10-06 01:09:35'),
(83, 'spr-20181010-041636', 1, NULL, 41, 1, 461, 0, 'Cash', NULL, '2018-10-09 22:16:36', '2018-10-09 22:16:36'),
(84, 'spr-20181010-053456', 1, NULL, 42, 1, 440, 0, 'Cash', NULL, '2018-10-09 23:34:56', '2018-10-09 23:34:56'),
(91, 'spr-20181021-065338', 1, NULL, 55, 1, 250, 0, 'Cash', NULL, '2018-10-21 00:53:38', '2018-10-21 00:53:38'),
(92, 'spr-20181021-082618', 1, NULL, 57, 1, 575.2, 0, 'Cash', NULL, '2018-10-21 02:26:18', '2018-10-21 02:26:18'),
(93, 'spr-20181022-032730', 1, NULL, 58, 1, 1220, 0, 'Cash', NULL, '2018-10-22 09:27:30', '2018-10-22 09:27:30'),
(104, 'spr-20181023-071548', 11, NULL, 73, 1, 5500, 0, 'Cash', NULL, '2018-10-23 01:15:48', '2018-10-23 01:15:48'),
(105, 'spr-20181023-071648', 1, NULL, 74, 1, 2320, 0, 'Cash', NULL, '2018-10-23 01:16:48', '2018-10-23 01:16:48'),
(126, 'spr-20181101-050033', 1, NULL, 75, 1, 7678, 0, 'Cash', NULL, '2018-10-31 23:00:33', '2018-10-31 23:00:33'),
(127, 'spr-20181101-050130', 1, NULL, 76, 1, 1424, 0, 'Cash', NULL, '2018-10-31 23:01:30', '2018-11-08 03:44:51'),
(129, 'spr-20181105-091523', 1, NULL, 79, 1, 14454, 0, 'Cash', NULL, '2018-11-05 03:15:23', '2018-11-05 03:15:23'),
(130, 'spr-20181105-092002', 1, NULL, 80, 1, 2500, 0, 'Cash', NULL, '2018-11-05 03:20:02', '2018-11-05 03:20:02'),
(131, 'ppr-20181105-092128', 1, 24, NULL, 1, 15950, 0, 'Cash', NULL, '2018-11-05 03:21:28', '2018-11-05 03:21:28'),
(137, 'spr-20181105-095952', 1, NULL, 86, 1, 1100, 0, 'Cash', NULL, '2018-11-05 03:59:52', '2018-11-05 03:59:52'),
(138, 'spr-20181105-100310', 1, NULL, 88, 1, 1100, 0, 'Cash', NULL, '2018-11-05 04:03:10', '2018-11-05 04:03:10'),
(139, 'spr-20181126-020534', 1, NULL, 94, 1, 120, 0, 'Cash', NULL, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(140, 'spr-20181128-071515', 1, NULL, 96, 1, 132, 0, 'Cash', NULL, '2018-11-28 01:15:15', '2018-11-28 01:15:15'),
(141, 'spr-20181201-060524', 1, NULL, 97, 1, 200, 300, 'Cash', NULL, '2018-12-01 00:05:24', '2018-12-04 00:21:05'),
(148, 'ppr-20181204-065932', 1, 23, NULL, 1, 500, 500, 'Cash', NULL, '2018-12-04 00:59:32', '2018-12-04 00:59:44'),
(149, 'ppr-20181205-053443', 1, 25, NULL, 1, 4450, 550, 'Cash', NULL, '2018-12-04 23:34:43', '2018-12-04 23:34:43'),
(150, 'spr-20181205-053608', 1, NULL, 98, 1, 800, 200, 'Cash', NULL, '2018-12-04 23:36:08', '2018-12-04 23:36:08'),
(151, 'spr-20181205-053724', 1, NULL, 99, 1, 800, 0, 'Cash', NULL, '2018-12-04 23:37:24', '2018-12-04 23:37:24'),
(152, 'spr-20181208-062032', 1, NULL, 101, 1, 100, 400, 'Cash', NULL, '2018-12-08 00:20:32', '2018-12-11 03:19:39'),
(157, 'ppr-20181220-063439', 1, 27, NULL, 1, 10, 0, 'Cash', NULL, '2018-12-20 00:34:39', '2018-12-20 00:35:01'),
(159, 'spr-20181224-045832', 1, NULL, 103, 1, 120, 0, 'Cash', NULL, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(160, 'spr-20190101-054544', 1, NULL, 105, 1, 21, 0, 'Cash', NULL, '2018-12-31 23:45:44', '2018-12-31 23:45:44'),
(161, 'spr-20190101-091040', 1, NULL, 106, 1, 860, 0, 'Cash', NULL, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(162, 'spr-20190103-065627', 1, NULL, 107, 1, 5040, 960, 'Cash', NULL, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(163, 'spr-20190120-035824', 1, NULL, 108, 1, 120, 0, 'Cash', NULL, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(164, 'ppr-20190129-100302', 9, 36, NULL, 1, 650, 350, 'Cash', NULL, '2019-01-29 04:03:02', '2019-01-29 04:03:02'),
(165, 'ppr-20190129-100324', 9, 34, NULL, 1, 2860, 140, 'Cash', NULL, '2019-01-29 04:03:24', '2019-01-29 04:03:24'),
(166, 'spr-20190129-101451', 9, NULL, 109, 1, 540, 460, 'Cash', NULL, '2019-01-29 04:14:51', '2019-01-29 04:14:51'),
(167, 'spr-20190129-115048', 9, NULL, 110, 1, 1700, 300, 'Cash', NULL, '2019-01-29 05:50:48', '2019-01-29 05:50:48'),
(168, 'spr-20190131-110839', 9, NULL, 111, 1, 271, 0, 'Cash', NULL, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(169, 'spr-20190202-104045', 1, NULL, 112, 1, 440, 0, 'Cash', NULL, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(170, 'spr-20190202-114117', 1, NULL, 113, 1, 350, 0, 'Cash', NULL, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(171, 'spr-20190205-030454', 1, NULL, 114, 1, 440, 0, 'Cash', NULL, '2019-02-05 09:04:54', '2019-02-05 09:04:54'),
(176, 'ppr-20190207-125418', 1, 35, NULL, 1, 50, 50, 'Cash', NULL, '2019-02-07 06:54:18', '2019-02-07 07:05:23'),
(178, 'ppr-20190207-010640', 1, 35, NULL, 1, 50, 50, 'Cheque', NULL, '2019-02-07 07:06:40', '2019-02-07 07:07:04'),
(179, 'spr-20190207-010915', 1, NULL, 120, 1, 50, 50, 'Cash', NULL, '2019-02-07 07:09:15', '2019-02-07 07:09:15'),
(180, 'spr-20190209-104816', 1, NULL, 121, 1, 1272, 728, 'Cash', NULL, '2019-02-09 04:48:16', '2019-02-09 04:48:16'),
(181, 'ppr-20190209-104940', 1, 38, NULL, 1, 1660, 0, 'Cash', NULL, '2019-02-09 04:49:40', '2019-02-09 04:49:40'),
(182, 'ppr-20190209-104959', 1, 39, NULL, 1, 973.5, 0, 'Cash', NULL, '2019-02-09 04:49:59', '2019-02-09 04:49:59'),
(183, 'spr-20190219-023214', 1, NULL, 123, 1, 440, 0, 'Cash', NULL, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(189, 'spr-20190303-104010', 1, NULL, 127, 1, 2500, 0, 'Cash', NULL, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(190, 'ppr-20190303-104046', 1, 40, NULL, 1, 100, 0, 'Cash', NULL, '2019-03-03 04:40:46', '2019-03-03 04:40:46'),
(191, 'ppr-20190303-104222', 1, 37, NULL, 1, 4000, 0, 'Cash', NULL, '2019-03-03 04:42:22', '2019-03-03 04:42:22'),
(192, 'ppr-20190303-104414', 1, 41, NULL, 1, 1000, 0, 'Cash', NULL, '2019-03-03 04:44:14', '2019-03-03 04:44:14'),
(193, 'spr-20190404-095555', 1, NULL, 128, 1, 560, 0, 'Cash', NULL, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(194, 'ppr-20190404-095910', 1, 42, NULL, 1, 300, 200, 'Cash', NULL, '2019-04-04 03:59:10', '2019-04-13 10:52:38'),
(195, 'spr-20190404-095937', 1, NULL, 129, 1, 120, 0, 'Cash', NULL, '2019-04-04 03:59:37', '2019-04-04 03:59:37'),
(196, 'spr-20190421-122124', 1, NULL, 130, 1, 586, 0, 'Cash', NULL, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(197, 'spr-20190528-103229', 1, NULL, 131, 1, 2890, 0, 'Cash', NULL, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(198, 'ppr-20190613-101351', 1, 37, NULL, 1, 2390, 0, 'Cash', NULL, '2019-06-13 04:13:51', '2019-06-13 04:13:51'),
(199, 'spr-20190613-101637', 1, NULL, 132, 1, 840, 0, 'Cash', NULL, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(200, 'ppr-20190613-101713', 1, 43, NULL, 1, 1000, 0, 'Cash', NULL, '2019-06-13 04:17:13', '2019-06-13 04:17:13'),
(201, 'spr-20190613-101752', 1, NULL, 133, 1, 2700, 0, 'Cash', NULL, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(202, 'ppr-20191019-032925', 1, 43, NULL, 1, 3290, 710, 'Cash', NULL, '2019-10-19 09:29:25', '2019-10-19 09:29:25'),
(203, 'spr-20191019-033028', 1, NULL, 134, 1, 2940, 60, 'Cash', NULL, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(205, 'spr-20191103-114044', 1, NULL, 139, 1, 488, 12, 'Cash', NULL, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(206, 'ppr-20191103-114222', 1, 46, NULL, 1, 200, 0, 'Cash', NULL, '2019-11-03 05:42:22', '2019-11-03 05:42:22'),
(211, 'spr-20191109-074131', 1, NULL, 144, 1, 1220, 0, 'Cash', NULL, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(216, 'ppr-20191111-103911', 1, 49, NULL, 1, 5000, 0, 'Cheque', NULL, '2019-11-11 04:39:11', '2019-11-11 04:39:11'),
(217, 'spr-20191111-104008', 1, NULL, 147, 1, 2220, 780, 'Cash', NULL, '2019-11-11 04:40:08', '2019-11-11 04:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_cheque`
--

INSERT INTO `payment_with_cheque` (`id`, `payment_id`, `cheque_no`, `created_at`, `updated_at`) VALUES
(1, 19, '23425235235', '2018-07-01 03:09:48', '2018-07-01 03:09:48'),
(2, 24, '3123123123', '2018-07-10 01:21:32', '2018-07-10 01:21:32'),
(3, 31, '767867678', '2018-08-08 10:36:22', '2018-08-08 10:36:22'),
(4, 34, '3123412', '2018-08-08 23:55:54', '2018-08-08 23:55:54'),
(5, 35, '7765', '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(6, 44, '3124142412', '2018-08-30 03:07:18', '2018-08-30 03:07:18'),
(7, 51, '6576764646', '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(8, 53, '111111111', '2018-09-03 04:15:24', '2018-09-03 04:15:24'),
(9, 79, '1111', '2018-10-06 00:51:55', '2018-10-06 00:51:55'),
(10, 147, '221133', '2018-12-04 00:58:35', '2018-12-04 00:58:35'),
(11, 175, '1111', '2019-02-07 06:38:23', '2019-02-07 06:38:23'),
(12, 176, '1111', '2019-02-07 06:54:59', '2019-02-07 06:54:59'),
(13, 178, '420', '2019-02-07 07:07:04', '2019-02-07 07:07:04'),
(14, 216, '12344321', '2019-11-11 04:39:11', '2019-11-11 04:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_gift_card`
--

INSERT INTO `payment_with_gift_card` (`id`, `payment_id`, `gift_card_id`, `created_at`, `updated_at`) VALUES
(1, 36, 2, '2018-08-24 21:48:36', '2018-08-25 00:57:35'),
(4, 39, 1, '2018-08-25 02:36:34', '2018-08-25 02:36:34'),
(6, 50, 1, '2018-09-02 23:01:38', '2018-09-02 23:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `reference_no`, `employee_id`, `account_id`, `user_id`, `amount`, `paying_method`, `note`, `created_at`, `updated_at`) VALUES
(8, 'payroll-20190101-055231', 1, 1, 1, 100, '0', NULL, '2018-12-31 23:52:31', '2018-12-31 23:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 01:00:09', '2018-06-03 01:00:09'),
(5, 'products-delete', 'web', '2018-06-03 22:54:22', '2018-06-03 22:54:22'),
(6, 'products-add', 'web', '2018-06-04 00:34:14', '2018-06-04 00:34:14'),
(7, 'products-index', 'web', '2018-06-04 03:34:27', '2018-06-04 03:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 08:03:19', '2018-06-04 08:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 08:12:25', '2018-06-04 08:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(12, 'sales-index', 'web', '2018-06-04 10:49:08', '2018-06-04 10:49:08'),
(13, 'sales-add', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 10:49:53', '2018-06-04 10:49:53'),
(16, 'quotes-index', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(17, 'quotes-add', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(18, 'quotes-edit', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(19, 'quotes-delete', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(20, 'transfers-index', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(21, 'transfers-add', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(22, 'transfers-edit', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(23, 'transfers-delete', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(24, 'returns-index', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(25, 'returns-add', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(26, 'returns-edit', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(27, 'returns-delete', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(28, 'customers-index', 'web', '2018-06-04 23:15:54', '2018-06-04 23:15:54'),
(29, 'customers-add', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(30, 'customers-edit', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(31, 'customers-delete', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(32, 'suppliers-index', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(33, 'suppliers-add', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(36, 'product-report', 'web', '2018-06-24 23:05:33', '2018-06-24 23:05:33'),
(37, 'purchase-report', 'web', '2018-06-24 23:24:56', '2018-06-24 23:24:56'),
(38, 'sale-report', 'web', '2018-06-24 23:33:13', '2018-06-24 23:33:13'),
(39, 'customer-report', 'web', '2018-06-24 23:36:51', '2018-06-24 23:36:51'),
(40, 'due-report', 'web', '2018-06-24 23:39:52', '2018-06-24 23:39:52'),
(41, 'users-index', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(42, 'users-add', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(43, 'users-edit', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(44, 'users-delete', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 21:50:05', '2018-07-14 21:50:05'),
(46, 'best-seller', 'web', '2018-07-14 22:01:38', '2018-07-14 22:01:38'),
(47, 'daily-sale', 'web', '2018-07-14 22:24:21', '2018-07-14 22:24:21'),
(48, 'monthly-sale', 'web', '2018-07-14 22:30:41', '2018-07-14 22:30:41'),
(49, 'daily-purchase', 'web', '2018-07-14 22:36:46', '2018-07-14 22:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 22:48:17', '2018-07-14 22:48:17'),
(51, 'payment-report', 'web', '2018-07-14 23:10:41', '2018-07-14 23:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 23:16:55', '2018-07-14 23:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 23:33:21', '2018-07-14 23:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 03:00:01', '2018-07-30 03:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 01:07:11', '2018-09-05 01:07:11'),
(59, 'general_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(60, 'mail_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(61, 'pos_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 10:30:23', '2019-01-02 10:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(67, 'account-index', 'web', '2019-01-02 22:06:13', '2019-01-02 22:06:13'),
(68, 'balance-sheet', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(69, 'account-statement', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(70, 'department', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(71, 'attendance', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(72, 'payroll', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(73, 'employees-index', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(74, 'employees-add', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(75, 'employees-edit', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(76, 'employees-delete', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(77, 'user-report', 'web', '2019-01-16 06:48:18', '2019-01-16 06:48:18'),
(78, 'stock_count', 'web', '2019-02-17 10:32:01', '2019-02-17 10:32:01'),
(79, 'adjustment', 'web', '2019-02-17 10:32:02', '2019-02-17 10:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(81, 'create_sms', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(83, 'empty_database', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(84, 'customer_group', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(85, 'unit', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(86, 'tax', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(87, 'gift_card', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(88, 'coupon', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(89, 'holiday', 'web', '2019-10-19 08:57:15', '2019-10-19 08:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 1, 4, 1, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 03:17:04', '2019-02-02 04:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_invoice_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `featured`, `product_list`, `qty_list`, `price_list`, `product_details`, `product_invoice_details`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Mouse', '63920719', 'standard', 'C39', 4, 3, 1, 1, 1, '320', '400', 215, 20, 1, '350', '2018-07-01', '2018-07-31', 1, 1, 'toponemouse.jpg', NULL, 1, NULL, NULL, NULL, '11:11:30 AMhello world', 'nice wireless mouse', 1, '2018-05-12 22:23:03', '2019-11-09 13:55:47'),
(2, 'mango', '72782608', 'standard', 'C128', NULL, 1, 1, 3, 2, '8', '12', 3288, 100, NULL, NULL, NULL, NULL, 2, 2, 'mango.jpg', NULL, 1, NULL, NULL, NULL, '', NULL, 1, '2018-05-12 22:38:31', '2019-11-09 13:00:32'),
(3, 'Earphone', '85415108', 'standard', 'C128', 4, 2, 1, 1, 1, '200', '250', 173, 25, 1, '220', '2018-05-13', '2018-05-31', NULL, 1, 'airphonesamsung.jpg', NULL, 1, NULL, NULL, NULL, '', NULL, 1, '2018-05-12 22:39:55', '2019-11-09 13:01:14'),
(4, 'lychee', '38314290', 'standard', 'C128', NULL, 1, 1, 1, 1, '1', '2', 212, 50, NULL, NULL, NULL, NULL, NULL, 1, 'lychee.jpg', NULL, 1, NULL, NULL, NULL, 'sweet lychee from kalipur, bashkhali', NULL, 1, '2018-05-23 22:54:56', '2019-11-11 04:40:08'),
(5, 'Baby doll', '31261512', 'standard', 'C128', 3, 4, 1, 1, 1, '100', '120', 141, 50, NULL, NULL, NULL, NULL, NULL, 1, 'lalacrybabydoll.jpg,1572515542825e4e2e433-e29b-4ca1-abb2-aad995574f2a_1.e4dc9f20c1d8b2999d66556ae0aa1600.jpeg', NULL, 1, NULL, NULL, NULL, '', NULL, 1, '2018-05-23 22:58:20', '2019-11-10 13:06:01'),
(6, 'test', '78041363', 'standard', 'C128', NULL, 2, 1, 1, 1, '12', '21', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-05-27 23:50:25', '2018-05-27 23:53:24'),
(10, 'potato', '212132', 'standard', 'C128', NULL, 9, 7, 7, 7, '10', '22', 111, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'potato.jpeg', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2018-06-25 01:34:53', '2018-12-01 00:05:18'),
(13, 'ldms', '40624536', 'digital', 'C128', NULL, 3, 0, 0, 0, '0', '21', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ldms.jpg', '1532330693.JPG', 1, NULL, NULL, NULL, '', NULL, 1, '2018-07-23 01:09:29', '2018-07-23 01:24:53'),
(14, 'ni', '40237871', 'standard', 'C128', NULL, 9, 8, 8, 8, '55', '56', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-07-31 22:36:51', '2018-07-31 22:41:48'),
(15, 'edawe', 'awd', 'standard', 'C128', NULL, 1, 4, 4, 4, '312', '132', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-08-05 01:26:19', '2018-08-05 01:27:03'),
(16, 'weq', 'eqw', 'digital', 'C128', NULL, 2, 0, 0, 0, '0', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '1533454125.jpg', NULL, NULL, NULL, NULL, '', NULL, 0, '2018-08-05 01:28:45', '2018-08-05 01:29:23'),
(17, 'et', 'wer', 'standard', 'C128', NULL, 2, 4, 4, 4, '12', '21', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-08-06 04:25:43', '2018-08-06 04:27:41'),
(18, 'wre', 'wre', 'standard', 'C128', NULL, 1, 4, 4, 4, '3', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-08-06 04:45:42', '2018-08-06 04:57:41'),
(19, 'ewr', 'wer', 'standard', 'C128', NULL, 2, 4, 4, 4, '3', '23', 0, NULL, 1, NULL, '2018-08-06', '2018-08-10', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-08-06 05:41:46', '2018-08-06 05:43:29'),
(20, 'dim', '4234', 'standard', 'C128', NULL, 10, 1, 1, 1, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-08-28 23:37:07', '2018-08-28 23:43:18'),
(21, 'dim', '1', 'standard', 'C128', NULL, 11, 1, 1, 1, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-08-28 23:49:27', '2018-08-28 23:53:21'),
(22, 'iphone-X', '97103461', 'standard', 'C128', 5, 2, 1, 1, 1, '800', '1000', 47, 20, NULL, NULL, NULL, NULL, 1, 1, 'iphoneX.jpg', NULL, 1, NULL, NULL, NULL, '', NULL, 1, '2018-09-03 04:05:17', '2019-11-11 04:40:08'),
(23, 'qwq', '1237920612311a', 'standard', 'C39', NULL, 2, 1, 1, 1, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-09-10 23:53:18', '2018-09-10 23:56:04'),
(24, 'chocolate', '84802317', 'standard', 'C128', NULL, 9, 1, 1, 1, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 0, '2018-09-15 21:42:01', '2018-09-15 22:10:43'),
(25, 'Galaxy S9', '72100265', 'standard', 'C128', NULL, 2, 1, 1, 1, '500', '1000', 28, 10, NULL, NULL, NULL, NULL, 1, 1, 'SamsungGalaxyS9.jpg', NULL, 1, NULL, NULL, NULL, '', NULL, 1, '2018-10-23 01:13:22', '2019-11-11 04:40:08'),
(26, 'Samsung Set', '39053411', 'combo', 'C128', 4, 2, 0, 0, 0, '0', '1250', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, '3,25', '1,1', '250,1000', '', NULL, 1, '2018-11-19 03:59:06', '2018-11-20 02:12:02'),
(27, 'mixed fruit juice', '24805187', 'combo', 'C128', NULL, 9, 0, 0, 0, '0', '16', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, '4,2', '3,1', '2,10', '', NULL, 0, '2018-11-19 09:39:26', '2018-11-24 22:35:51'),
(28, 'ssaaa', 'sasas', 'standard', 'C128', NULL, 2, 1, 1, 2, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-11-20 04:14:12', '2018-11-20 04:34:02'),
(29, 'testcloth', '16055884', 'standard', 'C128', NULL, 4, 10, 10, 10, '10', '15', 0, NULL, NULL, NULL, '2018-11-29', NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '2018-11-29 03:49:25', '2019-03-01 15:09:27'),
(30, 'Polo Shirt', '53467102', 'standard', 'C128', NULL, 12, 1, 1, 1, '50', '100', 27, 10, NULL, NULL, NULL, NULL, NULL, 1, 'PoloShirt.jpg', NULL, 1, NULL, NULL, NULL, '', NULL, 1, '2018-12-04 23:29:43', '2019-06-13 04:16:37'),
(31, 'Shoe', '90471412', 'standard', 'C128', NULL, 12, 1, 1, 1, '250', '300', 25, 10, NULL, NULL, NULL, NULL, NULL, 1, 'Shoe.jpg', NULL, 1, NULL, NULL, NULL, '', NULL, 1, '2018-12-04 23:33:09', '2019-10-19 09:30:28'),
(32, 'Toothpaste', '859875003032', 'standard', 'C128', NULL, 12, 1, 1, 1, '5', '10', 30, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1572759415477product-page-fresh-breath.jpg', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2018-12-18 23:56:08', '2019-11-11 04:28:59'),
(33, 'tissue', '8941161008066', 'standard', 'C128', NULL, 12, 1, 1, 1, '10', '20', 41, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2018-12-23 23:33:58', '2019-11-03 05:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(59, 12, 4, 200, 200, 1, 1, 0, 0, 0, 200, '2018-08-08 23:48:36', '2018-08-08 23:48:36'),
(60, 12, 5, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-08 23:48:36', '2018-08-08 23:48:36'),
(66, 13, 2, 100, 100, 3, 166.96, 0, 15, 2504.35, 19200, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(67, 13, 3, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(68, 13, 1, 150, 150, 1, 320, 0, 10, 4800, 52800, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(69, 13, 10, 60, 60, 7, 10, 0, 0, 0, 600, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(70, 14, 1, 100, 100, 1, 320, 0, 10, 3200, 35200, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(71, 14, 2, 50, 50, 3, 166.96, 0, 15, 1252.17, 9600, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(72, 14, 3, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(73, 14, 5, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(74, 14, 10, 50, 50, 7, 10, 0, 0, 0, 500, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(76, 15, 22, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-03 04:06:46', '2018-09-03 04:06:46'),
(87, 16, 22, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-20 09:09:12', '2018-09-20 09:09:12'),
(89, 18, 4, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 10:26:25', '2018-10-22 10:26:25'),
(90, 19, 4, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 10:26:52', '2018-10-22 10:26:52'),
(91, 20, 25, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 01:14:21', '2018-10-23 01:14:21'),
(93, 21, 25, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 01:14:58', '2018-10-23 01:14:58'),
(94, 22, 22, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-10-31 22:59:03', '2018-10-31 22:59:03'),
(96, 23, 22, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-11-03 03:23:52', '2018-11-03 03:23:52'),
(97, 24, 22, 15, 15, 1, 800, 0, 10, 1200, 13200, '2018-11-05 03:18:19', '2018-11-05 03:18:19'),
(98, 24, 25, 5, 5, 1, 500, 0, 10, 250, 2750, '2018-11-05 03:18:19', '2018-11-05 03:18:19'),
(99, 25, 31, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-04 23:34:30', '2018-12-04 23:34:30'),
(100, 25, 30, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-04 23:34:30', '2018-12-04 23:34:30'),
(101, 26, 31, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-04 23:35:08', '2018-12-04 23:35:08'),
(102, 26, 30, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-04 23:35:08', '2018-12-04 23:35:08'),
(104, 27, 32, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-18 23:57:41', '2018-12-18 23:57:41'),
(112, 33, 33, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-24 03:04:21', '2018-12-24 03:04:21'),
(113, 34, 25, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-01-03 01:01:24', '2019-01-03 01:01:24'),
(114, 34, 22, 2, 2, 1, 800, 0, 10, 160, 1760, '2019-01-03 01:01:24', '2019-01-03 01:01:24'),
(115, 35, 31, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 03:54:48', '2019-01-29 03:54:48'),
(116, 35, 30, 2, 2, 1, 50, 0, 0, 0, 100, '2019-01-29 03:54:48', '2019-01-29 03:54:48'),
(117, 36, 30, 3, 3, 1, 50, 0, 0, 0, 150, '2019-01-29 03:55:58', '2019-01-29 03:55:58'),
(118, 36, 31, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 03:55:58', '2019-01-29 03:55:58'),
(121, 39, 1, 2, 2, 1, 315, 10, 10, 63, 693, '2019-02-09 04:44:13', '2019-02-09 04:44:13'),
(122, 39, 2, 1, 1, 3, 192, 0, 0, 0, 192, '2019-02-09 04:44:13', '2019-02-09 04:44:13'),
(123, 38, 32, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 04:45:24', '2019-02-09 04:45:24'),
(124, 38, 25, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-02-09 04:45:24', '2019-02-09 04:45:24'),
(125, 37, 33, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 04:46:22', '2019-02-09 04:46:22'),
(126, 37, 25, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-02-09 04:46:23', '2019-02-09 04:46:23'),
(127, 37, 22, 6, 6, 1, 800, 0, 10, 480, 5280, '2019-02-09 04:46:23', '2019-02-09 04:46:23'),
(128, 40, 33, 10, 10, 1, 10, 0, 0, 0, 100, '2019-03-03 04:39:17', '2019-03-03 04:39:17'),
(129, 41, 33, 5, 5, 1, 10, 0, 0, 0, 50, '2019-03-03 04:43:58', '2019-03-03 04:43:58'),
(130, 41, 1, 10, 10, 1, 320, 0, 10, 320, 3520, '2019-03-03 04:43:59', '2019-03-03 04:43:59'),
(133, 42, 30, 1, 1, 1, 50, 0, 0, 0, 50, '2019-04-13 13:50:08', '2019-04-13 13:50:08'),
(134, 42, 31, 1, 1, 1, 250, 0, 0, 0, 250, '2019-04-13 13:50:08', '2019-04-13 13:50:08'),
(135, 43, 25, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-06-13 04:16:00', '2019-06-13 04:16:00'),
(136, 43, 22, 3, 3, 1, 800, 0, 10, 240, 2640, '2019-06-13 04:16:01', '2019-06-13 04:16:01'),
(137, 44, 25, 1, 1, 1, 500, 0, 10, 50, 550, '2019-10-19 09:31:19', '2019-10-19 09:31:19'),
(138, 44, 22, 1, 1, 1, 800, 0, 10, 80, 880, '2019-10-19 09:31:20', '2019-10-19 09:31:20'),
(140, 46, 33, 10, 10, 1, 10, 0, 0, 0, 100, '2019-11-03 05:39:49', '2019-11-03 05:39:49'),
(141, 46, 32, 10, 10, 1, 5, 0, 0, 0, 50, '2019-11-03 05:39:49', '2019-11-03 05:39:49'),
(142, 47, 1, 2, 2, 1, 315, 10, 10, 63, 693, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(143, 47, 2, 1, 1, 3, 192, 0, 0, 0, 192, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(144, 48, 4, 100, 100, 1, 1, 0, 0, 0, 100, '2019-11-10 13:02:21', '2019-11-10 13:02:21'),
(149, 49, 22, 10, 10, 1, 800, 0, 10, 800, 8800, '2019-11-11 04:28:59', '2019-11-11 04:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_quotation`
--

INSERT INTO `product_quotation` (`id`, `quotation_id`, `product_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 2, 5030, 10, 15, 754.5, 5784.5, '2018-08-08 23:52:50', '2018-08-28 00:09:57'),
(3, 1, 4, 50, 1, 1.5, 25, 10, 7.5, 82.5, '2018-08-08 23:53:25', '2018-08-28 00:34:36'),
(4, 1, 2, 6, 1, 9.55, 0, 10, 5.73, 63, '2018-08-28 01:03:48', '2018-08-28 01:07:07'),
(5, 2, 10, 2.5, 7, 22, 0, 0, 0, 55, '2018-09-03 22:02:58', '2018-09-20 10:37:41'),
(6, 2, 13, 1, 0, 21, 0, 0, 0, 21, '2018-09-03 22:02:58', '2018-09-03 22:02:58'),
(7, 3, 1, 1, 1, 400, 0, 10, 40, 440, '2018-10-23 00:12:49', '2018-10-23 00:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_returns`
--

INSERT INTO `product_returns` (`id`, `return_id`, `product_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(3, 2, 4, 20, 1, 2, 0, 0, 0, 40, NULL, NULL),
(4, 3, 10, 2, 7, 22, 0, 0, 0, 44, NULL, '2018-10-07 02:19:40'),
(6, 5, 3, 1, 1, 250, 0, 0, 0, 250, NULL, '2018-12-25 22:16:08'),
(7, 7, 26, 1, 0, 1250, 0, 0, 0, 1250, NULL, '2018-11-24 03:45:13'),
(8, 7, 13, 1, 0, 21, 0, 0, 0, 21, '2018-11-24 03:45:13', '2018-11-24 03:45:13'),
(11, 8, 26, 2, 0, 1250, 0, 0, 0, 2500, NULL, NULL),
(12, 6, 1, 1, 1, 400, 0, 10, 40, 440, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-08-08 10:36:23', '2018-08-08 11:13:27'),
(3, 1, 5, 2, 1, 115, 10, 0, 0, 230, '2018-08-08 11:13:28', '2018-08-08 11:13:28'),
(4, 2, 1, 10, 1, 420, 0, 10, 420, 4620, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(5, 2, 4, 50, 1, 2.1, 0, 0, 0, 105, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(6, 2, 2, 3, 2, 109.57, 0, 15, 49.3, 378, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(7, 3, 4, 20, 1, 2.1, 0, 0, 0, 42, '2018-08-09 00:32:15', '2018-08-09 00:32:15'),
(8, 3, 5, 5, 1, 126, 0, 0, 0, 630, '2018-08-09 00:32:15', '2018-08-09 00:32:15'),
(9, 3, 3, 1, 1, 225, 0, 0, 0, 225, '2018-08-09 00:32:15', '2018-08-09 00:32:15'),
(10, 4, 1, 2, 1, 400, 0, 10, 80, 880, '2018-08-24 21:48:37', '2018-08-24 21:48:37'),
(12, 6, 13, 1, 0, 18.9, 0, 0, 0, 18.9, '2018-08-26 03:48:36', '2018-08-26 05:48:05'),
(13, 7, 1, 2, 1, 400, 0, 10, 80, 880, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(14, 8, 5, 2, 2, 1440, 0, 10, 288, 3168, '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(15, 9, 4, 10, 1, 2, 0, 0, 0, 20, '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(16, 10, 3, 1, 1, 250, 0, 0, 0, 250, '2018-09-02 23:01:39', '2018-09-02 23:01:39'),
(17, 11, 22, 5, 1, 1000, 0, 10, 500, 5500, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(18, 12, 22, 10, 1, 1050, 0, 10, 1050, 11550, '2018-09-03 04:10:33', '2018-09-03 04:10:33'),
(46, 29, 5, 1, 1, 120, 0, 0, 0, 120, '2018-09-09 03:38:41', '2018-09-09 03:38:41'),
(47, 30, 1, 1, 1, 400, 0, 10, 40, 440, '2018-09-09 22:57:06', '2018-09-20 09:12:38'),
(48, 31, 1, 1, 1, 400, 0, 10, 40, 440, '2018-09-26 03:20:59', '2018-09-26 03:21:25'),
(49, 31, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-09-26 03:20:59', '2018-09-26 03:21:25'),
(50, 32, 1, 1, 1, 400, 0, 10, 40, 440, '2018-10-04 03:55:48', '2018-10-04 03:55:48'),
(51, 33, 1, 1, 1, 400, 0, 10, 40, 440, '2018-10-04 04:00:23', '2018-10-04 04:00:23'),
(57, 37, 3, 1, 1, 250, 0, 0, 0, 250, '2018-10-07 00:46:05', '2018-10-07 00:46:05'),
(58, 38, 1, 1, 1, 400, 0, 10, 40, 440, '2018-10-07 00:47:19', '2018-10-07 00:47:19'),
(61, 40, 1, 1, 1, 400, 0, 10, 40, 440, '2018-10-07 01:13:12', '2018-10-07 01:13:12'),
(62, 41, 1, 1, 1, 400, 0, 10, 40, 440, '2018-10-09 22:16:21', '2018-10-09 22:16:21'),
(63, 41, 13, 1, 0, 21, 0, 0, 0, 21, '2018-10-09 22:16:21', '2018-10-09 22:16:21'),
(64, 42, 1, 1, 1, 400, 0, 10, 40, 440, '2018-10-09 23:34:51', '2018-10-09 23:34:51'),
(65, 43, 1, 1, 1, 400, 0, 10, 40, 440, '2018-10-15 21:34:35', '2018-10-15 21:34:35'),
(78, 55, 3, 1, 1, 250, 0, 0, 0, 250, '2018-10-21 00:53:34', '2018-10-21 00:53:34'),
(80, 57, 1, 1, 1, 400, 0, 10, 40, 440, '2018-10-21 02:26:12', '2018-10-21 02:26:12'),
(81, 57, 13, 2, 0, 21, 0, 0, 0, 42, '2018-10-21 02:26:13', '2018-10-21 02:26:13'),
(82, 58, 22, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-22 09:27:24', '2018-10-22 09:27:24'),
(83, 58, 5, 1, 1, 120, 0, 0, 0, 120, '2018-10-22 09:27:24', '2018-10-22 09:27:24'),
(101, 73, 25, 3, 1, 1000, 0, 10, 300, 3300, '2018-10-23 01:15:43', '2018-10-23 01:15:43'),
(102, 73, 22, 2, 1, 1000, 0, 10, 200, 2200, '2018-10-23 01:15:44', '2018-10-23 01:15:44'),
(103, 74, 22, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(104, 74, 25, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(105, 74, 5, 1, 1, 120, 0, 0, 0, 120, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(106, 75, 2, 3, 2, 104.35, 0, 15, 46.96, 360, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(107, 75, 22, 2, 1, 1000, 0, 10, 200, 2200, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(108, 75, 25, 3, 1, 1000, 0, 10, 300, 3300, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(109, 75, 1, 2, 1, 400, 0, 10, 80, 880, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(110, 75, 5, 2, 1, 120, 0, 0, 0, 240, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(111, 76, 3, 1, 1, 250, 0, 0, 0, 250, '2018-10-31 23:01:26', '2018-11-03 03:28:56'),
(112, 76, 22, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-31 23:01:27', '2018-11-03 03:28:56'),
(113, 76, 13, 4, 0, 21, 0, 0, 0, 84, '2018-10-31 23:01:27', '2018-11-03 03:28:56'),
(117, 79, 1, 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(118, 79, 2, 7, 2, 104.35, 0, 15, 109.57, 840, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(119, 79, 3, 7, 1, 250, 0, 0, 0, 1750, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(120, 79, 4, 7, 1, 2, 0, 0, 0, 14, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(121, 79, 22, 8, 1, 1000, 0, 10, 800, 8800, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(122, 79, 13, 10, 0, 21, 0, 0, 0, 210, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(123, 79, 5, 9, 1, 120, 0, 0, 0, 1080, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(124, 80, 2, 2, 2, 104.35, 0, 15, 31.3, 240, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(125, 80, 3, 2, 1, 250, 0, 0, 0, 500, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(126, 80, 1, 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(132, 86, 22, 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 03:59:48', '2018-11-05 03:59:48'),
(134, 88, 22, 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 04:02:58', '2018-11-05 04:02:58'),
(142, 94, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(143, 95, 5, 3, 1, 120, 0, 0, 0, 360, '2018-11-27 03:36:08', '2018-11-27 03:36:08'),
(144, 95, 5, 3, 1, 120, 0, 0, 0, 360, '2018-11-27 03:36:08', '2018-11-27 03:36:08'),
(145, 96, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-28 01:15:09', '2018-11-28 01:15:09'),
(146, 97, 2, 2, 2, 104.35, 0, 15, 31.3, 240, '2018-12-01 00:05:18', '2018-12-01 00:05:18'),
(147, 97, 10, 1, 7, 22, 0, 0, 0, 22, '2018-12-01 00:05:18', '2018-12-01 00:05:18'),
(148, 98, 30, 2, 1, 100, 0, 0, 0, 200, '2018-12-04 23:35:58', '2018-12-04 23:35:58'),
(149, 98, 31, 2, 1, 300, 0, 0, 0, 600, '2018-12-04 23:35:58', '2018-12-04 23:35:58'),
(150, 99, 30, 2, 1, 100, 0, 0, 0, 200, '2018-12-04 23:37:19', '2018-12-04 23:37:19'),
(151, 99, 31, 2, 1, 300, 0, 0, 0, 600, '2018-12-04 23:37:20', '2018-12-04 23:37:20'),
(153, 101, 30, 1, 1, 100, 0, 0, 0, 100, '2018-12-08 00:20:26', '2018-12-08 00:20:26'),
(155, 103, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(156, 104, 33, 4, 1, 2, 0, 0, 0, 8, '2018-12-24 03:15:27', '2018-12-24 21:55:23'),
(157, 104, 26, 2, 0, 1250, 0, 0, 0, 2500, '2018-12-24 21:47:54', '2018-12-24 21:55:23'),
(158, 105, 13, 1, 0, 21, 0, 0, 0, 21, '2018-12-31 23:45:38', '2018-12-31 23:45:38'),
(159, 106, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(160, 106, 3, 2, 1, 250, 0, 0, 0, 500, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(161, 106, 5, 2, 1, 120, 0, 0, 0, 240, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(162, 107, 3, 2, 1, 250, 0, 0, 0, 500, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(163, 107, 5, 2, 1, 120, 0, 0, 0, 240, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(164, 107, 22, 2, 1, 1000, 0, 10, 200, 2200, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(165, 107, 25, 1, 1, 1000, 0, 10, 100, 1100, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(166, 107, 1, 2, 1, 400, 0, 10, 80, 880, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(167, 107, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(168, 108, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(169, 109, 1, 1, 1, 400, 0, 10, 40, 440, '2019-01-29 04:14:43', '2019-01-29 04:14:43'),
(170, 109, 30, 1, 1, 100, 0, 0, 0, 100, '2019-01-29 04:14:43', '2019-01-29 04:14:43'),
(171, 110, 31, 2, 1, 300, 0, 0, 0, 600, '2019-01-29 05:50:41', '2019-01-29 05:50:41'),
(172, 110, 25, 1, 1, 1000, 0, 10, 100, 1100, '2019-01-29 05:50:41', '2019-01-29 05:50:41'),
(173, 111, 3, 1, 1, 250, 0, 0, 0, 250, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(174, 111, 13, 1, 0, 21, 0, 0, 0, 21, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(175, 112, 1, 1, 1, 400, 0, 10, 40, 440, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(176, 113, 3, 1, 1, 250, 0, 0, 0, 250, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(177, 113, 30, 1, 1, 100, 0, 0, 0, 100, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(178, 114, 1, 1, 1, 400, 0, 10, 40, 440, '2019-02-05 09:04:45', '2019-02-05 09:04:45'),
(183, 118, 1, 1, 1, 400, 0, 10, 40, 440, '2019-02-07 05:15:42', '2019-02-07 05:15:42'),
(185, 120, 1, 1, 1, 400, 0, 10, 40, 440, '2019-02-07 05:40:37', '2019-02-07 05:40:37'),
(186, 121, 3, 1, 1, 250, 0, 0, 0, 250, '2019-02-09 04:48:14', '2019-02-09 04:48:14'),
(187, 121, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-02-09 04:48:14', '2019-02-09 04:48:14'),
(188, 121, 4, 10, 1, 2, 0, 0, 0, 20, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(189, 121, 13, 2, 0, 21, 0, 0, 0, 42, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(190, 121, 1, 1, 1, 400, 0, 10, 40, 440, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(191, 121, 31, 1, 1, 300, 0, 0, 0, 300, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(192, 121, 30, 1, 1, 100, 0, 0, 0, 100, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(194, 123, 1, 1, 1, 400, 0, 10, 40, 440, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(198, 127, 31, 1, 1, 300, 0, 0, 0, 300, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(199, 127, 25, 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(200, 127, 22, 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(201, 128, 1, 1, 1, 400, 0, 10, 40, 440, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(202, 128, 2, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(203, 129, 5, 2, 1, 120, 0, 0, 0, 240, '2019-04-04 03:59:37', '2019-04-11 04:50:16'),
(204, 130, 1, 1, 1, 400, 0, 10, 40, 440, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(205, 130, 2, 1, 2, 125.22, 0, 15, 18.78, 144, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(206, 130, 4, 1, 1, 2, 0, 0, 0, 2, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(207, 131, 1, 1, 1, 400, 0, 10, 40, 440, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(208, 131, 3, 1, 1, 250, 0, 0, 0, 250, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(209, 131, 25, 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(210, 131, 22, 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(211, 132, 1, 1, 1, 400, 0, 10, 40, 440, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(212, 132, 30, 1, 1, 100, 0, 0, 0, 100, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(213, 132, 31, 1, 1, 300, 0, 0, 0, 300, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(214, 133, 3, 2, 1, 250, 0, 0, 0, 500, '2019-06-13 04:17:51', '2019-06-13 04:17:51'),
(215, 133, 25, 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(216, 133, 22, 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(217, 134, 1, 1, 1, 400, 0, 10, 40, 440, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(218, 134, 22, 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(219, 134, 25, 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(220, 134, 31, 1, 1, 300, 0, 0, 0, 300, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(224, 138, 5, 1, 1, 120, 0, 0, 0, 120, '2019-10-31 06:29:37', '2019-10-31 06:29:37'),
(225, 139, 2, 2, 2, 125.22, 0, 15, 37.57, 288, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(226, 139, 4, 100, 1, 2, 0, 0, 0, 200, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(236, 144, 22, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(237, 144, 5, 1, 1, 120, 0, 0, 0, 120, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(241, 147, 22, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(242, 147, 25, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(243, 147, 4, 10, 1, 2, 0, 0, 0, 20, '2019-11-11 04:40:08', '2019-11-11 04:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transfer`
--

INSERT INTO `product_transfer` (`id`, `transfer_id`, `product_id`, `qty`, `purchase_unit_id`, `net_unit_cost`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 100, 1, 1, 0, 0, 100, '2018-08-08 11:17:10', '2018-12-24 22:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `warehouse_id`, `qty`, `created_at`, `updated_at`) VALUES
(10, '1', 1, 137.5, '2018-08-08 08:30:12', '2019-11-09 13:01:14'),
(11, '2', 1, 1404, '2018-08-08 08:30:12', '2019-11-09 13:00:32'),
(12, '3', 1, 104, '2018-08-08 08:30:13', '2019-11-09 13:01:14'),
(13, '5', 1, 87, '2018-08-08 08:30:13', '2019-11-09 13:01:14'),
(14, '4', 1, 121, '2018-08-08 09:16:09', '2018-12-24 22:16:55'),
(15, '4', 2, 91, '2018-08-08 11:16:15', '2019-11-11 04:40:08'),
(16, '2', 2, 1884, '2018-08-08 11:26:49', '2019-11-03 05:40:44'),
(17, '1', 2, 77.5, '2018-08-08 11:33:33', '2019-11-09 13:55:47'),
(18, '3', 2, 69, '2018-08-08 23:47:23', '2019-06-13 04:17:51'),
(19, '5', 2, 54, '2018-08-08 23:48:36', '2019-11-10 13:06:01'),
(20, '10', 1, 50, '2018-08-08 23:49:29', '2018-10-07 01:09:32'),
(21, '10', 2, 61, '2018-08-08 23:49:55', '2018-12-01 00:05:18'),
(22, '22', 1, 24, '2018-09-03 04:06:09', '2019-01-03 01:01:24'),
(23, '22', 2, 23, '2018-09-03 04:07:14', '2019-11-11 04:40:08'),
(24, '24', 2, 0, '2018-09-15 21:49:30', '2018-09-15 21:50:49'),
(25, '25', 1, 14, '2018-10-23 01:14:21', '2019-03-02 10:06:10'),
(26, '25', 2, 14, '2018-10-23 01:14:41', '2019-11-11 04:40:08'),
(27, '31', 1, 14, '2018-12-04 23:34:30', '2019-04-13 13:50:08'),
(28, '30', 1, 15, '2018-12-04 23:34:30', '2019-04-13 13:50:08'),
(29, '31', 2, 11, '2018-12-04 23:35:08', '2019-10-19 09:30:28'),
(30, '30', 2, 12, '2018-12-04 23:35:08', '2019-06-13 04:16:37'),
(31, '32', 1, 10, '2018-12-18 23:57:16', '2019-02-09 04:45:23'),
(32, '32', 2, 20, '2018-12-18 23:57:41', '2019-11-11 04:28:59'),
(33, '33', 1, 16, '2018-12-24 00:38:40', '2019-03-03 04:39:17'),
(34, '33', 2, 25, '2019-02-09 04:21:38', '2019-11-03 05:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(12, 'pr-20180808-051614', 1, 2, 3, 2, 300, 0, 0, 10200, 0, 0, 0, 0, 10200, 0, 1, 1, NULL, NULL, '2018-08-08 11:16:14', '2018-09-22 02:53:24'),
(13, 'pr-20180809-054723', 1, 2, 3, 4, 410, 0, 7304.35, 92600, 10, 9260, 0, 500, 102360, 300, 1, 1, NULL, NULL, '2018-08-08 23:47:23', '2018-08-30 03:07:18'),
(14, 'pr-20180809-012348', 1, 1, 1, 5, 400, 0, 4452.17, 75300, 10, 7480, 500, 1000, 83280, 0, 1, 1, NULL, NULL, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(15, 'pr-20180903-100609', 1, 1, 1, 1, 20, 0, 1600, 17600, 0, 0, 0, 100, 17700, 0, 1, 1, NULL, NULL, '2018-09-03 04:06:09', '2018-10-07 22:11:24'),
(16, 'pr-20180903-100714', 1, 2, 3, 1, 20, 0, 1600, 17600, 0, 0, 0, 150, 17750, 3350, 1, 1, NULL, NULL, '2018-09-03 04:07:14', '2018-10-07 00:57:36'),
(18, 'pr-20181022-042625', 1, 1, 1, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 0, 1, 1, NULL, NULL, '2018-10-22 10:26:25', '2018-10-22 10:26:25'),
(19, 'pr-20181022-042652', 1, 2, 3, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 0, 1, 1, NULL, NULL, '2018-10-22 10:26:52', '2018-10-22 10:26:52'),
(20, 'pr-20181023-071420', 11, 1, 1, 1, 15, 0, 750, 8250, 0, 0, NULL, NULL, 8250, 0, 1, 1, NULL, NULL, '2018-10-23 01:14:20', '2018-10-23 01:14:20'),
(21, 'pr-20181023-071441', 11, 2, 3, 1, 15, 0, 750, 8250, 0, 0, 0, 0, 8250, 0, 1, 1, NULL, NULL, '2018-10-23 01:14:41', '2018-10-23 01:14:58'),
(22, 'pr-20181101-045903', 1, 1, 1, 1, 5, 0, 400, 4400, 0, 0, NULL, NULL, 4400, 0, 1, 1, NULL, NULL, '2018-10-31 22:59:03', '2018-10-31 22:59:03'),
(23, 'pr-20181101-045928', 1, 2, 3, 1, 5, 0, 400, 4400, 10, 430, 100, 0, 4730, 500, 1, 1, NULL, NULL, '2018-10-31 22:59:28', '2018-12-04 01:01:34'),
(24, 'pr-20181105-091819', 1, 2, 1, 2, 20, 0, 1450, 15950, 0, 0, NULL, NULL, 15950, 15950, 1, 2, NULL, NULL, '2018-11-05 03:18:19', '2018-11-05 03:21:27'),
(25, 'pr-20181205-053429', 1, 1, 1, 2, 30, 0, 0, 4500, 0, 0, 100, 50, 4450, 4450, 1, 2, NULL, NULL, '2018-12-04 23:34:29', '2018-12-04 23:34:43'),
(26, 'pr-20181205-053508', 1, 2, 3, 2, 30, 0, 0, 4500, 0, 0, NULL, NULL, 4500, 0, 1, 1, NULL, NULL, '2018-12-04 23:35:08', '2018-12-10 00:20:52'),
(27, 'pr-20181219-055716', 1, 2, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 10, 1, 2, NULL, NULL, '2018-12-18 23:57:16', '2018-12-20 00:34:39'),
(33, 'pr-20181224-063840', 1, 1, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, NULL, NULL, '2018-12-24 00:38:40', '2018-12-24 03:04:21'),
(34, 'pr-20190103-070123', 1, 1, 1, 2, 4, 0, 260, 2860, 0, 0, NULL, NULL, 2860, 2860, 1, 2, NULL, NULL, '2019-01-03 01:01:23', '2019-01-29 04:03:24'),
(35, 'pr-20190129-095448', 9, 1, 1, 2, 4, 0, 0, 600, 0, 0, NULL, NULL, 600, 100, 1, 1, NULL, NULL, '2019-01-29 03:54:48', '2019-02-07 07:06:40'),
(36, 'pr-20190129-095558', 9, 2, 1, 2, 5, 0, 0, 650, 0, 0, NULL, NULL, 650, 650, 1, 2, NULL, NULL, '2019-01-29 03:55:58', '2019-01-29 04:03:02'),
(37, 'pr-20190209-102138', 1, 2, 1, 3, 18, 0, 580, 6390, 0, 0, 0, 0, 6390, 6390, 1, 2, NULL, NULL, '2019-02-09 04:21:38', '2019-06-13 04:13:51'),
(38, 'pr-20190209-102208', 1, 1, 1, 2, 13, 0, 150, 1660, 0, 0, 0, 0, 1660, 1660, 1, 2, NULL, NULL, '2019-02-09 04:22:08', '2019-02-09 04:49:40'),
(39, 'pr-20190209-104413', 1, 1, 1, 2, 3, 10, 63, 885, 10, 88.5, NULL, NULL, 973.5, 973.5, 1, 2, NULL, NULL, '2019-02-09 04:44:13', '2019-02-09 04:49:59'),
(40, 'pr-20190303-103917', 1, 1, 1, 1, 10, 0, 0, 100, 0, 0, NULL, NULL, 100, 100, 1, 2, NULL, NULL, '2019-03-03 04:39:17', '2019-03-03 04:40:46'),
(41, 'pr-20190303-104358', 1, 2, NULL, 2, 15, 0, 320, 3570, 0, 0, NULL, NULL, 3570, 1000, 1, 1, NULL, NULL, '2019-03-03 04:43:58', '2019-04-13 11:02:41'),
(42, 'pr-20190404-095757', 1, 1, 3, 2, 2, 0, 0, 300, 0, 0, 0, 0, 300, 300, 1, 2, NULL, NULL, '2019-04-04 03:57:57', '2019-04-13 13:50:08'),
(43, 'pr-20190613-101600', 1, 2, 1, 2, 6, 0, 390, 4290, 0, 0, NULL, NULL, 4290, 4290, 1, 2, NULL, NULL, '2019-06-13 04:16:00', '2019-10-19 09:29:25'),
(44, 'pr-20191019-033119', 1, 2, 3, 2, 2, 0, 130, 1430, 0, 0, NULL, NULL, 1430, 0, 1, 1, NULL, NULL, '2019-10-19 09:31:19', '2019-10-19 09:31:19'),
(46, 'pr-20191103-113949', 1, 2, 3, 2, 20, 0, 0, 150, 0, 0, NULL, 50, 200, 200, 1, 2, NULL, NULL, '2019-11-03 05:39:49', '2019-11-03 05:42:22'),
(47, 'pr-20191109-112510', 1, 1, NULL, 2, 3, 10, 63, 885, 0, 0, NULL, 66, 951, 0, 1, 1, NULL, NULL, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(48, 'pr-20191110-070221', 1, 2, NULL, 1, 100, 0, 0, 100, 0, 0, NULL, 40, 140, 0, 1, 1, NULL, NULL, '2019-11-10 13:02:21', '2019-11-10 13:02:21'),
(49, 'pr-20191111-102155', 1, 2, 1, 1, 10, 0, 800, 8800, 0, 0, 0, 50, 8850, 5000, 1, 1, NULL, NULL, '2019-11-11 04:21:55', '2019-11-11 04:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_product_return`
--

INSERT INTO `purchase_product_return` (`id`, `return_id`, `product_id`, `qty`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 1, 200, 0, 0, 0, 200, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'qr-20180809-055250', 1, 1, 3, 3, 1, 3, 57, 35, 767.73, 5930, 10, 583, 100, 500, 6913, 2, NULL, 'first quotation...', '2018-08-08 23:52:50', '2018-09-04 03:32:16'),
(2, 'qr-20180904-040257', 1, 1, NULL, 1, 1, 2, 3.5, 0, 0, 76, 0, 0, 1.6, 2.7, 77.1, 1, NULL, NULL, '2018-09-03 22:02:57', '2018-09-21 07:05:57'),
(3, 'qr-20181023-061249', 9, 1, NULL, 11, 1, 1, 1, 0, 40, 440, 0, 0, 0, 0, 440, 2, NULL, NULL, '2018-10-23 00:12:49', '2018-12-04 21:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `reference_no`, `user_id`, `customer_id`, `warehouse_id`, `biller_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(2, 'rr-20180809-055834', 1, 1, 1, 1, 1, 1, 20, 0, 0, 40, 10, 4, 44, NULL, NULL, NULL, '2018-08-08 23:58:34', '2018-08-08 23:58:34'),
(3, 'rr-20180828-045527', 1, 1, 2, 1, 1, 1, 2, 0, 0, 44, 0, 0, 44, NULL, NULL, NULL, '2018-08-27 22:55:27', '2018-09-20 11:03:47'),
(5, 'rr-20181007-082129', 1, 11, 2, 2, 1, 1, 1, 0, 0, 250, 0, 0, 250, NULL, NULL, NULL, '2018-10-07 02:21:29', '2018-12-25 22:16:08'),
(6, 'rr-20190101-090630', 9, 1, 1, 1, 1, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2019-01-01 03:06:30', '2019-01-01 03:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_purchases`
--

INSERT INTO `return_purchases` (`id`, `reference_no`, `supplier_id`, `warehouse_id`, `user_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'prr-20190101-090759', NULL, 1, 1, 1, 1, 1, 0, 0, 200, 0, 0, 200, NULL, NULL, NULL, '2019-01-01 03:07:59', '2019-01-01 03:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-01 23:46:44', '2018-06-02 23:13:05'),
(2, 'Owner', 'Owner of shop...', 'web', 1, '2018-10-22 02:38:13', '2018-10-22 02:38:13'),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 00:05:27', '2018-06-02 00:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 2),
(8, 4),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(12, 4),
(13, 1),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(20, 4),
(21, 1),
(21, 2),
(21, 4),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(24, 4),
(25, 1),
(25, 2),
(25, 4),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(63, 4),
(64, 1),
(64, 2),
(64, 4),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(90, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'sr-20180808-043622', 1, 1, 1, 1, 2, 3, 10, 15.65, 350, 380, 10, 30, 50, NULL, NULL, 50, 1, 2, NULL, 0, 'ukgjkgjkgkj', 'gjkgjkgkujg', '2018-08-08 10:36:22', '2018-10-06 09:25:29'),
(2, 'sr-20180809-055453', 1, 3, 1, 1, 3, 63, 0, 469.3, 5103, 5503, 0, 0, 100, NULL, NULL, 500, 1, 2, NULL, 2200, NULL, NULL, '2018-08-08 23:54:53', '2018-08-08 23:56:35'),
(3, 'posr-20180809-063214', 1, 2, 2, 2, 3, 26, 0, 0, 897, 897, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 897, NULL, NULL, '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(4, 'sr-20180825-034836', 1, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 300, NULL, NULL, '2018-08-24 21:48:36', '2018-09-22 02:56:03'),
(6, 'sr-20180826-094836', 1, 2, 1, 2, 1, 1, 0, 0, 18.9, 20, 0, 0, 0, NULL, NULL, 1.1, 1, 4, NULL, 20, NULL, NULL, '2018-08-26 03:48:36', '2018-08-26 05:48:05'),
(7, 'sr-20180827-073545', 1, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 880, NULL, NULL, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(8, 'posr-20180902-053954', 1, 1, 1, 2, 1, 2, 0, 288, 3168, 3529.8, 10, 311.8, 50, NULL, NULL, 100, 1, 4, NULL, 3529.8, 'good customer', 'good customer', '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(9, 'posr-20180903-033314', 1, 1, 2, 1, 1, 10, 0, 0, 20, 20, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 20, NULL, NULL, '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(10, 'posr-20180903-050138', 1, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 200, NULL, NULL, '2018-09-02 23:01:38', '2018-09-09 21:40:28'),
(11, 'posr-20180903-100821', 1, 11, 2, 1, 1, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(12, 'sr-20180903-101026', 1, 3, 1, 5, 1, 10, 0, 1050, 11550, 11550, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-09-03 04:10:26', '2018-09-22 02:55:14'),
(29, 'sr-20180909-093841', 1, 1, 1, 1, 1, 1, 0, 0, 120, 132, 10, 12, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-09-09 03:38:41', '2018-10-06 02:36:52'),
(30, 'posr-20180910-045706', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, NULL, NULL, 0, 1, 2, NULL, 120, NULL, NULL, '2018-09-09 22:57:06', '2018-10-06 00:53:20'),
(31, 'posr-20180926-092059', 1, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 560, NULL, NULL, '2018-09-26 03:20:59', '2018-09-26 03:21:25'),
(32, 'posr-20181004-095547', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-10-04 03:55:47', '2018-10-04 03:55:47'),
(33, 'posr-20181004-100022', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-10-04 04:00:22', '2018-10-04 04:00:22'),
(37, 'sr-20181007-064605', 1, 1, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 00:46:05', '2018-10-07 00:46:28'),
(38, 'posr-20181007-064719', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 00:47:19', '2018-10-07 03:17:02'),
(40, 'posr-20181007-071312', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 01:13:12', '2018-10-07 03:17:39'),
(41, 'posr-20181010-041621', 1, 1, 2, 1, 2, 2, 0, 40, 461, 461, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 461, NULL, NULL, '2018-10-09 22:16:21', '2018-10-09 22:16:21'),
(42, 'posr-20181010-053450', 1, 1, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2018-10-09 23:34:50', '2018-10-09 23:34:50'),
(43, 'sr-20181016-033434', 1, 1, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, 'sss\r\nsss\r\ns', NULL, '2018-10-15 21:34:34', '2018-10-23 00:21:27'),
(55, 'posr-20181021-065334', 1, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2018-10-21 00:53:34', '2018-10-21 00:53:34'),
(57, 'posr-20181021-082612', 1, 11, 2, 1, 2, 3, 0, 40, 482, 575.2, 10, 43.2, 50, NULL, NULL, 100, 1, 4, NULL, 575.2, NULL, NULL, '2018-10-21 02:26:12', '2018-10-21 02:26:12'),
(58, 'posr-20181022-032723', 1, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2018-10-22 09:27:23', '2018-10-22 09:27:23'),
(73, 'posr-20181023-071543', 11, 11, 1, 5, 2, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-10-23 01:15:43', '2018-10-23 01:15:43'),
(74, 'posr-20181023-071644', 1, 11, 2, 1, 3, 3, 0, 200, 2320, 2320, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2320, NULL, NULL, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(75, 'posr-20181101-050027', 1, 11, 2, 1, 5, 12, 0, 626.96, 6980, 7678, 10, 698, NULL, NULL, NULL, NULL, 1, 4, NULL, 7678, NULL, NULL, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(76, 'posr-20181101-050126', 1, 11, 2, 1, 3, 6, 0, 100, 1434, 1424, 0, 0, 10, NULL, NULL, 0, 1, 4, NULL, 1424, NULL, NULL, '2018-10-31 23:01:26', '2018-11-08 03:44:51'),
(79, 'posr-20181105-091516', 1, 11, 2, 1, 7, 52, 0, 1069.57, 14454, 14454, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 14454, NULL, NULL, '2018-11-05 03:15:16', '2018-11-05 03:15:16'),
(80, 'posr-20181105-091958', 1, 11, 2, 1, 3, 8, 0, 191.3, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(86, 'posr-20181105-095948', 1, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 03:59:48', '2018-11-05 03:59:48'),
(88, 'posr-20181105-100258', 1, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 04:02:58', '2018-11-05 04:02:58'),
(94, 'posr-20181126-020534', 1, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(95, 'posr-20181127-093608', 1, 11, 2, 1, 1, 3, 0, 0, 360, 360, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-11-27 03:36:08', '2018-11-27 03:36:08'),
(96, 'posr-20181128-071509', 1, 11, 2, 1, 1, 1, 0, 15.65, 120, 132, 10, 12, NULL, NULL, NULL, NULL, 1, 4, NULL, 132, NULL, NULL, '2018-11-28 01:15:09', '2018-11-28 01:15:09'),
(97, 'posr-20181201-060518', 1, 11, 2, 1, 2, 3, 0, 31.3, 262, 262, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 200, NULL, NULL, '2018-12-01 00:05:18', '2018-12-04 00:21:05'),
(98, 'posr-20181205-053558', 1, 11, 2, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-04 23:35:58', '2018-12-04 23:35:58'),
(99, 'posr-20181205-053719', 1, 11, 1, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-04 23:37:19', '2018-12-04 23:37:19'),
(101, 'posr-20181208-062026', 1, 11, 2, 1, 1, 1, 0, 0, 100, 100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 100, NULL, NULL, '2018-12-08 00:20:26', '2018-12-08 00:20:26'),
(103, 'posr-20181224-045832', 1, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(104, 'sr-20181224-091527', 1, 1, 1, 2, 2, 6, 0, 0, 2508, 2518, 0, 0, 0, NULL, NULL, 10, 1, 2, NULL, NULL, NULL, NULL, '2018-12-24 03:15:27', '2018-12-24 21:55:23'),
(105, 'posr-20190101-054538', 1, 1, 2, 1, 1, 1, 0, 0, 21, 21, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 21, NULL, NULL, '2018-12-31 23:45:38', '2018-12-31 23:45:38'),
(106, 'posr-20190101-091040', 1, 11, 2, 1, 3, 5, 0, 15.65, 860, 860, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 860, NULL, NULL, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(107, 'posr-20190103-065626', 1, 11, 2, 1, 6, 10, 0, 395.65, 5040, 5040, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5040, NULL, NULL, '2019-01-03 00:56:26', '2019-01-03 00:56:26'),
(108, 'posr-20190120-035824', 1, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(109, 'posr-20190129-101443', 9, 11, 1, 5, 2, 2, 0, 40, 540, 540, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 540, NULL, NULL, '2019-01-29 04:14:43', '2019-01-29 04:14:43'),
(110, 'posr-20190129-115041', 9, 11, 1, 5, 2, 3, 0, 100, 1700, 1700, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1700, NULL, NULL, '2019-01-29 05:50:41', '2019-01-29 05:50:41'),
(111, 'posr-20190131-110839', 9, 11, 1, 5, 2, 2, 0, 0, 271, 271, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 271, NULL, NULL, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(112, 'posr-20190202-104045', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(113, 'posr-20190202-114117', 1, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 350, NULL, NULL, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(114, 'posr-20190205-030445', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-05 09:04:45', '2019-02-05 09:04:45'),
(118, 'posr-20190207-111542', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, '2019-02-07 05:15:42', '2019-02-07 05:15:42'),
(120, 'sr-20190207-114036', 1, 1, 1, 2, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 50, NULL, NULL, '2019-02-07 05:40:36', '2019-02-07 07:09:15'),
(121, 'posr-20190209-104814', 1, 11, 2, 1, 7, 17, 0, 55.65, 1272, 1272, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1272, NULL, NULL, '2019-02-09 04:48:14', '2019-02-09 04:48:14'),
(123, 'posr-20190219-023214', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(127, 'posr-20190303-104010', 1, 11, 2, 1, 3, 3, 0, 200, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(128, 'posr-20190404-095555', 1, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 560, NULL, NULL, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(129, 'posr-20190404-095937', 1, 11, 2, 1, 1, 2, 0, 0, 240, 240, 0, 0, 0, NULL, NULL, 0, 1, 2, NULL, 120, NULL, NULL, '2019-04-04 03:59:37', '2019-04-11 04:50:16'),
(130, 'posr-20190421-122124', 1, 11, 2, 1, 3, 3, 0, 58.78, 586, 586, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 586, NULL, NULL, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(131, 'posr-20190528-103229', 1, 11, 2, 1, 4, 4, 0, 240, 2890, 2890, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2890, NULL, NULL, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(132, 'posr-20190613-101637', 1, 11, 2, 1, 3, 3, 0, 40, 840, 840, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 840, NULL, NULL, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(133, 'posr-20190613-101751', 1, 11, 2, 1, 3, 4, 0, 200, 2700, 2700, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2700, NULL, NULL, '2019-06-13 04:17:51', '2019-06-13 04:17:51'),
(134, 'posr-20191019-033028', 1, 11, 2, 1, 4, 4, 0, 240, 2940, 2940, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2940, NULL, NULL, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(138, 'sr-20191031-122937', 1, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-31 06:29:37', '2019-10-31 06:29:37'),
(139, 'posr-20191103-114044', 1, 11, 2, 1, 2, 102, 0, 37.57, 488, 488, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 488, NULL, NULL, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(144, 'posr-20191109-074131', 1, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 1220, NULL, NULL, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(147, 'posr-20191111-104008', 1, 11, 2, 1, 3, 12, 0, 200, 2220, 2220, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2220, NULL, NULL, '2019-11-11 04:40:08', '2019-11-11 04:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_counts`
--

INSERT INTO `stock_counts` (`id`, `reference_no`, `warehouse_id`, `category_id`, `brand_id`, `user_id`, `type`, `initial_file`, `final_file`, `note`, `is_adjusted`, `created_at`, `updated_at`) VALUES
(1, 'scr-20190228-124939', 2, NULL, NULL, 1, 'full', '20190228-124939.csv', NULL, NULL, 0, '2019-02-28 06:49:39', '2019-02-28 06:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'abdullah', 'globaltouch.jpg', 'global touch', NULL, 'ashfaqdev.php@gmail.com', '231231', 'fsdfs', 'fsdfs', NULL, NULL, 'bd', 1, '2018-05-12 22:06:34', '2019-03-02 11:37:56'),
(2, 'test', 'lion.jpg', 'lion', NULL, 'lion@gmail.com', '242', 'gfdg', 'fgd', NULL, NULL, NULL, 0, '2018-05-29 23:59:41', '2018-05-30 00:00:06'),
(3, 'ismail', NULL, 'techbd', NULL, 'ismail@test.com', '23123123', 'mohammadpur', 'dhaka', NULL, NULL, 'bangladesh', 1, '2018-07-20 04:34:17', '2018-07-20 04:34:17'),
(4, 'modon', 'mogaFruit.jpg', 'mogaFruit', NULL, 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', NULL, NULL, 'bd', 0, '2018-09-01 04:30:07', '2018-09-01 04:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'vat@10', 10, 1, '2018-05-12 09:58:30', '2019-03-02 11:46:10'),
(2, 'vat@15', 15, 1, '2018-05-12 09:58:43', '2018-05-27 23:35:05'),
(3, 'test', 6, 0, '2018-05-27 23:32:54', '2018-05-27 23:34:44'),
(4, 'vat 20', 20, 1, '2018-09-01 00:58:57', '2018-09-01 00:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `reference_no`, `user_id`, `status`, `from_warehouse_id`, `to_warehouse_id`, `item`, `total_qty`, `total_tax`, `total_cost`, `shipping_cost`, `grand_total`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'tr-20180808-051710', 1, 1, 2, 1, 1, 100, 0, 100, 0, 100, NULL, NULL, '2018-08-08 11:17:10', '2018-12-24 22:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pc', 'Piece', NULL, '*', 1, 1, '2018-05-12 02:27:46', '2018-08-17 21:41:53'),
(2, 'dozen', 'dozen box', 1, '*', 12, 1, '2018-05-12 09:57:05', '2018-05-12 09:57:05'),
(3, 'cartoon', 'cartoon box', 1, '*', 24, 1, '2018-05-12 09:57:45', '2018-05-12 09:57:45'),
(4, 'm', 'meter', NULL, '*', 1, 1, '2018-05-12 09:58:07', '2018-05-27 23:20:57'),
(6, 'test', 'test', NULL, '*', 1, 0, '2018-05-27 23:20:20', '2018-05-27 23:20:25'),
(7, 'kg', 'kilogram', NULL, '*', 1, 1, '2018-06-25 00:49:26', '2018-06-25 00:49:26'),
(8, '20', 'ni33', 8, '*', 1, 0, '2018-07-31 22:35:51', '2018-07-31 22:40:54'),
(9, 'gm', 'gram', 7, '/', 1000, 1, '2018-09-01 00:06:28', '2018-09-01 00:06:28'),
(10, 'gz', 'goz', NULL, '*', 1, 0, '2018-11-29 03:40:29', '2019-03-02 11:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'huk2mr8VU7qemhOlHh6z86ysavO2AyOZlWuEF8u4Pt3UM3mCZW7A91ru3ygi', '12112', 'lioncoders', 1, NULL, NULL, 1, 0, '2018-06-02 03:24:15', '2018-09-05 00:14:15'),
(3, 'dhiman da', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', 'lioncoders', 1, NULL, NULL, 1, 0, '2018-06-13 22:00:31', '2018-12-25 03:47:07'),
(6, 'test', 'test@gmail.com', '$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS', 'KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm', '1234', '212312', 4, NULL, NULL, 0, 1, '2018-06-23 03:05:33', '2018-06-23 03:13:45'),
(8, 'test', 'test@yahoo.com', '$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC', NULL, '31231', NULL, 4, NULL, NULL, 0, 1, '2018-06-24 22:35:49', '2018-07-02 01:07:39'),
(9, 'staff', 'anda@gmail.com', '$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm', 'nDOCygyT3qWA4kkWUoRe3aSd4vXWo4kpvOBLNynzVkxEJ81UH2BBjto7IZsi', '3123', NULL, 4, 5, 1, 1, 0, '2018-07-02 01:08:08', '2018-10-23 21:41:13'),
(10, 'abul', 'abul@alpha.com', '$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '1234', 'anda', 1, NULL, NULL, 0, 0, '2018-09-07 23:44:48', '2018-09-07 23:44:48'),
(11, 'teststaff', 'a@a.com', '$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '111', 'aa', 4, 5, 1, 0, 1, '2018-10-22 02:47:56', '2018-10-23 02:10:56'),
(12, 'john', 'john@gmail.com', '$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '10001', NULL, 4, 2, 2, 0, 1, '2018-12-30 00:48:37', '2019-03-06 04:59:49'),
(13, 'jjj', 'test@test.com', '$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG', NULL, '1213', NULL, 1, NULL, NULL, 0, 1, '2019-01-03 00:08:31', '2019-03-03 04:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'warehouse 1', '2312121', 'war1@lion.com', 'khatungonj, chittagong', 1, '2018-05-12 07:51:44', '2019-03-02 15:40:17'),
(2, 'warehouse 2', '1234', NULL, 'boropul, chittagong', 1, '2018-05-12 08:09:03', '2018-06-19 22:30:38'),
(3, 'test', NULL, NULL, 'dqwdeqw', 0, '2018-05-30 00:14:23', '2018-05-30 00:14:47'),
(6, 'gudam', '2121', '', 'gazipur', 0, '2018-08-31 22:53:26', '2018-08-31 22:54:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
"
}
