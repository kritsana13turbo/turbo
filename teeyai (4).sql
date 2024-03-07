-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2024 at 11:45 AM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teeyai`
--
CREATE DATABASE IF NOT EXISTS `teeyai` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `teeyai`;

-- --------------------------------------------------------

--
-- Table structure for table `deliverytime`
--

DROP TABLE IF EXISTS `deliverytime`;
CREATE TABLE `deliverytime` (
  `dt_code` int(11) NOT NULL,
  `dt_name` varchar(50) NOT NULL,
  `dt_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliverytime`
--

INSERT INTO `deliverytime` (`dt_code`, `dt_name`, `dt_time`) VALUES
(2, '17.00 น.', '17:00:00'),
(3, '16.00 น.', '16:00:00'),
(4, '18.00 น.', '18:00:00'),
(5, '19.00 น.', '19:00:00'),
(6, '20.00 น.', '20:00:00'),
(7, '21.00 น.', '21:00:00'),
(8, '22.00 น.', '22:00:00'),
(9, '23.00 น.', '23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
CREATE TABLE `field` (
  `id_field` int(11) NOT NULL COMMENT 'รหัสสนาม',
  `name_field` text NOT NULL COMMENT 'ชื่อสนาม',
  `status_field` text NOT NULL COMMENT 'สถานะสนาม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`id_field`, `name_field`, `status_field`) VALUES
(1, 'สนามที่ 1', 'ใช้งาน'),
(2, 'สนามที่ 2', 'ใช้งาน'),
(3, 'สนามที่ 3', 'ใช้งาน');

-- --------------------------------------------------------

--
-- Table structure for table `member_rb`
--

DROP TABLE IF EXISTS `member_rb`;
CREATE TABLE `member_rb` (
  `mb_code` int(11) NOT NULL,
  `mb_email` varchar(120) NOT NULL,
  `mb_pass` varchar(120) NOT NULL,
  `mb_name` varchar(120) NOT NULL,
  `mb_type` int(11) NOT NULL,
  `mb_phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member_rb`
--

INSERT INTO `member_rb` (`mb_code`, `mb_email`, `mb_pass`, `mb_name`, `mb_type`, `mb_phone`) VALUES
(1, 'q@q.q', '0147', 'Admin', 3, '0872466862'),
(2, 'e@e.e', '0147', 'test2', 1, '0872466862'),
(21, 'r@r.r', '1234', 'กฤษณ สุวิมล', 1, '0956129652'),
(22, 'admin@q.q', '12345', 'กฤษณ สุวิมล', 3, '0956129652'),
(23, 'q@q.r', '1234', 'กฤษณ สุวิมล', 1, '0961213214'),
(24, 'e@e.er', '1234', 'ks', 1, '1234567890'),
(26, 'aa@q.q', '1234', 'ffdd', 1, '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `m_code` int(11) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `m_pic` varchar(200) NOT NULL,
  `m_detail` varchar(200) NOT NULL,
  `m_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`m_code`, `m_name`, `m_pic`, `m_detail`, `m_price`) VALUES
