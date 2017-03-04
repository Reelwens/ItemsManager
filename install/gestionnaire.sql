-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 04 Mars 2017 à 18:04
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestionnaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `mcId` int(11) NOT NULL,
  `textureImg` varchar(255) NOT NULL,
  `category` varchar(25) NOT NULL,
  `description` varchar(35) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `items`
--

INSERT INTO `items` (`id`, `title`, `mcId`, `textureImg`, `category`, `description`, `date`) VALUES
(78, 'Grass', 2, 'grass.png', 'Bloc', 'Composé de terre et d\'herbe', '2017-03-01 23:33:38'),
(127, 'Melon', 45, 'melon.png', 'Matières premières', 'J\'adore', '2017-03-04 15:48:38'),
(123, 'Table de craft', 12, 'crafting_table_side.png', 'Bloc', 'C\'est cool', '2017-03-04 00:58:34'),
(122, 'Cactus', 42, 'cactus_side.png', 'Bloc', 'Aïe ça pique !', '2017-03-04 00:58:01');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
