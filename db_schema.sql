-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2016 at 10:07 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coleman_connection`
--

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `long_name` varchar(45) DEFAULT NULL,
  `groupID` tinyint(2) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `short_name`, `long_name`, `groupID`, `active`) VALUES
(1, 'CHLT', 'Certified Prevention Specialist', 3, 1),
(2, 'LCDC', 'Chemical Dependency Certificate', 3, 1),
(3, 'CMHW', 'Community Health Worker', 3, 1),
(4, 'CTMT', 'Computed Tomography', 2, 1),
(5, 'DNTA', 'Dental Assisting', 1, 1),
(6, 'DHYG', 'Dental Hygiene', 1, 1),
(7, 'DMSO', 'Diagnostic Medical Sonography', 2, 1),
(8, 'HCCA', 'Heatlh Care Academy', 5, 1),
(9, 'HITT', 'Health Information Technology', 3, 1),
(10, 'HTEC', 'Histology Technician', 2, 1),
(11, 'HUST', 'Human Service Technology', 3, 1),
(12, 'MDCA', 'Medical Assistant', 5, 1),
(13, 'MLAB', 'Medical Laboratory Tehcnician', 2, 1),
(14, 'MDSC', 'Medical Scribe', 5, 1),
(15, 'NMIT', 'Nuclear Medicine Technologist', 2, 1),
(16, 'RNSG', 'Nursing Registered Nursing', 4, 1),
(17, 'VNSG', 'Nursing Vocational Nursing', 4, 1),
(18, 'OTHA', 'Occupational Therapy Assistant', 6, 1),
(19, 'PHRA', 'Pharmacy Technician', 3, 1),
(20, 'PTHA', 'Physical Therapist Assistant', 6, 1),
(21, 'RADR', 'Radiography', 2, 1),
(22, 'RSPT', 'Respiratory Therapist', 6, 1),
(23, 'SRGT', 'Surgical Technology', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `program_groups`
--

CREATE TABLE `program_groups` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_groups`
--

INSERT INTO `program_groups` (`id`, `name`) VALUES
(1, 'Dental Services'),
(2, 'Diagnostic Services'),
(3, 'Health Care & Administration'),
(4, 'Nursing'),
(5, 'Patient Care Services'),
(6, 'Therapeutic Services');

-- --------------------------------------------------------

--
-- Table structure for table `registered_sessions`
--

CREATE TABLE `registered_sessions` (
  `stuID` varchar(20) NOT NULL,
  `sessionID` int(10) UNSIGNED DEFAULT NULL,
  `programID` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `type`) VALUES
(1, 'admin'),
(2, 'dean'),
(3, 'program director'),
(4, 'counselor'),
(5, 'staff'),
(6, 'user'),
(7, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `programID` tinyint(3) UNSIGNED DEFAULT NULL,
  `programName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stuID` varchar(20) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `sessionID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `roleType` tinyint(3) UNSIGNED DEFAULT NULL,
  `programID` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_groups`
--
ALTER TABLE `program_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stuID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `program_groups`
--
ALTER TABLE `program_groups`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
