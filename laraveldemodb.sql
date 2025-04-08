-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 10, 2024 at 03:51 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.33

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraveldemodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `attendence_date` date NOT NULL,
  `attendence_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('41737182-caaa-4dc6-ae25-1b1698b28cab', 4, 2, 'Hello. Ranjeet', NULL, 1, '2023-04-05 00:39:03', '2023-04-05 00:39:05'),
('5a2408b8-6895-486f-85c1-e9af7e077c14', 4, 2, 'Hello', NULL, 1, '2023-04-05 00:23:43', '2023-04-05 00:38:41'),
('5d009f82-3e83-48a6-b9e2-976499d03cf3', 2, 4, 'sir msg show raha hai kya without refresh?', NULL, 1, '2023-04-05 00:40:18', '2023-04-05 00:42:17'),
('60031777-12a3-42e0-b593-79da1be64c8c', 4, 20, 'ok, you are working response \r\nof msg - 2', NULL, 1, '2023-04-05 00:59:05', '2023-04-05 00:59:06'),
('6b628d8f-69da-47de-8f29-c22bef12c0e2', 5, 20, 'ye chat platform sahi hai ?', NULL, 1, '2023-04-05 00:48:35', '2023-04-05 00:48:50'),
('6c47b10a-a3f1-4608-8875-aad7316f7443', 5, 20, 'Hello sir GM', NULL, 1, '2023-04-05 00:45:13', '2023-04-05 00:46:16'),
('7708129c-6b6f-4a39-8728-c0cc34ff33b5', 1, 2, 'hello admin', NULL, 1, '2023-03-31 08:52:17', '2023-03-31 08:52:24'),
('7859698e-a669-49f6-8906-55b8807a4b98', 4, 19, 'good', NULL, 1, '2023-04-05 05:11:38', '2023-04-05 05:11:43'),
('796a6db9-f10b-4e0b-a4f7-39f91ef338e4', 4, 19, 'Hello', NULL, 1, '2023-04-05 05:10:55', '2023-04-05 05:11:03'),
('87421f8c-89b0-427b-ab74-df6ab0bf024b', 19, 4, 'This is working', NULL, 1, '2023-04-05 05:11:47', '2023-04-05 05:11:47'),
('955d73d5-3b9d-4387-88be-8d96f6381a8c', 19, 20, 'Hello', NULL, 0, '2023-04-05 05:10:11', '2023-04-05 05:10:11'),
('9c63000a-9201-44c0-8895-d954c010edf5', 4, 2, 'no, msg showed after refereshing.', NULL, 1, '2023-04-05 00:46:02', '2023-04-05 06:07:44'),
('a7a41225-5098-4fff-a7d3-9cc456fb1d48', 20, 4, 'ok, you are working msg - 2', NULL, 1, '2023-04-05 00:58:36', '2023-04-05 00:58:37'),
('aa3ec830-3ba2-4029-b53e-243a319b22c7', 2, 4, 'Hello sir GM', NULL, 1, '2023-04-05 00:38:50', '2023-04-05 00:38:55'),
('ae3a2331-7669-4b15-9078-79affee39c33', 20, 5, 'Hello', NULL, 1, '2023-04-05 00:43:09', '2023-04-05 00:45:04'),
('b2671b2f-797f-4c8a-b093-baa2cd554448', 2, 1, 'Hello Sir', NULL, 1, '2023-03-31 08:49:16', '2023-03-31 08:49:25'),
('b9375949-c0fb-41de-9340-4b31f558e347', 4, 20, 'Yes, I received ur message', NULL, 1, '2023-04-05 00:58:04', '2023-04-05 00:58:05'),
('c1dc5316-9f41-43d5-8b87-5a368e1d655b', 2, 4, 'Hello', NULL, 1, '2023-04-05 00:22:50', '2023-04-05 00:23:37'),
('d7862ddd-27d4-435b-9591-b639cced5c43', 20, 5, 'Please send one more message again and ping me on skype.', NULL, 1, '2023-04-05 00:48:10', '2023-04-05 00:48:14'),
('d9e25e9f-f25a-4f7b-a1d0-5647ab373656', 19, 4, 'How r you', NULL, 1, '2023-04-05 05:11:11', '2023-04-05 05:11:11'),
('e6d973a8-7a3b-4923-9af7-dd2597b1f1b0', 4, 4, 'hello', NULL, 0, '2023-04-05 06:09:00', '2023-04-05 06:09:00'),
('e9b20741-e744-41ce-be0f-2c14ff4d70d1', 1, 2, 'Yes, received', NULL, 1, '2023-03-31 08:50:00', '2023-03-31 08:50:11'),
('f0d25d87-d346-4dce-8135-8d5800a9f26b', 2, 1, 'hi sir plz reply', NULL, 1, '2023-03-31 08:49:54', '2023-03-31 08:49:54'),
('fb459d99-1a9f-4c5d-a843-66adcbd25613', 20, 4, 'Hello\r\n 2', NULL, 1, '2023-04-05 00:43:25', '2023-04-05 00:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `email_attachments` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `contact_fname` varchar(255) NOT NULL,
  `contact_lname` varchar(255) NOT NULL,
  `contact_phone` int(11) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `contact_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course_desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_desc`, `created_at`, `updated_at`) VALUES
(1, 'ENGLISH FOR CHILDREN', '<p><strong>Nam </strong>libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>', '2023-03-17 03:07:20', '2023-03-17 03:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `class_numeric` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'empty.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `media`, `created_at`, `updated_at`) VALUES
(2, '1679573719.jpg', '2023-03-23 06:45:19', '2023-03-23 06:45:19'),
(3, '1679577788.png', '2023-03-23 07:53:08', '2023-03-23 07:53:08'),
(4, '1679577815.jpg', '2023-03-23 07:53:35', '2023-03-23 07:53:35'),
(5, '1679577841.jpg', '2023-03-23 07:54:01', '2023-03-23 07:54:01'),
(6, '1679577903.png', '2023-03-23 07:55:03', '2023-03-23 07:55:03'),
(7, '1679577926.png', '2023-03-23 07:55:26', '2023-03-23 07:55:26'),
(9, '1679579090.png', '2023-03-23 08:14:50', '2023-03-23 08:14:50'),
(10, '1679579402.png', '2023-03-23 08:20:02', '2023-03-23 08:20:02'),
(11, '1679579430.jpg', '2023-03-23 08:20:30', '2023-03-23 08:20:30'),
(12, '1679579439.jpg', '2023-03-23 08:20:39', '2023-03-23 08:20:39'),
(13, '1679579456.png', '2023-03-23 08:20:56', '2023-03-23 08:20:56'),
(14, '1679579478.jpg', '2023-03-23 08:21:18', '2023-03-23 08:21:18'),
(15, '1679579487.jpg', '2023-03-23 08:21:27', '2023-03-23 08:21:27'),
(16, '1679579840.png', '2023-03-23 08:27:20', '2023-03-23 08:27:20'),
(17, '1679580777.png', '2023-03-23 08:42:57', '2023-03-23 08:42:57'),
(18, '1679580798.png', '2023-03-23 08:43:18', '2023-03-23 08:43:18'),
(19, '1679580808.png', '2023-03-23 08:43:28', '2023-03-23 08:43:28'),
(20, '1679580830.png', '2023-03-23 08:43:50', '2023-03-23 08:43:50'),
(21, '1679581332.png', '2023-03-23 08:52:12', '2023-03-23 08:52:12'),
(22, '1679581344.png', '2023-03-23 08:52:24', '2023-03-23 08:52:24'),
(23, '1679581355.png', '2023-03-23 08:52:35', '2023-03-23 08:52:35'),
(24, '1679581364.png', '2023-03-23 08:52:44', '2023-03-23 08:52:44'),
(25, '1680781861.jpg', '2023-04-06 06:21:01', '2023-04-06 06:21:01'),
(26, '1680781890.jpg', '2023-04-06 06:21:30', '2023-04-06 06:21:30'),
(27, '1680781920.jpg', '2023-04-06 06:22:00', '2023-04-06 06:22:00'),
(28, '1680781947.jpg', '2023-04-06 06:22:27', '2023-04-06 06:22:27'),
(29, '1680781974.jpg', '2023-04-06 06:22:54', '2023-04-06 06:22:54'),
(30, '1680782025.jpg', '2023-04-06 06:23:45', '2023-04-06 06:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_14_114748_create_permission_tables', 1),
(4, '2019_05_15_180937_create_students_table', 1),
(5, '2019_05_15_181154_create_parents_table', 1),
(6, '2019_05_15_181254_create_teachers_table', 1),
(7, '2019_05_15_181552_create_grades_table', 1),
(8, '2019_05_16_174745_create_subjects_table', 1),
(9, '2019_05_16_175620_create_grade_subject_table', 1),
(10, '2019_05_17_133226_create_attendances_table', 1),
(11, '2023_03_15_065131_create_slideshow_table', 2),
(12, '2023_03_16_121236_create_sliders_table', 3),
(13, '2023_03_16_142948_create_courses_table', 4),
(14, '2023_03_20_071900_create_skills_table', 5),
(15, '2023_03_20_080100_create_skills_table', 6),
(16, '2023_03_20_135409_drop_course_id_from_skills', 7),
(20, '2023_03_21_090311_create_pages_table', 8),
(21, '2016_08_07_145904_add_table_cms_apicustom', 9),
(22, '2016_08_07_150834_add_table_cms_dashboard', 9),
(23, '2016_08_07_151210_add_table_cms_logs', 9),
(24, '2016_08_07_151211_add_details_cms_logs', 9),
(25, '2016_08_07_152014_add_table_cms_privileges', 9),
(26, '2016_08_07_152214_add_table_cms_privileges_roles', 9),
(27, '2016_08_07_152320_add_table_cms_settings', 9),
(28, '2016_08_07_152421_add_table_cms_users', 9),
(29, '2016_08_07_154624_add_table_cms_menus_privileges', 9),
(30, '2016_08_07_154624_add_table_cms_moduls', 9),
(31, '2016_08_17_225409_add_status_cms_users', 9),
(32, '2016_08_20_125418_add_table_cms_notifications', 9),
(33, '2016_09_04_033706_add_table_cms_email_queues', 9),
(34, '2016_09_16_035347_add_group_setting', 9),
(35, '2016_09_16_045425_add_label_setting', 9),
(36, '2016_09_17_104728_create_nullable_cms_apicustom', 9),
(37, '2016_10_01_141740_add_method_type_apicustom', 9),
(38, '2016_10_01_141846_add_parameters_apicustom', 9),
(39, '2016_10_01_141934_add_responses_apicustom', 9),
(40, '2016_10_01_144826_add_table_apikey', 9),
(41, '2016_11_14_141657_create_cms_menus', 9),
(42, '2016_11_15_132350_create_cms_email_templates', 9),
(43, '2016_11_15_190410_create_cms_statistics', 9),
(44, '2016_11_17_102740_create_cms_statistic_components', 9),
(45, '2017_06_06_164501_add_deleted_at_cms_moduls', 9),
(46, '2023_03_23_105907_create_media_table', 9),
(47, '2023_03_27_090703_add_biodata_to_users_table', 10),
(48, '2023_03_31_081424_add_slider_id_to_pages_table', 11),
(49, '2023_03_31_999999_add_active_status_to_users', 12),
(50, '2023_03_31_999999_add_avatar_to_users', 12),
(51, '2023_03_31_999999_add_dark_mode_to_users', 12),
(52, '2023_03_31_999999_add_messenger_color_to_users', 12),
(53, '2023_03_31_999999_create_chatify_favorites_table', 12),
(54, '2023_03_31_999999_create_chatify_messages_table', 12),
(55, '2023_04_04_114841_add_experience_to_teachers_table', 13),
(56, '2023_04_10_043511_create_settings_table', 14),
(57, '2023_04_12_102151_add_description_to_teachers_table', 15),
(58, '2023_04_13_131250_add_slug_to_teachers_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(4, 'App\\User', 4),
(4, 'App\\User', 5),
(2, 'App\\User', 6),
(4, 'App\\User', 8),
(2, 'App\\User', 10),
(4, 'App\\User', 12),
(2, 'App\\User', 18),
(2, 'App\\User', 19),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 24),
(2, 'App\\User', 26),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(4, 'App\\User', 33),
(2, 'App\\User', 34);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8_unicode_ci,
  `meta_key` mediumtext COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_key`, `status`, `created_by`, `created_at`, `updated_at`, `slider_id`) VALUES
