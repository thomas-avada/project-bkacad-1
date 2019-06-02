-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2019 at 04:54 PM
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
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `firstname`, `lastname`, `email`, `address`, `city`, `country`, `tel`, `zip_code`, `shipping_note`, `created_at`, `updated_at`) VALUES
(1, 'Tuáº¥n', 'Nguyá»…n', '', '2a/khu táº­p thá»ƒ bá»™ cÃ´ng an/ KhÃ¢m thiÃªn', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '10320', NULL, '2019-01-12 15:12:41', '2019-01-12 15:12:41'),
(2, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '10320', NULL, '2019-01-12 15:17:19', '2019-01-12 15:17:19'),
(3, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '12123', NULL, '2019-01-12 15:35:15', '2019-01-12 15:35:15'),
(4, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '10320', NULL, '2019-01-12 15:36:29', '2019-01-12 15:36:29'),
(5, 'Tuáº¥n', 'Nguyá»…n', '', 'Brown Stone New York', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '10320', NULL, '2019-01-12 15:41:07', '2019-01-12 15:41:07'),
(6, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '', NULL, '2019-01-13 07:09:44', '2019-01-13 07:09:44'),
(7, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '', NULL, '2019-01-13 07:12:15', '2019-01-13 07:12:15'),
(8, 'Tuáº¥n', 'Nguyá»…n', '', '2a/khu táº­p thá»ƒ bá»™ cÃ´ng an/ KhÃ¢m thiÃªn', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '0944046335', '10320', NULL, '2019-01-14 13:53:08', '2019-01-14 13:53:08'),
(9, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnamn', '0944046335', '', NULL, '2019-01-14 16:39:32', '2019-01-14 16:39:32'),
(10, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnamn', '0944046335', '', NULL, '2019-01-17 15:23:58', '2019-01-17 15:23:58');

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
(1, 'Nike', NULL, '2019-01-12 04:35:23', '2019-01-12 04:35:23'),
(2, 'Champion', NULL, '2019-01-12 04:44:16', '2019-01-12 04:44:16'),
(3, 'Obey', NULL, '2019-01-12 04:45:45', '2019-01-12 04:45:45'),
(4, 'Wink', NULL, '2019-01-13 09:31:48', '2019-01-13 09:31:48'),
(5, 'Sparx', NULL, '2019-01-13 10:58:37', '2019-01-13 10:58:37'),
(6, 'Prada', NULL, '2019-01-13 11:09:58', '2019-01-13 11:09:58'),
(7, 'Adidas', NULL, '2019-01-13 11:13:07', '2019-01-13 11:13:07'),
(8, 'Zara', NULL, '2019-01-13 11:19:08', '2019-01-13 11:19:08'),
(9, 'Boss', NULL, '2019-01-13 11:26:20', '2019-01-13 11:26:20'),
(10, 'Jansport', NULL, '2019-01-13 11:31:50', '2019-01-13 11:31:50'),
(11, 'Gucci', NULL, '2019-01-13 11:33:05', '2019-01-13 11:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `brand_category`
--

CREATE TABLE `brand_category` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Hoodie', NULL, '2019-01-12 04:34:54', '2019-01-12 04:34:54'),
(2, 'Shoes', NULL, '2019-01-12 04:35:14', '2019-01-12 04:35:14'),
(3, 'Accessories', NULL, '2019-01-12 04:46:06', '2019-01-12 04:46:06'),
(4, 'Sweater', NULL, '2019-01-13 11:19:51', '2019-01-13 11:19:51'),
(5, 'Glasses', NULL, '2019-01-13 11:27:05', '2019-01-13 11:27:05'),
(6, 'Belt', NULL, '2019-01-13 11:28:48', '2019-01-13 11:28:48'),
(7, 'Backpack', NULL, '2019-01-13 11:31:21', '2019-01-13 11:31:21'),
(8, 'Handbag', NULL, '2019-01-13 11:33:16', '2019-01-13 11:33:16'),
(9, 'Shirt', NULL, '2019-01-13 11:46:05', '2019-01-13 11:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `core_config`
--

CREATE TABLE `core_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_config`
--

INSERT INTO `core_config` (`id`, `path`, `display_name`, `value`) VALUES
(1, '/config/currency/currency_symbol', '', 'Ä‘'),
(2, '/config/currency/currency_order', '', 'after');

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
(30, '2018_07_25_123600_create_images_table', 1),
(31, '2018_12_22_134725_create_core_config_table', 1),
(32, '2019_01_10_142532_create_billings_table', 1),
(33, '2019_01_11_085504_add_invoiced_column_to_orders', 1),
(34, '2019_01_12_041455_add_foreign_key_to_products_table', 1),
(35, '2019_01_12_041559_add_foreign_key_to_orders_table', 1),
(36, '2019_01_12_041732_add_foreign_key_to_reviews_table', 1),
(37, '2019_01_12_061236_add_images_and_featued_columns', 2),
(38, '2019_01_13_093432_add_gender_column_to_products_table', 3),
(39, '2019_01_14_141115_create_shipping_methods_table', 4),
(40, '2019_01_14_141309_create_payment_methods_table', 4),
(41, '2019_01_14_142111_add_fee_to_shipping_methods_table', 5),
(42, '2019_01_14_162715_add_shipping_payment_method_to_orders_table', 6),
(43, '2019_01_17_145335_add_shipping_fee_column_to_orders_table', 7),
(44, '2019_01_19_062823_create_wishlists_table', 8),
(45, '2019_01_19_092305_add_shipped_column_to_orders_table', 9),
(46, '2019_01_19_150352_add_status_to_orders_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `billing_id` int(10) UNSIGNED NOT NULL,
  `subtotal` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `invoiced` tinyint(1) NOT NULL DEFAULT '0',
  `grand_total` int(10) UNSIGNED NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `shipping_fee` bigint(20) UNSIGNED NOT NULL,
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shipping_id`, `billing_id`, `subtotal`, `created_at`, `updated_at`, `invoiced`, `grand_total`, `shipping_method_id`, `payment_method_id`, `shipping_fee`, `shipped`, `status`) VALUES
(1, 4, 1, 1, 4200000, '2019-01-12 15:12:41', '2019-01-12 15:12:41', 1, 4200000, 1, 1, 0, 1, 2),
(2, 4, 2, 2, 2100000, '2019-01-12 15:17:19', '2019-01-12 15:17:19', 1, 2100000, 1, 1, 0, 1, 2),
(3, 4, 3, 3, 1200000, '2019-01-12 15:35:15', '2019-01-12 15:35:15', 0, 1200000, 1, 1, 0, 0, 0),
(4, 4, 4, 4, 3300000, '2019-01-12 15:36:30', '2019-01-12 15:36:30', 0, 3300000, 1, 1, 0, 0, 0),
(5, 2, 5, 5, 1200000, '2019-01-12 15:41:07', '2019-01-12 15:41:07', 0, 1200000, 1, 1, 0, 0, 0),
(6, 4, 6, 6, 3300000, '2019-01-13 07:09:44', '2019-01-13 07:09:44', 0, 3300000, 1, 1, 0, 0, 0),
(7, 4, 7, 7, 2100000, '2019-01-13 07:12:15', '2019-01-13 07:12:15', 0, 2100000, 1, 1, 0, 0, 0),
(8, 2, 8, 8, 2100000, '2019-01-14 13:53:09', '2019-01-14 13:53:09', 0, 2100000, 1, 1, 0, 0, 0),
(9, 4, 9, 9, 2100000, '2019-01-14 16:39:32', '2019-01-14 16:39:32', 0, 2100000, 1, 2, 0, 0, 0),
(10, 4, 10, 10, 1200000, '2019-01-17 15:23:58', '2019-01-17 15:23:58', 0, 1215000, 2, 2, 15000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `item_qty` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `item_qty`) VALUES
(1, 2, 2),
(2, 2, 1),
(3, 1, 1),
(4, 1, 1),
(4, 2, 1),
(5, 1, 1),
(6, 1, 1),
(6, 2, 1),
(7, 2, 1);

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `payment_method_code`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'cod', 'Payment On Delivery (COD)', 'You can pay and check the product closely before you pay.', '2019-01-14 14:25:24', '2019-01-14 14:25:24'),
(2, 'bank_transfer', 'Bank Transfer', 'Pay after redirection.', '2019-01-14 14:25:24', '2019-01-14 14:25:24');

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
  `rich_description` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `gender` tinyint(4) NOT NULL DEFAULT '2',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `description`, `rich_description`, `img`, `price`, `quantity`, `status`, `created_at`, `updated_at`, `featured`, `images`, `gender`, `slug`) VALUES
(1, 2, 1, 'Jordan 06 Summer Special', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<div style=\"text-align: center;\">dsfsdfasdf</div>', 'public/storage/images/5c39afe6aadd2.jpg', 1200000, 10, 1, '2019-01-12 04:36:40', '2019-01-12 04:36:40', 0, '[\"public\\/storage\\/images\\/5c39af3a85ae1.jpg\",\"public\\/storage\\/images\\/5c39af3a85e78.jpg\"]', 2, 'jordan-06-summer-special'),
(2, 2, 1, 'Air Force One', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'public/storage/images/5c39b07ae9a86.png', 2100000, 5, 1, '2019-01-12 04:42:20', '2019-01-12 04:42:20', 0, '[\"public\\/storage\\/images\\/5c39b07af15ab.png\",\"public\\/storage\\/images\\/5c39b07af1a93.jpg\"]', 2, 'air-force-one'),
(3, 1, 2, 'Hoodie Champion', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'public/storage/images/5c39b0b6729d3.jpg', 1400000, 5, 1, '2019-01-12 04:44:05', '2019-01-12 04:44:05', 0, '[\"public\\/storage\\/images\\/5c39b0b675092.jpg\",\"public\\/storage\\/images\\/5c39b0b6755b6.jpg\"]', 2, 'hoodie-champion'),
(4, 3, 3, 'Boey Cap Black', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'public/storage/images/5c39b0d59bd51.jpg', 300000, 14, 1, '2019-01-12 04:46:46', '2019-01-12 04:46:46', 0, '[\"public\\/storage\\/images\\/5c39b0d5a3b96.jpg\",\"public\\/storage\\/images\\/5c39b0d5a40fd.jpg\"]', 2, 'boey-cap-black'),
(5, 3, 4, 'Wink Cap Pink', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'public/storage/images/5c3b05618435f.jpg', 230000, 12, 1, '2019-01-13 09:31:13', '2019-01-13 09:31:13', 0, NULL, 2, 'wink-cap-pink'),
(6, 1, 2, 'Hoodie Dickes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'public/storage/images/5c3b1823a5523.jpg', 1500000, 15, 1, '2019-01-13 10:51:15', '2019-01-13 10:51:15', 0, NULL, 2, 'hoodie-dickes'),
(7, 3, 4, 'Wink Beanie ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'public/storage/images/5c3b18b77679c.jpg', 400000, 12, 1, '2019-01-13 10:53:43', '2019-01-13 10:53:43', 0, NULL, 2, 'wink-beanie'),
(8, 2, 5, 'Casual Shoes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'public/storage/images/5c3b1cf276613.jpg', 2300000, 4, 1, '2019-01-13 11:02:51', '2019-01-13 11:02:51', 0, '[\"public\\/storage\\/images\\/5c3b1adb1b136.jpg\",\"public\\/storage\\/images\\/5c3b1adb1b4d4.jpg\",\"public\\/storage\\/images\\/5c3b1adb1b926.jpg\",\"public\\/storage\\/images\\/5c3b1adb1bbfc.jpg\"]', 2, 'casual-shoes'),
(9, 6, 5, 'Leather Belt', '', '', 'public/storage/images/5c3b1d0e1b50b.jpg', 1500000, 12, 1, '2019-01-13 11:10:40', '2019-01-13 11:10:40', 0, NULL, 1, 'leather-belt'),
(10, 2, 7, 'Adidas Zoom 3', '', '', 'public/storage/images/5c3b1e0911c32.jpg', 3300000, 10, 1, '2019-01-13 11:15:16', '2019-01-13 11:15:16', 1, '[\"public\\/storage\\/images\\/5c3b1dc420103.jpg\",\"public\\/storage\\/images\\/5c3b1dc420578.jpg\",\"public\\/storage\\/images\\/5c3b1dc42095d.jpg\"]', 2, 'adidas-zoom-3'),
(11, 1, 7, 'Atheletic Hoodie', '', '', 'public/storage/images/5c3b1e5bdf694.jpg', 2500000, 11, 1, '2019-01-13 11:17:47', '2019-01-13 11:17:47', 1, '[\"public\\/storage\\/images\\/5c3b1e5bdfc29.jpg\",\"public\\/storage\\/images\\/5c3b1e5be0107.jpg\",\"public\\/storage\\/images\\/5c3b1e5be059e.jpg\"]', 1, 'atheletic-hoodie'),
(12, 4, 8, 'Zara Autumn Sweater', '', '', 'public/storage/images/5c3b1f110441a.jpg', 2600000, 14, 1, '2019-01-13 11:20:49', '2019-01-13 11:20:49', 0, '[\"public\\/storage\\/images\\/5c3b1f110472d.jpg\",\"public\\/storage\\/images\\/5c3b1f11049cb.jpg\"]', 1, 'zara-autumn-sweater'),
(13, 2, 2, 'New product', '', '', 'public/storage/images/5c3b2017e04ee.jpg', 45345, 34, 1, '2019-01-13 11:25:11', '2019-01-13 11:25:11', 0, NULL, 2, 'new-product'),
(14, 5, 9, 'Boss Sun Glasses', '', '', 'public/storage/images/5c3b20c7dbaab.jpg', 2000000, 10, 1, '2019-01-13 11:28:07', '2019-01-13 11:28:07', 1, NULL, 1, 'boss-sun-glasses'),
(15, 7, 10, 'Double Sport Backpack', '', '', 'public/storage/images/5c3b21a99a6ca.jpg', 3500000, 2, 1, '2019-01-13 11:31:53', '2019-01-13 11:31:53', 0, NULL, 2, 'double-sport-backpack'),
(16, 8, 11, 'Gucci Handbag', '', '', 'public/storage/images/5c3b2270d1d51.jpg', 4000000, 1, 1, '2019-01-13 11:35:12', '2019-01-13 11:35:12', 1, '[\"public\\/storage\\/images\\/5c3b2270d2319.jpg\",\"public\\/storage\\/images\\/5c3b2270d2956.jpg\",\"public\\/storage\\/images\\/5c3b2270d2df5.jpg\"]', 0, 'gucci-handbag'),
(17, 2, 6, 'Saffiano Textured Prada', '', '', 'public/storage/images/5c3b2334d43da.jpg', 9000000, 5, 1, '2019-01-13 11:38:28', '2019-01-13 11:38:28', 1, '[\"public\\/storage\\/images\\/5c3b2334d49df.jpeg\",\"public\\/storage\\/images\\/5c3b2334d4f04.jpg\"]', 0, 'saffiano-textured-prada'),
(18, 9, 2, 'Casual Shirt', '', '', 'public/storage/images/5c3b25179b576.jpg', 700000, 5, 1, '2019-01-13 11:46:31', '2019-01-13 11:46:31', 0, NULL, 1, 'casual-shirt'),
(19, 4, 5, 'Cotton Jumper Sweater', '', '', 'public/storage/images/5c3b282eb540c.jpg', 1500000, 14, 1, '2019-01-13 11:59:42', '2019-01-13 11:59:42', 1, '[\"public\\/storage\\/images\\/5c3b282eb58d5.jpg\",\"public\\/storage\\/images\\/5c3b282eb5d32.jpg\"]', 1, 'cotton-jumper-sweater'),
(20, 2, 3, 'New product 2', '', '', 'public/storage/images/5c3c8d09c4255.jpg', 89808080, 78, 1, '2019-01-18 13:22:18', '2019-01-14 13:22:18', 0, NULL, 2, 'new-product-2');

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
(1, 2, 1, 'kjkljljlkj', 4, '2019-01-12 10:31:30', '2019-01-12 10:31:30'),
(2, 2, 4, 'sdfsdfsdfasdf', 5, '2019-01-12 10:44:29', '2019-01-12 10:44:29'),
(3, 2, 4, 'sdfsdfdas', 4, '2019-01-12 10:44:37', '2019-01-12 10:44:37'),
(4, 2, 1, 'a', 1, '2019-01-12 13:02:45', '2019-01-12 13:02:45'),
(5, 4, 1, 'dfsdfsdfsdf', 0, '2019-01-13 08:19:23', '2019-01-13 08:19:23'),
(6, 4, 1, 'sdfsdfasdf', 0, '2019-01-13 08:19:43', '2019-01-13 08:19:43'),
(7, 2, 2, 'Love this', 4, '2019-01-13 12:00:47', '2019-01-13 12:00:47'),
(8, 2, 4, '3', 4, '2019-01-19 04:37:23', '2019-01-19 04:37:23'),
(9, 2, 4, 'sdfsdfsdf', 0, '2019-01-19 04:37:34', '2019-01-19 04:37:34'),
(10, 2, 18, 'this is good af', 5, '2019-01-19 08:57:57', '2019-01-19 08:57:57');

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
(1, 'admin', 'Administrator', '2019-01-11 21:31:36', '2019-01-11 21:31:36'),
(2, 'user', 'Normal User', '2019-01-11 21:31:36', '2019-01-11 21:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `firstname`, `lastname`, `email`, `address`, `city`, `country`, `tel`, `zip_code`, `shipping_note`, `created_at`, `updated_at`) VALUES
(1, 'Tuáº¥n', 'Nguyá»…n', '', '2a/khu táº­p thá»ƒ bá»™ cÃ´ng an/ KhÃ¢m thiÃªn', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '10320', NULL, '2019-01-12 15:12:40', '2019-01-12 15:12:40'),
(2, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '10320', NULL, '2019-01-12 15:17:19', '2019-01-12 15:17:19'),
(3, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '12123', NULL, '2019-01-12 15:35:14', '2019-01-12 15:35:14'),
(4, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '10320', NULL, '2019-01-12 15:36:29', '2019-01-12 15:36:29'),
(5, 'Tuáº¥n', 'Nguyá»…n', '', 'Brown Stone New York', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '10320', NULL, '2019-01-12 15:41:07', '2019-01-12 15:41:07'),
(6, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '', NULL, '2019-01-13 07:09:44', '2019-01-13 07:09:44'),
(7, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '944046335', '', NULL, '2019-01-13 07:12:15', '2019-01-13 07:12:15'),
(8, 'Tuáº¥n', 'Nguyá»…n', '', '2a/khu táº­p thá»ƒ bá»™ cÃ´ng an/ KhÃ¢m thiÃªn', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '0944046335', '10320', NULL, '2019-01-14 13:53:08', '2019-01-14 13:53:08'),
(9, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnamn', '0944046335', '', NULL, '2019-01-14 16:39:32', '2019-01-14 16:39:32'),
(10, 'Tuáº¥n', 'Nguyá»…n', '', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnamn', '0944046335', '', NULL, '2019-01-17 15:23:57', '2019-01-17 15:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipping_method_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fee` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `shipping_method_code`, `display_name`, `description`, `created_at`, `updated_at`, `fee`) VALUES
(1, 'free_shipping', 'Free Shipping', 'Free Shipping within Dong Da', '2019-01-14 14:20:58', '2019-01-14 14:20:58', 0),
(2, 'fixed_price', 'Fixed Price', '15000đ for every shipping within Hanoi', '2019-01-14 14:20:58', '2019-01-14 14:20:58', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `firstname`, `lastname`, `email`, `avatar`, `password`, `address`, `city`, `country`, `tel`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(2, 1, 'Tuáº¥n', 'Nguyá»…n', 'admin@gmail.com', 'users/default.jpeg', '$2y$10$WV/iPDrI0KWyzTGTw.nXMODoiI.uaXlAsvTQd60j.5H1SEUEexxqq', '2a/khu táº­p thá»ƒ bá»™ cÃ´ng an/ KhÃ¢m thiÃªn', 'Quáº­n Äá»‘ng Äa', 'Vietnam', '0944046335', NULL, NULL, '2018-01-11 21:31:55', '2019-01-11 21:31:55'),
(4, 2, 'Tuáº¥n', 'Nguyá»…n', 'tuananh@gmail.com', 'users/default.jpeg', '$2y$10$jqQWNHafsEOTmr7OtD/B0OHLWRmm3qnfw/ZHDF4DBSlzvxjS/NTXq', '11th Avenue', 'Quáº­n Äá»‘ng Äa', 'Vietnamn', '0944046335', NULL, NULL, '2019-01-12 15:08:02', '2019-01-12 15:08:02');

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
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 0, '2019-01-19 08:38:52', '2019-01-19 08:38:52'),
(2, 2, '2019-01-19 07:54:27', '2019-01-19 07:54:27'),
(2, 3, '2019-01-19 15:00:01', '2019-01-19 15:00:01'),
(2, 12, '2019-01-19 06:48:14', '2019-01-19 06:48:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `core_config`
--
ALTER TABLE `core_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`),
  ADD KEY `orders_billing_id_foreign` (`billing_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_payment_method_code_unique` (`payment_method_code`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipping_methods_shipping_method_code_unique` (`shipping_method_code`);

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
  ADD PRIMARY KEY (`user_id`,`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `core_config`
--
ALTER TABLE `core_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_billing_id_foreign` FOREIGN KEY (`billing_id`) REFERENCES `billings` (`id`),
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
