-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 30, 2022 at 06:32 PM
-- Server version: 10.7.1-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopp`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_persian_ci NOT NULL,
  `postalcode` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `pelaque` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `city_id`, `state_id`, `address`, `postalcode`, `user_id`, `lat`, `lng`, `unit`, `mobile`, `phone`, `pelaque`, `name`) VALUES
(1, 1, 8, 'کرج میدان سپاه خیابان بوستان', '314567932', 1, '0', '0', '8', '09910751280', '09015062140', '27', 'کیمیا عابدینی');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `name_en` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `name_en`) VALUES
(1, 'اپل', 'apple'),
(2, 'آدیداس', 'addidas'),
(3, 'نایک', 'nike'),
(4, 'سامسونگ', 'samsung'),
(5, 'چی توز', 'chitoz'),
(6, 'مزمز', 'mazmaz'),
(7, 'کیان', 'kian');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `tilte_en` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `tilte_en`, `category_id`) VALUES
(1, 'کالای دیجیتال', 'dijital', 0),
(2, 'پوشاک', 'clothes', 0),
(3, 'زیبایی و سلامت', 'beauty and health', 0),
(4, 'اسباب بازی،کودک و نوزاد', 'Toys,baby and infant', 0),
(5, 'کالاهای سوپرمارکتی', 'supermarkets', 0),
(6, 'خانه و آشپزخانه', 'home and kitchen', 0),
(7, 'کتاب،لوازم التحریر و هنر', 'books,Stationery and art', 0),
(8, 'ورزش و سفر', 'sport and vacations', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `name_en` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `name_en`) VALUES
(1, 'کرج', 'karaj'),
(2, 'تهران', 'tehran'),
(3, 'رشت', 'rasht'),
(4, 'قائم شهر', 'Qaem Shahr'),
(5, 'ساری', 'Sary'),
(6, 'قم', 'Qom'),
(7, 'بندرعباس', 'Bandar Abbas'),
(8, 'اردبیل', 'Ardebil'),
(9, 'ارومیه', 'Oroomie');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `name_en` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `name_en`) VALUES
(1, 'آبی', 'blue'),
(2, 'بنفش', 'purple'),
(3, 'صورتی', 'pink'),
(4, 'مشکی', 'black'),
(5, 'سفید', 'white'),
(6, 'قرمز', 'red'),
(7, 'نارنجی', 'orange');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_persian_ci NOT NULL,
  `text_comment` text COLLATE utf8mb4_persian_ci NOT NULL,
  `unknown` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `title`, `text_comment`, `unknown`) VALUES
(1, 'ghhh', 'hjj', 0),
(2, 'k', 'jhgf', 12),
(3, 'vc', 'vc', 78);

-- --------------------------------------------------------

--
-- Table structure for table `comments_images`
--

DROP TABLE IF EXISTS `comments_images`;
CREATE TABLE IF NOT EXISTS `comments_images` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments_negative`
--

DROP TABLE IF EXISTS `comments_negative`;
CREATE TABLE IF NOT EXISTS `comments_negative` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments_positive`
--

DROP TABLE IF EXISTS `comments_positive`;
CREATE TABLE IF NOT EXISTS `comments_positive` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments_scores`
--

DROP TABLE IF EXISTS `comments_scores`;
CREATE TABLE IF NOT EXISTS `comments_scores` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `value` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `product_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `link` text COLLATE utf8mb4_persian_ci NOT NULL,
  `source` text COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
CREATE TABLE IF NOT EXISTS `pay` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
CREATE TABLE IF NOT EXISTS `price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_discount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `name_en` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `colors_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `picture` text COLLATE utf8mb4_persian_ci NOT NULL,
  `slug` text COLLATE utf8mb4_persian_ci NOT NULL,
  `inventory` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `brands_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_persian_ci NOT NULL,
  `code` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `name`, `name_en`, `colors_id`, `property_id`, `picture`, `slug`, `inventory`, `subcategory_id`, `brands_id`, `status_id`, `description`, `code`) VALUES
(1, 'آیفون 13', 'iphone13', 1, 1, '#ax_Mobile', '#Mobile_Iphone13', 3, 1, 1, 1, 'این موبایل قابلیت های بسیار بالایی دارد', '12345'),
(2, 'چی توز', 'chitoz', 7, 2, 'aks_pofak', '#Pofak_namaki', 10, 6, 5, 4, 'پفک نمکی چیتوز', '0987');

-- --------------------------------------------------------

--
-- Table structure for table `product_status`
--

