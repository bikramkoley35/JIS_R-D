-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2025 at 07:03 PM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `email`, `password`, `name`, `created_at`) VALUES
(1, 'parijatdutta100@gmail.com', '1234', 'Parijat', '2025-01-30 15:53:57'),
(2, 'bikramkoley35@gmail.com', '1234', 'Bikram', '2025-01-31 14:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `nit_faculty`
--

CREATE TABLE `nit_faculty` (
  `faculty_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nit_faculty`
--

INSERT INTO `nit_faculty` (`faculty_id`, `email`, `full_name`, `dept`, `pass`, `created_at`) VALUES
('nit/2025/0001', 'bikramkoley35@gmail.com', 'Bikram Koley', 'cse', '123', '2025-01-31 10:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `partner_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `institution` varchar(150) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `partner_id`, `name`, `email`, `password`, `institution`, `country`, `created_at`) VALUES
(1, 'PD20250130181808281', 'PARIJAT DUTTA', 'parijatdutta100@gmail.com', '1234', '2424124', 'India', '2025-01-30 17:18:08'),
(2, 'BK20250131152836117', 'Bikram Koley', 'bikramkoley35@gmail.com', '123', 'nit', 'India', '2025-01-31 14:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `partnership_inquiries`
--

CREATE TABLE `partnership_inquiries` (
  `partner_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `institution` varchar(150) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `message` text NOT NULL,
  `status` enum('In Progress','Accepted','Rejected') DEFAULT 'In Progress',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `partnership_inquiries`
--

INSERT INTO `partnership_inquiries` (`partner_id`, `name`, `email`, `institution`, `country`, `address`, `message`, `status`, `created_at`) VALUES
('BK20250131152836117', 'Bikram Koley', 'bikramkoley35@gmail.com', 'nit', 'India', 'Panchghara', 'gfvgdfgf', 'In Progress', '2025-01-31 14:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `partner_colleges`
--

CREATE TABLE `partner_colleges` (
  `ID` int(3) NOT NULL,
  `Code` varchar(20) NOT NULL,
  `Partner_Colleges` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `partner_colleges`
--

INSERT INTO `partner_colleges` (`ID`, `Code`, `Partner_Colleges`) VALUES
(1, 'JISU', 'JIS University'),
(2, 'JISE', 'JIS College of Engineering'),
(3, 'NiT', 'Narula Institute of Technology'),
(4, 'GNiT', 'Guru Nanak Institute of Technology'),
(5, 'GNiHM', 'Guru Nanak Institute of Hotel Management'),
(6, 'GNiPST', 'Guru Nanak Institute of Pharmaceutical Science & Technology'),
(7, 'GNiTDSR', 'Guru Nanak Institute of Dental Sciences & Research'),
(8, 'DSCITS', 'Dr. Sudhir Chandra Sur Institute of Technology & Sports Complex'),
(9, 'JISIASR', 'JIS Institute of Advanced Studies & Research'),
(10, 'JISSMSR', 'JIS School of Medical Science & Research'),
(11, 'JISP', 'JIS Institute of Pharmacy'),
(12, 'JISPo', 'JIS School of Polytechnic'),
(13, 'GKCEM', 'Greater Kolkata College of Engineering & Management'),
(14, 'CPS', 'Chandil Polytechnic School'),
(15, 'GPS', 'Gola Polytechnic School'),
(16, 'NPS', 'Narula Public School'),
(17, 'LBS', 'Little Bright Stars'),
(18, 'CMS', 'Central model school'),
(19, 'JISISD', 'JIS Institute of Skill Development'),
(20, 'AEC', 'Asansol Engineering College'),
(21, 'AIEM', 'Abacus Institute of Engineering & Management'),
(22, 'GMIT', 'Gargi Memorial Institute of Technology'),
(23, 'LBKMCH', 'Lord Buddha Koshi Medical College & Hospital'),
(24, 'FCF', 'Flemming College of Pharmacy'),
(25, 'LBKPC', 'Lord Buddha Koshi Pharmacy College');

-- --------------------------------------------------------

--
-- Table structure for table `progress_reports`
--

CREATE TABLE `progress_reports` (
  `report_date` date NOT NULL,
  `project_progress` int(11) NOT NULL CHECK (`project_progress` >= 0 and `project_progress` <= 100),
  `challenges` text DEFAULT NULL,
  `progress_file_path` varchar(255) NOT NULL,
  `proposal_id` varchar(50) NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `progress_reports`
--

INSERT INTO `progress_reports` (`report_date`, `project_progress`, `challenges`, `progress_file_path`, `proposal_id`, `submission_date`) VALUES
('2025-01-31', 60, 'hgbvffh fvgh', '../uploads/progress_reports/PPT.pdf', 'AI20250130204044', '2025-01-30 19:42:00'),
('2025-01-06', 100, 'GHJGHJGHJ', 'uploads/progress_reports/nptelenrollment.pdf', 'BB20250127170409', '2025-01-27 16:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `project_proposals`
--
-- Error reading structure for table test.project_proposals: #1932 - Table &#039;test.project_proposals&#039; doesn&#039;t exist in engine
-- Error reading data for table test.project_proposals: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `test`.`project_proposals`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `offered_lpa` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nit_faculty`
--
ALTER TABLE `nit_faculty`
  ADD PRIMARY KEY (`faculty_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `partner_id` (`partner_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `partnership_inquiries`
--
ALTER TABLE `partnership_inquiries`
  ADD PRIMARY KEY (`partner_id`);

--
-- Indexes for table `partner_colleges`
--
ALTER TABLE `partner_colleges`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code` (`Code`);

--
-- Indexes for table `progress_reports`
--
ALTER TABLE `progress_reports`
  ADD PRIMARY KEY (`proposal_id`),
  ADD UNIQUE KEY `proposal_id` (`proposal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partner_colleges`
--
ALTER TABLE `partner_colleges`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `partnership_inquiries`
--
ALTER TABLE `partnership_inquiries`
  ADD CONSTRAINT `partnership_inquiries_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
