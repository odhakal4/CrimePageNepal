-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2013 at 09:29 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crimepagenepal`
--

-- --------------------------------------------------------

--
-- Table structure for table `affected`
--

CREATE TABLE IF NOT EXISTS `affected` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `sex` int(1) NOT NULL,
  `vdcmunicipality` int(11) NOT NULL,
  `familymembers` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `justiced` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vdcmunicipality` (`vdcmunicipality`),
  KEY `vdcmunicipality_2` (`vdcmunicipality`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `affectedfiles`
--

CREATE TABLE IF NOT EXISTS `affectedfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `crime` int(11) NOT NULL,
  `affected` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `dateofentry` varchar(20) NOT NULL,
  `dateofevent` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `publicview` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crime` (`crime`,`affected`),
  KEY `affected` (`affected`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `anchal`
--

CREATE TABLE IF NOT EXISTS `anchal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dr` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `lat` double NOT NULL,
  `lang` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dr` (`dr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE IF NOT EXISTS `crime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crimecategory` int(11) NOT NULL,
  `criminal` int(11) NOT NULL,
  `affected` int(11) NOT NULL,
  `dateofentry` varchar(20) NOT NULL,
  `dateofevent` varchar(20) NOT NULL,
  `vdcmunicipality` int(11) NOT NULL,
  `location` varchar(40) NOT NULL,
  `uploadedby` int(11) NOT NULL,
  `ipaddress` varchar(50) NOT NULL,
  `macaddress` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `publicview` int(1) NOT NULL,
  `description` varchar(200) NOT NULL,
  `solved` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crimecategory` (`crimecategory`,`criminal`,`affected`,`vdcmunicipality`,`uploadedby`),
  KEY `vdcmunicipality` (`vdcmunicipality`),
  KEY `affected` (`affected`),
  KEY `criminal` (`criminal`),
  KEY `crimecategory_2` (`crimecategory`),
  KEY `vdcmunicipality_2` (`vdcmunicipality`),
  KEY `uploadedby` (`uploadedby`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `crimecategory`
--

CREATE TABLE IF NOT EXISTS `crimecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `criminal`
--

CREATE TABLE IF NOT EXISTS `criminal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `sex` int(1) NOT NULL,
  `vdcmunicipality` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `stillonjail` int(1) NOT NULL,
  `dateofenter` varchar(20) NOT NULL,
  `dateofexit` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vdcmunicipality` (`vdcmunicipality`),
  KEY `vdcmunicipality_2` (`vdcmunicipality`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `criminalfiles`
--

CREATE TABLE IF NOT EXISTS `criminalfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `crime` int(11) NOT NULL,
  `criminal` int(11) NOT NULL,
  `dateofentry` varchar(20) NOT NULL,
  `dateofevent` varchar(20) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `publicview` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crime` (`crime`,`criminal`),
  KEY `criminal` (`criminal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `anchal` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `lat` double NOT NULL,
  `lang` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anchal` (`anchal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dr`
--

CREATE TABLE IF NOT EXISTS `dr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `lat` double NOT NULL,
  `lang` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `headquarter`
--

CREATE TABLE IF NOT EXISTS `headquarter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `vdcmunicipality` int(11) NOT NULL,
  `parentheadquarter` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`,`vdcmunicipality`,`parentheadquarter`),
  KEY `parentheadquarter` (`parentheadquarter`),
  KEY `vdcmunicipality` (`vdcmunicipality`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `headquarterslevel`
--

CREATE TABLE IF NOT EXISTS `headquarterslevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `parentlevel` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentlevel` (`parentlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE IF NOT EXISTS `police` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `headquarter` int(11) NOT NULL,
  `policelevel` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userlevel` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `headquarter` (`headquarter`,`policelevel`,`userlevel`),
  KEY `policelevel` (`policelevel`),
  KEY `userlevel` (`userlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `policelevel`
--

CREATE TABLE IF NOT EXISTS `policelevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userlevel`
--

CREATE TABLE IF NOT EXISTS `userlevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `allshow` int(1) NOT NULL,
  `verify` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vdcmunicipality`
--

CREATE TABLE IF NOT EXISTS `vdcmunicipality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `district` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `lat` double NOT NULL,
  `lang` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `district` (`district`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `affected`
--
ALTER TABLE `affected`
  ADD CONSTRAINT `affected_ibfk_1` FOREIGN KEY (`vdcmunicipality`) REFERENCES `vdcmunicipality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `affectedfiles`
--
ALTER TABLE `affectedfiles`
  ADD CONSTRAINT `affectedfiles_ibfk_2` FOREIGN KEY (`affected`) REFERENCES `affected` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affectedfiles_ibfk_1` FOREIGN KEY (`crime`) REFERENCES `crime` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `anchal`
--
ALTER TABLE `anchal`
  ADD CONSTRAINT `anchal_ibfk_1` FOREIGN KEY (`dr`) REFERENCES `dr` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crime`
--
ALTER TABLE `crime`
  ADD CONSTRAINT `crime_ibfk_5` FOREIGN KEY (`uploadedby`) REFERENCES `police` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crime_ibfk_1` FOREIGN KEY (`crimecategory`) REFERENCES `crimecategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crime_ibfk_2` FOREIGN KEY (`criminal`) REFERENCES `criminal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crime_ibfk_3` FOREIGN KEY (`affected`) REFERENCES `affected` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crime_ibfk_4` FOREIGN KEY (`vdcmunicipality`) REFERENCES `vdcmunicipality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `criminal`
--
ALTER TABLE `criminal`
  ADD CONSTRAINT `criminal_ibfk_1` FOREIGN KEY (`vdcmunicipality`) REFERENCES `vdcmunicipality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `criminalfiles`
--
ALTER TABLE `criminalfiles`
  ADD CONSTRAINT `criminalfiles_ibfk_2` FOREIGN KEY (`criminal`) REFERENCES `criminal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `criminalfiles_ibfk_1` FOREIGN KEY (`crime`) REFERENCES `crime` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `district_ibfk_1` FOREIGN KEY (`anchal`) REFERENCES `anchal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `headquarter`
--
ALTER TABLE `headquarter`
  ADD CONSTRAINT `headquarter_ibfk_3` FOREIGN KEY (`vdcmunicipality`) REFERENCES `vdcmunicipality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `headquarter_ibfk_1` FOREIGN KEY (`level`) REFERENCES `headquarterslevel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `headquarter_ibfk_2` FOREIGN KEY (`parentheadquarter`) REFERENCES `headquarter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `headquarterslevel`
--
ALTER TABLE `headquarterslevel`
  ADD CONSTRAINT `headquarterslevel_ibfk_1` FOREIGN KEY (`parentlevel`) REFERENCES `headquarterslevel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `police`
--
ALTER TABLE `police`
  ADD CONSTRAINT `police_ibfk_3` FOREIGN KEY (`userlevel`) REFERENCES `userlevel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `police_ibfk_1` FOREIGN KEY (`headquarter`) REFERENCES `headquarter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `police_ibfk_2` FOREIGN KEY (`policelevel`) REFERENCES `policelevel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vdcmunicipality`
--
ALTER TABLE `vdcmunicipality`
  ADD CONSTRAINT `vdcmunicipality_ibfk_1` FOREIGN KEY (`district`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
