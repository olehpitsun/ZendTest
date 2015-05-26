-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2015 at 01:07 PM
-- Server version: 5.5.43
-- PHP Version: 5.3.10-1ubuntu3.18

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `guestbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `guestlist`
--

CREATE TABLE IF NOT EXISTS `guestlist` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` text NOT NULL,
  `website` text NOT NULL,
  `text` text NOT NULL,
  `ip_address` text NOT NULL,
  `browser_type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `guestlist`
--

INSERT INTO `guestlist` (`id`, `username`, `email`, `website`, `text`, `ip_address`, `browser_type`) VALUES
(15, 'ert', 'pichyn7@gmail.com', 'cascacac', 'cascacacacaca', '127.0.0.1', 'Chrome'),
(16, 'sdvsdv', 'pichyn7@gmail.com', 'vsd', 'vsdvs', '127.0.0.1', 'Chrome'),
(17, 'ascas', 'pichyn7@gmail.com', 'casc', 'acacac', '127.0.0.1', 'Chrome'),
(18, 'ZCZcvdsvdsvdsvsdbd', 'pichyn7@gmail.com', 'cZCcbsdbsdb', 'CCdsbsdbsdbsdbsd', '127.0.0.1', 'Chrome'),
(19, 'ZCZ', 'pichyn7@gmail.com', 'cZCc', 'CC', '127.0.0.1', 'Chrome'),
(20, 'xczc', 'pichyn7@gmail.com', 'zcz', 'zxc', '127.0.0.1', 'Chrome'),
(21, 'aaa', 'pichyn7@gmail.com', 'zcz', 'zxc', '127.0.0.1', 'Chrome'),
(22, 'xczcsfsfdfsdfsfsdfsd', 'pichyn7@gmail.com', 'zcz', 'zxc', '127.0.0.1', 'Chrome'),
(23, 'xczcsfsfdfsdfsffdsffdssdfsd', 'pichyn7@gmail.com', 'zcz', 'zxc', '127.0.0.1', 'Chrome'),
(24, 'cdscds', 'pichyn7@gmail.com', 'vdsvds', 'vsdvsdvsd', '127.0.0.1', 'Chrome'),
(25, 'gg', 'pichyn7@ukr.net', 'dfg', 'dfgdfgd', '127.0.0.1', 'Chrome'),
(26, 'ouiouio', 'pichyn7@ukr.net', 'oiuo', 'uioui', '127.0.0.1', 'Chrome'),
(29, 'sacac', 'pichyn7@gmail.com', 'casc', 'ascasc', '127.0.0.1', 'Chrome'),
(30, 'wqd', 'pichyn7@gmail.com', 'dwqdq', 'wdqwdq', '127.0.0.1', 'Chrome'),
(31, 'cas', 'pichyn7@gmail.com', '', 'sfvsdvsvs', '127.0.0.1', 'Chrome'),
(33, 'qx', 'pichyn7@gmail.com', 'fewf', 'fewfw', '127.0.0.1', 'Chrome'),
(35, 'dsads', 'pichyn7@gmail.com', 'asd', 'dasdsa', '127.0.0.1', 'Chrome'),
(36, 'ZxZXzx', 'pichyn7@gmail.com', 'sac', 'sacas', '127.0.0.1', 'Chrome'),
(37, 'hrth', 'hrtthr', 'hrth', 'rthrthtr', '127.0.0.1', 'Chrome'),
(38, 'htrh', 'pichyn7@gmail.com', 'thtrh', 'rthrt', '127.0.0.1', 'Chrome'),
(39, 'htrh', 'pichyn7@gmail.com', 'thtrh', 'rthrt', '127.0.0.1', 'Chrome'),
(40, 'adminvferfer', 'pichyn7@ukr.net', 'rev', 'revrev', '127.0.0.1', 'Chrome'),
(41, 'adminvferferdsfsd', 'pichyn7@ukr.net', 'rev', 'revrev', '127.0.0.1', 'Chrome'),
(42, 'fefer1', 'pichyn7@gmail.com', 'ferf', 'erfer', '127.0.0.1', 'Chrome'),
(43, 'regreg', 'pichyn7@gmail.com', 'reg', 'regeger', '127.0.0.1', 'Chrome'),
(44, 'cascac', 'pichyn7@ukr.net', 'csacasas', 'cascasas', '127.0.0.1', 'Chrome'),
(46, 'xsax', 'pichyn7@gmail.com', 'xasxa', 'dasdadaadaddasd', '127.0.0.1', 'Chrome'),
(48, 'zXZZ', 'qfqe@ukr.net', 'xzxzX', 'xZXZXZ', '127.0.0.1', 'Firefox'),
(49, 'олег', 'qfqe@ukr.net', 'свісі', 'вмівмівівмі', '127.0.0.1', 'Firefox'),
(50, 'csdcsdvsdv', 'qfqe@ukr.net', 'sdvs', 'vsdvsd', '127.0.0.1', 'Firefox'),
(51, 'олько', 'qfqe@ukr.net', 'мвам', 'авмавмавмавмвамва', '127.0.0.1', 'Firefox'),
(52, 'czxczcxcxcxzcxc', 'qfqe@ukr.net', 'cxzccc', 'zxczxc', '127.0.0.1', 'Firefox');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `created`, `modified`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'pichyn7@ukr.net', 'admin', '2015-05-22 00:00:00', '2015-05-22 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
