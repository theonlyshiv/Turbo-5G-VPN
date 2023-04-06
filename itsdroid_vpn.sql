-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2022 at 04:16 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itsdroid_vpn`
--

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(9) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `identifier` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `text`, `identifier`) VALUES
(1, 'What is VPN?', 'Use google to find out some relevant information.', 'vpnservice');

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(9) NOT NULL,
  `servername` varchar(60) NOT NULL,
  `line` varchar(40) NOT NULL,
  `ping` varchar(20) NOT NULL,
  `hostname` varchar(120) NOT NULL,
  `country` varchar(120) NOT NULL,
  `countryflag` varchar(130) NOT NULL,
  `ovpn` longtext NOT NULL,
  `ip` varchar(15) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `identifier` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `about` longtext NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `identifier` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `about`, `facebook`, `twitter`, `website`, `identifier`) VALUES
(1, 'Your about text goes here. This text is completely <b><i>HTML</i></b>. And can be customized from your <span style=\"color:red;\">Admin Panel</span>', '#', '#', '#', 'vpnservice');

-- --------------------------------------------------------

--
-- Table structure for table `vpns`
--

CREATE TABLE `vpns` (
  `id` int(9) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `identifier` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vpns`
--

INSERT INTO `vpns` (`id`, `email`, `password`, `identifier`) VALUES
(1, 'vpnservice@coddoc.in', 'fcea920f7412b5da7be0cf42b8c93759', 'vpnservice');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vpns`
--
ALTER TABLE `vpns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vpns`
--
ALTER TABLE `vpns`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
