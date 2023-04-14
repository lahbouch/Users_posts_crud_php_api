-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 14 avr. 2023 à 09:25
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cc`
--

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `userId`) VALUES
(147, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 32),
(148, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 32),
(149, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 32),
(150, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 32),
(151, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 32),
(152, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 33),
(153, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 33),
(154, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 33),
(155, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 33),
(156, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 33),
(157, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 34),
(158, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 34),
(159, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 34),
(160, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 34),
(161, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 34),
(162, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 35),
(163, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 35),
(164, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 35),
(165, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 35),
(166, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 35),
(167, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 36),
(168, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 36),
(169, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 36),
(170, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 36),
(171, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 36),
(177, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 38),
(178, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 38),
(179, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 38),
(180, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 38),
(181, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 38),
(182, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 39),
(183, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 39),
(184, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 39),
(185, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 39),
(186, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 39),
(187, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 40),
(188, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 40),
(189, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 40),
(190, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 40),
(191, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 40),
(192, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 41),
(193, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 41),
(194, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 41),
(195, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 41),
(196, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 41),
(197, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 42),
(198, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 42),
(199, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 42),
(200, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 42),
(201, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 42),
(202, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 43),
(203, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 43),
(204, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 43),
(205, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 43),
(206, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 43),
(207, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 44),
(208, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 44),
(209, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 44),
(210, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 44),
(211, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 44),
(212, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 45),
(213, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 45),
(214, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 45),
(215, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 45),
(216, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 45),
(217, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 46),
(218, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 46),
(219, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 46),
(220, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 46),
(221, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 46),
(222, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 47),
(223, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 47),
(224, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 47),
(225, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 47),
(226, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 47),
(227, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 48),
(228, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 48),
(229, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 48),
(230, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 48),
(231, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 48),
(232, 'Article 1 : leurs musique', 'Voici un exemple de description pour l\'article 1 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 49),
(233, 'Article 2 : leurs musique', 'Voici un exemple de description pour l\'article 2 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 49),
(234, 'Article 3 : leurs musique', 'Voici un exemple de description pour l\'article 3 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 49),
(235, 'Article 4 : leurs musique', 'Voici un exemple de description pour l\'article 4 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 49),
(236, 'Article 5 : leurs musique', 'Voici un exemple de description pour l\'article 5 : Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sed libero id lacus luctus accumsan. Duis varius risus auctor velit malesuada, in pretium magna rhoncus.', 49),
(264, 'Post Title 2 by Hafsa.El Khayat', 'This is the description for post number 2 by user Hafsa.El Khayat', 53),
(265, 'Post Title 5 by Ahmed.Ouazzani', 'This is the description for post number 5 by user Ahmed.Ouazzani', 50),
(266, 'Post Title 5 by Abderrahim.Bouhaddou', 'This is the description for post number 5 by user Abderrahim.Bouhaddou', 54),
(267, 'Post Title 3 by Amal.Mansouri', 'This is the description for post number 3 by user Amal.Mansouri', 66),
(268, 'Post Title 1 by Hafsa.El Khayat', 'This is the description for post number 1 by user Hafsa.El Khayat', 53),
(270, 'Post Title 5 by Aicha.Hassouni', 'This is the description for post number 5 by user Aicha.Hassouni', 52),
(271, 'Post Title 4 by YasminaOuahabi', 'This is the description for post number 4 by user YasminaOuahabi', 38),
(272, 'Post Title 5 by Aziz.Chakir', 'This is the description for post number 5 by user Aziz.Chakir', 67),
(273, 'Post Title 1 by Khalid.Hassouni', 'This is the description for post number 1 by user Khalid.Hassouni', 64),
(274, 'Post Title 5 by KhalidBelarbi', 'This is the description for post number 5 by user KhalidBelarbi', 49),
(275, 'Post Title 2 by KhalidBelarbi', 'This is the description for post number 2 by user KhalidBelarbi', 49),
(276, 'Post Title 2 by AhmedBensaid', 'This is the description for post number 2 by user AhmedBensaid', 35),
(277, 'Post Title 3 by Fatima.Bouhfid', 'This is the description for post number 3 by user Fatima.Bouhfid', 59),
(278, 'Post Title 4 by KarimCherkaoui', 'This is the description for post number 4 by user KarimCherkaoui', 39),
(279, 'Post Title 3 by Hicham.Azzouzi', 'This is the description for post number 3 by user Hicham.Azzouzi', 55),
(281, 'Post Title 4 by MounirZaim', 'This is the description for post number 4 by user MounirZaim', 45),
(282, 'Post Title 2 by OmarTazi', 'This is the description for post number 2 by user OmarTazi', 41),
(283, 'Post Title 3 by Mohamed.Benali', 'This is the description for post number 3 by user Mohamed.Benali', 63),
(284, 'Post Title 1 by NadiaZerrouki', 'This is the description for post number 1 by user NadiaZerrouki', 34),
(285, 'Post Title 3 by Abdelali.Ait', 'This is the description for post number 3 by user Abdelali.Ait', 56),
(286, 'Post Title 1 by Asmaa.Sbai', 'This is the description for post number 1 by user Asmaa.Sbai', 51),
(287, 'Post Title 4 by Khalid.Hassouni', 'This is the description for post number 4 by user Khalid.Hassouni', 64),
(288, 'Post Title 3 by LailaAbdullah', 'This is the description for post number 3 by user LailaAbdullah', 40),
(289, 'Post Title 2 by HassanAli', 'This is the description for post number 2 by user HassanAli', 33),
(290, 'Post Title 4 by Hafsa.El Moussaoui', 'This is the description for post number 4 by user Hafsa.El Moussaoui', 69),
(291, 'Post Title 3 by YasminaOuahabi', 'This is the description for post number 3 by user YasminaOuahabi', 38),
(292, 'Post Title 1 by AhmedBensaid', 'This is the description for post number 1 by user AhmedBensaid', 35),
(294, 'Post Title 5 by Abdelali.Ait', 'This is the description for post number 5 by user Abdelali.Ait', 56),
(295, 'Post Title 3 by Hind.Bouhaddou', 'This is the description for post number 3 by user Hind.Bouhaddou', 61),
(296, 'Post Title 2 by Hind.Ait', 'This is the description for post number 2 by user Hind.Ait', 60),
(297, 'Post Title 2 by Hicham.Azzouzi', 'This is the description for post number 2 by user Hicham.Azzouzi', 55),
(298, 'Post Title 2 by Ayoub.El Fathi', 'This is the description for post number 2 by user Ayoub.El Fathi', 58),
(299, 'Post Title 2 by Abderrahim.Zerhouni', 'This is the description for post number 2 by user Abderrahim.Zerhouni', 68),
(300, 'Post Title 1 by YasminaOuahabi', 'This is the description for post number 1 by user YasminaOuahabi', 38),
(301, 'Post Title 5 by Hafsa.El Khayat', 'This is the description for post number 5 by user Hafsa.El Khayat', 53),
(302, 'Post Title 1 by Hind.Ait', 'This is the description for post number 1 by user Hind.Ait', 60),
(303, 'Post Title 4 by Aziz.Chakir', 'This is the description for post number 4 by user Aziz.Chakir', 67),
(304, 'Post Title 3 by Asmaa.Sbai', 'This is the description for post number 3 by user Asmaa.Sbai', 51),
(305, 'Post Title 5 by NadiaZerrouki', 'This is the description for post number 5 by user NadiaZerrouki', 34),
(306, 'Post Title 1 by OmarTazi', 'This is the description for post number 1 by user OmarTazi', 41),
(307, 'Post Title 3 by Abderrahim.Bouhaddou', 'This is the description for post number 3 by user Abderrahim.Bouhaddou', 54),
(309, 'Post Title 1 by SamiraHamidi', 'This is the description for post number 1 by user SamiraHamidi', 46),
(310, 'Post Title 1 by Mohamed.Benali', 'This is the description for post number 1 by user Mohamed.Benali', 63),
(311, 'Post Title 5 by HoudaBenali', 'This is the description for post number 5 by user HoudaBenali', 44),
(312, 'Post Title 3 by Hind.Ait', 'This is the description for post number 3 by user Hind.Ait', 60),
(313, 'Post Title 3 by Hafsa.El Moussaoui', 'This is the description for post number 3 by user Hafsa.El Moussaoui', 69),
(314, 'Post Title 3 by FatimaElMoudden', 'This is the description for post number 3 by user FatimaElMoudden', 32),
(315, 'Post Title 1 by Hicham.Azzouzi', 'This is the description for post number 1 by user Hicham.Azzouzi', 55),
(316, 'Post Title 5 by Hicham.Azzouzi', 'This is the description for post number 5 by user Hicham.Azzouzi', 55),
(317, 'Post Title 5 by Fatima.Bouhfid', 'This is the description for post number 5 by user Fatima.Bouhfid', 59),
(318, 'Post Title 1 by HoudaBenali', 'This is the description for post number 1 by user HoudaBenali', 44),
(319, 'Post Title 4 by RachidChami', 'This is the description for post number 4 by user RachidChami', 43),
(321, 'Post Title 1 by MounirZaim', 'This is the description for post number 1 by user MounirZaim', 45),
(323, 'Post Title 2 by KarimCherkaoui', 'This is the description for post number 2 by user KarimCherkaoui', 39),
(324, 'Post Title 4 by NadiaZerrouki', 'This is the description for post number 4 by user NadiaZerrouki', 34),
(325, 'Post Title 1 by Ayoub.El Fathi', 'This is the description for post number 1 by user Ayoub.El Fathi', 58),
(326, 'Post Title 4 by Amal.Mansouri', 'This is the description for post number 4 by user Amal.Mansouri', 66),
(327, 'Post Title 1 by Amal.Mansouri', 'This is the description for post number 1 by user Amal.Mansouri', 66),
(328, 'Post Title 2 by Hind.Bouhaddou', 'This is the description for post number 2 by user Hind.Bouhaddou', 61),
(329, 'Post Title 2 by Hafsa.El Moussaoui', 'This is the description for post number 2 by user Hafsa.El Moussaoui', 69),
(330, 'Post Title 2 by Khalid.Sbai', 'This is the description for post number 2 by user Khalid.Sbai', 65),
(331, 'Post Title 2 by Mohamed.Benali', 'This is the description for post number 2 by user Mohamed.Benali', 63),
(332, 'Post Title 2 by NaimaChakir', 'This is the description for post number 2 by user NaimaChakir', 48),
(333, 'Post Title 5 by Hind.Bouhaddou', 'This is the description for post number 5 by user Hind.Bouhaddou', 61),
(335, 'Post Title 4 by Aicha.Hassouni', 'This is the description for post number 4 by user Aicha.Hassouni', 52),
(336, 'Post Title 5 by Abderrahim.Zerhouni', 'This is the description for post number 5 by user Abderrahim.Zerhouni', 68),
(337, 'Post Title 5 by FatimaElMoudden', 'This is the description for post number 5 by user FatimaElMoudden', 32),
(338, 'Post Title 5 by AhmedBensaid', 'This is the description for post number 5 by user AhmedBensaid', 35),
(339, 'Post Title 1 by Khalid.Sbai', 'This is the description for post number 1 by user Khalid.Sbai', 65),
(340, 'Post Title 4 by FatimaElMoudden', 'This is the description for post number 4 by user FatimaElMoudden', 32),
(341, 'Post Title 5 by AminaKadiri', 'This is the description for post number 5 by user AminaKadiri', 36),
(342, 'Post Title 2 by Aicha.El Moussaoui', 'This is the description for post number 2 by user Aicha.El Moussaoui', 62),
(343, 'Post Title 4 by AhmedBensaid', 'This is the description for post number 4 by user AhmedBensaid', 35),
(344, 'Post Title 4 by YassinZouhair', 'This is the description for post number 4 by user YassinZouhair', 47),
(345, 'Post Title 4 by Mohamed.Benali', 'This is the description for post number 4 by user Mohamed.Benali', 63),
(347, 'Post Title 2 by NawalMounir', 'This is the description for post number 2 by user NawalMounir', 42),
(348, 'Post Title 1 by Abderrahim.Bouhaddou', 'This is the description for post number 1 by user Abderrahim.Bouhaddou', 54),
(349, 'Post Title 1 by Aziz.Chakir', 'This is the description for post number 1 by user Aziz.Chakir', 67),
(350, 'Post Title 4 by NawalMounir', 'This is the description for post number 4 by user NawalMounir', 42),
(351, 'Post Title 5 by Amal.Mansouri', 'This is the description for post number 5 by user Amal.Mansouri', 66),
(352, 'Post Title 4 by Asmaa.Sbai', 'This is the description for post number 4 by user Asmaa.Sbai', 51),
(353, 'Post Title 5 by SamiraHamidi', 'This is the description for post number 5 by user SamiraHamidi', 46),
(354, 'Post Title 1 by Hind.Bouhaddou', 'This is the description for post number 1 by user Hind.Bouhaddou', 61),
(355, 'Post Title 3 by RachidChami', 'This is the description for post number 3 by user RachidChami', 43),
(356, 'Post Title 5 by MounirZaim', 'This is the description for post number 5 by user MounirZaim', 45),
(357, 'Post Title 1 by Hafsa.El Moussaoui', 'This is the description for post number 1 by user Hafsa.El Moussaoui', 69),
(358, 'Post Title 1 by Aicha.El Moussaoui', 'This is the description for post number 1 by user Aicha.El Moussaoui', 62),
(359, 'Post Title 3 by SamiraHamidi', 'This is the description for post number 3 by user SamiraHamidi', 46),
(360, 'Post Title 3 by HoudaBenali', 'This is the description for post number 3 by user HoudaBenali', 44),
(361, 'Post Title 2 by Asmaa.Sbai', 'This is the description for post number 2 by user Asmaa.Sbai', 51),
(364, 'Post Title 2 by YasminaOuahabi', 'This is the description for post number 2 by user YasminaOuahabi', 38),
(365, 'Post Title 1 by Abdelali.Ait', 'This is the description for post number 1 by user Abdelali.Ait', 56),
(366, 'Post Title 3 by Khalid.Sbai', 'This is the description for post number 3 by user Khalid.Sbai', 65),
(367, 'Post Title 4 by Fatima.El Fathi', 'This is the description for post number 4 by user Fatima.El Fathi', 57),
(368, 'Post Title 5 by Khalid.Hassouni', 'This is the description for post number 5 by user Khalid.Hassouni', 64),
(369, 'Post Title 1 by KhalidBelarbi', 'This is the description for post number 1 by user KhalidBelarbi', 49),
(370, 'Post Title 3 by NawalMounir', 'This is the description for post number 3 by user NawalMounir', 42),
(371, 'Post Title 5 by HassanAli', 'This is the description for post number 5 by user HassanAli', 33),
(373, 'Post Title 5 by NaimaChakir', 'This is the description for post number 5 by user NaimaChakir', 48),
(374, 'Post Title 2 by FatimaElMoudden', 'This is the description for post number 2 by user FatimaElMoudden', 32),
(376, 'Post Title 3 by KhalidBelarbi', 'This is the description for post number 3 by user KhalidBelarbi', 49),
(378, 'Post Title 5 by Aicha.El Moussaoui', 'This is the description for post number 5 by user Aicha.El Moussaoui', 62),
(379, 'Post Title 3 by KarimCherkaoui', 'This is the description for post number 3 by user KarimCherkaoui', 39),
(380, 'Post Title 5 by KarimCherkaoui', 'This is the description for post number 5 by user KarimCherkaoui', 39),
(381, 'Post Title 2 by Amal.Mansouri', 'This is the description for post number 2 by user Amal.Mansouri', 66),
(382, 'Post Title 4 by SamiraHamidi', 'This is the description for post number 4 by user SamiraHamidi', 46),
(383, 'Post Title 3 by Ahmed.Ouazzani', 'This is the description for post number 3 by user Ahmed.Ouazzani', 50),
(384, 'Post Title 5 by NawalMounir', 'This is the description for post number 5 by user NawalMounir', 42),
(386, 'Post Title 1 by AminaKadiri', 'This is the description for post number 1 by user AminaKadiri', 36),
(387, 'Post Title 3 by MounirZaim', 'This is the description for post number 3 by user MounirZaim', 45),
(388, 'Post Title 2 by Khalid.Hassouni', 'This is the description for post number 2 by user Khalid.Hassouni', 64),
(389, 'Post Title 2 by SamiraHamidi', 'This is the description for post number 2 by user SamiraHamidi', 46),
(390, 'Post Title 3 by Aicha.El Moussaoui', 'This is the description for post number 3 by user Aicha.El Moussaoui', 62),
(391, 'Post Title 1 by YassinZouhair', 'This is the description for post number 1 by user YassinZouhair', 47),
(392, 'Post Title 5 by LailaAbdullah', 'This is the description for post number 5 by user LailaAbdullah', 40),
(393, 'Post Title 1 by Fatima.El Fathi', 'This is the description for post number 1 by user Fatima.El Fathi', 57),
(394, 'Post Title 1 by Aicha.Hassouni', 'This is the description for post number 1 by user Aicha.Hassouni', 52),
(395, 'Post Title 1 by HassanAli', 'This is the description for post number 1 by user HassanAli', 33),
(396, 'Post Title 4 by Khalid.Sbai', 'This is the description for post number 4 by user Khalid.Sbai', 65),
(397, 'Post Title 5 by Khalid.Sbai', 'This is the description for post number 5 by user Khalid.Sbai', 65),
(398, 'Post Title 3 by HassanAli', 'This is the description for post number 3 by user HassanAli', 33),
(399, 'Post Title 1 by Abderrahim.Zerhouni', 'This is the description for post number 1 by user Abderrahim.Zerhouni', 68),
(400, 'Post Title 5 by Ayoub.El Fathi', 'This is the description for post number 5 by user Ayoub.El Fathi', 58),
(401, 'Post Title 1 by NaimaChakir', 'This is the description for post number 1 by user NaimaChakir', 48),
(402, 'Post Title 5 by OmarTazi', 'This is the description for post number 5 by user OmarTazi', 41),
(403, 'Post Title 4 by Hind.Ait', 'This is the description for post number 4 by user Hind.Ait', 60),
(404, 'Post Title 2 by MounirZaim', 'This is the description for post number 2 by user MounirZaim', 45),
(405, 'Post Title 4 by Fatima.Bouhfid', 'This is the description for post number 4 by user Fatima.Bouhfid', 59),
(406, 'Post Title 4 by Abdelali.Ait', 'This is the description for post number 4 by user Abdelali.Ait', 56),
(407, 'Post Title 5 by Hind.Ait', 'This is the description for post number 5 by user Hind.Ait', 60),
(408, 'Post Title 2 by Ahmed.Ouazzani', 'This is the description for post number 2 by user Ahmed.Ouazzani', 50),
(409, 'Post Title 2 by Abderrahim.Bouhaddou', 'This is the description for post number 2 by user Abderrahim.Bouhaddou', 54),
(410, 'Post Title 1 by RachidChami', 'This is the description for post number 1 by user RachidChami', 43),
(411, 'Post Title 1 by LailaAbdullah', 'This is the description for post number 1 by user LailaAbdullah', 40),
(412, 'Post Title 3 by YassinZouhair', 'This is the description for post number 3 by user YassinZouhair', 47),
(413, 'Post Title 2 by YassinZouhair', 'This is the description for post number 2 by user YassinZouhair', 47),
(414, 'Post Title 2 by RachidChami', 'This is the description for post number 2 by user RachidChami', 43),
(415, 'Post Title 3 by NadiaZerrouki', 'This is the description for post number 3 by user NadiaZerrouki', 34),
(416, 'Post Title 4 by Hind.Bouhaddou', 'This is the description for post number 4 by user Hind.Bouhaddou', 61),
(417, 'Post Title 4 by KhalidBelarbi', 'This is the description for post number 4 by user KhalidBelarbi', 49),
(418, 'Post Title 3 by NaimaChakir', 'This is the description for post number 3 by user NaimaChakir', 48),
(419, 'Post Title 1 by Fatima.Bouhfid', 'This is the description for post number 1 by user Fatima.Bouhfid', 59),
(420, 'Post Title 4 by NaimaChakir', 'This is the description for post number 4 by user NaimaChakir', 48),
(421, 'Post Title 2 by Aicha.Hassouni', 'This is the description for post number 2 by user Aicha.Hassouni', 52),
(422, 'Post Title 2 by Fatima.El Fathi', 'This is the description for post number 2 by user Fatima.El Fathi', 57),
(423, 'Post Title 5 by Fatima.El Fathi', 'This is the description for post number 5 by user Fatima.El Fathi', 57),
(424, 'Post Title 4 by Abderrahim.Zerhouni', 'This is the description for post number 4 by user Abderrahim.Zerhouni', 68),
(425, 'Post Title 5 by RachidChami', 'This is the description for post number 5 by user RachidChami', 43),
(426, 'Post Title 2 by NadiaZerrouki', 'This is the description for post number 2 by user NadiaZerrouki', 34),
(427, 'Post Title 5 by YasminaOuahabi', 'This is the description for post number 5 by user YasminaOuahabi', 38),
(428, 'Post Title 3 by OmarTazi', 'This is the description for post number 3 by user OmarTazi', 41),
(429, 'Post Title 4 by Hafsa.El Khayat', 'This is the description for post number 4 by user Hafsa.El Khayat', 53),
(430, 'Post Title 5 by Asmaa.Sbai', 'This is the description for post number 5 by user Asmaa.Sbai', 51),
(431, 'Post Title 4 by OmarTazi', 'This is the description for post number 4 by user OmarTazi', 41),
(432, 'Post Title 2 by HoudaBenali', 'This is the description for post number 2 by user HoudaBenali', 44),
(433, 'Post Title 4 by Ayoub.El Fathi', 'This is the description for post number 4 by user Ayoub.El Fathi', 58),
(434, 'Post Title 4 by AminaKadiri', 'This is the description for post number 4 by user AminaKadiri', 36),
(435, 'Post Title 2 by LailaAbdullah', 'This is the description for post number 2 by user LailaAbdullah', 40),
(436, 'Post Title 3 by Abderrahim.Zerhouni', 'This is the description for post number 3 by user Abderrahim.Zerhouni', 68),
(437, 'Post Title 3 by Ayoub.El Fathi', 'This is the description for post number 3 by user Ayoub.El Fathi', 58),
(438, 'Post Title 2 by Aziz.Chakir', 'This is the description for post number 2 by user Aziz.Chakir', 67),
(439, 'Post Title 5 by Mohamed.Benali', 'This is the description for post number 5 by user Mohamed.Benali', 63),
(440, 'Post Title 2 by Fatima.Bouhfid', 'This is the description for post number 2 by user Fatima.Bouhfid', 59),
(441, 'Post Title 1 by FatimaElMoudden', 'This is the description for post number 1 by user FatimaElMoudden', 32),
(442, 'Post Title 4 by Hicham.Azzouzi', 'This is the description for post number 4 by user Hicham.Azzouzi', 55),
(443, 'Post Title 1 by NawalMounir', 'This is the description for post number 1 by user NawalMounir', 42),
(444, 'Post Title 4 by Aicha.El Moussaoui', 'This is the description for post number 4 by user Aicha.El Moussaoui', 62),
(445, 'Post Title 4 by HassanAli', 'This is the description for post number 4 by user HassanAli', 33),
(446, 'Post Title 3 by AhmedBensaid', 'This is the description for post number 3 by user AhmedBensaid', 35),
(447, 'Post Title 5 by Hafsa.El Moussaoui', 'This is the description for post number 5 by user Hafsa.El Moussaoui', 69),
(448, 'Post Title 4 by Abderrahim.Bouhaddou', 'This is the description for post number 4 by user Abderrahim.Bouhaddou', 54),
(450, 'Post Title 3 by Aicha.Hassouni', 'This is the description for post number 3 by user Aicha.Hassouni', 52),
(451, 'Post Title 2 by Abdelali.Ait', 'This is the description for post number 2 by user Abdelali.Ait', 56),
(452, 'Post Title 1 by KarimCherkaoui', 'This is the description for post number 1 by user KarimCherkaoui', 39),
(453, 'Post Title 4 by HoudaBenali', 'This is the description for post number 4 by user HoudaBenali', 44),
(454, 'Post Title 3 by AminaKadiri', 'This is the description for post number 3 by user AminaKadiri', 36),
(455, 'Post Title 3 by Aziz.Chakir', 'This is the description for post number 3 by user Aziz.Chakir', 67),
(456, 'Post Title 2 by AminaKadiri', 'This is the description for post number 2 by user AminaKadiri', 36),
(457, 'Post Title 3 by Hafsa.El Khayat', 'This is the description for post number 3 by user Hafsa.El Khayat', 53),
(458, 'Post Title 1 by Ahmed.Ouazzani', 'This is the description for post number 1 by user Ahmed.Ouazzani', 50),
(459, 'Post Title 4 by Ahmed.Ouazzani', 'This is the description for post number 4 by user Ahmed.Ouazzani', 50),
(460, 'Post Title 3 by Fatima.El Fathi', 'This is the description for post number 3 by user Fatima.El Fathi', 57),
(461, 'Post Title 5 by YassinZouhair', 'This is the description for post number 5 by user YassinZouhair', 47),
(462, 'Post Title 4 by LailaAbdullah', 'This is the description for post number 4 by user LailaAbdullah', 40),
(463, 'Post Title 3 by Khalid.Hassouni', 'This is the description for post number 3 by user Khalid.Hassouni', 64);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`) VALUES
(32, 'FatimaElMoudden', 'fatima.elmoudden@example.com'),
(33, 'HassanAli', 'hassan.ali@example.com'),
(34, 'NadiaZerrouki', 'nadia.zerrouki@example.com'),
(35, 'AhmedBensaid', 'ahmed.bensaid@example.com'),
(36, 'AminaKadiri', 'amina.kadiri@example.com'),
(38, 'YasminaOuahabi', 'yasmina.ouahabi@example.com'),
(39, 'KarimCherkaoui', 'karim.cherkaoui@example.com'),
(40, 'LailaAbdullah', 'laila.abdullah@example.com'),
(41, 'OmarTazi', 'omar.tazi@example.com'),
(42, 'NawalMounir', 'nawal.mounir@example.com'),
(43, 'RachidChami', 'rachid.chami@example.com'),
(44, 'HoudaBenali', 'houda.benali@example.com'),
(45, 'MounirZaim', 'mounir.zaim@example.com'),
(46, 'SamiraHamidi', 'samira.hamidi@example.com'),
(47, 'YassinZouhair', 'yassin.zouhair@example.com'),
(48, 'NaimaChakir', 'naima.chakir@example.com'),
(49, 'KhalidBelarbi', 'khalid.belarbi@example.com'),
(50, 'Ahmed.Ouazzani', 'Ahmed.Ouazzani@example.com'),
(51, 'Asmaa.Sbai', 'Asmaa.Sbai@example.com'),
(52, 'Aicha.Hassouni', 'Aicha.Hassouni@example.com'),
(53, 'Hafsa.El Khayat', 'Hafsa.El Khayat@example.com'),
(54, 'Abderrahim.Bouhaddou', 'Abderrahim.Bouhaddou@example.com'),
(55, 'Hicham.Azzouzi', 'Hicham.Azzouzi@example.com'),
(56, 'Abdelali.Ait', 'Abdelali.Ait@example.com'),
(57, 'Fatima.El Fathi', 'Fatima.El Fathi@example.com'),
(58, 'Ayoub.El Fathi', 'Ayoub.El Fathi@example.com'),
(59, 'Fatima.Bouhfid', 'Fatima.Bouhfid@example.com'),
(60, 'Hind.Ait', 'Hind.Ait@example.com'),
(61, 'Hind.Bouhaddou', 'Hind.Bouhaddou@example.com'),
(62, 'Aicha.El Moussaoui', 'Aicha.El Moussaoui@example.com'),
(63, 'Mohamed.Benali', 'Mohamed.Benali@example.com'),
(64, 'Khalid.Hassouni', 'Khalid.Hassouni@example.com'),
(65, 'Khalid.Sbai', 'Khalid.Sbai@example.com'),
(66, 'Amal.Mansouri', 'Amal.Mansouri@example.com'),
(67, 'Aziz.Chakir', 'Aziz.Chakir@example.com'),
(68, 'Abderrahim.Zerhouni', 'Abderrahim.Zerhouni@example.com'),
(69, 'Hafsa.El Moussaoui', 'Hafsa.El Moussaoui@example.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
