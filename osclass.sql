-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 03:18 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osclass`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_admin`
--

CREATE TABLE `oc_t_admin` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_username` varchar(40) NOT NULL,
  `s_password` char(60) NOT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `s_secret` varchar(40) DEFAULT NULL,
  `b_moderator` tinyint(1) NOT NULL DEFAULT 0,
  `s_moderator_access` varchar(1000) DEFAULT NULL,
  `i_login_fails` int(3) DEFAULT 0,
  `dt_login_fail_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_admin`
--

INSERT INTO `oc_t_admin` (`pk_i_id`, `s_name`, `s_username`, `s_password`, `s_email`, `s_secret`, `b_moderator`, `s_moderator_access`, `i_login_fails`, `dt_login_fail_date`) VALUES
(1, 'Administrator', 'admin', '$2y$15$tarf8jWFCtp.bNt9B/BlQe79tqk6nrM.ridtYCSK5F10YRuYH.u7S', 'fadermacuvele383@gmail.com', NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_alerts`
--

CREATE TABLE `oc_t_alerts` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `fk_i_user_id` int(10) UNSIGNED DEFAULT NULL,
  `s_search` longtext DEFAULT NULL,
  `s_secret` varchar(40) DEFAULT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT 0,
  `e_type` enum('INSTANT','HOURLY','DAILY','WEEKLY','CUSTOM') NOT NULL,
  `dt_date` datetime DEFAULT NULL,
  `dt_unsub_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_alerts_sent`
--

