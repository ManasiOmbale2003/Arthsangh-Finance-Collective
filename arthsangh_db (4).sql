-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2026 at 09:59 AM
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
-- Database: `arthsangh_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint(20) NOT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `business_status` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `business_location` varchar(255) DEFAULT NULL,
  `investment_amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('Pending','In Progress','Resolved') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_reply` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `user_id`, `subject`, `message`, `status`, `created_at`, `admin_reply`) VALUES
(1, 1, 'gdhgjdfgdfjsgd', 'dgheruigt', 'Pending', '2026-04-05 09:38:26', NULL),
(2, 8, 'loan approval', 'When my loan will get approved', 'Resolved', '2026-04-05 09:59:07', 'Soon'),
(3, 4, 'xyz', 'xyz', 'Resolved', '2026-04-25 08:56:28', 'abc'),
(4, 4, 'About Upcoming Scheme', 'What is new Upcoming Scheme', 'Resolved', '2026-05-03 07:10:51', 'Check your dashboard'),
(5, 1, 'Loan Interest Query', 'What is Loan interest for 1,00,000', 'Resolved', '2026-05-03 09:48:29', '1,000'),
(6, 4, 'about interst', 'what is interst for 10000', 'Resolved', '2026-05-08 04:28:21', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) NOT NULL,
  `amount` double DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `interest_rate` double DEFAULT NULL,
  `monthly_interest` double DEFAULT NULL,
  `total_repayment_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `amount`, `application_date`, `purpose`, `status`, `user_id`, `interest_rate`, `monthly_interest`, `total_repayment_amount`, `date`, `description`) VALUES
