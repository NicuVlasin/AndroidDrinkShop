-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 09:33 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `drink`
--

CREATE TABLE `drink` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Link` text NOT NULL,
  `Price` float NOT NULL,
  `MenuId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drink`
--

INSERT INTO `drink` (`ID`, `Name`, `Link`, `Price`, `MenuId`) VALUES
(1, 'Squash tea\r\n', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-B%C3%AD-%C4%90ao-Milkfoam-1.png', 3.75, 10),
(3, 'Oolong tea\r\n', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Oolong-Milkfoam-2.png', 3.75, 10),
(4, 'Alisan tea\r\n', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Alisan-Milkfoam-1.png', 3.75, 10),
(5, 'Earl tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Earl-Grey-Milkfoam-1.png', 3.75, 10),
(6, 'Black tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-%C4%90en-Milkfoam-1.png', 3.75, 10),
(7, 'Green tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Xanh-Milkfoam-1.png', 3.75, 10),
(8, 'Milk Tea Red Bean', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Matcha-%C4%91%E1%BA%ADu-%C4%91%E1%BB%8F-1.png', 3.75, 9),
(9, 'Milk Tea Oolong 3J', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Oolong-3J-1.png', 3.75, 9),
(10, 'Milk Tea Pudding Read Bean', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Pudding-%C4%91%E1%BA%ADu-%C4%91%E1%BB%8F-1.png', 3.75, 9),
(11, 'Milk Tea Chocolate', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Chocolate-1.png', 3.75, 9),
(12, 'Milk Tea Caramel', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Caramel-1.png', 3.75, 9),
(13, 'Milk Tea Black Pearl', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Caramel-1.png', 3.75, 9),
(14, 'Squash Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-B%C3%AD-%C4%90ao-Alisan-1.png', 3.75, 8),
(15, 'Squash Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-B%C3%AD-%C4%90ao-1.png', 3.75, 8),
(16, 'Earl Grey Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Early-Grey-1.png', 3.75, 8),
(17, 'Oolong Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Oolong-1.png', 3.75, 8),
(18, 'Black Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-%C4%90en-1.png', 3.75, 8),
(19, 'Green Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Xanh-1.png', 3.75, 8),
(20, 'QQ Green Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/QQ-Tr%C3%A0-xanh-chanh-d%C3%A2y-1.png', 3.75, 5),
(21, 'Lemon Ai-yu and White Pearl ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Chanh-Aiyu-tr%C3%A2n-ch%C3%A2u-tr%E1%BA%AFng-1.png', 3.75, 5),
(22, 'Pink Peach ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/imgpsh_fullsize.png', 3.75, 5),
(23, 'Fig Oolong Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Oolong-v%E1%BA%A3i-1.png', 3.75, 5),
(24, 'Fig Alisan Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Alisan-v%E1%BA%A3i-1.png', 3.75, 5),
(25, 'Mango Alisan Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Alisan-xo%C3%A0i-1.png', 3.75, 5),
(26, 'Lemon Green Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Xanh-%C4%91%C3%A0o-1.png', 3.75, 5),
(27, 'Lemon Alisan Green Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Xanh-%C4%91%C3%A0o-1.png', 3.75, 5),
(28, 'Peach Black Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/%C4%90en-%C4%91%C3%A0o-1.png', 3.75, 5),
(29, 'Peach Green Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Xanh-%C4%91%C3%A0o-1.png', 3.75, 5),
(30, 'Chocolate Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Chocolate-%C4%91%C3%A1-xay-1.png', 3.75, 6),
(31, 'Taro Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Khoai-m%C3%B4n-%C4%91%C3%A1-xay-1.png', 3.75, 6),
(32, 'Matcha Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Matcha-%C4%91%C3%A1-xay-1.png', 3.75, 6),
(33, 'Yakult Peach Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Yakult-%C4%91%C3%A1-xay-1.png', 3.75, 6),
(34, 'Mango Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Xo%C3%A0i-%C4%91%C3%A1-xay-1.png', 3.75, 6),
(35, 'Peach Tea Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-%C4%91%C3%A0o-%C4%91%C3%A1-tuy%E1%BA%BFt-fix.png', 3.75, 6),
(36, 'Milk Cream', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Kem-S%E1%BB%AFa.png', 2, 7),
(37, 'Vera', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Nha-%C4%90am.png', 2, 7),
(38, 'Seeds', 'http://gongcha.com.vn/wp-content/uploads/2018/03/H%E1%BA%A1t-%C3%89.png', 2, 7),
(39, 'Black Pearl', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Tr%C3%A2n-Ch%C3%A2u-%C4%90en.png', 2, 7),
(40, 'White Pearl', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Tr%C3%A2n-Ch%C3%A2u-Tr%E1%BA%AFng.png', 2, 7),
(41, 'Red Bean', 'http://gongcha.com.vn/wp-content/uploads/2018/03/%C4%90%E1%BA%ADu-%C4%90%E1%BB%8F.png', 2, 7),
(42, 'Jelly Black', 'http://gongcha.com.vn/wp-content/uploads/2018/03/S%C6%B0%C6%A1ng-s%C3%A1o.png', 2, 7),
(43, 'Jelly Brown', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Th%E1%BA%A1ch-N%C3%A2u.png', 2, 7),
(44, 'Jelly Fruits', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Th%E1%BA%A1ch-tr%C3%A1i-c%C3%A2y.png', 2, 7),
(45, 'Jelly Ai-yu', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Th%E1%BA%A1ch-Ai-yu.png', 2, 7),
(46, 'Jelly Coconut', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Th%E1%BA%A1ch-D%E1%BB%ABa.png', 2, 7),
(47, 'Pudding', 'http://gongcha.com.vn/wp-content/uploads/2018/03/%E5%B8%83%E4%B8%81-pudding.png', 2, 7),
(48, 'Combo 2', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Combo2loaihat-2.png', 2.5, 7),
(49, 'Combo 3', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Combo-3-lo%E1%BA%A1i-h%E1%BA%A1t.png', 2.5, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MenuId` (`MenuId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drink`
--
ALTER TABLE `drink`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
