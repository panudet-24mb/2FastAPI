-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2020 at 05:27 AM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2fast`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `assets_id` int(11) NOT NULL,
  `assets_public_id` varchar(80) DEFAULT NULL,
  `assets_sn` varchar(80) DEFAULT NULL,
  `assets_brand_id` int(11) DEFAULT NULL,
  `assets_categories_id` int(11) DEFAULT NULL,
  `assets_insurance_id` int(11) DEFAULT NULL,
  `assets_storage_unit_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `users_creator_id` varchar(50) DEFAULT NULL,
  `assets_series_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`assets_id`, `assets_public_id`, `assets_sn`, `assets_brand_id`, `assets_categories_id`, `assets_insurance_id`, `assets_storage_unit_id`, `status_id`, `users_creator_id`, `assets_series_id`) VALUES
(4, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69761', 'TIC-MTFS2020NT0002', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(5, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69762', 'MT-MTFS2020NT0002', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(6, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69763', 'TRIP-MTFS2020NT0002', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(7, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69764', 'TMM-MTFS2020NT0002', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(8, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69762', 'TIC-MTFS2020NT0003', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(9, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69765', 'MT-MTFS2020NT0003', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(10, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69766', 'TRIP-MTFS2020NT0003', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(11, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69767', 'TMM-MTFS2020NT0003', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(12, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69781', 'TIC-MTFS2020NT0022', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(13, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69822', 'MT-MTFS2020NT0022', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(14, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69823', 'TRIP-MTFS2020NT0022', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(15, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69824', 'TMM-MTFS2020NT0022', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(16, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69785', 'TIC-MTFS2020NT0026', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(17, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69834', 'MT-MTFS2020NT0026', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(18, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69835', 'TRIP-MTFS2020NT0026', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(19, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69836', 'TMM-MTFS2020NT0026', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(20, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69779', 'TIC-MTFS2020NT0020', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(21, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69816', 'MT-MTFS2020NT0020', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(22, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69817', 'TRIP-MTFS2020NT0020', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(23, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69818', 'TMM-MTFS2020NT0020', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(24, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69788', 'TIC-MTFS2020NT0029', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(25, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69843', 'MT-MTFS2020NT0029', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(26, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69844', 'TRIP-MTFS2020NT0029', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(27, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69845', 'TMM-MTFS2020NT0029', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(28, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69789', 'TIC-MTFS2020NT0030', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(29, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69846', 'MT-MTFS2020NT0030', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(30, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69847', 'TRIP-MTFS2020NT0030', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(31, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69848', 'TMM-MTFS2020NT0030', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(32, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69790', 'TIC-MTFS2020NT0031', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(33, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69849', 'MT-MTFS2020NT0031', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(34, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69850', 'TRIP-MTFS2020NT0031', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(35, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69851', 'TMM-MTFS2020NT0031', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(36, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69791', 'TIC-MTFS2020NT0032', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(37, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69852', 'MT-MTFS2020NT0032', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(38, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69853', 'TRIP-MTFS2020NT0032', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(39, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69854', 'TMM-MTFS2020NT0032', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(40, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69774', 'TIC-MTFS2020NT0015', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(41, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69801', 'MT-MTFS2020NT0015', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(42, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69802', 'TRIP-MTFS2020NT0015', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(43, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69803', 'TMM-MTFS2020NT0015', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(44, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69786', 'TIC-MTFS2020NT0027', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(45, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69837', 'MT-MTFS2020NT0027', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(46, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69838', 'TRIP-MTFS2020NT0027', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(47, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69839', 'TMM-MTFS2020NT0027', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(48, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69775', 'TIC-MTFS2020NT0016', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(49, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69804', 'MT-MTFS2020NT0016', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(50, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69805', 'TRIP-MTFS2020NT0016', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(51, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69806', 'TMM-MTFS2020NT0016', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(52, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69776', 'TIC-MTFS2020NT0017', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(53, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69807', 'MT-MTFS2020NT0017', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(54, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69808', 'TRIP-MTFS2020NT0017', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(55, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69809', 'TMM-MTFS2020NT0017', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(56, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69782', 'TIC-MTFS2020NT0023', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(57, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69825', 'MT-MTFS2020NT0023', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(58, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69826', 'TRIP-MTFS2020NT0023', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(59, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69827', 'TMM-MTFS2020NT0023', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(60, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69783', 'TIC-MTFS2020NT0024', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(61, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69828', 'MT-MTFS2020NT0024', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(62, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69829', 'TRIP-MTFS2020NT0024', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(63, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69830', 'TMM-MTFS2020NT0024', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(64, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69787', 'TIC-MTFS2020NT0028', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(65, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69840', 'MT-MTFS2020NT0028', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(66, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69841', 'TRIP-MTFS2020NT0028', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(67, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69842', 'TMM-MTFS2020NT0028', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(68, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69784', 'TIC-MTFS2020NT0025', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(69, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69831', 'MT-MTFS2020NT0025', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(70, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69832', 'TRIP-MTFS2020NT0025', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(71, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69833', 'TMM-MTFS2020NT0025', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(72, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69764', 'TIC-MTFS2020NT0005', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(73, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69771', 'MT-MTFS2020NT0005', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(74, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69772', 'TRIP-MTFS2020NT0005', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(75, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69773', 'TMM-MTFS2020NT0005', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(76, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69765', 'TIC-MTFS2020NT0006', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(77, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69774', 'MT-MTFS2020NT0006', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(78, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69775', 'TRIP-MTFS2020NT0006', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(79, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69776', 'TMM-MTFS2020NT0006', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(80, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69763', 'TIC-MTFS2020NT0004', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(81, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69768', 'MT-MTFS2020NT0004', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(82, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69769', 'TRIP-MTFS2020NT0004', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(83, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69770', 'TMM-MTFS2020NT0004', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(84, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69777', 'TIC-MTFS2020NT0018', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(85, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69810', 'MT-MTFS2020NT0018', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(86, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69811', 'TRIP-MTFS2020NT0018', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(87, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69812', 'TMM-MTFS2020NT0018', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(88, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69778', 'TIC-MTFS2020NT0019', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(89, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69813', 'MT-MTFS2020NT0019', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(90, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69814', 'TRIP-MTFS2020NT0019', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(91, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69815', 'TMM-MTFS2020NT0019', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(92, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69792', 'TIC-MTFS2020NT0034', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(93, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69855', 'MT-MTFS2020NT0034', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(94, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69856', 'TRIP-MTFS2020NT0034', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(95, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69857', 'TMM-MTFS2020NT0034', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(96, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69767', 'TIC-MTFS2020NT0008', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(97, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69780', 'MT-MTFS2020NT0008', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(98, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69781', 'TRIP-MTFS2020NT0008', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(99, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69782', 'TMM-MTFS2020NT0008', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(100, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69768', 'TIC-MTFS2020NT0009', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(101, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69783', 'MT-MTFS2020NT0009', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(102, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69784', 'TRIP-MTFS2020NT0009', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(103, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69785', 'TMM-MTFS2020NT0009', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(104, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69769', 'TIC-MTFS2020NT0010', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(105, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69786', 'MT-MTFS2020NT0010', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(106, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69787', 'TRIP-MTFS2020NT0010', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(107, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69788', 'TMM-MTFS2020NT0010', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(108, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69780', 'TIC-MTFS2020NT0021', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(109, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69819', 'MT-MTFS2020NT0021', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(110, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69820', 'TRIP-MTFS2020NT0021', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(111, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69821', 'TMM-MTFS2020NT0021', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(112, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69770', 'TIC-MTFS2020NT0011', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(113, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69789', 'MT-MTFS2020NT0011', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(114, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69790', 'TRIP-MTFS2020NT0011', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(115, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69791', 'TMM-MTFS2020NT0011', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(116, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69771', 'TIC-MTFS2020NT0012', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(117, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69792', 'MT-MTFS2020NT0012', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(118, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69793', 'TRIP-MTFS2020NT0012', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(119, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69794', 'TMM-MTFS2020NT0012', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(120, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69766', 'TIC-MTFS2020NT0007', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(121, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69777', 'MT-MTFS2020NT0007', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(122, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69778', 'TRIP-MTFS2020NT0007', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(123, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69779', 'TMM-MTFS2020NT0007', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(124, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69772', 'TIC-MTFS2020NT0013', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(125, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69795', 'MT-MTFS2020NT0013', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(126, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69796', 'TRIP-MTFS2020NT0013', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(127, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69797', 'TMM-MTFS2020NT0013', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4),
(128, 'c6bb5d83-c1b5-450d-8ef0-8b2cb1a69773', 'TIC-MTFS2020NT0014', 4, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 1),
(129, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69798', 'MT-MTFS2020NT0014', 1, 2, 1, 3, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2),
(130, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69799', 'TRIP-MTFS2020NT0014', 3, 1, 1, 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 3),
(131, 'c6bb5d83-c1b5-450d-8es0-8b2cb1a69800', 'TMM-MTFS2020NT0014', 2, 3, 1, 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 4);

-- --------------------------------------------------------

--
-- Table structure for table `assetsbrand`
--

CREATE TABLE `assetsbrand` (
  `assets_brand_id` int(11) NOT NULL,
  `assets_brand_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assetsbrand`
--

INSERT INTO `assetsbrand` (`assets_brand_id`, `assets_brand_name`) VALUES
(1, 'LG'),
(2, 'MICROLIFE'),
(3, 'Fotopro'),
(4, 'μTHERMFACESENSE');

-- --------------------------------------------------------

--
-- Table structure for table `assetscategories`
--

CREATE TABLE `assetscategories` (
  `assets_categories_id` int(11) NOT NULL,
  `assets_categories_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assetscategories`
--

INSERT INTO `assetscategories` (`assets_categories_id`, `assets_categories_name`) VALUES
(1, 'ขาตั้งกล้อง'),
(2, 'จอมอนิเตอร์'),
(3, 'เทอร์โมมิเตอร์');

-- --------------------------------------------------------

--
-- Table structure for table `assetsinsurance`
--

CREATE TABLE `assetsinsurance` (
  `assets_insurance_id` int(11) NOT NULL,
  `assets_insurance_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assetsinsurance`
--

INSERT INTO `assetsinsurance` (`assets_insurance_id`, `assets_insurance_name`) VALUES
(1, 'warranty');

-- --------------------------------------------------------

--
-- Table structure for table `assetssaveformat`
--

CREATE TABLE `assetssaveformat` (
  `assets_save_format_id` int(11) NOT NULL,
  `assets_save_format_public_id` varchar(80) DEFAULT NULL,
  `assets_save_format_name` varchar(80) DEFAULT NULL,
  `assets_brand_id` int(11) DEFAULT NULL,
  `assets_categories_id` int(11) DEFAULT NULL,
  `assets_insurance_id` int(11) DEFAULT NULL,
  `assets_storage_unit_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `users_creator_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assetsseries`
--