(8, 'น้ำเปล่า', 'm_pic_edit209729460920231101_210616.png', 'น้ำ 1.5 ลิตร', 20),
(9, 'แพ็คน้ำ', 'm_pic_edit127955542120231101_001616.jpg', 'น้ำ 1.5 ลิตร*6', 100),
(10, 'น้ำโค็ก', 'm_pic_edit55244362520231103_131656.png', 'น้ำโค็ก', 20),
(11, 'เช่าลูกฟุตบอล', 'm_pic63755471120231109_050320.jpg', 'เช่าลูกฟุตบอล(คืนหลังใช้งาน)', 50),
(12, 'ถุงเท้า', 'm_pic_edit35951945320231109_050454.jpg', 'ถุงเท้าข้อยาว 1 คู่', 120),
(13, 'น้ำเกลือแร่', 'm_pic62357535020231109_050620.jpg', 'สปอนเซอร์', 15);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE `promotion` (
  `p_code` int(11) NOT NULL,
  `p_name` varchar(120) NOT NULL,
  `p_status` int(11) NOT NULL,
  `p_startdate` date NOT NULL,
  `p_enddate` date NOT NULL,
  `mm_totalprice` int(11) NOT NULL,
  `dc_percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`p_code`, `p_name`, `p_status`, `p_startdate`, `p_enddate`, `mm_totalprice`, `dc_percentage`) VALUES
(1, 'ลด 20% ซื้อขั้นต่ำ 100 บาทขึ้นไป 01-30 กันยายนนี้เท่านั้น', 1, '2020-09-01', '2020-09-30', 100, 20);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `s_code` int(11) NOT NULL,
  `s_total` int(11) NOT NULL,
  `s_price` float NOT NULL,
  `m_code` int(11) NOT NULL,
  `ss_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`s_code`, `s_total`, `s_price`, `m_code`, `ss_code`) VALUES
(27, 3, 300, 9, 24),
(31, 5, 100, 10, 27),
(32, 2, 200, 9, 28),
(33, 3, 60, 8, 28),
(34, 4, 80, 10, 28),
(41, 1, 20, 8, 31),
(42, 1, 100, 9, 31),
(43, 1, 20, 10, 31),
(44, 1, 50, 11, 31),
(45, 1, 120, 12, 31),
(46, 1, 15, 13, 31),
(50, 2, 200, 9, 36),
(51, 2, 40, 8, 36),
(52, 3, 45, 13, 37),
(53, 3, 360, 12, 37),
(54, 2, 40, 8, 37);

-- --------------------------------------------------------

--
-- Table structure for table `saleslip`
--

