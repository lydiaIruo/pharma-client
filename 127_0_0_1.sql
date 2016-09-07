-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2016 at 03:16 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ad_pac_set_min`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_duration` varchar(100) NOT NULL,
  `course_cost` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_duration`, `course_cost`) VALUES
(2, 'pythrdx', '9-12 june', 'r444'),
(3, 'java', '3months', '#40000'),
(4, 'java', '3months', '#40000'),
(5, 'python', '8weeks', '#50000'),
(6, 'Web Design', '17 weeks', '#50,000'),
(7, 'FireBase', '4 weeks', '#40,000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news`) VALUES
(2, 'the python team would meet on sunday for a brainstorming session at wellington hotel.the time for the meting is 4pm. mo be punctual.'),
(3, 'the world is beautiful with computer science'),
(4, 'lydia came to topnotch without her hard disk'),
(5, 'news has been entered into the database\r\nnews has been entered into the database\r\nnews has been entered into the database');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE IF NOT EXISTS `training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id`, `name`) VALUES
(8, ' Python for kids – Catch Them Young'),
(9, ' Python for Non-Programmers'),
(10, ' Python for Programmers'),
(11, ' Optimizing Python Programs'),
(12, ' Windows Programming with Python'),
(13, ' Python Extensions with Other Languages'),
(14, ' Fast Code with the Cython Compiler'),
(15, ' Network Programming with Python'),
(16, ' Python for Scientists and Engineers'),
(17, ' \r\nPython for Statisticians and Financial Managers'),
(18, ' High-Performance Computation with Python'),
(19, ' Python for Exploring Experiments'),
(20, ' Python for Exploring Concepts, phenomena, etc'),
(21, ' Modeling, Simulation and Visualization with Python'),
(22, ' Introduction to Django'),
(23, ' Advanced Django'),
(24, '      \r\n\r\n    High Performance XML with Python'),
(25, ' \r\nDeveloping Computational Illustrative Websites with Python'),
(26, ' Special Topics as the needs arise');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_event`
--

CREATE TABLE IF NOT EXISTS `upcoming_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `upcoming_event`
--

INSERT INTO `upcoming_event` (`id`, `name`, `date`, `time`, `cost`, `location`) VALUES
(1, 'python', '4-5 july', '9pm', '#20000', 'warri'),
(3, 'Python for Non-Programmers', '23-27 May, 2015', '9:00am daily', '#50,000', 'SHELL RAMP');
--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `computer_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'lydia', 'lydia');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE IF NOT EXISTS `order_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigger_image` int(11) NOT NULL,
  `ram_size` int(11) NOT NULL,
  `screen_size` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `operating_system` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE IF NOT EXISTS `product_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`id`, `name`, `amount`, `os`, `Photo`) VALUES
