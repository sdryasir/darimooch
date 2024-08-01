-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 12:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `py_e_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add products', 7, 'add_products'),
(26, 'Can change products', 7, 'change_products'),
(27, 'Can delete products', 7, 'delete_products'),
(28, 'Can view products', 7, 'view_products'),
(29, 'Can add carousel', 8, 'add_carousel'),
(30, 'Can change carousel', 8, 'change_carousel'),
(31, 'Can delete carousel', 8, 'delete_carousel'),
(32, 'Can view carousel', 8, 'view_carousel'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$5dqLyWbppqskOt2DU8hd7I$okLiyRnFjjUu/JRYMy5nuOm3SdHbT1dw3YGPGDEz/9E=', '2024-07-29 11:12:38.619904', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-07-10 10:29:24.337769'),
(2, 'pbkdf2_sha256$720000$8jO90S4mtJf8kX3gjQWQNK$cKU/l13pFDv6hWn2RXbbfoKiK9EOIicRhL6bFPduXJI=', '2024-07-15 11:09:09.983755', 0, 'yasirali', '', '', 'sdr.yasir@gmail.com', 0, 1, '2024-07-11 10:38:57.480752'),
(3, 'pbkdf2_sha256$720000$ZrC1d6EnDaSencwHc3kstf$qROLed9yoG89rCKU5OYbjB2/1AYUTeduhRyk0E6MnKo=', '2024-07-15 11:08:59.305037', 0, 'ali', '', '', 'ali@gmail.com', 0, 1, '2024-07-15 11:08:47.527411'),
(4, 'pbkdf2_sha256$720000$CuaPOUXKmcHN6TpCrz4Mn2$lCnkThUjOCADu7HQ2uvKLPJdvGcQsGFjzROiJorJ6Gw=', NULL, 0, 'asd', '', '', 'asdas@sdf', 0, 1, '2024-07-22 10:22:13.407725');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousel_carousel`
--

