-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 07:52 PM
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

--
-- Dumping data for table `cateringp`
--

INSERT INTO `cateringp` (`package_id`, `package_name`, `description`, `price`, `created_at`, `updated_at`, `u_id`) VALUES
(5, 'Otin', 'hahahays', 0.00, '2025-05-22 16:04:12', '2025-05-22 16:04:12', 0),
(6, 'otindako', 'ksajfuhfasn', 1200.00, '2025-05-22 16:08:19', '2025-05-22 16:08:19', 0),
(7, 'eqwew', 'asdasd', 12.00, '2025-05-22 16:17:45', '2025-05-22 16:17:45', 0),
(8, 'safa', 'asdas', 1233.00, '2025-05-22 16:20:39', '2025-05-22 16:20:39', 0),
(9, 'akjsdakn', 'ajkdnasdj', 12334.00, '2025-05-22 16:21:20', '2025-05-22 16:21:20', 0),
(11, 'asda', 'asdasd', 123123.00, '2025-05-22 16:29:07', '2025-05-22 16:29:07', 0);

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
(524, 72, 'gale', '2025-05-17 19:55:21', 'Registered for the first time'),
(525, 73, 'qwe', '2025-05-17 19:55:50', 'Registered for the first time'),
(526, 72, 'gale', '2025-05-17 19:56:00', 'Logged as Admin'),
(527, 72, 'gale', '2025-05-17 19:56:19', 'Admin Updated Account: qwe'),
(528, 72, 'gale', '2025-05-17 19:56:22', 'Logged Out'),
(529, 73, 'qwe', '2025-05-17 19:56:26', 'Logged as User'),
(530, 73, 'qwe', '2025-05-17 19:56:47', 'User Changed Their Details'),
(531, 73, 'qwe', '2025-05-17 19:57:12', 'Logged Out'),
(532, 73, 'qwe', '2025-05-17 19:57:25', 'Forgot, and changed their password'),
(534, 73, 'qwe', '2025-05-17 19:57:51', 'Forgot, and changed their password'),
(535, 73, 'qwe', '2025-05-17 19:57:54', 'Logged as User'),
(536, 73, 'qwe', '2025-05-17 19:58:01', 'Logged Out'),
(537, 72, 'gale', '2025-05-17 19:58:05', 'Logged as Admin'),
(538, 72, 'gale', '2025-05-17 19:58:20', 'User Changed Their Details'),
(539, 72, 'gale', '2025-05-17 19:58:22', 'Logged Out'),
(540, 73, 'qwe', '2025-05-17 20:02:50', 'Logged as User'),
(541, 73, 'qwe', '2025-05-17 20:02:52', 'Logged Out'),
(542, 73, 'qwe', '2025-05-17 20:59:46', 'Logged as User'),
(543, 73, 'qwe', '2025-05-17 20:59:52', 'Logged Out'),
(544, 73, 'qwe', '2025-05-17 21:02:30', 'Logged as User'),
(545, 73, 'qwe', '2025-05-17 21:02:32', 'Logged Out'),
(546, 72, 'gale', '2025-05-17 21:02:36', 'Logged as Admin'),
(547, 72, 'gale', '2025-05-17 21:02:39', 'Logged Out'),
(548, 72, 'gale', '2025-05-18 09:04:29', 'Logged as Admin'),
(549, 72, 'gale', '2025-05-18 09:04:32', 'Logged Out'),
(550, 73, 'qwe', '2025-05-18 09:04:35', 'Logged as User'),
(551, 73, 'qwe', '2025-05-18 09:04:38', 'Logged Out'),
(552, 72, 'gale', '2025-05-18 09:34:44', 'Logged as Admin'),
(553, 72, 'gale', '2025-05-18 09:35:07', 'Logged Out'),
(554, 72, 'gale', '2025-05-18 09:35:47', 'Logged as Admin'),
(555, 72, 'gale', '2025-05-18 09:38:40', 'Logged as Admin'),
(556, 72, 'gale', '2025-05-18 09:56:44', 'Logged as Admin'),
(557, 72, 'gale', '2025-05-18 09:57:03', 'Logged Out'),
(558, 73, 'qwe', '2025-05-18 09:57:08', 'Logged as User'),
(559, 72, 'gale', '2025-05-18 09:59:57', 'Logged as Admin'),
(560, 72, 'gale', '2025-05-18 10:48:38', 'Logged as Admin'),
(561, 72, 'gale', '2025-05-18 10:49:24', 'Logged as Admin'),
(562, 72, 'gale', '2025-05-18 10:56:22', 'Logged as Admin'),
(563, 72, 'gale', '2025-05-18 10:58:20', 'Logged as Admin'),
(564, 73, 'qwe', '2025-05-18 10:59:36', 'Logged as User'),
(565, 73, 'qwe', '2025-05-18 10:59:39', 'Logged Out'),
(566, 73, 'qwe', '2025-05-18 11:05:53', 'Logged as User'),
(567, 73, 'qwe', '2025-05-18 11:23:02', 'Logged as User'),
(568, 73, 'qwe', '2025-05-18 11:27:17', 'Logged as User'),
(569, 73, 'qwe', '2025-05-18 11:27:47', 'Logged as User'),
(570, 73, 'qwe', '2025-05-18 11:28:31', 'Logged as User'),
(571, 73, 'qwe', '2025-05-18 11:30:30', 'Logged as User'),
(572, 73, 'qwe', '2025-05-18 11:54:30', 'Logged as User'),
(573, 73, 'qwe', '2025-05-18 11:54:49', 'Logged Out'),
(574, 72, 'gale', '2025-05-18 11:54:54', 'Logged as Admin'),
(575, 73, 'qwe', '2025-05-18 12:19:13', 'Logged as User'),
(576, 73, 'qwe', '2025-05-18 12:21:26', 'Logged as User'),
(577, 72, 'gale', '2025-05-18 12:22:01', 'Logged as Admin'),
(579, 72, 'gale', '2025-05-18 14:14:48', 'Logged as Admin'),
(580, 72, 'gale', '2025-05-18 14:14:59', 'Admin Updated Account: hey'),
(581, 72, 'gale', '2025-05-18 14:15:03', 'Logged Out'),
(596, 72, 'gale', '2025-05-18 15:11:05', 'Logged as Admin'),
(597, 72, 'gale', '2025-05-18 15:11:07', 'Logged Out'),
(598, 73, 'qwe', '2025-05-18 15:11:09', 'Logged as User'),
(599, 73, 'qwe', '2025-05-18 15:11:11', 'Logged Out'),
(600, 72, 'gale', '2025-05-18 15:49:27', 'Logged as Admin'),
(601, 72, 'gale', '2025-05-18 15:51:52', 'Logged Out'),
(602, 73, 'qwe', '2025-05-18 15:53:55', 'Logged as User'),
(603, 73, 'qwe', '2025-05-18 15:54:53', 'Logged Out'),
(604, 72, 'gale', '2025-05-18 15:54:58', 'Logged as Admin'),
(605, 73, 'qwe', '2025-05-18 16:14:19', 'Logged as User'),
(606, 73, 'qwe', '2025-05-18 16:14:37', 'Logged Out'),
(607, 72, 'gale', '2025-05-18 16:15:04', 'Logged as Admin'),
(608, 73, 'qwe', '2025-05-18 16:46:50', 'Logged as User'),
(609, 73, 'qwe', '2025-05-18 18:04:23', 'Logged as User'),
(610, 73, 'qwe', '2025-05-18 18:06:55', 'Logged as User'),
(611, 73, 'qwe', '2025-05-18 18:08:37', 'Logged as User'),
(612, 73, 'qwe', '2025-05-18 18:10:20', 'Logged as User'),
(613, 73, 'qwe', '2025-05-18 18:12:21', 'Logged as User'),
(614, 72, 'gale', '2025-05-18 18:14:25', 'Logged as Admin'),
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
(709, 81, 'adolf123', '2025-05-22 17:51:13', 'Registered for the first time'),
(710, 81, 'adolf123', '2025-05-22 17:51:39', 'Logged as Admin');

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

