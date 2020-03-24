-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 09 Mars 2020 à 11:36
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hopital_jds`
--

-- --------------------------------------------------------

--
-- Structure de la table `admission`
--

CREATE TABLE `admission` (
  `idADM` int(11) NOT NULL,
  `idPH` int(11) NOT NULL,
  `idRoom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dossieradmission`
--

CREATE TABLE `dossieradmission` (
  `idDOS` int(11) NOT NULL,
  `idPat` int(11) NOT NULL,
  `idADM` int(11) NOT NULL,
  `idPatho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `histopatient`
--

CREATE TABLE `histopatient` (
  `idhistoPat` int(11) NOT NULL,
  `idPat` int(11) NOT NULL,
  `idPatho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `opesubir`
--

CREATE TABLE `opesubir` (
  `idOpe` int(11) NOT NULL,
  `dateOpe` varchar(24) NOT NULL,
  `heureDebOpe` varchar(24) NOT NULL,
  `heureFinOpe` varchar(24) NOT NULL,
  `idPH` int(11) NOT NULL,
  `idPat` int(11) NOT NULL,
  `idOpeEffect` int(11) NOT NULL,
  `descOpe` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pathologie`
--

CREATE TABLE `pathologie` (
  `idPatho` int(11) NOT NULL,
  `libPatho` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `idPat` int(11) NOT NULL,
  `numSecuSoc` varchar(15) NOT NULL,
  `nomPat` varchar(64) NOT NULL,
  `prenompat` varchar(64) NOT NULL,
  `telPat` varchar(24) DEFAULT NULL,
  `ruePat` varchar(128) NOT NULL,
  `CPPat` varchar(5) NOT NULL,
  `villePat` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personnelh`
--

CREATE TABLE `personnelh` (
  `idPH` int(11) NOT NULL,
  `nomPH` varchar(64) NOT NULL,
  `prenomPH` varchar(64) NOT NULL,
  `telPH` varchar(10) NOT NULL,
  `idPro` int(11) NOT NULL,
  `idRoleAppPH` int(11) NOT NULL,
  `villePH` varchar(128) NOT NULL,
  `CPPH` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `profession`
--

CREATE TABLE `profession` (
  `idPro` int(11) NOT NULL,
  `libPro` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `registrevisit`
--

CREATE TABLE `registrevisit` (
  `idRegVisit` int(11) NOT NULL,
  `idVisit` int(11) NOT NULL,
  `idPH` int(11) NOT NULL,
  `dateVisit` varchar(24) NOT NULL,
  `heureVisit` varchar(24) NOT NULL,
  `idPat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `roleapp`
--

CREATE TABLE `roleapp` (
  `idRole` int(11) NOT NULL,
  `librole` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `idRoom` int(11) NOT NULL,
  `idTypeRoom` int(11) NOT NULL,
  `capacite` int(11) NOT NULL,
  `idSecteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE `secteur` (
  `idSecteur` int(11) NOT NULL,
  `libSecteur` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `secusociale`
--

CREATE TABLE `secusociale` (
  `idSecu` int(11) NOT NULL,
  `libSecu` varchar(64) NOT NULL,
  `%remboursement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `typeroom`
--

CREATE TABLE `typeroom` (
  `idTypeRoom` int(11) NOT NULL,
  `libTypeRoom` varchar(254) NOT NULL,
  `prixTypeRoom` float(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `idVisit` int(11) NOT NULL,
  `nomVisit` varchar(64) NOT NULL,
  `prenomVisit` varchar(64) NOT NULL,
  `telVisit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`idADM`),
  ADD KEY `idRoom` (`idRoom`);

--
-- Index pour la table `dossieradmission`
--
ALTER TABLE `dossieradmission`
  ADD PRIMARY KEY (`idDOS`),
  ADD KEY `idPat` (`idPat`,`idADM`,`idPatho`);

--
-- Index pour la table `histopatient`
--
ALTER TABLE `histopatient`
  ADD PRIMARY KEY (`idhistoPat`),
  ADD KEY `idPat` (`idPat`,`idPatho`);

--
-- Index pour la table `opesubir`
--
ALTER TABLE `opesubir`
  ADD PRIMARY KEY (`idOpe`),
  ADD KEY `idOpeEffect` (`idOpeEffect`),
  ADD KEY `idPH` (`idPH`,`idPat`);

--
-- Index pour la table `pathologie`
--
ALTER TABLE `pathologie`
  ADD PRIMARY KEY (`idPatho`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`idPat`,`numSecuSoc`);

--
-- Index pour la table `personnelh`
--
ALTER TABLE `personnelh`
  ADD PRIMARY KEY (`idPH`);

--
-- Index pour la table `profession`
--
ALTER TABLE `profession`
  ADD PRIMARY KEY (`idPro`);

--
-- Index pour la table `registrevisit`
--
ALTER TABLE `registrevisit`
  ADD PRIMARY KEY (`idRegVisit`),
  ADD KEY `idVisit` (`idVisit`,`idPH`,`idPat`);

--
-- Index pour la table `roleapp`
--
ALTER TABLE `roleapp`
  ADD PRIMARY KEY (`idRole`);

--
-- Index pour la table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`idRoom`),
  ADD KEY `idTypeRoom` (`idTypeRoom`,`idSecteur`);

--
-- Index pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`idSecteur`);

--
-- Index pour la table `secusociale`
--
ALTER TABLE `secusociale`
  ADD PRIMARY KEY (`idSecu`);

--
-- Index pour la table `typeroom`
--
ALTER TABLE `typeroom`
  ADD PRIMARY KEY (`idTypeRoom`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`idVisit`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admission`
--
ALTER TABLE `admission`
  MODIFY `idADM` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dossieradmission`
--
ALTER TABLE `dossieradmission`
  MODIFY `idDOS` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `histopatient`
--
ALTER TABLE `histopatient`
  MODIFY `idhistoPat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `opesubir`
--
ALTER TABLE `opesubir`
  MODIFY `idOpe` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pathologie`
--
ALTER TABLE `pathologie`
  MODIFY `idPatho` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `personnelh`
--
ALTER TABLE `personnelh`
  MODIFY `idPH` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `profession`
--
ALTER TABLE `profession`
  MODIFY `idPro` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `registrevisit`
--
ALTER TABLE `registrevisit`
  MODIFY `idRegVisit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `roleapp`
--
ALTER TABLE `roleapp`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `room`
--
ALTER TABLE `room`
  MODIFY `idRoom` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `secteur`
--
ALTER TABLE `secteur`
  MODIFY `idSecteur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `secusociale`
--
ALTER TABLE `secusociale`
  MODIFY `idSecu` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `idVisit` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