(1, '', '', '', ''),
(2, '', '1.jpg', '', ''),
(3, 'dm', '', '', ''),
(4, 'dfg', 'fgh', 'dfg', ''),
(5, 'sdf', 'dfdfg', 'dfg', ''),
(6, 'fgvh', 'jhk', 'hj', ''),
(7, 'aszdxf', 'asdfg', 'DFG', 'Uploads2/'),
(8, 'pavilion dm4', '#76000', 'windows 8', 'Uploads2/pic3.jpg'),
(9, 'dew', 'de', 'dd', 'Uploads2/'),
(10, 'file', '#50000', 'windows 8', 'Uploads2/pic3.jpg');
--
-- Database: `mypharmsearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Market_Name` varchar(100) NOT NULL,
  `Active_Ingredient` varchar(100) NOT NULL,
  `Indication` varchar(100) NOT NULL,
  `Side_Effect` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Market_Name` (`Market_Name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Market_Name`, `Active_Ingredient`, `Indication`, `Side_Effect`) VALUES
(1, 'Actifedffd', 'Active', 'Cattarh', 'lghjkl\r\n'),
(2, 'Panad', 'Paracetamol', 'headache', 'drowsiness'),
(3, 'dtfyghuijk', 'dtfygvuhbinjok', 'dtfvyghunijok', 'dtfyvghubinjok'),
(4, 'lydooa', '', 'hj;iou', 'hjlk'),
(5, 'pana', 'jsdlkq', 'jksjkdj', '\r\nghjiko'),
(6, 'Ampicillin', 'Ampicllin', 'Infections', 'drowsiness');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Class` varchar(100) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `Fax` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Email` (`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `Class`, `Logo`, `Email`, `Address`, `City`, `Country`, `Password`, `Phone`, `Mobile`, `Fax`, `Name`, `State`) VALUES
(1, 'djewel4u@gmail.com', 'lydi pharm', 'lydia', '', '', '', '', '', '', '', '', ''),
(2, 'pharmacy', '', 'emzorpharm@gmail.com', '6 RObert road', 'warri', 'Nigeria', 'lydia', '08134077624', '09099024286', '', 'Emzor Pharmaceuticals', ''),
(3, 'pharmacy', '', 'juhel@gmail.com', '55 ruookoro', 'port harcopurt', 'Nigeria', 'lydia', '08134077624', '09099024286', '', 'Juhel Phar,', 'rivers'),
(10, 'Manufacturer', 'Uploads/', 'JNKMFGHJK@JKL', 'FYGUHIJK', 'FGH', 'KLF', 'L;FGHJ', 'GHJKL', 'FGHJ', 'KLFGHJK', 'fdghjkGFHJKL', 'JKFGHJ'),
(11, 'Manufacturer', 'Uploads/IMG_1372.JPG', 'frgty@dfghj', '55 ruookoro', 'tyjhk', 'defg', 'rt', 'tfry', 'rtyu', 'gthj', 'obozik', 'sdfg'),
(12, 'Hospital', 'Uploads/IMG_0265 (2).JPG', 'lydiapharm@yahoo.com', 'UNN', 'Nsukka', 'Nigeria', 'lydiapharm', '08134077624', '09099024286', '', 'Lydia Pharm', 'enugu'),
(13, 'Manufacturer', 'Uploads/IMG_0296.JPG', 'sandra@gmail.com', 'ghjk', 'hjkl', 'mhbjn', 'mkcgvhbjnkm', 'kmvhbnj', 'mk,cgvhbnjm', ',gcvhbnjm', 'sandrapharm', 'vhbjnk'),
(14, 'Manufacturer', 'Uploads/', 'sandra@ymail.com', 'ugboroke', 'warri', 'nigeria', 'sandra', '08163558855', '', '', 'sandra', 'delta'),
(15, 'Manufacturer', 'Uploads/fav.jpg', 'dora@gmail.com', 'r', 'tydfghb', 'jhnbgfv', 'dora', '234567', '23456', '', 'Lily', 'hnbgfv');
--
-- Database: `onlinecomplaint`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username1` varchar(100) NOT NULL,
  `password1` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username1`, `password1`) VALUES