DROP TABLE IF EXISTS `saleslip`;
CREATE TABLE `saleslip` (
  `ss_code` int(11) NOT NULL,
  `ss_time` datetime NOT NULL,
  `ss_totalprice` float NOT NULL,
  `ss_discount` int(11) NOT NULL,
  `ss_netprice` int(11) NOT NULL,
  `pm_method` int(11) NOT NULL,
  `pm_pic` varchar(200) NOT NULL,
  `ss_status` int(11) NOT NULL,
  `pm_status` int(11) NOT NULL,
  `ss_note` varchar(200) NOT NULL,
  `dt_code` int(11) NOT NULL,
  `sa_code` int(11) NOT NULL,
  `mb_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saleslip`
--

INSERT INTO `saleslip` (`ss_code`, `ss_time`, `ss_totalprice`, `ss_discount`, `ss_netprice`, `pm_method`, `pm_pic`, `ss_status`, `pm_status`, `ss_note`, `dt_code`, `sa_code`, `mb_code`) VALUES
(24, '2023-11-08 17:57:00', 300, 0, 315, 1, '', 2, 2, '', 2, 1, 21),
(27, '2023-11-07 12:13:01', 100, 0, 115, 1, '', 1, 1, '', 2, 1, 2),
(28, '2023-11-08 01:40:57', 340, 0, 345, 1, '', 1, 1, '', 3, 1, 2),
(31, '2023-11-12 17:20:00', 325, 0, 330, 1, '', 2, 2, '', 4, 3, 2),
(36, '2023-11-13 05:55:00', 240, 0, 245, 2, 'pm_pic200247182920231113_055445.jpg', 2, 2, '', 3, 1, 21),
(37, '2023-12-02 17:34:54', 445, 0, 450, 1, '', 1, 1, '', 3, 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `servicearea`
--

DROP TABLE IF EXISTS `servicearea`;
CREATE TABLE `servicearea` (
  `sa_code` int(11) NOT NULL,
  `sa_name` varchar(50) NOT NULL,
  `sa_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servicearea`
--

INSERT INTO `servicearea` (`sa_code`, `sa_name`, `sa_cost`) VALUES
(1, 'สนามที่ 1', 5),
(2, 'สนามที่ 2', 5),
(3, 'สนามที่ 3', 5);

-- --------------------------------------------------------

--
-- Table structure for table `table_field`
--

DROP TABLE IF EXISTS `table_field`;
CREATE TABLE `table_field` (
  `id_reserve` int(11) NOT NULL COMMENT 'รหัสการจอง',
  `date` date NOT NULL COMMENT 'วันที่จอง',
  `id_time` int(11) NOT NULL COMMENT 'รหัสเวลา',
  `id_user` int(11) NOT NULL COMMENT 'รหัสผู้ใช้',
  `id_field` int(11) NOT NULL COMMENT 'เวลาสนาม',
  `status_reserve` text NOT NULL COMMENT 'รออนุมัติ-อนุมัติแล้ว',
  `status_payment` text NOT NULL COMMENT 'สถานะการชำระเงิน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
CREATE TABLE `time` (
  `id_time` int(11) NOT NULL COMMENT 'รหัสเวลา',
  `start_time` time NOT NULL COMMENT 'เวลาเริ่ม',
  `end_time` time NOT NULL COMMENT 'เวลาสิ้นสุด',
  `price` int(20) NOT NULL COMMENT 'ราคาต่อชั่วโมง\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id_time`, `start_time`, `end_time`, `price`) VALUES
(1, '16:00:00', '17:00:00', 650),
(2, '17:00:00', '18:00:00', 650),
(3, '18:00:00', '19:00:00', 650),
(4, '19:00:00', '20:00:00', 650),
(5, '20:00:00', '21:00:00', 650),
(6, '21:00:00', '22:00:00', 650),
(7, '22:00:00', '23:00:00', 650);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deliverytime`
--
ALTER TABLE `deliverytime`
  ADD PRIMARY KEY (`dt_code`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id_field`);

--
-- Indexes for table `member_rb`
--
ALTER TABLE `member_rb`
  ADD PRIMARY KEY (`mb_code`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`m_code`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`p_code`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`s_code`),
  ADD KEY `m_code` (`m_code`),
  ADD KEY `ss_code` (`ss_code`);

--
-- Indexes for table `saleslip`
--
ALTER TABLE `saleslip`
  ADD PRIMARY KEY (`ss_code`),
  ADD KEY `dt_code` (`dt_code`),
  ADD KEY `sa_code` (`sa_code`),
  ADD KEY `mb_code` (`mb_code`);

--
-- Indexes for table `servicearea`
--
ALTER TABLE `servicearea`
  ADD PRIMARY KEY (`sa_code`);

--
-- Indexes for table `table_field`
--
ALTER TABLE `table_field`
  ADD PRIMARY KEY (`id_reserve`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id_time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deliverytime`
--
ALTER TABLE `deliverytime`
  MODIFY `dt_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `field`
--
ALTER TABLE `field`
  MODIFY `id_field` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสนาม', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `member_rb`
--
ALTER TABLE `member_rb`
  MODIFY `mb_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `m_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `p_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `s_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `saleslip`
--
ALTER TABLE `saleslip`
  MODIFY `ss_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `servicearea`
--
ALTER TABLE `servicearea`
  MODIFY `sa_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_field`
--
ALTER TABLE `table_field`
  MODIFY `id_reserve` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสการจอง';
--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id_time` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสเวลา', AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`m_code`) REFERENCES `menu` (`m_code`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`ss_code`) REFERENCES `saleslip` (`ss_code`);

--
-- Constraints for table `saleslip`
--
ALTER TABLE `saleslip`
  ADD CONSTRAINT `saleslip_ibfk_1` FOREIGN KEY (`dt_code`) REFERENCES `deliverytime` (`dt_code`),
  ADD CONSTRAINT `saleslip_ibfk_2` FOREIGN KEY (`sa_code`) REFERENCES `servicearea` (`sa_code`),
  ADD CONSTRAINT `saleslip_ibfk_3` FOREIGN KEY (`mb_code`) REFERENCES `member_rb` (`mb_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
