-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2024 at 06:45 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `television_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `total_price`, `order_date`) VALUES
(1, 5, 0.00, '2024-04-19 19:53:37'),
(2, 5, 0.00, '2024-04-19 19:53:45'),
(3, 6, 32.00, '2024-04-19 20:05:40'),
(4, 6, 32.00, '2024-04-19 20:08:24'),
(5, 6, 32.00, '2024-04-19 20:19:49'),
(6, 6, 32.00, '2024-04-19 20:20:09'),
(7, 6, 32.00, '2024-04-19 20:20:15'),
(8, 6, 32.00, '2024-04-19 20:23:01'),
(9, 6, 32.00, '2024-04-19 20:24:31'),
(10, 6, 32.00, '2024-04-19 20:25:47'),
(11, 6, 32.00, '2024-04-19 20:25:48'),
(12, 6, 32.00, '2024-04-19 20:26:08'),
(13, 6, 32.00, '2024-04-19 20:32:37'),
(14, 6, 32.00, '2024-04-19 20:50:45'),
(15, 2, 1798.00, '2024-04-19 22:21:40'),
(16, 2, 1798.00, '2024-04-19 22:23:14'),
(17, 2, 1798.00, '2024-04-19 22:23:19'),
(18, 2, 1798.00, '2024-04-19 22:24:46'),
(19, 2, 0.00, '2024-04-19 22:25:12'),
(20, 2, 0.00, '2024-04-19 22:26:34'),
(21, 2, 0.00, '2024-04-19 22:28:10'),
(22, 2, 0.00, '2024-04-19 22:31:13'),
(23, 2, 0.00, '2024-04-19 22:35:58'),
(24, 2, 0.00, '2024-04-19 22:39:12'),
(25, 2, 0.00, '2024-04-19 23:34:11'),
(26, 2, 0.00, '2024-04-19 23:38:32'),
(27, 2, 0.00, '2024-04-19 23:40:45'),
(28, 2, 0.00, '2024-04-19 23:41:04'),
(29, 2, 0.00, '2024-04-19 23:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 4, 5, 1),
(2, 5, 5, 1),
(3, 6, 5, 1),
(4, 7, 5, 1),
(5, 8, 5, 1),
(6, 9, 5, 1),
(7, 10, 5, 1),
(8, 11, 5, 1),
(9, 12, 5, 1),
(10, 13, 5, 1),
(11, 14, 5, 1),
(12, 15, 13, 1),
(13, 15, 14, 1),
(14, 16, 13, 1),
(15, 16, 14, 1),
(16, 17, 13, 1),
(17, 17, 14, 1),
(18, 18, 13, 1),
(19, 18, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image_url`) VALUES
(13, 'Sony BRAVIA XR A80J', 'The Sony BRAVIA XR A80J is a 4K Ultra HD OLED Smart TV with Cognitive Processor XR and XR Triluminos Pro for a picture that feels deep, natural, and real.', 799.00, 'uploads/t1.jpeg'),
(12, 'LG OLED C1 Series', 'The LG OLED C1 Series is a 4K Smart OLED TV with AI ThinQ, Dolby Vision IQ, and Dolby Atmos for a truly immersive viewing and listening experience.', 1499.00, 'uploads/t2.jpeg'),
(11, 'Samsung QLED Q80A', 'The Samsung QLED Q80A is a 4K UHD Smart TV with Quantum Matrix Technology and Quantum HDR 12x for breathtaking color and incredible detail.', 1299.00, 'uploads/t1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(2, 'admin', '$2y$10$M8jrgo2wJwAdG2dRBZwMaOAdHu3xkN2TE.B4k3GtJLX8vYnnMP4DC', 'admin@example.com'),
(3, 'Asad', '$2y$10$mQETaZYZBEFC8TyCi0KbFOLgRX995dVDxtZ3DxCo5lxfMW6SqUd7G', 'asad786mehar786@gmail.com'),
(4, 'Asad2', '$2y$10$7Os62E91wJowpHPn7SW9VuqHg9cLDIV/MuPZkF.K4M9YOes/HnAaO', 'asad786meha786@gmail.com'),
(5, 'da', '$2y$10$tl9YzZWRYFL5RvVrRtn5IOBQaqszdIHh3nW3AW6Y6Z2ZGfqwai2Di', 'dasd@gmail.com'),
(6, 'dase', '$2y$10$8kgg388dmb/Ge2YxPMMMCOKN4czYIz8CP/7ff.YoLoW86ydaKZy3G', 'sdas@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
