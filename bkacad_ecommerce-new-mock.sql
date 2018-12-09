-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2018 at 12:25 PM
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
-- Database: `bkacad_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_code`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', NULL, '2018-12-09 04:23:24', '2018-12-09 04:23:24'),
(2, 'Nike', NULL, '2018-12-09 04:23:24', '2018-12-09 04:23:24'),
(3, 'Fila', NULL, '2018-12-09 04:23:24', '2018-12-09 04:23:24'),
(4, 'Zara', NULL, '2018-12-09 04:23:24', '2018-12-09 04:23:24'),
(5, 'Prada', NULL, '2018-12-09 04:23:24', '2018-12-09 04:23:24'),
(6, 'Chanel', NULL, '2018-12-09 04:23:24', '2018-12-09 04:23:24'),
(7, 'Dior', NULL, '2018-12-09 04:23:24', '2018-12-09 04:23:24'),
(8, 'Dolce And Gabbana', NULL, '2018-12-09 04:23:24', '2018-12-09 04:23:24'),
(9, 'Ralph Lauren', NULL, '2018-12-09 04:23:24', '2018-12-09 04:23:24'),
(10, 'H&M', NULL, '2018-12-09 04:23:25', '2018-12-09 04:23:25');

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
  `category_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_code`, `created_at`, `updated_at`) VALUES