(1, 'lydia', 'lydia');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE IF NOT EXISTS `complaints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `complaint` text NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `date`, `time`, `username`, `complaint`, `status`) VALUES
(1, '31/03/15', '02:03:31', 'daddy', '1010010010010010010010010010010010010010010010010010010', 'Read'),
(11, '01/04/15', '02:04:1', 'lydia', 'blessing has not been in class fro a while', 'Read'),
(12, '01/04/15', '02:04:1', 'lydia', 'buhari won the presidential elections. can someone tell me it''s april fool abeg', 'Unread'),
(13, '01/04/15', '02:04:1', 'lydia', 'am tired of warri. can someone take me to the bahamas please', 'Read'),
(14, '01/04/15', '02:04:1', 'daddy', 'instructor can complain of padding eh..i tire', 'Read'),
(15, '01/04/15', '02:04:1', 'daddy', 'instructor chris like padding too much..i don tire sef', 'Unread'),
(16, '01/04/15', '02:04:1', 'daddy', 'i never see where music dey change the channel of person thought o\r\n never see where music dey change the channel of person thought o\r\n never see where music dey change the channel of person thought o', 'Unread'),
(17, '08/04/15', '09:04:8', 'jewel', 'I''m just testing to see if it works', 'Read'),
(21, '09/04/15', '01:04:9', 'aneke', '', 'Unread'),
(22, '09/04/15', '01:04:9', 'aneke', '', 'Unread'),
(23, '12/04/15', '01:04:12', 'aneke', 'fr', 'Read'),
(24, '12/04/15', '04:04:12', 'aneke', 'tredfg', 'Unread'),
(25, '12/04/15', '05:04:12', 'aneke', 'tredfg', 'Unread'),
(26, '18/07/15', '01:07:18', 'Nonso', 'martin maltreated u by taking your laptop', 'Read');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `username`, `password`, `Photo`) VALUES
(6, 'mary', 'mary', 'mary', ''),
(8, 'Oboidhe Iruoghene', 'jewel', 'jewel', 'Uploads/IMG_20150111_132607.jpg'),
(9, 'oboidhe daughter', 'daughter', 'dau', 'Uploads/IMG_20150111_132603_edit.jpg'),
(10, 'aneke aneke', 'aneke', 'aneke', 'Uploads/2013-04-17 13.49.05.jpg'),
(11, 'Oboidhe Nelson', 'Nelson4me', '4me2go', 'Uploads/15.jpg'),
(12, 'Kama Nonso', 'Nonso', 'nonso', 'Uploads/download (2).jpg'),
(13, 'Oboidhe lYDIA', 'lydia', 'lydia', 'Uploads/');
--
-- Database: `oves_pharm`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_news`
--

CREATE TABLE IF NOT EXISTS `add_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `News` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `add_news`
--

INSERT INTO `add_news` (`id`, `News`) VALUES
(1, 'merit is currently braiding'),
(2, 'martins askedwell\r\n'),
(4, 'the National Association of Pharmaceutical Students wishes to announce the annual general meeting which would hold at the university of Nigeria nsukka from 28th to 31st November 2015. Members are encouraged to register efore  the conference for reservation purposes\r\n	overflow:auto;\r\n	overflow-style:marquee-block;\r\n	overflow:auto;\r\n	overflow-style:marquee-block;\r\n	overflow:auto;\r\n	overflow-style:marquee-block;. ');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username1` varchar(100) NOT NULL,
  `password1` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username1`, `password1`) VALUES
(1, 'lydia', 'lydia');

-- --------------------------------------------------------

--
-- Table structure for table `product_name`
--

CREATE TABLE IF NOT EXISTS `product_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) NOT NULL,
  `generic_name` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `product_photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Brand_Name` varchar(150) NOT NULL,
  `Generic_Name` varchar(150) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Image` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Brand_Name`, `Generic_Name`, `Quantity`, `Image`) VALUES
(1, 'Amoxi', 'Amoxi', '5 rolls', 'Uploads/IMG_8001.JPG'),
(2, 'Amclavin 156.25mg	', 'Amoxicillin/Clavulanic Acid	', '5 Rolls', 'Uploads/'),
(3, 'Amclavin 312.5mg	', 'Amoxicillin/Clavulanic Acid	', '5 rolls', 'Uploads/'),
(4, 'sdds', 'fdx', 'szffsz', 'Uploads/');
--
-- Database: `pharmclient`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `med` varchar(100) NOT NULL,
  `drug` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `date_next` date NOT NULL,
  `time_next` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `med`, `drug`, `email`, `phone`, `date_next`, `time_next`) VALUES
