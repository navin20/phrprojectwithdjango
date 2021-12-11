-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 03:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_db_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add coordinator', 7, 'add_coordinator'),
(26, 'Can change coordinator', 7, 'change_coordinator'),
(27, 'Can delete coordinator', 7, 'delete_coordinator'),
(28, 'Can view coordinator', 7, 'view_coordinator'),
(29, 'Can add appointmentsforpatients', 8, 'add_appointmentsforpatients'),
(30, 'Can change appointmentsforpatients', 8, 'change_appointmentsforpatients'),
(31, 'Can delete appointmentsforpatients', 8, 'delete_appointmentsforpatients'),
(32, 'Can view appointmentsforpatients', 8, 'view_appointmentsforpatients'),
(33, 'Can add doctor', 9, 'add_doctor'),
(34, 'Can change doctor', 9, 'change_doctor'),
(35, 'Can delete doctor', 9, 'delete_doctor'),
(36, 'Can view doctor', 9, 'view_doctor'),
(37, 'Can add patient', 10, 'add_patient'),
(38, 'Can change patient', 10, 'change_patient'),
(39, 'Can delete patient', 10, 'delete_patient'),
(40, 'Can view patient', 10, 'view_patient'),
(41, 'Can add payment', 11, 'add_payment'),
(42, 'Can change payment', 11, 'change_payment'),
(43, 'Can delete payment', 11, 'delete_payment'),
(44, 'Can view payment', 11, 'view_payment');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$OkucMszFXGxBbRBjklnSx6$Nm2xaGfmOZoXm4W5W1VmGkUWp6/T7fC1nhqfryHqcu0=', NULL, 0, 'navinrow', '', '', '', 0, 1, '2021-12-11 14:26:18.081634'),
(3, 'pbkdf2_sha256$260000$x5nsH9noipxU0LFVVEhEMP$OYPXBpOv3J3msTH3em0bwqLiSUzOLNb6BxiN7tYqr7o=', NULL, 0, 'navinrow22', '', '', '', 0, 1, '2021-12-11 14:28:55.172930'),
(4, 'pbkdf2_sha256$260000$EXB2lQsbfB0FnBIvRMjomW$sUGL34Lq5GjCkKqkRlPst6uMeVT2p7m5jGnVC9qMAMU=', NULL, 0, 'navinrow223333', '', '', '', 0, 1, '2021-12-11 14:34:56.013940'),
(5, 'pbkdf2_sha256$260000$4NLsQ2PlU46g19hOsbyEMY$kP/y09ecWSjw58CzAw7eod4XSGjqGEqO2NNZRr8WfEA=', NULL, 0, 'qwqw', '', '', '', 0, 1, '2021-12-11 14:36:43.842666'),
(6, 'pbkdf2_sha256$260000$ieVIuUmheNRRNNfM74fzwD$utO76pOy+mNHN4F+2B738zA9pojCPPEMKJ8S9mO626M=', NULL, 0, 'abcd1234', '', '', '', 0, 1, '2021-12-11 14:43:09.035070'),
(7, 'pbkdf2_sha256$260000$mhUlIKZs3sQemcWqopyPdT$noXhii+Sw/w3kokYGT+dt7Jy1kEBCIANi5aM4Q+fQNs=', NULL, 0, '1234', '', '', '', 0, 1, '2021-12-11 14:46:33.040392');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coordinator_appointmentsforpatients`
--

CREATE TABLE `coordinator_appointmentsforpatients` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `timeofappointment` time(6) NOT NULL,
  `doctor_id_number_id` bigint(20) NOT NULL,
  `patient_id_number_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coordinator_coordinator`
--

CREATE TABLE `coordinator_coordinator` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `id_card_number` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `username_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'coordinator', 'appointmentsforpatients'),
(7, 'coordinator', 'coordinator'),
(9, 'doctor', 'doctor'),
(10, 'patients', 'patient'),
(11, 'patients', 'payment'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-11 07:32:11.326248'),
(2, 'auth', '0001_initial', '2021-12-11 07:32:21.820504'),
(3, 'admin', '0001_initial', '2021-12-11 07:32:25.143465'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-12-11 07:32:25.197550'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-11 07:32:25.240215'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-12-11 07:32:25.941794'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-12-11 07:32:27.411850'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-12-11 07:32:27.560316'),
(9, 'auth', '0004_alter_user_username_opts', '2021-12-11 07:32:27.620346'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-12-11 07:32:28.403173'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-12-11 07:32:28.487860'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-12-11 07:32:28.528236'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-12-11 07:32:28.699580'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-12-11 07:32:28.865250'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-12-11 07:32:29.032823'),
(16, 'auth', '0011_update_proxy_permissions', '2021-12-11 07:32:29.094962'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-12-11 07:32:29.277879'),
(18, 'sessions', '0001_initial', '2021-12-11 07:32:29.864977'),
(19, 'patients', '0001_initial', '2021-12-11 07:46:44.788884'),
(20, 'doctor', '0001_initial', '2021-12-11 07:46:46.219902'),
(21, 'coordinator', '0001_initial', '2021-12-11 07:46:50.019827');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_doctor`
--

CREATE TABLE `doctor_doctor` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `id_card_number` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `department` varchar(30) NOT NULL,
  `salary` int(11) NOT NULL,
  `username_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patients_patient`
--

CREATE TABLE `patients_patient` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `id_card_number` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `medical` varchar(100) NOT NULL,
  `case` varchar(20) NOT NULL,
  `username_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patients_payment`
--

CREATE TABLE `patients_payment` (
  `id` bigint(20) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `patients_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `coordinator_appointmentsforpatients`
--
ALTER TABLE `coordinator_appointmentsforpatients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coordinator_appointm_doctor_id_number_id_ad08dbc6_fk_doctor_do` (`doctor_id_number_id`),
  ADD KEY `coordinator_appointm_patient_id_number_id_e3c05534_fk_patients_` (`patient_id_number_id`);

--
-- Indexes for table `coordinator_coordinator`
--
ALTER TABLE `coordinator_coordinator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username_id` (`username_id`);

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
-- Indexes for table `doctor_doctor`
--
ALTER TABLE `doctor_doctor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username_id` (`username_id`);

--
-- Indexes for table `patients_patient`
--
ALTER TABLE `patients_patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username_id` (`username_id`);

--
-- Indexes for table `patients_payment`
--
ALTER TABLE `patients_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patients_id` (`patients_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `coordinator_appointmentsforpatients`
--
ALTER TABLE `coordinator_appointmentsforpatients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coordinator_coordinator`
--
ALTER TABLE `coordinator_coordinator`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `doctor_doctor`
--
ALTER TABLE `doctor_doctor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients_patient`
--
ALTER TABLE `patients_patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients_payment`
--
ALTER TABLE `patients_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `coordinator_appointmentsforpatients`
--
ALTER TABLE `coordinator_appointmentsforpatients`
  ADD CONSTRAINT `coordinator_appointm_doctor_id_number_id_ad08dbc6_fk_doctor_do` FOREIGN KEY (`doctor_id_number_id`) REFERENCES `doctor_doctor` (`id`),
  ADD CONSTRAINT `coordinator_appointm_patient_id_number_id_e3c05534_fk_patients_` FOREIGN KEY (`patient_id_number_id`) REFERENCES `patients_patient` (`id`);

--
-- Constraints for table `coordinator_coordinator`
--
ALTER TABLE `coordinator_coordinator`
  ADD CONSTRAINT `coordinator_coordinator_username_id_599725b2_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctor_doctor`
--
ALTER TABLE `doctor_doctor`
  ADD CONSTRAINT `doctor_doctor_username_id_cbd52ddd_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `patients_patient`
--
ALTER TABLE `patients_patient`
  ADD CONSTRAINT `patients_patient_username_id_39e8f3a9_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `patients_payment`
--
ALTER TABLE `patients_payment`
  ADD CONSTRAINT `patients_payment_patients_id_34a7724c_fk_patients_patient_id` FOREIGN KEY (`patients_id`) REFERENCES `patients_patient` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
