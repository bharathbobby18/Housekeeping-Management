-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 05:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `housekeeping`
--
CREATE DATABASE IF NOT EXISTS `housekeeping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `housekeeping`;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_name` varchar(100) DEFAULT NULL,
  `request_id` int(11) NOT NULL,
  `bio_id` int(11) NOT NULL,
  `asset_history` int(11) NOT NULL,
  `asset_quantity` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `requested_quantity` int(11) NOT NULL,
  `alocated_qty` int(11) NOT NULL,
  `utilised_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`asset_name`, `request_id`, `bio_id`, `asset_history`, `asset_quantity`, `asset_id`, `requested_quantity`, `alocated_qty`, `utilised_qty`) VALUES
('mop', 0, 0, 0, 88, 1, 0, 0, 0),
('bucket', 0, 0, 0, 300, 2, 0, 0, 0),
('scrub brush', 0, 0, 0, 300, 3, 0, 0, 0),
('broom', 0, 0, 0, 200, 4, 0, 0, 0),
('toilet brush', 0, 0, 0, 300, 5, 0, 0, 0),
('dust pan', 0, 0, 0, 300, 6, 0, 0, 0),
('gloves', 0, 0, 0, 300, 7, 0, 0, 0),
('acid', 0, 0, 0, 300, 8, 0, 0, 0),
('phenol', 0, 0, 0, 300, 9, 0, 0, 0),
('vacuum', 0, 0, 0, 300, 10, 0, 0, 0),
('cell', 0, 0, 0, 300, 11, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `asset_history`
--

CREATE TABLE `asset_history` (
  `asset_id` int(11) NOT NULL,
  `asset_name` varchar(40) NOT NULL,
  `bio_id` int(11) NOT NULL,
  `firstName` varchar(40) NOT NULL,
  `asset_quantity` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset_history`
--

