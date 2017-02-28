-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 28 Février 2017 à 23:37
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `riot_merch`
--

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category` enum('figurine','plush','statue') NOT NULL,
  `picture` varchar(512) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `price`, `quantity`, `date`, `category`, `picture`) VALUES
(1, 'Warring Kingdoms Azir Figure', 'From the sands of Shurima the Emperor returns to join the Series 2 figure line.\r\n\r\nApproximate Measurements:\r\nHeight: 4.84 in / 123 mm\r\nWidth: 3.86 in / 9.8 cm', 25, 200, '2017-02-28 14:26:58', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/a/z/azir_ecomm_3.png'),
(2, 'Poppy Figure', 'Poppy hammers her way into the Series 2 figure line. You might wanna'' look out.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 4.6 in / 11.7 cm\r\nWidth: 3.9 in / 9.9 cm', 25, 200, '2017-02-28 14:42:50', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/p/o/poppy_riot_games-2016-10-26_figures_statues_1486.png'),
(3, 'Dino Gnar Plush', 'Dino Gnar wants to play! We suggest you take this request seriously. His hood is removeable too - but always on HIS terms.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 12.5 in / 31.8 cm\r\nWidth: 7.5 in / 19 cm\r\nDepth: 11 in / 28 cm\r\nPolyester Fiber', 30, 300, '2017-02-28 14:44:35', 'plush', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/d/i/dino_gnar_plush_1.png'),
(5, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 17:36:14', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(6, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:04:15', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(7, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:05:59', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(8, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:10:11', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(9, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:10:32', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(10, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:11:30', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(11, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:14:26', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(12, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:16:39', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(13, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:17:30', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(14, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:17:46', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(15, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:17:56', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(16, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:20:29', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(17, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 18:20:44', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(18, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 20:23:43', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(19, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 20:25:01', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(20, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 20:26:56', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(21, 'Dragon Trainer Tristana Figure', 'Tristana and Riggle cuddle up for the Series 2 figure line. Things are heating up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 3.8 in / 9.6 cm\r\nWidth: 4.1 in / 10.5 cm', 25, 180, '2017-02-28 20:29:39', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/t/r/trist_riot_games-2016-10-26_figures_statues_1490_1.png'),
(22, 'Ekko Figure', 'Surprise! The Boy Who Shattered Time leaps into the Series 2 figure line. Step right up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 4.8 in / 12.2 cm\r\nWidth: 3.3 in / 8.3 cm', 25, 9, '2017-02-28 20:30:24', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/e/k/ekko-figure-left_copy_2_.png'),
(23, 'Ekko Figure', 'Surprise! The Boy Who Shattered Time leaps into the Series 2 figure line. Step right up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 4.8 in / 12.2 cm\r\nWidth: 3.3 in / 8.3 cm', 25, 9, '2017-02-28 20:33:46', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/e/k/ekko-figure-left_copy_2_.png'),
(24, 'Ekko Figure', 'Surprise! The Boy Who Shattered Time leaps into the Series 2 figure line. Step right up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 4.8 in / 12.2 cm\r\nWidth: 3.3 in / 8.3 cm', 25, 9, '2017-02-28 20:33:58', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/e/k/ekko-figure-left_copy_2_.png'),
(25, 'Ekko Figure', 'Surprise! The Boy Who Shattered Time leaps into the Series 2 figure line. Step right up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 4.8 in / 12.2 cm\r\nWidth: 3.3 in / 8.3 cm', 25, 9, '2017-02-28 20:35:31', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/e/k/ekko-figure-left_copy_2_.png'),
(26, 'Ekko Figure', 'Surprise! The Boy Who Shattered Time leaps into the Series 2 figure line. Step right up.\r\n\r\nApproximate Measurements:\r\n\r\nHeight: 4.8 in / 12.2 cm\r\nWidth: 3.3 in / 8.3 cm', 25, 9, '2017-02-28 20:39:01', 'figurine', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/e/k/ekko-figure-left_copy_2_.png'),
(27, 'Poro Plush', 'Braum''s best friend is now yours, too.\r\n\r\nHeight: 7 in / 17.78 cm\r\nWidth: 9 in / 22.9 cm\r\nDepth: 9 in / 22.9 cm\r\nPolyester Fiber\r\nHeart Shape Belly and Footprint', 25, 176, '2017-02-28 21:54:13', 'plush', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/p/l/plush_poro.png'),
(28, 'Katarina Unlocked', 'Ready for trouble? Kat doesn''t care if you are ready or not. Katarina is now Unlocked.\r\n\r\nMaterial and Approximate Measurements:\r\n\r\nPVC materials\r\nHeight: 9.4 in / 23.8 cm\r\nWidth: 6.0* in / 15.2* cm', 65, 250, '2017-02-28 22:31:25', 'statue', 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/small_image/325x/9df78eab33525d08d6e5fb8d27136e95/k/a/kat_riot_games-2016-10-26_figures_statues_1529_copy.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
