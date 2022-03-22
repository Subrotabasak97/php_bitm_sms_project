-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 07:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_03_064047_create_sessions_table', 1),
(7, '2022_03_15_031257_create_teachers_table', 2),
(8, '2022_03_15_032524_create_teachers_table', 3),
(9, '2022_03_16_034344_add_password_column_to_teachers_table', 4),
(10, '2022_03_20_055806_create_subjects_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AtAoQhq4ivJo2SHHMnCaM4WTCicKPvDCYz4OVvtD', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiSHhycXI4YWFSSmJMM3puTUY5cUY2RWxCR1I1QndXVEpoeGUycU9uMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzE6Imh0dHA6Ly9sb2NhbGhvc3Qvc2h5a290X2JhdGNoXzNfcGhwL3Byb2plY3QtMS9zbXMvcHVibGljL21hbmFnZS1zdWJqZWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJC5GQ2M0QTg3MUw5THRVMWZNdzQ5ZS5BSzJpYy81ODJ4Z2FOQUlSZVg5YWRaNDg3YXRMQnhtIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQuRkNjNEE4NzFMOUx0VTFmTXc0OWUuQUsyaWMvNTgyeGdhTkFJUmVYOWFkWjQ4N2F0TEJ4bSI7czo3OiJ1c2VyX2lkIjtpOjY7czo5OiJ1c2VyX25hbWUiO3M6MTI6IkZhdGloYSBJc3JhdCI7czoxMDoidXNlcl9pbWFnZSI7czoyNzoidGVhY2hlci1pbWFnZXMvYXZhdGFyLTQuanBnIjt9', 1647759382);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `teacher_id`, `title`, `code`, `fee`, `short_description`, `long_description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Online Training on Modern JavaScript (ES6)', 'JAVA102', 2000, '<p><span style=\"text-align: justify;\">This course will guide the developers and students who want to learn how to develop a Interactive website using JavaScript.</span><br></p>', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">ES6 Versions</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Environment setup</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">ES6 Syntax</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Spread Operator</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Rest Parameter</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Variables</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Operators</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Loops</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Decision Making</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Functions</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Functions</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Arrow Function</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Generators</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Arrays</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Arrays</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Array Methods</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Array Destructuring</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Maps</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Sets</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Objects</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Objects</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Object Destructuring</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Classes</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Strings</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Template Literals</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Advance Features</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Events</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Cookies</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Dialog Boxes</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Page Redirect</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Number</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Boolean</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">void Keyword</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Page Printing</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Modules</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Promises</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Validations</p><div class=\"clearfix\" style=\"color: rgb(62, 62, 62); outline: none; font-family: Roboto, sans-serif; font-size: 14px;\"></div><h3 style=\"font-family: Roboto, sans-serif; line-height: 1.1; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 20px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\">Curriculum</h3><div class=\"table-responsive\" style=\"color: rgb(62, 62, 62); outline: none; min-height: 0.01%; font-family: Roboto, sans-serif; font-size: 14px;\"><table class=\"table\" style=\"border-spacing: 0px; background-color: transparent; width: 825px; max-width: 100%; margin-bottom: 20px;\"><tbody><tr><td style=\"padding: 8px; color: rgb(62, 62, 62); font-size: 16px; line-height: 1.42857; border-top-color: rgb(221, 221, 221);\">Training</td><td style=\"padding: 8px; color: rgb(62, 62, 62); font-size: 16px; line-height: 1.42857; border-top-color: rgb(221, 221, 221);\">Online Training on Modern JavaScript (ES6)</td><td style=\"padding: 8px; color: rgb(62, 62, 62); font-size: 16px; line-height: 1.42857; border-top-color: rgb(221, 221, 221);\">24 Hrs</td></tr></tbody></table></div>', 'subject-images/javascript.jpg', 0, '2022-03-20 00:33:58', '2022-03-20 00:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `code`, `email`, `mobile`, `address`, `image`, `status`, `created_at`, `updated_at`, `password`) VALUES
(1, 'MD. Nazmul Vai', 'MDN20228', 'nazmul@gmail.com', '01234567897', 'Narayanganj', 'teacher-images/avatar-6.jpg', 1, '2022-03-14 23:05:13', '2022-03-19 21:41:58', '$2y$10$5Fp1fcSGzGcE28Uqvp4KFu7neMg133VYWaZ9cF.QG26WMqwv1pAIq'),
(3, 'Anwar Mastor', 'ANW20228', 'anwar@gmail.com', '01234567892', 'Jalkuri', 'teacher-images/avatar-3.jpg', 0, '2022-03-14 23:08:16', '2022-03-19 21:41:53', '$2y$10$7dT.2LyaK6XMA3ta0nuuHOcoO3AncBw4Xl.bJSmDmBWG5HQTKZW3C'),
(5, 'Ratna Khan', 'RAT20228', 'ratna@gmail.com', '017896541231', 'Borishal', 'teacher-images/avatar-5.jpg', 1, '2022-03-15 21:31:05', '2022-03-19 21:41:34', '$2y$10$PuJ76nEfmtp8d/xv.Fu/VORsh0kRVRYQD7cL4y6sf/JzK3/AvQlMW'),
(6, 'Fatiha Israt', 'FAT20228', 'fateha@gmail.com', '012345678912', 'Chittagonj', 'teacher-images/avatar-4.jpg', 1, '2022-03-15 21:54:14', '2022-03-19 22:12:29', '$2y$10$tEdMkrr1FYCONMnJ7lNNO.rev.91ygRHegM0M2Orsf4I7NX8oeUGy'),
(7, 'Habibur Rahman', 'HAB20227', 'habibur@gmail.com', '01712131614', 'Dhaka', 'teacher-images/avatar-7.jpg', 1, '2022-03-19 21:31:01', '2022-03-19 21:31:01', '$2y$10$PuUiVi6wce86wzL5ezCr0u7PehRpC2oJOh3LWzBqtpkKbFhuQGccq');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Shykot', 'shykot@gmail.com', NULL, '$2y$10$.FCc4A871L9LtU1fMw49e.AK2ic/582xgaNAIReX9adZ487atLBxm', NULL, NULL, NULL, NULL, NULL, '2022-03-03 00:50:31', '2022-03-03 00:50:31'),
(2, 'Shourav Hasan Oronno', 'shourav123@gmail.com', NULL, '$2y$10$/rYsYgMzfZ2GdSPCDUfYf.4oyYTOjL.clOTUnXanByaTzuIS8Ensi', NULL, NULL, NULL, NULL, NULL, '2022-03-13 22:14:29', '2022-03-14 00:52:23'),
(3, 'Shakib Hasan', 'shakib@gmail.com', NULL, '$2y$10$mx7A78M/DUAJv6QFqIL0VuOorcrZCmXL5HKs4hfO8qITeUeS4va4G', NULL, NULL, NULL, NULL, NULL, '2022-03-13 22:17:41', '2022-03-13 22:17:41'),
(4, 'Rafa Khan', 'rafa@gmail.com', NULL, '$2y$10$0OM4QXbgZF0.r9vb/E/a8OizYuXELLWgCgW6f4fb76Qa2vhc20z9W', NULL, NULL, NULL, NULL, NULL, '2022-03-13 22:37:28', '2022-03-13 22:37:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