--
-- Dumping data for table `tbl_reservations`
--

INSERT INTO `tbl_reservations` (`reservation_id`, `u_id`, `reservation_date`, `catering_package`, `number_of_guests`, `special_requests`, `created_at`, `status`, `updated_at`) VALUES
(13, 1, '2025-05-17 00:00:00', 'Standard', 4, 'asdasda', '2025-05-22 16:39:15', 'Pending', '2025-05-22 16:39:15'),
(14, 1, '2025-05-24 00:00:00', 'Standard', 5, 'dapat daghan chix', '2025-05-22 16:40:58', 'Approved', '2025-05-22 16:56:37');

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
(72, 'gale', 'gale', 'gale', 'Admin', '0HISeHvz4EuJ12dG3swi70Gi9Vr6bXGA5Tm1KLbgxSo=', '09957342019', 'src/userimages/m1.jpg', 'Active', 'What is your favorite food?', 'gale', '2025-05-18 21:18:16'),
(73, 'qwe', 'qwe', 'qwe', 'User', '0HISeHvz4EuJ12dG3swi70Gi9Vr6bXGA5Tm1KLbgxSo=', '09957342018', 'src/userimages/m2.jpg', 'Active', 'What is your favorite food?', 'qwe', '2025-05-18 21:18:16'),
(81, 'Adolf', 'Adolf', 'adolf123', 'Admin', 'DNPZqMo10kNNVXdENYxfQft5bsZLUTguRef5I2b8BS4=', '09151391914', '', 'Active', '', '', '2025-05-22 17:51:13');

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
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=711;

--
-- AUTO_INCREMENT for table `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  MODIFY `reservation_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `u_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

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
