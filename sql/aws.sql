-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 20 Mai 2021 à 07:47
-- Version du serveur :  8.0.24
-- Version de PHP :  7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `aws`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int NOT NULL,
  `nomCategorie` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nomCategorie`) VALUES
(1, 'robes'),
(2, 'tshirt'),
(3, 'vestes'),
(4, 'chaussures');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint NOT NULL,
  `nomProduit` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prix` double NOT NULL,
  `image` varchar(255) NOT NULL,
  `categorie` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `nomProduit`, `description`, `prix`, `image`, `categorie`) VALUES
(1, 'pull', 'Les tailles de référence sont les tailles italiennes. Prenez une taille au dessus de votre taille habituelle. La veste Maxime est emblématique du sport-chic Rossignol.', 3000, 'https://www.celio.com/medias/sys_master/productMedias/productMediasImport/h4c/h35/9366688333854/product-media-import-1054938-1-product.jpg?frz-v=2338', 2),
(2, 'veste', 'Les tailles de référence sont les tailles italiennes. Prenez une taille au dessus de votre taille habituelle. La veste Maxime est emblématique du sport-chic Rossignol.', 4000, 'https://www.cdiscount.com/pdt2/6/0/6/1/300x300/mp10756606/rw/blouson-homme-veste-printemps-ete-automne-polyeste.jpg', 3),
(3, 'Veste Homme', 'Blouson Homme Veste Printemps été Automne Polyester mince bombardier Bomber Lightweight jacket B22\r\nBlouson | Blouson Homme Veste Printemps été Automne Polyester mince bombardier Bomber Lightweight jacket', 2500, 'https://www.cdiscount.com/pdt2/0/5/2/1/300x300/mp27461052/rw/2019-hommes-casual-moto-pilote-en-cuir-vestes-mant.jpg', 3),
(4, 'chaussures', 'Nouvelle collection de chaussures femme - Nouveautés femme', 2000, 'https://photos6.spartoo.com/photos/95/95/95_350_A.jpg', 4),
(5, 'robe', 'Femme Robe de Loisir JIMMY SANDERS Slim-Fit, Couleur: Orange. Matière: 100% POLYESTER . Lavage en machine à 30 degrés. Manches Courtes', 5000, 'https://www.cdiscount.com/pdt2/3/2/2/1/550x550/mp25087322/rw/jimmy-sanders-femme-robe-de-loisir-18sdrw42011-ora.jpg', 1),
(6, 'test', 'jtfkygluhmjk!lk', 100, 'aazd', 1),
(7, 'thsirt', 'Nouvelle Collection LBO 2021\r\n\r\nModèle 727\r\n\r\n• Tee shirt brodé\r\n• Col rond\r\n• Etiquette LBO certifiant l\'authenticité\r\n\r\nTAILLE ET COUPE\r\n\r\nCoupe Slim\r\nCe produit taille près du corps\r\nPour plus de confort, prenez une taille au dessus de votre taille habituelle\r\nTaille du mannequin : 1m81\r\nLe modèle présenté est une taille L\r\n\r\nCOMPOSITION ET ENTRETIEN', 250, 'https://assets.laboutiqueofficielle.com/w_450,q_auto,f_auto/media/products/2019/04/23/lbo_181051_FAB_SHALBO-727_20190527T165921_01.jpg', 2);

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint NOT NULL,
  `product_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Contenu de la table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `content`, `rating`, `product_id`) VALUES
(2, 'nake', 'tel@lldds.c', 'dkdlf cool', 0, 1),
(3, 'fdfdfsfds', 'fdfgfg@fdfd.com', 'Tooooa', 3, 1),
(4, 'rerewr', 'rerww@dlsds.com', 'Super', 4, 1),
(5, 'fdfs', 'fdsfds@dsd.com', 'Tin j\'aime pas', 1, 1),
(6, 'Mike', 'test@test.com', 'Trop bien !', 5, 1),
(7, 'Iheb', 'tropfort@cool.fr', 'C\'est jolie, mais bof ', 3, 1),
(8, 'Iheb', 'top@top.com', 'Bonnes chaussures, cool', 4, 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confpass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `telephone`, `adresse`, `email`, `password`, `confpass`) VALUES
(1, 'nom', 'prenom', '0', 'adresse', 'email', 'password', 'confpass'),
(2, 'SIDIBE', 'Aichata', '762094537', '35 Rue Gallieni', 'sidibeaichata36@gmail.com', '$2b$10$YAsN6RpK41X0KqJpASKkVugS6PGIvXSeHyrQB6b1Vmts7FVKLiHoe', 'passer'),
(3, 'fall', 'mamadou', '71548952', 'orsay', 'mamadou@cisco.com', '$2b$10$7F5JSgS4ble1yt5rt0NKQeO//SQglysQ13NcqXcrXM30wZx6E7kz6', 'passer123'),
(4, 'afouchal', 'ayoub', '178533641', 'versailles', 'ayoub@uvsq.fr', '$2b$10$.UX7oksB0HcED4DjQuJFPOS0Vj2dOE2624lyBnDP3opxdOdVdrZBe', 'passer'),
(5, 'fdf', 'fdfd', 'fdfd', 'fdfd', 'fdfd@fdfd.fdfd', '$2b$10$ROwhwi3uaCR/duadcUsZB.MSjmsrQCKk3tuwWUlsLWeX47L8JpSwa', 'fdfd'),
(6, 'toto', 'toto', 'toto', 'toto', 'toto@toto.com', '$2b$10$hDUfKOMV4S8oDQAttJubYev3Vay3wpPp1.Or0dDYXoBXnW.DHwpVG', 'toto');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie` (`categorie`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
