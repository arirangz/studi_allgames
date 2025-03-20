-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 20 mars 2025 à 18:57
-- Version du serveur : 5.7.36
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `studi_allgames`
--

-- --------------------------------------------------------

--
-- Structure de la table `editor`
--

DROP TABLE IF EXISTS `editor`;
CREATE TABLE IF NOT EXISTS `editor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `editor`
--

INSERT INTO `editor` (`id`, `name`) VALUES
(1, 'Nintendo'),
(2, 'Bethesda Softworks'),
(3, 'Square Enix'),
(4, 'Capcom'),
(5, 'Psyonix'),
(6, 'Toby Fox'),
(7, 'Epic Games'),
(8, 'PUBG Corporation'),
(9, 'Rockstar Games'),
(10, 'CD Projekt'),
(11, 'Mojang'),
(12, 'InnerSloth'),
(13, 'Valve Corporation'),
(14, 'Riot Games'),
(15, 'Blizzard Entertainment');

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `editor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `editor_id` (`editor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id`, `name`, `description`, `release_date`, `image`, `editor_id`) VALUES
(1, 'The Legend of Zelda: Tears of the Kingdom', 'Plongez dans une aventure épique à travers le royaume d\'Hyrule, où vous explorerez des donjons, résoudrez des énigmes et affronterez des ennemis redoutables. Avec de nouvelles capacités et un vaste monde ouvert à découvrir, ce jeu offre une expérience immersive et captivante.', '2023-05-12', '', 1),
(2, 'Starfield', 'Partez à la découverte des étoiles dans ce jeu de rôle et d\'action futuriste. Explorez des planètes inconnues, interagissez avec des factions spatiales et façonnez votre propre destinée parmi les étoiles. Avec une liberté totale et des possibilités infinies, Starfield promet une aventure galactique inoubliable.', '2023-09-06', '', 2),
(3, 'Final Fantasy XVI', 'Embarquez dans une aventure à haut risque dans le monde de Valisthea, où la magie et la technologie se rencontrent. Avec des combats intenses, une histoire riche et des personnages mémorables, Final Fantasy XVI vous plonge dans un univers fantastique où chaque décision compte.', '2023-06-22', '', 3),
(4, 'Resident Evil 4 (Remake)', 'Revivez le classique jeu de survie et d\'horreur avec des graphismes modernes et des mécaniques de jeu améliorées. Incarnez Leon Kennedy et affrontez des hordes de créatures terrifiantes tout en résolvant des mystères dans un village espagnol isolé. Ce remake offre une expérience intense et immersive.', '2023-03-24', '', 4),
(5, 'Street Fighter 6', 'Affrontez des adversaires du monde entier dans le dernier opus de la célèbre série de jeux de combat. Avec de nouveaux personnages, des modes de jeu innovants et des graphismes époustouflants, Street Fighter 6 promet des combats intenses et stratégiques.', '2023-06-02', '', 4),
(6, 'Rocket League', 'Fusionnez l\'action et le football dans ce jeu compétitif où les véhicules remplacent les joueurs. Personnalisez votre voiture et participez à des matchs endiablés en ligne ou en local. Avec des mises à jour régulières et une communauté active, Rocket League offre des heures de divertissement.', '2015-07-07', '', 5),
(7, 'Undertale', 'Plongez dans un RPG unique où vos choix façonnent l\'histoire. Dans un monde souterrain peuplé de monstres, vous pouvez choisir de combattre ou de parler pour résoudre les conflits. Avec une narration captivante et des personnages attachants, Undertale offre une expérience inoubliable.', '2015-09-15', '', 6),
(8, 'Fortnite', 'Affrontez 99 autres joueurs dans une bataille royale où seul le dernier survivant est déclaré vainqueur. Construisez des structures, trouvez des armes et utilisez des compétences uniques pour prendre l\'avantage. Avec des mises à jour régulières et des événements spéciaux, Fortnite offre une expérience toujours renouvelée.', '2017-07-25', '', 7),
(9, 'PUBG', 'Survivez sur une île où 100 joueurs s\'affrontent pour être le dernier en vie. Récupérez des armes, des véhicules et des équipements pour prendre l\'avantage. Avec des environnements variés et des mécaniques de jeu réalistes, PUBG offre une expérience de survie intense et compétitive.', '2017-12-20', '', 8),
(10, 'GTA V', 'Explorez la ville de Los Santos et ses environs dans cette aventure en monde ouvert pleine d\'opportunités. Incarnez trois criminels et participez à des braquages audacieux, des courses-poursuites et des missions variées. Avec une narration riche et un monde vivant, GTA V offre une expérience immersive.', '2013-09-17', '', 9),
(11, 'The Witcher 3', 'Partez à l\'aventure dans un monde ouvert rempli de quêtes, de créatures fantastiques et de choix moraux. Incarnez Geralt de Riv et utilisez vos compétences de sorceleur pour résoudre des mystères et affronter des ennemis redoutables. Avec une narration captivante et des graphismes époustouflants, The Witcher 3 offre une expérience inoubliable.', '2015-05-19', '', 10),
(12, 'Minecraft', 'Construisez, explorez et survivez dans un monde généré aléatoirement. Minecraft offre une liberté totale pour créer tout ce que vous pouvez imaginer. Avec des modes de jeu variés et une communauté active, Minecraft est un jeu bac à sable incontournable pour tous les âges.', '2011-11-18', '', 11),
(13, 'Among Us', 'Jouez en ligne avec vos amis dans ce jeu multijoueur où vous incarnez des membres d\'équipage ou des imposteurs. Accomplissez des tâches, démasquez les imposteurs ou sabotez le vaisseau sans vous faire repérer. Avec des parties rapides et intenses, Among Us offre des heures de divertissement.', '2018-06-15', '', 12),
(14, 'Cyberpunk 2077', 'Explorez la ville futuriste de Night City dans cette aventure en monde ouvert. Incarnez V, un mercenaire à la recherche d\'un implant unique, et faites des choix qui façonneront votre destin. Avec des combats intenses, une narration riche et des graphismes impressionnants, Cyberpunk 2077 offre une expérience immersive.', '2020-12-10', '', 10),
(15, 'Red Dead Redemption 2', 'Plongez dans une épopée western à la fin du XIXe siècle. Incarnez Arthur Morgan et participez à des braquages, des chasses à l\'homme et des missions variées. Avec un monde ouvert immense, une narration captivante et des graphismes réalistes, Red Dead Redemption 2 offre une expérience inoubliable.', '2018-10-26', '', 9),
(16, 'Like a Dragon: Infinite Wealth', 'Explorez un monde ouvert rempli de possibilités et de défis. Incarnez un héros et affrontez des ennemis redoutables dans des combats intenses. Avec une narration riche, des personnages mémorables et des graphismes époustouflants, Like a Dragon: Infinite Wealth promet une aventure captivante.', '2024-01-19', '', 15),
(17, 'Spider-Man 2', 'Incarnez le célèbre super-héros dans une nouvelle aventure pleine d\'action. Balancez-vous à travers la ville, affrontez des ennemis redoutables et découvrez une histoire captivante. Avec des combats fluides, des graphismes impressionnants et des mécaniques de jeu innovantes, Spider-Man 2 promet une expérience inoubliable.', '2024-10-04', '', 15);