DROP TABLE IF EXISTS `product_status`;
CREATE TABLE IF NOT EXISTS `product_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `product_status`
--

INSERT INTO `product_status` (`id`, `name`) VALUES
(1, 'موجود'),
(2, 'اتمام'),
(3, 'به زودی'),
(4, 'در حال اتمام'),
(5, 'تازه شارژشده');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `property_group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `property_group_id`) VALUES
(1, 'کیفیت دوربین', 1),
(2, 'حافظه جانبی', 2),
(3, 'حافظه داخلی', 2),
(4, 'دوربین سلفی', 1),
(5, 'ابعاد بدنه ', 3),
(6, 'حجم داخلی', 5);

-- --------------------------------------------------------

--
-- Table structure for table `property_groups`
--

DROP TABLE IF EXISTS `property_groups`;
CREATE TABLE IF NOT EXISTS `property_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `property_groups`
--

INSERT INTO `property_groups` (`id`, `name`) VALUES
(1, 'دوربین'),
(2, 'حافظه'),
(3, 'سایز'),
(4, 'ابعاد'),
(5, 'حجم');

-- --------------------------------------------------------

--
-- Table structure for table `property_products`
--

DROP TABLE IF EXISTS `property_products`;
CREATE TABLE IF NOT EXISTS `property_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `properies_id` int(11) NOT NULL,
  `value` text COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `property_products`
--

INSERT INTO `property_products` (`id`, `product_id`, `properies_id`, `value`) VALUES
(1, 1, 1, '64 مگاپیکسل'),
(2, 1, 4, '13 مگاپیکسل'),
(3, 2, 6, '60 گرم');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `name_en` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `name_en`) VALUES
(1, 'تهران', 'Tehran'),
(2, 'آذربایجان شرقی', 'Azarbayejan sharqi'),
(3, 'آذربایجان غربی', 'Azarbayejan Qharbi'),
(4, 'اصفهان', 'Esfehan'),
(5, 'ایلام', 'Ilam'),
(6, 'بوشهر', 'Booshehr'),
(7, 'خراسان جنوبی', 'Khorasan Jonoobi'),
(8, 'البرز', 'Alborz');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `name_en` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `name_en`, `category_id`) VALUES
(1, 'موبایل', 'mobile', 1),
(2, 'پیرهن زنانه', 'dress', 2),
(3, 'لب تاب', 'laptop', 1),
(4, 'شلوار زنانه', 'women pants', 2),
(5, 'چیپس', 'chips', 5),
(6, 'پفک', 'pofak', 5),
(7, 'ریمل', 'mascara', 3);

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

DROP TABLE IF EXISTS `transportation`;
CREATE TABLE IF NOT EXISTS `transportation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_persian_ci NOT NULL,
  `lastname` varchar(250) COLLATE utf8mb4_persian_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_persian_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `token` varchar(250) COLLATE utf8mb4_persian_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_persian_ci NOT NULL,
  `last_password` varchar(250) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `code_confirme` varchar(200) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `gender` varchar(200) COLLATE utf8mb4_persian_ci NOT NULL,
  `code_forget` varchar(200) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `type_register` varchar(200) COLLATE utf8mb4_persian_ci DEFAULT NULL COMMENT 'api or site',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `mobile`, `email`, `address`, `token`, `password`, `last_password`, `code_confirme`, `gender`, `code_forget`, `type_register`) VALUES
(1, 'kimia', 'Abedini', '09015062140', 'kimiyaw78abedini@gmail.com', '', '1234', '12345678', NULL, '123', 'female', NULL, 'api'),
(2, 'sepehr', 'Nikbin', '09371234567', 'sepehrnikbin.pg@gmail.com', '', '1235', '87654321', NULL, NULL, 'male', NULL, 'site'),
(3, 'sara', 'Naziri', '09145678695', 'sara@gmail.com', NULL, '1236', '1378617', NULL, NULL, 'female', NULL, 'api'),
(4, 'mahsa', 'Karimi', '09384458769', 'mahsa.karimi@gmail.com', NULL, '1237', '4909', NULL, NULL, 'female', NULL, 'site'),
(5, 'amir', 'rahimi', '09389090917', 'amir77rahimi@gmail.com', NULL, '1233', '2404', NULL, NULL, 'male', NULL, 'api'),
(6, 'saba', 'tahmtan', '09117766893', 'saba78tahmtan@gmail.com', NULL, '1238', '1377617', NULL, NULL, 'female', NULL, 'api'),
(7, 'sina', 'hosseini', '09125679042', 'sina24hosseini@gmail.com', NULL, '1239', '121212', NULL, NULL, 'male', NULL, 'site');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
CREATE TABLE IF NOT EXISTS `wallet` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