INSERT INTO `asset_history` (`asset_id`, `asset_name`, `bio_id`, `firstName`, `asset_quantity`, `date`) VALUES
(1, 'bucket', 192011035, 'sony', 20, '2023-09-23'),
(2, 'bucket', 192011035, 'sony', 10, '2023-09-23'),
(3, 'broom', 192011114, 'karan', 20, '2023-09-23'),
(4, 'broom', 192011114, 'karan', 10, '2023-09-23'),
(11, 'phone', 192011114, 'karan', 200, '2023-09-26'),
(11, 'phone', 192011026, 'mokshu', 50, '2023-09-28'),
(1, 'mop', 192011026, 'mokshu', 100, '2023-09-28'),
(1, 'mop', 192011028, 'uday', 200, '2023-09-28'),
(1, 'mop', 192011035, 'sony', 10, '2023-10-28'),
(3, 'scrub brush', 192011114, 'karan', 100, '2023-10-28'),
(12, 'mop', 192011035, 'sony', 300, '2023-11-17'),
(11, 'mop', 192011035, 'sony', 500, '2023-11-17'),
(10, 'vacuum', 192011035, 'sony', 100, '2023-11-17'),
(1, 'mop', 192011035, 'sony', 200, '2023-11-17'),
(1, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(2, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(3, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(4, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(5, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(6, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(7, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(8, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(9, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(10, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(11, 'cell', 192011035, 'sony', 1, '2023-11-17'),
(4, 'mop', 192011035, 'sony', 100, '2023-12-11'),
(1, 'mop', 192011035, 'sony', 10, '2023-12-11'),
(1, 'mop', 192011035, 'sony', 200, '2023-12-28'),
(1, 'mop', 192011035, 'sony', 2, '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `buildingname` varchar(20) NOT NULL,
  `building_id` int(11) NOT NULL,
  `floor_no` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `room_type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`buildingname`, `building_id`, `floor_no`, `room_no`, `room_type`) VALUES
('sse', 0, 1, 1, 'class room'),
('sse', 1, 1, 3, 'class room'),
('sse', 1, 1, 4, 'class room'),
('sse', 1, 1, 5, 'class room'),
('sse', 1, 1, 6, 'class room'),
('sse', 1, 1, 7, 'class room'),
('sse', 1, 1, 8, 'class room'),
('sse', 1, 1, 9, 'class room'),
('sse', 1, 1, 10, 'class room'),
('sse', 1, 1, 11, 'class room'),
('sse', 1, 1, 12, 'class room'),
('sse', 1, 1, 13, 'class room'),
('sse', 1, 1, 14, 'class room'),
('sse', 1, 1, 15, 'class room'),
('sse', 1, 1, 16, 'class room'),
('sse', 1, 1, 17, 'class room'),
('sse', 1, 1, 18, 'class room'),
('sse', 1, 1, 19, 'class room'),
('sse', 1, 1, 20, 'class room'),
('sse', 1, 1, 2, 'class room'),
('sse', 1, 1, 2, 'class room'),
('sse', 1, 1, 21, 'staff room'),
('sse', 1, 1, 22, 'staff room'),
('sse', 1, 1, 0, 'restroom'),
('sse', 1, 1, 0, 'restroom'),
('sse', 1, 1, 23, 'lab'),
('sse', 1, 1, 24, 'lab'),
('sse', 1, 2, 1, 'class room'),
('sse', 1, 2, 2, 'class room'),
('sse', 1, 2, 3, 'class room'),
('sse', 1, 2, 4, 'class room'),
('sse', 1, 2, 5, 'class room'),
('sse', 1, 2, 6, 'class room'),
('sse', 1, 2, 7, 'class room'),
('sse', 1, 2, 8, 'class room'),
('sse', 1, 2, 9, 'class room'),
('sse', 1, 2, 10, 'class room'),
('sse', 1, 2, 11, 'class room'),
('sse', 1, 2, 12, 'class room'),
('sse', 1, 2, 13, 'class room'),
('sse', 1, 2, 14, 'class room'),
('sse', 1, 2, 15, 'class room'),
('sse', 1, 2, 16, 'class room'),
('sse', 1, 2, 17, 'class room'),
('sse', 1, 2, 18, 'class room'),
('sse', 1, 2, 19, 'class room'),
('sse', 1, 2, 20, 'class room'),
('sse', 1, 2, 21, 'staff room'),
('sse', 1, 2, 22, 'staff room'),
('sse', 1, 2, 23, 'lab'),
('sse', 1, 2, 24, 'lab'),
('sse', 1, 2, 0, 'restroom'),
('sse', 1, 2, 0, 'restroom'),
('sse', 1, 1, 29, 'restroom'),
('sse', 1, 3, 225, 'lab'),
('', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('', 33, 0, 0, ''),
('', 33, 0, 0, ''),
('sail', 33, 2, 22, 'lab'),
('sail', 33, 2, 22, 'lab'),
('sail', 33, 2, 22, 'lab'),
('sail', 33, 2, 22, 'lab'),
('sail', 33, 2, 22, 'lab'),
('sail', 33, 2, 22, 'lab'),
('sail', 33, 2, 22, 'lab'),
('sail', 43, 2, 22, 'lab'),
('', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('sail', 9, 2, 288, 'lab'),
('see', 0, 10, 222, ''),
('sail', 12, 2, 288, 'lab'),
('Sail IOS', 0, 1223, 2211, ''),
('iOS Saul', 0, 1122, 2211, ''),
('IIOS', 0, 12, 21, ''),
('ooS', 0, 0, 1100, ''),
('dress', 0, 0, 0, ''),
('add add', 0, 0, 0, ''),
('added', 0, 0, 151626, ''),
('cxvdvd', 0, 0, 0, ''),
('cxvdvd', 0, 0, 0, ''),
('cxvdvd', 0, 0, 0, ''),
('add', 0, 0, 0, ''),
('', 0, 0, 0, ''),
('do', 0, 0, 0, ''),
('SSE SAIL', 0, 2, 202, 'Office Room'),
('sail', 0, 2, 22, 'Office Room'),
('kids', 0, 0, 0, 'Class Room'),
('', 0, 0, 0, 'Class Room'),
('Sail', 0, 1, 0, ''),
('Sail 2', 0, 1, 109, 'Laboratory'),
('see', 0, 1, 101, 'Laboratory'),
('saw', 0, 9, 901, 'Class Room');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `bio_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `floor_no` int(11) NOT NULL,
  `supervisor` varchar(40) NOT NULL,
  `assigned_classroom` varchar(50) NOT NULL,
  `assigned_classroom2` varchar(50) NOT NULL,
  `assigned_classroom3` varchar(50) NOT NULL,
  `assigned_classroom4` varchar(50) NOT NULL,
  `assigned_classroom5` varchar(50) NOT NULL,
  `assigned_classroom6` varchar(50) NOT NULL,
  `assigned_classroom7` varchar(50) NOT NULL,
  `assigned_classroom8` varchar(50) NOT NULL,
  `assigned_classroom9` varchar(50) NOT NULL,
  `user_info_id` int(11) DEFAULT NULL,
  `worker_name` varchar(234) NOT NULL,
  `image` text NOT NULL,
  `status` varchar(233) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `bio_id`, `from_date`, `to_date`, `floor_no`, `supervisor`, `assigned_classroom`, `assigned_classroom2`, `assigned_classroom3`, `assigned_classroom4`, `assigned_classroom5`, `assigned_classroom6`, `assigned_classroom7`, `assigned_classroom8`, `assigned_classroom9`, `user_info_id`, `worker_name`, `image`, `status`) VALUES
(312, 0, '2023-12-19', '2023-12-16', 2, '192011035', '', '', '', '', '', '', '', '', '', NULL, '', 'uploads/6573e913c162a_1.jpg', 'completed'),
(316, 0, '2023-12-28', '2024-01-04', 2, '192011035', 'kamesh', '', '', '', '', '', '', '', '', NULL, '', 'uploads/658d0075a739c_1.jpg', 'completed'),
(317, 0, '2023-12-30', '2023-12-29', 4, '192011035', '', '', 'suresh', '', '', '', '', '', '', NULL, '', '', ''),
(318, 0, '2024-01-10', '2024-01-17', 4, '192011114', '', '', '', '', '', '', '', '', '', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `requestasset`
--

CREATE TABLE `requestasset` (
  `asset_id` int(11) NOT NULL,
  `bio_id` int(11) NOT NULL,
  `request_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_jobs`
--

CREATE TABLE `scheduled_jobs` (
  `classroom` varchar(32) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scheduled_jobs`
--

INSERT INTO `scheduled_jobs` (`classroom`, `job_id`) VALUES
('', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `bio_id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qualification` varchar(30) DEFAULT NULL,
  `Designation` varchar(20) NOT NULL,
  `Supervisor` text NOT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `busy` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`bio_id`, `firstName`, `lastName`, `email`, `qualification`, `Designation`, `Supervisor`, `contact`, `password`, `birthday`, `busy`) VALUES
(19201123, 'nitiesh', 'n', 'nitiesh@gmail.com', 'be', 'worker', '192011035', '9862737384', 'nitiesh123', '2023-09-14', 0),
(19201125, 'wassy', 'n', 'wassy@gmail.com', 'be', 'worker', '192011035', '9862737389', 'wassy123', '2023-09-14', 0),
(123456789, 'bobby', 'b', 'bobby123@gmail.com', 'be', 'worker', '192011035', '1122334455', '123123', '0000-00-00', 0),
(191919191, 'sanjay', 's', 'sanjay@gmail.com', 'be', 'storekeeper', '', '123456788', 'sanjay123', '2023-09-12', 0),
(192011011, 'karthick', 'k', 'karthick@gmail.com', 'be', 'Worker', '192011035', '1234567890', 'karthick', '2023-11-01', 0),
(192011021, 'roshan', 'r', 'roshan123@gmail.com', 'be', 'Worker', '192011035', '1234567890', 'roshan123', '2023-11-05', 0),
(192011022, 'shaym', 's', 'shyam123@gmail.com', 'be', 'Worker', '192011035', '1234567890', 'iuhawdl', '2023-11-14', 0),
(192011023, 'suresh', 's', 'suresh123@gmail.com', 'be', 'Worker', '192011035', '1234567890', 'sdf', '2023-11-06', 0),
(192011024, 'basheer', 'b', 'basheer@gmail.com', 'be', 'Worker', '192011035', '1234567890', 'sd', '2023-11-06', 0),
(192011025, 'khan', 'k', 'khan@gmail.com', 'be', 'Worker', '', '1234567890', 'sd', '2023-11-14', 0),
(192011030, 'nani', 'n', 'nani123@gmail.com', 'be', 'manager', '', '1234568789', 'nani123', '2023-11-13', 0),
(192011035, 'sony', 's', 'sony@gmail.com', 'be', 'supervisor', '', '123455556', 'sony123', '2023-10-16', 0),
(192011036, 'bharath', 'b', 'bharath123@gmail.com', 'be', 'admin', '', '1234567899', 'bharath123', '2023-09-12', 0),
(192011055, 'krish', 'k', 'krish123@gmail.com', 'be', 'Worker', '192011035', '1234567890', 'krish', '2023-12-05', 0),
(192011111, 'kamesh', 'b', 'kamesh123@gmail.com', 'be', 'Worker', '192011035', '1234567890', '1234566', '2023-11-22', 0),
(192011112, 'pattan', 'k', 'pattan@gmail.com', 'be', 'Worker', '192011114', '1234567899', 'pattan1', '2023-12-07', 0),
(192011114, 'karan', 'k', 'karan@gmail.com', 'be', 'supervisor', '', '123245555', 'karan123', '2023-10-27', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`),
  ADD UNIQUE KEY `user_info_id` (`user_info_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`bio_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `fk_user_info` FOREIGN KEY (`user_info_id`) REFERENCES `userinfo` (`bio_id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"housekeeping\",\"table\":\"job\"},{\"db\":\"housekeeping\",\"table\":\"userinfo\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'housekeeping', 'job', '{\"sorted_col\":\"`job`.`status` ASC\"}', '2023-12-06 14:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-12-19 09:15:36', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"en_GB\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