(18, 'tetete', 'ghjk', 'tyhj', 'fghjk@ghj', 'ghjkl;', '0000-00-00', '00:00:00'),
(19, 'helen', 'fghjk', 'dfghjk', 'fghjk@ghj', 'ghjkl', '2010-12-01', '00:00:00'),
(30, 'derea', 'ghjk', 'ghj', 'dfghj@ghj', 'ghjkl;', '0000-00-00', '00:01:00'),
(31, 'fred', 'fghjk', 'ghj', 'fghjk@ghj', 'ghj', '2016-01-01', '00:01:00'),
(32, 'melovia', 'nothing', 'ghj', 'dfghj@ghj', 'ghjk', '2016-11-08', '00:01:00'),
(33, 'second', 'ghjk', 'ghj', 'hjk@ghj', 'ghjkl;', '2018-07-19', '01:14:00'),
(34, 'sdfgh', 'fghj', 'ghj', 'gyhujik@gh', 'ghjk', '2016-01-01', '10:16:00'),
(35, 'freda', 'Catarrh', 'ghj', 'fghjk@ghj', 'ghjkl;', '2016-01-01', '00:00:01'),
(36, 'fredred', 'ghjk', 'dtfyguh', 'hjk@ghj', '08134077624', '2016-01-01', '12:00:00'),
(37, 'patient', 'dfghjk', 'ghj', 'dfghj@ghj', 'ghjk', '2016-01-01', '16:16:00'),
(38, 'Eneasta Chimajs', 'Jaundice', 'Paracetamol, ACtified, Tramadol', 'eneasata@gmil.com', '09092673546', '2016-09-13', '08:00:00'),
(39, 'melydia', 'dtfgyhuj', 'dfghj', 'kfg@hjkl', 'ghjk', '2016-01-17', '08:00:00'),
(40, 'dateDFTYGUH', 'ERFTGHJ', 'ghj', 'gyhujik@gh', '08134077624', '2016-08-16', '08:00:00'),
(41, 'oboidhe esther', 'lung beauty', 'pomade', 'WDRT@FG', '098765', '2016-09-18', '08:14:00');
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=143 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'studentportal', 'Personal_Data', 'ID', '', '', '_', ''),
(2, 'studentportal', 'Personal_Data', 'Name', '', '', '_', ''),
(3, 'studentportal', 'Personal_Data', 'Email', '', '', '_', ''),
(4, 'studentportal', 'Personal_Data', 'Phone', '', '', '_', ''),
(5, 'studentportal', 'Personal_Data', 'Username', '', '', '_', ''),
(6, 'studentportal', 'Personal_Data', 'Password', '', '', '_', ''),
(7, 'studentportal', 'personal_data', 'Email', '', '', '_', ''),
(8, 'onlinecomplaint', 'signup', 'id', '', '', '_', ''),
(9, 'onlinecomplaint', 'signup', 'fullname', '', '', '_', ''),
(10, 'onlinecomplaint', 'signup', 'username', '', '', '_', ''),
(11, 'onlinecomplaint', 'signup', 'password', '', '', '_', ''),
(12, 'onlinecomplaint', 'complaints', 'id', '', '', '_', ''),
(13, 'onlinecomplaint', 'complaints', 'date', '', '', '_', ''),
(14, 'onlinecomplaint', 'complaints', 'time', '', '', '_', ''),
(15, 'onlinecomplaint', 'complaints', 'username', '', '', '_', ''),
(16, 'onlinecomplaint', 'complaints', 'complaint', '', '', '_', ''),
(17, 'onlinecomplaint', 'complaints', 'status', '', '', '_', ''),
(20, 'onlinecomplaint', 'admin', 'id', '', '', '_', ''),
(19, 'onlinecomplaint', 'signup', 'Photo', '', '', '_', ''),
(21, 'onlinecomplaint', 'admin', 'username', '', '', '_', ''),
(22, 'onlinecomplaint', 'admin', 'password', '', '', '_', ''),
(23, 'onlinecomplaint', 'admin', 'username1', '', '', '_', ''),
(24, 'onlinecomplaint', 'admin', 'password1', '', '', '_', ''),
(25, 'computer_store', 'product_table', 'id', '', '', '_', ''),
(26, 'computer_store', 'product_table', 'name', '', '', '_', ''),
(27, 'computer_store', 'product_table', 'image', '', '', '_', ''),
(28, 'computer_store', 'product_table', 'description', '', '', '_', ''),
(29, 'computer_store', 'order_table', 'id', '', '', '_', ''),
(30, 'computer_store', 'order_table', 'bigger_image', '', '', '_', ''),
(31, 'computer_store', 'order_table', 'ram_size', '', '', '_', ''),
(32, 'computer_store', 'order_table', 'screen_size', '', '', '_', ''),
(33, 'computer_store', 'order_table', 'color', '', '', '_', ''),
(34, 'computer_store', 'order_table', 'operating_system', '', '', '_', ''),
(35, 'computer_store', 'admin', 'id', '', '', '_', ''),
(36, 'computer_store', 'admin', 'username', '', '', '_', ''),
(37, 'computer_store', 'admin', 'password', '', '', '_', ''),
(38, 'computer_store', 'product_table', 'amount', '', '', '_', ''),
(39, 'computer_store', 'product_table', 'os', '', '', '_', ''),
(40, 'computer_store', 'product_table', 'Photo', '', '', '_', ''),
(41, 'ad_pac_set_min', 'login', 'id', '', '', '_', ''),
(42, 'ad_pac_set_min', 'login', 'username', '', '', '_', ''),
(43, 'ad_pac_set_min', 'login', 'password', '', '', '_', ''),
(68, 'policerecord', 'criminal', 'name', '', '', '_', ''),
(67, 'policerecord', 'criminal', 'id', '', '', '_', ''),
(64, 'policerecord', 'signup', 'id', '', '', '_', ''),
(65, 'policerecord', 'signup', 'username', '', '', '_', ''),
(66, 'policerecord', 'signup', 'password', '', '', '_', ''),
(49, 'ad_pac_set_min', 'courses', 'id', '', '', '_', ''),
(50, 'ad_pac_set_min', 'courses', 'course_name', '', '', '_', ''),
(51, 'ad_pac_set_min', 'courses', 'course_duration', '', '', '_', ''),
(52, 'ad_pac_set_min', 'courses', 'course_cost', '', '', '_', ''),
(53, 'ad_pac_set_min', 'upcoming_event', 'id', '', '', '_', ''),
(54, 'ad_pac_set_min', 'upcoming_event', 'name', '', '', '_', ''),
(55, 'ad_pac_set_min', 'upcoming_event', 'date', '', '', '_', ''),
(56, 'ad_pac_set_min', 'upcoming_event', 'time', '', '', '_', ''),
(57, 'ad_pac_set_min', 'upcoming_event', 'cost', '', '', '_', ''),
(58, 'ad_pac_set_min', 'upcoming_event', 'location', '', '', '_', ''),
(59, 'ad_pac_set_min', 'news', 'id', '', '', '_', ''),
(60, 'ad_pac_set_min', 'news', 'news', '', '', '_', ''),
(69, 'policerecord', 'criminal', 'crime', '', '', '_', ''),
(70, 'policerecord', 'criminal', 'sex', '', '', '_', ''),
(71, 'policerecord', 'criminal', 'photo', '', '', '_', ''),
(72, 'oves_pharm', 'products', 'Id', '', '', '_', ''),
(73, 'oves_pharm', 'products', 'Brand_Name', '', '', '_', ''),
(74, 'oves_pharm', 'products', 'Generic Name', '', '', '_', ''),
(75, 'oves_pharm', 'products', 'Quantity', '', '', '_', ''),
(76, 'oves_pharm', 'products', 'Image', '', '', '_', ''),
(77, 'oves_pharm', 'admin', 'id', '', '', '_', ''),
(78, 'oves_pharm', 'admin', 'username1', '', '', '_', ''),
(79, 'oves_pharm', 'admin', 'password1', '', '', '_', ''),
(80, 'oves_pharm', 'add_news', 'id', '', '', '_', ''),
(81, 'oves_pharm', 'add_news', 'News', '', '', '_', ''),
(82, 'oves_pharm', 'product_name', 'id', '', '', '_', ''),
(83, 'oves_pharm', 'product_name', 'brand_name', '', '', '_', ''),
(84, 'oves_pharm', 'product_name', 'generic_name', '', '', '_', ''),
(85, 'oves_pharm', 'product_name', 'quantity', '', '', '_', ''),
(86, 'oves_pharm', 'product_name', 'product_photo', '', '', '_', ''),
(87, 'oves_pharm', 'products', 'Generic_Name', '', '', '_', ''),
(88, 'oves_pharm', 'products', 'id', '', '', '_', ''),
(89, 'ad_pac_set_min', 'Training', 'id', '', '', '_', ''),
(90, 'ad_pac_set_min', 'Training', 'name', '', '', '_', ''),
(91, 'mypharmsearch', 'signup', 'id', '', '', '_', ''),
(92, 'mypharmsearch', 'signup', 'Email', '', '', '_', ''),
(93, 'mypharmsearch', 'signup', 'name_org', '', '', '_', ''),
(94, 'mypharmsearch', 'signup', 'password', '', '', '_', ''),
(95, 'mypharmsearch', 'signup', 'location', '', '', '_', ''),
(96, 'mypharmsearch', 'signup', 'email', '', '', '_', ''),
(97, 'mypharmsearch', 'signup', 'Class', '', '', '_', ''),
(98, 'mypharmsearch', 'signup', 'Logo', '', '', '_', ''),
(99, 'mypharmsearch', 'signup', 'Address', '', '', '_', ''),
(100, 'mypharmsearch', 'signup', 'City', '', '', '_', ''),
(101, 'mypharmsearch', 'signup', 'Country', '', '', '_', ''),
(102, 'mypharmsearch', 'signup', 'Password', '', '', '_', ''),
(103, 'mypharmsearch', 'signup', 'Phone', '', '', '_', ''),
(104, 'mypharmsearch', 'signup', 'Mobile', '', '', '_', ''),
(105, 'mypharmsearch', 'signup', 'Fax', '', '', '_', ''),
(106, 'mypharmsearch', 'signup', 'Name', '', '', '_', ''),
(107, 'mypharmsearch', 'signup', 'State', '', '', '_', ''),
(108, 'mypharmsearch', 'Products', 'id', '', '', '_', ''),
(109, 'mypharmsearch', 'Products', 'Market Name', '', '', '_', ''),
(110, 'mypharmsearch', 'Products', 'Active Ingredient', '', '', '_', ''),
(111, 'mypharmsearch', 'Products', 'Indication', '', '', '_', ''),
(112, 'mypharmsearch', 'Products', 'Side Effect(s)', '', '', '_', ''),
(113, 'mypharmsearch', 'products', 'Side Effect', '', '', '_', ''),
(114, 'mypharmsearch', 'products', 'Market_Name', '', '', '_', ''),
(115, 'mypharmsearch', 'products', 'Active_Ingredient', '', '', '_', ''),
(116, 'mypharmsearch', 'products', 'Side_Effect', '', '', '_', ''),
(117, 'prosoft', 'Emails', 'id', '', '', '_', ''),
(118, 'prosoft', 'Emails', 'sender_name', '', '', '_', ''),
(119, 'prosoft', 'Emails', 'sender_email', '', '', '_', ''),
(120, 'prosoft', 'Emails', 'sender_company', '', '', '_', ''),
(121, 'prosoft', 'Emails', 'sender_country', '', '', '_', ''),
(122, 'prosoft', 'Emails', 'sender_message', '', '', '_', ''),
(123, 'prosoft', 'Emails', 'date', '', '', '_', ''),
(124, 'prosoft', 'Emails', 'time', '', '', '_', ''),
(125, 'pharmclient', 'patientInfo', 'id', '', '', '_', ''),
(126, 'pharmclient', 'patientInfo', 'name', '', '', '_', ''),
(127, 'pharmclient', 'patientInfo', 'med_condition', '', '', '_', ''),
(128, 'pharmclient', 'patientInfo', 'drugs_prescribed', '', '', '_', ''),
(129, 'pharmclient', 'patientInfo', 'dosage', '', '', '_', ''),
(130, 'pharmclient', 'patientInfo', 'date_of_next_app', '', '', '_', ''),
(131, 'pharmclient', 'patientInfo', 'time_of_next_app', '', '', '_', ''),
(141, 'pharmclient', 'patient', 'date_next', '', '', '_', ''),
(142, 'pharmclient', 'patient', 'time_next', '', '', '_', ''),
(135, 'pharmclient', 'patient', 'id', '', '', '_', ''),
(136, 'pharmclient', 'patient', 'name', '', '', '_', ''),
(137, 'pharmclient', 'patient', 'med', '', '', '_', ''),
(138, 'pharmclient', 'patient', 'drug', '', '', '_', ''),
(139, 'pharmclient', 'patient', 'email', '', '', '_', ''),
(140, 'pharmclient', 'patient', 'phone', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"pharmclient","table":"patient"},{"db":"mypharmsearch","table":"signup"},{"db":"pharmclient","table":"patientinfo"},{"db":"prosoft","table":"emails"},{"db":"pharmclient","table":"patientInfo"},{"db":"onlinecomplaint","table":"admin"},{"db":"prosoft","table":"Emails"},{"db":"mypharmsearch","table":"products"},{"db":"ad_pac_set_min","table":"login"},{"db":"mypharmsearch","table":"Products"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma_table_info`
--

INSERT INTO `pma_table_info` (`db_name`, `table_name`, `display_field`) VALUES
('mypharmsearch', 'products', 'Market_Name');

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'mypharmsearch', 'signup', '{"sorted_col":"`signup`.`Name` DESC"}', '2016-05-18 21:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-05-25 00:56:11', '{"collation_connection":"utf8mb4_general_ci","Export\\/file_template_database":"@DATABASE"}');
--
-- Database: `policerecord`
--

-- --------------------------------------------------------

--
-- Table structure for table `criminal`
--

CREATE TABLE IF NOT EXISTS `criminal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `crime` text NOT NULL,
  `sex` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `password`) VALUES
