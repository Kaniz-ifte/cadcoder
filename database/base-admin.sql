-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2021 at 02:38 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base-admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `avatar`, `email`, `phone`, `password`, `remember_token`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Developer One', 'Admins/avatar_1.png', 'developer@developer.com', '+8801855367817', '$2y$10$OTSypo0/ic3mL98TN8kIOOWpckPLe.MGbXwqAzY7aKXdP4W0rXjyy', 'cRRlwNMy3mqolhITl9J8jRtCVs4IUWeoFY5gjHua8mpxjJZdwIkOvMlUL5xG', 1, '2020-03-06 02:33:18', NULL, '2020-10-07 21:31:16', NULL),
(2, 'Super Admin', 'Admins/avatar_1.png', 'superadmin@superadmin.com', '+8801855367816', '$2y$10$OTSypo0/ic3mL98TN8kIOOWpckPLe.MGbXwqAzY7aKXdP4W0rXjyy', 'awG2iS07ZR6p1rdwNerW81jouI6ch9caSWcV9IQkigXTBsOtst1HywzwDqvS', 1, '2020-03-06 02:33:18', NULL, '2020-09-29 09:34:08', NULL),
(3, 'Admin', 'Admins/avatar_3.png', 'admin@admin.com', '+8801855367818', '$2y$10$dsjjXwAXY8roo7tV431/eud6dMsn8uX1BDaqp3Ix.25shqwvt0gpG', 'FFmr12RABqEBJO64e6HJLyiHNNPTum0op0XJA735GJQjhtFtu0kRnkPkIQ4H', 1, '2020-03-06 02:33:18', NULL, '2021-06-12 10:17:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `crud_id` int(11) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `is_newtab` int(1) DEFAULT NULL,
  `bullet` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `crud_disable` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_columns`
--

CREATE TABLE `base_columns` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `column_id` varchar(255) DEFAULT NULL,
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`params`)),
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_columns`
--

INSERT INTO `base_columns` (`id`, `title`, `column_id`, `params`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Serial', '1', '{\r\n    \"title\": \"Serial\",\r\n    \"index\": \"serial\",\r\n    \"design\": \"1\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:18:34', '2021-07-19 06:18:34'),
(2, 'Actions', '2', '{\r\n    \"title\": \"Actions\",\r\n    \"show_route\": \"admin.profile\",\r\n    \"edit_route\": \"admin.profile\",\r\n    \"destroy_route\": \"admin.profile\",\r\n    \"design\": \"2\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:19:22', '2021-07-19 06:19:22'),
(3, 'Name & Email', '3', '{\r\n    \"title\": \"Name & Email\",\r\n    \"index\": \"name\",\r\n    \"index_1\": \"email\",\r\n    \"max_char\": 10,\r\n    \"max_char_1\": 10,\r\n    \"design\": \"3\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:44:03', '2021-07-19 06:44:03'),
(4, 'Date Time', '4', '{\r\n    \"title\": \"Date Time\",\r\n    \"datetime\": \"created_at\",\r\n    \"datetime_format\": \"h:i A, d M Y\",\r\n    \"design\": \"4\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:44:48', '2021-07-19 06:44:48'),
(5, 'Date', '4_1', '{\r\n    \"title\": \"Date\",\r\n    \"datetime\": \"created_at\",\r\n    \"datetime_format\": \"h:i A, d M Y\",\r\n    \"design\": \"4_1\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:45:27', '2021-07-19 06:45:27'),
(6, 'Active', '5', '{\r\n    \"title\": \"Active/InActive\",\r\n    \"index\": \"is_active\",\r\n    \"true_text\": \"Active\",\r\n    \"false_text\": \"Inactive\",\r\n    \"design\": \"5\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:46:33', '2021-07-19 06:46:33'),
(7, 'Badge', '5_1', '{\r\n    \"title\": \"Paid/Due\",\r\n    \"index\": \"is_active\",\r\n    \"true_text\": \"Paid\",\r\n    \"false_text\": \"Due\",\r\n    \"design\": \"5_1\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:47:33', '2021-07-19 06:47:33'),
(8, 'Badge', '5_2', '{\r\n    \"title\": \"Status/Order\",\r\n    \"index\": \"is_active\",\r\n    \"index_1\": \"is_active\",\r\n    \"true_text\": \"Active\",\r\n    \"false_text\": \"Inactive\",\r\n    \"design\": \"5_2\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:48:12', '2021-07-19 06:48:12'),
(9, 'Image & 2 Strings', '6', '{\r\n    \"title\": \"Image & 2 Strings\",\r\n    \"image\": \"avatar\",\r\n    \"index\": \"name\",\r\n    \"index_1\": \"id\",\r\n    \"max_char\": 10,\r\n    \"max_char_1\": 10,\r\n    \"design\": \"6\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:48:54', '2021-07-19 06:48:54'),
(10, 'Email', '7', '{\r\n    \"title\": \"Email\",\r\n    \"index\": \"email\",\r\n    \"max_char\": 10,\r\n    \"design\": \"7\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:49:33', '2021-07-19 06:49:33'),
(11, 'Text & Date', '9', '{\r\n    \"title\": \"Text & Date\",\r\n    \"index\": \"name\",\r\n    \"max_char\": 10,\r\n    \"datetime\": \"created_at\",\r\n    \"datetime_format\": \"h:i, d M Y\",\r\n    \"design\": \"9\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:50:08', '2021-07-19 06:50:08'),
(12, 'Single Image', '11', '{\r\n    \"title\": \"Single Image\",\r\n    \"image\": \"avatar\",\r\n    \"design\": \"11\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:50:49', '2021-07-19 06:50:49'),
(13, 'Relation Data', '13', '{\r\n    \"title\": \"Service\",\r\n    \"index\": \"title\",\r\n    \"model\": \"App\\\\Service\",\r\n    \"array_index\": \"service_id\",\r\n    \"separator\": \",\",\r\n    \"max_char\": 60,\r\n    \"design\": \"13\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:51:44', '2021-07-19 06:51:44'),
(14, 'Text', '7', '{\r\n  \"title\": \"Text\",\r\n  \"index\": \"text\",\r\n  \"max_char\": \"10\",\r\n  \"design\": \"7\"\r\n}', 1, 1, NULL, NULL, '2021-07-20 05:53:03', '2021-07-20 05:53:03'),
(15, 'Audio', '14', '{\r\n    \"title\": \"Audio\",\r\n    \"audio\": \"audio\",\r\n    \"design\": \"14\",\r\n    \"value\": \r\n\"Audio/mp3.mp3\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:50:49', '2021-07-19 06:50:49'),
(16, 'Video', '15_1', '{\r\n    \"title\": \"Video\",\r\n    \"index\": \"video\",\r\n    \"design\": \"15\",\r\n    \"value\": \r\n\"Video/mp4.mp4\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:50:49', '2021-07-19 06:50:49'),
(17, 'Video', '15', '{\r\n    \"title\": \"Video\",\r\n    \"index\": \"video\",\r\n    \"design\": \"15\",\r\n    \"type\": \"iframe\",\r\n    \"value\": \r\n\"https://www.youtube.com/embed/668nUCeBHyY\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:50:49', '2021-07-19 06:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `base_inputs`
--

CREATE TABLE `base_inputs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `design_id` varchar(255) DEFAULT NULL,
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`params`)),
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_inputs`
--

INSERT INTO `base_inputs` (`id`, `title`, `design_id`, `params`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Space', '0', '{\r\n    \"title\": \"Space:\",\r\n    \"label-class\": \"col-md-2\",\r\n    \"div-class\": \"col-md-3\",\r\n    \"design\": \"0\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 04:39:49', '2021-07-19 04:39:49'),
(4, 'Text', '1', '{\r\n    \"title\": \"Name:\",\r\n    \"placeholder\": \"Enter Name\",\r\n    \"name\": \"name\",\r\n    \"required\": \"\",\r\n    \"design\": \"1\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 04:40:30', '2021-07-19 04:40:30'),
(5, 'Number', '1', '{\r\n    \"title\": \"Phone:\",\r\n    \"placeholder\": \"Enter Phone\",\r\n    \"name\": \"phone\",\r\n    \"type\": \"number\",\r\n    \"required\": \"\",\r\n    \"design\": \"1\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 04:41:05', '2021-07-19 04:41:05'),
(6, 'Email', '1', '{\r\n    \"title\": \"Email:\",\r\n    \"placeholder\": \"Enter Email\",\r\n    \"name\": \"email\",\r\n    \"type\": \"email\",\r\n    \"required\": \"\",\r\n    \"design\": \"1\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 04:41:44', '2021-07-19 04:42:13'),
(7, 'Color', '1', '{\r\n    \"title\": \"Color:\",\r\n    \"placeholder\": \"Enter Color\",\r\n    \"name\": \"color\",\r\n    \"type\": \"color\",\r\n    \"required\": \"\",\r\n    \"design\": \"1\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 04:59:58', '2021-07-19 04:59:58'),
(8, 'Range', '1', '{\r\n    \"title\": \"Range:\",\r\n    \"placeholder\": \"Enter Range\",\r\n    \"name\": \"range\",\r\n    \"type\": \"range\",\r\n    \"required\": \"\",\r\n    \"design\": \"1\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 05:00:38', '2021-07-19 05:00:38'),
(9, 'Password', '1', '{\r\n    \"title\": \"Password:\",\r\n    \"placeholder\": \"Enter Password\",\r\n    \"name\": \"password\",\r\n    \"type\": \"password\",\r\n    \"required\": \"\",\r\n    \"design\": \"1\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 05:01:43', '2021-07-19 05:01:43'),
(10, 'Not Set', '1', '{\r\n    \"title\": \"Not Set:\",\r\n    \"placeholder\": \"Enter\",\r\n    \"name\": \"not set\",\r\n    \"required\": \"\",\r\n    \"design\": \"2\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 05:02:21', '2021-07-19 05:02:21'),
(11, 'Image', '1', '{\r\n    \"title\": \"Image:\",\r\n    \"id\": \"image_1\",\r\n    \"sample_image\": \"media/sample/avatar.jpg\",\r\n    \"sample_image_width\": \"120px\",\r\n    \"sample_image_height\": \"120px\",\r\n    \"name\": \"image\",\r\n    \"required\": \"\",\r\n    \"design\": \"3\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 05:03:27', '2021-07-19 05:03:27'),
(12, 'Textarea', '4', '{\r\n    \"title\": \"Description:\",\r\n    \"placeholder\": \"\",\r\n    \"rows\": \"3\",\r\n    \"cols\": \"80\",\r\n    \"name\": \"description\",\r\n    \"id\": \"description\",\r\n    \"autosize\": \"\",\r\n    \"design\": \"4\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 05:04:17', '2021-07-19 05:04:17'),
(13, 'Switch', '5', '{\r\n    \"title\": \"Is Active:\",\r\n    \"name\": \"is_active\",\r\n    \"checked\": \"\",\r\n    \"design\": \"5\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 05:05:12', '2021-07-19 05:05:12'),
(15, 'Select', '6', '{\r\n    \"title\": \"Role:\",\r\n    \"name\": \"role_id\",\r\n    \"view_index\": \"name\",\r\n    \"data\": [],\r\n    \"required\": \"\",\r\n    \"design\": \"6\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 05:11:49', '2021-07-19 05:11:49'),
(16, 'Date Time', '7', '{\r\n    \"title\": \"Date & Time:\",\r\n    \"value\": \"\",\r\n    \"name\": \"date_time\",\r\n    \"id\": \"date_time\",\r\n    \"design\": \"7\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:10:20', '2021-07-19 06:10:20'),
(17, 'Date', '8', '{\r\n    \"title\": \"Date:\",\r\n    \"id\": \"date\",\r\n    \"name\": \"date\",\r\n    \"value\": \"\",\r\n    \"design\": \"8\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:11:31', '2021-07-19 06:11:31'),
(18, 'TinyMCE', '9', '{\r\n    \"title\": \"Question:\",\r\n    \"id\": \"question\",\r\n    \"name\": \"question\",\r\n    \"required\": \"\",\r\n    \"design\": \"9\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:12:46', '2021-07-19 06:12:46'),
(19, 'Audio', '12', '{\r\n    \"title\": \"Audio:\",\r\n    \"id\": \"audio_1\",\r\n    \"name\": \"audio\",\r\n    \"required\": \"\",\r\n    \"design\": \"12\"\r\n  }', 1, 1, NULL, NULL, '2021-07-19 06:13:47', '2021-07-19 06:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `base_table`
--

CREATE TABLE `base_table` (
  `id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `banner` varchar(191) DEFAULT NULL,
  `writer` varchar(191) DEFAULT NULL,
  `publish_at` timestamp NULL DEFAULT current_timestamp(),
  `is_featured` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `short_description`, `description`, `banner`, `writer`, `publish_at`, `is_featured`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test TItle', NULL, '<strong>Test Description</strong>', 'Blogs/banner_2.jpeg', 'Writer 01', '2020-09-28 21:16:00', 1, 45, 1, NULL, NULL, '2020-09-29 07:58:24', '2020-09-29 10:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `company_infos`
--

CREATE TABLE `company_infos` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `index` varchar(191) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `input_array` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Name', 'abc@abc.com', 'Test Message', NULL, 1, NULL, NULL, '2020-09-30 21:52:42', '2020-09-30 22:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `cruds`
--

CREATE TABLE `cruds` (
  `id` int(11) NOT NULL,
  `resource_path` varchar(191) DEFAULT NULL,
  `controller` varchar(191) DEFAULT NULL,
  `model` varchar(191) DEFAULT NULL,
  `data_table` varchar(191) DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL,
  `crud_key_word` varchar(191) DEFAULT NULL,
  `crud_key_word_plural` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_columns`
--

CREATE TABLE `crud_columns` (
  `id` int(11) NOT NULL,
  `crud_id` bigint(20) UNSIGNED DEFAULT NULL,
  `base_column_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`params`)),
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_inputs`
--

CREATE TABLE `crud_inputs` (
  `id` int(11) NOT NULL,
  `crud_column_id` bigint(20) UNSIGNED DEFAULT NULL,
  `crud_id` bigint(20) UNSIGNED DEFAULT NULL,
  `base_input_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`params`)),
  `is_addable` tinyint(1) NOT NULL DEFAULT 1,
  `is_updatable` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Question', 'Test Answer', 1, 1, NULL, NULL, '2020-09-28 11:59:29', '2020-09-28 11:59:29'),
(2, 'Test Faq Question', 'Test Faq Answer', 1, 1, NULL, NULL, '2020-12-02 11:09:37', '2020-12-02 11:09:37'),
(3, '3333', '3333333', 3, 1, NULL, NULL, '2020-12-02 11:09:50', '2020-12-02 11:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `is_featured`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Clients/image_1.png', 1, 1, 1, NULL, NULL, '2020-09-25 01:39:10', '2020-09-29 22:46:56'),
(2, 'Clients/image_3.png', 1, 2, 1, NULL, NULL, '2020-09-26 20:26:47', '2020-09-29 22:46:45'),
(3, 'Clients/image_4.png', 1, 4, 1, NULL, NULL, '2020-09-26 20:27:25', '2020-09-29 22:46:29'),
(4, 'Clients/image_5.png', 1, 3, 1, NULL, NULL, '2020-09-26 20:44:29', '2020-09-29 22:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `input_designs`
--

CREATE TABLE `input_designs` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `indexes` text DEFAULT NULL,
  `view` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `input_designs`
--

INSERT INTO `input_designs` (`id`, `title`, `indexes`, `view`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Text Input', '[\'index\',\'value\']', 'input_1', NULL, 1, NULL, NULL, '2021-02-07 23:42:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table.php', 1),
(2, '2014_10_12_100000_create_password_resets_table.php', 1),
(3, '2019_08_19_000000_create_failed_jobs_table.php', 1),
(4, '2020_07_21_125848_create_permission_tables.php', 1),
(5, '2021_06_14_161513_create_migration_columns_table.php', 1),
(6, '2021_06_15_125619_create_table_columns_table.php', 1),
(7, '2021_06_16_143224_create_admin_menus_table', 0),
(8, '2021_06_16_143224_create_admins_table', 0),
(9, '2021_06_16_143224_create_base_table_table', 0),
(10, '2021_06_16_143224_create_blogs_table', 0),
(11, '2021_06_16_143224_create_company_infos_table', 0),
(12, '2021_06_16_143224_create_contact_us_table', 0),
(13, '2021_06_16_143224_create_crud_columns_table', 0),
(14, '2021_06_16_143224_create_crud_inputs_table', 0),
(15, '2021_06_16_143224_create_crud_view_columns_table', 0),
(16, '2021_06_16_143224_create_crud_view_designs_table', 0),
(17, '2021_06_16_143224_create_cruds_table', 0),
(18, '2021_06_16_143224_create_faqs_table', 0),
(19, '2021_06_16_143224_create_gallery_table', 0),
(20, '2021_06_16_143224_create_input_designs_table', 0),
(21, '2021_06_16_143224_create_model_has_permissions_table', 0),
(22, '2021_06_16_143224_create_model_has_roles_table', 0),
(23, '2021_06_16_143224_create_orders_table', 0),
(24, '2021_06_16_143224_create_password_resets_table', 0),
(25, '2021_06_16_143224_create_permissions_table', 0),
(26, '2021_06_16_143224_create_privacy_policy_table', 0),
(27, '2021_06_16_143224_create_question_table', 0),
(28, '2021_06_16_143224_create_question_discussion_table', 0),
(29, '2021_06_16_143224_create_question_option_table', 0),
(30, '2021_06_16_143224_create_question_type_table', 0),
(31, '2021_06_16_143224_create_resultones_table', 0),
(32, '2021_06_16_143224_create_results_table', 0),
(33, '2021_06_16_143224_create_resulttwos_table', 0),
(34, '2021_06_16_143224_create_role_has_permissions_table', 0),
(35, '2021_06_16_143224_create_roles_table', 0),
(36, '2021_06_16_143224_create_sections_table', 0),
(37, '2021_06_16_143224_create_settings_table', 0),
(38, '2021_06_16_143224_create_slider_types_table', 0),
(39, '2021_06_16_143224_create_sliders_table', 0),
(40, '2021_06_16_143224_create_social_media_table', 0),
(41, '2021_06_16_143224_create_social_media_types_table', 0),
(42, '2021_06_16_143224_create_subscriptions_table', 0),
(43, '2021_06_16_143224_create_table_columns_table', 0),
(44, '2021_06_16_143224_create_terms_conditions_table', 0),
(45, '2021_06_16_143224_create_testimonials_table', 0),
(46, '2021_06_16_143224_create_users_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\User', 1),
(1, 'App\\Admin', 1),
(2, 'App\\Admin', 2),
(3, 'App\\Admin', 3),
(2, '	\r\nApp\\Admin', 1),
(2, 'App\\Admin', 1),
(2, 'App\\User', 1),
(1, 'App\\Admin', 1),
(2, 'AppAdmin', 2),
(3, 'AppAdmin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `title`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '2020-11-19 23:50:34', '2020-11-19 23:50:34'),
(2, NULL, NULL, NULL, NULL, NULL, '2020-11-19 23:50:56', '2020-11-19 23:50:56'),
(3, NULL, NULL, NULL, NULL, NULL, '2020-12-01 22:01:37', '2020-12-01 22:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin-view', 'admin', '2020-09-22 19:13:59', NULL),
(2, 'admin-create', 'admin', '2020-09-22 19:14:10', NULL),
(3, 'admin-update', 'admin', '2020-09-22 19:14:14', NULL),
(4, 'admin-delete', 'admin', '2020-09-22 19:14:20', NULL),
(5, 'user-create', 'admin', '2020-09-22 19:16:50', NULL),
(6, 'user-update', 'admin', '2020-09-22 19:16:50', NULL),
(7, 'user-delete', 'admin', '2020-09-22 19:16:50', NULL),
(8, 'user-view', 'admin', '2020-09-22 19:16:50', NULL),
(9, 'subscription-create', 'admin', '2020-09-22 19:17:29', NULL),
(10, 'subscription-update', 'admin', '2020-09-22 19:17:29', NULL),
(11, 'subscription-delete', 'admin', '2020-09-22 19:17:29', NULL),
(12, 'subscription-view', 'admin', '2020-09-22 19:17:29', NULL),
(13, 'developer-create', 'admin', '2020-09-22 19:18:28', NULL),
(14, 'developer-update', 'admin', '2020-09-22 19:18:28', NULL),
(15, 'developer-delete', 'admin', '2020-09-22 19:18:28', NULL),
(16, 'developer-view', 'admin', '2020-09-22 19:18:28', NULL),
(17, 'role-create', 'admin', '2020-09-22 19:19:31', NULL),
(18, 'role-update', 'admin', '2020-09-22 19:19:31', NULL),
(19, 'role-delete', 'admin', '2020-09-22 19:19:31', NULL),
(20, 'role-view', 'admin', '2020-09-22 19:19:31', NULL),
(21, 'setting-create', 'admin', '2020-09-22 19:19:52', NULL),
(22, 'setting-update', 'admin', '2020-09-22 19:19:52', NULL),
(23, 'setting-delete', 'admin', '2020-09-22 19:19:52', NULL),
(24, 'setting-view', 'admin', '2020-09-22 19:19:52', NULL),
(25, 'blog-create', 'admin', '2020-09-22 19:19:52', NULL),
(26, 'blog-update', 'admin', '2020-09-22 19:19:52', NULL),
(27, 'blog-delete', 'admin', '2020-09-22 19:19:52', NULL),
(28, 'blog-view', 'admin', '2020-09-22 19:19:52', NULL),
(29, 'faq-create', 'admin', '2020-09-22 19:19:52', NULL),
(30, 'faq-update', 'admin', '2020-09-22 19:19:52', NULL),
(31, 'faq-delete', 'admin', '2020-09-22 19:19:52', NULL),
(32, 'faq-view', 'admin', '2020-09-22 19:19:52', NULL),
(33, 'privacy-policy-create', 'admin', '2020-09-22 19:19:52', NULL),
(34, 'privacy-policy-update', 'admin', '2020-09-22 19:19:52', NULL),
(35, 'privacy-policy-delete', 'admin', '2020-09-22 19:19:52', NULL),
(36, 'privacy-policy-view', 'admin', '2020-09-22 19:19:52', NULL),
(37, 'terms-conditions-create', 'admin', '2020-09-22 19:19:52', NULL),
(38, 'terms-conditions-update', 'admin', '2020-09-22 19:19:52', NULL),
(39, 'terms-conditions-delete', 'admin', '2020-09-22 19:19:52', NULL),
(40, 'terms-conditions-view', 'admin', '2020-09-22 19:19:52', NULL),
(41, 'social-media-create', 'admin', '2020-09-22 19:19:52', NULL),
(42, 'social-media-update', 'admin', '2020-09-22 19:19:52', NULL),
(43, 'social-media-delete', 'admin', '2020-09-22 19:19:52', NULL),
(44, 'social-media-view', 'admin', '2020-09-22 19:19:52', NULL),
(45, 'slider-view', 'admin', '2020-09-22 19:13:59', NULL),
(46, 'slider-create', 'admin', '2020-09-22 19:14:10', NULL),
(47, 'slider-update', 'admin', '2020-09-22 19:14:14', NULL),
(48, 'slider-delete', 'admin', '2020-09-22 19:14:20', NULL),
(49, 'gallery-view', 'admin', '2020-09-22 19:13:59', NULL),
(50, 'gallery-create', 'admin', '2020-09-22 19:14:10', NULL),
(51, 'gallery-update', 'admin', '2020-09-22 19:14:14', NULL),
(52, 'gallery-delete', 'admin', '2020-09-22 19:14:20', NULL),
(53, 'testimonial-view', 'admin', '2020-09-22 19:13:59', NULL),
(54, 'testimonial-create', 'admin', '2020-09-22 19:14:10', NULL),
(55, 'testimonial-update', 'admin', '2020-09-22 19:14:14', NULL),
(56, 'testimonial-delete', 'admin', '2020-09-22 19:14:20', NULL),
(58, 'order-view', 'admin', '2020-11-19 01:23:00', '2020-11-19 01:23:00'),
(59, 'order-create', 'admin', '2020-11-19 01:31:08', '2020-11-19 01:31:08'),
(60, 'order-update', 'admin', '2020-11-19 01:31:08', '2020-11-19 01:31:08'),
(61, 'order-delete', 'admin', '2020-11-19 01:31:08', '2020-11-19 01:31:08'),
(70, 'tablecolumn-view', 'admin', '2021-06-15 07:02:44', '2021-06-15 07:02:44'),
(71, 'tablecolumn-create', 'admin', '2021-06-15 07:02:44', '2021-06-15 07:02:44'),
(72, 'tablecolumn-update', 'admin', '2021-06-15 07:02:44', '2021-06-15 07:02:44'),
(73, 'tablecolumn-delete', 'admin', '2021-06-15 07:02:44', '2021-06-15 07:02:44'),
(78, 'base-input-view', 'admin', '2021-06-16 08:22:29', '2021-06-16 08:22:29'),
(79, 'base-input-create', 'admin', '2021-06-16 08:22:29', '2021-06-16 08:22:29'),
(80, 'base-input-update', 'admin', '2021-06-16 08:22:29', '2021-06-16 08:22:29'),
(81, 'base-input-delete', 'admin', '2021-06-16 08:22:29', '2021-06-16 08:22:29'),
(82, 'base-column-view', 'admin', '2021-06-16 08:22:29', '2021-06-16 08:22:29'),
(83, 'base-column-create', 'admin', '2021-06-16 08:22:29', '2021-06-16 08:22:29'),
(84, 'base-column-update', 'admin', '2021-06-16 08:22:29', '2021-06-16 08:22:29'),
(85, 'base-column-delete', 'admin', '2021-06-16 08:22:29', '2021-06-16 08:22:29'),
(86, 'test-view', 'admin', '2021-07-20 08:17:56', '2021-07-20 08:17:56'),
(87, 'test-create', 'admin', '2021-07-20 08:17:56', '2021-07-20 08:17:56'),
(88, 'test-update', 'admin', '2021-07-20 08:17:56', '2021-07-20 08:17:56'),
(89, 'test-delete', 'admin', '2021-07-20 08:17:56', '2021-07-20 08:17:56'),
(90, 'resultone-view', 'admin', '2021-07-20 11:27:43', '2021-07-20 11:27:43'),
(91, 'resultone-create', 'admin', '2021-07-20 11:27:43', '2021-07-20 11:27:43'),
(92, 'resultone-update', 'admin', '2021-07-20 11:27:43', '2021-07-20 11:27:43'),
(93, 'resultone-delete', 'admin', '2021-07-20 11:27:43', '2021-07-20 11:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `context` text DEFAULT NULL,
  `question` text DEFAULT NULL,
  `ans` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `question_discussion`
--

CREATE TABLE `question_discussion` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `question_option`
--

CREATE TABLE `question_option` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'admin', '2020-07-17 02:09:20', '2020-07-17 02:09:20'),
(2, 'Super Admin', 'admin', '2020-07-17 02:09:20', '2020-07-17 02:09:20'),
(3, 'Admin', 'admin', '2020-07-17 02:09:20', '2020-07-17 02:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(7, 1),
(8, 1),
(9, 1),
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
(20, 1),
(7, 1),
(8, 1),
(12, 1),
(14, 1),
(16, 1),
(18, 1),
(20, 1),
(7, 1),
(8, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(7, 1),
(8, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(28, 2),
(2, 2),
(29, 2),
(4, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(22, 1),
(10, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(22, 1),
(10, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(22, 1),
(23, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(7, 1),
(8, 1),
(9, 1),
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
(20, 1),
(7, 1),
(8, 1),
(12, 1),
(14, 1),
(16, 1),
(18, 1),
(20, 1),
(7, 1),
(8, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(7, 1),
(8, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(28, 2),
(2, 2),
(29, 2),
(4, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(22, 1),
(10, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(22, 1),
(10, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(22, 1),
(23, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(8, 3),
(5, 3),
(6, 3),
(7, 3),
(20, 3),
(17, 3),
(18, 3),
(19, 3),
(24, 3),
(21, 3),
(22, 3),
(23, 3),
(28, 3),
(25, 3),
(26, 3),
(27, 3),
(32, 3),
(29, 3),
(30, 3),
(31, 3),
(36, 3),
(33, 3),
(34, 3),
(35, 3),
(40, 3),
(37, 3),
(38, 3),
(39, 3),
(44, 3),
(41, 3),
(42, 3),
(43, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(8, 3),
(5, 3),
(6, 3),
(7, 3),
(20, 3),
(17, 3),
(18, 3),
(19, 3),
(24, 3),
(21, 3),
(22, 3),
(23, 3),
(28, 3),
(25, 3),
(26, 3),
(27, 3),
(32, 3),
(29, 3),
(30, 3),
(31, 3),
(36, 3),
(33, 3),
(34, 3),
(35, 3),
(40, 3),
(37, 3),
(38, 3),
(39, 3),
(44, 3),
(41, 3),
(42, 3),
(43, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `root` varchar(191) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  `input_array` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `root` varchar(191) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  `design` int(11) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `root`, `key`, `design`, `value`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Setting One', 'test', 'title', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:37', NULL),
(2, 'Test Setting One', 'test_1', 'title1', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:42', NULL),
(3, 'Test Setting One', 'test_1', 'title2', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:47', NULL),
(4, 'Test Setting One', 'test_2', 'title1', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:51', NULL),
(5, 'Test Setting One', 'test_2', 'title2', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:54', NULL),
(6, 'Test Setting One', 'test_2', 'title3', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `slider_type_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `button_text` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `banner` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_type_id`, `title`, `button_text`, `url`, `banner`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'SLIDE 01', NULL, '/slide01', 'Sliders/banner_2.jpeg', 1, 1, NULL, NULL, '2020-12-04 08:18:16', '2020-12-04 08:18:16'),
(2, NULL, 'Slide 02', NULL, '/slide02', 'Sliders/banner_3.png', 2, 1, NULL, NULL, '2020-12-04 08:19:46', '2020-12-04 08:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `slider_types`
--

CREATE TABLE `slider_types` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider_types`
--

INSERT INTO `slider_types` (`id`, `title`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, NULL, NULL, NULL, '2020-09-29 20:17:37', NULL),
(2, 'Footer', NULL, NULL, NULL, NULL, '2020-09-29 20:17:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `social_media_type_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `icon_class` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `background_color` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `social_media_type_id`, `title`, `icon`, `icon_class`, `color`, `background_color`, `url`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test Media', NULL, 'fa fa-facebook', '000000', 'ffffff', 'http://127.0.0.1:8000/admin/social-media/create', 1, 1, NULL, NULL, '2020-09-29 13:10:26', '2020-09-29 13:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_types`
--

CREATE TABLE `social_media_types` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media_types`
--

INSERT INTO `social_media_types` (`id`, `title`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'footer', NULL, 1, NULL, NULL, '2020-09-29 12:12:13', NULL),
(2, 'header', NULL, 1, NULL, NULL, '2020-09-29 12:12:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_columns`
--

CREATE TABLE `table_columns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_size` int(11) NOT NULL,
  `optgroup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_columns`
--

INSERT INTO `table_columns` (`id`, `key`, `name`, `default_size`, `optgroup`, `created_at`, `updated_at`) VALUES
(1, 'integer', 'INT', 11, NULL, NULL, NULL),
(2, 'string', 'String', 255, NULL, NULL, NULL),
(3, 'text', 'Text', 255, NULL, NULL, NULL),
(4, 'tinyInteger', 'TINY INT', 4, 'Numeric', NULL, NULL),
(5, 'bigInteger', 'BIG INT', 11, 'Numeric', NULL, NULL),
(6, 'smallInteger', 'SMALL INT', 2, 'Numeric', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `quote` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `avatar`, `quote`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Name', 'Testimonials/avatar_1.png', 'test quote', NULL, 1, NULL, NULL, '2020-09-25 01:50:55', '2020-09-26 20:23:56'),
(2, 'Test name 2', 'Testimonials/avatar_3.png', 'Test Quote 2', 2, 1, NULL, NULL, '2020-09-26 20:25:11', '2020-09-26 20:25:11'),
(3, 'Test Name 3', 'Testimonials/avatar_4.png', 'Test quote 3', 3, 1, NULL, NULL, '2020-09-26 20:25:52', '2020-09-26 20:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT 'profile/profile.png',
  `password` varchar(191) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `active_session` text DEFAULT NULL,
  `firebase_token` longtext DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `phone`, `avatar`, `password`, `provider`, `provider_id`, `active_session`, `firebase_token`, `email_verified_at`, `remember_token`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, NULL, 'Twelve Feet', 'admin@gmail.com', '12312312312', 'Users/avatar_3.jpg', '$2y$10$0xMW.dlvucpOrs4CFrFTqeTrqrFonn7.RQ3wxKl322iWeQMonIdNC', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-07-19 04:32:16', NULL, '2021-07-19 04:32:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_columns`
--
ALTER TABLE `base_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_inputs`
--
ALTER TABLE `base_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_table`
--
ALTER TABLE `base_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_infos`
--
ALTER TABLE `company_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cruds`
--
ALTER TABLE `cruds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_columns`
--
ALTER TABLE `crud_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_inputs`
--
ALTER TABLE `crud_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `input_designs`
--
ALTER TABLE `input_designs`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_discussion`
--
ALTER TABLE `question_discussion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_option`
--
ALTER TABLE `question_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
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
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_types`
--
ALTER TABLE `slider_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_types`
--
ALTER TABLE `social_media_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `table_columns`
--
ALTER TABLE `table_columns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_columns_key_unique` (`key`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_columns`
--
ALTER TABLE `base_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `base_inputs`
--
ALTER TABLE `base_inputs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `base_table`
--
ALTER TABLE `base_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_infos`
--
ALTER TABLE `company_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cruds`
--
ALTER TABLE `cruds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_columns`
--
ALTER TABLE `crud_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_inputs`
--
ALTER TABLE `crud_inputs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `input_designs`
--
ALTER TABLE `input_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_discussion`
--
ALTER TABLE `question_discussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_option`
--
ALTER TABLE `question_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_type`
--
ALTER TABLE `question_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider_types`
--
ALTER TABLE `slider_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media_types`
--
ALTER TABLE `social_media_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_columns`
--
ALTER TABLE `table_columns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
