-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Mer 26 Juillet 2017 à 18:33
-- Version du serveur: 5.5.27-log
-- Version de PHP: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int(100) NOT NULL AUTO_INCREMENT,
  `Code_tva` varchar(100) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `raison_sociale` varchar(100) NOT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idclient`, `Code_tva`, `Adresse`, `email`, `telephone`, `fax`, `raison_sociale`) VALUES
(2, '189', 'gabes', 'foued@gmail.com', '26854571', '75479525', 'foued dadi'),
(3, '174', 'gabes', 'firas@gmail.com', '74258963', '79521476', 'firas'),
(5, '201', '45 gabes', 'hichem@gmail.com', '524254', '4245542', 'hichem'),
(7, '4545', '45 sfax', 'hassen@jgmail.com', '28176583', '78541367', 'hassen');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE IF NOT EXISTS `devis` (
  `iddevis` int(100) NOT NULL,
  `numero_devis` int(100) NOT NULL,
  `date` date NOT NULL,
  `montant_htva` varchar(100) NOT NULL,
  `mt_tva` varchar(100) NOT NULL,
  `mt_ttc` varchar(100) NOT NULL,
  `idclient` varchar(100) NOT NULL,
  PRIMARY KEY (`iddevis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `devis`
--

INSERT INTO `devis` (`iddevis`, `numero_devis`, `date`, `montant_htva`, `mt_tva`, `mt_ttc`, `idclient`) VALUES
(2, 2, '2017-04-19', '60', '10.799999999999999', '70.8', '5');

-- --------------------------------------------------------

--
-- Structure de la table `factureclient`
--

