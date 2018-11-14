-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 05:00 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electro-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Sony', '2018-11-09 21:54:35', '2018-11-09 21:54:35'),
(2, 'Samsung', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(3, 'Apple', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(4, 'Acer', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(5, 'MSI', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(6, 'HP', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(7, 'Asus', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(8, 'Dell', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(9, 'Google', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(10, 'Lenovo', '2018-11-09 21:54:36', '2018-11-09 21:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `brand_category`
--

CREATE TABLE `brand_category` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_category`
--

INSERT INTO `brand_category` (`brand_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 1),
(5, 3),
(5, 4),
(5, 5),
(6, 1),
(6, 5),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(8, 4),
(8, 5),
(9, 1),
(9, 2),
(9, 5),
(10, 1),
(10, 4),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(2, 'Tablet', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(3, 'Accessories', '2018-11-09 21:54:36', '2018-11-09 21:54:36'),
(4, 'PC', '2018-11-09 21:54:37', '2018-11-09 21:54:37'),
(5, 'Phone', '2018-11-09 21:54:37', '2018-11-09 21:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-11-09 21:55:01', '2018-11-09 21:55:01'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-11-09 21:55:01', '2018-11-09 21:55:01'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-11-09 21:55:01', '2018-11-09 21:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-11-09 21:55:02', '2018-11-09 21:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-11-09 21:55:03', '2018-11-09 21:55:03', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-11-09 21:55:03', '2018-11-09 21:55:03', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-11-09 21:55:03', '2018-11-09 21:55:03', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-11-09 21:55:03', '2018-11-09 21:55:03', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-11-09 21:55:03', '2018-11-09 21:55:03', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-11-09 21:55:03', '2018-11-09 21:55:03', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-11-09 21:55:03', '2018-11-09 21:55:03', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-11-09 21:55:04', '2018-11-09 21:55:04', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-11-09 21:55:04', '2018-11-09 21:55:04', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-11-09 21:55:04', '2018-11-09 21:55:04', 'voyager.settings.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2017_12_11_061154_create_wishlists_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2018_07_05_045225_create_products_table', 1),
(25, '2018_07_05_050238_create_categories_table', 1),
(26, '2018_07_05_050352_create_brands_table', 1),
(27, '2018_07_05_084128_create_orders_table', 1),
(28, '2018_07_05_130148_create_reviews_table', 1),
(29, '2018_07_12_153814_create_shippings_table', 1),
(30, '2018_07_25_123600_create_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `subtotal` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shipping_id`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 14, 5, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(2, 6, 2, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(3, 4, 4, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(4, 8, 1, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(5, 12, 10, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(6, 1, 10, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(7, 14, 2, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(8, 1, 7, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(9, 18, 10, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(10, 1, 10, NULL, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(11, 17, 9, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(12, 9, 3, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(13, 2, 10, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(14, 17, 7, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(15, 18, 10, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(16, 19, 8, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(17, 20, 9, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(18, 15, 7, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(19, 19, 4, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(20, 6, 6, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(21, 11, 9, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(22, 18, 4, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(23, 2, 5, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(24, 2, 10, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(25, 7, 5, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(26, 7, 1, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(27, 18, 9, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(28, 3, 10, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(29, 11, 10, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(30, 19, 4, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(31, 13, 7, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(32, 9, 2, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(33, 11, 7, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(34, 6, 8, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(35, 18, 6, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(36, 13, 10, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(37, 18, 9, NULL, '2018-11-09 21:54:43', '2018-11-09 21:54:43'),
(38, 11, 10, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(39, 19, 1, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(40, 11, 4, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(41, 15, 4, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(42, 20, 7, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(43, 9, 7, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(44, 15, 3, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(45, 11, 4, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(46, 18, 4, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(47, 14, 10, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(48, 9, 6, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(49, 6, 4, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44'),
(50, 15, 3, NULL, '2018-11-09 21:54:44', '2018-11-09 21:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`) VALUES
(1, 3, 1),
(1, 7, 2),
(1, 8, 7),
(1, 15, 6),
(1, 16, 10),
(1, 20, 6),
(2, 5, 7),
(2, 6, 7),
(2, 10, 1),
(2, 13, 8),
(2, 19, 3),
(3, 1, 5),
(3, 12, 10),
(3, 16, 3),
(3, 17, 5),
(4, 6, 1),
(4, 10, 7),
(4, 12, 2),
(5, 10, 6),
(5, 11, 7),
(5, 17, 1),
(6, 1, 10),
(6, 2, 9),
(6, 7, 1),
(6, 13, 6),
(7, 5, 2),
(7, 12, 5),
(7, 17, 8),
(7, 20, 4),
(8, 1, 4),
(8, 8, 1),
(8, 10, 8),
(9, 3, 7),
(9, 6, 6),
(9, 14, 1),
(9, 15, 8),
(9, 16, 1),
(10, 2, 8),
(10, 11, 5),
(10, 12, 3),
(11, 10, 2),
(11, 12, 8),
(12, 1, 4),
(12, 4, 5),
(12, 14, 5),
(12, 15, 4),
(13, 2, 1),
(13, 3, 10),
(13, 6, 7),
(13, 8, 4),
(13, 16, 6),
(14, 2, 7),
(14, 16, 3),
(14, 20, 9),
(15, 2, 4),
(15, 7, 3),
(15, 10, 10),
(15, 15, 2),
(15, 16, 5),
(16, 1, 1),
(16, 2, 5),
(16, 8, 6),
(16, 13, 2),
(16, 14, 9),
(16, 17, 10),
(17, 1, 8),
(17, 2, 2),
(17, 3, 10),
(17, 9, 1),
(17, 13, 8),
(17, 17, 7),
(18, 12, 6),
(18, 15, 3),
(19, 8, 2),
(19, 10, 1),
(19, 16, 8),
(20, 2, 9),
(20, 16, 4),
(20, 18, 9),
(21, 2, 7),
(21, 8, 5),
(21, 20, 3),
(22, 7, 3),
(22, 8, 1),
(22, 14, 8),
(22, 16, 3),
(23, 1, 8),
(23, 5, 5),
(23, 8, 4),
(23, 11, 6),
(23, 16, 7),
(24, 3, 1),
(24, 4, 7),
(24, 8, 7),
(24, 9, 5),
(24, 12, 7),
(25, 3, 2),
(25, 10, 4),
(25, 11, 3),
(25, 12, 5),
(25, 19, 6),
(26, 1, 8),
(26, 9, 4),
(27, 12, 3),
(27, 16, 1),
(27, 17, 9),
(27, 19, 7),
(28, 3, 4),
(28, 4, 2),
(28, 8, 1),
(28, 12, 4),
(28, 15, 10),
(29, 4, 6),
(29, 12, 5),
(30, 6, 2),
(30, 11, 5),
(30, 12, 10),
(30, 13, 9),
(31, 1, 5),
(31, 8, 4),
(31, 9, 10),
(31, 12, 1),
(31, 13, 3),
(31, 20, 3),
(32, 1, 2),
(32, 10, 8),
(32, 11, 5),
(32, 13, 9),
(32, 16, 7),
(32, 19, 5),
(33, 1, 7),
(33, 9, 2),
(33, 12, 6),
(33, 16, 6),
(33, 17, 6),
(33, 18, 1),
(34, 16, 5),
(34, 20, 3),
(35, 16, 10),
(35, 19, 3),
(36, 4, 2),
(36, 10, 1),
(36, 14, 2),
(36, 15, 1),
(37, 1, 2),
(37, 10, 10),
(37, 18, 6),
(38, 2, 2),
(38, 6, 6),
(38, 12, 3),
(38, 13, 1),
(38, 16, 8),
(38, 18, 4),
(39, 1, 8),
(39, 4, 7),
(39, 7, 1),
(39, 10, 9),
(39, 12, 2),
(39, 16, 6),
(40, 11, 7),
(40, 15, 6),
(40, 16, 4),
(40, 17, 10),
(40, 18, 4),
(40, 19, 7),
(41, 2, 4),
(41, 6, 6),
(41, 8, 10),
(41, 9, 8),
(41, 10, 9),
(42, 2, 8),
(42, 9, 6),
(43, 2, 6),
(43, 3, 8),
(43, 5, 2),
(43, 6, 10),
(43, 13, 9),
(43, 17, 7),
(44, 1, 9),
(44, 2, 9),
(44, 15, 6),
(45, 3, 5),
(45, 10, 1),
(45, 14, 5),
(45, 15, 5),
(45, 16, 5),
(45, 20, 1),
(46, 6, 8),
(46, 8, 4),
(46, 11, 8),
(46, 13, 2),
(46, 15, 7),
(47, 2, 9),
(47, 3, 9),
(47, 20, 10),
(48, 2, 8),
(48, 6, 5),
(48, 12, 9),
(48, 19, 4),
(49, 6, 10),
(49, 10, 9),
(49, 15, 7),
(49, 18, 4),
(49, 19, 4),
(50, 1, 7),
(50, 10, 9),
(50, 11, 3),
(50, 20, 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(2, 'browse_bread', NULL, '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(3, 'browse_database', NULL, '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(4, 'browse_media', NULL, '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(5, 'browse_compass', NULL, '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(6, 'browse_menus', 'menus', '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(7, 'read_menus', 'menus', '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(8, 'edit_menus', 'menus', '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(9, 'add_menus', 'menus', '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(10, 'delete_menus', 'menus', '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(11, 'browse_roles', 'roles', '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(12, 'read_roles', 'roles', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(13, 'edit_roles', 'roles', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(14, 'add_roles', 'roles', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(15, 'delete_roles', 'roles', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(16, 'browse_users', 'users', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(17, 'read_users', 'users', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(18, 'edit_users', 'users', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(19, 'add_users', 'users', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(20, 'delete_users', 'users', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(21, 'browse_settings', 'settings', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(22, 'read_settings', 'settings', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(23, 'edit_settings', 'settings', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(24, 'add_settings', 'settings', '2018-11-09 21:55:05', '2018-11-09 21:55:05'),
(25, 'delete_settings', 'settings', '2018-11-09 21:55:05', '2018-11-09 21:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `saleOff` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `description`, `img`, `price`, `saleOff`, `created_at`, `updated_at`) VALUES
(1, 4, 5, 'Bartoletti-Smith', 'Consequatur sint sed sint dolores quas quos blanditiis veniam. Nobis est aut et veritatis sed omnis.', 'products/product01.png', 3104, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(2, 4, 1, 'Cummerata, Brekke and Brown', 'Corporis laboriosam sapiente repellendus et unde accusantium eius. Odit voluptatum fuga ipsam molestiae ullam. Maiores qui consequatur enim commodi reprehenderit vero.', 'products/product09.png', 3777, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(3, 5, 1, 'Padberg-Crona', 'Accusantium architecto ratione reiciendis adipisci eos. Laudantium ut nihil non similique tempore. Molestias architecto qui molestiae veritatis odio.', 'products/product04.png', 286, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(4, 1, 9, 'Senger PLC', 'Ad ipsa porro omnis animi molestiae. Velit exercitationem enim cumque enim repellendus autem ipsa. Et possimus repellat veritatis ipsam. Neque quam aut aperiam nesciunt sit fugiat.', 'products/product01.png', 2772, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(5, 4, 3, 'Pollich-Conroy', 'Ad suscipit quisquam officiis et iure et. Qui autem hic quae qui. Sed fuga unde et illum eveniet rerum.', 'products/product03.png', 4465, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(6, 3, 10, 'Gutmann-Haley', 'Ratione vel et ea fugiat nihil corporis quas. Vel nisi esse debitis unde officia ipsum. Eos aut sed consequatur aut recusandae sunt.', 'products/product01.png', 4563, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(7, 4, 9, 'Rogahn, Fritsch and Schamberger', 'Est autem praesentium dolor ea. Dolorem mollitia et aspernatur in fugiat at dicta. Consequatur ipsa vel eos impedit quam voluptatem.', 'products/product08.png', 73, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(8, 5, 5, 'Harris-Hansen', 'Sint fugiat autem velit necessitatibus cumque ipsum eum ut. Rem beatae ut non ullam placeat. Maxime alias sapiente qui vitae. Consectetur fugit et commodi optio earum iusto.', 'products/product02.png', 1915, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(9, 1, 2, 'Hauck Inc', 'Aut in nemo recusandae corporis est ea. Voluptate rerum quae nesciunt illum atque. Odio quas at sint rerum dolores. Velit et est quod magni est.', 'products/product05.png', 1280, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(10, 3, 2, 'Trantow, Rogahn and Labadie', 'Nam qui ipsum dolor nisi dignissimos voluptatem eos. Temporibus et nulla asperiores sed.', 'products/product07.png', 997, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(11, 4, 5, 'Ankunding LLC', 'Assumenda expedita accusamus nemo expedita non. Sint ut sed non repellat. Enim alias architecto et modi incidunt est vel est.', 'products/product09.png', 1375, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(12, 4, 4, 'Hauck LLC', 'Error corporis sit vel voluptatem nisi. Et ex voluptatem quae perferendis assumenda et fugiat.', 'products/product09.png', 4478, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(13, 5, 8, 'Mueller Ltd', 'Modi qui mollitia ducimus possimus et dicta. Dolor reiciendis molestias qui cum cumque corrupti veritatis. Doloremque eveniet nulla perferendis libero sit excepturi. Aut ut deserunt quod fuga sed.', 'products/product08.png', 3236, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(14, 2, 1, 'Sipes-Quitzon', 'Et est quos quod aut quia aut. Consequatur aperiam minima facilis quas voluptatibus aut corrupti.', 'products/product04.png', 971, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(15, 5, 2, 'Bednar Inc', 'Dolorem natus est sequi ut aut illo nulla aliquam. Error fugit quas incidunt voluptatem aut. Eum voluptas earum provident aut nemo mollitia nihil.', 'products/product07.png', 3544, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(16, 5, 2, 'Hoeger Ltd', 'Maiores debitis saepe excepturi maxime rem dolorem neque. Est et velit dolor fugit necessitatibus nisi. Iste minus odit quisquam laborum molestiae odit et.', 'products/product07.png', 3312, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(17, 5, 2, 'Doyle LLC', 'Natus labore voluptates et rem sed fuga rerum. Beatae molestiae saepe illum qui laboriosam facilis ut. Aut eos et qui voluptatibus adipisci.', 'products/product09.png', 644, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(18, 2, 7, 'Carter-Grady', 'Quia quibusdam expedita dolorem dolores possimus est non. Eos vero doloribus inventore. Alias culpa aut et reiciendis aut autem.', 'products/product02.png', 3935, 0, '2018-11-09 21:54:40', '2018-11-09 21:54:40'),
(19, 3, 8, 'Nolan-Steuber', 'Iure odit consequatur doloremque possimus. Delectus est autem possimus dolore ullam. Suscipit minus exercitationem eligendi nam.', 'products/product03.png', 4920, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(20, 3, 9, 'Huel Group', 'Delectus nulla in eligendi dolore molestiae aliquam et. Magni odio repellendus voluptates aut doloremque voluptates.', 'products/product07.png', 4166, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(21, 1, 2, 'Gaylord, Brown and Goyette', 'Quis velit odit tempora unde. Omnis itaque quisquam rerum. Quaerat doloremque est eveniet dolorem dolore quae fugit.', 'products/product05.png', 2526, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(22, 5, 5, 'DuBuque Ltd', 'Est aspernatur quasi porro error et qui expedita beatae. Magni laboriosam eos beatae. Illo soluta fugiat dolorem.', 'products/product06.png', 4644, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(23, 3, 4, 'Boehm, Little and Durgan', 'Voluptas similique tempore esse rerum est. Eum et aperiam quas at temporibus officia amet. Quod eligendi corrupti culpa vero.', 'products/product09.png', 705, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(24, 5, 2, 'Fay Group', 'Consectetur esse blanditiis beatae ea quia. Quo corrupti vel quidem rem. Autem eveniet maxime rerum velit. Doloremque necessitatibus accusamus distinctio ut rem unde.', 'products/product03.png', 1873, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(25, 4, 1, 'Mosciski, Ziemann and Mueller', 'Quidem similique culpa nihil qui quia nesciunt aperiam. Id et dolores qui impedit ullam. Dolores dolorem iusto et qui perferendis et necessitatibus.', 'products/product03.png', 3538, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(26, 2, 1, 'McGlynn Ltd', 'Unde quod eum rerum saepe. Quaerat est odit asperiores et. Non nulla amet ducimus ut voluptas quia incidunt pariatur. Amet velit deserunt numquam porro quisquam libero qui.', 'products/product08.png', 3847, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(27, 2, 2, 'Thompson, Kozey and Schiller', 'Quis porro esse quam id impedit eum. Debitis possimus fugit error nulla. Vero facere eligendi voluptatem quia sint commodi.', 'products/product01.png', 2182, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(28, 5, 1, 'Rodriguez-Wuckert', 'Molestiae sed quo amet dolores. Natus tempora velit in molestiae aspernatur nesciunt atque. Ea est iusto minima porro culpa ut. Nobis atque ipsa aperiam sunt totam.', 'products/product02.png', 2148, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(29, 5, 8, 'Ziemann, Shanahan and Kohler', 'Libero rerum nam quia qui facere sunt quo. Aut velit est aut placeat. Laborum qui et voluptatibus porro velit nesciunt consectetur.', 'products/product04.png', 2814, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(30, 2, 10, 'Labadie-Dickens', 'Excepturi atque dolores qui illum rerum. Magnam optio velit est. Et perspiciatis et deleniti repellendus illum. Recusandae quisquam voluptatibus quam similique eum illum laboriosam assumenda.', 'products/product07.png', 2831, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(31, 3, 3, 'Hermiston Group', 'Sit consequuntur eos repellat tempore qui occaecati. Occaecati inventore vel laboriosam laboriosam sint nihil. Quis odit voluptatum sed. Perferendis enim ullam mollitia rerum ab deserunt error.', 'products/product05.png', 3955, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(32, 2, 8, 'Cremin-Kovacek', 'Magni non eum sint nemo. Praesentium cupiditate beatae deleniti architecto rem et qui magnam. Sequi necessitatibus ea qui consectetur.', 'products/product09.png', 4357, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(33, 5, 4, 'Schinner and Sons', 'Voluptas placeat et quas. Nihil placeat porro nisi repellendus est architecto. Rerum officia earum excepturi quam doloremque ut sint.', 'products/product05.png', 4048, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(34, 5, 1, 'McGlynn, West and Champlin', 'Sit eius non suscipit ut. Officia sunt voluptatem fuga est. Quidem officia nam fugit sunt expedita eveniet.', 'products/product08.png', 4153, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(35, 4, 8, 'Schimmel LLC', 'Quas ut nostrum non laboriosam labore voluptas assumenda. Ut dolorem amet doloribus quo. Voluptatem recusandae in fugiat itaque at rerum ipsam. Labore minima officiis ea.', 'products/product07.png', 3553, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(36, 2, 7, 'O\'Connell, Cronin and Schuppe', 'Reiciendis est qui et est distinctio rerum. Vel voluptates odit aut ipsum cumque. Quam voluptatem reprehenderit natus id repellendus similique. Fugiat fugiat voluptate sunt fuga.', 'products/product03.png', 4623, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(37, 3, 10, 'Runte LLC', 'Vel est repellat non est enim temporibus aspernatur qui. Aut excepturi expedita impedit cupiditate exercitationem sit velit repellat. Asperiores ab beatae et iusto. Rem harum et est voluptatem.', 'products/product08.png', 2533, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(38, 3, 10, 'Torphy and Sons', 'Et quisquam tenetur quia ullam velit. Nisi voluptas ut non fugiat. Est quis ut est magnam consequuntur amet sapiente ut.', 'products/product05.png', 2162, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(39, 3, 3, 'Hahn Ltd', 'Et laborum dicta voluptas distinctio delectus accusamus aut sed. Accusamus in laboriosam earum consequuntur repellendus. Architecto omnis corporis voluptas voluptatum.', 'products/product06.png', 1985, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(40, 2, 10, 'Olson and Sons', 'Reiciendis voluptatibus architecto quaerat illo provident autem dignissimos. Assumenda quasi odit libero omnis labore. Nostrum eligendi possimus quisquam aperiam vel.', 'products/product05.png', 4902, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(41, 5, 7, 'Jenkins, Steuber and Kuphal', 'Nihil rerum voluptates deserunt cum dolores maxime. Accusantium omnis quos recusandae dolores. Omnis sunt inventore error beatae rem illum. Ea earum a exercitationem aut non reiciendis.', 'products/product01.png', 2834, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(42, 3, 2, 'Armstrong-Emard', 'Odio veritatis sapiente omnis animi consequatur. Odio placeat vitae ullam. Voluptatem rerum ratione ipsam adipisci.', 'products/product01.png', 4062, 0, '2018-11-09 21:54:41', '2018-11-09 21:54:41'),
(43, 5, 6, 'Grimes-Cummings', 'Blanditiis atque quis dolores fugiat. Ut quasi ut odio hic nesciunt est quia ea. Fuga impedit perspiciatis suscipit.', 'products/product07.png', 170, 0, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(44, 5, 7, 'Kilback, Hackett and Mante', 'Dolore optio facilis reprehenderit recusandae. Voluptatem alias beatae tenetur unde. Dolorum nostrum laudantium quos ad magni voluptas.', 'products/product02.png', 1354, 0, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(45, 3, 7, 'Kirlin-Purdy', 'Ut sint modi necessitatibus eaque qui iste. Voluptas veritatis ut et nemo quia molestias ex. Necessitatibus laboriosam cum neque sint commodi officiis.', 'products/product07.png', 2618, 0, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(46, 5, 3, 'Halvorson Ltd', 'Voluptatibus consequatur illo libero non. Quia quia quo pariatur cum. Et et aperiam reprehenderit. Quod neque et alias odit molestiae perspiciatis rem corporis.', 'products/product04.png', 4393, 0, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(47, 1, 3, 'Brekke-Predovic', 'Aut qui dolore repellendus tempora voluptatem quo. Et eius voluptatum repellat similique ipsum tempore. Suscipit odio aliquid corporis soluta. Numquam ipsum et necessitatibus aliquam.', 'products/product05.png', 4710, 0, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(48, 5, 8, 'Stroman-Abernathy', 'Dolorem repudiandae et inventore ea saepe. Sit ipsum rerum consequatur voluptatem non qui minima repellendus. Fugit delectus impedit sint adipisci reiciendis.', 'products/product05.png', 1048, 0, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(49, 3, 5, 'Reichel, Fadel and Sauer', 'Id enim accusamus consequatur cum est sed. Quasi commodi molestiae et et porro quia. Sed tenetur aut qui tempora.', 'products/product04.png', 4408, 0, '2018-11-09 21:54:42', '2018-11-09 21:54:42'),
(50, 1, 7, 'Kub, Kuhn and Koss', 'Assumenda quis ratione hic et consectetur eveniet alias. Fuga consequatur corporis eum possimus assumenda. Fuga voluptas porro earum.', 'products/product02.png', 3925, 0, '2018-11-09 21:54:42', '2018-11-09 21:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `votes` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `body`, `votes`, `created_at`, `updated_at`) VALUES
(1, 17, 20, 'Reiciendis quaerat inventore magni deleniti eos. Rerum soluta voluptas in assumenda. Esse placeat sint velit.', 2, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(2, 12, 19, 'Quis ut eos rerum esse atque possimus. Veniam fugiat voluptatibus aliquam consectetur dolorem qui. Aperiam eius adipisci sunt.', 1, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(3, 4, 19, 'Aliquam animi eos perferendis quisquam quia perspiciatis aut. Est culpa unde et consequuntur necessitatibus dolorem qui. Quis qui aspernatur hic deserunt ducimus corrupti.', 3, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(4, 5, 18, 'Consequatur et ut expedita nisi accusantium. Quis occaecati expedita maxime cumque aperiam sed. Libero dignissimos vel a harum et ea eligendi saepe.', 1, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(5, 20, 20, 'Magni earum nisi eveniet ut quia et. Rerum perferendis provident rerum facilis nulla tempora. Sequi fugit repudiandae sit temporibus.', 3, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(6, 13, 13, 'Minus asperiores sed consequatur autem laboriosam. Nobis at molestias vitae velit illum. Quo rerum error amet voluptatem sunt sed.', 2, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(7, 16, 13, 'Libero a perspiciatis ea quaerat. Ut ad quia deleniti praesentium tempore nihil autem. Voluptas quo quisquam quo quia saepe.', 2, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(8, 7, 2, 'Aut cum quae voluptatem minima placeat atque. Optio ut eos cumque architecto nulla consectetur recusandae. Ad mollitia cum repudiandae ipsum. Ut sit laboriosam ex odio vero qui dolor.', 5, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(9, 14, 6, 'Qui ut nihil qui earum aliquid ad. Nam officiis nemo dolorum mollitia quia enim possimus.', 1, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(10, 16, 10, 'Delectus harum mollitia rerum illum mollitia ullam. Perspiciatis in in expedita sed corporis qui aut. Veniam quia placeat fugiat aut cumque deserunt.', 3, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(11, 2, 14, 'Ea vitae quod at possimus temporibus nobis. Quasi fugit quia aspernatur quia dolor et dignissimos itaque. Eaque asperiores sit ratione aut dicta deserunt repellendus.', 2, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(12, 16, 12, 'Dolores ab quo alias. Aliquid consequatur aut commodi ut et. Ipsa repellendus vel et rem earum voluptas sit.', 4, '2018-11-09 21:54:52', '2018-11-09 21:54:52'),
(13, 14, 4, 'Nam dolorum doloremque ea reiciendis. Iure et nam sapiente consequatur sapiente cum. Quam a accusantium sed ea sed. Quibusdam inventore minima veniam temporibus voluptates est.', 5, '2018-11-09 21:54:53', '2018-11-09 21:54:53'),
(14, 5, 4, 'Omnis perferendis aliquid ducimus voluptatem eveniet. Ut quibusdam ea inventore et nihil distinctio. Voluptates ipsam expedita possimus voluptatibus.', 3, '2018-11-09 21:54:53', '2018-11-09 21:54:53'),
(15, 12, 16, 'Dignissimos quia eligendi quae et officia autem. Architecto atque ipsam maxime atque assumenda incidunt. Harum reprehenderit id tempore.', 5, '2018-11-09 21:54:53', '2018-11-09 21:54:53'),
(16, 17, 10, 'Qui veritatis quae natus quaerat. Totam sunt et quaerat eaque et. Ea dolorum harum saepe. Itaque sit repudiandae odio veniam. Ex natus aspernatur est non sequi ab sed.', 4, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(17, 5, 16, 'Qui perferendis modi tempore ea quis. Eaque ut sunt aut laborum. Totam accusantium pariatur voluptas est qui. Et alias eum odio hic.', 4, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(18, 11, 7, 'Sed repellendus commodi minus molestiae error officiis rerum. Qui nisi voluptatibus adipisci rem atque voluptatem libero. Culpa natus ad ducimus aliquid ullam.', 2, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(19, 10, 8, 'Ut architecto quis cupiditate perferendis rerum enim quod. Modi molestias provident veniam alias voluptatum consequatur ducimus. Illum perspiciatis sunt molestiae eveniet temporibus est doloremque.', 5, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(20, 1, 6, 'Ducimus consequatur autem omnis at aliquam necessitatibus. Ab aliquid non quia ab sunt. Est qui asperiores ratione sit nobis.', 2, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(21, 2, 20, 'Quasi laboriosam dolore corporis est consequatur odit laborum. Tempore voluptates libero error. Alias ut quia a ab. Id recusandae alias sed debitis mollitia distinctio sed qui.', 5, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(22, 3, 5, 'In exercitationem tempora hic qui nihil. Eos sapiente repellendus sint exercitationem et nesciunt est. Rerum dicta et et ipsum. Dolorum distinctio eius totam quis ratione placeat impedit.', 5, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(23, 3, 16, 'Error necessitatibus illo ex velit. Exercitationem unde placeat eaque odio. Aut occaecati quis perferendis sed.', 4, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(24, 3, 18, 'Vel cum placeat laboriosam explicabo nihil sed dolorum. Repellendus sequi dolores odio. Facilis nobis tenetur dolorem quae dolorem maxime.', 5, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(25, 18, 6, 'Necessitatibus in modi quasi asperiores ducimus doloremque omnis. Corporis alias ut sed tempore. Et molestias eum id quae et.', 5, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(26, 11, 2, 'Cum assumenda reprehenderit ipsum tempora. Ut est dolorum ut incidunt vel qui itaque illum. Occaecati eos earum sed et.', 2, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(27, 2, 19, 'Eligendi perferendis dolorum sunt sint mollitia. Labore laboriosam expedita omnis illo qui. Et sit dolorem quia dolores ab facere doloremque. Aspernatur consequuntur dignissimos est iusto magnam.', 4, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(28, 1, 2, 'Voluptatum blanditiis at enim atque modi quia. Et temporibus aut illo qui cupiditate. Ut saepe consequuntur rerum porro.', 5, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(29, 14, 13, 'Iure qui sequi laudantium nemo praesentium. Quisquam aut ea sequi. Perspiciatis voluptas sit vel tempora. Rerum quae optio et nisi nisi explicabo debitis.', 4, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(30, 20, 10, 'Ea rem rerum error voluptas porro. Illum qui eos dolor minima atque. Fuga voluptatem tempora eum suscipit aut minima et. Delectus aut maiores suscipit debitis.', 2, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(31, 12, 19, 'Voluptates ut dignissimos ut consequuntur qui et molestiae. Odit praesentium cupiditate recusandae tenetur in vitae sunt.', 2, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(32, 3, 2, 'Enim veniam dolores est ipsum qui labore. Aut est porro et nihil. In non fugit adipisci.', 4, '2018-11-09 21:54:54', '2018-11-09 21:54:54'),
(33, 8, 9, 'Voluptatem voluptatem ratione ut temporibus quidem accusantium odit accusantium. Corporis distinctio ullam nisi repellat ab aut.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(34, 18, 17, 'Quidem esse quis distinctio eius velit ea fuga. Sapiente consequatur a et quibusdam eos ullam eos. Iusto temporibus mollitia ipsum quia commodi. Perferendis est eos perferendis ad non porro nostrum.', 2, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(35, 8, 15, 'Quis totam qui non numquam in. Repellat deserunt asperiores quaerat voluptate sed. Et reiciendis quaerat molestiae velit labore in magni. Soluta repudiandae et omnis.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(36, 17, 18, 'Repellendus quidem rerum non nisi rerum odit dolores optio. Omnis ad rem fuga.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(37, 5, 19, 'Hic est voluptates corporis minima maiores non. Quam provident qui aperiam consectetur. Aut numquam natus sunt incidunt saepe itaque. Nisi repudiandae mollitia vitae.', 2, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(38, 11, 12, 'Et ex minima nesciunt explicabo doloremque non odio non. Ut quo sed veniam accusamus. Praesentium officiis officiis et quis quasi eum accusantium.', 4, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(39, 11, 19, 'Quaerat tempore ut magnam error nulla facere neque. Repellendus distinctio alias eum consequatur possimus et.', 4, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(40, 2, 11, 'Id ullam dolores occaecati temporibus est ut aut officiis. Enim quisquam dolores animi ea quis libero ipsam vitae. Aut tempora et corporis fugit similique consequatur assumenda.', 1, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(41, 7, 11, 'Necessitatibus eum est praesentium non ratione assumenda voluptatem. Repudiandae voluptatibus sed architecto aliquid doloribus ut. Hic dolor voluptatem necessitatibus atque.', 1, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(42, 9, 19, 'Magni nesciunt accusantium a laborum. Ipsa magnam quae dolorum. Deleniti voluptatem distinctio dolorem suscipit assumenda ut fuga tempore.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(43, 15, 12, 'Ex sequi sint asperiores ad recusandae repudiandae et. Omnis minus quidem nisi consequatur nulla. Itaque asperiores quidem eaque autem et aut molestiae. Voluptate beatae porro voluptatem ut.', 4, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(44, 17, 1, 'Aut aut nostrum similique esse facere est. Quia deserunt temporibus quas incidunt. Aperiam aliquid atque architecto dolore quod.', 4, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(45, 13, 6, 'Vitae commodi sit excepturi laudantium inventore quo blanditiis. Quibusdam distinctio quaerat consequatur consectetur ea necessitatibus. Ratione ea dolores tempore rerum vel provident aut pariatur.', 2, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(46, 1, 10, 'Dicta reiciendis ipsa perferendis est dolorem soluta sapiente. Cumque in labore voluptas natus. Dolore ad reprehenderit ut quia.', 1, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(47, 6, 6, 'Veniam sequi fuga amet facere nisi omnis nihil. Qui quia in ullam sapiente. Quam nulla incidunt reprehenderit temporibus. Similique magnam vero dicta ut sit laboriosam et.', 1, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(48, 4, 5, 'Debitis voluptatibus esse temporibus quis. Tenetur perferendis animi dolore totam nostrum distinctio aut. Rerum dignissimos aspernatur dolorum. Rerum enim quod molestiae temporibus quisquam.', 2, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(49, 7, 7, 'Voluptatibus nostrum nisi molestias eveniet. In et adipisci quasi nihil. Veniam explicabo cupiditate nobis enim sunt quos officia corrupti.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(50, 7, 7, 'Aut consequatur est dolores omnis nesciunt dolor. Nemo officiis veniam doloremque minima cupiditate iusto explicabo. Labore voluptas sunt itaque veniam voluptatem a.', 3, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(51, 6, 20, 'Laudantium blanditiis alias est voluptatum. Autem iste minus excepturi optio et ut aut sed. Voluptas dolor exercitationem quos suscipit eveniet consequatur aut eos.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(52, 12, 16, 'Quia quod eum enim perferendis. Et aliquid voluptas magnam sunt. A dicta ad maiores ipsam ut nihil. Voluptas dolorem quo pariatur dolorem exercitationem repellendus rerum.', 1, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(53, 8, 3, 'Necessitatibus qui aut et esse. Optio ut quis et in nobis incidunt qui. Quis aut velit pariatur dolor minus.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(54, 6, 17, 'Ipsa ut qui pariatur doloremque quisquam non qui. Perspiciatis unde nostrum ipsum autem error quibusdam praesentium. In placeat quasi molestiae ipsam iure distinctio. Omnis nulla nam modi fuga.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(55, 13, 20, 'Molestiae dolore libero et eligendi. Ut aut earum aut. Numquam consequatur odio deleniti et consequatur ut. Illum sequi sit tempora veritatis nesciunt.', 1, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(56, 10, 8, 'Ullam cumque laudantium aliquid. Dolore dolor qui odit distinctio ipsum. Ratione nobis ea omnis totam suscipit sit. Vitae id non sapiente delectus consequatur minima ut id.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(57, 5, 2, 'Tempore sit eveniet quo nostrum. Dolor et ea provident. Perspiciatis suscipit totam cupiditate hic. Rerum dolorum laborum nisi at est dolorem autem.', 2, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(58, 16, 6, 'Exercitationem cumque est qui qui assumenda. Praesentium doloribus cumque autem voluptates. Culpa officiis molestias sed eos. Illum aut minus repudiandae quos voluptas in.', 5, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(59, 16, 9, 'Et dolorem corporis eum omnis mollitia amet veniam. Cumque porro et omnis exercitationem. Perspiciatis praesentium ut dolorum asperiores. Sunt voluptatem dolores et molestiae.', 3, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(60, 9, 8, 'Tempore unde dicta sed amet rerum consequuntur qui. Exercitationem accusamus eos aut repellendus excepturi vitae. Voluptas quae et rerum qui.', 4, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(61, 11, 19, 'Ipsum non reprehenderit odit non et recusandae. Laboriosam consequatur similique hic ea debitis est et. Iusto qui velit nostrum laborum odit quaerat fugit.', 3, '2018-11-09 21:54:55', '2018-11-09 21:54:55'),
(62, 7, 13, 'Fugit laborum cum nesciunt. Nihil quas quae aperiam repellat temporibus at. Eos adipisci consequatur dolore itaque deserunt et veniam.', 3, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(63, 10, 20, 'Quos labore maiores aut quisquam tenetur est. Quasi magni explicabo voluptatem cum sit. Voluptatem nesciunt blanditiis labore et. Nulla pariatur cumque atque odit quia facilis.', 2, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(64, 2, 3, 'Sint et quas minus mollitia quibusdam. Vel voluptas ut ad nostrum repellendus voluptatem eum non. Molestiae vel quia pariatur in veritatis.', 1, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(65, 1, 9, 'Minus aut omnis impedit dolorum. Natus sit earum minima quo repellendus eveniet et in. Nisi corrupti architecto voluptates quasi aut ut.', 3, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(66, 10, 11, 'Error voluptatem aliquam quos vero natus. Minus nisi est molestiae assumenda. Voluptas hic sunt vel omnis molestiae veniam.', 2, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(67, 7, 14, 'Dolor maiores in nulla. Ut laborum laboriosam illo quod sed asperiores quis consequatur. Ducimus qui harum fugiat. Nulla repudiandae libero qui esse.', 4, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(68, 2, 15, 'Quae excepturi reiciendis iure voluptas. Consequatur itaque iusto eos ad facere saepe. Non esse id adipisci ea aut praesentium quasi.', 4, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(69, 7, 3, 'Aut aut omnis labore quis provident numquam. Debitis minima sapiente repellat voluptatibus.', 3, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(70, 5, 5, 'At rem et molestiae accusantium aut. Nesciunt quaerat harum sapiente delectus. Earum nam voluptate possimus maxime quos. Vel qui autem eos ut unde.', 1, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(71, 19, 9, 'Dignissimos fugiat et possimus ab perferendis perferendis sit. Ut explicabo dolores eum sit molestiae. Id sequi mollitia et. Sapiente modi molestiae neque explicabo est.', 4, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(72, 15, 18, 'Omnis repudiandae et voluptas. Magni voluptatem aliquid earum autem eaque est aliquam. Et tempore impedit fugiat sapiente necessitatibus facilis sint vero.', 2, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(73, 14, 9, 'Nam mollitia quas eligendi quaerat dolorem voluptatem. Iusto odio impedit neque ipsam asperiores vel. Quis aut incidunt impedit dolorem reprehenderit ut.', 4, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(74, 3, 9, 'A veniam consequatur aut unde architecto ullam. Aliquam et modi et et qui suscipit veritatis. Quia voluptatem aut cum et accusantium dolore. Quis quos quae est velit id ut.', 5, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(75, 13, 19, 'Labore blanditiis cum rerum aliquam error et incidunt. Est magni ea voluptas odit ipsum et ipsam est. Delectus laudantium labore veniam consequuntur.', 4, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(76, 16, 9, 'Saepe optio consequatur officia ad et ea voluptatem occaecati. Natus explicabo qui voluptatem sint veritatis aut. Eius provident voluptate fugiat consequatur repellendus voluptas.', 3, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(77, 16, 7, 'Autem fuga porro praesentium et veniam corrupti corrupti et. Qui fuga et sed. Temporibus adipisci repellat neque.', 4, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(78, 1, 20, 'Dolorem est non omnis accusantium. Eos iste at vero dolores tenetur quo placeat recusandae. Optio natus quo deserunt aut magni ab fugiat.', 1, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(79, 12, 16, 'Velit assumenda expedita quia eos. Vero quibusdam nisi temporibus. Harum dolor quibusdam corporis nisi non.', 4, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(80, 11, 6, 'Quia est id temporibus minima neque. Quia perspiciatis iusto dolorem mollitia harum. Voluptas dolorem explicabo enim sunt possimus alias ut.', 5, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(81, 11, 16, 'Earum vel placeat explicabo ex sunt. Eius velit quod voluptatem pariatur. Dolore dolor sed provident commodi accusamus rerum.', 1, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(82, 11, 4, 'Sint doloribus consequatur quis molestiae. Ut voluptas non sunt quae eius. Veniam ducimus temporibus expedita ab veniam iste soluta perspiciatis.', 5, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(83, 20, 2, 'Ut possimus et sunt suscipit amet veritatis tempora quia. Et eligendi fugit incidunt.', 2, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(84, 20, 4, 'Tempore cum voluptatibus corrupti aut. Officiis distinctio provident quasi. Nihil est quia ea inventore natus. Eos magnam voluptatem illo aut corrupti eum sunt.', 1, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(85, 7, 8, 'Itaque nihil modi aut itaque qui. Qui aut itaque enim dolor pariatur. Aliquid commodi soluta et beatae facilis voluptatem. At aut nobis nemo et officia vel.', 1, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(86, 13, 1, 'Aliquam sed asperiores officia quaerat maxime nulla laborum. Praesentium accusamus aut aperiam et. Quasi laudantium molestias et ut id dolorum aut hic.', 5, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(87, 3, 1, 'Cupiditate error voluptas deleniti. Quod incidunt est eveniet nemo quis voluptatem et. Aliquid culpa deserunt sint voluptatem. Ab et facilis voluptatem ut voluptatum consequatur neque.', 5, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(88, 14, 10, 'Eum illo adipisci quia ullam perspiciatis. Ea et earum numquam quos perferendis numquam libero. Quia earum similique laudantium fuga quibusdam.', 4, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(89, 7, 19, 'Minus nesciunt deleniti sit. Facilis quas voluptatibus autem voluptas. Consequatur minus pariatur asperiores dignissimos sapiente molestiae placeat. Sed ab voluptatibus molestiae labore natus quam.', 4, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(90, 7, 7, 'Rerum vel necessitatibus ipsum maiores sit eum omnis. Aut et voluptatem numquam animi. Veniam error excepturi omnis quia.', 1, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(91, 8, 15, 'Qui quisquam saepe aut debitis quidem at recusandae qui. Itaque minus autem quia dolorum quae. Aut animi cupiditate soluta et. Nostrum eos vel ea eos accusantium.', 2, '2018-11-09 21:54:56', '2018-11-09 21:54:56'),
(92, 1, 7, 'Aut aut ducimus aliquid autem est porro. Error voluptas aperiam eos hic provident natus animi. Eos aut blanditiis qui aliquid.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(93, 16, 1, 'Temporibus est quos maxime doloremque qui aspernatur fugit. Velit beatae consequatur ut qui. Saepe blanditiis quia architecto quia.', 1, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(94, 14, 18, 'Non corporis perferendis iste autem enim. Esse fugiat rerum eum maiores non. Voluptates nihil aliquid et et. Dolorum repudiandae ipsa amet voluptas. Quis architecto est et.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(95, 5, 6, 'Incidunt sit voluptatem ut saepe quis ea porro. Dolorem corrupti repellendus voluptate quisquam eum. Nostrum veniam repellat quam adipisci. Quis aperiam veniam aut officia quibusdam qui.', 4, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(96, 12, 17, 'Ut ut fuga incidunt quae maxime omnis sequi. Quibusdam error nobis dolores amet et quia. Officiis assumenda molestias iste facilis.', 4, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(97, 9, 15, 'Consequuntur odit velit numquam provident. Blanditiis eveniet qui dolorem. Suscipit architecto quidem aut odio. Cupiditate explicabo et voluptatem.', 3, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(98, 18, 10, 'Ut et voluptatem nulla aut. Molestiae ut officia alias aut consequuntur earum aut. Est porro non quas voluptas eius explicabo.', 4, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(99, 11, 13, 'Doloremque repudiandae consectetur aliquam eos. Omnis ut distinctio ut quisquam itaque deserunt. Qui possimus laboriosam architecto atque non delectus harum. Ab voluptas consequatur nemo nam.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(100, 7, 9, 'Non officiis culpa accusantium qui corrupti impedit. Expedita fugit quia nesciunt quia. Repellat incidunt totam et est natus eius doloremque voluptas. Enim saepe in nobis distinctio optio.', 2, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(101, 11, 14, 'Accusamus nemo quisquam et ipsum non ut. Nihil doloremque repudiandae quam sit ipsum. Id dolorem quae vero eos odio sed aspernatur. Iure natus molestiae excepturi ex porro perspiciatis.', 2, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(102, 7, 5, 'Rerum rerum molestias tempora necessitatibus eaque qui ratione. Dignissimos natus velit qui accusantium aspernatur ut. Sit veritatis consectetur rerum dolore velit.', 2, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(103, 11, 6, 'Sint alias sed sed enim ipsa quas officiis. Blanditiis quia quae nesciunt dolores cupiditate ex laboriosam dolorum. Nisi consequatur qui corporis ullam et cupiditate. Aut accusantium qui rem minus.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(104, 9, 14, 'Voluptatum explicabo voluptatem ea sit debitis placeat inventore. Voluptate atque et dolorum libero et et. Omnis ipsum in laboriosam quia. Et ut fuga voluptatibus et ab eaque sit minima.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(105, 1, 12, 'Exercitationem nostrum suscipit eum suscipit quisquam dolores. Rerum ullam sed possimus quia explicabo rerum placeat incidunt. Ad odit maxime esse fuga aut aut.', 1, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(106, 20, 15, 'A ea veniam voluptatum. A voluptas ut doloremque. Corporis ipsa aut quidem similique. Delectus sequi est et et tempore.', 4, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(107, 4, 8, 'Autem et rerum omnis ut nisi. Illo sit architecto repudiandae voluptas eos dolore sed. Inventore adipisci consequatur quo animi aperiam nisi aut.', 1, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(108, 1, 10, 'Est tempora soluta temporibus. Quia doloremque eos eveniet itaque. Voluptas vel soluta et animi dolores nemo rerum. Quam harum eum molestias illum qui.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(109, 6, 5, 'Soluta eos ut ea placeat repellat aut sequi illo. Et quod et perspiciatis modi aut eligendi beatae.', 1, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(110, 8, 10, 'Ipsam dicta velit ad nam. Ab aut et dolor et corporis. Non similique ad quos quo aliquam similique facere alias.', 2, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(111, 6, 17, 'Voluptas quod repudiandae vero accusamus sit nulla. Nisi expedita qui vitae excepturi et.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(112, 13, 7, 'Perspiciatis error nihil fugiat magnam praesentium. Ex minima rerum molestiae delectus porro quia voluptatum. Eum enim dolorem velit nobis quo voluptates et. Molestias ex vel ex atque et voluptatem.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(113, 8, 4, 'Aut optio tempore blanditiis explicabo. Nobis exercitationem laborum perspiciatis qui nemo. Dolor doloribus rem aut voluptas reprehenderit. Error ipsa vel voluptatem vitae.', 4, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(114, 18, 7, 'Aliquid consectetur nobis facere et nulla beatae aut. Repellat dolor enim est. Sunt mollitia repellendus minus vel.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(115, 9, 6, 'Ad alias ut explicabo maxime iste consequatur et. Fugiat doloribus quis sint et. Hic optio officia voluptas.', 2, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(116, 4, 2, 'Ratione sequi quibusdam ut totam et omnis. Blanditiis aut odit veniam modi. Est incidunt quas pariatur dolorem. Dolorem qui aperiam dolor iste temporibus.', 2, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(117, 9, 3, 'Magnam qui velit explicabo vitae qui ipsum dolor. Cum nisi reiciendis quibusdam enim.', 3, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(118, 18, 18, 'Quia quisquam reiciendis nihil et doloribus. Aperiam laboriosam deleniti nihil quas ratione dicta. Quod cumque atque omnis pariatur ut. Similique ex odio atque commodi nobis.', 3, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(119, 14, 2, 'Ipsa et at omnis sint. Officiis blanditiis reprehenderit consequatur earum repellat et. Fuga quia porro eius fuga ipsum et adipisci.', 3, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(120, 17, 10, 'Labore qui perspiciatis sed. Eaque omnis exercitationem voluptas qui quod amet animi. Occaecati perspiciatis ut nisi quis.', 1, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(121, 18, 6, 'Est sunt voluptas ut corrupti doloremque quo quidem exercitationem. Qui vel neque quaerat dolorem. Ut quis exercitationem mollitia voluptatem.', 5, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(122, 3, 6, 'Quibusdam dolorem rerum laborum dolor aliquid voluptas facilis. Deserunt et et est sunt in quis. Id repellat molestiae laborum facilis iusto.', 1, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(123, 8, 19, 'Dicta et rerum ipsum et eos. Possimus omnis corporis tempora. Fuga sunt minima dolore. Molestiae explicabo quae officiis.', 2, '2018-11-09 21:54:57', '2018-11-09 21:54:57'),
(124, 3, 6, 'Vel officiis vitae tempore asperiores et. Atque et unde eos et quia. Tempore sint ut aut placeat eos hic hic.', 4, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(125, 9, 16, 'Nisi inventore aliquid eum quo voluptas qui. Dolorem deleniti quia voluptatum molestiae. Eos dignissimos quibusdam in atque veritatis dicta ratione nihil. Qui ipsa sit vero nemo at illum.', 4, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(126, 7, 12, 'Accusamus et maiores et voluptatem. Libero est libero quaerat id. Voluptatem velit temporibus deserunt minima molestiae et doloribus. Quia illum at at ea quaerat eligendi et.', 4, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(127, 13, 1, 'Id aut voluptas et molestias rem quam necessitatibus. Qui eligendi unde beatae ut neque libero. Aperiam soluta non praesentium explicabo aliquid soluta voluptatem.', 3, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(128, 8, 11, 'Laborum sit ea praesentium ullam. Mollitia et qui laudantium beatae et voluptatem similique. Vel doloribus rem corrupti rerum eos. Quod non excepturi perspiciatis dolorem facilis.', 3, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(129, 8, 9, 'Velit excepturi porro sed est. Omnis voluptate quisquam omnis doloremque cumque. Voluptatibus distinctio eligendi libero maxime nihil vel at.', 1, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(130, 3, 17, 'Necessitatibus a consequuntur officia saepe. Voluptate aut numquam exercitationem maiores dicta maiores id. Harum nesciunt ipsum enim molestias minus. Sint hic optio eum hic sunt.', 1, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(131, 8, 3, 'Est vitae repellat enim at quae iure rerum. Dolores sed est totam nemo ea qui. Fugit quaerat laborum dicta assumenda error molestiae molestias. Ducimus illum tempore omnis accusamus.', 3, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(132, 20, 3, 'Voluptatem quos optio distinctio et reprehenderit architecto iusto voluptate. Et ratione qui tenetur enim consequatur doloribus.', 2, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(133, 19, 6, 'Voluptates dolorem enim eius. Facere nobis ut veritatis nemo ut architecto ad. Molestias dolores amet totam. Delectus ea quis aut non itaque neque fuga sed. Dolore veniam quaerat molestiae.', 4, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(134, 5, 5, 'Sit quas ipsum dolore optio et omnis. Repellat non quis voluptatum autem et rerum. Eum dicta quisquam dignissimos in similique amet et.', 1, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(135, 7, 7, 'Molestiae ut accusantium iusto. Consectetur eaque assumenda rem quo. Aperiam perspiciatis ullam esse in. Aliquam enim ab harum aliquam iusto iure.', 3, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(136, 10, 4, 'Aut dignissimos quia asperiores dolorem dicta fugiat. Vero ut quaerat amet dolores expedita delectus.', 1, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(137, 19, 12, 'Illum rem ut rerum eos quasi tempore deserunt labore. Non earum inventore aliquam animi. Eveniet porro modi iure quia molestias enim incidunt provident. Error voluptas doloribus deleniti autem rerum.', 4, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(138, 2, 19, 'Iste rerum accusantium temporibus libero est nisi harum. Aspernatur consequatur eaque culpa maxime dolor neque. Et esse ea doloribus dolorum accusamus accusamus.', 2, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(139, 11, 19, 'Inventore voluptas et non neque est nostrum. Ad minima amet mollitia unde voluptas minus. Consectetur voluptatibus facere vel soluta est. Doloribus ipsum est nostrum aperiam qui iste qui.', 4, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(140, 7, 19, 'Quis est ut et id error earum. Omnis rem voluptatem nulla et. Odio vitae laborum architecto laboriosam. Aut aut rerum blanditiis quos aspernatur.', 1, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(141, 10, 19, 'Rerum eum ut amet unde nihil veniam maiores animi. Minus nam blanditiis est consequatur asperiores magni. Beatae non nihil aspernatur recusandae dolor ex natus. Sequi molestiae inventore blanditiis.', 1, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(142, 16, 4, 'Dolores fuga autem enim qui quo aspernatur. Omnis saepe et impedit dolores tenetur est qui. Est facere dolorem quae placeat atque.', 3, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(143, 10, 10, 'Ut dicta doloremque et cupiditate. Odit necessitatibus et molestiae nihil laborum. Quibusdam sed modi laudantium amet quia repellendus. Dolorum impedit sint et quia commodi fugit.', 5, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(144, 2, 18, 'Sunt ea est non assumenda ipsam ullam. Et cupiditate id commodi. Aut earum cupiditate soluta et. Explicabo et est sunt quos error. Quibusdam voluptatum non vitae ipsa. Nulla rerum magnam hic labore.', 4, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(145, 18, 12, 'Omnis dolor molestiae aut consequatur qui in qui id. Est quia dicta aliquid enim. Est doloremque possimus qui et accusantium. Dolor ab reprehenderit facere et cumque.', 3, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(146, 14, 9, 'Officia libero incidunt ad earum. Enim blanditiis est numquam numquam iure.', 1, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(147, 1, 7, 'Libero ut magni tenetur. Dolores recusandae inventore adipisci error modi non.', 4, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(148, 9, 6, 'Exercitationem possimus quia est doloribus. Tempora ducimus necessitatibus nisi molestiae sed veritatis repudiandae. Omnis nihil ipsa tenetur delectus cupiditate.', 2, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(149, 5, 19, 'Rerum error esse commodi est. Dolorum hic necessitatibus asperiores ducimus. Veniam et molestias fuga est.', 3, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(150, 3, 20, 'Qui facere quae ut in. Delectus ad consequatur iste perspiciatis consequuntur. Qui ex consequatur inventore omnis nemo.', 2, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(151, 1, 7, 'Ex ab sed quis occaecati magnam laudantium itaque. Eos non quia sapiente quia suscipit aut. Sed voluptatem provident voluptatem. Explicabo fugit ut illum reiciendis impedit.', 1, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(152, 15, 7, 'Molestiae reprehenderit a dolorum quasi quia. Quo eveniet dolore voluptatem voluptatum atque in. Voluptatibus necessitatibus ea error.', 5, '2018-11-09 21:54:58', '2018-11-09 21:54:58'),
(153, 1, 8, 'Ducimus laborum rerum magni consequatur et. Qui a ipsa porro harum. Sequi suscipit neque est magnam laudantium doloremque praesentium.', 5, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(154, 12, 9, 'Omnis ducimus asperiores accusamus et necessitatibus. Commodi unde et aut. Eos quos et et et. In atque ratione ut nisi voluptatem omnis nam odio.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(155, 17, 9, 'Nobis esse eum asperiores dolore porro. Molestiae qui rerum harum.', 1, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(156, 12, 7, 'Laudantium illum reprehenderit et placeat cupiditate molestiae quae. Cumque neque dolor facere vel totam ut iure. Sunt unde eius qui minus et.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(157, 1, 7, 'Similique explicabo veritatis doloribus odit. Natus sunt fuga quia cupiditate autem. Voluptatem ut nihil magnam molestias sapiente reprehenderit dolore sed.', 1, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(158, 6, 10, 'Maxime eveniet sit sit enim rerum. Consequatur et sint ratione in et.', 2, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(159, 2, 10, 'Saepe veritatis eos veniam qui expedita. Impedit quaerat nesciunt repellendus fugiat. Voluptatem et quia molestias provident facere similique omnis. Placeat in eveniet rerum.', 5, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(160, 6, 14, 'Recusandae repellat hic sunt ratione omnis et temporibus. Laboriosam ipsam autem nihil repellat cum consequatur vel. Nostrum alias et aut omnis voluptatem voluptate ducimus.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(161, 2, 16, 'Inventore maxime modi possimus perferendis. Quia mollitia ex non voluptas. Facilis facere quisquam nostrum id temporibus quo. Aut soluta culpa provident beatae maiores exercitationem.', 5, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(162, 1, 18, 'Voluptates quibusdam earum fugiat et. Voluptate quia placeat exercitationem incidunt. Molestias doloribus quos numquam omnis consequuntur tenetur iusto laborum. Est saepe enim minus nihil.', 2, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(163, 14, 8, 'Aspernatur facilis consequuntur qui blanditiis distinctio eligendi sint. Aperiam eveniet asperiores illum voluptatem qui animi est. Consequatur ut modi earum qui totam earum.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(164, 13, 16, 'Dolorum nesciunt sed distinctio veniam sed in quis a. Quis consectetur modi minima quis nam repellendus. Quibusdam voluptatem dolor iusto non omnis.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(165, 19, 11, 'Explicabo suscipit id et eum repellendus doloremque et. Voluptatem nemo vel inventore adipisci et. Magni praesentium animi qui dignissimos vero ut voluptas.', 1, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(166, 9, 19, 'Iste et quaerat quia. Corrupti voluptas sunt labore eius dolor. Exercitationem inventore et dolore praesentium id.', 2, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(167, 20, 9, 'Totam ea hic sit atque assumenda. Beatae aut est neque deleniti ab. Dolores quia veniam ut earum consequatur quaerat ducimus. Nostrum qui in qui praesentium.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(168, 10, 2, 'Expedita vel et tempora aut quis aut sint. Corrupti assumenda sunt nihil et eos blanditiis similique. Voluptas laboriosam ut omnis.', 3, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(169, 14, 15, 'Assumenda officiis eum qui perferendis veritatis aut magnam. Expedita amet tempora recusandae. Placeat quia doloremque natus fuga totam velit eligendi.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(170, 13, 20, 'Aspernatur consequatur quis qui illo. Aspernatur quo nostrum modi ipsum tenetur porro et voluptatem. Aut cupiditate est nisi temporibus id aut minus ipsum.', 3, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(171, 18, 3, 'Quam et qui sunt adipisci rerum. Quia facilis et natus praesentium. Eum ducimus nulla voluptatem hic dolor assumenda.', 5, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(172, 14, 4, 'Eaque quae fugiat quis quis tenetur excepturi similique. Asperiores laudantium nam eum cumque et minus ad. Rerum excepturi exercitationem reiciendis natus.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(173, 1, 20, 'Quasi tempora quia sint eius sed et ea. Qui commodi quis exercitationem amet. Quo odio architecto unde qui. Ipsa tempora est magnam accusamus.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(174, 13, 9, 'Sunt eos nihil ipsa facere. Sint eaque aut vel dolorem maiores. Laudantium laborum ut sequi unde. Rerum amet est non maiores quibusdam eveniet perferendis.', 1, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(175, 15, 15, 'Autem rerum ipsam reprehenderit impedit minus ducimus veniam. Voluptatem neque quibusdam et inventore.', 5, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(176, 8, 3, 'Et rerum autem fuga id quis debitis. Praesentium et ipsum eaque optio fugit. Maiores enim quasi quasi rerum sapiente nostrum iure. Mollitia velit quo consectetur voluptas.', 1, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(177, 10, 19, 'Mollitia earum eum tempora hic. Sed eum officia qui ut sunt suscipit eos. Omnis natus ex quis.', 1, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(178, 8, 10, 'Nihil eum soluta occaecati soluta et sed omnis. Et provident fugit aspernatur. Quia est corrupti inventore aut officiis officia vitae.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(179, 8, 15, 'Magnam minus dolor qui enim iste et. Et repellat totam id sit est iusto.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(180, 1, 16, 'Ullam et animi a. Magnam vero consectetur iste nesciunt vitae non voluptates. Laboriosam repellendus voluptatum perferendis cumque saepe impedit error dolores.', 3, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(181, 12, 5, 'Praesentium quo qui autem temporibus pariatur. Voluptas aspernatur ex repellat a ut id non. Nihil quam quos at nulla nesciunt laboriosam. Et consequatur accusamus consectetur amet.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(182, 10, 16, 'Dignissimos aut debitis quis non. Voluptates sed laboriosam quia ut placeat. Ullam inventore est velit quidem eius deserunt corporis. Qui quo fugit quos aliquid ea et non.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(183, 4, 16, 'Fuga qui itaque sunt vero. Sunt inventore est nihil a velit qui voluptas. Et earum vel voluptas est qui dolores occaecati. Omnis corrupti quis aspernatur placeat nihil ut dolor quae.', 4, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(184, 10, 13, 'Omnis saepe officia commodi ea at voluptatibus veniam. Et illo cupiditate incidunt et nihil consequatur et in.', 5, '2018-11-09 21:54:59', '2018-11-09 21:54:59'),
(185, 9, 19, 'Culpa autem recusandae nam sint aspernatur. Quis aspernatur laudantium consequatur quia. Laudantium et rem voluptatem.', 3, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(186, 5, 19, 'Ut ea sint molestiae. Optio nihil doloribus odit voluptatibus quia. Perferendis ut impedit iste maiores dolorem. Nisi ex numquam similique voluptas ut.', 1, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(187, 6, 11, 'Laudantium fugiat rerum exercitationem labore cupiditate magni rerum veniam. Numquam aut error eum repellat omnis deserunt unde. Odio id impedit expedita.', 1, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(188, 13, 12, 'Qui veniam occaecati doloribus exercitationem quia est tempora corporis. Dolorem quas corrupti accusamus ab et quidem sit saepe. Eligendi vitae aliquid voluptas aut.', 5, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(189, 14, 11, 'Voluptas iusto ea ex deleniti. Nisi aspernatur voluptas non odit illum. Possimus aperiam vero doloribus asperiores et.', 2, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(190, 7, 19, 'Optio itaque numquam ut illo natus ipsam quia perspiciatis. Nesciunt voluptas corporis porro aut aut.', 5, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(191, 10, 14, 'Quasi expedita dolor in porro. Asperiores porro minima voluptas. Et tenetur rerum odit voluptas quos expedita. Sit fugit nostrum quia.', 4, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(192, 12, 9, 'Omnis neque vel quia corrupti nemo officia. Beatae est harum quo id ut omnis. Fugiat numquam et ratione aut.', 5, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(193, 13, 4, 'Expedita dicta molestiae magnam amet dolorem non. Neque necessitatibus ea placeat harum. Unde nostrum esse impedit voluptatem quae a hic.', 2, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(194, 8, 1, 'Ea temporibus fugiat corporis reiciendis consequatur ipsum. Illum architecto quis quibusdam ea asperiores veritatis voluptatem. Beatae debitis laudantium optio aspernatur eaque reiciendis.', 1, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(195, 2, 6, 'Aut esse sit libero autem est et. Pariatur est impedit et odit culpa.', 4, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(196, 14, 7, 'Ad dolores sunt aliquid consectetur omnis adipisci eos. Omnis ut adipisci qui in est. Ut rerum omnis et laborum. Rerum impedit asperiores ducimus et.', 4, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(197, 4, 12, 'Blanditiis tenetur itaque temporibus a quo enim. Molestiae iste magni ut est consequuntur perspiciatis. Perferendis fugiat accusamus voluptas neque et.', 2, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(198, 5, 12, 'Aut exercitationem eos nihil accusantium itaque impedit qui. Animi libero eum blanditiis quaerat. Vel accusamus corrupti neque provident facere autem iure.', 4, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(199, 15, 1, 'Fugiat quia et porro. Ducimus est voluptates laudantium reiciendis. Id culpa ratione vero beatae sint rerum.', 4, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(200, 18, 10, 'Ut at et cumque repellat id rerum. Quidem tempora illum vero nobis eius alias. Voluptatum qui sapiente asperiores voluptatem tempore. Eum tempore voluptatem minima fugit molestiae.', 4, '2018-11-09 21:55:00', '2018-11-09 21:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-11-09 21:55:04', '2018-11-09 21:55:04'),
(2, 'user', 'Normal User', '2018-11-09 21:55:04', '2018-11-09 21:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `receiver_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `receiver_name`, `address`, `city`, `country`, `phone_number`, `shipping_note`, `created_at`, `updated_at`) VALUES
(1, 'Ubaldo Reichel', '38268 Vaughn Bypass Apt. 176\nShemarshire, MA 20900', 'Bernierstad', 'Tonga', '+1.278.790.9805', NULL, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(2, 'Mrs. Missouri Kessler PhD', '60692 Reta Divide\nLake Natalie, LA 47642-7458', 'Purdyfurt', 'Luxembourg', '(659) 834-9533 x5625', NULL, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(3, 'Mina Wilderman', '625 Kulas Brooks\nTierraview, IA 27124', 'Sadiebury', 'Reunion', '1-840-501-9584 x4137', NULL, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(4, 'Mr. Royal Swaniawski', '51216 Sigurd Corner\nLabadieborough, DE 35182-4552', 'Ilaside', 'Guyana', '212.431.2362', NULL, '2018-11-09 21:55:00', '2018-11-09 21:55:00'),
(5, 'Flavie Harvey', '451 Hintz Ports\nSouth Treviontown, TN 19587', 'New Zenafort', 'Australia', '(316) 477-1037 x4432', NULL, '2018-11-09 21:55:01', '2018-11-09 21:55:01'),
(6, 'Miles Leuschke MD', '53422 Bailey Place\nEast Dayna, CO 53128', 'Janelleside', 'Indonesia', '(452) 294-3257 x75778', NULL, '2018-11-09 21:55:01', '2018-11-09 21:55:01'),
(7, 'Dr. Troy Rowe DVM', '503 Billy River\nRenestad, TN 23612-1479', 'East Daija', 'Macedonia', '254.314.2728', NULL, '2018-11-09 21:55:01', '2018-11-09 21:55:01'),
(8, 'Ruby Deckow', '359 Mayra Crossing\nNew Raoulland, MT 09047-1243', 'North Mikel', 'Myanmar', '1-359-348-6201', NULL, '2018-11-09 21:55:01', '2018-11-09 21:55:01'),
(9, 'Hillary Marks', '65406 Keebler Divide Apt. 523\nNew Marjory, WA 38199', 'Granvillechester', 'Sweden', '1-354-790-3617', NULL, '2018-11-09 21:55:01', '2018-11-09 21:55:01'),
(10, 'Mr. Austen Daniel', '22628 Peter Mountain\nEast Brandiport, MA 60272', 'Port Fredrick', 'Timor-Leste', '+1-315-200-9752', NULL, '2018-11-09 21:55:01', '2018-11-09 21:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Tuấn Anh Nguyễn', 'tuananh@gmail.com', 'users/default.png', '$2y$10$DQnKGlOUPJ8n48C/5CQFTuZop8311DpGIX6sQrieuxRSktp7wwWIa', NULL, NULL, '2018-10-30 07:25:20', '2018-10-30 07:25:20'),
(2, 1, 'admin', 'admin@gmail.com', 'users/default.png', '$2y$10$MdXkblk83FrT.QeDU9Mag.DDIu.5vub4th5uf3geGXHUzSsff6hsa', NULL, NULL, '2018-11-09 21:55:07', '2018-11-09 21:55:07'),
(3, 2, 'Brice Kuphal I', 'else.hirthe@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fQXzZjJjWk', NULL, '2018-11-09 21:55:07', '2018-11-09 21:55:07'),
(4, 2, 'Cordell Emard', 'sylvan.eichmann@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zPphwEpCaH', NULL, '2018-11-09 21:55:07', '2018-11-09 21:55:07'),
(5, 2, 'Ms. Glenna Fadel', 'bernier.peyton@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '29rnlMhoUs', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(6, 2, 'Ciara Doyle', 'murphy.kirlin@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Vq1vACUs18', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(7, 2, 'Mrs. Velda Brown II', 'aisha84@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Wdozvhp1Uo', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(8, 2, 'Lulu Bechtelar', 'vallie.buckridge@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '55BOZvZN5V', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(9, 2, 'Prof. Darron Moen III', 'kuphal.ebony@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yQptl0Ipyx', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(10, 2, 'Prof. Preston Pagac', 'mayert.hilda@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QldiBal8r9', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(11, 2, 'Brianne Kreiger', 'uabbott@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dw7CNqD8SZ', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(12, 2, 'Ms. Georgiana Kovacek', 'parker.johnston@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Vk5mDGpuMx', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(13, 2, 'Miss Sarah Jones III', 'wkertzmann@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pnNFuk9rSt', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(14, 2, 'Julianne Mayert', 'marina28@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GgwuGE6onL', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(15, 2, 'Mr. Giles Wilderman', 'ocie50@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DhtmWFbnSO', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(16, 2, 'Dr. Ernie Breitenberg DDS', 'myrtis09@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JmIk5gb9Zj', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(17, 2, 'Mrs. Elyse Windler', 'marvin09@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rcGp0rZwMx', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(18, 2, 'Prof. Aaliyah Deckow II', 'hilario.auer@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zJ1FTFcBdF', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(19, 2, 'Brett Beatty PhD', 'dlubowitz@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WOqWbMTdjs', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(20, 2, 'Sierra Erdman', 'gaylord77@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'D6NORhtRCJ', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(21, 2, 'Alverta Ziemann', 'schmeler.arnulfo@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lSupxL55FR', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08'),
(22, 2, 'Mr. Jerrell Bogisich', 'vauer@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pXg2RPiN1U', NULL, '2018-11-09 21:55:08', '2018-11-09 21:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_category`
--
ALTER TABLE `brand_category`
  ADD PRIMARY KEY (`brand_id`,`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
