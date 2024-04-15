-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 avr. 2024 à 03:23
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `farmvet`
--

-- --------------------------------------------------------

--
-- Structure de la table `farmer`
--

CREATE TABLE `farmer` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `firstn` varchar(50) NOT NULL,
  `lastn` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `url_address` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `location` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `farmer`
--

INSERT INTO `farmer` (`id`, `user_id`, `firstn`, `lastn`, `mail`, `password`, `url_address`, `image`, `location`, `date`) VALUES
(1, 743531, 'Jawed', 'Mkl', 'makreloufjawed1009@gmail.com', '123456', 'jawed.mkl', 'uploads/pexels-kampus-production-8949829.jpg', '', ''),
(4, 5152110, 'Mohcin', 'Hh', 'mjdhdu@gmail.com', '44444551', 'mohcin.hh', 'uploads/pexels-christian-heitz-842711 (1).jpg', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post` varchar(500) NOT NULL,
  `image` varchar(50) NOT NULL,
  `comments` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `has_image` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `post_id`, `user_id`, `post`, `image`, `comments`, `likes`, `date`, `has_image`) VALUES
(16, 1175935, 6519340617125630854, 'this is my first post\r\nokey', '', 0, 0, '2024-03-26 02:16:46', 0),
(17, 87870757467, 6519340617125630854, 'hi there ', '', 0, 0, '2024-03-26 02:18:00', 0),
(19, 2720607606, 639786296, 'hhhh', '', 0, 0, '2024-03-26 16:55:48', 0),
(20, 101463, 743531, 'this post contain image', '', 0, 0, '2024-03-26 17:07:09', 0),
(21, 612247852458974994, 5152110, 'THIS IS POST OF MOUHCIN LZ\r\nHello Everyone', '', 0, 0, '2024-03-31 19:28:55', 0),
(28, 789376485212008, 743531, 'fhhhh', 'uploads/pexels-pavel-danilyuk-5998515.jpg', 0, 0, '2024-04-02 02:09:31', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `firstn` varchar(50) NOT NULL,
  `lastn` varchar(50) NOT NULL,
  `mail` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `url_address` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `user_id`, `firstn`, `lastn`, `mail`, `password`, `type`, `url_address`, `img`) VALUES
(34, 743531, 'Jawed', 'Mkl', 'makreloufjawed1009@gmail.com', '123456', 'farmer', 'jawed.mkl', ''),
(35, 639786296, 'D', 'D', 'zs@gmail.com', '123456', 'veterinary', 'd.d', ''),
(37, 6519340617125630854, 'Jawed', 'Jawed', 'makreloufjawed65@gmail.com', '1236555', 'veterinary', 'jawed.jawed', ''),
(39, 5152110, 'Mohcin', 'Hh', 'mjdhdu@gmail.com', '44444551', 'farmer', 'mohcin.hh', ''),
(42, 567059794799709677, 'Khaled', 'Kachmiri', 'kachmiri@gmal.com', '123456', 'veterinary', 'khaled.kachmiri', '');

-- --------------------------------------------------------

--
-- Structure de la table `veterinary`
--

CREATE TABLE `veterinary` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `firstn` varchar(50) NOT NULL,
  `lastn` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `url_address` varchar(100) NOT NULL,
  `date` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `bio` varchar(300) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `veterinary`
--

INSERT INTO `veterinary` (`id`, `user_id`, `firstn`, `lastn`, `mail`, `password`, `url_address`, `date`, `location`, `bio`, `image`) VALUES
(1, 639786296, 'D', 'D', 'zs@gmail.com', '123456', 'd.d', 0, '', '', ''),
(2, 6519340617125630854, 'Jawed', 'Jawed', 'makreloufjawed65@gmail.com', '1236555', 'jawed.jawed', 0, '', '', ''),
(4, 567059794799709677, 'Khaled', 'Kachmiri', 'kachmiri@gmal.com', '123456', 'khaled.kachmiri', 0, '', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url_address` (`url_address`),
  ADD UNIQUE KEY `firstn` (`firstn`),
  ADD UNIQUE KEY `lastn` (`lastn`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date` (`date`),
  ADD KEY `has_image` (`has_image`);
ALTER TABLE `posts` ADD FULLTEXT KEY `texte` (`post`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firstn` (`firstn`),
  ADD KEY `lastn` (`lastn`),
  ADD KEY `mail` (`mail`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `veterinary`
--
ALTER TABLE `veterinary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `firstn` (`firstn`),
  ADD UNIQUE KEY `lastn` (`lastn`),
  ADD UNIQUE KEY `url_address` (`url_address`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `veterinary`
--
ALTER TABLE `veterinary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