CREATE TABLE `oc_t_alerts_sent` (
  `d_date` date NOT NULL,
  `i_num_alerts_sent` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_ban_rule`
--

CREATE TABLE `oc_t_ban_rule` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(250) NOT NULL DEFAULT '',
  `s_ip` varchar(50) NOT NULL DEFAULT '',
  `s_email` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_category`
--

CREATE TABLE `oc_t_category` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_parent_id` int(10) UNSIGNED DEFAULT NULL,
  `i_expiration_days` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `i_position` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `b_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `b_price_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `s_icon` varchar(250) DEFAULT NULL,
  `s_color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_category`
--

INSERT INTO `oc_t_category` (`pk_i_id`, `fk_i_parent_id`, `i_expiration_days`, `i_position`, `b_enabled`, `b_price_enabled`, `s_icon`, `s_color`) VALUES
(1, NULL, 0, 11, 1, 1, NULL, NULL),
(2, 30, 0, 0, 1, 1, NULL, NULL),
(3, 30, 0, 1, 1, 1, NULL, NULL),
(4, 30, 0, 2, 1, 1, NULL, NULL),
(5, NULL, 0, 1, 1, 1, NULL, NULL),
(6, NULL, 0, 4, 1, 1, NULL, NULL),
(7, NULL, 0, 12, 1, 1, NULL, NULL),
(8, NULL, 0, 13, 1, 1, '', ''),
(9, 1, 0, 0, 1, 1, NULL, NULL),
(10, 1, 0, 1, 1, 1, NULL, NULL),
(11, 1, 0, 2, 1, 1, NULL, NULL),
(12, 1, 0, 3, 1, 1, NULL, NULL),
(13, 1, 0, 4, 1, 1, NULL, NULL),
(14, 1, 0, 5, 1, 1, NULL, NULL),
(15, 1, 0, 6, 1, 1, NULL, NULL),
(16, 1, 0, 7, 1, 1, NULL, NULL),
(17, 1, 0, 8, 1, 1, NULL, NULL),
(18, 1, 0, 9, 1, 1, NULL, NULL),
(19, 1, 0, 10, 1, 1, NULL, NULL),
(20, 1, 0, 11, 1, 1, NULL, NULL),
(21, 1, 0, 12, 1, 1, NULL, NULL),
(22, 1, 0, 13, 1, 1, NULL, NULL),
(23, 1, 0, 14, 1, 1, NULL, NULL),
(24, 1, 0, 15, 1, 1, NULL, NULL),
(25, 1, 0, 16, 1, 1, NULL, NULL),
(26, 1, 0, 17, 1, 1, NULL, NULL),
(27, 1, 0, 18, 1, 1, NULL, NULL),
(28, 1, 0, 19, 1, 1, NULL, NULL),
(29, 1, 0, 20, 1, 1, NULL, NULL),
(30, 1, 0, 21, 1, 1, NULL, NULL),
(31, 2, 0, 0, 1, 1, NULL, NULL),
(32, 2, 0, 1, 1, 1, NULL, NULL),
(33, 2, 0, 2, 1, 1, NULL, NULL),
(34, 2, 0, 3, 1, 1, NULL, NULL),
(35, 2, 0, 4, 1, 1, NULL, NULL),
(36, 2, 0, 5, 1, 1, NULL, NULL),
(37, 2, 0, 6, 1, 1, NULL, NULL),
(38, 3, 0, 0, 1, 1, NULL, NULL),
(39, 3, 0, 1, 1, 1, NULL, NULL),
(40, 3, 0, 2, 1, 1, NULL, NULL),
(41, 3, 0, 3, 1, 1, NULL, NULL),
(42, 3, 0, 4, 1, 1, NULL, NULL),
(43, 4, 0, 0, 1, 1, NULL, NULL),
(44, 4, 0, 1, 1, 1, NULL, NULL),
(45, 4, 0, 2, 1, 1, NULL, NULL),
(46, 4, 0, 3, 1, 1, NULL, NULL),
(47, 4, 0, 4, 1, 1, NULL, NULL),
(48, 4, 0, 5, 1, 1, NULL, NULL),
(49, 4, 0, 6, 1, 1, NULL, NULL),
(50, 4, 0, 7, 1, 1, NULL, NULL),
(51, 4, 0, 8, 1, 1, NULL, NULL),
(52, NULL, 0, 3, 1, 1, NULL, NULL),
(53, NULL, 0, 2, 1, 1, NULL, NULL),
(54, 5, 0, 0, 1, 1, NULL, NULL),
(55, 5, 0, 1, 1, 1, NULL, NULL),
(56, 5, 0, 2, 1, 1, NULL, NULL),
(57, 5, 0, 3, 1, 1, NULL, NULL),
(58, 5, 0, 4, 1, 1, NULL, NULL),
(59, 5, 0, 5, 1, 1, NULL, NULL),
(60, 5, 0, 6, 1, 1, NULL, NULL),
(61, 5, 0, 7, 1, 1, NULL, NULL),
(62, 5, 0, 8, 1, 1, NULL, NULL),
(63, NULL, 0, 10, 1, 1, NULL, NULL),
(64, NULL, 0, 9, 1, 1, NULL, NULL),
(65, NULL, 0, 8, 1, 1, NULL, NULL),
(66, NULL, 0, 7, 1, 1, NULL, NULL),
(67, NULL, 0, 6, 1, 1, NULL, NULL),
(68, NULL, 0, 5, 1, 1, NULL, NULL),
(69, 7, 0, 0, 1, 1, NULL, NULL),
(70, 7, 0, 1, 1, 1, NULL, NULL),
(71, 7, 0, 2, 1, 1, NULL, NULL),
(72, 7, 0, 3, 1, 1, NULL, NULL),
(73, 7, 0, 4, 1, 1, NULL, NULL),
(74, 7, 0, 5, 1, 1, NULL, NULL),
(75, 8, 0, 0, 1, 1, NULL, NULL),
(76, 8, 0, 1, 1, 1, NULL, NULL),
(77, 8, 0, 2, 1, 1, NULL, NULL),
(78, 8, 0, 3, 1, 1, NULL, NULL),
(79, 8, 0, 4, 1, 1, NULL, NULL),
(80, 8, 0, 5, 1, 1, NULL, NULL),
(81, 8, 0, 6, 1, 1, NULL, NULL),
(82, 8, 0, 7, 1, 1, NULL, NULL),
(83, 8, 0, 8, 1, 1, NULL, NULL),
(84, 8, 0, 9, 1, 1, NULL, NULL),
(85, 8, 0, 10, 1, 1, NULL, NULL),
(86, 8, 0, 11, 1, 1, NULL, NULL),
(87, 8, 0, 12, 1, 1, NULL, NULL),
(88, 8, 0, 13, 1, 1, NULL, NULL),
(89, 8, 0, 14, 1, 1, NULL, NULL),
(90, 8, 0, 15, 1, 1, NULL, NULL),
(91, 8, 0, 16, 1, 1, NULL, NULL),
(92, 8, 0, 17, 1, 1, NULL, NULL),
(93, 8, 0, 18, 1, 1, NULL, NULL),
(94, 8, 0, 19, 1, 1, NULL, NULL),
(95, 8, 0, 20, 1, 1, NULL, NULL),
(100, NULL, 0, 0, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_category_description`
--

CREATE TABLE `oc_t_category_description` (
  `fk_i_category_id` int(10) UNSIGNED NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_description` text DEFAULT NULL,
  `s_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_category_description`
--

INSERT INTO `oc_t_category_description` (`fk_i_category_id`, `fk_c_locale_code`, `s_name`, `s_description`, `s_slug`) VALUES
(1, 'en_US', 'For sale', NULL, 'for-sale'),
(1, 'pt_PT', 'Para venda', '', 'para-venda'),
(2, 'en_US', 'Vehicles', NULL, 'vehicles'),
(2, 'pt_PT', 'Veículos', '', 'veiculos'),
(3, 'en_US', 'Classes', NULL, 'classes'),
(3, 'pt_PT', 'Aulas', '', 'aulas'),
(4, 'en_US', 'Real estate', NULL, 'real-estate'),
(4, 'pt_PT', 'Imobiliário', '', 'imobiliario'),
(5, 'en_US', 'Services', NULL, 'services'),
(5, 'pt_PT', 'Serviços', '', 'servicos'),
(6, 'en_US', 'Community', NULL, 'community'),
(6, 'pt_PT', 'Comunidade', '', 'comunidade'),
(7, 'en_US', 'Personals', NULL, 'personals'),
(7, 'pt_PT', 'Pessoais', '', 'pessoais'),
(8, 'en_US', 'Jobs', 'description eng', 'jobs'),
(8, 'pt_PT', 'Empregos', 'descricao em portugues', 'empregos'),
(9, 'en_US', 'Animals', NULL, 'animals'),
(9, 'pt_PT', 'Animais', '', 'animais'),
(10, 'en_US', 'Art - Collectibles', NULL, 'art-collectibles'),
(10, 'pt_PT', 'Arte - Colecionáveis', '', 'arte-colecionaveis'),
(11, 'en_US', 'Barter', NULL, 'barter'),
(11, 'pt_PT', 'Trocas', '', 'trocas'),
(12, 'en_US', 'Books - Magazines', NULL, 'books-magazines'),
(12, 'pt_PT', 'Livros - Revistas', '', 'livros-revistas'),
(13, 'en_US', 'Cameras - Camera Accessories', NULL, 'cameras-camera-accessories'),
(13, 'pt_PT', 'Câmera - Acessórios de Câmeras', '', 'camera-acessorios-de-cameras'),
(14, 'en_US', 'CDs - Records', NULL, 'cds-records'),
(14, 'pt_PT', 'CDs - Discos', '', 'cds-discos'),
(15, 'en_US', 'Cell Phones - Accessories', NULL, 'cell-phones-accessories'),
(15, 'pt_PT', 'Telemóveis - Acessórios', '', 'telemoveis-acessorios'),
(16, 'en_US', 'Clothing', NULL, 'clothing'),
(16, 'pt_PT', 'Roupa', '', 'roupa'),
(17, 'en_US', 'Computers - Hardware', NULL, 'computers-hardware'),
(17, 'pt_PT', 'Computadores - Hardware', '', 'computadores-hardware'),
(18, 'en_US', 'DVD', NULL, 'dvd'),
(18, 'pt_PT', 'DVD', '', 'dvd_1'),
(19, 'en_US', 'Electronics', NULL, 'electronics'),
(19, 'pt_PT', 'Eletrónica', '', 'eletronica'),
(20, 'en_US', 'For Babies - Infants', NULL, 'for-babies-infants'),
(20, 'pt_PT', 'Para Bébés - Crianças', '', 'para-bebes-criancas'),
(21, 'en_US', 'Garage Sale', NULL, 'garage-sale'),
(21, 'pt_PT', 'Venda de Garagem', '', 'venda-de-garagem'),
(22, 'en_US', 'Health - Beauty', NULL, 'health-beauty'),
(22, 'pt_PT', 'Saúde - Beleza', '', 'saude-beleza'),
(23, 'en_US', 'Home - Furniture - Garden Supplies', NULL, 'home-furniture-garden-supplies'),
(23, 'pt_PT', 'Casa - Mobília - Jardim', '', 'casa-mobilia-jardim'),
(24, 'en_US', 'Jewelry - Watches', NULL, 'jewelry-watches'),
(24, 'pt_PT', 'Joías - Relógios', '', 'joias-relogios'),
(25, 'en_US', 'Musical Instruments', NULL, 'musical-instruments'),
(25, 'pt_PT', 'Instrumentos Musicais', '', 'instrumentos-musicais'),
(26, 'en_US', 'Sporting Goods - Bicycles', NULL, 'sporting-goods-bicycles'),
(26, 'pt_PT', 'Artigos de Desporto - Bicicletas', '', 'artigos-de-desporto-bicicletas'),
(27, 'en_US', 'Tickets', NULL, 'tickets'),
(27, 'pt_PT', 'Bilhetes', '', 'bilhetes'),
(28, 'en_US', 'Toys - Games - Hobbies', NULL, 'toys-games-hobbies'),
(28, 'pt_PT', 'Brinquedos - Jogos - Passatempos', '', 'brinquedos-jogos-passatempos'),
(29, 'en_US', 'Video Games - Consoles', NULL, 'video-games-consoles'),
(29, 'pt_PT', 'Jogos de Vídeo - Consolas', '', 'jogos-de-video-consolas'),
(30, 'en_US', 'Everything Else', NULL, 'everything-else'),
(30, 'pt_PT', 'Tudo o Resto', '', 'tudo-o-resto'),
(31, 'en_US', 'Cars', NULL, 'cars'),
(31, 'pt_PT', 'Carros', '', 'carros'),
(32, 'en_US', 'Car Parts', NULL, 'car-parts'),
(32, 'pt_PT', 'Peças Auto', '', 'pecas-auto'),
(33, 'en_US', 'Motorcycles', NULL, 'motorcycles'),
(33, 'pt_PT', 'Motociclos', '', 'motociclos'),
(34, 'en_US', 'Boats - Ships', NULL, 'boats-ships'),
(34, 'pt_PT', 'Barcos - Navios', '', 'barcos-navios'),
(35, 'en_US', 'RVs - Campers - Caravans', NULL, 'rvs-campers-caravans'),
(35, 'pt_PT', 'Autocaravanas - Campismo - Roulotes', '', 'autocaravanas-campismo-roulotes'),
(36, 'en_US', 'Trucks - Commercial Vehicles', NULL, 'trucks-commercial-vehicles'),
(36, 'pt_PT', 'Camiões - Veículos Comerciais', '', 'camioes-veiculos-comerciais'),
(37, 'en_US', 'Other Vehicles', NULL, 'other-vehicles'),
(37, 'pt_PT', 'Outros Veículos', '', 'outros-veiculos'),
(38, 'en_US', 'Computer - Multimedia Classes', NULL, 'computer-multimedia-classes'),
(38, 'pt_PT', 'Computadores - Aulas multimédia', '', 'computadores-aulas-multimedia'),
(39, 'en_US', 'Language Classes', NULL, 'language-classes'),
(39, 'pt_PT', 'Aulas de Línguas', '', 'aulas-de-linguas'),
(40, 'en_US', 'Music - Theatre - Dance Classes', NULL, 'music-theatre-dance-classes'),
(40, 'pt_PT', 'Música - Teatro - Aulas de Dança', '', 'musica-teatro-aulas-de-danca'),
(41, 'en_US', 'Tutoring - Private Lessons', NULL, 'tutoring-private-lessons'),
(41, 'pt_PT', 'Aulas - Lições privadas', '', 'aulas-licoes-privadas'),
(42, 'en_US', 'Other Classes', NULL, 'other-classes'),
(42, 'pt_PT', 'Outras Aulas', '', 'outras-aulas'),
(43, 'en_US', 'Houses - Apartments for Sale', NULL, 'houses-apartments-for-sale'),
(43, 'pt_PT', 'Casa - Apartamentos para alugar', '', 'casa-apartamentos-para-alugar'),
(44, 'en_US', 'Houses - Apartments for Rent', NULL, 'houses-apartments-for-rent'),
(44, 'pt_PT', 'Casa - Apartamentos para alugar', '', 'casa-apartamentos-para-alugar_1'),
(45, 'en_US', 'Rooms for Rent - Shared', NULL, 'rooms-for-rent-shared'),
(45, 'pt_PT', 'Quartos para Alugar - Partilhados', '', 'quartos-para-alugar-partilhados'),
(46, 'en_US', 'Housing Swap', NULL, 'housing-swap'),
(46, 'pt_PT', 'Troca de Casa', '', 'troca-de-casa'),
(47, 'en_US', 'Vacation Rentals', NULL, 'vacation-rentals'),
(47, 'pt_PT', 'Aluguer para Férias', '', 'aluguer-para-ferias'),
(48, 'en_US', 'Parking Spots', NULL, 'parking-spots'),
(48, 'pt_PT', 'Lugares de Estacionamento', '', 'lugares-de-estacionamento'),
(49, 'en_US', 'Land', NULL, 'land'),
(49, 'pt_PT', 'Terrenos', '', 'terrenos'),
(50, 'en_US', 'Office - Commercial Space', NULL, 'office-commercial-space'),
(50, 'pt_PT', 'Escritórios - Espaços Comerciais', '', 'escritorios-espacos-comerciais'),
(51, 'en_US', 'Shops for Rent - Sale', NULL, 'shops-for-rent-sale'),
(51, 'pt_PT', 'Lojas para Aluguer - Venda', '', 'lojas-para-aluguer-venda'),
(52, 'en_US', 'Babysitter - Nanny', NULL, 'babysitter-nanny'),
(52, 'pt_PT', 'Babysitter - Ama', '', 'babysitter-ama'),
(53, 'en_US', 'Casting - Auditions', NULL, 'casting-auditions'),
(53, 'pt_PT', 'Casting - Audições', '', 'casting-audicoes'),
(54, 'en_US', 'Computer', NULL, 'computer'),
(54, 'pt_PT', 'Computadores', '', 'computadores'),
(55, 'en_US', 'Event Services', NULL, 'event-services'),
(55, 'pt_PT', 'Serviços de Eventos', '', 'servicos-de-eventos'),
(56, 'en_US', 'Health - Beauty - Fitness', NULL, 'health-beauty-fitness'),
(56, 'pt_PT', 'Saúde - Beleza - Fitness', '', 'saude-beleza-fitness'),
(57, 'en_US', 'Horoscopes - Tarot', NULL, 'horoscopes-tarot'),
(57, 'pt_PT', 'Horóscopos - Tarot', '', 'horoscopos-tarot'),
(58, 'en_US', 'Household - Domestic Help', NULL, 'household-domestic-help'),
(58, 'pt_PT', 'Casa - Ajuda Doméstica', '', 'casa-ajuda-domestica'),
(59, 'en_US', 'Moving - Storage', NULL, 'moving-storage'),
(59, 'pt_PT', 'Mudanças - Armazéns', '', 'mudancas-armazens'),
(60, 'en_US', 'Repair', NULL, 'repair'),
(60, 'pt_PT', 'Reparações', '', 'reparacoes'),
(61, 'en_US', 'Writing - Editing - Translating', NULL, 'writing-editing-translating'),
(61, 'pt_PT', 'Escrita - Edição - Tradução', '', 'escrita-edicao-traducao'),
(62, 'en_US', 'Other Services', NULL, 'other-services'),
(62, 'pt_PT', 'Outros Serviços', '', 'outros-servicos'),
(63, 'en_US', 'Carpool', NULL, 'carpool'),
(63, 'pt_PT', 'Carpool', '', 'carpool_1'),
(64, 'en_US', 'Community Activities', NULL, 'community-activities'),
(64, 'pt_PT', 'Atividades Comunitárias', '', 'atividades-comunitarias'),
(65, 'en_US', 'Events', NULL, 'events'),
(65, 'pt_PT', 'Eventos', '', 'eventos'),
(66, 'en_US', 'Musicians - Artists - Bands', NULL, 'musicians-artists-bands'),
(66, 'pt_PT', 'Músicos - Artistas - Bandas', '', 'musicos-artistas-bandas'),
(67, 'en_US', 'Volunteers', NULL, 'volunteers'),
(67, 'pt_PT', 'Voluntários', '', 'voluntarios'),
(68, 'en_US', 'Lost And Found', NULL, 'lost-and-found'),
(68, 'pt_PT', 'Perdidos e Achados', '', 'perdidos-e-achados'),
(69, 'en_US', 'Women looking for Men', NULL, 'women-looking-for-men'),
(69, 'pt_PT', 'Mulher procura Homem', '', 'mulher-procura-homem'),
(70, 'en_US', 'Men looking for Women', NULL, 'men-looking-for-women'),
(70, 'pt_PT', 'Homem procura Mulher', '', 'homem-procura-mulher'),
(71, 'en_US', 'Men looking for Men', NULL, 'men-looking-for-men'),
(71, 'pt_PT', 'Homem procura Homem', '', 'homem-procura-homem'),
(72, 'en_US', 'Women looking for Women', NULL, 'women-looking-for-women'),
(72, 'pt_PT', 'Mulher procura Mulher', '', 'mulher-procura-mulher'),
(73, 'en_US', 'Friendship - Activity Partners', NULL, 'friendship-activity-partners'),
(73, 'pt_PT', 'Amizade - Parceiros de atividade', '', 'amizade-parceiros-de-atividade'),
(74, 'en_US', 'Missed Connections', NULL, 'missed-connections'),
(74, 'pt_PT', 'Ligações Perdidas', '', 'ligacoes-perdidas'),
(75, 'en_US', 'Accounting - Finance', NULL, 'accounting-finance'),
(75, 'pt_PT', 'Contabilidade - Finanças', '', 'contabilidade-financas'),
(76, 'en_US', 'Advertising - Public Relations', NULL, 'advertising-public-relations'),
(76, 'pt_PT', 'Publicidade - Relações Públicas', '', 'publicidade-relacoes-publicas'),
(77, 'en_US', 'Arts - Entertainment - Publishing', NULL, 'arts-entertainment-publishing'),
(77, 'pt_PT', 'Artes - Entretenimento - Publicações', '', 'artes-entretenimento-publicacoes'),
(78, 'en_US', 'Clerical - Administrative', NULL, 'clerical-administrative'),
(78, 'pt_PT', 'Religioso - Administrativo', '', 'religioso-administrativo'),
(79, 'en_US', 'Customer Service', NULL, 'customer-service'),
(79, 'pt_PT', 'Serviço a Clientes', '', 'servico-a-clientes'),
(80, 'en_US', 'Education - Training', NULL, 'education-training'),
(80, 'pt_PT', 'Educação - Treino', '', 'educacao-treino'),
(81, 'en_US', 'Engineering - Architecture', NULL, 'engineering-architecture'),
(81, 'pt_PT', 'Engenharia - Arquitetura', '', 'engenharia-arquitetura'),
(82, 'en_US', 'Healthcare', NULL, 'healthcare'),
(82, 'pt_PT', 'Cuidados de Saúde', '', 'cuidados-de-saude'),
(83, 'en_US', 'Human Resource', NULL, 'human-resource'),
(83, 'pt_PT', 'Recursos Humanos', '', 'recursos-humanos'),
(84, 'en_US', 'Internet', NULL, 'internet'),
(84, 'pt_PT', 'Internet', '', 'internet_1'),
(85, 'en_US', 'Legal', NULL, 'legal'),
(85, 'pt_PT', 'Legalidade', '', 'legalidade'),
(86, 'en_US', 'Manual Labor', NULL, 'manual-labor'),
(86, 'pt_PT', 'Trabalhos Manuais', '', 'trabalhos-manuais'),
(87, 'en_US', 'Manufacturing - Operations', NULL, 'manufacturing-operations'),
(87, 'pt_PT', 'Fabrico - Operações', '', 'fabrico-operacoes'),
(88, 'en_US', 'Marketing', NULL, 'marketing'),
(88, 'pt_PT', 'Marketing', '', 'marketing_1'),
(89, 'en_US', 'Non-profit - Volunteer', NULL, 'non-profit-volunteer'),
(89, 'pt_PT', 'Não-lucrativo - Voluntariado', '', 'nao-lucrativo-voluntariado'),
(90, 'en_US', 'Real Estate', NULL, 'real-estate_1'),
(90, 'pt_PT', 'Imobiliário', '', 'imobiliario_1'),
(91, 'en_US', 'Restaurant - Food Service', NULL, 'restaurant-food-service'),
(91, 'pt_PT', 'Restaurante - Serviços de Comida', '', 'restaurante-servicos-de-comida'),
(92, 'en_US', 'Retail', NULL, 'retail'),
(92, 'pt_PT', 'Retalho', '', 'retalho'),
(93, 'en_US', 'Sales', NULL, 'sales'),
(93, 'pt_PT', 'Vendas', '', 'vendas'),
(94, 'en_US', 'Technology', NULL, 'technology'),
(94, 'pt_PT', 'Tecnologia', '', 'tecnologia'),
(95, 'en_US', 'Other Jobs', NULL, 'other-jobs'),
(95, 'pt_PT', 'Outros Empregos', '', 'outros-empregos'),
(100, 'en_US', 'fdfgsdfsf', 'sdfsdfsdf dfsdfsdfsdf', 'fdfgsdfsf'),
(100, 'pt_PT', 'NEW CATEGORY, EDIT ME!', 'sdfsdfsdf sdfsdfsdf dsfsdfsdfsdf ', 'new-category-edit-me');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_category_stats`
--

CREATE TABLE `oc_t_category_stats` (
  `fk_i_category_id` int(10) UNSIGNED NOT NULL,
  `i_num_items` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_category_stats`
--

INSERT INTO `oc_t_category_stats` (`fk_i_category_id`, `i_num_items`) VALUES
(1, 1),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 1),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 1),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_city`
--

CREATE TABLE `oc_t_city` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_region_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `s_name_native` varchar(60) DEFAULT NULL,
  `s_slug` varchar(60) NOT NULL DEFAULT '',
  `fk_c_country_code` char(2) DEFAULT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT 1,
  `d_coord_lat` decimal(20,10) DEFAULT NULL,
  `d_coord_long` decimal(20,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_city`
--

INSERT INTO `oc_t_city` (`pk_i_id`, `fk_i_region_id`, `s_name`, `s_name_native`, `s_slug`, `fk_c_country_code`, `b_active`, `d_coord_lat`, `d_coord_long`) VALUES
(1076588, 1003328, 'Alto Molócuè', NULL, 'alto-molocue', 'MZ', 1, '-15.6493200000', '37.6638400000'),
(1076589, 1003336, 'António Enes', NULL, 'antonio-enes', 'MZ', 1, '-16.2325000000', '39.9086100000'),
(1076590, 1003331, 'Beira', NULL, 'beira', 'MZ', 1, '-19.8436100000', '34.8388900000'),
(1076591, 1003332, 'Boane District', NULL, 'boane-district', 'MZ', 1, '-26.0290000000', '32.3890000000'),
(1076592, 1003329, 'Chibuto', NULL, 'chibuto', 'MZ', 1, '-24.6866700000', '33.5305600000'),
(1076593, 1003337, 'Chimoio', NULL, 'chimoio', 'MZ', 1, '-19.1163900000', '33.4833300000'),
(1076594, 1003328, 'Chinde', NULL, 'chinde', 'MZ', 1, '-18.5811100000', '36.4586100000'),
(1076595, 1003327, 'Chiure', NULL, 'chiure', 'MZ', 1, '-13.4666500000', '39.7031700000'),
(1076596, 1003329, 'Chokwé', NULL, 'chokwe', 'MZ', 1, '-24.5333300000', '32.9833300000'),
(1076597, 1003332, 'Concelho de Matola', NULL, 'concelho-de-matola', 'MZ', 1, '-25.8347200000', '32.4951600000'),
(1076598, 1003333, 'Cuamba', NULL, 'cuamba', 'MZ', 1, '-14.8030600000', '36.5372200000'),
(1076599, 1003331, 'Dondo', NULL, 'dondo', 'MZ', 1, '-19.6094400000', '34.7430600000'),
(1076600, 1003336, 'Ilha de Moçambique', NULL, 'ilha-de-mocambique', 'MZ', 1, '-15.0341700000', '40.7358300000'),
(1076601, 1003330, 'Inhambane', NULL, 'inhambane', 'MZ', 1, '-23.8650000000', '35.3833300000'),
(1076602, 1003335, 'KaTembe', NULL, 'katembe', 'MZ', 1, '-26.0298500000', '32.5320400000'),
(1076603, 1003333, 'Lichinga', NULL, 'lichinga', 'MZ', 1, '-13.3127800000', '35.2405600000'),
(1076604, 1003329, 'Macia', NULL, 'macia', 'MZ', 1, '-25.0269400000', '33.0988900000'),
(1076605, 1003332, 'Magude District', NULL, 'magude-district', 'MZ', 1, '-25.0238900000', '32.6515000000'),
(1076606, 1003333, 'Mandimba', NULL, 'mandimba', 'MZ', 1, '-14.3525000000', '35.6505600000'),
(1076607, 1003332, 'Manhica', NULL, 'manhica', 'MZ', 1, '-25.3403500000', '32.8423400000'),
(1076608, 1003335, 'Maputo', NULL, 'maputo', 'MZ', 1, '-25.9655300000', '32.5832200000'),
(1076609, 1003332, 'Marracuene District', NULL, 'marracuene-district', 'MZ', 1, '-25.7393800000', '32.6743600000'),
(1076610, 1003332, 'Matola', NULL, 'matola', 'MZ', 1, '-25.9622200000', '32.4588900000'),
(1076611, 1003332, 'Matutiune District', NULL, 'matutiune-district', 'MZ', 1, '-26.4341800000', '32.5882000000'),
(1076612, 1003330, 'Maxixe', NULL, 'maxixe', 'MZ', 1, '-23.8597200000', '35.3472200000'),
(1076613, 1003332, 'Moamba District', NULL, 'moamba-district', 'MZ', 1, '-25.6093400000', '32.2432100000'),
(1076614, 1003327, 'Mocímboa', NULL, 'mocimboa', 'MZ', 1, '-11.3166700000', '40.3500000000'),
(1076615, 1003327, 'Montepuez', NULL, 'montepuez', 'MZ', 1, '-13.1255600000', '38.9997200000'),
(1076616, 1003336, 'Mutuáli', NULL, 'mutuali', 'MZ', 1, '-14.8705600000', '37.0044400000'),
(1076617, 1003336, 'Nacala', NULL, 'nacala', 'MZ', 1, '-14.5625700000', '40.6853800000'),
(1076618, 1003332, 'Namaacha District', NULL, 'namaacha-district', 'MZ', 1, '-26.1090000000', '32.1800000000'),
(1076619, 1003336, 'Nampula', NULL, 'nampula', 'MZ', 1, '-15.1164600000', '39.2666000000'),
(1076620, 1003331, 'Nhamatanda District', NULL, 'nhamatanda-district', 'MZ', 1, '-19.3490000000', '34.2680000000'),
(1076621, 1003327, 'Pemba', NULL, 'pemba', 'MZ', 1, '-12.9739500000', '40.5177500000'),
(1076622, 1003328, 'Quelimane', NULL, 'quelimane', 'MZ', 1, '-17.8786100000', '36.8883300000'),
(1076623, 1003332, 'Ressano Garcia', NULL, 'ressano-garcia', 'MZ', 1, '-25.4427800000', '31.9952800000'),
(1076624, 1003334, 'Tete', NULL, 'tete', 'MZ', 1, '-16.1563900000', '33.5866700000'),
(1076625, 1003329, 'Xai-Xai', NULL, 'xai-xai', 'MZ', 1, '-25.0519400000', '33.6441700000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_city_area`
--

CREATE TABLE `oc_t_city_area` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_city_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_city_stats`
--

CREATE TABLE `oc_t_city_stats` (
  `fk_i_city_id` int(10) UNSIGNED NOT NULL,
  `i_num_items` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_city_stats`
--

INSERT INTO `oc_t_city_stats` (`fk_i_city_id`, `i_num_items`) VALUES
(1076588, 0),
(1076589, 0),
(1076590, 0),
(1076591, 0),
(1076592, 0),
(1076593, 0),
(1076594, 0),
(1076595, 0),
(1076597, 0),
(1076598, 0),
(1076599, 0),
(1076600, 0),
(1076601, 0),
(1076602, 0),
(1076603, 0),
(1076604, 0),
(1076605, 0),
(1076606, 0),
(1076607, 0),
(1076608, 0),
(1076609, 0),
(1076610, 0),
(1076611, 0),
(1076612, 0),
(1076613, 0),
(1076614, 0),
(1076615, 0),
(1076616, 0),
(1076617, 0),
(1076618, 0),
(1076619, 0),
(1076620, 0),
(1076621, 0),
(1076622, 0),
(1076623, 0),
(1076624, 0),
(1076625, 0),
(1076596, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_country`
--

CREATE TABLE `oc_t_country` (
  `pk_c_code` char(2) NOT NULL,
  `s_name` varchar(80) NOT NULL,
  `s_name_native` varchar(80) DEFAULT NULL,
  `s_phone_code` varchar(10) DEFAULT NULL,
  `s_currency` varchar(10) DEFAULT NULL,
  `s_slug` varchar(80) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_country`
--

INSERT INTO `oc_t_country` (`pk_c_code`, `s_name`, `s_name_native`, `s_phone_code`, `s_currency`, `s_slug`) VALUES
('MZ', 'Mozambique', 'Moçambique', '258', 'MZN', 'mozambique');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_country_stats`
--

CREATE TABLE `oc_t_country_stats` (
  `fk_c_country_code` char(2) NOT NULL,
  `i_num_items` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_country_stats`
--

INSERT INTO `oc_t_country_stats` (`fk_c_country_code`, `i_num_items`) VALUES
('MZ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_cron`
--

CREATE TABLE `oc_t_cron` (
  `e_type` enum('INSTANT','HOURLY','DAILY','WEEKLY','CUSTOM') NOT NULL,
  `d_last_exec` datetime NOT NULL,
  `d_next_exec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_cron`
--

INSERT INTO `oc_t_cron` (`e_type`, `d_last_exec`, `d_next_exec`) VALUES
('HOURLY', '2021-12-02 07:46:20', '2021-12-02 08:46:00'),
('DAILY', '2021-12-02 07:46:20', '2021-12-03 07:46:00'),
('WEEKLY', '2021-11-09 12:57:13', '2021-11-16 12:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_currency`
--

CREATE TABLE `oc_t_currency` (
  `pk_c_code` char(3) NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `s_description` varchar(80) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_currency`
--

INSERT INTO `oc_t_currency` (`pk_c_code`, `s_name`, `s_description`, `b_enabled`) VALUES
('EUR', 'European Union Euro', '€', 1),
('GBP', 'United Kingdom Pound', '£', 1),
('USD', 'United States Dollar', '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item`
--

CREATE TABLE `oc_t_item` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_user_id` int(10) UNSIGNED DEFAULT NULL,
  `fk_i_category_id` int(10) UNSIGNED NOT NULL,
  `dt_pub_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `f_price` float DEFAULT NULL,
  `i_price` bigint(20) DEFAULT NULL,
  `fk_c_currency_code` char(3) DEFAULT NULL,
  `s_contact_name` varchar(100) DEFAULT NULL,
  `s_contact_email` varchar(140) NOT NULL,
  `s_contact_phone` varchar(100) DEFAULT NULL,
  `s_contact_other` varchar(100) DEFAULT NULL,
  `s_ip` varchar(64) NOT NULL DEFAULT '',
  `b_premium` tinyint(1) NOT NULL DEFAULT 0,
  `b_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `b_active` tinyint(1) NOT NULL DEFAULT 0,
  `b_spam` tinyint(1) NOT NULL DEFAULT 0,
  `s_secret` varchar(40) DEFAULT NULL,
  `b_show_email` tinyint(1) DEFAULT NULL,
  `b_show_phone` tinyint(1) DEFAULT 1,
  `i_renewed` int(3) DEFAULT 0,
  `dt_expiration` datetime NOT NULL DEFAULT '9999-12-31 23:59:59'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item`
--

INSERT INTO `oc_t_item` (`pk_i_id`, `fk_i_user_id`, `fk_i_category_id`, `dt_pub_date`, `dt_mod_date`, `f_price`, `i_price`, `fk_c_currency_code`, `s_contact_name`, `s_contact_email`, `s_contact_phone`, `s_contact_other`, `s_ip`, `b_premium`, `b_enabled`, `b_active`, `b_spam`, `s_secret`, `b_show_email`, `b_show_phone`, `i_renewed`, `dt_expiration`) VALUES
(1, NULL, 9, '2021-10-25 12:53:30', NULL, NULL, NULL, NULL, 'Example author', 'osclass@example.com', '', '', '::1', 0, 1, 1, 0, 'enbVxgFO', 0, 0, 0, '9999-12-31 23:59:59'),
(2, NULL, 52, '2021-10-27 11:08:27', '2021-10-27 11:45:31', NULL, 56000000, 'USD', 'Cau', 'cau@gmail.com', '', '', '::1', 0, 1, 1, 0, 'aPzvCprW', 0, 1, 0, '9999-12-31 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_comment`
--

CREATE TABLE `oc_t_item_comment` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `dt_pub_date` datetime NOT NULL,
  `s_title` varchar(200) NOT NULL,
  `s_author_name` varchar(100) NOT NULL,
  `s_author_email` varchar(100) NOT NULL,
  `s_body` text NOT NULL,
  `i_rating` int(3) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `b_active` tinyint(1) NOT NULL DEFAULT 0,
  `b_spam` tinyint(1) NOT NULL DEFAULT 0,
  `fk_i_user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_description`
--

CREATE TABLE `oc_t_item_description` (
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `s_description` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item_description`
--

INSERT INTO `oc_t_item_description` (`fk_i_item_id`, `fk_c_locale_code`, `s_title`, `s_description`) VALUES
(1, 'en_US', 'Example Ad', 'Description of the example ad. Insert here some usefull description of your ad.'),
(2, 'en_US', 'Service test', 'description asdjjekdkadsdesde  saded'),
(2, 'pt_PT', 'Service test', 'descricao do produto dade sdeadesddesasd');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_location`
--

CREATE TABLE `oc_t_item_location` (
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `fk_c_country_code` char(2) DEFAULT NULL,
  `s_country` varchar(40) DEFAULT NULL,
  `s_country_native` varchar(80) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_zip` varchar(15) DEFAULT NULL,
  `fk_i_region_id` int(10) UNSIGNED DEFAULT NULL,
  `s_region` varchar(100) DEFAULT NULL,
  `s_region_native` varchar(60) DEFAULT NULL,
  `fk_i_city_id` int(10) UNSIGNED DEFAULT NULL,
  `s_city` varchar(100) DEFAULT NULL,
  `s_city_native` varchar(60) DEFAULT NULL,
  `fk_i_city_area_id` int(10) UNSIGNED DEFAULT NULL,
  `s_city_area` varchar(200) DEFAULT NULL,
  `d_coord_lat` decimal(20,10) DEFAULT NULL,
  `d_coord_long` decimal(20,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item_location`
--

INSERT INTO `oc_t_item_location` (`fk_i_item_id`, `fk_c_country_code`, `s_country`, `s_country_native`, `s_address`, `s_zip`, `fk_i_region_id`, `s_region`, `s_region_native`, `fk_i_city_id`, `s_city`, `s_city_native`, `fk_i_city_area_id`, `s_city_area`, `d_coord_lat`, `d_coord_long`) VALUES
(1, NULL, 'Example country', '', '', NULL, NULL, 'Example region', NULL, NULL, 'Example city', NULL, NULL, '', NULL, NULL),
(2, 'MZ', 'Mozambique', 'Moçambique', 'Asdasd', '1231232', 1003329, 'Gaza Province', NULL, 1076596, 'Chokwé', NULL, NULL, '312', '-24.5333300000', '32.9833300000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_meta`
--

CREATE TABLE `oc_t_item_meta` (
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `fk_i_field_id` int(10) UNSIGNED NOT NULL,
  `s_value` text DEFAULT NULL,
  `s_multi` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_resource`
--

CREATE TABLE `oc_t_item_resource` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `s_extension` varchar(10) DEFAULT NULL,
  `s_content_type` varchar(40) DEFAULT NULL,
  `s_path` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item_resource`
--

INSERT INTO `oc_t_item_resource` (`pk_i_id`, `fk_i_item_id`, `s_name`, `s_extension`, `s_content_type`, `s_path`) VALUES
(1, 2, 'iEKAnf3J', 'jpg', 'image/jpeg', 'oc-content/uploads/0/');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_stats`
--

CREATE TABLE `oc_t_item_stats` (
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `i_num_views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `i_num_spam` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `i_num_repeated` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `i_num_bad_classified` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `i_num_offensive` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `i_num_expired` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `i_num_premium_views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dt_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item_stats`
--

INSERT INTO `oc_t_item_stats` (`fk_i_item_id`, `i_num_views`, `i_num_spam`, `i_num_repeated`, `i_num_bad_classified`, `i_num_offensive`, `i_num_expired`, `i_num_premium_views`, `dt_date`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, '2021-10-25'),
(1, 0, 1, 0, 0, 0, 1, 0, '2021-10-26'),
(2, 0, 1, 0, 0, 0, 0, 0, '2021-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_keywords`
--

CREATE TABLE `oc_t_keywords` (
  `s_md5` varchar(32) NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_original_text` varchar(255) NOT NULL,
  `s_anchor_text` varchar(255) NOT NULL,
  `s_normalized_text` varchar(255) NOT NULL,
  `fk_i_category_id` int(10) UNSIGNED DEFAULT NULL,
  `fk_i_city_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_latest_searches`
--

CREATE TABLE `oc_t_latest_searches` (
  `d_date` datetime NOT NULL,
  `s_search` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_locale`
--

CREATE TABLE `oc_t_locale` (
  `pk_c_code` char(5) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_short_name` varchar(40) NOT NULL,
  `s_description` varchar(100) NOT NULL,
  `s_version` varchar(20) NOT NULL,
  `s_author_name` varchar(100) NOT NULL,
  `s_author_url` varchar(100) NOT NULL,
  `s_currency_format` varchar(50) NOT NULL,
  `s_dec_point` varchar(2) DEFAULT '.',
  `s_thousands_sep` varchar(2) DEFAULT '',
  `i_num_dec` tinyint(4) DEFAULT 2,
  `s_date_format` varchar(20) NOT NULL,
  `s_stop_words` text DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `b_enabled_bo` tinyint(1) NOT NULL DEFAULT 1,
  `b_locations_native` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_locale`
--

INSERT INTO `oc_t_locale` (`pk_c_code`, `s_name`, `s_short_name`, `s_description`, `s_version`, `s_author_name`, `s_author_url`, `s_currency_format`, `s_dec_point`, `s_thousands_sep`, `i_num_dec`, `s_date_format`, `s_stop_words`, `b_enabled`, `b_enabled_bo`, `b_locations_native`) VALUES
('en_US', 'English (US)', 'English', 'American english translation', '4.2.2', 'OsclassPoint', 'https://osclass-classifieds.com/', '{NUMBER} {CURRENCY}', '.', '', 2, 'm/d/Y', 'i,a,about,an,are,as,at,be,by,com,for,from,how,in,is,it,of,on,or,that,the,this,to,was,what,when,where,who,will,with,the', 1, 1, 0),
('pt_PT', 'Portuguese (Portugal)', 'Portuguese', 'Portuguese (Portugal) translation', '3.1.0', 'Osclass', 'http://osclass.org/', '{NUMBER} {CURRENCY}', '.', '', 2, 'm/d/Y', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_locations_tmp`
--

CREATE TABLE `oc_t_locations_tmp` (
  `id_location` varchar(10) NOT NULL,
  `e_type` enum('COUNTRY','REGION','CITY') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_log`
--

CREATE TABLE `oc_t_log` (
  `dt_date` datetime NOT NULL,
  `s_section` varchar(50) NOT NULL,
  `s_action` varchar(50) NOT NULL,
  `fk_i_id` int(10) UNSIGNED NOT NULL,
  `s_data` varchar(250) NOT NULL,
  `s_ip` varchar(50) NOT NULL,
  `s_who` varchar(50) NOT NULL,
  `fk_i_who_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_log`
--

INSERT INTO `oc_t_log` (`dt_date`, `s_section`, `s_action`, `fk_i_id`, `s_data`, `s_ip`, `s_who`, `fk_i_who_id`) VALUES
('2021-10-25 12:53:30', 'item', 'add', 1, 'Example Ad', '::1', 'admin', 0),
('2021-10-27 11:08:27', 'item', 'add', 2, 'Service test', '::1', 'admin', 1),
('2021-10-27 11:45:31', 'item', 'edit', 2, 'Service test', '::1', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_meta_categories`
--

CREATE TABLE `oc_t_meta_categories` (
  `fk_i_category_id` int(10) UNSIGNED NOT NULL,
  `fk_i_field_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_meta_categories`
--

INSERT INTO `oc_t_meta_categories` (`fk_i_category_id`, `fk_i_field_id`) VALUES
(6, 2),
(52, 2),
(68, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_meta_fields`
--

CREATE TABLE `oc_t_meta_fields` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_slug` varchar(255) NOT NULL,
  `e_type` enum('TEXT','TEXTAREA','DROPDOWN','RADIO','CHECKBOX','URL','DATE','DATEINTERVAL') NOT NULL DEFAULT 'TEXT',
  `s_options` varchar(2048) DEFAULT NULL,
  `b_required` tinyint(1) NOT NULL DEFAULT 0,
  `b_searchable` tinyint(1) NOT NULL DEFAULT 0,
  `i_order` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_meta_fields`
--

INSERT INTO `oc_t_meta_fields` (`pk_i_id`, `s_name`, `s_slug`, `e_type`, `s_options`, `b_required`, `b_searchable`, `i_order`) VALUES
(1, 'NEW custom field', 'new-custom-field', 'TEXT', '', 0, 0, 1),
(2, 'Transmisao', 'new-custom-field_1', 'DROPDOWN', 'automatica,manual', 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_pages`
--

CREATE TABLE `oc_t_pages` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_internal_name` varchar(50) DEFAULT NULL,
  `b_indelible` tinyint(1) NOT NULL DEFAULT 0,
  `b_link` tinyint(1) NOT NULL DEFAULT 1,
  `b_index` tinyint(1) NOT NULL DEFAULT 1,
  `dt_pub_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `i_order` int(3) NOT NULL DEFAULT 0,
  `s_meta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_pages`
--

INSERT INTO `oc_t_pages` (`pk_i_id`, `s_internal_name`, `b_indelible`, `b_link`, `b_index`, `dt_pub_date`, `dt_mod_date`, `i_order`, `s_meta`) VALUES
(1, 'email_item_inquiry', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(2, 'email_user_validation', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(3, 'email_user_registration', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(4, 'email_send_friend', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(5, 'alert_email_hourly', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(6, 'alert_email_daily', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(7, 'alert_email_weekly', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(8, 'alert_email_instant', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(9, 'email_new_comment_admin', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(10, 'email_new_item_non_register_user', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(11, 'email_item_validation', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(12, 'email_admin_new_item', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(13, 'email_user_forgot_password', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(14, 'email_new_email', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(15, 'email_alert_validation', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(16, 'email_comment_validated', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(17, 'email_item_validation_non_register_user', 1, 1, 1, '2021-10-25 12:53:17', NULL, 0, NULL),
(18, 'email_admin_new_user', 1, 1, 1, '2021-10-25 12:53:18', NULL, 0, NULL),
(19, 'email_contact_user', 1, 1, 1, '2021-10-25 12:53:18', NULL, 0, NULL),
(20, 'email_new_comment_user', 1, 1, 1, '2021-10-25 12:53:18', NULL, 0, NULL),
(21, 'email_new_admin', 1, 1, 1, '2021-10-25 12:53:18', NULL, 0, NULL),
(22, 'email_warn_expiration', 1, 1, 1, '2021-10-25 12:53:18', NULL, 0, NULL),
(23, 'example_page', 0, 0, 1, '2021-10-25 12:53:31', '2021-10-25 12:53:31', 1, '\"\"'),
(24, 'show', 0, 1, 1, '2021-10-26 09:05:44', '2021-10-26 09:05:44', 2, '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_pages_description`
--

CREATE TABLE `oc_t_pages_description` (
  `fk_i_pages_id` int(10) UNSIGNED NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_title` varchar(255) NOT NULL,
  `s_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_pages_description`
--

INSERT INTO `oc_t_pages_description` (`fk_i_pages_id`, `fk_c_locale_code`, `s_title`, `s_text`) VALUES
(1, 'en_US', '{WEB_TITLE} - Someone has a question about your listing', '<p>Hi {CONTACT_NAME}!</p><p>{USER_NAME} ({USER_EMAIL}, {USER_PHONE}) left you a message about your listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>:</p><p>{COMMENT}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(1, 'pt_PT', '{WEB_TITLE} - Someone has a question about your listing', '<p>Hi {CONTACT_NAME}!</p><p>{USER_NAME} ({USER_EMAIL}, {USER_PHONE}) left you a message about your listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>:</p><p>{COMMENT}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(2, 'en_US', 'Please validate your {WEB_TITLE} account', '<p>Hi {USER_NAME},</p><p>Please validate your registration by clicking on the following link: {VALIDATION_LINK}</p><p>Thank you!</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(2, 'pt_PT', 'Please validate your {WEB_TITLE} account', '<p>Hi {USER_NAME},</p><p>Please validate your registration by clicking on the following link: {VALIDATION_LINK}</p><p>Thank you!</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(3, 'en_US', '{WEB_TITLE} - Registration successful!', '<p>Hi {USER_NAME},</p><p>You\'ve successfully registered for {WEB_LINK}.</p><p>Thank you!</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(3, 'pt_PT', '{WEB_TITLE} - Registration successful!', '<p>Hi {USER_NAME},</p><p>You\'ve successfully registered for {WEB_LINK}.</p><p>Thank you!</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(4, 'en_US', 'Look at what I discovered on {WEB_TITLE}', '<p>Hi {FRIEND_NAME},</p><p>Your friend {USER_NAME} wants to share this listing with you <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>.</p><p>Message:</p><p>{COMMENT}</p><p>Regards,</p><p>{WEB_TITLE}</p>'),
(4, 'pt_PT', 'Look at what I discovered on {WEB_TITLE}', '<p>Hi {FRIEND_NAME},</p><p>Your friend {USER_NAME} wants to share this listing with you <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>.</p><p>Message:</p><p>{COMMENT}</p><p>Regards,</p><p>{WEB_TITLE}</p>'),
(5, 'en_US', '{WEB_TITLE} - New listings in the last hour', '<p>Hi {USER_NAME},</p><p>New listings have been published in the last hour. Take a look at them:</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(5, 'pt_PT', '{WEB_TITLE} - New listings in the last hour', '<p>Hi {USER_NAME},</p><p>New listings have been published in the last hour. Take a look at them:</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(6, 'en_US', '{WEB_TITLE} - New listings in the last day', '<p>Hi {USER_NAME},</p><p>New listings have been published in the last day. Take a look at them:</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(6, 'pt_PT', '{WEB_TITLE} - New listings in the last day', '<p>Hi {USER_NAME},</p><p>New listings have been published in the last day. Take a look at them:</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(7, 'en_US', '{WEB_TITLE} - New listings in the last week', '<p>Hi {USER_NAME},</p><p>New listings have been published in the last week. Take a look at them:</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(7, 'pt_PT', '{WEB_TITLE} - New listings in the last week', '<p>Hi {USER_NAME},</p><p>New listings have been published in the last week. Take a look at them:</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(8, 'en_US', '{WEB_TITLE} - New listings', '<p>Hi {USER_NAME},</p><p>A new listing has been published, check it out!</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(8, 'pt_PT', '{WEB_TITLE} - New listings', '<p>Hi {USER_NAME},</p><p>A new listing has been published, check it out!</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(9, 'en_US', '{WEB_TITLE} - New comment', '<p>Someone commented on the listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>.</p><p>Commenter: {COMMENT_AUTHOR}<br />Commenter\'s email: {COMMENT_EMAIL}<br />Title: {COMMENT_TITLE}<br />Comment: {COMMENT_TEXT}</p>'),
(9, 'pt_PT', '{WEB_TITLE} - New comment', '<p>Someone commented on the listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>.</p><p>Commenter: {COMMENT_AUTHOR}<br />Commenter\'s email: {COMMENT_EMAIL}<br />Title: {COMMENT_TITLE}<br />Comment: {COMMENT_TEXT}</p>'),
(10, 'en_US', '{WEB_TITLE} - Edit options for the listing {ITEM_TITLE}', '<p>Hi {USER_NAME},</p><p>You\'re not registered at {WEB_LINK}, but you can still edit or delete the listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a> for a short period of time.</p><p>You can edit your listing by following this link: {EDIT_LINK}</p><p>You can delete your listing by following this link: {DELETE_LINK}</p><p>If you register as a user, you will have full access to editing options.</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(10, 'pt_PT', '{WEB_TITLE} - Edit options for the listing {ITEM_TITLE}', '<p>Hi {USER_NAME},</p><p>You\'re not registered at {WEB_LINK}, but you can still edit or delete the listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a> for a short period of time.</p><p>You can edit your listing by following this link: {EDIT_LINK}</p><p>You can delete your listing by following this link: {DELETE_LINK}</p><p>If you register as a user, you will have full access to editing options.</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(11, 'en_US', '{WEB_TITLE} - Validate your listing', '<p>Hi {USER_NAME},</p><p>You\'re receiving this e-mail because a listing has been published at {WEB_LINK}. Please validate this listing by clicking on the following link: {VALIDATION_LINK}. If you didn\'t publish this listing, please ignore this email.</p><p>Listing details:</p><p>Contact name: {USER_NAME}<br />Contact e-mail: {USER_EMAIL}</p><p>{ITEM_DESCRIPTION}</p><p>Url: {ITEM_URL}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(11, 'pt_PT', '{WEB_TITLE} - Validate your listing', '<p>Hi {USER_NAME},</p><p>You\'re receiving this e-mail because a listing has been published at {WEB_LINK}. Please validate this listing by clicking on the following link: {VALIDATION_LINK}. If you didn\'t publish this listing, please ignore this email.</p><p>Listing details:</p><p>Contact name: {USER_NAME}<br />Contact e-mail: {USER_EMAIL}</p><p>{ITEM_DESCRIPTION}</p><p>Url: {ITEM_URL}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(12, 'en_US', '{WEB_TITLE} - A new listing has been published', '<p>Dear {WEB_TITLE} admin,</p><p>You\'re receiving this email because a listing has been published at {WEB_LINK}.</p><p>Listing details:</p><p>Contact name: {USER_NAME}<br />Contact email: {USER_EMAIL}</p><p>{ITEM_DESCRIPTION}</p><p>Url: {ITEM_URL}</p><p>You can edit this listing by clicking on the following link: {EDIT_LINK}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(12, 'pt_PT', '{WEB_TITLE} - A new listing has been published', '<p>Dear {WEB_TITLE} admin,</p><p>You\'re receiving this email because a listing has been published at {WEB_LINK}.</p><p>Listing details:</p><p>Contact name: {USER_NAME}<br />Contact email: {USER_EMAIL}</p><p>{ITEM_DESCRIPTION}</p><p>Url: {ITEM_URL}</p><p>You can edit this listing by clicking on the following link: {EDIT_LINK}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(13, 'en_US', '{WEB_TITLE} - Recover your password', '<p>Hi {USER_NAME},</p><p>We\'ve sent you this e-mail because you\'ve requested a password reminder. Follow this link to recover it: {PASSWORD_LINK}</p><p>The link will be deactivated in 24 hours.</p><p>If you didn\'t request a password reminder, please ignore this message. This request was made from IP {IP_ADDRESS} on {DATE_TIME}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(13, 'pt_PT', '{WEB_TITLE} - Recover your password', '<p>Hi {USER_NAME},</p><p>We\'ve sent you this e-mail because you\'ve requested a password reminder. Follow this link to recover it: {PASSWORD_LINK}</p><p>The link will be deactivated in 24 hours.</p><p>If you didn\'t request a password reminder, please ignore this message. This request was made from IP {IP_ADDRESS} on {DATE_TIME}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(14, 'en_US', '{WEB_TITLE} - You requested an email change', '<p>Hi {USER_NAME}</p><p>You\'re receiving this e-mail because you requested an e-mail change. Please confirm this new e-mail address by clicking on the following validation link: {VALIDATION_LINK}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(14, 'pt_PT', '{WEB_TITLE} - You requested an email change', '<p>Hi {USER_NAME}</p><p>You\'re receiving this e-mail because you requested an e-mail change. Please confirm this new e-mail address by clicking on the following validation link: {VALIDATION_LINK}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(15, 'en_US', '{WEB_TITLE} - Please validate your alert', '<p>Hi {USER_NAME},</p><p>Please validate your alert registration by clicking on the following link: {VALIDATION_LINK}</p><p>Thank you!</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(15, 'pt_PT', '{WEB_TITLE} - Please validate your alert', '<p>Hi {USER_NAME},</p><p>Please validate your alert registration by clicking on the following link: {VALIDATION_LINK}</p><p>Thank you!</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(16, 'en_US', '{WEB_TITLE} - Your comment has been approved', '<p>Hi {COMMENT_AUTHOR},</p><p>Your comment on <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a> has been approved.</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(16, 'pt_PT', '{WEB_TITLE} - Your comment has been approved', '<p>Hi {COMMENT_AUTHOR},</p><p>Your comment on <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a> has been approved.</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(17, 'en_US', '{WEB_TITLE} - Validate your listing', '<p>Hi {USER_NAME},</p><p>You\'re receiving this e-mail because you’ve published a listing at {WEB_LINK}. Please validate this listing by clicking on the following link: {VALIDATION_LINK}. If you didn\'t publish this listing, please ignore this e-mail.</p><p>Listing details:</p><p>Contact name: {USER_NAME}<br />Contact e-mail: {USER_EMAIL}</p><p>{ITEM_DESCRIPTION}</p><p>Url: {ITEM_URL}</p><p>Even if you\'re not registered at {WEB_LINK}, you can still edit or delete your listing:</p><p>You can edit your listing by following this link: {EDIT_LINK}</p><p>You can delete your listing by following this link: {DELETE_LINK}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(17, 'pt_PT', '{WEB_TITLE} - Validate your listing', '<p>Hi {USER_NAME},</p><p>You\'re receiving this e-mail because you’ve published a listing at {WEB_LINK}. Please validate this listing by clicking on the following link: {VALIDATION_LINK}. If you didn\'t publish this listing, please ignore this e-mail.</p><p>Listing details:</p><p>Contact name: {USER_NAME}<br />Contact e-mail: {USER_EMAIL}</p><p>{ITEM_DESCRIPTION}</p><p>Url: {ITEM_URL}</p><p>Even if you\'re not registered at {WEB_LINK}, you can still edit or delete your listing:</p><p>You can edit your listing by following this link: {EDIT_LINK}</p><p>You can delete your listing by following this link: {DELETE_LINK}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(18, 'en_US', '{WEB_TITLE} - A new user has registered', '<p>Dear {WEB_TITLE} admin,</p><p>You\'re receiving this email because a new user has been created at {WEB_LINK}.</p><p>User details:</p><p>Name: {USER_NAME}<br />E-mail: {USER_EMAIL}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(18, 'pt_PT', '{WEB_TITLE} - A new user has registered', '<p>Dear {WEB_TITLE} admin,</p><p>You\'re receiving this email because a new user has been created at {WEB_LINK}.</p><p>User details:</p><p>Name: {USER_NAME}<br />E-mail: {USER_EMAIL}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(19, 'en_US', '{WEB_TITLE} - Someone has a question for you', '<p>Hi {CONTACT_NAME}!</p><p>{USER_NAME} ({USER_EMAIL}, {USER_PHONE}) left you a message:</p><p>{COMMENT}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(19, 'pt_PT', '{WEB_TITLE} - Someone has a question for you', '<p>Hi {CONTACT_NAME}!</p><p>{USER_NAME} ({USER_EMAIL}, {USER_PHONE}) left you a message:</p><p>{COMMENT}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(20, 'en_US', '{WEB_TITLE} - Someone has commented on your listing', '<p>There\'s a new comment on the listing: <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>.</p><p>Author: {COMMENT_AUTHOR}<br />Author\'s email: {COMMENT_EMAIL}<br />Title: {COMMENT_TITLE}<br />Comment: {COMMENT_TEXT}</p><p>{WEB_LINK}</p>'),
(20, 'pt_PT', '{WEB_TITLE} - Someone has commented on your listing', '<p>There\'s a new comment on the listing: <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>.</p><p>Author: {COMMENT_AUTHOR}<br />Author\'s email: {COMMENT_EMAIL}<br />Title: {COMMENT_TITLE}<br />Comment: {COMMENT_TEXT}</p><p>{WEB_LINK}</p>'),
(21, 'en_US', '{WEB_TITLE} - Success creating admin account!', '<p>Hi {ADMIN_NAME},</p><p>The admin of {WEB_LINK} has created an account for you,</p><ul><li>Username: {USERNAME}</li><li>Password: {PASSWORD}</li></ul><p>You can access the admin panel here {WEB_ADMIN_LINK}.</p><p>Thank you!</p><p>Regards,</p>'),
(22, 'en_US', '{WEB_TITLE} - Your ad is about to expire', '<p>Hi {USER_NAME},</p><p>Your listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a> is about to expire at {WEB_LINK}.'),
(23, 'en_US', 'Example page title', 'This is an example page description. This is a good place to put your Terms of Service or any other help information.'),
(24, 'en_US', 'show', '<p><img src=\"http://localhost/osclass/oc-content/uploads/page-images/20211026090510_Demain-le-Wallpapers.jpg\" alt=\"some text\" width=\"650\" height=\"410\" /></p>\r\n<p>Some text</p>');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_plugin_category`
--

CREATE TABLE `oc_t_plugin_category` (
  `s_plugin_name` varchar(40) NOT NULL,
  `fk_i_category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_preference`
--

CREATE TABLE `oc_t_preference` (
  `s_section` varchar(128) NOT NULL,
  `s_name` varchar(128) NOT NULL,
  `s_value` longtext NOT NULL,
  `e_type` enum('STRING','INTEGER','BOOLEAN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_preference`
--

INSERT INTO `oc_t_preference` (`s_section`, `s_name`, `s_value`, `e_type`) VALUES
('omega_admin_theme', 'compact_mode', '0', 'STRING'),
('osclass', 'active_plugins', '', 'STRING'),
('osclass', 'admindash_columns_hidden', '', 'STRING'),
('osclass', 'admindash_widgets_collapsed', '', 'STRING'),
('osclass', 'admindash_widgets_hidden', '', 'STRING'),
('osclass', 'admin_color_scheme', 'default', 'STRING'),
('osclass', 'admin_language', 'en_US', 'STRING'),
('osclass', 'admin_theme', 'omega', 'STRING'),
('osclass', 'admin_toolbar_front', '0', 'BOOLEAN'),
('osclass', 'akismetKey', '', 'STRING'),
('osclass', 'allowedExt', 'png,gif,jpg,jpeg', 'STRING'),
('osclass', 'allow_report_osclass', '0', 'BOOLEAN'),
('osclass', 'auto_cron', '1', 'STRING'),
('osclass', 'auto_update', 'disabled', 'STRING'),
('osclass', 'best_fit_image', '1', 'BOOLEAN'),
('osclass', 'breadcrumbs_hide', '', 'STRING'),
('osclass', 'breadcrumbs_hide_custom', '', 'STRING'),
('osclass', 'breadcrumbs_item_category', '1', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_city', '0', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_country', '0', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_page_title', '1', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_parent_categories', '0', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_region', '0', 'BOOLEAN'),
('osclass', 'can_deactivate_items', '0', 'BOOLEAN'),
('osclass', 'comments_per_page', '10', 'INTEGER'),
('osclass', 'contactEmail', 'fadermacuvele383@gmail.com', 'STRING'),
('osclass', 'contact_attachment', '0', 'STRING'),
('osclass', 'csrf_name', 'CSRF1185354973', 'STRING'),
('osclass', 'css_banned_pages', '', 'STRING'),
('osclass', 'css_banned_words', 'font,awesome', 'STRING'),
('osclass', 'css_merge', '0', 'BOOLEAN'),
('osclass', 'css_minify', '0', 'BOOLEAN'),
('osclass', 'currency', 'USD', 'STRING'),
('osclass', 'custom_css', '', 'STRING'),
('osclass', 'custom_html', '', 'STRING'),
('osclass', 'dateFormat', 'Y/m/d', 'STRING'),
('osclass', 'defaultOrderField@search', 'dt_pub_date', 'STRING'),
('osclass', 'defaultOrderType@search', '1', 'BOOLEAN'),
('osclass', 'defaultResultsPerPage@search', '12', 'STRING'),
('osclass', 'defaultShowAs@search', 'gallery', 'STRING'),
('osclass', 'description_character_length', '5000', 'INTEGER'),
('osclass', 'dimNormal', '640x480', 'STRING'),
('osclass', 'dimPreview', '480x340', 'STRING'),
('osclass', 'dimProfileImg', '180x180', 'STRING'),
('osclass', 'dimThumbnail', '240x200', 'STRING'),
('osclass', 'enabled_comments', '1', 'BOOLEAN'),
('osclass', 'enabled_recaptcha_items', '0', 'BOOLEAN'),
('osclass', 'enabled_renewal_items', '0', 'BOOLEAN'),
('osclass', 'enabled_tinymce_items', '0', 'BOOLEAN'),
('osclass', 'enabled_tinymce_users', '0', 'BOOLEAN'),
('osclass', 'enabled_users', '1', 'BOOLEAN'),
('osclass', 'enabled_user_registration', '1', 'BOOLEAN'),
('osclass', 'enabled_user_validation', '1', 'BOOLEAN'),
('osclass', 'enableField#f_price@items', '1', 'BOOLEAN'),
('osclass', 'enableField#images@items', '1', 'BOOLEAN'),
('osclass', 'enable_comment_rating', '0', 'BOOLEAN'),
('osclass', 'enable_profile_img', '1', 'BOOLEAN'),
('osclass', 'force_aspect_image', '0', 'BOOLEAN'),
('osclass', 'installed_plugins', '', 'STRING'),
('osclass', 'items_wait_time', '0', 'INTEGER'),
('osclass', 'item_attachment', '0', 'BOOLEAN'),
('osclass', 'item_post_redirect', '', 'STRING'),
('osclass', 'jquery_version', '1', 'STRING'),
('osclass', 'js_banned_pages', '', 'STRING'),
('osclass', 'js_banned_words', 'tiny', 'STRING'),
('osclass', 'js_merge', '0', 'BOOLEAN'),
('osclass', 'js_minify', '0', 'BOOLEAN'),
('osclass', 'keep_original_image', '1', 'BOOLEAN'),
('osclass', 'language', 'pt_PT', 'STRING'),
('osclass', 'languages_downloaded', '[\"en_US\",\"pt_PT\"]', 'STRING'),
('osclass', 'languages_last_version_check', '1638427628', 'STRING'),
('osclass', 'languages_to_update', '[\"pt_PT\"]', 'STRING'),
('osclass', 'languages_update_count', '1', 'STRING'),
('osclass', 'last_version_check', '1638427627', 'STRING'),
('osclass', 'location_todo', '50', 'STRING'),
('osclass', 'logged_user_item_validation', '1', 'BOOLEAN'),
('osclass', 'mailserver_auth', '', 'BOOLEAN'),
('osclass', 'mailserver_host', 'localhost', 'STRING'),
('osclass', 'mailserver_mail_from', '', 'STRING'),
('osclass', 'mailserver_name_from', '', 'STRING'),
('osclass', 'mailserver_password', '', 'STRING'),
('osclass', 'mailserver_pop', '', 'BOOLEAN'),
('osclass', 'mailserver_port', '', 'INTEGER'),
('osclass', 'mailserver_ssl', '', 'STRING'),
('osclass', 'mailserver_type', 'custom', 'STRING'),
('osclass', 'mailserver_username', '', 'STRING'),
('osclass', 'market_products_version', '{\"date\":\"2021-12-02 07:47:04\",\"data\":{\"last_update\":\"2021-12-02 00:00:43\",\"0yNxpeRQtrJ1P40QfCn1\":{\"s_product_key\":\"0yNxpeRQtrJ1P40QfCn1\",\"s_version\":\"3.2.1\",\"fk_i_item_id\":\"46\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-21 19:59:17\",\"s_comment\":\"Minor issues and notices has been fixed.\"},\"MTZ9Tv7cVAPLzMfIOupg\":{\"s_product_key\":\"MTZ9Tv7cVAPLzMfIOupg\",\"s_version\":\"3.3.1\",\"fk_i_item_id\":\"47\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-24 16:17:43\",\"s_comment\":\"Fixed back links function\"},\"KHrh5ixSocGe8COBeMc7\":{\"s_product_key\":\"KHrh5ixSocGe8COBeMc7\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"48\",\"s_osc_version_from\":\"3.3.1\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:30:58\",\"s_comment\":\"Notices fixes\"},\"LacliCEGw3BAf1JlcNdU\":{\"s_product_key\":\"LacliCEGw3BAf1JlcNdU\",\"s_version\":\"1.4.1\",\"fk_i_item_id\":\"49\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:29:42\",\"s_comment\":\"Notices fixes\"},\"CNMxiwkWshE8H3F1JyMo\":{\"s_product_key\":\"CNMxiwkWshE8H3F1JyMo\",\"s_version\":\"2.2.4\",\"fk_i_item_id\":\"50\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-18 10:40:47\",\"s_comment\":\"Pagination of threads has been redesigned and is more compact now.\"},\"ac52YupMpzkKcAtcCy8m\":{\"s_product_key\":\"ac52YupMpzkKcAtcCy8m\",\"s_version\":\"3.1.2\",\"fk_i_item_id\":\"51\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-08 11:18:05\",\"s_comment\":\"Fixed typo in one of functions causing PHP errors.\"},\"2mdX3OOMOsFdKnYHx4Cp\":{\"s_product_key\":\"2mdX3OOMOsFdKnYHx4Cp\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"52\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:39:55\",\"s_comment\":\"Notices fixes\"},\"9xHou3b3OQ1IG3EZ1BmA\":{\"s_product_key\":\"9xHou3b3OQ1IG3EZ1BmA\",\"s_version\":\"2.7.0\",\"fk_i_item_id\":\"53\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-03 08:46:42\",\"s_comment\":\"Major update - front-end features has been redesigned\"},\"C7IDtk5QVGn39wsnSOE2\":{\"s_product_key\":\"C7IDtk5QVGn39wsnSOE2\",\"s_version\":\"2.1.1\",\"fk_i_item_id\":\"54\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-22 09:34:53\",\"s_comment\":\"Fixed missing link in user offers;\\nFixed incorrect price in user offers (now offer price instead of item price)\"},\"SdWSefTyq9twKToM6qPk\":{\"s_product_key\":\"SdWSefTyq9twKToM6qPk\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"55\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:29:23\",\"s_comment\":\"Notices fixes\"},\"PQCkHq7JVdhTpFxeeR3l\":{\"s_product_key\":\"PQCkHq7JVdhTpFxeeR3l\",\"s_version\":\"2.0.0\",\"fk_i_item_id\":\"56\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-09 08:50:29\",\"s_comment\":\"Plugin name changed to Banners &amp; Advertisement Plugin; backoffice design has been completely changed; banners and advertisement management is much easier now; added new tips and notices into plugin so it is easy for newcomers to setup the plugin; removed redundant and unnecessary styles &amp; scripts from back-office (removed Open-Sans font at all); front-office styles and scripts has been removed and merged directly into code (due to low size) in order to negate impact of plugin on website \"},\"KlqIQ1ClzI4eQTlNJ7xc\":{\"s_product_key\":\"KlqIQ1ClzI4eQTlNJ7xc\",\"s_version\":\"2.0.1\",\"fk_i_item_id\":\"57\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 10:43:04\",\"s_comment\":\"XSS vulnerability fixed\"},\"GlNHp4EtSnbdG9CAQ2z6\":{\"s_product_key\":\"GlNHp4EtSnbdG9CAQ2z6\",\"s_version\":\"2.1.1\",\"fk_i_item_id\":\"58\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:38:12\",\"s_comment\":\"Notices fixes\"},\"Ulkh6xNkOv2YT7POQfmO\":{\"s_product_key\":\"Ulkh6xNkOv2YT7POQfmO\",\"s_version\":\"1.2.1\",\"fk_i_item_id\":\"59\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:42:35\",\"s_comment\":\"Notices fixes\"},\"0QDgBnwfOyvG8sUOCizo\":{\"s_product_key\":\"0QDgBnwfOyvG8sUOCizo\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"60\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-03-09 10:32:41\",\"s_comment\":\"Admin can now enter own validation comment (reusing user field for comment), fixed emails, added comments to mails, fixed design issues in backoffice\"},\"MaN1xZ5SKBJqWjZgD2bm\":{\"s_product_key\":\"MaN1xZ5SKBJqWjZgD2bm\",\"s_version\":\"1.3.1\",\"fk_i_item_id\":\"61\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:28:16\",\"s_comment\":\"Notices fixes\"},\"4qqdPpskk98qyFNElHYE\":{\"s_product_key\":\"4qqdPpskk98qyFNElHYE\",\"s_version\":\"2.3.4\",\"fk_i_item_id\":\"62\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-06-01 07:57:09\",\"s_comment\":\"Fixed minor issues, new functions created for Delta theme\"},\"mqiokDukjuGMkrZ1taSX\":{\"s_product_key\":\"mqiokDukjuGMkrZ1taSX\",\"s_version\":\"1.6.0\",\"fk_i_item_id\":\"63\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-08 10:53:18\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4\"},\"8BBAzI3IDIcFYqA1alzu\":{\"s_product_key\":\"8BBAzI3IDIcFYqA1alzu\",\"s_version\":\"1.6.1\",\"fk_i_item_id\":\"64\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-27 11:39:50\",\"s_comment\":\"Fixed search hooks not visible in search sidebar when category selected.\"},\"8vXVx9jI59dxNSgj38xK\":{\"s_product_key\":\"8vXVx9jI59dxNSgj38xK\",\"s_version\":\"1.6.0\",\"fk_i_item_id\":\"65\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-08 12:07:49\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4, fixed different small PHP bugs\"},\"j3CBbxWhQpEVBK7pouT8\":{\"s_product_key\":\"j3CBbxWhQpEVBK7pouT8\",\"s_version\":\"3.7.0\",\"fk_i_item_id\":\"66\",\"s_osc_version_from\":\"4.4\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-22 10:38:38\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4\"},\"ynMUuxp3sXYa0tMj0dQn\":{\"s_product_key\":\"ynMUuxp3sXYa0tMj0dQn\",\"s_version\":\"3.6.0\",\"fk_i_item_id\":\"67\",\"s_osc_version_from\":\"4.4\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-22 10:39:09\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4\"},\"4bx3pxmTuz0TAszEpoQ9\":{\"s_product_key\":\"4bx3pxmTuz0TAszEpoQ9\",\"s_version\":\"3.3.0\",\"fk_i_item_id\":\"68\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-22 10:38:11\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4\"},\"LeLqCpPszqj7ijcEUJFJ\":{\"s_product_key\":\"LeLqCpPszqj7ijcEUJFJ\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"69\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2019-03-20 14:44:09\",\"s_comment\":\"Added partial support for oc-admin themes\"},\"ag7c6i6dvi5XuOf2GTcb\":{\"s_product_key\":\"ag7c6i6dvi5XuOf2GTcb\",\"s_version\":\"1.0.4\",\"fk_i_item_id\":\"70\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2018-03-17 09:15:13\",\"s_comment\":\"Fixed issue with non-showing flash messages\"},\"2tnYRompS1tuV2SqZ6qy\":{\"s_product_key\":\"2tnYRompS1tuV2SqZ6qy\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"72\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-07 13:43:44\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4, multiple notices and issues fixed\"},\"4EdXqRi5wzbIYKjXPhQ1\":{\"s_product_key\":\"4EdXqRi5wzbIYKjXPhQ1\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"73\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:16:01\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"ccxff0jHMYEh2ikbyswa\":{\"s_product_key\":\"ccxff0jHMYEh2ikbyswa\",\"s_version\":\"1.2.2\",\"fk_i_item_id\":\"74\",\"s_osc_version_from\":\"3.0.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-20 07:57:01\",\"s_comment\":\"Fixed implode notice\\/error reported in functions.php of plugin\"},\"RhTE7SKNogtq8bNVvIcJ\":{\"s_product_key\":\"RhTE7SKNogtq8bNVvIcJ\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"75\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:16:18\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"9BgL1gFtkfYIx0KVQJ58\":{\"s_product_key\":\"9BgL1gFtkfYIx0KVQJ58\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"76\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:16:46\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"tJvtsgwVfHh2iNVrUKZm\":{\"s_product_key\":\"tJvtsgwVfHh2iNVrUKZm\",\"s_version\":\"2.4.2\",\"fk_i_item_id\":\"77\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 10:42:31\",\"s_comment\":\"XSS vulnerability fixed\"},\"FCovG0JwLwogaSRGLSAW\":{\"s_product_key\":\"FCovG0JwLwogaSRGLSAW\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"78\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-05-17 12:35:27\",\"s_comment\":\"Fixed several problems with PHP 8 and count functions\"},\"xQGEDiExjTR5UwJUmbRx\":{\"s_product_key\":\"xQGEDiExjTR5UwJUmbRx\",\"s_version\":\"1.0.3\",\"fk_i_item_id\":\"79\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-03-02 12:44:34\",\"s_comment\":\"Minifier will not try to minify external CSS\\/JS files\"},\"aP0ReAUMbQqpEZUi6H1R\":{\"s_product_key\":\"aP0ReAUMbQqpEZUi6H1R\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"80\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:18:01\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"UkjJPIxfbNfYCxuTfm2N\":{\"s_product_key\":\"UkjJPIxfbNfYCxuTfm2N\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"82\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:14:28\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"FU7UTpHmDThsRKWwXwZO\":{\"s_product_key\":\"FU7UTpHmDThsRKWwXwZO\",\"s_version\":\"1.2.2\",\"fk_i_item_id\":\"83\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-10 13:49:13\",\"s_comment\":\"Fixed product archive (zip)\"},\"kK7dgkItDQ66WZX76BzB\":{\"s_product_key\":\"kK7dgkItDQ66WZX76BzB\",\"s_version\":\"1.5.2\",\"fk_i_item_id\":\"84\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-01 07:06:00\",\"s_comment\":\"Updated list of allowed extensions, currently plugin supports: jpg, jpeg, webp, gif, png\"},\"3aVxfB6ACekqc6ZUDbVw\":{\"s_product_key\":\"3aVxfB6ACekqc6ZUDbVw\",\"s_version\":\"1.2.1\",\"fk_i_item_id\":\"85\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-23 14:01:42\",\"s_comment\":\"Added support of \\\"I want to receive Newsletters\\\" option added into GDPR plugin v1.2.0; Plugin will not work properly with older versions of GDPR plugin\"},\"VVUOjIZMpRwBjbbT8Ue4\":{\"s_product_key\":\"VVUOjIZMpRwBjbbT8Ue4\",\"s_version\":\"1.3.3\",\"fk_i_item_id\":\"86\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-01 18:43:15\",\"s_comment\":\"Fixed validation issues when using forms, especially with older jQuery version.\"},\"v8vsj78TTuvBTfS8lLVs\":{\"s_product_key\":\"v8vsj78TTuvBTfS8lLVs\",\"s_version\":\"1.3.1\",\"fk_i_item_id\":\"87\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 08:26:32\",\"s_comment\":\"Fixed checkboxes validation of new modal. This verification is no more based on change event only and should work much better across different themes.\"},\"J9wVtDVg2WDgm3cS6fXi\":{\"s_product_key\":\"J9wVtDVg2WDgm3cS6fXi\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"88\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:14:13\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"VnwC5tcwCuXffWIOZiEZ\":{\"s_product_key\":\"VnwC5tcwCuXffWIOZiEZ\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"89\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-24 08:26:54\",\"s_comment\":\"Added option to upload gif, jpg, jpeg, webp images as icon &amp; cover;\\nAdded option to remove icon &amp; cover;\\nDesign adjustments;\\nRemoved legacy styles and fonts\"},\"Vknlbnj86NQq95u9ebph\":{\"s_product_key\":\"Vknlbnj86NQq95u9ebph\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"90\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:14:36\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"7k3yIRZf7pqdTfkqbCct\":{\"s_product_key\":\"7k3yIRZf7pqdTfkqbCct\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"91\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-07 12:53:13\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4\"},\"Z0hyzNqGCzOmCfC4NGVn\":{\"s_product_key\":\"Z0hyzNqGCzOmCfC4NGVn\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"92\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:14:50\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"vOUF3cgopU8qyNMewkQS\":{\"s_product_key\":\"vOUF3cgopU8qyNMewkQS\",\"s_version\":\"1.6.2\",\"fk_i_item_id\":\"93\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 10:42:49\",\"s_comment\":\"XSS vulnerability fixed\"},\"gcNH3W3tlQR3ckJ7XSCq\":{\"s_product_key\":\"gcNH3W3tlQR3ckJ7XSCq\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"94\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-18 10:35:33\",\"s_comment\":\"Major update: Redesigned few elements; fixed styling of numerous blocks; added option to define colors of category header, links and buttons\"},\"CW4YOjMfMXI6zvpw75r1\":{\"s_product_key\":\"CW4YOjMfMXI6zvpw75r1\",\"s_version\":\"1.2.1\",\"fk_i_item_id\":\"95\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-09 15:30:14\",\"s_comment\":\"Plugin now cooperates with GDPR and do not cache trigger box thrown by GDPR plugin.\"},\"EuIidjPacShPoibBFu6m\":{\"s_product_key\":\"EuIidjPacShPoibBFu6m\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"96\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:13:45\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"FJGisjE1yqVWa3KVoCzY\":{\"s_product_key\":\"FJGisjE1yqVWa3KVoCzY\",\"s_version\":\"1.1.2\",\"fk_i_item_id\":\"97\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-27 14:22:53\",\"s_comment\":\"Plugin is now checking for phone number uniqueness in user account profile edit as well\"},\"pBrd68M4b5SiexjdJ5yK\":{\"s_product_key\":\"pBrd68M4b5SiexjdJ5yK\",\"s_version\":\"1.5.3\",\"fk_i_item_id\":\"98\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-07-07 09:40:57\",\"s_comment\":\"Improved several functions, fixed bugs and bring few improvements\"},\"mNqtMxg1zBJRwIDKdLuM\":{\"s_product_key\":\"mNqtMxg1zBJRwIDKdLuM\",\"s_version\":\"1.5.2\",\"fk_i_item_id\":\"99\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-02 08:26:59\",\"s_comment\":\"Plugin now try to update location of item &amp; user on edit action each time for 2 reasons: if location has not been changed, it will be retrieved from plugin cache, if location has ben changed, coordinates must be changed anyway\"},\"oxs1OgtBR7lqBtNk9x0j\":{\"s_product_key\":\"oxs1OgtBR7lqBtNk9x0j\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"100\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-10 15:27:53\",\"s_comment\":\"Redesigned how login listener works, improved compatibility, fixed minor issues on PHP 8.0.\"},\"n2eVCPcgB74fheHF8WMq\":{\"s_product_key\":\"n2eVCPcgB74fheHF8WMq\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"101\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:05:25\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"kbUtlUi37pjcT4Do0OI1\":{\"s_product_key\":\"kbUtlUi37pjcT4Do0OI1\",\"s_version\":\"3.1.3\",\"fk_i_item_id\":\"102\",\"s_osc_version_from\":\"4.4.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-27 08:32:47\",\"s_comment\":\"Functionality update for Osclass 4.4, many bugs fixed, new sections added, admin color scheme added.\"},\"zQeGvWyO3U0y57KR7CvP\":{\"s_product_key\":\"zQeGvWyO3U0y57KR7CvP\",\"s_version\":\"1.2.2\",\"fk_i_item_id\":\"103\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-01 18:31:42\",\"s_comment\":\"Improved login identification of callback functions\"},\"5GbeI4IbxU5ZLeSXlS5F\":{\"s_product_key\":\"5GbeI4IbxU5ZLeSXlS5F\",\"s_version\":\"1.6.0\",\"fk_i_item_id\":\"104\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-19 08:11:12\",\"s_comment\":\"Added connection to Osclass Pay Plugin - membership groups. Admin can now restrict to which customers notifications will be sent based on their membership group (i.e. send sms notifications only to \\\"Gold\\\" members)\"},\"BlUmJrTdUAaDqQ8UXHb4\":{\"s_product_key\":\"BlUmJrTdUAaDqQ8UXHb4\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"105\",\"s_osc_version_from\":\"\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2019-06-18 07:47:21\",\"s_comment\":\"Blank file\"},\"MmCdRh47DK88qrFD6L1w\":{\"s_product_key\":\"MmCdRh47DK88qrFD6L1w\",\"s_version\":\"1.4.1\",\"fk_i_item_id\":\"106\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-07-07 09:44:16\",\"s_comment\":\"Improved several functions, fixed bugs and bring few improvements\"},\"zyrLNTohHi1nykfew2hM\":{\"s_product_key\":\"zyrLNTohHi1nykfew2hM\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"107\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:55:39\",\"s_comment\":\"Notices fixes\"},\"Q3JkTD1eH1LjQKE07IVz\":{\"s_product_key\":\"Q3JkTD1eH1LjQKE07IVz\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"108\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-04 08:42:45\",\"s_comment\":\"Fixed bug with reduction &amp; minimal amounts those might not load properly when editing voucher\"},\"7wMRIzqJbL8LIILv56Fu\":{\"s_product_key\":\"7wMRIzqJbL8LIILv56Fu\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"109\",\"s_osc_version_from\":\"\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:15:05\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"GFE1crrhnvi0AtRiagJp\":{\"s_product_key\":\"GFE1crrhnvi0AtRiagJp\",\"s_version\":\"1.5.0\",\"fk_i_item_id\":\"110\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-06-18 11:09:34\",\"s_comment\":\"Major release: bxSlider library replaced with Swiper that is much more modern, functional and reliable, updated lightGallery to latest version, removed fancybox and replaced with built-in solution for modals, fixed and improved numerous minor bugs and problems.\"},\"58jeUWqcBCc9AyKktvph\":{\"s_product_key\":\"58jeUWqcBCc9AyKktvph\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"111\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:14:05\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"GwoMe84Z9fBVqGU7JgPQ\":{\"s_product_key\":\"GwoMe84Z9fBVqGU7JgPQ\",\"s_version\":\"1.4.1\",\"fk_i_item_id\":\"112\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-14 14:07:51\",\"s_comment\":\"Fixed unwanted echo from development\"},\"P2xUxTzHUv8LMkGB14BV\":{\"s_product_key\":\"P2xUxTzHUv8LMkGB14BV\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"113\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:17:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"tmTcQIQhyfwrseFGqLIr\":{\"s_product_key\":\"tmTcQIQhyfwrseFGqLIr\",\"s_version\":\"1.3.6\",\"fk_i_item_id\":\"114\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-15 08:52:47\",\"s_comment\":\"Fixed issue with Instant Messenger Plugin\"},\"LNlXIJmlaVMAICJ7o728\":{\"s_product_key\":\"LNlXIJmlaVMAICJ7o728\",\"s_version\":\"1.3.3\",\"fk_i_item_id\":\"115\",\"s_osc_version_from\":\"8.0.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-04 15:15:25\",\"s_comment\":\"Numerous improvements and fixes made to Sigma theme.\"},\"aKHCKmKJSHIGDr9W1Gno\":{\"s_product_key\":\"aKHCKmKJSHIGDr9W1Gno\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"116\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:17:17\",\"s_comment\":\"Initial community release\"},\"EW7CF1Ut1VyDy7OHSzOz\":{\"s_product_key\":\"EW7CF1Ut1VyDy7OHSzOz\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"117\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:15:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"DUBVnkh9jwqW17nf6NGj\":{\"s_product_key\":\"DUBVnkh9jwqW17nf6NGj\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"118\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:22:51\",\"s_comment\":\"Initial community release\"},\"XvsQRHMyP1UK43q6Yd0J\":{\"s_product_key\":\"XvsQRHMyP1UK43q6Yd0J\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"119\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:18:24\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"4JVeSCym2yP23fgntw0Z\":{\"s_product_key\":\"4JVeSCym2yP23fgntw0Z\",\"s_version\":\"1.2.1\",\"fk_i_item_id\":\"120\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-03 13:13:25\",\"s_comment\":\"Fixed different issues (missing images, incorrect image used, ...)\"},\"Lif3TMohLnh8Q04F8Hwz\":{\"s_product_key\":\"Lif3TMohLnh8Q04F8Hwz\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"121\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:20:04\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"2NXsQmUKHos7jalBrqXz\":{\"s_product_key\":\"2NXsQmUKHos7jalBrqXz\",\"s_version\":\"1.7.0\",\"fk_i_item_id\":\"122\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:33:39\",\"s_comment\":\"Initial community release\"},\"KIRI6jiKUZIAvPQvBPA3\":{\"s_product_key\":\"KIRI6jiKUZIAvPQvBPA3\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"123\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:37:58\",\"s_comment\":\"Initial community release\"},\"2W7JWqCbxXdMfrrPLWxv\":{\"s_product_key\":\"2W7JWqCbxXdMfrrPLWxv\",\"s_version\":\"3.3.0\",\"fk_i_item_id\":\"124\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:20:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"djkx5sFdRsg4RyNolJyb\":{\"s_product_key\":\"djkx5sFdRsg4RyNolJyb\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"125\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:11:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"eT3rb042WfSXRc19otYi\":{\"s_product_key\":\"eT3rb042WfSXRc19otYi\",\"s_version\":\"3.2.0\",\"fk_i_item_id\":\"126\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:21:17\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"HBVzMk1O9AachzWTfstj\":{\"s_product_key\":\"HBVzMk1O9AachzWTfstj\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"127\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:22:41\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"MjqkDNW8spqvllOvtMSH\":{\"s_product_key\":\"MjqkDNW8spqvllOvtMSH\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"128\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:53:36\",\"s_comment\":\"Initial community release\"},\"XX4ccIt1Cj2SZQstJGWm\":{\"s_product_key\":\"XX4ccIt1Cj2SZQstJGWm\",\"s_version\":\"2.2.0\",\"fk_i_item_id\":\"129\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:00:46\",\"s_comment\":\"Initial community release\"},\"U9eN1qT3RP7LxCAq1zRS\":{\"s_product_key\":\"U9eN1qT3RP7LxCAq1zRS\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"130\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:23:44\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"CQxEKg0gHAuWK543zXZR\":{\"s_product_key\":\"CQxEKg0gHAuWK543zXZR\",\"s_version\":\"3.0.0\",\"fk_i_item_id\":\"131\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:13:09\",\"s_comment\":\"Initial community release\"},\"NS4N953XMUYGVlbHXtod\":{\"s_product_key\":\"NS4N953XMUYGVlbHXtod\",\"s_version\":\"3.2.2\",\"fk_i_item_id\":\"132\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-05-28 07:46:15\",\"s_comment\":\"Fixed error notices thrown in map, improved several functions\"},\"xJTuuOyytVDITjNjMlSC\":{\"s_product_key\":\"xJTuuOyytVDITjNjMlSC\",\"s_version\":\"3.4.0\",\"fk_i_item_id\":\"133\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:25:05\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"YpmgxnUy99FVT4GREHgu\":{\"s_product_key\":\"YpmgxnUy99FVT4GREHgu\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"134\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:20:50\",\"s_comment\":\"Initial community release\"},\"6dpbDvcouLjIwupfoDvk\":{\"s_product_key\":\"6dpbDvcouLjIwupfoDvk\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"135\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:24:58\",\"s_comment\":\"Initial community release\"},\"KPmC9399OcTmjOMQYjGp\":{\"s_product_key\":\"KPmC9399OcTmjOMQYjGp\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"136\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:26:54\",\"s_comment\":\"Initial community release\"},\"X2JXV9xLTaCvC2Og5CUm\":{\"s_product_key\":\"X2JXV9xLTaCvC2Og5CUm\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"137\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:28:39\",\"s_comment\":\"Initial community release\"},\"B9f8pUVcBeCRWuv3ia19\":{\"s_product_key\":\"B9f8pUVcBeCRWuv3ia19\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"138\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:31:31\",\"s_comment\":\"Initial community release\"},\"300pFzxrhPxGRYxZaHax\":{\"s_product_key\":\"300pFzxrhPxGRYxZaHax\",\"s_version\":\"1.4.1\",\"fk_i_item_id\":\"139\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:37:25\",\"s_comment\":\"Notices fixes\"},\"gKtMIByCxLvGXOytRysh\":{\"s_product_key\":\"gKtMIByCxLvGXOytRysh\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"140\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:39:37\",\"s_comment\":\"Initial community release\"},\"HLJg40f8FB4mgEsioqcY\":{\"s_product_key\":\"HLJg40f8FB4mgEsioqcY\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"141\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:25:46\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"FPTeGnz8PxBhqC86O2a8\":{\"s_product_key\":\"FPTeGnz8PxBhqC86O2a8\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"142\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:46:28\",\"s_comment\":\"Initial community release\"},\"LaMjjPzvEjGgHgpLVi6z\":{\"s_product_key\":\"LaMjjPzvEjGgHgpLVi6z\",\"s_version\":\"1.5.0\",\"fk_i_item_id\":\"143\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:50:11\",\"s_comment\":\"Initial community release\"},\"CQMi0syigvUJXxnpoVrW\":{\"s_product_key\":\"CQMi0syigvUJXxnpoVrW\",\"s_version\":\"3.2.0\",\"fk_i_item_id\":\"144\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:26:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"RvR9IqCQA0IVv57n7PFx\":{\"s_product_key\":\"RvR9IqCQA0IVv57n7PFx\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"145\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:27:30\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"TyVlD2EuU0zqZ6pKXSC9\":{\"s_product_key\":\"TyVlD2EuU0zqZ6pKXSC9\",\"s_version\":\"3.4.0\",\"fk_i_item_id\":\"146\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:28:12\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"9xLZ82VNsdC2cPp14iZh\":{\"s_product_key\":\"9xLZ82VNsdC2cPp14iZh\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"147\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:00:49\",\"s_comment\":\"Initial community release\"},\"MC7C2ERpzFNp4rfv0RJd\":{\"s_product_key\":\"MC7C2ERpzFNp4rfv0RJd\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"148\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:02:31\",\"s_comment\":\"Initial community release\"},\"pcMdYfykmrM4pJJeSOiP\":{\"s_product_key\":\"pcMdYfykmrM4pJJeSOiP\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"149\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:04:13\",\"s_comment\":\"Initial community release\"},\"bmCSP5oQ3V8ku20vmOyI\":{\"s_product_key\":\"bmCSP5oQ3V8ku20vmOyI\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"150\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:05:56\",\"s_comment\":\"Initial community release\"},\"vaqhSSRVtwzmb9BN8qxU\":{\"s_product_key\":\"vaqhSSRVtwzmb9BN8qxU\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"151\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:07:23\",\"s_comment\":\"Initial community release\"},\"AmqMvlVTHcXZrgiKnpIy\":{\"s_product_key\":\"AmqMvlVTHcXZrgiKnpIy\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"152\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:10:45\",\"s_comment\":\"Initial community release\"},\"DS9mru7ri7zFBwdxxzQW\":{\"s_product_key\":\"DS9mru7ri7zFBwdxxzQW\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"153\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:33:26\",\"s_comment\":\"Initial community release\"},\"jqgduyDOa2J0kzgo2ffP\":{\"s_product_key\":\"jqgduyDOa2J0kzgo2ffP\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"154\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:28:56\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"T2gBQVBvOci6YdA0nNeR\":{\"s_product_key\":\"T2gBQVBvOci6YdA0nNeR\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"155\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:37:16\",\"s_comment\":\"Initial community release\"},\"6E9ulx5fwCskM8GIcSMI\":{\"s_product_key\":\"6E9ulx5fwCskM8GIcSMI\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"156\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:39:21\",\"s_comment\":\"Initial community release\"},\"bgX4ETvrv6sIfluntcwz\":{\"s_product_key\":\"bgX4ETvrv6sIfluntcwz\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"157\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:41:06\",\"s_comment\":\"Initial community release\"},\"bct0VBUQPl1Po88uVapn\":{\"s_product_key\":\"bct0VBUQPl1Po88uVapn\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"158\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:29:47\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"MBIDRCC1jT1QPPJgZArG\":{\"s_product_key\":\"MBIDRCC1jT1QPPJgZArG\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"159\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:44:15\",\"s_comment\":\"Initial community release\"},\"RINzxtWvLYhfYdW82FDH\":{\"s_product_key\":\"RINzxtWvLYhfYdW82FDH\",\"s_version\":\"3.4.0\",\"fk_i_item_id\":\"160\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 13:52:15\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"Y4hZSdyb3dNx8T2K0gvx\":{\"s_product_key\":\"Y4hZSdyb3dNx8T2K0gvx\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"161\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:05:32\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"qgTeAeNLqsFydH18uuCD\":{\"s_product_key\":\"qgTeAeNLqsFydH18uuCD\",\"s_version\":\"3.2.0\",\"fk_i_item_id\":\"162\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:07:26\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"FjEXeR0nxc8SN0nbZEcQ\":{\"s_product_key\":\"FjEXeR0nxc8SN0nbZEcQ\",\"s_version\":\"2.6.0\",\"fk_i_item_id\":\"163\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:08:53\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"ClGjGODvxFtx58pACZew\":{\"s_product_key\":\"ClGjGODvxFtx58pACZew\",\"s_version\":\"2.3.0\",\"fk_i_item_id\":\"164\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:10:35\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"3jyU3nm1Rtj54fdGQ5h9\":{\"s_product_key\":\"3jyU3nm1Rtj54fdGQ5h9\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"165\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:12:32\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"5EU0g0p9MPYAWAiFDXRa\":{\"s_product_key\":\"5EU0g0p9MPYAWAiFDXRa\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"166\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:15:31\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"BV5DvGrgtOg2GsfBdFak\":{\"s_product_key\":\"BV5DvGrgtOg2GsfBdFak\",\"s_version\":\"1.5.0\",\"fk_i_item_id\":\"167\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:25:25\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"oPs2Gjn9C8GS86JspY2R\":{\"s_product_key\":\"oPs2Gjn9C8GS86JspY2R\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"168\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-28 10:49:21\",\"s_comment\":\"Major update - admin can now set category limits for non-logged, personal and business users separately\"},\"EIvSTp3NyIdV6Dto1Qhx\":{\"s_product_key\":\"EIvSTp3NyIdV6Dto1Qhx\",\"s_version\":\"1.0.2\",\"fk_i_item_id\":\"169\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-03-25 08:25:52\",\"s_comment\":\"Plugin now supports also WebP, JPEG and SVG images on category icons, updated translation file\"},\"L3IN81p4BJP0UU4pc0Xk\":{\"s_product_key\":\"L3IN81p4BJP0UU4pc0Xk\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"170\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-11 11:24:47\",\"s_comment\":\"Numerous minor issues and design bugs fixed.\"},\"qcj6opM6HtKfMtlsbAdv\":{\"s_product_key\":\"qcj6opM6HtKfMtlsbAdv\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"171\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-29 10:25:13\",\"s_comment\":\"Major update: Added subscription to following user items - when new listing is created, customer is informed about it via built-in alerts feature\"},\"KFHwr9v7MXDv8z7Gaxqf\":{\"s_product_key\":\"KFHwr9v7MXDv8z7Gaxqf\",\"s_version\":\"1.0.1\",\"fk_i_item_id\":\"173\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-17 10:36:21\",\"s_comment\":\"Several minor bugs and problems fixed\"},\"5sGWW11Q4k2ZPOiLKmbH\":{\"s_product_key\":\"5sGWW11Q4k2ZPOiLKmbH\",\"s_version\":\"1.0.2\",\"fk_i_item_id\":\"174\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-21 07:51:27\",\"s_comment\":\"Fixed saving some configuration parameters in backoffice.\\nFixed price calculation for Range - Accommodation reservations.\"},\"4Ru93z0aGeUifioD2FZF\":{\"s_product_key\":\"4Ru93z0aGeUifioD2FZF\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"175\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 08:04:52\",\"s_comment\":\"Initial Plugin Release\"},\"aCwcTb5tF8XHaOLMIrjB\":{\"s_product_key\":\"aCwcTb5tF8XHaOLMIrjB\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"176\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-04 11:06:38\",\"s_comment\":\"Installation instructions dummy plugin\"},\"nqygcFAScb360OQIyr5L\":{\"s_product_key\":\"nqygcFAScb360OQIyr5L\",\"s_version\":\"1.0.1\",\"fk_i_item_id\":\"177\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-24 07:13:09\",\"s_comment\":\"Fixed possible issues those might be caused by Imagick library\"},\"FxBSA3UNkXmCsJ5Rk5h2\":{\"s_product_key\":\"FxBSA3UNkXmCsJ5Rk5h2\",\"s_version\":\"1.0.2\",\"fk_i_item_id\":\"178\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-18 09:13:31\",\"s_comment\":\"Fixed issue with updating old price.\"},\"vliNRyxVet2OKwvL6b9L\":{\"s_product_key\":\"vliNRyxVet2OKwvL6b9L\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"179\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-23 13:37:40\",\"s_comment\":\"Initial plugin release\"},\"DxMMDzXC3d39tvALXnGE\":{\"s_product_key\":\"DxMMDzXC3d39tvALXnGE\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"180\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-30 14:04:23\",\"s_comment\":\"Initial plugin release\"},\"dI2zdwnHWj1TnMldUVji\":{\"s_product_key\":\"dI2zdwnHWj1TnMldUVji\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"181\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-01 14:41:20\",\"s_comment\":\"Initial plugin release\"}}}', 'STRING'),
('osclass', 'maxLatestItems@home', '12', 'STRING'),
('osclass', 'maxResultsPerPage@search', '50', 'INTEGER'),
('osclass', 'maxSizeKb', '4096', 'INTEGER'),
('osclass', 'moderate_comments', '0', 'INTEGER'),
('osclass', 'moderate_items', '-1', 'INTEGER'),
('osclass', 'mod_rewrite_loaded', '0', 'BOOLEAN'),
('osclass', 'notify_contact_friends', '1', 'BOOLEAN'),
('osclass', 'notify_contact_item', '1', 'BOOLEAN'),
('osclass', 'notify_new_comment', '1', 'BOOLEAN'),
('osclass', 'notify_new_comment_user', '0', 'BOOLEAN'),
('osclass', 'notify_new_item', '1', 'BOOLEAN'),
('osclass', 'notify_new_user', '1', 'BOOLEAN'),
('osclass', 'numImages@items', '4', 'INTEGER'),
('osclass', 'num_rss_items', '50', 'STRING'),
('osclass', 'osclasspoint_api_key', '', 'STRING'),
('osclass', 'osclass_installed', '1', 'BOOLEAN'),
('osclass', 'pageDesc', '', 'STRING'),
('osclass', 'pageTitle', 'Osclass', 'STRING'),
('osclass', 'ping_search_engines', '0', 'BOOLEAN'),
('osclass', 'plugins_downloaded', '[]', 'STRING'),
('osclass', 'plugins_last_version_check', '1638427625', 'STRING'),
('osclass', 'plugins_to_update', '[]', 'STRING'),
('osclass', 'plugins_update_count', '0', 'STRING'),
('osclass', 'purge_latest_searches', '1000', 'STRING'),
('osclass', 'recaptchaPrivKey', '', 'STRING'),
('osclass', 'recaptchaPubKey', '', 'STRING'),
('osclass', 'recaptcha_version', '2', 'STRING'),
('osclass', 'regenerate_image_data', '', 'STRING'),
('osclass', 'reg_user_can_contact', '0', 'BOOLEAN'),
('osclass', 'reg_user_can_see_phone', '0', 'BOOLEAN'),
('osclass', 'reg_user_post', '0', 'BOOLEAN'),
('osclass', 'reg_user_post_comments', '0', 'BOOLEAN'),
('osclass', 'renewal_limit', '0', 'INTEGER'),
('osclass', 'renewal_update_pub_date', '0', 'BOOLEAN'),
('osclass', 'rewriteEnabled', '0', 'BOOLEAN'),
('osclass', 'rewrite_cat_url', '{CATEGORIES}', 'STRING'),
('osclass', 'rewrite_contact', 'contact', 'STRING'),
('osclass', 'rewrite_feed', 'feed', 'STRING'),
('osclass', 'rewrite_item_activate', 'item/activate', 'STRING'),
('osclass', 'rewrite_item_contact', 'item/contact', 'STRING'),
('osclass', 'rewrite_item_deactivate', 'item/deactivate', 'STRING'),
('osclass', 'rewrite_item_delete', 'item/delete', 'STRING'),
('osclass', 'rewrite_item_edit', 'item/edit', 'STRING'),
('osclass', 'rewrite_item_mark', 'item/mark', 'STRING'),
('osclass', 'rewrite_item_new', 'item/new', 'STRING'),
('osclass', 'rewrite_item_renew', 'item/renew', 'STRING'),
('osclass', 'rewrite_item_resource_delete', 'resource/delete', 'STRING'),
('osclass', 'rewrite_item_send_friend', 'item/send-friend', 'STRING'),
('osclass', 'rewrite_item_url', '{CATEGORIES}/{ITEM_TITLE}_i{ITEM_ID}', 'STRING'),
('osclass', 'rewrite_language', 'language', 'STRING'),
('osclass', 'rewrite_page_url', '{PAGE_SLUG}-p{PAGE_ID}', 'STRING'),
('osclass', 'rewrite_rules', '', 'STRING'),
('osclass', 'rewrite_search_category', 'category', 'STRING'),
('osclass', 'rewrite_search_city', 'city', 'STRING'),
('osclass', 'rewrite_search_city_area', 'cityarea', 'STRING'),
('osclass', 'rewrite_search_country', 'country', 'STRING'),
('osclass', 'rewrite_search_pattern', 'pattern', 'STRING'),
('osclass', 'rewrite_search_region', 'region', 'STRING'),
('osclass', 'rewrite_search_url', 'search', 'STRING'),
('osclass', 'rewrite_search_user', 'user', 'STRING'),
('osclass', 'rewrite_user_activate', 'user/activate', 'STRING'),
('osclass', 'rewrite_user_activate_alert', 'alert/confirm', 'STRING'),
('osclass', 'rewrite_user_alerts', 'user/alerts', 'STRING'),
('osclass', 'rewrite_user_change_email', 'email/change', 'STRING'),
('osclass', 'rewrite_user_change_email_confirm', 'email/confirm', 'STRING'),
('osclass', 'rewrite_user_change_password', 'password/change', 'STRING'),
('osclass', 'rewrite_user_change_username', 'username/change', 'STRING'),
('osclass', 'rewrite_user_dashboard', 'user/dashboard', 'STRING'),
('osclass', 'rewrite_user_forgot', 'user/forgot', 'STRING'),
('osclass', 'rewrite_user_items', 'user/items', 'STRING'),
('osclass', 'rewrite_user_login', 'user/login', 'STRING'),
('osclass', 'rewrite_user_logout', 'user/logout', 'STRING'),
('osclass', 'rewrite_user_profile', 'user/profile', 'STRING'),
('osclass', 'rewrite_user_recover', 'user/recover', 'STRING'),
('osclass', 'rewrite_user_register', 'user/register', 'STRING'),
('osclass', 'save_latest_searches', '0', 'BOOLEAN'),
('osclass', 'search_pattern_method', '', 'STRING'),
('osclass', 'selectable_parent_categories', '', 'STRING'),
('osclass', 'seo_url_search_prefix', '', 'STRING'),
('osclass', 'structured_data', '0', 'STRING'),
('osclass', 'subdomain_host', '', 'STRING'),
('osclass', 'subdomain_type', '', 'STRING'),
('osclass', 'theme', 'sigma', 'STRING'),
('osclass', 'themes_downloaded', '[\"LNlXIJmlaVMAICJ7o728\"]', 'STRING'),
('osclass', 'themes_last_version_check', '1638427624', 'STRING'),
('osclass', 'themes_to_update', '[\"sigma\"]', 'STRING'),
('osclass', 'themes_update_count', '1', 'STRING'),
('osclass', 'timeFormat', 'H:i', 'STRING'),
('osclass', 'timezone', 'Europe/Madrid', 'STRING'),
('osclass', 'title_character_length', '100', 'INTEGER'),
('osclass', 'update_core_json', '{\"version\":800,\"version_string\":\"8.0.0\",\"url\":\"https:\\/\\/osclass-classifieds.com\\/file\\/osclass-v8.0.0.zip\",\"s_name\":\"v8.0.0\"}', 'STRING'),
('osclass', 'username_blacklist', 'admin,user', 'STRING'),
('osclass', 'use_imagick', '0', 'BOOLEAN'),
('osclass', 'version', '440', 'INTEGER'),
('osclass', 'warn_expiration', '0', 'INTEGER'),
('osclass', 'watermark_image', '', 'STRING'),
('osclass', 'watermark_place', 'centre', 'STRING'),
('osclass', 'watermark_text', '', 'STRING'),
('osclass', 'watermark_text_color', '', 'STRING'),
('osclass', 'weekStart', '0', 'STRING'),
('osclass', 'widget_data_api', '', 'STRING');
INSERT INTO `oc_t_preference` (`s_section`, `s_name`, `s_value`, `e_type`) VALUES
('osclass', 'widget_data_blog', '{\"date\":\"2021-12-02 07:47:03\",\"data\":[{\"id\":\"37\",\"slug\":\"osclass-v8-release-continuous-development-setup\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/37.jpg\",\"category_id\":\"1\",\"views\":\"925\",\"pub_date\":\"2021-11-04 00:00:00\",\"title\":\"Osclass 8.0 release - Continuous development setup\",\"subtitle\":\"New version of Osclass is there with cool and important updates like new versioning, brand new locations database or child theme improvements\",\"description\":\"Osclass v8.0 release overview Team is working great progress with re-inventing Osclass and boosting it with new features. But that is not all, we are also redesigning and improving existing functionalities and adding numerous new features. \\u00a0 Version has changed to 8.x.x Hard and complicated decission, but rational one. Number \\\"4\\\" has been occupied by multiple branches and it was confusing for customers to understand relation between different branches. We wanted to cut this line and selected num...\",\"short_description\":\"New version of Osclass is there with cool and important updates like new versioning, brand new locations database or child theme improvements\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/osclass-v8-release-continuous-development-setup-b37\"},{\"id\":\"36\",\"slug\":\"osclass-44-major-release\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/36.jpg\",\"category_id\":\"1\",\"views\":\"6967\",\"pub_date\":\"2021-04-26 00:00:00\",\"title\":\"Osclass 4.4 - May major release\",\"subtitle\":\"May update finally brings jQuery update to latest version (3.6) without breaking compatibility with legacy plugins and themes, admin color schemes to make backoffice in colors you prefer, demo features for themes &amp; plugins developers and as usual, set of bug fixes and improvements.\",\"description\":\"May major release - Osclass 4.4.0 brings very important features and updates It\'s been a while from time when Osclass 4.3 was released, today we bring you important updates and improvements of most favorite classifieds script. Open complete osclass changelog. jQuery updated from 1.8 to 3.6 After 10 years, it is again possible to use latest jQuery version within Osclass. Once you upgrade to 4.4, you will be able to change jQuery version to latest (3.x.x) in Settings &gt; General section. You shou...\",\"short_description\":\"May update finally brings jQuery update to latest version (3.6) without breaking compatibility with legacy plugins and themes, admin color schemes to make backoffice in colors you prefer, demo features for themes &amp; plugins developers and as usual, set of bug fixes and improvements.\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/osclass-44-major-release-b36\"},{\"id\":\"35\",\"slug\":\"osclass-43-major-update\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/35.jpg\",\"category_id\":\"1\",\"views\":\"7685\",\"pub_date\":\"2021-01-26 00:00:00\",\"title\":\"Osclass 4.3 major update\",\"subtitle\":\"Today we bring new version of osclass that is primarily aimed to provide full compatibility to PHP 8, but also improving existing features as well as brings new features to classifieds script osclass.\",\"description\":\"Osclass release overview Osclass belongs to best classifieds scripts for years and it\'s continuos development is important and today we bring compatibility update of osclass to work properly on newly released PHP 8. \\u00a0 PHP v8 compatibility update It may seem like small step, but actually PHP 8 brings a lot of differences those needed to be checked and considered. We\'ve reviewed all core files of osclass, but not just that. This update indirectly includes also update of more than 120 products avai...\",\"short_description\":\"Today we bring new version of osclass that is primarily aimed to provide full compatibility to PHP 8, but also improving existing features as well as brings new features to classifieds script osclass.\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/osclass-43-major-update-b35\"},{\"id\":\"34\",\"slug\":\"osclass-42-major-update\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/34.jpg\",\"category_id\":\"1\",\"views\":\"11559\",\"pub_date\":\"2020-11-10 00:00:00\",\"title\":\"Osclass 4.2 major update\",\"subtitle\":\"\\\"Xmas\\\" major release is there as a gift for you! It brings more than 30 features and fixes, improves stability, speed, SEO and add a lot of new functionality to osclass classifieds script.\",\"description\":\"Major osclass release overview \\\"Xmas\\\" release is there and brings ton of new features, let\'s go trough all of them! \\u00a0 CSS style sheets and JS scripts optimization New functionality to optimize, merge and minify CSS style sheets and JS scripts has been integrated directly into osclass. You can now optimize your classifieds even more than ever before. Read more about CSS &amp; JS optimization feature in osclass. \\u00a0 Market built-in to backoffice Market features has been completely rebuilt from scrat...\",\"short_description\":\"\\\"Xmas\\\" major release is there as a gift for you! It brings more than 30 features and fixes, improves stability, speed, SEO and add a lot of new functionality to osclass classifieds script.\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/osclass-42-major-update-b34\"},{\"id\":\"33\",\"slug\":\"debug-log-in-backoffice\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/33.jpg\",\"category_id\":\"2\",\"views\":\"2299\",\"pub_date\":\"2020-11-06 00:00:00\",\"title\":\"Debug log in backoffice\",\"subtitle\":\"Debug logs generated by osclass are now available directly in osclass oc-admin\",\"description\":\"Osclass debug details in backoffice Osclass now contains ability to check error logs of your server\\/osclass directly in backoffice. To open debug details, go to your backoffice and in left sidebar navigate to \\\"Tools &gt; Debug\\/Error log\\\": \\u00a0 Once you get there, in left sidebar you will see information if debug mode(s) are enabled in your osclass (and should be disabled on production classifieds) and how to enable error logs as well. Right sidebar contains content of debug.log file that stores PHP...\",\"short_description\":\"Debug logs generated by osclass are now available directly in osclass oc-admin\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/debug-log-in-backoffice-b33\"}]}', 'STRING'),
('osclass', 'widget_data_product', '{\"date\":\"2021-12-02 07:47:05\",\"data\":{\"dI2zdwnHWj1TnMldUVji\":{\"pk_i_id\":\"181\",\"s_title\":\"Contact Form Limits Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/protection-and-spam\\/contact-form-limits-plugin-i181\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/863_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/863_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/863.jpg\",\"s_description\":\"Contact form limits plugin protects forms on your Osclass classifieds website and does not allow to spam your customers. Plugin can also create new ban rules for spammers those use banned words (i.e. some domain) or they are trying to conti...\",\"dt_pub_date\":\"2021-12-01 14:40:22\",\"i_category_id\":\"104\",\"s_category_name\":\"Protection and Spam\",\"i_price\":\"23.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x181x23.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/181\",\"i_download\":\"1\",\"i_order\":\"1\",\"i_rating\":\"0.0\",\"i_rating_count\":\"0\",\"i_version\":\"1.0.0\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-12-01 14:41:20\",\"s_product_key\":\"dI2zdwnHWj1TnMldUVji\",\"s_update_comment\":\"Initial plugin release\",\"theme_type\":\"\",\"type\":\"plugin\"},\"DxMMDzXC3d39tvALXnGE\":{\"pk_i_id\":\"180\",\"s_title\":\"History Logger Osclass Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/protection-and-spam\\/history-logger-osclass-plugin-i180\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/859_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/859_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/859.jpg\",\"s_description\":\"Plugin store information about listings and users, even these are changed or removed by their owners in order to preserve historical data. Basic stats are collected about data stored by plugin and convenient way to search &amp; filter logs....\",\"dt_pub_date\":\"2021-11-30 14:04:20\",\"i_category_id\":\"104\",\"s_category_name\":\"Protection and Spam\",\"i_price\":\"17.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x180x17.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/180\",\"i_download\":\"1\",\"i_order\":\"1\",\"i_rating\":\"0.0\",\"i_rating_count\":\"0\",\"i_version\":\"1.0.0\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-11-30 14:04:23\",\"s_product_key\":\"DxMMDzXC3d39tvALXnGE\",\"s_update_comment\":\"Initial plugin release\",\"theme_type\":\"\",\"type\":\"plugin\"},\"vliNRyxVet2OKwvL6b9L\":{\"pk_i_id\":\"179\",\"s_title\":\"Visitors Checking Item Counter Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/design-and-appearance\\/visitors-checking-item-counter-plugin-i179\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/855_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/855_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/855.jpg\",\"s_description\":\"Create functionality to identify how many other users are checking particular listing. This information is then shown on listing page to make items more attractive and tries to push buyers to contact seller as listing looks \\\"wanted\\\". XY peo...\",\"dt_pub_date\":\"2021-11-23 13:37:37\",\"i_category_id\":\"106\",\"s_category_name\":\"Design and Appearance\",\"i_price\":\"11.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x179x11.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/179\",\"i_download\":\"5\",\"i_order\":\"2\",\"i_rating\":\"0.0\",\"i_rating_count\":\"0\",\"i_version\":\"1.0.0\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-11-23 13:37:40\",\"s_product_key\":\"vliNRyxVet2OKwvL6b9L\",\"s_update_comment\":\"Initial plugin release\",\"theme_type\":\"\",\"type\":\"plugin\"},\"FxBSA3UNkXmCsJ5Rk5h2\":{\"pk_i_id\":\"178\",\"s_title\":\"Price Comparison Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/design-and-appearance\\/price-comparison-plugin-i178\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/849_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/849_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/849.jpg\",\"s_description\":\"Price Comparison Plugin for Osclass classifieds add brand new functionality into your website to calculate price index of your listings, price history and evolution of similar items or create advanced related items section. Create price ind...\",\"dt_pub_date\":\"2021-11-15 14:12:00\",\"i_category_id\":\"106\",\"s_category_name\":\"Design and Appearance\",\"i_price\":\"17.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x178x17.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/178\",\"i_download\":\"20\",\"i_order\":\"3\",\"i_rating\":\"5.0\",\"i_rating_count\":\"1\",\"i_version\":\"1.0.2\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-11-18 09:13:31\",\"s_product_key\":\"FxBSA3UNkXmCsJ5Rk5h2\",\"s_update_comment\":\"Fixed issue with updating old price.\",\"theme_type\":\"\",\"type\":\"plugin\"},\"nqygcFAScb360OQIyr5L\":{\"pk_i_id\":\"177\",\"s_title\":\"WebP Images Generator Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/design-and-appearance\\/webp-images-generator-plugin-i177\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/847_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/847_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/847.jpg\",\"s_description\":\"Would you like to optimize images on your classifieds and use image format of 21st century? WebP Generator Plugin for Osclass classifieds helps you to optimize size of your images, improve loading speed of your site for customers and defact...\",\"dt_pub_date\":\"2021-11-05 14:33:44\",\"i_category_id\":\"106\",\"s_category_name\":\"Design and Appearance\",\"i_price\":\"23.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x177x23.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/177\",\"i_download\":\"28\",\"i_order\":\"14\",\"i_rating\":\"5.0\",\"i_rating_count\":\"3\",\"i_version\":\"1.0.1\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-11-24 07:13:09\",\"s_product_key\":\"nqygcFAScb360OQIyr5L\",\"s_update_comment\":\"Fixed possible issues those might be caused by Imagick library\",\"theme_type\":\"\",\"type\":\"plugin\"}}}', 'STRING'),
('osclass', 'widget_data_update', '{\"date\":\"2021-12-02 07:47:02\",\"data\":{\"version\":800,\"version_string\":\"8.0.0\",\"url\":\"https:\\/\\/osclass-classifieds.com\\/file\\/osclass-v8.0.0.zip\",\"s_name\":\"v8.0.0\"}}', 'STRING'),
('sigma', 'defaultLocationShowAs', 'dropdown', 'STRING'),
('sigma', 'defaultShowAs@all', 'gallery', 'STRING'),
('sigma', 'donation', '0', 'STRING'),
('sigma', 'footer_link', '1', 'STRING'),
('sigma', 'header-728x90', '', 'STRING'),
('sigma', 'homepage-728x90', '', 'STRING'),
('sigma', 'keyword_placeholder', 'ie. PHP Programmer', 'STRING'),
('sigma', 'logo', 'sigma_logo.png', 'STRING'),
('sigma', 'rtl', '0', 'STRING'),
('sigma', 'search-results-middle-728x90', '', 'STRING'),
('sigma', 'search-results-top-728x90', '', 'STRING'),
('sigma', 'sidebar-300x250', '', 'STRING'),
('sigma', 'version', '132', 'STRING');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_region`
--

CREATE TABLE `oc_t_region` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_c_country_code` char(2) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `s_name_native` varchar(60) DEFAULT NULL,
  `s_slug` varchar(60) NOT NULL DEFAULT '',
  `b_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_region`
--

INSERT INTO `oc_t_region` (`pk_i_id`, `fk_c_country_code`, `s_name`, `s_name_native`, `s_slug`, `b_active`) VALUES
(1003327, 'MZ', 'Cabo Delgado Province', NULL, 'cabo-delgado-province', 1),
(1003328, 'MZ', 'Zambezia Province', NULL, 'zambezia-province', 1),
(1003329, 'MZ', 'Gaza Province', NULL, 'gaza-province', 1),
(1003330, 'MZ', 'Inhambane Province', NULL, 'inhambane-province', 1),
(1003331, 'MZ', 'Sofala Province', NULL, 'sofala-province', 1),
(1003332, 'MZ', 'Maputo Province', NULL, 'maputo-province', 1),
(1003333, 'MZ', 'Niassa Province', NULL, 'niassa-province', 1),
(1003334, 'MZ', 'Tete Province', NULL, 'tete-province', 1),
(1003335, 'MZ', 'Maputo', NULL, 'maputo', 1),
(1003336, 'MZ', 'Nampula Province', NULL, 'nampula-province', 1),
(1003337, 'MZ', 'Manica Province', NULL, 'manica-province', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_region_stats`
--

CREATE TABLE `oc_t_region_stats` (
  `fk_i_region_id` int(10) UNSIGNED NOT NULL,
  `i_num_items` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_region_stats`
--

INSERT INTO `oc_t_region_stats` (`fk_i_region_id`, `i_num_items`) VALUES
(1003327, 0),
(1003328, 0),
(1003330, 0),
(1003331, 0),
(1003332, 0),
(1003333, 0),
(1003334, 0),
(1003335, 0),
(1003336, 0),
(1003337, 0),
(1003329, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_user`
--

CREATE TABLE `oc_t_user` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `dt_reg_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_username` varchar(100) NOT NULL,
  `s_password` char(60) NOT NULL,
  `s_secret` varchar(40) DEFAULT NULL,
  `s_email` varchar(100) NOT NULL,
  `s_website` varchar(100) DEFAULT NULL,
  `s_phone_land` varchar(45) DEFAULT NULL,
  `s_phone_mobile` varchar(45) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `b_active` tinyint(1) NOT NULL DEFAULT 0,
  `s_pass_code` varchar(100) DEFAULT NULL,
  `s_pass_date` datetime DEFAULT NULL,
  `s_pass_ip` varchar(15) DEFAULT NULL,
  `fk_c_country_code` char(2) DEFAULT NULL,
  `s_country` varchar(40) DEFAULT NULL,
  `s_country_native` varchar(80) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_zip` varchar(15) DEFAULT NULL,
  `fk_i_region_id` int(10) UNSIGNED DEFAULT NULL,
  `s_region` varchar(100) DEFAULT NULL,
  `s_region_native` varchar(60) DEFAULT NULL,
  `fk_i_city_id` int(10) UNSIGNED DEFAULT NULL,
  `s_city` varchar(100) DEFAULT NULL,
  `s_city_native` varchar(60) DEFAULT NULL,
  `fk_i_city_area_id` int(10) UNSIGNED DEFAULT NULL,
  `s_city_area` varchar(200) DEFAULT NULL,
  `d_coord_lat` decimal(20,10) DEFAULT NULL,
  `d_coord_long` decimal(20,10) DEFAULT NULL,
  `b_company` tinyint(1) NOT NULL DEFAULT 0,
  `i_items` int(10) UNSIGNED DEFAULT 0,
  `i_comments` int(10) UNSIGNED DEFAULT 0,
  `dt_access_date` datetime DEFAULT NULL,
  `s_access_ip` varchar(15) NOT NULL DEFAULT '',
  `i_login_fails` int(3) DEFAULT 0,
  `dt_login_fail_date` datetime DEFAULT NULL,
  `s_profile_img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_user_description`
--

CREATE TABLE `oc_t_user_description` (
  `fk_i_user_id` int(10) UNSIGNED NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_user_email_tmp`
--

CREATE TABLE `oc_t_user_email_tmp` (
  `fk_i_user_id` int(10) UNSIGNED NOT NULL,
  `s_new_email` varchar(100) NOT NULL,
  `dt_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_widget`
--

CREATE TABLE `oc_t_widget` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_description` varchar(40) NOT NULL,
  `s_location` varchar(40) NOT NULL,
  `e_kind` enum('TEXT','HTML') NOT NULL,
  `s_content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_t_admin`
--
ALTER TABLE `oc_t_admin`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD UNIQUE KEY `s_username` (`s_username`),
  ADD UNIQUE KEY `s_email` (`s_email`);

--
-- Indexes for table `oc_t_alerts`
--
ALTER TABLE `oc_t_alerts`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- Indexes for table `oc_t_alerts_sent`
--
ALTER TABLE `oc_t_alerts_sent`
  ADD PRIMARY KEY (`d_date`);

--
-- Indexes for table `oc_t_ban_rule`
--
ALTER TABLE `oc_t_ban_rule`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- Indexes for table `oc_t_category`
--
ALTER TABLE `oc_t_category`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_parent_id` (`fk_i_parent_id`),
  ADD KEY `i_position` (`i_position`);

--
-- Indexes for table `oc_t_category_description`
--
ALTER TABLE `oc_t_category_description`
  ADD PRIMARY KEY (`fk_i_category_id`,`fk_c_locale_code`),
  ADD KEY `idx_s_slug` (`s_slug`),
  ADD KEY `fk_c_locale_code` (`fk_c_locale_code`);

--
-- Indexes for table `oc_t_category_stats`
--
ALTER TABLE `oc_t_category_stats`
  ADD PRIMARY KEY (`fk_i_category_id`);

--
-- Indexes for table `oc_t_city`
--
ALTER TABLE `oc_t_city`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_region_id` (`fk_i_region_id`),
  ADD KEY `idx_s_name` (`s_name`),
  ADD KEY `idx_s_slug` (`s_slug`),
  ADD KEY `fk_c_country_code` (`fk_c_country_code`);

--
-- Indexes for table `oc_t_city_area`
--
ALTER TABLE `oc_t_city_area`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_city_id` (`fk_i_city_id`),
  ADD KEY `idx_s_name` (`s_name`);

--
-- Indexes for table `oc_t_city_stats`
--
ALTER TABLE `oc_t_city_stats`
  ADD PRIMARY KEY (`fk_i_city_id`),
  ADD KEY `idx_num_items` (`i_num_items`);

--
-- Indexes for table `oc_t_country`
--
ALTER TABLE `oc_t_country`
  ADD PRIMARY KEY (`pk_c_code`),
  ADD KEY `idx_s_slug` (`s_slug`),
  ADD KEY `idx_s_name` (`s_name`);

--
-- Indexes for table `oc_t_country_stats`
--
ALTER TABLE `oc_t_country_stats`
  ADD PRIMARY KEY (`fk_c_country_code`),
  ADD KEY `idx_num_items` (`i_num_items`);

--
-- Indexes for table `oc_t_currency`
--
ALTER TABLE `oc_t_currency`
  ADD PRIMARY KEY (`pk_c_code`),
  ADD UNIQUE KEY `s_name` (`s_name`);

--
-- Indexes for table `oc_t_item`
--
ALTER TABLE `oc_t_item`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_user_id` (`fk_i_user_id`),
  ADD KEY `idx_b_premium` (`b_premium`),
  ADD KEY `idx_s_contact_email` (`s_contact_email`(10)),
  ADD KEY `fk_i_category_id` (`fk_i_category_id`),
  ADD KEY `fk_c_currency_code` (`fk_c_currency_code`),
  ADD KEY `idx_pub_date` (`dt_pub_date`),
  ADD KEY `idx_price` (`i_price`);

--
-- Indexes for table `oc_t_item_comment`
--
ALTER TABLE `oc_t_item_comment`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_item_id` (`fk_i_item_id`),
  ADD KEY `fk_i_user_id` (`fk_i_user_id`);

--
-- Indexes for table `oc_t_item_description`
--
ALTER TABLE `oc_t_item_description`
  ADD PRIMARY KEY (`fk_i_item_id`,`fk_c_locale_code`);
ALTER TABLE `oc_t_item_description` ADD FULLTEXT KEY `s_description` (`s_description`,`s_title`);

--
-- Indexes for table `oc_t_item_location`
--
ALTER TABLE `oc_t_item_location`
  ADD PRIMARY KEY (`fk_i_item_id`),
  ADD KEY `fk_c_country_code` (`fk_c_country_code`),
  ADD KEY `fk_i_region_id` (`fk_i_region_id`),
  ADD KEY `fk_i_city_id` (`fk_i_city_id`),
  ADD KEY `fk_i_city_area_id` (`fk_i_city_area_id`);

--
-- Indexes for table `oc_t_item_meta`
--
ALTER TABLE `oc_t_item_meta`
  ADD PRIMARY KEY (`fk_i_item_id`,`fk_i_field_id`,`s_multi`),
  ADD KEY `s_value` (`s_value`(255)),
  ADD KEY `fk_i_field_id` (`fk_i_field_id`);

--
-- Indexes for table `oc_t_item_resource`
--
ALTER TABLE `oc_t_item_resource`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_item_id` (`fk_i_item_id`),
  ADD KEY `idx_s_content_type` (`pk_i_id`,`s_content_type`(10));

--
-- Indexes for table `oc_t_item_stats`
--
ALTER TABLE `oc_t_item_stats`
  ADD PRIMARY KEY (`fk_i_item_id`,`dt_date`),
  ADD KEY `dt_date_fk_i_item_id` (`dt_date`,`fk_i_item_id`);

--
-- Indexes for table `oc_t_keywords`
--
ALTER TABLE `oc_t_keywords`
  ADD PRIMARY KEY (`s_md5`,`fk_c_locale_code`),
  ADD KEY `fk_i_category_id` (`fk_i_category_id`),
  ADD KEY `fk_i_city_id` (`fk_i_city_id`),
  ADD KEY `fk_c_locale_code` (`fk_c_locale_code`);

--
-- Indexes for table `oc_t_locale`
--
ALTER TABLE `oc_t_locale`
  ADD PRIMARY KEY (`pk_c_code`),
  ADD UNIQUE KEY `s_short_name` (`s_short_name`);

--
-- Indexes for table `oc_t_locations_tmp`
--
ALTER TABLE `oc_t_locations_tmp`
  ADD PRIMARY KEY (`id_location`,`e_type`);

--
-- Indexes for table `oc_t_meta_categories`
--
ALTER TABLE `oc_t_meta_categories`
  ADD PRIMARY KEY (`fk_i_category_id`,`fk_i_field_id`),
  ADD KEY `fk_i_field_id` (`fk_i_field_id`);

--
-- Indexes for table `oc_t_meta_fields`
--
ALTER TABLE `oc_t_meta_fields`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- Indexes for table `oc_t_pages`
--
ALTER TABLE `oc_t_pages`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- Indexes for table `oc_t_pages_description`
--
ALTER TABLE `oc_t_pages_description`
  ADD PRIMARY KEY (`fk_i_pages_id`,`fk_c_locale_code`),
  ADD KEY `fk_c_locale_code` (`fk_c_locale_code`);

--
-- Indexes for table `oc_t_plugin_category`
--
ALTER TABLE `oc_t_plugin_category`
  ADD KEY `fk_i_category_id` (`fk_i_category_id`);

--
-- Indexes for table `oc_t_preference`
--
ALTER TABLE `oc_t_preference`
  ADD UNIQUE KEY `s_section` (`s_section`,`s_name`);

--
-- Indexes for table `oc_t_region`
--
ALTER TABLE `oc_t_region`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_c_country_code` (`fk_c_country_code`),
  ADD KEY `idx_s_name` (`s_name`),
  ADD KEY `idx_s_slug` (`s_slug`);

--
-- Indexes for table `oc_t_region_stats`
--
ALTER TABLE `oc_t_region_stats`
  ADD PRIMARY KEY (`fk_i_region_id`),
  ADD KEY `idx_num_items` (`i_num_items`);

--
-- Indexes for table `oc_t_user`
--
ALTER TABLE `oc_t_user`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD UNIQUE KEY `s_email` (`s_email`),
  ADD KEY `idx_s_name` (`s_name`(6)),
  ADD KEY `idx_s_username` (`s_username`),
  ADD KEY `fk_c_country_code` (`fk_c_country_code`),
  ADD KEY `fk_i_region_id` (`fk_i_region_id`),
  ADD KEY `fk_i_city_id` (`fk_i_city_id`),
  ADD KEY `fk_i_city_area_id` (`fk_i_city_area_id`);

--
-- Indexes for table `oc_t_user_description`
--
ALTER TABLE `oc_t_user_description`
  ADD PRIMARY KEY (`fk_i_user_id`,`fk_c_locale_code`),
  ADD KEY `fk_c_locale_code` (`fk_c_locale_code`);

--
-- Indexes for table `oc_t_user_email_tmp`
--
ALTER TABLE `oc_t_user_email_tmp`
  ADD PRIMARY KEY (`fk_i_user_id`);

--
-- Indexes for table `oc_t_widget`
--
ALTER TABLE `oc_t_widget`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_t_admin`
--
ALTER TABLE `oc_t_admin`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_t_alerts`
--
ALTER TABLE `oc_t_alerts`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_ban_rule`
--
ALTER TABLE `oc_t_ban_rule`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_category`
--
ALTER TABLE `oc_t_category`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `oc_t_city`
--
ALTER TABLE `oc_t_city`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1076626;

--
-- AUTO_INCREMENT for table `oc_t_item`
--
ALTER TABLE `oc_t_item`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_t_item_comment`
--
ALTER TABLE `oc_t_item_comment`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_item_resource`
--
ALTER TABLE `oc_t_item_resource`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_t_meta_fields`
--
ALTER TABLE `oc_t_meta_fields`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_t_pages`
--
ALTER TABLE `oc_t_pages`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oc_t_region`
--
ALTER TABLE `oc_t_region`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003338;

--
-- AUTO_INCREMENT for table `oc_t_user`
--
ALTER TABLE `oc_t_user`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_widget`
--
ALTER TABLE `oc_t_widget`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oc_t_category`
--
ALTER TABLE `oc_t_category`
  ADD CONSTRAINT `oc_t_category_ibfk_1` FOREIGN KEY (`fk_i_parent_id`) REFERENCES `oc_t_category` (`pk_i_id`);

--
-- Constraints for table `oc_t_category_description`
--
ALTER TABLE `oc_t_category_description`
  ADD CONSTRAINT `oc_t_category_description_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_category_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`);

--
-- Constraints for table `oc_t_category_stats`
--
ALTER TABLE `oc_t_category_stats`
  ADD CONSTRAINT `oc_t_category_stats_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`);

--
-- Constraints for table `oc_t_city`
--
ALTER TABLE `oc_t_city`
  ADD CONSTRAINT `oc_t_city_ibfk_1` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_city_ibfk_2` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`);

--
-- Constraints for table `oc_t_city_area`
--
ALTER TABLE `oc_t_city_area`
  ADD CONSTRAINT `oc_t_city_area_ibfk_1` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`);

--
-- Constraints for table `oc_t_city_stats`
--
ALTER TABLE `oc_t_city_stats`
  ADD CONSTRAINT `oc_t_city_stats_ibfk_1` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`);

--
-- Constraints for table `oc_t_country_stats`
--
ALTER TABLE `oc_t_country_stats`
  ADD CONSTRAINT `oc_t_country_stats_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`);

--
-- Constraints for table `oc_t_item`
--
ALTER TABLE `oc_t_item`
  ADD CONSTRAINT `oc_t_item_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_ibfk_2` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_ibfk_3` FOREIGN KEY (`fk_c_currency_code`) REFERENCES `oc_t_currency` (`pk_c_code`);

--
-- Constraints for table `oc_t_item_comment`
--
ALTER TABLE `oc_t_item_comment`
  ADD CONSTRAINT `oc_t_item_comment_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_comment_ibfk_2` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`);

--
-- Constraints for table `oc_t_item_location`
--
ALTER TABLE `oc_t_item_location`
  ADD CONSTRAINT `oc_t_item_location_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_location_ibfk_2` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`),
  ADD CONSTRAINT `oc_t_item_location_ibfk_3` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_location_ibfk_4` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_location_ibfk_5` FOREIGN KEY (`fk_i_city_area_id`) REFERENCES `oc_t_city_area` (`pk_i_id`);

--
-- Constraints for table `oc_t_item_meta`
--
ALTER TABLE `oc_t_item_meta`
  ADD CONSTRAINT `oc_t_item_meta_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_meta_ibfk_2` FOREIGN KEY (`fk_i_field_id`) REFERENCES `oc_t_meta_fields` (`pk_i_id`);

--
-- Constraints for table `oc_t_item_resource`
--
ALTER TABLE `oc_t_item_resource`
  ADD CONSTRAINT `oc_t_item_resource_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`);

--
-- Constraints for table `oc_t_item_stats`
--
ALTER TABLE `oc_t_item_stats`
  ADD CONSTRAINT `oc_t_item_stats_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`);

--
-- Constraints for table `oc_t_keywords`
--
ALTER TABLE `oc_t_keywords`
  ADD CONSTRAINT `oc_t_keywords_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_keywords_ibfk_2` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_keywords_ibfk_3` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`);

--
-- Constraints for table `oc_t_meta_categories`
--
ALTER TABLE `oc_t_meta_categories`
  ADD CONSTRAINT `oc_t_meta_categories_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_meta_categories_ibfk_2` FOREIGN KEY (`fk_i_field_id`) REFERENCES `oc_t_meta_fields` (`pk_i_id`);

--
-- Constraints for table `oc_t_pages_description`
--
ALTER TABLE `oc_t_pages_description`
  ADD CONSTRAINT `oc_t_pages_description_ibfk_1` FOREIGN KEY (`fk_i_pages_id`) REFERENCES `oc_t_pages` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_pages_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`);

--
-- Constraints for table `oc_t_plugin_category`
--
ALTER TABLE `oc_t_plugin_category`
  ADD CONSTRAINT `oc_t_plugin_category_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`);

--
-- Constraints for table `oc_t_region`
--
ALTER TABLE `oc_t_region`
  ADD CONSTRAINT `oc_t_region_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`);

--
-- Constraints for table `oc_t_region_stats`
--
ALTER TABLE `oc_t_region_stats`
  ADD CONSTRAINT `oc_t_region_stats_ibfk_1` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`);

--
-- Constraints for table `oc_t_user`
--
ALTER TABLE `oc_t_user`
  ADD CONSTRAINT `oc_t_user_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`),
  ADD CONSTRAINT `oc_t_user_ibfk_2` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_user_ibfk_3` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_user_ibfk_4` FOREIGN KEY (`fk_i_city_area_id`) REFERENCES `oc_t_city_area` (`pk_i_id`);

--
-- Constraints for table `oc_t_user_description`
--
ALTER TABLE `oc_t_user_description`
  ADD CONSTRAINT `oc_t_user_description_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_user_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`);

--
-- Constraints for table `oc_t_user_email_tmp`
--
ALTER TABLE `oc_t_user_email_tmp`
  ADD CONSTRAINT `oc_t_user_email_tmp_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