-- --------------------------------------------------------

--
-- Structure de la table `game_genre`
--

DROP TABLE IF EXISTS `game_genre`;
CREATE TABLE IF NOT EXISTS `game_genre` (
  `game_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`game_id`,`genre_id`),
  KEY `genre_id` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `game_genre`
--

INSERT INTO `game_genre` (`game_id`, `genre_id`) VALUES
(1, 1),
(10, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(2, 2),
(3, 2),
(7, 2),
(11, 2),
(14, 2),
(4, 3),
(9, 3),
(12, 3),
(5, 4),
(13, 4),
(6, 5),
(7, 6),
(10, 6),
(11, 6),
(12, 6),
(14, 6),
(15, 6),
(6, 7),
(8, 7),
(9, 7),
(8, 9),
(9, 9),
(13, 9),
(8, 10),
(9, 10),
(12, 10),
(13, 10),
(10, 11),
(11, 11),
(14, 11),
(15, 11),
(16, 11),
(17, 11);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action-Aventure'),
(2, 'Action-RPG'),
(3, 'Survival Horror'),
(4, 'Combat'),
(5, 'Sport'),
(6, 'Aventure'),
(7, 'Tir'),
(8, 'Simulation'),
(9, 'Stratégie'),
(10, 'Multijoueur'),
(11, 'Monde Ouvert'),
(12, 'Compétitif'),
(13, 'Narratif');

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`editor_id`) REFERENCES `editor` (`id`);

--
-- Contraintes pour la table `game_genre`
--
ALTER TABLE `game_genre`
  ADD CONSTRAINT `game_genre_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  ADD CONSTRAINT `game_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
