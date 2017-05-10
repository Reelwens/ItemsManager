-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 11 Mars 2017 à 19:01
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
(158, 'Paille', 170, 'hay_block_side.png', 'Bloc', 'Ça fait toujours un bon fauteuil', '2017-03-11 18:37:37'),
(145, 'Pierre', 4, 'cobblestone.png', 'Bloc', 'De la roche cassée', '2017-03-11 18:06:30'),
(146, 'Pousse d\'arbre', 6, 'sapling_oak.png', 'Décoratif', 'Petite pousse deviendra grande', '2017-03-11 18:15:41'),
(147, 'Bedrock', 7, 'bedrock.png', 'Bloc', 'Incassable, infranchissable', '2017-03-11 18:16:26'),
(148, 'Toile d\'araignée', 30, 'web.png', 'Décoratif', 'Idéal pour piéger vos amis', '2017-03-11 18:17:45'),
(149, 'Torche redstone', 76, 'redstone_torch_on.png', 'Redstone', 'Allumé.. Éteint.. Allumé..', '2017-03-11 18:19:47'),
(150, 'Lampe redstone', 123, 'redstone_lamp_on.png', 'Redstone', 'Une lumière de luxe', '2017-03-11 18:22:01'),
(151, 'Balise', 138, 'Balise.png', 'Divers', 'Générateur à laser infini', '2017-03-11 18:24:13'),
(152, 'Entonnoir', 154, 'hopper.png', 'Redstone', 'Un entonnoir à items', '2017-03-11 18:25:20'),
(159, 'Citrouille', 91, 'pumpkin_face_on.png', 'Bloc', 'BOUH !!', '2017-03-11 18:39:18'),
(161, 'Herbe', 2, 'grass.png', 'Bloc', 'Composé de terre et d\'herbe', '2017-03-11 18:41:53'),
(153, 'Diamant', 264, 'diamond.png', 'Matière première', 'Mon précieuuux ...!', '2017-03-11 18:26:38'),
(154, 'Épée en pierre', 272, 'stone_sword.png', 'Combat', 'Tranchez vos ennemis !', '2017-03-11 18:28:02'),
(155, 'Silex', 318, 'flint.png', 'Matière première', 'Attention, ne vous coupez pas', '2017-03-11 18:29:13'),
(156, 'Gâteau', 354, 'cake.png', 'Nourriture', 'C\'est un menteur....', '2017-03-11 18:30:41'),
(157, 'Rails', 66, 'rail_normal.png', 'Transport', 'Avec des rails, on peut aller loin', '2017-03-11 18:34:00'),
(160, 'Oeuf', 344, 'spawn_egg.png', 'Matière première', 'Une poule s\'y cache parfois', '2017-03-11 18:40:39');

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `grade` int(3) NOT NULL,
  `date_inscription` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `members`
--

INSERT INTO `members` (`id`, `pseudo`, `pass`, `grade`, `date_inscription`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, '2017-03-06 18:50:36');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT pour la table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
