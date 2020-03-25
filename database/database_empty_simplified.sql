-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 25 mars 2020 à 15:19
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `e-mergencies`
--

-- --------------------------------------------------------

--
-- Structure de la table `administration`
--

DROP TABLE IF EXISTS `administration`;
CREATE TABLE IF NOT EXISTS `administration` (
  `aId` int(11) NOT NULL AUTO_INCREMENT,
  `aEmail` varchar(100) NOT NULL,
  `aPassword` varchar(100) NOT NULL,
  `aLastName` varchar(100) NOT NULL,
  `aFirstName` varchar(100) NOT NULL,
  `aBirthdate` varchar(8) NOT NULL,
  `aCity` varchar(100) NOT NULL,
  `aCityCode` varchar(6) NOT NULL,
  `aPhone` int(11) NOT NULL,
  `aGender` char(1) NOT NULL,
  PRIMARY KEY (`aId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hospital_staff`
--

DROP TABLE IF EXISTS `hospital_staff`;
CREATE TABLE IF NOT EXISTS `hospital_staff` (
  `hsId` int(11) NOT NULL AUTO_INCREMENT,
  `hsEmail` varchar(100) NOT NULL,
  `hsPassword` varchar(100) NOT NULL,
  `hsLastName` varchar(100) NOT NULL,
  `hsFirstName` varchar(100) NOT NULL,
  `hsBirthdate` varchar(8) NOT NULL,
  `hsCity` varchar(100) NOT NULL,
  `hsCityCode` varchar(6) NOT NULL,
  `hsPhone` varchar(100) NOT NULL,
  `hsGender` char(1) NOT NULL,
  `hsJob` varchar(100) NOT NULL,
  `hsSector` int(11) NOT NULL,
  PRIMARY KEY (`hsId`),
  KEY `hsSector` (`hsSector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pId` int(11) NOT NULL AUTO_INCREMENT,
  `pEmail` varchar(100) NOT NULL,
  `pPassword` varchar(100) NOT NULL,
  `pLastName` varchar(100) NOT NULL,
  `pFirstName` varchar(100) NOT NULL,
  `pBirthdate` varchar(8) NOT NULL,
  `pCity` varchar(100) NOT NULL,
  `pCityCode` varchar(6) NOT NULL,
  `pPhone` varchar(100) NOT NULL,
  `pGender` char(1) NOT NULL,
  `pSize` float NOT NULL,
  `pWeight` float NOT NULL,
  `pSWNum` int(11) NOT NULL,
  `pSocialWelfare` int(11) NOT NULL,
  `pRoom` int(11) NOT NULL,
  PRIMARY KEY (`pId`),
  KEY `pSocialWelfare` (`pSocialWelfare`),
  KEY `pRoom` (`pRoom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `rNum` int(11) NOT NULL,
  `rType` varchar(100) NOT NULL,
  `rPlacesNb` int(11) NOT NULL,
  `rSector` int(11) NOT NULL,
  UNIQUE KEY `UNIQUE` (`rNum`),
  KEY `rSector` (`rSector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sector`
--

DROP TABLE IF EXISTS `sector`;
CREATE TABLE IF NOT EXISTS `sector` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(100) NOT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `social_welfare`
--

DROP TABLE IF EXISTS `social_welfare`;
CREATE TABLE IF NOT EXISTS `social_welfare` (
  `swId` int(11) NOT NULL AUTO_INCREMENT,
  `swName` varchar(100) NOT NULL,
  `swRefundPercentage` float NOT NULL,
  PRIMARY KEY (`swId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `hospital_staff`
--
ALTER TABLE `hospital_staff`
  ADD CONSTRAINT `hospital_staff_ibfk_1` FOREIGN KEY (`hsSector`) REFERENCES `sector` (`sId`);

--
-- Contraintes pour la table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`pSocialWelfare`) REFERENCES `social_welfare` (`swId`),
  ADD CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`pRoom`) REFERENCES `room` (`rNum`);

--
-- Contraintes pour la table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`rSector`) REFERENCES `sector` (`sId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