CREATE TABLE IF NOT EXISTS `factureclient` (
  `idfactureclient` int(100) NOT NULL,
  `num_fact` int(11) NOT NULL,
  `date` date NOT NULL,
  `mthtva` varchar(100) NOT NULL,
  `mttva` varchar(100) NOT NULL,
  `mtttc` varchar(100) NOT NULL,
  `reste` varchar(100) NOT NULL,
  `idclient` int(100) NOT NULL,
  `etat` int(11) NOT NULL,
  PRIMARY KEY (`idfactureclient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `factureclient`
--

INSERT INTO `factureclient` (`idfactureclient`, `num_fact`, `date`, `mthtva`, `mttva`, `mtttc`, `reste`, `idclient`, `etat`) VALUES
(9, 9, '2017-05-03', '3000', '540.0', '3540.0', '0.0', 5, 1),
(10, 10, '2017-05-05', '1500', '270.0', '1770.0', '0.0', 5, 0),
(11, 11, '2017-05-05', '90', '16.2', '106.2', '0.0', 7, 0),
(13, 13, '2017-05-06', '132', '23.759999999999998', '155.76', '0', 5, 1),
(15, 15, '2017-05-06', '60', '10.799999999999999', '70.8', '0.0', 5, 1),
(16, 16, '2017-05-06', '88', '15.84', '103.84', '0.0', 5, 1),
(17, 17, '2017-05-06', '1500', '270.0', '1770.0', '0', 5, 1),
(18, 18, '2017-05-11', '200', '36.0', '236.0', '0.0', 5, 1),
(19, 19, '2017-05-11', '4500', '810.0', '5310.0', '5310.0', 5, 0),
(20, 20, '2017-05-10', '440.0', '79.2', '519.2', '219.20000000000005', 2, 0),
(21, 21, '2017-05-23', '2250.0', '405.0', '2655.0', '200.0', 2, 0),
(22, 22, '2017-06-08', '180', '32.4', '212.4', '12.400000000000006', 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `facturefournisseur`
--

CREATE TABLE IF NOT EXISTS `facturefournisseur` (
  `idfacturefrs` int(100) NOT NULL,
  `num_fact` int(100) NOT NULL,
  `date` date NOT NULL,
  `mthtva` varchar(100) NOT NULL,
  `mttva` varchar(100) NOT NULL,
  `mtttc` varchar(100) NOT NULL,
  `reste` varchar(100) NOT NULL,
  `idfrs` varchar(100) NOT NULL,
  `etat` int(100) NOT NULL,
  PRIMARY KEY (`idfacturefrs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `facturefournisseur`
--

INSERT INTO `facturefournisseur` (`idfacturefrs`, `num_fact`, `date`, `mthtva`, `mttva`, `mtttc`, `reste`, `idfrs`, `etat`) VALUES
(1, 1, '2017-04-24', '3000', '540', '3540', '0.0', '2', 1),
(3, 2, '2017-04-28', '880', '158.4', '1038.4', '0.0', '2', 1),
(5, 1, '2017-05-06', '1500', '270', '1770', '0.0', '6', 1);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE IF NOT EXISTS `fournisseur` (
  `idfrs` int(100) NOT NULL AUTO_INCREMENT,
  `raison_sociale` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  `Code_tva` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  PRIMARY KEY (`idfrs`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `fournisseur`
--

INSERT INTO `fournisseur` (`idfrs`, `raison_sociale`, `email`, `Adresse`, `Code_tva`, `telephone`, `fax`) VALUES
(2, 'firas', 'firas@gmail.com', 'gabes', '187', '28741369', '75213654'),
(4, 'mohamed', 'mohamed@gmail.com', 'tunis', '180', '27413982', '78521473'),
(5, 'dali', 'dali@gmail.hhh', 'sousse', '187', '27546217', '76581258'),
(6, 'farhat', 'farhat@gmail.com', '357ay azaiez', '132', '28176583', '75412369');

-- --------------------------------------------------------

--
-- Structure de la table `lignedevis`
--

CREATE TABLE IF NOT EXISTS `lignedevis` (
  `idlignedevis` int(100) NOT NULL,
  `quantité` int(100) NOT NULL,
  `idproduit` int(100) NOT NULL,
  `iddevis` int(100) NOT NULL,
  PRIMARY KEY (`idlignedevis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lignedevis`
--

INSERT INTO `lignedevis` (`idlignedevis`, `quantité`, `idproduit`, `iddevis`) VALUES
(1, 10, 4, 3),
(2, 2, 2, 2),
(3, 30, 4, 3),
(4, 10, 4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `lignefactureclient`
--

CREATE TABLE IF NOT EXISTS `lignefactureclient` (
  `idlignefacture` int(100) NOT NULL,
  `quantité` int(100) NOT NULL,
  `idproduit` int(100) NOT NULL,
  `idfacture` int(100) NOT NULL,
  PRIMARY KEY (`idlignefacture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lignefactureclient`
--

INSERT INTO `lignefactureclient` (`idlignefacture`, `quantité`, `idproduit`, `idfacture`) VALUES
(1, 30, 2, 0),
(2, 30, 4, 0),
(3, 30, 4, 0),
(4, 15, 2, 0),
(5, 10, 2, 0),
(6, 15, 3, 0),
(7, 2, 2, 3),
(8, 5, 3, 3),
(9, 5, 2, 4),
(10, 10, 2, 5),
(11, 10, 2, 6),
(12, 41, 2, 7),
(13, 20, 4, 9),
(14, 10, 2, 10),
(15, 5, 3, 10),
(16, 5, 4, 10),
(17, 10, 4, 10),
(18, 5, 3, 10),
(19, 3, 4, 10),
(20, 5, 3, 10),
(21, 3, 4, 10),
(22, 10, 4, 10),
(23, 3, 2, 11),
(24, 2, 4, 12),
(25, 3, 3, 13),
(26, 5, 4, 14),
(27, 2, 2, 15),
(28, 2, 3, 16),
(29, 10, 4, 17),
(30, 10, 2, 18),
(31, 30, 4, 19),
(32, 10, 3, 20),
(33, 15, 4, 21),
(34, 15, 5, 22);

-- --------------------------------------------------------

--
-- Structure de la table `lignefacturefrs`
--

CREATE TABLE IF NOT EXISTS `lignefacturefrs` (
  `idlignefacturefrs` int(100) NOT NULL,
  `Quantité` int(100) NOT NULL,
  `idp` int(100) NOT NULL,
  `idf` int(100) NOT NULL,
  PRIMARY KEY (`idlignefacturefrs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lignefacturefrs`
--

INSERT INTO `lignefacturefrs` (`idlignefacturefrs`, `Quantité`, `idp`, `idf`) VALUES
(1, 20, 2, 2),
(2, 20, 4, 1),
(3, 10, 2, 2),
(4, 20, 3, 3),
(5, 10, 4, 4),
(6, 10, 4, 5),
(7, 1, 4, 6),
(8, 10, 2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `idp` int(100) NOT NULL AUTO_INCREMENT,
  `Quantité` int(100) NOT NULL,
  `prixde_vente_ht` varchar(100) NOT NULL,
  `prixdachat_ht` varchar(11) NOT NULL,
  `libellé` varchar(100) NOT NULL,
  `idtypeproduit` varchar(100) NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`idp`, `Quantité`, `prixde_vente_ht`, `prixdachat_ht`, `libellé`, `idtypeproduit`) VALUES
(2, 565, '20', '20', 'lait', 'sfsdf'),
(4, 20, '150', '120', 'fgfgfg', 'aaaaa'),
(5, 150, '12', '10', 'tabac2', 'mars'),
(6, 300, '150d', '200', 'aaaaa', 'dwvc'),
(7, 481, 'fghfh', 'fgghf', 'fghgf', 'fghfg');

-- --------------------------------------------------------

--
-- Structure de la table `reglement`
--

CREATE TABLE IF NOT EXISTS `reglement` (
  `id_reglement` int(100) NOT NULL AUTO_INCREMENT,
  `Date_de_payement` date NOT NULL,
  `mode_de_payement` varchar(100) NOT NULL,
  `montant_regle` varchar(100) NOT NULL,
  `id_fact` int(100) NOT NULL,
  PRIMARY KEY (`id_reglement`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Contenu de la table `reglement`
--

INSERT INTO `reglement` (`id_reglement`, `Date_de_payement`, `mode_de_payement`, `montant_regle`, `id_fact`) VALUES
(1, '2017-04-21', 'cheque', '74', 2),
(2, '2017-04-21', 'cheque', '750', 3),
(7, '2017-04-21', 'especes', '1451.4', 7),
(8, '2017-04-14', 'especes', '300', 2),
(9, '2017-04-14', 'especes', '100', 6),
(10, '2017-04-14', 'especes', '100', 6),
(11, '2017-04-14', 'cheque', '100', 6),
(12, '2017-04-14', 'cheque', '100', 6),
(13, '2017-04-14', 'cheque', '100', 6),
(14, '2017-04-14', 'especes', '100', 6),
(15, '2017-04-14', 'cheque', '100', 6),
(16, '2017-04-14', 'cheque', '100', 6),
(17, '2017-04-08', 'cheque', '100', 6),
(18, '2017-04-25', 'especes', '0', 8),
(19, '2017-05-05', 'cheque', '3540', 9),
(20, '2017-05-05', 'cheque', '354', 10),
(21, '2017-05-05', 'especes', '354', 10),
(22, '2017-05-05', 'especes', '1770', 10),
(23, '2017-05-06', 'especes', '106.2', 11),
(24, '2017-05-06', 'cheque', '354', 12),
(25, '2017-05-06', 'especes', '155.76', 13),
(26, '2017-05-06', 'cheque', '800', 14),
(27, '2017-05-06', 'especes', '30', 14),
(28, '2017-05-06', 'autre', '30', 14),
(29, '2017-05-06', 'cheque', '25', 14),
(30, '2017-05-06', 'cheque', '70.8', 15),
(31, '2017-05-06', 'cheque', '103.84', 16),
(32, '2017-05-06', 'especes', '1770.0', 17),
(33, '2017-05-07', 'autre', '500', 6),
(34, '2017-05-07', 'cheque', '200', 9),
(35, '2017-05-08', 'especes', '100', 16),
(36, '2017-05-08', 'especes', '100', 15),
(37, '2017-05-09', 'especes', '100', 14),
(38, '2017-05-09', 'especes', '200', 12),
(39, '2017-05-11', 'autre', '300', 12),
(40, '2017-05-11', 'cheque', '100', 18),
(41, '2017-05-11', 'autre', '136', 18),
(42, '2017-05-21', 'especes', '300', 20),
(43, '2017-05-23', 'cheque', '1655', 21),
(44, '2017-05-07', 'especes', '500', 21),
(45, '2017-05-24', 'especes', '300', 21),
(46, '2017-06-08', 'especes', '200', 22);

-- --------------------------------------------------------

--
-- Structure de la table `reglement_frs`
--

CREATE TABLE IF NOT EXISTS `reglement_frs` (
  `id_reglement_frs` int(100) NOT NULL AUTO_INCREMENT,
  `Date_de_payement` date NOT NULL,
  `Mode_payement` varchar(100) NOT NULL,
  `Montant_reglé` varchar(100) NOT NULL,
  `id_fact_frs` int(100) NOT NULL,
  PRIMARY KEY (`id_reglement_frs`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `reglement_frs`
--

INSERT INTO `reglement_frs` (`id_reglement_frs`, `Date_de_payement`, `Mode_payement`, `Montant_reglé`, `id_fact_frs`) VALUES
(1, '2017-04-26', 'cheque', '300', 2),
(2, '2017-04-27', 'cheque', '54', 2),
(3, '2017-04-28', 'especes', '0', 3),
(4, '2017-05-05', 'cheque', '54', 2),
(5, '2017-05-13', 'especes', '300', 2),
(6, '2017-05-05', 'especes', '54', 2),
(7, '2017-05-05', 'cheque', '300', 2),
(8, '2017-05-05', 'autre', '54', 2),
(9, '2017-05-05', 'especes', '300', 2),
(10, '2017-05-05', 'cheque', '1770', 4),
(11, '2017-05-06', 'especes', '1500', 5),
(12, '2017-05-06', 'cheque', '100', 5),
(13, '2017-05-06', 'cheque', '1000', 5),
(14, '2017-05-07', 'cheque', '100', 4),
(15, '2017-05-07', 'especes', '100', 2),
(16, '2017-05-07', 'cheque', '200', 3),
(17, '2017-05-07', 'especes', '300', 1),
(18, '2017-05-07', 'especes', '500', 4),
(19, '2017-05-07', 'especes', '150', 6),
(20, '2017-05-07', 'cheque', '300', 6),
(21, '2017-05-07', 'especes', '300', 2),
(22, '2017-05-07', 'cheque', '200', 2),
(23, '2017-05-07', 'cheque', '100', 2),
(24, '2017-05-07', 'cheque', '200', 4),
(25, '2017-05-07', 'cheque', '300', 7),
(26, '2017-05-07', 'especes', '50', 7),
(27, '2017-05-08', 'especes', '90', 5),
(28, '2017-05-09', 'especes', '200', 5);

-- --------------------------------------------------------

--
-- Structure de la table `utilusateur`
--

CREATE TABLE IF NOT EXISTS `utilusateur` (
  `iduser` int(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `mot_de_pass` varchar(100) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilusateur`
--

INSERT INTO `utilusateur` (`iduser`, `nom`, `prenom`, `email`, `login`, `mot_de_pass`) VALUES
(1, 'farhat', 'hichem', 'ghjgj', 'hichem95', '28176583');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
