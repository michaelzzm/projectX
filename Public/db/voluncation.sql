-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 10, 2014 at 09:29 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `voluncation`
--

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
CREATE TABLE IF NOT EXISTS `destination` (
  `destination_id` int(11) NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`destination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`destination_id`, `city`, `country`) VALUES
(0, 'SHANGHAI', 'CHINA'),
(1, 'NEW YORK', 'U.S.A'),
(2, 'SYDNEY', 'AUSTRALIA');

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

DROP TABLE IF EXISTS `project_category`;
CREATE TABLE IF NOT EXISTS `project_category` (
  `category_id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_category`
--

INSERT INTO `project_category` (`category_id`, `type`) VALUES
(0, 'VOLUNTEER'),
(1, 'STUDY'),
(2, 'TEACH'),
(3, 'INTERN');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

DROP TABLE IF EXISTS `project_details`;
CREATE TABLE IF NOT EXISTS `project_details` (
  `project_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`project_id`, `description`) VALUES
(0, 'We are a non-government, non-religious, non-political community development project aimed at providing humanitarian aid to the neediest in our community. The Neo-Humanist philosophy is the guiding principle of our project. Simply stated, we believe that we should love and care for all beings in the universe.');

-- --------------------------------------------------------

--
-- Table structure for table `project_search`
--

DROP TABLE IF EXISTS `project_search`;
CREATE TABLE IF NOT EXISTS `project_search` (
  `project_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `span_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_search`
--

INSERT INTO `project_search` (`project_id`, `destination_id`, `category_id`, `span_id`) VALUES
(0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_span`
--

DROP TABLE IF EXISTS `time_span`;
CREATE TABLE IF NOT EXISTS `time_span` (
  `span_id` int(11) NOT NULL,
  `min_day` int(11) NOT NULL,
  `max_day` int(11) DEFAULT NULL,
  PRIMARY KEY (`span_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_span`
--

INSERT INTO `time_span` (`span_id`, `min_day`, `max_day`) VALUES
(0, 1, 7),
(1, 8, 14),
(2, 14, 30),
(3, 31, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `create_time`) VALUES
(0, 'yyang', 'yyb@sjtu.edu.cn', '123', '2014-10-10 16:28:37'),
(1, 'yibin', 'yyb@sina.com.cn', '123', '2014-10-10 19:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) DEFAULT NULL,
  `real_name` varchar(255) NOT NULL,
  `birthday` datetime NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