(1, 'Home', 'home', '<section id=\"profment\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-12 col-md-12 col-sm-12 col-12\">\r\n<div class=\"profmentrs\">\r\n    <div class=\"profmentrinr in1\">\r\n        <div class=\"prmtr\">\r\n<div class=\"prfinimg\"><div class=\"primg\"><img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679577903.png\" class=\"img-fluid\" alt=\"\"></div></div>\r\n<div class=\"prfincnt\">\r\n    <h3>Professional Mentor</h3>\r\n    <p>Pellentesque Ante, Non Eleifend<br>Justo Bibendum A.</p>\r\n</div></div>\r\n    </div>\r\n	\r\n	\r\n	    <div class=\"profmentrinr in2\">\r\n        <div class=\"prmtr\">\r\n<div class=\"prfinimg\"><div class=\"primg\"><img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679577926.png\" class=\"img-fluid\" alt=\"\"></div></div>\r\n<div class=\"prfincnt\">\r\n <h3>Lifetime Access </h3>\r\n    <p>Pellentesque Ante, Non Eleifend<br>Justo Bibendum A.</p>\r\n</div></div>\r\n    </div>\r\n	\r\n	    <div class=\"profmentrinr in3\">\r\n        <div class=\"prmtr\">\r\n<div class=\"prfinimg\"><div class=\"primg\"><img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579840.png\" class=\"img-fluid\" alt=\"\"></div></div>\r\n<div class=\"prfincnt\">\r\n    <h3>Ofline and online</h3>\r\n    <p>Pellentesque Ante, Non Eleifend<br>Justo Bibendum A.</p>\r\n</div></div>\r\n    </div>\r\n</div>\r\n\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n    <section id=\"prdcateg\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-12 col-md-12 col-sm-12 col-12\">\r\n<div class=\"sectitle\">\r\n    <h2>Popular Category</h2>\r\n</div>\r\n\r\n<div class=\"prdctg\">\r\n    <div class=\"prdctginr\">\r\n        <div class=\"prdctgimg\"><img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679580777.png\" class=\"img-fluid\" alt=\"\"></div>\r\n        <div class=\"prdctgtxt\"> <h4>Mathematics</h4></div>\r\n    </div>\r\n    <div class=\"prdctginr\">\r\n        <div class=\"prdctgimg\"><img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679580808.png\" class=\"img-fluid\" alt=\"\"></div>\r\n        <div class=\"prdctgtxt\"> <h4>Science</h4></div>\r\n    </div>\r\n    <div class=\"prdctginr\">\r\n        <div class=\"prdctgimg\"><img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679581332.png\" class=\"img-fluid\" alt=\"\"></div>\r\n        <div class=\"prdctgtxt\"> <h4>History</h4></div>\r\n    </div>\r\n    <div class=\"prdctginr\">\r\n        <div class=\"prdctgimg\"><img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679581344.png\" class=\"img-fluid\" alt=\"\"></div>\r\n        <div class=\"prdctgtxt\"> <h4>Hindi</h4></div>\r\n    </div>\r\n    <div class=\"prdctginr\">\r\n        <div class=\"prdctgimg\"><img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679581355.png\" class=\"img-fluid\" alt=\"\"></div>\r\n        <div class=\"prdctgtxt\"> <h4>English</h4></div>\r\n    </div>\r\n    <div class=\"prdctginr\">\r\n        <div class=\"prdctgimg\"><img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679581364.png\" class=\"img-fluid\" alt=\"\"></div>\r\n        <div class=\"prdctgtxt\"> <h4>Punjabi</h4></div>\r\n    </div>\r\n</div>\r\n                </div>\r\n                <div class=\"vlbtn\"><a href=\"#\">View All Courses</a></div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n\r\n\r\n    <section id=\"abt\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-6 col-md-6 col-sm-12 col-12\"> \r\n                    <div class=\"abtimg\">\r\n                        <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679577788.png\" class=\"img-fluid\" alt=\"\">\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-lg-6 col-md-6 col-sm-12 col-12\"> \r\n                    <div class=\"sectitle\">\r\n                        <h5>About Us</h5>\r\n                        <h2>Develop The Country<br>With Education</h2>\r\n                    </div>\r\n                    <p>Pellentesque Non Aliquet Sem. Aliquam Facilisis Nec Velit Vitae Commodo. Orci Varius Natoque Penatibus Et Magnis Dis Parturient Montes, Nascetur Ridiculus Mus.</p>\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam suscipit accumsan tortor vitae volutpat. Ut vitae est ac nisl interdum scelerisque eu et magna. Mauris porta consequat dolor, ut aliquet arcu imperdiet sit amet. In convallis, massa posuere malesuada lobortis, mauris eros sollicitudin velit, sit amet imperdiet sem dolor ac dolor. Aliquam semper massa et ligula suscipit cursus. Curabitur eu felis interdum, volutpat arcu quis, pretium magna.</p>\r\n                    <div class=\"vlbtn\"><a href=\"#\">Read More</a></div>\r\n                </div>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"whchooseus\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-12 col-md-12 col-sm-12 col-12\"> \r\n<div class=\"sectitle\">\r\n    <h5>Choose</h5>\r\n    <h2>Why Choose Us</h2>\r\n</div>\r\n\r\n<div class=\"shchrsct\">\r\n    <div class=\"shchrsctinner\">\r\n<div class=\"whsimg\">\r\n    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679580808.png\" class=\"img-fluid\" alt=\"\">\r\n</div>\r\n<h5>Learn More Anywhere</h5>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum, enim eu feugiat pulvinar, tortor erat auctor ligula, sit amet efficitur enim urna at enim.</p>\r\n    </div> \r\n    <div class=\"shchrsctinner\">\r\n        <div class=\"whsimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679580808.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <h5>Expert Instructor</h5>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum, enim eu feugiat pulvinar, tortor erat auctor ligula, sit amet efficitur enim urna at enim.</p>\r\n            </div> \r\n            <div class=\"shchrsctinner\">\r\n                <div class=\"whsimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679580808.png\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n                <h5>24/7 Strong Support</h5>\r\n                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum, enim eu feugiat pulvinar, tortor erat auctor ligula, sit amet efficitur enim urna at enim.</p>\r\n                    </div> \r\n \r\n</div>\r\n\r\n\r\n            </div>\r\n        </div>\r\n        </div>\r\n        </section>\r\n\r\n        <section id=\"ourpartners\">\r\n            <div class=\"container\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-lg-12 col-md-12 col-sm-12 col-12\"> \r\n        <div class=\"sectitle\">\r\n            <h2>Our Partner</h2>\r\n        </div>\r\n\r\n        <div class=\"partnslider\">\r\n            <div class=\"partnsliderinner\">\r\n                <div class=\"partneimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679573719.jpg\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n            </div>\r\n            <div class=\"partnsliderinner\">\r\n                <div class=\"partneimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679577815.jpg\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n            </div>\r\n            <div class=\"partnsliderinner\">\r\n                <div class=\"partneimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679577841.jpg\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n            </div>\r\n            <div class=\"partnsliderinner\">\r\n                <div class=\"partneimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579430.jpg\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n            </div>\r\n            <div class=\"partnsliderinner\">\r\n                <div class=\"partneimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579439.jpg\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n            </div>\r\n            <div class=\"partnsliderinner\">\r\n                <div class=\"partneimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679573719.jpg\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n            </div>\r\n            <div class=\"partnsliderinner\">\r\n                <div class=\"partneimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679577815.jpg\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n            </div>\r\n            <div class=\"partnsliderinner\">\r\n                <div class=\"partneimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579430.jpg\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n\r\n\r\n    </div>\r\n</div>\r\n</div></section>\r\n<section id=\"featuepartners\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-12 col-md-12 col-sm-12 col-12\"> \r\n<div class=\"sectitle\">\r\n    <h5>Our expert</h5>\r\n    <h2>Featured Teachers</h2>\r\n</div>\r\n\r\n\r\n<div class=\"featuredteachrs\">\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div></div>\r\n    </div>\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div></div>\r\n    </div>\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div></div>\r\n    </div>\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div></div>\r\n        </div>\r\n    </div>\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div></div>\r\n\r\n\r\n\r\n</div>\r\n\r\n\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'Home | Hire Best Tutors', 'Hire Best Tutors Around The Globe For Your Academic Success', 'Tutors Around The Globe For Your Academic Success', 0, 1, '2023-03-21 07:05:35', '2023-04-02 23:49:23', 1),
(2, 'About Us', 'about-us', '<section id=\"abt\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-6 col-md-6 col-sm-12 col-12\"> \r\n                    <div class=\"abtimg\">\r\n                        <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679577788.png\" class=\"img-fluid\" alt=\"\">\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-lg-6 col-md-6 col-sm-12 col-12\"> \r\n                    <div class=\"sectitle\">\r\n                        <h5>About Us</h5>\r\n                        <h2>Develop The Country<br>With Education</h2>\r\n                    </div>\r\n                    <p>Pellentesque Non Aliquet Sem. Aliquam Facilisis Nec Velit Vitae Commodo. Orci Varius Natoque Penatibus Et Magnis Dis Parturient Montes, Nascetur Ridiculus Mus.</p>\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam suscipit accumsan tortor vitae volutpat. Ut vitae est ac nisl interdum scelerisque eu et magna. Mauris porta consequat dolor, ut aliquet arcu imperdiet sit amet. In convallis, massa posuere malesuada lobortis, mauris eros sollicitudin velit, sit amet imperdiet sem dolor ac dolor. Aliquam semper massa et ligula suscipit cursus. Curabitur eu felis interdum, volutpat arcu quis, pretium magna.</p>\r\n                    <div class=\"vlbtn\"><a href=\"#\">Read More</a></div>\r\n                </div>\r\n</div>\r\n</div>\r\n<section id=\"featuepartners\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-12 col-md-12 col-sm-12 col-12\"> \r\n<div class=\"sectitle\">\r\n    <h5>Our expert</h5>\r\n    <h2>Featured Teachers</h2>\r\n</div>\r\n\r\n\r\n<div class=\"featuredteachrs\">\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div></div>\r\n    </div>\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div></div>\r\n    </div>\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div></div>\r\n    </div>\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div></div>\r\n        </div>\r\n    </div>\r\n    <div class=\"featuredteachrinner\">\r\n        <div class=\"featuredinimg\">\r\n        <div class=\"featuredtimg\">\r\n            <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579402.png\" class=\"img-fluid\" alt=\"\">\r\n        </div>\r\n        <div class=\"featcnt\">\r\n            <h5>Erics Widget</h5>\r\n            <p>Math Teacher</p>\r\n            <div class=\"social\">\r\n                <ul>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                    <li>\r\n                        <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div></div>\r\n\r\n\r\n\r\n</div>\r\n\r\n\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</section></section>', 'About | Hire Best Tutors', 'Hire Best Tutors Around The Globe For Your Academic Success', 'Hire Best Tutors Around The Globe For Your Academic Success', 0, 1, '2023-03-21 07:30:38', '2023-06-27 07:25:16', 0),
(5, 'Faq', 'faq', '<p><br></p>', 'FAQ | Hire Best Tutors', 'Hire Best Tutors Around The Globe For Your Academic Success', 'Hire Best Tutors Around The Globe For Your Academic Success', 0, 1, '2023-03-21 08:39:11', '2023-04-02 23:58:12', 0),
(6, 'Teachers', 'teachers', '<p><br></p>', 'Teacher | Hire Best Tutors', 'Hire Best Tutors Around The Globe For Your Academic Success', 'Hire Best Tutors Around The Globe For Your Academic Success', 0, 1, '2023-03-21 08:39:49', '2023-04-13 08:30:26', 0),
(8, 'Contact Us', 'contact-us', '<p><br></p>', 'Contact Us | Hire Best Tutors', 'Hire Best Tutors Around The Globe For Your Academic Success', 'Hire Best Tutors Around The Globe For Your Academic Success', 0, 1, '2023-03-21 09:06:11', '2023-04-02 23:59:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-03-14 02:12:21', '2023-03-14 02:12:21'),
(2, 'Teacher', 'web', '2023-03-14 02:12:21', '2023-03-14 02:12:21'),
(4, 'Student', 'web', '2023-03-14 02:12:21', '2023-03-14 02:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `page_id`, `created_at`, `updated_at`) VALUES
(1, 6, '2023-04-10 00:38:02', '2023-06-27 06:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skill_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `skill_desc`, `created_at`, `updated_at`) VALUES
(2, 'Design', '<p>Neque porro <strong>quisquam </strong>est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...</p>', '2023-03-20 08:56:32', '2023-03-20 09:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `baneer_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `video_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `baneer_image`, `video_url`, `created_at`, `updated_at`) VALUES
(2, 'Best Education Template Ever', '<p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...</p>', '1680499807.png', 'https://www.youtube.com/watch?v=9xwazD5SyVg', '2023-03-16 07:42:59', '2023-04-03 00:00:07'),
(6, 'New Approach to Kids Education', '<p>Sea ipsum kasd eirmod kasd magna, est sea et diam ipsum est amet sed sit. ipsum dolor no justo dolor et.</p>', '1680499839.png', 'https://www.youtube.com/watch?v=9xwazD5SyVg', '2023-03-16 09:10:33', '2023-04-03 00:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `gender`, `phone`, `dateofbirth`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(1, 4, 'male', '08278716008', '2023-04-12', 'Chandigarh, 7phase', '7phase', '2023-03-14 02:12:21', '2023-04-06 00:47:58'),
(3, 33, 'male', '08278716008', '1995-12-01', 'Chandigarh, 7phase', '7phase', '2023-04-06 00:54:50', '2023-04-06 00:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_code` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `gender`, `phone`, `dateofbirth`, `current_address`, `permanent_address`, `created_at`, `updated_at`, `experience`, `description`, `slug`) VALUES
(1, 2, 'male', '+918264646536', '2002-02-13', '#452', 'Kl-1,#32', '2023-03-14 02:12:21', '2023-04-13 09:13:56', '', '<p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>\r\n                <p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>', 'victoria-abigail'),
(2, 19, 'female', '+09222884747', '1990-04-11', '@123', '@123', '2023-04-04 05:08:52', '2023-04-13 09:13:35', '', '<p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>\r\n                <p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>', 'charlie-james'),
(3, 21, 'male', '+04736533443', '1990-04-11', '#231', '#231', '2023-04-04 05:47:06', '2023-04-13 09:13:06', '', '<p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>\r\n                <p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>', 'danyal-zafar'),
(4, 22, 'female', '+0773633355', '1990-04-11', '#231, 012', '#231, 012', '2023-04-04 05:49:04', '2023-04-13 09:12:39', '', '<p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>\r\n                <p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>', 'alexa-michelle'),
(5, 24, 'female', '+91833366363', '2009-04-11', '#23, Phase 3, ios', '#23, Phase 3, ios', '2023-04-04 06:53:45', '2023-04-13 09:12:20', '1', '<section id=\"abt\" class=\"tcrdtl\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-6 col-md-6 col-sm-12 col-12\"> \r\n                <div class=\"sectitle\">\r\n                    <h2>Michelle Obama</h2>\r\n                </div>\r\n                <div class=\"micldt\">\r\n                    <ul>\r\n                        <li>\r\n                            <a href=\"tel:+9198123456789\"><i class=\"fa fa-phone\" aria-hidden=\"true\"></i> +91-98123456789</a>\r\n                        </li>\r\n                        <li>\r\n                            <a href=\"mailto:info@michelleobama@gmail.com\"><i class=\"fa fa-envelope-open-o\" aria-hidden=\"true\"></i> info@michelleobama@gmail.com</a>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n                <p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>\r\n                <p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>\r\n                <div class=\"vlbtn abbs\"><a href=\"#\">Become an Instructor</a></div>\r\n            </div>\r\n            <div class=\"col-lg-6 col-md-6 col-sm-12 col-12\"> \r\n                <div class=\"abtimg\">\r\n                    <img src=\"http://112.196.22.165:4356/laraveldemo/schoolsystem/public/images/media/1679579090.png\" class=\"img-fluid\" alt=\"\">\r\n                </div>\r\n            </div>\r\n</div>\r\n</div>\r\n</section>', 'abigail-michelle'),
(7, 29, 'male', '+9198123456789', '2006-04-11', '5 Computer Drive', '5 Computer Drive', '2023-04-04 07:06:29', '2023-04-13 09:12:02', '1', '<p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>\r\n                <p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>', 'david-beckham'),
(8, 30, 'male', '05353535555', '2011-12-22', 'Chandigarh, 7phase', 'Chandigarh, 7phase', '2023-04-04 07:09:32', '2023-04-13 09:11:49', '1', '<p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>\r\n                <p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>', 'michelle-obama'),
(9, 34, 'male', '08278716008', '2023-04-12', 'Chandigarh, 7phase', 'Chandigarh, 7phase', '2023-04-11 10:33:32', '2023-04-13 09:11:35', '3', '<p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>\r\n                <p>Aliquam Tincidunt Arcu Sem, Ut Consectetur Velit Fringilla Ut. Praesent Finibus Lectus Sit Amet Augue Cursus Consequat. Quisque In Pulvinar Tellus. Vestibulum Maximus Lectus Dolor.</p>', 'john-austin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `messenger_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_picture`, `remember_token`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 'Matrix', 'matrixinfologics@gmail.com', NULL, '$2y$10$yhmhlDKA2/XeI1xJUm6Jnu04ox5TBB8VqSP6j0ElvD5/p7Mmf3ftq', 'matrix-1.png', '7tBEBSPJpSzH6NR9exnNvhY2a3QgcsaThZRTctGPFJ6cQ18Rj4j6wtmgC8uY', '2023-03-14 02:12:21', '2023-03-31 09:32:08', 1, 'avatar.png', 0, '#00BCD4'),
(2, 'Victoria Abigail', 'teacher@mail.com', NULL, '$2y$10$yhmhlDKA2/XeI1xJUm6Jnu04ox5TBB8VqSP6j0ElvD5/p7Mmf3ftq', 'php-developer-2.jpg', NULL, '2023-03-14 02:12:21', '2023-04-06 06:39:19', 1, 'avatar.png', 0, '#FF9800'),
(4, 'Ranjeet singh', 'student@mail.com', NULL, '$2y$10$yhmhlDKA2/XeI1xJUm6Jnu04ox5TBB8VqSP6j0ElvD5/p7Mmf3ftq', 'ranjeet-singh-4.jpg', NULL, '2023-03-14 02:12:21', '2023-04-05 09:13:42', 0, 'avatar.png', 0, NULL),
(19, 'Charlie James', 'james@gmail.com', NULL, '$2y$10$VHFZNGI1wM33Vut5RzZKLulmpiWnPevjs18Ogqdh8hDLTt2lfzi26', 'web-developer-test2-19.jpg', NULL, '2023-04-04 05:08:52', '2023-04-06 06:38:42', 0, 'avatar.png', 0, NULL),
(21, 'Danyal zafar', 'danyalzafar@gmail.com', NULL, '$2y$10$AA/5bqcgURIRmLloqCgMvONmQztErss1Cuwpt0ht56QR6/BBqAedq', 'web-developer-test-004-21.jpg', NULL, '2023-04-04 05:47:06', '2023-04-06 06:38:16', 0, 'avatar.png', 0, NULL),
(22, 'Alexa Michelle', 'abigail@gmail.com', NULL, '$2y$10$AjXHSpBehIS7HU1X7gx9n.4biuADSDj4ZGDL4wCLviTw2qCY/6Pw.', 'web-developer-test-005-22.jpg', NULL, '2023-04-04 05:49:04', '2023-04-13 08:01:22', 0, 'avatar.png', 0, NULL),
(24, 'Abigail Michelle', 'abigailmichelle@gmail.com', NULL, '$2y$10$vbzXI2wCJBHAforQ0I79POCc2jnPCKCqDQhsja1HHURkYBlh9D.KO', 'web-developer-test12-24.jpg', NULL, '2023-04-04 06:53:45', '2023-04-06 06:37:01', 0, 'avatar.png', 0, NULL),
(29, 'David Beckham', 'beckham@weismannweb.com', NULL, '$2y$10$tobcI4A8rqh4rPIAZt2mIeUNkO5j6eMTAT4riAmqzpuTO1A3MmXna', 'john-doe-29.jpg', NULL, '2023-04-04 07:06:29', '2023-04-06 06:32:55', 0, 'avatar.png', 0, NULL),
(30, 'Michelle Obama', 'michelle498@gmail.com', NULL, '$2y$10$Z1LdhQw5OBrp84kTFjHVKOma.B26ChQKyiK8BUMFsL/kGWoLABVL6', 'michelle-obama-30.jpg', NULL, '2023-04-04 07:09:32', '2023-04-06 06:30:56', 0, 'avatar.png', 0, NULL),
(33, 'Ranjeet singh', 'ranjeetgautam498@gmail.com', NULL, '$2y$10$yhmhlDKA2/XeI1xJUm6Jnu04ox5TBB8VqSP6j0ElvD5/p7Mmf3ftq', 'ranjeet-singh-33.jpg', 'ejyY4yFiSAbfoq5tu4ZhSmlMlhpyALJwpSlGMFnWWQWkwNiXYpzWVyoFq1Eo', '2023-04-06 00:54:50', '2023-04-06 00:56:05', 0, 'avatar.png', 0, NULL),
(34, 'John austin', 'austin@gmail.com', NULL, '$2y$10$20ZjSnXQfUBGeWxPaRe0euA.wwdZ/h4l9GRRnx2.HFfBr2LH6L8qi', 'john-austin-34.jpg', NULL, '2023-04-11 10:33:32', '2023-04-11 10:34:47', 0, 'avatar.png', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
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
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
