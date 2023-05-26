-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 май 2023 в 01:58
-- Версия на сървъра: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `borsa`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `auth_permission`
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
(25, 'Can add Клас', 7, 'add_klas'),
(26, 'Can change Клас', 7, 'change_klas'),
(27, 'Can delete Клас', 7, 'delete_klas'),
(28, 'Can view Клас', 7, 'view_klas'),
(29, 'Can add Предложение', 8, 'add_offer'),
(30, 'Can change Предложение', 8, 'change_offer'),
(31, 'Can delete Предложение', 8, 'delete_offer'),
(32, 'Can view Предложение', 8, 'view_offer'),
(33, 'Can add Предложение', 9, 'add_comment'),
(34, 'Can change Предложение', 9, 'change_comment'),
(35, 'Can delete Предложение', 9, 'delete_comment'),
(36, 'Can view Предложение', 9, 'view_comment');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$9ggFryclcsCd8gIYEp2pm8$vJ2lTbRSRbvEWt4/eKtvgmCBF8Xd5/h9cuz7wUJs304=', '2023-05-25 20:14:40.816240', 1, 'admin', '', '', '', 1, 1, '2023-04-15 16:17:59.932202'),
(2, 'pbkdf2_sha256$390000$psOVH9CDNmc1Sqk84jnOIJ$nN40RIt09CqXJIrf0IiaDjB2gAKNJhY33jSH3Yw5BoQ=', '2023-04-16 15:46:26.650729', 0, 'user1', 'Иван', 'Петров', '', 0, 1, '2023-04-16 15:46:25.811282'),
(3, 'pbkdf2_sha256$390000$L05KukDElBTxRXhGvYQlxt$tqCTmPMs7zLDwNC+9ywJsozKqpVibwvlVpcu1kh/830=', '2023-04-18 09:01:08.825751', 0, 'user_i', 'Иван', 'Халачев', '', 0, 1, '2023-04-18 09:00:43.608980');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-15 19:51:48.644262', '1', '8-ми', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-04-15 19:51:52.904245', '2', '9-ти', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-04-15 19:52:00.004850', '3', '10-ти', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-04-15 19:52:03.991671', '4', '11-ти', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-04-15 19:52:07.415630', '5', '12-ти', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-05-25 20:21:24.393107', '1', 'Учебници за 12-ти клас', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-05-25 20:22:42.381102', '2', 'Пълен комплект за 12-ти клас', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-05-25 20:23:43.824587', '1', 'Имам интерес - 0899887766', 1, '[{\"added\": {}}]', 9, 1),
(9, '2023-05-25 20:24:24.159855', '2', 'а има ли и .....', 1, '[{\"added\": {}}]', 9, 1),
(10, '2023-05-25 20:25:40.191257', '3', 'предлагам 321,00 лв.', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'main', 'comment'),
(7, 'main', 'klas'),
(8, 'main', 'offer'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-15 16:10:11.887153'),
(2, 'auth', '0001_initial', '2023-04-15 16:10:12.252313'),
(3, 'admin', '0001_initial', '2023-04-15 16:10:12.362846'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-15 16:10:12.372339'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-15 16:10:12.376418'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-15 16:10:12.436596'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-15 16:10:12.474326'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-15 16:10:12.491787'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-15 16:10:12.494294'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-15 16:10:12.566242'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-15 16:10:12.569657'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-15 16:10:12.574236'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-15 16:10:12.596222'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-15 16:10:12.612027'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-15 16:10:12.631654'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-15 16:10:12.641280'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-15 16:10:12.656452'),
(18, 'sessions', '0001_initial', '2023-04-15 16:10:12.681505'),
(19, 'main', '0001_initial', '2023-04-15 19:50:06.599871'),
(20, 'main', '0002_offer_comment', '2023-05-25 19:39:04.414917'),
(21, 'main', '0003_alter_comment_options_offer_picture_and_more', '2023-05-25 20:16:12.803447');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1wxsqi1gzeundwcim3yvmmnk8ws4yj8z', '.eJxVjEEOwiAQRe_C2hCmUDq4dO8ZmoEZbNVAUtqV8e7apAvd_vfef6mRtnUatybLOLM6K1Cn3y1SekjZAd-p3KpOtazLHPWu6IM2fa0sz8vh_h1M1KZvbQN5cdgnYRToyAdnAmTXYUAxMQyCPWYw0YMX4yx21GcTCJjBIgzq_QHLnTb1:1pwJ8e:37LF7o0JLLdHfxYATt3ql8Smnmmbsc2KxkeH1k3D-Xk', '2023-05-23 08:56:04.556222'),
('770rseqw9f3ylyamfjque9yzatn6aca0', '.eJxVjMEOwiAQRP-FsyHIglCP3vsNZGEXqRqalPZk_Hdp0oOeJpn3Zt4i4LaWsDVewkTiKkCcfruI6cl1B_TAep9lmuu6TFHuijxok-NM_Lod7t9BwVb6WhtnyNjBaUM90bPWQ050Bus9Wwe2c1TKQvRgEgJ0JaNyCV3kSxafL8MkN6s:1pohD2:JY6olbQfT9rsS6uYJ_6UtLPwg0-MPDvFPN2QfZjcy_s', '2023-05-02 09:01:08.828751'),
('8stn4atlvjsi5g78yr0uby7vdaguxke8', '.eJxVjEEOwiAQRe_C2hCmUDq4dO8ZmoEZbNVAUtqV8e7apAvd_vfef6mRtnUatybLOLM6K1Cn3y1SekjZAd-p3KpOtazLHPWu6IM2fa0sz8vh_h1M1KZvbQN5cdgnYRToyAdnAmTXYUAxMQyCPWYw0YMX4yx21GcTCJjBIgzq_QHLnTb1:1q2HM8:UO3hHlwF6oN1mnWNdsOTWTrxEZ4WKswcraT9j8v39Bs', '2023-06-08 20:14:40.823239'),
('zjx2e1ai4f4hyrs9y6avpeabjkjfs683', '.eJxVjEEOwiAQRe_C2hCmUDq4dO8ZmoEZbNVAUtqV8e7apAvd_vfef6mRtnUatybLOLM6K1Cn3y1SekjZAd-p3KpOtazLHPWu6IM2fa0sz8vh_h1M1KZvbQN5cdgnYRToyAdnAmTXYUAxMQyCPWYw0YMX4yx21GcTCJjBIgzq_QHLnTb1:1q0qi8:D1d2ZlgQNq01f8r7r4TikohRGsU-WVYL1vxJ-V79hkI', '2023-06-04 21:35:28.351502');

-- --------------------------------------------------------

--
-- Структура на таблица `main_comment`
--

DROP TABLE IF EXISTS `main_comment`;
CREATE TABLE `main_comment` (
  `id` bigint(20) NOT NULL,
  `text` varchar(100) NOT NULL,
  `offer_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `main_comment`
--

INSERT INTO `main_comment` (`id`, `text`, `offer_id_id`) VALUES
(1, 'Имам интерес - 0899887766', 1),
(2, 'а има ли и .....', 1),
(3, 'предлагам 321,00 лв.', 1);

-- --------------------------------------------------------

--
-- Структура на таблица `main_klas`
--

DROP TABLE IF EXISTS `main_klas`;
CREATE TABLE `main_klas` (
  `id` bigint(20) NOT NULL,
  `class_num` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `main_klas`
--

INSERT INTO `main_klas` (`id`, `class_num`) VALUES
(1, 8),
(2, 9),
(3, 10),
(4, 11),
(5, 12);

-- --------------------------------------------------------

--
-- Структура на таблица `main_offer`
--

DROP TABLE IF EXISTS `main_offer`;
CREATE TABLE `main_offer` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `class_id_id` bigint(20) DEFAULT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `main_offer`
--

INSERT INTO `main_offer` (`id`, `title`, `content`, `price`, `remark`, `class_id_id`, `picture`) VALUES
(1, 'Учебници за 12-ти клас', 'Български, Математка, Английски', 'по договаряне', 'В много добро състояние', 5, 'subject_pics/books2.jpg'),
(2, 'Пълен комплект за 12-ти клас', 'всички необходими учебници за 12-ти клас', '123.00 лв', 'В много добро състояние', 5, 'subject_pics/books6.jpg');

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
-- Indexes for table `main_comment`
--
ALTER TABLE `main_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_comment_offer_id_id_8366cbab_fk_main_offer_id` (`offer_id_id`);

--
-- Indexes for table `main_klas`
--
ALTER TABLE `main_klas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_offer`
--
ALTER TABLE `main_offer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_offer_class_id_id_eaaabe07_fk_main_klas_id` (`class_id_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `main_comment`
--
ALTER TABLE `main_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_klas`
--
ALTER TABLE `main_klas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_offer`
--
ALTER TABLE `main_offer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `main_comment`
--
ALTER TABLE `main_comment`
  ADD CONSTRAINT `main_comment_offer_id_id_8366cbab_fk_main_offer_id` FOREIGN KEY (`offer_id_id`) REFERENCES `main_offer` (`id`);

--
-- Ограничения за таблица `main_offer`
--
ALTER TABLE `main_offer`
  ADD CONSTRAINT `main_offer_class_id_id_eaaabe07_fk_main_klas_id` FOREIGN KEY (`class_id_id`) REFERENCES `main_klas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