(1, 5000, '2026-01-17', 'Business Expansion', 'APPROVED', 1, NULL, 100, 5100, NULL, NULL),
(2, 10000, '2026-03-26', 'Business Expansion', 'APPROVED', 1, 2, 200, 10200, NULL, NULL),
(4, 5000, '2026-05-03', 'Business Expansion', 'APPROVED', 1, NULL, NULL, NULL, NULL, NULL),
(5, 5000, '2026-05-03', 'Business Expansion', 'PENDING', 1, NULL, NULL, NULL, NULL, NULL),
(6, 3000, '2026-05-03', 'Business Expansion', 'PENDING', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` bigint(20) NOT NULL,
  `agenda` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`id`, `agenda`, `location`, `meeting_date`, `date`, `groupname`, `time`, `title`) VALUES
(1, 'Discussion about the loans', 'Community Hall', NULL, '2026-02-05', 'Varoshi bachat gat', '07:00:00.000000', 'Monthly Review');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) NOT NULL,
  `agenda` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `agenda`, `date`, `groupname`, `location`, `time`, `title`) VALUES
(1, 'Discussion about the loans', '2026-02-05', 'Varoshi bachat gat', 'Community Hall', '07:00:00.000000', 'Monthly Review'),
(2, 'About money collection', '2026-03-31', 'Varoshi bachat gat', 'Zoom Link', '07:00:00.000000', 'Monthly Review');

-- --------------------------------------------------------

--
-- Table structure for table `savings`
--

CREATE TABLE `savings` (
  `id` bigint(20) NOT NULL,
  `amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Paid',
  `fine_amount` double DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `savings`
--

INSERT INTO `savings` (`id`, `amount`, `date`, `description`, `method`, `user_id`, `status`, `fine_amount`, `payment_type`, `groupname`) VALUES
(5, 500, '2026-01-17', 'Monthly Deposit (Cash)', 'Cash', 1, NULL, NULL, NULL, NULL),
(6, 500, '2026-01-17', 'Monthly Deposit (Digital)', 'UPI', 1, NULL, NULL, NULL, NULL),
(7, 50, '2026-01-18', 'Late Payment Fine', NULL, 1, 'PENDING', 0, NULL, NULL),
(8, 50, '2026-01-18', 'Late Payment Fine', NULL, 1, 'PENDING', 0, NULL, NULL),
(9, 50, '2026-01-18', 'Late Payment Fine', NULL, 1, 'PENDING', 0, NULL, NULL),
(10, 50, '2026-01-18', 'Late Payment Fine', NULL, 1, 'PENDING', 0, NULL, NULL),
(11, 50, '2026-01-18', 'Late Payment Fine', NULL, 1, 'PENDING', 0, NULL, NULL),
(12, 500, '2026-01-18', 'Monthly Collection', NULL, 1, 'PAID', 0, NULL, NULL),
(13, 50, '2026-01-18', 'Late Payment Fine', NULL, 1, 'PAID', 0, NULL, NULL),
(14, 500, '2026-01-18', 'Monthly Collection', NULL, 1, 'PAID', 0, NULL, NULL),
(15, 500, '2026-01-18', 'Monthly Collection', NULL, 2, 'PAID', 0, NULL, NULL),
(16, 50, '2026-01-18', 'Late Payment Fine', NULL, 1, 'PAID', 0, NULL, NULL),
(17, 50, '2026-01-18', 'Late Payment Fine', NULL, 1, 'PAID', 0, NULL, NULL),
(18, 50, '2026-01-18', 'Late Payment Fine', NULL, 1, 'PAID', 0, NULL, NULL),
(19, 500, '2026-01-18', 'Monthly Collection', NULL, 1, 'PAID', 0, NULL, NULL),
(20, 500, '2026-03-26', 'Monthly Contribution', 'UPI', 1, 'PENDING', 0, NULL, NULL),
(21, 500, '2026-03-26', 'Monthly Contribution', 'Cash', 1, 'PENDING', 0, NULL, NULL),
(22, 500, '2026-03-26', 'Monthly Contribution', 'Cash', 1, 'PENDING', 0, NULL, NULL),
(23, 500, '2026-03-27', 'Monthly Contribution', 'UPI', 1, 'PENDING', 0, NULL, NULL),
(24, 500, '2026-05-03', 'Monthly Contribution', 'Cash', 1, 'PENDING', 0, NULL, NULL),
(27, 500, '2026-05-03', 'Monthly Contribution', 'Cash', 1, 'PENDING', 0, NULL, NULL),
(28, 500, '2026-05-07', 'Monthly Contribution', 'UPI', 1, 'PENDING', 0, NULL, NULL),
(29, 500, '2026-05-08', 'Monthly Contribution', 'Cash', 1, 'PENDING', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `id` bigint(20) NOT NULL,
  `benefits` varchar(255) DEFAULT NULL,
  `date_posted` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `eligibility` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `scheme_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`id`, `benefits`, `date_posted`, `description`, `eligibility`, `title`, `category`, `scheme_name`, `bank_name`, `name`) VALUES
(1, 'Loan up to ₹1,40,000; Very low interest rate (5% per annum for women); Repayment period of up to 3.5 years including a moratorium period.', '2026-05-03', 'This is a micro-finance scheme specifically for women entrepreneurs belonging to backward classes. It provides financial assistance to start or expand small businesses like tailoring, grocery shops, or handicrafts. The loan is disbursed through channel partners and Bachat Gats.', 'Women aged 18-55; Annual family income should be below ₹3,00,000; Must belong to notified backward classes.', 'Mahila Samridhi Yojana (MSY)', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`) VALUES
(1, 'manasiombale6440@gmail.com', 'Manasi Mahesh Ombale', 'manasi@123'),
(2, 'pawarshreyaganpat25@gmail.com', NULL, 'Shreya@123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `groupname` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `business_name` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `business_status` varchar(255) DEFAULT NULL,
  `aadhar_number` varchar(255) DEFAULT NULL,
  `kyc_document` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `kyc_status` varchar(255) DEFAULT NULL,
  `kyc_update_date` date DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `mobile`, `groupname`, `role`, `password`, `created_at`, `business_name`, `business_type`, `profile_image`, `business_status`, `aadhar_number`, `kyc_document`, `pan_number`, `status`, `phoneno`, `kyc_status`, `kyc_update_date`, `bio`, `username`, `bank_name`) VALUES
(1, 'Sejal Shantaram Shinde', 'sejalshinde@gmail.com', '8928458864', 'Varoshi bachat gat', 'Member', 'sejal@123', '2026-01-16 05:43:42', 'Retail Business', 'Food/Catering', 'user_1_img5.jpg', 'PENDING', '695251234425', 'kyc_1_1778129209366_img4.jpg', 'RKNST6681N', 'PENDING', NULL, 'APPROVED', '2026-05-07', NULL, NULL, NULL),
(2, 'Shreya Ganpat Pawar', 'pawarshreyaganpat25@gmail.com', '8007675471', 'Varoshi Bachat Gat', 'Member', 'Shreya@123', '2026-01-16 10:04:04', NULL, NULL, NULL, NULL, '695251234425', 'kyc_2_1778230006748_img3.jpg', 'RKNST6681N', 'PENDING', NULL, 'APPROVED', '2026-05-08', NULL, NULL, NULL),
(4, 'Vaishali Shantaram Shinde', 'vaishalishinde888@gmail.com', '9145202635', 'Varoshi bachat gat', 'GROUP_HEAD', 'Vaishali@123', '2026-01-18 08:44:23', NULL, NULL, 'user_4_1768729259794.png', NULL, '695251234425', 'kyc_4_1778129101924_img4.jpg', 'RKNST6681N', 'PENDING', NULL, 'APPROVED', '2026-05-07', NULL, NULL, NULL),
(5, 'Ankita Rajendra Kulkarni', 'ankitakulkarni123@gmail.com', '8958748596', 'Satara Bachat Gat', 'Member', 'Ankita@123', '2026-01-18 09:44:06', NULL, NULL, 'default-profile.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Manasi Mahesh Ombale', 'manasiombale6440@gmail.com', '9860549846', 'Satara Bachat Gat', 'GROUP_HEAD', 'Manasi@123', '2026-01-18 12:57:44', NULL, NULL, 'default-profile.png', NULL, '123412341234', 'kyc_6_WhatsApp Image 2026-03-27 at 3.43.22 PM.jpeg', '124321768594', 'ACTIVE', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Ankita Rajendra Kulkarni', 'aniket.kulkarni.9970@gmail.com', '9356860785', 'Varoshi bachat gat', 'Member', 'Anku@123', '2026-03-28 11:35:50', NULL, NULL, 'default-profile.png', NULL, '789658965874', 'kyc_7_img2.jpg', 'ABCD123EF', 'PENDING', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Janhavi Shantaram Shinde', 'sejalshinde888@gmail.com', '7768809303', 'Varoshi bachat gat', 'Member', 'Janu@123', '2026-04-05 15:25:18', NULL, NULL, 'default-profile.png', NULL, '789658748596', 'kyc_8_Sejalimg (1).jpeg', '124321768594', 'ACTIVE', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Shweta Patil', 'sujalshinde318@gmail.com', '8928458864', 'Kedambe Bachat Gat', 'MEMBER', 'Shweta@123', '2026-05-04 16:12:57', NULL, NULL, 'user_9_img4.jpg', NULL, '695251234425', 'kyc_9_1777987884370_img4.jpg', 'RKNST6681N', 'PENDING', NULL, 'APPROVED', '2026-05-05', NULL, NULL, NULL),
(10, 'Ishwari Kasurde', 'sujalshin08@gmail.com', '8928458864', 'Kedambe Bachat Gat', 'MEMBER', 'Ishu@123', '2026-05-22 06:28:08', NULL, NULL, 'default-profile.png', NULL, '258525892563', 'kyc_10_1779431323340_img4.jpg', 'RKNST6681N', 'PENDING', NULL, 'APPROVED', '2026-05-22', NULL, NULL, 'Bank of Maharashtra'),
(11, 'siddhi pawar', 'siddhipawar@gmail.com', '8928458864', 'Kedambe Bachat Gat', 'MEMBER', 'Siddhi@123', '2026-05-22 06:30:50', NULL, NULL, 'default-profile.png', NULL, '258525892563', 'kyc_11_1779431460553_img9.jpg', 'RKNST6681N', 'PENDING', NULL, 'PENDING', '2026-05-22', NULL, NULL, 'Bank of Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `id` bigint(20) NOT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`id`, `comments`, `name`, `rating`) VALUES
(1, 'It is Very Helpful', 'Sejal Shinde', 5),
(2, 'Productive', 'vaishali shinde', 4),
(3, 'excellent', 'Manasi  Mahesh Ombale', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKg8wf081dyjc8mwodmg5mairv6` (`user_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_inquiry` (`user_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6xxlcjc0rqtn5nq28vjnx5t9d` (`user_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savings`
--
ALTER TABLE `savings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbj5iiqpw46u7bbkb1gdpl0d25` (`user_id`);

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `savings`
--
ALTER TABLE `savings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `schemes`
--
ALTER TABLE `schemes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `businesses`
--
ALTER TABLE `businesses`
  ADD CONSTRAINT `FKg8wf081dyjc8mwodmg5mairv6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD CONSTRAINT `fk_user_inquiry` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `FK6xxlcjc0rqtn5nq28vjnx5t9d` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `savings`
--
ALTER TABLE `savings`
  ADD CONSTRAINT `FKbj5iiqpw46u7bbkb1gdpl0d25` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
