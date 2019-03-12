-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2019 at 02:58 PM
-- Server version: 5.7.21
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `rakesh`
--

DROP TABLE IF EXISTS `rakesh`;
CREATE TABLE IF NOT EXISTS `rakesh` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `email` varchar(222) NOT NULL,
  `created_At` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rakesh`
--

INSERT INTO `rakesh` (`id`, `name`, `email`, `created_At`) VALUES
(1, 'rakesh', 'rak@gmail.com', '2019-03-11 17:34:59'),
(3, 'name', 'email@gmail.com', '2019-03-11 19:15:40'),
(4, 'name', 'email@gmail.com', '2019-03-11 19:22:00'),
(5, 'name', 'email@gmail.com', '2019-03-11 19:23:05'),
(6, 'name', 'email@gmail.com', '2019-03-11 19:25:09'),
(7, '', '', '2019-03-11 19:29:28'),
(8, '', '', '2019-03-11 19:32:08'),
(9, 'name', 'email', '2019-03-11 19:36:26'),
(10, 'name', 'email', '2019-03-11 19:36:46'),
(11, 'name', 'email', '2019-03-11 19:37:01'),
(12, 'name', 'email', '2019-03-12 12:20:12'),
(13, 'name', 'email', '2019-03-12 14:17:44'),
(14, 'name', 'email', '2019-03-12 14:19:38'),
(15, 'rakesh Roy', 'Array', '2019-03-12 14:21:38'),
(16, 'rakesh Roy Shuvo', 'r@gmail.com', '2019-03-12 14:23:41'),
(17, '', '', '2019-03-12 14:24:47');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
