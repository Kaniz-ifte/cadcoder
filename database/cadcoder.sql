-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2021 at 04:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cadcoder`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `course_id`, `details`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'visit course', NULL, 1, NULL, NULL, '2020-12-12 00:15:45', NULL),
(2, 1, 2, 'visit course', NULL, 1, NULL, NULL, '2020-12-12 00:15:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `avatar`, `email`, `phone`, `password`, `remember_token`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Admin', NULL, 'admin@admin.com', NULL, '$2y$10$OTSypo0/ic3mL98TN8kIOOWpckPLe.MGbXwqAzY7aKXdP4W0rXjyy', 'SRMMtikru1IgLytLhtGLd8gHQnb9e4749iU4pIS3kEBeRHS7LsKpXH76KrPj', NULL, '2020-03-06 02:33:18', NULL, '2020-03-06 02:33:18', NULL),
(2, 'Admin1', NULL, 'admin1@admin.com', NULL, '$2y$10$OTSypo0/ic3mL98TN8kIOOWpckPLe.MGbXwqAzY7aKXdP4W0rXjyy', '0glyJGOuJJfu40KmISC13vcxYr8wSl9okX7ZCunFqbGSmIo8eV70WrLg3KuU', NULL, '2020-03-06 02:33:18', NULL, '2020-03-06 02:33:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_table`
--

CREATE TABLE `base_table` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `banner` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `banner`, `description`, `order`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(10, 'HSC Academic + Admission', NULL, '<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>What will you get in this subscription?</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Live Interactive Class</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Live Exam</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Doubt Clearing Sessions</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Class Lecture PDF</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Personalized Learning<br /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Live Exam</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Single Subscription Unlock All</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Learn with Best Educators</span></p>', 1, 1, '2020-08-22 03:33:16', NULL, '2020-08-31 23:12:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `thumbnail` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `subject_id`, `title`, `thumbnail`, `description`, `order`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 11, 'Vector', 'storage/video-chapters/August2020/dRMi66ZIT9x2H3uIvRsB.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:49:38'),
(2, 11, 'Static Electricity', 'storage/video-chapters/August2020/usdZGVfKrwjSxuCpZ4WT.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:39:35'),
(3, 11, 'Periodic Motion', 'storage/video-chapters/August2020/n6yZipf3Z16ra8uzMMZO.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:36:06'),
(4, 11, 'Geometrical Optics', 'storage/video-chapters/August2020/jg44mR4cvfh8afZOQ5oa.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:00:13'),
(5, 12, 'Qualitative Chemistry', 'storage/video-chapters/August2020/dHXS0PvWsobSAsZ8zb2o.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:39:08'),
(6, 12, 'Organic Chemistry', 'storage/video-chapters/May2020/UWcLiKggMf2jgJ3c6Vkn.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, NULL),
(8, 12, 'Electro-Chemistry', 'storage/video-chapters/May2020/UWcLiKggMf2jgJ3c6Vkn.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, NULL),
(9, 13, 'Matrix and Determinant', 'storage/video-chapters/August2020/Sd3e15C9zSUm0oJfq8hQ.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:29:00'),
(10, 13, 'Integration', 'storage/video-chapters/August2020/yFap7YdX4hSzkRQCodeG.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:26:06'),
(11, 13, 'Straight Line', 'storage/video-chapters/May2020/dsHTwErzLL97yH6QhRJO.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-05-10 21:16:00'),
(14, 11, 'Physical World and Measurement', 'storage/video-chapters/August2020/vNa53mYGiT8onjmQfBEK.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:38:39'),
(15, 11, 'Dynamics', 'storage/video-chapters/August2020/w80kgYoNhxskLhWIXMgk.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:26:35'),
(16, 11, 'Structural Properties of Matter', 'storage/video-chapters/August2020/4Iyx8o1yNRj0DbqPge0j.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:47:43'),
(17, 11, 'Wave', 'storage/video-chapters/August2020/uQlUdZXpOcxXjTLt4UVw.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:51:17'),
(18, 11, 'Ideal Gas and Kinetic Theory of Gases', 'storage/video-chapters/August2020/TztslF8v305Mmh0zqtqm.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:28:52'),
(19, 11, 'Thermodynamics', 'storage/video-chapters/August2020/5AMlV2tuU6l96DEg8TuX.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:48:34'),
(20, 11, 'Current Electricity', 'storage/video-chapters/August2020/6SFwvGelllpjAtcHYnzN.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:19:11'),
(21, 11, 'Magnetic Effects of Electric Current and Magnetism', 'storage/video-chapters/August2020/pFFRvcs1vdpj3kUiKsJC.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:34:07'),
(22, 11, 'Electromagnetic Induction and AC Current', 'storage/video-chapters/August2020/IOpIw4tFXA2yIFDFqFMS.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:27:45'),
(23, 11, 'Physical Optics', 'storage/video-chapters/August2020/uXSfYknEtiRLlGdniVZx.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:37:58'),
(24, 13, 'Statics', 'storage/video-chapters/August2020/9Kgc2sJWKSKk2vthplUF.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:32:32'),
(25, 13, 'Trigonometry', 'storage/video-chapters/August2020/YAGilccjEsYpJeTRs9tD.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:33:18'),
(26, 13, 'Differentiation', 'storage/video-chapters/May2020/UWcLiKggMf2jgJ3c6Vkn.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, NULL),
(27, 13, 'Permutation Combination', 'storage/video-chapters/August2020/XXvT0qwI0W6dkpuTtjbS.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:29:50'),
(28, 13, 'Binomial Theorem', 'storage/video-chapters/August2020/mtgct0eN5R3WJbrJIyU0.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:21:40'),
(29, 13, 'Polynomial and Polynomial Equation', 'storage/video-chapters/August2020/ZjHFdm7ocvnAhOSPsXBO.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:30:52'),
(30, 12, 'Environmental Chemistry', 'storage/video-chapters/August2020/eTFy9w4QpZ5ACodg9yq3.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:37:24'),
(31, 12, 'Periodic Properties of Elements and Chemical Bonding', 'storage/video-chapters/August2020/0eMNhVjrYKz5yqo2Bilt.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:38:04'),
(32, 11, 'Newtonian Mechanics', 'storage/video-chapters/August2020/HTOzQ1eGHvBSNzXGZiEa.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:35:10'),
(33, 11, 'Work, Power, Energy', 'storage/video-chapters/August2020/l9z3eaRrhVLzUHGDVA6F.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-28 23:50:44'),
(34, 11, 'Gravity and Gravitation', 'storage/video-chapters/August2020/Qtr4JmOaXtzLaZTCiBNE.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:16:39'),
(35, 11, 'Introduction to Modern Physics', 'storage/video-chapters/August2020/5onDzCFQemKKhhMWk7rt.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:17:12'),
(36, 11, 'Atom Model and Nuclear Physics', 'storage/video-chapters/August2020/fLSumzzvoGxlX6pvF8Nv.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:16:09'),
(37, 11, 'Semiconductor', 'storage/video-chapters/August2020/O0RpCUiWj67Co0q9ZxNN.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:17:55'),
(38, 11, 'Astronomy', 'storage/video-chapters/August2020/XqBrJct5VsCWkLijLk41.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:15:38'),
(39, 12, 'Chemical Changes', 'storage/video-chapters/August2020/kCixg1f3MSu3kosFG7SS.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:35:30'),
(40, 12, 'Vocational Chemistry', 'storage/video-chapters/August2020/Fxh2CbXQGqOEkpuWeNu0.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:40:12'),
(41, 12, 'Safe Use of Laboratory', 'storage/video-chapters/August2020/tDCPzATAQJ4W46P6MvFS.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:39:43'),
(42, 12, 'Quantitative Chemistry', 'storage/video-chapters/August2020/6Pli6UgQe52tedYkuNe9.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:38:29'),
(43, 12, 'Economic Chemistry', 'storage/video-chapters/August2020/phX7tyT8hPQGZ8t41Vvg.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:36:50'),
(44, 13, 'Vector', 'storage/video-chapters/August2020/A5i6Yf5tRzMXs4GZryUF.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:33:49'),
(45, 13, 'Circle', 'storage/video-chapters/August2020/Cn7WJYzwDkoTJKzczJKN.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:23:02'),
(46, 13, 'Function and Graph of Function', 'storage/video-chapters/August2020/akmkIA2tP2KdNMOvIFxa.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:25:29'),
(47, 13, 'Real Number and Inequalities', 'storage/video-chapters/August2020/aB9HAFm69vm8YnlxmAeu.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:32:02'),
(48, 13, 'Linear Programming', 'storage/video-chapters/August2020/L9zO04Kk1mnb8xiYLREf.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:27:59'),
(49, 13, 'Complex Number', 'storage/video-chapters/August2020/ThydNY3CZ1g9w8OYqtSK.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:23:37'),
(50, 13, 'Conics', 'storage/video-chapters/August2020/ViYA7in6TcCf1ZyRcSt2.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:22:15'),
(51, 13, 'Inverse Trigonometric Function and Trigonometric Equations', 'storage/video-chapters/August2020/9gDJoyymEuFCNfqF7MPt.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:27:12'),
(52, 13, 'Motion of Particles in Plane', 'storage/video-chapters/August2020/briWQHBm4EGFjIsareGw.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:31:33'),
(53, 13, 'Dispersion Measurement and Probability', 'storage/video-chapters/August2020/EV23SGILMsEdpuw5lHbg.png', NULL, NULL, NULL, NULL, '2022-02-20 19:49:00', NULL, '2020-08-29 13:24:42'),
(55, 7, 'Current Electricity', 'storage/video-chapters/June2020/iYqliAEU0ZJKEAmKblCv.png', NULL, NULL, NULL, NULL, '2020-04-02 04:47:30', NULL, '2020-06-05 00:09:42'),
(56, 8, 'Chemical Changes', 'storage/video-chapters/May2020/eUZo9lAzvcsdZaqXMia1.png', NULL, NULL, NULL, NULL, '2020-04-02 05:09:23', NULL, '2020-05-10 21:13:40'),
(57, 9, 'Straight Line', 'storage/video-chapters/May2020/GnGkNnTRS21K7Gedmcyz.png', NULL, NULL, NULL, NULL, '2020-04-03 00:04:15', NULL, '2020-05-10 21:14:32'),
(58, 9, 'Trigonometric Ratios', 'storage/video-chapters/May2020/wC7HWi5sbbAjvwhL49xK.png', NULL, NULL, NULL, NULL, '2020-04-12 02:14:39', NULL, '2020-05-10 21:14:06'),
(59, 7, 'Static Electricity', 'storage/video-chapters/June2020/gkQu737yF0LDV0gRjXNL.png', NULL, NULL, NULL, NULL, '2020-04-13 23:56:32', NULL, '2020-06-05 00:10:10'),
(60, 21, 'Physics Doubt Clearing (16 Apr)', 'storage/video-chapters/May2020/UWcLiKggMf2jgJ3c6Vkn.png', NULL, NULL, NULL, NULL, '2020-04-16 21:09:19', NULL, '2020-04-16 21:09:19'),
(61, 21, 'Chemistry Doubt Clearing (17 Apr)', 'storage/video-chapters/May2020/UWcLiKggMf2jgJ3c6Vkn.png', NULL, NULL, NULL, NULL, '2020-04-17 21:45:59', NULL, '2020-04-17 21:45:59'),
(62, 22, 'Current Electricity', 'storage/video-chapters/June2020/wq269Ro8FXePTRga6hNG.png', NULL, NULL, NULL, NULL, '2020-04-20 23:55:09', NULL, '2020-06-05 00:09:23'),
(63, 22, 'Chemical Changes', 'storage/video-chapters/May2020/u0X9SRtTvCfY2F3sxltz.png', NULL, NULL, NULL, NULL, '2020-04-22 02:02:29', NULL, '2020-05-11 01:45:22'),
(64, 21, 'Physics Doubt Clearing (24 Apr)', 'storage/video-chapters/May2020/UWcLiKggMf2jgJ3c6Vkn.png', NULL, NULL, NULL, NULL, '2020-04-24 21:51:24', NULL, '2020-04-24 21:51:24'),
(65, 7, 'Geometrical Optics', 'storage/video-chapters/June2020/W0emlIioX6pvQvC2SmAK.png', NULL, NULL, NULL, NULL, '2020-04-26 23:51:13', NULL, '2020-06-05 00:10:27'),
(66, 8, 'Organic Chemistry', 'storage/video-chapters/May2020/ZwgfDlAR1LXIduQjWixN.png', NULL, NULL, NULL, NULL, '2020-05-18 01:51:16', NULL, '2020-05-18 18:36:53'),
(67, 22, 'Static Electricity', 'storage/video-chapters/June2020/i9dcI6aIH0JAfhhHvRkI.png', NULL, NULL, NULL, NULL, '2020-05-20 23:18:03', NULL, '2020-06-05 00:10:04'),
(68, 22, 'Trigonometric Ratios', 'storage/video-chapters/May2020/0F8fgEyXH733FYY7BW5E.png', NULL, NULL, NULL, NULL, '2020-05-20 23:18:24', NULL, '2020-05-20 23:18:24'),
(69, 7, 'Physical Optics', 'storage/video-chapters/June2020/pxleyAiOz7q5232xTk3B.png', NULL, NULL, NULL, NULL, '2020-06-03 23:42:13', NULL, '2020-06-05 00:10:47'),
(70, 9, 'Differentiation', 'storage/video-chapters/June2020/GLll9cNrgYUkmz3TiXgm.png', NULL, NULL, NULL, NULL, '2020-06-19 00:09:46', NULL, '2020-06-19 23:15:50'),
(71, 7, 'Magnetic Effects of Electric Current and Magnetism', 'storage/video-chapters/August2020/utJO546Lduzb9wksASid.png', NULL, NULL, NULL, NULL, '2020-07-19 23:47:08', NULL, '2020-08-28 23:34:25'),
(72, 15, 'Vector', 'storage/video-chapters/August2020/L1kMcd2eFU2N7KwsCjha.png', NULL, NULL, NULL, NULL, '2020-08-06 23:28:54', NULL, '2020-08-28 23:50:07'),
(73, 18, 'Matrix and Determinant', 'storage/video-chapters/August2020/WBKKJyz23YENwfPxxTuS.png', NULL, NULL, NULL, NULL, '2020-08-10 02:14:41', NULL, '2020-08-29 13:29:10'),
(74, 23, 'Physical World and Measurement, Vector', NULL, NULL, NULL, NULL, NULL, '2020-08-16 01:51:34', NULL, '2020-08-16 01:51:34'),
(75, 9, 'Linear Programming', 'storage/video-chapters/August2020/q3bXDpTIQvoQJ5NlbU3U.png', NULL, NULL, NULL, NULL, '2020-08-16 01:57:45', NULL, '2020-08-29 13:28:14'),
(76, 15, 'Static Electricity', NULL, NULL, NULL, NULL, NULL, '2020-08-18 01:32:22', NULL, '2020-08-18 01:32:22'),
(77, 7, 'Introduction to Modern Physics', 'storage/video-chapters/August2020/CmmDoXsqnTDtRcb58hJY.png', NULL, NULL, NULL, NULL, '2020-08-18 01:39:45', NULL, '2020-08-29 13:17:24'),
(78, 23, 'Safe Use of Laboratory, Qualitative chemistry', NULL, NULL, NULL, NULL, NULL, '2020-08-19 02:03:58', NULL, '2020-08-19 02:07:20'),
(79, 9, 'Complex Number', 'storage/video-chapters/August2020/gEzmrPpfwfgPDqqxY8Dr.png', NULL, NULL, NULL, NULL, '2020-08-21 03:04:47', NULL, '2020-08-29 13:23:48'),
(80, 15, 'Current Electricity', 'storage/video-chapters/August2020/QD1WzkTBs9tNaiTKis1z.png', NULL, NULL, NULL, NULL, '2020-08-23 04:25:39', NULL, '2020-08-28 23:20:22'),
(81, 23, 'Matrices & Determinants, Vector', NULL, NULL, NULL, NULL, NULL, '2020-08-24 02:27:15', NULL, '2020-08-24 02:50:43'),
(82, 15, 'Dynamics', 'storage/video-chapters/August2020/tHN1cwTeXDqrPmh6NQXo.png', NULL, NULL, NULL, NULL, '2020-08-25 01:19:03', NULL, '2020-08-28 23:26:55'),
(83, 16, 'Safe Use of Laboratory, Qualitative chemistry', NULL, NULL, NULL, NULL, NULL, '2020-08-25 04:41:34', NULL, '2020-08-25 04:41:34'),
(84, 23, 'Straight Line, Circle', NULL, NULL, NULL, NULL, NULL, '2020-08-27 00:39:44', NULL, '2020-08-27 01:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `video_id`, `text`, `image`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 654, 55, 'স্যার এই অক্ঙের সমাধান করে দেন প্লীজ।', 'storage/comments/1584187659.jpg', NULL, '2020-03-14 22:07:39', NULL, NULL, NULL),
(2, 150, 99, 'সৃজনশীল question এর ans homework \r\nক) লেমডা = 2.512 ×10^-10 m \r\nখ) শক্তির পাথক‍্য = 3.9 ×10^-18\r\nlast সৃজনশীল এর খ এর ana\r\nখ)ফাই এর মান বড় হওয়ার কারনে ইলেকট্রন মুক্ত হবে না।\r\nউওর গুলো কি ঠিক হয়েছে?', NULL, NULL, '2020-03-15 00:47:53', NULL, NULL, NULL),
(9, 210, 86, 'স্পর্শ জ্যা কিভাবে বের করব??', NULL, NULL, '2020-03-16 04:48:53', NULL, NULL, NULL),
(20, 234, 103, 'ভাইয়া, ভিডিও ডাউনলোডের সিস্টেম করেন প্লিজ!আমার মত অনেকেরই ব্রডব্যান্ড নাই।ডাটা কিনে ভিডিও দেখা অনেক খরচ সাপেক্ষ হচ্ছে।', NULL, NULL, '2020-03-19 20:17:49', NULL, NULL, NULL),
(21, 195, 77, '26:00 min e probably vul hoise!!! VAG ER FORMULAY', NULL, NULL, '2020-03-20 19:59:37', NULL, NULL, NULL),
(22, 198, 105, 'Dispersion Measurement and Probability দ্রুত দিন প্লিজ । কনিক্স এর লেকচার নেটে আছে । সমাভবনা তেমন নাই', NULL, NULL, '2020-03-21 02:14:51', NULL, NULL, NULL),
(24, 278, 104, 'Class e ektu case gulon dhora sikay dile valo hoto vaia..', NULL, NULL, '2020-03-21 04:27:23', NULL, NULL, NULL),
(25, 719, 2, 'Vaiya master class ta koi pabo', NULL, NULL, '2020-03-22 03:34:11', NULL, NULL, NULL),
(26, 299, 53, 'ভাইয়া ত্রিকোণমিতি সৃজনশীল প্রাক্টিস চাই\r\n2019 সালের প্রশ্ন গুলো সল্ভ করে দেন', NULL, NULL, '2020-03-23 09:47:13', NULL, NULL, NULL),
(27, 250, 107, '💜💜☺', NULL, NULL, '2020-03-27 15:56:34', NULL, NULL, NULL),
(28, 576, 65, '১)ভাইয়া ভারী গ্যাসের ক্ষেত্রে এক্সেক্লি কি কারনে তাদের লেখ প্রথমে নিচে আস্তেছে আবার কেন উপরে উঠতেছে\r\n২)ভারী গ্যাসের লেখটি কি হালকা গ্যাসের লেখের মত হতে পারে?কিভাবে?\r\n৪)CH4 ও NH3 এর ক্রান্তি তাপমাত্রা কত?', NULL, NULL, '2020-03-28 17:07:22', NULL, NULL, NULL),
(29, 426, 1, 'Bhaiya p01 er pdf upload den ni?☹️', NULL, NULL, '2020-04-01 15:27:25', NULL, NULL, NULL),
(30, 308, 106, 'ভালোই তো লাগলো।', NULL, NULL, '2020-04-01 19:00:39', NULL, NULL, NULL),
(31, 866, 109, 'Vaia atom economy ar j last sutronta dilen oita toh boi aa nai...', NULL, NULL, '2020-04-02 05:25:54', NULL, NULL, NULL),
(32, 843, 109, 'ভাইয়ে E-Factor এর মান কি শতকরা বের করতে হবে না? 27:37 এ সূত্রে তো 100 দ্বারা গুন করেন নি।', NULL, NULL, '2020-04-02 05:32:37', NULL, NULL, NULL),
(33, 717, 109, 'C2F2Cl4 :)', NULL, NULL, '2020-04-02 11:52:16', NULL, NULL, NULL),
(36, 680, 109, 'Should we multiply EF with 100? If not, then how is it related to AE?', NULL, NULL, '2020-04-02 14:34:32', NULL, NULL, NULL),
(37, 680, 109, 'Ans: C2F2Cl4', NULL, NULL, '2020-04-02 15:18:07', NULL, NULL, NULL),
(38, 680, 109, 'Bhaia, didn\'t understand why hydrocarbon would blast. I can\'t find the topic in my book.', NULL, NULL, '2020-04-02 15:20:28', NULL, NULL, NULL),
(39, 680, 109, 'Ans: 40%. Reason: The more %AE the less wastage.', NULL, NULL, '2020-04-02 15:29:17', NULL, NULL, NULL),
(40, 680, 109, 'অজলীয় আয়নিক দ্রাবক কি? বই এ এ টপিকে পেলাম।', NULL, NULL, '2020-04-02 16:23:52', NULL, NULL, NULL),
(41, 718, 109, 'vaia e -factor a ki 100 ghun hoba na', NULL, NULL, '2020-04-02 17:02:24', NULL, NULL, NULL),
(42, 718, 109, 'shudu ki atom ekonomi tei 100 ghon hoba', NULL, NULL, '2020-04-02 17:04:25', NULL, NULL, NULL),
(43, 718, 109, NULL, 'storage/comments/1585811156.png', NULL, '2020-04-02 17:05:56', NULL, NULL, NULL),
(46, 725, 109, 'ভাই আমার কাছে গুহ স্যারের বই নেই!!!\r\nরসায়ন প্রথম এবং দ্বিতীয় পত্র দুইটাই হাজারী স্যারের।\r\nভাইয়া ই- ফ্যাক্টর এর ক্ষেত্রেও ১০০ গুণ হবে না!!!\r\nভাইয়া একেবারে শেষের Example টা করে দিয়েন,অনুগ্রহ করে।\r\nজাযাকাল্লাহ খাইরান।', 'storage/comments/1585833081.jpg', NULL, '2020-04-02 23:11:21', NULL, NULL, NULL),
(48, 840, 109, 'Last H.W ta pari nai', NULL, NULL, '2020-04-03 01:27:41', NULL, NULL, NULL),
(52, 790, 112, 'Bhaia if I\'m not wrong the value of radius would be √6 in (i) no.problem', NULL, NULL, '2020-04-03 03:28:50', NULL, NULL, NULL),
(53, 724, 109, 'ভাইয়া, আমি হাজারী স্যারের বইয়ে ১২ টা নীতির মধ্যে  ৩ নাম্বার অর্থাৎ নূন্যতম ঝুঁকি পরিহারে ২ টি পয়েন্ট লক্ষ করছি \r\n\r\nনাম্বার ১, প্রচলিত পদ্ধতি আর ২ গ্রিনার পদ্ধতি, এইগুলো কি?\r\n\r\nআমি গুহ স্যারের প্রথম টপিকগুলাতে পাইলাম না এই প্রচলিত পদ্ধতি আর গ্রিনার পদ্ধতি সমন্ধে\r\n\r\nআমার আরো একটা সমস্যা আছে এটম ইকনোমি টা আরেকবার বুঝায় দিলে ভালো হইত, আমার সমস্যা হচ্ছে', NULL, NULL, '2020-04-03 03:30:00', NULL, NULL, NULL),
(55, 790, 112, 'There will be a square root before 2', NULL, NULL, '2020-04-03 03:41:24', NULL, NULL, NULL),
(59, 872, 2, 'প্রথমে যে অংকটা করাইলেন সেটা কি এইচএসসি পরীক্ষার জন্য ইম্পর্টেন্ট?  রাজুর উত্তর-দক্ষিণে যাওয়ার অংকটা', NULL, NULL, '2020-04-03 05:55:35', NULL, NULL, NULL),
(63, 819, 111, 'via HW 1.{2,(5×♧)÷3},  {2,-(♧÷3)}\r\n2nd HW. X^2+Y^2=ay', NULL, NULL, '2020-04-03 09:07:01', NULL, NULL, NULL),
(64, 819, 112, 'via ex 4 no ta', NULL, NULL, '2020-04-03 10:28:52', NULL, NULL, NULL),
(68, 168, 113, 'Via paracitamol er bikria  te je carbon oxyzen vor gune gune nisen vlo bujhte pari nai.', NULL, NULL, '2020-04-03 14:45:50', NULL, NULL, NULL),
(69, 873, 112, 'ভাইয়া শেষ প্রশ্নে  দুটি বিন্দুর সংযোগ সরলরেখা মূলবিন্দুগামী কেনো হল,,,,,?', NULL, NULL, '2020-04-03 16:41:59', NULL, NULL, NULL),
(70, 811, 113, 'vaia Iron (Fe) er vor to 55 dhori boI a dekhlam 55.84 aca r apni likhlen 58.85 kno?', NULL, NULL, '2020-04-03 18:35:22', NULL, NULL, NULL),
(72, 706, 112, 'Thita toh  usually x axis er possitive diker sathe hoy but thitar je duita ta kora value ber kora holo tar akta toh x axis er negative dike sathe ata aktu bhujai dila valo hoto bhaiya', NULL, NULL, '2020-04-03 20:21:54', NULL, NULL, NULL),
(73, 737, 113, '08:41\r\nphenol সম্বন্ধে একটা clear concept দেন 2/3 minute এ,  লাইভে হোক আর যেভাবে হোক। যাতে বিক্রিয়া তে বুঝতে পারি, কোনগুলোকে H, আর কোনগুলোকে C হিসেবে count করে ভর নির্ণয় করবো।', NULL, NULL, '2020-04-03 20:42:46', NULL, NULL, NULL),
(75, 775, 109, 'Vaiya class lecture gulo note korar somoy onno video gulo screen ER sammne chole ase tar karone nicher lekhagulo tulte pari na. Jodi ai sommossa ta solve korten  tahole valo hoto', NULL, NULL, '2020-04-03 21:04:27', NULL, NULL, NULL),
(76, 819, 109, 'HW 1##CFC-112\r\n           =C2F2Cl4', NULL, NULL, '2020-04-03 21:20:29', NULL, NULL, NULL),
(77, 819, 109, 'C2F2Cl4', NULL, NULL, '2020-04-03 21:21:34', NULL, NULL, NULL),
(78, 725, 113, 'নিচের অনু সমূহের মধ্যে ক্লোরিন পরমাণুর সংখ্যা নির্ণয় করো~\r\nHCFC -124 এর ক্ষেত্রে উত্তর: Cl পরমাণুর এর সংখ্যা 1।\r\nনিজের উল্লিখিত CFC ও HCFC যৌগগুলোর নাম লেখ~\r\nAnswer:CHCIF-CHClF ও CH2Cl-CClF2 এর ক্ষেত্রে যথাক্রমে IUPAC  নাম HCFC-232 ও HCFC-132.', NULL, NULL, '2020-04-03 21:33:57', NULL, NULL, NULL),
(80, 853, 113, 'Vaia kono app kono app hoile valo hoto', NULL, NULL, '2020-04-03 22:33:16', NULL, NULL, NULL),
(81, 819, 109, 'Via % AE nirnoer jonno to bikria k  ki somota korte  hobe???\r\n via amar mone hoi l,hoito korte hobe .\r\nAns tar  jonno wait korbo via', NULL, NULL, '2020-04-03 22:45:11', NULL, NULL, NULL),
(82, 819, 109, '3 no tai abar bikroker vhator utpader ta jog korlo kno??', 'storage/comments/1585918825.jpg', NULL, '2020-04-03 23:00:25', NULL, NULL, NULL),
(84, 680, 113, 'ভাইয়া, আগের ক্লাসে জানতে চেয়েছিলাম CO2 কোন কন্ডিশনে থাকবে পলিস্টেরিন এর সাথে বিক্রিয়ায়। \r\n\r\n\r\nঅনেক গুলো কমেন্ট করেছি গত ক্লাসে। ডাউট ডিলেট অপশন থাকলে ভালো হতো :P Thank you, bhaia.', NULL, NULL, '2020-04-04 00:10:12', NULL, NULL, NULL),
(85, 843, 113, 'Super critical CO2 e bolechilen je eta Solid, Liquid r Gas er majamajhi ekta obosta. Kintu ami ekhon porjonto ja jani tate sadharonoto duti obostar moddhe tulona kora zay. Jemon kotin o torol ba torol o gas ei rokom. Kintu vaiya eta kivabe somvob je eksathe tinti obostar majamaji porjaye. Kindly jodi janaten tahole onek upokar hoto.', NULL, NULL, '2020-04-04 01:20:59', NULL, NULL, NULL),
(89, 881, 113, 'Hallons er namekoron kmne krbo?', NULL, NULL, '2020-04-04 02:23:06', NULL, NULL, NULL),
(92, 647, 15, 'Assalamualaiku, Sir..Pdf  download korte parchi na..plz bolon kivabe download korbo???', NULL, NULL, '2020-04-04 02:52:00', NULL, NULL, NULL),
(94, 840, 113, 'ভাইয়া একই IUPAC  সংকেত কিন্তু রাসায়নিক সংকেত  ভিন্ন, এমন কি হতে পারে?? অামি এমন একটা দেখছি বইতে (গুহ স্যার ) । EX:HCFC–142\r\n1.CH3–CClF2\r\n2.ClCH2–CHF2\r\nএই দুইটাই দেখছি ।', NULL, NULL, '2020-04-04 05:01:16', NULL, NULL, NULL),
(95, 875, 113, 'Via Fe ar vor to 55.85😑...', NULL, NULL, '2020-04-04 05:43:53', NULL, NULL, NULL),
(96, 875, 113, 'H.W\r\n %A.E= 69.9%😐', NULL, NULL, '2020-04-04 05:49:58', NULL, NULL, NULL),
(97, 864, 109, 'HCFC আর HFCF এর পার্থক্য কী ??', NULL, NULL, '2020-04-04 06:13:31', NULL, NULL, NULL),
(98, 864, 109, '1.গুহ স্যারের বই এ AE=( atomic mass of কাঙ্ক্ষিত উৎপাদ) x 100 /total mass of reactant X total mass of উৎপাদ   .  এ সূত্র দেয়া। কিন্তু আপনি সূত্রগুলো কোন বই থেকে দিসেন প্লিজ বলেন। \r\n২. HCFC আর HFCF এর মধ্যে পার্থক্য কী??\r\n৩. cl2 er পরমাণু সংখ্যা নির্ণয়ে ১ আর 2 নং example টার hcfc নাম একই হয়। ২ টা ভিন্ন iupac সংকেতের hcfc এক হলে এদের differentiate করবো কিভাবে??', NULL, NULL, '2020-04-04 06:55:40', NULL, NULL, NULL),
(99, 725, 111, 'First HW~\r\nthird quarndant e THETA=π+tan^-1|y/x|\r\nfourth quarndant e THETA=2π-tan^-1|-y/-x|\r\nSecond HW~\r\n(¡)(2,4π/2)\r\n(¡¡)(√6,215.26°)\r\nThird HW~\r\n(¡¡) (-1,-1)\r\nFourth HW~\r\n(¡)r=a\r\n(¡¡)r2=a2sin2THETA\r\nFifth HW~\r\n(¡¡)x2+y2=ay\r\n... Vaiya  (at2,2at) abong (a/t2,-2a/t) er moddhokar duroto r equation ta milate partechi na.onugroho kore kore diyen.\r\nSixth HW~\r\nAns.7.2\r\nSeventh HW~\r\nAns.(x,y)=(1,2) othoba (3,6)\r\nEighth HW~\r\nAns.a=29/7\r\nNineth HW~\r\nAns.(x,y)=(4√3,0) abong (-4√3,0)\r\nJazakallah Khairan.', NULL, NULL, '2020-04-04 08:52:28', NULL, NULL, NULL),
(101, 881, 113, 'Konta right?', NULL, NULL, '2020-04-04 13:39:18', NULL, NULL, NULL),
(102, 726, 112, 'ভাইয়া ১ দাগের অংকটা কিভাবে করলো একটু বুঝিয়ে দিয়েন পরের ক্লাসে।', NULL, NULL, '2020-04-04 14:10:18', NULL, NULL, NULL),
(103, 726, 112, 'ভাই পিক তো সেন্ড হয়না', NULL, NULL, '2020-04-04 14:11:36', NULL, NULL, NULL),
(104, 821, 113, 'Vaiya Fenol ar concept ta valo kore clear kore den.', NULL, NULL, '2020-04-04 14:41:47', NULL, NULL, NULL),
(105, 821, 112, 'Vaiya math ar pdf gula te board a apni jeigula clean koren oigula ase na', NULL, NULL, '2020-04-04 15:35:49', NULL, NULL, NULL),
(107, 865, 111, 'HW1: 3rd Quadrant {t = pi + tan^-1(y/x)} 4th Quadrant {t = 2pi - tan^-1(y/x)}', NULL, NULL, '2020-04-04 18:13:15', NULL, NULL, NULL),
(108, 865, 111, 'HW2: i) (r,t) = (2, 4pi/3)    ii) (r,t) = (root6, 215.26deg)', NULL, NULL, '2020-04-04 18:42:44', NULL, NULL, NULL),
(110, 865, 111, 'HW3: (x,y) = (-1,-1)', NULL, NULL, '2020-04-04 18:49:06', NULL, NULL, NULL),
(111, 865, 111, 'HW4: x^2 + y^2 =ay', NULL, NULL, '2020-04-04 19:00:02', NULL, NULL, NULL),
(112, 865, 111, 'HW5: i) r=a    ii) 1=2a^2cosTsinT.', NULL, NULL, '2020-04-04 19:03:02', NULL, NULL, NULL),
(113, 865, 111, 'HW6: 2root13', NULL, NULL, '2020-04-04 19:29:10', NULL, NULL, NULL),
(114, 865, 111, 'HW7: a = 29/7', NULL, NULL, '2020-04-04 20:13:58', NULL, NULL, NULL),
(116, 768, 113, 'ভাইয়া নামকরণ এর ব্যাপারগুলো আরেকটু বিস্তারিতভাবে বুঝিয়ে দিলে আমার জন্য একটু ভালো হতো। বিশেষ করে ফেনল।', NULL, NULL, '2020-04-05 03:04:44', NULL, NULL, NULL),
(117, 726, 112, '১ দাগ টা পারছিনা', NULL, NULL, '2020-04-05 03:44:52', NULL, NULL, NULL),
(118, 871, 111, 'Vaiya!\r\nPlz solve this problem which to express in polar coordinate system!', 'storage/comments/1586028253.jpg', NULL, '2020-04-05 05:24:13', NULL, NULL, NULL),
(119, 840, 116, 'মুক্তশক্তি কি?\r\nএকমুখী বিক্রিয়ার ক্ষেত্রে মুক্ত শক্তির হ্রাস ঘটে কেন?', NULL, NULL, '2020-04-05 05:25:14', NULL, NULL, NULL),
(121, 821, 113, 'Via paracitamol er bikria te je carbon oxyzen vor gune gune nisen vlo bujhte pari nai.', NULL, NULL, '2020-04-05 13:53:43', NULL, NULL, NULL),
(122, 821, 113, 'Homework:.  Ex- 2 Ans.69.94%   HCFC-142 এ Cl=1   (i)CHClF-CHClF= HCFC-132.   (ii)CH2cl-CclF2= HCFC-132.', NULL, NULL, '2020-04-05 14:59:47', NULL, NULL, NULL),
(126, 866, 116, 'বিক্রিয়ার হার আর উৎপাদন হারের পার্থক্য কি??', NULL, NULL, '2020-04-05 17:00:40', NULL, NULL, NULL),
(128, 853, 112, 'Vaia ei sutro dia ki CQ e onko kora  jabe naki shudhu mcq e use korbo', NULL, NULL, '2020-04-05 20:19:49', NULL, NULL, NULL),
(129, 853, 112, 'Vaia -- (p) er sthananko 39/8, 25/8', NULL, NULL, '2020-04-05 20:37:09', NULL, NULL, NULL),
(131, 866, 116, 'আরহেনিয়াসের সমীকরণে মোলার গ্যাস constant কোথা থেকে আসল??? বিক্রিয়া তো গ্যাস নাও থাকতে পারে....', NULL, NULL, '2020-04-05 21:10:00', NULL, NULL, NULL),
(132, 775, 116, 'Vaiya Ea man kivabe ver korsen bujlam na', NULL, NULL, '2020-04-05 21:22:31', NULL, NULL, NULL),
(134, 819, 116, 'via ai lecture thaka ai problem gula face korchi.please solve kore dien.', NULL, NULL, '2020-04-05 22:22:09', NULL, NULL, NULL),
(135, 819, 116, '#Bastobe prokito ak mukhi bikria ar kono ostitto nai kno??\r\n\r\n#Tullo poriman bolte ki bojhai??\r\n\r\n#Rasaonik bikria te Mukto shokti bolte ki bojhai??\r\n\r\n#Anthalpi (এনথালপি)  bolte ki bojhai??\r\n\r\n#', NULL, NULL, '2020-04-05 22:29:11', NULL, NULL, NULL),
(136, 819, 116, 'Bikria জাত podharto ar bikriok podharther parthokho ki??', NULL, NULL, '2020-04-05 22:32:13', NULL, NULL, NULL),
(137, 819, 116, 'ai ta sob thaka boro pb korhe.please apni aita solve diben\r\n\r\n#  tapmatra ar sathe  বেগ  dhurubok ar somporko??\r\n#tapmatra ar sathe shokrion shoktir shomporko??\r\n#tapmatra ar sathe bikria ar harer somporko???', NULL, NULL, '2020-04-05 22:52:40', NULL, NULL, NULL),
(138, 819, 116, 'shokrion shokti kake bole??', NULL, NULL, '2020-04-05 23:01:21', NULL, NULL, NULL),
(139, 881, 116, 'temperature content rekeh bikrioker concentration change krle  Bikriar har constant (k) er change hoi na kno?', NULL, NULL, '2020-04-05 23:56:22', NULL, NULL, NULL),
(140, 881, 116, '3,4  number ta bujai Bolden?', NULL, NULL, '2020-04-05 23:58:18', NULL, NULL, NULL),
(141, 881, 116, 'bikkiar har constant ke apekkik bilkiar har kno Bollo?', NULL, NULL, '2020-04-06 00:08:04', NULL, NULL, NULL),
(142, 881, 116, 'reversible reactione muktoh soktir change 0 kno?', NULL, NULL, '2020-04-06 00:25:08', NULL, NULL, NULL),
(143, 647, 15, 'Assalamualaiku, Sir. Live class a kivabe join korbo???plz bolon......', NULL, NULL, '2020-04-06 01:45:58', NULL, NULL, NULL),
(145, 553, 12, NULL, 'storage/comments/1586102341.jpg', NULL, '2020-04-06 01:59:01', NULL, NULL, NULL),
(147, 706, 120, 'Bhaiya apni to bolchen rate constant concentration er upor depend kore but okhane toh deya chilo depend kora na r boi te o tai deya.', NULL, NULL, '2020-04-06 03:01:44', NULL, NULL, NULL),
(152, 825, 109, '1st tar answer 100%\r\nPorer tar to uttor bola e ase.\r\nCfc 112 holo C2F2Cl4', NULL, NULL, '2020-04-06 07:06:43', NULL, NULL, NULL),
(153, 875, 120, 'নির্দিষ্ট বিক্রিয়ার ক্ষেত্রে বিক্রিয়ার হার ধ্রুবক বিক্রিয়ক পদার্থের ঘনমাত্রার উপর নির্ভর করে না।\r\nএই কনসেপ্ট টা ভালো বুঝতে পাই নি ।', NULL, NULL, '2020-04-06 08:04:14', NULL, NULL, NULL),
(156, 898, 121, 'ভাইয়া, বহির্বিভক্তক বিন্দু উল্লেখিত বিন্দুর ডান পাশে হবে না বাম পাশে হবে সেটা নিয়ে মাঝে মাঝে ঝামেলা হয়۔', NULL, NULL, '2020-04-06 17:47:25', NULL, NULL, NULL),
(157, 871, 120, 'Vaiya!\r\nOrder of reaction related theory dile vlo hoto', NULL, NULL, '2020-04-06 18:04:22', NULL, NULL, NULL),
(158, 921, 120, 'log inverse kivabe kore?', NULL, NULL, '2020-04-06 18:14:01', NULL, NULL, NULL),
(159, 866, 120, '১ম ক্রমের ,২য় ক্রমের বিক্রিয়া কি?', NULL, NULL, '2020-04-06 19:21:59', NULL, NULL, NULL),
(161, 825, 113, 'Fenol er vor 89 na???', NULL, NULL, '2020-04-06 22:36:35', NULL, NULL, NULL),
(163, 718, 120, 'vaia log inverse ki vaba kprbo', NULL, NULL, '2020-04-06 23:55:46', NULL, NULL, NULL),
(164, 718, 120, 'log inverse ta kora bola diyan', NULL, NULL, '2020-04-06 23:57:06', NULL, NULL, NULL),
(165, 945, 73, 'Nice', NULL, NULL, '2020-04-07 00:18:38', NULL, NULL, NULL),
(166, 945, 73, 'Night', NULL, NULL, '2020-04-07 00:19:59', NULL, NULL, NULL),
(167, 945, 73, 'Night', NULL, NULL, '2020-04-07 00:20:00', NULL, NULL, NULL),
(168, 768, 120, 'Bhaiya bikriar kromo er Concept nie theory dile vlo hoto.Boi pore vlo vabe kisu bujtase  parchi na.R mukto sokti mane ki?bikriar har drubok & sokrion sokti related math a ekok bisoy a ekta darona dile valo hto bhaiya.', NULL, NULL, '2020-04-07 00:38:08', NULL, NULL, NULL),
(169, 768, 120, 'ভাইয়া সমস্যা- ৪.১৮ করতে পারছি না।উত্তর মিলছে না।', NULL, NULL, '2020-04-07 00:42:46', NULL, NULL, NULL),
(170, 768, 120, 'ভাইয়া সমস্যা-৪.৯ এর উত্তর মিলছে না।', NULL, NULL, '2020-04-07 00:45:39', NULL, NULL, NULL),
(171, 706, 113, 'CFCs   মূলত CH3,C2H6 C3H8 এর উদ্বায়ী জাতকসমূহ।please Xihad bhaiya explain this....', NULL, NULL, '2020-04-07 01:46:00', NULL, NULL, NULL),
(172, 864, 113, 'CHCIF – CHCIF আর CHCIF – CHCIF er iupac নাম কিভাবে বের করবো ??', NULL, NULL, '2020-04-07 04:11:53', NULL, NULL, NULL),
(173, 864, 116, 'স্টিম কী সেটাই বললেন না ??', NULL, NULL, '2020-04-07 04:30:24', NULL, NULL, NULL),
(174, 873, 120, 'Bro, I haven\'t understood about the third point of characteristics of rate constant....', NULL, NULL, '2020-04-07 12:35:38', NULL, NULL, NULL),
(175, 961, 112, 'ভাইয়া।\r\nযেকোনো তিনটি বিন্দু হতে কোনো বিন্দুর দূরত্ব সমান   হলে ওই বিন্দুটা কেমনে বের করব?\r\nআপনি যেভাবে বলছিলেন ওইভাবে পারা যাচ্ছেনা।আনসার শিটেও ম্যাথটা যতেষ্ট বড়।', NULL, NULL, '2020-04-07 15:34:43', NULL, NULL, NULL),
(176, 821, 111, 'Ai math a PR=QR and but PQ^2=PR^2+QR^2 HOSCE NA', NULL, NULL, '2020-04-07 16:26:00', NULL, NULL, NULL),
(178, 865, 121, 'Sir, bohir bivokto kari bindur ketre m1 ki boro hobe naki m2 boro hobe. Kutao m1 boro niye kaj kortese abr kutao m2 boro niye kaj kortese.', NULL, NULL, '2020-04-07 18:08:21', NULL, NULL, NULL),
(179, 865, 121, 'Boi e proman e m1 boro dora hoise ar m2 cuto. Ar math er modde m1 cuto dora hoise ar m2 boro. Ei bepar ta ami bujtesi na.', NULL, NULL, '2020-04-07 18:15:28', NULL, NULL, NULL),
(182, 680, 120, 'K er upor nirvor kore na likha pichone but bhaia apni bolsen nirvor kore. ekhane konta hobe bhaia?\r\nar apotpadi bikriyay temperature dite na korsen sheta thik bujhlam na. enthalpy brpartao arektu clear kore diyen. Ea, shokriyon shoktitao..\r\n\r\nThank you..', NULL, NULL, '2020-04-07 21:54:57', NULL, NULL, NULL),
(183, 680, 120, 'sorry tapotpadi hobe*', NULL, NULL, '2020-04-07 21:55:51', NULL, NULL, NULL),
(184, 680, 120, 'bhaia har dhrubok er ekok reaction order er upor nirvor kore, reaction order ki ar ekok kivabe ber korbo?', NULL, NULL, '2020-04-07 23:58:06', NULL, NULL, NULL),
(185, 706, 123, 'B no bikriyay kom Pressure a product beshi hobe', NULL, NULL, '2020-04-08 04:42:47', NULL, NULL, NULL),
(186, 706, 123, 'তাপমাত্র৷র গুণাঙ্ক এই কনসেপ্টটা বুঝাবেন না ???', NULL, NULL, '2020-04-08 04:50:41', NULL, NULL, NULL),
(187, 858, 119, 'Via, x okkher opore kivabe y er man 0 hoi.bujia dile ektu upokkrito hotam', NULL, NULL, '2020-04-08 14:06:32', NULL, NULL, NULL),
(188, 908, 113, 'Hcl ta ki tibro naki halka?ar eikhane oxygen Produce hocche  tar mane probeshe oxygener poriman briddhi pacche...so my question is why this reaction is harmful    for our environmen?? Acid Brishti eita jani..but oxygen to produced hocche to...', NULL, NULL, '2020-04-08 16:06:38', NULL, NULL, NULL),
(189, 908, 113, 'Reaction:cl2+H2O=2Hcl+O', NULL, NULL, '2020-04-08 16:13:22', NULL, NULL, NULL),
(190, 819, 123, 'via fd request accept koren nai apni.khub kosto payachi prothom class thakai\r\nAns ta=খ', NULL, NULL, '2020-04-08 20:22:13', NULL, NULL, NULL),
(192, 840, 123, 'খ', NULL, NULL, '2020-04-09 02:19:25', NULL, NULL, NULL),
(193, 718, 127, '1/a✘b=ab . vaia ata bujta parcina', NULL, NULL, '2020-04-09 13:35:04', NULL, NULL, NULL),
(194, 819, 123, 'via tapio provab buji nai.please aktu abar topics ta clear korle vl0 hoito', NULL, NULL, '2020-04-09 14:15:19', NULL, NULL, NULL),
(195, 150, 84, 'এিকোনোমিতি  6(C) অংশের লেখচিএের class গুলো  নাই\r\nএ অংশের class করবেন না ?', NULL, NULL, '2020-04-09 14:27:11', NULL, NULL, NULL),
(196, 961, 119, 'Ei classer pdf e apnar lekagula aseni', NULL, NULL, '2020-04-09 16:09:05', NULL, NULL, NULL),
(199, 819, 127, 'vhai  math gula × na kore nirnoyok pordhotite kora jabe??tahole equation solve korte shubidha hoito', NULL, NULL, '2020-04-10 06:03:55', NULL, NULL, NULL),
(203, 945, 12, 'Nice', NULL, NULL, '2020-04-10 11:50:42', NULL, NULL, NULL),
(204, 945, 2, 'Vactor part 2 kothai', NULL, NULL, '2020-04-10 11:58:59', NULL, NULL, NULL),
(205, 945, 2, 'Vactor part 2 kothai', NULL, NULL, '2020-04-10 11:59:41', NULL, NULL, NULL),
(207, 934, 121, 'Vaiya,bohibivokto binto kon dika nabo,\r\nLeft a naki right a.', NULL, NULL, '2020-04-10 23:26:19', NULL, NULL, NULL),
(209, 680, 128, 'bhaia last er math gular calculation gula ektu clear kore diyen kindly', NULL, NULL, '2020-04-11 02:03:31', NULL, NULL, NULL),
(210, 680, 128, 'ar last er math gular delG er maan gula ki 1000 dara vag korte hobe? calculation nahole milchena', NULL, NULL, '2020-04-11 02:05:08', NULL, NULL, NULL),
(211, 680, 127, '1/b*a maybe ab hobena bhaia. question tai bhul hoyto..', NULL, NULL, '2020-04-11 03:28:29', NULL, NULL, NULL),
(212, 332, 104, 'Arekta video ashar kotha na bhaiya?', NULL, NULL, '2020-04-11 03:30:27', NULL, NULL, NULL),
(215, 725, 123, 'Ans.খ.PCl5<=>PCl3+Cl2\r\nএই বিক্রিয়াটিতে নিম্ন চাপে উৎপাদ বেশি হবে।', NULL, NULL, '2020-04-11 05:00:53', NULL, NULL, NULL),
(216, 982, 111, 'ii.(at2,2at)and (a/t2,-2a/t) answer ta ektu bolben plz kibabe korsen', NULL, NULL, '2020-04-11 05:02:17', NULL, NULL, NULL),
(218, 982, 112, 'P er sthananko (5,3) amar answer ashse', NULL, NULL, '2020-04-11 06:17:26', NULL, NULL, NULL),
(221, 982, 112, 'AB=OA+OB ,4root34=4root34 (showed)', NULL, NULL, '2020-04-11 06:31:12', NULL, NULL, NULL),
(223, 680, 120, 'ekta jaygay K er man L mol^-1 K^-1 e deya.. tai Ea er maan ber korar shomoy R er maan 8.314x10^-3 dhore Kj mol^-1 L^-1 e nise. ei bepare kichu bolte parben bhaia?', NULL, NULL, '2020-04-11 21:12:01', NULL, NULL, NULL),
(224, 938, 127, 'Vaia 5(c) ta kivabe korbo ?🤔', NULL, NULL, '2020-04-11 23:22:15', NULL, NULL, NULL),
(225, 938, 127, 'Vaia 5(c) ta kivabe korbo ?🤔', NULL, NULL, '2020-04-11 23:23:43', NULL, NULL, NULL),
(226, 938, 127, 'Image to jassna.', NULL, NULL, '2020-04-11 23:24:22', NULL, NULL, NULL),
(227, 938, 127, 'Vaia 5(c) ta kivabe korbo ?🤔', NULL, NULL, '2020-04-11 23:24:37', NULL, NULL, NULL),
(228, 278, 130, 'Alhamdulillah 💓💓💓', NULL, NULL, '2020-04-11 23:42:57', NULL, NULL, NULL),
(230, 210, 130, 'vaiyar protita kotha correct', NULL, NULL, '2020-04-12 02:34:22', NULL, NULL, NULL),
(235, 680, 131, 'bhaia, last je C Vs t graph dekhaisen shekhane reactant and product er rekha cross koreni. apni ekbar bolsen eta equilibrium er graph na abar equilibrium point dekhiye bolsen ekhane possible equilibrium. kothata bhalo vabe bujhini..', NULL, NULL, '2020-04-12 15:20:18', NULL, NULL, NULL),
(238, 1065, 111, 'ভাইয়া ক্লাসগুলো দেখবো কি ভাবে। আমি ইনরোল করেছি এইমাত্র', NULL, NULL, '2020-04-12 16:33:31', NULL, NULL, NULL),
(244, 1066, 135, 'বিক্রিয়ার ক্রম ও আনবিকত্ব পরাবেন কবে ?', NULL, NULL, '2020-04-12 23:49:02', NULL, NULL, NULL),
(248, 488, 135, 'hi', NULL, NULL, '2020-04-13 00:00:39', NULL, NULL, NULL),
(251, 1065, 135, 'Hi', NULL, NULL, '2020-04-13 00:20:23', NULL, NULL, NULL),
(252, 1065, 135, 'Hi', NULL, NULL, '2020-04-13 00:20:27', NULL, NULL, NULL),
(253, 1065, 135, 'Hi', NULL, NULL, '2020-04-13 00:20:40', NULL, NULL, NULL),
(255, 1065, 113, 'Nice', NULL, NULL, '2020-04-13 00:24:48', NULL, NULL, NULL),
(256, 1065, 113, 'Nice', NULL, NULL, '2020-04-13 00:28:22', NULL, NULL, NULL),
(257, 881, 135, 'Ontorborti jogo kake bole?', NULL, NULL, '2020-04-13 00:48:12', NULL, NULL, NULL),
(258, 430, 135, 'বিক্রিয়ার ক্রম নিয়ে  ভিডিও দেন ভাই', NULL, NULL, '2020-04-13 01:11:03', NULL, NULL, NULL),
(260, 983, 135, 'বিক্রিয়ার ক্রম ও আনবিকত্ব টপিক টা দরকার ভাইয়া', NULL, NULL, '2020-04-13 01:27:12', NULL, NULL, NULL),
(261, 881, 135, 'Anobikotto video', NULL, NULL, '2020-04-13 02:32:13', NULL, NULL, NULL),
(262, 873, 135, 'ভাইয়া, এই গ্রাফটা কি সাম্যাবস্থা নির্দেশ করে......?', NULL, NULL, '2020-04-13 03:48:19', NULL, NULL, NULL),
(263, 866, 135, 'Recation er equation aa ki kata kati kora jai? How?', NULL, NULL, '2020-04-13 05:22:38', NULL, NULL, NULL),
(264, 706, 131, 'Green chemistry r ak jaygay lekha ase utpader kankhito resutl er jonno onno kono upadan k use na kore catalyst use korte hobe.Akhane onno kono upadan bolte ki bojhano hoiche', NULL, NULL, '2020-04-13 06:57:38', NULL, NULL, NULL),
(265, 1065, 135, 'Nice', NULL, NULL, '2020-04-13 09:37:33', NULL, NULL, NULL),
(268, 864, 127, '26:02 এখানে তো (a-b) ও ০ হতে পারে। তাহলে শুধু (a+b)=0 নিলেন কেন?', NULL, NULL, '2020-04-13 11:39:20', NULL, NULL, NULL),
(273, 905, 135, 'Hi', NULL, NULL, '2020-04-13 16:38:18', NULL, NULL, NULL),
(274, 718, 135, 'vaiya teory gulo onudhabon   question er jonno likhe dila valo hoba', NULL, NULL, '2020-04-13 16:54:35', NULL, NULL, NULL),
(275, 718, 135, 'vaiya  odhisoshon  er maddhoma  provabon  ta i doubt aca', NULL, NULL, '2020-04-13 17:07:56', NULL, NULL, NULL),
(276, 819, 135, 'রাসায়নিক Equilibrium এ গতিশীলতার পক্ষে পরীক্ষামূলপরর্রমান দেখাও।===অনুধাবন  via aita solve dien please', NULL, NULL, '2020-04-13 18:17:27', NULL, NULL, NULL),
(277, 819, 135, 'porikhamulok proman.', NULL, NULL, '2020-04-13 18:18:38', NULL, NULL, NULL),
(278, 819, 135, 'Via kon bikria  ar fole kon udpadok toiri hoi aita buji na.please ai basic concept ta nia akta lecture dile upokar hoito.aita ssc level thakai akta pb amar via.', NULL, NULL, '2020-04-13 18:20:06', NULL, NULL, NULL),
(279, 1032, 109, 'hw-1: 100%\r\nhw-2: C2F2CL4', NULL, NULL, '2020-04-13 23:28:31', NULL, NULL, NULL),
(281, 921, 128, 'dG = —ve hole keno spontaneous hoy?', NULL, NULL, '2020-04-14 03:48:49', NULL, NULL, NULL),
(282, 865, 135, 'sir pressure nie katha bollen ni roots class e bolsilen eikane bolben kuno karone vule gesen.', NULL, NULL, '2020-04-14 05:38:28', NULL, NULL, NULL),
(292, 488, 140, 'hi vai kamon acen', NULL, NULL, '2020-04-15 03:08:35', NULL, NULL, NULL),
(293, 867, 120, 'Order and molecularity of a reaction e problem silo.\r\nEi bishoe kono class ase?????', NULL, NULL, '2020-04-15 04:36:22', NULL, NULL, NULL),
(294, 867, 120, 'koto anobikotto sheta kivabe ber korbo?????', NULL, NULL, '2020-04-15 04:50:25', NULL, NULL, NULL),
(297, 818, 22, 'হিসটেরিসিস লুপটা somewhat  problem', NULL, NULL, '2020-04-15 18:30:18', NULL, NULL, NULL),
(299, 1040, 128, 'vaiya Q ta ki Qc( reaction quotient)? \r\nand Qc er formula to concentration of product by concentration of reactants..shey khetre vedio r 1:26:22 e [B]/[A] hobe na ?', NULL, NULL, '2020-04-15 19:23:30', NULL, NULL, NULL),
(300, 1040, 128, 'vaiya 1st math er ans 35.759kJ/mol', NULL, NULL, '2020-04-15 19:53:53', NULL, NULL, NULL),
(301, 1040, 128, 'vaiya delG , DelH er calculation e kilo joule ase but DEL S  er khetr Joule kn ?', NULL, NULL, '2020-04-15 20:11:46', NULL, NULL, NULL),
(302, 925, 120, 'Last ongkota solution korar khetre log uthiye nilen kivabe', NULL, NULL, '2020-04-15 23:01:00', NULL, NULL, NULL),
(304, 704, 30, 'vaia tinta moulo dia jougo kivabe gothito hoy?\r\njemon ( NaAlO2,Ag2V4O11,Na2HPO4,Na2BeO2)', NULL, NULL, '2020-04-16 01:33:42', NULL, NULL, NULL),
(307, 1103, 119, 'Vaiya Straight line 3(a) er Roots edu plus a kono class ase ki?Ami khuje passina😓', NULL, NULL, '2020-04-16 03:19:04', NULL, NULL, NULL),
(308, 1087, 142, 'Vaiya pdf ta pacchi na. R vaiya amr phone e message asche na?', NULL, NULL, '2020-04-16 03:21:05', NULL, NULL, NULL),
(309, 819, 140, 'via mayh korar somoi sob gula k kon akoke convert korte hobe aita jodi porichoi soho likhe diten vlo hoto', NULL, NULL, '2020-04-16 06:23:26', NULL, NULL, NULL),
(310, 819, 140, 'vhai ajker class ta best chilo.', NULL, NULL, '2020-04-16 06:40:42', NULL, NULL, NULL),
(314, 1066, 142, 'এরপর লা শাতেলিয়ার নীতি পরালে ভালো হয় ।', NULL, NULL, '2020-04-16 15:12:41', NULL, NULL, NULL),
(316, 718, 142, 'vaiya apps a download korar sujok thakla valo hoy.website a video dekla amader  onek mb  khoroch hoy.jara wifi chalai tader jonno subidha kintu jara mb diya chalai tader  onek mb jai.jodi  download kora jai  tahola vaiya amader subidha hoto', NULL, NULL, '2020-04-16 18:21:21', NULL, NULL, NULL),
(320, 1105, 111, 'ভাইয়া লাইভ ক্লাস কোন দিন  থেকে শুরু হবে', NULL, NULL, '2020-04-16 23:32:22', NULL, NULL, NULL),
(322, 717, 135, 'vaia er pore kon chapter poraben?', NULL, NULL, '2020-04-17 00:37:09', NULL, NULL, NULL),
(326, 819, 146, 'vhai class ta osthir chilo', NULL, NULL, '2020-04-17 05:52:26', NULL, NULL, NULL),
(327, 819, 146, 'via last math tai konta kake ched korle kon ongso nibo aita clear na', NULL, NULL, '2020-04-17 06:01:57', NULL, NULL, NULL),
(328, 210, 2, 'rajshahi board 2015 ta live class e kindly solve kore diyen', NULL, NULL, '2020-04-17 08:01:20', NULL, NULL, NULL),
(330, 717, 119, 'vaia pdf a apnr lekha nai kno', NULL, NULL, '2020-04-17 14:20:05', NULL, NULL, NULL),
(331, 168, 146, 'Via sound ager moto clear cilo na', NULL, NULL, '2020-04-17 14:29:17', NULL, NULL, NULL),
(332, 818, 2, 'কোন একদিন 30  m/s গতিতে উলম্বভাবে বৃষ্টি পড়ছিল। যদি বায়ু 10m/s গতিতে উত্তর থেকে দক্ষিণে বইতে শুরু করে তাহলে বৃষ্টি থেকে রক্ষা পেতে তোমার ছাতা কোনদিকে মেলে ধরতে হবে বের কর।', NULL, NULL, '2020-04-17 20:21:33', NULL, NULL, NULL),
(333, 680, 146, 'last math e praobly cross korena duita line', NULL, NULL, '2020-04-17 20:37:28', NULL, NULL, NULL),
(334, 680, 146, 'probably', NULL, NULL, '2020-04-17 20:37:38', NULL, NULL, NULL),
(335, 818, 12, NULL, 'storage/comments/1587121359.jpg', NULL, '2020-04-17 21:02:39', NULL, NULL, NULL),
(336, 488, 146, 'vaia sound asa na clear', NULL, NULL, '2020-04-17 21:56:13', NULL, NULL, NULL),
(339, 737, 142, 'HW\r\nKp and Kc of the reaction 2HI---> H2 + I2', NULL, NULL, '2020-04-18 05:39:54', NULL, NULL, NULL),
(340, 680, 108, 'Bujhte ektu koshto hocche eita bhaia', 'storage/comments/1587184884.PNG', NULL, '2020-04-18 14:41:24', NULL, NULL, NULL),
(341, 680, 133, 'eta easy jani bhaia but dont know why answer milchena', NULL, NULL, '2020-04-18 16:41:17', NULL, NULL, NULL),
(342, 982, 146, 'Last er ager math oitay ⚠️CPD dorle math hoy na keno....apni ⚠️APB dorlen keno...confused asi 😖', NULL, NULL, '2020-04-19 08:37:42', NULL, NULL, NULL),
(343, 1066, 149, 'CGS পদ্ধতিতে কুলম্ব ধ্রুবকের মান কত ?', NULL, NULL, '2020-04-19 12:01:37', NULL, NULL, NULL),
(344, 1066, 136, 'CGS পদ্ধতিতে কুলম্ব ধ্রুবকের মান কত ?', NULL, NULL, '2020-04-19 12:02:16', NULL, NULL, NULL),
(345, 872, 64, '2nd math ta kisu ei bujte parlam na via .', NULL, NULL, '2020-04-19 13:28:44', NULL, NULL, NULL),
(346, 717, 149, 'vaia lecture gula ektu short kore kora jay na?', NULL, NULL, '2020-04-19 15:02:53', NULL, NULL, NULL),
(347, 718, 149, 'vaiya graph ta bujta parini', NULL, NULL, '2020-04-19 15:41:30', NULL, NULL, NULL),
(348, 717, 149, 'vaiya test charge ki nijer theke akorshon/bikorshon kore? field charge keno kore na...eita clear hote pari ni..', NULL, NULL, '2020-04-19 16:06:30', NULL, NULL, NULL),
(349, 938, 150, 'Thanks', NULL, NULL, '2020-04-19 19:49:51', NULL, NULL, NULL),
(350, 1066, 135, 'অধিশোষন অংশটা বুঝি নি।', NULL, NULL, '2020-04-19 22:27:11', NULL, NULL, NULL),
(351, 1066, 140, 'ভাইয়া video download করার উপায় আছে কি? আমার তো Wifi নেই। MB কিনতে অনেক খরচ হয় ।', NULL, NULL, '2020-04-19 22:33:16', NULL, NULL, NULL),
(352, 1066, 136, 'ভাইয়া video download করার উপায় আছে কি? আমার তো Wifi নেই। MB কিনতে অনেক খরচ হয় ।', NULL, NULL, '2020-04-19 22:33:52', NULL, NULL, NULL),
(353, 1066, 149, 'ভাইয়া video download করার উপায় আছে কি? আমার তো Wifi নেই। MB কিনতে অনেক খরচ হয় ।', NULL, NULL, '2020-04-19 22:34:27', NULL, NULL, NULL),
(354, 1066, 150, 'ভাইয়া video download করার উপায় আছে কি? আমার তো Wifi নেই। MB কিনতে অনেক খরচ হয় ।', NULL, NULL, '2020-04-19 22:34:47', NULL, NULL, NULL),
(355, 835, 150, 'bhaiya math gulo ektu slow korale vlo hoto....', NULL, NULL, '2020-04-19 23:56:42', NULL, NULL, NULL),
(356, 937, 142, 'vaia akhane to HI er 2 mol surute chilo  ..akhane 2 mol nite hobe ..', NULL, NULL, '2020-04-20 02:04:56', NULL, NULL, NULL),
(357, 905, 150, 'Okkkk', NULL, NULL, '2020-04-20 02:19:52', NULL, NULL, NULL),
(358, 865, 152, 'Yes', NULL, NULL, '2020-04-20 02:45:26', NULL, NULL, NULL),
(359, 873, 150, 'Wow...!', NULL, NULL, '2020-04-20 17:49:33', NULL, NULL, NULL),
(360, 680, 152, 'bhaia bivinno bikriar kp kc er formula ki mcq er jonno ber korchi? nahole to eshob emnei ber kora jay..', NULL, NULL, '2020-04-20 20:26:06', NULL, NULL, NULL),
(361, 680, 152, 'delN er maan ki bikriyay joto moulo equilibrium e ongsho nise ta niye ber kora lagbe bhaia?', NULL, NULL, '2020-04-20 20:58:21', NULL, NULL, NULL),
(362, 986, 150, 'please,solved it.', NULL, NULL, '2020-04-20 22:13:50', NULL, NULL, NULL),
(363, 1143, 150, 'vaia ajker class hobe ??', NULL, NULL, '2020-04-21 00:13:36', NULL, NULL, NULL),
(364, 680, 150, 'kon shutre field charge kon shutre test charge sheta arektu alochona koriyen bhaia', NULL, NULL, '2020-04-21 00:54:54', NULL, NULL, NULL),
(365, 905, 152, '❤❤❤❤❤❤❤❤❤', NULL, NULL, '2020-04-21 01:56:32', NULL, NULL, NULL),
(366, 905, 152, 'Yes', NULL, NULL, '2020-04-21 02:23:23', NULL, NULL, NULL),
(367, 819, 153, 'vhai just osthir chilo class ta.ashole jarai bole j dout clear hoi na tader mukh bondo korar moto class chilo aita.via next problem gula solve ar jonno opekha korbo', NULL, NULL, '2020-04-21 04:24:00', NULL, NULL, NULL),
(369, 680, 153, 'bhaia voltage divider rule ki shortcut? creative question answer er shomoy ki use kora jabe?', NULL, NULL, '2020-04-21 12:16:08', NULL, NULL, NULL),
(370, 881, 154, '(a,b) bindogami akti poribottonshil sorolrekha okkodoi er sate je triangle utponno kre tar borkender soncharpot er somikoron?', NULL, NULL, '2020-04-21 18:40:30', NULL, NULL, NULL),
(371, 875, 150, 'lat last home work ta parlam na', NULL, NULL, '2020-04-22 06:24:16', NULL, NULL, NULL),
(372, 875, 150, 'last', NULL, NULL, '2020-04-22 06:24:38', NULL, NULL, NULL),
(373, 881, 136, 'Dielectric maddom bolte boi e onnorokom ache...r ekbar doubt clesring cls e  ekto bolian.plz', NULL, NULL, '2020-04-22 07:48:17', NULL, NULL, NULL),
(374, 933, 154, 'Ai khana AB ar men 2 ki vaba holo', NULL, NULL, '2020-04-22 14:03:03', NULL, NULL, NULL),
(375, 1087, 111, 'Vaiya ai math duita problem', 'storage/comments/1587546632.jpg', NULL, '2020-04-22 19:10:32', NULL, NULL, NULL),
(376, 654, 150, 'Vaita ami fokir hoiya gaci md kinta kinta download batun dila ki hoi\r\ndownload batun add kora very easy', NULL, NULL, '2020-04-23 00:53:28', NULL, NULL, NULL),
(377, 1066, 149, 'শূন্য, ধনাত্নক ও ঋনাত্নক বিভব কি? বুঝি নাই ।', NULL, NULL, '2020-04-23 02:39:57', NULL, NULL, NULL),
(378, 866, 156, '👍👍👍👍👍👍👍👍🏻', NULL, NULL, '2020-04-23 05:16:27', NULL, NULL, NULL),
(379, 881, 158, 'Gasio obostai kono jogo er acid and base dormo arrehenius theory explain krte osomotto..how?', NULL, NULL, '2020-04-23 05:25:16', NULL, NULL, NULL),
(380, 881, 158, 'HSO4^--- aion uboidormi jogo kno?', NULL, NULL, '2020-04-23 05:50:49', NULL, NULL, NULL),
(381, 881, 158, 'HSO4^-+N2H6^2+     =    H2SO4 +N2H5^+ ei bikkiate hydragin er charge +2 theke +1 kmne holo?', NULL, NULL, '2020-04-23 06:02:39', NULL, NULL, NULL),
(382, 1130, 119, 'Vaiya k er value ki always positive hobe? k:1 dhore proportion er math ta korle k er man negative ase. But positive dhorle ans mile.', NULL, NULL, '2020-04-23 12:39:30', NULL, NULL, NULL),
(383, 1130, 119, 'Vaiya ei math mile gece but kotha hocce jodi kkn o k er value negetive ase ki korbo?', NULL, NULL, '2020-04-23 12:43:56', NULL, NULL, NULL),
(386, 1130, 121, 'Vaiya k:1 shortcut a x,y 2 ta okkher jonno thakle just ekta okkher jnno k:1 er ber korle hobe?', NULL, NULL, '2020-04-24 00:36:24', NULL, NULL, NULL),
(387, 1080, 136, 'Sir 2 t bindu adhaner modde ki  voltage diference hoy r kno  hoy', NULL, NULL, '2020-04-24 19:55:01', NULL, NULL, NULL),
(388, 332, 163, 'Math ar doubt clearing class ta khokon ashbe?', NULL, NULL, '2020-04-24 22:29:23', NULL, NULL, NULL),
(390, 873, 157, 'ভাইয়া,,,,ডাইপুল থেকে যেকোনো বিন্দুতে তড়িত প্রাবল্য নির্নয়ের থিওরী টা একটু আলোচনা করবেন প্লীজ,,,,', NULL, NULL, '2020-04-25 01:04:11', NULL, NULL, NULL),
(392, 866, 165, 'Vaiya অর্ধায়ু এর কনসেপ্ট আর math গুলা একটু বোঝায় দিয়েন', NULL, NULL, '2020-04-25 04:49:53', NULL, NULL, NULL),
(393, 855, 109, 'AE beshi hoa valo.', NULL, NULL, '2020-04-25 05:13:32', NULL, NULL, NULL),
(395, 488, 154, 'thanks', NULL, NULL, '2020-04-25 13:04:19', NULL, NULL, NULL),
(396, 1066, 157, 'রাজশাহী বোর্ড 2016 , 1 নং সৃজনশীল (গ) ও (ঘ) বুঝি নাই ।', NULL, NULL, '2020-04-25 16:21:58', NULL, NULL, NULL),
(397, 1066, 161, 'রাজশাহী বোর্ড 2016 , 1 নং সৃজনশীল (গ) ও (ঘ) বুঝি নাই ।', NULL, NULL, '2020-04-25 16:22:34', NULL, NULL, NULL),
(398, 865, 165, 'sir math e sudu sammodrubot er man caile kokon kunta ber korbo Kp kokon and Kc kokon naki duitai ber korte hobe?', NULL, NULL, '2020-04-25 19:24:19', NULL, NULL, NULL),
(399, 717, 161, 'Vaia plzz solve...please..Concept ta bujhi nai..plz help', NULL, NULL, '2020-04-25 20:17:09', NULL, NULL, NULL),
(400, 1080, 113, 'Sir  amar account  a plus er vedio gula does not exist dekhachhe', NULL, NULL, '2020-04-26 03:19:44', NULL, NULL, NULL),
(401, 819, 164, 'okkk vhai.', NULL, NULL, '2020-04-26 07:42:51', NULL, NULL, NULL),
(402, 819, 160, 'tnx vhai', NULL, NULL, '2020-04-26 07:49:36', NULL, NULL, NULL),
(403, 1114, 150, 'perfect class,thanks', NULL, NULL, '2020-04-26 12:59:57', NULL, NULL, NULL),
(404, 1088, 166, 'vaia amra to jani lombo borabor sin thete hoy!e khetre cos theta kn?', NULL, NULL, '2020-04-26 15:28:45', NULL, NULL, NULL),
(405, 915, 73, 'ভাইয়া ঘর্ষণ টপিকের ফুল কনসেপ্ট সহ math করালে ভাল হয়।', NULL, NULL, '2020-04-26 16:41:30', NULL, NULL, NULL),
(406, 1130, 164, 'Vaiya modulas tular somoy kokhon + nibo r kokhon minus nibo bujhi na. durrottor jnno hole plus bujhlam but last math a jemon trivuj khetro theke  soncar poth ber korte last a plus minus 2 tai use hoeche. atao tw ekta durrotto. ektu clear kore den plz', NULL, NULL, '2020-04-26 16:49:41', NULL, NULL, NULL),
(415, 835, 166, 'bhaiya class ta valo legeche.. thank you so much for a nice class', NULL, NULL, '2020-04-26 19:00:05', NULL, NULL, NULL),
(422, 790, 166, 'Tasnia Rahman but amra eta jni jar sathe angle tar sathe cos hoi', NULL, NULL, '2020-04-26 19:07:54', NULL, NULL, NULL),
(423, 523, 108, 'please solve ৩.৩৩', 'storage/comments/1587909196.jpg', NULL, '2020-04-26 23:53:16', NULL, NULL, NULL),
(424, 1080, 160, 'Sir  trigonometry  kori but jkn  akshate  koyti  sub chapter er  math  kori tkn problem  hoy', NULL, NULL, '2020-04-27 03:03:42', NULL, NULL, NULL),
(425, 982, 139, 'Vaiya ...eto boro math er ketre ki korbo...doubt clearing class e boilen plz ridda vai', NULL, NULL, '2020-04-27 06:52:36', NULL, NULL, NULL),
(427, 858, 152, 'Qc o kc er vitore parthokko ki? Via ektu bolle upokrito hotam', NULL, NULL, '2020-04-27 15:07:51', NULL, NULL, NULL),
(428, 1080, 123, 'Sir  shokrion shokti ai concept  ta bujini', NULL, NULL, '2020-04-27 16:10:50', NULL, NULL, NULL),
(429, 1065, 121, '11 numberta bujlam na pls solve', NULL, NULL, '2020-04-27 16:22:28', NULL, NULL, NULL),
(430, 867, 118, 'Need help plzzzzzzzzzzz', NULL, NULL, '2020-04-27 17:34:06', NULL, NULL, NULL),
(431, 858, 165, '4.35 er mark kora 2 ta math ektu kore dien via please.', NULL, NULL, '2020-04-27 19:13:14', NULL, NULL, NULL),
(432, 1080, 131, 'Sir  shammabostar concept  ta valo kore bujan', NULL, NULL, '2020-04-27 19:49:27', NULL, NULL, NULL),
(433, 1119, 108, 'Vaia aita bujtasi na', 'storage/comments/1587984941.jpg', NULL, '2020-04-27 20:55:41', NULL, NULL, NULL),
(434, 488, 169, 'hi', NULL, NULL, '2020-04-28 01:41:49', NULL, NULL, NULL),
(435, 488, 160, 'thanks vaia', NULL, NULL, '2020-04-28 01:43:13', NULL, NULL, NULL),
(436, 1134, 139, 'math ki ei koyta korlei hobe naki main book theke aro math nije nije korte hobe?', NULL, NULL, '2020-04-28 02:22:20', NULL, NULL, NULL),
(437, 717, 168, 'ভাইয়া ম্যাথ গুলা ভালোভাবে বুঝি নাই 😑.', NULL, NULL, '2020-04-28 02:35:14', NULL, NULL, NULL),
(438, 680, 161, 'ডাইইলেকট্রিক ফলক যুক্ত সমান্তরাল পাতের তূল্য বের করে সূত্রের সাথে মিলাতে প্রবলেম হচ্ছে। একটু দেখাই দিয়েন', NULL, NULL, '2020-04-28 06:32:05', NULL, NULL, NULL),
(439, 985, 170, 'Vaiya apps ar bebosta koren...amader plus ar class gula korte problem hocce....MB Thak leo net valo pay na.....akta class dektey onek Somoy jay..... Download ar bebosta koren ... Plz plz plz plz plz plz plz plz plz pl................', NULL, NULL, '2020-04-28 13:18:55', NULL, NULL, NULL),
(440, 985, 170, 'Vaiya apps ar bebosta koren...amader plus ar class gula korte problem hocce....MB Thak leo net valo pay na.....akta class dektey onek Somoy jay..... Download ar bebosta koren ... Plz plz plz plz plz plz plz plz plz pl................', NULL, NULL, '2020-04-28 13:20:26', NULL, NULL, NULL),
(441, 985, 170, 'Vaiya apps ar bebosta koren...amader plus ar class gula korte problem hocce....MB Thak leo net valo pay na.....akta class dektey onek Somoy jay..... Download ar bebosta koren ... Plz plz plz plz plz plz plz plz plz pl................', NULL, NULL, '2020-04-28 13:20:43', NULL, NULL, NULL),
(442, 1065, 146, 'Nice', NULL, NULL, '2020-04-28 14:05:58', NULL, NULL, NULL),
(443, 717, 170, 'Vaia app er bebosta koren plz', NULL, NULL, '2020-04-28 15:09:01', NULL, NULL, NULL),
(444, 1088, 166, 'একটি রোধের গায়ে3টি রংএর band আছ। রোধের মান 470 ohm. হলে band er  রং কি কি হবে?', NULL, NULL, '2020-04-28 15:30:17', NULL, NULL, NULL),
(445, 858, 170, 'Vi n factorer man 2,3,1 hoi ektu bujia dile vlo hoto', NULL, NULL, '2020-04-28 17:24:21', NULL, NULL, NULL),
(446, 858, 170, 'Via n factorer man kivabe 2,3,1 hoi ektu bujia dile vlo hoto,accually kivabe bujbo kon acider n factorer man koto??', NULL, NULL, '2020-04-28 17:27:25', NULL, NULL, NULL),
(447, 961, 166, 'ভাইয়া এই চ্যাপ্টার থেকে আরো ম্যাথ করাইলে ভালো হত।', NULL, NULL, '2020-04-28 18:41:01', NULL, NULL, NULL),
(448, 747, 30, 'exercise 2 er solve ta diben vaiya..', 'storage/comments/1588065336.JPG', NULL, '2020-04-28 19:15:36', NULL, NULL, NULL),
(449, 985, 150, 'Vaiya last math ta parlam na. Solve kore diyen onno  Kono class A', NULL, NULL, '2020-04-28 20:10:37', NULL, NULL, NULL),
(450, 864, 149, 'বিভবের ম্যাথ এ কেনো প্লাস বা মাইনাস ধরে ক্যালকুলেশন করতে হয় ব্যাপারটা একটু ডিটেইলসে বলেন প্লিজ', NULL, NULL, '2020-04-28 21:55:01', NULL, NULL, NULL),
(451, 1080, 168, 'Sir mind kor benefits na pani ask just Vale portamento shaye speed a porayen', NULL, NULL, '2020-04-28 23:48:05', NULL, NULL, NULL),
(452, 680, 166, 'bhaia ei chapter theke aro beshi math koraiyen please. ektu basic dhorte koshto hoy. tai', NULL, NULL, '2020-04-29 00:53:25', NULL, NULL, NULL),
(453, 864, 157, 'ডাইপুল থেকে যেকোনো বিন্দুতে তড়িত প্রাবল্য নির্নয়ের থিওরী চাই', NULL, NULL, '2020-04-29 01:32:09', NULL, NULL, NULL),
(454, 680, 166, 'কেন্দ্রে রাখা চার্জ আর গোলকের পৃষ্ঠ বরাবর রাখা নিয়ে কনফিউজড ভিডিও দেখার পরও। কেন্দ্রে চার্জ রাখলে ভিতরে কোন প্রাবল্য থাকা না থাকা যদি আরেকটু বুঝান তাহলে ভালো হ্য ভাইয়া', NULL, NULL, '2020-04-29 20:48:54', NULL, NULL, NULL),
(455, 680, 166, 'খোলকের ভিতরে আবদ্ধ চার্জের পরিমাণ শুন্য কেন তা যদি আরেকবার বলেন আগের গুলা দেখে বুঝতে কষ্ট হচ্ছে।', NULL, NULL, '2020-04-29 20:50:25', NULL, NULL, NULL),
(456, 1065, 166, 'vaia aro math koran pls', NULL, NULL, '2020-04-29 22:05:05', NULL, NULL, NULL),
(457, 1065, 156, 'Nice', NULL, NULL, '2020-04-29 22:06:19', NULL, NULL, NULL),
(458, 1065, 156, 'Vaia sijonsil korabanna', NULL, NULL, '2020-04-29 22:07:53', NULL, NULL, NULL),
(459, 1065, 156, 'Vaia sijonsil korabanna', NULL, NULL, '2020-04-29 22:07:56', NULL, NULL, NULL),
(460, 1065, 156, 'Vaia sijonsil korabanna', NULL, NULL, '2020-04-29 22:07:57', NULL, NULL, NULL),
(461, 591, 109, 'Exam a \r\nAtom Economy r formula IUPC r ta use  korbo na 1st ta use krbo?', NULL, NULL, '2020-04-30 00:16:56', NULL, NULL, NULL),
(462, 591, 109, 'Atom Economy 1st formula ta use krbo na IUPC r ta use korbo?', NULL, NULL, '2020-04-30 00:19:40', NULL, NULL, NULL),
(463, 1030, 150, 'Great class bhai..', NULL, NULL, '2020-04-30 03:13:22', NULL, NULL, NULL),
(464, 1030, 149, 'Bhai  ai topic ta clear hoy nai..', NULL, NULL, '2020-04-30 03:18:27', NULL, NULL, NULL),
(465, 858, 137, 'Via mark kora 2 ta ektu koria dien please', NULL, NULL, '2020-04-30 05:03:51', NULL, NULL, NULL),
(466, 819, 174, 'Xihad vhai onibondhi achid onubondhi khar ai bisoe aro aktu details class dile vlo hoito.khib problem a porchi aita nia', NULL, NULL, '2020-04-30 07:00:57', NULL, NULL, NULL),
(467, 905, 171, 'Thanks vaiya', NULL, NULL, '2020-04-30 11:20:22', NULL, NULL, NULL),
(468, 905, 171, 'Vsiya onnek opekrito horci.', NULL, NULL, '2020-04-30 11:21:27', NULL, NULL, NULL),
(469, 905, 171, 'Thanks amon akta Course calo korar jonno', NULL, NULL, '2020-04-30 11:22:50', NULL, NULL, NULL),
(470, 905, 171, 'Dowa kori Allah jano apnader susto raka', NULL, NULL, '2020-04-30 11:23:55', NULL, NULL, NULL),
(471, 905, 171, 'Vaiya  samna agya jan.amra apnader sata aci inshallah', NULL, NULL, '2020-04-30 11:26:55', NULL, NULL, NULL),
(472, 1065, 164, '12', NULL, NULL, '2020-04-30 13:44:48', NULL, NULL, NULL),
(473, 1065, 173, 'Vaiya picture sent hoinato whiter moto dhakay', NULL, NULL, '2020-04-30 13:47:12', NULL, NULL, NULL),
(474, 1065, 173, 'Vaiya screen baka hoyna screen sotodhakay', NULL, NULL, '2020-04-30 13:49:00', NULL, NULL, NULL),
(475, 813, 171, 'Tnx vai', NULL, NULL, '2020-04-30 17:21:03', NULL, NULL, NULL),
(476, 1130, 168, 'Vaiya last math ta bujhi nai', NULL, NULL, '2020-04-30 19:04:31', NULL, NULL, NULL),
(477, 1080, 173, 'Sir  theory gula arektu clearly  bujan', NULL, NULL, '2020-04-30 20:18:42', NULL, NULL, NULL),
(478, 905, 172, 'Thank.', NULL, NULL, '2020-04-30 20:33:14', NULL, NULL, NULL),
(479, 1130, 172, 'vaiya fermater niti prove e last er (d-x) er diferentiation a (-1) kivabe aslo?', NULL, NULL, '2020-04-30 21:52:22', NULL, NULL, NULL),
(480, 908, 168, 'Math gula bujhi nai..', NULL, NULL, '2020-05-01 00:12:05', NULL, NULL, NULL),
(481, 680, 166, 'please solve this ar explain koriyen konta kon shomoy test charge. shonga diye explain koriyen please', NULL, NULL, '2020-05-01 11:56:34', NULL, NULL, NULL),
(482, 873, 168, 'Thanks vaiya,,,,,carry on....', NULL, NULL, '2020-05-01 13:48:30', NULL, NULL, NULL),
(483, 1065, 173, 'Vaia 3.1 ar.   r= a square cosA ar mane koto solve please', NULL, NULL, '2020-05-01 15:11:25', NULL, NULL, NULL),
(484, 1065, 173, 'Vaia 3.1 ar. r= a square 2 cosA ar mane koto solve please', NULL, NULL, '2020-05-01 15:13:32', NULL, NULL, NULL),
(485, 1080, 172, 'Sir  alok poth a to jamitik lenngth  thake to j alokbpoth ber korbo tr  mew wr shate ki sorbonimno jamitik length  ni o ata confusion', NULL, NULL, '2020-05-01 18:31:44', NULL, NULL, NULL),
(486, 680, 167, 'ekhane answer bhul ashe.. but R er maan 0.081 nile kachakachi ashe. eta ektu dekhen bhaia. ar R er maan kokhon konta use hobe sheta niye ektu boliyen', NULL, NULL, '2020-05-02 10:46:14', NULL, NULL, NULL),
(487, 717, 174, 'ভাইয়া আমি যদি একি পাত্রে দুইটাই শক্তিশালী এসি্ড/ক্ষার ঢালি তখন কি রকম হবে?', NULL, NULL, '2020-05-02 11:43:23', NULL, NULL, NULL),
(488, 857, 172, 'sir proved ta ki exam a asa', NULL, NULL, '2020-05-02 19:00:34', NULL, NULL, NULL),
(489, 869, 166, 'Vai pic tuila prblam pathano jacche na...', NULL, NULL, '2020-05-02 19:24:29', NULL, NULL, NULL),
(490, 869, 166, 'Vai pic tuila prblam pathano jacche na tai lekhte hoilo\r\nComilla  board 2017 r ঘ', NULL, NULL, '2020-05-02 19:27:54', NULL, NULL, NULL),
(491, 523, 108, 'please discuss about পটেনশিওমার', NULL, NULL, '2020-05-03 02:41:49', NULL, NULL, NULL),
(492, 1080, 172, 'Sir  example  er prove t bujhi nai please  aita arekbar bujhan', NULL, NULL, '2020-05-03 02:58:37', NULL, NULL, NULL),
(493, 1080, 172, 'Sir  example  er prove t bujhi nai please  aita arekbar bujhan', NULL, NULL, '2020-05-03 03:09:12', NULL, NULL, NULL),
(494, 1080, 172, 'Sir  farmats er topic a alor prtifolon o protishoron a kivabe beshi somoy ba beshi poth and kom somoy ba kom poth a jabe', NULL, NULL, '2020-05-03 03:34:32', NULL, NULL, NULL),
(495, 966, 134, 'Vaiya  ami phone use kore plus ar video gula dekhi but video chole na aktu dhekben please???? Video dhekte khub somosa hy???🤔🤔🤔🤔🤔', NULL, NULL, '2020-05-03 13:24:20', NULL, NULL, NULL),
(496, 1088, 166, '1 টি চল  cunduli galvanometerer আয়তাকার cundulir দৈঘ্য, প্রস্থ,পাক সংখ্যা 4cm 2cm 500.cunduliti 3T er  সুসম চৌমবক  khete somantorale jhulano ase. Cundulir vitor die 4.5mA I calona kora hole er bikkhep hoy 6  digri. Jhulano tarer ব্যবরতন dhrubok koto???', NULL, NULL, '2020-05-04 02:38:26', NULL, NULL, NULL),
(497, 680, 167, 'What are nonbonding electrons, bhaia? Not clear about that thing', NULL, NULL, '2020-05-04 09:55:41', NULL, NULL, NULL),
(498, 680, 167, 'সমযোজী সন্নিবেশ বন্ধন কি?', NULL, NULL, '2020-05-04 10:01:28', NULL, NULL, NULL),
(499, 945, 85, 'Faltu', NULL, NULL, '2020-05-04 15:01:04', NULL, NULL, NULL),
(500, 523, 109, 'Liquaid CO2', NULL, NULL, '2020-05-05 00:48:24', NULL, NULL, NULL),
(501, 1134, 150, 'vai last problem tar ans 4.6x10^-3 ashe\r\njodi 0.1m minus kori V2 te', NULL, NULL, '2020-05-05 01:58:51', NULL, NULL, NULL),
(502, 866, 174, 'Vai atar solve..', NULL, NULL, '2020-05-05 08:42:08', NULL, NULL, NULL),
(503, 1080, 136, 'Sir 2t charge er moddhe  bivober 0adan prodan kivabe hoy', NULL, NULL, '2020-05-05 20:29:47', NULL, NULL, NULL),
(504, 717, 155, 'vaia...1st math  tar calculation a x=o y=o z=o ashce kno amr?calculation ta dekhay dile khub bhalo hto', NULL, NULL, '2020-05-06 00:36:14', NULL, NULL, NULL),
(505, 1105, 168, 'ভাইয়া অনেক দিন যাবত ক্লাস পাচ্ছি নাতো ।', NULL, NULL, '2020-05-06 06:54:27', NULL, NULL, NULL),
(506, 1105, 168, 'ভাইয়া অনেক দিন যাবত ক্লাস পাচ্ছি নাতো ।', NULL, NULL, '2020-05-06 06:58:13', NULL, NULL, NULL),
(507, 925, 172, 'এইক্ষেত্রে যে পথ নেওয়া হয়েছে এটা কি আলোক পথ নাকি জ্যামিতিক পথ???', NULL, NULL, '2020-05-06 22:02:41', NULL, NULL, NULL),
(508, 925, 172, 'ফার্মাটের নীতি দ্বারা যে আলোর প্রতিফলনের সূত্র প্রতিপাদন করা হয়েছে, এখানে কি l=আলোক পথ নেওয়া হয়েছে নাকি জ্যামিতিক পথ নেওয়া হয়েছে?', NULL, NULL, '2020-05-06 22:07:31', NULL, NULL, NULL),
(509, 816, 156, 'vaiya creative questions solve koraben na?', NULL, NULL, '2020-05-07 03:09:06', NULL, NULL, NULL),
(510, 1019, 113, 'Via paracitamol er bikria te je carbon oxyzen vor gune gune nisen vlo bujhte pari nai.', NULL, NULL, '2020-05-07 10:09:52', NULL, NULL, NULL),
(511, 1134, 150, '25:05 e prothom khetro mane to B er charge boshano chara C er Voltage ber korte hobe ig', NULL, NULL, '2020-05-07 17:52:47', NULL, NULL, NULL),
(512, 591, 165, 'ques a sammodrubok r man daoa thakla ata Kp ar na Kc r seta bhujhbo kivaba?', NULL, NULL, '2020-05-08 05:20:40', NULL, NULL, NULL),
(513, 591, 165, 'R r man apni ek dika 0.0821 use krsilan,akhn 8.314 use korsen\r\nkokhon konta use korbo?', NULL, NULL, '2020-05-08 05:55:57', NULL, NULL, NULL),
(514, 1065, 168, 'Nice', NULL, NULL, '2020-05-08 14:48:39', NULL, NULL, NULL),
(515, 1065, 175, 'Nice', NULL, NULL, '2020-05-08 14:49:42', NULL, NULL, NULL);
INSERT INTO `comments` (`id`, `user_id`, `video_id`, `text`, `image`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(516, 1065, 134, 'Ata solve plse', NULL, NULL, '2020-05-08 14:55:11', NULL, NULL, NULL),
(517, 1065, 134, 'ভাইয়া ছবি পাঠাইলাম কিন্তু সাদা দেখায় কেন', NULL, NULL, '2020-05-08 15:00:43', NULL, NULL, NULL),
(518, 717, 175, 'ভাইয়া ৩ নাম্বার টা পারিনা,করে দেন একটু', NULL, NULL, '2020-05-08 15:30:54', NULL, NULL, NULL),
(519, 930, 172, 'Solve plz vaiya', NULL, NULL, '2020-05-09 01:35:55', NULL, NULL, NULL),
(520, 930, 177, 'Solve plz vaiya', NULL, NULL, '2020-05-09 01:36:31', NULL, NULL, NULL),
(521, 905, 177, 'Vaiya pdf download hoy na to', NULL, NULL, '2020-05-09 01:57:16', NULL, NULL, NULL),
(522, 768, 177, 'Vaia pdf download permission dewa hoi nai to.download hocche na', NULL, NULL, '2020-05-09 02:18:45', NULL, NULL, NULL),
(523, 768, 176, 'Vaiya pdf download er permission dewa hoi nai.download korte partesi na', NULL, NULL, '2020-05-09 02:21:10', NULL, NULL, NULL),
(524, 523, 168, 'Please solve this', NULL, NULL, '2020-05-09 02:37:04', NULL, NULL, NULL),
(525, 905, 176, 'Vaiya pdf download horca na.', NULL, NULL, '2020-05-09 03:00:46', NULL, NULL, NULL),
(526, 1105, 177, 'Thanks vaiya', NULL, NULL, '2020-05-09 09:45:05', NULL, NULL, NULL),
(527, 1105, 176, 'Thanks vaiya', NULL, NULL, '2020-05-09 11:00:23', NULL, NULL, NULL),
(528, 857, 177, 'sin60/sinr1=sin30/sin(60-r1) sir r1 ar man ta kivabe ber korbo', NULL, NULL, '2020-05-09 13:26:51', NULL, NULL, NULL),
(529, 1105, 176, 'Vaiya math ta bujinai solve kora dila khusi hobo', NULL, NULL, '2020-05-09 15:42:00', NULL, NULL, NULL),
(530, 1105, 176, 'Vaiya book ohkkorpotro', NULL, NULL, '2020-05-09 15:53:41', NULL, NULL, NULL),
(531, 1105, 176, '30 ডিগ্রি C তাপমাত্রা এবং 1 atm চাপে AB5 এর বিয়োজনমাত্রা 60% হলে চাপ দ্বিগুণ এবং 1/2 করলে বিয়োজনমাত্রার কী পরিবর্তন ঘটবে গাণিতিকভাবে বিশ্লেষণ করো  ( অক্ষর পত্র )', NULL, NULL, '2020-05-09 16:13:17', NULL, NULL, NULL),
(532, 1105, 176, 'Vaiya pic tho send hoy na', NULL, NULL, '2020-05-09 16:15:19', NULL, NULL, NULL),
(533, 1080, 177, 'Sir  test paper analysis kore  important cq gula solve koran', NULL, NULL, '2020-05-10 02:55:12', NULL, NULL, NULL),
(534, 1066, 175, '(ঘ) বুঝি নাই', NULL, NULL, '2020-05-11 14:23:38', NULL, NULL, NULL),
(535, 1066, 175, 'ভাইয়া photo তো send হয় না।', NULL, NULL, '2020-05-11 14:24:28', NULL, NULL, NULL),
(536, 1352, 168, 'Vaiia apna ra bollen na protika topic er video dea ache to ami to sudhu matro koekta  \r\nTopic er video dekhtesi.......', NULL, NULL, '2020-05-11 17:52:47', NULL, NULL, NULL),
(537, 1352, 108, 'ভাই আপ্নারা কি আসলে আমাদের সাথে ভাউতাবাজি করতেসেন???  আপ্নারা বল্লেন জে প্রতিটা তপিচ আলাদা করে আলছনা করা হবে কিন্তু কই???  ভাই অনেক koste টাকাটা আব্বু দিছে সুধুমাত্র আপ্নাদের সব কথা শুনে।। আখন ত দেখতেসি আপ্নারা কিছুর উত্তর দেন না।।  তাহইলে কি আমাদের সাথে বেইমানি করতেসেন।।।।।\r\nনরমাল youtube ei to  আরু ভাল দেয়া আছে ।।।। তাইলে সুধু সুধু ৪৮০০ taka কেন নিলেন ভাই।।।।?????', NULL, NULL, '2020-05-11 18:08:22', NULL, NULL, NULL),
(538, 314, 136, 'baiya video gula 360 p the deka jay nah..pocur mb jacce..grame wifi er bebostha nei', NULL, NULL, '2020-05-11 20:08:53', NULL, NULL, NULL),
(539, 881, 180, 'sera vai', NULL, NULL, '2020-05-12 12:41:16', NULL, NULL, NULL),
(540, 1352, 108, 'I  am really really sorry vai.....ami prothome ekdom e bujhte pari nai apnader course plan........ Ekhon ami bujhte parsi ......  Age kichu ulta palta kotha bole felsi .........  SORRY.......  \r\nThanks for your steps....', NULL, NULL, '2020-05-12 19:06:33', NULL, NULL, NULL),
(541, 945, 130, 'monta bora galo vaiyar kotha sona', NULL, NULL, '2020-05-12 23:09:24', NULL, NULL, NULL),
(542, 314, 136, '30 number ta vai', NULL, NULL, '2020-05-12 23:13:01', NULL, NULL, NULL),
(543, 314, 150, 'Bai 33 number ta', NULL, NULL, '2020-05-13 04:34:09', NULL, NULL, NULL),
(544, 1068, 133, '30,10', NULL, NULL, '2020-05-14 00:32:38', NULL, NULL, NULL),
(545, 591, 175, 'bhaia protisoron kon joidi 6 ba tr kom hoi,always ki { Delta=A(mew-10 }a sotro dia krbo?', NULL, NULL, '2020-05-14 04:09:22', NULL, NULL, NULL),
(546, 985, 186, 'Vaiya apps a login hoy na', NULL, NULL, '2020-05-17 09:00:56', NULL, NULL, NULL),
(547, 1105, 186, 'Nice class', NULL, NULL, '2020-05-17 10:17:23', NULL, NULL, NULL),
(548, 1518, 120, 'Integration vedio den', NULL, NULL, '2020-05-18 22:02:36', NULL, NULL, NULL),
(549, 858, 150, 'Riddha via eita ektu kore dien doud clearing class e', NULL, NULL, '2020-05-19 19:03:30', NULL, NULL, NULL),
(550, 680, 174, 'এখানে তড়িৎ ঋণাত্বকতা বলতে কি বুঝিয়েছেন ভাইয়া?', NULL, NULL, '2020-05-19 20:07:24', NULL, NULL, NULL),
(551, 680, 174, 'তড়িৎ ঋণাত্বকতার পার্থক্যের জন্য কিভাবে বন্ধন ভাঙে?', NULL, NULL, '2020-05-19 20:16:22', NULL, NULL, NULL),
(552, 768, 187, 'ভাইয়া বিদ্যুৎক্ষরণ মানে কি?', NULL, NULL, '2020-05-19 22:11:44', NULL, NULL, NULL),
(553, 768, 181, 'ভাইয়া  ক্রাউনকাচ ও ফ্লিন্টকাচ কী? \r\n m=-v/u কখন হবে আর |m|=-v/u কখন হবে?আর মডুলাস কেন ব্যবহার করা হয়? sin i/sin r=i/r এবং ‌‌‌‌B/a=tanB/tan a কীভাবে হয়?\r\nvaiya amar ei doubt gulo ektu clear kore dien please?', NULL, NULL, '2020-05-20 18:41:31', NULL, NULL, NULL),
(554, 869, 196, 'ভাই শুধু আপনার করানো math gulo enough kina physics r জন্য।।।', NULL, NULL, '2020-05-21 07:44:22', NULL, NULL, NULL),
(555, 857, 183, 'sir example 3 number ar math ta buji nai pls bujaiya diben', NULL, NULL, '2020-05-21 16:48:08', NULL, NULL, NULL),
(556, 591, 187, 'HCN -Hydrocarbon noe can?', NULL, NULL, '2020-05-21 21:46:32', NULL, NULL, NULL),
(557, 314, 139, 'totallyunexpecte... great baiya thanks', NULL, NULL, '2020-05-22 05:50:48', NULL, NULL, NULL),
(571, 591, 181, 'ekhana r2 right side a acha kano?', NULL, NULL, '2020-05-23 06:20:56', NULL, NULL, NULL),
(580, 1306, 110, 'ব্যায়িত শক্তির জন্য W আর উৎপন্ন শক্তির জন্য H, হলে ৩য় উদাহরণের মধ্যে এর ব্যতিক্রম কেন হল ভাইয়া?', NULL, NULL, '2020-05-24 09:05:11', NULL, NULL, NULL),
(620, 847, 168, NULL, 'storage/comments/1590331687.png', NULL, '2020-05-25 00:48:07', NULL, NULL, NULL),
(621, 847, 168, 'hello', NULL, NULL, '2020-05-25 01:23:29', NULL, '2020-05-25 01:23:29', NULL),
(622, 847, 168, NULL, 'storage/comments/1590333820.jpeg', NULL, '2020-05-25 01:23:40', NULL, '2020-05-25 01:23:40', NULL),
(623, 847, 168, NULL, 'storage/comments/1590333823.jpeg', NULL, '2020-05-25 01:23:43', NULL, '2020-05-25 01:23:43', NULL),
(624, 847, 187, 'বজ্রপাত', NULL, NULL, '2020-05-25 01:28:35', NULL, '2020-05-25 01:28:35', NULL),
(625, 847, 187, 'nitrogen ace tai', NULL, NULL, '2020-05-25 01:29:22', NULL, '2020-05-25 01:29:22', NULL),
(626, 840, 187, 'hi', NULL, NULL, '2020-05-25 02:18:27', NULL, '2020-05-25 02:18:27', NULL),
(627, 840, 187, 'hi', NULL, NULL, '2020-05-25 02:18:28', NULL, '2020-05-25 02:18:28', NULL),
(628, 1748, 108, 'vaiya video to com Baki gula dan', NULL, NULL, '2020-05-25 15:45:46', NULL, '2020-05-25 15:45:46', NULL),
(629, 1748, 108, 'vaiya video to com Baki gula dan', NULL, NULL, '2020-05-25 15:45:48', NULL, '2020-05-25 15:45:48', NULL),
(630, 1748, 109, 'vaiya Ami to ajke join korsi.ager classer vedio gula kivabe pabo', NULL, NULL, '2020-05-26 12:16:04', NULL, '2020-05-26 12:16:04', NULL),
(631, 944, 196, 'বারটী তারের ম্যাথ যেটা করালেন শেষের অংশটা বুঝলাম নাহ।', NULL, NULL, '2020-05-26 17:18:38', NULL, '2020-05-26 17:18:38', NULL),
(632, 1759, 187, 'HCN জৈব যৌগ নয় কেন?', NULL, NULL, '2020-05-27 03:39:58', NULL, '2020-05-27 03:39:58', NULL),
(633, 1759, 187, 'HCN জৈব যৌগ নয় কেন?', NULL, NULL, '2020-05-27 03:39:58', NULL, '2020-05-27 03:39:58', NULL),
(634, 1759, 187, 'HCN জৈব যৌগ নয় কেন?', NULL, NULL, '2020-05-27 03:39:59', NULL, '2020-05-27 03:39:59', NULL),
(635, 1575, 187, 'হেটারো অ্যারোমাটিকে কি কার্বনের জায়গায় শুধু মৌল থাকবে? কোন মূলক থাকতে পারবে না?', NULL, NULL, '2020-05-27 15:56:44', NULL, '2020-05-27 15:56:44', NULL),
(636, 1575, 187, 'মিথিলিন আর মিথাইল  কত ডিগ্রি কার্বন?', NULL, NULL, '2020-05-27 17:21:49', NULL, '2020-05-27 17:21:49', NULL),
(637, 1575, 187, 'মিথিলিন আর মিথাইল  কত ডিগ্রি কার্বন?', NULL, NULL, '2020-05-27 17:21:50', NULL, '2020-05-27 17:21:50', NULL),
(638, 1679, 183, 'bhaia ekhane f=r hoie gese. kinto amra jani to f=r/2??', 'storage/comments/1590579659.jpeg', NULL, '2020-05-27 21:40:59', NULL, '2020-05-27 21:40:59', NULL),
(639, 1679, 183, 'bhaia ekhane f=r hoie gese. kinto amra jani to f=r/2??', 'storage/comments/1590579662.jpeg', NULL, '2020-05-27 21:41:02', NULL, '2020-05-27 21:41:02', NULL),
(640, 1679, 183, 'bhaia ekhane f=r hoie gese. kinto amra jani to f=r/2??', 'storage/comments/1590579662.jpeg', NULL, '2020-05-27 21:41:02', NULL, '2020-05-27 21:41:02', NULL),
(641, 1679, 183, 'bhaia ekhane f=r hoie gese. kinto amra jani to f=r/2??', 'storage/comments/1590579663.jpeg', NULL, '2020-05-27 21:41:03', NULL, '2020-05-27 21:41:03', NULL),
(642, 1686, 113, 'vaiya plus eir viedo dekte gele onek problem hoi', NULL, NULL, '2020-05-28 01:57:49', NULL, '2020-05-28 01:57:49', NULL),
(643, 857, 160, 'proved korta hobe              tan70=tan20+2tan50 ai math ta kora diben pls sir', NULL, NULL, '2020-05-28 15:04:24', NULL, NULL, NULL),
(644, 857, 195, '7c ar math 2 ta kora diben pls tan7o=tan20+2tan50', NULL, NULL, '2020-05-28 15:17:13', NULL, NULL, NULL),
(645, 857, 195, 'sir@ dia thita bujiya si      proman korta hobe    sin7@-sin3@ -sin5@+sin@   divided  cos7@+cos3@ -cos5@-cos@ =tan2@', NULL, NULL, '2020-05-28 15:28:19', NULL, NULL, NULL),
(646, 865, 195, 'Sir 10:58sec er Raf e amr mone hosse je vul ase. Please math ta korie diben completely.', NULL, NULL, '2020-05-29 00:22:13', NULL, NULL, NULL),
(647, 1679, 187, 'degree of alkyle halide এর ক্ষেত্রে degree কার হবে', NULL, NULL, '2020-05-29 00:42:01', NULL, '2020-05-29 00:42:01', NULL),
(648, 1679, 187, 'degree of alkyle halide এর ক্ষেত্রে degree কার হবে', NULL, NULL, '2020-05-29 00:42:02', NULL, '2020-05-29 00:42:02', NULL),
(649, 1679, 187, 'alkyle halide নাকি halogen এর', NULL, NULL, '2020-05-29 00:42:39', NULL, '2020-05-29 00:42:39', NULL),
(650, 865, 195, '34:25min e sir apni je losaguar katha ta bolsen seita buji nai plus 3kibabe gelo seitao buji nai.', NULL, NULL, '2020-05-29 02:29:38', NULL, NULL, NULL),
(651, 945, 104, 'nice', NULL, NULL, '2020-05-29 06:57:59', NULL, '2020-05-29 06:57:59', NULL),
(652, 945, 104, 'nice', NULL, NULL, '2020-05-29 06:58:00', NULL, '2020-05-29 06:58:00', NULL),
(653, 945, 104, 'gg', 'storage/comments/1590699591.jpeg', NULL, '2020-05-29 06:59:51', NULL, '2020-05-29 06:59:51', NULL),
(654, 945, 104, 'gg', 'storage/comments/1590699619.jpeg', NULL, '2020-05-29 07:00:19', NULL, '2020-05-29 07:00:19', NULL),
(655, 945, 104, 'gg', 'storage/comments/1590699623.jpeg', NULL, '2020-05-29 07:00:23', NULL, '2020-05-29 07:00:23', NULL),
(656, 945, 104, NULL, 'storage/comments/1590699635.jpeg', NULL, '2020-05-29 07:00:35', NULL, '2020-05-29 07:00:35', NULL),
(657, 945, 104, 'gg', 'storage/comments/1590699638.jpeg', NULL, '2020-05-29 07:00:38', NULL, '2020-05-29 07:00:38', NULL),
(658, 857, 195, 'sir ami math 2ta korta parasi kora dita hobena', NULL, NULL, '2020-05-29 16:02:11', NULL, NULL, NULL),
(659, 1488, 199, 'vaiya katebuddin sir er 3(F) er 15(e) number math ta doubt class e korie diyen plz.', NULL, NULL, '2020-05-29 17:22:37', NULL, '2020-05-29 17:22:37', NULL),
(660, 1488, 199, 'vaiya katebuddin sir er 3(F) er 15(e) number math ta doubt class e korie diyen plz.', NULL, NULL, '2020-05-29 17:22:38', NULL, '2020-05-29 17:22:38', NULL),
(661, 1488, 186, 'vaiya apnara katubuddin sir er boi er kotin math gula solve korie diyen plz.', NULL, NULL, '2020-05-29 17:27:53', NULL, '2020-05-29 17:27:53', NULL),
(662, 1488, 186, 'vaiya apnara katubuddin sir er boi er kotin math gula solve korie diyen plz.', NULL, NULL, '2020-05-29 17:27:54', NULL, '2020-05-29 17:27:54', NULL),
(663, 1679, 193, 'bhaia alkene and alkyne এর ক্ষেত্রে কি যোগের নিয়ম খাটবে??', NULL, NULL, '2020-05-29 18:40:12', NULL, '2020-05-29 18:40:12', NULL),
(664, 1285, 108, 'Mitu Akter Aste aste to sob video dibei...etto tarahora kiser...course tato 8 Month er..8 Month e course ta ses korte parleito hoy...tai na...Jara new Addmission nitase tara etto video eksathe dhekhle chap kibabe samlabe bebe dhekho', NULL, NULL, '2020-05-29 23:53:03', NULL, '2020-05-29 23:53:03', NULL),
(665, 1285, 108, 'Mitu Akter Aste aste to sob video dibei...etto tarahora kiser...course tato 8 Month er..8 Month e course ta ses korte parleito hoy...tai na...Jara new Addmission nitase tara etto video eksathe dhekhle chap kibabe samlabe bebe dhekho', NULL, NULL, '2020-05-29 23:53:04', NULL, '2020-05-29 23:53:04', NULL),
(666, 1285, 108, 'Mitu Akter Aste aste to sob video dibei...etto tarahora kiser...course tato 8 Month er..8 Month e course ta ses korte parleito hoy...tai na...Jara new Addmission nitase tara etto video eksathe dhekhle chap kibabe samlabe bebe dhekho', NULL, NULL, '2020-05-29 23:53:04', NULL, '2020-05-29 23:53:04', NULL),
(667, 1285, 108, 'Mitu Akter Aste aste to sob video dibei...etto tarahora kiser...course tato 8 Month er..8 Month e course ta ses korte parleito hoy...tai na...Jara new Addmission nitase tara etto video eksathe dhekhle chap kibabe samlabe bebe dhekho', NULL, NULL, '2020-05-29 23:53:05', NULL, '2020-05-29 23:53:05', NULL),
(668, 1285, 108, 'Mitu Akter Aste aste to sob video dibei...etto tarahora kiser...course tato 8 Month er..8 Month e course ta ses korte parleito hoy...tai na...Jara new Addmission nitase tara etto video eksathe dhekhle chap kibabe samlabe bebe dhekho', NULL, NULL, '2020-05-29 23:53:05', NULL, '2020-05-29 23:53:05', NULL),
(669, 1285, 108, 'Mitu Akter Aste aste to sob video dibei...etto tarahora kiser...course tato 8 Month er..8 Month e course ta ses korte parleito hoy...tai na...Jara new Addmission nitase tara etto video eksathe dhekhle chap kibabe samlabe bebe dhekho', NULL, NULL, '2020-05-29 23:53:07', NULL, '2020-05-29 23:53:07', NULL),
(670, 1815, 85, 'ভাইয়া video কই??', NULL, NULL, '2020-05-31 22:42:15', NULL, '2020-05-31 22:42:15', NULL),
(671, 1154, 156, NULL, 'storage/comments/1590953144.jpg', NULL, '2020-06-01 05:25:45', NULL, NULL, NULL),
(672, 430, 120, 'বিক্রিয়ার ক্রম নিয়ে ভিডিও দেন ভাইয়া', NULL, NULL, '2020-06-02 04:10:24', NULL, '2020-06-02 04:10:24', NULL),
(673, 430, 120, 'বিক্রিয়ার ক্রম নিয়ে ভিডিও দেন ভাইয়া', NULL, NULL, '2020-06-02 04:10:25', NULL, '2020-06-02 04:10:25', NULL),
(674, 1491, 67, 'ei problem ta solve kore den vaiya.', 'storage/comments/1591035379.jpeg', NULL, '2020-06-02 04:16:19', NULL, '2020-06-02 04:16:19', NULL),
(675, 1491, 67, 'ei problem ta solve kore den vaiya.', 'storage/comments/1591035381.jpeg', NULL, '2020-06-02 04:16:21', NULL, '2020-06-02 04:16:21', NULL),
(676, 1491, 67, 'ei problem ta solve kore den vaiya.', 'storage/comments/1591035381.jpeg', NULL, '2020-06-02 04:16:21', NULL, '2020-06-02 04:16:21', NULL),
(677, 1491, 67, 'ei problem ta solve kore den vaiya.', 'storage/comments/1591035381.jpeg', NULL, '2020-06-02 04:16:21', NULL, '2020-06-02 04:16:21', NULL),
(678, 1491, 67, 'ei problem ta solve kore den vaiya.', 'storage/comments/1591035381.jpeg', NULL, '2020-06-02 04:16:21', NULL, '2020-06-02 04:16:21', NULL),
(679, 1491, 67, 'ei problem ta solve kore den vaiya.', 'storage/comments/1591035381.jpeg', NULL, '2020-06-02 04:16:21', NULL, '2020-06-02 04:16:21', NULL),
(680, 1491, 67, 'ei problem ta solve kore den vaiya.', 'storage/comments/1591035382.jpeg', NULL, '2020-06-02 04:16:22', NULL, '2020-06-02 04:16:22', NULL),
(681, 1491, 67, 'ei problem ta solve kore den vaiya.', 'storage/comments/1591035382.jpeg', NULL, '2020-06-02 04:16:22', NULL, '2020-06-02 04:16:22', NULL),
(682, 768, 197, 'ভাইয়া Nomenclature of Amines এর  শেষের ২টা example clearly  buji nai . এছাড়া এটার Last example এর main chain টা কিভাবে নিলেন বুঝলাম না।', NULL, NULL, '2020-06-02 13:41:37', NULL, NULL, NULL),
(683, 768, 197, 'vaiya pic sent hocche na.', NULL, NULL, '2020-06-02 14:10:43', NULL, NULL, NULL),
(684, 1679, 192, 'bhaia  eye piece er khetre ki u negative hobe?? ekto jodi bolten', NULL, NULL, '2020-06-02 23:37:15', NULL, '2020-06-02 23:37:15', NULL),
(685, 1805, 85, 'master class kothay....????????', NULL, NULL, '2020-06-03 05:35:46', NULL, '2020-06-03 05:35:46', NULL),
(686, 1805, 85, 'YouTube a je class disen oigula te theory +math chilo ar paid korar por theory nei........kothay ar kaj ato mil.....bah....!!!!', NULL, NULL, '2020-06-03 05:58:10', NULL, '2020-06-03 05:58:10', NULL),
(687, 1080, 181, 'sir 35:45 minute  a apni bollen j meru theke distance porimap. kora jay kintu apni j sine con vention a bollen j lence er mid point theke porimap korbo', NULL, NULL, '2020-06-03 06:04:05', NULL, '2020-06-03 06:04:05', NULL),
(688, 1080, 181, 'sir 35:45 minute  a apni bollen j meru theke distance porimap. kora jay kintu apni j sine con vention a bollen j lence er mid point theke porimap korbo', NULL, NULL, '2020-06-03 06:04:06', NULL, '2020-06-03 06:04:06', NULL),
(689, 1805, 85, 'ami kisokhon age i hoisi ami ae course ta na kore hsc 2021 academic course ta korte chasii baki tk kivabe dibo bolen ar  ae course theke amake oita te add koren....', NULL, NULL, '2020-06-03 06:06:29', NULL, '2020-06-03 06:06:29', NULL),
(690, 1805, 85, 'plss... tartari bolen.....', NULL, NULL, '2020-06-03 06:06:50', NULL, '2020-06-03 06:06:50', NULL),
(691, 1059, 187, 'Assalamualaikum . You mentioned that carbon forms bond with any element owing to it\'s electronegativity . How just by knowing the electronegativity of two elements we can say if a bond is going to take place or not ?', NULL, NULL, '2020-06-03 15:04:07', NULL, NULL, NULL),
(692, 1805, 2, 'apnader akhane kono master class nai ..kinto YouTube a to akdom saradin bolte thaken koto shubidha......', NULL, NULL, '2020-06-03 17:15:57', NULL, '2020-06-03 17:15:57', NULL),
(693, 1059, 197, 'As 2 team-C functional group (amine and carboxylic acid)  are present , the word root was supposed to be followed  by \"ane\" . So at 32:00 , The naming should have been 2-amino-5-chloro-4-ethyl \"butaneoic\" acid.  .', NULL, NULL, '2020-06-04 00:15:47', NULL, NULL, NULL),
(694, 1059, 197, 'hexaneoic*', NULL, NULL, '2020-06-04 00:18:29', NULL, NULL, NULL),
(695, 1872, 96, 'জটিল সংখ্যা part 1 er pdf   nai?', NULL, NULL, '2020-06-04 01:16:06', NULL, NULL, NULL),
(696, 680, 150, 'please solve this bhaia', 'storage/comments/1591241045.jpeg', NULL, '2020-06-04 13:24:05', NULL, '2020-06-04 13:24:05', NULL),
(697, 680, 150, 'please solve this bhaia', 'storage/comments/1591241046.jpeg', NULL, '2020-06-04 13:24:06', NULL, '2020-06-04 13:24:06', NULL),
(698, 680, 150, 'please solve this bhaia', 'storage/comments/1591241048.jpeg', NULL, '2020-06-04 13:24:08', NULL, '2020-06-04 13:24:08', NULL),
(699, 680, 150, 'please solve this bhaia', 'storage/comments/1591241048.jpeg', NULL, '2020-06-04 13:24:08', NULL, '2020-06-04 13:24:08', NULL),
(700, 680, 150, 'please solve this bhaia', 'storage/comments/1591241050.jpeg', NULL, '2020-06-04 13:24:10', NULL, '2020-06-04 13:24:10', NULL),
(701, 680, 150, 'please solve this bhaia', 'storage/comments/1591241052.jpeg', NULL, '2020-06-04 13:24:12', NULL, '2020-06-04 13:24:12', NULL),
(702, 680, 150, 'please solve this bhaia', 'storage/comments/1591241052.jpeg', NULL, '2020-06-04 13:24:12', NULL, '2020-06-04 13:24:12', NULL),
(703, 680, 150, 'please solve this bhaia', 'storage/comments/1591241053.jpeg', NULL, '2020-06-04 13:24:13', NULL, '2020-06-04 13:24:13', NULL),
(704, 680, 150, 'please solve this bhaia', 'storage/comments/1591241054.jpeg', NULL, '2020-06-04 13:24:14', NULL, '2020-06-04 13:24:14', NULL),
(705, 680, 150, 'please solve this bhaia', 'storage/comments/1591241054.jpeg', NULL, '2020-06-04 13:24:14', NULL, '2020-06-04 13:24:14', NULL),
(706, 680, 150, 'please solve this bhaia', 'storage/comments/1591241056.jpeg', NULL, '2020-06-04 13:24:16', NULL, '2020-06-04 13:24:16', NULL),
(707, 680, 150, 'please solve this bhaia', 'storage/comments/1591241057.jpeg', NULL, '2020-06-04 13:24:17', NULL, '2020-06-04 13:24:17', NULL),
(708, 680, 150, 'please solve this bhaia', 'storage/comments/1591241058.jpeg', NULL, '2020-06-04 13:24:18', NULL, '2020-06-04 13:24:18', NULL),
(709, 680, 150, 'please solve this bhaia', 'storage/comments/1591241058.jpeg', NULL, '2020-06-04 13:24:18', NULL, '2020-06-04 13:24:18', NULL),
(710, 680, 150, 'please solve this bhaia', 'storage/comments/1591241058.jpeg', NULL, '2020-06-04 13:24:18', NULL, '2020-06-04 13:24:18', NULL),
(711, 680, 150, 'please solve this bhaia', 'storage/comments/1591241061.jpeg', NULL, '2020-06-04 13:24:21', NULL, '2020-06-04 13:24:21', NULL),
(712, 680, 150, 'please solve this bhaia', 'storage/comments/1591241076.jpeg', NULL, '2020-06-04 13:24:36', NULL, '2020-06-04 13:24:36', NULL),
(713, 680, 150, 'please solve this bhaia', 'storage/comments/1591241080.jpeg', NULL, '2020-06-04 13:24:40', NULL, '2020-06-04 13:24:40', NULL),
(714, 680, 150, 'maybe there is a bug in the app. upload hocchilo na tai koyekbar click koray shob ekshathe gese', NULL, NULL, '2020-06-04 13:24:58', NULL, '2020-06-04 13:24:58', NULL),
(715, 680, 157, 'etar 2 no.', 'storage/comments/1591253686.jpeg', NULL, '2020-06-04 16:54:46', NULL, '2020-06-04 16:54:46', NULL),
(716, 680, 157, 'etar 2 no.', 'storage/comments/1591253688.jpeg', NULL, '2020-06-04 16:54:48', NULL, '2020-06-04 16:54:48', NULL),
(717, 680, 157, 'etar 2 no.', 'storage/comments/1591253689.jpeg', NULL, '2020-06-04 16:54:49', NULL, '2020-06-04 16:54:49', NULL),
(718, 680, 157, 'ar eta', 'storage/comments/1591253718.jpeg', NULL, '2020-06-04 16:55:18', NULL, '2020-06-04 16:55:18', NULL),
(719, 680, 157, 'ar eta', 'storage/comments/1591253723.jpeg', NULL, '2020-06-04 16:55:23', NULL, '2020-06-04 16:55:23', NULL),
(720, 1390, 165, '34:49 a temperature  barle  chap   barar     ta nao barte parto vaya?', NULL, NULL, '2020-06-05 04:51:21', NULL, '2020-06-05 04:51:21', NULL),
(721, 1390, 165, '34:49 a temperature  barle  chap   barar     ta nao barte parto vaya?', NULL, NULL, '2020-06-05 04:51:22', NULL, '2020-06-05 04:51:22', NULL),
(722, 717, 197, 'ভাইয়া নামকরণ এর প্লাস ক্লাস চাই', NULL, NULL, '2020-06-05 14:56:27', NULL, '2020-06-05 14:56:27', NULL),
(723, 717, 197, 'ভাইয়া নামকরণ এর প্লাস ক্লাস চাই', NULL, NULL, '2020-06-05 14:56:28', NULL, '2020-06-05 14:56:28', NULL),
(724, 717, 197, 'ভাইয়া নামকরণ এর প্লাস ক্লাস চাই', NULL, NULL, '2020-06-05 14:56:29', NULL, '2020-06-05 14:56:29', NULL),
(725, 985, 194, 'Nice class', NULL, NULL, '2020-06-05 15:30:38', NULL, NULL, NULL),
(726, 985, 194, NULL, 'storage/comments/1591335068.jpg', NULL, '2020-06-05 15:31:08', NULL, NULL, NULL),
(727, 1909, 92, 'M-38 kothe???', NULL, NULL, '2020-06-05 17:16:18', NULL, '2020-06-05 17:16:18', NULL),
(728, 881, 110, 'vai sera', NULL, NULL, '2020-06-07 14:56:05', NULL, '2020-06-07 14:56:05', NULL),
(729, 881, 110, 'vai sera', NULL, NULL, '2020-06-07 14:56:06', NULL, '2020-06-07 14:56:06', NULL),
(730, 2042, 2, 'Bhai aa ami video h\nAmi video gola dakta partaci na...kono ak ta problem hocca... bojtaci na..taka kaita nica', NULL, NULL, '2020-06-09 03:55:14', NULL, '2020-06-09 03:55:14', NULL),
(731, 2042, 2, 'Bhai aa ami video h\nAmi video gola dakta partaci na...kono ak ta problem hocca... bojtaci na..taka kaita nica', NULL, NULL, '2020-06-09 03:55:15', NULL, '2020-06-09 03:55:15', NULL),
(732, 2042, 2, 'Bhai aa ami video h\nAmi video gola dakta partaci na...kono ak ta problem hocca... bojtaci na..taka kaita nica', NULL, NULL, '2020-06-09 03:55:15', NULL, '2020-06-09 03:55:15', NULL),
(733, 2042, 2, 'Bhai aa ami video h\nAmi video gola dakta partaci na...kono ak ta problem hocca... bojtaci na..taka kaita nica', NULL, NULL, '2020-06-09 03:55:15', NULL, '2020-06-09 03:55:15', NULL),
(734, 2042, 2, 'Bhai aa ami video h\nAmi video gola dakta partaci na...kono ak ta problem hocca... bojtaci na..taka kaita nica', NULL, NULL, '2020-06-09 03:55:16', NULL, '2020-06-09 03:55:16', NULL),
(735, 1839, 128, 'ভাইয়া লা\' শাতেলিয়ার এর নীতি কি এটা দারা কভার হলো?', NULL, NULL, '2020-06-11 03:35:27', NULL, '2020-06-11 03:35:27', NULL),
(736, 1839, 128, 'ভাইয়া লা\' শাতেলিয়ার এর নীতি কি এটা দারা কভার হলো?', NULL, NULL, '2020-06-11 03:35:28', NULL, '2020-06-11 03:35:28', NULL),
(737, 1839, 165, 'ভাইয়া, লা-শাতেলিয়ার এর নীতি পিডিএফ এ আছে অথচ ভিডিওতে নাই 😑', NULL, NULL, '2020-06-11 04:41:11', NULL, '2020-06-11 04:41:11', NULL),
(738, 1839, 165, 'ভাইয়া, লা-শাতেলিয়ার এর নীতি পিডিএফ এ আছে অথচ ভিডিওতে নাই 😑', NULL, NULL, '2020-06-11 04:41:12', NULL, '2020-06-11 04:41:12', NULL),
(739, 1488, 111, 'hi', NULL, NULL, '2020-06-11 22:24:07', NULL, '2020-06-11 22:24:07', NULL),
(740, 1867, 109, 'Vaiya Chemistry 2nd paper er Stoichiometric chemistry chapter ta soro korle kbb valo hoi... pls😑', NULL, NULL, '2020-06-12 00:01:09', NULL, '2020-06-12 00:01:09', NULL),
(741, 1867, 109, 'Vaiya Chemistry 2nd paper er Stoichiometric chemistry chapter ta soro korle kbb valo hoi... pls😑', NULL, NULL, '2020-06-12 00:01:10', NULL, '2020-06-12 00:01:10', NULL),
(742, 1887, 90, 'ভাইয়া C-11 লেকচারটা পাচ্ছি না..', NULL, NULL, '2020-06-12 16:53:00', NULL, '2020-06-12 16:53:00', NULL),
(743, 339, 28, '😊😊', NULL, NULL, '2020-06-13 01:32:52', NULL, '2020-06-13 01:32:52', NULL),
(744, 339, 28, '😊😊', NULL, NULL, '2020-06-13 01:33:01', NULL, '2020-06-13 01:33:01', NULL),
(745, 2090, 35, 'ভাইয়া কোনো vedio দেখাচ্ছেনা কেনজানি', NULL, NULL, '2020-06-14 21:53:09', NULL, '2020-06-14 21:53:09', NULL),
(746, 2090, 35, 'পাইছি', NULL, NULL, '2020-06-14 21:53:32', NULL, '2020-06-14 21:53:32', NULL),
(747, 2090, 35, 'পাইছি', NULL, NULL, '2020-06-14 21:53:33', NULL, '2020-06-14 21:53:33', NULL),
(748, 2090, 35, 'পাইছি', NULL, NULL, '2020-06-14 21:53:33', NULL, '2020-06-14 21:53:33', NULL),
(749, 2090, 85, 'vai vedio hoy na kn ki korbo bolen', NULL, NULL, '2020-06-15 04:04:24', NULL, '2020-06-15 04:04:24', NULL),
(750, 2090, 85, 'vai vedio hoy na kn ki korbo bolen', NULL, NULL, '2020-06-15 04:04:25', NULL, '2020-06-15 04:04:25', NULL),
(751, 2090, 11, NULL, 'storage/comments/1592158733.jpeg', NULL, '2020-06-15 04:18:53', NULL, '2020-06-15 04:18:53', NULL),
(752, 2090, 11, 'vai hosse na kn', NULL, NULL, '2020-06-15 04:19:08', NULL, '2020-06-15 04:19:08', NULL),
(753, 2090, 11, 'vaia please ektu help koren', NULL, NULL, '2020-06-15 04:21:22', NULL, '2020-06-15 04:21:22', NULL),
(754, 2180, 17, 'vaiya vramok bolte ki bojhay jodi ektu bojhay diten', NULL, NULL, '2020-06-16 09:58:07', NULL, '2020-06-16 09:58:07', NULL),
(755, 2180, 17, 'vaiya vramok bolte ki bojhay jodi ektu bojhay diten', NULL, NULL, '2020-06-16 09:58:07', NULL, '2020-06-16 09:58:07', NULL),
(756, 2180, 17, 'R master class kothay pabo vaiya', NULL, NULL, '2020-06-16 10:06:56', NULL, '2020-06-16 10:06:56', NULL),
(757, 867, 166, 'vai \'Flux\' er ki kono direction ache??????', NULL, NULL, '2020-06-17 19:41:57', NULL, '2020-06-17 19:41:57', NULL),
(758, 867, 166, 'vai ekhane ki \'+ve\' pat theke 2 dike ekoi charge hot \'E\' ber hochhe????', 'storage/comments/1592387060.jpeg', NULL, '2020-06-17 19:44:20', NULL, '2020-06-17 19:44:20', NULL),
(759, 2182, 109, 'I want all classes from the first chapter', NULL, NULL, '2020-06-18 00:07:54', NULL, NULL, NULL),
(760, 2182, 108, 'vaiya ami notun join class kinechi. I want classes of 1st chapter of the 1st papar.', NULL, NULL, '2020-06-18 00:13:02', NULL, NULL, NULL),
(761, 232, 143, 'bai vedio chole na kno????', NULL, NULL, '2020-06-18 01:33:55', NULL, '2020-06-18 01:33:55', NULL),
(762, 232, 143, 'bai vedio chole na kno????', NULL, NULL, '2020-06-18 01:33:56', NULL, '2020-06-18 01:33:56', NULL),
(763, 232, 143, 'bai vedio chole na kno????', NULL, NULL, '2020-06-18 01:33:58', NULL, '2020-06-18 01:33:58', NULL),
(764, 232, 84, 'bai trigonometry graph discuss korenni. it is very very important for hsc', NULL, NULL, '2020-06-18 01:48:32', NULL, '2020-06-18 01:48:32', NULL),
(765, 232, 84, 'bai trigonometry graph discuss korenni. it is very very important for hsc', NULL, NULL, '2020-06-18 01:48:33', NULL, '2020-06-18 01:48:33', NULL),
(766, 232, 84, 'bai vedio den taratari', NULL, NULL, '2020-06-18 01:48:55', NULL, '2020-06-18 01:48:55', NULL),
(767, 232, 84, 'bai vedio den taratari', NULL, NULL, '2020-06-18 01:48:58', NULL, '2020-06-18 01:48:58', NULL),
(768, 339, 130, 'viya,,onk doya roilo😊', NULL, NULL, '2020-06-18 15:53:17', NULL, '2020-06-18 15:53:17', NULL),
(769, 867, 194, 'ekhane amra d(theta) keno change korbo??????\nr vaiya \'redial E\' bujhi nai.', 'storage/comments/1592464866.jpeg', NULL, '2020-06-18 17:21:06', NULL, '2020-06-18 17:21:06', NULL),
(770, 2099, 111, 'eta kivabe solve korbo?', 'storage/comments/1592492339.jpeg', NULL, '2020-06-19 00:58:59', NULL, '2020-06-19 00:58:59', NULL),
(771, 2099, 111, 'eta kivabe solve korbo?', 'storage/comments/1592492340.jpeg', NULL, '2020-06-19 00:59:00', NULL, '2020-06-19 00:59:00', NULL),
(772, 591, 183, 'bhaia r kokhon positive hoba o kokhon negative hoba buhjtasi na', NULL, NULL, '2020-06-19 01:28:57', NULL, NULL, NULL),
(773, 1784, 109, 'CFC-112\nC2F2Cl4', NULL, NULL, '2020-06-19 04:55:48', NULL, '2020-06-19 04:55:48', NULL),
(774, 1262, 134, '?', NULL, NULL, '2020-06-19 12:30:32', NULL, NULL, NULL),
(775, 944, 187, 'root+ class pacchi na j? 😑', NULL, NULL, '2020-06-19 20:45:53', NULL, '2020-06-19 20:45:53', NULL),
(776, 1744, 112, 'vaiya i am new,,,ami bujhtesi na class gulor routine kivab pabo', NULL, NULL, '2020-06-19 23:41:27', NULL, NULL, NULL),
(777, 2366, 47, 'ভাই শুধু m 3  এর পিডি এফ দেয়া বাকি গুলার পিডি এফ কোথায়?? m4 m5   এর পিডি এফ কোথাই?', NULL, NULL, '2020-06-20 00:37:46', NULL, '2020-06-20 00:37:46', NULL),
(778, 2366, 47, 'ভাই শুধু m 3  এর পিডি এফ দেয়া বাকি গুলার পিডি এফ কোথায়?? m4 m5   এর পিডি এফ কোথাই?', NULL, NULL, '2020-06-20 00:37:48', NULL, '2020-06-20 00:37:48', NULL),
(779, 2366, 47, 'ভাই শুধু m 3  এর পিডি এফ দেয়া বাকি গুলার পিডি এফ কোথায়?? m4 m5   এর পিডি এফ কোথাই?', NULL, NULL, '2020-06-20 00:37:48', NULL, '2020-06-20 00:37:48', NULL),
(780, 2366, 47, 'ভাই শুধু m 3  এর পিডি এফ দেয়া বাকি গুলার পিডি এফ কোথায়?? m4 m5   এর পিডি এফ কোথাই?', NULL, NULL, '2020-06-20 00:37:49', NULL, '2020-06-20 00:37:49', NULL),
(781, 1080, 205, '3', NULL, NULL, '2020-06-20 02:09:33', NULL, '2020-06-20 02:09:33', NULL),
(782, 1080, 205, '3', NULL, NULL, '2020-06-20 02:09:34', NULL, '2020-06-20 02:09:34', NULL),
(783, 339, 90, 'c11?? class ta kothai??', NULL, NULL, '2020-06-20 05:16:41', NULL, '2020-06-20 05:16:41', NULL),
(784, 339, 90, 'c11?? class ta kothai??', NULL, NULL, '2020-06-20 05:16:42', NULL, '2020-06-20 05:16:42', NULL),
(785, 168, 172, 'ek kothay osadharon class', NULL, NULL, '2020-06-20 05:23:46', NULL, '2020-06-20 05:23:46', NULL),
(786, 1030, 205, 'done bhai. 😍', NULL, NULL, '2020-06-20 14:36:53', NULL, '2020-06-20 14:36:53', NULL),
(787, 1744, 205, 'ভাইয়া সীমার ধর্মাবলী গূলো বুঝি নাই', NULL, NULL, '2020-06-20 22:54:39', NULL, NULL, NULL),
(788, 1909, 106, 'video download  korea kono system den', NULL, NULL, '2020-06-21 19:47:35', NULL, '2020-06-21 19:47:35', NULL),
(789, 1103, 187, 'Same problem roots plus class daksi nah tw?????', NULL, NULL, '2020-06-21 22:09:06', NULL, '2020-06-21 22:09:06', NULL),
(790, 2379, 28, 'vaiya pdf ase but Vidiou nai kn??🤔', NULL, NULL, '2020-06-22 01:00:02', NULL, '2020-06-22 01:00:02', NULL),
(791, 2379, 28, 'vaiya pdf ase but Vidiou nai kn??🤔', NULL, NULL, '2020-06-22 01:00:04', NULL, '2020-06-22 01:00:04', NULL),
(792, 2379, 99, '☺☺', NULL, NULL, '2020-06-22 01:02:20', NULL, '2020-06-22 01:02:20', NULL),
(793, 2379, 99, '☺☺', NULL, NULL, '2020-06-22 01:02:21', NULL, '2020-06-22 01:02:21', NULL),
(794, 2379, 99, '☺☺', NULL, NULL, '2020-06-22 01:02:21', NULL, '2020-06-22 01:02:21', NULL),
(795, 2379, 8, '☺☺', NULL, NULL, '2020-06-22 01:46:18', NULL, '2020-06-22 01:46:18', NULL),
(796, 1744, 207, 'vaiya l hospital law ta ki bujhiye den', NULL, NULL, '2020-06-22 05:26:29', NULL, NULL, NULL),
(797, 2180, 38, 'Du mane ki vaiya?', NULL, NULL, '2020-06-23 15:50:39', NULL, '2020-06-23 15:50:39', NULL),
(798, 847, 134, NULL, 'storage/comments/1592919035.jpeg', NULL, '2020-06-23 23:30:35', NULL, '2020-06-23 23:30:35', NULL),
(799, 847, 134, NULL, 'storage/comments/1592919039.jpeg', NULL, '2020-06-23 23:30:39', NULL, '2020-06-23 23:30:39', NULL),
(800, 847, 134, 'test comment', NULL, NULL, '2020-06-23 23:30:56', NULL, '2020-06-23 23:30:56', NULL),
(801, 2374, 192, 'class ki aro ache naki shesh??', NULL, NULL, '2020-06-23 23:45:30', NULL, NULL, NULL),
(802, 1713, 111, 'ক্ক', NULL, NULL, '2020-06-24 01:17:25', NULL, '2020-06-24 01:17:25', NULL),
(803, 881, 187, 'j', NULL, NULL, '2020-06-24 01:40:53', NULL, '2020-06-24 01:40:53', NULL),
(804, 881, 187, 'j', NULL, NULL, '2020-06-24 01:40:54', NULL, '2020-06-24 01:40:54', NULL),
(805, 857, 205, 'sir done', NULL, NULL, '2020-06-24 06:35:59', NULL, NULL, NULL),
(807, 1687, 160, 'nice', NULL, NULL, '2020-06-25 00:03:03', NULL, '2020-06-25 00:03:03', NULL),
(808, 1687, 160, 'nice', NULL, NULL, '2020-06-25 00:03:04', NULL, '2020-06-25 00:03:04', NULL),
(809, 847, 136, 'test', NULL, NULL, '2020-06-25 01:51:09', NULL, '2020-06-25 01:51:09', NULL),
(810, 1103, 187, 'Vaiya ei chapter er ki roots plus class nai????', NULL, NULL, '2020-06-25 15:06:52', NULL, '2020-06-25 15:06:52', NULL),
(811, 1744, 109, 'vaiya kp=kc kp kokhn hobe', NULL, NULL, '2020-06-25 16:17:27', NULL, '2020-06-25 16:17:27', NULL),
(812, 604, 79, 's fmu', NULL, NULL, '2020-06-25 16:58:59', NULL, '2020-06-25 16:58:59', NULL),
(813, 1488, 188, 'tnx', NULL, NULL, '2020-06-25 18:25:49', NULL, '2020-06-25 18:25:49', NULL),
(814, 1759, 208, 'CIP rule এর ৩য় নিয়মটা বুঝিনি, sir.', NULL, NULL, '2020-06-27 23:09:30', NULL, '2020-06-27 23:09:30', NULL),
(815, 1759, 208, 'CIP rule এর ৩য় নিয়মটা বুঝিনি, sir.', NULL, NULL, '2020-06-27 23:09:30', NULL, '2020-06-27 23:09:30', NULL),
(816, 1759, 208, 'CIP rule এর ৩য় নিয়মটা বুঝিনি, sir.', NULL, NULL, '2020-06-27 23:09:30', NULL, '2020-06-27 23:09:30', NULL),
(817, 339, 57, '16 min ...\na biyog ???', NULL, NULL, '2020-06-28 00:36:31', NULL, '2020-06-28 00:36:31', NULL),
(818, 339, 57, '16 min ...\na biyog ???', NULL, NULL, '2020-06-28 00:36:31', NULL, '2020-06-28 00:36:31', NULL),
(819, 339, 57, '16 min ...\na biyog ???', NULL, NULL, '2020-06-28 00:36:31', NULL, '2020-06-28 00:36:31', NULL),
(820, 339, 57, '16 min ...\na biyog ???', NULL, NULL, '2020-06-28 00:36:32', NULL, '2020-06-28 00:36:32', NULL),
(821, 339, 57, '16 min ...\na biyog ???', NULL, NULL, '2020-06-28 00:36:32', NULL, '2020-06-28 00:36:32', NULL),
(822, 339, 57, '16 min ...\na biyog ???', NULL, NULL, '2020-06-28 00:36:34', NULL, '2020-06-28 00:36:34', NULL),
(823, 2698, 108, 'Vaia ami notun join korsi.ami ager classgula kivabe pabo?', NULL, NULL, '2020-06-28 20:25:58', NULL, NULL, NULL),
(824, 1152, 210, '\"h→π/2 hole h→0  hobe\" eta bujhini', NULL, NULL, '2020-06-29 13:50:21', NULL, '2020-06-29 13:50:21', NULL),
(825, 2092, 210, 'Vaiya video offline download option dile anek valo hoto ,,, net problem ar Jono anek kost Hoy video dekhte', NULL, NULL, '2020-06-30 14:19:03', NULL, '2020-06-30 14:19:03', NULL),
(826, 1039, 210, 'rootsplus er video download korar system taratari korle valo hoy, zara amra rootsplus er member.', NULL, NULL, '2020-07-02 01:17:30', NULL, '2020-07-02 01:17:30', NULL),
(827, 1808, 208, 'vaiya, GI ta bujtesina.', NULL, NULL, '2020-07-02 12:16:07', NULL, '2020-07-02 12:16:07', NULL),
(828, 2757, 201, 'Class routine dile valo hoto', NULL, NULL, '2020-07-02 14:49:19', NULL, '2020-07-02 14:49:19', NULL),
(829, 2417, 48, 'ans er vul ase mone hocche shomo duroborti hol e to pb=ap abong bp hocche -a tahole to ans mile na vai ans den https://youtu.be/IFsLkk0VxBM?t=1859', NULL, NULL, '2020-07-03 12:31:33', NULL, NULL, NULL),
(830, 2417, 48, 'got it', NULL, NULL, '2020-07-03 12:54:09', NULL, NULL, NULL),
(831, 1744, 172, 'last er age rexample ta bujhi nai', NULL, NULL, '2020-07-03 21:40:38', NULL, NULL, NULL),
(832, 847, 110, 'thanks', NULL, NULL, '2020-07-04 01:09:38', NULL, '2020-07-04 01:09:38', NULL),
(833, 837, 187, 'CH4 EKTA MATHANOSTO JOWGO< MOJA PAISI BHAIYAAAA', NULL, NULL, '2020-07-04 01:44:59', NULL, NULL, NULL),
(834, 430, 210, 'roots plus ar video golu download korar system koren bhai,amader onek mb khoruj hoi, video golu dekte,', NULL, NULL, '2020-07-04 19:41:55', NULL, '2020-07-04 19:41:55', NULL),
(835, 430, 210, 'roots plus ar video golu download korar system koren bhai,amader onek mb khoruj hoi, video golu dekte,', NULL, NULL, '2020-07-04 19:41:56', NULL, '2020-07-04 19:41:56', NULL),
(836, 1488, 210, 'vaiya e math ta solve kore diyen.', NULL, NULL, '2020-07-04 21:51:39', NULL, '2020-07-04 21:51:39', NULL),
(837, 1488, 210, 'vaiya e math ta solve kore diyen.', NULL, NULL, '2020-07-04 21:51:40', NULL, '2020-07-04 21:51:40', NULL),
(838, 1488, 210, 'vaiya e math ta solve kore diyen.', NULL, NULL, '2020-07-04 21:51:41', NULL, '2020-07-04 21:51:41', NULL),
(839, 1488, 210, 'vaiya e math ta solve kore diyen.', NULL, NULL, '2020-07-04 21:51:41', NULL, '2020-07-04 21:51:41', NULL),
(840, 1488, 210, 'vaiya e math ta solve kore diyen.', NULL, NULL, '2020-07-04 21:51:41', NULL, '2020-07-04 21:51:41', NULL),
(841, 2167, 205, 'bhai done', NULL, NULL, '2020-07-04 23:39:15', NULL, '2020-07-04 23:39:15', NULL),
(842, 2167, 116, 'socrion shocti ki shodho bikriokar hoy?', NULL, NULL, '2020-07-05 21:21:44', NULL, '2020-07-05 21:21:44', NULL),
(843, 2167, 116, 'socrion shocti ki shodho bikriokar hoy?', NULL, NULL, '2020-07-05 21:21:45', NULL, '2020-07-05 21:21:45', NULL),
(844, 2167, 207, '1st math a সীমার কোন  ধর্মটি ব্যবহার হয়েছে?', NULL, NULL, '2020-07-06 02:52:25', NULL, '2020-07-06 02:52:25', NULL),
(845, 2167, 207, 'x to exactly  0 na, tahola 5/(√1+2x+√1-3x) akana Kano x=0 boshai?', NULL, NULL, '2020-07-06 03:07:18', NULL, '2020-07-06 03:07:18', NULL),
(846, 1744, 138, 'slide skip kora hoise', NULL, NULL, '2020-07-06 23:44:49', NULL, NULL, NULL),
(847, 775, 132, 'vaiya onko korar age aktu niyom gula visleson koiren taile subida hoi', NULL, NULL, '2020-07-08 00:15:13', NULL, '2020-07-08 00:15:13', NULL),
(848, 775, 132, 'vaiya onko korar age aktu niyom gula visleson koiren taile subida hoi', NULL, NULL, '2020-07-08 00:15:15', NULL, '2020-07-08 00:15:15', NULL),
(849, 2167, 123, 'songorshar pic .ta ..bhol mona .hoccha', NULL, NULL, '2020-07-08 04:01:34', NULL, '2020-07-08 04:01:34', NULL),
(850, 2167, 128, '- chino ta ki qsy stem area aga hobs na.?', NULL, NULL, '2020-07-08 17:13:48', NULL, '2020-07-08 17:13:48', NULL),
(851, 945, 50, 'vai video quality valo na Jodi oi dika aktu nojar diban', NULL, NULL, '2020-07-08 19:30:45', NULL, '2020-07-08 19:30:45', NULL),
(852, 945, 50, 'vai video quality valo na Jodi oi dika aktu nojar diban', NULL, NULL, '2020-07-08 19:30:46', NULL, '2020-07-08 19:30:46', NULL),
(853, 945, 50, 'app is very slow', NULL, NULL, '2020-07-08 19:31:46', NULL, '2020-07-08 19:31:46', NULL),
(854, 945, 50, 'app is very slow', NULL, NULL, '2020-07-08 19:31:47', NULL, '2020-07-08 19:31:47', NULL),
(855, 3052, 194, 'Vaiya...Ami 8 July..Hsc 2021 academic enroll koresi. \nAkhn...vaiya...ami  apnader 8 months er routine ta kothay/ kivabe pabo???\nPlz..vaiya..kindly...ektu...bolen..', NULL, NULL, '2020-07-09 02:24:47', NULL, '2020-07-09 02:24:47', NULL),
(856, 3052, 194, 'Vaiya...Ami 8 July..Hsc 2021 academic enroll koresi. \nAkhn...vaiya...ami  apnader 8 months er routine ta kothay/ kivabe pabo???\nPlz..vaiya..kindly...ektu...bolen..', NULL, NULL, '2020-07-09 02:24:48', NULL, '2020-07-09 02:24:48', NULL),
(857, 3086, 108, 'vaiya ami notun assalamualaikum ,ager sob video gulo kothai pabo?', NULL, NULL, '2020-07-09 13:05:54', NULL, NULL, NULL),
(858, 3071, 168, 'vaia ei app er proyojon ki...amra ei shob video class to YouTube e binamulle korte partam', NULL, NULL, '2020-07-09 14:50:29', NULL, '2020-07-09 14:50:29', NULL),
(859, 1713, 212, 'lagrange\'s mean value theorem টা বুজাইয়া দিয়েন প্লিজ।।', NULL, NULL, '2020-07-09 17:56:17', NULL, '2020-07-09 17:56:17', NULL),
(860, 3071, 108, 'vaia apnader ei shob video to YouTube e free te paoa jae...Tobe ei app er ki dorkar chilo??', NULL, NULL, '2020-07-09 18:49:04', NULL, '2020-07-09 18:49:04', NULL),
(861, 3053, 177, 'Thank you vaiya ... onk vhalo vhabe bujiyecen .', NULL, NULL, '2020-07-09 20:13:11', NULL, '2020-07-09 20:13:11', NULL),
(862, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292800.jpeg', NULL, '2020-07-09 21:06:40', NULL, '2020-07-09 21:06:40', NULL),
(863, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292802.jpeg', NULL, '2020-07-09 21:06:42', NULL, '2020-07-09 21:06:42', NULL),
(864, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292803.jpeg', NULL, '2020-07-09 21:06:43', NULL, '2020-07-09 21:06:43', NULL),
(865, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292804.jpeg', NULL, '2020-07-09 21:06:44', NULL, '2020-07-09 21:06:44', NULL),
(866, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292810.jpeg', NULL, '2020-07-09 21:06:50', NULL, '2020-07-09 21:06:50', NULL),
(867, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292811.jpeg', NULL, '2020-07-09 21:06:51', NULL, '2020-07-09 21:06:51', NULL),
(868, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292811.jpeg', NULL, '2020-07-09 21:06:51', NULL, '2020-07-09 21:06:51', NULL),
(869, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292811.jpeg', NULL, '2020-07-09 21:06:51', NULL, '2020-07-09 21:06:51', NULL),
(870, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292812.jpeg', NULL, '2020-07-09 21:06:52', NULL, '2020-07-09 21:06:52', NULL),
(871, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292813.jpeg', NULL, '2020-07-09 21:06:53', NULL, '2020-07-09 21:06:53', NULL),
(872, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292813.jpeg', NULL, '2020-07-09 21:06:53', NULL, '2020-07-09 21:06:53', NULL),
(873, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292814.jpeg', NULL, '2020-07-09 21:06:54', NULL, '2020-07-09 21:06:54', NULL),
(874, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292814.jpeg', NULL, '2020-07-09 21:06:54', NULL, '2020-07-09 21:06:54', NULL),
(875, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292814.jpeg', NULL, '2020-07-09 21:06:54', NULL, '2020-07-09 21:06:54', NULL),
(876, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292815.jpeg', NULL, '2020-07-09 21:06:55', NULL, '2020-07-09 21:06:55', NULL),
(877, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292816.jpeg', NULL, '2020-07-09 21:06:56', NULL, '2020-07-09 21:06:56', NULL),
(878, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292817.jpeg', NULL, '2020-07-09 21:06:57', NULL, '2020-07-09 21:06:57', NULL),
(879, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292817.jpeg', NULL, '2020-07-09 21:06:57', NULL, '2020-07-09 21:06:57', NULL),
(880, 3053, 183, 'vaiya ei math ta buji ne', 'storage/comments/1594292817.jpeg', NULL, '2020-07-09 21:06:57', NULL, '2020-07-09 21:06:57', NULL),
(881, 2782, 150, 'video distrub dai. ...', NULL, NULL, '2020-07-10 01:57:28', NULL, '2020-07-10 01:57:28', NULL),
(882, 2782, 150, 'video distrub dai. ...', NULL, NULL, '2020-07-10 01:57:28', NULL, '2020-07-10 01:57:28', NULL),
(883, 684, 108, '???', NULL, NULL, '2020-07-10 03:26:54', NULL, '2020-07-10 03:26:54', NULL),
(884, 780, 201, 'vai ato onume kano??????????', NULL, NULL, '2020-07-10 13:59:35', NULL, NULL, NULL),
(885, 1030, 210, 'great class vaiya..', NULL, NULL, '2020-07-10 15:57:59', NULL, '2020-07-10 15:57:59', NULL),
(886, 3046, 177, 'owo thanks', NULL, NULL, '2020-07-10 23:07:47', NULL, '2020-07-10 23:07:47', NULL),
(887, 3046, 177, 'owo thanks', NULL, NULL, '2020-07-10 23:07:48', NULL, '2020-07-10 23:07:48', NULL),
(888, 881, 211, 'ek somotolio alo ki?', NULL, NULL, '2020-07-11 22:54:37', NULL, '2020-07-11 22:54:37', NULL),
(889, 881, 213, 'vaia roots plus class ekto kom hosse..sob to rootse hosse', NULL, NULL, '2020-07-11 22:57:17', NULL, '2020-07-11 22:57:17', NULL),
(890, 2757, 192, 'স্থির পানিতে 50 cm গভীরতায় একটি মাছ আছে । প্রমাণ কর যে , মাছের চোখে পানির তল 57 cm ব্যাসার্ধের একটি বৃত্ত মনে হবে', NULL, NULL, '2020-07-12 19:04:43', NULL, '2020-07-12 19:04:43', NULL),
(891, 2757, 192, 'স্থির পানিতে 50 cm গভীরতায় একটি মাছ আছে । প্রমাণ কর যে , মাছের চোখে পানির তল 57 cm ব্যাসার্ধের একটি বৃত্ত মনে হবে', NULL, NULL, '2020-07-12 19:04:46', NULL, '2020-07-12 19:04:46', NULL),
(892, 2727, 112, 'vaia kivabe course ta hobe ektu bujhai bolen vaia pls.....', NULL, NULL, '2020-07-12 22:29:56', NULL, '2020-07-12 22:29:56', NULL),
(893, 1336, 126, 'মূল প্রবাহ 1A কিভাবে????', 'storage/comments/1594635171.jpeg', NULL, '2020-07-13 20:12:51', NULL, '2020-07-13 20:12:51', NULL),
(894, 1336, 126, 'মূল প্রবাহ 1A কিভাবে????', 'storage/comments/1594635173.jpeg', NULL, '2020-07-13 20:12:53', NULL, '2020-07-13 20:12:53', NULL),
(895, 3074, 187, 'hi', NULL, NULL, '2020-07-13 22:05:14', NULL, '2020-07-13 22:05:14', NULL),
(896, 2340, 49, 'Master class koi vaiya?', NULL, NULL, '2020-07-14 00:35:56', NULL, '2020-07-14 00:35:56', NULL),
(897, 2340, 49, 'Master class koi vaiya?', NULL, NULL, '2020-07-14 00:35:57', NULL, '2020-07-14 00:35:57', NULL),
(898, 2340, 46, 'master class koi vaiya', NULL, NULL, '2020-07-14 00:37:22', NULL, '2020-07-14 00:37:22', NULL),
(899, 881, 217, 'sera', NULL, NULL, '2020-07-14 07:54:55', NULL, NULL, NULL),
(900, 598, 129, 'Apnar note tar link painai vhaia..', NULL, NULL, '2020-07-14 11:52:12', NULL, NULL, NULL),
(901, 598, 129, 'ekhane dilei valo hoto', NULL, NULL, '2020-07-14 11:52:38', NULL, NULL, NULL),
(902, 2727, 111, 'vaia polar system othoba cartesian system jevabei durotto ber koruk na kno....dui khetrei ki soman asbe?\r\nnaki vinno man asbe?', NULL, NULL, '2020-07-14 14:01:27', NULL, NULL, NULL),
(903, 1679, 149, 'bhaia bivob er khetre shobgula jog korte hoi keno', NULL, NULL, '2020-07-14 22:00:23', NULL, '2020-07-14 22:00:23', NULL),
(904, 1687, 150, 'plz ,math golo akto slowly korben', NULL, NULL, '2020-07-14 23:10:56', NULL, '2020-07-14 23:10:56', NULL),
(905, 840, 217, 'Problem', NULL, NULL, '2020-07-15 04:11:32', NULL, NULL, NULL),
(906, 556, 50, 'wheres the combination class vaiyya?', NULL, NULL, '2020-07-15 10:39:40', NULL, NULL, NULL),
(907, 3056, 217, '🥰🥰🥰', NULL, NULL, '2020-07-15 12:00:41', NULL, '2020-07-15 12:00:41', NULL),
(908, 3056, 217, '🥰🥰🥰', NULL, NULL, '2020-07-15 12:00:44', NULL, '2020-07-15 12:00:44', NULL),
(909, 2830, 59, 'sir ai koitai ki math jotesto chapter 5 er jonno', NULL, NULL, '2020-07-15 15:14:27', NULL, '2020-07-15 15:14:27', NULL),
(910, 1390, 218, 'চিড়  ও পর্দার  মাঝে 2no উওল লেন্স দেয়ার দরকার  কী? না দিলে কী হতো details bolben bhaia', NULL, NULL, '2020-07-15 21:26:19', NULL, '2020-07-15 21:26:19', NULL),
(911, 1390, 218, NULL, 'storage/comments/1594812561.jpeg', NULL, '2020-07-15 21:29:21', NULL, '2020-07-15 21:29:21', NULL),
(912, 1390, 218, NULL, 'storage/comments/1594812564.jpeg', NULL, '2020-07-15 21:29:24', NULL, '2020-07-15 21:29:24', NULL),
(913, 1390, 218, NULL, 'storage/comments/1594812564.jpeg', NULL, '2020-07-15 21:29:24', NULL, '2020-07-15 21:29:24', NULL),
(914, 1390, 218, NULL, 'storage/comments/1594812567.jpeg', NULL, '2020-07-15 21:29:27', NULL, '2020-07-15 21:29:27', NULL),
(915, 2782, 213, 'সিস- ট্রান্স কত নম্বার ক্লাসে হয়ছে', NULL, NULL, '2020-07-15 22:23:19', NULL, '2020-07-15 22:23:19', NULL),
(916, 3074, 215, '1m = কত  amstrong vaya', NULL, NULL, '2020-07-16 01:19:04', NULL, '2020-07-16 01:19:04', NULL),
(917, 3074, 215, '1m = কত  amstrong vaya', NULL, NULL, '2020-07-16 01:19:08', NULL, '2020-07-16 01:19:08', NULL),
(918, 168, 221, 'Thank you via', NULL, NULL, '2020-07-16 01:37:47', NULL, NULL, NULL),
(919, 881, 221, 'tnx', NULL, NULL, '2020-07-16 02:05:15', NULL, '2020-07-16 02:05:15', NULL),
(920, 881, 221, 'tnx', NULL, NULL, '2020-07-16 02:05:15', NULL, '2020-07-16 02:05:15', NULL),
(921, 881, 221, 'sera', NULL, NULL, '2020-07-16 02:05:20', NULL, '2020-07-16 02:05:20', NULL),
(922, 881, 220, 'vai eigulu boi e passi na', NULL, NULL, '2020-07-16 16:25:49', NULL, '2020-07-16 16:25:49', NULL),
(923, 3260, 30, 'Quantum Numbers part koi vai 😐', NULL, NULL, '2020-07-16 17:41:40', NULL, '2020-07-16 17:41:40', NULL),
(924, 3260, 30, 'Quantum Numbers part koi vai 😐', NULL, NULL, '2020-07-16 17:41:41', NULL, '2020-07-16 17:41:41', NULL),
(925, 3260, 30, 'Quantum Numbers part koi vai 😐', NULL, NULL, '2020-07-16 17:41:41', NULL, '2020-07-16 17:41:41', NULL),
(926, 3260, 30, 'Quantum Numbers part koi vai 😐', NULL, NULL, '2020-07-16 17:41:43', NULL, '2020-07-16 17:41:43', NULL),
(927, 881, 215, '10p^10 (shahriar)', NULL, NULL, '2020-07-17 02:18:54', NULL, '2020-07-17 02:18:54', NULL),
(928, 881, 215, 'via mallas law e Acosthita kmne holo?', NULL, NULL, '2020-07-17 02:19:27', NULL, '2020-07-17 02:19:27', NULL),
(929, 1875, 82, 'Vaia age basics poray then math dhorle better hoitona?', NULL, NULL, '2020-07-17 03:10:37', NULL, NULL, NULL),
(930, 2180, 12, NULL, 'storage/comments/1594938480.jpeg', NULL, '2020-07-17 08:28:00', NULL, '2020-07-17 08:28:00', NULL),
(931, 2180, 12, NULL, 'storage/comments/1594938483.jpeg', NULL, '2020-07-17 08:28:03', NULL, '2020-07-17 08:28:03', NULL),
(932, 2092, 217, 'খ) নং অংক টা ভালো করে বুঝতে পারি নাই ভাইয়া', 'storage/comments/1594964734.jpeg', NULL, '2020-07-17 15:45:34', NULL, '2020-07-17 15:45:34', NULL),
(933, 2092, 217, 'খ) নং অংক টা ভালো করে বুঝতে পারি নাই ভাইয়া', 'storage/comments/1594964743.jpeg', NULL, '2020-07-17 15:45:43', NULL, '2020-07-17 15:45:43', NULL),
(934, 2092, 217, 'খ) নং অংক টা ভালো করে বুঝতে পারি নাই ভাইয়া', 'storage/comments/1594964747.jpeg', NULL, '2020-07-17 15:45:47', NULL, '2020-07-17 15:45:47', NULL),
(935, 2092, 217, 'খ) নং অংক টা ভালো করে বুঝতে পারি নাই ভাইয়া', 'storage/comments/1594964753.jpeg', NULL, '2020-07-17 15:45:53', NULL, '2020-07-17 15:45:53', NULL),
(936, 2092, 217, 'খ) নং অংক টা ভালো করে বুঝতে পারি নাই ভাইয়া', 'storage/comments/1594964753.jpeg', NULL, '2020-07-17 15:45:53', NULL, '2020-07-17 15:45:53', NULL),
(937, 2092, 217, 'খ) নং অংক টা ভালো করে বুঝতে পারি নাই ভাইয়া', 'storage/comments/1594964754.jpeg', NULL, '2020-07-17 15:45:54', NULL, '2020-07-17 15:45:54', NULL),
(938, 2801, 110, 'vaiya 10°c =283 k tai nha', NULL, NULL, '2020-07-18 01:00:19', NULL, '2020-07-18 01:00:19', NULL),
(939, 2801, 110, 'vaiya 10°c =283 k tai nha', NULL, NULL, '2020-07-18 01:00:20', NULL, '2020-07-18 01:00:20', NULL),
(940, 3323, 136, 'full HD te video dkhle gorib ra kivabe prbe... Plz download option n regulation changing option den', NULL, NULL, '2020-07-18 04:19:40', NULL, '2020-07-18 04:19:40', NULL),
(941, 3323, 136, 'full HD te video dkhle gorib ra kivabe prbe... Plz download option n regulation changing option den', NULL, NULL, '2020-07-18 04:19:40', NULL, '2020-07-18 04:19:40', NULL),
(942, 430, 213, 'bhaiya roots puls aa kom class ditasen keno?? sob tu roots ar YouTube aa diye ditasen', NULL, NULL, '2020-07-18 18:17:18', NULL, '2020-07-18 18:17:18', NULL);
INSERT INTO `comments` (`id`, `user_id`, `video_id`, `text`, `image`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(943, 430, 213, 'bhaiya roots puls aa kom class ditasen keno?? sob tu roots ar YouTube aa diye ditasen', NULL, NULL, '2020-07-18 18:17:19', NULL, '2020-07-18 18:17:19', NULL),
(944, 430, 213, 'bhaiya roots puls aa kom class ditasen keno?? sob tu roots ar YouTube aa diye ditasen', NULL, NULL, '2020-07-18 18:17:20', NULL, '2020-07-18 18:17:20', NULL),
(945, 430, 213, 'bhaiya roots puls aa kom class ditasen keno?? sob tu roots ar YouTube aa diye ditasen', NULL, NULL, '2020-07-18 18:17:21', NULL, '2020-07-18 18:17:21', NULL),
(946, 2026, 221, 'ভাইয়া ১৭মিনিট ২৪ সেকেন্ড এ পাই সিগমা পাই বললেন। কিন্তু এখানে তো পাই -পাই -পাই দেখা যায়। এখানে কি পাই থাকলে তারমধ্যে  থেকেই একটা সিগমা ধরে নিতে হবে?', NULL, NULL, '2020-07-20 01:08:16', NULL, '2020-07-20 01:08:16', NULL),
(947, 2026, 221, '২ জায়গায় ২ রকম কেন ভাইয়া?', 'storage/comments/1595172520.jpeg', NULL, '2020-07-20 01:28:40', NULL, '2020-07-20 01:28:40', NULL),
(948, 2026, 221, '২ জায়গায় ২ রকম কেন ভাইয়া?', 'storage/comments/1595172522.jpeg', NULL, '2020-07-20 01:28:42', NULL, '2020-07-20 01:28:42', NULL),
(949, 2026, 221, '২ জায়গায় ২ রকম কেন ভাইয়া?', 'storage/comments/1595172524.jpeg', NULL, '2020-07-20 01:28:44', NULL, '2020-07-20 01:28:44', NULL),
(950, 2026, 221, '২ জায়গায় ২ রকম কেন ভাইয়া?', 'storage/comments/1595172525.jpeg', NULL, '2020-07-20 01:28:45', NULL, '2020-07-20 01:28:45', NULL),
(951, 2026, 221, '২ জায়গায় ২ রকম কেন ভাইয়া?', 'storage/comments/1595172526.jpeg', NULL, '2020-07-20 01:28:46', NULL, '2020-07-20 01:28:46', NULL),
(952, 2026, 221, '২ জায়গায় ২ রকম কেন ভাইয়া?', 'storage/comments/1595172529.jpeg', NULL, '2020-07-20 01:28:49', NULL, '2020-07-20 01:28:49', NULL),
(953, 345, 221, 'vaiya ekhane pi sigma pi holo kivabe?', 'storage/comments/1595236168.jpeg', NULL, '2020-07-20 19:09:28', NULL, '2020-07-20 19:09:28', NULL),
(954, 345, 221, 'vaiya ekhane pi sigma pi holo kivabe?', 'storage/comments/1595236168.jpeg', NULL, '2020-07-20 19:09:28', NULL, '2020-07-20 19:09:28', NULL),
(955, 345, 221, 'vaiya ekhane pi sigma pi holo kivabe?', 'storage/comments/1595236170.jpeg', NULL, '2020-07-20 19:09:30', NULL, '2020-07-20 19:09:30', NULL),
(956, 2830, 95, 'vaya proti line to line er calculation details e alochona korle valo hoto', NULL, NULL, '2020-07-21 01:03:53', NULL, '2020-07-21 01:03:53', NULL),
(957, 2830, 95, 'vaya proti line to line er calculation details e alochona korle valo hoto', NULL, NULL, '2020-07-21 01:03:53', NULL, '2020-07-21 01:03:53', NULL),
(958, 2830, 95, 'vaya proti line to line er calculation details e alochona korle valo hoto', NULL, NULL, '2020-07-21 01:03:54', NULL, '2020-07-21 01:03:54', NULL),
(959, 881, 226, 'F=q (v vector x B vector) na hoie F=q (B vector x v vector ) hobe ki?', NULL, NULL, '2020-07-21 02:34:49', NULL, '2020-07-21 02:34:49', NULL),
(960, 881, 226, 'F=q (v vector x B vector) na hoie F=q (B vector x v vector ) hobe ki?', NULL, NULL, '2020-07-21 02:34:50', NULL, '2020-07-21 02:34:50', NULL),
(961, 881, 226, 'chombok ketro nie kichu bolen.', NULL, NULL, '2020-07-21 02:35:36', NULL, '2020-07-21 02:35:36', NULL),
(962, 2593, 150, 'amazing class 🥰', NULL, NULL, '2020-07-21 14:12:05', NULL, '2020-07-21 14:12:05', NULL),
(963, 2593, 150, 'amazing class 🥰', NULL, NULL, '2020-07-21 14:12:06', NULL, '2020-07-21 14:12:06', NULL),
(964, 1744, 222, 'last er math e vul ase', NULL, NULL, '2020-07-22 04:58:24', NULL, '2020-07-22 04:58:24', NULL),
(965, 1744, 222, 'last er math e vul ase', NULL, NULL, '2020-07-22 04:58:24', NULL, '2020-07-22 04:58:24', NULL),
(966, 2593, 150, '25:00,  \'ক \' নং ম্যাথটা ভুল হইছে।', NULL, NULL, '2020-07-23 02:51:23', NULL, '2020-07-23 02:51:23', NULL),
(967, 881, 213, 'sis somanor spotanko and density trans er teke beshi kno?', NULL, NULL, '2020-07-23 15:08:43', NULL, '2020-07-23 15:08:43', NULL),
(968, 881, 208, 'CH3-CH=C=CH-CH3 ER KETRE KMNE GI POSSIBLE?', NULL, NULL, '2020-07-23 15:25:20', NULL, '2020-07-23 15:25:20', NULL),
(969, 2830, 96, 'eitar pdf koi ....egula ki hoccha', NULL, NULL, '2020-07-23 18:58:58', NULL, '2020-07-23 18:58:58', NULL),
(970, 717, 211, 'ভাইয়া ভুল আছে নাকি? ইমেজ টা দেখুন তো প্লিজ', 'storage/comments/1595766559.jpeg', NULL, '2020-07-26 22:29:19', NULL, '2020-07-26 22:29:19', NULL),
(971, 717, 211, 'ভাইয়া ভুল আছে নাকি? ইমেজ টা দেখুন তো প্লিজ', 'storage/comments/1595766561.jpeg', NULL, '2020-07-26 22:29:21', NULL, '2020-07-26 22:29:21', NULL),
(972, 1066, 185, 'Thanks', NULL, NULL, '2020-07-27 00:36:49', NULL, '2020-07-27 00:36:49', NULL),
(973, 1066, 185, 'Thanks', NULL, NULL, '2020-07-27 00:36:50', NULL, '2020-07-27 00:36:50', NULL),
(974, 3538, 187, '১।জায়মান  কথাটা কি বোঝায়? ২।বিদ্যুৎক্ষরণ মানে কি?', NULL, NULL, '2020-07-27 21:56:30', NULL, NULL, NULL),
(975, 3538, 187, 'Vaia..ei reaction er lewis structure/ structural representation bujhi nai..', NULL, NULL, '2020-07-28 18:57:22', NULL, NULL, NULL),
(976, 3538, 187, 'Carbon er hybridization er structural form gulo kivabe holo?', NULL, NULL, '2020-07-28 18:58:59', NULL, NULL, NULL),
(977, 1759, 221, 'Vaia  resonance কে কি সমানুতার সাথে তুলনা করা যায়?', NULL, NULL, '2020-07-29 04:43:39', NULL, '2020-07-29 04:43:39', NULL),
(978, 706, 172, 'riddha bhaiya মিউ 1 তো যে মাধ্যমে বস্তু তার প্রতিসরণাঙ্ক আর মিউ 2 হচ্ছে যে মাধ্যমে চোখ ।', 'storage/comments/1596168537.jpeg', NULL, '2020-07-31 14:08:57', NULL, '2020-07-31 14:08:57', NULL),
(979, 706, 172, 'riddha bhaiya মিউ 1 তো যে মাধ্যমে বস্তু তার প্রতিসরণাঙ্ক আর মিউ 2 হচ্ছে যে মাধ্যমে চোখ ।', 'storage/comments/1596168540.jpeg', NULL, '2020-07-31 14:09:00', NULL, '2020-07-31 14:09:00', NULL),
(980, 3538, 220, '0 DEGREE HOWA KIVABE POSSIBLE EKHANE?CZ CARBON ER SATHE TOH ONNO CARBON JUKTO ASE', NULL, NULL, '2020-07-31 19:11:37', NULL, NULL, NULL),
(981, 2727, 109, 'please vaia First paper er sob chaptergula dile valo hoy...🙏🙏', NULL, NULL, '2020-08-02 01:32:54', NULL, '2020-08-02 01:32:54', NULL),
(982, 2727, 109, 'please vaia First paper er sob chaptergula dile valo hoy...🙏🙏', NULL, NULL, '2020-08-02 01:32:55', NULL, '2020-08-02 01:32:55', NULL),
(983, 3247, 2, 'vaiya test paper solving class koi ??', NULL, NULL, '2020-08-02 11:45:32', NULL, '2020-08-02 11:45:32', NULL),
(984, 3247, 17, 'vaiya test paper solving class koi pabo ??', NULL, NULL, '2020-08-02 11:48:56', NULL, '2020-08-02 11:48:56', NULL),
(985, 3247, 17, 'vaiya test paper solving class koi pabo ??', NULL, NULL, '2020-08-02 11:48:57', NULL, '2020-08-02 11:48:57', NULL),
(986, 3247, 17, 'vaiya test paper solving class koi pabo ??', NULL, NULL, '2020-08-02 11:48:57', NULL, '2020-08-02 11:48:57', NULL),
(987, 3247, 17, 'vaiya test paper solving class koi pabo ??', NULL, NULL, '2020-08-02 11:48:57', NULL, '2020-08-02 11:48:57', NULL),
(988, 3247, 20, 'test paper solving class koi pabo??', NULL, NULL, '2020-08-02 11:49:59', NULL, '2020-08-02 11:49:59', NULL),
(989, 3247, 20, 'test paper solving class koi pabo??', NULL, NULL, '2020-08-02 11:50:00', NULL, '2020-08-02 11:50:00', NULL),
(990, 835, 219, 'perfect class👌👌', NULL, NULL, '2020-08-02 21:34:48', NULL, '2020-08-02 21:34:48', NULL),
(991, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:25', NULL, '2020-08-03 01:23:25', NULL),
(992, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:28', NULL, '2020-08-03 01:23:28', NULL),
(993, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:28', NULL, '2020-08-03 01:23:28', NULL),
(994, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:30', NULL, '2020-08-03 01:23:30', NULL),
(995, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:30', NULL, '2020-08-03 01:23:30', NULL),
(996, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:30', NULL, '2020-08-03 01:23:30', NULL),
(997, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:30', NULL, '2020-08-03 01:23:30', NULL),
(998, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:30', NULL, '2020-08-03 01:23:30', NULL),
(999, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:30', NULL, '2020-08-03 01:23:30', NULL),
(1000, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:30', NULL, '2020-08-03 01:23:30', NULL),
(1001, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:31', NULL, '2020-08-03 01:23:31', NULL),
(1002, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:31', NULL, '2020-08-03 01:23:31', NULL),
(1003, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:31', NULL, '2020-08-03 01:23:31', NULL),
(1004, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:32', NULL, '2020-08-03 01:23:32', NULL),
(1005, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:32', NULL, '2020-08-03 01:23:32', NULL),
(1006, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:32', NULL, '2020-08-03 01:23:32', NULL),
(1007, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:32', NULL, '2020-08-03 01:23:32', NULL),
(1008, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:33', NULL, '2020-08-03 01:23:33', NULL),
(1009, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:33', NULL, '2020-08-03 01:23:33', NULL),
(1010, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:33', NULL, '2020-08-03 01:23:33', NULL),
(1011, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:33', NULL, '2020-08-03 01:23:33', NULL),
(1012, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:35', NULL, '2020-08-03 01:23:35', NULL),
(1013, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:35', NULL, '2020-08-03 01:23:35', NULL),
(1014, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:35', NULL, '2020-08-03 01:23:35', NULL),
(1015, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:36', NULL, '2020-08-03 01:23:36', NULL),
(1016, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:36', NULL, '2020-08-03 01:23:36', NULL),
(1017, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:36', NULL, '2020-08-03 01:23:36', NULL),
(1018, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:36', NULL, '2020-08-03 01:23:36', NULL),
(1019, 3218, 17, 'vi akta class o asce na kano???', NULL, NULL, '2020-08-03 01:23:36', NULL, '2020-08-03 01:23:36', NULL),
(1020, 3218, 2, 'dekhajasce na class vaiya', NULL, NULL, '2020-08-03 01:26:16', NULL, '2020-08-03 01:26:16', NULL),
(1021, 3218, 51, 'via video e salu hosce na akta o', NULL, NULL, '2020-08-03 01:53:14', NULL, '2020-08-03 01:53:14', NULL),
(1022, 3218, 51, 'via video e salu hosce na akta o', NULL, NULL, '2020-08-03 01:53:15', NULL, '2020-08-03 01:53:15', NULL),
(1023, 3218, 51, 'via video e salu hosce na akta o', NULL, NULL, '2020-08-03 01:53:17', NULL, '2020-08-03 01:53:17', NULL),
(1024, 3218, 51, 'via video e salu hosce na akta o', NULL, NULL, '2020-08-03 01:53:20', NULL, '2020-08-03 01:53:20', NULL),
(1025, 3218, 51, NULL, 'storage/comments/1596383656.jpeg', NULL, '2020-08-03 01:54:16', NULL, '2020-08-03 01:54:16', NULL),
(1026, 3218, 51, NULL, 'storage/comments/1596383660.jpeg', NULL, '2020-08-03 01:54:20', NULL, '2020-08-03 01:54:20', NULL),
(1027, 3218, 51, NULL, 'storage/comments/1596383664.jpeg', NULL, '2020-08-03 01:54:24', NULL, '2020-08-03 01:54:24', NULL),
(1028, 3218, 51, NULL, 'storage/comments/1596383667.jpeg', NULL, '2020-08-03 01:54:27', NULL, '2020-08-03 01:54:27', NULL),
(1029, 3218, 51, NULL, 'storage/comments/1596383671.jpeg', NULL, '2020-08-03 01:54:31', NULL, '2020-08-03 01:54:31', NULL),
(1030, 3218, 51, NULL, 'storage/comments/1596383675.jpeg', NULL, '2020-08-03 01:54:35', NULL, '2020-08-03 01:54:35', NULL),
(1031, 3218, 51, NULL, 'storage/comments/1596383679.jpeg', NULL, '2020-08-03 01:54:39', NULL, '2020-08-03 01:54:39', NULL),
(1032, 1065, 166, 'hi', NULL, NULL, '2020-08-04 20:45:40', NULL, '2020-08-04 20:45:40', NULL),
(1033, 3563, 228, 'vai apnara sathe kothin topic gula explain korien.', NULL, NULL, '2020-08-08 17:12:19', NULL, '2020-08-08 17:12:19', NULL),
(1034, 3563, 228, 'vai apnara sathe kothin topic gula explain korien.', NULL, NULL, '2020-08-08 17:12:20', NULL, '2020-08-08 17:12:20', NULL),
(1035, 3240, 228, 'vaiya,  Du questions gula beshi kore solve korien.', NULL, NULL, '2020-08-09 02:46:59', NULL, '2020-08-09 02:46:59', NULL),
(1036, 3240, 228, 'vaiya,  Du questions gula beshi kore solve korien.', NULL, NULL, '2020-08-09 02:47:00', NULL, '2020-08-09 02:47:00', NULL),
(1037, 3240, 228, 'vaiya,  Du questions gula beshi kore solve korien.', NULL, NULL, '2020-08-09 02:47:00', NULL, '2020-08-09 02:47:00', NULL),
(1038, 3174, 108, 'How  can I get the  previous  Lecturers', NULL, NULL, '2020-08-09 16:33:21', NULL, '2020-08-09 16:33:21', NULL),
(1039, 706, 230, 'ai calculation ta to thik hoyni bhaiya', 'storage/comments/1597061147.jpeg', NULL, '2020-08-10 22:05:47', NULL, '2020-08-10 22:05:47', NULL),
(1040, 881, 227, 'area vector er direction somporke plz details bolian?(doubt clearing cls)', NULL, NULL, '2020-08-10 22:12:09', NULL, '2020-08-10 22:12:09', NULL),
(1041, 881, 229, NULL, 'storage/comments/1597071476.jpeg', NULL, '2020-08-11 00:57:56', NULL, '2020-08-11 00:57:56', NULL),
(1042, 881, 229, NULL, 'storage/comments/1597071477.jpeg', NULL, '2020-08-11 00:57:57', NULL, '2020-08-11 00:57:57', NULL),
(1043, 881, 229, NULL, 'storage/comments/1597071477.jpeg', NULL, '2020-08-11 00:57:57', NULL, '2020-08-11 00:57:57', NULL),
(1044, 881, 229, NULL, 'storage/comments/1597071480.jpeg', NULL, '2020-08-11 00:58:00', NULL, '2020-08-11 00:58:00', NULL),
(1045, 881, 229, NULL, 'storage/comments/1597071481.jpeg', NULL, '2020-08-11 00:58:01', NULL, '2020-08-11 00:58:01', NULL),
(1046, 881, 229, NULL, 'storage/comments/1597071482.jpeg', NULL, '2020-08-11 00:58:02', NULL, '2020-08-11 00:58:02', NULL),
(1047, 881, 229, 'j', 'storage/comments/1597071482.jpeg', NULL, '2020-08-11 00:58:02', NULL, '2020-08-11 00:58:02', NULL),
(1048, 881, 229, 'j', 'storage/comments/1597071482.jpeg', NULL, '2020-08-11 00:58:02', NULL, '2020-08-11 00:58:02', NULL),
(1049, 881, 229, 'j', 'storage/comments/1597071483.jpeg', NULL, '2020-08-11 00:58:03', NULL, '2020-08-11 00:58:03', NULL),
(1050, 881, 229, 'j', 'storage/comments/1597071483.jpeg', NULL, '2020-08-11 00:58:03', NULL, '2020-08-11 00:58:03', NULL),
(1051, 881, 229, 'j', 'storage/comments/1597071483.jpeg', NULL, '2020-08-11 00:58:03', NULL, '2020-08-11 00:58:03', NULL),
(1052, 881, 229, 'j', 'storage/comments/1597071484.jpeg', NULL, '2020-08-11 00:58:04', NULL, '2020-08-11 00:58:04', NULL),
(1053, 881, 229, 'j', 'storage/comments/1597071484.jpeg', NULL, '2020-08-11 00:58:04', NULL, '2020-08-11 00:58:04', NULL),
(1054, 881, 229, 'j', 'storage/comments/1597071485.jpeg', NULL, '2020-08-11 00:58:05', NULL, '2020-08-11 00:58:05', NULL),
(1055, 881, 229, 'j', 'storage/comments/1597071486.jpeg', NULL, '2020-08-11 00:58:06', NULL, '2020-08-11 00:58:06', NULL),
(1056, 881, 229, 'j', 'storage/comments/1597071486.jpeg', NULL, '2020-08-11 00:58:06', NULL, '2020-08-11 00:58:06', NULL),
(1057, 881, 229, 'j', 'storage/comments/1597071488.jpeg', NULL, '2020-08-11 00:58:08', NULL, '2020-08-11 00:58:08', NULL),
(1058, 881, 229, 'j', 'storage/comments/1597071488.jpeg', NULL, '2020-08-11 00:58:08', NULL, '2020-08-11 00:58:08', NULL),
(1059, 881, 229, 'j', 'storage/comments/1597071488.jpeg', NULL, '2020-08-11 00:58:08', NULL, '2020-08-11 00:58:08', NULL),
(1060, 881, 229, 'j', 'storage/comments/1597071489.jpeg', NULL, '2020-08-11 00:58:09', NULL, '2020-08-11 00:58:09', NULL),
(1061, 881, 229, 'j', 'storage/comments/1597071489.jpeg', NULL, '2020-08-11 00:58:09', NULL, '2020-08-11 00:58:09', NULL),
(1062, 881, 229, 'j', 'storage/comments/1597071489.jpeg', NULL, '2020-08-11 00:58:09', NULL, '2020-08-11 00:58:09', NULL),
(1063, 881, 229, 'j', 'storage/comments/1597071490.jpeg', NULL, '2020-08-11 00:58:10', NULL, '2020-08-11 00:58:10', NULL),
(1064, 881, 229, 'j', 'storage/comments/1597071490.jpeg', NULL, '2020-08-11 00:58:10', NULL, '2020-08-11 00:58:10', NULL),
(1065, 881, 229, 'j', 'storage/comments/1597071490.jpeg', NULL, '2020-08-11 00:58:10', NULL, '2020-08-11 00:58:10', NULL),
(1066, 881, 229, 'j', 'storage/comments/1597071490.jpeg', NULL, '2020-08-11 00:58:10', NULL, '2020-08-11 00:58:10', NULL),
(1067, 881, 229, 'j', 'storage/comments/1597071493.jpeg', NULL, '2020-08-11 00:58:13', NULL, '2020-08-11 00:58:13', NULL),
(1068, 881, 229, 'j', 'storage/comments/1597071495.jpeg', NULL, '2020-08-11 00:58:15', NULL, '2020-08-11 00:58:15', NULL),
(1069, 881, 229, 'j', 'storage/comments/1597071495.jpeg', NULL, '2020-08-11 00:58:15', NULL, '2020-08-11 00:58:15', NULL),
(1070, 881, 229, 'j', 'storage/comments/1597071496.jpeg', NULL, '2020-08-11 00:58:16', NULL, '2020-08-11 00:58:16', NULL),
(1071, 3250, 228, 'vaiya,sust questions  gulo slove krben plz,', NULL, NULL, '2020-08-11 00:59:38', NULL, '2020-08-11 00:59:38', NULL),
(1072, 3250, 228, 'vaiya,sust questions  gulo slove krben plz,', NULL, NULL, '2020-08-11 00:59:38', NULL, '2020-08-11 00:59:38', NULL),
(1073, 3250, 228, 'vaiya,sust questions  gulo slove krben plz,', NULL, NULL, '2020-08-11 00:59:38', NULL, '2020-08-11 00:59:38', NULL),
(1074, 3250, 228, 'vaiya,sust questions  gulo slove krben plz,', NULL, NULL, '2020-08-11 00:59:42', NULL, '2020-08-11 00:59:42', NULL),
(1075, 3250, 228, 'vaiya,sust questions  gulo slove krben plz,', NULL, NULL, '2020-08-11 00:59:42', NULL, '2020-08-11 00:59:42', NULL),
(1076, 3250, 228, 'vaiya,sust questions  gulo slove krben plz,', NULL, NULL, '2020-08-11 00:59:42', NULL, '2020-08-11 00:59:42', NULL),
(1077, 1065, 150, 'hi', NULL, NULL, '2020-08-12 02:10:05', NULL, '2020-08-12 02:10:05', NULL),
(1078, 1065, 150, 'hi', NULL, NULL, '2020-08-12 02:10:06', NULL, '2020-08-12 02:10:06', NULL),
(1079, 1065, 161, 'hi', NULL, NULL, '2020-08-12 02:12:20', NULL, '2020-08-12 02:12:20', NULL),
(1080, 1065, 166, 'hi', NULL, NULL, '2020-08-12 02:14:48', NULL, '2020-08-12 02:14:48', NULL),
(1081, 857, 210, 'f(x)=sin^2 ax /x^2 when x not equal 0  and  f(x)=1 when x=0  proman koro j a=+_1 na hola x=0 point a f(X) function discontinity hobe pls sir math ta kora diben', NULL, NULL, '2020-08-12 13:40:42', NULL, NULL, NULL),
(1082, 857, 222, 'vul na  boi a  1+x^2 k root a niya sa', NULL, NULL, '2020-08-12 16:57:26', NULL, NULL, NULL),
(1083, 3250, 228, 'nice', NULL, NULL, '2020-08-13 02:59:46', NULL, '2020-08-13 02:59:46', NULL),
(1084, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295039.jpeg', NULL, '2020-08-13 15:03:59', NULL, '2020-08-13 15:03:59', NULL),
(1085, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295043.jpeg', NULL, '2020-08-13 15:04:03', NULL, '2020-08-13 15:04:03', NULL),
(1086, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295044.jpeg', NULL, '2020-08-13 15:04:04', NULL, '2020-08-13 15:04:04', NULL),
(1087, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295048.jpeg', NULL, '2020-08-13 15:04:08', NULL, '2020-08-13 15:04:08', NULL),
(1088, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295049.jpeg', NULL, '2020-08-13 15:04:09', NULL, '2020-08-13 15:04:09', NULL),
(1089, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295052.jpeg', NULL, '2020-08-13 15:04:12', NULL, '2020-08-13 15:04:12', NULL),
(1090, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295054.jpeg', NULL, '2020-08-13 15:04:14', NULL, '2020-08-13 15:04:14', NULL),
(1091, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295056.jpeg', NULL, '2020-08-13 15:04:16', NULL, '2020-08-13 15:04:16', NULL),
(1092, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295056.jpeg', NULL, '2020-08-13 15:04:16', NULL, '2020-08-13 15:04:16', NULL),
(1093, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295057.jpeg', NULL, '2020-08-13 15:04:17', NULL, '2020-08-13 15:04:17', NULL),
(1094, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295059.jpeg', NULL, '2020-08-13 15:04:19', NULL, '2020-08-13 15:04:19', NULL),
(1095, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295060.jpeg', NULL, '2020-08-13 15:04:20', NULL, '2020-08-13 15:04:20', NULL),
(1096, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295064.jpeg', NULL, '2020-08-13 15:04:24', NULL, '2020-08-13 15:04:24', NULL),
(1097, 821, 226, 'a no ar answer vul ase', 'storage/comments/1597295067.jpeg', NULL, '2020-08-13 15:04:27', NULL, '2020-08-13 15:04:27', NULL),
(1098, 2009, 217, 'ভাইয়া লাস্টের ম্যাথের অ্যান্সারটা মিলে না।', NULL, NULL, '2020-08-13 20:40:55', NULL, '2020-08-13 20:40:55', NULL),
(1099, 857, 212, 'done vaiya', NULL, NULL, '2020-08-13 21:01:19', NULL, NULL, NULL),
(1100, 821, 226, 'eita bujhi nai', 'storage/comments/1597333265.jpeg', NULL, '2020-08-14 01:41:05', NULL, '2020-08-14 01:41:05', NULL),
(1101, 821, 226, 'eita bujhi nai', 'storage/comments/1597333268.jpeg', NULL, '2020-08-14 01:41:08', NULL, '2020-08-14 01:41:08', NULL),
(1102, 3683, 197, 'vaiya ester er nam koronti....arktu clearly bujale bhalo hy?', NULL, NULL, '2020-08-14 14:29:32', NULL, '2020-08-14 14:29:32', NULL),
(1103, 823, 230, 'ভাইয়া এইখানে xyz এর মান বের হবে কিভাবে, এখানে A` আর সাথের ম্যাট্রিক্স গুন দেওয়া যায় না,ডাইমেনশন ঠিক না,', 'storage/comments/1597436714.jpeg', NULL, '2020-08-15 06:25:14', NULL, '2020-08-15 06:25:14', NULL),
(1104, 823, 230, 'ভাইয়া এইখানে xyz এর মান বের হবে কিভাবে, এখানে A` আর সাথের ম্যাট্রিক্স গুন দেওয়া যায় না,ডাইমেনশন ঠিক না,', 'storage/comments/1597436717.jpeg', NULL, '2020-08-15 06:25:17', NULL, '2020-08-15 06:25:17', NULL),
(1105, 823, 230, 'ভাইয়া এইখানে xyz এর মান বের হবে কিভাবে, এখানে A` আর সাথের ম্যাট্রিক্স গুন দেওয়া যায় না,ডাইমেনশন ঠিক না,', 'storage/comments/1597436717.jpeg', NULL, '2020-08-15 06:25:17', NULL, '2020-08-15 06:25:17', NULL),
(1106, 823, 230, 'ভাইয়া এইখানে xyz এর মান বের হবে কিভাবে, এখানে A` আর সাথের ম্যাট্রিক্স গুন দেওয়া যায় না,ডাইমেনশন ঠিক না,', 'storage/comments/1597436718.jpeg', NULL, '2020-08-15 06:25:18', NULL, '2020-08-15 06:25:18', NULL),
(1107, 881, 227, 'vaia kumilla board \'2019 er (d)  math ta', NULL, NULL, '2020-08-15 14:18:26', NULL, '2020-08-15 14:18:26', NULL),
(1108, 3793, 195, '😃', NULL, NULL, '2020-08-15 18:55:43', NULL, '2020-08-15 18:55:43', NULL),
(1109, 3793, 195, '😃', NULL, NULL, '2020-08-15 18:55:45', NULL, '2020-08-15 18:55:45', NULL),
(1110, 1219, 33, 'vai ayon sonakto koron er topic ta deoya nai kn?', NULL, NULL, '2020-08-15 21:26:41', NULL, '2020-08-15 21:26:41', NULL),
(1111, 1219, 30, 'ayon sonakto koron part nai kn vai?', NULL, NULL, '2020-08-15 21:27:37', NULL, '2020-08-15 21:27:37', NULL),
(1112, 3587, 90, 'ভাইয়া পরিক্ষার  রুটিন তো পাই নাই। আজকে পরিক্ষা  নিলেন। কোন প্রিপারেশান ছিল না তাই পরিক্ষা দিতে পারি নাই।তাই দয়া করে রুটিন টা একটু দিয়েন।।', NULL, NULL, '2020-08-16 01:27:06', NULL, '2020-08-16 01:27:06', NULL),
(1113, 3587, 90, 'ভাইয়া পরিক্ষার  রুটিন তো পাই নাই। আজকে পরিক্ষা  নিলেন। কোন প্রিপারেশান ছিল না তাই পরিক্ষা দিতে পারি নাই।তাই দয়া করে রুটিন টা একটু দিয়েন।।', NULL, NULL, '2020-08-16 01:27:07', NULL, '2020-08-16 01:27:07', NULL),
(1114, 3587, 90, 'ভাইয়া পরিক্ষার  রুটিন তো পাই নাই। আজকে পরিক্ষা  নিলেন। কোন প্রিপারেশান ছিল না তাই পরিক্ষা দিতে পারি নাই।তাই দয়া করে রুটিন টা একটু দিয়েন।।', NULL, NULL, '2020-08-16 01:27:07', NULL, '2020-08-16 01:27:07', NULL),
(1115, 3587, 90, 'ভাইয়া পরিক্ষার  রুটিন তো পাই নাই। আজকে পরিক্ষা  নিলেন। কোন প্রিপারেশান ছিল না তাই পরিক্ষা দিতে পারি নাই।তাই দয়া করে রুটিন টা একটু দিয়েন।।', NULL, NULL, '2020-08-16 01:27:09', NULL, '2020-08-16 01:27:09', NULL),
(1116, 1078, 231, 'vhaia class gula atto deri te asteche ken', NULL, NULL, '2020-08-16 02:07:29', NULL, '2020-08-16 02:07:29', NULL),
(1117, 1078, 231, '?????', NULL, NULL, '2020-08-16 02:07:36', NULL, '2020-08-16 02:07:36', NULL),
(1118, 654, 232, 'download batun den class korta parci nh', NULL, NULL, '2020-08-16 02:35:19', NULL, '2020-08-16 02:35:19', NULL),
(1119, 654, 232, 'download batun den class korta parci nh', NULL, NULL, '2020-08-16 02:35:20', NULL, '2020-08-16 02:35:20', NULL),
(1120, 654, 232, 'download batun den class korta parci nh', NULL, NULL, '2020-08-16 02:35:21', NULL, '2020-08-16 02:35:21', NULL),
(1121, 654, 232, 'download batun den class korta parci nh', NULL, NULL, '2020-08-16 02:35:24', NULL, '2020-08-16 02:35:24', NULL),
(1122, 966, 232, 'Hmm vaiya downlod option den', NULL, NULL, '2020-08-16 04:03:39', NULL, '2020-08-16 04:03:39', NULL),
(1123, 966, 232, 'Hmm vaiya downlod option den', NULL, NULL, '2020-08-16 04:03:39', NULL, '2020-08-16 04:03:39', NULL),
(1124, 966, 232, 'Hmm vaiya downlod option den', NULL, NULL, '2020-08-16 04:03:40', NULL, '2020-08-16 04:03:40', NULL),
(1125, 339, 231, 'vi..j koita srijonsil korasen ...posno number dile upokar hoto...❤️❤️', NULL, NULL, '2020-08-16 04:47:21', NULL, '2020-08-16 04:47:21', NULL),
(1126, 937, 232, 'vaia laptop e live kivabe korbo', NULL, NULL, '2020-08-16 05:27:51', NULL, NULL, NULL),
(1127, 314, 232, 'tnx baiya..join hobar por mathar upor diye jaccilo sob ekon clear', NULL, NULL, '2020-08-16 07:22:02', NULL, '2020-08-16 07:22:02', NULL),
(1128, 871, 188, '1st math a A=105\nB=15 ashe na??', NULL, NULL, '2020-08-16 17:01:06', NULL, '2020-08-16 17:01:06', NULL),
(1129, 871, 188, '1st math a A=105\nB=15 ashe na??', NULL, NULL, '2020-08-16 17:01:07', NULL, '2020-08-16 17:01:07', NULL),
(1130, 1923, 177, 'vaiya class ta kora jacchana.ekto pore black hoi jai', NULL, NULL, '2020-08-16 19:02:53', NULL, '2020-08-16 19:02:53', NULL),
(1131, 1923, 177, 'vaiya class ta kora jacchana.ekto pore black hoi jai', NULL, NULL, '2020-08-16 19:02:54', NULL, '2020-08-16 19:02:54', NULL),
(1132, 3730, 187, 'hii', NULL, NULL, '2020-08-16 21:22:37', NULL, '2020-08-16 21:22:37', NULL),
(1133, 3730, 187, 'hii', NULL, NULL, '2020-08-16 21:22:38', NULL, '2020-08-16 21:22:38', NULL),
(1134, 1336, 232, 'download option cai vaiya', NULL, NULL, '2020-08-16 22:45:28', NULL, '2020-08-16 22:45:28', NULL),
(1135, 1561, 232, 'sound আস্তে শোনা যায়', NULL, NULL, '2020-08-16 23:22:39', NULL, '2020-08-16 23:22:39', NULL),
(1136, 2090, 231, 'thanks', NULL, NULL, '2020-08-16 23:49:48', NULL, '2020-08-16 23:49:48', NULL),
(1137, 2090, 231, 'thanks', NULL, NULL, '2020-08-16 23:49:51', NULL, '2020-08-16 23:49:51', NULL),
(1138, 2782, 232, 'download option den..', NULL, NULL, '2020-08-17 00:13:15', NULL, '2020-08-17 00:13:15', NULL),
(1139, 3730, 232, 'down option dan', NULL, NULL, '2020-08-17 02:52:08', NULL, '2020-08-17 02:52:08', NULL),
(1140, 3730, 232, 'down option dan', NULL, NULL, '2020-08-17 02:52:08', NULL, '2020-08-17 02:52:08', NULL),
(1141, 857, 206, 'dijogi functional group ta buji nai pls explain', NULL, NULL, '2020-08-17 03:49:37', NULL, NULL, NULL),
(1142, 857, 206, 'ester kivabe dijogi hoi ?', NULL, NULL, '2020-08-17 03:54:55', NULL, NULL, NULL),
(1143, 857, 206, 'ester kivabe dijogi hoi ?', NULL, NULL, '2020-08-17 03:54:56', NULL, NULL, NULL),
(1144, 3801, 231, 'Bhaiya physics er baki chaptar gular baki oddhai er srijonsil number gula bole den', NULL, NULL, '2020-08-17 07:18:20', NULL, '2020-08-17 07:18:20', NULL),
(1145, 3801, 231, 'Physics er  sob chapter er sob objective  gula taratari sesh koriye den bhai', NULL, NULL, '2020-08-17 07:20:00', NULL, '2020-08-17 07:20:00', NULL),
(1146, 3427, 232, 'riddha sir how can I find the point of intersection of two  straight  lines  using  calculator?', NULL, NULL, '2020-08-17 18:14:10', NULL, '2020-08-17 18:14:10', NULL),
(1147, 3427, 232, 'please help', NULL, NULL, '2020-08-17 18:14:49', NULL, '2020-08-17 18:14:49', NULL),
(1148, 430, 232, 'bhaiya plz,download option den', NULL, NULL, '2020-08-17 18:35:27', NULL, '2020-08-17 18:35:27', NULL),
(1149, 430, 232, 'bhaiya plz,download option den', NULL, NULL, '2020-08-17 18:35:28', NULL, '2020-08-17 18:35:28', NULL),
(1150, 430, 232, 'bhaiya plz,download option den', NULL, NULL, '2020-08-17 18:35:29', NULL, '2020-08-17 18:35:29', NULL),
(1151, 857, 236, 'ami ai unit er 2 ta cls er konoter kono sound sunte pai na pls sir help .akon ki korbo.pls sir', NULL, NULL, '2020-08-18 02:20:51', NULL, NULL, NULL),
(1152, 823, 234, 'ভাইয়া, ২ নং ম্যাথে টাতে লব্দির সূএের পরিবর্তে উপাংশের সূএ কি এই রকন সব জায়গায় প্রযোজ্য হবে,', NULL, NULL, '2020-08-18 02:21:06', NULL, '2020-08-18 02:21:06', NULL),
(1153, 823, 234, 'ভাইয়া, ২ নং ম্যাথে টাতে লব্দির সূএের পরিবর্তে উপাংশের সূএ কি এই রকন সব জায়গায় প্রযোজ্য হবে,', NULL, NULL, '2020-08-18 02:21:08', NULL, '2020-08-18 02:21:08', NULL),
(1154, 823, 234, 'ভাই ২৫.৪৫ এ তড়িৎ দি মেরুর ম্যাথ টা বুঝি নাই,', NULL, NULL, '2020-08-18 02:34:05', NULL, '2020-08-18 02:34:05', NULL),
(1155, 3563, 234, 'same problen25:45', NULL, NULL, '2020-08-18 03:37:26', NULL, '2020-08-18 03:37:26', NULL),
(1156, 3563, 234, 'same problen25:45', NULL, NULL, '2020-08-18 03:37:27', NULL, '2020-08-18 03:37:27', NULL),
(1157, 1686, 232, 'vai download option duye ki hobe.', NULL, NULL, '2020-08-18 04:28:13', NULL, '2020-08-18 04:28:13', NULL),
(1158, 314, 236, 'baiya ag thekei math solve kore then bujiye dile onek math kora jabe plus bujthe subuda hobe... ekon bujci baloi.. tobe math age solve kore anle balo hobe💞💞', NULL, NULL, '2020-08-18 04:40:26', NULL, '2020-08-18 04:40:26', NULL),
(1159, 1488, 229, 'nice.', NULL, NULL, '2020-08-18 05:17:31', NULL, '2020-08-18 05:17:31', NULL),
(1160, 1488, 236, 'vaiya amar app e to agar class ta ase nai plz help me.', NULL, NULL, '2020-08-18 06:33:57', NULL, '2020-08-18 06:33:57', NULL),
(1161, 1342, 236, 'vaiya mcq tricks gula sikaien.....', NULL, NULL, '2020-08-18 07:02:50', NULL, '2020-08-18 07:02:50', NULL),
(1162, 3250, 139, 'সৃজনশীল  দুটোর গ নম্বার উওর করতে পারি  নাই', NULL, NULL, '2020-08-18 12:26:28', NULL, '2020-08-18 12:26:28', NULL),
(1163, 3250, 139, 'সৃজনশীল  দুটোর গ নম্বার উওর করতে পারি  নাই', NULL, NULL, '2020-08-18 12:26:28', NULL, '2020-08-18 12:26:28', NULL),
(1164, 3250, 139, 'সৃজনশীল  দুটোর গ নম্বার উওর করতে পারি  নাই', NULL, NULL, '2020-08-18 12:26:28', NULL, '2020-08-18 12:26:28', NULL),
(1165, 3250, 139, 'সৃজনশীল  দুটোর গ নম্বার উওর করতে পারি  নাই', NULL, NULL, '2020-08-18 12:26:28', NULL, '2020-08-18 12:26:28', NULL),
(1166, 3250, 139, 'সৃজনশীল  দুটোর গ নম্বার উওর করতে পারি  নাই', NULL, NULL, '2020-08-18 12:26:28', NULL, '2020-08-18 12:26:28', NULL),
(1167, 3730, 232, 'baiaa...  dow option dan', NULL, NULL, '2020-08-18 18:57:37', NULL, '2020-08-18 18:57:37', NULL),
(1168, 314, 235, 'baiya amar doubt holu baiya biye korthe jain nai kn 😂😂😂😅😇', NULL, NULL, '2020-08-18 23:47:09', NULL, NULL, NULL),
(1169, 359, 237, 'class dekhte prsi na kno', NULL, NULL, '2020-08-19 02:24:46', NULL, '2020-08-19 02:24:46', NULL),
(1170, 359, 237, 'class dekhte prsi na kno', NULL, NULL, '2020-08-19 02:24:46', NULL, '2020-08-19 02:24:46', NULL),
(1171, 3240, 234, 'vaiya 36:13 problem ta bujte pari ni', NULL, NULL, '2020-08-20 17:51:57', NULL, '2020-08-20 17:51:57', NULL),
(1172, 835, 213, 'ekhane to cis a akorshon shokti beshi howar kotha jehetu same group Pasha pashi ache. tahole etar অভ্যন্তরীন শক্তি beshi hoy kivabe. beparta clear korle valo Hoy bhaiya', 'storage/comments/1597937699.jpeg', NULL, '2020-08-21 01:34:59', NULL, '2020-08-21 01:34:59', NULL),
(1173, 835, 213, 'ekhane to cis a akorshon shokti beshi howar kotha jehetu same group Pasha pashi ache. tahole etar অভ্যন্তরীন শক্তি beshi hoy kivabe. beparta clear korle valo Hoy bhaiya', 'storage/comments/1597937706.jpeg', NULL, '2020-08-21 01:35:06', NULL, '2020-08-21 01:35:06', NULL),
(1174, 835, 213, 'ekhane to cis a akorshon shokti beshi howar kotha jehetu same group Pasha pashi ache. tahole etar অভ্যন্তরীন শক্তি beshi hoy kivabe. beparta clear korle valo Hoy bhaiya', 'storage/comments/1597937709.jpeg', NULL, '2020-08-21 01:35:09', NULL, '2020-08-21 01:35:09', NULL),
(1175, 323, 235, 'Ager via koi gelo', NULL, NULL, '2020-08-21 03:34:15', NULL, NULL, NULL),
(1176, 323, 235, 'Ager via koi gelo', NULL, NULL, '2020-08-21 03:34:16', NULL, NULL, NULL),
(1177, 323, 235, 'Ager via koi gelo', NULL, NULL, '2020-08-21 03:34:18', NULL, NULL, NULL),
(1178, 323, 235, 'Ager via koi gelo', NULL, NULL, '2020-08-21 03:34:20', NULL, NULL, NULL),
(1179, 3730, 166, 'ভাইয়া ডাউনলোড অপশন দেন class করতে অনেক কস্ট হয়,  আমি Mb দিয়ে class করি 😭', NULL, NULL, '2020-08-21 19:11:16', NULL, '2020-08-21 19:11:16', NULL),
(1180, 2442, 50, 'ভাইয়া DAUGHTER এ প্রথমে D অথবা শেষে R থাকবে না বলসে।কিন্তু ভাইয়া অংকটা যেভাবে করসেন তাতে তো প্রশ্নটা এমন হওয়া উচিত ছিল \"প্রথমে D এবং শেষে R থাকবে না\"', NULL, NULL, '2020-08-21 23:35:47', NULL, '2020-08-21 23:35:47', NULL),
(1181, 2442, 50, 'ভাইয়া DAUGHTER এ প্রথমে D অথবা শেষে R থাকবে না বলসে।কিন্তু ভাইয়া অংকটা যেভাবে করসেন তাতে তো প্রশ্নটা এমন হওয়া উচিত ছিল \"প্রথমে D এবং শেষে R থাকবে না\"', NULL, NULL, '2020-08-21 23:35:50', NULL, '2020-08-21 23:35:50', NULL),
(1182, 2442, 50, 'ভাইয়া DAUGHTER এ প্রথমে D অথবা শেষে R থাকবে না বলসে।কিন্তু ভাইয়া অংকটা যেভাবে করসেন তাতে তো প্রশ্নটা এমন হওয়া উচিত ছিল \"প্রথমে D এবং শেষে R থাকবে না\"', NULL, NULL, '2020-08-21 23:35:50', NULL, '2020-08-21 23:35:50', NULL),
(1183, 2442, 50, 'ভাইয়া DAUGHTER এ প্রথমে D অথবা শেষে R থাকবে না বলসে।কিন্তু ভাইয়া অংকটা যেভাবে করসেন তাতে তো প্রশ্নটা এমন হওয়া উচিত ছিল \"প্রথমে D এবং শেষে R থাকবে না\"', NULL, NULL, '2020-08-21 23:35:51', NULL, '2020-08-21 23:35:51', NULL),
(1184, 2442, 50, 'হয়ত আমি বুঝি নাই একটু যদি দেখতেন বিষয়টা', NULL, NULL, '2020-08-21 23:36:39', NULL, '2020-08-21 23:36:39', NULL),
(1185, 881, 241, 'vaia polymerisation reaction plus cls e dekai die.', NULL, NULL, '2020-08-21 23:42:52', NULL, '2020-08-21 23:42:52', NULL),
(1186, 1687, 235, 'Ridha vaiya kotay', NULL, NULL, '2020-08-22 02:03:30', NULL, '2020-08-22 02:03:30', NULL),
(1187, 1687, 235, 'Ridha vaiya kotay', NULL, NULL, '2020-08-22 02:03:35', NULL, '2020-08-22 02:03:35', NULL),
(1188, 1687, 235, 'Ridha vaiya kotay', NULL, NULL, '2020-08-22 02:03:35', NULL, '2020-08-22 02:03:35', NULL),
(1189, 1687, 235, 'Ridha vaiya kotay', NULL, NULL, '2020-08-22 02:03:35', NULL, '2020-08-22 02:03:35', NULL),
(1190, 1687, 235, 'Ridha vaiya kotay', NULL, NULL, '2020-08-22 02:03:39', NULL, '2020-08-22 02:03:39', NULL),
(1191, 1687, 235, 'Ridha vaiya kotay', NULL, NULL, '2020-08-22 02:03:40', NULL, '2020-08-22 02:03:40', NULL),
(1192, 1687, 235, 'Ridha vaiya kotay', NULL, NULL, '2020-08-22 02:03:40', NULL, '2020-08-22 02:03:40', NULL),
(1193, 1687, 235, 'Ridha vaiya kotay', NULL, NULL, '2020-08-22 02:03:40', NULL, '2020-08-22 02:03:40', NULL),
(1194, 3730, 235, 'Ridha bia koi..  uni class korasa naa kano..  onar jonno too enrool korsi', NULL, NULL, '2020-08-22 02:08:08', NULL, '2020-08-22 02:08:08', NULL),
(1195, 3730, 150, 'Awosam', NULL, NULL, '2020-08-22 16:38:36', NULL, '2020-08-22 16:38:36', NULL),
(1196, 3074, 238, 'vaya laste 2 ta square hoise kibhabe', 'storage/comments/1598093746.jpeg', NULL, '2020-08-22 20:55:46', NULL, '2020-08-22 20:55:46', NULL),
(1197, 3074, 238, 'vaya laste 2 ta square hoise kibhabe', 'storage/comments/1598093747.jpeg', NULL, '2020-08-22 20:55:47', NULL, '2020-08-22 20:55:47', NULL),
(1198, 3074, 238, 'vaya laste 2 ta square hoise kibhabe', 'storage/comments/1598093748.jpeg', NULL, '2020-08-22 20:55:48', NULL, '2020-08-22 20:55:48', NULL),
(1199, 3074, 238, 'vaya laste 2 ta square hoise kibhabe', 'storage/comments/1598093752.jpeg', NULL, '2020-08-22 20:55:52', NULL, '2020-08-22 20:55:52', NULL),
(1200, 3074, 238, 'vaya laste 2 ta square hoise kibhabe', 'storage/comments/1598093754.jpeg', NULL, '2020-08-22 20:55:54', NULL, '2020-08-22 20:55:54', NULL),
(1201, 3467, 238, 'এই ম্যাথ টা কি হয়েছে?', NULL, NULL, '2020-08-23 01:51:00', NULL, NULL, NULL),
(1202, 857, 235, 'sir ami akta video er sound sunte passi na pls help koren', NULL, NULL, '2020-08-23 04:40:19', NULL, NULL, NULL),
(1203, 857, 239, 'sir ami Riddho sir sob gulo cls er sound sunte pai kinto apner cls gulor sound sunte pai na pls sir ki korbo bolen', NULL, NULL, '2020-08-23 14:37:26', NULL, NULL, NULL),
(1204, 857, 239, 'sir ami Riddho sir sob gulo cls er sound sunte pai kinto apner cls gulor sound sunte pai na pls sir ki korbo bolen', NULL, NULL, '2020-08-23 14:37:27', NULL, NULL, NULL),
(1205, 857, 242, 'sir apner cls gulor sound ami sunte pai na keno pls help koren', NULL, NULL, '2020-08-23 14:38:26', NULL, NULL, NULL),
(1206, 857, 244, 'ami keno sudu apner niya cls gulor sound sunte pai na pls help koren', NULL, NULL, '2020-08-23 14:49:59', NULL, NULL, NULL),
(1207, 3913, 16, 'master class kothay pabo vaiya?', NULL, NULL, '2020-08-24 01:38:53', NULL, NULL, NULL),
(1208, 3240, 243, 'vaiya, Du er jonno question solve koralen na toh?', NULL, NULL, '2020-08-24 02:21:13', NULL, '2020-08-24 02:21:13', NULL),
(1209, 3240, 243, 'vaiya, Du er jonno question solve koralen na toh?', NULL, NULL, '2020-08-24 02:21:14', NULL, '2020-08-24 02:21:14', NULL),
(1210, 881, 250, 'Last mAth e V change hoi nai kno? Last Math er theory clear hoi nai..Plz doubt e bolian', NULL, NULL, '2020-08-24 05:09:33', NULL, '2020-08-24 05:09:33', NULL),
(1211, 3913, 84, 'vai trigonometry 6(c) part r class koi?', NULL, NULL, '2020-08-24 09:17:30', NULL, '2020-08-24 09:17:30', NULL),
(1212, 881, 249, 'alkohol er sonaktokoron problem..lokas bikorkdoho experiment...', NULL, NULL, '2020-08-24 19:36:24', NULL, '2020-08-24 19:36:24', NULL),
(1213, 881, 249, 'caroboxilic acid and er jatok teke postoti (alkohol) plz porai dien', NULL, NULL, '2020-08-24 19:38:31', NULL, '2020-08-24 19:38:31', NULL),
(1214, 835, 250, 'class ta onek valo chilo bhaiya 😍', NULL, NULL, '2020-08-24 20:54:45', NULL, '2020-08-24 20:54:45', NULL),
(1215, 2782, 233, 'organic chemistry ses hote ar koyta class lagbe.', NULL, NULL, '2020-08-25 00:51:18', NULL, '2020-08-25 00:51:18', NULL),
(1216, 2782, 233, 'organic chemistry ses hote ar koyta class lagbe.', NULL, NULL, '2020-08-25 00:51:19', NULL, '2020-08-25 00:51:19', NULL),
(1217, 4107, 20, 'R class koi,,mcq solve', NULL, NULL, '2020-08-25 06:29:17', NULL, NULL, NULL),
(1218, 3610, 232, 'vaia download option plz.', NULL, NULL, '2020-08-25 16:09:25', NULL, '2020-08-25 16:09:25', NULL),
(1219, 3610, 232, 'vaia download option plz.', NULL, NULL, '2020-08-25 16:09:25', NULL, '2020-08-25 16:09:25', NULL),
(1220, 3250, 195, 'ক‍্যামনে 1÷ R=4dealta÷abc hoy vai please bonben', NULL, NULL, '2020-08-25 19:37:05', NULL, '2020-08-25 19:37:05', NULL),
(1221, 3538, 161, 'cos fi keno holo vaia? sin fi keno holo na?', NULL, NULL, '2020-08-26 15:14:21', NULL, NULL, NULL),
(1222, 4010, 88, 'ভাই ৪.১০ এ 1 0 0 আর নিচে  1 @ @^3   এই দুইটা বাদ দিসেন কিভাবে?', NULL, NULL, '2020-08-26 16:10:46', NULL, '2020-08-26 16:10:46', NULL),
(1223, 4010, 88, 'ভাই ৬.১৮ মিনিটে এ সব শেষ লাইন টা কিভাবে আনসেন বুঝতাসি না,,', NULL, NULL, '2020-08-26 16:16:58', NULL, '2020-08-26 16:16:58', NULL),
(1224, 4010, 88, 'ঝামশেদ ভাইয়ার ম্যাথ বুঝি না,😫😫', NULL, NULL, '2020-08-26 16:26:41', NULL, '2020-08-26 16:26:41', NULL),
(1225, 4135, 240, 'jii vaia', NULL, NULL, '2020-08-26 17:02:58', NULL, '2020-08-26 17:02:58', NULL),
(1226, 4135, 240, 'jii vaia', NULL, NULL, '2020-08-26 17:03:00', NULL, '2020-08-26 17:03:00', NULL),
(1227, 4135, 240, 'jii vaia', NULL, NULL, '2020-08-26 17:03:00', NULL, '2020-08-26 17:03:00', NULL),
(1228, 4107, 53, 'Vai sudhu class diye ki hbe,,mcq nai test paper solve nai ki agulo', NULL, NULL, '2020-08-26 17:07:07', NULL, '2020-08-26 17:07:07', NULL),
(1229, 4107, 53, 'Vai sudhu class diye ki hbe,,mcq nai test paper solve nai ki agulo', NULL, NULL, '2020-08-26 17:07:11', NULL, '2020-08-26 17:07:11', NULL),
(1230, 4107, 53, 'Vai sudhu class diye ki hbe,,mcq nai test paper solve nai ki agulo', NULL, NULL, '2020-08-26 17:07:11', NULL, '2020-08-26 17:07:11', NULL),
(1231, 4107, 53, 'Vai sudhu class diye ki hbe,,mcq nai test paper solve nai ki agulo', NULL, NULL, '2020-08-26 17:07:13', NULL, '2020-08-26 17:07:13', NULL),
(1232, 4010, 252, 'অনুরাশি ও সহগুনক এর মধ্যে পার্থক্য কি?', NULL, NULL, '2020-08-26 22:52:55', NULL, '2020-08-26 22:52:55', NULL),
(1233, 966, 253, 'apnar class gula valo vabe bujte pari na vaiya....aktu balo vabe lecture diyen vaiya', NULL, NULL, '2020-08-26 22:54:34', NULL, '2020-08-26 22:54:34', NULL),
(1234, 966, 253, 'apnar class gula valo vabe bujte pari na vaiya....aktu balo vabe lecture diyen vaiya', NULL, NULL, '2020-08-26 22:54:35', NULL, '2020-08-26 22:54:35', NULL),
(1235, 4010, 82, 'জি ভাইয়া আগে কিছুটা ব্যাসিক পড়াইয়া শুরু করলে ভালো হত,আর ২ নং যে ম্যাথ টা দিসেন এইটা কি কিছুই বুঝতাসি না, কারণ কঠিন গুলা পারি বাট এই সহজ গুলা একদম রাইট প্রসেস জানা নাই,,এই ম্যাথ পারলে একটু দেখাইয়েন,', NULL, NULL, '2020-08-26 23:43:12', NULL, '2020-08-26 23:43:12', NULL),
(1236, 4010, 82, 'জি ভাইয়া আগে কিছুটা ব্যাসিক পড়াইয়া শুরু করলে ভালো হত,আর ২ নং যে ম্যাথ টা দিসেন এইটা কি কিছুই বুঝতাসি না, কারণ কঠিন গুলা পারি বাট এই সহজ গুলা একদম রাইট প্রসেস জানা নাই,,এই ম্যাথ পারলে একটু দেখাইয়েন,', NULL, NULL, '2020-08-26 23:43:14', NULL, '2020-08-26 23:43:14', NULL),
(1237, 1922, 235, 'kivabe live class korbo', NULL, NULL, '2020-08-27 00:04:16', NULL, '2020-08-27 00:04:16', NULL),
(1238, 1922, 235, 'kivabe live class korbo', NULL, NULL, '2020-08-27 00:04:17', NULL, '2020-08-27 00:04:17', NULL),
(1239, 1390, 258, 'e,d numbers', NULL, NULL, '2020-08-27 01:01:05', NULL, '2020-08-27 01:01:05', NULL),
(1240, 1390, 258, 'picture send hoy na', NULL, NULL, '2020-08-27 01:01:50', NULL, '2020-08-27 01:01:50', NULL),
(1241, 1687, 253, 'vaiya,live class chapter sesh korar por niyen plz ,amon Kore buji na ,trigonometry jamon Kore class nisen omne nin ....plzzzzzzzz', NULL, NULL, '2020-08-27 01:06:19', NULL, '2020-08-27 01:06:19', NULL),
(1242, 1687, 253, 'Ami too ai class kishu ei bujlm na ......vaiya', NULL, NULL, '2020-08-27 01:07:24', NULL, '2020-08-27 01:07:24', NULL),
(1243, 3240, 255, '49:16  bus er math ta bujhi nai vaiya', NULL, NULL, '2020-08-27 02:54:11', NULL, '2020-08-27 02:54:11', NULL),
(1244, 3240, 255, '49:16  bus er math ta bujhi nai vaiya', NULL, NULL, '2020-08-27 02:54:11', NULL, '2020-08-27 02:54:11', NULL),
(1245, 3240, 255, '49:16  bus er math ta bujhi nai vaiya', NULL, NULL, '2020-08-27 02:54:12', NULL, '2020-08-27 02:54:12', NULL),
(1246, 3730, 185, 'nc', NULL, NULL, '2020-08-27 15:28:35', NULL, '2020-08-27 15:28:35', NULL),
(1247, 2757, 250, 'Vaiya ei video purata dekhar por matha \n betha shuru hoe gese', NULL, NULL, '2020-08-27 16:14:49', NULL, '2020-08-27 16:14:49', NULL),
(1248, 2757, 250, 'Vaiya ei video purata dekhar por matha \n betha shuru hoe gese', NULL, NULL, '2020-08-27 16:14:51', NULL, '2020-08-27 16:14:51', NULL),
(1249, 881, 253, 'Jara bujar tara bujteceh', NULL, NULL, '2020-08-28 02:05:32', NULL, '2020-08-28 02:05:32', NULL),
(1250, 1152, 250, 'Ei class er upor aro koyekta math korale valo hoto vaiya.', NULL, NULL, '2020-08-28 02:23:03', NULL, '2020-08-28 02:23:03', NULL),
(1251, 3240, 255, 'vaiya eto speed e math korale dorte prblm hoy. plz aktu dhire bolle valo hoy.', NULL, NULL, '2020-08-28 03:46:29', NULL, '2020-08-28 03:46:29', NULL),
(1252, 3240, 255, 'vaiya eto speed e math korale dorte prblm hoy. plz aktu dhire bolle valo hoy.', NULL, NULL, '2020-08-28 03:46:29', NULL, '2020-08-28 03:46:29', NULL),
(1253, 717, 246, 'vaia...kichu reaction apni koran na..🙁 vaia boi er reaction ache onk.oigulo to bujhi nah', NULL, NULL, '2020-08-28 04:48:37', NULL, '2020-08-28 04:48:37', NULL),
(1254, 717, 246, 'vaia...kichu reaction apni koran na..🙁 vaia boi er reaction ache onk.oigulo to bujhi nah', NULL, NULL, '2020-08-28 04:48:37', NULL, '2020-08-28 04:48:37', NULL),
(1255, 3610, 253, 'vaia plz trigonometry er moto ei class gulu nen.In Sha ALLAH', NULL, NULL, '2020-08-28 11:34:08', NULL, '2020-08-28 11:34:08', NULL),
(1256, 3250, 201, 'MCQ er jono class den', NULL, NULL, '2020-08-28 19:20:30', NULL, '2020-08-28 19:20:30', NULL),
(1257, 3250, 201, 'MCQ er jono class den', NULL, NULL, '2020-08-28 19:20:30', NULL, '2020-08-28 19:20:30', NULL),
(1258, 3250, 201, 'MCQ er jono class den', NULL, NULL, '2020-08-28 19:20:31', NULL, '2020-08-28 19:20:31', NULL),
(1259, 3250, 201, 'MCQ er jono class den', NULL, NULL, '2020-08-28 19:20:31', NULL, '2020-08-28 19:20:31', NULL),
(1260, 3250, 201, 'MCQ er jono class den', NULL, NULL, '2020-08-28 19:20:31', NULL, '2020-08-28 19:20:31', NULL),
(1261, 3250, 201, 'MCQ er jono class den', NULL, NULL, '2020-08-28 19:20:31', NULL, '2020-08-28 19:20:31', NULL),
(1262, 3250, 201, 'MCQ er jono class den', NULL, NULL, '2020-08-28 19:20:31', NULL, '2020-08-28 19:20:31', NULL),
(1263, 3250, 201, 'MCQ er jono class den', NULL, NULL, '2020-08-28 19:20:32', NULL, '2020-08-28 19:20:32', NULL),
(1264, 3240, 256, 'vaiya akta request,  apnara question solve korar age oi question related basic theory ta aktu porale vlo hoy. jemonta onno coaching a kora hoche coz age theory pora thakleo question solve korar somoy dhora jai na. ami shudu roots edu tei rely kore aci tai hope apnara etike consider e anben..', NULL, NULL, '2020-08-29 02:20:31', NULL, '2020-08-29 02:20:31', NULL),
(1265, 3240, 256, 'vaiya akta request,  apnara question solve korar age oi question related basic theory ta aktu porale vlo hoy. jemonta onno coaching a kora hoche coz age theory pora thakleo question solve korar somoy dhora jai na. ami shudu roots edu tei rely kore aci tai hope apnara etike consider e anben..', NULL, NULL, '2020-08-29 02:20:32', NULL, '2020-08-29 02:20:32', NULL),
(1266, 1219, 11, 'vai hote hote...abr bondho hoye jasse', NULL, NULL, '2020-08-29 15:07:02', NULL, '2020-08-29 15:07:02', NULL),
(1267, 1219, 11, 'vai hote hote...abr bondho hoye jasse', NULL, NULL, '2020-08-29 15:07:02', NULL, '2020-08-29 15:07:02', NULL),
(1268, 376, 240, 'plz board e class niyen', NULL, NULL, '2020-08-29 22:05:17', NULL, NULL, NULL),
(1269, 3250, 240, 'record  class den vai.........??????', NULL, NULL, '2020-08-30 00:29:12', NULL, '2020-08-30 00:29:12', NULL),
(1270, 3250, 240, 'record  class den vai.........??????', NULL, NULL, '2020-08-30 00:29:12', NULL, '2020-08-30 00:29:12', NULL),
(1271, 3250, 240, 'record  class den vai.........??????', NULL, NULL, '2020-08-30 00:29:12', NULL, '2020-08-30 00:29:12', NULL),
(1272, 4195, 132, 'vaiya ami eiber inter 1st year.tw ami tw hsc 2021 ei course korsi .akhon question holo amader naki alada course astese????tahole ami akhon ki korbo...', NULL, NULL, '2020-08-30 02:48:57', NULL, NULL, NULL),
(1273, 3080, 30, 'playback speed option ta dile valo hoy', NULL, NULL, '2020-08-31 00:58:59', NULL, '2020-08-31 00:58:59', NULL),
(1274, 3080, 30, 'playback speed option ta add korun please', NULL, NULL, '2020-08-31 01:00:31', NULL, '2020-08-31 01:00:31', NULL),
(1275, 3080, 30, 'playback speed option ta add korun please', NULL, NULL, '2020-08-31 01:00:32', NULL, '2020-08-31 01:00:32', NULL),
(1276, 823, 122, 'ভাইয়া লাইন ডায়াগ্রাম প্রসেস এ কি বহুপদীটির সর্বোচ্চ ঘাতের পাওয়ার জোড় না বিজোড় এইটা দেখবো,নাকি সর্বোচ্চ ঘাত্যযুক্ত বহুপদীর সহগ 1 কিনা সেইটা দেখবো,', NULL, NULL, '2020-08-31 15:34:06', NULL, '2020-08-31 15:34:06', NULL),
(1277, 823, 104, 'আচ্ছা ভাই y=mx  বা x=my  জাতীয় সমীকরণ এর ক্ষেত্রে তাদের অসমতার দিক মূলবিন্দুর দিকে নাক মূলবিন্দুর বাইরের দিকে তা কিভাবে বুঝবো?', NULL, NULL, '2020-08-31 16:34:22', NULL, '2020-08-31 16:34:22', NULL),
(1278, 823, 88, 'অনুরাশি ও সহগুনক এর মধ্যে পার্থক্য কি?প্লিজ বলেন ভাইয়া,', NULL, NULL, '2020-08-31 16:35:21', NULL, '2020-08-31 16:35:21', NULL),
(1279, 823, 88, 'অনুরাশি ও সহগুনক এর মধ্যে পার্থক্য কি?প্লিজ বলেন ভাইয়া,', NULL, NULL, '2020-08-31 16:35:22', NULL, '2020-08-31 16:35:22', NULL),
(1280, 823, 88, 'অনুরাশি ও সহগুনক এর মধ্যে পার্থক্য কি?প্লিজ বলেন ভাইয়া,', NULL, NULL, '2020-08-31 16:35:24', NULL, '2020-08-31 16:35:24', NULL),
(1281, 966, 228, 'download option diyen vaiya', NULL, NULL, '2020-08-31 17:53:14', NULL, '2020-08-31 17:53:14', NULL),
(1282, 966, 228, 'download option diyen vaiya', NULL, NULL, '2020-08-31 17:53:14', NULL, '2020-08-31 17:53:14', NULL),
(1283, 966, 228, 'download option diyen vaiya', NULL, NULL, '2020-08-31 17:53:14', NULL, '2020-08-31 17:53:14', NULL),
(1284, 966, 228, 'download option diyen vaiya', NULL, NULL, '2020-08-31 17:53:15', NULL, '2020-08-31 17:53:15', NULL),
(1285, 1026, 136, 'nc', NULL, NULL, '2020-09-01 00:26:49', NULL, '2020-09-01 00:26:49', NULL),
(1286, 1026, 136, 'nc', NULL, NULL, '2020-09-01 00:26:50', NULL, '2020-09-01 00:26:50', NULL),
(1287, 1784, 64, 'vai second math a to ans mile nai...kivabe ki holo?', '', NULL, '2020-09-01 01:35:56', NULL, NULL, NULL),
(1288, 339, 237, 'question er number dile upokar hoi viya', NULL, NULL, '2020-09-01 01:42:58', NULL, '2020-09-01 01:42:58', NULL),
(1289, 339, 260, 'mcq 44:26 minutes.. tnx me later😁', NULL, NULL, '2020-09-01 01:55:24', NULL, '2020-09-01 01:55:24', NULL),
(1290, 823, 129, 'রেকটিফিকেশন খুব তাড়াতাড়ি পড়ানো হইসে, কিছু বুঝি না', NULL, NULL, '2020-09-01 02:11:56', NULL, '2020-09-01 02:11:56', NULL),
(1291, 823, 95, 'হ্যা,প্রতি লাইন আলোচনা করা উচিত ছিলো,এবং homework এর আন্সার ও দেয় নি', NULL, NULL, '2020-09-01 13:52:40', NULL, '2020-09-01 13:52:40', NULL),
(1292, 823, 96, 'pdf koi', NULL, NULL, '2020-09-01 15:59:31', NULL, '2020-09-01 15:59:31', NULL),
(1293, 4331, 236, 'C নম্বরের ক্ষেত্রে কী করতে হবে', '', NULL, '2020-09-01 21:50:30', NULL, NULL, NULL),
(1294, 2021, 77, 'এখানে + এর সুত্র হবে না???\r\n- এর সূত্র  কেন ???', '', NULL, '2020-09-02 13:00:01', NULL, NULL, NULL),
(1295, 3610, 263, 'আসসালামু আলাইকুম ভাইয়া প্রথম টার মূখ্য আর্গুমেন্ট  3পাই/2 হতে  -পাই/2 হয় কীভাবে বুঝি  নাই।', NULL, NULL, '2020-09-02 13:38:31', NULL, '2020-09-02 13:38:31', NULL),
(1296, 2021, 78, '২২ মিনিটের সময় ২ গুন করা হয় না ২য় পার্টে এখানে ভুল আছে ।', '', NULL, '2020-09-02 14:47:57', NULL, NULL, NULL),
(1297, 2021, 78, '২২ মিনিটের সময় ২ গুন করা হয় না ২য় পার্টে এখানে ভুল আছে ।', '', NULL, '2020-09-02 14:47:59', NULL, NULL, NULL),
(1298, 1561, 223, 'video চলতে চলতে off হয়ে যায়', NULL, NULL, '2020-09-02 19:08:59', NULL, '2020-09-02 19:08:59', NULL),
(1299, 1561, 223, 'video চলতে চলতে off হয়ে যায়', NULL, NULL, '2020-09-02 19:08:59', NULL, '2020-09-02 19:08:59', NULL),
(1300, 1561, 223, 'video চলতে চলতে off হয়ে যায়', NULL, NULL, '2020-09-02 19:09:00', NULL, '2020-09-02 19:09:00', NULL),
(1301, 1687, 240, 'record class plz', NULL, NULL, '2020-09-02 23:16:54', NULL, '2020-09-02 23:16:54', NULL),
(1302, 4195, 206, 'sir pi 1,1,4,4 hobe na kano???', '', NULL, '2020-09-03 02:46:45', NULL, NULL, NULL),
(1303, 3928, 30, 'Quantum number , orbital ar spectrum aigula nai kano????', NULL, NULL, '2020-09-03 03:47:49', NULL, '2020-09-03 03:47:49', NULL),
(1304, 3928, 30, 'Quantum number , orbital ar spectrum aigula nai kano????', NULL, NULL, '2020-09-03 03:47:50', NULL, '2020-09-03 03:47:50', NULL);
INSERT INTO `comments` (`id`, `user_id`, `video_id`, `text`, `image`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1306, 3730, 240, 'board a class nian', NULL, NULL, '2020-09-04 02:30:08', NULL, '2020-09-04 02:30:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `demo_embed_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `lectures` int(11) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_bestselling` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `type`, `title`, `instructor_id`, `demo_embed_code`, `price`, `discount`, `lectures`, `hours`, `banner`, `short_desc`, `description`, `is_bestselling`, `order`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, 1, 'HSC Academic Course', 1, '<iframe src=\"https://www.youtube.com/embed/nrJtHemSPW4?rel=0\"></iframe>', 1000, NULL, 21, 45, 'storage/courses/course_2.png', NULL, '<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>Subjects</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\"><strong>Physics,&nbsp;</strong></span><span style=\"color: #000080;\"><strong>Chemistry, Math</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>Course Duration</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">You can join ANYTIME !!</span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>What will you get in this course?</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Recorded Classes on Each Topic</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Doubt Clearing Sessions</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Live Class</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Master Classes<br /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Live Exam</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Class Notes and Lecture PDF</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Special Tips, Tricks and Exam Hacks</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">SMS Reminder of every Class Schedule</span></p>', 1, 3, 1, '2019-04-24 04:33:32', NULL, '2020-09-01 05:55:14', NULL),
(5, 1, 'Engineering + Varsity Admission Booster Course', 2, '<iframe src=\"https://www.youtube.com/embed/nrJtHemSPW4?rel=0\"></iframe>', 2000, NULL, 22, 50, 'storage/courses/course_5.png', NULL, '<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>Subjects</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong><span style=\"color: #000080;\">Physics, Chemistry, Math</span></strong></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>Course Duration</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Open Till Last Date of All Engineering &amp; Varsity Admission Tests 2020</span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>What will you get in this course?</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">&nbsp; Recorded Classes</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Question Bank Solve</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Doubt Clearing Sessions</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Live Class</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Master Classes<br /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Live Model Test</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Class Notes and Lecture PDF</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Special Tips, Tricks and Exam Hacks</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">SMS Reminder of every Class Schedule</span></p>', 1, 1, 1, '2019-05-03 08:55:28', NULL, '2020-09-01 05:54:37', NULL),
(7, 2, 'HSC Crash Course', 3, '<iframe src=\"https://player.vimeo.com/video/319463899\" width=\"640\" height=\"564\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>', 3000, NULL, 32, 60, 'storage/courses/course_7.png', NULL, '<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>Subjects</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\"><strong>Physics,&nbsp;</strong><strong>Chemistry,&nbsp;</strong><strong>Math</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\"><strong style=\"color: #ff0000;\">Course Duration</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Open Till Last Date of HSC 2020 Exam</span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>What will you get in this course?</strong></span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Recorded Classes on Each Topic</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Test Paper Solve</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Doubt Clearing Sessions</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Live Class</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Master Classes<br /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Live Exam</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Class Notes and Lecture PDF</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">Special Tips, Tricks and Exam Hacks</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #000080;\">SMS Reminder of every Class Schedule</span></p>', NULL, 2, 1, '2019-05-03 09:03:43', NULL, '2020-09-01 05:55:50', NULL),
(8, 2, 'Test Course 04', 1, '<iframe src=\"https://www.youtube.com/embed/nrJtHemSPW4?rel=0\"></iframe>', 5000, NULL, 45, 85, 'storage/courses/course_8.jpg', NULL, NULL, NULL, NULL, 1, '2020-11-26 17:45:06', NULL, '2020-11-26 17:50:37', NULL),
(9, 2, 'Final Test Course', 2, '<iframe src=\"https://www.youtube.com/embed/nrJtHemSPW4?rel=0\"></iframe>', 5000, NULL, 15, 30, 'storage/courses/course_9.png', NULL, NULL, 1, 1, 1, '2020-12-22 02:56:37', NULL, '2020-12-22 02:56:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_types`
--

CREATE TABLE `course_types` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `banner` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_types`
--

INSERT INTO `course_types` (`id`, `title`, `banner`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'CAD', 'storage/CourseTypes/1.jpg', 1, 1, NULL, NULL, '2020-11-21 16:45:09', NULL),
(2, 'code', 'storage/CourseTypes/2.jpg', 2, 1, NULL, NULL, '2020-11-21 16:45:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `text` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `course_id`, `lecture_id`, `user_id`, `parent_id`, `text`, `order`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 3, 1, 0, 'Business and Finance Sequitur mutatin was onem consue ktudium. Investiga tiones demonstr aver unt lectores legere me lius quod kqua legunt saepius.', 1, 1, '2020-11-27 21:54:54', NULL, NULL),
(2, 7, 3, 1, 1, 'Business and Finance Sequitur mutatin was onem consue ktudium. Investiga tiones demonstr aver unt lectores legere me lius quod kqua legunt saepius.', 2, 1, '2020-11-26 21:55:57', NULL, NULL),
(3, 7, 4, 2, 0, 'Business and Finance Sequitur mutatin was onem consue ktudium. Investiga tiones demonstr aver unt lectores legere me lius quod kqua legunt saepius.', 3, 1, '2020-12-22 04:36:01', '2020-12-22 04:36:01', NULL),
(4, 7, 4, 2, 3, 'Business and Finance Sequitur mutatin was onem consue ktudium. Investiga tiones demonstr aver unt lectores legere me lius quod kqua legunt saepius.', 4, 1, '2021-02-04 15:36:24', NULL, NULL),
(5, 2, 1, 1, 0, 'Business and Finance Sequitur mutatin was onem consue ktudium. Investiga tiones demonstr aver unt lectores legere me lius quod kqua legunt saepius.', 1, 1, '2020-11-29 21:54:54', NULL, NULL),
(6, 2, 1, 1, 5, 'Business and Finance Sequitur mutatin was onem consue ktudium. Investiga tiones demonstr aver unt lectores legere me lius quod kqua legunt saepius.', 2, 1, '2020-11-28 21:55:57', NULL, NULL),
(7, 2, 2, 2, 0, 'Business and Finance Sequitur mutatin was onem consue ktudium. Investiga tiones demonstr aver unt lectores legere me lius quod kqua legunt saepius.', 3, 1, '2020-12-15 04:36:01', '2020-12-22 04:36:01', NULL),
(8, 2, 2, 2, 7, 'Business and Finance Sequitur mutatin was onem consue ktudium. Investiga tiones demonstr aver unt lectores legere me lius quod kqua legunt saepius.', 4, 1, '2021-02-04 15:36:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_type` int(11) DEFAULT 2,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `total_question` int(11) DEFAULT NULL,
  `marks_per_question` int(11) DEFAULT NULL,
  `negative_mark` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `course_id`, `exam_type`, `title`, `banner`, `answer_images`, `question_images`, `duration`, `total_question`, `marks_per_question`, `negative_mark`, `date`, `order`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(3, '7', 0, 'Chemistry 1st Paper', 'storage/exams/April2020/CGZRDfGAwYXQGoRG2Lnt.png', '[\"exams\\/May2020\\/rq5nG9Qvgek66nTYb9E1.png\"]', '[\"exams\\/May2020\\/nZTF6pDSUjZbiplitnVH.png\",\"exams\\/May2020\\/a34LsCiG51AVmn2lv7QD.png\",\"exams\\/May2020\\/sS0yjjfAWT1bOtDFrLyH.png\"]', 1500, 25, 1, NULL, '2020-05-01', 1, 1, '2020-04-03 18:00:46', NULL, '2020-05-07 01:47:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `free_classes`
--

CREATE TABLE `free_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `free_classes`
--

INSERT INTO `free_classes` (`id`, `title`, `youtube_id`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '<p><strong>HSC 2020 Crash Course</strong></p>', 'AnPxvdSADhk', 1, '2020-03-26 02:59:00', '2020-03-26 04:16:38', NULL),
(2, '<p><strong>HSC 2020 Crash Course</strong></p>', 'jxagO5R-r60', 3, '2020-03-26 03:02:00', '2020-03-26 04:18:52', NULL),
(3, '<p><strong>HSC 2020 Crash Course</strong></p>', 'Kol216MsubU', 2, '2020-03-26 03:04:00', '2020-03-26 04:19:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `how_to_use`
--

CREATE TABLE `how_to_use` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_to_use`
--

INSERT INTO `how_to_use` (`id`, `title`, `youtube_id`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '<p><span style=\"color: #ff00ff;\"><strong>ROOTs Edu কী ?&nbsp;</strong></span></p>', 'TikrXZJVbA8', 1, '2020-03-26 01:01:00', '2020-03-26 19:38:11', NULL),
(2, '<p><span style=\"color: #ff00ff;\"><strong>Registration and Bkash Payment Method</strong></span></p>', 'TwNLBgxyS10', 2, '2020-03-26 01:02:00', '2020-03-26 19:38:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=Lecture; 2=Exam Type; 3= File Upload',
  `title` varchar(191) DEFAULT NULL,
  `video_url` varchar(191) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `course_id`, `type`, `title`, `video_url`, `length`, `order`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'test Letures', '489010222', NULL, NULL, 1, '2020-11-26 21:54:54', NULL, NULL),
(2, 2, 1, 'test Letures 02', '489010222', NULL, NULL, 1, '2020-11-26 21:55:57', NULL, NULL),
(3, 7, 1, 'Test Lecture', NULL, NULL, 3, 1, '2020-12-22 04:36:01', '2020-12-22 04:36:01', NULL),
(4, 7, 1, 'Test Lecture 02\r\n', NULL, NULL, 3, 1, '2020-12-22 04:36:01', '2020-12-22 04:36:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `libraries`
--

CREATE TABLE `libraries` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libraries`
--

INSERT INTO `libraries` (`id`, `course_id`, `lecture_id`, `icon`, `title`, `order`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 3, NULL, 'This is your first Notebook', 1, 1, '2020-11-26 21:54:54', NULL, NULL),
(2, 7, 3, NULL, 'This is your second Notebook', 2, 1, '2020-11-26 21:55:57', NULL, NULL),
(3, 7, 4, NULL, 'This is your third Notebook', 3, 1, '2020-12-22 04:36:01', '2020-12-22 04:36:01', NULL),
(4, 7, 4, NULL, 'This is your fourth Notebook', 4, 1, '2021-02-04 15:36:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_correct` int(11) DEFAULT NULL,
  `total_wrong` int(11) DEFAULT NULL,
  `total_question` int(11) DEFAULT NULL,
  `not_answer` int(11) DEFAULT NULL,
  `total_gain_mark` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `user_id`, `exam_id`, `total_correct`, `total_wrong`, `total_question`, `not_answer`, `total_gain_mark`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, '847', '3', 4, 3, 25, 18, 4, '2020-05-30 03:43:09', '2020-05-30 03:43:20', NULL),
(27, '1648', '3', 2, 7, 25, 16, 2, '2020-05-30 23:06:46', '2020-05-30 23:20:21', NULL),
(28, '80', '3', NULL, NULL, NULL, NULL, NULL, '2020-06-13 21:59:49', '2020-06-13 21:59:49', NULL),
(29, '1872', '3', NULL, NULL, NULL, NULL, NULL, '2020-06-22 00:02:55', '2020-06-22 00:02:55', NULL),
(30, '2379', '3', NULL, NULL, NULL, NULL, NULL, '2020-06-23 10:11:27', '2020-06-23 10:11:27', NULL),
(31, '1875', '3', 0, 0, 25, 25, 0, '2020-06-28 02:53:58', '2020-06-28 02:54:45', NULL),
(32, '210', '3', 0, 2, 25, 23, 0, '2020-07-11 18:23:54', '2020-07-11 18:24:06', NULL),
(33, '427', '3', NULL, NULL, NULL, NULL, NULL, '2020-07-12 18:08:19', '2020-07-12 18:08:19', NULL),
(34, '598', '3', 4, 7, 25, 14, 4, '2020-07-14 11:21:57', '2020-07-14 11:32:55', NULL),
(35, '254', '3', NULL, NULL, NULL, NULL, NULL, '2020-07-17 05:32:44', '2020-07-17 05:32:44', NULL),
(36, '331', '3', NULL, NULL, NULL, NULL, NULL, '2020-07-24 12:25:23', '2020-07-24 12:25:23', NULL),
(37, '184', '3', NULL, NULL, NULL, NULL, NULL, '2020-07-27 15:39:08', '2020-07-27 15:39:08', NULL),
(38, '4107', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-25 05:37:43', '2020-08-25 05:37:43', NULL),
(39, '550', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-30 05:34:17', '2020-08-30 05:34:17', NULL),
(40, '1886', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-30 17:35:50', '2020-08-30 17:35:50', NULL),
(41, '840', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-30 19:00:13', '2020-08-30 19:00:13', NULL),
(42, '591', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-30 20:12:03', '2020-08-30 20:12:03', NULL),
(43, '3793', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-30 21:02:47', '2020-08-30 21:02:47', NULL),
(44, '1352', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-30 22:47:02', '2020-08-30 22:47:02', NULL),
(45, '1129', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-31 00:17:40', '2020-08-31 00:17:40', NULL),
(46, '881', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-31 00:40:22', '2020-08-31 00:40:22', NULL),
(47, '4135', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-31 02:34:59', '2020-08-31 02:34:59', NULL),
(48, '2727', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-31 15:45:20', '2020-08-31 15:45:20', NULL),
(49, '2990', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-31 21:48:44', '2020-08-31 21:48:44', NULL),
(50, '823', '3', NULL, NULL, NULL, NULL, NULL, '2020-08-31 23:50:39', '2020-08-31 23:50:39', NULL),
(51, '3274', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-01 02:37:44', '2020-09-01 02:37:44', NULL),
(52, '3066', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-01 03:04:46', '2020-09-01 03:04:46', NULL),
(53, '872', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-01 10:12:32', '2020-09-01 10:12:32', NULL),
(54, '488', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-01 19:43:41', '2020-09-01 19:43:41', NULL),
(55, '902', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-01 21:33:29', '2020-09-01 21:33:29', NULL),
(56, '1066', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 00:53:45', '2020-09-02 00:53:45', NULL),
(57, '3620', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 02:35:10', '2020-09-02 02:35:10', NULL),
(58, '664', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 11:30:00', '2020-09-02 11:30:00', NULL),
(59, '4355', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 13:55:49', '2020-09-02 13:55:49', NULL),
(60, '4323', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 14:00:10', '2020-09-02 14:00:10', NULL),
(61, '704', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 17:03:54', '2020-09-02 17:03:54', NULL),
(62, '2593', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 18:02:04', '2020-09-02 18:02:04', NULL),
(63, '2021', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 20:23:10', '2020-09-02 20:23:10', NULL),
(64, '684', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 21:21:57', '2020-09-02 21:21:57', NULL),
(65, '853', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 22:05:35', '2020-09-02 22:05:35', NULL),
(66, '1206', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-02 22:10:11', '2020-09-02 22:10:11', NULL),
(67, '950', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-03 00:33:05', '2020-09-03 00:33:05', NULL),
(68, '1103', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-03 04:49:46', '2020-09-03 04:49:46', NULL),
(69, '821', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-04 00:37:31', '2020-09-04 00:37:31', NULL),
(70, '1575', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-04 00:47:46', '2020-09-04 00:47:46', NULL),
(71, '891', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-04 02:09:49', '2020-09-04 02:09:49', NULL),
(72, '2141', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-04 02:16:56', '2020-09-04 02:16:56', NULL),
(73, '775', '3', NULL, NULL, NULL, NULL, NULL, '2020-09-04 02:31:16', '2020-09-04 02:31:16', NULL);

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
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\User', 1),
(1, 'App\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notebooks`
--

CREATE TABLE `notebooks` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notebooks`
--

INSERT INTO `notebooks` (`id`, `course_id`, `lecture_id`, `title`, `order`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 4, 'This is your first Notebook', 1, 1, '2020-11-26 21:54:54', NULL, NULL),
(2, 7, 3, 'This is your second Notebook', 2, 1, '2020-11-26 21:55:57', NULL, NULL),
(3, 7, 3, 'This is your third Notebook', 3, 1, '2020-12-22 04:36:01', '2020-12-22 04:36:01', NULL),
(4, 7, 4, 'This is your fourth Notebook', 4, 1, '2021-02-04 15:36:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` int(11) DEFAULT 0,
  `is_completed` int(11) DEFAULT 0,
  `deadline` date DEFAULT NULL,
  `paid_start` date DEFAULT NULL,
  `paid_end` date DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '''BDT''',
  `gateway_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `course_id`, `price`, `order_id`, `is_paid`, `is_completed`, `deadline`, `paid_start`, `paid_end`, `payment_date`, `bank_transaction_id`, `status`, `device`, `currency`, `gateway_type`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 2, 4999, '100001', 1, 1, NULL, NULL, '2021-03-01', NULL, NULL, 'Processing', 'Website', 'BDT', 'LIVE', 1, '2019-09-10 00:05:25', NULL, NULL, NULL),
(2, 1, 7, 4999, '100002', 1, 0, NULL, NULL, '2021-03-01', NULL, NULL, 'Processing', 'Website', 'BDT', 'LIVE', 1, '2019-09-10 00:05:25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('textshuvro@gmail.com', '$2y$10$Sy6sEjw2KMbwp9ff0yR3MeLooCBXaqyklvs8aspXmeAYTWbzsPwQW', '2019-04-22 23:27:59'),
('tanvirish123@gmail.com', '$2y$10$e2OVDKUo0LzHTI5zuAba8OPfzawRB65kL8gDLR863nodX2ggk99mC', '2019-07-04 06:31:55'),
('rabby8994@gmail.com', '$2y$10$NnuMpCOGvsgko0quhCJqTOF75aCB6L0uFJbV8mUEyM8oOyaD4a3Em', '2019-08-23 08:24:49'),
('asiftauhid4665@gmail.com', '$2y$10$UIR07vng8pCfW/nX2Gh09e21kX0vNwvPk6B0J6VXn/z5dL35EW4Ea', '2019-11-08 11:13:32'),
('yahianabab1999@gmail.com', '$2y$10$i21kim11fPMGLyWCpZfkZO0tPptROtsDny7UnHM7aMasSwM7BjYcG', '2019-12-30 09:03:55'),
('alhossainsajid901@gmail.com', '$2y$10$lzmP8EiUTKdxrMfy/vPq.efseXmqSobBjC0KvdKI3n0FFTLO6Gps2', '2020-01-16 10:41:19'),
('tanjilasarkar9857@gmail.com', '$2y$10$l9aKZn1qqenZ3XgyvvphhefMg5Klv/FWi.R/52MLiG0A5734hNFpy', '2020-01-25 00:34:47'),
('rafidbin2000@gmail.com', '$2y$10$WN3LnVgSyJasv9GWDxQf5eZN9vQ0.QcWt26IdF2wYkCO9uMVa25lC', '2020-01-31 21:12:49'),
('Sajjadmahmudrahat@gmail.com', '$2y$10$iDmuNxLVuDG.W.DRb3T84uFr0tfHJ.oO.a.LvK2ZycATrEH13Qh8a', '2020-02-03 11:29:23'),
('Imonfarid40@gmail.com', '$2y$10$AWWxZX43IxBf5c6pb50I8.WF26cU3fuMbQQ83ICSNt88uwmhuam76', '2020-02-06 05:34:02'),
('mostakimrahmanemon6725@gmail.com', '$2y$10$XO7dVWzG5SDcegfzPmNCzeQtYVQ/3/AzZ/Q/veZRHJ9CtLh9RiPn.', '2020-02-08 09:32:53'),
('shahanchowdhury301@gmail.com', '$2y$10$f3j5k1VW7NGevz9N1sqhn.oFEj0d6IHLcNcxFb//j.K2Ku8ltKSHS', '2020-02-13 07:47:53'),
('textshuvro@gmail.com', '$2y$10$Sy6sEjw2KMbwp9ff0yR3MeLooCBXaqyklvs8aspXmeAYTWbzsPwQW', '2019-04-22 23:27:59'),
('tanvirish123@gmail.com', '$2y$10$e2OVDKUo0LzHTI5zuAba8OPfzawRB65kL8gDLR863nodX2ggk99mC', '2019-07-04 06:31:55'),
('rabby8994@gmail.com', '$2y$10$NnuMpCOGvsgko0quhCJqTOF75aCB6L0uFJbV8mUEyM8oOyaD4a3Em', '2019-08-23 08:24:49'),
('merajmahmud78@gmail.com', '$2y$10$6iSBMXNpkw82DfOcjjdRwuMzpdTnHTHTscFRXozmOxqPbkpL6XoYa', '2020-02-27 06:45:42'),
('eftusikder15@gmail.com', '$2y$10$cizKhd242ocaEvur2sMYouknKZIUFmBFSD3L9/GnQGTGPALFguWcy', '2020-02-28 14:02:06'),
('smioni1302@gmail.com', '$2y$10$BQoMq5D8NM0gYCxUXDJz/ukYvHalryi7rbi6c74Pnmy0OitGYQ/NG', '2020-03-03 16:18:41'),
('sahadmd66@gmail.com', '$2y$10$ro3uATvYUGjCcHKuGRl7xOgLalUU9jzdPir/QE6Xtn5GD8iPQJ0Q2', '2020-03-06 16:59:13'),
('annabelle0700555@gmail.com', '$2y$10$q50SxJuVSaj5UjfpLPWRWumlHkQkd1ThA9Dy2btVBH8PI4.ZrOE3i', '2020-03-10 10:36:14'),
('sohel112801@gmail.com', '$2y$10$inygH1VUkZA3bwzeRPPVRex6jYt6/qgZ.UK1JKJrNp3OOqiEoTcXK', '2020-03-10 21:27:26'),
('hhsanto017@gmail.com', '$2y$10$qzZGr9yT3pPKQdRHYQef0O7Vt.80dMPtnDHaMXCTBlOogw0MUE.JO', '2020-03-26 03:28:01'),
('dhjhvkjvv56778@gmail.com', '$2y$10$3oiZCrgS8qVCjGJ6bzBj9.E5WE0B9Q4wZfZgicvktt9zUBVTSdbnC', '2020-03-27 15:40:46'),
('jaberal2000@gmail.com', '$2y$10$lnha4QWrWD1AT38AIEQDVOEmsPvbTYzjZ1iGY6YiOf1./3d1zGHYG', '2020-03-27 19:04:14'),
('rifat2016raj@gmail.com', '$2y$10$/dtvfgpR1RrW5bvjA1i8qOpmZ9q87ujoPGE6JdYUuosLt7wu2ADnq', '2020-03-29 12:53:24'),
('Srabon@yahoo.com', '$2y$10$vgMmyKiTrdeJlrUQ4YnFnexfpw0kA6wteXdiyDg5JfkMZl8jpC9CC', '2020-03-31 15:05:58'),
('Nannuislam@gmail.com', '$2y$10$KNLt53REo7gzssE8loGS2etGvpRU817LwQaZRYEVpoxee4Ag.21O6', '2020-04-01 19:09:44'),
('MD.Nannuislam@gmail.com', '$2y$10$yYc5BJjqimocmKFMXbQUXOrEZOx.UhZufrTezEQwN16JK8aIsbhVS', '2020-04-04 22:42:14'),
('habibsatdhaka@gmail.com', '$2y$10$eEPrThYxdZ8xwa1udsraM.Q3v2p1a/fVRfpeYxYm.9s6T7FRgQiMy', '2020-04-05 01:29:46'),
('parvesparves488@gmail.com', '$2y$10$5JjWygnhLksi9ffQpaznKukrF.9OyGaM7dpM3eN66wHvFF3lMf8dW', '2020-04-05 02:50:45'),
('Aktaruzzaman@gmail.com', '$2y$10$nsd3Z/Rj9.3a6ScU/d48zuPsiJttQp4JTvOWtuO4Yydoq89b5fOu2', '2020-04-05 16:13:13'),
('taslim117853@gmail.com', '$2y$10$CD6KAmIcBKvXXI5h5FKzu.ntfLow3AUl2ry/V.76RnTxy.AfjBqj.', '2020-04-06 03:01:42'),
('fahmiduxxaman@gmail.com', '$2y$10$hagaVrE0uBYKgvf9Ctv.dOp/9a2GcRKMw0OkkuVmHqxuQwUJoA8ca', '2020-04-06 20:26:48'),
('rhira8996@gmail.com', '$2y$10$Vn2AlDLOciSbA9c4oGAOweqfwHWHM7bekzayWlELGtG8lneArDPi6', '2020-04-06 22:48:07'),
('mdmushfiqurrahmanafnan126@gmail.com', '$2y$10$QsPqZm.XYoXoNoDqTC/.5eu49BI3XJQp3Qbrw68KLuhRv2RvdwSUK', '2020-04-08 21:35:50'),
('mdrahmatu001@gmail.com', '$2y$10$DqYjpCBQPAx.MXFaBdCRs.feRIg506BHH7dT3yjM4mrFKsoPxISrq', '2020-04-10 15:10:24'),
('mdsiam2003@gmail.com', '$2y$10$21D5LMgiVpoTvxSO/BvineRhDJwOx.XZ1qP.PfQSJPTxjU9BVEPQS', '2020-04-11 23:30:58'),
('imdnazmul414@gmail.com', '$2y$10$R1E03aKMfnDl9LPIZ9LhqebqixU.4GUVHpu1INxEOCuQhSZUsSwYq', '2020-04-12 02:37:35'),
('mdamirulislam@email.com', '$2y$10$PzyNDA1fQbRK3p7ltwlgwuPnRQwvifq3hObdlAaALAXqiCTBwITzW', '2020-04-14 13:47:22'),
('fm.irfan99@gmail.com', '$2y$10$8EW/bUTCLAXCZhHwPsLWKOxErBpfIrSifs1hHJaQ.WkTiPSLg.9DS', '2020-04-14 15:55:11'),
('shemon@gmail.com', '$2y$10$ONBD2Ousjys9NnUX2i6myOjcFyisY/TWH7EGIBGlj0GiOSJ/1OO4q', '2020-04-16 10:10:40'),
('01881954003@gmail.com', '$2y$10$FTQPWiUBgI.ptqnMBwEdCevj/LT.TsVDSmpG.oHL4w5HtOpnqk3EW', '2020-04-16 10:45:14'),
('arefinshuvo143@yahoo.com', '$2y$10$1tQ1dcrl1EzXevcvdXytHu8l4Scl/7Z53H.tSfAqAlatYhEEZcyYm', '2020-04-17 20:02:15'),
('tanzimahmed934@gmail.com', '$2y$10$h5naKY/.10cEF1zkjzXsl./ibsUeoBReZ4oVpyWXBNnoHbKl.XJay', '2020-04-20 22:57:18'),
('mahbub188657@gmail.com', '$2y$10$kuQI8cLaRH4wdF0DLdjVh.UlRmUsnoftt4pgHn0F6po.im36hzTja', '2020-04-23 00:46:57'),
('mohtasimul2002@gmail.com', '$2y$10$CQrZLVxF3QnxYgdY7RuatujR9YcufyDqcVFTGILdFRAjMGAHTIfYO', '2020-04-25 19:58:57'),
('shardaralamin.bd01909715918@gmail.com', '$2y$10$nBp9HlE9Rr58c5jEnoi69uQ/./ZVOGD6BhHejZv4ssyml7CKsmtZu', '2020-04-26 14:27:08'),
('ratuldeyovi@gmail.com', '$2y$10$BlD/8beduZchCAKWGxypQuLiUPRskB8qmfpAlvT0hXoUhJ1jk4yw6', '2020-04-27 00:22:14'),
('ahammad.atik.ullah.9@gmail.com', '$2y$10$6OxrjYezwR8L.10XwhtT3.FFH0oStmp22BM9Xp.y.XuMxFy1.GCCq', '2020-04-29 01:52:08'),
('hossainshaon1033@gmail.com', '$2y$10$vids.5Mmm1aAmRmEyVrJoOQMIA99b7HUtdiom4iq7HAXH3lGp4ueW', '2020-04-29 14:59:57'),
('maharabhossainmredul@gmail.com', '$2y$10$d3CUYYqTRvTCaLTsuejteeez3t2..qpPGxZz8bat.9GJxSHhqWIiC', '2020-04-29 17:51:18'),
('ananyaniyaroy@gmail.com', '$2y$10$IGTfyuyAodYiydgEoZCxae.XYIfgbXj1zk94FiKrRnQNgAw31pgJu', '2020-05-04 04:23:58'),
('muhammadridoy202@gmail.com', '$2y$10$cHih6jqo22GUdr5KaMcAx.y2jUBlgECLzDD0z9oPlVhCyS29B7UZu', '2020-05-10 14:02:58'),
('abdullahkafi108@gmail.com', '$2y$10$j0hPuhipA6MLoWhAJ311FOC3j.QEeKkmz5UnZKaOZRy808y/Hen56', '2020-05-11 01:12:05'),
('sumona.191913@gmail.com', '$2y$10$hdyh8ThTZfVLvxdshRXUserkEY7C8CfzouL5JmsRtIme2nSMtveLy', '2020-05-11 01:43:19'),
('MD.Aktaruzzaman@gmail.com', '$2y$10$ct8RGWgk9UlUcpx.NTqgUujAuZpdB0ZC1KQ6nKNo0UxLtad.wXfSu', '2020-05-11 02:05:45'),
('shazeyahasan@gmail.com', '$2y$10$bKtwGkyc1wE4odeDNGg94urGZHCESR8tC952TGGCUIgycYxLxPQr2', '2020-05-13 18:16:03'),
('shazeyau@gamil.com', '$2y$10$15RZ2QlQ6R9a.uKPaAkbPexMh.V0NDGSfSMNe0Lnk8kpk3o4ugD0W', '2020-05-13 18:33:42'),
('shamsunnaharshurovy080@gmail.com', '$2y$10$f3fL5bgdsO/KVfRZ9Bt/X.enoHcEqKbyRJA0EReYB9QJ5eEldDi4K', '2020-05-13 20:44:46'),
('tuhin6185@gmail.com', '$2y$10$EhuvT20MKGdxYYbTVaPgx.JAsvUvC2X8lRhzmCFbPUwFnmsNOE3ky', '2020-05-15 18:28:13'),
('azratabassumwrideta@gmail.com', '$2y$10$P1ZxF4p8vDOhJQvx2AZOHeMbD0URQ7YvwoTBmqaBB3WT9HBUinCyu', '2020-05-20 00:07:19'),
('readergamer46@gmail.com', '$2y$10$wCvoB1DuqasFeIFEf9aQKeY9JqneBcoxYXE52MBLSNl5tg0mgALGi', '2020-05-21 15:27:51'),
('shahrukhahmed619@yahoo.com', '$2y$10$iHz45/sTmIIKT86NfKULGu3x.CL1QjyDEB6qkZM3b2.bzScjPEwoO', '2020-05-21 16:18:35'),
('fares124107@gmail.com', '$2y$10$/GBSh1SCGNWc0iQ/wK/KQ.U.SS1aTYkGFsib8AxPzDIZDYPA1PdpC', '2020-05-28 18:36:59'),
('abujargifari@gmail.com', '$2y$10$wMVrDLw5A5p4drVOcB3zyO17EEAWYpBi6uzDJQzaGKJIePxr3xfb6', '2020-06-02 10:11:29'),
('asifshoyebmahbub@gmail.com', '$2y$10$Gghj.zQYyiNs2H/QXzBmjep9cw2TB4RZuCH.C7sUhjyYeaE7.5No.', '2020-06-04 16:09:03'),
('sownokroy234@gmail.com', '$2y$10$dRCv3wKsYJV.oP21E4oCNubNHrdWM3M9pQhBKwr/oJCgf7IwuuZey', '2020-06-07 02:10:36'),
('sanzidamirza1@gmail.com', '$2y$10$2XoRM/KRB2DZXzZ7v50tEeKskfzae3yrMkqPNjrgaLeWvHMSkGO3O', '2020-06-14 22:10:25'),
('sritykhatun99@gmail.com', '$2y$10$UrYD9iUaUDUvXQYHtivyTebxxD91/9kNqUIktbj27gjBvq15T1pva', '2020-06-16 21:59:14'),
('gailormsbyqut@gmail.com', '$2y$10$cGCXS3TCtkhLEp4Y7KfoUeP0vxAQtoNL.6NbdDU.ltfGM7kevPhUa', '2020-06-19 05:48:51'),
('mahedihasan23217@gmail.com', '$2y$10$r3STPQa1.wOchiQ/PUF8XOUsdvnrCiRRr6XEKy4MrxKjPMyqxnkM2', '2020-06-21 04:12:40'),
('purnimasaha130@gmail.com', '$2y$10$qhMZArYUwWwzi6x74ofCtezrWGtOIwNwkJ1G.K3crf.VUZBTy6N9a', '2020-06-26 04:22:33'),
('root.acare@gmail.com', '$2y$10$SgBitcWje2vW6qwpPo3hm.2i0YxpXHvugqVu/x5kgLoQvlKWT0Fme', '2020-06-26 21:15:22'),
('hazrataliheaveen@gmail.com', '$2y$10$qaRpBp792fpQvDRummWHVO2NjtnZ4czM5C89lhfhx10HtaORavIiy', '2020-06-27 17:07:12'),
('hrtechpro9.06.2020@gmail.com', '$2y$10$WS.AolcdUMfZXqUFUkW1Aux10gUdQD8LUSvoafhsDV5Mkxtlv83CG', '2020-06-27 22:35:30'),
('farheensohail@gmail.com', '$2y$10$3dqzyj8D6870DAG3waqFRuwWfvLiyFsM6c.SD00gnnb/CI0Z0KD4O', '2020-06-29 17:50:04'),
('nasrinsultana1970@gmail.com', '$2y$10$8DISakuUFL8pDLiCMRtjt.SPC9lJwNDJ3YZx1mLz1hFXwCMJa5LFC', '2020-07-02 15:38:03'),
('rafiqulshariatpur950@gmail.com', '$2y$10$P0urgkoATyITI7VPm/UuWuaogZWqOGCFt2d0bq3DkuOOMexXywxK2', '2020-07-08 19:50:06'),
('kheirulsk970@gmail.com', '$2y$10$u4698J9hLM4mh2oLMvxJ5OWyHD5YnK2h3UUMr14LfgFWo6NApunPi', '2020-07-11 14:36:26'),
('math@gmail.com', '$2y$10$mTVbAf67VXKC7m7fiMOybOT3gh8rfb/LVHvza5SJ32.D3Rd/Y/JKy', '2020-07-15 20:26:46'),
('ai7007357@gmail.com', '$2y$10$dLxLCKQPiLmIMUBuHE4DWuEn0lprR6JvuQaf03Yfer6.DsHyOXyNy', '2020-07-18 11:52:41'),
('raisul.mahi.islam@gmail.com', '$2y$10$Q5P74oO.NhFLDvlQG.6dzO/qp/QEXcLkVrg6wSiUxIt4Wp9wBEJhu', '2020-08-06 22:16:15'),
('tanvirhasan14gram@gmail.com', '$2y$10$CycDibyNGtTiRShg43rFiu1fN//3Q4qdOifZex6.AhKLF.aaJwuaK', '2020-08-10 20:10:35'),
('tanvirhasantanvi@gmail.com', '$2y$10$.ENpQH7R3FsscfdgngDeEedplcVyTr71NwTiQoLLz9KyIQ9AHdqp6', '2020-08-14 22:40:58'),
('mdabuyousufmunna@gmail.com', '$2y$10$IhJANK.skmrrjifV9el/RO.pqy.9snOVeesxfAI1Hei4mZtOkS45u', '2020-08-15 14:20:49'),
('rubayetmahin2@gmail.com', '$2y$10$kVo51QwenBcceM0WVlfjkOCWs1u/bh1alGzYSMGfv9B7q9ou6fxPS', '2020-08-18 02:48:36'),
('Saadabdullah1234@gmail.com', '$2y$10$0p/7zOaUkQY1Bb5S4kEx0eGAxaB18nm8ITS2nK4lLa1h9VB6B/Qo.', '2020-08-20 01:57:31'),
('abeekobeeck5266@gmail.com', '$2y$10$qD7juDLK/BE0yk0e4IaYdOHkC4jDampa.K0xHpQc3onjF/mXU.fnS', '2020-08-30 11:51:40'),
('tanvirfaiaz520@gmail.com', '$2y$10$ym6wQl3mViSi/8SobxB/9euVSoG2jDvopm1epc2hmz29lsBx59jYu', '2020-08-30 19:58:58'),
('akibndc20@gmail.com', '$2y$10$.f/7jiGJy28c8hg5cuPGje1QhGdXxP4LAE/2.O9lOYib4vcxGNIRm', '2020-08-31 05:16:08'),
('smd929244@gmail.com', '$2y$10$LvBUUzBm828e/qh/CsdQg.rI3fc0cS90uoXCsBXNt/DT2NgwmFqry', '2020-08-31 08:59:39'),
('rahul24.h3@gmail.com', '$2y$10$z9HB6d1oG9mEK0Fonn31genOvs4SCF2B2bHryaYBGZC9OoPhsHg..', '2020-08-31 14:11:20'),
('nafis.zami@gmail.com', '$2y$10$gmkY8TWwF.xoLeK9aF/HR.ocYV8Lv17v4gKRVZlcDZShIJmzCoqzC', '2020-09-01 03:13:16'),
('robomahim@gmail.com', '$2y$10$iv2hGyoMRaxKtfLH4OXtTumZAzD4Z9CubGFjC2NXwWoIGvM8hGpJS', '2020-09-01 05:40:05'),
('ha4504664@gmail.com', '$2y$10$xj8u0ZdhhDD4d6nsrdjIuuDnrezKyvoPvbFpuAXJd3oNTwJD8DbJO', '2020-09-01 13:06:40'),
('mdkallal420@gmail.com', '$2y$10$gLQyRYScSdBap6M.vhBwb.iSTwcwt5lejEtrsRkbw7e0qXOFOGSa6', '2020-09-01 18:00:09'),
('yaksafu2020@gmail.com', '$2y$10$aG7dy/qiwjtCz5Hm3pMmkus4TR2UVWBGvPM.Db./Sho4ZTfJJurZG', '2020-09-01 21:51:57'),
('tasmiakhan.naziba@gmail.com', '$2y$10$CxZ3lJjX2MafcaC1Rq19COv7TAPQQxt3/R0dQTo4Uc7kJJhxA5Wum', '2020-09-02 19:03:42'),
('jahangiralamjony84@gmail.com', '$2y$10$SNgtGu/JgTJry2x2jTu4he2foSMURZ7FQiuQKtQ6q8hNWM7bgBWyq', '2020-09-02 23:06:19'),
('abc@xyz.com', '$2y$10$bDNX6lOArLF7zQnAZwpwQOuf/WZMH42vRTykoc3lRDPD0MA78J3.e', '2020-09-03 18:46:54'),
('fahmidah34@gmail.com', '$2y$10$gcELUZK7r6Pb0lNU2xROEOa6Q5mdOV8x4FqbpSIgRGuWARv5K1tSS', '2020-09-04 03:56:08'),
('abdulkyium.differ@gmail.com', '$2y$10$XTkKVSItJsrD4gaM9jlILeKl6k4JC156TSuw93egImg7y4PRMUT42', '2020-09-04 05:21:48'),
('ndc.shuvro@gmail.com', '$2y$10$p8ysA027pY0GYIYaI/PvyetmIGAvh582bvh3ExJD.HB3f.J0lhghS', '2020-09-03 18:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `pdfs`
--

CREATE TABLE `pdfs` (
  `id` int(10) UNSIGNED NOT NULL,
  `video_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'roots-plus-logo.png',
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pdfs`
--

INSERT INTO `pdfs` (`id`, `video_id`, `title`, `pdf_link`, `thumbnail`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, '1', 'Class Lecture PDF', NULL, 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, '2020-03-26 22:20:16', NULL),
(2, '2', 'Class Lecture PDF', 'https://drive.google.com/open?id=1vBRRDcC5s2yd5drtrOviMaVttWSQVXFq', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(3, '3', 'Class Lecture PDF', 'https://drive.google.com/open?id=1yVbYjPuQ76YzF79vd2d9PgqB6d532hCX', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(4, '4', 'Class Lecture PDF', 'https://drive.google.com/open?id=1QhElda-_g9wDzs3GK-Me2KHOsYWEkMqc', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(5, '5', 'Class Lecture PDF', 'https://drive.google.com/open?id=1QhElda-_g9wDzs3GK-Me2KHOsYWEkMqc', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(6, '6', 'Class Lecture PDF', 'https://drive.google.com/open?id=1X4nH7OVcVF93snrrvpjouq8waPjULtd3', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(8, '8', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Y_kXyF2WF06VFhF-vcl-NKZ0uKVjz3wn', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(9, '9', 'Class Lecture PDF', 'https://drive.google.com/open?id=1hcoCRKq32zhHtE5yv1NwOaHs_GSBOS3c', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(10, '10', 'Class Lecture PDF', 'https://drive.google.com/open?id=19OkwzEuGzcySB63zhwKZ3QemeWZ6Jjpk', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(11, '11', 'Class Lecture PDF', 'https://drive.google.com/open?id=1pXsd4YKu4CCf9nCPs2nqeJJSfvYWmuZ9', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(12, '12', 'Class Lecture PDF', 'https://drive.google.com/open?id=1EgQaNtP6S_OqDapJYeadkzYmO4QJ4p5-', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(13, '13', 'Class Lecture PDF', 'https://drive.google.com/open?id=1EgQaNtP6S_OqDapJYeadkzYmO4QJ4p5-', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(14, '14', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Kg-4-tWvpKRwDt5hYt9dmu_6YzmAJdmO', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(15, '15', 'Class Lecture PDF', 'https://drive.google.com/open?id=12sBvtnaWkUSG3k5ip6VLPVgQCdJpFllh', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(16, '16', 'Class Lecture PDF', 'https://drive.google.com/open?id=1OazZR5M5_Y_VsKEYty51ZwElYFSSsJCV', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(17, '17', 'Class Lecture PDF', 'https://drive.google.com/open?id=1QLI59S9xxM3N49WTutonHA1rM8S75i19', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(18, '18', 'Class Lecture PDF', 'https://drive.google.com/open?id=1EH3NINF7f9v2XJBPZypl8jfyaChgAhKX', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(19, '19', 'Class Lecture PDF', 'https://drive.google.com/open?id=1SZYYO3zMkjU5jirtaUb10zMoUcps_FvL', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(20, '20', 'Class Lecture PDF', 'https://drive.google.com/open?id=1MOlLbQFYC3tPl0HmbBD0O7cWDVcI5RpQ', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(21, '21', 'Class Lecture PDF', 'https://drive.google.com/open?id=1csAripbaMW09CjGFtXnQ_CWVf21TClZ4', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(22, '22', 'Class Lecture PDF', 'https://drive.google.com/open?id=1OEyb3zPLWKc2M1WaTRW8cfomLU2aejZz', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(23, '23', 'Class Lecture PDF', 'https://drive.google.com/open?id=1OEyb3zPLWKc2M1WaTRW8cfomLU2aejZz', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(24, '24', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Jjp4W62B2mAb8Q7LXzE1jb0T4AAfukon', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(25, '25', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Jjp4W62B2mAb8Q7LXzE1jb0T4AAfukon', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(26, '26', 'Class Lecture PDF', 'https://drive.google.com/open?id=193AEHGPC0Yno--6qsWAhMwG-zPCfENol', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(27, '27', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Ak-Vv4fJgvVQGiJEvqdxPLOCQ34HjMLK', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(28, '28', 'Class Lecture PDF', 'https://drive.google.com/open?id=1fc2sXpwdx-GqG8EPSQmQzVqG1oT0lyZl', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(29, '29', 'Class Lecture PDF', 'https://drive.google.com/open?id=1fc2sXpwdx-GqG8EPSQmQzVqG1oT0lyZl', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(30, '30', 'Class Lecture PDF', 'https://drive.google.com/open?id=1ycrzhX-rUMMPAe9Ee72d1DSi0NrsCoMH', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(31, '31', 'Class Lecture PDF', 'https://drive.google.com/open?id=1KhP-ClyYUt2JNNrLCkvbfYuQAQ73LaXd', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(32, '32', 'Class Lecture PDF', 'https://drive.google.com/open?id=1KhP-ClyYUt2JNNrLCkvbfYuQAQ73LaXd', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(33, '33', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Lcl3Kz_rNiVjKMeyxPTgbCU92IZ9lkFz', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(34, '34', 'Class Lecture PDF', 'https://drive.google.com/open?id=1wYV_D3upLB2hpbA6Zr9WBPZz7N0j1FGD', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(35, '35', 'Class Lecture PDF', 'https://drive.google.com/open?id=1zR_nQhHKzkl2R0tJqiYqGbXNi237xLeC', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(36, '36', 'Class Lecture PDF', 'https://drive.google.com/open?id=1aquiObC4yDN_uBEsFzJ6HAVN135Xg5C4', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(37, '37', 'Class Lecture PDF', 'https://drive.google.com/open?id=1X14yBbVXbcrWlMY35t8t6_KJTpXf6lmr', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(38, '38', 'Class Lecture PDF', 'https://drive.google.com/open?id=1gtuEjQJzEMuPZkvtR-8GI-SvqTVBHDOj', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(39, '39', 'Class Lecture PDF', 'https://drive.google.com/open?id=1gtuEjQJzEMuPZkvtR-8GI-SvqTVBHDOj', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(40, '40', 'Class Lecture PDF', 'https://drive.google.com/open?id=1-VzsDqTo76EVBMqKmHz4un4v-cF4-bzq', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(41, '41', 'Class Lecture PDF', 'https://drive.google.com/open?id=1OFPyxIan6o8cqM-EUNy_rnejGI6tGWW0', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(42, '42', 'Class Lecture PDF', 'https://drive.google.com/open?id=1EUxNplQrFW7aV6PKrmDEbXeb0CZQgTqy', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(43, '43', 'Class Lecture PDF', 'https://drive.google.com/open?id=1sVsLZmFGIIgXjUSBDQOZtWv8jsh6Evee', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(44, '44', 'Class Lecture PDF', 'https://drive.google.com/open?id=1rQaa2F4VlevioiFn2vZsXmasA3on40cm', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(45, '45', 'Class Lecture PDF', 'https://drive.google.com/open?id=16Ei-A0yLuyZUvAszH0UTKc44-XlirfX-', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(46, '46', 'Class Lecture PDF', 'https://drive.google.com/open?id=1mkaV2IgwEjifDf1s47qedFMPOoB8KuTt', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(47, '47', 'Class Lecture PDF', 'https://drive.google.com/open?id=1GhhKvDf9ShqqHYw89WzkeFs_QZAnAQy5', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(48, '48', 'Class Lecture PDF', 'https://drive.google.com/open?id=1gkJTiL-C6OAFpqXgxLYJ0M24xuE1fwSI', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(49, '49', 'Class Lecture PDF', 'https://drive.google.com/open?id=1nfo5LEgn09geVTcHLYhCfER6ymsSIoNp', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(50, '50', 'Class Lecture PDF', 'https://drive.google.com/open?id=1_vE55WT5T-FYvRV7tMBgt7wLaAnFZYKc', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(51, '51', 'Class Lecture PDF', 'https://drive.google.com/open?id=1BU8Yj3qSspqqPRn3poRXPNLXxd2dq0PX', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(52, '52', 'Class Lecture PDF', 'https://drive.google.com/open?id=1d9Vk0Nl2C801m3TXjoXAY2L8JRcJMZ6k', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(53, '53', 'Class Lecture PDF', 'https://drive.google.com/open?id=1VLV3SRHGPi4zq1Di7xHmTl75PRuEH4G3', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(54, '54', 'Class Lecture PDF', 'https://drive.google.com/open?id=1d8cJfMWbUEqOmmVCaiGNjmIQxxSjxKqv', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(55, '55', 'Class Lecture PDF', 'https://drive.google.com/open?id=1uM000-bFDsg8HZsqbftPJzK5iXGMQpiM', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(56, '56', 'Class Lecture PDF', 'https://drive.google.com/open?id=1jaMuKc2jNZ3W4wUYxE-F7HZBid8YDgmJ', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(57, '57', 'Class Lecture PDF', 'https://drive.google.com/open?id=1ppR2RYZWmcxAfzkdzWsmcokeYA2eCArx', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(58, '58', 'Class Lecture PDF', 'https://drive.google.com/open?id=1ppR2RYZWmcxAfzkdzWsmcokeYA2eCArx', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(59, '59', 'Class Lecture PDF', 'https://drive.google.com/open?id=1pcBp6t8uQKzrtgxNA7mkBuIkabi_71Q6', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(60, '60', 'Class Lecture PDF', 'https://drive.google.com/open?id=1pcBp6t8uQKzrtgxNA7mkBuIkabi_71Q6', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(61, '61', 'Class Lecture PDF', 'https://drive.google.com/open?id=1BdBETjThqelhdh94ao4uq-dYDgWCipoT', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(62, '62', 'Class Lecture PDF', 'https://drive.google.com/open?id=1EmAf7TDBLIpNJgYqamg3Jm2WT68WJvsI', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(63, '63', 'Class Lecture PDF', 'https://drive.google.com/open?id=180OfEksZfWislUrlkB9yJVz__3sQebY2', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(64, '64', 'Class Lecture PDF', 'https://drive.google.com/open?id=1AQbE2TfcdVleQ5WRopHHj6Z3BLibYSGd', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(65, '65', 'Class Lecture PDF', 'https://drive.google.com/open?id=1AQbE2TfcdVleQ5WRopHHj6Z3BLibYSGd', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(66, '66', 'Class Lecture PDF', 'https://drive.google.com/open?id=1UiglgK0bsJhFOAtJ0_gcgX6OB88phIH2', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(67, '67', 'Class Lecture PDF', 'https://drive.google.com/open?id=1UiglgK0bsJhFOAtJ0_gcgX6OB88phIH2', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(68, '68', 'Class Lecture PDF', 'https://drive.google.com/open?id=1dY1nWb7REmdKoVijOimebeRV4Oup5j5i', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(69, '69', 'Class Lecture PDF', 'https://drive.google.com/open?id=1FDG14JHNobOxsfSBvhQQbb8UNXzUzfcS', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(70, '70', 'Class Lecture PDF', 'https://drive.google.com/open?id=1vtdCBYL0G9xVv66Yudw_mPpVglNv-P6Y', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(71, '71', 'Class Lecture PDF', 'https://drive.google.com/open?id=1GLJRKwfkZwjbhyNPUt3YytWTbahWfiuT', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(72, '72', 'Class Lecture PDF', 'https://drive.google.com/open?id=13dzfU85hc40OYLPycMVwDBkMjNx6nXhk', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(73, '73', 'Class Lecture PDF', 'https://drive.google.com/open?id=16BAwjrqWEVQtWAT5a6v4YNauZrdfH7NA', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(74, '74', 'Class Lecture PDF', 'https://drive.google.com/open?id=16BAwjrqWEVQtWAT5a6v4YNauZrdfH7NA', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(75, '75', 'Class Lecture PDF', 'https://drive.google.com/open?id=1UiglgK0bsJhFOAtJ0_gcgX6OB88phIH2', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(76, '76', 'Class Lecture PDF', 'https://drive.google.com/open?id=1eZghfNHv6EmXU-Fl1aIEdgmQrvsJ7ccF', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(77, '77', 'Class Lecture PDF', 'https://drive.google.com/open?id=1pPw-nVsU29eX4XxCp_b0lMYti5zXLZXF', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(78, '78', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Ssb8UkgXgdAp_JxtS4Z_SmWyAtRGdBIg', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(79, '79', 'Class Lecture PDF', 'https://drive.google.com/open?id=1ko1jZ9xdNLrb89nKQ9Wsj5Igsba1T3n8', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(80, '80', 'Class Lecture PDF', 'https://drive.google.com/open?id=1lra8byavd4PieB-_RLrekTRP-OZoNHgb', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(81, '81', 'Class Lecture PDF', 'https://drive.google.com/open?id=1vTk6XwcZ0YoHPTtl1eP16loM6fVFpRit', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(82, '82', 'Class Lecture PDF', 'https://drive.google.com/open?id=1eP_c6SQpzi-4UbOBCrjtuzncP9Xf3297', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(83, '83', 'Class Lecture PDF', 'https://drive.google.com/open?id=1UKAzcM8H9jMK2nFO3vxA6ViJaapd_geQ', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(84, '84', 'Class Lecture PDF', 'https://drive.google.com/open?id=1xeULIh8jMFaB9Ccz17NaRbhAv1WKtmap', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(85, '85', 'Class Lecture PDF', 'https://drive.google.com/open?id=1d1p3RnqnPcJgWUGddmmIJ1fz9zIyveZK', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(86, '86', 'Class Lecture PDF', 'https://drive.google.com/open?id=1njg2aIy91wU0Th3kFf7Aj-NqSFP9e_1a', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(87, '87', 'Class Lecture PDF', 'https://drive.google.com/open?id=1eP_c6SQpzi-4UbOBCrjtuzncP9Xf3297', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(88, '88', 'Class Lecture PDF', 'https://drive.google.com/open?id=1TzvanZev7qnh8F5EIQqPlygtVPe_gU5l', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(89, '89', 'Class Lecture PDF', 'https://drive.google.com/open?id=1v1YKUBnuPFvHyfX8BgO8luI6mSQkupQb', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(90, '90', 'Class Lecture PDF', 'https://drive.google.com/open?id=1hK5L3xBhIBvtU0EK5KGdx7GeLGvQy5WT', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(91, '91', 'Class Lecture PDF', 'https://drive.google.com/open?id=1hK5L3xBhIBvtU0EK5KGdx7GeLGvQy5WT', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(92, '92', 'Class Lecture PDF', 'https://drive.google.com/file/d/1VByg7QLwKqPdBJmHK3bryApIgJ03mFVj', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(93, '93', 'Class Lecture PDF', 'https://drive.google.com/file/d/1VByg7QLwKqPdBJmHK3bryApIgJ03mFVj', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(94, '94', 'Class Lecture PDF', 'https://drive.google.com/file/d/1VByg7QLwKqPdBJmHK3bryApIgJ03mFVj', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(95, '95', 'Class Lecture PDF', 'https://drive.google.com/open?id=1qxRtEpMGsPXn740MuYKsK02Gqx_Bgq6v', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(96, '96', 'Class Lecture PDF', 'https://drive.google.com/open?id=1qxRtEpMGsPXn740MuYKsK02Gqx_Bgq6v', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(97, '97', 'Class Lecture PDF', 'https://drive.google.com/open?id=1T4h6dAUWLN7DAMC2n8r8hyuiiLDB8Zf9', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(98, '98', 'Class Lecture PDF', 'https://drive.google.com/open?id=1T4h6dAUWLN7DAMC2n8r8hyuiiLDB8Zf9', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(99, '99', 'Class Lecture PDF', 'https://drive.google.com/open?id=1DxawUnXb2SL4aKRrHBkjDK0_PTeZ-xS3', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(100, '100', 'Class Lecture PDF', 'https://drive.google.com/open?id=1MyPOjm8CFY3_Zzc144GK0q-IvAD4KQup', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(101, '101', 'Class Lecture PDF', 'https://drive.google.com/open?id=1VbMO-ABb00Hf1B7av5KhTbSgv4dxKkVV', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(102, '102', 'Class Lecture PDF', 'https://drive.google.com/open?id=1-U3Hp60RC-lhXzBXKEqlrVEVEyYczpym', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(103, '103', 'Class Lecture PDF', 'https://drive.google.com/open?id=1T8qZpPg3h_aXyvTWBByh5Z8Dkz7FGdJk', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(104, '104', 'Class Lecture PDF', 'https://drive.google.com/open?id=1d891at--zf0ZsoYXRSRZrkrRDdhjxFji', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(105, '105', 'Class Lecture PDF', 'https://drive.google.com/open?id=1YBIV5HI_4yj8gegqd9Y6bxmT9aA9oMfh', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(106, '106', 'Class Lecture PDF', 'https://drive.google.com/open?id=18Zl6HstxW8G0oBA2mH92d67QuzQjZg2L', 'storage/roots-plus-logo.png', NULL, '2009-03-20 09:33:00', NULL, NULL, NULL),
(107, '107', 'Class Lecture PDF', 'https://drive.google.com/open?id=138BjeedxDvNonzJJHMGfFMX7XBQWaLe-', 'storage/roots-plus-logo.png', NULL, '2020-03-26 21:50:00', NULL, '2020-04-02 05:07:01', NULL),
(108, '108', 'Class Lecture PDF', 'https://drive.google.com/open?id=16Wos2UUx-r7FV-yuEQ--cjed1VebOAkB', 'storage/roots-plus-logo.png', NULL, '2020-04-02 05:19:54', NULL, '2020-04-02 05:19:54', NULL),
(109, '109', 'Class Lecture PDF', 'https://drive.google.com/open?id=1as6qulnW9b-UMzJZPZ9N4_7NQ6_MftVl', 'storage/roots-plus-logo.png', NULL, '2020-04-02 05:20:24', NULL, '2020-04-02 05:20:24', NULL),
(110, '110', 'Class Lecture PDF', 'https://drive.google.com/open?id=1pK1RzGUEyAOFKbcMn9aZ_2N3llS4JH7M', 'storage/roots-plus-logo.png', NULL, '2020-04-02 23:16:35', NULL, '2020-04-02 23:16:35', NULL),
(111, '111', 'Class Lecture PDF', 'https://drive.google.com/open?id=1E7FdAMBIiX3KrC1KtA2JqVQPpBZbD91J', 'storage/roots-plus-logo.png', NULL, '2020-04-03 00:05:13', NULL, '2020-04-03 00:05:13', NULL),
(112, '112', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Q0FOnEMlEXBH4wjxQmb-AJVGi5eXHa2o', 'storage/roots-plus-logo.png', NULL, '2020-04-03 01:14:48', NULL, '2020-04-03 01:14:48', NULL),
(113, '113', 'Class Lecture PDF', 'https://drive.google.com/open?id=1ZPtjbkUtrkZpTWgkm6OhD58Zfn3vOm_y', 'storage/roots-plus-logo.png', NULL, '2020-04-03 02:47:07', NULL, '2020-04-03 02:47:07', NULL),
(114, '114', 'Class Lecture PDF', 'https://drive.google.com/open?id=1nCBFfkFHWNRkw0SIVy2U5YgSqYejBsKg', 'storage/roots-plus-logo.png', NULL, '2020-04-04 04:50:18', NULL, '2020-04-04 04:50:18', NULL),
(115, '115', 'Class Lecture PDF', 'https://drive.google.com/open?id=1btPfRwb-0So9tzg0pIJSvS3qDs0Sg2F8', 'storage/roots-plus-logo.png', NULL, '2020-04-04 04:53:04', NULL, '2020-04-04 04:53:04', NULL),
(116, '116', 'Class Lecture PDF', 'https://drive.google.com/open?id=1g2uDSq0pGxlaf6HVr0_q6h1s-Aj2xA9g', 'storage/roots-plus-logo.png', NULL, '2020-04-05 01:12:24', NULL, '2020-04-05 01:12:24', NULL),
(117, '117', 'Class Lecture PDF', 'https://drive.google.com/open?id=110V5HnMzocMBsxXzUJKZe8MAqz0ddna3', 'storage/roots-plus-logo.png', NULL, '2020-04-05 01:15:57', NULL, '2020-04-05 01:15:57', NULL),
(118, '118', 'Class Lecture PDF', 'https://drive.google.com/open?id=1b2d64VX0XPlTqnFz7QT2_nsxV9WGrEfW', 'storage/roots-plus-logo.png', NULL, '2020-04-05 23:42:54', NULL, '2020-04-05 23:42:54', NULL),
(119, '119', 'Class Lecture PDF', 'https://drive.google.com/open?id=1nvJGVQ4mG0mOtgle5c5GYc4A0PNBKxTp', 'storage/roots-plus-logo.png', NULL, '2020-04-06 01:32:12', NULL, '2020-04-06 01:51:42', NULL),
(120, '120', 'Class Lecture PDF', 'https://drive.google.com/open?id=1L93yWP5Wy-xFi-a2G7cT6u0BLvfiaaXu', 'storage/roots-plus-logo.png', NULL, '2020-04-06 01:49:17', NULL, '2020-04-06 01:49:17', NULL),
(121, '121', 'Class Lecture PDF', 'https://drive.google.com/open?id=1eUPYvgI5mUkA55e-VoSdEJIKVdcnv6l0', 'storage/roots-plus-logo.png', NULL, '2020-04-06 01:55:36', NULL, '2020-04-06 01:55:36', NULL),
(122, '123', 'Class Lecture PDF', 'https://drive.google.com/open?id=1oDEOyrCaUPhGVqJJAH42g5vr0pZHctvV', 'storage/roots-plus-logo.png', NULL, '2020-04-08 03:22:48', NULL, '2020-04-08 03:22:48', NULL),
(123, '124', 'Class Lecture PDF', 'https://drive.google.com/open?id=19d3OpcQhJEoiOcrtRIBi0dsYB6G24K3l', 'storage/roots-plus-logo.png', NULL, '2020-04-08 04:23:34', NULL, '2020-04-08 04:23:34', NULL),
(124, '125', 'Class Lecture PDF', 'https://drive.google.com/open?id=1ipf3l3s72FHo7GO2Q5fz13cMdM3N-ZjG', 'storage/roots-plus-logo.png', NULL, '2020-04-08 04:31:07', NULL, '2020-04-08 04:31:07', NULL),
(125, '126', 'Class Lecture PDF', 'https://drive.google.com/open?id=1dbk7PtAc3ugvOwEbqKmNlNdkpG1G38ps', 'storage/roots-plus-logo.png', NULL, '2020-04-09 02:43:45', NULL, '2020-04-09 02:43:45', NULL),
(126, '127', 'Class Lecture PDF', 'https://drive.google.com/open?id=1G6YXFek32vf3QgUE2UeZu5LaBJu_Pm2_', 'storage/roots-plus-logo.png', NULL, '2020-04-09 03:32:56', NULL, '2020-04-09 03:32:56', NULL),
(127, '128', 'Class Lecture PDF', 'https://drive.google.com/open?id=1-BwbgxC20r1mfLUnhhrEb3NNbGfm4ZmB', 'storage/roots-plus-logo.png', NULL, '2020-04-09 06:23:12', NULL, '2020-04-09 06:23:12', NULL),
(128, '129', 'Class Lecture PDF', 'https://drive.google.com/open?id=1NBTCLot4eoTKfapPXCF_d8jzB7GY6YWm', 'storage/roots-plus-logo.png', NULL, '2020-04-10 01:06:55', NULL, '2020-04-10 01:06:55', NULL),
(129, '130', 'Class Lecture PDF', 'https://drive.google.com/open?id=15gOYXwb3BHq9OTeQSeFaEtxyhIdeSLyD', 'storage/roots-plus-logo.png', NULL, '2020-04-11 22:14:02', NULL, '2020-04-11 22:14:12', NULL),
(130, '131', 'Class Lecture PDF', 'https://drive.google.com/open?id=1vufTmNaBQSC6tSSdf8vxJNEG3sZs6Q4T', 'storage/roots-plus-logo.png', NULL, '2020-04-12 02:08:12', NULL, '2020-04-12 02:08:12', NULL),
(131, '132', 'Class Lecture PDF', 'https://drive.google.com/open?id=1xfCNJFpQ88yw512ESp1ohHvq27Vy97zR', 'storage/roots-plus-logo.png', NULL, '2020-04-12 02:15:28', NULL, '2020-04-12 02:15:28', NULL),
(132, '133', 'Class Lecture PDF', 'https://drive.google.com/open?id=11yTUwcfmxy5SCTIHL67lnpJ1mMTB2l-4', 'storage/roots-plus-logo.png', NULL, '2020-04-12 02:17:09', NULL, '2020-04-12 02:17:09', NULL),
(133, '134', 'Class Lecture PDF', 'https://drive.google.com/open?id=19hLEQ5FX5MczEKxLMi8R2dmu9W37RACB', 'storage/roots-plus-logo.png', NULL, '2020-04-12 22:28:51', NULL, '2020-04-12 22:28:51', NULL),
(134, '135', 'Class Lecture PDF', 'https://drive.google.com/open?id=1tMK39w4gZqya0iwfWNfZqh5GrUTr9mLf', 'storage/roots-plus-logo.png', NULL, '2020-04-12 23:48:34', NULL, '2020-04-12 23:48:34', NULL),
(135, '136', 'Class Lecture PDF', 'https://drive.google.com/open?id=14ZEQzEKCFuKeZhbIA7NK7J_K6Xm-Xwj9', 'storage/roots-plus-logo.png', NULL, '2020-04-13 23:58:34', NULL, '2020-04-13 23:58:34', NULL),
(136, '137', 'Class Lecture PDF', 'https://drive.google.com/open?id=1-B1QR5GX9fOO62Mspwsl9XZN6AhYmqv9', 'storage/roots-plus-logo.png', NULL, '2020-04-14 00:03:39', NULL, '2020-04-14 00:03:39', NULL),
(137, '138', 'Class Lecture PDF', 'https://drive.google.com/open?id=1QSyko1Pc5LJ9fe950w17uyryoSK1X4Zm', 'storage/roots-plus-logo.png', NULL, '2020-04-14 01:19:16', NULL, '2020-04-14 01:19:16', NULL),
(138, '139', 'Class Lecture PDF', 'https://drive.google.com/open?id=1MwMdoQihQmSOkU20pqxeMhe6l4cYi1k1', 'storage/roots-plus-logo.png', NULL, '2020-04-15 00:32:18', NULL, '2020-04-15 00:32:18', NULL),
(139, '140', 'Class Lecture PDF', 'https://drive.google.com/open?id=1R2YSpEQgKEuld-F7CcSWUzv2aIiSFCrR', 'storage/roots-plus-logo.png', NULL, '2020-04-15 02:03:02', NULL, '2020-04-15 02:03:02', NULL),
(140, '141', 'Class Lecture PDF', 'https://drive.google.com/open?id=1sRcBzi1ZJKRb9akPb_RKmPNXjOCrZFhZ', 'storage/roots-plus-logo.png', NULL, '2020-04-16 01:03:53', NULL, '2020-04-16 01:03:53', NULL),
(141, '142', 'Class Lecture PDF', 'https://drive.google.com/open?id=1c5YX_NCTc3L3-XpVYho8aUD9dkfgNg4l', 'storage/roots-plus-logo.png', NULL, '2020-04-16 03:26:35', NULL, '2020-04-16 03:26:35', NULL),
(142, '143', 'Class Lecture PDF', 'https://drive.google.com/open?id=1XpolkSAsDXeqR7ChNZSrVaitScoi-9C1', 'storage/roots-plus-logo.png', NULL, '2020-04-16 21:14:35', NULL, '2020-04-16 21:14:35', NULL),
(143, '146', 'Class Lecture PDF', 'https://drive.google.com/open?id=1BN2C6XcHqlqXPn1lm74_xKvQEfYz-sfr', 'storage/roots-plus-logo.png', NULL, '2020-04-17 00:32:39', NULL, '2020-04-17 00:32:39', NULL),
(144, '147', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Fa8fcIep_iN21Y9y2hoeu-s3EKqXtpmK', 'storage/roots-plus-logo.png', NULL, '2020-04-17 21:49:07', NULL, '2020-04-17 21:49:07', NULL),
(145, '149', 'Class Lecture PDF', 'https://drive.google.com/open?id=1gPJJ2O6nTiaiuErcSvheRLMoKPoLPp9g', 'storage/roots-plus-logo.png', NULL, '2020-04-19 00:28:24', NULL, '2020-04-19 00:30:04', NULL),
(146, '150', 'Class Lecture PDF', 'https://drive.google.com/open?id=1iDo0usLVh9nZLSsBPZ5f7enRwOflwRPR', 'storage/roots-plus-logo.png', NULL, '2020-04-19 00:51:13', NULL, '2020-04-19 00:51:13', NULL),
(147, '151', 'Class Lecture PDF', 'https://drive.google.com/open?id=116EtxIoEKPrbvgiS4ny0eSZVrSY866aW', 'storage/roots-plus-logo.png', NULL, '2020-04-19 01:00:26', NULL, '2020-04-19 01:00:26', NULL),
(148, '152', 'Class Lecture PDF', 'https://drive.google.com/open?id=1mvAja51otpI5kHuxwIidKWCzZs6DqXgj', 'storage/roots-plus-logo.png', NULL, '2020-04-20 00:01:55', NULL, '2020-04-20 00:01:55', NULL),
(149, '153', 'Class Lecture PDF', 'https://drive.google.com/open?id=1WPm-kHHs1je6XYu6LWXVpZSzNwxI0LfQ', 'storage/roots-plus-logo.png', NULL, '2020-04-21 00:01:11', NULL, '2020-04-21 00:01:11', NULL),
(150, '154', 'Class Lecture PDF', 'https://drive.google.com/open?id=18KWkIeUBkGBkwM77KdU-Gr8bvI9a_joU', 'storage/roots-plus-logo.png', NULL, '2020-04-21 02:01:19', NULL, '2020-04-21 02:01:19', NULL),
(151, '155', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Tj_BIklrCzYoYbqNgkPoxnvd2esiLsDM', 'storage/roots-plus-logo.png', NULL, '2020-04-22 00:09:34', NULL, '2020-04-22 00:09:34', NULL),
(152, '156', 'Class Lecture PDF', 'https://drive.google.com/open?id=1IV6HpofsBbYnQLjsfFFpBVok97YTMRVS', 'storage/roots-plus-logo.png', NULL, '2020-04-22 02:12:49', NULL, '2020-04-22 02:12:49', NULL),
(153, '157', 'Class Lecture PDF', 'https://drive.google.com/open?id=1nqhpsNgJeEHleulT4LVhq2wZL53ZR5w2', 'storage/roots-plus-logo.png', NULL, '2020-04-22 23:34:08', NULL, '2020-04-22 23:34:08', NULL),
(154, '158', 'Class Lecture PDF', 'https://drive.google.com/open?id=1xMxuXg8kB-k8SoN_YwpQF3entEW8TKlE', 'storage/roots-plus-logo.png', NULL, '2020-04-22 23:45:43', NULL, '2020-04-22 23:45:43', NULL),
(155, '159', 'Class Lecture PDF', 'https://drive.google.com/open?id=1GHDFbmzicvk97xmww9JDvrUoTuv1_JwB', 'storage/roots-plus-logo.png', NULL, '2020-04-24 01:05:40', NULL, '2020-04-24 01:05:40', NULL),
(156, '160', 'Class Lecture PDF', 'https://drive.google.com/open?id=1u325m1I4SEHZ1vsyHUC7C44TBfao1mgL', 'storage/roots-plus-logo.png', NULL, '2020-04-24 01:43:53', NULL, '2020-04-24 01:43:53', NULL),
(157, '161', 'Class Lecture PDF', 'https://drive.google.com/open?id=1neb4JHY049zBR1af5PdwnD0Ds5ZvMLQO', 'storage/roots-plus-logo.png', NULL, '2020-04-24 01:46:30', NULL, '2020-04-24 01:46:30', NULL),
(158, '162', 'Class Lecture PDF', 'https://drive.google.com/open?id=1buAVsjqxaFsMYtfokUlbv6unlSUVRPJ1', 'storage/roots-plus-logo.png', NULL, '2020-04-24 21:53:51', NULL, '2020-04-24 21:53:51', NULL),
(159, '164', 'Class Lecture PDF', 'https://drive.google.com/open?id=1HyJ_GhINbUbIcjjvO2dJYQv1W-hDvmJW', 'storage/roots-plus-logo.png', NULL, '2020-04-24 23:57:48', NULL, '2020-04-24 23:57:48', NULL),
(160, '165', 'Class Lecture PDF', 'https://drive.google.com/open?id=1uWvIuMgf8j0adiSJnbKlhQMshRipzkkk', 'storage/roots-plus-logo.png', NULL, '2020-04-24 23:58:58', NULL, '2020-04-24 23:58:58', NULL),
(161, '166', 'Class Lecture PDF', 'https://drive.google.com/open?id=1qi5icANUM9ZdWDN_gkfo_qiycJzws2m-', 'storage/roots-plus-logo.png', NULL, '2020-04-25 23:36:35', NULL, '2020-04-25 23:36:35', NULL),
(162, '168', 'Class Lecture PDF', 'https://drive.google.com/open?id=16U4xZVFWR0LKfcuFJzv5CR7h_MDMw1jc', 'storage/roots-plus-logo.png', NULL, '2020-04-26 23:44:49', NULL, '2020-04-26 23:44:49', NULL),
(163, '167', 'Class Lecture PDF', 'https://drive.google.com/open?id=1SIzaK9OCM_obEMPu5j5wcxfi3umuNPP6', 'storage/roots-plus-logo.png', NULL, '2020-04-26 23:45:18', NULL, '2020-04-26 23:45:18', NULL),
(164, '169', 'Class Lecture PDF', 'https://drive.google.com/open?id=1jMrPOgBJo0jrU8-hI6FecHtBcHDq3CRn', 'storage/roots-plus-logo.png', NULL, '2020-04-27 23:00:00', NULL, '2020-04-27 23:00:00', NULL),
(165, '170', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Ljrq0hiQ2Yy_tSrkcX_jf3LxbqVx5Veh', 'storage/roots-plus-logo.png', NULL, '2020-04-28 00:49:02', NULL, '2020-04-28 00:49:02', NULL),
(166, '171', 'Class Lecture PDF', 'https://drive.google.com/open?id=1KXgYAsmohH9wQVCljS00p6U-wUQMaPNC', 'storage/roots-plus-logo.png', NULL, '2020-04-28 23:59:46', NULL, '2020-04-28 23:59:46', NULL),
(167, '172', 'Class Lecture PDF', 'https://drive.google.com/open?id=171KBYAZqK3paxqzuvLNLpbFyQRrT8O9K', 'storage/roots-plus-logo.png', NULL, '2020-04-30 00:30:51', NULL, '2020-04-30 00:30:51', NULL),
(168, '174', 'Class Lecture PDF', 'https://drive.google.com/open?id=1yjyYNqIInse6g5lRD_WIRr5LZfCKiMu0', 'storage/roots-plus-logo.png', NULL, '2020-04-30 03:16:15', NULL, '2020-04-30 03:16:15', NULL),
(169, '173', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Y5KloP1_wlFbK8RS-muPC6CpWn6Bto1A', 'storage/roots-plus-logo.png', NULL, '2020-04-30 03:16:17', NULL, '2020-04-30 03:16:17', NULL),
(170, '175', 'Class Lecture PDF', 'https://drive.google.com/open?id=1za6RvgSpFhdWYmX6CMTnmgcd0WZocw7x', 'storage/roots-plus-logo.png', NULL, '2020-05-08 05:01:14', NULL, '2020-05-08 05:01:14', NULL),
(171, '176', 'Class Lecture PDF', 'https://drive.google.com/open?id=1awXgxiWfS1eCMClMPT8lVnzOiZOd_qr2', 'storage/roots-plus-logo.png', NULL, '2020-05-09 00:47:58', NULL, '2020-05-09 00:47:58', NULL),
(172, '177', 'Class Lecture PDF', 'https://drive.google.com/open?id=16UA2ECeBKfZPSvR9FMprou8maIJne1sv', 'storage/roots-plus-logo.png', NULL, '2020-05-09 00:49:18', NULL, '2020-05-09 00:49:18', NULL),
(173, '178', 'Class Lecture PDF', 'https://drive.google.com/open?id=1gku0Rs2tCL5tpaufEW0-gmvz-PVwNmy4', 'storage/roots-plus-logo.png', NULL, '2020-05-11 00:11:43', NULL, '2020-05-11 00:11:43', NULL),
(174, '179', 'Class Lecture PDF', 'https://drive.google.com/open?id=12ZO8hnx9rZYyZa3oOjLI42s9-KEYDedK', 'storage/roots-plus-logo.png', NULL, '2020-05-11 00:13:06', NULL, '2020-05-11 00:13:06', NULL),
(175, '180', 'Class Lecture PDF', 'https://drive.google.com/open?id=1IXNJMmzwolzgotui8YS2h3v_NzNmxqIR', 'storage/roots-plus-logo.png', NULL, '2020-05-11 00:56:10', NULL, '2020-05-11 00:56:10', NULL),
(176, '181', 'Class Lecture PDF', 'https://drive.google.com/open?id=1IrueOT3f5jCMDjtwnDx-veq-k8nEOFM3', 'storage/roots-plus-logo.png', NULL, '2020-05-15 00:28:49', NULL, '2020-05-15 00:28:49', NULL),
(177, '182', 'Class Lecture PDF', 'https://drive.google.com/open?id=1Ekt0YjGssj2U1xgKEp6sQKSO3j-4r4qM', 'storage/roots-plus-logo.png', NULL, '2020-05-15 02:50:38', NULL, '2020-05-15 02:50:38', NULL),
(178, '183', 'Class Lecture PDF', 'https://drive.google.com/open?id=1v4-MyXesQRiGG0aRvZm3s8KyBbdJMLly', 'storage/roots-plus-logo.png', NULL, '2020-05-16 00:00:17', NULL, '2020-05-16 00:00:17', NULL),
(179, '184', 'Class Lecture PDF', 'https://drive.google.com/open?id=1f_oIGd_Kzt089ipBI23QFXwRCTHukSZm', 'storage/roots-plus-logo.png', NULL, '2020-05-17 00:36:25', NULL, '2020-05-17 00:36:25', NULL),
(180, '185', 'Class Lecture PDF', 'https://drive.google.com/open?id=1acJwn1ThNng4cIpnL_saOUokQOmDY-Uh', 'storage/roots-plus-logo.png', NULL, '2020-05-17 02:04:33', NULL, '2020-05-17 02:04:33', NULL),
(181, '186', 'Class Lecture PDF', 'https://drive.google.com/open?id=1a3fWK0Bu-P7CwF8pdwsBtiokZOmx-dQl', 'storage/roots-plus-logo.png', NULL, '2020-05-17 02:06:02', NULL, '2020-05-17 02:06:02', NULL),
(182, '187', 'Class Lecture PDF', 'https://drive.google.com/open?id=1yeMQiFqkpLyjzbA9ZVxWs6LHAHkQ701C', 'storage/roots-plus-logo.png', NULL, '2020-05-18 01:53:59', NULL, '2020-05-18 01:53:59', NULL),
(183, '188', 'Class Lecture PDF', 'https://drive.google.com/open?id=1-4Vgm8d4GPixorqpjmPjiXXp6BJwawGW', 'storage/roots-plus-logo.png', NULL, '2020-05-18 02:06:18', NULL, '2020-05-18 02:06:18', NULL),
(184, '192', 'Class Lecture PDF', 'https://drive.google.com/open?id=19r-h5Ze6XZ7ZAupUP-mCShpvzg27WSk_', 'storage/roots-plus-logo.png', NULL, '2020-05-19 23:54:41', NULL, '2020-05-19 23:54:41', NULL),
(185, '193', 'Class Lecture PDF', 'https://drive.google.com/open?id=1kSli4ha4ar0P_XijFOmA3dApLhIGfQRH', 'storage/roots-plus-logo.png', NULL, '2020-05-21 01:24:21', NULL, '2020-05-21 01:24:21', NULL),
(186, '194', 'Class Lecture PDF', 'https://drive.google.com/open?id=1hKwDeSxkffilUCDkZQLBrPq0XIxsS7Pk', 'storage/roots-plus-logo.png', NULL, '2020-05-21 03:16:20', NULL, '2020-05-21 03:16:20', NULL),
(187, '195', 'Class Lecture PDF', 'https://drive.google.com/open?id=1ENmBJE9NapJ8SzBXSgm4ljCtvH6MUiPH', 'storage/roots-plus-logo.png', NULL, '2020-05-21 03:18:09', NULL, '2020-05-21 03:18:09', NULL),
(188, '196', 'Class Lecture PDF', 'https://drive.google.com/open?id=1PywdNocVTYIdC5fs_uoFtPKpA3cfh6WI', 'storage/roots-plus-logo.png', NULL, '2020-05-21 03:19:21', NULL, '2020-05-21 03:19:21', NULL),
(189, '197', 'Class Lecture PDF', 'https://drive.google.com/open?id=1aH_frXbFcJvPHsLuxuYCBMRJufhzc4s2', 'storage/roots-plus-logo.png', NULL, '2020-05-22 01:10:19', NULL, '2020-05-22 01:10:19', NULL),
(190, '198', 'Class Lecture PDF', 'https://drive.google.com/open?id=184wQ9xe7sGnBYRudAgdS9i8Ouidcb6yS', 'storage/roots-plus-logo.png', NULL, '2020-05-22 02:40:53', NULL, '2020-05-22 02:40:53', NULL),
(191, '200', 'Class Lecture PDF', 'https://drive.google.com/open?id=1kBSG14yetMVnGwwA7B44dNNCmE77SWHO', 'storage/roots-plus-logo.png', NULL, '2020-05-23 00:34:02', NULL, '2020-05-23 00:34:02', NULL),
(192, '199', 'Class Lecture PDF', 'https://drive.google.com/open?id=1P8E9DEroj70lq22Gw7OgcyO2ooXtbnvJ', 'storage/roots-plus-logo.png', NULL, '2020-05-23 00:40:06', NULL, '2020-05-23 00:40:06', NULL),
(193, '201', 'Class Lecture PDF', 'https://drive.google.com/file/d/1s7uJ3yIGFBdbLGXz8r2ccFAyMAGQge_v/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-03 23:43:26', NULL, '2020-06-03 23:43:26', NULL),
(194, '202', 'Class Lecture PDF', 'https://drive.google.com/file/d/1eTfraRVfoBP2HsFrjpyEE5TOGZenwj0z/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-04 00:51:35', NULL, '2020-06-04 00:51:35', NULL),
(195, '203', 'Class Lecture PDF', 'https://drive.google.com/file/d/1XhXKOj92U9kxCRmbDp2keSE2sxZXUGvp/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-07 03:23:18', NULL, '2020-06-07 03:23:18', NULL),
(196, '204', 'Class Lecture PDF', 'https://drive.google.com/file/d/1W7qlSpeDdkH5pqsAteEsV3f6CSPzD5SM/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-08 02:35:00', NULL, '2020-06-08 02:35:00', NULL),
(197, '205', 'Class Lecture PDF', 'https://drive.google.com/file/d/1DTbkYm1uzeRCpg_S0xcLeQNTrAdfJISe/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-19 00:12:08', NULL, '2020-08-20 15:27:00', NULL),
(198, '206', 'Class Lectur PDF', 'https://drive.google.com/file/d/19x6PYBrv7vywRlh9fVB-uRoOEcs-F396/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-19 04:51:13', NULL, '2020-06-19 04:51:13', NULL),
(199, '207', 'Class Lecture PDF', 'https://drive.google.com/file/d/1W6nTLR8Rstti7TifrlW3H73kgdIGYUOF/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-20 00:26:45', NULL, '2020-08-20 15:26:28', NULL),
(200, '208', 'Class Lecture PDF', 'https://drive.google.com/file/d/1RwME4ZKJ5OcRsIzTXGKjlxlvv88FqzCc/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-20 03:36:55', NULL, '2020-07-04 23:22:20', NULL),
(201, '209', 'Class Lecture PDF', 'https://drive.google.com/file/d/1K8SFzFmwrEag5GunFnyrTlxby1mnkLPm/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-24 21:55:45', NULL, '2020-06-24 21:55:45', NULL),
(202, '210', 'Class Lecture PDF', 'https://drive.google.com/file/d/1YujNVD0MwKvR9P23zxYBSKSkj4IRN8x-/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-27 23:38:13', NULL, '2020-06-27 23:38:13', NULL),
(203, '211', 'Class Lecture PDF', 'https://drive.google.com/file/d/1N4d0zb5wIwgOApnaWloNWg8U2HTsyB12/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-06-29 01:45:34', NULL, '2020-06-29 01:45:34', NULL),
(204, '212', 'Class Lecture PDF', 'https://drive.google.com/file/d/1jGPxPzt-kVQF_iuiy_x_Ugfay2ctDqgI/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-05 01:47:31', NULL, '2020-07-05 01:47:31', NULL),
(205, '213', 'Class Lecture PDF', 'https://drive.google.com/file/d/1Nt9QgLlxz3_lh--4O_FMi22y3GtdrL_u/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-07 01:25:24', NULL, '2020-07-07 01:25:24', NULL),
(206, '214', 'Class Lecture PDF', 'https://drive.google.com/file/d/1P3ReGrgKDarDsKOGwuOhMuNk6K3sF5xK/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-09 01:45:23', NULL, '2020-07-09 01:45:23', NULL),
(207, '215', 'Class Lecture PDF', 'https://drive.google.com/file/d/1b_8JjcikNBfnwaXpcatnOCvM655AwLSe/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-12 23:36:52', NULL, '2020-07-12 23:36:52', NULL),
(208, '216', 'Organic Chemistry 08', 'https://drive.google.com/file/d/1f3AblLJKgUnsX_Pg2dGLaV-q1Ivn--2J/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-14 02:06:47', NULL, '2020-07-14 02:06:47', NULL),
(209, '217', 'Physical Optics 01 Plus', 'https://drive.google.com/file/d/1cfPTOy4_uqmjmgqy-qR_V0gnn_WmjNkT/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-14 02:29:00', NULL, '2020-07-14 02:29:00', NULL),
(210, '218', 'Physical Optics 03', 'https://drive.google.com/file/d/1ayc1SozbDwHOClPNeqK8hAMQYYZ0QvRN/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-15 01:47:57', NULL, '2020-07-15 01:47:57', NULL),
(211, '219', 'Class Lecture PDF', 'https://drive.google.com/file/d/1kj_hZAYDNBrL6EBzZ-KGY4M3aOfsyrGP/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-16 01:28:29', NULL, '2020-07-16 01:28:29', NULL),
(212, '220', 'Class Lecture PDF', 'https://drive.google.com/file/d/1TID5FzUoGS_aHU4umEnv_BaOVGRGiMIQ/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-16 01:30:05', NULL, '2020-07-16 01:30:05', NULL),
(213, '221', 'Class Lecture PDF', 'https://drive.google.com/file/d/1kzVpdtTW7E5R1hu9CWM2pj8fDWqsRyLI/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-16 01:31:11', NULL, '2020-07-16 01:31:11', NULL),
(214, '222', 'Class Lecture PDF', 'https://drive.google.com/file/d/1WlbdQ451kHl6NbofeZ7bnXT9WBYGax5Q/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-17 01:02:51', NULL, '2020-07-17 01:02:51', NULL),
(215, '223', 'Class Lecture PDF', 'https://drive.google.com/file/d/19BaDPl-pxBCTrOQV0Ti3A_PUNKic4TqS/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-19 01:38:12', NULL, '2020-07-19 01:38:12', NULL),
(216, '225', 'Class Lecture PDF', 'https://drive.google.com/file/d/1t0JNQQT9Y6zmkEpr69Osvm5Xe3yOVVFa/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-19 01:40:32', NULL, '2020-07-19 01:40:32', NULL),
(217, '226', 'Class Lecture PDF', 'https://drive.google.com/file/d/12K8g96lsJz8KLmMB17SXt1BJQeX_HFD2/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-07-20 01:53:00', NULL, '2020-07-20 01:53:00', NULL),
(218, '227', 'Class Lecture PDF', 'https://drive.google.com/file/d/1fyOuIZMCVKWWmy0lQGjqyN1ZhZzV9lSm/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-07 02:55:47', NULL, '2020-08-07 02:55:47', NULL),
(219, '228', 'Class Lecture PDF', 'https://drive.google.com/file/d/15mnfYwJEUgSYb8CQST9MLqBJVwRZkMql/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-07 03:31:49', NULL, '2020-08-07 03:31:49', NULL),
(220, '229', 'Class Lecture PDF', 'https://drive.google.com/file/d/1pkXDhtQEkq_L1GINynEQxRQ8l3xOT96J/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-10 02:10:34', NULL, '2020-08-10 02:10:34', NULL),
(221, '230', 'Class Lecture PDF', 'https://drive.google.com/file/d/1qPsoD7fA3TtzorY43BzEbLAVHGP9dlZF/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-10 02:15:57', NULL, '2020-08-10 02:15:57', NULL),
(222, '231', 'Class Lecture PDF', 'https://drive.google.com/file/d/1WlN7T-9NjubJEAYxVO5Zhiq4zLSsfVQJ/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-16 01:52:54', NULL, '2020-08-16 01:52:54', NULL),
(223, '232', 'Class Lecture PDF', 'https://drive.google.com/file/d/1OuIwW3vK7OrhxnuEUJHcpDDN7r0mGp9Q/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-16 02:00:37', NULL, '2020-08-16 02:00:37', NULL),
(224, '233', 'Class Lecture PDF', 'https://drive.google.com/file/d/17dt1XobdGEecHeVeVxYfcjpFpbuFX5ZP/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-17 23:50:38', NULL, '2020-08-17 23:50:38', NULL),
(225, '234', 'Class Lecture PDF', 'https://drive.google.com/file/d/1Or95DluGfdnZmtEc4DD7oQ8IldXlKk9v/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-18 01:35:36', NULL, '2020-08-18 01:35:36', NULL),
(226, '235', 'Class Lecture PDF', 'https://drive.google.com/file/d/101G4F6l9MKJfCbj3L45Sd89BrVeyysfA/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-18 01:41:29', NULL, '2020-08-18 01:41:29', NULL),
(227, '236', 'Class Lecture PDF', 'https://drive.google.com/file/d/1T9cqSQJWMQ7o8TMup23PkzRS94GV6iz8/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-18 02:13:34', NULL, '2020-08-18 02:13:34', NULL),
(228, '237', 'Class Lecture PDF', 'https://drive.google.com/file/d/1VOweVbxCrXKUt2h-Gpg1PWeakuRzYK0o/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-19 02:10:44', NULL, '2020-08-19 02:10:44', NULL),
(229, '238', 'Class Lecture PDF', 'https://drive.google.com/file/d/1vU4GrICmaESTuwKVSSzGYfnCaiAr4EEb/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-21 01:51:28', NULL, '2020-08-21 01:51:28', NULL),
(230, '239', 'Class Lecture PDF', 'https://drive.google.com/file/d/19Q54-kw-14GeguyPdZ7p4YOz-zIy0VRm/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-21 02:47:27', NULL, '2020-08-21 02:47:27', NULL),
(231, '240', 'Class Lecture PDF', 'https://drive.google.com/file/d/1ruyzt5Y-kdS38U7QEU4KZecs5TXtKgfI/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-21 02:57:11', NULL, '2020-08-21 02:57:11', NULL),
(232, '241', 'Class Lecture PDF', 'https://drive.google.com/file/d/1yDROBWmabo17Un164CLz_gLXJYkSGaiR/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-21 15:25:46', NULL, '2020-08-21 15:25:46', NULL),
(233, '242', 'Class Lecture PDF', 'https://drive.google.com/file/d/1b_VeWDCWYPXzu9llEy4Ot0JkHPYlLhyf/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-22 01:07:09', NULL, '2020-08-22 01:07:09', NULL),
(234, '243', 'Class Lecture PDF', 'https://drive.google.com/file/d/1boRVTb6I3fvdJVtoCB62caKi7reR7z91/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-23 01:45:59', NULL, '2020-08-23 01:45:59', NULL),
(235, '244', 'Class Lecture PDF', 'https://drive.google.com/file/d/1Kanm0p9Nh9C6lHkV1IPrgYsxgu5rc-8Z/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-23 02:17:40', NULL, '2020-08-23 02:17:40', NULL),
(236, '245', 'Class Lecture PDF', 'https://drive.google.com/file/d/1e4RSf__JpWs9_nggicE0ppdv7KHjlhDu/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-23 02:51:53', NULL, '2020-08-23 02:51:53', NULL),
(237, '246', 'Class Lecture PDF', 'https://drive.google.com/file/d/1it4sVOMdaYlM1VrGvaYRTNbHzZQrqrHL/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-23 02:59:12', NULL, '2020-08-23 02:59:12', NULL),
(238, '247', 'Class Lecture PDF', 'https://drive.google.com/file/d/18D3uu7BzJoM5GUPVXA7Vl67BnwvbO71m/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-23 04:12:22', NULL, '2020-08-23 04:12:22', NULL),
(239, '248', 'Class Lecture PDF', 'https://drive.google.com/file/d/18D3uu7BzJoM5GUPVXA7Vl67BnwvbO71m/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-23 04:55:32', NULL, '2020-08-23 04:55:32', NULL),
(240, '249', 'Class Lecture PDF', 'https://drive.google.com/file/d/1flwNX8n_3qTRn--qqxDAxMEb7ihbyjsn/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-24 00:06:46', NULL, '2020-08-24 00:06:46', NULL),
(241, '250', 'Class Lecture PDF', 'https://drive.google.com/file/d/1VLEqfpdV6RP1NhGwthbFQgl0tU0mxIsZ/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-24 00:10:17', NULL, '2020-08-24 00:10:17', NULL),
(243, '252', 'Class Lecture PDF', 'https://drive.google.com/file/d/1i_lPMubIVJ1myXk08hXMiFRRvehO6Nmz/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-24 02:30:42', NULL, '2020-08-24 02:30:42', NULL),
(244, '253', 'Class Lecture PDF', 'https://drive.google.com/file/d/1yWnVvXbZUbPx0NoZnFHXDkXedpSMFjwp/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-24 03:03:51', NULL, '2020-08-24 03:03:51', NULL),
(245, '254', 'Class Lecture PDF', 'https://drive.google.com/file/d/190s9-FBhURo_3q-EgTqDtgDK-iNhsKr2/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-25 01:03:56', NULL, '2020-08-25 01:03:56', NULL),
(246, '255', 'Class Lecture PDF', 'https://drive.google.com/file/d/1mOQnBoqdTUMSAUGnXRflk00wY8baEbOa/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-25 01:21:09', NULL, '2020-08-25 01:21:09', NULL),
(247, '256', 'Class Lecture PDF', 'https://drive.google.com/file/d/1N6SebyMO1j3cG_o_6Oj3eOiOQCXWrFGs/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-25 04:38:18', NULL, '2020-08-25 04:38:18', NULL),
(248, '257', 'Class Lecture PDF', 'https://drive.google.com/file/d/1_32xbvvxZpuueTluR5zj_MJTpFK73NK8/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-25 04:56:33', NULL, '2020-08-25 04:56:33', NULL),
(249, '258', 'Class Lecture PDF', 'https://drive.google.com/file/d/1abk34f6qoZiglHHtfuh-LAGd5r15lLAr/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-26 02:44:31', NULL, '2020-08-26 02:44:31', NULL),
(250, '259', 'Class Lecture PDF', 'https://drive.google.com/file/d/1TgaY8El1oJlIrKJZS3Jhrzxj5rkBsksj/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-27 00:16:25', NULL, '2020-08-27 00:16:25', NULL),
(251, '260', 'Class Lecture PDF', 'https://drive.google.com/file/d/1YfIoweVg4aGFaUV39KH_AaO79-BzSVmR/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-27 00:54:22', NULL, '2020-08-27 00:54:22', NULL),
(252, '261', 'Class Lecture PDF', 'https://drive.google.com/file/d/1DOwf9vGGU01h0YidD3bbOsxzGjO3Mx5f/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-27 04:25:36', NULL, '2020-08-27 04:25:49', NULL),
(253, '262', 'Class Lecture PDF', 'https://drive.google.com/file/d/1jV4rmA_FjMYan3RZIzcowlX1CWpmIE4t/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-27 04:27:37', NULL, '2020-08-27 04:27:37', NULL),
(254, '263', 'Class Lecture PDF', 'https://drive.google.com/file/d/1MyzYAWSn9EyZHveD4567NJe_7aIPp0aH/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-28 02:28:11', NULL, '2020-08-28 02:28:11', NULL),
(255, '264', 'Class Lecture PDF', 'https://drive.google.com/file/d/1pyAo5jZOfTacKlZNro8QeWKol86TZcor/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-29 04:04:58', NULL, '2020-08-29 04:04:58', NULL),
(256, '265', 'Class Lecture PDF', 'https://drive.google.com/file/d/1EH_E98Ak-98dklFAoEGQpJzkQYu3cM_C/view?usp=sharing', 'storage/roots-plus-logo.png', NULL, '2020-08-30 02:55:45', NULL, '2020-08-30 02:55:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pdf_lists`
--

CREATE TABLE `pdf_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pdf_lists`
--

INSERT INTO `pdf_lists` (`id`, `title`, `pdf_link`, `material_post_id`, `created_at`, `updated_at`) VALUES
(1, 'স্থির তড়িৎ (Static Electricity)', '[{\"download_link\":\"pdf-lists\\/March2020\\/5r6myP581R6SGpSmAztS.pdf\",\"original_name\":\"P-23_Part 1.pdf\"}]', 1, '2020-03-26 04:24:48', '2020-03-26 04:24:48'),
(2, 'মৌলের পর্যায়বৃত্ত ধর্ম ও রাসায়নিক বন্ধন (Part 1)', '[{\"download_link\":\"pdf-lists\\/March2020\\/OpX0Piume5p4xA7Bh37m.pdf\",\"original_name\":\"C-5.pdf\"}]', 1, '2020-03-26 04:42:17', '2020-03-26 04:42:17'),
(3, 'অন্তরীকরণ (Differentiation) Part 3', '[{\"download_link\":\"pdf-lists\\/March2020\\/qJ8ifPMAYpZNDaa9xBlt.pdf\",\"original_name\":\"M-18.pdf\"}]', 1, '2020-03-26 04:44:53', '2020-03-26 04:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(2, 'role-create', 'web', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(3, 'role-edit', 'web', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(4, 'role-delete', 'web', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(5, 'role-list', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(6, 'role-create', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(7, 'role-edit', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(8, 'role-delete', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(9, 'user-list', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(10, 'user-create', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(11, 'user-edit', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(12, 'user-delete', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(13, 'crud-list', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(14, 'crud-create', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(15, 'crud-edit', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(16, 'crud-delete', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(17, 'course-list', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(18, 'course-create', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(19, 'course-edit', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58'),
(20, 'course-delete', 'admin', '2020-07-17 02:08:58', '2020-07-17 02:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct_ans` int(11) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `exam_id`, `question`, `option_1`, `option_2`, `option_3`, `option_4`, `correct_ans`, `order`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(31, '3', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', 3, 0, 1, NULL, NULL, NULL, NULL),
(32, '3', NULL, NULL, NULL, NULL, NULL, 4, 1, 1, NULL, NULL, NULL, NULL),
(33, '3', NULL, NULL, NULL, NULL, NULL, 4, 2, 1, NULL, NULL, NULL, NULL),
(34, '3', NULL, NULL, NULL, NULL, NULL, 4, 3, 1, NULL, NULL, NULL, NULL),
(35, '3', NULL, NULL, NULL, NULL, NULL, 2, 4, 1, NULL, NULL, NULL, NULL),
(36, '3', NULL, NULL, NULL, NULL, NULL, 2, 5, 1, NULL, NULL, NULL, NULL),
(37, '3', NULL, NULL, NULL, NULL, NULL, 2, 6, 1, NULL, NULL, NULL, NULL),
(38, '3', NULL, NULL, NULL, NULL, NULL, 1, 7, 1, NULL, NULL, NULL, NULL),
(39, '3', NULL, NULL, NULL, NULL, NULL, 3, 8, 1, NULL, NULL, NULL, NULL),
(40, '3', NULL, NULL, NULL, NULL, NULL, 3, 9, 1, NULL, NULL, NULL, NULL),
(41, '3', NULL, NULL, NULL, NULL, NULL, 1, 10, 1, NULL, NULL, NULL, NULL),
(42, '3', NULL, NULL, NULL, NULL, NULL, 4, 11, 1, NULL, NULL, NULL, NULL),
(43, '3', NULL, NULL, NULL, NULL, NULL, 3, 12, 1, NULL, NULL, NULL, NULL),
(44, '3', NULL, NULL, NULL, NULL, NULL, 2, 13, 1, NULL, NULL, NULL, NULL),
(45, '3', NULL, NULL, NULL, NULL, NULL, 1, 14, 1, NULL, NULL, NULL, NULL),
(46, '3', NULL, NULL, NULL, NULL, NULL, 2, 15, 1, NULL, NULL, NULL, NULL),
(47, '3', NULL, NULL, NULL, NULL, NULL, 3, 16, 1, NULL, NULL, NULL, NULL),
(48, '3', NULL, NULL, NULL, NULL, NULL, 2, 17, 1, NULL, NULL, NULL, NULL),
(49, '3', NULL, NULL, NULL, NULL, NULL, 3, 18, 1, NULL, NULL, NULL, NULL),
(50, '3', NULL, NULL, NULL, NULL, NULL, 3, 19, 1, NULL, NULL, NULL, NULL),
(51, '3', NULL, NULL, NULL, NULL, NULL, 3, 20, 1, NULL, NULL, NULL, NULL),
(52, '3', NULL, NULL, NULL, NULL, NULL, 3, 21, 1, NULL, NULL, NULL, NULL),
(53, '3', NULL, NULL, NULL, NULL, NULL, 1, 22, 1, NULL, NULL, NULL, NULL),
(54, '3', NULL, NULL, NULL, NULL, NULL, 2, 23, 1, NULL, NULL, NULL, NULL),
(55, '3', NULL, NULL, NULL, NULL, NULL, 2, 24, 1, NULL, NULL, NULL, NULL),
(56, '3', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><msqrt><mn>5</mn></msqrt><mn>4</mn></msup><mroot><mn>6</mn><mn>3</mn></mroot><mo>&#160;</mo><mi mathvariant=\"normal\">&#960;</mi><mfenced open=\"|\" close=\"|\"><mtable><mtr><mtd><mn>3</mn></mtd><mtd><mn>4</mn></mtd></mtr><mtr><mtd><mn>2</mn></mtd><mtd><mn>5</mn></mtd></mtr></mtable></mfenced></math></p>', 3, 0, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `course_id`, `rating`, `text`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 3, NULL, 1, '2021-02-07 01:24:15', NULL, NULL),
(2, 7, 3, NULL, 1, '2021-02-07 01:24:15', NULL, NULL),
(3, 7, 3, NULL, 1, '2021-02-07 01:24:15', NULL, NULL),
(4, 2, 5, NULL, 1, '2021-02-07 01:24:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2020-07-17 02:09:20', '2020-07-17 02:09:20'),
(2, 'User', 'web', '2020-07-17 02:19:49', '2020-07-17 02:19:49');

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
(1, 2),
(2, 2),
(3, 2),
(4, 2),
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
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_materials`
--

CREATE TABLE `study_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_materials`
--

INSERT INTO `study_materials` (`id`, `title`, `text`, `post_by`, `created_at`, `updated_at`) VALUES
(1, 'HSC 2020 Crash Course', '<p><span style=\"color: #ff00ff;\"><strong>For HSC 2020 Examinees</strong></span></p>', 2, '2020-03-26 04:22:38', '2020-03-26 04:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `class_features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `course_id`, `title`, `banner`, `order`, `class_features`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(7, 2, 'Physics (HSC 2021)', 'storage/subjects/May2020/MVzeOmHd1xyvxU99isSn.png', NULL, 'Detailed Theory; Mathematical Problem Solve; Result Booster tips and tricks; Advance Problems for BUET/University/Medical Admission Test; Shortcut Techniques', NULL, '2019-05-09 08:58:00', NULL, '2020-05-06 18:31:41', NULL),
(8, 2, 'Chemistry (HSC 2021)', 'storage/subjects/May2020/70W6XxUjhffg85I5VUaO.png', NULL, 'Detailed Theory; Mathematical Problem Solve; Result Booster tips and tricks; Advance Problems for BUET/University/Medical Admission Test; Shortcut Techniques', NULL, '2019-05-09 11:37:00', NULL, '2020-05-06 18:30:45', NULL),
(9, 2, 'Math (HSC 2021)', 'storage/subjects/May2020/VeKghFhXjSAEBy99pNjF.png', NULL, 'Detailed Theory; Mathematical Problem Solve; Result Booster tips and tricks; Advance Problems for BUET/University Admission Test; Shortcut Techniques', NULL, '2019-05-09 11:37:00', NULL, '2020-05-06 18:31:15', NULL),
(11, 7, 'Physics (HSC 2020)', 'storage/subjects/May2020/0Ni258SgRnIw1tm4aquf.png', NULL, 'Detailed Theory; Mathematical Problem Solve; Result Booster tips and tricks; Advance Problems for BUET/University/Medical Admission Test; Shortcut Techniques', NULL, '2019-05-09 11:41:00', NULL, '2020-05-06 18:30:31', NULL),
(12, 7, 'Chemistry (HSC 2020)', 'storage/subjects/May2020/HZunHPgBpZFm7bFHmNWl.png', NULL, 'Detailed Theory; Mathematical Problem Solve; Result Booster tips and tricks; Advance Problems for BUET/University/Medical Admission Test; Shortcut Techniques', NULL, '2019-05-09 11:45:00', NULL, '2020-05-06 18:30:06', NULL),
(13, 7, 'Math (HSC 2020)', 'storage/subjects/May2020/Gyh93Qta0ip9MxoiEuTN.png', NULL, 'Detailed Theory; Mathematical Problem Solve; Result Booster tips and tricks; Advance Problems for BUET/University Admission Test; Shortcut Techniques', NULL, '2019-05-09 11:46:00', NULL, '2020-05-06 18:29:48', NULL),
(15, 5, 'Physics (Engineering + Varsity + Sci-Tech Admission Booster Course 2020)', 'storage/subjects/May2020/TMKfkN4OHiRBkj205Jxu.png', NULL, 'Detailed Theory; Mathematical Problem Solve; Result Booster tips and tricks; Advance Problems for BUET/University/Medical Admission Test; Shortcut Techniques', NULL, '2019-05-09 11:51:00', NULL, '2020-07-13 14:52:27', NULL),
(16, 5, 'Chemistry (Engineering + Varsity + Sci-Tech Admission Booster Course 2020)', 'storage/subjects/May2020/5NCN3CfsAL9hzbJJe9R0.png', NULL, 'Detailed Theory; Mathematical Problem Solve; Result Booster tips and tricks; Advance Problems for BUET/University/Medical Admission Test; Shortcut Techniques', NULL, '2019-05-09 11:51:00', NULL, '2020-07-13 14:53:11', NULL),
(18, 5, 'Math (Engineering + Varsity + Sci-Tech Admission Booster Course 2020)', 'storage/subjects/May2020/EcTg26rXwsEOEKAXkh1V.png', NULL, 'Detailed Theory; Mathematical Problem Solve; Result Booster tips and tricks; Advance Problems for BUET/University Admission Test; Shortcut Techniques', NULL, '2019-05-09 11:52:00', NULL, '2020-07-13 14:54:18', NULL),
(21, 7, 'Previous Live Class (HSC 2020)', 'storage/subjects/May2020/DXthMNQI7zT6g9ygl42a.png', NULL, NULL, NULL, '2020-04-16 21:08:00', NULL, '2020-05-10 23:36:51', NULL),
(22, 2, 'Doubt Clearing Class (HSC 2021)', 'storage/subjects/May2020/o1d7CR3lTz7cCn5nVG5e.png', NULL, NULL, NULL, '2020-04-20 23:46:00', NULL, '2020-05-10 23:33:00', NULL),
(23, 7, 'Test Paper Solve (HSC 2020)', NULL, NULL, NULL, NULL, '2020-08-16 01:49:00', NULL, '2020-08-16 01:50:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `created_at`, `updated_at`, `photo`) VALUES
(2, 'Tahir Hasan Riddha', '2019-04-24 05:06:18', '2020-05-06 17:45:00', 'teachers/May2020/OWG987XTvSDZXZ90UzPQ.png'),
(3, 'Jumshadur Rahaman Xihad', '2019-04-24 05:06:29', '2020-05-06 17:44:43', 'teachers/May2020/xWiaGsVAbZ7GptM4Yd4l.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'profile/profile.png',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` int(11) DEFAULT 1,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_session` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firebase_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `phone`, `avatar`, `address`, `password`, `is_verified`, `settings`, `email_verified_at`, `remember_token`, `active_session`, `created_at`, `updated_at`, `firebase_token`) VALUES
(1, 1, 'Admin', 'admin@admin.com', '01855367819', 'storage/profile/profile.png', 'Banasree,Dhaka', '$2y$10$NDsYva/u7KvcJMQY.5bKjeJd1znyK5SVI3Q2Xi35d2XFpSPWmwAmu', 1, '{\"locale\":\"en\"}', NULL, 'KZWy1ItfuFAOjFEXJ7gH7mFrvvlelf7xCY9OSczwWmuZDCpUIK3GgXj9vowQ', 'lrJ50Kpo0DIrkrWvyp5pimaFw7OX7tuZBuc7MYjk', '2018-11-05 05:24:39', '2021-03-02 04:31:33', 'eIf5CXAKTPqUTBQrJyOOgr:APA91bG43VtTHNPMbW5AyQpHrn4Lhbto6I91TnutKJji33AX93sae2WtiJlyVtCYBhC8qGrQzD5pq2AdyOPA1U8afHKN4x1yhiXdOZXhURspHf_NUA2Nmocc6AoV-wYrwSKXfUH24fi3'),
(2, 1, 'Admin 02', 'admin2@admin.com', '01855367817', 'storage/profile/profile.png', NULL, '$2y$10$W0XTMz3tldINcUp5.6b4nel2/idMGC2Qmbq/OE9Ap.23DdG8BxDpu', 1, '{\"locale\":\"en\"}', NULL, 'M0R7pTAd3fBRhcQBEs4XVVAzLWswrRdaxpMIaZZuCp1AvSLqHj7B8Y4qJdWW', 'mCbs80twSwSZhhSN1WBw0Ob60VwUTLWsmqxSC3Tj', '2018-11-05 05:24:39', '2020-11-26 15:01:58', 'eIf5CXAKTPqUTBQrJyOOgr:APA91bG43VtTHNPMbW5AyQpHrn4Lhbto6I91TnutKJji33AX93sae2WtiJlyVtCYBhC8qGrQzD5pq2AdyOPA1U8afHKN4x1yhiXdOZXhURspHf_NUA2Nmocc6AoV-wYrwSKXfUH24fi3'),
(3, 1, 'Admin 01', 'admin1@admin.com', '01855367818', 'storage/profile/profile.png', NULL, '$2y$10$W0XTMz3tldINcUp5.6b4nel2/idMGC2Qmbq/OE9Ap.23DdG8BxDpu', 1, '{\"locale\":\"en\"}', NULL, 'M0R7pTAd3fBRhcQBEs4XVVAzLWswrRdaxpMIaZZuCp1AvSLqHj7B8Y4qJdWW', 'mCbs80twSwSZhhSN1WBw0Ob60VwUTLWsmqxSC3Tj', '2018-11-05 05:24:39', '2020-11-26 15:01:58', 'eIf5CXAKTPqUTBQrJyOOgr:APA91bG43VtTHNPMbW5AyQpHrn4Lhbto6I91TnutKJji33AX93sae2WtiJlyVtCYBhC8qGrQzD5pq2AdyOPA1U8afHKN4x1yhiXdOZXhURspHf_NUA2Nmocc6AoV-wYrwSKXfUH24fi3');

-- --------------------------------------------------------

--
-- Table structure for table `user_social_media`
--

CREATE TABLE `user_social_media` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_social_media`
--

INSERT INTO `user_social_media` (`id`, `user_id`, `facebook`, `twitter`, `instagram`, `linkedin`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'facebook', 'twitter', 'instagram	', 'linkedin', NULL, 1, NULL, NULL, '2020-12-12 01:04:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `video_url_id` varchar(191) DEFAULT NULL,
  `thumbnail` varchar(191) DEFAULT '''roots-plus-logo.png''',
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `is_youtube` int(11) DEFAULT 0,
  `is_free` int(11) DEFAULT 0,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `chapter_id`, `title`, `video_url_id`, `thumbnail`, `description`, `price`, `is_youtube`, `is_free`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 14, 'P-01', 'WnLkuFq-pCM', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(2, 1, 'P-02', 'dsPB83fAFcU', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(3, 1, 'P-03', 'LlCN8rQuyv8', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(4, 15, 'P-04,05', '407220038', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:10:59'),
(6, 16, 'P-12,13', '407209377', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:16:48'),
(8, 3, 'P-14', '413976365', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-05-02 01:25:25'),
(9, 3, 'P-15', '407210915', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:15:43'),
(10, 17, 'P-16', 'Z8KmUWZ6pJ4', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(11, 17, 'P-17', '407223263', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:09:21'),
(12, 18, 'P-18,19', '407215722', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:13:28'),
(14, 19, 'P-20', '407223977', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:08:56'),
(15, 19, 'P-21', '407225229', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:08:37'),
(16, 2, 'P-22', 'BUOJO-lrNSc', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(17, 2, 'P-23 (Part 1)', 'IuX_y_Ar5-c', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(18, 2, 'P-23 (Part 2)', 'PubbIFHTXBU', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(19, 2, 'P-23 (Part 3)', 'ubQUz_VlPWI', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(20, 20, 'P-24', '407220884', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:10:20'),
(21, 20, 'P-25', '407221504', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:10:00'),
(22, 21, 'P-26,27', '407216544', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:12:57'),
(24, 22, 'P-28,29', '407214752', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:14:14'),
(26, 4, 'P-30', '6t0JlDHHu-M', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(27, 4, 'P-31', '407222050', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:09:41'),
(28, 23, 'P-32,33', '407212264', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:14:58'),
(30, 5, 'C-01', '8kENnmUXY60', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(31, 5, 'C-02 (Part 2)', '4X2wFqp_f8Q', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(32, 5, 'C-02 (Part 3)', 'KKiJsZ3QjHs', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(33, 5, 'C-03', 'CIcIq53NUtI', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(34, 5, 'C-04', 'WYX5HU3JnIo', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(35, 6, 'C-24', 'wzpE1mb7Gms', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(36, 6, 'C-25', 'EvYIRut9Vc4', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(37, 6, 'C-26', 'Kol216MsubU', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(38, 6, 'C-27 (Part 1)', 'TRbs6SGm9yA', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(39, 6, 'C-27 (Part 2)', 'bx8CKzuBB8U', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(40, 6, 'C-28', '407247219', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:49:22'),
(41, 6, 'C-29', '407246438', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:49:59'),
(42, 6, 'C-30', 'TQolQQVg8JA', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(43, 8, 'C-35', 'Blf7aiKv_MI', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(44, 8, 'C-36', '407248265', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:48:59'),
(45, 8, 'C-37', '407248993', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:47:33'),
(46, 9, 'M-01', 'Wu0b802Y6ZQ', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(47, 11, 'M-03', 'nL-9o2pMyEI', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(48, 11, 'M-04', 'IFsLkk0VxBM', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(49, 11, 'M-05', '407226587', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:07:46'),
(50, 27, 'M-08', 'm3XbIyr7TRY', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(51, 25, 'M-11', '4XCJ4ibBD0U', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(52, 25, 'M-12', '2qVZ8EhjmPw', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(53, 25, 'M-13', '407230059', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:05:36'),
(54, 26, 'M-16', '05dg6NugGjA', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(55, 10, 'M-19', 'jxagO5R-r60', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(56, 10, 'M-20', 'Qus-J4jmxcg', 'storage/roots-plus-logo.png', NULL, 0, 1, 1, NULL, NULL, '2020-03-04 00:05:00', NULL, NULL),
(57, 29, 'M-26,27', '407235434', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:02:23'),
(59, 28, 'M-28,29', '407233979', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:03:46'),
(61, 24, 'M-34', '407227208', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:07:29'),
(62, 24, 'M-35', '407227954', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:07:06'),
(63, 24, 'M-36', '407228431', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:06:49'),
(64, 30, 'C-19', '407249445', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:46:54'),
(65, 30, 'C-20', '407249884', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:45:32'),
(66, 30, 'C-21', '407250111', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:45:06'),
(67, 30, 'C-22', '407250517', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:44:42'),
(68, 31, 'C-05', '407242970', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:52:16'),
(69, 31, 'C-06', '407243742', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:51:51'),
(70, 31, 'C-07', '407244494', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:51:29'),
(71, 31, 'C-08', '407245266', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:51:01'),
(72, 31, 'C-09', '407245898', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:50:32'),
(73, 32, 'P-06,07', '407208439', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:17:19'),
(76, 10, 'M-21', '407239233', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:58:48'),
(77, 26, 'M-17', '407230928', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:05:20'),
(78, 26, 'M-18', '407231851', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:05:00'),
(79, 42, 'C-31', '407240900', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:56:26'),
(80, 42, 'C-32', '407251021', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:44:15'),
(81, 42, 'C-33', '407240426', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:56:52'),
(82, 46, 'M-14,15', '407235005', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:02:51'),
(83, 27, 'M-09', '407236017', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:01:50'),
(84, 25, 'M-10', '407233652', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:04:06'),
(85, 45, 'M-06', '407238342', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:59:36'),
(86, 45, 'M-07', '407237887', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:00:02'),
(88, 9, 'M-01 (Part 2)', '407234749', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:03:16'),
(89, 42, 'C-34', '407241379', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:56:01'),
(90, 39, 'C-10,11', '407241938', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-07-11 17:00:28'),
(92, 52, 'M-37', '407239890', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:57:21'),
(94, 52, 'M-39', '407226018', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:08:06'),
(95, 49, 'M-25', '407229748', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:05:54'),
(96, 49, 'M-24', '407229036', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:06:21'),
(97, 39, 'C-12,13', '407243003', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:52:51'),
(99, 35, 'P-34,35', '407218309', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:12:04'),
(100, 36, 'P-36,37', '407210319', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:16:21'),
(101, 34, 'P-10,11', '407213813', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:14:35'),
(102, 39, 'C-14,15', '407242434', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:54:44'),
(103, 33, 'P-08,09', '407219420', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:11:35'),
(104, 48, 'M-23', '407239693', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 20:58:03'),
(105, 50, 'M-30', '407233153', 'storage/roots-plus-logo.png', NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:04:26'),
(106, 1, 'P-03 (Part 2)', '407215605', NULL, NULL, 0, 0, 0, NULL, NULL, '2020-03-04 00:05:00', NULL, '2020-04-14 21:13:47'),
(107, 51, 'M-32', '407236580', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-03-26 21:42:26', NULL, '2020-04-14 21:01:28'),
(108, 55, 'Current Electricity 01', 'W9SjqdYaeX4', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-02 04:48:53', NULL, '2020-04-24 21:35:14'),
(109, 56, 'Chemical Changes 01', 'b-gFY5yHn8o', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-02 05:14:34', NULL, '2020-04-24 21:35:05'),
(110, 55, 'Current Electricity 01 Plus', '407201071', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-02 23:07:51', NULL, '2020-04-14 20:16:09'),
(111, 57, 'Straight Line 01', 'J8xhbleqs20', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-03 00:04:49', NULL, '2020-04-24 21:34:56'),
(112, 57, 'Straight Line 01 Plus', '407203467', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-03 01:12:05', NULL, '2020-04-14 20:37:00'),
(113, 56, 'Chemical Changes 01 Plus', '407202805', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-03 02:46:06', NULL, '2020-04-14 20:28:56'),
(114, 50, 'M-31', '407232450', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-04 04:47:29', NULL, '2020-04-14 21:04:43'),
(115, 51, 'M-33', '407201781', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-04 04:52:15', NULL, '2020-04-14 20:43:04'),
(116, 56, 'Chemical Changes 02', '5OJ2qwTfaek', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-05 01:10:42', NULL, '2020-04-24 21:34:48'),
(117, 55, 'Current Electricity 02', 'Ly88lvDkHig', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-05 01:14:39', NULL, '2020-04-24 21:34:37'),
(118, 55, 'Current Electricity 02 Plus', '407207773', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-05 23:41:13', NULL, '2020-04-14 19:56:00'),
(119, 57, 'Straight Line 02', 'K67IHuXQ3S4', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-06 01:30:35', NULL, '2020-04-24 21:40:42'),
(120, 56, 'Chemical Changes 02 Plus', '407202552', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-06 01:36:00', NULL, '2020-04-14 20:30:38'),
(121, 57, 'Straight Line 02 Plus', '407203150', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-06 01:54:19', NULL, '2020-04-24 21:42:34'),
(122, 47, 'M-22', 'MQ6m2KmXeKg', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-06 17:48:29', NULL, '2020-04-06 17:48:29'),
(123, 56, 'Chemical Changes 03', 'EYKjBICKR7A', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-08 03:22:09', NULL, '2020-04-08 03:22:09'),
(124, 55, 'Current Electricity 03', '2L7fDEpo05Q', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-08 04:22:54', NULL, '2020-04-24 21:34:26'),
(125, 53, 'M-40', '407237340', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-08 04:30:43', NULL, '2020-04-14 21:00:22'),
(126, 55, 'Current Electricity 03 Plus', '407203792', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-09 02:42:24', NULL, '2020-04-14 20:26:02'),
(127, 57, 'Straight Line 03', 'M6pV1rsgIIU', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-09 03:32:23', NULL, '2020-04-09 03:32:23'),
(128, 56, 'Chemical Changes 03 Plus', '412694411', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-09 06:22:58', NULL, '2020-04-28 22:00:43'),
(129, 37, 'P-38,39', '407217383', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-10 01:05:47', NULL, '2020-04-14 21:12:29'),
(130, 44, 'M-02', '407238751', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-11 22:13:09', NULL, '2020-04-14 20:59:13'),
(131, 56, 'Chemical Changes 04', '2BLxJ0oTUTo', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-12 02:07:06', NULL, '2020-04-24 21:34:02'),
(132, 58, 'Trigonometric Ratios 01', 'GWT8Eho2WV8', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-12 02:14:53', NULL, '2020-04-24 21:26:49'),
(133, 55, 'Current Electricity 04', 'tx4CzKya3qo', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-12 02:16:58', NULL, '2020-04-24 21:26:58'),
(134, 55, 'Current Electricity 04 Plus', '407205341', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-12 22:28:25', NULL, '2020-04-24 21:27:07'),
(135, 56, 'Chemical Changes 04 Plus', '407202176', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-12 23:42:52', NULL, '2020-04-24 21:27:18'),
(136, 59, 'Static Electricity 01', '4b-xSowKm_E', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-13 23:57:26', NULL, '2020-04-13 23:57:26'),
(137, 58, 'Trigonometric Ratios 02', 'iXgb54EXXqA', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-14 00:02:33', NULL, '2020-04-14 00:02:33'),
(138, 56, 'Chemical Changes 05', '4cP8TjvDGYo', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-14 01:18:45', NULL, '2020-04-14 10:26:12'),
(139, 58, 'Trigonometric Ratios 01 Plus', '407563611', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-14 22:45:13', NULL, '2020-04-14 22:45:13'),
(140, 56, 'Chemical Changes 05 Plus', '407627669', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-15 02:02:29', NULL, '2020-04-15 02:02:29'),
(141, 57, 'Straight Line 04', 'SwICJZJpkSI', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-16 01:02:36', NULL, '2020-04-16 01:02:36'),
(142, 56, 'Chemical Changes 06', 'WxB396HgTsA', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-16 02:53:39', NULL, '2020-04-16 02:53:39'),
(143, 60, '16 Apr 01', '408358018', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-16 21:12:09', NULL, '2020-04-16 21:12:09'),
(144, 60, '16 Apr 02', '408358074', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-16 21:12:41', NULL, '2020-04-16 21:12:41'),
(145, 60, '16 Apr 03', '408358143', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-16 21:13:27', NULL, '2020-04-16 21:13:27'),
(146, 57, 'Straight Line 03 Plus', '408419977', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-17 00:31:28', NULL, '2020-04-17 00:31:28'),
(147, 61, 'Chemistry Doubt Clearing (17 Apr) 01', '408819002', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-17 21:47:16', NULL, '2020-04-17 21:47:16'),
(148, 61, 'Chemistry Doubt Clearing (17 Apr) 02', '408820893', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-17 21:49:40', NULL, '2020-04-17 21:49:40'),
(149, 59, 'Static Electricity 02', 'MCwklmGXBnc', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-19 00:27:42', NULL, '2020-04-19 00:27:42'),
(150, 59, 'Static Electricity 01 Plus', '409219575', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-19 00:47:13', NULL, '2020-04-22 17:55:25'),
(151, 58, 'Trigonometric Ratios 03', 'dl89wDa7gw8', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-19 00:59:48', NULL, '2020-04-24 21:26:35'),
(152, 56, 'Chemical Changes 07', '7LmBGKL1akA', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-20 00:01:14', NULL, '2020-04-24 21:26:25'),
(153, 62, 'Current Electricity 01 DC', '409789512', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-20 23:59:05', NULL, '2020-04-24 21:26:13'),
(154, 57, 'Straight Line 05', 'Lah6pVRAiv8', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-21 02:01:02', NULL, '2020-04-21 02:01:02'),
(155, 62, 'Current Electricity 02 DC', '410193271', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-22 00:09:08', NULL, '2020-04-24 21:25:56'),
(156, 63, 'Chemical Changes 01 DC', '410236228', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-22 02:04:12', NULL, '2020-04-24 21:25:40'),
(157, 59, 'Static Electricity 03', 'icWbI5e7wHM', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-22 23:33:51', NULL, '2020-04-24 21:25:27'),
(158, 56, 'Chemical Changes 08', 'Rj82bgPywnw', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-22 23:45:08', NULL, '2020-04-22 23:45:08'),
(159, 59, 'Static Electricity 04', 'hvj4ZXQES-E', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-24 01:05:08', NULL, '2020-04-24 21:24:08'),
(160, 58, 'Trigonometric Ratios 02 Plus', '411065191', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-24 01:43:19', NULL, '2020-04-24 18:45:06'),
(161, 59, 'Static Electricity 02 Plus', '411051461', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-24 01:46:04', NULL, '2020-04-24 01:46:04'),
(162, 64, 'Physics DC 01 (24 Apr)', '411380792', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-24 21:52:01', NULL, '2020-04-24 21:53:07'),
(163, 64, 'Physics DC 02 (24 Apr)', '411381077', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-24 21:52:21', NULL, '2020-04-24 21:53:20'),
(164, 57, 'Straight Line 04 Plus', '411418225', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-24 23:57:24', NULL, '2020-04-24 23:57:24'),
(165, 56, 'Chemical Changes 06 Plus', '411418448', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-24 23:58:33', NULL, '2020-04-24 23:58:33'),
(166, 59, 'Static Electricity 03 Plus', '411743759', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-25 23:32:16', NULL, '2020-04-25 23:32:16'),
(167, 56, 'Chemical Changes 09', 'p_KQdWcu7F4', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-26 23:43:36', NULL, '2020-05-10 20:59:48'),
(168, 65, 'Geometrical Optics 01', 'PxN4hoxAWQU', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-26 23:44:10', NULL, '2020-05-10 20:59:44'),
(169, 58, 'Trigonometric Ratios 04', '0sQQgd4bpow', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-27 22:59:38', NULL, '2020-05-10 20:59:36'),
(170, 56, 'Chemical Changes 10', 'llJjsNTKW3w', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-28 00:42:47', NULL, '2020-05-10 20:59:28'),
(171, 58, 'Trigonometric Ratios 03 Plus', '412733004', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-28 23:56:59', NULL, '2020-04-28 23:56:59'),
(172, 65, 'Geometrical Optics 01 Plus', '413138873', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-30 00:29:35', NULL, '2020-04-30 00:29:35'),
(173, 57, 'Straight Line 06', 'K6KZItg5trk', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-04-30 00:42:17', NULL, '2020-05-16 21:53:08'),
(174, 56, 'Chemical Changes 07 Plus', '413198333', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-04-30 03:14:19', NULL, '2020-04-30 03:14:19'),
(175, 65, 'Geometrical Optics 02', 'E173iKBxgi0', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-05-08 04:49:45', NULL, '2020-05-10 20:59:17'),
(176, 56, 'Chemical Changes 08 Plus', '416355983', 'storage/course-videos/May2020/c0GnuX6nIX8bGQwPjN2p.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-09 00:46:36', NULL, '2020-05-09 00:56:39'),
(177, 65, 'Geometrical Optics 02 Plus', '416356224', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-09 00:48:50', NULL, '2020-05-09 00:56:23'),
(178, 56, 'Chemical Changes 11', 'olclc0Aj5Ec', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-05-11 00:11:04', NULL, '2020-05-11 00:11:04'),
(179, 58, 'Trigonometric Ratios 05', '6JmKrw8PAbM', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-05-11 00:12:34', NULL, '2020-05-11 00:12:34'),
(180, 58, 'Trigonometric Ratios 04 Plus', '416913516', 'storage/course-videos/May2020/AMOKZlrBrR8JA6OhyCkE.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-11 00:54:54', NULL, '2020-05-11 00:57:51'),
(181, 65, 'Geometrical Optics 03', 'k7hQXd_zWpQ', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-05-15 00:27:24', NULL, '2020-05-15 00:27:24'),
(182, 56, 'Chemical Changes 12', 'CZJQh0mQ1WQ', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-05-15 02:49:44', NULL, '2020-05-16 21:51:56'),
(183, 65, 'Geometrical Optics 03 Plus', '418912564', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-15 23:58:56', NULL, '2020-05-15 23:58:56'),
(184, 58, 'Trigonometric Ratios 06', 'fR5RuyNw0aA', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-05-17 00:35:38', NULL, '2020-05-17 00:35:38'),
(185, 56, 'Chemical Changes 09 Plus', '419316148', 'storage/roots-plus-logo.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-17 02:03:58', NULL, '2020-05-18 02:18:55'),
(186, 57, 'Straight Line 05 Plus', '419316168', 'storage/course-videos/May2020/NE9LH6CJQj3yWjUXAJdH.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-17 02:05:14', NULL, '2020-05-18 02:17:45'),
(187, 66, 'Organic Chemistry 01', 'yMEVNSba4LY', 'storage/roots-plus-logo.png', NULL, NULL, 1, 1, NULL, NULL, '2020-05-18 01:51:34', NULL, '2020-05-18 01:51:34'),
(188, 58, 'Trigonometric Ratios 05 Plus', '419569779', 'storage/course-videos/May2020/tSzg0F2XkZ9sSSbfIm7H.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-18 02:00:03', NULL, '2020-05-18 02:16:55'),
(192, 65, 'Geometrical Optics 04', 'u0b-OOkkGSE', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-05-19 23:54:02', NULL, '2020-05-19 23:54:02'),
(193, 66, 'Organic Chemistry 02', 'O1kfeOBKcOI', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-05-21 01:21:54', NULL, '2020-05-21 01:21:54'),
(194, 67, 'Static Electricity 01 DC', '420749644', 'storage/course-videos/May2020/1dADdvvaeKWjJOdx8Saa.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-21 03:15:20', NULL, '2020-05-21 03:30:28'),
(195, 68, 'Trigonometric Ratios 01 DC', '420750061', 'storage/course-videos/May2020/iM6Hifi6OXCyBG94ULBs.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-21 03:17:28', NULL, '2020-05-21 03:30:14'),
(196, 62, 'Current Electricity 03 DC', '420750355', 'storage/course-videos/May2020/sRANBnGqMv9RHJLUAwpE.png', NULL, NULL, 0, 0, NULL, NULL, '2020-05-21 03:18:55', NULL, '2020-05-21 03:30:07'),
(197, 66, 'Organic Chemistry 03', 'lS3T3aFFnqQ', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-05-22 01:09:47', NULL, '2020-05-22 01:09:47'),
(198, 57, 'Straight Line 07', 'NHsYfO9-4a0', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-05-22 02:40:00', NULL, '2020-05-22 02:40:00'),
(199, 57, 'Straight Line 08', '1TIt9j-c1nU', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-05-22 23:28:51', NULL, '2020-05-23 00:30:40'),
(200, 57, 'Straight Line 06 Plus', '421562900', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-05-23 00:33:33', NULL, '2020-05-23 00:33:33'),
(201, 69, 'Physical Optics 01', 'yreq20sKIq4', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-06-03 23:42:45', NULL, '2020-06-03 23:42:45'),
(202, 56, 'Chemical Changes 10 Plus', '425520591', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-06-04 00:50:18', NULL, '2020-06-04 01:37:44'),
(203, 57, 'Straight lines 07 Plus', '426569267', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-06-07 03:22:43', NULL, '2020-06-07 03:22:43'),
(204, 66, 'Organic Chemistry 04', 'SBM18jbgYF4', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-06-08 02:31:20', NULL, '2020-06-08 02:31:20'),
(205, 70, 'Differentiation 01', '-LmrEAuyfR0', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-06-19 00:11:01', NULL, '2020-06-19 00:11:01'),
(206, 66, 'Organic Chemistry 05', 'jWsqj5FOZCs', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-06-19 04:49:01', NULL, '2020-06-19 04:49:01'),
(207, 70, 'Differentiation 02', '6OjbgoIIFvg', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-06-20 00:26:04', NULL, '2020-06-20 00:26:04'),
(208, 66, 'Organic Chemistry 06', 'aW2uEh_nB8M', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-06-20 03:35:36', NULL, '2020-06-20 03:35:36'),
(209, 6, 'C-30 (Part 2)', '431813502', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-06-24 00:03:14', NULL, '2020-06-24 21:57:15'),
(210, 70, 'Differentiation 01 Plus', '433120277', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-06-27 23:28:13', NULL, '2020-06-27 23:28:13'),
(211, 66, 'Organic Chemistry 07', 'kB1S8XZkZ3k', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-06-29 01:44:44', NULL, '2020-06-29 01:44:44'),
(212, 70, 'Differentiation 03', '175zxrpnOkg', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-07-05 01:46:37', NULL, '2020-07-05 01:46:37'),
(213, 66, 'Organic Chemistry 01 Plus', '435768375', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-07-07 01:22:58', NULL, '2020-07-07 01:22:58'),
(214, 57, 'Straight Line 09', '6TCmRBZ3zRI', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-07-09 01:45:00', NULL, '2020-07-09 01:45:00'),
(215, 69, 'Physical Optics 02', 'zVuScexr5Ec', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-07-12 23:30:38', NULL, '2020-07-12 23:35:13'),
(216, 66, 'Organic Chemistry 08', 'YePfLaezM8o', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-07-14 02:05:10', NULL, '2020-07-14 02:05:10'),
(217, 69, 'Physical Optics 01 Plus', '437908097', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-07-14 02:28:11', NULL, '2020-07-14 02:28:11'),
(218, 69, 'Physical Optics 03', 'hK-v6B8d5gY', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-07-15 01:46:59', NULL, '2020-07-15 01:46:59'),
(219, 69, 'Physical Optics 02 Plus', '438576933', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-07-16 01:27:53', NULL, '2020-07-16 01:27:53'),
(220, 66, 'Organic Chemistry 02 Plus', '438580116', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-07-16 01:29:36', NULL, '2020-07-16 01:29:36'),
(221, 66, 'Organic Chemistry 03 Plus', '438579569', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-07-16 01:30:46', NULL, '2020-07-16 01:30:46'),
(222, 70, 'Differentiation 04', 'HJKndA41CNA', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-07-17 01:01:27', NULL, '2020-07-17 01:01:27'),
(223, 66, 'Organic Chemistry 04 Plus', '439554738', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-07-19 01:37:46', NULL, '2020-07-19 01:37:46'),
(225, 57, 'Straight Line 08 Plus', '439554543', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-07-19 01:38:53', NULL, '2020-07-19 01:38:53'),
(226, 71, 'Magnetic Effects of Electric Current & Magnetism 01', '5-JzPZf1g2Q', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-07-20 01:52:16', NULL, '2020-07-20 01:52:16'),
(227, 71, 'Magnetic Effects of Electric Current & Magnetism 02', 'L-69160m8Q8', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-07 02:54:21', NULL, '2020-08-07 02:54:21'),
(228, 72, 'Adm P-01 | Vector', 'SDVkzUEGKU8', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-07 03:31:20', NULL, '2020-08-07 03:31:20'),
(229, 71, 'Magnetic Effects of Electric Current & Magnetism 01 Plus', '446221825', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-10 02:09:26', NULL, '2020-08-10 02:09:26'),
(230, 73, 'Adm M-01 | Matrix and Determinant', 'SSThh5N5zLw', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-10 02:15:35', NULL, '2020-08-10 02:15:35'),
(231, 74, 'TPS P-01', 'dQYqnapJll8', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-16 01:52:24', NULL, '2020-08-16 01:52:24'),
(232, 75, 'Linear Programming 01 Plus', '448108292', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-16 01:58:47', NULL, '2020-08-16 01:58:47'),
(233, 66, 'Organic Chemistry 09', '_ssD6fqB2ZE', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-17 23:49:39', NULL, '2020-08-17 23:49:39'),
(234, 76, 'Adm P-11 Plus', '448542827', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-18 01:33:31', NULL, '2020-08-27 01:46:23'),
(235, 77, 'Introduction to Modern Physics 01 Plus', '448573019', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-18 01:40:28', NULL, '2020-08-18 01:40:28'),
(236, 75, 'Linear Programming 02 Plus', '448586348', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-18 02:12:18', NULL, '2020-08-18 02:12:18'),
(237, 78, 'TPS C-01', 'Y5wbHCdGtrE', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-19 02:09:40', NULL, '2020-08-19 02:09:40'),
(238, 70, 'Differentiation 05', 'Oas153BW1Hw', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-21 01:49:44', NULL, '2020-08-21 01:49:44'),
(239, 77, 'Introduction to Modern Physics 02 Plus Live', '449751357', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-21 02:43:56', NULL, '2020-08-21 03:45:33'),
(240, 79, 'Complex Number 01 Plus Live', '449750966', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-21 02:55:57', NULL, '2020-08-21 03:06:53'),
(241, 66, 'Organic Chemistry 10', 'S75jLNgTZgA', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-21 15:23:31', NULL, '2020-08-21 15:23:31'),
(242, 77, 'Introduction to Modern Physics 03 Plus Live', '450136622', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-22 01:05:42', NULL, '2020-08-22 01:05:42'),
(243, 80, 'Adm P-12 | Current Electricity', 'GQGwcXQOjoY', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-23 01:06:42', NULL, '2020-08-23 04:26:11'),
(244, 77, 'Introduction to Modern Physics 04 Plus Live', '450513494', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-23 02:17:02', NULL, '2020-08-23 02:17:02'),
(245, 79, 'Complex Number 02 Plus Live', '450516996', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-23 02:51:20', NULL, '2020-08-23 02:51:20'),
(246, 66, 'Organic Chemistry 11', 'O2nKuGvXPLo', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-23 02:58:39', NULL, '2020-08-23 02:58:39'),
(248, 71, 'Magnetic Effects of Electric Current & Magnetism 03', '8kcaHx2No3Q', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-23 04:52:47', NULL, '2020-08-23 04:54:02'),
(249, 66, 'Organic Chemistry 12', 'T2aUPCVXeKg', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-24 00:04:42', NULL, '2020-08-24 02:52:27'),
(250, 71, 'Magnetic Effects of Electric Current and Magnetism 02 Plus', '450760828', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-24 00:09:33', NULL, '2020-08-24 00:09:33'),
(252, 81, 'TPS M-01', 'HZc_l9mmLKs', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-24 02:28:54', NULL, '2020-08-24 02:28:54'),
(253, 79, 'Complex Number 03 Plus Live', '450838467', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-24 03:02:35', NULL, '2020-08-24 03:02:35'),
(254, 70, 'Differentiation 06', '6IkydeGGn1c', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-25 01:02:50', NULL, '2020-08-25 01:02:50'),
(255, 82, 'Adm P-02 Plus', '451177737', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-25 01:19:31', NULL, '2020-08-25 01:20:50'),
(256, 83, 'Adm C-01', 'K9jiB53YG_o', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-25 04:37:17', NULL, '2020-08-25 04:42:02'),
(257, 77, 'Introduction to Modern Physics 05 Plus Live', '451249409', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-25 04:56:03', NULL, '2020-08-25 04:56:03'),
(258, 79, 'Complex Number 04 Plus Live', '451549721', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-26 02:43:29', NULL, '2020-08-26 02:43:29'),
(259, 70, 'Differentiation 02 Plus', '451825198', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-26 22:12:43', NULL, '2020-08-26 22:12:43'),
(260, 84, 'TPS M-02 Plus', '451864150', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-27 00:45:11', NULL, '2020-08-27 02:01:31'),
(261, 66, 'Organic Chemistry 13', 'knIufF44bCY', NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-08-27 04:25:02', NULL, '2020-08-27 04:25:02'),
(262, 79, 'Complex Number 05 Plus Live', '451908360', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-27 04:26:54', NULL, '2020-08-27 04:26:54'),
(263, 79, 'Complex Number 06 Plus Live', '452260627', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-28 02:27:15', NULL, '2020-08-28 02:27:15'),
(264, 79, 'Complex Number 07 Plus Live', '452647523', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-29 04:03:26', NULL, '2020-08-29 04:03:26'),
(265, 79, 'Complex Number 08 Plus Live', '452872716', NULL, NULL, NULL, 0, 0, NULL, NULL, '2020-08-30 02:55:13', NULL, '2020-08-30 02:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `course_id`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 1, NULL, NULL, '2020-12-12 00:14:53', NULL),
(2, 1, 10, NULL, 1, NULL, NULL, '2020-12-12 00:15:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zoom_live_classes`
--

CREATE TABLE `zoom_live_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ending_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `base_table`
--
ALTER TABLE `base_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_types`
--
ALTER TABLE `course_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_classes`
--
ALTER TABLE `free_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_to_use`
--
ALTER TABLE `how_to_use`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD KEY `model_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD KEY `model_has_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `notebooks`
--
ALTER TABLE `notebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pdfs`
--
ALTER TABLE `pdfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdf_lists`
--
ALTER TABLE `pdf_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_materials`
--
ALTER TABLE `study_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_social_media`
--
ALTER TABLE `user_social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_live_classes`
--
ALTER TABLE `zoom_live_classes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `base_table`
--
ALTER TABLE `base_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1307;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course_types`
--
ALTER TABLE `course_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `how_to_use`
--
ALTER TABLE `how_to_use`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `libraries`
--
ALTER TABLE `libraries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notebooks`
--
ALTER TABLE `notebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pdfs`
--
ALTER TABLE `pdfs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `pdf_lists`
--
ALTER TABLE `pdf_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_materials`
--
ALTER TABLE `study_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_social_media`
--
ALTER TABLE `user_social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zoom_live_classes`
--
ALTER TABLE `zoom_live_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
