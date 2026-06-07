-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2026 at 07:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori_barang25550044`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(1, 'K001', 'Accesoris'),
(3, 'K002', 'Elektronik'),
(4, 'K003', 'Fashion'),
(5, 'K004', 'ATK (Alat Tulis Kantor)'),
(6, 'K005', 'Perlengkapan Bayi dan Anak');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `min_stock` int(11) DEFAULT 5,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `update_at`) VALUES
(2, 1, 'P001', 'Gelang', 65, 25, 10, '6a2fd25ea8a66388a52c3809c11c736e.jpeg', '2026-05-08 07:52:36', NULL),
(4, 1, 'P002', 'Kalung', 25, 10, 15, 'd0ccef639fc432a5927b26429e9bd6c0.jpg', '2026-05-25 04:42:09', NULL),
(5, 1, 'P003', 'Anting', 25, 15, 20, 'b269028bf046a5c282e8c312dfc2073b.jpg', '2026-05-25 04:43:58', NULL),
(6, 1, 'P004', 'Cincin', 24, 20, 25, '8e381d42abeb3000420e09310f65259b.jpg', '2026-05-25 04:45:08', NULL),
(7, 3, 'P005', 'Kipas Angin', 55, 40, 350, '45c5191ec9392008c28d8a9a3ee8c6d8.jpg', '2026-05-26 10:28:44', NULL),
(8, 3, 'P006', 'Setrika', 20, 25, 150, '5a88d605559f1e67df419f9426ae6a5c.jpg', '2026-05-26 10:30:11', NULL),
(9, 3, 'P007', 'Televisi', 6, 20, 250, '4129120ecc69344cb798e6fa5f27fe04.jpg', '2026-05-26 10:32:37', NULL),
(10, 3, 'P008', 'Kulkas', 20, 20, 1499, '569673762f3c7a30e77121517033792e.jpg', '2026-05-26 10:50:09', NULL),
(11, 4, 'P009', 'Hijab', 74, 24, 15, 'ca95cbdc2a85be231d93e24de4ab9760.jpg', '2026-05-26 11:05:15', NULL),
(12, 4, 'P010', 'Celana', 70, 18, 145, 'f853476cf6aab2a319e7200d6616bc31.jpg', '2026-05-26 11:07:27', NULL),
(13, 4, 'P011', 'Kaos', 60, 39, 80, '51a86892e111ddbd06f1b9500c349033.jpg', '2026-05-26 11:08:52', NULL),
(14, 4, 'P012', 'Sepatu', 25, 10, 150, '9502c01d5e9b96442a81b7655b90e3fc.jpg', '2026-05-26 11:10:36', NULL),
(15, 5, 'P013', 'Buku', 80, 60, 25, '3ed03a3789ed3576fe6fe81840fb1574.jpg', '2026-05-26 11:26:20', NULL),
(16, 5, 'P014', 'Pulpen', 15, 23, 15, 'c649f10caf47e71474a2b41a1e16c0f4.jpg', '2026-05-26 11:27:31', NULL),
(17, 5, 'P015', 'Clipboard', 15, 29, 25, '782fae262499a3e30cb6fce014a1629f.jpg', '2026-05-26 11:29:07', NULL),
(18, 5, 'P016', 'Perforator', 15, 3, 25, 'f525aa20252e244a97446a8b7a421fd1.jpg', '2026-05-26 11:31:13', NULL),
(19, 6, 'P017', 'Popok', 40, 34, 60, '407075d1989667447252f5184afba5bf.jpg', '2026-05-27 10:06:04', NULL),
(20, 6, 'P018', 'Bedak Bayi', 20, 19, 35, '96628fe07b693925a89d7b00670f7fb6.jpg', '2026-05-27 10:06:43', NULL),
(21, 6, 'P019', 'Botol Susu', 30, 15, 29, '76bb75060834d83f312a2d3e820da96f.jpg', '2026-05-27 10:07:43', NULL),
(22, 6, 'P020', 'Susu', 65, 25, 80, '95eebee971d048c3ec95275b701ffae6.jpg', '2026-05-27 10:08:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(1, 2, 'ADD', 20, 50, 70, '', '2026-05-13 13:42:35', 3),
(2, 2, 'ADD', 20, 70, 90, 'apa yahhhhh', '2026-05-13 13:47:27', 3),
(3, 2, 'REDUCE', 15, 90, 75, '', '2026-05-13 14:11:03', 3),
(4, 2, 'ADD', 10, 75, 85, '', '2026-05-15 08:55:53', 3),
(5, 2, 'REDUCE', 5, 85, 80, '', '2026-05-15 08:56:14', 3),
(6, 11, 'ADD', 5, 50, 55, '', '2026-05-27 10:10:30', 3),
(7, 7, 'REDUCE', 5, 55, 50, '', '2026-05-27 10:10:56', 3),
(8, 9, 'REDUCE', 10, 26, 16, '', '2026-06-03 06:55:26', 3),
(9, 11, 'ADD', 19, 55, 74, '', '2026-06-06 14:40:49', 3),
(10, 2, 'ADD', 10, 80, 90, '', '2026-06-06 14:41:11', 3),
(11, 5, 'ADD', 20, 5, 25, '', '2026-06-06 14:41:30', 3),
(12, 7, 'ADD', 10, 50, 60, '', '2026-06-06 14:41:44', 3),
(13, 7, 'REDUCE', 5, 60, 55, '', '2026-06-06 14:43:20', 3),
(14, 2, 'REDUCE', 5, 90, 85, '', '2026-06-06 14:43:37', 3),
(15, 12, 'ADD', 20, 50, 70, '', '2026-06-06 14:44:45', 3),
(16, 9, 'REDUCE', 10, 16, 6, '', '2026-06-06 14:45:01', 3),
(17, 17, 'REDUCE', 5, 20, 15, '', '2026-06-06 14:45:19', 3),
(18, 20, 'REDUCE', 10, 30, 20, '', '2026-06-06 14:45:36', 3),
(19, 19, 'REDUCE', 15, 55, 40, '', '2026-06-06 14:45:51', 3),
(20, 22, 'ADD', 20, 45, 65, '', '2026-06-06 14:46:19', 3),
(21, 18, 'ADD', 5, 10, 15, '', '2026-06-06 14:46:36', 3),
(22, 16, 'REDUCE', 5, 20, 15, '', '2026-06-06 14:46:53', 3),
(23, 2, 'REDUCE', 20, 85, 65, '', '2026-06-06 14:47:12', 3),
(24, 15, 'ADD', 40, 40, 80, '', '2026-06-06 14:49:23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(3, 'Nadia Viantika', 'Nadiaviantika13@gmail.com', '$2y$10$P4G.fAIJ16ZLTkmggfd9n.v3ZNV3MvDG3ln7xVE5Bc/AACRfSx8.2', 'admin', 1, '2026-05-14 13:44:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