(1, 'T-Shirt', NULL, '2018-12-09 04:23:25', '2018-12-09 04:23:25'),
(2, 'Jacket', NULL, '2018-12-09 04:23:25', '2018-12-09 04:23:25'),
(3, 'Tees', NULL, '2018-12-09 04:23:25', '2018-12-09 04:23:25'),
(4, 'Dress', NULL, '2018-12-09 04:23:25', '2018-12-09 04:23:25'),
(5, 'Suit', NULL, '2018-12-09 04:23:25', '2018-12-09 04:23:25');

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-12-09 04:23:55', '2018-12-09 04:23:55'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-12-09 04:23:55', '2018-12-09 04:23:55'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-12-09 04:23:55', '2018-12-09 04:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(1, 'admin', '2018-12-09 04:23:56', '2018-12-09 04:23:56');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-12-09 04:23:56', '2018-12-09 04:23:56', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-12-09 04:23:57', '2018-12-09 04:23:57', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-12-09 04:23:57', '2018-12-09 04:23:57', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-12-09 04:23:58', '2018-12-09 04:23:58', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-12-09 04:23:58', '2018-12-09 04:23:58', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-12-09 04:23:58', '2018-12-09 04:23:58', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-12-09 04:23:58', '2018-12-09 04:23:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-12-09 04:23:58', '2018-12-09 04:23:58', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-12-09 04:23:58', '2018-12-09 04:23:58', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-12-09 04:23:58', '2018-12-09 04:23:58', 'voyager.settings.index', NULL);

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shipping_id`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 19, 5, NULL, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(2, 19, 9, NULL, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(3, 14, 10, NULL, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(4, 2, 2, NULL, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(5, 9, 5, NULL, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(6, 17, 3, NULL, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(7, 3, 3, NULL, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(8, 5, 10, NULL, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(9, 14, 8, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(10, 2, 8, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(11, 17, 1, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(12, 16, 4, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(13, 6, 9, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(14, 14, 10, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(15, 9, 10, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(16, 19, 8, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(17, 12, 6, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(18, 3, 4, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(19, 17, 6, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(20, 19, 9, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(21, 17, 1, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(22, 5, 10, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(23, 6, 9, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(24, 2, 6, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(25, 12, 6, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(26, 6, 8, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(27, 16, 5, NULL, '2018-12-09 04:23:32', '2018-12-09 04:23:32'),
(28, 14, 6, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(29, 4, 3, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(30, 13, 2, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(31, 18, 2, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(32, 18, 9, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(33, 8, 2, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(34, 16, 3, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(35, 2, 10, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(36, 13, 1, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(37, 9, 10, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(38, 3, 8, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(39, 15, 2, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(40, 16, 4, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(41, 20, 10, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(42, 16, 7, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(43, 15, 2, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(44, 11, 2, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(45, 3, 9, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(46, 16, 7, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(47, 17, 3, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(48, 8, 6, NULL, '2018-12-09 04:23:33', '2018-12-09 04:23:33'),
(49, 10, 3, NULL, '2018-12-09 04:23:34', '2018-12-09 04:23:34'),
(50, 9, 8, NULL, '2018-12-09 04:23:34', '2018-12-09 04:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`) VALUES
(1, 3, 8),
(1, 8, 4),
(1, 12, 6),
(2, 1, 8),
(2, 9, 7),
(2, 12, 4),
(2, 13, 2),
(2, 14, 5),
(2, 18, 8),
(3, 1, 6),
(3, 2, 8),
(3, 5, 2),
(3, 8, 9),
(3, 15, 4),
(3, 18, 8),
(4, 9, 8),
(4, 10, 5),
(4, 15, 4),
(4, 20, 3),
(5, 1, 10),
(5, 7, 7),
(5, 10, 10),
(5, 12, 6),
(5, 16, 5),
(5, 19, 3),
(6, 4, 2),
(6, 8, 9),
(6, 12, 7),
(6, 18, 9),
(6, 20, 1),
(7, 2, 5),
(7, 4, 10),
(7, 9, 7),
(7, 10, 1),
(7, 12, 1),
(8, 1, 1),
(8, 3, 1),
(8, 5, 4),
(8, 7, 5),
(8, 8, 5),
(8, 12, 6),
(9, 1, 5),
(9, 7, 1),
(9, 10, 6),
(9, 18, 9),
(9, 20, 10),
(10, 4, 2),
(10, 8, 4),
(10, 12, 6),
(10, 19, 6),
(11, 7, 10),
(11, 10, 4),
(12, 13, 5),
(12, 15, 3),
(13, 2, 4),
(13, 6, 9),
(13, 7, 1),
(13, 8, 2),
(13, 17, 2),
(13, 18, 5),
(14, 9, 2),
(14, 12, 10),
(14, 14, 9),
(14, 15, 2),
(14, 20, 9),
(15, 8, 7),
(15, 13, 3),
(16, 3, 7),
(16, 6, 1),
(16, 9, 4),
(16, 13, 1),
(16, 19, 4),
(16, 20, 1),
(17, 12, 5),
(17, 16, 4),
(17, 18, 9),
(18, 2, 7),
(18, 10, 6),
(19, 3, 10),
(19, 4, 9),
(19, 5, 3),
(19, 6, 7),
(19, 10, 9),
(19, 12, 6),
(20, 1, 10),
(20, 2, 7),
(20, 3, 1),
(20, 8, 2),
(20, 11, 8),
(20, 13, 8),
(21, 5, 2),
(21, 10, 9),
(22, 13, 1),
(22, 15, 2),
(22, 17, 6),
(22, 18, 4),
(23, 14, 5),
(23, 20, 8),
(24, 5, 7),
(24, 14, 9),
(24, 17, 4),
(24, 20, 7),
(25, 3, 6),
(25, 7, 3),
(25, 11, 9),
(25, 14, 5),
(26, 1, 5),
(26, 11, 4),
(26, 17, 7),
(27, 1, 9),
(27, 6, 6),
(27, 9, 3),
(27, 12, 10),
(27, 18, 10),
(28, 4, 9),
(28, 17, 8),
(28, 19, 7),
(29, 5, 8),
(29, 9, 4),
(30, 1, 5),
(30, 7, 5),
(30, 9, 3),
(30, 15, 1),
(30, 17, 4),
(31, 5, 7),
(31, 10, 1),
(31, 13, 6),
(32, 8, 2),
(32, 10, 1),
(32, 18, 3),
(33, 2, 3),
(33, 7, 6),
(33, 9, 5),
(33, 12, 8),
(33, 17, 10),
(33, 20, 4),
(34, 6, 9),
(34, 9, 2),
(34, 15, 9),
(35, 6, 10),
(35, 7, 5),
(35, 8, 10),
(35, 15, 3),
(35, 18, 9),
(35, 19, 5),
(36, 6, 7),
(36, 14, 6),
(37, 1, 4),
(37, 8, 1),
(37, 14, 1),
(37, 16, 7),
(37, 17, 7),
(37, 18, 10),
(38, 4, 3),
(38, 8, 4),
(39, 6, 6),
(39, 16, 7),
(39, 17, 7),
(40, 2, 7),
(40, 16, 2),
(40, 19, 1),
(41, 2, 9),
(41, 17, 2),
(42, 1, 5),
(42, 17, 2),
(43, 4, 10),
(43, 8, 7),
(43, 14, 7),
(43, 15, 1),
(43, 18, 5),
(43, 20, 10),
(44, 1, 8),
(44, 4, 3),
(44, 13, 7),
(44, 14, 5),
(44, 19, 9),
(45, 6, 10),
(45, 8, 10),
(45, 9, 8),
(45, 12, 6),
(45, 14, 2),
(45, 16, 6),
(46, 3, 9),
(46, 12, 8),
(46, 13, 3),
(46, 16, 1),
(47, 1, 3),
(47, 9, 8),
(47, 10, 10),
(47, 14, 3),
(47, 20, 5),
(48, 6, 2),
(48, 10, 6),
(48, 14, 10),
(48, 18, 4),
(49, 9, 10),
(49, 16, 3),
(50, 5, 7),
(50, 7, 7),
(50, 8, 2),
(50, 11, 5),
(50, 17, 7);

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
(1, 'browse_admin', NULL, '2018-12-09 04:23:58', '2018-12-09 04:23:58'),
(2, 'browse_bread', NULL, '2018-12-09 04:23:58', '2018-12-09 04:23:58'),
(3, 'browse_database', NULL, '2018-12-09 04:23:58', '2018-12-09 04:23:58'),
(4, 'browse_media', NULL, '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(5, 'browse_compass', NULL, '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(6, 'browse_menus', 'menus', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(7, 'read_menus', 'menus', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(8, 'edit_menus', 'menus', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(9, 'add_menus', 'menus', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(10, 'delete_menus', 'menus', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(11, 'browse_roles', 'roles', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(12, 'read_roles', 'roles', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(13, 'edit_roles', 'roles', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(14, 'add_roles', 'roles', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(15, 'delete_roles', 'roles', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(16, 'browse_users', 'users', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(17, 'read_users', 'users', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(18, 'edit_users', 'users', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(19, 'add_users', 'users', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(20, 'delete_users', 'users', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(21, 'browse_settings', 'settings', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(22, 'read_settings', 'settings', '2018-12-09 04:23:59', '2018-12-09 04:23:59'),
(23, 'edit_settings', 'settings', '2018-12-09 04:24:00', '2018-12-09 04:24:00'),
(24, 'add_settings', 'settings', '2018-12-09 04:24:00', '2018-12-09 04:24:00'),
(25, 'delete_settings', 'settings', '2018-12-09 04:24:00', '2018-12-09 04:24:00');

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
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `description`, `img`, `price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 'Cormier LLC', 'Voluptatibus nam ut optio eligendi aut laudantium commodi. Soluta at aut et et alias voluptatem sapiente. Fuga quia nobis enim laborum omnis ad. Ab saepe dolore et ea est voluptas.', 'public/storage/images/default.jpg', 2901, 0, 0, '2018-12-09 04:23:28', '2018-12-09 04:23:28'),
(2, 3, 4, 'Koelpin-Monahan', 'Explicabo molestiae molestias quo ut. Eveniet sunt neque voluptate asperiores minus sed modi. Molestias quos reprehenderit iste quia. A ducimus at eum quo iste.', 'public/storage/images/default.jpg', 2711, 0, 0, '2018-12-09 04:23:28', '2018-12-09 04:23:28'),
(3, 3, 7, 'Haag Inc', 'Nisi delectus mollitia doloribus aliquam deserunt. Quae omnis alias architecto magnam. Ipsam nostrum dolor doloribus et. Consequuntur et dignissimos nihil et ipsum.', 'public/storage/images/default.jpg', 2535, 0, 0, '2018-12-09 04:23:28', '2018-12-09 04:23:28'),
(4, 4, 6, 'Torp, Pouros and Jaskolski', 'Sit ducimus praesentium consequatur laudantium sint cum eveniet. Possimus quos et quia maxime incidunt rerum in. Vitae occaecati hic quos et sed. Fugit iusto molestiae ea.', 'public/storage/images/default.jpg', 4413, 0, 0, '2018-12-09 04:23:28', '2018-12-09 04:23:28'),
(5, 5, 9, 'Mayert PLC', 'Libero et quia voluptate praesentium debitis. Earum et dicta et soluta ut est. Hic sed quod provident autem.', 'public/storage/images/default.jpg', 4312, 0, 0, '2018-12-09 04:23:28', '2018-12-09 04:23:28'),
(6, 1, 6, 'Beahan-Beer', 'Corporis non quidem molestiae ipsa aut quo eum. Laborum quam dolores rerum. Eum repudiandae deleniti ut et fuga iure non illo.', 'public/storage/images/default.jpg', 304, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(7, 5, 5, 'Toy-Rosenbaum', 'Cum ut culpa suscipit. Repudiandae deleniti ullam nesciunt qui cupiditate et repellendus. Consequatur eum quis fugit sint ad. Impedit illo praesentium neque consequatur possimus commodi et.', 'public/storage/images/default.jpg', 2047, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(8, 1, 5, 'Walker LLC', 'Non quaerat sit nesciunt dolore ad. Vel magnam beatae eveniet quia repellat. Sed aut quas itaque numquam perferendis velit. Debitis aut error eligendi reprehenderit.', 'public/storage/images/default.jpg', 2012, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(9, 1, 6, 'Schowalter, Monahan and Ankunding', 'Aliquam qui harum magni. Eos laboriosam provident et sed nobis. Suscipit soluta quibusdam a sed.', 'public/storage/images/default.jpg', 4178, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(10, 1, 4, 'Lynch-McDermott', 'Soluta sequi dolorem ex doloremque amet quia vitae. Sequi dicta explicabo consequatur omnis officia nihil. Illo qui consequuntur illo quia maxime minus.', 'public/storage/images/default.jpg', 3591, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(11, 4, 5, 'Runolfsson-Treutel', 'Occaecati numquam et esse maiores aut consectetur exercitationem. Est omnis necessitatibus aut expedita. Soluta cupiditate eaque laborum doloremque est. Ut commodi nam non enim.', 'public/storage/images/default.jpg', 203, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(12, 3, 4, 'Lesch, Sipes and Cummings', 'Sint repellendus ea debitis sunt similique at. Vero reiciendis minima sint libero nam. Nihil illo repellat commodi itaque.', 'public/storage/images/default.jpg', 4420, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(13, 4, 2, 'Cruickshank Group', 'Aut voluptates illo mollitia dolorem voluptate odit possimus. Ex voluptas sit quo nesciunt eligendi. Odio accusantium unde illo eaque.', 'public/storage/images/default.jpg', 1884, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(14, 3, 6, 'Macejkovic-Satterfield', 'Dicta qui odit cumque expedita sunt autem. Ullam et est ut fuga quis. Et soluta accusantium labore.', 'public/storage/images/default.jpg', 407, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(15, 1, 7, 'Price Inc', 'Perferendis sed quos minus molestias. Atque reiciendis sint non sit qui. Sit rerum quia quas repudiandae.', 'public/storage/images/default.jpg', 608, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(16, 1, 8, 'Stokes-Runolfsson', 'Qui voluptatem quis delectus sint. Ducimus asperiores eum aperiam animi perspiciatis repudiandae quasi. Sed deserunt id laudantium ut officia qui excepturi provident.', 'public/storage/images/default.jpg', 4090, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(17, 5, 6, 'Brown, Mayer and Wilderman', 'Dignissimos distinctio nobis enim ducimus impedit necessitatibus omnis. Consequatur dolorem beatae est eum ut earum. Voluptatem vero eum vitae officia laudantium necessitatibus pariatur deserunt.', 'public/storage/images/default.jpg', 4306, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(18, 5, 4, 'Keebler LLC', 'Id voluptas et eius non possimus. Modi possimus dolores quas inventore occaecati assumenda soluta. Incidunt exercitationem eum natus autem nihil. Id aut iure sunt cumque ut enim aspernatur.', 'public/storage/images/default.jpg', 4595, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(19, 5, 8, 'O\'Conner Inc', 'Odit incidunt et ratione voluptatem voluptatibus et repellendus. Quod accusamus quod est incidunt et doloremque.', 'public/storage/images/default.jpg', 3916, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(20, 5, 9, 'Tremblay, Lueilwitz and Rippin', 'Necessitatibus eveniet dolores placeat numquam ut corporis. Cum et et omnis nihil aut inventore autem. Neque quaerat minima inventore maiores qui. Molestias mollitia dolores eum non.', 'public/storage/images/default.jpg', 4512, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(21, 1, 2, 'Watsica-Luettgen', 'Enim delectus vel tempora quisquam exercitationem. Numquam inventore quis qui iure quam doloremque. Incidunt aut maxime perspiciatis possimus ut.', 'public/storage/images/default.jpg', 1548, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(22, 5, 8, 'Kertzmann, Terry and Bode', 'Earum veniam quaerat excepturi. Autem dolores aperiam mollitia totam sit deserunt. Minima dolorem rem aliquid et ut in. Quo nesciunt cumque consequatur possimus aperiam.', 'public/storage/images/default.jpg', 3236, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(23, 2, 1, 'Hand, Lubowitz and Hills', 'Expedita cum in aspernatur laborum tempora facilis dolorem. Recusandae ea perspiciatis dolorum ut qui. Adipisci non fuga molestias.', 'public/storage/images/default.jpg', 4023, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(24, 2, 8, 'Satterfield-Mante', 'Qui dolorum in quae sit non quis tempora. Consequatur dicta molestiae fuga qui tempora veritatis. Vitae enim voluptatem nihil saepe ducimus nisi nihil.', 'public/storage/images/default.jpg', 4630, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(25, 1, 3, 'Howe, Parker and Marvin', 'Asperiores ipsa quasi aperiam rerum. Sint tempora deserunt repellendus sint beatae est.', 'public/storage/images/default.jpg', 173, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(26, 4, 2, 'Langosh, Hyatt and Lemke', 'Reprehenderit voluptatem cum voluptatem voluptas repudiandae aut. Velit numquam qui enim vel animi qui soluta molestiae. Quasi quidem non id voluptatum qui.', 'public/storage/images/default.jpg', 2758, 0, 0, '2018-12-09 04:23:29', '2018-12-09 04:23:29'),
(27, 2, 6, 'Green, Stiedemann and Bednar', 'Nemo minima quod eos vel. Sed et excepturi ullam ut numquam eaque sunt. Dolorum cupiditate assumenda quia accusamus. Iure eius sint quas et voluptatem totam magnam. Laudantium sint quia sed omnis at.', 'public/storage/images/default.jpg', 2755, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(28, 2, 8, 'Adams-Ritchie', 'Magni est vero quidem dolores. Incidunt at esse qui quo omnis ullam voluptatibus. Eius voluptatem facilis ad labore.', 'public/storage/images/default.jpg', 4746, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(29, 3, 3, 'Waters Inc', 'Modi et quibusdam est vero velit laudantium. Enim sapiente veniam quibusdam aut optio magnam. Quaerat optio sint omnis ut fugit. Quia dolorem eum facilis veniam totam ut.', 'public/storage/images/default.jpg', 4237, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(30, 2, 7, 'Turner-Hamill', 'Suscipit maxime eaque rerum molestias veniam. Consequuntur tenetur unde dolore qui quo est. Iste et voluptas consectetur possimus.', 'public/storage/images/default.jpg', 4040, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(31, 1, 2, 'Bailey-Gleichner', 'Id delectus sit dolorem sit perferendis nulla quos. Assumenda ab voluptatem porro temporibus quod. Possimus quaerat voluptatibus voluptate non voluptatem.', 'public/storage/images/default.jpg', 2033, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(32, 5, 5, 'Brown-West', 'Sunt quas architecto asperiores omnis. Corporis deserunt consequatur et necessitatibus. Optio nemo beatae in iste ea.', 'public/storage/images/default.jpg', 2697, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(33, 2, 10, 'Dietrich and Sons', 'Aliquam quo dignissimos temporibus non perferendis itaque. Sint et et fuga sed est iste dolorem. Culpa et ea minima laboriosam. Aut non quia dolorem rerum.', 'public/storage/images/default.jpg', 841, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(34, 5, 3, 'Gerhold and Sons', 'Illo quia et veniam nihil. Dignissimos veniam earum voluptatem cupiditate ipsum voluptatum. Eius necessitatibus velit et culpa ex eos. Eum natus natus beatae iusto esse aspernatur.', 'public/storage/images/default.jpg', 251, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(35, 1, 7, 'Kessler-Leffler', 'Nesciunt eum eum quod molestiae corrupti adipisci sed. Ipsa dicta ab aperiam et est nesciunt aliquid. Totam ullam in voluptatem. Iusto eos vitae officia quis.', 'public/storage/images/default.jpg', 3190, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(36, 4, 2, 'Bashirian, Steuber and Hirthe', 'Quisquam architecto qui accusantium provident. Rem temporibus est tempora nesciunt. Magni dolorum deleniti doloremque debitis cupiditate sint deleniti.', 'public/storage/images/default.jpg', 485, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(37, 1, 4, 'Murphy and Sons', 'Neque sunt mollitia dolorem maxime aut. Et laboriosam ex sit autem cum sint. Quia velit maiores impedit et cum placeat.', 'public/storage/images/default.jpg', 4319, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(38, 3, 6, 'Marvin, Sporer and Schinner', 'Accusantium aut et animi nihil sint quo. Molestiae dolorem quae non optio non velit cumque. Quo a nemo adipisci consequatur ipsa. Adipisci aut voluptatum dolor consequuntur neque.', 'public/storage/images/default.jpg', 2228, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(39, 1, 6, 'Rolfson-Kuhn', 'Culpa neque facere ut. Rerum dolor laboriosam et adipisci quidem quia veritatis. Quia numquam ipsum accusamus iste at molestiae vel.', 'public/storage/images/default.jpg', 2409, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(40, 4, 1, 'Kohler-Becker', 'Ipsa doloremque veniam unde non nobis numquam est est. Minima odio voluptates occaecati rem. Aut hic reprehenderit iure. Ea est ullam et pariatur voluptatem voluptate quis nesciunt.', 'public/storage/images/default.jpg', 3041, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(41, 3, 9, 'Hand, Ondricka and Daugherty', 'Velit nisi eaque dolorem dolorem et qui labore. Cum tempore quaerat eum aut animi aut minima. Voluptatem qui illo eum alias asperiores rem neque. Voluptas quo sunt eligendi ducimus eius omnis.', 'public/storage/images/default.jpg', 1369, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(42, 2, 9, 'Ryan-Welch', 'Quod illo sunt ea molestias qui rem veritatis. Odit fugit enim numquam enim ipsam quod dolores cupiditate.', 'public/storage/images/default.jpg', 4841, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(43, 3, 1, 'Schmeler-Cormier', 'Et voluptatem architecto quasi rem repellat voluptas. Vel totam dolores pariatur amet blanditiis illo unde. Ratione expedita voluptas facilis similique eius.', 'public/storage/images/default.jpg', 3512, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(44, 3, 7, 'Lebsack-Hirthe', 'Et dolores beatae dolorem corrupti excepturi eum perferendis. Distinctio magni sit quia nemo beatae ullam aspernatur. Itaque quos quia ut modi voluptas quam quod.', 'public/storage/images/default.jpg', 2875, 0, 0, '2018-12-09 04:23:30', '2018-12-09 04:23:30'),
(45, 1, 8, 'Skiles, Haag and Klein', 'Sunt molestiae facilis quia dolorum rerum reiciendis. Recusandae tenetur commodi consequatur consectetur quibusdam distinctio repudiandae. Voluptas consequatur perspiciatis et ut quo.', 'public/storage/images/default.jpg', 1230, 0, 0, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(46, 5, 2, 'Kling-Bode', 'Consequatur amet possimus quidem et eveniet quae veniam. Dolores ex consectetur quis et voluptate dolorum. Provident sint ut omnis eum voluptatibus velit inventore. Quis eum error sed consectetur.', 'public/storage/images/default.jpg', 1959, 0, 0, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(47, 2, 2, 'Beier-Smitham', 'Ut fugit aut inventore voluptatem sapiente. Quia dicta quia quaerat quasi ex nulla iure. Mollitia dolorem est non nisi quia repellendus.', 'public/storage/images/default.jpg', 4247, 0, 0, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(48, 4, 4, 'Casper LLC', 'Ducimus omnis molestiae et saepe ut consequatur in. Cum sunt officia expedita beatae aut illum nostrum. Nam non amet voluptatem sed voluptas. Vero fuga et eius culpa et reprehenderit.', 'public/storage/images/default.jpg', 3215, 0, 0, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(49, 1, 8, 'Flatley PLC', 'Occaecati dolorum reprehenderit eos vero eius et. Sed id omnis illo voluptas at vel. Non est nihil quasi qui. Et dolore quo laboriosam aperiam suscipit deleniti tempore.', 'public/storage/images/default.jpg', 1817, 0, 0, '2018-12-09 04:23:31', '2018-12-09 04:23:31'),
(50, 4, 6, 'Wunsch, Spencer and Bahringer', 'Velit nihil veniam et et animi. Minus reprehenderit placeat ipsum velit aut similique.', 'public/storage/images/default.jpg', 2737, 0, 0, '2018-12-09 04:23:31', '2018-12-09 04:23:31');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `body`, `votes`, `created_at`, `updated_at`) VALUES
(1, 3, 20, 'Facilis officiis nobis soluta et nesciunt. Ipsam voluptate rerum ratione aut ullam beatae. Possimus natus et rerum. Est eos non vero dolor numquam aperiam.', 4, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(2, 7, 8, 'Maiores officia sequi ducimus ex rerum. Illum maiores at non et in hic. Neque similique incidunt ullam quia. Fugit optio optio id non.', 4, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(3, 6, 14, 'Laudantium nisi aut occaecati voluptatem. Consequatur eaque qui laborum pariatur et adipisci ducimus. Non velit consequatur velit ut commodi voluptas omnis.', 3, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(4, 17, 13, 'Aperiam quia sed laudantium. Rerum eos reiciendis quos iusto voluptatibus. Voluptatem quasi odit alias vitae.', 5, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(5, 6, 5, 'Animi natus in nisi natus. Officiis sint et qui minima enim illum. Aut ab repudiandae praesentium aperiam nihil eos.', 1, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(6, 5, 5, 'Iste occaecati dolor vel perferendis pariatur dicta. Debitis expedita molestias quisquam modi. Est molestiae exercitationem et quia eos eligendi aut. Eum omnis qui fuga voluptatem ad nam.', 5, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(7, 12, 7, 'Expedita reprehenderit a velit nam voluptas eum cumque. Explicabo molestiae dolorum dolor quia sed ut. Vel cumque officia nobis laborum.', 3, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(8, 1, 10, 'Deserunt cum sed asperiores. Rerum quia expedita qui. Iste odit minus magni commodi ut blanditiis nulla.', 3, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(9, 13, 5, 'Sed excepturi et aut est aut nam. Sunt ex ex velit sed. Ea temporibus animi dolorum soluta quibusdam ad est.', 5, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(10, 7, 20, 'Deleniti dolorum repudiandae et. Ut illum aliquid et quae.', 5, '2018-12-09 04:23:45', '2018-12-09 04:23:45'),
(11, 16, 15, 'Consectetur quam dolor ut molestiae aut at reiciendis. Dolores consectetur minus molestias sapiente. Quia aut soluta rem aliquam iusto praesentium. Maiores qui esse quia sed et ratione.', 1, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(12, 1, 4, 'Quae voluptates rerum nesciunt dolorum. Laudantium odio quod et. Accusamus ut quo in delectus. Saepe architecto ullam aspernatur mollitia et.', 3, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(13, 19, 4, 'In amet ut nostrum ducimus. Laboriosam maxime deserunt vel rerum perferendis. Velit consequuntur ipsum vero magnam. Accusamus rerum voluptas suscipit maxime quia similique.', 4, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(14, 14, 19, 'Quam quasi sapiente occaecati ipsam. Sit quod suscipit tempore sint sequi. Explicabo eveniet quod ullam officia esse nemo.', 3, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(15, 18, 2, 'Repellendus ut assumenda repellendus modi iusto qui. Voluptates odio sed enim veniam est omnis. Sint quis atque est assumenda ea.', 1, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(16, 4, 11, 'Ab et saepe quo ut necessitatibus. Dolores ea laboriosam quo itaque in. Porro laboriosam et accusantium corporis quidem dolorum id.', 5, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(17, 7, 19, 'Dolor numquam provident doloremque possimus aut maxime. Ab libero amet illum laboriosam voluptas est. Dolorem a consectetur deserunt voluptas. Nesciunt qui autem perferendis.', 4, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(18, 3, 3, 'Magni amet labore et aliquid delectus. Ex facere maxime repellendus iste.', 4, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(19, 16, 16, 'Rem sit repellat in nostrum voluptate. Adipisci expedita et repellat architecto ut corporis. Harum quis eum dolorum perspiciatis. Perferendis quidem numquam eos beatae accusamus. Ab ab quod vitae.', 5, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(20, 16, 5, 'Eum laboriosam dolorem ea voluptatem. Quia incidunt rerum officiis harum sint. Provident eius occaecati est sed placeat placeat dolore id. Aut sint dolores quo dolorum.', 1, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(21, 20, 12, 'Earum incidunt rem voluptatem natus est et. Aperiam assumenda est aut minima. Hic modi inventore delectus laudantium. Minima repellendus officiis consequuntur ut distinctio.', 1, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(22, 13, 19, 'At ut neque molestias qui et. Magni quia quis eum et ea neque suscipit. Unde possimus veritatis laborum. Earum alias excepturi ut odio debitis quod perspiciatis.', 3, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(23, 17, 13, 'Aut aut recusandae quia nihil laborum perspiciatis dicta. Nihil voluptatem quo deleniti et fugit et. Eveniet unde distinctio eaque nulla dignissimos nam. Iure cum asperiores aut quo quia ea.', 3, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(24, 18, 12, 'Sapiente delectus qui hic deserunt in rerum soluta. Ipsa quam ut est. Ut velit quisquam odit voluptate qui atque laudantium.', 5, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(25, 12, 8, 'Distinctio ea eligendi facilis asperiores. Aut nihil omnis vel. Occaecati aliquam ad commodi velit voluptatem dolorem eos. Commodi laborum consectetur vero veniam.', 3, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(26, 11, 2, 'Qui provident et reiciendis aut. Voluptates sunt qui libero aperiam illum. Magni voluptatem quam voluptatem. Accusantium id velit temporibus voluptatum ad harum.', 4, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(27, 7, 20, 'Deleniti dolorem in sunt. Aut quas sit ut possimus. Est ea ullam omnis rerum in nesciunt enim. Saepe voluptate omnis quibusdam quasi.', 5, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(28, 20, 13, 'Voluptatem et consequatur culpa. Cum et quas ipsam expedita. Harum recusandae ipsam accusantium harum. Numquam occaecati omnis quisquam est.', 3, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(29, 19, 2, 'Deserunt perspiciatis ducimus consequuntur. Aliquid occaecati sint eaque illo. Odio vel aut expedita quas doloremque dolores suscipit id.', 1, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(30, 1, 10, 'Voluptas recusandae tempora dolores rerum et. Et molestias reiciendis omnis repudiandae eum. Ut ipsum qui similique ut autem. Qui nam praesentium ut aut ipsa omnis tempora.', 1, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(31, 15, 19, 'Esse alias qui qui non quaerat. Esse accusantium expedita vel et. Et velit qui eum exercitationem voluptas odit. Unde qui nesciunt aperiam quaerat et perspiciatis. Nobis similique deleniti sit.', 3, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(32, 9, 19, 'Eveniet ducimus quasi pariatur quia. Voluptas quis et repudiandae aliquid sapiente. Amet mollitia hic in atque. A et accusantium aut ipsa.', 4, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(33, 1, 15, 'Tempore enim harum odio quis id quibusdam officiis rem. Iste itaque consectetur qui hic placeat.', 2, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(34, 8, 3, 'Dolore molestias sed eveniet suscipit odio cum enim. In eos vel harum eos consequatur.', 5, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(35, 10, 16, 'Velit architecto est ullam praesentium cupiditate. Harum accusamus aut at nam. Earum molestiae iste suscipit ab fugit hic.', 3, '2018-12-09 04:23:46', '2018-12-09 04:23:46'),
(36, 13, 9, 'Aut minima officia non omnis eos voluptate quo maxime. Qui qui repellendus quia at asperiores. Porro et est nihil non dignissimos quos beatae.', 3, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(37, 12, 16, 'Et facere quia nihil qui dolore consequatur. Fugiat at quia id quia quod rerum unde. Sequi sed illum assumenda quidem. Error labore et ut.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(38, 9, 18, 'Neque repellat quae aliquam molestiae. Ut optio natus autem facere praesentium. Voluptates dolorem iure in consectetur ipsum dolores aspernatur. Ipsam a adipisci quibusdam ducimus vel.', 2, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(39, 2, 6, 'Eum minus soluta at ea. Vitae animi doloribus illo eum fugit. Quae nulla aut similique aut placeat ut et.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(40, 12, 3, 'Quasi dolorum expedita quae ducimus eum. Tenetur suscipit id mollitia sed quo doloremque. Tempora non fugit id est culpa et consequatur.', 2, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(41, 10, 14, 'Sit rem est maiores fugiat. Vel eum sapiente amet dolore reiciendis. Sunt est ab aperiam vitae omnis. Vel sapiente nemo libero consequatur veritatis officiis.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(42, 17, 7, 'Qui perferendis et omnis quia ratione quas. Aut nihil nulla beatae in illum. Veniam accusamus earum et totam.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(43, 5, 20, 'Sequi natus laudantium fuga aut. Distinctio distinctio cum ratione. Consectetur sequi consectetur et voluptatum.', 2, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(44, 11, 18, 'Aliquid qui vel vero soluta. Necessitatibus consequatur ipsa dolorem nostrum in blanditiis ea. Illum veniam eos non vel velit ad molestiae.', 1, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(45, 15, 19, 'Omnis dignissimos quia est eos. Totam repellat quam cupiditate eos quod sit non maxime. Tempore error tempore dicta velit accusamus et. Atque necessitatibus aspernatur ex exercitationem.', 2, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(46, 15, 3, 'Omnis laboriosam rerum et. Nisi dolorem consequuntur ad atque quis unde aut earum. Totam molestiae ut animi officiis dolorem animi. Similique voluptatem et aspernatur illo architecto ut soluta.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(47, 11, 4, 'Ducimus in autem beatae optio quasi. Tempore odit corrupti inventore minus veritatis cupiditate et dolor. Minus ut expedita ut non. Voluptas qui et dolorem omnis omnis autem voluptatem.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(48, 8, 8, 'Consectetur accusamus at eaque aut nesciunt similique. Molestias voluptatibus laboriosam rerum quibusdam a fugit.', 5, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(49, 1, 3, 'Et necessitatibus cupiditate blanditiis facilis. Et eveniet voluptatem molestias nostrum voluptatem unde. Beatae labore sit voluptatem porro magni quaerat omnis. Error earum quasi aut.', 5, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(50, 17, 20, 'Velit iure incidunt autem adipisci. Nemo veritatis non animi expedita blanditiis quasi. Velit ducimus velit suscipit voluptatibus.', 5, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(51, 3, 18, 'Fugiat placeat dolorem ut qui. Et sapiente minima quas atque vero natus sunt. Et consequatur tempore ratione ab adipisci autem voluptates.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(52, 19, 7, 'Praesentium molestiae vel ab sit ab. Eos est quis aut perspiciatis dicta ut. Magni dolore cupiditate rerum inventore consequuntur laudantium dolor.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(53, 2, 5, 'Molestias cum provident sed quas id. Cupiditate maiores atque adipisci ipsa porro. Ut porro sunt provident dolores voluptatibus nostrum. Eius quis quis officiis optio inventore illum magni non.', 1, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(54, 2, 13, 'Repellat magni quae voluptas veniam quia autem maxime. Quidem minus praesentium natus dolor asperiores eveniet. Expedita necessitatibus quod quis quam qui error.', 3, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(55, 10, 12, 'Sint est ad qui. Natus veritatis explicabo dolorem. Sapiente perferendis saepe sit sunt temporibus. Dolore nisi est sit nobis aliquid et error. Minima repellendus numquam pariatur.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(56, 15, 19, 'Sunt quod qui nesciunt quis quasi nesciunt reprehenderit consectetur. Dolorem voluptatem quis officiis natus.', 1, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(57, 16, 12, 'Sed debitis eos molestias. Nemo eaque vitae debitis neque recusandae adipisci ipsam. Repudiandae numquam iure nobis consequuntur aut. Repellendus sequi architecto deserunt est suscipit nobis.', 3, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(58, 10, 3, 'Sed iusto eius voluptatem assumenda. Qui et quae ea in voluptatem repellendus. Sit labore assumenda dolores velit laborum vitae. Et modi delectus possimus rerum enim qui.', 2, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(59, 16, 18, 'Labore omnis maxime vero dignissimos est deserunt earum. Aut in perferendis ullam labore eius eos incidunt. Eum est iusto vel officiis et dignissimos dolor.', 1, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(60, 7, 7, 'Aut quia nulla et ex porro placeat. Perferendis rerum sunt veritatis id illum. Quia amet ab quae quis. Ab sunt minus alias voluptatem.', 4, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(61, 4, 7, 'Similique ut ut quo amet. Eaque enim sapiente repudiandae in id. Quasi consequatur et cum at iure et ab exercitationem.', 3, '2018-12-09 04:23:47', '2018-12-09 04:23:47'),
(62, 20, 18, 'Id ea esse consectetur optio impedit. Reprehenderit in sequi delectus est. Cum dolorem quos molestias dolor delectus.', 1, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(63, 20, 2, 'Rerum eum neque molestiae ratione dolor. Doloremque ut fugiat doloremque in. Placeat nam quae sunt ad sunt est. Qui quam sunt facere beatae.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(64, 4, 16, 'Repellendus laudantium rerum et quia voluptatem temporibus architecto. Eum sapiente voluptates qui voluptatem fuga consequatur. Aperiam tempora error quasi tenetur temporibus non quis laborum.', 2, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(65, 19, 9, 'Ea dolor eos nemo neque voluptates corporis quasi. Repellat omnis voluptatem tempore id dicta aperiam. Unde ad totam ut illum neque qui dolorem.', 4, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(66, 16, 12, 'Deleniti porro debitis nobis voluptas expedita eius accusantium. Earum quos facere numquam accusamus rerum voluptates. Repellat vitae explicabo beatae sed quidem vitae.', 4, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(67, 19, 19, 'Delectus hic vero ipsum numquam earum officia. Tempora aut magnam sint voluptatibus voluptatum inventore. Totam ipsa ratione iste quam.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(68, 19, 20, 'Ad nam eum itaque optio et aut. Reiciendis libero cum pariatur officia esse ut. Reprehenderit quos cupiditate quis quam eligendi temporibus illum qui.', 1, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(69, 5, 1, 'Minus aspernatur id hic mollitia unde. Voluptatem quia inventore aut fugiat.', 1, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(70, 12, 7, 'Beatae praesentium qui delectus est. Error exercitationem velit voluptatem sunt asperiores dolore labore. Nihil maiores et adipisci.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(71, 1, 17, 'Sint id quaerat necessitatibus iste. Rerum velit ullam sint. Voluptatem tempore non reprehenderit laboriosam. Consequatur sit libero iure quibusdam facere iure natus.', 3, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(72, 1, 14, 'Recusandae aliquam quam nisi animi qui. Quas officiis sed odit dignissimos maiores. Vitae neque ratione quisquam est omnis et reiciendis.', 1, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(73, 15, 16, 'Qui in explicabo officia. Cum possimus cupiditate nihil rerum itaque. Deleniti consequatur laudantium et laborum commodi quas odit.', 3, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(74, 10, 7, 'Sit qui alias repudiandae neque quaerat. Voluptatem ut accusamus aperiam soluta nesciunt velit quia. Aut quia dolorum ab cumque aut. Quis placeat velit rerum.', 2, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(75, 4, 19, 'Cupiditate et rerum iusto eum eum. Dolor ratione sapiente illo impedit. Cupiditate suscipit neque aut est sequi fugit excepturi.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(76, 17, 5, 'Repellendus eos culpa voluptas in eum officia eius ut. Est repellendus vel quos libero necessitatibus. Quas impedit dolorum sit nobis eos.', 4, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(77, 9, 6, 'Aut dolores numquam aut dolor est. Doloribus consectetur dolor vitae in velit est. Possimus dicta culpa molestias.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(78, 15, 2, 'Magnam vel odio consectetur. Id deserunt dignissimos eligendi voluptatum et. In expedita sequi quasi.', 3, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(79, 8, 19, 'Sint in ad quibusdam. Eligendi quod quia quia iure.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(80, 18, 5, 'Culpa nisi quisquam pariatur ut architecto consequuntur. Sed qui adipisci consequatur unde ut consequatur. Nesciunt laboriosam accusantium ex voluptatum aut earum. Repudiandae soluta deleniti amet.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(81, 3, 1, 'Quis cum non soluta et consequatur ducimus iste. Rem accusantium qui neque ex ipsa animi at fugiat. Sequi necessitatibus molestias et. Et sint qui molestiae at dicta autem.', 1, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(82, 17, 16, 'Quasi excepturi aliquam rerum eveniet. Deleniti vel aut consequatur impedit aliquid. Distinctio placeat velit voluptatibus suscipit.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(83, 12, 3, 'Natus dolor repellat nam quaerat suscipit ex ut molestias. Quis id corporis rerum qui dolore. Aliquam deserunt ipsum qui illo cumque. Numquam tenetur molestias repellat et qui.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(84, 15, 14, 'Nesciunt sint rerum in facilis culpa vel mollitia. Eligendi velit qui repellendus in dolor aut soluta possimus. Quod quia perferendis ea. Consequatur dolorem fugit rerum necessitatibus totam.', 1, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(85, 7, 5, 'Nesciunt amet dolorem rerum exercitationem. Aut exercitationem sit quo nobis et occaecati ut. Deleniti et sit maxime officiis accusamus doloribus qui. Ut facilis reprehenderit quam corporis.', 3, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(86, 6, 10, 'Dicta dolores et impedit qui. Hic vitae voluptas fuga doloremque. Sint odio non qui quo. Ex sit eum pariatur dolorum. Delectus soluta unde placeat possimus. Sint voluptas tempore fugiat sapiente.', 4, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(87, 13, 18, 'Dignissimos dolores consequatur unde vel. Possimus voluptates voluptatem officiis possimus eveniet.', 5, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(88, 12, 17, 'Sed aliquam adipisci officia corporis dolor alias voluptatem non. Sint consectetur ipsa commodi dolor harum labore consequuntur officia. Officiis laboriosam soluta eligendi est qui et.', 2, '2018-12-09 04:23:48', '2018-12-09 04:23:48'),
(89, 9, 17, 'Non qui alias voluptatem corporis et quo. Labore ratione qui officiis aut eum consequatur animi. Est aperiam ad voluptas.', 4, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(90, 6, 7, 'Cum consequuntur repudiandae ut nulla. Rerum eaque nihil dolores veniam suscipit quibusdam aspernatur totam. In quia optio dolorem aut quam.', 1, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(91, 15, 11, 'Id tenetur dolor sequi molestiae amet doloribus. Ad a ea velit beatae aut ut libero sed. Id exercitationem dicta eum adipisci quae aut.', 2, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(92, 13, 11, 'Ea tenetur impedit et maiores et. Voluptates itaque in voluptatem quo sint non. Eaque aut ut harum rerum et odit eos.', 2, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(93, 15, 19, 'Facilis impedit in quia quos atque. Vel nihil aspernatur non iusto velit. Veniam dolorem eveniet quod nemo repellendus praesentium et.', 2, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(94, 17, 3, 'Tempora ut placeat neque. Eum aperiam est voluptatem ut illo qui. Et distinctio voluptas qui autem.', 3, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(95, 18, 4, 'Tempore sit necessitatibus sapiente necessitatibus. Eaque ipsum aut dicta. Voluptatem ea sed eum illum error.', 4, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(96, 15, 18, 'In voluptatem dolorum animi. Nostrum suscipit magni ipsa id nesciunt. Accusantium recusandae dolores et quis voluptatem. Ad qui delectus quos aspernatur nihil. Est et est voluptatem.', 2, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(97, 13, 14, 'Perferendis mollitia reprehenderit tenetur natus quia ut autem. Unde dicta fugit facilis sunt quisquam sunt. Sint vitae sunt et quisquam enim voluptatem alias vel.', 2, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(98, 5, 17, 'Libero a voluptas suscipit molestiae quibusdam unde. Ratione velit et quidem esse sapiente autem sint. Sequi iusto illo at aut quae et. Et quae alias labore ab harum.', 2, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(99, 19, 10, 'Consequatur ut illum qui rem non sit qui animi. Ab dolorum vitae dolorem. Voluptates omnis quod est. Et expedita dicta numquam et atque.', 5, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(100, 1, 17, 'Et nihil ea ea nesciunt vel et voluptate sed. Distinctio culpa pariatur quam quis. Beatae et voluptas in ab. Sunt ex doloremque at consequatur optio.', 3, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(101, 1, 19, 'Dignissimos sit laboriosam dicta et perferendis. Libero ipsam est ipsum qui. Vel ducimus rerum et in.', 5, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(102, 16, 7, 'Eveniet dicta voluptatem omnis voluptatem quia sit. Nam qui quia ipsam. Natus veritatis aut dolor. Sapiente autem dignissimos sit et harum. Ut rerum voluptas eum alias velit iure.', 1, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(103, 18, 14, 'Tempore deserunt provident enim ut sed. Enim dolore perspiciatis quae enim. Et est voluptatem enim quo.', 5, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(104, 7, 6, 'Beatae nobis voluptatibus eos sunt. Qui ut sed consequuntur facilis perferendis. Aliquid animi aspernatur et id.', 2, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(105, 6, 18, 'Doloremque voluptas eum magnam non ut odit incidunt voluptatem. Eveniet et accusantium est voluptatem libero architecto autem. Maxime incidunt nobis distinctio doloribus maxime qui.', 2, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(106, 10, 15, 'Earum vel accusamus sint a aliquam temporibus commodi. Deleniti sit aliquam vel. Impedit in at molestiae possimus sequi voluptatum.', 4, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(107, 5, 4, 'Ut iste dolore sapiente et. Voluptate facere ex id deleniti expedita. Laudantium non tempore possimus ullam est.', 2, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(108, 12, 12, 'Ratione non sint dolores doloremque. Ut non alias incidunt cum possimus debitis. Pariatur aut sapiente et sint.', 4, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(109, 1, 7, 'Non ipsa qui odio et eum dolorem. Placeat doloremque dolore animi nam. Et minima facilis culpa ullam.', 4, '2018-12-09 04:23:49', '2018-12-09 04:23:49'),
(110, 10, 11, 'Ipsa iusto modi rerum enim maxime. Veniam voluptatem quia repellendus a cumque expedita a. Quas quia dolorum necessitatibus dicta repellendus ut voluptas.', 2, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(111, 1, 10, 'Occaecati sunt tempore sunt aut vero aspernatur. Veritatis cumque est reiciendis ut odio est hic. Quibusdam perspiciatis tempore dolorum est sint at et.', 5, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(112, 12, 17, 'Excepturi repudiandae est eum dolore fugit nam. Aut qui optio consequuntur. Earum tenetur neque eligendi est voluptatem saepe accusantium.', 5, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(113, 8, 20, 'Aliquam quam quasi vero dicta ipsa rerum voluptatibus. Unde aut eos ex ut quam. At explicabo tempora aut illo vel et numquam.', 5, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(114, 1, 17, 'At earum autem minima. Quo vel est voluptatem sit. Laborum dolore id harum.', 4, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(115, 2, 8, 'Non facere labore sapiente voluptates. Mollitia commodi ut beatae quam. Non id iusto repellendus repellendus vero.', 5, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(116, 16, 14, 'Et nulla recusandae quas culpa. Vel corrupti vel optio occaecati. Harum necessitatibus accusantium possimus facilis. Eligendi officiis aliquid voluptatem ea delectus omnis voluptatem.', 3, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(117, 20, 8, 'In ut illo voluptatem exercitationem et. Impedit quibusdam eum aut voluptatem sed. Quidem voluptatem quo sit aut quo.', 3, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(118, 3, 1, 'Qui possimus suscipit eius cumque saepe magnam fugiat. Consequatur nisi asperiores doloremque repudiandae laborum. Eos illum facere ut magnam.', 1, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(119, 4, 20, 'Perspiciatis nihil est nam rerum alias repellat consectetur. Impedit nihil voluptas consequatur eos. Repudiandae molestiae quidem sunt voluptatem molestiae quae ut.', 3, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(120, 19, 16, 'Sunt eos quidem distinctio. Dolores et ex quaerat excepturi. Ea saepe doloribus odit nulla nihil. Ex quidem eligendi ut quibusdam.', 5, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(121, 6, 6, 'Dolores sit facere quis suscipit qui. Et adipisci totam necessitatibus aut voluptatibus qui voluptate iusto. Dicta corrupti amet inventore aliquam minus quidem.', 3, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(122, 6, 8, 'Consequuntur sed rerum eum omnis totam adipisci architecto. Qui molestias soluta porro eveniet vel enim. Nisi eligendi ut ut illum molestias quasi.', 5, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(123, 18, 8, 'Esse qui earum laboriosam laborum est dolores. Maxime similique perferendis in alias enim unde. Quaerat nesciunt quis id quis aut. Laboriosam repellendus ea dolores est esse non.', 2, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(124, 8, 5, 'Omnis vel consequatur et qui fuga commodi ea. Sit dignissimos id aut omnis voluptas. Necessitatibus esse ut et esse cupiditate. Ex harum est voluptate et iure.', 4, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(125, 20, 19, 'Impedit minus ipsum perferendis omnis facere eveniet. Earum qui veritatis vitae repellendus earum. At fugiat rem nihil doloribus quasi et sed dolorem.', 5, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(126, 3, 19, 'Voluptates quidem dolorem libero minima quia dolor illum. Deleniti quia quisquam doloribus nam quia veniam. Dolores autem asperiores optio voluptatibus.', 2, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(127, 5, 3, 'Enim laudantium ex maiores a qui et. Veniam quae mollitia qui qui voluptatem ipsam. Odit rerum quis sit unde dolores aperiam laboriosam.', 1, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(128, 15, 15, 'Minus maiores quas velit aliquid hic omnis quo consectetur. Pariatur maxime quisquam molestias omnis aut esse amet.', 5, '2018-12-09 04:23:50', '2018-12-09 04:23:50'),
(129, 14, 1, 'Alias officia beatae iusto sapiente. Consequatur vero facilis magni ab voluptas. Nostrum atque dicta sapiente provident praesentium sed quae. Hic corporis in ducimus eius. Eaque occaecati quas rerum.', 2, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(130, 17, 14, 'Dolor aut ut error laborum quis assumenda autem. Magni sint debitis in beatae consectetur enim quo. Sed blanditiis fugiat quia modi rerum in quis. Quo qui deserunt omnis.', 5, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(131, 17, 10, 'Similique voluptatibus ex qui unde officia et. Soluta nobis pariatur et et sit est. Blanditiis eligendi provident est exercitationem. Suscipit ex amet quis qui accusamus dolore.', 5, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(132, 3, 4, 'Molestias sed ut ut rerum. Ipsa eum ducimus nostrum molestias corrupti et sit. Voluptatem deleniti fugiat cum officiis.', 5, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(133, 18, 18, 'Recusandae optio qui fugiat consequatur nisi dolor sit. Eos voluptas facere dignissimos. Quis voluptatem beatae rerum quis velit sunt.', 1, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(134, 3, 1, 'Aut qui reprehenderit vel mollitia id voluptatem. Qui nisi ut laborum qui omnis omnis.', 4, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(135, 18, 19, 'Quibusdam reprehenderit quas asperiores quaerat. Fuga ea voluptatum dolorem veritatis tempore officia ducimus. Adipisci reiciendis praesentium itaque quia voluptas. Ea minima numquam et fugit.', 1, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(136, 7, 12, 'Libero reprehenderit sed reprehenderit. Vitae ea dolorem totam enim sit. Aut labore optio dolorem consequatur dolor reiciendis. Eius expedita qui eveniet ad unde maxime.', 3, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(137, 10, 8, 'Quaerat maxime dignissimos id adipisci. Eum quasi qui sit rerum maiores. Maiores excepturi laborum nobis quia iusto commodi. Enim consectetur est veniam totam harum ratione dolores.', 4, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(138, 2, 8, 'Voluptas accusantium quo maxime aliquam quisquam possimus possimus. Eaque eos ab sunt ut harum. Sit dolores voluptas corrupti autem. Voluptas minima voluptas laudantium.', 3, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(139, 19, 2, 'Temporibus voluptatibus vel dignissimos temporibus. Aliquam eveniet et aut voluptatum.', 3, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(140, 7, 13, 'Beatae incidunt quasi ad in et ratione. Alias facilis ad enim officia. Architecto laboriosam cumque officiis eos neque et. Mollitia porro qui quis provident provident delectus fugit.', 5, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(141, 14, 2, 'Omnis aut perferendis aut qui sint nihil. Laboriosam in sunt qui incidunt cum. Labore sint temporibus vel autem.', 2, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(142, 19, 16, 'Molestias et aut aut est. Et tempore est reiciendis cupiditate distinctio dignissimos. Quia et rerum optio exercitationem et commodi perspiciatis. Voluptas in corrupti aperiam qui quos quis.', 3, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(143, 14, 13, 'At fugiat quisquam ut deleniti iure. Dicta voluptate quos optio quis nesciunt fuga eum. Nihil autem id beatae natus expedita in. Qui et ut rerum unde molestias quasi dicta et.', 4, '2018-12-09 04:23:51', '2018-12-09 04:23:51'),
(144, 2, 18, 'Exercitationem eaque modi vitae rerum nobis temporibus velit. Tempora et dolorem nulla ut impedit porro. Consequatur eligendi vero ut voluptatem. Ut vel qui sint odio. Consequatur sint sit sed.', 3, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(145, 7, 4, 'Enim ab occaecati earum. Mollitia minus illo ipsa itaque non. Et ab sint aut.', 2, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(146, 10, 19, 'Quisquam omnis dolor nam molestias aut. Iste dolores aliquam adipisci facere voluptatem maiores et et. Qui sint nobis voluptatum rerum earum et aut.', 2, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(147, 4, 11, 'Animi beatae cum temporibus fugit eum. Veniam laboriosam quibusdam exercitationem. Debitis illo veritatis debitis.', 5, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(148, 13, 1, 'Similique est itaque aut voluptatem. Sint ex eos neque ducimus totam odit ad. Aliquam quia dolor rem pariatur est.', 4, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(149, 4, 12, 'Cumque nesciunt recusandae consectetur iusto sit earum. Distinctio sit aliquid reprehenderit vel voluptatem qui id illo. Culpa iure deserunt voluptatem enim.', 1, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(150, 8, 8, 'Occaecati sit quisquam asperiores animi labore est. Est ad quod magnam quidem ut repellendus quo. Tempore qui qui et labore labore maxime. Nihil commodi fuga esse voluptas in corporis.', 5, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(151, 8, 10, 'Eius commodi et delectus saepe exercitationem. Quas aut quisquam ullam et. Voluptates similique quasi quia et hic.', 4, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(152, 2, 10, 'Ipsum totam tenetur quia modi ratione cumque est. Nisi consequuntur facere et.', 4, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(153, 4, 15, 'Sit et quia fugiat unde. Illum dicta reprehenderit vel consequatur hic ut. Doloremque placeat eum quisquam molestias sed.', 1, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(154, 16, 16, 'Nihil aut atque animi voluptas ea quos et. Omnis architecto impedit incidunt et aperiam impedit voluptas. Sed nobis mollitia iure qui et. Et qui voluptatibus eum voluptas voluptas eos et.', 4, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(155, 12, 5, 'Illo quos dolorem harum. Explicabo sint quam itaque velit molestiae in. Atque et rerum asperiores repudiandae. Eum inventore cupiditate doloremque qui dolores est pariatur.', 4, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(156, 18, 7, 'Occaecati excepturi vitae nihil totam nihil. Ex eius ea dolore et est eum dolor odit.', 1, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(157, 4, 1, 'Ullam ea ea illo blanditiis. Consequatur sint ut exercitationem similique. Aperiam saepe maiores totam aperiam. Molestiae dolore repudiandae quam voluptatem explicabo eum quibusdam.', 2, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(158, 9, 5, 'Hic mollitia nobis nihil cumque ex. Illo consequatur fugiat possimus. Quaerat optio mollitia labore aliquam consequatur. Nesciunt quae odio qui. Qui et ut iure.', 4, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(159, 6, 19, 'Neque quo ipsa vitae facere corporis. Veritatis fugit et voluptas voluptatem. Minus temporibus neque ipsam consequuntur delectus. Consequatur libero et dolore.', 3, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(160, 1, 20, 'Qui et vitae repellendus dolorem dolores. Id omnis eius voluptate dolore et qui ducimus. Deleniti amet magni veritatis est.', 5, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(161, 16, 17, 'Corporis et eligendi harum rerum vitae quia voluptatem. Modi expedita ut praesentium suscipit non ipsum ab totam. Necessitatibus voluptatibus et qui est similique.', 2, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(162, 18, 4, 'Molestiae molestiae enim sint. Exercitationem distinctio ipsa quaerat veritatis voluptas. Excepturi unde quo eum a aspernatur iure est. Maxime minima rerum nesciunt ea soluta eligendi qui.', 1, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(163, 17, 20, 'Magni dicta expedita animi deleniti est. Pariatur et soluta exercitationem est pariatur at. Quia consectetur est vero velit occaecati. Quasi aliquid consequatur animi.', 2, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(164, 2, 20, 'Molestiae sit qui rem. Ratione culpa quae voluptatibus est. Minus sed nemo aperiam vel reiciendis.', 1, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(165, 8, 19, 'Quos voluptatem molestias et reiciendis. Molestias dolore reprehenderit quia. Doloremque rerum aut rerum. Aut dolor vel deserunt porro molestiae ut.', 4, '2018-12-09 04:23:52', '2018-12-09 04:23:52'),
(166, 15, 8, 'Recusandae nulla dolorum cumque eius autem. Rem aliquam sit ullam facilis enim architecto quibusdam nostrum. Maxime veniam blanditiis dolore molestiae.', 3, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(167, 16, 19, 'Facere reprehenderit odio aut impedit aspernatur praesentium quo expedita. Et sed ullam nisi animi autem. Illo ut ad delectus et. Voluptatum quaerat enim quibusdam porro.', 5, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(168, 9, 9, 'Odio non eos ut odit. Ut nam voluptatum nihil qui et ullam qui. Facere rerum maiores tempore aut sed ut. Sed dolores numquam laboriosam possimus.', 1, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(169, 15, 16, 'Quas voluptas rerum sint aperiam quo dolores qui. Aut deleniti quas earum quas officiis id quidem dolores. Qui qui magni qui.', 2, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(170, 3, 19, 'Veritatis eius eaque quia sed magni. Voluptatem placeat quia incidunt voluptas. Eum est aut dicta tenetur quis. Dolor fugit ratione ipsam mollitia facilis eligendi.', 3, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(171, 16, 1, 'Blanditiis amet praesentium aliquid. Autem tenetur veniam numquam qui. Amet aliquam natus qui.', 3, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(172, 9, 17, 'Dolorem itaque numquam vel quidem et voluptas inventore. Alias deserunt in consequatur et dignissimos fuga voluptatem. Repellat et provident et tenetur in.', 5, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(173, 16, 7, 'Eaque officia in et explicabo. Et quos excepturi modi animi ut sint. Exercitationem illum delectus inventore natus exercitationem dolor unde.', 3, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(174, 12, 3, 'Dolorem ipsa fuga architecto earum. Eum aliquid est qui voluptates cumque et soluta. Culpa omnis ut qui totam aut est. Numquam et repudiandae optio recusandae earum exercitationem.', 2, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(175, 2, 9, 'Id architecto officiis earum expedita est labore. Dolores dolore sed voluptas est dolore. Tenetur eveniet accusamus in dolorem qui ut enim non.', 5, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(176, 20, 7, 'Incidunt vel est qui nemo. Enim non dolor natus quis iste reiciendis qui. Et dignissimos id alias neque.', 2, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(177, 19, 14, 'Et quia fugiat impedit accusantium consequatur expedita repudiandae ut. Tempora a praesentium molestiae. Earum iure expedita et ab. Temporibus molestiae occaecati repellat ea esse voluptas ut odit.', 5, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(178, 12, 13, 'Ex esse dolorum consequuntur neque. Voluptate dolor quis voluptatum quia error. Cum quaerat illo est dicta velit. Quia sed consequatur ad aut debitis dolore est. Nobis nisi aut et.', 2, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(179, 11, 9, 'Harum alias modi aliquid quis odio. Qui quo minima quia rerum nihil mollitia libero.', 2, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(180, 3, 2, 'Eius excepturi aut ut eligendi amet. Explicabo ipsa molestiae in dolores. Eos quam a dolorem. Ad ut quam et est vel.', 5, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(181, 10, 14, 'Est debitis ullam molestiae sit consequatur quia dolores quod. Amet eos enim porro. Dolore perspiciatis voluptatem iste ipsum accusamus. Nulla et qui delectus rerum.', 4, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(182, 9, 19, 'Consequatur corporis unde odio iusto ea. Ut commodi saepe odio dolore sed perspiciatis quibusdam. In nihil reprehenderit officiis.', 2, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(183, 9, 19, 'Ut quas ab qui consequatur. Eos blanditiis quia eos. In voluptatum molestias sint sint sapiente quidem aut.', 3, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(184, 5, 3, 'Facilis dolor consequuntur dolorem et et. Aliquid aliquam ea est earum iusto occaecati. Inventore itaque a laborum non vel ratione ex. Voluptatum recusandae recusandae animi distinctio.', 3, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(185, 20, 13, 'Pariatur consectetur ea facilis debitis cum. Assumenda quas a culpa rerum provident nisi non. Quia saepe nostrum dolores labore.', 5, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(186, 4, 7, 'Illum inventore iste laborum dolorem aliquid. Laboriosam quia perferendis at est doloribus totam distinctio aliquam. Quia eos dolorem ipsam ut.', 1, '2018-12-09 04:23:53', '2018-12-09 04:23:53'),
(187, 10, 18, 'Itaque voluptatem omnis quo ut laudantium. Ea nihil eligendi incidunt atque sequi omnis ad tenetur. Et sed recusandae eos. Ut autem necessitatibus et est.', 4, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(188, 4, 10, 'Placeat unde dignissimos autem possimus nisi. Sint totam velit fuga. Et ipsa at veritatis iusto debitis.', 2, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(189, 14, 8, 'Quo officiis voluptatibus nostrum suscipit ullam aliquid est. Dolorem atque qui quisquam adipisci. Consequuntur praesentium et quia nesciunt. Molestias vel et et delectus reiciendis.', 2, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(190, 6, 8, 'Blanditiis ea dolorem placeat sit sit illum commodi. Voluptatem sed aut et est dolorem consectetur non aspernatur. Est rerum est odio voluptatem numquam. Sapiente earum earum et iure rerum.', 5, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(191, 6, 11, 'Voluptatem enim ut magni ut non accusamus. Ut vel magni aut excepturi perspiciatis. Quo qui et consequatur voluptatem est qui. Minus qui iusto qui. Quos dolores earum placeat.', 5, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(192, 2, 15, 'Dolore vero dolor eum quis ut quod vel. Possimus unde qui et atque. Id ipsum nam dolor culpa.', 1, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(193, 19, 7, 'Vitae inventore aut consequatur qui. Impedit voluptate omnis aspernatur sed id rerum quas. Magnam a dolore facere ea debitis aut vitae repudiandae.', 3, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(194, 13, 8, 'In sint ipsum magni sequi accusantium autem. Placeat ullam saepe ullam error architecto. At incidunt blanditiis minus voluptatem.', 3, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(195, 9, 7, 'Dicta ut qui voluptates beatae dolorem. Sapiente dolores voluptatem voluptate ea nulla illum quisquam.', 1, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(196, 17, 4, 'Eum eos vel natus voluptatem impedit dolorem amet. Molestias id fugit soluta aut quis incidunt sed. Minima ipsam qui ratione. Dolorum rerum qui hic doloribus.', 2, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(197, 17, 12, 'Adipisci deserunt eius esse saepe nisi aperiam commodi. Labore nesciunt numquam distinctio quibusdam. Non maiores corporis recusandae sit aliquam voluptatem eum. Laudantium sed eaque nostrum maiores.', 3, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(198, 20, 9, 'Debitis molestiae necessitatibus reprehenderit eaque et optio et sunt. Illum id magni tenetur alias est. Dolor et quae porro magni deserunt enim at.', 3, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(199, 19, 13, 'Eligendi dolor ut quia quas sed voluptas. Sit atque et et non vel ut.', 1, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(200, 1, 3, 'Non quisquam qui harum id qui qui id. Dolor non labore a qui mollitia. Est consequatur quam expedita quidem. Eveniet optio totam provident quos.', 5, '2018-12-09 04:23:54', '2018-12-09 04:23:54');

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
(1, 'admin', 'Administrator', '2018-12-09 04:23:58', '2018-12-09 04:23:58'),
(2, 'user', 'Normal User', '2018-12-09 04:23:58', '2018-12-09 04:23:58');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `receiver_name`, `address`, `city`, `country`, `phone_number`, `shipping_note`, `created_at`, `updated_at`) VALUES
(1, 'Miss Aaliyah Klocko I', '3503 Marion Vista Apt. 032\nSipesfort, ID 15922-8746', 'West Edafort', 'Tunisia', '1-752-729-4170 x4095', NULL, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(2, 'Vidal Beer', '92242 Schmeler Pines Apt. 950\nNew Rebeka, LA 00551', 'Alejandraburgh', 'Saint Barthelemy', '576-637-6134 x79246', NULL, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(3, 'Jamir Botsford', '65335 Brown Avenue\nNorth Floyville, WY 79302', 'Daxmouth', 'Korea', '+1 (545) 919-2232', NULL, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(4, 'Dr. Ricardo Lehner Jr.', '391 Ceasar Common\nLake Edmond, CA 37884', 'West Sammie', 'Mongolia', '+1-407-343-4824', NULL, '2018-12-09 04:23:54', '2018-12-09 04:23:54'),
(5, 'Jailyn Mayert MD', '80391 Armstrong Spurs\nPredovicport, WI 01543-4310', 'Thompsonville', 'Ecuador', '1-324-650-1895 x9267', NULL, '2018-12-09 04:23:55', '2018-12-09 04:23:55'),
(6, 'Dr. Ezekiel Russel', '4616 Emelia Light\nKochview, WY 50585', 'New Clair', 'Solomon Islands', '729.298.3497 x605', NULL, '2018-12-09 04:23:55', '2018-12-09 04:23:55'),
(7, 'Kaitlin Pollich', '231 Goldner Dam Apt. 619\nEast Lewisshire, NY 98788-1410', 'Lake Berenice', 'Armenia', '878-314-7315', NULL, '2018-12-09 04:23:55', '2018-12-09 04:23:55'),
(8, 'Sherman Yundt', '483 Ismael Tunnel Apt. 738\nPort Ramiro, MI 22536', 'Leoneton', 'Israel', '496-976-9042', NULL, '2018-12-09 04:23:55', '2018-12-09 04:23:55'),
(9, 'Desmond Adams', '957 Kuhic River\nEast Kyleighview, LA 51705-5641', 'West Beaulah', 'Guinea', '1-827-919-7691 x74197', NULL, '2018-12-09 04:23:55', '2018-12-09 04:23:55'),
(10, 'Okey Stokes', '842 Muller Camp Apt. 656\nIssacville, NE 09640-7863', 'New Buford', 'Nauru', '(516) 425-0469 x082', NULL, '2018-12-09 04:23:55', '2018-12-09 04:23:55');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@gmail.com', 'users/default.png', '$2y$10$xRASb5fcWxhzHX4PGO/vvu/WqwBiax2pRIqQNDLqEQPs3pz1hc8Ai', NULL, NULL, '2018-12-09 04:24:02', '2018-12-09 04:24:02'),
(2, 2, 'Noemy Daniel', 'beau.pfannerstill@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bR92h8JAkc', NULL, '2018-12-09 04:24:02', '2018-12-09 04:24:02'),
(3, 2, 'Theresia Robel', 'christy33@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SkbX8pS3Te', NULL, '2018-12-09 04:24:02', '2018-12-09 04:24:02'),
(4, 2, 'Sylvia Moore V', 'fwilderman@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Q2kvBVXYgX', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(5, 2, 'Kenna Hermann', 'stanford.sporer@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WXWLw1imaK', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(6, 2, 'Howard Rempel', 'ben.anderson@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Qk9gZ9y6Bb', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(7, 2, 'Lonnie Ullrich', 'deondre.labadie@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'py5emgqUKo', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(8, 2, 'Sydni Herman', 'desmond58@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XyvkiApSc5', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(9, 2, 'Trace Marks', 'rashawn.lueilwitz@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'iTfM3QK4VY', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(10, 2, 'Phyllis Marvin', 'tmuller@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'p3R1WcAjgS', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(11, 2, 'Jennie Hayes', 'crowe@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qizrNqhI6y', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(12, 2, 'Ms. Marta Konopelski DVM', 'ihegmann@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kBw5f3uugO', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(13, 2, 'Fidel Wuckert', 'xcremin@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xUjIjw6CX5', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(14, 2, 'Nico Bahringer', 'paucek.dexter@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oUlDbZGp8y', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(15, 2, 'Isai Harris', 'littel.ila@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EYupjld6M6', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(16, 2, 'Rowland Nitzsche', 'darion08@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yfEBIl3sfC', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(17, 2, 'Jaclyn Stoltenberg', 'ludwig27@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lCtjH3cyd5', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(18, 2, 'Raegan Goodwin Jr.', 'pharris@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9ObfKdcDQR', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(19, 2, 'Anita Upton', 'xmertz@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qlk9JVUbX8', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(20, 2, 'Birdie Gusikowski', 'kip42@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Mx1ZgAYgFj', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03'),
(21, 2, 'Madge Bins', 'jessy.welch@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NWWxwKjMEX', NULL, '2018-12-09 04:24:03', '2018-12-09 04:24:03');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
