-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 21 jan. 2020 à 12:10
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `greenforce`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `commentaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `commentaire`, `user`, `date`) VALUES
(1, 'Je suis super content car j\'ai des produits écolos', 'Biizz Bureaux', '2019-04-05 03:04:00'),
(2, 'J\'ai adoré pouvoir travailler avec cette entreprise la qualité est là !!!', 'Seb', '2020-01-04 11:39:00'),
(3, 'Nous avons changé de partenaire car les restrictions écologiques sont devenues primordiales de ce fait nous sommes ravis de leur service !', 'Julien Martinez', '2020-01-07 16:24:00');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `adresse_de_facturation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_entreprise` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_de_livraison` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `adresse_de_facturation`, `email`, `nom_entreprise`, `responsable`, `adresse_de_livraison`, `telephone`) VALUES
(2, '29 rue des pommiers 78000 VERSAILLES', 'eliza.sanchez@electro-deco.com', 'Electro Deco', 'Eliza Sanchez', '29 rue des pommiers 78000 VERSAILLES', '0145889632'),
(3, '25 rue du coq 78190 TRAPPES', 'buro.eco@gmail.com', 'Buro Eco', 'Jérôme Lacroix', '25 rue du coq 78190 TRAPPES', '0123665587'),
(4, '25 rue du coq 78190 TRAPPES', 'julien.m@papperneeds.com', 'Papper Needs', 'Julien Martinez', '37 avenue des champs 69100 Villeurbanne LYON', '0166825478'),
(5, '25 rue des fleurs 59300 FAMARS VALENCIENNES', 'seb.uppov@kart-concept.com', 'Kart Concept', 'Sébastien Uppov', '25 rue des fleurs 59300 FAMARS VALENCIENNES', '0625883647'),
(6, '2 impasse de la baie 44210 PORNIC', 'nirina.mordes@biizz.fr', 'Biizz Bureaux', 'Nirina Mordes', '2 impasse de la baie 44210 PORNIC', '0265478963');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom_entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `nom_entreprise`, `email`, `sujet`, `message`) VALUES
(1, 'PIATYCHEVA Eliza', 'eliza.piatycheva@gmail.com', 'WXCWXC', 'WXCWXCWCX'),
(2, 'PIATYCHEVA Eliza', 'jojo@gmail.com', 'WXCWXC', 'WXCWXCWCX'),
(3, 'ertze', 'ezt', 'zetztez', 'zetzetzet'),
(4, 'test', 'elle.raja@gmail.com', 'dsfs', 'dsfsf'),
(5, 'test', 'elle.raja@gmail.com', 'dsfs', 'dsfsf');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'Elle', 'elle', 'poule@gmail.com', 'poule@gmail.com', 1, 'zOO.Oive12J3FyJeSjZ4BHUpqdkxSiPaGd2Ph2dIp7Q', '$2y$13$NF23eZGyxVjUvG8T/qvyguRsY6lecneUB2xCdpC7RyLs/wWA/aM9i', '2020-01-20 14:28:25', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'sdf@dsf.fr', 'dsfd'),
(2, 'caca@caca.fr', 'caca'),
(3, 'elle.', 'd'),
(4, 'tyu', 'ytu');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200109131743', '2020-01-09 13:19:26'),
('20200109133206', '2020-01-09 13:32:37'),
('20200109154745', '2020-01-09 15:47:58');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(11) NOT NULL,
  `numero_cb` int(11) NOT NULL,
  `mois` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `nom_titulaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `paiement`
--

INSERT INTO `paiement` (`id`, `numero_cb`, `mois`, `annee`, `nom_titulaire`, `cvc`) VALUES
(1, 2147483647, 7, 9, 'fgdhd', 675756),
(2, 435345, 546456, 54665, 'GFHFGH', 45646),
(3, 45345, 4535, 34535, 'FGHFH', 345345);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `article` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qte` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pa` double NOT NULL,
  `pv` double NOT NULL,
  `tva` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `libelle`, `pa`, `pv`, `tva`, `stock`, `image`, `description`, `categorie`) VALUES
(4, 'Sac Poubelle Green Eco', 7, 10, 20, 18, 'sacgreen.jpg', 'Sac Poubelle biodégradable grande taille résistants. Capacité de 50L', 'Entretien'),
(5, 'Sac poubelle vert fin', 6, 9, 20, 20, 'sacvert.jpg', 'Sac poubelle biodégradable fin. Capacité de 30L', 'Entretien'),
(6, 'Gel nettoyant', 20, 34, 20, 18, 'gelnettoyant.jpg', 'Gel nettoyant avec un contenu de produits naturels et écologiques.', 'Entretien'),
(7, 'Détergent Vert', 15, 25, 20, 16, 'detergent.jpg', 'Détergent à multi-usages fait de produits naturels en respectant la nature', 'Entretien'),
(13, 'Nettoyant vitre Green Force', 19, 25, 20, 22, 'nettoyantvitre.jpg', 'Une nouvelle gamme qui offre à vos vitres du vert frais. A base de produits naturels', 'Entretien'),
(15, 'Serviette pour vitre', 21, 29, 20, 7, 'serviettevitre.jpg', 'Une texture à fibre naturelle !', 'Entretien'),
(16, 'Nettoyant Sol', 30, 38, 20, 9, 'grandproduitsol.jpg', 'Produit nettoyant pour sol ! Que des produits bio vert. En grand format 10L', 'Entretien'),
(17, 'Spray multi-surfaces', 14, 20, 20, 38, 'spraynetoyyant.jpg', 'Un spray révolutionnaire qui nettoie tout en respectant l\'environnement. Pour tout type de surface', 'Entretien'),
(19, 'Sac poubelle moyen', 19, 23, 20, 26, 'sacbio.jpg', 'Sac poubelle. Taille moyenne. 30L', 'Entretien'),
(34, 'Bloc-mémo Artemis', 5, 7, 20, 30, 'bloc.jpg', 'Rangement à papier pour feuille A4, pour papier adhésif (pos-it) et bloc note. Fabriqué en carton compressé.', 'Papeterie'),
(35, 'Pot à stylos', 15, 26, 20, 20, 'potastylo.jpg', 'Un pot en bois pour permettre de ranger vos stylos en toute simplicité avec un design plaisant.', 'Papeterie'),
(36, 'Double décimètre en bois', 8, 14, 20, 20, 'regles.jpg', 'Règle de 20 cm en bois recyclé.', 'Papeterie'),
(37, 'Pot à crayon', 15, 25, 20, 10, 'potcrayon.jpg', 'Pot à crayon en cuir et fibre au design élegant.', 'Papeterie'),
(38, 'Range documents', 6, 10, 20, 50, 'classeurs.jpg', 'Range documents en plastique 100% recyclé.', 'Papeterie'),
(39, 'Bloc note', 12, 20, 20, 20, 'album.jpg', 'Lots de 3 blocs notes au format A3, A4, A5 de 200 pages en papier 100% recyclé.', 'Papeterie'),
(40, 'Lot stylos', 5, 7, 20, 50, 'Stylofournituresbureaupapeterie.jpg', 'Lot de 3 stylos 100 % recyclables.', 'Papeterie'),
(41, 'Ramette papier A3', 13, 16, 20, 100, 'papiergreen.jpg', 'Paquet de 500 feuilles blanche de papier 100% recyclé de qualité supérieure.', 'Papeterie'),
(42, 'Ramette papier A4', 18, 27, 20, 100, 'papierclair.jpg', 'Paquet de 500 feuilles blanche de papier 100% recyclé de qualité supérieure.', 'Papeterie'),
(43, 'Corbeille à papier bois', 25, 42, 20, 10, 'images (2).jpg', 'Corbeille à papier circulaire en bois brun style linéaire en perpendiculaire. Capacité de 30L', 'Equipement'),
(44, 'Corbeille à papier carré', 20, 34, 20, 10, 'pt20432321-professional_grade_bamboo_utensil_set_eco_friendly_with_ergonomic_handle.jpg', 'Corbeille à papier carré en bois style bambou. Capacité de 30L', 'Equipement'),
(45, 'Corbeille à papier rectangulaire', 20, 34, 20, 15, 'images.jpg', 'Corbeille à papier en bois clair design rectangulaire. Capacité de 30L', 'Equipement'),
(46, 'Boite de rangement bois 3 tiroirs', 27, 46, 20, 15, 'boiterangement.jpg', 'Petite étagère en bois pour rangement de fourniture en tout genre, composé de 3 tirroirs. Dimensions : H.L.l 40cm*25cm*35cm', 'Equipement'),
(47, 'Lot style Bambou', 36, 61, 20, 10, 'lotbambou.jpg', 'Lot composé d\'une corbeille et de trois rangements assortis en bois recyclable non traité de style bambou.', 'Equipement'),
(48, 'Bureaux amovibles open-space', 125, 213, 20, 5, 'bureauxmoviblesopenspace.jpg', 'Bureau pour open-space amovible léger et pratique, plusieurs montages possible. En bois 100% recyclé et réalisé en France', 'Equipement'),
(49, 'Ensemble de 4 bureaux', 480, 816, 20, 5, 'buroclair.jpg', 'Ensemble de 4 bureaux de style lighting qui à pour effet d\'éclaircir la pièce. Composé d\'une grande table 280x100, 4 chaises et 4 petits meubles. 		  Fabriqué à partir de bois 100% recyclé. Monté en France.', 'Equipement'),
(50, 'Table de réunion', 250, 425, 20, 5, 'tablereu.jpg', 'Grande table de reunion de style bois brun pour un effet rustique. Fabriqué en bois 100% recyclé. Dimensions L300 x l140.', ''),
(51, 'Bureaux design', 680, 1156, 20, 3, 'Voguebureau.jpg', 'Bureau individuel avec rangements de style UK, vendu avec une commode. Fabrique en bois 100% recyclable et monté en France.', '');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_l` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville_l` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp_l` int(11) NOT NULL,
  `adresse_f` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville_f` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp_f` int(11) NOT NULL,
  `ntva` int(11) NOT NULL,
  `nsiret` int(11) NOT NULL,
  `nkbis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `entreprise`, `responsable`, `email`, `telephone`, `adresse_l`, `ville_l`, `cp_l`, `adresse_f`, `ville_f`, `cp_f`, `ntva`, `nsiret`, `nkbis`, `username`, `username_canonical`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, '', '', 'poule@gmail.com', '', '', '', 12345, '', '', 1234, 54, 21555, 'df5846', 'Elle', 'elle', 'poule@gmail.com', 1, 'zOO.Oive12J3FyJeSjZ4BHUpqdkxSiPaGd2Ph2dIp7Q', '$2y$13$NF23eZGyxVjUvG8T/qvyguRsY6lecneUB2xCdpC7RyLs/wWA/aM9i', '2020-01-20 14:28:25', NULL, NULL, 'a:0:{}'),
(5, 'cbcv', 'cvbcv', 'poule1@gmail.com', '0612086557', '25 rue du coq', 'cocotte', 78545, 'cvb', 'cvb', 54, 54, 54, 'hh4', 'admin', 'admin', 'poule1@gmail.com', 1, NULL, '$2y$13$aVp2GnSe1o641WwRKsbiOu18aw37e7CPE03krvEUdRQO1JXfuZUL6', '2020-01-21 12:00:38', NULL, NULL, 'a:0:{}'),
(6, 'cbcv', 'cvbcv', 'admin@admin.com', '0155889966', 'fdgdfg', 'dfgdffg', 78542, '25 rue  mario', 'Marioworld', 75000, 54, 21, 'jkl54', 'seb', 'seb', 'admin@admin.com', 1, NULL, '$2y$13$UzJPmnF/jTdZFfqANHiw.OP4AL3Gs9z3NbfYXlcLu.0iug0YdLLYy', '2020-01-20 19:18:28', NULL, NULL, 'a:0:{}'),
(7, 'cbcv', 'cvbcv', 'eliza.piatycheva@gmail.com', '0612086557', '29 rue Jules Michelet', 'Guyancourt', 78280, '25 rue du crochet', 'La mer', 75100, 56, 65, 'kj54', 'eliza', 'eliza', 'eliza.piatycheva@gmail.com', 1, NULL, '$2y$13$wee2UBSLYNfyZhSP9lN5COGjnln88djTRUuL3MUT4Anh9UmPMtbee', NULL, NULL, NULL, 'a:0:{}'),
(8, 'cbcv', 'cvbcv', 'eliza.pi4atycheva@gmail.com', '0612086557', '29 rue Jules Michelet', 'Guyancourt', 78280, '25 rue du crochet', 'La mer', 75100, 56, 65, 'kj54', 'elizad', 'elizad', 'eliza.pi4atycheva@gmail.com', 1, NULL, '$2y$13$MPOaKomLoEbm6WYdD36xk./MIFQS8Ny571JiF7jYub.CwbMAUqvr6', '2020-01-21 09:58:11', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