CREATE TABLE `carousel_carousel` (
  `id` bigint(20) NOT NULL,
  `caption` varchar(60) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories_category`
--

CREATE TABLE `categories_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(60) NOT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories_category`
--

INSERT INTO `categories_category` (`id`, `title`, `image`) VALUES
(1, 'Dried Fruit', 'category/cat-2.jpg'),
(2, 'Vegetables', 'category/cat-3.jpg'),
(3, 'Fresh Meat', 'category/cat-5.jpg'),
(4, 'Fresh Berries', 'category/cat-1.jpg'),
(5, 'Juices', 'category/cat-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-07-10 10:34:58.100560', '1', 'Products object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-07-10 10:35:53.992763', '2', 'Products object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-07-22 10:31:40.532548', '3', 'Products object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-07-22 10:32:10.601661', '4', 'Products object (4)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-07-22 10:32:30.835328', '5', 'Products object (5)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-07-22 10:32:57.803260', '6', 'Products object (6)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-07-29 11:14:40.961462', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-07-29 11:15:05.835174', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2024-07-29 11:15:14.552168', '6', 'Products object (6)', 3, '', 7, 1),
(10, '2024-07-29 11:15:14.556176', '5', 'Products object (5)', 3, '', 7, 1),
(11, '2024-07-29 11:15:14.560184', '4', 'Products object (4)', 3, '', 7, 1),
(12, '2024-07-29 11:15:14.564181', '3', 'Products object (3)', 3, '', 7, 1),
(13, '2024-07-29 11:15:14.569175', '2', 'Products object (2)', 3, '', 7, 1),
(14, '2024-07-29 11:15:14.573176', '1', 'Products object (1)', 3, '', 7, 1),
(15, '2024-07-30 10:35:59.061388', '1', 'dried Fruit', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(16, '2024-07-30 10:36:16.270992', '3', 'Fresh Meat', 1, '[{\"added\": {}}]', 9, 1),
(17, '2024-07-30 10:36:47.726007', '4', 'Fresh Berries', 1, '[{\"added\": {}}]', 9, 1),
(18, '2024-07-30 10:39:43.221601', '1', 'Dried Fruit', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(19, '2024-07-30 10:44:36.583657', '5', 'Juices', 1, '[{\"added\": {}}]', 9, 1),
(20, '2024-07-30 10:48:53.505479', '7', 'Products object (7)', 1, '[{\"added\": {}}]', 7, 1),
(21, '2024-07-30 10:50:36.174209', '8', 'Products object (8)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'carousel', 'carousel'),
(9, 'categories', 'category'),
(5, 'contenttypes', 'contenttype'),
(7, 'products', 'products'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-10 10:26:07.166112'),
(2, 'auth', '0001_initial', '2024-07-10 10:26:08.075419'),
(3, 'admin', '0001_initial', '2024-07-10 10:26:08.293808'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-10 10:26:08.301759'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-10 10:26:08.310786'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-10 10:26:08.414212'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-10 10:26:08.540761'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-10 10:26:08.559751'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-10 10:26:08.573742'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-10 10:26:08.664594'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-10 10:26:08.669590'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-10 10:26:08.682583'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-10 10:26:08.703765'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-10 10:26:08.765394'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-10 10:26:08.789874'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-10 10:26:08.810773'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-10 10:26:08.833076'),
(18, 'carousel', '0001_initial', '2024-07-10 10:26:08.866056'),
(19, 'carousel', '0002_remove_carousel_price', '2024-07-10 10:26:08.887261'),
(20, 'products', '0001_initial', '2024-07-10 10:26:08.916069'),
(21, 'products', '0002_products_image', '2024-07-10 10:26:08.934059'),
(22, 'products', '0003_alter_products_image', '2024-07-10 10:26:09.011339'),
(23, 'sessions', '0001_initial', '2024-07-10 10:26:09.062319'),
(24, 'categories', '0001_initial', '2024-07-29 11:12:00.524355'),
(25, 'products', '0004_products_cat_id', '2024-07-29 11:12:00.631234'),
(26, 'products', '0005_remove_products_category_products_otherinfo_and_more', '2024-07-30 10:34:59.160490');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6csrmluljxzixcpkv3mr1vp6lpdagkdd', '.eJxVjMsOwiAQRf-FtSHlIQMu3fsNZIAZqRqalHZl_HdD0oVu7znnvkXEfatx77TGuYiLUOL0uyXMT2oDlAe2-yLz0rZ1TnIo8qBd3pZCr-vh_h1U7HXUbMAmUgiOCcqZJuZM2gWVvPXeaOvQgQXn2VPWgMZNhlPICT1SCOLzBfhVOFg:1sRqfJ:fj3j0JpJhrlHuf-Vb3UJZ6w7yx8veIxEa8FjSPAjQeI', '2024-07-25 10:04:41.096100'),
('cvzchzqizbeezy2xyf2jhbs50vud1lxj', '.eJxVjMsOwiAQRf-FtSHlIQMu3fsNZIAZqRqalHZl_HdD0oVu7znnvkXEfatx77TGuYiLUOL0uyXMT2oDlAe2-yLz0rZ1TnIo8qBd3pZCr-vh_h1U7HXUbMAmUgiOCcqZJuZM2gWVvPXeaOvQgQXn2VPWgMZNhlPICT1SCOLzBfhVOFg:1sYOIw:uGcpD4ELiP77m5u7Zm5jXYmnjg8iKlXp9YIQA7QuU64', '2024-08-12 11:12:38.625889');

-- --------------------------------------------------------

--
-- Table structure for table `products_products`
--

CREATE TABLE `products_products` (
  `id` bigint(20) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` longtext DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `cat_id_id` bigint(20) DEFAULT NULL,
  `otherInfo` longtext DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_products`
--

INSERT INTO `products_products` (`id`, `title`, `description`, `price`, `image`, `cat_id_id`, `otherInfo`, `stock`, `weight`) VALUES
(7, 'Vetgetable’s Package', 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus.', 500, 'products/product-details-1.jpg', 2, 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.', 10, 1),
(8, 'Capcicum', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 150, 'products/product-details-2.jpg', 2, 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 20, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `carousel_carousel`
--
ALTER TABLE `carousel_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_category`
--
ALTER TABLE `categories_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `products_products`
--
ALTER TABLE `products_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_products_cat_id_id_e18a083a_fk_categories_category_id` (`cat_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carousel_carousel`
--
ALTER TABLE `carousel_carousel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories_category`
--
ALTER TABLE `categories_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products_products`
--
ALTER TABLE `products_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `products_products`
--
ALTER TABLE `products_products`
  ADD CONSTRAINT `products_products_cat_id_id_e18a083a_fk_categories_category_id` FOREIGN KEY (`cat_id_id`) REFERENCES `categories_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
