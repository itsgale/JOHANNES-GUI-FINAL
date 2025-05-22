-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 11:13 PM
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
-- Database: `cateringdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cateringp`
--

CREATE TABLE `cateringp` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `log_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `u_username` varchar(50) NOT NULL,
  `action_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`log_id`, `u_id`, `u_username`, `action_time`, `log_action`) VALUES
(615, 72, 'gale', '2025-05-18 18:14:29', 'Logged Out'),
(616, 73, 'qwe', '2025-05-18 18:14:32', 'Logged as User'),
(617, 73, 'qwe', '2025-05-18 18:15:53', 'Logged as User'),
(618, 73, 'qwe', '2025-05-18 18:17:50', 'Logged as User'),
(619, 73, 'qwe', '2025-05-18 18:19:21', 'Logged as User'),
(620, 73, 'qwe', '2025-05-18 18:36:21', 'Logged as User'),
(621, 73, 'qwe', '2025-05-18 18:38:18', 'Logged as User'),
(622, 73, 'qwe', '2025-05-18 18:45:52', 'Logged as User'),
(623, 73, 'qwe', '2025-05-18 18:48:27', 'Logged as User'),
(624, 73, 'qwe', '2025-05-18 18:50:41', 'Logged as User'),
(625, 73, 'qwe', '2025-05-18 18:53:12', 'Logged as User'),
(626, 73, 'qwe', '2025-05-18 19:04:06', 'Logged as User'),
(627, 73, 'qwe', '2025-05-18 19:33:39', 'Logged as User'),
(628, 73, 'qwe', '2025-05-18 19:33:51', 'Logged Out'),
(629, 73, 'qwe', '2025-05-18 19:45:41', 'Logged as User'),
(630, 73, 'qwe', '2025-05-18 19:46:05', 'Logged Out'),
(631, 72, 'gale', '2025-05-18 19:49:34', 'Logged as Admin'),
(632, 73, 'qwe', '2025-05-18 19:53:06', 'Logged as User'),
(633, 73, 'qwe', '2025-05-18 19:53:13', 'Logged Out'),
(634, 73, 'qwe', '2025-05-18 19:55:51', 'Logged as User'),
(635, 73, 'qwe', '2025-05-18 19:58:56', 'Logged as User'),
(636, 73, 'qwe', '2025-05-18 19:59:19', 'Logged as User'),
(637, 73, 'qwe', '2025-05-18 19:59:26', 'Logged Out'),
(638, 73, 'qwe', '2025-05-18 20:01:36', 'Logged as User'),
(639, 73, 'qwe', '2025-05-18 20:01:45', 'Logged Out'),
(640, 73, 'qwe', '2025-05-18 20:04:52', 'Logged as User'),
(641, 73, 'qwe', '2025-05-18 20:05:18', 'Logged as User'),
(642, 73, 'qwe', '2025-05-18 20:05:29', 'Logged Out'),
(643, 73, 'qwe', '2025-05-18 20:38:02', 'Logged as User'),
(644, 73, 'qwe', '2025-05-18 20:38:08', 'Logged Out'),
(645, 73, 'qwe', '2025-05-18 20:38:10', 'Logged as User'),
(646, 72, 'gale', '2025-05-18 21:53:18', 'Logged as Admin'),
(647, 72, 'gale', '2025-05-18 22:02:07', 'Logged as Admin'),
(648, 72, 'gale', '2025-05-18 22:02:18', 'Logged Out'),
(649, 73, 'qwe', '2025-05-18 22:02:22', 'Logged as User'),
(650, 73, 'qwe', '2025-05-18 22:02:34', 'Logged Out'),
(651, 73, 'qwe', '2025-05-19 05:15:29', 'Logged as User'),
(652, 73, 'qwe', '2025-05-19 05:24:37', 'Logged as User'),
(653, 73, 'qwe', '2025-05-19 05:25:08', 'Logged Out'),
(654, 72, 'gale', '2025-05-19 05:25:12', 'Logged as Admin'),
(655, 72, 'gale', '2025-05-19 05:25:58', 'Logged Out'),
(656, 73, 'qwe', '2025-05-19 05:36:17', 'Logged as User'),
(657, 73, 'qwe', '2025-05-19 05:38:15', 'Logged as User'),
(658, 73, 'qwe', '2025-05-19 05:40:09', 'Logged as User'),
(659, 72, 'gale', '2025-05-19 05:42:22', 'Logged as Admin'),
(660, 72, 'gale', '2025-05-19 05:43:04', 'Logged as Admin'),
(661, 72, 'gale', '2025-05-19 05:43:48', 'Logged as Admin'),
(662, 72, 'gale', '2025-05-19 05:53:11', 'Logged as Admin'),
(663, 72, 'gale', '2025-05-19 06:07:15', 'Logged as Admin'),
(664, 72, 'gale', '2025-05-19 06:07:40', 'Admin Updated Account: gale'),
(665, 72, 'gale', '2025-05-19 06:07:52', 'Admin Updated Account: qwe'),
(666, 72, 'gale', '2025-05-19 06:10:54', 'Logged as Admin'),
(667, 72, 'gale', '2025-05-19 06:11:05', 'Logged Out'),
(668, 73, 'qwe', '2025-05-19 06:11:21', 'Forgot, and changed their password'),
(669, 73, 'qwe', '2025-05-19 06:11:32', 'Forgot, and changed their password'),
(670, 73, 'qwe', '2025-05-19 06:11:45', 'Logged as User'),
(671, 72, 'gale', '2025-05-22 14:45:20', 'Forgot, and changed their password'),
(672, 72, 'gale', '2025-05-22 14:45:28', 'Logged as Admin'),
(673, 72, 'gale', '2025-05-22 14:52:54', 'Logged as Admin'),
(674, 72, 'gale', '2025-05-22 14:55:48', 'Logged as Admin'),
(675, 72, 'gale', '2025-05-22 15:01:12', 'Logged as Admin'),
(676, 72, 'gale', '2025-05-22 15:05:36', 'Logged as Admin'),
(677, 72, 'gale', '2025-05-22 15:32:57', 'Logged as Admin'),
(678, 72, 'gale', '2025-05-22 15:55:49', 'Logged as Admin'),
(679, 72, 'gale', '2025-05-22 16:01:52', 'Logged as Admin'),
(680, 72, 'gale', '2025-05-22 16:03:58', 'Logged as Admin'),
(681, 72, 'gale', '2025-05-22 16:07:41', 'Logged as Admin'),
(682, 72, 'gale', '2025-05-22 16:08:08', 'Logged as Admin'),
(683, 72, 'gale', '2025-05-22 16:15:51', 'Logged as Admin'),
(684, 72, 'gale', '2025-05-22 16:17:38', 'Logged as Admin'),
(685, 72, 'gale', '2025-05-22 16:20:28', 'Logged as Admin'),
(686, 72, 'gale', '2025-05-22 16:21:03', 'Logged as Admin'),
(687, 72, 'gale', '2025-05-22 16:23:25', 'Logged as Admin'),
(688, 72, 'gale', '2025-05-22 16:23:51', 'Logged as Admin'),
(689, 72, 'gale', '2025-05-22 16:29:01', 'Logged as Admin'),
(690, 73, 'qwe', '2025-05-22 16:30:47', 'Forgot, and changed their password'),
(691, 73, 'qwe', '2025-05-22 16:30:52', 'Logged as User'),
(692, 73, 'qwe', '2025-05-22 16:36:23', 'Logged as User'),
(693, 73, 'qwe', '2025-05-22 16:38:10', 'Logged as User'),
(694, 73, 'qwe', '2025-05-22 16:40:44', 'Logged as User'),
(695, 73, 'qwe', '2025-05-22 16:42:42', 'Logged as User'),
(696, 72, 'gale', '2025-05-22 16:45:20', 'Logged as Admin'),
(697, 72, 'gale', '2025-05-22 16:52:26', 'Logged as Admin'),
(698, 72, 'gale', '2025-05-22 16:56:31', 'Logged as Admin'),
(699, 72, 'gale', '2025-05-22 17:01:09', 'Logged as Admin'),
(700, 72, 'gale', '2025-05-22 17:04:50', 'Logged as Admin'),
(701, 73, 'qwe', '2025-05-22 17:29:55', 'Logged as User'),
(702, 73, 'qwe', '2025-05-22 17:35:15', 'Logged as User'),
(703, 73, 'qwe', '2025-05-22 17:36:09', 'Logged as User'),
(704, 73, 'qwe', '2025-05-22 17:36:54', 'Logged as User'),
(705, 73, 'qwe', '2025-05-22 17:37:28', 'Logged as User'),
(706, 73, 'qwe', '2025-05-22 17:38:27', 'Logged as User'),
(707, 73, 'qwe', '2025-05-22 17:38:44', 'Logged as User'),
(708, 73, 'qwe', '2025-05-22 17:43:26', 'Logged as User'),
(711, 73, 'qwe', '2025-05-22 19:33:31', 'Forgot, and changed their password'),
(712, 73, 'qwe', '2025-05-22 19:33:33', 'Logged as User'),
(713, 73, 'qwe', '2025-05-22 19:34:51', 'Logged Out'),
(714, 72, 'gale', '2025-05-22 19:35:29', 'Forgot, and changed their password'),
(715, 72, 'gale', '2025-05-22 19:35:33', 'Logged as Admin'),
(716, 72, 'gale', '2025-05-22 19:39:47', 'Logged Out'),
(717, 73, 'qwe', '2025-05-22 19:40:04', 'Logged as User'),
(718, 73, 'qwe', '2025-05-22 19:42:03', 'Logged Out'),
(719, 72, 'gale', '2025-05-22 19:42:07', 'Logged as Admin'),
(720, 72, 'gale', '2025-05-22 19:42:33', 'Logged Out'),
(721, 73, 'qwe', '2025-05-22 19:42:37', 'Logged as User'),
(722, 73, 'qwe', '2025-05-22 19:43:54', 'Logged Out'),
(723, 73, 'qwe', '2025-05-22 19:44:03', 'Logged as User'),
(724, 73, 'qwe', '2025-05-22 19:44:22', 'Logged Out'),
(725, 72, 'gale', '2025-05-22 19:47:13', 'Logged as Admin'),
(726, 72, 'gale', '2025-05-22 19:47:43', 'Logged Out'),
(727, 73, 'qwe', '2025-05-22 19:47:49', 'Logged as User'),
(728, 73, 'qwe', '2025-05-22 19:49:26', 'Logged Out'),
(729, 72, 'gale', '2025-05-22 19:49:29', 'Logged as Admin'),
(730, 72, 'gale', '2025-05-22 19:52:45', 'Logged Out'),
(731, 73, 'qwe', '2025-05-22 19:52:49', 'Logged as User'),
(732, 73, 'qwe', '2025-05-22 19:53:00', 'Logged Out'),
(733, 72, 'gale', '2025-05-22 19:53:22', 'Logged as Admin'),
(734, 72, 'gale', '2025-05-22 19:59:43', 'Logged Out'),
(735, 73, 'qwe', '2025-05-22 19:59:46', 'Logged as User'),
(736, 73, 'qwe', '2025-05-22 20:01:17', 'Logged Out'),
(738, 72, 'gale', '2025-05-22 20:05:09', 'Logged as Admin'),
(739, 72, 'gale', '2025-05-22 20:05:19', 'Admin Updated Account: mike'),
(740, 72, 'gale', '2025-05-22 20:05:21', 'Logged Out'),
(747, 72, 'gale', '2025-05-22 20:12:38', 'Logged as Admin'),
(753, 72, 'gale', '2025-05-22 20:29:13', 'Logged as Admin'),
(754, 72, 'gale', '2025-05-22 20:32:17', 'Logged Out'),
(755, 73, 'qwe', '2025-05-22 20:32:24', 'Logged as User'),
(756, 73, 'qwe', '2025-05-22 20:39:11', 'Logged Out'),
(757, 72, 'gale', '2025-05-22 20:39:16', 'Logged as Admin'),
(758, 72, 'gale', '2025-05-22 20:41:23', 'Logged Out'),
(759, 73, 'qwe', '2025-05-22 20:41:27', 'Logged as User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservations`
--

CREATE TABLE `tbl_reservations` (
  `reservation_id` int(50) NOT NULL,
  `u_id` int(50) NOT NULL,
  `reservation_date` datetime NOT NULL,
  `catering_package` varchar(100) NOT NULL,
  `number_of_guests` int(11) NOT NULL,
  `special_requests` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `u_id` int(255) NOT NULL,
  `u_fname` varchar(50) NOT NULL,
  `u_lname` varchar(50) NOT NULL,
  `u_username` varchar(50) NOT NULL,
  `u_type` varchar(255) NOT NULL,
  `u_password` varchar(50) NOT NULL,
  `u_phone` varchar(50) NOT NULL,
  `u_image` varchar(255) NOT NULL,
  `u_status` varchar(50) NOT NULL,
  `security_question` varchar(255) NOT NULL,
  `security_answer` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`u_id`, `u_fname`, `u_lname`, `u_username`, `u_type`, `u_password`, `u_phone`, `u_image`, `u_status`, `security_question`, `security_answer`, `created_at`) VALUES
(72, 'gale', 'gale', 'gale', 'Admin', '73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', '09957342019', 'src/userimages/m1.jpg', 'Active', 'What is your favorite food?', 'gale', '2025-05-18 21:18:16'),
(73, 'qwe', 'qwe', 'qwe', 'User', 'DR6kwlbNUKKnzL/SKz2ZWfb9ML2EC5/zx8Ze5OId8G0=', '09957342018', 'src/userimages/m2.jpg', 'Active', 'What is your favorite food?', 'qwe', '2025-05-18 21:18:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cateringp`
--
ALTER TABLE `cateringp`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_log_user_id` (`u_id`);

--
-- Indexes for table `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `tbl_reservations_ibfk_1` (`u_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cateringp`
--
ALTER TABLE `cateringp`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=762;

--
-- AUTO_INCREMENT for table `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  MODIFY `reservation_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `u_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD CONSTRAINT `fk_log_user_id` FOREIGN KEY (`u_id`) REFERENCES `tbl_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