(1, 'lydia', 'lydia');
--
-- Database: `prosoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(100) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `sender_company` varchar(100) NOT NULL,
  `sender_country` varchar(100) NOT NULL,
  `sender_message` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `sender_name`, `sender_email`, `sender_company`, `sender_country`, `sender_message`, `date`, `time`) VALUES
(26, 'abanaba', 'dgfhjk@fgh', 'fghjkl', 'Afghanistan', 'fghjkl;', '2016/06/25', '09:07:12pm'),
(27, 'abanaba', 'dgfhjk@fgh', 'fghjkl', 'Afghanistan', 'fghjkl;', '2016/06/25', '09:07:18pm'),
(28, 'bini', 'fghj@fghjk', 'ghjkl', 'Ghana', 'ghjkgh', '2016/06/25', '21:09:38pm'),
(29, 'bini', 'fghj@fghjk', 'ghjkl', 'Ghana', 'ghjkgh', '2016/06/25', '21:11:12pm'),
(30, 'ubini', 'dfgh@gh', 'ghjk', 'Ghana', 'kghjk\r\n', '2016/06/25', '21:11:23pm'),
(31, '', '', '', '', '', '', ''),
(32, '', '', '', '', '', '', ''),
(33, '', '', '', '', '', '', ''),
(34, 'ltikjuy', 'fghj@ghj', 'ghjkl', 'Afghanistan', 'ghjkl', '2016/06/25', '21:14:21pm'),
(35, 'ltikjuy', 'fghj@ghj', 'ghjkl', 'Afghanistan', 'ghjkl', '2016/06/25', '21:21:03pm'),
(36, 'isaac oboidhe', 'isaac@gmail.com', 'obozik', 'Nigeria', 'i love', '2016/06/25', '21:21:33pm'),
(37, 'isaac oboidhe', 'isaac@gmail.com', 'obozik', 'Nigeria', 'i love', '2016/06/25', '09:24:20pm'),
(38, 'aghogho', 'maina@gh', 'triple', 'Afghanistan', 'triple a n lydia', '2016/06/25', '09:24:58pm'),
(39, 'aghogho', 'maina@gh', 'triple', 'Afghanistan', 'triple a n lydia', '2016/06/25', '09:25:43pm'),
(40, 'mena', 'mean@gmail.com', 'ghjkl', 'Afghanistan', 'ghjkl', '2016/06/25', '09:25:59pm'),
(41, 'mena', 'mean@gmail.com', 'ghjkl', 'Afghanistan', 'ghjkl', '2016/06/25', '09:28:25pm'),
(42, 'last time', 'last@time.com', 'last time', 'Afghanistan', 'fgtyhjkl;''', '2016/06/25', '09:28:54pm'),
(43, 'last time', 'last@time.com', 'last time', 'Afghanistan', 'fgtyhjkl;''', '2016/06/25', '09:29:45pm'),
(44, 'try again', 'try@agin.com', 'fghjkl;', 'Taiwan', '45t6yui', '2016/06/25', '09:30:07pm'),
(45, 'try again', 'try@agin.com', 'fghjkl;', 'Taiwan', '45t6yui', '2016/06/25', '09:30:58pm'),
(46, 'mememe', 'me@me.me', 'mememe', 'Afghanistan', 'mememe', '2016/06/25', '09:31:12pm'),
(47, 'rtyui', 'tyhj@hjk', 'tyuio', 'Afghanistan', 'tyuio', '2016/06/27', '02:39:03am'),
(48, 'rtyui', 'tyhj@hjk', 'tyuio', 'Afghanistan', 'tyuio', '2016/06/27', '02:52:35am'),
(49, 'efgyh', 'dfg@f', 'sfgh', 'Afghanistan', 'dfg', '2016/06/27', '02:52:55am'),
(50, 'lyssy', 'byue@ghhgh', 'hhjhghjj', 'Afghanistan', 'hhjkkh', '2016/06/28', '09:33:44pm'),
(51, 'lyssy', 'byue@ghhgh', 'hhjhghjj', 'Afghanistan', 'hhjkkh', '2016/06/28', '09:34:25pm'),
(52, 'tryrer', 'dfgh@ghjk', '', 'Fiji', 'fghjk', '2016/06/28', '09:34:39pm'),
(53, 'fyguhij', 'gyhujik@gh', 'ghjkl', 'Afghanistan', 'ghjkoh', '2016/08/06', '07:21:22am'),
(54, 'Oboidhe Lydia', 'lydiaoboidhe@gmail.com', 'ghjkl', 'Afghanistan', 'qweefd\r\n', '2016/08/07', '06:27:10pm'),
(55, 'fyguhij', 'lydiaoboidhe@gmail.com', 'ghjkl', 'Afghanistan', 'dfghj', '2016/08/07', '07:39:09pm');
--
-- Database: `studentportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `personal_data`
--

CREATE TABLE IF NOT EXISTS `personal_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `personal_data`
--

INSERT INTO `personal_data` (`ID`, `Name`, `Email`, `Phone`, `Username`, `Password`) VALUES
(10, 'lydia', 'lydia@yahoo.com', '067890', 'instructor', 'chris'),
(11, 'Oni', 'oni@gmail.com', '080932', 'phone', 'phone');
--
-- Database: `test`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
