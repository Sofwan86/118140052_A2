-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 05:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_minggu_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article`
--

CREATE TABLE `tbl_article` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `article` longtext NOT NULL,
  `cover_img` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_article`
--

INSERT INTO `tbl_article` (`id`, `user_id`, `title`, `article`, `cover_img`, `created_at`) VALUES
(8, 1, 'fdsjipjdsoijdsiofjd', ' fdsdsaafdfdsaa ', 'Capture1.PNG', '2020-12-01 12:36:24'),
(9, 6, 'aaaa', 'aaaaaa', 'ddd.PNG', '2020-12-01 13:14:03'),
(10, 6, 'aaaaaaaaaaaaa', 'aaaaaaaa', 'ii.PNG', '2020-12-01 13:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(7, 'user1', 'doniansa4@gmail.com', '$2y$10$vfo1QM9tBq/KKqz8TGIrXOfafdmogPr744Bna/oUigh48m4QgNsWC', 2222, '2020-12-01 15:19:09'),
(8, 'Sofwan Hidayat Nasution', 'sofwan.hidayatnst@gmail.com', '$2y$10$v9BlDAT94rY2GRHlJzd1zOSb8dsyl8XeL4gsFS1/q53l.lzGPD6le', 2222, '2020-12-01 15:25:08'),
(9, 'Sofwan Hidayat Nasution', 'sofwan.hidayatnst@gmail.com', '$2y$10$pxuswddfj0HUIiVoFGK0ROTwQJLqwZuKZ8/vJ561mbs3c2A1rBhzC', 2222, '2020-12-01 15:25:35'),
(10, 'sofwan', 'sofwan.hidayatnst@gmail.com', '$2y$10$ATDprtYgg0gh8LXM6UTerO9my1Djl7BTOR3gBn/Zadq54nZUCxsEy', 2222, '2020-12-01 15:26:13'),
(11, 'admin', 'sofwan.118140052@student.itera.ac.id', '$2y$10$etXSaiScd6Q2f8/eHYMvl.30E2h7AQm7opwK5WaXKHXSA4JYWT3oG', 2222, '2020-12-01 15:28:23'),
(12, 'sofwan', 'sofwan.118140052@student.itera.ac.id', '$2y$10$2.okV1AXBtSAqKwF7cyD1O7OmA4R4Ciq3C1GA/b7HZt4IbF6OKCfa', 2222, '2020-12-01 15:31:43'),
(13, 'sofwanhiday', 'sofwan.hidayatnst@facebook.com', '$2y$10$2ztRHgIDO9QSG4STjAemv.jxAdFJ4no71rNhMdPIrFkkp6zbjx.uu', 2222, '2020-12-01 15:33:16'),
(19, 'sofwansii', 'sofwan.hidayatnst@gmail.com', '$2y$10$f0ZiY8tpFqBuf7oEyuidKuNH8RirPCzcCL17Efl9QkynGfKq.pHDu', 2323, '2020-12-01 16:02:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_article`
--
ALTER TABLE `tbl_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_article`
--
ALTER TABLE `tbl_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