CREATE TABLE `assetsseries` (
  `assets_series_id` int(11) NOT NULL,
  `assets_series_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assetsseries`
--

INSERT INTO `assetsseries` (`assets_series_id`, `assets_series_name`) VALUES
(1, 'MTFS2020'),
(2, '22MK430H'),
(3, 'S3'),
(4, 'FR1DL1/FR1MF1');

-- --------------------------------------------------------

--
-- Table structure for table `assetsstorageunitname`
--

CREATE TABLE `assetsstorageunitname` (
  `assets_storage_unit_id` int(11) NOT NULL,
  `assets_storage_unit_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assetsstorageunitname`
--

INSERT INTO `assetsstorageunitname` (`assets_storage_unit_id`, `assets_storage_unit_name`) VALUES
(1, 'เครื่อง'),
(2, 'ตัว'),
(3, 'จอ');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(25, 'Can add company', 7, 'add_company'),
(26, 'Can change company', 7, 'change_company'),
(27, 'Can delete company', 7, 'delete_company'),
(28, 'Can view company', 7, 'view_company'),
(29, 'Can add job', 8, 'add_job'),
(30, 'Can change job', 8, 'change_job'),
(31, 'Can delete job', 8, 'delete_job'),
(32, 'Can view job', 8, 'view_job'),
(33, 'Can add module', 9, 'add_module'),
(34, 'Can change module', 9, 'change_module'),
(35, 'Can delete module', 9, 'delete_module'),
(36, 'Can view module', 9, 'view_module'),
(37, 'Can add project', 10, 'add_project'),
(38, 'Can change project', 10, 'change_project'),
(39, 'Can delete project', 10, 'delete_project'),
(40, 'Can view project', 10, 'view_project'),
(41, 'Can add role', 11, 'add_role'),
(42, 'Can change role', 11, 'change_role'),
(43, 'Can delete role', 11, 'delete_role'),
(44, 'Can view role', 11, 'view_role'),
(45, 'Can add status', 12, 'add_status'),
(46, 'Can change status', 12, 'change_status'),
(47, 'Can delete status', 12, 'delete_status'),
(48, 'Can view status', 12, 'view_status'),
(49, 'Can add teamproject', 13, 'add_teamproject'),
(50, 'Can change teamproject', 13, 'change_teamproject'),
(51, 'Can delete teamproject', 13, 'delete_teamproject'),
(52, 'Can view teamproject', 13, 'view_teamproject'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add userclient', 15, 'add_userclient'),
(58, 'Can change userclient', 15, 'change_userclient'),
(59, 'Can delete userclient', 15, 'delete_userclient'),
(60, 'Can view userclient', 15, 'view_userclient'),
(61, 'Can add usersdetails', 16, 'add_usersdetails'),
(62, 'Can change usersdetails', 16, 'change_usersdetails'),
(63, 'Can delete usersdetails', 16, 'delete_usersdetails'),
(64, 'Can view usersdetails', 16, 'view_usersdetails'),
(65, 'Can add teamproject has user', 17, 'add_teamprojecthasuser'),
(66, 'Can change teamproject has user', 17, 'change_teamprojecthasuser'),
(67, 'Can delete teamproject has user', 17, 'delete_teamprojecthasuser'),
(68, 'Can view teamproject has user', 17, 'view_teamprojecthasuser'),
(69, 'Can add teamproject has project', 18, 'add_teamprojecthasproject'),
(70, 'Can change teamproject has project', 18, 'change_teamprojecthasproject'),
(71, 'Can delete teamproject has project', 18, 'delete_teamprojecthasproject'),
(72, 'Can view teamproject has project', 18, 'view_teamprojecthasproject'),
(73, 'Can add task', 19, 'add_task'),
(74, 'Can change task', 19, 'change_task'),
(75, 'Can delete task', 19, 'delete_task'),
(76, 'Can view task', 19, 'view_task'),
(77, 'Can add scope', 20, 'add_scope'),
(78, 'Can change scope', 20, 'change_scope'),
(79, 'Can delete scope', 20, 'delete_scope'),
(80, 'Can view scope', 20, 'view_scope'),
(81, 'Can add project has job', 21, 'add_projecthasjob'),
(82, 'Can change project has job', 21, 'change_projecthasjob'),
(83, 'Can delete project has job', 21, 'delete_projecthasjob'),
(84, 'Can view project has job', 21, 'view_projecthasjob'),
(85, 'Can add license', 22, 'add_license'),
(86, 'Can change license', 22, 'change_license'),
(87, 'Can delete license', 22, 'delete_license'),
(88, 'Can view license', 22, 'view_license'),
(89, 'Can add priority', 23, 'add_priority'),
(90, 'Can change priority', 23, 'change_priority'),
(91, 'Can delete priority', 23, 'delete_priority'),
(92, 'Can view priority', 23, 'view_priority'),
(93, 'Can add teamproject level', 24, 'add_teamprojectlevel'),
(94, 'Can change teamproject level', 24, 'change_teamprojectlevel'),
(95, 'Can delete teamproject level', 24, 'delete_teamprojectlevel'),
(96, 'Can view teamproject level', 24, 'view_teamprojectlevel'),
(97, 'Can add project details', 25, 'add_projectdetails'),
(98, 'Can change project details', 25, 'change_projectdetails'),
(99, 'Can delete project details', 25, 'delete_projectdetails'),
(100, 'Can view project details', 25, 'view_projectdetails'),
(101, 'Can add job details', 26, 'add_jobdetails'),
(102, 'Can change job details', 26, 'change_jobdetails'),
(103, 'Can delete job details', 26, 'delete_jobdetails'),
(104, 'Can view job details', 26, 'view_jobdetails'),
(105, 'Can add assets', 27, 'add_assets'),
(106, 'Can change assets', 27, 'change_assets'),
(107, 'Can delete assets', 27, 'delete_assets'),
(108, 'Can view assets', 27, 'view_assets'),
(109, 'Can add assets_brand', 28, 'add_assets_brand'),
(110, 'Can change assets_brand', 28, 'change_assets_brand'),
(111, 'Can delete assets_brand', 28, 'delete_assets_brand'),
(112, 'Can view assets_brand', 28, 'view_assets_brand'),
(113, 'Can add assets_categories', 29, 'add_assets_categories'),
(114, 'Can change assets_categories', 29, 'change_assets_categories'),
(115, 'Can delete assets_categories', 29, 'delete_assets_categories'),
(116, 'Can view assets_categories', 29, 'view_assets_categories'),
(117, 'Can add assets_insurance', 30, 'add_assets_insurance'),
(118, 'Can change assets_insurance', 30, 'change_assets_insurance'),
(119, 'Can delete assets_insurance', 30, 'delete_assets_insurance'),
(120, 'Can view assets_insurance', 30, 'view_assets_insurance'),
(121, 'Can add assets_storage_unit', 31, 'add_assets_storage_unit'),
(122, 'Can change assets_storage_unit', 31, 'change_assets_storage_unit'),
(123, 'Can delete assets_storage_unit', 31, 'delete_assets_storage_unit'),
(124, 'Can view assets_storage_unit', 31, 'view_assets_storage_unit'),
(125, 'Can add customers', 32, 'add_customers'),
(126, 'Can change customers', 32, 'change_customers'),
(127, 'Can delete customers', 32, 'delete_customers'),
(128, 'Can view customers', 32, 'view_customers'),
(129, 'Can add platfrom', 33, 'add_platfrom'),
(130, 'Can change platfrom', 33, 'change_platfrom'),
(131, 'Can delete platfrom', 33, 'delete_platfrom'),
(132, 'Can view platfrom', 33, 'view_platfrom'),
(133, 'Can add project_ platform_ customers', 34, 'add_project_platform_customers'),
(134, 'Can change project_ platform_ customers', 34, 'change_project_platform_customers'),
(135, 'Can delete project_ platform_ customers', 34, 'delete_project_platform_customers'),
(136, 'Can view project_ platform_ customers', 34, 'view_project_platform_customers'),
(137, 'Can add customers_has_assets', 35, 'add_customers_has_assets'),
(138, 'Can change customers_has_assets', 35, 'change_customers_has_assets'),
(139, 'Can delete customers_has_assets', 35, 'delete_customers_has_assets'),
(140, 'Can view customers_has_assets', 35, 'view_customers_has_assets'),
(141, 'Can add assets_save_format', 36, 'add_assets_save_format'),
(142, 'Can change assets_save_format', 36, 'change_assets_save_format'),
(143, 'Can delete assets_save_format', 36, 'delete_assets_save_format'),
(144, 'Can view assets_save_format', 36, 'view_assets_save_format'),
(145, 'Can add job_has_assets', 37, 'add_job_has_assets'),
(146, 'Can change job_has_assets', 37, 'change_job_has_assets'),
(147, 'Can delete job_has_assets', 37, 'delete_job_has_assets'),
(148, 'Can view job_has_assets', 37, 'view_job_has_assets'),
(149, 'Can add assets_series', 38, 'add_assets_series'),
(150, 'Can change assets_series', 38, 'change_assets_series'),
(151, 'Can delete assets_series', 38, 'delete_assets_series'),
(152, 'Can view assets_series', 38, 'view_assets_series'),
(153, 'Can add user customers', 39, 'add_usercustomers'),
(154, 'Can change user customers', 39, 'change_usercustomers'),
(155, 'Can delete user customers', 39, 'delete_usercustomers'),
(156, 'Can view user customers', 39, 'view_usercustomers'),
(157, 'Can add customers_has_project', 40, 'add_customers_has_project'),
(158, 'Can change customers_has_project', 40, 'change_customers_has_project'),
(159, 'Can delete customers_has_project', 40, 'delete_customers_has_project'),
(160, 'Can view customers_has_project', 40, 'view_customers_has_project');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$6S8D6p39zUd6$Uk0aowlQiISjg/XX0Qw/bUuHncPU8rpZV3geTdkYsSc=', '2020-08-05 15:22:21.146506', 1, 'admin2fastonline', '', '', 'panudet.panumas@gmail.com', 1, 1, '2020-08-03 04:28:28.597000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(80) DEFAULT NULL,
  `company_public_id` varchar(80) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `company_code` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_public_id`, `license_id`, `company_code`) VALUES
(1, 'PNALL CO.LTD', 'f9023dd4-d54e-11ea-87d0-0242ac130003', 1, 'P0000001'),
(2, 'NOK SOFT CO.LTD', 'NOKSOFT-001E-76AE', 2, 'NOK000001');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_public_id` varchar(80) NOT NULL,
  `customers_name` varchar(80) DEFAULT NULL,
  `customers_city` varchar(80) DEFAULT NULL,
  `customers_address` varchar(150) DEFAULT NULL,
  `customers_postcode` varchar(150) DEFAULT NULL,
  `customers_startdate` datetime(6) NOT NULL,
  `customers_enddate` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `customers_creator_id` varchar(50) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_public_id`, `customers_name`, `customers_city`, `customers_address`, `customers_postcode`, `customers_startdate`, `customers_enddate`, `created`, `customers_creator_id`, `status_id`) VALUES
(3, '67804b70-0f2a-492d-bd03-66c3648e67aa', 'NECTEC', 'ปทุมธานี', '112 อุทยานวิทยาศาสตร์ ถนนพหลโ ยธิน ตำบล คลองหนึ่ง อำเภอคลองหลวง ปทุมธานี', '12120', '2020-08-03 06:15:28.000000', '2021-08-03 06:15:31.000000', '2020-08-03 06:15:38.000000', '54d780b7-9f14-47c3-8068-d392288d2ba5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customershasassets`
--

CREATE TABLE `customershasassets` (
  `customer_has_assets_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `customers_public_id` varchar(80) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `assets_system_status` tinyint(1) NOT NULL,
  `job_has_assets_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customershasproject`
--

CREATE TABLE `customershasproject` (
  `customershasproject_id` int(11) NOT NULL,
  `customers_public_id` varchar(80) DEFAULT NULL,
  `project_public_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customershasproject`
--

INSERT INTO `customershasproject` (`customershasproject_id`, `customers_public_id`, `project_public_id`) VALUES
(1, '67804b70-0f2a-492d-bd03-66c3648e67aa', '0f731322-043f-49eb-a744-7348b458c687');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-08-03 04:35:38.060000', '1', 'Inactive', 1, '[{\"added\": {}}]', 12, 1),
(2, '2020-08-03 04:35:43.461000', '2', 'Active', 1, '[{\"added\": {}}]', 12, 1),
(3, '2020-08-03 04:35:48.075000', '3', 'Inprogress', 1, '[{\"added\": {}}]', 12, 1),
(4, '2020-08-03 04:35:51.944000', '4', 'Pending', 1, '[{\"added\": {}}]', 12, 1),
(5, '2020-08-03 04:35:56.571000', '5', 'Pending_client', 1, '[{\"added\": {}}]', 12, 1),
(6, '2020-08-03 04:36:00.227000', '6', 'Complete', 1, '[{\"added\": {}}]', 12, 1),
(7, '2020-08-03 04:36:04.000000', '7', 'Reject', 1, '[{\"added\": {}}]', 12, 1),
(8, '2020-08-03 04:36:07.451000', '8', 'Cancle', 1, '[{\"added\": {}}]', 12, 1),
(9, '2020-08-03 04:37:16.724000', '1', 'User', 1, '[{\"added\": {}}]', 11, 1),
(10, '2020-08-03 04:45:45.020000', '1', 'Standard', 1, '[{\"added\": {}}]', 22, 1),
(11, '2020-08-03 06:03:15.690000', '1', 'PNALL CO.LTD', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-08-03 06:06:27.602000', '1', '54d780b7-9f14-47c3-8068-d392288d2ba1', 1, '[{\"added\": {}}]', 14, 1),
(13, '2020-08-03 06:06:43.878000', '2', '54d780b7-9f14-47c3-8068-d392288d2ba2', 1, '[{\"added\": {}}]', 14, 1),
(14, '2020-08-03 06:07:05.990000', '3', '54d780b7-9f14-47c3-8068-d392288d2ba3', 1, '[{\"added\": {}}]', 14, 1),
(15, '2020-08-03 06:07:42.899000', '4', '54d780b7-9f14-47c3-8068-d392288d2ba4', 1, '[{\"added\": {}}]', 14, 1),
(16, '2020-08-03 06:09:30.257000', '1', 'ปพน เปรนใจ', 1, '[{\"added\": {}}]', 16, 1),
(17, '2020-08-03 06:10:33.125000', '2', 'ณัฐธี ประพฤติธรรม', 1, '[{\"added\": {}}]', 16, 1),
(18, '2020-08-03 06:11:04.097000', '3', 'ศราวุธ วันคำ', 1, '[{\"added\": {}}]', 16, 1),
(19, '2020-08-03 06:11:49.046000', '4', 'ธันวา วรรณอุดม', 1, '[{\"added\": {}}]', 16, 1),
(20, '2020-08-03 06:12:29.254000', '2', 'Admin', 1, '[{\"added\": {}}]', 11, 1),
(21, '2020-08-03 06:12:57.405000', '5', '54d780b7-9f14-47c3-8068-d392288d2ba5', 1, '[{\"added\": {}}]', 14, 1),
(22, '2020-08-03 06:13:57.440000', '5', 'PNALL ADMIN', 1, '[{\"added\": {}}]', 16, 1),
(23, '2020-08-03 06:16:52.270000', '3', 'NECTEC', 1, '[{\"added\": {}}]', 32, 1),
(24, '2020-08-03 06:18:27.984000', '1', 'asset management system', 1, '[{\"added\": {}}]', 33, 1),
(25, '2020-08-03 06:18:37.468000', '1', 'NECTEC', 1, '[{\"added\": {}}]', 34, 1),
(26, '2020-08-03 06:23:29.315000', '1', 'cf05287c-2cef-4a87-be72-29053afb9a79', 1, '[{\"added\": {}}]', 13, 1),
(27, '2020-08-03 06:23:46.440000', '1', 'cf05287c-2cef-4a87-be72-29053afb9a79', 1, '[{\"added\": {}}]', 17, 1),
(28, '2020-08-03 06:23:49.118000', '2', 'cf05287c-2cef-4a87-be72-29053afb9a79', 1, '[{\"added\": {}}]', 17, 1),
(29, '2020-08-03 06:23:51.545000', '3', 'cf05287c-2cef-4a87-be72-29053afb9a79', 1, '[{\"added\": {}}]', 17, 1),
(30, '2020-08-03 06:23:54.014000', '4', 'cf05287c-2cef-4a87-be72-29053afb9a79', 1, '[{\"added\": {}}]', 17, 1),
(31, '2020-08-03 06:24:57.864000', '1', 'High', 1, '[{\"added\": {}}]', 23, 1),
(32, '2020-08-03 06:25:02.225000', '2', 'Medium', 1, '[{\"added\": {}}]', 23, 1),
(33, '2020-08-03 06:25:05.783000', '3', 'Low', 1, '[{\"added\": {}}]', 23, 1),
(34, '2020-08-03 06:26:13.326000', '1', '0f731322-043f-49eb-a744-7348b458c687', 1, '[{\"added\": {}}]', 10, 1),
(35, '2020-08-03 07:03:03.432000', '1', '0f731322-043f-49eb-a744-7348b458c687', 1, '[{\"added\": {}}]', 25, 1),
(36, '2020-08-03 07:03:33.288000', '1', 'LG', 1, '[{\"added\": {}}]', 28, 1),
(37, '2020-08-03 07:04:00.003000', '2', 'MICROLIFE', 1, '[{\"added\": {}}]', 28, 1),
(38, '2020-08-03 07:15:44.996000', '3', 'Fotopro', 1, '[{\"added\": {}}]', 28, 1),
(39, '2020-08-03 07:15:59.797000', '1', 'ขาตั้งกล้อง', 1, '[{\"added\": {}}]', 29, 1),
(40, '2020-08-03 07:16:05.799000', '2', 'จอมอนิเตอร์', 1, '[{\"added\": {}}]', 29, 1),
(41, '2020-08-03 07:16:29.086000', '3', 'เทอร์โมมิเตอร์', 1, '[{\"added\": {}}]', 29, 1),
(42, '2020-08-03 07:17:17.492000', '1', 'warranty', 1, '[{\"added\": {}}]', 30, 1),
(43, '2020-08-03 07:17:27.928000', '1', 'เครื่อง', 1, '[{\"added\": {}}]', 31, 1),
(44, '2020-08-03 07:17:39.018000', '2', 'ตัว', 1, '[{\"added\": {}}]', 31, 1),
(45, '2020-08-03 07:17:56.089000', '3', 'จอ', 1, '[{\"added\": {}}]', 31, 1),
(46, '2020-08-03 08:10:37.126935', '4', 'μTHERMFACESENSE', 1, '[{\"added\": {}}]', 28, 1),
(47, '2020-08-03 08:12:09.027257', '4', 'MTFS2020NT0002', 1, '[{\"added\": {}}]', 27, 1),
(48, '2020-08-03 08:12:58.559565', '5', 'MT-MTFS2020NT0002', 1, '[{\"added\": {}}]', 27, 1),
(49, '2020-08-03 08:21:33.526543', '1', 'MTFS2020', 1, '[{\"added\": {}}]', 38, 1),
(50, '2020-08-03 08:21:52.738345', '4', 'MTFS2020NT0002', 2, '[{\"changed\": {\"fields\": [\"Assets series\"]}}]', 27, 1),
(51, '2020-08-03 08:22:34.062414', '2', '22MK430H', 1, '[{\"added\": {}}]', 38, 1),
(52, '2020-08-03 08:22:41.187140', '5', 'MT-MTFS2020NT0002', 2, '[{\"changed\": {\"fields\": [\"Assets series\"]}}]', 27, 1),
(53, '2020-08-03 08:23:03.690807', '3', 'S3', 1, '[{\"added\": {}}]', 38, 1),
(54, '2020-08-03 08:23:24.407453', '6', 'TRIP-MTFS2020NT0002', 1, '[{\"added\": {}}]', 27, 1),
(55, '2020-08-03 08:25:31.707614', '4', 'FR1DL1/FR1MF1', 1, '[{\"added\": {}}]', 38, 1),
(56, '2020-08-03 08:25:54.925445', '7', 'TMM-MTFS2020NT0002', 1, '[{\"added\": {}}]', 27, 1),
(57, '2020-08-03 09:22:50.750463', '1', 'J000001', 1, '[{\"added\": {}}]', 8, 1),
(58, '2020-08-03 09:24:48.819732', '1', 'J000001', 1, '[{\"added\": {}}]', 26, 1),
(59, '2020-08-03 09:25:21.372466', '1', '1', 1, '[{\"added\": {}}]', 37, 1),
(60, '2020-08-03 09:25:29.308603', '2', '2', 1, '[{\"added\": {}}]', 37, 1),
(61, '2020-08-03 09:25:33.999066', '3', '3', 1, '[{\"added\": {}}]', 37, 1),
(62, '2020-08-03 09:25:38.206662', '4', '4', 1, '[{\"added\": {}}]', 37, 1),
(63, '2020-08-03 09:29:37.982322', '1', 'J000001', 2, '[]', 8, 1),
(64, '2020-08-03 09:30:03.434358', '1', 'J000001', 2, '[]', 26, 1),
(65, '2020-08-03 09:30:20.544833', '5', '5', 1, '[{\"added\": {}}]', 37, 1),
(66, '2020-08-03 09:30:27.141712', '5', '5', 3, '', 37, 1),
(67, '2020-08-03 09:34:10.878074', '1', '0f731322-043f-49eb-a744-7348b458c687', 1, '[{\"added\": {}}]', 21, 1),
(68, '2020-08-03 09:34:31.015695', '1', 'cf05287c-2cef-4a87-be72-29053afb9a79', 1, '[{\"added\": {}}]', 18, 1),
(69, '2020-08-03 09:37:48.756624', '2', 'Developer', 1, '[{\"added\": {}}]', 22, 1),
(70, '2020-08-03 09:38:05.122158', '2', 'NOK SOFT CO.LTD', 1, '[{\"added\": {}}]', 7, 1),
(71, '2020-08-03 09:38:35.339432', '6', '54d780b7-77777-TEST-DEV', 1, '[{\"added\": {}}]', 14, 1),
(72, '2020-08-03 09:39:04.426008', '2', 'TESTP000001', 1, '[{\"added\": {}}]', 10, 1),
(73, '2020-08-03 09:40:26.936834', '2', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 13, 1),
(74, '2020-08-03 09:40:43.178917', '5', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 17, 1),
(75, '2020-08-03 09:41:25.896348', '2', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 18, 1),
(76, '2020-08-03 09:42:50.627496', '3', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 18, 1),
(77, '2020-08-03 09:42:56.036254', '4', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 18, 1),
(78, '2020-08-03 09:42:59.807278', '5', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 18, 1),
(79, '2020-08-03 09:43:04.229409', '6', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 18, 1),
(80, '2020-08-03 09:43:08.144553', '7', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 18, 1),
(81, '2020-08-03 09:43:11.756248', '8', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 18, 1),
(82, '2020-08-03 09:43:15.679300', '9', 'T000001-TESTDEV', 1, '[{\"added\": {}}]', 18, 1),
(83, '2020-08-03 09:44:20.675037', '6', 'DEVELOPER TESTER', 1, '[{\"added\": {}}]', 16, 1),
(84, '2020-08-03 09:44:53.161532', '2', 'TESTJOB000001', 1, '[{\"added\": {}}]', 8, 1),
(85, '2020-08-03 09:45:08.964452', '2', 'TESTP000001', 1, '[{\"added\": {}}]', 21, 1),
(86, '2020-08-04 08:07:58.668006', '7', '54d780b7-9f14-47c3-8068-d3dddd88d2s01', 1, '[{\"added\": {}}]', 14, 1),
(87, '2020-08-04 08:08:14.034719', '8', '54d780b7-9f14-47c3-8068-d392288d2bs2', 1, '[{\"added\": {}}]', 14, 1),
(88, '2020-08-04 08:08:48.234430', '8', '54d780b7-9f14-47c3-8068-d392288d2bs2', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(89, '2020-08-04 08:09:08.503714', '9', '54d780b7-9f14-47c3-8068-d392288d2bs3', 1, '[{\"added\": {}}]', 14, 1),
(90, '2020-08-04 08:09:35.427619', '10', '54d780b7-9f14-47c3-8068-d392288d2bs4', 1, '[{\"added\": {}}]', 14, 1),
(91, '2020-08-04 08:10:02.196814', '11', '54d780b7-9f14-47c3-8068-d392288d2ba6', 1, '[{\"added\": {}}]', 14, 1),
(92, '2020-08-04 08:10:21.019288', '12', '54d780b7-9f14-47ddd68-d392288d2ba6', 1, '[{\"added\": {}}]', 14, 1),
(93, '2020-08-04 08:11:43.183140', '7', 'อนุชา จำรัสแสง', 1, '[{\"added\": {}}]', 16, 1),
(94, '2020-08-04 08:12:22.999977', '8', '54d780b7-9f14-47c3-8068-d392288d2bs2', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(95, '2020-08-04 08:12:43.409720', '8', 'ชัยพร มีบุญ', 1, '[{\"added\": {}}]', 16, 1),
(96, '2020-08-04 08:13:06.132167', '9', 'สุกิจ จันทร์ตุลารัตน์', 1, '[{\"added\": {}}]', 16, 1),
(97, '2020-08-04 08:13:49.929736', '10', 'สมเชษฐ์ ไตรยะสุทธิ์', 1, '[{\"added\": {}}]', 16, 1),
(98, '2020-08-04 08:14:10.935353', '11', 'นิวัฒน์ สุวรรณมา', 1, '[{\"added\": {}}]', 16, 1),
(99, '2020-08-04 08:14:27.177808', '12', 'นิวัฒน์ สุวรรณมา', 1, '[{\"added\": {}}]', 16, 1),
(100, '2020-08-04 08:14:44.665614', '7', '54d780b7-9f14-47c3-8068-d3dddd88d2s01', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(101, '2020-08-04 08:14:52.973694', '2', '54d780b7-9f14-47c3-8068-d392288d2ba2', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(102, '2020-08-04 08:15:06.406654', '8', '54d780b7-9f14-47c3-8068-d392288d2bs2', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(103, '2020-08-04 08:15:12.058080', '9', '54d780b7-9f14-47c3-8068-d392288d2bs3', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(104, '2020-08-04 08:15:21.336138', '10', '54d780b7-9f14-47c3-8068-d392288d2bs4', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(105, '2020-08-04 08:15:27.693409', '11', '54d780b7-9f14-47c3-8068-d392288d2ba6', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(106, '2020-08-04 08:15:33.760352', '12', '54d780b7-9f14-47ddd68-d392288d2ba6', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(107, '2020-08-04 08:16:51.078863', '3', 'SUP-PN0000001', 1, '[{\"added\": {}}]', 13, 1),
(108, '2020-08-04 08:17:16.518652', '3', 'SUP-PN0000001', 2, '[{\"changed\": {\"fields\": [\"Teamproject name\"]}}]', 13, 1),
(109, '2020-08-04 08:17:32.170514', '4', 'SUP-PN0000002', 1, '[{\"added\": {}}]', 13, 1),
(110, '2020-08-04 08:18:34.898104', '5', 'SUP-PN0000003', 1, '[{\"added\": {}}]', 13, 1),
(111, '2020-08-04 08:18:53.254587', '6', 'SUP-PN0000004', 1, '[{\"added\": {}}]', 13, 1),
(112, '2020-08-04 08:19:09.103609', '7', 'SUP-PN0000005', 1, '[{\"added\": {}}]', 13, 1),
(113, '2020-08-04 08:19:21.291525', '8', 'SUP-PN0000006', 1, '[{\"added\": {}}]', 13, 1),
(114, '2020-08-04 08:19:51.409958', '6', 'SUP-PN0000001', 1, '[{\"added\": {}}]', 17, 1),
(115, '2020-08-04 08:19:55.301417', '7', 'SUP-PN0000002', 1, '[{\"added\": {}}]', 17, 1),
(116, '2020-08-04 08:20:00.843238', '8', 'SUP-PN0000003', 1, '[{\"added\": {}}]', 17, 1),
(117, '2020-08-04 08:20:04.072322', '9', 'SUP-PN0000004', 1, '[{\"added\": {}}]', 17, 1),
(118, '2020-08-04 08:20:07.885778', '10', 'SUP-PN0000005', 1, '[{\"added\": {}}]', 17, 1),
(119, '2020-08-04 08:20:11.114370', '11', 'SUP-PN0000006', 1, '[{\"added\": {}}]', 17, 1),
(120, '2020-08-04 10:25:01.950306', '12', 'นิวัฒน์ สุวรรณมา', 3, '', 16, 1),
(121, '2020-08-04 15:29:31.218646', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(122, '2020-08-04 19:00:14.500070', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(123, '2020-08-04 19:00:29.293726', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(124, '2020-08-04 19:18:59.899129', '32', 'J000031', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(125, '2020-08-05 04:50:21.617576', '2', '54d780b7-9f14-47c3-8068-d392288d2ba2', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(126, '2020-08-05 15:20:34.143202', '2', 'TESTJOB000001', 2, '[{\"changed\": {\"fields\": [\"Job operator\"]}}]', 8, 1),
(127, '2020-08-05 15:23:06.812535', '2', 'TESTJOB000001', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(128, '2020-08-05 15:44:20.311720', '2', 'TESTJOB000001', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(129, '2020-08-05 15:57:19.324782', '2', 'TESTJOB000001', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(130, '2020-08-05 16:15:33.843292', '24', 'J000023', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(131, '2020-08-05 16:25:09.397189', '24', 'J000023', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(132, '2020-08-05 16:28:43.533389', '24', 'J000023', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(133, '2020-08-05 16:38:14.276790', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Job operator\"]}}]', 8, 1),
(134, '2020-08-05 16:38:55.504701', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(135, '2020-08-05 16:40:17.682801', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(136, '2020-08-05 17:11:12.101598', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(137, '2020-08-05 17:14:22.739799', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(138, '2020-08-05 17:21:31.755611', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Job operator\"]}}]', 8, 1),
(139, '2020-08-06 15:20:21.901438', '1', 'J000001', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(140, '2020-08-09 12:36:50.593509', '1', 'nectec01', 1, '[{\"added\": {}}]', 39, 1),
(141, '2020-08-09 12:40:52.027678', '1', '67804b70-0f2a-492d-bd03-66c3648e67aa', 1, '[{\"added\": {}}]', 40, 1),
(142, '2020-08-09 12:47:27.606641', '32', 'J000031', 2, '[{\"changed\": {\"fields\": [\"Job operator\"]}}]', 8, 1),
(143, '2020-08-09 15:13:34.834364', '13', '85857905-9662-4c68-8843-1e64d9828a77', 1, '[{\"added\": {}}]', 14, 1),
(144, '2020-08-09 15:14:05.266895', '13', 'จักร์พันธ์ หอมจำปา', 1, '[{\"added\": {}}]', 16, 1),
(145, '2020-08-09 15:14:37.447284', '13', 'จักร์พันธ์ หอมจำปา', 2, '[]', 16, 1),
(146, '2020-08-09 15:15:16.888979', '9', 'SUP-PN0000007', 1, '[{\"added\": {}}]', 13, 1),
(147, '2020-08-09 15:16:38.507199', '10', 'SUP-PN0000007', 1, '[{\"added\": {}}]', 18, 1),
(148, '2020-08-09 15:17:16.555844', '12', 'SUP-PN0000007', 1, '[{\"added\": {}}]', 17, 1),
(149, '2020-08-09 15:19:37.417716', '34', '0f731322-043f-49eb-a744-7348b458c687', 1, '[{\"added\": {}}]', 21, 1),
(150, '2020-08-09 15:21:19.565048', '1', '0f731322-043f-49eb-a744-7348b458c687', 2, '[{\"changed\": {\"fields\": [\"Projectdetails manual\"]}}]', 25, 1),
(151, '2020-08-09 15:33:29.575779', '1', '0f731322-043f-49eb-a744-7348b458c687', 2, '[{\"changed\": {\"fields\": [\"Projectdetails manual\"]}}]', 25, 1),
(152, '2020-08-10 02:38:21.338124', '7', '54d780b7-9f14-47c3-8068-d3dddd88d2s01', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(153, '2020-08-10 02:38:25.983049', '8', '54d780b7-9f14-47c3-8068-d392288d2bs2', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(154, '2020-08-10 02:38:29.596794', '9', '54d780b7-9f14-47c3-8068-d392288d2bs3', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(155, '2020-08-10 02:38:33.695964', '10', '54d780b7-9f14-47c3-8068-d392288d2bs4', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(156, '2020-08-10 02:38:39.784897', '11', '54d780b7-9f14-47c3-8068-d392288d2ba6', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(157, '2020-08-10 02:38:43.956053', '12', '54d780b7-9f14-47ddd68-d392288d2ba6', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(158, '2020-08-10 02:38:49.230167', '13', '85857905-9662-4c68-8843-1e64d9828a77', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(159, '2020-08-10 02:44:51.582611', '11', 'SUP-PN0000001', 1, '[{\"added\": {}}]', 18, 1),
(160, '2020-08-10 02:45:42.454796', '12', 'SUP-PN0000002', 1, '[{\"added\": {}}]', 18, 1),
(161, '2020-08-10 02:48:01.726148', '13', 'SUP-PN0000003', 1, '[{\"added\": {}}]', 18, 1),
(162, '2020-08-10 02:48:09.630269', '14', 'SUP-PN0000004', 1, '[{\"added\": {}}]', 18, 1),
(163, '2020-08-10 02:48:16.300843', '15', 'SUP-PN0000005', 1, '[{\"added\": {}}]', 18, 1),
(164, '2020-08-10 02:48:24.233793', '16', 'SUP-PN0000006', 1, '[{\"added\": {}}]', 18, 1),
(165, '2020-08-10 02:53:31.864413', '35', '0f731322-043f-49eb-a744-7348b458c687', 1, '[{\"added\": {}}]', 21, 1),
(166, '2020-08-10 02:53:38.023228', '36', '0f731322-043f-49eb-a744-7348b458c687', 1, '[{\"added\": {}}]', 21, 1),
(167, '2020-08-10 12:29:04.008585', '17', '0f731322-043f-49eb-a744-7348b458c687', 3, '', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(27, 'api', 'assets'),
(28, 'api', 'assets_brand'),
(29, 'api', 'assets_categories'),
(30, 'api', 'assets_insurance'),
(36, 'api', 'assets_save_format'),
(38, 'api', 'assets_series'),
(31, 'api', 'assets_storage_unit'),
(7, 'api', 'company'),
(32, 'api', 'customers'),
(35, 'api', 'customers_has_assets'),
(40, 'api', 'customers_has_project'),
(8, 'api', 'job'),
(26, 'api', 'jobdetails'),
(37, 'api', 'job_has_assets'),
(22, 'api', 'license'),
(9, 'api', 'module'),
(33, 'api', 'platfrom'),
(23, 'api', 'priority'),
(10, 'api', 'project'),
(25, 'api', 'projectdetails'),
(21, 'api', 'projecthasjob'),
(34, 'api', 'project_platform_customers'),
(11, 'api', 'role'),
(20, 'api', 'scope'),
(12, 'api', 'status'),
(19, 'api', 'task'),
(13, 'api', 'teamproject'),
(18, 'api', 'teamprojecthasproject'),
(17, 'api', 'teamprojecthasuser'),
(24, 'api', 'teamprojectlevel'),
(14, 'api', 'user'),
(15, 'api', 'userclient'),
(39, 'api', 'usercustomers'),
(16, 'api', 'usersdetails'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-08-03 07:33:44.709750'),
(2, 'auth', '0001_initial', '2020-08-03 07:33:44.843031'),
(3, 'admin', '0001_initial', '2020-08-03 07:33:45.185506'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-03 07:33:45.261784'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-03 07:33:45.274100'),
(6, 'api', '0001_initial', '2020-08-03 07:33:45.835350'),
(7, 'api', '0002_auto_20200718_2231', '2020-08-03 07:33:46.714712'),
(8, 'api', '0003_auto_20200718_2336', '2020-08-03 07:33:47.472511'),
(9, 'api', '0004_auto_20200719_2140', '2020-08-03 07:33:48.008176'),
(10, 'api', '0005_remove_projectdetails_priority', '2020-08-03 07:33:48.076708'),
(11, 'api', '0006_auto_20200726_0125', '2020-08-03 07:33:48.258837'),
(12, 'api', '0007_auto_20200801_2152', '2020-08-03 07:33:49.179143'),
(13, 'api', '0008_auto_20200803_1043', '2020-08-03 07:33:50.181706'),
(14, 'api', '0009_company_company_code', '2020-08-03 07:33:50.351431'),
(15, 'api', '0010_teamproject_users_creator', '2020-08-03 07:33:50.423546'),
(16, 'contenttypes', '0002_remove_content_type_name', '2020-08-03 07:33:50.536153'),
(17, 'auth', '0002_alter_permission_name_max_length', '2020-08-03 07:33:50.583047'),
(18, 'auth', '0003_alter_user_email_max_length', '2020-08-03 07:33:50.635022'),
(19, 'auth', '0004_alter_user_username_opts', '2020-08-03 07:33:50.653354'),
(20, 'auth', '0005_alter_user_last_login_null', '2020-08-03 07:33:50.693860'),
(21, 'auth', '0006_require_contenttypes_0002', '2020-08-03 07:33:50.700395'),
(22, 'auth', '0007_alter_validators_add_error_messages', '2020-08-03 07:33:50.715470'),
(23, 'auth', '0008_alter_user_username_max_length', '2020-08-03 07:33:50.763852'),
(24, 'auth', '0009_alter_user_last_name_max_length', '2020-08-03 07:33:50.816114'),
(25, 'auth', '0010_alter_group_name_max_length', '2020-08-03 07:33:50.878781'),
(26, 'auth', '0011_update_proxy_permissions', '2020-08-03 07:33:50.916148'),
(27, 'sessions', '0001_initial', '2020-08-03 07:33:50.941339'),
(28, 'api', '0011_auto_20200803_1518', '2020-08-03 08:19:02.263710'),
(29, 'api', '0012_auto_20200803_2038', '2020-08-03 13:39:31.103766'),
(30, 'api', '0013_auto_20200803_2041', '2020-08-03 13:41:50.424638'),
(31, 'api', '0014_auto_20200803_2126', '2020-08-03 15:13:05.723564'),
(32, 'api', '0015_job_has_assets_assets_is_valid', '2020-08-03 15:13:05.820281'),
(33, 'api', '0016_auto_20200804_0135', '2020-08-03 18:36:30.734059'),
(34, 'api', '0017_auto_20200809_1610', '2020-08-09 12:34:37.111406'),
(35, 'api', '0018_customers_has_project', '2020-08-09 12:34:37.200976'),
(36, 'api', '0019_auto_20200809_1756', '2020-08-09 12:34:37.314862'),
(37, 'api', '0020_auto_20200810_1831', '2020-08-10 12:08:01.828320'),
(38, 'api', '0021_auto_20200810_1842', '2020-08-10 12:08:02.143315');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4tqz3uc0x7qxn4xyphawc298ny5r1fyo', 'YzM3OTczZTBkYWE0ZTFlOTM2OTY1M2IwZTJmOGYxYmEyMWFhNTBiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTViNmJmNWU5MTVhZDFmMzIyNTNmOWNhYWFlNDQ2YWZkZTE4Y2Q4In0=', '2020-08-19 15:22:21.150979'),
('4x63lwxhzwd8k734cnxn0g5y6alwb2hk', 'YzM3OTczZTBkYWE0ZTFlOTM2OTY1M2IwZTJmOGYxYmEyMWFhNTBiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTViNmJmNWU5MTVhZDFmMzIyNTNmOWNhYWFlNDQ2YWZkZTE4Y2Q4In0=', '2020-08-19 15:22:08.193333'),
('5c6nbm8xwyfumcjult4erolazjomrwuc', 'YzM3OTczZTBkYWE0ZTFlOTM2OTY1M2IwZTJmOGYxYmEyMWFhNTBiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTViNmJmNWU5MTVhZDFmMzIyNTNmOWNhYWFlNDQ2YWZkZTE4Y2Q4In0=', '2020-08-17 07:35:23.050803'),
('64mqtooex5wtr08hmvnt62uxccbz8flc', 'YzM3OTczZTBkYWE0ZTFlOTM2OTY1M2IwZTJmOGYxYmEyMWFhNTBiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTViNmJmNWU5MTVhZDFmMzIyNTNmOWNhYWFlNDQ2YWZkZTE4Y2Q4In0=', '2020-08-17 04:29:02.870000'),
('ol2uvbyx4ncuwocm6119976mm3pne73a', 'YzM3OTczZTBkYWE0ZTFlOTM2OTY1M2IwZTJmOGYxYmEyMWFhNTBiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTViNmJmNWU5MTVhZDFmMzIyNTNmOWNhYWFlNDQ2YWZkZTE4Y2Q4In0=', '2020-08-18 19:18:44.773987'),
('rruz2asjtzxzpvtlae38131o8fad2mud', 'YzM3OTczZTBkYWE0ZTFlOTM2OTY1M2IwZTJmOGYxYmEyMWFhNTBiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTViNmJmNWU5MTVhZDFmMzIyNTNmOWNhYWFlNDQ2YWZkZTE4Y2Q4In0=', '2020-08-17 08:01:28.575330');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `job_public_id` varchar(50) DEFAULT NULL,
  `job_name` varchar(80) DEFAULT NULL,
  `job_created` datetime(6) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `job_creator_id` varchar(50) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `job_operator_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `job_public_id`, `job_name`, `job_created`, `status_id`, `job_creator_id`, `priority_id`, `job_operator_id`) VALUES
(1, 'J000001', 'สถาบันมะเร็งแห่งชาติ', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2ba1'),
(2, 'TESTJOB000001', 'TEST JOB01', '2020-08-03 09:44:50.000000', 3, '54d780b7-77777-TEST-DEV', 1, '54d780b7-77777-TEST-DEV'),
(3, 'J000002', 'สถาบันมะเร็งแห่งชาติ', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2ba2'),
(4, 'J000003', 'กรมราชทัณฑ์', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2ba2'),
(5, 'J000004', 'เรือนจำพิเศษพัทยา', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(6, 'J000005', 'เรือนจำกลางสมุทรปราการ', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2ba1'),
(7, 'J000006', 'เรือนจำอำเภอแม่สอด', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2bs2'),
(8, 'J000007', 'เรือนจำจังหวัดภูเก็ต', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(9, 'J000008', 'เรือนจำกลางคลองไผ่', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(10, 'J000009', 'ทัณฑสถานบำบัดพิเศษขอนแก่น', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(11, 'J000010', 'เรือนจำกลางราชบุรี', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2ba6'),
(12, 'J000011', 'ทัณฑสถานเปิดทุ่งเบญจา', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d3dddd88d2s01'),
(13, 'J000012', 'รพ.พระนครศรีอยุธยา', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(14, 'J000013', 'รพ.พระนครศรีอยุธยา', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(15, 'J000014', 'รพ.สมเด็จพระบรมราชเทวี ณ. ศรีราชา สภากาชาดไทย', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(16, 'J000015', 'รพ.สมเด็จพระบรมราชเทวี ณ. ศรีราชา สภากาชาดไทย', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(17, 'J000016', 'ภาคบริการโลหิตแห่งชาติ นครสวรรค์ สภากาชาดไทย', '2020-08-03 09:22:23.000000', 3, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '85857905-9662-4c68-8843-1e64d9828a77'),
(18, 'J000017', 'ศูนย์ผลิตผลิตภัณฑ์จากพลาสมา สภากาชาดไทย', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(19, 'J000018', 'รพ.จุฬาลงกรณ์ สภากาชาดไทย', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2ba2'),
(20, 'J000019', 'รพ.จุฬาลงกรณ์ สภากาชาดไทย', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2ba2'),
(21, 'J000020', 'รพ.พระมงกุฎเกล้า', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(22, 'J000021', 'รพ.พระมงกุฎเกล้า (หน่วยฝึกทหาร)', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2ba6'),
(23, 'J000022', 'รพ.พระมงกุฎเกล้า (หน่วยฝึกทหาร)', '2020-08-03 09:22:23.000000', 4, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, '54d780b7-9f14-47c3-8068-d392288d2ba6'),
(24, 'J000023', 'กทปส', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(25, 'J000024', 'เลขาธิการคณะกรรมการกิจการกระจายเสียง กิจการโทรทัศน์ และกิจการโทรคมนาคมแห่งชาติ', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(26, 'J000025', 'เลขาธิการคณะกรรมการกิจการกระจายเสียง กิจการโทรทัศน์ และกิจการโทรคมนาคมแห่งชาติ', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(27, 'J000026', 'บริษัท รถไฟฟ้า ร.ฟ.ท. จำกัด (Airport Link)', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(28, 'J000027', 'บริษัท รถไฟฟ้า ร.ฟ.ท. จำกัด (Airport Link)', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(29, 'J000028', 'กระทรวงคมนาคม', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(30, 'J000029', 'กระทรวงคมนาคม', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(31, 'J000030', 'การรถไฟแห่งประเทศไทย (รฟท.)', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(32, 'J000031', 'กรมสอบสวนคดีพิเศษ', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL),
(33, 'J000032', 'กรมบังคับคดี', '2020-08-03 09:22:23.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobdetails`
--

CREATE TABLE `jobdetails` (
  `jobdetails_id` int(11) NOT NULL,
  `jobdetails_location` longtext,
  `jobdetails_desc` longtext,
  `jobdetails_manual` varchar(80) DEFAULT NULL,
  `jobdetails_note` longtext NOT NULL,
  `jobdetails_startdate` date NOT NULL,
  `jobdetails_enddate` date NOT NULL,
  `job_public_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobdetails`
--

INSERT INTO `jobdetails` (`jobdetails_id`, `jobdetails_location`, `jobdetails_desc`, `jobdetails_manual`, `jobdetails_note`, `jobdetails_startdate`, `jobdetails_enddate`, `job_public_id`) VALUES
(1, 'ตึกดำรงนิราดูร 268/1 ถนน พระราม6 แขวงทุ่งพญาไท เขตราชเทวี กรุงเทพมหานคร 10400 กรุงเทพมหานคร', '', NULL, 'นายสมศักดิ์ วงศานราธิบ รองผู้อำนวยการสถาบันมะเร็ง 089-888-1447', '2020-08-05', '2020-08-05', 'J000001'),
(2, 'ตึกวิเคราะห์โรคมะเร็ง 268/1 ถนน พระราม6 แขวงทุ่งพญาไท เขตราชเทวี กรุงเทพมหานคร 10400 กรุงเทพมหานคร', '', NULL, 'นายสมศักดิ์ วงศานราธิบ รองผู้อำนวยการสถาบันมะเร็ง 089-888-1447', '2020-08-05', '2020-08-05', 'J000002'),
(3, '222 ถนนนนทบุรี 1 ตำบลสวนใหญ่ อำเภอเมือง จังหวัดนนทบุรี 11000 นนทบุรี', '', NULL, 'รท.ชุติมา เจริญพันธุ์  02-9673353', '2020-08-17', '2020-08-17', 'J000003'),
(4, '57 ม.4 ตำบลหนองปลาไหล อำเภอบางละมุง จังหวัดชลบุรี 20150 ชลบุรี', '', NULL, 'นางภาริน อภิภัสร์  038-170672', '2020-08-10', '2020-08-15', 'J000004'),
(5, '333 หมู่ที่ 5 ถนนสุขุมวิท ตำบลคลองด่าน อำเภอบางบ่อ จังหวัดสมุทรปราการ 10550 สมุทรปราการ', '', NULL, 'นางทัศนีย์ รัศมีเลอเลิศ  02-3137155', '2020-08-18', '2020-08-18', 'J000005'),
(6, '2 ถนนราชทัณฑ์ ตำบลแม่สอด อำเภอแม่สอด จังหวัดตาก 63110 ตาก', '', NULL, 'นางบุษบา ประทุมทาอง  055-531226', '2020-08-10', '2020-08-10', 'J000006'),
(7, '11 ถ. ดำรง ตำบลตลาดใหญ่ อำเภอเมืองภูเก็ต จังหวัดภูเก็ต 83000 ภูเก็ต', '', NULL, 'นายอภิชิต กุลศุภกร  076-212104 , 085-8889529', '2020-08-18', '2020-08-18', 'J000007'),
(8, '300 หมู่ที่ 1 ถนน มิตรภาพ ตำบลคลองไผ่ อำเภอสีคิ้ว จังหวัดนครราชสีมา 30340 นครราชสีมา', '', NULL, 'นายสุรชัย ถัดกลกรัง  044-323123', '2020-08-18', '2020-08-18', 'J000008'),
(9, '117 ถนน ศรีจันทร์ ตำบลพระลับ อำเภอเมืองขอนแก่น จังหวัดขอนแก่น 40000 ขอนแก่น', '', NULL, 'นายระพีพัฒน์ อาราษฎร์  043-237731-13', '2020-08-10', '2020-08-15', 'J000009'),
(10, '94 หมู่ 6 ตำบลน้ำพุ อำเภอเมือง จังหวัดราชบุรี 70000 ราชบุรี', '', NULL, 'นางอำพรรณ รอดกระจับ  032-735429', '2020-08-10', '2020-08-10', 'J000010'),
(11, '58 หมู่ 7 ตำบลทุ่งเบญจา อำเภอท่าใหม่ จังหวัดจันทบุรี 22170 จันทบุรี', '', NULL, 'นายชูเกียรติ หุ่นยนต์  039-495231', '2020-08-10', '2020-08-15', 'J000011'),
(12, '46/1 หมู่ที่ 4 ตำบลประตูชัย ถนนอู่ทอง อำเภอพระนครศรีอยุธยา จังหวัดพระนครศรีอยุธยา 13000 พระนครศรีอยุธยา', '', NULL, 'พญ.เสาวลักษณ์ ขาวโพนทอง  081-4073056', '2020-08-06', '2020-08-06', 'J000012'),
(13, '46/1 หมู่ที่ 4 ตำบลประตูชัย ถนนอู่ทอง อำเภอพระนครศรีอยุธยา จังหวัดพระนครศรีอยุธยา 13000 พระนครศรีอยุธยา', '', NULL, 'พญ.เสาวลักษณ์ ขาวโพนทอง  081-4073056', '2020-08-06', '2020-08-06', 'J000013'),
(14, 'ศูนย์เทพรัตน์การุญ สภากาชาดไทย 290 ถนนเจิมจอมพล ตำบลศรีราชา อำเภอศรีราชา จังหวัดชลบุรี 20110 ชลบุรี', '', NULL, 'นพ.วิทยา โชคชัยไพศาล  081-4284246', '2020-08-10', '2020-08-15', 'J000014'),
(15, 'ศูนย์รักษาพยาบาลรวมเฉลิมพระเกียรติ สมเด็จพระพันวัสสาอัยยิกาเจ้า 290 ถนนเจิมจอมพล ตำบลศรีราชา อำเภอศรีราชา จังหวัดชลบุรี 20110 ชลบุรี', '', NULL, 'นพ.วิทยา โชคชัยไพศาล  081-4284246', '2020-08-10', '2020-08-15', 'J000015'),
(16, '57/12 ถนนโกสีย์ใต้ ตำบลปากน้ำโพ อำเภอเมือง จังหวัดนครสวรรค์ 60000  นครสวรรค์', '', NULL, 'นายสาธิต เทพสมบูรณ์ หัวหน้าภาคบริการโลหิต 096-6063317 , 094-6267654', '2020-08-10', '2020-08-15', 'J000016'),
(17, '1 หมู่ 4 ตำบลบางพระ อำเภอศรีราชา จังหวัดชลบุรี 20110 ชลบุรี', '', NULL, 'คุณพัฒนา มังจักร  081-8081488', '2020-08-10', '2020-08-15', 'J000017'),
(18, 'อาคารศูนย์ก้าวหน้าวิชาการ 1873 ถนนพระราม 4 แขวงปทุมวัน เขตปทุมวัน กรุงเทพมหานคร 10330 กรุงเทพมหานคร', '', NULL, 'ผช.รศ.นพ.มนินธ์ อัศวจินตจิตร์ ผช. ผอ. ฝ่ายสิ่งแวดล้อม 082-0902777', '2020-08-05', '2020-08-05', 'J000018'),
(19, 'อาคารศูนย์ก้าวหน้าวิชาการ 1873 ถนนพระราม 4 แขวงปทุมวัน เขตปทุมวัน กรุงเทพมหานคร 10330 กรุงเทพมหานคร', '', NULL, 'ผช.รศ.นพ.มนินธ์ อัศวจินตจิตร์ ผช. ผอ. ฝ่ายสิ่งแวดล้อม 082-0902777', '2020-08-05', '2020-08-05', 'J000019'),
(20, 'แผนกเวชศาสตร์ครอบครัว 315 ถนนราชวิถี แขวงทุ่งพญาไท เขตราชเทวี กรุงเทพมหานคร 10400 กรุงเทพมหานคร', '', NULL, 'พท.ญ.เสาวนิตย์ แพงโพธิ์ (ผู้ประสานงาน) กรมพทยทหารบก  089-8156323', '2020-08-05', '2020-08-05', 'J000020'),
(21, 'กองพันทหารสื่อสารที่ 101 กรมทหารสื่อสาร 51/1 หมู่ที่ 3 ตำบลสวนหลวง อำเภอกระทุ่มแบน จังหวัดสมุทรสาคร 74110 สมุทรสาคร', '', NULL, 'พอ.ราม รังสินธุ์ กองพัน 101 081-3999700', '2020-08-11', '2020-08-11', 'J000021'),
(22, 'กองพันทหารสื่อสารที่ 101 กรมทหารสื่อสาร 51/1 หมู่ที่ 3 ตำบลสวนหลวง อำเภอกระทุ่มแบน จังหวัดสมุทรสาคร 74110 สมุทรสาคร', '', NULL, 'รท.วรโชติ นาคคุด กองพัน 101 064-7894615', '2020-08-11', '2020-08-11', 'J000022'),
(23, 'สำนักงาน กสทช. ซอยสาสลม 87 ถนนพหลโยธิน ซอย 8 แขวงสามเสนใน เขตพญาไท กรุงเทพมหานคร 10400 กรุงเทพมหานคร', '', NULL, 'คุณกุลรพี พุทธมงคล  085-3461900', '2020-08-13', '2020-08-13', 'J000023'),
(24, 'อาคารอำนวยการชั้น 1 87 ถนนพหลโยธิน ซอย 8 แขวงสามเสนใน เขตพญาไท กรุงเทพมหานคร 10400 กรุงเทพมหานคร', '', NULL, 'คุณกุลรพี พุทธมงคล  085-3461900', '2020-08-13', '2020-08-13', 'J000024'),
(25, 'กองทุนวิจัยและพัฒนากิจการกระจายเสียง กิจการโทรทัศน์ และกืจการโทรคมนาคม เพื่อประโยชน์สาธาระนะ ชั้น 6 ตึก iTower 888 ถนนวิภาวดีรังสิต แขวงลาดยาว เขตจตุจักร กรุงเทพมหานคร 10900 กรุงเทพมหานคร', '', NULL, 'คุณกุลรพี พุทธมงคล  085-3461900', '2020-08-13', '2020-08-13', 'J000025'),
(26, 'สถานีพญาไท 27 ซอยเพชรบุรี 47 (ศูนย์วิจัย) แขวงบางกะปิ เขตห้วยขวาง กรุงเทพมหานคร 10320 กรุงเทพมหานคร', '', NULL, 'คุณณัฐพงษ์ มวลสนิท , คุณต้าร์ Staff ผู้จัดการส่วนความปลอดภัยและคุณภาพ 083-0875888 , 062-4466593', '2020-08-18', '2020-08-18', 'J000026'),
(27, 'สถานีสุวรรณภูมิ ตำบลหนองปรือ อำเภอบางพลี จังหวัดสมุทรปราการ 10540 สมุทรปราการ', '', NULL, 'คุณณัฐพงษ์ มวลสนิท , คุณต้าร์ Staff ผู้จัดการส่วนความปลอดภัยและคุณภาพ 083-0875888 , 062-4466593', '2020-08-18', '2020-08-18', 'J000027'),
(28, 'กระทรวงคมนาคม 38 ถนนราชดำเนินนอก แขวงวัดโสมนัส เขตป้อมปราบศัตรูพ่าย กรุงเทพมหานคร 10100 กรุงเทพมหานคร', '', NULL, 'นายอนุรักษ์ ปัญญาวงค์  085-0411853', '2020-08-14', '2020-08-14', 'J000028'),
(29, 'กระทรวงคมนาคม 38 ถนนราชดำเนินนอก แขวงวัดโสมนัส เขตป้อมปราบศัตรูพ่าย กรุงเทพมหานคร 10100 กรุงเทพมหานคร', '', NULL, 'นายอนุรักษ์ ปัญญาวงค์  085-0411853', '2020-08-14', '2020-08-14', 'J000029'),
(30, 'ตึกบัญชาการ สำนักงานใหญ่ 1 ถนนรองเมือง แขวงรองเมือง เขตปทุมวัน กรุงเทพมหานคร 10330 กรุงเทพมหานคร', '', NULL, 'นายปริญญา รัตนาคม  093-5365416', '2020-08-17', '2020-08-17', 'J000030'),
(31, '128 ถนน แจ้งวัฒนะ แขวงทุ่งสองห้อง เขต หลักสี่ กรุงเทพมหานคร 10210 กรุงเทพมหานคร', '', NULL, 'นางสุวิมล สายสุวรรณ , นายพัลลภ เกิดเทพ  084-7001785 , 061-3981023', '2020-08-17', '2020-08-17', 'J000031'),
(32, '189/1 ถนนบางขุนนนท์ แขวงบางขุนนนท์ เขตบางกอกน้อย กรุงเทพมหานคร 10700 กรุงเทพมหานคร', '', NULL, 'นส.อรอุมา เก่งทางดี ผอ.ศูนย์เทคโนโลยีสารสนเทศและการสื่อสาร 089-9681718', '2020-08-17', '2020-08-17', 'J000032');

-- --------------------------------------------------------

--
-- Table structure for table `jobhasassets`
--

CREATE TABLE `jobhasassets` (
  `job_has_assets_id` int(11) NOT NULL,
  `assets_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `project_public_id` varchar(50) DEFAULT NULL,
  `assets_is_valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobhasassets`
--

INSERT INTO `jobhasassets` (`job_has_assets_id`, `assets_id`, `job_id`, `project_public_id`, `assets_is_valid`) VALUES
(1, 4, 1, '0f731322-043f-49eb-a744-7348b458c687', 0),
(2, 5, 1, '0f731322-043f-49eb-a744-7348b458c687', 0),
(3, 6, 1, '0f731322-043f-49eb-a744-7348b458c687', 0),
(4, 7, 1, '0f731322-043f-49eb-a744-7348b458c687', 0),
(5, 8, 3, '0f731322-043f-49eb-a744-7348b458c687', 1),
(6, 9, 3, '0f731322-043f-49eb-a744-7348b458c687', 1),
(7, 10, 3, '0f731322-043f-49eb-a744-7348b458c687', 1),
(8, 11, 3, '0f731322-043f-49eb-a744-7348b458c687', 1),
(9, 12, 4, '0f731322-043f-49eb-a744-7348b458c687', 1),
(10, 13, 4, '0f731322-043f-49eb-a744-7348b458c687', 1),
(11, 14, 4, '0f731322-043f-49eb-a744-7348b458c687', 1),
(12, 15, 4, '0f731322-043f-49eb-a744-7348b458c687', 1),
(13, 16, 5, '0f731322-043f-49eb-a744-7348b458c687', 0),
(14, 17, 5, '0f731322-043f-49eb-a744-7348b458c687', 0),
(15, 18, 5, '0f731322-043f-49eb-a744-7348b458c687', 0),
(16, 19, 5, '0f731322-043f-49eb-a744-7348b458c687', 0),
(17, 20, 6, '0f731322-043f-49eb-a744-7348b458c687', 0),
(18, 21, 6, '0f731322-043f-49eb-a744-7348b458c687', 0),
(19, 22, 6, '0f731322-043f-49eb-a744-7348b458c687', 0),
(20, 23, 6, '0f731322-043f-49eb-a744-7348b458c687', 0),
(21, 24, 7, '0f731322-043f-49eb-a744-7348b458c687', 1),
(22, 25, 7, '0f731322-043f-49eb-a744-7348b458c687', 1),
(23, 26, 7, '0f731322-043f-49eb-a744-7348b458c687', 1),
(24, 27, 7, '0f731322-043f-49eb-a744-7348b458c687', 1),
(25, 28, 8, '0f731322-043f-49eb-a744-7348b458c687', 0),
(26, 29, 8, '0f731322-043f-49eb-a744-7348b458c687', 0),
(27, 30, 8, '0f731322-043f-49eb-a744-7348b458c687', 0),
(28, 31, 8, '0f731322-043f-49eb-a744-7348b458c687', 0),
(29, 32, 9, '0f731322-043f-49eb-a744-7348b458c687', 0),
(30, 33, 9, '0f731322-043f-49eb-a744-7348b458c687', 0),
(31, 34, 9, '0f731322-043f-49eb-a744-7348b458c687', 0),
(32, 35, 9, '0f731322-043f-49eb-a744-7348b458c687', 0),
(33, 36, 10, '0f731322-043f-49eb-a744-7348b458c687', 0),
(34, 37, 10, '0f731322-043f-49eb-a744-7348b458c687', 0),
(35, 38, 10, '0f731322-043f-49eb-a744-7348b458c687', 0),
(36, 39, 10, '0f731322-043f-49eb-a744-7348b458c687', 0),
(37, 40, 11, '0f731322-043f-49eb-a744-7348b458c687', 1),
(38, 41, 11, '0f731322-043f-49eb-a744-7348b458c687', 1),
(39, 42, 11, '0f731322-043f-49eb-a744-7348b458c687', 1),
(40, 43, 11, '0f731322-043f-49eb-a744-7348b458c687', 1),
(41, 44, 12, '0f731322-043f-49eb-a744-7348b458c687', 1),
(42, 45, 12, '0f731322-043f-49eb-a744-7348b458c687', 1),
(43, 46, 12, '0f731322-043f-49eb-a744-7348b458c687', 1),
(44, 47, 12, '0f731322-043f-49eb-a744-7348b458c687', 1),
(45, 48, 13, '0f731322-043f-49eb-a744-7348b458c687', 0),
(46, 49, 13, '0f731322-043f-49eb-a744-7348b458c687', 0),
(47, 50, 13, '0f731322-043f-49eb-a744-7348b458c687', 0),
(48, 51, 13, '0f731322-043f-49eb-a744-7348b458c687', 0),
(49, 52, 14, '0f731322-043f-49eb-a744-7348b458c687', 0),
(50, 53, 14, '0f731322-043f-49eb-a744-7348b458c687', 0),
(51, 54, 14, '0f731322-043f-49eb-a744-7348b458c687', 0),
(52, 55, 14, '0f731322-043f-49eb-a744-7348b458c687', 0),
(53, 56, 15, '0f731322-043f-49eb-a744-7348b458c687', 0),
(54, 57, 15, '0f731322-043f-49eb-a744-7348b458c687', 0),
(55, 58, 15, '0f731322-043f-49eb-a744-7348b458c687', 0),
(56, 59, 15, '0f731322-043f-49eb-a744-7348b458c687', 0),
(57, 60, 16, '0f731322-043f-49eb-a744-7348b458c687', 0),
(58, 61, 16, '0f731322-043f-49eb-a744-7348b458c687', 0),
(59, 62, 16, '0f731322-043f-49eb-a744-7348b458c687', 0),
(60, 63, 16, '0f731322-043f-49eb-a744-7348b458c687', 0),
(61, 64, 17, '0f731322-043f-49eb-a744-7348b458c687', 1),
(62, 65, 17, '0f731322-043f-49eb-a744-7348b458c687', 1),
(63, 66, 17, '0f731322-043f-49eb-a744-7348b458c687', 1),
(64, 67, 17, '0f731322-043f-49eb-a744-7348b458c687', 1),
(65, 68, 18, '0f731322-043f-49eb-a744-7348b458c687', 0),
(66, 69, 18, '0f731322-043f-49eb-a744-7348b458c687', 0),
(67, 70, 18, '0f731322-043f-49eb-a744-7348b458c687', 0),
(68, 71, 18, '0f731322-043f-49eb-a744-7348b458c687', 0),
(69, 72, 19, '0f731322-043f-49eb-a744-7348b458c687', 1),
(70, 73, 19, '0f731322-043f-49eb-a744-7348b458c687', 1),
(71, 74, 19, '0f731322-043f-49eb-a744-7348b458c687', 1),
(72, 75, 19, '0f731322-043f-49eb-a744-7348b458c687', 1),
(73, 76, 20, '0f731322-043f-49eb-a744-7348b458c687', 1),
(74, 77, 20, '0f731322-043f-49eb-a744-7348b458c687', 1),
(75, 78, 20, '0f731322-043f-49eb-a744-7348b458c687', 1),
(76, 79, 20, '0f731322-043f-49eb-a744-7348b458c687', 1),
(77, 80, 21, '0f731322-043f-49eb-a744-7348b458c687', 0),
(78, 81, 21, '0f731322-043f-49eb-a744-7348b458c687', 0),
(79, 82, 21, '0f731322-043f-49eb-a744-7348b458c687', 0),
(80, 83, 21, '0f731322-043f-49eb-a744-7348b458c687', 0),
(81, 84, 22, '0f731322-043f-49eb-a744-7348b458c687', 1),
(82, 85, 22, '0f731322-043f-49eb-a744-7348b458c687', 1),
(83, 86, 22, '0f731322-043f-49eb-a744-7348b458c687', 1),
(84, 87, 22, '0f731322-043f-49eb-a744-7348b458c687', 1),
(85, 88, 23, '0f731322-043f-49eb-a744-7348b458c687', 1),
(86, 89, 23, '0f731322-043f-49eb-a744-7348b458c687', 1),
(87, 90, 23, '0f731322-043f-49eb-a744-7348b458c687', 1),
(88, 91, 23, '0f731322-043f-49eb-a744-7348b458c687', 1),
(89, 92, 24, '0f731322-043f-49eb-a744-7348b458c687', 0),
(90, 93, 24, '0f731322-043f-49eb-a744-7348b458c687', 0),
(91, 94, 24, '0f731322-043f-49eb-a744-7348b458c687', 0),
(92, 95, 24, '0f731322-043f-49eb-a744-7348b458c687', 0),
(93, 96, 25, '0f731322-043f-49eb-a744-7348b458c687', 0),
(94, 97, 25, '0f731322-043f-49eb-a744-7348b458c687', 0),
(95, 98, 25, '0f731322-043f-49eb-a744-7348b458c687', 0),
(96, 99, 25, '0f731322-043f-49eb-a744-7348b458c687', 0),
(97, 100, 26, '0f731322-043f-49eb-a744-7348b458c687', 0),
(98, 101, 26, '0f731322-043f-49eb-a744-7348b458c687', 0),
(99, 102, 26, '0f731322-043f-49eb-a744-7348b458c687', 0),
(100, 103, 26, '0f731322-043f-49eb-a744-7348b458c687', 0),
(101, 104, 27, '0f731322-043f-49eb-a744-7348b458c687', 0),
(102, 105, 27, '0f731322-043f-49eb-a744-7348b458c687', 0),
(103, 106, 27, '0f731322-043f-49eb-a744-7348b458c687', 0),
(104, 107, 27, '0f731322-043f-49eb-a744-7348b458c687', 0),
(105, 108, 28, '0f731322-043f-49eb-a744-7348b458c687', 0),
(106, 109, 28, '0f731322-043f-49eb-a744-7348b458c687', 0),
(107, 110, 28, '0f731322-043f-49eb-a744-7348b458c687', 0),
(108, 111, 28, '0f731322-043f-49eb-a744-7348b458c687', 0),
(109, 112, 29, '0f731322-043f-49eb-a744-7348b458c687', 0),
(110, 113, 29, '0f731322-043f-49eb-a744-7348b458c687', 0),
(111, 114, 29, '0f731322-043f-49eb-a744-7348b458c687', 0),
(112, 115, 29, '0f731322-043f-49eb-a744-7348b458c687', 0),
(113, 116, 30, '0f731322-043f-49eb-a744-7348b458c687', 0),
(114, 117, 30, '0f731322-043f-49eb-a744-7348b458c687', 0),
(115, 118, 30, '0f731322-043f-49eb-a744-7348b458c687', 0),
(116, 119, 30, '0f731322-043f-49eb-a744-7348b458c687', 0),
(117, 120, 31, '0f731322-043f-49eb-a744-7348b458c687', 0),
(118, 121, 31, '0f731322-043f-49eb-a744-7348b458c687', 0),
(119, 122, 31, '0f731322-043f-49eb-a744-7348b458c687', 0),
(120, 123, 31, '0f731322-043f-49eb-a744-7348b458c687', 0),
(121, 124, 32, '0f731322-043f-49eb-a744-7348b458c687', 0),
(122, 125, 32, '0f731322-043f-49eb-a744-7348b458c687', 0),
(123, 126, 32, '0f731322-043f-49eb-a744-7348b458c687', 0),
(124, 127, 32, '0f731322-043f-49eb-a744-7348b458c687', 0),
(125, 128, 33, '0f731322-043f-49eb-a744-7348b458c687', 0),
(126, 129, 33, '0f731322-043f-49eb-a744-7348b458c687', 0),
(127, 130, 33, '0f731322-043f-49eb-a744-7348b458c687', 0),
(128, 131, 33, '0f731322-043f-49eb-a744-7348b458c687', 0);

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `license_id` int(11) NOT NULL,
  `license_name` varchar(80) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`license_id`, `license_name`, `status_id`) VALUES
(1, 'Standard', 2),
(2, 'Developer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(80) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `platform_id` int(11) NOT NULL,
  `platform_name` varchar(80) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`platform_id`, `platform_name`, `status_id`) VALUES
(1, 'asset management system', 2);

-- --------------------------------------------------------

--
-- Table structure for table `priority`
--

CREATE TABLE `priority` (
  `priority_id` int(11) NOT NULL,
  `priority_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `priority`
--

INSERT INTO `priority` (`priority_id`, `priority_name`) VALUES
(1, 'High'),
(2, 'Medium'),
(3, 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_public_id` varchar(50) DEFAULT NULL,
  `project_name` varchar(80) DEFAULT NULL,
  `project_created` datetime(6) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `project_creator_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_public_id`, `project_name`, `project_created`, `status_id`, `project_creator_id`) VALUES
(1, '0f731322-043f-49eb-a744-7348b458c687', 'ติดตั้งเครื่องวัดความร้อน MuthermFacesense', '2020-08-03 06:26:10.000000', 2, '54d780b7-9f14-47c3-8068-d392288d2ba5'),
(2, 'TESTP000001', 'ProjectTest01', '2020-08-03 09:38:59.000000', 2, '54d780b7-77777-TEST-DEV');

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE `projectdetails` (
  `projectdetails_id` int(11) NOT NULL,
  `projectdetails_location` varchar(80) DEFAULT NULL,
  `projectdetails_desc` longtext,
  `projectdetails_manual` varchar(80) DEFAULT NULL,
  `projectdetails_note` longtext NOT NULL,
  `project_public_id` varchar(50) DEFAULT NULL,
  `projectdetails_creator_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projectdetails`
--

INSERT INTO `projectdetails` (`projectdetails_id`, `projectdetails_location`, `projectdetails_desc`, `projectdetails_manual`, `projectdetails_note`, `project_public_id`, `projectdetails_creator_id`) VALUES
(1, 'NECTEC', 'ติดตั้งเครื่องวัดความร้อน MuthermFacesense', 'https://www.2fast.online:5002/static/temp/manual01.pdf', 'ข้อจำกัดแล้วข้อควรระวัง\r\n-ระวังติดตั้งในที่โล่งแจ้ง', '0f731322-043f-49eb-a744-7348b458c687', '54d780b7-9f14-47c3-8068-d392288d2ba5');

-- --------------------------------------------------------

--
-- Table structure for table `projectplatformcustomers`
--

CREATE TABLE `projectplatformcustomers` (
  `project_platform_id` int(11) NOT NULL,
  `customers_public_id` varchar(80) DEFAULT NULL,
  `platfrom_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projectplatformcustomers`
--

INSERT INTO `projectplatformcustomers` (`project_platform_id`, `customers_public_id`, `platfrom_id`, `status_id`) VALUES
(1, '67804b70-0f2a-492d-bd03-66c3648e67aa', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `project_has_job`
--

CREATE TABLE `project_has_job` (
  `project_has_job_id` int(11) NOT NULL,
  `project_public_id` varchar(50) DEFAULT NULL,
  `teamproject_public_id` varchar(50) DEFAULT NULL,
  `job_public_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_has_job`
--

INSERT INTO `project_has_job` (`project_has_job_id`, `project_public_id`, `teamproject_public_id`, `job_public_id`) VALUES
(1, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000001'),
(2, 'TESTP000001', 'T000001-TESTDEV', 'TESTJOB000001'),
(3, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000002'),
(4, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000003'),
(5, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000001', 'J000004'),
(6, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000005'),
(7, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000002', 'J000006'),
(8, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000007'),
(9, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000003', 'J000008'),
(10, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000004', 'J000009'),
(11, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000005', 'J000010'),
(12, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000001', 'J000011'),
(13, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000012'),
(14, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000013'),
(15, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000001', 'J000014'),
(16, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000001', 'J000015'),
(18, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000001', 'J000017'),
(19, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000018'),
(20, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000019'),
(21, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000020'),
(22, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000006', 'J000021'),
(23, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000006', 'J000022'),
(24, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000023'),
(25, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000024'),
(26, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000025'),
(27, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000026'),
(28, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000027'),
(29, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000028'),
(30, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000029'),
(31, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000030'),
(32, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000031'),
(33, '0f731322-043f-49eb-a744-7348b458c687', 'cf05287c-2cef-4a87-be72-29053afb9a79', 'J000032'),
(34, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000007', 'J000016'),
(35, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000005', 'J000021'),
(36, '0f731322-043f-49eb-a744-7348b458c687', 'SUP-PN0000005', 'J000022');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(80) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `status_id`) VALUES
(1, 'User', 2),
(2, 'Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `scope`
--

CREATE TABLE `scope` (
  `scope_id` int(11) NOT NULL,
  `scope_name` varchar(80) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Inactive'),
(2, 'Active'),
(3, 'Inprogress'),
(4, 'Pending'),
(5, 'Pending_client'),
(6, 'Complete'),
(7, 'Reject'),
(8, 'Cancle');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `task_public_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teamproject`
--

CREATE TABLE `teamproject` (
  `teamproject_id` int(11) NOT NULL,
  `teamproject_public_id` varchar(50) DEFAULT NULL,
  `teamproject_name` varchar(80) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `users_creator_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teamproject`
--

INSERT INTO `teamproject` (`teamproject_id`, `teamproject_public_id`, `teamproject_name`, `created`, `company_id`, `status_id`, `users_creator_id`) VALUES
(1, 'cf05287c-2cef-4a87-be72-29053afb9a79', 'IT SUPPORT', '2020-08-03 06:23:27.000000', 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5'),
(2, 'T000001-TESTDEV', 'TEST User', '2020-08-03 09:40:23.000000', 2, 2, '54d780b7-77777-TEST-DEV'),
(3, 'SUP-PN0000001', 'IT SUPPORT_SUP1', '2020-08-04 08:16:27.000000', 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5'),
(4, 'SUP-PN0000002', 'IT SUPPORT_SUP2', '2020-08-04 08:17:23.000000', 2, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5'),
(5, 'SUP-PN0000003', 'IT SUPPORT_SUP3', '2020-08-04 08:18:28.000000', 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5'),
(6, 'SUP-PN0000004', 'IT SUPPORT_SUP4', '2020-08-04 08:18:44.000000', 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5'),
(7, 'SUP-PN0000005', 'IT SUPPORT_SUP5', '2020-08-04 08:19:06.000000', 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5'),
(8, 'SUP-PN0000006', 'IT SUPPORT_SUP6', '2020-08-04 08:19:18.000000', 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5'),
(9, 'SUP-PN0000007', 'IT SUPPORT', '2020-08-09 15:15:05.000000', 1, 2, '54d780b7-9f14-47c3-8068-d392288d2ba5');

-- --------------------------------------------------------

--
-- Table structure for table `teamprojectlevel`
--

CREATE TABLE `teamprojectlevel` (
  `teamproject_id` int(11) NOT NULL,
  `teamproject_level` varchar(50) DEFAULT NULL,
  `teamproject_public_id` varchar(50) DEFAULT NULL,
  `user_public_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teamproject_has_project`
--

CREATE TABLE `teamproject_has_project` (
  `teamprojecthasproject_id` int(11) NOT NULL,
  `project_public_id` varchar(50) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `teamproject_public_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teamproject_has_project`
--

INSERT INTO `teamproject_has_project` (`teamprojecthasproject_id`, `project_public_id`, `status_id`, `teamproject_public_id`) VALUES
(1, '0f731322-043f-49eb-a744-7348b458c687', 2, 'cf05287c-2cef-4a87-be72-29053afb9a79'),
(2, 'TESTP000001', 2, 'T000001-TESTDEV'),
(3, 'TESTP000001', 3, 'T000001-TESTDEV'),
(4, 'TESTP000001', 4, 'T000001-TESTDEV'),
(5, 'TESTP000001', 5, 'T000001-TESTDEV'),
(6, 'TESTP000001', 5, 'T000001-TESTDEV'),
(7, 'TESTP000001', 6, 'T000001-TESTDEV'),
(8, 'TESTP000001', 7, 'T000001-TESTDEV'),
(9, 'TESTP000001', 8, 'T000001-TESTDEV'),
(10, '0f731322-043f-49eb-a744-7348b458c687', 2, 'SUP-PN0000007'),
(11, '0f731322-043f-49eb-a744-7348b458c687', 2, 'SUP-PN0000001'),
(12, '0f731322-043f-49eb-a744-7348b458c687', 2, 'SUP-PN0000002'),
(13, '0f731322-043f-49eb-a744-7348b458c687', 2, 'SUP-PN0000003'),
(14, '0f731322-043f-49eb-a744-7348b458c687', 2, 'SUP-PN0000004'),
(15, '0f731322-043f-49eb-a744-7348b458c687', 2, 'SUP-PN0000005'),
(16, '0f731322-043f-49eb-a744-7348b458c687', 2, 'SUP-PN0000006');

-- --------------------------------------------------------

--
-- Table structure for table `teamproject_has_user`
--

CREATE TABLE `teamproject_has_user` (
  `teamprojecthasuser_id` int(11) NOT NULL,
  `teamproject_public_id` varchar(50) DEFAULT NULL,
  `user_public_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teamproject_has_user`
--

INSERT INTO `teamproject_has_user` (`teamprojecthasuser_id`, `teamproject_public_id`, `user_public_id`) VALUES
(1, 'cf05287c-2cef-4a87-be72-29053afb9a79', '54d780b7-9f14-47c3-8068-d392288d2ba1'),
(2, 'cf05287c-2cef-4a87-be72-29053afb9a79', '54d780b7-9f14-47c3-8068-d392288d2ba2'),
(3, 'cf05287c-2cef-4a87-be72-29053afb9a79', '54d780b7-9f14-47c3-8068-d392288d2ba3'),
(4, 'cf05287c-2cef-4a87-be72-29053afb9a79', '54d780b7-9f14-47c3-8068-d392288d2ba4'),
(5, 'T000001-TESTDEV', '54d780b7-77777-TEST-DEV'),
(6, 'SUP-PN0000001', '54d780b7-9f14-47c3-8068-d3dddd88d2s01'),
(7, 'SUP-PN0000002', '54d780b7-9f14-47c3-8068-d392288d2bs2'),
(8, 'SUP-PN0000003', '54d780b7-9f14-47c3-8068-d392288d2bs3'),
(9, 'SUP-PN0000004', '54d780b7-9f14-47c3-8068-d392288d2bs4'),
(10, 'SUP-PN0000005', '54d780b7-9f14-47c3-8068-d392288d2ba6'),
(11, 'SUP-PN0000006', '54d780b7-9f14-47ddd68-d392288d2ba6'),
(12, 'SUP-PN0000007', '85857905-9662-4c68-8843-1e64d9828a77');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `public_id` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `public_id`, `company_id`, `role_id`) VALUES
(1, 'pnall01', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d392288d2ba1', 1, 1),
(2, 'pnall02', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d392288d2ba2', 1, 1),
(3, 'pnall03', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d392288d2ba3', 1, 1),
(4, 'pnall04', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d392288d2ba4', 1, 1),
(5, 'pnalladmin01', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d392288d2ba5', 1, 2),
(6, '2fastuser_test01', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-77777-TEST-DEV', 2, 1),
(7, 'suppnall01', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d3dddd88d2s01', 1, 1),
(8, 'suppnall02', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d392288d2bs2', 1, 1),
(9, 'suppnall03', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d392288d2bs3', 1, 1),
(10, 'suppnall04', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d392288d2bs4', 1, 1),
(11, 'suppnall05', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47c3-8068-d392288d2ba6', 1, 1),
(12, 'suppnall06', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '54d780b7-9f14-47ddd68-d392288d2ba6', 1, 1),
(13, 'suppnall07', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '85857905-9662-4c68-8843-1e64d9828a77', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usercustomers`
--

CREATE TABLE `usercustomers` (
  `usercustomers_id` int(11) NOT NULL,
  `usercustomers_public_id` char(32) NOT NULL,
  `usercustomers_userkey` varchar(80) DEFAULT NULL,
  `usercustomers_passkey` varchar(80) DEFAULT NULL,
  `usercustomers_exp` datetime(6) NOT NULL,
  `customers_public_id` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usercustomers`
--

INSERT INTO `usercustomers` (`usercustomers_id`, `usercustomers_public_id`, `usercustomers_userkey`, `usercustomers_passkey`, `usercustomers_exp`, `customers_public_id`) VALUES
(1, 'fb4ffd3e43124c0f811e35cb35309cc5', 'nectec01', 'sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8', '2022-08-05 12:36:46.000000', '67804b70-0f2a-492d-bd03-66c3648e67aa');

-- --------------------------------------------------------

--
-- Table structure for table `usersdetails`
--

CREATE TABLE `usersdetails` (
  `usersdetails_id` int(11) NOT NULL,
  `usersdetails_firstname` varchar(80) DEFAULT NULL,
  `usersdetails_lastname` varchar(80) DEFAULT NULL,
  `usersdetails_phone` varchar(80) DEFAULT NULL,
  `usersdetails_email` varchar(80) DEFAULT NULL,
  `usersdetails_position` varchar(80) DEFAULT NULL,
  `usersdetails_avatar` varchar(104) DEFAULT NULL,
  `user_public_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usersdetails`
--

INSERT INTO `usersdetails` (`usersdetails_id`, `usersdetails_firstname`, `usersdetails_lastname`, `usersdetails_phone`, `usersdetails_email`, `usersdetails_position`, `usersdetails_avatar`, `user_public_id`) VALUES
(1, 'ปพน', 'เปรนใจ', '0815815888', 'papon.p@pnall.co.th', 'Project Manager', 'publicid-54d780b7-9f14-47c3-8068-d392288d2ba1-avatar.jpg', '54d780b7-9f14-47c3-8068-d392288d2ba1'),
(2, 'ณัฐธี', 'ประพฤติธรรม', '0815825888', 'nuttee@pnall.co.th', 'Director manager', 'publicid-54d780b7-9f14-47c3-8068-d392288d2ba2-avatar.jpg', '54d780b7-9f14-47c3-8068-d392288d2ba2'),
(3, 'ศราวุธ', 'วันคำ', '0887358026', '-', 'IT Support', 'publicid-54d780b7-9f14-47c3-8068-d392288d2ba3-avatar.jpg', '54d780b7-9f14-47c3-8068-d392288d2ba3'),
(4, 'ธันวา', 'วรรณอุดม', '0887358026', '-', 'IT Support', 'publicid-54d780b7-9f14-47c3-8068-d392288d2ba4-avatar.jpg', '54d780b7-9f14-47c3-8068-d392288d2ba4'),
(5, 'PNALL', 'ADMIN', '0863490407', 'adminpnall@gmail.com', 'Admin2FastService', 'publicid-54d780b7-9f14-47c3-8068-d392288d2ba5-avatar.jpg', '54d780b7-9f14-47c3-8068-d392288d2ba5'),
(6, 'DEVELOPER', 'TESTER', '086349407', 'Tester@Test.com', 'QA Tester', NULL, '54d780b7-77777-TEST-DEV'),
(7, 'อนุชา', 'จำรัสแสง', '098-3961566', NULL, 'IT Support', NULL, '54d780b7-9f14-47c3-8068-d3dddd88d2s01'),
(8, 'ชัยพร', 'มีบุญ', '081-2087666', NULL, 'IT Support', NULL, '54d780b7-9f14-47c3-8068-d392288d2bs2'),
(9, 'สุกิจ', 'จันทร์ตุลารัตน์', '087-8690707', NULL, 'IT Support', NULL, '54d780b7-9f14-47c3-8068-d392288d2bs3'),
(10, 'สมเชษฐ์', 'ไตรยะสุทธิ์', NULL, NULL, 'IT Support', NULL, '54d780b7-9f14-47c3-8068-d392288d2bs4'),
(11, 'นิวัฒน์', 'สุวรรณมา', '081-6504121', NULL, 'IT Support', NULL, '54d780b7-9f14-47c3-8068-d392288d2ba6'),
(13, 'จักร์พันธ์', 'หอมจำปา', '083-4900237', NULL, NULL, NULL, '85857905-9662-4c68-8843-1e64d9828a77');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`assets_id`),
  ADD UNIQUE KEY `assets_public_id` (`assets_public_id`),
  ADD KEY `assets_assets_brand_id_72746107_fk_assetbrand_assets_brand_id` (`assets_brand_id`),
  ADD KEY `assets_assets_categories_id_570e0027_fk_assetscat` (`assets_categories_id`),
  ADD KEY `assets_assets_insurance_id_e0e223d9_fk_assetsins` (`assets_insurance_id`),
  ADD KEY `assets_assets_storage_unit__98cb4ea4_fk_assetssto` (`assets_storage_unit_id`),
  ADD KEY `assets_status_id_2ca68367_fk_status_status_id` (`status_id`),
  ADD KEY `assets_users_creator_id_041e1b61_fk_user_public_id` (`users_creator_id`),
  ADD KEY `assets_assets_series_id_156acea4_fk_assetsser` (`assets_series_id`);

--
-- Indexes for table `assetsbrand`
--
ALTER TABLE `assetsbrand`
  ADD PRIMARY KEY (`assets_brand_id`);

--
-- Indexes for table `assetscategories`
--
ALTER TABLE `assetscategories`
  ADD PRIMARY KEY (`assets_categories_id`);

--
-- Indexes for table `assetsinsurance`
--
ALTER TABLE `assetsinsurance`
  ADD PRIMARY KEY (`assets_insurance_id`);

--
-- Indexes for table `assetssaveformat`
--
ALTER TABLE `assetssaveformat`
  ADD PRIMARY KEY (`assets_save_format_id`),
  ADD UNIQUE KEY `assets_save_format_public_id` (`assets_save_format_public_id`),
  ADD KEY `assetssaveformat_assets_brand_id_64b0895a_fk_assetbran` (`assets_brand_id`),
  ADD KEY `assetssaveformat_assets_categories_id_b8491468_fk_assetscat` (`assets_categories_id`),
  ADD KEY `assetssaveformat_assets_insurance_id_568e4f7f_fk_assetsins` (`assets_insurance_id`),
  ADD KEY `assetssaveformat_assets_storage_unit__58e9546b_fk_assetssto` (`assets_storage_unit_id`),
  ADD KEY `assetssaveformat_status_id_b1b9adba_fk_status_status_id` (`status_id`),
  ADD KEY `assetssaveformat_users_creator_id_3fd80a77_fk_user_public_id` (`users_creator_id`);

--
-- Indexes for table `assetsseries`
--
ALTER TABLE `assetsseries`
  ADD PRIMARY KEY (`assets_series_id`);

--
-- Indexes for table `assetsstorageunitname`
--
ALTER TABLE `assetsstorageunitname`
  ADD PRIMARY KEY (`assets_storage_unit_id`);

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
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `company_public_id` (`company_public_id`),
  ADD UNIQUE KEY `company_code` (`company_code`),
  ADD KEY `company_license_id_79ccf738_fk_license_license_id` (`license_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`),
  ADD UNIQUE KEY `customers_public_id` (`customers_public_id`),
  ADD KEY `custormers_customers_creator_id_bce0bd93_fk_user_public_id` (`customers_creator_id`),
  ADD KEY `custormers_status_id_1921d08c_fk_status_status_id` (`status_id`);

--
-- Indexes for table `customershasassets`
--
ALTER TABLE `customershasassets`
  ADD PRIMARY KEY (`customer_has_assets_id`),
  ADD KEY `customershasassets_status_id_31de9d1a_fk_status_status_id` (`status_id`),
  ADD KEY `customershasassets_job_has_assets_id_0739ed06_fk_jobhasass` (`job_has_assets_id`),
  ADD KEY `customershasassets_customers_public_id_ac7eb384_fk_customers` (`customers_public_id`);

--
-- Indexes for table `customershasproject`
--
ALTER TABLE `customershasproject`
  ADD PRIMARY KEY (`customershasproject_id`),
  ADD KEY `customershasproject_customers_public_id_97512781_fk_custormer` (`customers_public_id`),
  ADD KEY `customershasproject_project_public_id_e866d6a1_fk_project_p` (`project_public_id`);

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
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`),
  ADD UNIQUE KEY `job_public_id` (`job_public_id`),
  ADD KEY `job_status_id_25678516_fk_status_status_id` (`status_id`),
  ADD KEY `job_priority_id_e949a7a3_fk_priority_priority_id` (`priority_id`),
  ADD KEY `job_job_operator_id_34b46445_fk_user_public_id` (`job_operator_id`),
  ADD KEY `job_job_creator_id_eed7b056_fk_user_public_id` (`job_creator_id`);

--
-- Indexes for table `jobdetails`
--
ALTER TABLE `jobdetails`
  ADD PRIMARY KEY (`jobdetails_id`),
  ADD KEY `jobdetails_job_public_id_291c1cd5_fk_job_job_public_id` (`job_public_id`);

--
-- Indexes for table `jobhasassets`
--
ALTER TABLE `jobhasassets`
  ADD PRIMARY KEY (`job_has_assets_id`),
  ADD KEY `jobhasassets_assets_id_7454c8e8_fk_assets_assets_id` (`assets_id`),
  ADD KEY `jobhasassets_job_id_a0fa750b_fk_job_job_id` (`job_id`),
  ADD KEY `jobhasassets_project_public_id_26fc7409_fk_project_p` (`project_public_id`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`license_id`),
  ADD KEY `license_status_id_06b0c2da_fk_status_status_id` (`status_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `module_status_id_e5b1cf41_fk_status_status_id` (`status_id`);

--
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`platform_id`),
  ADD KEY `platform_status_id_34e55a84_fk_status_status_id` (`status_id`);

--
-- Indexes for table `priority`
--
ALTER TABLE `priority`
  ADD PRIMARY KEY (`priority_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`),
  ADD UNIQUE KEY `project_public_id` (`project_public_id`),
  ADD KEY `project_status_id_b8c179bb_fk_status_status_id` (`status_id`),
  ADD KEY `project_project_creator_id_bf8384d7_fk_user_public_id` (`project_creator_id`);

--
-- Indexes for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD PRIMARY KEY (`projectdetails_id`),
  ADD KEY `projectdetails_project_public_id_997626cd_fk_project_p` (`project_public_id`),
  ADD KEY `projectdetails_projectdetails_creat_b3a74cd1_fk_user_publ` (`projectdetails_creator_id`);

--
-- Indexes for table `projectplatformcustomers`
--
ALTER TABLE `projectplatformcustomers`
  ADD PRIMARY KEY (`project_platform_id`),
  ADD KEY `projectplatformcusto_customers_public_id_b588ebbc_fk_custormer` (`customers_public_id`),
  ADD KEY `projectplatformcusto_platfrom_id_8c3244a2_fk_platform_` (`platfrom_id`),
  ADD KEY `projectplatformcustomers_status_id_0316c089_fk_status_status_id` (`status_id`);

--
-- Indexes for table `project_has_job`
--
ALTER TABLE `project_has_job`
  ADD PRIMARY KEY (`project_has_job_id`),
  ADD KEY `project_has_job_project_public_id_8931ef5b_fk_project_p` (`project_public_id`),
  ADD KEY `project_has_job_teamproject_public_i_ab877296_fk_teamproje` (`teamproject_public_id`),
  ADD KEY `project_has_job_job_public_id_9be9246d_fk_job_job_public_id` (`job_public_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_status_id_262a39e4_fk_status_status_id` (`status_id`);

--
-- Indexes for table `scope`
--
ALTER TABLE `scope`
  ADD PRIMARY KEY (`scope_id`),
  ADD KEY `scope_module_id_e2e15e12_fk_module_module_id` (`module_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`),
  ADD UNIQUE KEY `task_public_id` (`task_public_id`),
  ADD KEY `task_job_id_8b4b633e_fk_job_job_id` (`job_id`),
  ADD KEY `task_module_id_3cfbb746_fk_module_module_id` (`module_id`),
  ADD KEY `task_status_id_bf9946ce_fk_status_status_id` (`status_id`);

--
-- Indexes for table `teamproject`
--
ALTER TABLE `teamproject`
  ADD PRIMARY KEY (`teamproject_id`),
  ADD UNIQUE KEY `teamproject_public_id` (`teamproject_public_id`),
  ADD KEY `teamproject_company_id_7481cec5_fk_company_company_id` (`company_id`),
  ADD KEY `teamproject_status_id_d6656444_fk_status_status_id` (`status_id`),
  ADD KEY `teamproject_users_creator_id_6669d173_fk_user_public_id` (`users_creator_id`);

--
-- Indexes for table `teamprojectlevel`
--
ALTER TABLE `teamprojectlevel`
  ADD PRIMARY KEY (`teamproject_id`),
  ADD KEY `teamprojectlevel_teamproject_public_i_eef2d409_fk_teamproje` (`teamproject_public_id`),
  ADD KEY `teamprojectlevel_user_public_id_3a9099e1_fk_user_public_id` (`user_public_id`);

--
-- Indexes for table `teamproject_has_project`
--
ALTER TABLE `teamproject_has_project`
  ADD PRIMARY KEY (`teamprojecthasproject_id`),
  ADD KEY `teamproject_has_project_status_id_6f278fb8_fk_status_status_id` (`status_id`),
  ADD KEY `teamproject_has_proj_project_public_id_a0cc679b_fk_project_p` (`project_public_id`),
  ADD KEY `teamproject_has_proj_teamproject_public_i_43fd262a_fk_teamproje` (`teamproject_public_id`);

--
-- Indexes for table `teamproject_has_user`
--
ALTER TABLE `teamproject_has_user`
  ADD PRIMARY KEY (`teamprojecthasuser_id`),
  ADD KEY `teamproject_has_user_teamproject_public_i_82a88ecf_fk_teamproje` (`teamproject_public_id`),
  ADD KEY `teamproject_has_user_user_public_id_4a7e9ac6_fk_user_public_id` (`user_public_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `public_id` (`public_id`),
  ADD KEY `user_company_id_99854d28_fk_company_company_id` (`company_id`),
  ADD KEY `user_role_id_c3a87a3d_fk_role_role_id` (`role_id`);

--
-- Indexes for table `usercustomers`
--
ALTER TABLE `usercustomers`
  ADD PRIMARY KEY (`usercustomers_id`),
  ADD UNIQUE KEY `usercustomers_userkey` (`usercustomers_userkey`),
  ADD UNIQUE KEY `usercustomers_passkey` (`usercustomers_passkey`),
  ADD KEY `usercustomers_customers_public_id_13092e29_fk_custormer` (`customers_public_id`);

--
-- Indexes for table `usersdetails`
--
ALTER TABLE `usersdetails`
  ADD PRIMARY KEY (`usersdetails_id`),
  ADD KEY `usersdetails_user_public_id_5bbdebc8_fk_user_public_id` (`user_public_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `assets_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `assetsbrand`
--
ALTER TABLE `assetsbrand`
  MODIFY `assets_brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `assetscategories`
--
ALTER TABLE `assetscategories`
  MODIFY `assets_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `assetsinsurance`
--
ALTER TABLE `assetsinsurance`
  MODIFY `assets_insurance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assetssaveformat`
--
ALTER TABLE `assetssaveformat`
  MODIFY `assets_save_format_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assetsseries`
--
ALTER TABLE `assetsseries`
  MODIFY `assets_series_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `assetsstorageunitname`
--
ALTER TABLE `assetsstorageunitname`
  MODIFY `assets_storage_unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customershasassets`
--
ALTER TABLE `customershasassets`
  MODIFY `customer_has_assets_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customershasproject`
--
ALTER TABLE `customershasproject`
  MODIFY `customershasproject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `jobdetails`
--
ALTER TABLE `jobdetails`
  MODIFY `jobdetails_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `jobhasassets`
--
ALTER TABLE `jobhasassets`
  MODIFY `job_has_assets_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `license`
--
ALTER TABLE `license`
  MODIFY `license_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `platform_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `priority`
--
ALTER TABLE `priority`
  MODIFY `priority_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `projectdetails`
--
ALTER TABLE `projectdetails`
  MODIFY `projectdetails_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `projectplatformcustomers`
--
ALTER TABLE `projectplatformcustomers`
  MODIFY `project_platform_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `project_has_job`
--
ALTER TABLE `project_has_job`
  MODIFY `project_has_job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `scope`
--
ALTER TABLE `scope`
  MODIFY `scope_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teamproject`
--
ALTER TABLE `teamproject`
  MODIFY `teamproject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `teamprojectlevel`
--
ALTER TABLE `teamprojectlevel`
  MODIFY `teamproject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teamproject_has_project`
--
ALTER TABLE `teamproject_has_project`
  MODIFY `teamprojecthasproject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `teamproject_has_user`
--
ALTER TABLE `teamproject_has_user`
  MODIFY `teamprojecthasuser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `usercustomers`
--
ALTER TABLE `usercustomers`
  MODIFY `usercustomers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `usersdetails`
--
ALTER TABLE `usersdetails`
  MODIFY `usersdetails_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_assets_brand_id_72746107_fk_assetbrand_assets_brand_id` FOREIGN KEY (`assets_brand_id`) REFERENCES `assetsbrand` (`assets_brand_id`),
  ADD CONSTRAINT `assets_assets_categories_id_570e0027_fk_assetscat` FOREIGN KEY (`assets_categories_id`) REFERENCES `assetscategories` (`assets_categories_id`),
  ADD CONSTRAINT `assets_assets_insurance_id_e0e223d9_fk_assetsins` FOREIGN KEY (`assets_insurance_id`) REFERENCES `assetsinsurance` (`assets_insurance_id`),
  ADD CONSTRAINT `assets_assets_series_id_156acea4_fk_assetsser` FOREIGN KEY (`assets_series_id`) REFERENCES `assetsseries` (`assets_series_id`),
  ADD CONSTRAINT `assets_assets_storage_unit__98cb4ea4_fk_assetssto` FOREIGN KEY (`assets_storage_unit_id`) REFERENCES `assetsstorageunitname` (`assets_storage_unit_id`),
  ADD CONSTRAINT `assets_status_id_2ca68367_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `assets_users_creator_id_041e1b61_fk_user_public_id` FOREIGN KEY (`users_creator_id`) REFERENCES `user` (`public_id`);

--
-- Constraints for table `assetssaveformat`
--
ALTER TABLE `assetssaveformat`
  ADD CONSTRAINT `assetssaveformat_assets_brand_id_64b0895a_fk_assetbran` FOREIGN KEY (`assets_brand_id`) REFERENCES `assetsbrand` (`assets_brand_id`),
  ADD CONSTRAINT `assetssaveformat_assets_categories_id_b8491468_fk_assetscat` FOREIGN KEY (`assets_categories_id`) REFERENCES `assetscategories` (`assets_categories_id`),
  ADD CONSTRAINT `assetssaveformat_assets_insurance_id_568e4f7f_fk_assetsins` FOREIGN KEY (`assets_insurance_id`) REFERENCES `assetsinsurance` (`assets_insurance_id`),
  ADD CONSTRAINT `assetssaveformat_assets_storage_unit__58e9546b_fk_assetssto` FOREIGN KEY (`assets_storage_unit_id`) REFERENCES `assetsstorageunitname` (`assets_storage_unit_id`),
  ADD CONSTRAINT `assetssaveformat_status_id_b1b9adba_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `assetssaveformat_users_creator_id_3fd80a77_fk_user_public_id` FOREIGN KEY (`users_creator_id`) REFERENCES `user` (`public_id`);

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
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_license_id_79ccf738_fk_license_license_id` FOREIGN KEY (`license_id`) REFERENCES `license` (`license_id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `custormers_customers_creator_id_bce0bd93_fk_user_public_id` FOREIGN KEY (`customers_creator_id`) REFERENCES `user` (`public_id`),
  ADD CONSTRAINT `custormers_status_id_1921d08c_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `customershasassets`
--
ALTER TABLE `customershasassets`
  ADD CONSTRAINT `customershasassets_customers_public_id_ac7eb384_fk_customers` FOREIGN KEY (`customers_public_id`) REFERENCES `customers` (`customers_public_id`),
  ADD CONSTRAINT `customershasassets_job_has_assets_id_0739ed06_fk_jobhasass` FOREIGN KEY (`job_has_assets_id`) REFERENCES `jobhasassets` (`job_has_assets_id`),
  ADD CONSTRAINT `customershasassets_status_id_31de9d1a_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `customershasproject`
--
ALTER TABLE `customershasproject`
  ADD CONSTRAINT `customershasproject_customers_public_id_97512781_fk_custormer` FOREIGN KEY (`customers_public_id`) REFERENCES `customers` (`customers_public_id`),
  ADD CONSTRAINT `customershasproject_project_public_id_e866d6a1_fk_project_p` FOREIGN KEY (`project_public_id`) REFERENCES `project` (`project_public_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_job_creator_id_eed7b056_fk_user_public_id` FOREIGN KEY (`job_creator_id`) REFERENCES `user` (`public_id`),
  ADD CONSTRAINT `job_job_operator_id_34b46445_fk_user_public_id` FOREIGN KEY (`job_operator_id`) REFERENCES `user` (`public_id`),
  ADD CONSTRAINT `job_priority_id_e949a7a3_fk_priority_priority_id` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`priority_id`),
  ADD CONSTRAINT `job_status_id_25678516_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `jobdetails`
--
ALTER TABLE `jobdetails`
  ADD CONSTRAINT `jobdetails_job_public_id_291c1cd5_fk_job_job_public_id` FOREIGN KEY (`job_public_id`) REFERENCES `job` (`job_public_id`);

--
-- Constraints for table `jobhasassets`
--
ALTER TABLE `jobhasassets`
  ADD CONSTRAINT `jobhasassets_assets_id_7454c8e8_fk_assets_assets_id` FOREIGN KEY (`assets_id`) REFERENCES `assets` (`assets_id`),
  ADD CONSTRAINT `jobhasassets_job_id_a0fa750b_fk_job_job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  ADD CONSTRAINT `jobhasassets_project_public_id_26fc7409_fk_project_p` FOREIGN KEY (`project_public_id`) REFERENCES `project` (`project_public_id`);

--
-- Constraints for table `license`
--
ALTER TABLE `license`
  ADD CONSTRAINT `license_status_id_06b0c2da_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `module_status_id_e5b1cf41_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `platform`
--
ALTER TABLE `platform`
  ADD CONSTRAINT `platform_status_id_34e55a84_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_project_creator_id_bf8384d7_fk_user_public_id` FOREIGN KEY (`project_creator_id`) REFERENCES `user` (`public_id`),
  ADD CONSTRAINT `project_status_id_b8c179bb_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD CONSTRAINT `projectdetails_project_public_id_997626cd_fk_project_p` FOREIGN KEY (`project_public_id`) REFERENCES `project` (`project_public_id`),
  ADD CONSTRAINT `projectdetails_projectdetails_creat_b3a74cd1_fk_user_publ` FOREIGN KEY (`projectdetails_creator_id`) REFERENCES `user` (`public_id`);

--
-- Constraints for table `projectplatformcustomers`
--
ALTER TABLE `projectplatformcustomers`
  ADD CONSTRAINT `projectplatformcusto_customers_public_id_b588ebbc_fk_custormer` FOREIGN KEY (`customers_public_id`) REFERENCES `customers` (`customers_public_id`),
  ADD CONSTRAINT `projectplatformcusto_platfrom_id_8c3244a2_fk_platform_` FOREIGN KEY (`platfrom_id`) REFERENCES `platform` (`platform_id`),
  ADD CONSTRAINT `projectplatformcustomers_status_id_0316c089_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `project_has_job`
--
ALTER TABLE `project_has_job`
  ADD CONSTRAINT `project_has_job_job_public_id_9be9246d_fk_job_job_public_id` FOREIGN KEY (`job_public_id`) REFERENCES `job` (`job_public_id`),
  ADD CONSTRAINT `project_has_job_project_public_id_8931ef5b_fk_project_p` FOREIGN KEY (`project_public_id`) REFERENCES `project` (`project_public_id`),
  ADD CONSTRAINT `project_has_job_teamproject_public_i_ab877296_fk_teamproje` FOREIGN KEY (`teamproject_public_id`) REFERENCES `teamproject` (`teamproject_public_id`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_status_id_262a39e4_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `scope`
--
ALTER TABLE `scope`
  ADD CONSTRAINT `scope_module_id_e2e15e12_fk_module_module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_job_id_8b4b633e_fk_job_job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  ADD CONSTRAINT `task_module_id_3cfbb746_fk_module_module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`),
  ADD CONSTRAINT `task_status_id_bf9946ce_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `teamproject`
--
ALTER TABLE `teamproject`
  ADD CONSTRAINT `teamproject_company_id_7481cec5_fk_company_company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `teamproject_status_id_d6656444_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `teamproject_users_creator_id_6669d173_fk_user_public_id` FOREIGN KEY (`users_creator_id`) REFERENCES `user` (`public_id`);

--
-- Constraints for table `teamprojectlevel`
--
ALTER TABLE `teamprojectlevel`
  ADD CONSTRAINT `teamprojectlevel_teamproject_public_i_eef2d409_fk_teamproje` FOREIGN KEY (`teamproject_public_id`) REFERENCES `teamproject` (`teamproject_public_id`),
  ADD CONSTRAINT `teamprojectlevel_user_public_id_3a9099e1_fk_user_public_id` FOREIGN KEY (`user_public_id`) REFERENCES `user` (`public_id`);

--
-- Constraints for table `teamproject_has_project`
--
ALTER TABLE `teamproject_has_project`
  ADD CONSTRAINT `teamproject_has_proj_project_public_id_a0cc679b_fk_project_p` FOREIGN KEY (`project_public_id`) REFERENCES `project` (`project_public_id`),
  ADD CONSTRAINT `teamproject_has_proj_teamproject_public_i_43fd262a_fk_teamproje` FOREIGN KEY (`teamproject_public_id`) REFERENCES `teamproject` (`teamproject_public_id`),
  ADD CONSTRAINT `teamproject_has_project_status_id_6f278fb8_fk_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `teamproject_has_user`
--
ALTER TABLE `teamproject_has_user`
  ADD CONSTRAINT `teamproject_has_user_teamproject_public_i_82a88ecf_fk_teamproje` FOREIGN KEY (`teamproject_public_id`) REFERENCES `teamproject` (`teamproject_public_id`),
  ADD CONSTRAINT `teamproject_has_user_user_public_id_4a7e9ac6_fk_user_public_id` FOREIGN KEY (`user_public_id`) REFERENCES `user` (`public_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_company_id_99854d28_fk_company_company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `user_role_id_c3a87a3d_fk_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Constraints for table `usercustomers`
--
ALTER TABLE `usercustomers`
  ADD CONSTRAINT `usercustomers_customers_public_id_13092e29_fk_custormer` FOREIGN KEY (`customers_public_id`) REFERENCES `customers` (`customers_public_id`);

--
-- Constraints for table `usersdetails`
--
ALTER TABLE `usersdetails`
  ADD CONSTRAINT `usersdetails_user_public_id_5bbdebc8_fk_user_public_id` FOREIGN KEY (`user_public_id`) REFERENCES `user` (`public_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
