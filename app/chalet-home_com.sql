-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2022 at 01:47 PM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chalet-home.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `request-form`
--

DROP TABLE IF EXISTS `request-form`;
CREATE TABLE IF NOT EXISTS `request-form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_add` int(11) NOT NULL,
  `name` text,
  `phone` text,
  `email` text,
  `language` text,
  `new` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `new` (`new`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `request-form`
--

INSERT INTO `request-form` (`id`, `date_add`, `name`, `phone`, `email`, `language`, `new`, `user_id`) VALUES
(1, 1655552835, 'MARIIA KOVAL', '0932007937', 'mbodnar548@gmail.com', 'uk', 0, 1),
(2, 1655552856, 'Марія Коваль', '0932007937', 'mbodnar548@gmail.com', 'uk', 0, 1),
(3, 1655552940, 'Марія Коваль', '0932007937', 'mbodnar548@gmail.com', 'uk', 0, 1),
(4, 1655552995, 'Марія Коваль', '0932007937', 'mbodnar548@gmail.com', 'uk', 0, 1),
(5, 1655553052, 'Марія Коваль', NULL, 'mbodnar548@gmail.com', 'uk', 0, 1),
(6, 1655553255, 'Seth M Black', '9173018675', 'smblack50@gmail.com', 'uk', 0, 1),
(7, 1655553276, 'Марія Коваль', '0932007937', 'mbodnar548@gmail.com', 'uk', 0, 1),
(8, 1655553331, 'MARIIA KOVAL', '0932007937', 'mbodnar548@gmail.com', 'uk', 0, 1),
(9, 1655553467, 'MARIIA KOVAL', '0932007937', 'mbodnar548@gmail.com', 'uk', 0, 1),
(10, 1655742393, 'dgbfbf', 'dbfbb', 'fdbfd', 'uk', 0, 1),
(11, 1655754942, 'MARIIA KOVAL', '0932007937', 'mbodnar548@gmail.com', 'uk', 0, 1),
(12, 1655756366, 'fgfgdgdg', 'dsdscfdghjhmn ghnghn', 'dgbbcxvb', 'uk', 0, 1),
(13, 1656075086, 'Seth M Black', '9173018675', 'smblack50@gmail.com', 'uk', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `s_library_articles`
--

DROP TABLE IF EXISTS `s_library_articles`;
CREATE TABLE IF NOT EXISTS `s_library_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wl_alias` int(11) NOT NULL,
  `alias` text,
  `group` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `author_add` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `author_edit` int(11) NOT NULL,
  `date_edit` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `wl_alias` (`wl_alias`),
  KEY `group` (`group`),
  KEY `active` (`active`),
  KEY `position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_library_articles`
--

INSERT INTO `s_library_articles` (`id`, `wl_alias`, `alias`, `group`, `active`, `position`, `author_add`, `date_add`, `author_edit`, `date_edit`) VALUES
(1, 11, 'v-roboti-laznja-za-indyvidualnym-proektom', 1, 1, 1, 1, 1655917790, 1, 1655920331),
(2, 11, 'u-roboti-maetok-«karybu»', 1, 1, 2, 1, 1655920857, 1, 1655920883),
(3, 11, 'u-roboti-budynok-myslyvcja-francija', 1, 1, 3, 1, 1655921135, 1, 1655921158),
(4, 11, 'v-roboti-laznja-za-indyvidualnym-proektom-1', 1, 1, 4, 1, 1655977565, 1, 1655977611),
(5, 11, 'u-roboti-pryvatnyy-maetok', 1, 1, 5, 1, 1655977774, 1, 1655977806),
(6, 11, 'v-roboti-laznja-za-indyvidualnym-proektom-2', 1, 1, 6, 1, 1655977942, 1, 1655977974),
(7, 11, 'u-roboti-pryvatnyy-maetok-1', 1, 1, 7, 1, 1655978055, 1, 1655978082),
(8, 11, 'carska-laznja', 1, 1, 8, 1, 1655978203, 1, 1655978216),
(9, 11, 'rezydencija-u-karpatakh', 1, 1, 9, 1, 1655978333, 1, 1655978363),
(10, 11, 'bober', 1, 1, 10, 1, 1655978478, 1, 1655978497),
(11, 11, 'trypillja', 1, 1, 11, 1, 1655978679, 1, 1655978701),
(12, 11, 'shajan', 1, 1, 12, 1, 1655978763, 1, 1656072762),
(13, 11, 'laznja', 1, 1, 13, 1, 1655978903, 1, 1655978925),
(14, 11, 'vedmid', 1, 1, 14, 1, 1655979001, 1, 1655979017),
(15, 11, 'modul', 1, 1, 15, 1, 1655980324, 1, 1655980347),
(16, 11, 'arena', 1, 1, 16, 1, 1655981824, 1, 1655981842),
(17, 11, 'khust', 1, 1, 17, 1, 1655981925, 1, 1655981943),
(19, 11, 'carska-laznja-1', 1, 1, 18, 1, 1655984770, 1, 1655984795);

-- --------------------------------------------------------

--
-- Table structure for table `s_library_article_group`
--

DROP TABLE IF EXISTS `s_library_article_group`;
CREATE TABLE IF NOT EXISTS `s_library_article_group` (
  `article` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  KEY `article` (`article`,`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_library_article_options`
--

DROP TABLE IF EXISTS `s_library_article_options`;
CREATE TABLE IF NOT EXISTS `s_library_article_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article` int(11) NOT NULL,
  `option` int(11) NOT NULL,
  `language` varchar(2) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `option` (`article`,`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_library_groups`
--

DROP TABLE IF EXISTS `s_library_groups`;
CREATE TABLE IF NOT EXISTS `s_library_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wl_alias` int(11) NOT NULL,
  `alias` text,
  `parent` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `author_add` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `author_edit` int(11) NOT NULL,
  `date_edit` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `wl_alias` (`wl_alias`),
  KEY `parent` (`parent`),
  KEY `position` (`position`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_library_groups`
--

INSERT INTO `s_library_groups` (`id`, `wl_alias`, `alias`, `parent`, `position`, `active`, `author_add`, `date_add`, `author_edit`, `date_edit`) VALUES
(1, 11, 'nashi-roboty', 0, 1, 1, 1, 1655904133, 1, 1656063865),
(2, 11, 'vyroby-z-dereva', 0, 2, 1, 1, 1655904340, 1, 1655909914),
(3, 11, 'inter039er', 0, 3, 1, 1, 1655904516, 1, 1655909904),
(4, 11, 'zovnishniy-vyhljad', 0, 4, 1, 1, 1655904591, 1, 1655909897),
(5, 11, 'budivnyctvo-zrubu', 0, 5, 1, 1, 1655904657, 1, 1655988905);

-- --------------------------------------------------------

--
-- Table structure for table `s_library_options`
--

DROP TABLE IF EXISTS `s_library_options`;
CREATE TABLE IF NOT EXISTS `s_library_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wl_alias` int(11) NOT NULL,
  `group` int(11) DEFAULT NULL,
  `alias` text,
  `position` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `filter` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `wl_alias` (`wl_alias`),
  KEY `group` (`group`),
  KEY `active` (`active`),
  KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_library_options_name`
--

DROP TABLE IF EXISTS `s_library_options_name`;
CREATE TABLE IF NOT EXISTS `s_library_options_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option` int(11) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `name` text,
  `sufix` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `option` (`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_static_page`
--

DROP TABLE IF EXISTS `s_static_page`;
CREATE TABLE IF NOT EXISTS `s_static_page` (
  `id` int(11) NOT NULL,
  `author_add` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `author_edit` int(11) NOT NULL,
  `date_edit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_static_page`
--

INSERT INTO `s_static_page` (`id`, `author_add`, `date_add`, `author_edit`, `date_edit`) VALUES
(8, 1, 1655816676, 1, 1655816676),
(10, 1, 1655817225, 1, 1655901144),
(12, 1, 1656079492, 1, 1656159998),
(13, 1, 1656079638, 1, 1656322864),
(14, 1, 1656158494, 1, 1656324433),
(15, 1, 1656158724, 1, 1656327257),
(16, 1, 1656158754, 1, 1656324276),
(17, 1, 1656158929, 1, 1656329250),
(19, 1, 1656159122, 1, 1656329213),
(20, 1, 1656159166, 1, 1656159166),
(21, 1, 1656159460, 1, 1656327707),
(22, 1, 1656159531, 1, 1656333339);

-- --------------------------------------------------------

--
-- Table structure for table `wl_aliases`
--

DROP TABLE IF EXISTS `wl_aliases`;
CREATE TABLE IF NOT EXISTS `wl_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` text NOT NULL COMMENT 'основне посилання',
  `service` int(11) DEFAULT '0',
  `table` text,
  `seo_robot` tinyint(1) DEFAULT '0',
  `admin_sidebar` tinyint(1) DEFAULT '0',
  `admin_ico` text,
  `admin_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_aliases`
--

INSERT INTO `wl_aliases` (`id`, `alias`, `service`, `table`, `seo_robot`, `admin_sidebar`, `admin_ico`, `admin_order`) VALUES
(1, 'main', 0, NULL, 0, 0, 'fa-home', 20),
(2, 'search', 0, NULL, 0, 0, NULL, NULL),
(3, 'profile', 0, NULL, 0, 0, NULL, NULL),
(4, 'login', 0, NULL, 0, 0, NULL, NULL),
(5, 'signup', 0, NULL, 0, 0, NULL, NULL),
(6, 'reset', 0, NULL, 0, 0, NULL, NULL),
(7, 'subscribe', 0, NULL, 0, 0, NULL, NULL),
(8, 'static_pages', 1, '_8_static_pages', 0, 0, 'fa-newspaper-o', 10),
(12, 'chalet_log_home', 1, '_12_chalet_log_home', 0, 0, 'fa-newspaper-o', 10),
(10, 'about-us', 1, '_10_about-us', 0, 0, 'fa-newspaper-o', 10),
(11, 'our_projects', 2, '_11_our_projects', 0, 0, 'fa-book', 60),
(13, 'frame_houses', 1, '_13_frame_houses', 0, 0, 'fa-newspaper-o', 10),
(14, 'prices', 1, '_14_prices', 0, 0, 'fa-newspaper-o', 10),
(15, 'technology', 1, '_15_technology', 0, 0, 'fa-newspaper-o', 10),
(16, 'design', 1, '_16_design', 0, 0, 'fa-newspaper-o', 10),
(17, 'chalet_information', 1, '_17_chalet_information', 0, 0, 'fa-newspaper-o', 10),
(19, 'articles', 1, '_19_articles', 0, 0, 'fa-newspaper-o', 10),
(20, 'links', 1, '_20_links', 0, 0, 'fa-newspaper-o', 10),
(21, 'partners', 1, '_21_partners', 0, 0, 'fa-newspaper-o', 10),
(22, 'contacts', 1, '_22_contacts', 0, 0, 'fa-newspaper-o', 10);

-- --------------------------------------------------------

--
-- Table structure for table `wl_aliases_cooperation`
--

DROP TABLE IF EXISTS `wl_aliases_cooperation`;
CREATE TABLE IF NOT EXISTS `wl_aliases_cooperation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias1` int(11) NOT NULL,
  `alias2` int(11) NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `alias1` (`alias1`),
  KEY `alias2` (`alias2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_audio`
--

DROP TABLE IF EXISTS `wl_audio`;
CREATE TABLE IF NOT EXISTS `wl_audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `text` text NOT NULL,
  `extension` text NOT NULL,
  `author` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`,`content`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_comments`
--

DROP TABLE IF EXISTS `wl_comments`;
CREATE TABLE IF NOT EXISTS `wl_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `comment` text,
  `rating` tinyint(4) DEFAULT NULL,
  `images` text,
  `status` tinyint(1) NOT NULL,
  `reply` int(3) DEFAULT '0',
  `date_add` int(11) NOT NULL,
  `manager` int(11) DEFAULT NULL,
  `date_manage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`,`content`),
  KEY `user` (`user`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_fields`
--

DROP TABLE IF EXISTS `wl_fields`;
CREATE TABLE IF NOT EXISTS `wl_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` int(11) NOT NULL,
  `name` text NOT NULL,
  `position` int(11) DEFAULT '0',
  `input_type` int(11) NOT NULL,
  `required` tinyint(1) DEFAULT '0',
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_fields`
--

INSERT INTO `wl_fields` (`id`, `form`, `name`, `position`, `input_type`, `required`, `title`) VALUES
(1, 1, 'name', 0, 1, 1, 'Name'),
(2, 1, 'phone', 0, 1, 1, 'Phone'),
(3, 1, 'email', 0, 1, 1, 'Email');

-- --------------------------------------------------------

--
-- Table structure for table `wl_fields_options`
--

DROP TABLE IF EXISTS `wl_fields_options`;
CREATE TABLE IF NOT EXISTS `wl_fields_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` int(11) NOT NULL,
  `value` text,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_files`
--

DROP TABLE IF EXISTS `wl_files`;
CREATE TABLE IF NOT EXISTS `wl_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `text` text NOT NULL,
  `extension` text NOT NULL,
  `author` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`,`content`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_forms`
--

DROP TABLE IF EXISTS `wl_forms`;
CREATE TABLE IF NOT EXISTS `wl_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sidebar` tinyint(1) NOT NULL,
  `name` text NOT NULL,
  `captcha` tinyint(1) DEFAULT '0',
  `title` text,
  `table` text,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-GET, 2-POST',
  `type_data` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-fields, 2-values',
  `send_mail` tinyint(1) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `success_data` text,
  `send_sms` tinyint(1) NOT NULL DEFAULT '0',
  `sms_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_forms`
--

INSERT INTO `wl_forms` (`id`, `sidebar`, `name`, `captcha`, `title`, `table`, `type`, `type_data`, `send_mail`, `success`, `success_data`, `send_sms`, `sms_text`) VALUES
(1, 1, 'request-form', 1, 'Форма зворотнього зв&#039;язку', 'request-form', 2, 2, 0, 1, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wl_images`
--

DROP TABLE IF EXISTS `wl_images`;
CREATE TABLE IF NOT EXISTS `wl_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `file_name` text,
  `title` text,
  `link` text,
  `author` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `content` (`content`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_images`
--

INSERT INTO `wl_images` (`id`, `alias`, `content`, `section_id`, `file_name`, `title`, `link`, `author`, `date_add`, `position`) VALUES
(1, 1, 0, 0, 'main-1.jpg', '', '', 1, 1655466414, 1),
(2, 1, 0, 0, 'main-2.jpg', '', '', 1, 1655722244, 2),
(3, 1, 0, 0, 'main-3.jpg', '', '', 1, 1655722244, 3),
(4, 1, 0, 0, 'main-4.jpg', '', '', 1, 1655722245, 4),
(5, 1, 0, 0, 'main-5.jpg', '', '', 1, 1655722487, 5),
(6, 1, 0, 0, 'main-6.jpg', '', '', 1, 1655722489, 6),
(7, 1, 0, 0, 'main-7.jpg', '', '', 1, 1655722683, 7),
(8, 1, 0, 0, 'main-8.jpg', '', '', 1, 1655722685, 8),
(9, 10, 0, 0, 'about-us-9.jpg', '', '', 1, 1655820253, 1),
(10, 11, -1, 0, 'nashi-roboty-10.jpg', '', '', 1, 1655904205, 1),
(11, 11, -1, 0, 'nashi-roboty-11.jpg', '', '', 1, 1655904222, 2),
(12, 11, -1, 0, 'nashi-roboty-12.jpg', '', '', 1, 1655904222, 3),
(13, 11, -1, 0, 'nashi-roboty-13.jpg', '', '', 1, 1655904222, 4),
(14, 11, -1, 0, 'nashi-roboty-14.jpg', '', '', 1, 1655904222, 5),
(15, 11, -1, 0, 'nashi-roboty-15.jpg', '', '', 1, 1655904222, 6),
(16, 11, -1, 0, 'nashi-roboty-16.jpg', '', '', 1, 1655904222, 7),
(17, 11, -1, 0, 'nashi-roboty-17.jpg', '', '', 1, 1655904222, 8),
(18, 11, -1, 0, 'nashi-roboty-18.jpg', '', '', 1, 1655904222, 9),
(19, 11, 1, 0, 'v-roboti-laznja-za-indyvidualnym-proektom-19.jpg', '', '', 1, 1655917879, 2),
(20, 11, 1, 0, 'v-roboti-laznja-za-indyvidualnym-proektom-20.jpg', '', '', 1, 1655917879, 3),
(21, 11, 1, 0, 'v-roboti-laznja-za-indyvidualnym-proektom-21.jpg', '', '', 1, 1655917879, 4),
(22, 11, 1, 0, 'v-roboti-laznja-za-indyvidualnym-proektom-22.jpg', '', '', 1, 1655917879, 5),
(23, 11, 1, 0, 'v-roboti-laznja-za-indyvidualnym-proektom-23.jpg', '', '', 1, 1655917880, 6),
(25, 11, 1, 0, 'v-roboti-laznja-za-indyvidualnym-proektom-25.jpg', '', '', 1, 1655920314, 1),
(26, 11, 2, 0, 'nedokončená-výroba-caribou-estate-26.jpg', 'Nedokončená výroba: Caribou Estate', NULL, 1, 1655920857, 1),
(27, 11, 3, 0, 'probíhající-práce-hunter039s-house-francie-27.jpg', 'Probíhající práce: Hunter&#039;s House (Francie)', NULL, 1, 1655921135, 1),
(28, 11, 4, 0, 'v-práci-koupel-na-individuálním-projektu-28.jpg', 'V práci: Koupel na individuálním projektu', NULL, 1, 1655977565, 1),
(29, 11, 5, 0, 'v-práci-soukromý-majetek-29.jpg', 'V práci: Soukromý majetek', NULL, 1, 1655977774, 1),
(30, 11, 6, 0, 'v-práci-koupel-na-individuálním-projektu-30.jpg', 'V práci: Koupel na individuálním projektu', NULL, 1, 1655977942, 1),
(31, 11, 7, 0, 'v-práci-soukromý-majetek-31.jpg', 'V práci: Soukromý majetek', NULL, 1, 1655978055, 1),
(32, 11, 8, 0, 'královská-lázeň-32.jpg', 'Královská lázeň', NULL, 1, 1655978203, 1),
(33, 11, 9, 0, 'bydliště-v-karpatech-33.jpg', 'Bydliště v Karpatech', NULL, 1, 1655978333, 1),
(34, 11, 10, 0, 'bobor-34.jpg', 'Bobor', NULL, 1, 1655978478, 1),
(35, 11, 11, 0, 'trypillya-35.jpg', 'Trypillya', NULL, 1, 1655978679, 1),
(36, 11, 12, 0, 'shayan-36.jpg', 'Shayan', NULL, 1, 1655978763, 1),
(37, 11, 13, 0, 'sauna-37.jpg', 'Sauna', NULL, 1, 1655978903, 1),
(38, 11, 14, 0, 'medvěd-38.jpg', 'Medvěd', NULL, 1, 1655979002, 1),
(39, 11, 15, 0, 'modul-39.jpg', 'Modul', NULL, 1, 1655980324, 1),
(40, 11, 16, 0, 'aréna-40.jpg', 'Aréna', NULL, 1, 1655981824, 1),
(41, 11, 17, 0, 'khust-41.jpg', 'Khust', NULL, 1, 1655981925, 1),
(42, 11, -5, 0, 'budivnyctvo-zrubu-42.jpg', '', '', 1, 1655988902, 1),
(43, 11, -5, 0, 'budivnyctvo-zrubu-43.jpg', '', '', 1, 1655988902, 2),
(44, 11, -5, 0, 'budivnyctvo-zrubu-44.jpg', '', '', 1, 1655988903, 3),
(45, 11, -5, 0, 'budivnyctvo-zrubu-45.jpg', '', '', 1, 1655988903, 4),
(46, 11, -5, 0, 'budivnyctvo-zrubu-46.jpg', '', '', 1, 1655988903, 5),
(47, 11, -5, 0, 'budivnyctvo-zrubu-47.jpg', '', '', 1, 1655988903, 6),
(48, 11, -5, 0, 'budivnyctvo-zrubu-48.jpg', '', '', 1, 1655988904, 7),
(49, 11, -5, 0, 'budivnyctvo-zrubu-49.jpg', '', '', 1, 1655988904, 8),
(50, 11, -5, 0, 'budivnyctvo-zrubu-50.jpg', '', '', 1, 1655988904, 9),
(51, 11, -5, 0, 'budivnyctvo-zrubu-51.jpg', '', '', 1, 1655988904, 10),
(52, 11, -5, 0, 'budivnyctvo-zrubu-52.jpg', '', '', 1, 1655988904, 11),
(53, 11, -5, 0, 'budivnyctvo-zrubu-53.jpg', '', '', 1, 1655988905, 12),
(54, 11, 12, 0, 'shajan-54.jpg', '', '', 1, 1656072761, 2),
(55, 11, 12, 0, 'shajan-55.jpg', '', '', 1, 1656072762, 3),
(56, 11, 12, 0, 'shajan-56.jpg', '', '', 1, 1656072762, 4),
(57, 11, 12, 0, 'shajan-57.jpg', '', '', 1, 1656072762, 5),
(58, 11, 12, 0, 'shajan-58.jpg', '', '', 1, 1656072762, 6),
(59, 11, 12, 0, 'shajan-59.jpg', '', '', 1, 1656072762, 7),
(60, 11, 12, 0, 'shajan-60.jpg', '', '', 1, 1656072762, 8),
(61, 11, 12, 0, 'shajan-61.jpg', '', '', 1, 1656072762, 9),
(62, 11, 12, 0, 'shajan-62.jpg', '', '', 1, 1656072762, 10),
(63, 12, 0, 0, 'chalet_log_home-63.jpg', '', '', 1, 1656080657, 1),
(64, 12, 0, 0, 'chalet_log_home-64.jpg', '', '', 1, 1656159997, 2),
(65, 12, 0, 0, 'chalet_log_home-65.jpg', '', '', 1, 1656159997, 3),
(66, 12, 0, 0, 'chalet_log_home-66.jpg', '', '', 1, 1656159997, 4),
(67, 12, 0, 0, 'chalet_log_home-67.jpg', '', '', 1, 1656159997, 5),
(68, 12, 0, 0, 'chalet_log_home-68.jpg', '', '', 1, 1656159997, 6),
(69, 12, 0, 0, 'chalet_log_home-69.jpg', '', '', 1, 1656159997, 7),
(70, 12, 0, 0, 'chalet_log_home-70.jpg', '', '', 1, 1656159997, 8),
(71, 12, 0, 0, 'chalet_log_home-71.jpg', '', '', 1, 1656159997, 9),
(72, 12, 0, 0, 'chalet_log_home-72.jpg', '', '', 1, 1656159997, 10),
(73, 12, 0, 0, 'chalet_log_home-73.jpg', '', '', 1, 1656159997, 11),
(74, 12, 0, 0, 'chalet_log_home-74.jpg', '', '', 1, 1656159997, 12),
(75, 12, 0, 0, 'chalet_log_home-75.jpg', '', '', 1, 1656159997, 13),
(76, 12, 0, 0, 'chalet_log_home-76.jpg', '', '', 1, 1656159997, 14),
(77, 12, 0, 0, 'chalet_log_home-77.jpg', '', '', 1, 1656159997, 15),
(78, 12, 0, 0, 'chalet_log_home-78.jpg', '', '', 1, 1656159997, 16),
(79, 12, 0, 0, 'chalet_log_home-79.jpg', '', '', 1, 1656159998, 17),
(80, 12, 0, 0, 'chalet_log_home-80.jpg', '', '', 1, 1656159998, 18),
(81, 12, 0, 0, 'chalet_log_home-81.jpg', '', '', 1, 1656159998, 19),
(82, 12, 0, 0, 'chalet_log_home-82.jpg', '', '', 1, 1656159998, 20),
(83, 14, 0, 0, 'prices-83.jpg', '', '', 1, 1656235241, 1),
(84, 14, 0, 0, 'prices-84.jpg', '', '', 1, 1656235271, 2),
(85, 14, 0, 0, 'prices-85.jpg', '', '', 1, 1656235271, 3),
(86, 14, 0, 0, 'prices-86.jpg', '', '', 1, 1656235271, 4),
(87, 14, 0, 0, 'prices-87.jpg', '', '', 1, 1656235272, 5),
(88, 14, 0, 0, 'prices-88.jpg', '', '', 1, 1656235272, 6),
(89, 14, 0, 0, 'prices-89.jpg', '', '', 1, 1656235272, 7),
(90, 14, 0, 0, 'prices-90.jpg', '', '', 1, 1656235272, 8),
(91, 14, 0, 0, 'prices-91.jpg', '', '', 1, 1656235272, 9),
(92, 14, 0, 0, 'prices-92.jpg', '', '', 1, 1656235272, 10),
(93, 14, 0, 0, 'prices-93.jpg', '', '', 1, 1656235272, 11),
(94, 14, 0, 0, 'prices-94.jpg', '', '', 1, 1656235272, 12),
(95, 14, 0, 0, 'prices-95.jpg', '', '', 1, 1656235272, 13),
(96, 13, 0, 0, 'frame_houses-96.jpg', '', '', 1, 1656320251, 1),
(98, 13, 0, 24, 'frame_houses-98.jpg', '', '', 1, 1656320871, 1),
(99, 13, 0, 0, 'frame_houses-99.jpg', '', '', 1, 1656321091, 1),
(100, 13, 0, 0, 'frame_houses-100.jpg', '', '', 1, 1656321091, 2),
(101, 13, 0, 0, 'frame_houses-101.jpg', '', '', 1, 1656321091, 3),
(102, 13, 0, 0, 'frame_houses-102.jpg', '', '', 1, 1656321091, 4),
(103, 13, 0, 0, 'frame_houses-103.jpg', '', '', 1, 1656321091, 5),
(104, 13, 0, 0, 'frame_houses-104.jpg', '', '', 1, 1656321091, 6),
(105, 13, 0, 0, 'frame_houses-105.jpg', '', '', 1, 1656321091, 7),
(106, 13, 0, 0, 'frame_houses-106.jpg', '', '', 1, 1656321091, 8),
(107, 13, 0, 0, 'frame_houses-107.jpg', '', '', 1, 1656321091, 9),
(108, 13, 0, 0, 'frame_houses-108.jpg', '', '', 1, 1656321091, 10),
(109, 13, 0, 0, 'frame_houses-109.jpg', '', '', 1, 1656321091, 11),
(110, 13, 0, 0, 'frame_houses-110.jpg', '', '', 1, 1656321092, 12),
(111, 13, 0, 0, 'frame_houses-111.jpg', '', '', 1, 1656321092, 13),
(112, 13, 0, 0, 'frame_houses-112.jpg', '', '', 1, 1656321092, 14),
(113, 13, 0, 0, 'frame_houses-113.jpg', '', '', 1, 1656321092, 15),
(114, 13, 0, 0, 'frame_houses-114.jpg', '', '', 1, 1656321092, 16),
(115, 13, 0, 25, 'frame_houses-115.jpg', '', '', 1, 1656321582, 1),
(117, 13, 0, 28, 'frame_houses-117.jpg', '', '', 1, 1656322826, 1),
(118, 16, 0, 0, 'design-118.jpg', '', '', 1, 1656324243, 1),
(119, 16, 0, 0, 'design-119.jpg', '', '', 1, 1656324253, 2),
(120, 16, 0, 0, 'design-120.jpg', '', '', 1, 1656324253, 3),
(121, 16, 0, 0, 'design-121.jpg', '', '', 1, 1656324254, 4),
(122, 16, 0, 0, 'design-122.jpg', '', '', 1, 1656324254, 5),
(123, 16, 0, 0, 'design-123.jpg', '', '', 1, 1656324254, 6),
(124, 16, 0, 0, 'design-124.jpg', '', '', 1, 1656324254, 7),
(125, 16, 0, 0, 'design-125.jpg', '', '', 1, 1656324254, 8),
(126, 16, 0, 0, 'design-126.jpg', '', '', 1, 1656324276, 9),
(127, 16, 0, 0, 'design-127.jpg', '', '', 1, 1656324276, 10),
(128, 16, 0, 0, 'design-128.jpg', '', '', 1, 1656324276, 11),
(129, 16, 0, 0, 'design-129.jpg', '', '', 1, 1656324276, 12),
(130, 16, 0, 0, 'design-130.jpg', '', '', 1, 1656324276, 13),
(131, 15, 0, 0, 'technology-131.jpg', '', '', 1, 1656324831, 1),
(132, 15, 0, 0, 'technology-132.jpg', '', '', 1, 1656324847, 2),
(133, 15, 0, 0, 'technology-133.jpg', '', '', 1, 1656324847, 3),
(134, 15, 0, 0, 'technology-134.jpg', '', '', 1, 1656324847, 4),
(135, 15, 0, 0, 'technology-135.jpg', '', '', 1, 1656324847, 5),
(136, 15, 0, 0, 'technology-136.jpg', '', '', 1, 1656324847, 6),
(137, 15, 0, 0, 'technology-137.jpg', '', '', 1, 1656324847, 7),
(138, 15, 0, 0, 'technology-138.jpg', '', '', 1, 1656324847, 8),
(139, 15, 0, 0, 'technology-139.jpg', '', '', 1, 1656324848, 9),
(140, 15, 0, 0, 'technology-140.jpg', '', '', 1, 1656324848, 10),
(141, 15, 0, 0, 'technology-141.jpg', '', '', 1, 1656324848, 11),
(142, 15, 0, 34, 'technology-142.jpg', '', '', 1, 1656324950, 1),
(143, 15, 0, 34, 'technology-143.jpg', '', '', 1, 1656324986, 2),
(144, 15, 0, 34, 'technology-144.jpg', '', '', 1, 1656325013, 3),
(145, 15, 0, 0, 'technology-145.jpg', '', '', 1, 1656327256, 12),
(146, 15, 0, 0, 'technology-146.jpg', '', '', 1, 1656327256, 13),
(147, 15, 0, 0, 'technology-147.jpg', '', '', 1, 1656327256, 14),
(148, 15, 0, 0, 'technology-148.jpg', '', '', 1, 1656327256, 15),
(149, 15, 0, 0, 'technology-149.jpg', '', '', 1, 1656327257, 16),
(150, 19, 0, 0, 'articles-150.jpg', '', '', 1, 1656329195, 1),
(151, 19, 0, 0, 'articles-151.jpg', '', '', 1, 1656329213, 2),
(152, 19, 0, 0, 'articles-152.jpg', '', '', 1, 1656329213, 3),
(153, 19, 0, 0, 'articles-153.jpg', '', '', 1, 1656329213, 4),
(154, 19, 0, 0, 'articles-154.jpg', '', '', 1, 1656329213, 5),
(155, 19, 0, 0, 'articles-155.jpg', '', '', 1, 1656329213, 6),
(156, 19, 0, 0, 'articles-156.jpg', '', '', 1, 1656329213, 7),
(157, 19, 0, 0, 'articles-157.jpg', '', '', 1, 1656329213, 8),
(158, 19, 0, 0, 'articles-158.jpg', '', '', 1, 1656329213, 9),
(159, 19, 0, 0, 'articles-159.jpg', '', '', 1, 1656329213, 10),
(160, 19, 0, 0, 'articles-160.jpg', '', '', 1, 1656329213, 11),
(161, 19, 0, 0, 'articles-161.jpg', '', '', 1, 1656329213, 12),
(162, 19, 0, 0, 'articles-162.jpg', '', '', 1, 1656329213, 13),
(163, 19, 0, 0, 'articles-163.jpg', '', '', 1, 1656329213, 14),
(164, 17, 0, 0, 'chalet_information-164.jpg', '', '', 1, 1656329237, 1),
(165, 17, 0, 0, 'chalet_information-165.jpg', '', '', 1, 1656329249, 2),
(166, 17, 0, 0, 'chalet_information-166.jpg', '', '', 1, 1656329249, 3),
(167, 17, 0, 0, 'chalet_information-167.jpg', '', '', 1, 1656329249, 4),
(168, 17, 0, 0, 'chalet_information-168.jpg', '', '', 1, 1656329249, 5),
(169, 17, 0, 0, 'chalet_information-169.jpg', '', '', 1, 1656329249, 6),
(170, 17, 0, 0, 'chalet_information-170.jpg', '', '', 1, 1656329250, 7),
(171, 17, 0, 0, 'chalet_information-171.jpg', '', '', 1, 1656329250, 8),
(172, 17, 0, 0, 'chalet_information-172.jpg', '', '', 1, 1656329250, 9),
(173, 17, 0, 0, 'chalet_information-173.jpg', '', '', 1, 1656329250, 10),
(174, 17, 0, 0, 'chalet_information-174.jpg', '', '', 1, 1656329250, 11),
(175, 17, 0, 0, 'chalet_information-175.jpg', '', '', 1, 1656329250, 12),
(176, 17, 0, 0, 'chalet_information-176.jpg', '', '', 1, 1656329250, 13),
(177, 17, 0, 0, 'chalet_information-177.jpg', '', '', 1, 1656329250, 14),
(178, 17, 0, 0, 'chalet_information-178.jpg', '', '', 1, 1656329250, 15),
(181, 22, 0, 0, 'contacts-181.jpg', '', '', 1, 1656333277, 1),
(182, 22, 0, 0, 'contacts-182.jpg', '', '', 1, 1656333277, 2),
(183, 22, 0, 0, 'contacts-183.jpg', '', '', 1, 1656333277, 3),
(184, 22, 0, 0, 'contacts-184.jpg', '', '', 1, 1656333277, 4),
(185, 22, 0, 0, 'contacts-185.jpg', '', '', 1, 1656333277, 5),
(186, 22, 0, 0, 'contacts-186.jpg', '', '', 1, 1656333277, 6),
(187, 22, 0, 0, 'contacts-187.jpg', '', '', 1, 1656333278, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wl_images_sizes`
--

DROP TABLE IF EXISTS `wl_images_sizes`;
CREATE TABLE IF NOT EXISTS `wl_images_sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `name` text,
  `prefix` tinytext,
  `type` tinyint(1) NOT NULL COMMENT '1 resize, 2 preview',
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `quality` tinyint(2) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_images_sizes`
--

INSERT INTO `wl_images_sizes` (`id`, `alias`, `active`, `name`, `prefix`, `type`, `width`, `height`, `quality`) VALUES
(1, 0, 1, 'Значення по замовчуванню. Оригінал', NULL, 1, 1500, 1500, 100),
(2, 0, 1, 'Значення по замовчуванню. Панель керування', 'admin', 2, 150, 150, 100),
(3, 0, 1, 'Значення по замовчуванню. Header для соц. мереж', 'header', 2, 600, 315, 100);

-- --------------------------------------------------------

--
-- Table structure for table `wl_input_types`
--

DROP TABLE IF EXISTS `wl_input_types`;
CREATE TABLE IF NOT EXISTS `wl_input_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `options` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_input_types`
--

INSERT INTO `wl_input_types` (`id`, `name`, `options`) VALUES
(1, 'text', 0),
(2, 'number', 0),
(3, 'email', 0),
(4, 'url', 0),
(5, 'date', 0),
(6, 'time', 0),
(7, 'datetime', 0),
(8, 'textarea', 0),
(9, 'radio', 1),
(10, 'select', 1),
(11, 'checkbox', 1),
(12, 'checkbox-select2', 1),
(13, 'file', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wl_language_values`
--

DROP TABLE IF EXISTS `wl_language_values`;
CREATE TABLE IF NOT EXISTS `wl_language_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` int(11) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_language_values`
--

INSERT INTO `wl_language_values` (`id`, `word`, `language`, `value`) VALUES
(1, 1, 'uk', NULL),
(2, 1, 'ru', 'О компании'),
(3, 1, 'en', 'About company'),
(4, 1, 'sk', NULL),
(5, 1, 'cz', NULL),
(6, 2, 'uk', NULL),
(7, 2, 'ru', NULL),
(8, 2, 'en', NULL),
(9, 2, 'sk', NULL),
(10, 2, 'cz', NULL),
(11, 3, 'uk', NULL),
(12, 3, 'ru', NULL),
(13, 3, 'en', NULL),
(14, 3, 'sk', NULL),
(15, 3, 'cz', NULL),
(16, 4, 'uk', NULL),
(17, 4, 'ru', NULL),
(18, 4, 'en', NULL),
(19, 4, 'sk', NULL),
(20, 4, 'cz', NULL),
(21, 5, 'uk', NULL),
(22, 5, 'ru', NULL),
(23, 5, 'en', NULL),
(24, 5, 'sk', NULL),
(25, 5, 'cz', NULL),
(26, 6, 'uk', NULL),
(27, 6, 'ru', NULL),
(28, 6, 'en', NULL),
(29, 6, 'sk', NULL),
(30, 6, 'cz', NULL),
(31, 7, 'uk', '+38 067 310 2696'),
(32, 7, 'ru', NULL),
(33, 7, 'en', NULL),
(34, 7, 'sk', NULL),
(35, 7, 'cz', NULL),
(36, 8, 'uk', '+421 948 36 38 35'),
(37, 8, 'ru', NULL),
(38, 8, 'en', NULL),
(39, 8, 'sk', NULL),
(40, 8, 'cz', NULL),
(41, 9, 'uk', NULL),
(42, 9, 'ru', NULL),
(43, 9, 'en', NULL),
(44, 9, 'sk', NULL),
(45, 9, 'cz', NULL),
(46, 10, 'uk', NULL),
(47, 10, 'ru', NULL),
(48, 10, 'en', NULL),
(49, 10, 'sk', NULL),
(50, 10, 'cz', NULL),
(51, 11, 'uk', NULL),
(52, 11, 'ru', NULL),
(53, 11, 'en', NULL),
(54, 11, 'sk', NULL),
(55, 11, 'cz', NULL),
(56, 12, 'uk', NULL),
(57, 12, 'ru', NULL),
(58, 12, 'en', NULL),
(59, 12, 'sk', NULL),
(60, 12, 'cz', NULL),
(61, 13, 'uk', NULL),
(62, 13, 'ru', NULL),
(63, 13, 'en', NULL),
(64, 13, 'sk', NULL),
(65, 13, 'cz', NULL),
(66, 14, 'uk', NULL),
(67, 14, 'ru', NULL),
(68, 14, 'en', NULL),
(69, 14, 'sk', NULL),
(70, 14, 'cz', NULL),
(71, 15, 'uk', NULL),
(72, 15, 'ru', NULL),
(73, 15, 'en', NULL),
(74, 15, 'sk', NULL),
(75, 15, 'cz', NULL),
(76, 16, 'uk', NULL),
(77, 16, 'ru', NULL),
(78, 16, 'en', NULL),
(79, 16, 'sk', NULL),
(80, 16, 'cz', NULL),
(91, 19, 'uk', NULL),
(92, 19, 'ru', NULL),
(93, 19, 'en', NULL),
(94, 19, 'sk', NULL),
(95, 19, 'cz', NULL),
(96, 20, 'uk', NULL),
(97, 20, 'ru', NULL),
(98, 20, 'en', NULL),
(99, 20, 'sk', NULL),
(100, 20, 'cz', NULL),
(101, 21, 'uk', NULL),
(102, 21, 'ru', NULL),
(103, 21, 'en', NULL),
(104, 21, 'sk', NULL),
(105, 21, 'cz', NULL),
(106, 22, 'uk', NULL),
(107, 22, 'ru', NULL),
(108, 22, 'en', NULL),
(109, 22, 'sk', NULL),
(110, 22, 'cz', NULL),
(116, 24, 'uk', NULL),
(117, 24, 'ru', NULL),
(118, 24, 'en', NULL),
(119, 24, 'sk', NULL),
(120, 24, 'cz', NULL),
(121, 25, 'uk', NULL),
(122, 25, 'ru', NULL),
(123, 25, 'en', NULL),
(124, 25, 'sk', NULL),
(125, 25, 'cz', NULL),
(126, 26, 'uk', 'https://goo.gl/maps/YgjQEYusLQSqxAhFA'),
(127, 26, 'ru', NULL),
(128, 26, 'en', NULL),
(129, 26, 'sk', NULL),
(130, 26, 'cz', NULL),
(131, 27, 'uk', NULL),
(132, 27, 'ru', NULL),
(133, 27, 'en', NULL),
(134, 27, 'sk', NULL),
(135, 27, 'cz', NULL),
(136, 28, 'uk', NULL),
(137, 28, 'ru', NULL),
(138, 28, 'en', NULL),
(139, 28, 'sk', NULL),
(140, 28, 'cz', NULL),
(141, 29, 'uk', NULL),
(142, 29, 'ru', NULL),
(143, 29, 'en', NULL),
(144, 29, 'sk', NULL),
(145, 29, 'cz', NULL),
(146, 30, 'uk', NULL),
(147, 30, 'ru', NULL),
(148, 30, 'en', NULL),
(149, 30, 'sk', NULL),
(150, 30, 'cz', NULL),
(151, 31, 'uk', NULL),
(152, 31, 'ru', NULL),
(153, 31, 'en', NULL),
(154, 31, 'sk', NULL),
(155, 31, 'cz', NULL),
(156, 32, 'uk', NULL),
(157, 32, 'ru', NULL),
(158, 32, 'en', NULL),
(159, 32, 'sk', NULL),
(160, 32, 'cz', NULL),
(161, 33, 'uk', NULL),
(162, 33, 'ru', NULL),
(163, 33, 'en', NULL),
(164, 33, 'sk', NULL),
(165, 33, 'cz', NULL),
(166, 34, 'uk', NULL),
(167, 34, 'ru', NULL),
(168, 34, 'en', NULL),
(169, 34, 'sk', NULL),
(170, 34, 'cz', NULL),
(171, 35, 'uk', NULL),
(172, 35, 'ru', NULL),
(173, 35, 'en', NULL),
(174, 35, 'sk', NULL),
(175, 35, 'cz', NULL),
(176, 36, 'uk', NULL),
(177, 36, 'ru', NULL),
(178, 36, 'en', NULL),
(179, 36, 'sk', NULL),
(180, 36, 'cz', NULL),
(181, 37, 'uk', NULL),
(182, 37, 'ru', NULL),
(183, 37, 'en', NULL),
(184, 37, 'sk', NULL),
(185, 37, 'cz', NULL),
(186, 38, 'uk', NULL),
(187, 38, 'ru', NULL),
(188, 38, 'en', NULL),
(189, 38, 'sk', NULL),
(190, 38, 'cz', NULL),
(191, 39, 'uk', NULL),
(192, 39, 'ru', NULL),
(193, 39, 'en', NULL),
(194, 39, 'sk', NULL),
(195, 39, 'cz', NULL),
(196, 40, 'uk', NULL),
(197, 40, 'ru', NULL),
(198, 40, 'en', NULL),
(199, 40, 'sk', NULL),
(200, 40, 'cz', NULL),
(201, 41, 'uk', NULL),
(202, 41, 'ru', NULL),
(203, 41, 'en', NULL),
(204, 41, 'sk', NULL),
(205, 41, 'cz', NULL),
(206, 42, 'uk', NULL),
(207, 42, 'ru', NULL),
(208, 42, 'en', NULL),
(209, 42, 'sk', NULL),
(210, 42, 'cz', NULL),
(211, 43, 'uk', NULL),
(212, 43, 'ru', NULL),
(213, 43, 'en', NULL),
(214, 43, 'sk', NULL),
(215, 43, 'cz', NULL),
(216, 44, 'uk', NULL),
(217, 44, 'ru', NULL),
(218, 44, 'en', NULL),
(219, 44, 'sk', NULL),
(220, 44, 'cz', NULL),
(221, 45, 'uk', NULL),
(222, 45, 'ru', NULL),
(223, 45, 'en', NULL),
(224, 45, 'sk', NULL),
(225, 45, 'cz', NULL),
(226, 46, 'uk', NULL),
(227, 46, 'ru', NULL),
(228, 46, 'en', NULL),
(229, 46, 'sk', NULL),
(230, 46, 'cz', NULL),
(231, 47, 'uk', NULL),
(232, 47, 'ru', NULL),
(233, 47, 'en', NULL),
(234, 47, 'sk', NULL),
(235, 47, 'cz', NULL),
(236, 48, 'uk', NULL),
(237, 48, 'ru', NULL),
(238, 48, 'en', NULL),
(239, 48, 'sk', NULL),
(240, 48, 'cz', NULL),
(241, 49, 'uk', NULL),
(242, 49, 'ru', NULL),
(243, 49, 'en', NULL),
(244, 49, 'sk', NULL),
(245, 49, 'cz', NULL),
(246, 50, 'uk', NULL),
(247, 50, 'ru', NULL),
(248, 50, 'en', NULL),
(249, 50, 'sk', NULL),
(250, 50, 'cz', NULL),
(251, 51, 'uk', NULL),
(252, 51, 'ru', NULL),
(253, 51, 'en', NULL),
(254, 51, 'sk', NULL),
(255, 51, 'cz', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wl_language_words`
--

DROP TABLE IF EXISTS `wl_language_words`;
CREATE TABLE IF NOT EXISTS `wl_language_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` text,
  `alias` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_language_words`
--

INSERT INTO `wl_language_words` (`id`, `word`, `alias`, `type`, `position`) VALUES
(1, 'Про компанію', 0, 1, 1),
(2, 'Будинки із зрубу', 0, 1, 2),
(3, 'Каркасні будинки', 0, 1, 3),
(4, 'Галерея', 0, 1, 4),
(5, 'Інформація', 0, 1, 5),
(6, 'Контакти', 0, 1, 6),
(7, 'phone-1', 0, 1, 7),
(8, 'phone-2', 0, 1, 8),
(9, 'Ім\'я', 0, 1, 9),
(10, 'Email', 0, 1, 10),
(11, '+(xxx)-xx-xxx-xx-xx', 0, 1, 11),
(12, 'Надіслати', 0, 1, 12),
(13, '+(380)-xx-xxx-xx-xx', 0, 1, 13),
(14, 'Field \'Email\' is required!', 0, 1, 14),
(15, 'Помилка!', 0, 1, 15),
(16, 'На головну!', 0, 1, 16),
(19, '© 2008-2022 CHALET Шале. Деревянный дом', 0, 1, 17),
(20, 'Адреса', 0, 1, 18),
(21, 'Українa, 90415, Закарпатська обл., Хустський р-н. с. Липча, вул. Зарічна 33', 0, 1, 19),
(22, 'Заповніть форму для зворотнього звя\'зку', 0, 1, 20),
(24, '+38 067 310 2696', 0, 1, 21),
(25, 'Телефон', 0, 1, 22),
(26, 'link - google maps adress', 0, 1, 23),
(27, 'Зруб вручну - унікальна робота', 0, 1, 24),
(28, 'Проектування', 0, 1, 25),
(29, 'Технологія', 0, 1, 26),
(30, 'Комплектація та ціни', 0, 1, 27),
(31, 'Статті', 0, 1, 28),
(32, 'Посилання', 0, 1, 29),
(33, 'Партнери', 0, 1, 30),
(34, '© 2008-2022 CHALET Шале. Дерев\'яний дім', 0, 1, 31),
(35, 'Наші роботи', 0, 1, 32),
(36, 'Загальна інформація', 0, 1, 33),
(37, 'Усі роботи', 0, 1, 34),
(38, 'На головну', 0, 1, 35),
(39, 'Реєстрація', 4, 1, 1),
(40, 'Прізвище', 5, 1, 1),
(41, 'Контактний телефон', 5, 1, 2),
(42, 'Пароль', 4, 1, 2),
(43, 'Повторіть пароль', 5, 1, 3),
(44, '*пороль має містити від 5 до 20 символів', 5, 1, 4),
(45, 'Зареєструватися', 5, 1, 5),
(46, 'Увійти', 4, 1, 3),
(47, 'Забули пароль?', 4, 1, 4),
(48, 'Вже зареєстровані?', 4, 1, 5),
(49, 'увійти за допомогою email та паролю', 4, 1, 6),
(50, 'Вкажіть свої персональні дані (ім\'я, емейл, телефон) та розпочнімо співпрацю з', 5, 1, 6),
(51, 'Поле пароль', 4, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wl_mail_active`
--

DROP TABLE IF EXISTS `wl_mail_active`;
CREATE TABLE IF NOT EXISTS `wl_mail_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` int(11) NOT NULL,
  `form` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_mail_history`
--

DROP TABLE IF EXISTS `wl_mail_history`;
CREATE TABLE IF NOT EXISTS `wl_mail_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `from` text,
  `fromName` text,
  `to` text,
  `replyTo` text,
  `subject` text,
  `message` text,
  `attach` text,
  `send_email` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_mail_templates`
--

DROP TABLE IF EXISTS `wl_mail_templates`;
CREATE TABLE IF NOT EXISTS `wl_mail_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `from` text,
  `to` text,
  `multilanguage` tinyint(1) DEFAULT NULL,
  `savetohistory` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_mail_templats_data`
--

DROP TABLE IF EXISTS `wl_mail_templats_data`;
CREATE TABLE IF NOT EXISTS `wl_mail_templats_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` int(11) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `title` text,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_media_text`
--

DROP TABLE IF EXISTS `wl_media_text`;
CREATE TABLE IF NOT EXISTS `wl_media_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('photo','video','section') NOT NULL,
  `content` int(11) NOT NULL,
  `language` varchar(2) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content` (`type`,`content`,`language`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_media_text`
--

INSERT INTO `wl_media_text` (`id`, `type`, `content`, `language`, `text`) VALUES
(1, 'photo', 98, 'uk', 'Компанія Chalet є професіоналом у будівництві каркасних будинків за технологією Post and Beam. Ця технологія надає низку переваг, до них включається - екологічність, відсутність усадки, швидкість зведення та інші переваги, порівняно з класичними будинками. Для більш точного розуміючи, пропонуємо ближче познайомитися з цією технологією.'),
(2, 'photo', 115, 'uk', 'Спочатку термін “Post and Beam” з&#039;явився ще у 80-х роках попереднього століття на територіях Канади. Проте сама технологія будівництва будинків зародилася ще в 500-х роках до нашої ери. Дослівно, термін перекладатися як - стовп та балка. Це дає зрозуміти що основним матеріалом у будівництві є стійки, які зв&#039;язуються між собою перемичками. Ці елементи повинні виготовлятися виключно з колоди ручної обробки. У роботі застосовують масивні матеріали, найчастіше матеріалом виступають хвойні породи деревини.  При заготівлі матеріалу, зі спиляних колод видаляється тільки кора, що дає природні нерівності, шорсткості та потертості. І тут використовуються інструменти для ручної обробки дерева. Завдяки цьому досягається висока точність в обробці і матеріал набуває максимально презентабельного вигляду.'),
(3, 'photo', 117, 'uk', 'Якщо ви бажаєте побудувати максимально якісний будинок з продуманою системою захисту матеріалів, відмінною теплоізоляцією, який буде побудований вчасно, то слід звернутися до наших фахівців. Зробити заявку на прорахунок, ви можете за телефоном, вказаним на нашому сайті'),
(4, 'photo', 142, 'uk', 'При рубанні'),
(5, 'photo', 143, 'uk', 'Усихання'),
(6, 'photo', 144, 'uk', 'Опад');

-- --------------------------------------------------------

--
-- Table structure for table `wl_ntkd`
--

DROP TABLE IF EXISTS `wl_ntkd`;
CREATE TABLE IF NOT EXISTS `wl_ntkd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `section_id` smallint(6) NOT NULL DEFAULT '0',
  `get_sivafc` varchar(6) DEFAULT NULL,
  `name` text,
  `title` text,
  `description` text,
  `keywords` text,
  `text` text,
  `list` text,
  `meta` text,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `content` (`content`),
  KEY `language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_ntkd`
--

INSERT INTO `wl_ntkd` (`id`, `alias`, `content`, `language`, `section_id`, `get_sivafc`, `name`, `title`, `description`, `keywords`, `text`, `list`, `meta`) VALUES
(1, 1, 0, 'uk', 0, 'si', 'Замовити дерев&#039;яні будинки із зрубу, будівництво рубаних котеджів шале під ключ, за гарною ціною', 'Замовити дерев&#039;яні будинки із зрубу, будівництво рубаних котеджів шале під ключ, за гарною ціною', 'Дізнатись більше відповідей про будинки, виробник ТМ &laquo;Chalet&raquo; пропонує зруби ручної роботи. Весь комплекс робіт. Телефонуйте (050) 331-29-38', 'Будинок, Будинки, Дерев&#039;яний будинок, Дерев&#039;яні будинки, шале, зруб, зруби, дикий зруб, зруб ручної роботи, ручний тес, ручна рубка, канадська рубка, рубані меблі, меблі зі зрубу, зруб в ручну, баня зі зрубу, дерев&#039;яна баня, зруб лазні, конопатка зрубу, зруб з', '&lt;p&gt;Доступні ціни від виробника&lt;/p&gt;\n', 'Шале зруб ручної роботи з ароматом лісу', NULL),
(2, 2, 0, 'uk', 0, NULL, 'Пошук chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 0, 'uk', 0, NULL, 'Мій кабінет chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 0, 'uk', 0, 'af', 'Увійти у chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 0, 'uk', 0, NULL, 'Реєстрація chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 0, 'uk', 0, NULL, 'Відновлення паролю chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 0, 'uk', 0, NULL, 'Підписка', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 0, 'ru', 0, 'si', 'Заказать деревянные дома из сруба, строительство рубленых коттеджей шале под ключ, по хорошей цене', NULL, NULL, NULL, NULL, 'Шале cруб ручной работы с ароматом леса', NULL),
(9, 2, 0, 'ru', 0, NULL, 'Пошук chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 3, 0, 'ru', 0, NULL, 'Мій кабінет chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 4, 0, 'ru', 0, 'af', 'Увійти у chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 5, 0, 'ru', 0, NULL, 'Реєстрація chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 6, 0, 'ru', 0, NULL, 'Відновлення паролю chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 7, 0, 'ru', 0, NULL, 'Підписка', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, 0, 'en', 0, 'si', 'chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 2, 0, 'en', 0, NULL, 'Пошук chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 3, 0, 'en', 0, NULL, 'Мій кабінет chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 4, 0, 'en', 0, 'af', 'Увійти у chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 5, 0, 'en', 0, NULL, 'Реєстрація chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 6, 0, 'en', 0, NULL, 'Відновлення паролю chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 7, 0, 'en', 0, NULL, 'Підписка', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, 0, 'sk', 0, 'si', 'chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 2, 0, 'sk', 0, NULL, 'Пошук chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 3, 0, 'sk', 0, NULL, 'Мій кабінет chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 4, 0, 'sk', 0, 'af', 'Увійти у chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 5, 0, 'sk', 0, NULL, 'Реєстрація chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 6, 0, 'sk', 0, NULL, 'Відновлення паролю chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 7, 0, 'sk', 0, NULL, 'Підписка', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 1, 0, 'cz', 0, 'si', 'chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 2, 0, 'cz', 0, NULL, 'Пошук chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 3, 0, 'cz', 0, NULL, 'Мій кабінет chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 4, 0, 'cz', 0, 'af', 'Увійти у chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 5, 0, 'cz', 0, NULL, 'Реєстрація chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 6, 0, 'cz', 0, NULL, 'Відновлення паролю chalet-home.com', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 7, 0, 'cz', 0, NULL, 'Підписка', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 8, 0, 'uk', 0, NULL, 'Статичні сторінки', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 8, 0, 'ru', 0, NULL, 'Статичні сторінки', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 8, 0, 'en', 0, NULL, 'Статичні сторінки', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 8, 0, 'sk', 0, NULL, 'Статичні сторінки', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 8, 0, 'cz', 0, NULL, 'Статичні сторінки', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 10, 0, 'uk', 0, 'is', 'Про компанію', NULL, NULL, NULL, '&lt;p&gt;Затишок для душі&lt;/p&gt;\n', NULL, NULL),
(47, 10, 0, 'ru', 0, 'is', 'Про компанію', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 10, 0, 'en', 0, 'is', 'Про компанію', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 10, 0, 'sk', 0, 'is', 'Про компанію', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 10, 0, 'cz', 0, 'is', 'Про компанію', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 11, 0, 'uk', 0, '', 'Наші роботи', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 11, 0, 'ru', 0, '', 'Наші роботи', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 11, 0, 'en', 0, '', 'Наші роботи', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 11, 0, 'sk', 0, '', 'Наші роботи', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 11, 0, 'cz', 0, '', 'Наші роботи', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 11, -1, 'uk', 0, 'is', 'Наші роботи', NULL, NULL, NULL, '&lt;p&gt;Зруб вручну - унікальна робота&lt;/p&gt;\n', NULL, NULL),
(57, 11, -1, 'ru', 0, 'is', 'Наши работы', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 11, -1, 'en', 0, 'is', 'Our works', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 11, -1, 'sk', 0, 'is', 'Naše práce', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 11, -1, 'cz', 0, 'is', 'Naše hotové projekty', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 11, -2, 'uk', 0, '', 'Вироби з дерева', NULL, NULL, NULL, '&lt;p&gt;Зруб вручну - унікальна робота&lt;/p&gt;\n', NULL, NULL),
(62, 11, -2, 'ru', 0, '', 'Изделия из дерева', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 11, -2, 'en', 0, '', 'Wood products', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 11, -2, 'sk', 0, '', 'Výrobky z dreva', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 11, -2, 'cz', 0, '', 'Dřevěné výrobky', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 11, -3, 'uk', 0, '', 'Інтер&#039;єр', NULL, NULL, NULL, '&lt;p&gt;Зруб вручну - унікальна робота&lt;/p&gt;\n', NULL, NULL),
(67, 11, -3, 'ru', 0, '', 'Интерьер', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 11, -3, 'en', 0, '', 'Interrior', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 11, -3, 'sk', 0, '', 'Interiér', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 11, -3, 'cz', 0, '', 'Interier', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 11, -4, 'uk', 0, '', 'Зовнішній вигляд', NULL, NULL, NULL, '&lt;p&gt;Зруб вручну - унікальна робота&lt;/p&gt;\n', NULL, NULL),
(72, 11, -4, 'ru', 0, '', 'Внешний вид', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 11, -4, 'en', 0, '', 'Exterior', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 11, -4, 'sk', 0, '', 'Vonkajši vzhľad', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 11, -4, 'cz', 0, '', 'Vzhled', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 11, -5, 'uk', 0, 'i', 'Будівництво зрубу', NULL, NULL, NULL, '&lt;p&gt;Зруб вручну - унікальна робота&lt;/p&gt;\n', NULL, NULL),
(77, 11, -5, 'ru', 0, 'i', 'Строительство сруба', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 11, -5, 'en', 0, 'i', 'Timber blocking cinstruction', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 11, -5, 'sk', 0, 'i', 'Stavitel`stvo zruby', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 11, -5, 'cz', 0, 'i', 'Stavby ze Srubu', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 11, 1, 'uk', 0, 'i', 'В роботі: Лазня за індивідуальним проектом', NULL, NULL, NULL, '&lt;p&gt;Лазня у колоді діаметра 350 мм. Ручна рубка.&lt;br /&gt;\nПокрівля &amp;ndash; черепиця. Спільна робота з О.Ігнатенком (ТМ &amp;quot;Модуль&amp;quot;)&lt;/p&gt;\n', 'В роботі: Лазня за індивідуальним проектом', NULL),
(82, 11, 1, 'ru', 0, 'i', 'В работе: Баня по индивидуальному проекту', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 11, 1, 'en', 0, 'i', 'In work: Bath on an individual project', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 11, 1, 'sk', 0, 'i', 'V práci: Kúpeľ na individuálnom projekte', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 11, 1, 'cz', 0, 'i', 'V práci: Koupel na individuálním projektu', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 11, 2, 'uk', 0, 'i', 'У роботі: Маєток «Карибу»', NULL, NULL, NULL, '&lt;p&gt;Канадська рубка колоди діаметром 350 мм.&lt;br /&gt;\nДикий камінь. Покрівля &amp;ndash; черепиця. Спільна робота з О.Ігнатенком (ТМ &amp;quot;Модуль&amp;quot;)&lt;/p&gt;\n', NULL, NULL),
(87, 11, 2, 'ru', 0, 'i', 'В работе: Имение «Карибу»', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 11, 2, 'en', 0, 'i', 'Work in progress: Caribou Estate', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 11, 2, 'sk', 0, 'i', 'Prebiehajúce práce: Caribou Estate', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 11, 2, 'cz', 0, 'i', 'Nedokončená výroba: Caribou Estate', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 11, 3, 'uk', 0, 'i', 'У роботі: Будинок мисливця (Франція)', NULL, NULL, NULL, '&lt;p&gt;Мисливський будинок у Франції. Ручна рубка з колоди діаметром 380 мм. Проект виконано у традиційному французькому стилі. Застосовуються натуральні матеріали для обробки.&lt;/p&gt;\n', 'У роботі: Будинок мисливця (Франція)', NULL),
(92, 11, 3, 'ru', 0, 'i', 'В работе: Дом охотника (Франция)', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 11, 3, 'en', 0, 'i', 'Work in progress: Hunter&#039;s House (France)', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 11, 3, 'sk', 0, 'i', 'Prebiehajúce práce: Hunter&#039;s House (Francúzsko)', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 11, 3, 'cz', 0, 'i', 'Probíhající práce: Hunter&#039;s House (Francie)', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 11, 4, 'uk', 0, 'i', 'В роботі: Лазня за індивідуальним проектом', NULL, NULL, NULL, '&lt;p&gt;Унікальна лазня у колоді діаметра 500 мм. Ручна рубка. Покрівля &amp;ndash; гонт. Спільна робота з О.Ігнатенком (ТМ &amp;quot;Модуль&amp;quot;)&lt;/p&gt;\n', 'В роботі: Лазня за індивідуальним проектом', NULL),
(97, 11, 4, 'ru', 0, 'i', 'В работе: Баня по индивидуальному проекту', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 11, 4, 'en', 0, 'i', 'In work: Bath on an individual project', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 11, 4, 'sk', 0, 'i', 'V práci: Kúpeľ na individuálnom projekte', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 11, 4, 'cz', 0, 'i', 'V práci: Koupel na individuálním projektu', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 11, 5, 'uk', 0, 'i', 'У роботі: Приватний маєток', NULL, NULL, NULL, '&lt;p&gt;Приватний маєток, основою якого став проект знаменитої компанії PrecisionCraft. Сосна діаметром 360 мм, ручна рубка, покрівля черепиця. Спільна робота з О.Ігнатенком (ТМ &amp;quot;Модуль&amp;quot;)&lt;/p&gt;\n', 'У роботі: Приватний маєток', NULL),
(102, 11, 5, 'ru', 0, 'i', 'В работе: Частное имение', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 11, 5, 'en', 0, 'i', 'In work: Private estate', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 11, 5, 'sk', 0, 'i', 'V práci: Súkromný majetok', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 11, 5, 'cz', 0, 'i', 'V práci: Soukromý majetek', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 11, 6, 'uk', 0, 'i', 'В роботі: Лазня за індивідуальним проектом', NULL, NULL, NULL, '&lt;p&gt;Унікальна лазня у колоді діаметра 400 мм. Ручна рубка. Спільна робота з О.Ігнатенком (ТМ &amp;quot;Модуль&amp;quot;)&lt;/p&gt;\n', 'В роботі: Лазня за індивідуальним проектом', NULL),
(107, 11, 6, 'ru', 0, 'i', 'В работе: Баня по индивидуальному проекту', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 11, 6, 'en', 0, 'i', 'In work: Bath on an individual project', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 11, 6, 'sk', 0, 'i', 'V práci: Kúpeľ na individuálnom projekte', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 11, 6, 'cz', 0, 'i', 'V práci: Koupel na individuálním projektu', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 11, 7, 'uk', 0, 'i', 'У роботі: Приватний маєток', NULL, NULL, NULL, '&lt;p&gt;A private estate based on the ideas of PrecisionCraft. Luxurious and expensive architecture, comfortable layout made on one floor. Spruce with a diameter of 350 mm, manual felling, roof tiles. Joint work with A.Ignatenko (TM &amp;quot;Module&amp;quot;)&lt;/p&gt;\n', 'У роботі: Приватний маєток', NULL),
(112, 11, 7, 'ru', 0, 'i', 'В работе: Частное имение', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 11, 7, 'en', 0, 'i', 'In work: Private estate', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 11, 7, 'sk', 0, 'i', 'V práci: Súkromný majetok', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 11, 7, 'cz', 0, 'i', 'V práci: Soukromý majetek', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 11, 8, 'uk', 0, 'i', 'Царська лазня', NULL, NULL, NULL, '&lt;p&gt;Унікальна лазня ручної рубки з діаметрів 50-60 см. Трав&amp;#39;яна покрівля, дерев&amp;#39;яні ринви. Столярні вироби &amp;ndash; дуб масив, камін-топка ручної роботи з міді. Спільна робота з О.Ігнатенком (ТМ &amp;quot;Модуль&amp;quot;)&lt;/p&gt;\n', 'Царська лазня', NULL),
(117, 11, 8, 'ru', 0, 'i', 'Царская баня', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 11, 8, 'en', 0, 'i', 'Royal bath', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 11, 8, 'sk', 0, 'i', 'Kráľovský kúpeľ', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 11, 8, 'cz', 0, 'i', 'Královská lázeň', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 11, 9, 'uk', 0, 'i', 'Резиденція у Карпатах', NULL, NULL, NULL, '&lt;p&gt;Лазня гостьовий будинок в горах. Середній діаметр 35 см. Виконано встановлення теса та кроквяної частини. Обробка інтер&amp;#39;єру бджолиним воском. Дерев&amp;#39;яний водостоки.&lt;/p&gt;\n', 'Резиденція у Карпатах', NULL),
(122, 11, 9, 'ru', 0, 'i', 'Резиденция в Карпатах', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 11, 9, 'en', 0, 'i', 'Residence in the Carpathians', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 11, 9, 'sk', 0, 'i', 'Bydlisko v Karpatoch', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 11, 9, 'cz', 0, 'i', 'Bydliště v Karpatech', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 11, 10, 'uk', 0, 'i', 'Бобер', NULL, NULL, NULL, '&lt;p&gt;Лазня гостьовий будинок біля води в сосновому лісі.&lt;br /&gt;\nСередній діаметр колоди 35 см.&lt;/p&gt;\n', 'Бобер', NULL),
(127, 11, 10, 'ru', 0, 'i', 'Бобер', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 11, 10, 'en', 0, 'i', 'Beaver', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 11, 10, 'sk', 0, 'i', 'Bobr', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 11, 10, 'cz', 0, 'i', 'Bobor', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 11, 11, 'uk', 0, 'i', 'Трипілля', NULL, NULL, NULL, '&lt;p&gt;Зруб будинку для постійного проживання із лазнею на березі річки. Середній діаметр колоди 35 см. Дах виконаний з гонти.&lt;/p&gt;\n', 'Трипілля', NULL),
(132, 11, 11, 'ru', 0, 'i', 'Триполье', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 11, 11, 'en', 0, 'i', 'Trypillya', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 11, 11, 'sk', 0, 'i', 'Trypillya', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 11, 11, 'cz', 0, 'i', 'Trypillya', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 11, 12, 'uk', 0, 'i', 'Шаян', NULL, NULL, NULL, '&lt;p&gt;Будинок для відпочинку для сім&amp;#39;ї. Середній діаметр колоди 35 см. Тростникова покрівля.&lt;/p&gt;\n', 'Шаян', NULL),
(137, 11, 12, 'ru', 0, 'i', 'Шаян', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 11, 12, 'en', 0, 'i', 'Shayan', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 11, 12, 'sk', 0, 'i', 'Shayan', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 11, 12, 'cz', 0, 'i', 'Shayan', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 11, 13, 'uk', 0, 'i', 'Лазня', NULL, NULL, NULL, '&lt;p&gt;Невелика лазня із виходом до озера. Середній діаметр колоди 35 см. Дах виконаний з гонти.&lt;/p&gt;\n', 'Лазня', NULL),
(142, 11, 13, 'ru', 0, 'i', 'Баня', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 11, 13, 'en', 0, 'i', 'Sauna', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 11, 13, 'sk', 0, 'i', 'Sauna', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 11, 13, 'cz', 0, 'i', 'Sauna', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 11, 14, 'uk', 0, 'i', 'Ведмідь', NULL, NULL, NULL, '&lt;p&gt;Зруб будинку з цокольним поверхом у камені. Суворі форми підкреслюють шарм зрубу.&lt;/p&gt;\n', 'Ведмідь', NULL),
(147, 11, 14, 'ru', 0, 'i', 'Медведь', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 11, 14, 'en', 0, 'i', 'Bear', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 11, 14, 'sk', 0, 'i', 'Medveď', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 11, 14, 'cz', 0, 'i', 'Medvěd', NULL, NULL, NULL, NULL, NULL, NULL),
(151, 11, 15, 'uk', 0, 'i', 'Модуль', NULL, NULL, NULL, '&lt;p&gt;Простора лазня для великої компанії. Середній діаметр колоди 35 см. Дах виконаний з гонти.&lt;/p&gt;\n', 'Модуль', NULL),
(152, 11, 15, 'ru', 0, 'i', 'Модуль', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 11, 15, 'en', 0, 'i', 'Module', NULL, NULL, NULL, NULL, NULL, NULL),
(154, 11, 15, 'sk', 0, 'i', 'Modul', NULL, NULL, NULL, NULL, NULL, NULL),
(155, 11, 15, 'cz', 0, 'i', 'Modul', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 11, 16, 'uk', 0, 'i', 'Арена', NULL, NULL, NULL, '&lt;p&gt;Велика альтанка-навіс під традиційним двосхилим дахом. Рубані лавки та столи. Матеріал покрівлі &amp;ndash; керамічна черепиця.&lt;/p&gt;\n', 'Арена', NULL),
(157, 11, 16, 'ru', 0, 'i', 'Арена', NULL, NULL, NULL, NULL, NULL, NULL),
(158, 11, 16, 'en', 0, 'i', 'Arena', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 11, 16, 'sk', 0, 'i', 'Arena', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 11, 16, 'cz', 0, 'i', 'Aréna', NULL, NULL, NULL, NULL, NULL, NULL),
(161, 11, 17, 'uk', 0, 'i', 'Хуст', NULL, NULL, NULL, '&lt;p&gt;м. Хуст. Єлизаветинська церква 14 століття. Відновлення дерев&amp;#39;яної покрівлі з ґонту.&lt;/p&gt;\n', 'Хуст', NULL),
(162, 11, 17, 'ru', 0, 'i', 'Хуст', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 11, 17, 'en', 0, 'i', 'Khust', NULL, NULL, NULL, NULL, NULL, NULL),
(164, 11, 17, 'sk', 0, 'i', 'Khust', NULL, NULL, NULL, NULL, NULL, NULL),
(165, 11, 17, 'cz', 0, 'i', 'Khust', NULL, NULL, NULL, NULL, NULL, NULL),
(171, 11, 19, 'uk', 0, '', 'Царська лазня', NULL, NULL, NULL, NULL, 'Царська лазня', NULL),
(172, 11, 19, 'ru', 0, '', 'Царская баня', NULL, NULL, NULL, NULL, NULL, NULL),
(173, 11, 19, 'en', 0, '', 'Royal bath', NULL, NULL, NULL, NULL, NULL, NULL),
(174, 11, 19, 'sk', 0, '', 'Kráľovský kúpeľ', NULL, NULL, NULL, NULL, NULL, NULL),
(175, 11, 19, 'cz', 0, '', 'Královská lázeň', NULL, NULL, NULL, NULL, NULL, NULL),
(176, 12, 0, 'uk', 0, 'is', 'Будинки зі зрубу', NULL, NULL, NULL, '&lt;p&gt;Повернення до природи - зроблені з колод будинки&lt;/p&gt;\n', NULL, NULL),
(177, 12, 0, 'ru', 0, 'is', 'Будинки зі зрубу', NULL, NULL, NULL, NULL, NULL, NULL),
(178, 12, 0, 'en', 0, 'is', 'Будинки зі зрубу', NULL, NULL, NULL, NULL, NULL, NULL),
(179, 12, 0, 'sk', 0, 'is', 'Будинки зі зрубу', NULL, NULL, NULL, NULL, NULL, NULL),
(180, 12, 0, 'cz', 0, 'is', 'Будинки зі зрубу', NULL, NULL, NULL, NULL, NULL, NULL),
(181, 13, 0, 'uk', 0, 'is', 'Каркасні будинки', NULL, NULL, NULL, '&lt;p&gt;Каркасні будинки&amp;nbsp; по технології Post and Beam&lt;/p&gt;\n', NULL, NULL),
(182, 13, 0, 'ru', 0, 'is', 'Каркасні будинки', NULL, NULL, NULL, NULL, NULL, NULL),
(183, 13, 0, 'en', 0, 'is', 'Каркасні будинки', NULL, NULL, NULL, NULL, NULL, NULL),
(184, 13, 0, 'sk', 0, 'is', 'Каркасні будинки', NULL, NULL, NULL, NULL, NULL, NULL),
(185, 13, 0, 'cz', 0, 'is', 'Каркасні будинки', NULL, NULL, NULL, NULL, NULL, NULL),
(186, 14, 0, 'uk', 0, 'si', 'Комплектація та ціни', NULL, NULL, NULL, '&lt;p&gt;Повернення до природи - зроблені з колод будинки&lt;/p&gt;\n', NULL, NULL),
(187, 14, 0, 'ru', 0, 'si', 'Комплектація та ціни', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 14, 0, 'en', 0, 'si', 'Комплектація та ціни', NULL, NULL, NULL, NULL, NULL, NULL),
(189, 14, 0, 'sk', 0, 'si', 'Комплектація та ціни', NULL, NULL, NULL, NULL, NULL, NULL),
(190, 14, 0, 'cz', 0, 'si', 'Комплектація та ціни', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 15, 0, 'uk', 0, 'si', 'Технологія', NULL, NULL, NULL, '&lt;p&gt;Повернення до природи - зроблені з колод будинки&lt;/p&gt;\n', NULL, NULL),
(192, 15, 0, 'ru', 0, 'si', 'Технологія', NULL, NULL, NULL, NULL, NULL, NULL),
(193, 15, 0, 'en', 0, 'si', 'Технологія', NULL, NULL, NULL, NULL, NULL, NULL),
(194, 15, 0, 'sk', 0, 'si', 'Технологія', NULL, NULL, NULL, NULL, NULL, NULL),
(195, 15, 0, 'cz', 0, 'si', 'Технологія', NULL, NULL, NULL, NULL, NULL, NULL),
(196, 16, 0, 'uk', 0, 'si', 'Проектування', NULL, NULL, NULL, '&lt;p&gt;Повернення до природи - зроблені з колод будинки&lt;/p&gt;\n', NULL, NULL),
(197, 16, 0, 'ru', 0, 'si', 'Проектування', NULL, NULL, NULL, NULL, NULL, NULL),
(198, 16, 0, 'en', 0, 'si', 'Проектування', NULL, NULL, NULL, NULL, NULL, NULL),
(199, 16, 0, 'sk', 0, 'si', 'Проектування', NULL, NULL, NULL, NULL, NULL, NULL),
(200, 16, 0, 'cz', 0, 'si', 'Проектування', NULL, NULL, NULL, NULL, NULL, NULL),
(201, 17, 0, 'uk', 0, 'is', 'Інформація', NULL, NULL, NULL, '&lt;p&gt;Життя наодинці з природою&lt;/p&gt;\n', NULL, NULL),
(202, 17, 0, 'ru', 0, 'is', 'Інформація', NULL, NULL, NULL, NULL, NULL, NULL),
(203, 17, 0, 'en', 0, 'is', 'Інформація', NULL, NULL, NULL, NULL, NULL, NULL),
(204, 17, 0, 'sk', 0, 'is', 'Інформація', NULL, NULL, NULL, NULL, NULL, NULL),
(205, 17, 0, 'cz', 0, 'is', 'Інформація', NULL, NULL, NULL, NULL, NULL, NULL),
(211, 19, 0, 'uk', 0, 'si', 'Статті', NULL, NULL, NULL, '&lt;p&gt;Життя наодинці з природою&lt;/p&gt;\n', NULL, NULL),
(212, 19, 0, 'ru', 0, 'si', 'Статті', NULL, NULL, NULL, NULL, NULL, NULL),
(213, 19, 0, 'en', 0, 'si', 'Статті', NULL, NULL, NULL, NULL, NULL, NULL),
(214, 19, 0, 'sk', 0, 'si', 'Статті', NULL, NULL, NULL, NULL, NULL, NULL),
(215, 19, 0, 'cz', 0, 'si', 'Статті', NULL, NULL, NULL, NULL, NULL, NULL),
(216, 20, 0, 'uk', 0, '', 'Посилання', NULL, NULL, NULL, NULL, NULL, NULL),
(217, 20, 0, 'ru', 0, '', 'Посилання', NULL, NULL, NULL, NULL, NULL, NULL),
(218, 20, 0, 'en', 0, '', 'Посилання', NULL, NULL, NULL, NULL, NULL, NULL),
(219, 20, 0, 'sk', 0, '', 'Посилання', NULL, NULL, NULL, NULL, NULL, NULL),
(220, 20, 0, 'cz', 0, '', 'Посилання', NULL, NULL, NULL, NULL, NULL, NULL),
(221, 21, 0, 'uk', 0, '', 'Партнери', NULL, NULL, NULL, '&lt;p&gt;Життя наодинці з природою&lt;/p&gt;\n', NULL, NULL),
(222, 21, 0, 'ru', 0, '', 'Партнери', NULL, NULL, NULL, NULL, NULL, NULL),
(223, 21, 0, 'en', 0, '', 'Партнери', NULL, NULL, NULL, NULL, NULL, NULL),
(224, 21, 0, 'sk', 0, '', 'Партнери', NULL, NULL, NULL, NULL, NULL, NULL),
(225, 21, 0, 'cz', 0, '', 'Партнери', NULL, NULL, NULL, NULL, NULL, NULL),
(226, 22, 0, 'uk', 0, 'si', 'Контакти', NULL, NULL, NULL, NULL, NULL, NULL),
(227, 22, 0, 'ru', 0, 'si', 'Контакти', NULL, NULL, NULL, NULL, NULL, NULL),
(228, 22, 0, 'en', 0, 'si', 'Контакти', NULL, NULL, NULL, NULL, NULL, NULL),
(229, 22, 0, 'sk', 0, 'si', 'Контакти', NULL, NULL, NULL, NULL, NULL, NULL),
(230, 22, 0, 'cz', 0, 'si', 'Контакти', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wl_ntkd_robot`
--

DROP TABLE IF EXISTS `wl_ntkd_robot`;
CREATE TABLE IF NOT EXISTS `wl_ntkd_robot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `title` text,
  `description` text,
  `keywords` text,
  `text` text,
  `list` text,
  `meta` text,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `content` (`content`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_options`
--

DROP TABLE IF EXISTS `wl_options`;
CREATE TABLE IF NOT EXISTS `wl_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_options`
--

INSERT INTO `wl_options` (`id`, `service`, `alias`, `name`, `value`) VALUES
(1, 0, 0, 'sitemap_active', '0'),
(2, 0, 0, 'sitemap_autosent', '0'),
(3, 0, 0, 'sitemap_lastgenerate', '0'),
(4, 0, 0, 'sitemap_lastsent', '0'),
(5, 0, 0, 'sitemap_lastedit', '1656335275'),
(6, 0, 0, 'statictic_set_page', '0'),
(7, 0, 0, 'sitemap_lastedit', '1656335275'),
(8, 0, 0, 'global_MetaTags', ''),
(9, 0, 0, 'showTimeSiteGenerate', '1'),
(10, 0, 0, 'sendEmailForce', '0'),
(11, 0, 0, 'sendEmailSaveHistory', '0'),
(12, 0, 0, 'new_user_type', '4'),
(13, 0, 0, 'showInAdminWl_comments', '0'),
(14, 0, 0, 'paginator_per_page', '20'),
(15, 0, 1, 'folder', 'main'),
(16, 0, 0, 'userSignUp', '1'),
(17, 1, 0, 'folder', 'static_page'),
(18, 1, 8, 'folder', 'static_pages'),
(19, 2, 0, 'useGroups', '1'),
(20, 2, 0, 'articleMultiGroup', '0'),
(21, 2, 0, 'articleUseOptions', '0'),
(22, 2, 0, 'folder', 'library'),
(23, 2, 0, 'articleOrder', 'position DESC'),
(24, 2, 0, 'groupOrder', 'position ASC'),
(41, 1, 10, 'folder', 'about-us'),
(42, 1, 10, 'uniqueDesign', '1'),
(43, 2, 11, 'folder', 'our_projects'),
(44, 2, -11, 'word:articles_to_all', 'статтей'),
(45, 2, -11, 'word:article_to', 'До статті'),
(46, 2, -11, 'word:article_to_delete', 'статтю'),
(47, 2, -11, 'word:article', 'стаття'),
(48, 2, -11, 'word:articles', 'статті'),
(49, 2, -11, 'word:article_add', 'Додати статтю'),
(50, 2, -11, 'word:groups_to_all', 'груп'),
(51, 2, -11, 'word:groups_to_delete', 'групу'),
(52, 2, -11, 'word:group', 'група'),
(53, 2, -11, 'word:group_add', 'Додати групу статтей'),
(54, 2, -11, 'sub-menu', 'a:2:{s:5:\"alias\";s:3:\"add\";s:4:\"name\";s:25:\"Додати статтю\";}'),
(55, 2, -11, 'sub-menu', 'a:2:{s:5:\"alias\";s:3:\"all\";s:4:\"name\";s:28:\"До всіх статтей\";}'),
(56, 2, -11, 'sub-menu', 'a:2:{s:5:\"alias\";s:6:\"groups\";s:4:\"name\";s:10:\"Групи\";}'),
(57, 1, 12, 'folder', 'chalet_log_home'),
(58, 1, 13, 'folder', 'frame_houses'),
(59, 1, 13, 'uniqueDesign', '1'),
(60, 1, 14, 'folder', 'prices'),
(61, 1, 15, 'folder', 'technology'),
(62, 1, 16, 'folder', 'design'),
(63, 1, 17, 'folder', 'chalet_information'),
(64, 1, 19, 'folder', 'articles'),
(65, 1, 20, 'folder', 'Посилання'),
(66, 1, 21, 'folder', 'partners'),
(67, 1, 22, 'folder', 'contacts'),
(68, 1, 22, 'uniqueDesign', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wl_sections`
--

DROP TABLE IF EXISTS `wl_sections`;
CREATE TABLE IF NOT EXISTS `wl_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `type` enum('text_single','text_multi','textarea_single','textarea_multi','images','videos','audios','files') NOT NULL DEFAULT 'text_single',
  `name` text NOT NULL,
  `access` enum('all','login','manager') NOT NULL DEFAULT 'all',
  `position` int(11) NOT NULL,
  `title` text NOT NULL,
  `value` text NOT NULL,
  `attr` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias_id`,`content_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_sections`
--

INSERT INTO `wl_sections` (`id`, `alias_id`, `content_id`, `type`, `name`, `access`, `position`, `title`, `value`, `attr`) VALUES
(4, 1, 0, 'textarea_multi', 'section-1', 'all', 1, 'a:1:{s:2:\"uk\";s:0:\"\";}', 'a:1:{s:2:\"uk\";s:463:\"&lt;p&gt;&amp;laquo;Багато має людина, багато чого вона бажає, але між усіма благами життя цінні лише такі: старе дерево для топки, старе вино для пиття, старі друзі для часу та старі книги для читання. Решта дурниця.&amp;raquo;&lt;/p&gt;\n\n&lt;p&gt;Король Кастилії Альфонс Х&lt;/p&gt;\";}', ''),
(5, 1, 0, 'textarea_multi', 'section-2', 'all', 2, 'Section 2', 'a:1:{s:2:\"uk\";s:3760:\"&lt;p&gt;Десь у глибині кожного з нас лунає тихий голос. Зазвичай ми не знаємо точно, що він говорить, але здогадуємося &amp;ndash; щось відбувається. Це голос природи та нашого минулого, який змушує нас повертатися до того, що властиве людині: до свіжого повітря, чистої води, подалі від сучасної цивілізації та штучних матеріалів, до жител, де відпочиває душа &amp;ndash; до дерев&amp;#39;яних будинків до зрубів.&lt;/p&gt;\n\n&lt;p&gt;У Європі дерево було одним з головних будівельних матеріалів з самого початку появи цивілізації, тому будівництво зроблених з колод будинків має давню історію. Спочатку вони з&amp;#39;явилися в Скандинавії та Східній Європі понад 3000 років тому, а згодом зруби будинків стали будувати і в Північній Америці. З самого початку свого існування, технології та майстерність будівництва зрубів удосконалювалися &amp;ndash; незмінним залишався лише матеріал, з якого було складено кожну стіну будинку. Дерев&amp;#39;яні зроблені з колод будинки здавна вважалися одними з кращих. Ще недавно був час, коли будівельники намагалися відмовитися від використання натурального дерева, використовуючи бетон, цеглу та інші матеріали. Але сьогодні все більше людей починає усвідомлювати, що будинки з дерева затьмарюють своєю практичністю, безпекою та красою будівлі із найсучасніших матеріалів. Особливо популярними стають невеликі дерев&amp;#39;яні будинки та дачі.&lt;/p&gt;\n\n&lt;p&gt;Всі сучасні дерев&amp;#39;яні будинки відрізняються зовнішньою та внутрішньою привабливістю, надійністю та екологічною безпекою. У дерев&amp;#39;яних приватних будинках затишно та комфортно завжди, незалежно від пори року. В наш час дерев&amp;#39;яні будинки в Україні все більше стають популярними та затребуваними, і ми раді, що наша компанія &amp;laquo;Шале&amp;raquo; може запропонувати свої послуги у цій сфері. Сьогодні багато компаній пропонують купити дерев&amp;#39;яний будинок у них, але ми можемо побудувати дерев&amp;#39;яний будинок для вас за будь-яким проектом! Завдяки теплим відгукам наших клієнтів, ми впевнені, що найкращі дерев&amp;#39;яні будинки у Києві та багатьох інших містах України будуємо саме ми.&lt;/p&gt;\";}', ''),
(6, 1, 0, 'textarea_multi', 'section-3', 'all', 3, 'Section 3', 'a:1:{s:2:\"uk\";s:4248:\"&lt;p&gt;У сучасних технологіях будівництва дерево практично завжди проходить механічну обробку: циліндрується на верстатах, розпилюється та склеюється у брус, після чого зводяться дерев&amp;#39;яні каркаси будинків. Кожна з технологій має свої переваги та особливості, але лише в одному випадку дерево зберігає свою природу повністю &amp;ndash; у будинках з дерева ручної роботи. Саме так побудовані найдивовижніші, красиві та респектабельні дерев&amp;#39;яні будинки в Канаді, США, Франції, Швейцарії, Австрії та Східній Європі. Особливого поширення набули зруби, батьківщиною яких є швейцарські Альпи, - вдома шале. Відмінною рисою дерев&amp;#39;яних будинків шале є сильно виступаючі карнизні звіси, які надають будинку шале якийсь пасторальний мотив. Котеджі шале можуть бути як одно-, так і багатоповерховими. Для будівництва шале на кілька поверхів може використовуватися не тільки дерево, а й камінь, з якого зводиться перший поверх. Але в нашій компанії для виготовлення шале використовується лише дерево, причому дерево найвищої якості. Наша компанія вже багато років займається будівництвом будинків шале, тому саме наші фахівці зможуть створити для вас найкращий котедж шале, який радуватиме вас своїм теплом і затишком не один рік.&lt;/p&gt;\n\n&lt;p&gt;Наслідуючи старовинні традиції, компанія &amp;laquo;Шале&amp;raquo; (Chalet Log Homes), створює рубані дерев&amp;#39;яні будинки (Київ), лазні, альтанки, садові меблі, елементи ландшафтного дизайну та багато іншого тільки ручним способом. Для будівництва будинків з дерева існують різні способи рубки зрубів. Ми користуємося лише методом канадської рубки, що дозволяє зберегти всю природну красу дерева. Даний метод будівництва зрубів дерев&amp;#39;яних будинків вважається найкращим із усіх відомих на сьогоднішній день. Тут використовується високоточне припасування колод, а сама чашка робиться трапецієподібної форми, що дозволяє уникнути появи зазорів між колодами навіть після багатьох років експлуатації котеджів з дерева. При використанні канадської рубки у будівництві та оздобленні дерев&amp;#39;яних будинків утеплювач зовсім непомітний, а самі стіни всередині виглядають суцільним масивом. Канадська рубка дозволяє зберегти природну форму колоди під час будівництва дерев&amp;#39;яних котеджів та будинків. Все це дає можливість нам створювати найзручніші та найкрасивіші будинки з дерева.&lt;/p&gt;\";}', ''),
(9, 10, 0, 'textarea_multi', 'section-1', 'all', 1, 'Section 1', 'a:1:{s:2:\"uk\";s:530:\"&lt;p&gt;&amp;laquo;Ми уважно вибираємо кожне дерево, прислухаючись до історій, яке воно зберігає, та поважаючи життя, яке воно прожило. З таких дерев ми створюємо житло, таке ж красиве і міцне, як ці дерева, і живемо в їхніх теплих обіймах, у просторі, що зветься домом.&lt;/p&gt;\n\n&lt;p&gt;Джоела ДеВіллер&lt;/p&gt;\";}', ''),
(10, 10, 0, 'textarea_multi', 'section-2', 'all', 2, 'Section 2', 'a:1:{s:2:\"uk\";s:710:\"&lt;p&gt;Украина:&amp;nbsp;&lt;br /&gt;\nВиталий Дулкай&lt;br /&gt;\nГенеральный директор&lt;br /&gt;\nтел.: +38 067 310 2696&lt;br /&gt;\n&lt;a href=&quot;mailto:log@chalet-home.com.ua&quot;&gt;log@chalet-home.com.ua&lt;/a&gt;&lt;br /&gt;\n&lt;br /&gt;\nПредставительство Восточная Европа&amp;nbsp;&lt;br /&gt;\nСловакия, Польша, Чехия, Венгрия&amp;nbsp;&lt;br /&gt;\n+421948363835&amp;nbsp;&lt;br /&gt;\n&lt;a href=&quot;mailto:log@chalet-home.com.ua&quot;&gt;log@chalet-home.com.ua&lt;/a&gt;&lt;br /&gt;\n&lt;a href=&quot;mailto:chalet@zoznam.sk&quot; target=&quot;_blank&quot;&gt;chalet@zoznam.sk&lt;/a&gt;&lt;/p&gt;\";}', ''),
(11, 10, 0, 'textarea_multi', 'section-3', 'all', 3, 'Section 3', 'a:1:{s:2:\"uk\";s:6905:\"&lt;p&gt;Понад 17 років майстри компанії &amp;laquo;Шале&amp;raquo; зберігають та розвивають культуру та традиції будівництва з дерева, створення зрубів із хвойних порід дерева виключно ручної роботи з мінімальною обробкою дерева та лише ручними інструментами. Кожен зруб, створений таким чином, є унікальним, як і унікально кожне цільне дерево, з якого він побудований.&lt;/p&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Проект &amp;laquo;Шале&amp;raquo; входить до групи компаній з Канадським та Американським капіталом в Україні, що реалізує проекти у сфері фінансів, будівництва та нерухомості;&lt;/li&gt;\n	&lt;li&gt;Надійність та репутація нашої компанії підтверджується відгуками наших клієнтів та закінченими роботами. Ми із задоволенням готові показати готову роботу та познайомити з нашими клієнтами. Дерев&amp;#39;яний зруб вимагає правильного звернення та догляду та на все що ми будуємо надаємо гарантію 2 роки. Ми проводимо післягарантійне обслуговування зрубу і, при необхідності, проконсультуємо і відповімо на Ваші запитання;&lt;/li&gt;\n	&lt;li&gt;Ми єдина компанія в Україні, яка використовує стандарти та методи будівництва зрубів&amp;nbsp;Міжнародної Асоціації зробленого з колод будівництва. Використання світового досвіду будівництва зрубів ручної роботи, розроблених Асоціацією, є запорукою якості нашої роботи;&lt;/li&gt;\n	&lt;li&gt;Зруби створюються тільки на території нашої компанії (Закарпатська область, Хустський район), де для цього є необхідне обладнання для обробки дерева та монтажу зрубу, адже кожна колода в будинку може бути довжиною до 12 метрів та вагою більше за тонну;&lt;/li&gt;\n	&lt;li&gt;Кожне дерево ми відбираємо самі і лише у гірських районах Карпат, де деревина має найбільшу щільність і тому впевнені у його якості. Ви самі зможете переконатися в щільності деревини на кожному колоді &amp;ndash; дерево не дозволяє лукавити. Використання колод довжиною до 12.5 м і товщиною 35-60 см., віком 50-100 років, дозволяє створювати зруби, що зберігають тепло і мають правильні архітектурні пропорції;&lt;/li&gt;\n	&lt;li&gt;Використовуємо як вихідний матеріал ялина (смерека), що має на світовому ринку більший попит, ніж сосна. Ялина має ряд переваг за кольором, теплом, конструктивними особливостями будинку;&lt;/li&gt;\n	&lt;li&gt;Наші майстри проходили стажування та практику у майстрів Франції та Словаччини;&lt;/li&gt;\n	&lt;li&gt;Застосування канадської рубки при будівництві зрубу, хоч і є більш трудомістким і тривалим процесом, але практично виключає можливість виникнення щілин під час усадки будинку;&lt;/li&gt;\n	&lt;li&gt;Обробка дерева спеціальними ручними ножами максимально зберігає його натуральні захисні властивості та природний вигляд дерева в інтер&amp;#39;єрі Вашої оселі;&lt;/li&gt;\n	&lt;li&gt;Для утеплення зрубів застосовується лише натуральний льон найвищої якості;&lt;/li&gt;\n	&lt;li&gt;Внутрішнє оздоблення зрубу проводиться екологічно чистими матеріалами на основі олій або бджолиного воску;&lt;/li&gt;\n	&lt;li&gt;Фарбування зрубу та герметики, що застосовуються, вироблені світовими лідерами у сфері захисту дерев&amp;#39;яних будинків;&lt;/li&gt;\n	&lt;li&gt;Надаємо допомогу в ескізному опрацюванні ділянки та складанні проекту будинку;&lt;/li&gt;\n	&lt;li&gt;За необхідності, створимо зруб &amp;laquo;під ключ&amp;raquo; із залученням&amp;nbsp;надійних та кваліфікованих партнерів, що працюють спеціалізовано з дерев&amp;#39;яними будинками;&lt;/li&gt;\n	&lt;li&gt;Кожен зруб будуватиметься однією бригадою майстрів і саме вона збиратиме його на Вашій ділянці. Кожен елемент зрубу, кожна колода унікальна і її неможливо замінити іншою колодою!&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;Технології та майстерність роботи з деревом дозволяють нам створювати не тільки рубані будинки, але і багато речей та елементів з використанням цільного дерева: дерев&amp;#39;яні дахи (гонт, шиндель), альтанки столи та лавки, ворота, огорожі перила, містки, вивіски та звичайно ж лазні . Будівництво дерев&amp;#39;яних будинків потребує знань та досвіду.&lt;/p&gt;\";}', ''),
(7, 1, 0, 'textarea_multi', 'section-4', 'all', 4, 'Section 4', 'a:1:{s:2:\"uk\";s:5866:\"&lt;p&gt;Створення справжнього зрубу та будівництво дерев&amp;#39;яних будинків з колоди &amp;ndash; це наука та багатовіковий досвід. Фахівці компанії &amp;laquo;Шале&amp;raquo; готові поділитися своїми знаннями та досвідом для того, щоб Ваш красивий і теплий дерев&amp;#39;яний будинок радував Вас та Ваших нащадків протягом багатьох років своїм затишком та комфортом.&lt;/p&gt;\n\n&lt;p&gt;Насолоджуйтесь життям у будинку з ароматом лісу.&lt;/p&gt;\n\n&lt;p&gt;Основною спеціалізацією компанії &amp;laquo;Шале&amp;raquo; є виключно будівництво дерев&amp;#39;яних будинків та лазень, а саме зрубів ручної роботи. Вузька спрямованість роботи дозволяє нам бути одними із найкращих у тому, що ми робимо, а саме у створенні рубаних дерев&amp;#39;яних будинків. При будівництві дерев&amp;#39;яних будинків, лазень ми надаємо такі послуги:&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Проектування та будівництво дерев&amp;#39;яних будинків. Дерево, як і будь-який інший матеріал, має особливості, як у будівництві, так і в проектуванні. Це стосується естетики дерев&amp;#39;яних зрубів, канонів будівництва, поєднання дерев&amp;#39;яних технологій будівництва та сучасних будівельних рішень, конструктивних особливостей проектування зрубів із цільного колоди. Індивідуальні дерев&amp;#39;яні будинки, які проектують та будують наші фахівці з оригінальних проектів будинків з дерева, відрізняються самобутністю та оригінальністю. У проектах будинків із зрубів ми намагаємося максимально втілити у життя побажання замовника і при цьому врахувати наш багаторічний досвід виготовлення зрубів високої якості. Проекти зрубів не обов&amp;#39;язково індивідуальні. Якщо вам потрібен невеликий дачний будинок або просто заміський будинок для відпочинку, ми завжди готові запропонувати вам безліч варіантів типових проектів зрубів, за якими ми створимо вам зруби, що вам сподобалися, під ключ. При цьому зруби, побудовані за готовими проектами зроблених з колод будинків, ні в чому не будуть поступатися своїм індивідуальним побратимам в плані затишку, комфорту і якості, але при цьому типові зроблені з колод будинки під ключ коштують дещо дешевше. Після того, як проект зрубу будинку з колоди буде узгоджений із замовником, ми приступаємо до його безпосереднього виробництва. Дерев&amp;#39;яні будинки з колоди, у тому числі зруби будинків під ключ, ми виробляємо на нашому власному будівельному майданчику на місці заготівлі та обробки лісу. Оскільки процес проектування зрубу, його виробництва та складання, у нас є єдине ціле в рамках однієї компанії, ми впевнені як наші роботи.&lt;/li&gt;\n	&lt;li&gt;Будівництво зрубів бань. Проектування та будівництво лазні з дерева завжди є для нас особливою дією. На Русі здавна лазня вважалася чимось особливим, таким місцем, де людина разом із гарячою водою та парою змиває з себе все погане. Саме тому будівництво зрубу лазні &amp;ndash; процес особливий, що вимагає знань і уважності на всіх етапах її створення. Лазні зі зрубу користуються колосальною популярністю і сьогодні. Багато власників заміських дерев&amp;#39;яних будинків вважають просто необхідним придбати справжню лазню. Замовляючи рубану лазню в нашій компанії, ви отримаєте гарну самобутню будову з кращого карпатського лісу, прикрашену різьбленням та іншими декоративними елементами та відмінну своєю екологічністю.&lt;/li&gt;\n&lt;/ul&gt;\";}', ''),
(8, 1, 0, 'textarea_multi', 'section-5', 'all', 5, 'Section 5', 'a:1:{s:2:\"uk\";s:4041:\"&lt;p&gt;Дати однозначну відповідь на запитання: скільки коштує зруб? - Неможливо. Ціни на будівництво дерев&amp;#39;яних будинків, яке здійснює наша компанія, багато в чому залежать від вибраних проектів дерев&amp;#39;яних котеджів, їхньої площі, від того, чи створюються будинки з дерева під ключ. Але ми з упевненістю можемо сказати, що наші ціни є найдемократичнішими. Якщо замовник хоче дещо знизити вартість дерев&amp;#39;яного будинку, ми завжди раді запропонувати йому чудові варіанти готових зрубів. До речі, на нашому сайті ви зможете знайти чудові фото зрубів, виконаних нашими майстрами.&lt;/p&gt;\n\n&lt;p&gt;Окрім виготовлення зрубів дерев&amp;#39;яних будинків та лазень, ми також займаємось створенням справжньої дерев&amp;#39;яної покрівлі. Дерев&amp;#39;яний покрівельний матеріал (гонт, дранка, шингл), що виготовляється вручну, має багатовікову історію. Гонт цінуватися у будівництві за свою екологічність, дивовижний зовнішній вигляд та відмінне поєднання з красивими дерев&amp;#39;яними будинками будь-якого типу. Ми виготовляємо гонт тільки методом розколювання деревини вздовж волокон, подальшого сушіння в природних умовах і, при необхідності, проварюванням у складах продовжують термін служби дерев&amp;#39;яної покрівлі, тому замовник отримує матеріал, що відрізняється довговічністю та натуральністю. Установка гонту проводиться спеціалістами, які знають особливості влаштування дерев&amp;#39;яних дахів на дерев&amp;#39;яних зрубах.&lt;/p&gt;\n\n&lt;p&gt;Займаючись будівництвом дерев&amp;#39;яних будинків та котеджів, ми постаралися зібрати всю найкращу інформацію з оформлення інтер&amp;#39;єрів дерев&amp;#39;яних будинків, дизайнерських рішень, поєднання різних природних матеріалів та різьблення по дереву. Всі ці знання ми намагаємося реалізовувати у всіх наших проектах дерев&amp;#39;яних будинків та котеджів, під час будівництва дерев&amp;#39;яних будинків під ключ.&lt;/p&gt;\n\n&lt;p&gt;Ми здійснюємо будівництво дерев&amp;#39;яних будинків у Києві та інших містах України, при цьому наші ціни на дерев&amp;#39;яні будинки та лазні не залежать від місця майбутнього будівництва. Замовляючи у нас дерев&amp;#39;яні будинки, зруби, ви отримуєте екологічно чистий, теплий, затишний та комфортний будинок, який стане вашим улюбленим місцем житла чи відпочинку.&lt;/p&gt;\";}', ''),
(12, 11, -1, 'textarea_multi', 'section-1', 'all', 1, 'Section 1', '', ''),
(13, 12, 0, 'textarea_multi', 'section-1', 'all', 1, 'Section 1', 'a:1:{s:2:\"uk\";s:1070:\"&lt;p&gt;На Русі, країнах Скандинавії, північної Америки, Центральної та Східної Європи домобудівництво було споконвічно дерев&amp;#39;яним. При цьому деревина завжди мала ряд переваг у порівнянні з кам&amp;#39;яним, а пізніше і цегляним домобудуванням, - в дерев&amp;#39;яних будинках тепло взимку і прохолодно влітку, а за рахунок унікального мікроклімату в дерев&amp;#39;яному будинку завжди вільно і легко дихається, матеріал для їх виробництва завжди був поряд. Будинки ж ручної рубки - найстаріший, випробуваний спосіб будівництва дерев&amp;#39;яних будинків, що дійшов до нас практично без змін.&lt;/p&gt;\";}', ''),
(14, 12, 0, 'textarea_multi', 'section-2', 'all', 2, 'a:1:{s:2:\"uk\";s:53:\"Строительство домов из сруба\";}', 'a:1:{s:2:\"uk\";s:1192:\"Першим матеріалом, який почали використовувати для будівництва будинків, стало натуральне дерево, точніше дерев&amp;#39;яний стовбур. Для будівництва дерев&amp;#39;яних будинків використовувалася лише найміцніша частина стовбура &amp;ndash; ​​середня. Спочатку, щоб отримати будівельний матеріал, просто видалялися верхівка та кореневищо зрубаного дерева, всі гілки та суки. Іншій обробці поки що дерево не піддавалося: в отриманій колоді вирізалися елементарні &amp;laquo;чашки&amp;raquo; і, підготовлені таким чином колоди, відразу ж укладалися у вінці. Для утеплення таких будинків використовувалися природні матеріали, найчастіше використовувався звичайний мох.\";}', ''),
(15, 12, 0, 'textarea_multi', 'section-3', 'all', 3, 'Section 3', 'a:1:{s:2:\"uk\";s:5878:\"&lt;p&gt;Але час йшов і тодішні будівельники почали розуміти, що для того, щоб побудувати міцніший і тепліший дерев&amp;#39;яний будинок, до його створення слід було б підійти ретельніше. Тепер для будівництва стали використовуватися лише відповідні за розмірами та властивостями стволи, з яких вручну знімалася кора і вирубувалися вже досконаліші пази, &amp;laquo;чашки&amp;raquo;.&lt;/p&gt;\n\n&lt;p&gt;За багато століть технологія будівництва дерев&amp;#39;яних будинків практично не змінилася, і саме так сьогодні і продовжують будувати справжні рубані дерев&amp;#39;яні будинки вручну майстри своєї справи. Сама по собі технологія досить проста, але потребує певних знань та дотримання всіх етапів будівництва дерев&amp;#39;яного будинку. Кожному відомо, що стовбур будь-якого дерева має форму усіченого конуса, з чого випливає, що в нього один кінець товщий за інший. Тому вінці укладаються шляхом чергування комля (низ стовбура) і верхівки отриманої колоди &amp;ndash; це дозволяє отримувати рівні стіни без перекосів. Природно, що в процесі створення будинку з колоди ручної рубки, зважаючи на те, що стовбури мають нерівності поверхні, утворюються щілини, які обов&amp;#39;язково законопачуються. Після того, як стіни будуть готові, починається будівництво даху будинку.&lt;/p&gt;\n\n&lt;p&gt;Технологія будівництва сучасних дерев&amp;#39;яних будинків змінилася лише щодо використання сучасних методик обробки та заготівлі лісу, а також у методах обробки готового зрубу будинку. Змінилися кілька стандартів будівництва рубаних дерев&amp;#39;яних будинків з колоди.&lt;/p&gt;\n\n&lt;p&gt;p align=&amp;quot;justify&amp;quot;&amp;gt; Важливим досягненням у сучасному будівництві зрубів стала можливість будівництва будинку в одному місці, а зведення його в іншому. Сьогодні технологічне обладнання, що використовується для будівництва дерев&amp;#39;яних будинків ручної рубки, дозволяє виготовляти повний комплект колод та покрівлю, підганяючи їх на будівельному майданчику компанії з проектування та будівництва дерев&amp;#39;яних будинків. Фактично тут будинок збирається повністю. Після того, як зруб буде готовий, його розбирають і перевозять у місце, де він стоятиме. Монтаж дерев&amp;#39;яних рубаних будинків на місці проводиться дуже швидко, далі виконується його внутрішнє та зовнішнє оздоблення &amp;ndash; і будинок готовий! Сьогодні все більше компаній пропонують будівництво рубаних дерев&amp;#39;яних будинків під ключ. Такі будинки навіть не потрібно залишати для &amp;laquo;відстоювання&amp;raquo; - жити в них можна практично відразу.&lt;/p&gt;\n\n&lt;p&gt;В наш час застосовуються різні технології домобудівництва, що дозволяють будувати якісні дерев&amp;#39;яні будинки. До таких технологій можна віднести панельні, каркасні будинки, будинки з оциліндрованої колоди, будинки з клеєного бруса та будинки з колоди, або зруби ручної роботи.&lt;br /&gt;\nНайкращою технологією завжди була, є і залишиться технологія створення зрубів з колоди ручної роботи. Саме так будуємо дерев&amp;#39;яні фінські будинки і ми. Наша компанія створює елітні та недорогі нові дерев&amp;#39;яні будинки, просто заміські чи дачні, а також лазні.&lt;/p&gt;\n\n&lt;p&gt;Будинки та лазні, виготовлені з ручного теса, відрізняються особливою стійкістю до навколишнього середовища та довговічністю, тому що при обробці вручну зберігається захисний шар деревини.&lt;/p&gt;\";}', ''),
(16, 12, 0, 'textarea_multi', 'section-4', 'all', 4, 'a:1:{s:2:\"uk\";s:171:\"Якою є технологія будівництва дерев&#039;яних будинків, яка використовується нашими майстрами?\";}', 'a:1:{s:2:\"uk\";s:4065:\"&lt;p&gt;Наша компанія вже багато років створює проекти будівництва дерев&amp;#39;яних будинків та лазень та успішно втілює їх у життя. Переважно ми займаємося будівництвом зроблених з колод будинків ручної роботи під ключ, що дозволяє нашим замовникам не хвилюватися щодо додаткової вартості будівництва дерев&amp;#39;яного будинку у вигляді його обробки.&lt;/p&gt;\n\n&lt;p&gt;Для виготовлення зрубу будинку або бань із струганої колоди ми використовуємо свіжоспилені колоди природної вологості діаметром від 300 до 400 мм і більше &amp;ndash; так виходить оптимальна для українських кліматичних умов товщина стін. Зруби з колоди виконуються повністю ручним способом і є, мабуть, найскладнішою і трудомісткою технологією домобудівництва. Для будівництва дерев&amp;#39;яного будинку, лазні береться добірний, калібрований ліс, потім з колод знімають кору, дають трохи підсохнути, колоди протесують, вибирають чашки-пази, шліфують і обробляють рубанком &amp;ndash; усі ці операції виробляються вручну.&lt;/p&gt;\n\n&lt;p&gt;При ручній обробці сокирою та спеціальною киркою верхній, найбільш м&amp;#39;який шар дерева (заболонь) знімається обережно, в деяких випадках строго по річних кільцях, що дає можливість максимально зберегти природну міцність, теплостійкість та структуру дерева.&lt;/p&gt;\n\n&lt;p&gt;При укладанні колод, звичайно, утворюються щілини, тому між колодами прокладається натуральний льон. Кожна колода майстра ретельно підганяють під попередню, щоб максимально підвищити якість будинку. На нашому сайті Ви знайдете навіть фото будівництва зрубів дерев&amp;#39;яних будинків методами, які використовуються в нашій компанії.&lt;/p&gt;\n\n&lt;p&gt;Дерев&amp;#39;яні зруби будинків під ключ, створені зі струганої колоди, мають особливий своєрідний зовнішній вигляд, тому що всі колоди мають різний діаметр і при складанні чергуються за принципом вершина-комель. Особливо добре зі струганої колоди будувати лазні, т.к. у лазнях колоди відчувають дуже великі температурні дії та постійні зміни вологості. Варто сказати, що до будівництва зрубів лазень ми ставимося особливо трепетно. Наші проекти зрубів лазень створюються лише найкращими нашими майстрами, т.к. лазня повинна мати особливі властивості та якості, які дещо відрізняються від звичайного житлового будинку.&lt;/p&gt;\";}', ''),
(17, 12, 0, 'textarea_multi', 'section-5', 'all', 5, 'a:1:{s:2:\"uk\";s:71:\"У чому перевага дерев&#039;яних будинків?\";}', 'a:1:{s:2:\"uk\";s:9439:\"&lt;p&gt;Звичайно, в наші дні для будівництва будинків використовується величезна кількість сучасних матеріалів, які є досить недорогими, міцними і простими в роботі. Але все ж таки саме дерев&amp;#39;яні будинки, технологія будівництва яких незмінна протягом багатьох століть і все більше привертають увагу людей. У чому ж причина такої привабливості, чому тепла дерев&amp;#39;яна хата з мансардою сьогодні стає однією з найпопулярніших заміських будівель?&lt;/p&gt;\n\n&lt;ol&gt;\n	&lt;li&gt;Красиві дерев&amp;#39;яні будинки, зруби, створюють ідеальне середовище для життя: в них повітря чисте і свіже, підтримується оптимальна вологість. Смола, що міститься у деревині, багато років у ній зберігається, часом навіть виступає на поверхню; вона має фітонцидні властивості, тому повітря, потрапляючи в будинок через волокна деревини, фільтрується ними і очищається від різних хвороботворних мікробів. Крім того, приємний аромат смоли хвойних надає заспокійливий і тонізуючий вплив на організм людини.&lt;/li&gt;\n	&lt;li&gt;Стіни зрубів дерев&amp;#39;яних будинків ручної роботи у прямому значенні цього слова дихають! Завдяки природній рециркуляції повітря, яку забезпечує натуральна деревина, в дерев&amp;#39;яних будинках немає необхідності в установці будь-яких систем кондиціювання. У таких будинках не буває вогкості та плісняви ​​&amp;ndash; тільки здорове та чисте повітря.&lt;/li&gt;\n	&lt;li&gt;Відносна вологість повітря у дерев&amp;#39;яному зрубі становить практично оптимальне для людини значення 40-60%. Причому така вологість підтримується постійно і не залежить від погодних змін.&lt;/li&gt;\n	&lt;li&gt;Важливою якістю дерев&amp;#39;яного приватного будинку є і те, що його стіни мають прекрасну теплоізоляцію, яка навіть у кілька разів вища, ніж у цегляної кладки. Низька теплопровідність зрубу забезпечує прохолоду в ньому влітку та тепло взимку. Саме такі найкращі індивідуальні дерев&amp;#39;яні будинки будує наша компанія з екологічно чистої закарпатської деревини.&lt;/li&gt;\n	&lt;li&gt;Дерево, з якого будуються будинки ручної рубки, обробляються нами лише вручну за допомогою ручних ножів. Це дає можливість максимально зберегти натуральні захисні властивості деревини та її природний вигляд. Завдяки цьому дерев&amp;#39;яний будинок зсередини виглядає максимально натурально та природно. Інтер&amp;#39;єр дерев&amp;#39;яного будинку унікальний, т.к. рисунок структури кожного дерева індивідуальний. Внутрішня обробка зрубу виконується екологічно чистими натуральними матеріалами, створеними на основі бджолиного воску та масел.&lt;/li&gt;\n	&lt;li&gt;Зруби дерев&amp;#39;яних будинків, в силу своєї конструкції та використовуваної технології, мають дивовижну сейсмостійкість і здатні вистояти при землетрусі до 9 балів.&lt;/li&gt;\n	&lt;li&gt;Красиві канадські рубані будинки чудово вписуються практично у будь-який ландшафт, бо вони є частиною природи. Можна навіть сміливо сказати, що дерев&amp;#39;яні будинки - це і є сама постійна природа, яка поза часом і модою. Стилі та напрямки в кам&amp;#39;яному будівництві змінюються, а дерево залишається незмінним, тому мине час, кам&amp;#39;яні будинки стануть несучасними, а зруби залишаться на віки.&lt;/li&gt;\n&lt;/ol&gt;\n\n&lt;p&gt;Комусь може здатися, що дерев&amp;#39;яні будинки є архаїчними і не можуть забезпечити повного комфорту життя, на відміну від сучасних кам&amp;#39;яних будівель. Насправді це не так. Сучасні дерев&amp;#39;яні будинки мають всі зручності: камін, паркет, кабельне телебачення, систему опалення, систему водозабезпечення та каналізації, джакузі та багато іншого, що асоціюється у нас з комфортним життям. Дизайн дерев&amp;#39;яного будинку повністю залежить від Вас, від Вашого стилю життя та внутрішнього душевного стану!&lt;/p&gt;\n\n&lt;p&gt;Часто люди не наважуються на будівництво дерев&amp;#39;яних будинків, вважаючи, що вони є більш пожежонебезпечними, ніж, наприклад, цегляні. Насправді, грамотно виконаний розрахунок електричних мереж та дотримання конструктивних вимог при встановленні печей та камінів дозволить убезпечити та вберегти будинок від пожежі. Порушення правил пожежної безпеки, а не горючість стін призводить до загорянь у будь-якому будинку. Звичайними засобами людина, навіть якщо постарається, не зможе підпалити дерев&amp;#39;яну стіну, а тільки обвуглить її.&lt;/p&gt;\n\n&lt;p&gt;Елітні дерев&amp;#39;яні будинки з колоди та навіть дерев&amp;#39;яні будинки економ-класу, без зайвого перебільшення, можуть існувати століттями, зберігаючи свою привабливість, комфорт та надійність. Єдине, слід пам&amp;#39;ятати, що для того, щоб існувати вічно, дерев&amp;#39;яному будинку знадобиться відповідний догляд. Сьогодні, з появою нових технологій, є багато можливостей утримувати свій дерев&amp;#39;яний будинок у порядку дуже довгий час. Незважаючи на те, що наша компанія здійснює заміське будівництво та оздоблення дерев&amp;#39;яних будинків недорого, ми застосовуємо покриття та герметики світових лідерів у сфері захисту дерев&amp;#39;яних будинків. Дерево &amp;ndash; дуже міцний та довговічний матеріал. Відомо, що зруби дерев&amp;#39;яних будинків можуть стояти кілька століть і згодом лише виграють, набуваючи його неповторного впливу.&lt;/p&gt;\n\n&lt;p&gt;Причому слід зазначити, що тривалість служби дерева часто залежить від на нього води, проте це отже, що дерево може бути вологим. Саме навпаки, зазвичай дерево і вода уживаються цілком світ&lt;/p&gt;\";}', ''),
(18, 12, 0, 'textarea_multi', 'section-6', 'all', 6, 'a:1:{s:2:\"uk\";s:399:\"Замовляючи послугу будівництва дерев&#039;яного будинку або зрубу лазні, Ви можете бути впевнені в тому, що будинок або лазня з натурального дерева подарує Вам частину природи, гарний настрій та здоров&#039;я на довгі роки!\";}', 'a:1:{s:2:\"uk\";s:0:\"\";}', ''),
(19, 14, 0, 'textarea_multi', 'section-1', 'all', 1, 'a:1:{s:2:\"uk\";s:0:\"\";}', 'a:1:{s:2:\"uk\";s:461:\"&lt;p&gt;Фактично ми пропонуємо замовнику зібраний зруб із кроквяною частиною поставлений на Ваш фундамент, готовий до подальших робіт. При необхідності ми готові взяти на себе роботи зі створення зрубу повністю готового до проживання.&lt;/p&gt;\n\n&lt;ul&gt;\n&lt;/ul&gt;\";}', ''),
(21, 14, 0, 'textarea_multi', 'section-3', 'all', 3, 'a:1:{s:2:\"uk\";s:17:\"Наші ціни\";}', 'a:1:{s:2:\"uk\";s:2548:\"&lt;p&gt;&lt;strong&gt;У середньому ціна на зруб розміром 150-200 м2 від компанії &amp;quot;Шале&amp;quot; складе 250-350 дол. за м2 для зрубу в півтора поверхи в ручній рубці в колоді 35 см, довжина по 12 м, з монтажем.&lt;/strong&gt;&lt;br /&gt;\nКомплектація наведена нижче.&lt;/p&gt;\n\n&lt;p&gt;Ця ціна може вийти лише на 10-20% вище ніж такий же зруб з оциліндрованої колоди діаметру 18-22 см. Але погодьтеся 35 і 20 см має велику різницю, ручний тес і оциліндрований пиломатеріал мають принципово різний вид, якість і характеристики. А на загальній вартості будинку різниця буде лише у кілька відсотків.&lt;/p&gt;\n\n&lt;p&gt;Чому така ціна? Тому що ми володіємо власним виробництвом від вибору та доставки лісу, проектування, обробки лісу, рубання та збирання. Ви отримаєте ціну від виробника. Не секрет, що багато фірм заявляють, що вони виготовляють зруби ручної роботи, а при появі замовника звертаються до &amp;laquo;Шалі&amp;raquo; із замовленням для клієнта. Ми хочемо і вміємо працювати, тому наш принцип &amp;ndash; заробляти чесно та розумно, але працювати постійно, а не чекати замовника поставивши захмарні ціни. У нас немає кредитів і ми не повинні грошей своїм клієнтам, працюючи з нами, можете бути впевнені, що Ваша оплата йде на закупівлю лісу та оплату робіт саме по Вашому будинку, а не на виплату боргів або закриття інших об&amp;#39;єктів. До нас на виробництво завжди можна приїхати та побачити, як рубатися Ваш будинок та створюються інші дерев&amp;#39;яні будинки.&lt;/p&gt;\";}', ''),
(22, 14, 0, 'textarea_multi', 'section-4', 'all', 4, 'a:1:{s:2:\"uk\";s:24:\"Комплектація\";}', 'a:1:{s:2:\"uk\";s:4198:\"&lt;p&gt;Після розробки проекту будинку можна говорити про стандартну комплектацію зрубу, на початковому етапі, до якої входить:&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;визначення середнього діаметра колод (від 30 см до 60 см);&lt;/li&gt;\n	&lt;li&gt;відбір та заготівля деревини лише у гірських районах на висоті 800-1000 м;&lt;/li&gt;\n	&lt;li&gt;доставка деревини до місця виробництва;&lt;/li&gt;\n	&lt;li&gt;зняття обзелу (кори) стволів дерев ручним способом;&lt;/li&gt;\n	&lt;li&gt;обробка тимчасовим антисептиком;&lt;/li&gt;\n	&lt;li&gt;виготовлення зрубу на території компанії (включаючи балки перекриття та внутрішні перегородки, якщо передбачено із зрубу);&lt;/li&gt;\n	&lt;li&gt;виготовлення комплектуючих: підкроквяних стійок, підкроквяних балок, крокв;&lt;/li&gt;\n	&lt;li&gt;виготовлення підпірних стовпів тераси;&lt;/li&gt;\n	&lt;li&gt;розбирання зрубу та кроквяної частини на місці виготовлення;&lt;/li&gt;\n	&lt;li&gt;розробка прихованих отворів під електрику (відповідно до плану електрики);&lt;/li&gt;\n	&lt;li&gt;обробка деревини відбілюючим складом;&lt;/li&gt;\n	&lt;li&gt;навантаження зрубу та комплектуючих;&lt;/li&gt;\n	&lt;li&gt;доставка до місця монтажу (доставку оплачує замовник);&lt;/li&gt;\n	&lt;li&gt;монтаж дубового бруса із гідроізоляцією на фундамент замовника;&lt;/li&gt;\n	&lt;li&gt;збір зрубу та ізоляція натуральним льоном (кран для розвантаження та монтажу оплачує замовник);&lt;/li&gt;\n	&lt;li&gt;монтаж кроквяної частини (крокви, підкроквяні балки);&lt;/li&gt;\n	&lt;li&gt;монтаж підпірних стовпів траси та механізмів вертикальної усадки зрубу;&lt;/li&gt;\n	&lt;li&gt;облаштування віконних та дверних отворів плаваючими напрямними;&lt;/li&gt;\n	&lt;li&gt;Даємо рекомендації щодо правильної експлуатації зрубу (будинку) та регулювання компенсаційних домкратів;&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;Додаткові роботи, що не входять у вартість та проводяться за фактом:&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;роботи з підшивки необрізною дошкою або вагонкою стель, фронтонів та звисів даху;&lt;/li&gt;\n	&lt;li&gt;виготовлення та встановлення решетування (залежно від покрівельного матеріалу);&lt;/li&gt;\n	&lt;li&gt;виготовлення та встановлення декоративної лобової дошки даху;&lt;/li&gt;\n	&lt;li&gt;лаги та чорнова підлога;&lt;/li&gt;\n	&lt;li&gt;шліфування будинку зсередини перед фарбуванням внутрішнім (за потребою);&lt;/li&gt;\n	&lt;li&gt;роботи із зовнішньої обробки швів герметиками;&lt;/li&gt;\n	&lt;li&gt;роботи з внутрішньої обробки швів герметиками;&lt;/li&gt;\n	&lt;li&gt;роботи з зовнішнього фарбування будинку;&lt;/li&gt;\n	&lt;li&gt;внутрішня обробка зрубу лляною олією;&lt;/li&gt;\n&lt;/ul&gt;\";}', ''),
(20, 14, 0, 'textarea_multi', 'section-2', 'all', 2, 'a:1:{s:2:\"uk\";s:31:\"Вартість будинку\";}', 'a:1:{s:2:\"uk\";s:4602:\"&lt;p&gt;Вирішивши будувати будинок, ми стикаємося з об&amp;#39;єктивним питанням &amp;laquo;Скільки буде коштувати повністю готовий будинок?&amp;raquo;. Відповідь на це питання залежатиме від Ваших уявлень про рівень комфорту та якості готового будинку. Рішення &amp;laquo;під ключ&amp;raquo; часто таять у собі невідповідність реального рівня якості матеріалів та кількості виробів та Вашого уявлень про них. Пропонуємо Вам ознайомитись з основними порадами щодо створення дерев&amp;#39;яного будинку в розділі&amp;nbsp;&lt;a href=&quot;http://www.chalet-home.com.ua/chalet_information_article.html&quot;&gt;&amp;laquo;Статті&amp;raquo;&lt;/a&gt;. Ми ж готові поділитися своїм досвідом та рекомендаціями.&lt;/p&gt;\n\n&lt;p&gt;Говорячи про зруб треба пам&amp;#39;ятати, що, як правило, дерев&amp;#39;яна частина зрубу складає в загальній вартості будинку близько 30-40%. Інші витрати майбутній власник несе на проектуванні будинку, вимогливих роботах, фундаменті, покрівлі, столярних виробах, оздоблювальних матеріалах, інженерних рішеннях та комунікаціях, облаштуванні ділянки &amp;ndash; на всьому тому, що необхідно при будівництві будь-якого будинку, у тому числі і дерев&amp;#39;яного. Тому, вартість зрубу побудованого ручним способом відрізнятиметься від вартості дерев&amp;#39;яного будинку, побудованого за іншою технологією, не тільки вартістю дерев&amp;#39;яної частини, але й більшою мірою всіма іншими рішеннями та матеріалами необхідними для повного завершення будинку.&lt;/p&gt;\n\n&lt;p&gt;Одним з найпоширеніших є питання: &amp;laquo;скільки у Вас коштує 1 м2 будинку?&amp;raquo;. Стосовно будинку питання не коректне і не містить відповіді. Вартість залежить від географії будівництва, типу ґрунту, якості матеріалів, самого проекту, часу будівництва та ще багато кількості факторів. Не варто будувати ілюзій, низька ціна один із найпростіших і працюючих способів &amp;laquo;розвести&amp;raquo; клієнта. Казка про кашу з сокири дуже яскрава аналогія - можна зварити кашу з сокири, але потім доведеться наколоти дров, наносити води, додати пшоно і масло. У житті казки велика рідкість. Простіше зіграти в лотерею - ризик втратити пару рублів не великий.&lt;/p&gt;\n\n&lt;p&gt;Основні моменти, на яких можна заощадити при &amp;laquo;ціні під ключ&amp;raquo;:&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;зниження ціни та завищення обсягів;&lt;/li&gt;\n	&lt;li&gt;не обумовлюється якість;&lt;/li&gt;\n	&lt;li&gt;не включається частина витрат, які будуть виставлені надалі;&lt;/li&gt;\n	&lt;li&gt;нерозуміння замовником того, що саме включено до &amp;laquo;під ключа&amp;raquo;;&lt;/li&gt;\n	&lt;li&gt;самообман замовника та бажання заплатити та отримати все готове вчасно та якісно &amp;ndash; як диктує логіка, таке рішення має коштувати не дешево.&lt;/li&gt;\n&lt;/ul&gt;\";}', ''),
(24, 13, 0, 'images', 'section-1', 'all', 1, 'a:1:{s:2:\"uk\";s:0:\"\";}', 'a:1:{s:2:\"uk\";s:73:\"Каркасні будинки  по технології Post and Beam\";}', ''),
(25, 13, 0, 'images', 'section-2', 'all', 2, 'Section 2', 'a:1:{s:2:\"uk\";s:76:\"Технологія дерев&#039;яних будинків Post and Beam\";}', ''),
(27, 13, 0, 'textarea_multi', 'section-3', 'all', 3, 'a:1:{s:2:\"uk\";s:47:\"Переваги будинків Post and Beam\";}', 'a:1:{s:2:\"uk\";s:2757:\"&lt;p&gt;Якщо порівнювати збудовані будинки за цією технологією з класичними будинками, то можна виділити деякі з плюсів у будівництві. Основні з них:&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Немає усадки після побудови. Несучі елементи будинку &amp;ndash; стійки, які розташовані вертикально. У процесі висихання деревина не даватиме усадку.&lt;/li&gt;\n	&lt;li&gt;Швидкість зведення. Будинки побудовані за даною технологією, зводяться з нуля під дах, за 1-2 тижні, що дає можливість вкластися навіть у найстисліші терміни. Терміни внутрішніх робіт залежать від обсягу та побажань.&lt;/li&gt;\n	&lt;li&gt;Міцність та стабільність. Ці переваги досягаються за рахунок виконання ручної обробки, що не порушує верхні шари дерева, завдяки чому воно зберігає природний захист до навколишнього середовища.&lt;/li&gt;\n	&lt;li&gt;Зведення будинків будь-якої складності. Завдяки технології Post and Beam ви зможете скласти будь-який план і він буде втілений в реальність нашою командою фахівців.&lt;/li&gt;\n	&lt;li&gt;Теплоізоляція на належному рівні. У каркасі перегородок можна використовувати різні види теплоізоляційних матеріалів. Вони можуть бути як штучні (мінеральна вата), так і натуральні (льяний утеплювач, овеча вовна).&lt;/li&gt;\n	&lt;li&gt;Можливість створення пасивного будинку. Ця перевага допоможе заощадити на опаленні або взагалі відмовитися від опалення приміщення, без втрати комфортності перебування в ньому.&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;Це лише невеликий перелік переваг цих будинків. У плані оздоблення також немає обмежень. Ви можете використовувати будь-який матеріал для обробки.&lt;/p&gt;\";}', ''),
(28, 13, 0, 'images', 'section-4', 'all', 4, 'Section 4', 'a:1:{s:2:\"uk\";s:82:\"Будування будинків під ключ від компанії Chalet\";}', ''),
(29, 16, 0, 'textarea_multi', 'section-1', 'all', 1, 'a:1:{s:2:\"uk\";s:0:\"\";}', 'a:1:{s:2:\"uk\";s:375:\"&lt;p&gt;Важливо пам&amp;#39;ятати, що саме в будівництві зрубу необхідно максимально врахувати всі конструктивні особливості одночасно, оскільки подальше перепланування дерев&amp;#39;яного будинку обмежене.&lt;/p&gt;\";}', ''),
(31, 15, 0, 'textarea_multi', 'section-1', 'all', 1, 'a:1:{s:2:\"uk\";s:0:\"\";}', 'a:1:{s:2:\"uk\";s:450:\"&lt;p&gt;Будівництво зрубу досить складний процес і людині, далекій від дерев&amp;#39;яного будівництва, іноді складно зрозуміти, чому будинки, збудовані різними компаніями за одним проектом, по-перше, мають різну вартість, а, по-друге, через кілька&lt;/p&gt;\";}', ''),
(32, 15, 0, 'textarea_multi', 'section-2', 'all', 2, 'a:1:{s:2:\"uk\";s:20:\"Технологія\";}', 'a:1:{s:2:\"uk\";s:2261:\"&lt;p&gt;Сьогодні на ринку представлена ​​велика кількість пропозицій по зрубах будинків з оциліндрованої колоди, а також так званої ручної рубки. При цьому будинки ручної рубки часто пропонують компанії, які готові будувати будинки з будь-яких інших матеріалів. Відсутність спеціалізації означає, що гідну якість такі майстри на всі руки забезпечити не в змозі. Крім того, не так багато компаній, які рубають та монтують зруби на спеціальних виробничих майданчиках або у приміщеннях. Часто вирубка проводиться прямо в лісі, на галявині або на околиці села, або на майданчику біля будинку замовника, збірної на конкретний зруб бригадою, що не може забезпечити належної якості.&lt;/p&gt;\n\n&lt;p&gt;Майстри компанії &amp;quot;Шале&amp;quot; мають багаторічний досвід роботи з проектування та будівництва виключно зрубів ручної роботи. Ми не будуємо за іншими технологіями та з інших матеріалів, але ми дуже добре знаємо те, що ми робимо.&lt;/p&gt;\n\n&lt;p&gt;Ручна теса &amp;ndash; це ручна робота, тобто виготовлення та складання будинку проводиться будівельною бригадою висококваліфікованих фахівців вручну, за допомогою сокир, ножів, бензопил та іншого ручного інструменту.&lt;/p&gt;\n\n&lt;p&gt;Після розробки проекту створення кожного зрубу проходить такі основні етапи:&lt;/p&gt;\";}', ''),
(33, 15, 0, 'textarea_multi', 'section-3', 'all', 3, 'a:1:{s:2:\"uk\";s:102:\"Перший етап – це створення зрубу на території компанії.\";}', 'a:1:{s:2:\"uk\";s:6135:\"&lt;p&gt;Від якості виготовлення зрубу залежить все: мікроклімат будинку, краса будинку, довговічність! Як і всі будівельники рубаних будинків у всьому світі, ми використовуємо ту деревину, яка росте в нашій місцевості та має необхідні характеристики. Ми зводимо зруби з карпатської ялини (смереки). Важливим параметром якості деревини є її щільність, що багато в чому залежить від клімату та місця зростання. Карпати входять до числа сприятливих кліматичних та екологічних регіонів, де дерева ростуть повільно, відстань між річними кільцями мала і від цього деревина щільна. На високих сухих місцях стовбури дерев мають велику щільність, гарну форму та текстуру. Ми особисто відбираємо кожне дерево і беремо тільки ліс зрубаний з найвищої точки над рівнем моря 800-900 метрів. Оскільки ми максимально наближені до району заготівлі лісу, це дає можливість набувати якіснішого та ексклюзивнішого будівельного матеріалу.&lt;/p&gt;\n\n&lt;p&gt;Середній діаметр колод складає 35-40 см, але за бажанням замовника або у зв&amp;#39;язку з архітектурною концепцією проекту будинку, ми маємо можливість запропонувати колоди великого діаметру, аж до 60 см.&lt;/p&gt;\n\n&lt;p&gt;Після доставки колод на територію компанії проводиться очищення кожного ствола від кори ручним ножем, при цьому дерево зберігає свою природну біжність - різницю товщини колоди на його початку та наприкінці. Така обробка дерева вигідно відрізняються від оциліндрованих колод, в яких зрізається найцінніша частина деревини. Ще в давнину було помічено, що пиляна деревина більш схильна до зволоження та загнивання, оскільки порушується структура волокон дерева &amp;ndash; вони перерізаються. Колоди ж оброблені ножем або сокирою вздовж волокон, зберігають захисні властивості деревини, її природний вигляд і роблять зруб довговічним.&lt;/p&gt;\n\n&lt;p&gt;Далі деревина охороняється тимчасовим антисептиком, який гарантує захист дерева від плісняви ​​та шкідників під час рубання будинку.&lt;/p&gt;\n\n&lt;p&gt;Створення зрубу проходить з використанням важкої будівельної техніки, оскільки кожна колода в будинку може бути довжиною до 12 метрів і важити понад тонну.&lt;/p&gt;\n\n&lt;p&gt;Канадська рубка&lt;/p&gt;\n\n&lt;p&gt;Існує кілька методів рубки зрубів, що відрізняються не тільки на вигляд і технологічним особливостям, але і в процесі експлуатації будинку. Ми застосовуємо канадський метод рубки, при якому виробляється високоточне припасування колод, зазори між колодами відсутні, чаша має трапецієподібну форму, стіни виглядають суцільним масивом, утеплювач залишається невидимим. Відсутність щілин між колодами досягається навіть завдяки використанню спеціального розмічального пристосування. Колоди лягають один до одного і кожен ряд враховує нерівності та особливості нижнього ряду, створюючи щільний та точний стик.&lt;/p&gt;\n\n&lt;p&gt;Більшість будівельників зрубів в Україні, зокрема й виробники оциліндрованої колоди, традиційно рубають у &amp;laquo;російську чашу&amp;raquo;. Існують важливі відмінності при рубанні в російську та канадську чашку для круглої колоди. Основною відмінністю канадської чашки є наявність затесу. Будинки, побудовані за цими двома технологіями, легко розрізнити навіть візуально за затесами в районі перерубів.&lt;/p&gt;\n\n&lt;p&gt;Проаналізуємо процеси рубки російської та канадської чашок. Для Вашої зручності наводимо схеми, що відображають по 3 етапи життя зрубу для канадської та російської чаш. Розглянемо по порядку.&lt;/p&gt;\";}', '');
INSERT INTO `wl_sections` (`id`, `alias_id`, `content_id`, `type`, `name`, `access`, `position`, `title`, `value`, `attr`) VALUES
(30, 16, 0, 'textarea_multi', 'section-2', 'all', 2, 'a:1:{s:2:\"uk\";s:24:\"Проектування\";}', 'a:1:{s:2:\"uk\";s:9286:\"&lt;p&gt;Початковим етапом при створенні дерев&amp;#39;яного будинку, як і будь-якого іншого будинку, є підготовчий етап будівництва. У цей час вивчається земельна ділянка, створюється карта висот, вивчаються властивості ґрунтів, кліматична ситуація у місці будівництва, вибирається тип та проект будинку з урахуванням побажань та переваг всіх членів сім&amp;#39;ї. Вже на цьому етапі слід продумати, як співвіднести розміри майбутніх господарських приміщень та житлових кімнат, щоб досягти максимуму зручностей проживання та переміщення по дому.&lt;/p&gt;\n\n&lt;p&gt;Будівництво будинку може вестись за типовим або індивідуальним проектом. Типові проекти, можна придбати в різних організаціях так і в проектних інститутах, а в даний час вони мають і видавництва, що випускають літературу з будівництва. Однак будь-який проект ще потрібно правильно &amp;laquo;посадити&amp;raquo; на Вашу ділянку, дотримуючись пожежних, санітарних та інших вимог. Крім цього наявність геології (карти ґрунтів) дозволить спроектувати правильний тип фундаменту, зберігаючи Ваші гроші від непотрібних витрат, дозволивши при цьому отримати міцний та надійний будинок.&lt;/p&gt;\n\n&lt;p&gt;Оскільки будівництво дерев&amp;#39;яних будинків та його культура в нашій країні тільки розвивається, вибір вдалого проекту дерев&amp;#39;яного будинку, а тим більше зрубу ручного теса, завдання не просте, на відміну від таких країн як США, Канада, Франція та Словаччина, де збережені традиції будівництва зрубів. Крім цього в архітектурі будівництва дерев&amp;#39;яних будинків повинні знайти відображення особливості природного ландшафту, клімату, місцевих традицій, а також насамперед побажання самого забудовника. Тому перевагу слід надавати індивідуальним проектам. Це, у свою чергу, дозволить більш серйозну увагу приділити покращенню естетичних якостей дерев&amp;#39;яних будинків, сприятиме виявленню специфіки зовнішнього вигляду кожного будинку окремо, а також дасть змогу відійти від утилітарності. Чим складніший рельєф ділянки, тим більше виправдана розробка індивідуального проекту.&lt;/p&gt;\n\n&lt;p&gt;При виборі проекту слід враховувати орієнтацію будівель на світлі. Орієнтація житлових будинків має забезпечувати найкращі умови проживання у зимовий та весняно-осінній періоди та не допускати перегріву влітку. Найбільш сприятлива орієнтація житлових приміщень &amp;ndash; південний та південно-східний напрямки. Орієнтація всіх житлових кімнат на один бік не рекомендується.&lt;/p&gt;\n\n&lt;p&gt;Велику роль при проектуванні будинку відіграють особливості ділянки, призначеної для забудови. На маленькій ділянці будувати великий будинок недоцільно, а на великій маленький будинок буде безглуздо.&lt;/p&gt;\n\n&lt;p&gt;При виборі розмірів будинку та його планування слід враховувати склад сім&amp;#39;ї та звички кожного її члена. Вчені підрахували, що об&amp;#39;єктивно на одну особу має припадати 30-40 кв.м. загальної площі, що дозволяє гармонійно сприймати житловий простір. При меншій площі людина почувається сором&amp;#39;язливо, а при більшій втрачає відчуття комфорту.&lt;/p&gt;\n\n&lt;p&gt;Об&amp;#39;єктивним показником оптимального розміру будинку є час переходу з одного приміщення до іншого. Якщо воно становить понад 30 сік, то такий будинок викликатиме почуття дискомфорту та втому. У реальному житті час на перехід з однієї кімнати в іншу має становити не більше ніж 10-15 сек. Саме тому не рекомендують будувати будинки зі складними переходами та галереями, переміщення якими займає багато часу.&lt;/p&gt;\n\n&lt;p&gt;Індивідуальний будинок від міської квартири відрізняється наявністю двох окремих зон: житлової та господарської, які мають бути розділені між собою. Житлову зону поділяють на денну та нічну. У одноповерхових будинках цей поділ є досить умовним, але у дворівневому житлі, яким зазвичай і є зруби, зонування відбувається мимоволі.&lt;/p&gt;\n\n&lt;p&gt;Дійсно, зазвичай у двоповерховому чи мансардному будинку зона нічного перебування розташована на другому поверсі, і вдень її відвідують рідко. Там, як правило, розміщують спальні, дитячі кімнати та вбиральні. Також у нічній зоні бажано розмістити додаткові гігієнічні приміщення, ванни та туалети. До нічної зони зазвичай примикають балкони, що служать для відпочинку у вечірній час.&lt;br /&gt;\nУ денній зоні зазвичай влаштовують хол, загальну кімнату з каміном, кухню та їдальню. Тут же дублюють гігієнічні приміщення. Як правило, це &amp;laquo;гостяні санвузли&amp;raquo;. Тому, крім унітазу, там бажано розташовувати душову кабіну. До житлової зони примикають веранди або тераси, які в теплу пору року є місцем відпочинку та розваг. Бажано на момент проектування продумати сценарій відпочинку у таких місцях. Тоді там можуть виникнути зручні та функціональні місця для барбекю чи міні басейни.&lt;/p&gt;\n\n&lt;p&gt;Проектуючи свій будинок, краще звернутися до хороших архітекторів, які працюють саме з дерев&amp;#39;яними будинками. Як правило, такі архітектори мають достатній досвід і зможуть підібрати найбільш комфортне співвідношення розмірів площ приміщень, висоти стель, ширини сходових прорізів, висоти сходів, розмірів вікон та інших архітектурних елементів, які в період експлуатації будинку створять гармонію внутрішнього світу.&lt;/p&gt;\";}', ''),
(34, 15, 0, 'images', 'section-4', 'all', 4, 'Section 4', '', ''),
(36, 15, 0, 'textarea_multi', 'section-5', 'all', 5, 'a:1:{s:2:\"uk\";s:34:\"Перший етап - Рубка\";}', 'a:1:{s:2:\"uk\";s:3216:\"&lt;p&gt;Зруб щойно виготовлений і стоїть на майданчику будівельної компанії. Зовнішній вигляд обох варіантів чудовий: зазори мінімальні, зовнішній вигляд приємний.&lt;br /&gt;\nЕтап Усихання. Минуло 1-2 роки. За цей час у зрубі, вірніше вже у дерев&amp;#39;яному будинку на Вашій ділянці, відбулися важливі зміни, пов&amp;#39;язані з усиханням дерев&amp;#39;яних конструкцій. Для інформації: залежно від вихідної вологості колод у процесі усування відбувається зменшення діаметра колод на 5-10%. Відповідно змінюються форми чаш, зазори у чашках та пазах. Зрозуміло, усиханні піддаються чашки обох типів, і в російській чашці і в канадській з&amp;#39;являються додаткові зазори, зруби осідають, заповнюючи простору, що утворилися.&lt;br /&gt;\nЕтап Осаду. Звичайно ж колоди не можуть &amp;quot;зависнути&amp;quot; в повітрі, як було показано на етапі Усушка (етап Усушка був введений штучно для зручності розуміння Вами процесу усушки) і вони осядуть, займаючи простір, що звільнився. Але тут російська і канадська чашки поводяться по-різному. Якщо в російській чаші після усадки верхньої колоди утворюються досить великі зазори, які доведеться затикати льоном або клоччям, то в канадській чашці, за рахунок наявності затей і трикутної форми чаші відбудеться заклинювання зазорів, що утворилися, збережеться тепла і, що важливо, красива перерубка.&lt;/p&gt;\n\n&lt;p&gt;Створення зрубу здійснюється відповідно до стандартів для будівництва рубаних будинків, розроблених&lt;a href=&quot;http://logassociation.org/resources/standards.php&quot;&gt; Міжнародною Асоціацією Рублених будинків (Канада)&lt;/a&gt; та під керівництвом інженера, який відповідає за весь зруб. Створення зрубу займає близько 3-4 місяців, залежно від проекту. Після цього зводити покрівельну конструкцію, отвори для електроінсталяції, проходять перевірку столярні елементи.&lt;/p&gt;\";}', ''),
(37, 15, 0, 'textarea_multi', 'section-6', 'all', 6, 'a:1:{s:2:\"uk\";s:111:\"Другий етап – розбирання зрубу та доставка на місце монтажу.\";}', 'a:1:{s:2:\"uk\";s:910:\"&lt;p&gt;Після того як зруб зібраний, а фундамент на місці його установки готовий, зруб обробляється складами, що відбілюють для того щоб підкреслити структуру дерева і надати йому унікальний природний вигляд. Зруб демонтується за допомогою крана, позначається кожна його частина та перевозиться до місця монтажу спеціальною технікою. Розвантаження окремих частин зрубу провадиться краном на тимчасовому майданчику біля місця монтажу майбутнього будинку. Як правило, цей етап займає 1-2 тижні.&lt;/p&gt;\";}', ''),
(38, 15, 0, 'textarea_multi', 'section-7', 'all', 7, 'a:1:{s:2:\"uk\";s:53:\"Третій етап – збирання зрубу\";}', 'a:1:{s:2:\"uk\";s:1656:\"&lt;p&gt;Складання зрубу дуже важливий і відповідальний етап будівництва дерев&amp;#39;яного будинку. Навіть чудово зрубаний будинок можна зіпсувати неякісним складанням, а довговічність дерев&amp;#39;яного будинку залежить багато в чому від дотримання правильної технології зведення зрубу. Саме тому збирання зрубу проводити тільки ті майстри, які його рубали &amp;ndash; це кваліфіковані теслярі, які досконало знають свою справу. Вони не тільки якісно зберуть будинок та зроблять найбільш відповідальні монтажні роботи, але й дадуть рекомендації щодо подальшої експлуатації будинку.&lt;/p&gt;\n\n&lt;p&gt;Кожна колода ізолюється за допомогою натурального льону та зруб збирається заново вже на фундаменті. Між зрубом і фундаментом стелиться гідроізоляція і укладається дубовий брус, на який і ставиться сам зруб - така технологія забезпечує те, що дерев&amp;#39;яні будинки стоять довго і не вимагають складного догляду.&lt;/p&gt;\";}', ''),
(39, 15, 0, 'textarea_multi', 'section-8', 'all', 8, 'a:1:{s:2:\"uk\";s:110:\"Четвертий етап - завершення будівництва та оздоблення зрубу\";}', 'a:1:{s:2:\"uk\";s:891:\"&lt;p&gt;Після того, як завершено всі види робіт і підписано протокол приймання та передачі, починається гарантійний період терміном у два роки. Протягом цього періоду ми надаємо гарантійний сервіс. На цьому наше спілкування із клієнтом не закінчується.&lt;br /&gt;\nМи і надалі будемо у Вашому розпорядженні для відповіді на питання, які можуть виникнути з облаштуванням зрубу, довговічність якого при догляді та правильному проведенні поточних ремонтних робіт становить кілька поколінь.&lt;/p&gt;\";}', ''),
(40, 19, 0, 'textarea_multi', 'section-1', 'all', 1, 'Section 1', 'a:1:{s:2:\"uk\";s:315:\"&lt;p&gt;Корисні статті щодо дерев&amp;#39;яного домобудівництва. Деякі аспекти дерев&amp;#39;яного будівництва іноді викликають різні думки, наводимо усі погляди та аргументи.&lt;/p&gt;\";}', ''),
(41, 19, 0, 'textarea_multi', 'section-2', 'all', 2, 'a:1:{s:2:\"uk\";s:67:\"Про дерев&#039;яне житлове будівництво\";}', 'a:1:{s:2:\"uk\";s:2435:\"&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-1.pdf&quot; target=&quot;_blank&quot;&gt;З чого розпочати будівництво дерев&amp;#39;яного будинку&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-2.pdf&quot; target=&quot;_blank&quot;&gt;Проектування дерев&amp;#39;яного будинку&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-7.pdf&quot; target=&quot;_blank&quot;&gt;Проектування дерев&amp;#39;яного будинку 2&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-3.pdf&quot; target=&quot;_blank&quot;&gt;Важливі особливості дерев&amp;#39;яного будинку&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-4.pdf&quot; target=&quot;_blank&quot;&gt;Як не помилитися при виборі будівельної компанії&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-5.pdf&quot; target=&quot;_blank&quot;&gt;Як не переплатити при ремонті та будівництві&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-6.pdf&quot; target=&quot;_blank&quot;&gt;Будівництво дерев&amp;#39;яного будинку (під ключ)&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-8.pdf&quot; target=&quot;_blank&quot;&gt;Будівництво дерев&amp;#39;яного будинку&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-9.pdf&quot; target=&quot;_blank&quot;&gt;Будинок у якому ви житимете&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-10.pdf&quot; target=&quot;_blank&quot;&gt;Про дерев&amp;#39;яний будинок&amp;nbsp;&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-11.pdf&quot; target=&quot;_blank&quot;&gt;Міфи про будівництво дерев&amp;#39;яних будинків&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/1-12.pdf&quot; target=&quot;_blank&quot;&gt;Дерево у будівництві&lt;/a&gt;&lt;/p&gt;\";}', ''),
(42, 19, 0, 'textarea_multi', 'section-3', 'all', 3, 'a:1:{s:2:\"uk\";s:36:\"Фундамент та цоколь\";}', 'a:1:{s:2:\"uk\";s:411:\"&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/2-1.pdf&quot; target=&quot;_blank&quot;&gt;Фундименти при будівництві будинків та котеджів&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.rushome.ru/foundations1.htm&quot; target=&quot;_blank&quot;&gt;Фундаменти для дерев&amp;#39;яних будинків&lt;/a&gt;&lt;/p&gt;\";}', ''),
(43, 19, 0, 'textarea_multi', 'section-4', 'all', 4, 'a:1:{s:2:\"uk\";s:33:\"Дерев&#039;яні стіни\";}', 'a:1:{s:2:\"uk\";s:2759:\"&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-1.pdf&quot; target=&quot;_blank&quot;&gt;Загальні відомості про конструкції дерев&amp;#39;яних будинків&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&amp;nbsp;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-2.pdf&quot; target=&quot;_blank&quot;&gt;Дерев&amp;#39;яні будинки з оциліндрованої колоди, ручної рубки, з профільованого бруса&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-3.pdf&quot; target=&quot;_blank&quot;&gt;Слово про дерево&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-15.pdf&quot; target=&quot;_blank&quot;&gt;Слово про дерево 2&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-4.pdf&quot; target=&quot;_blank&quot;&gt;Казки зимового лісу&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-5.pdf&quot; target=&quot;_blank&quot;&gt;Породи дерева&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-6.pdf&quot; target=&quot;_blank&quot;&gt;Загальна характеристика та основні переваги деревних порід у будівництві&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-7.pdf&quot; target=&quot;_blank&quot;&gt;Яке дерево краще?&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-8.pdf&quot; target=&quot;_blank&quot;&gt;Стіни зрубу&lt;/a&gt; &lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-9.pdf&quot; target=&quot;_blank&quot;&gt;Мох - природний, природний, природний&lt;/a&gt; &lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-10.pdf&quot; target=&quot;_blank&quot;&gt;Макроструктура та категорії деревини&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-11.pdf&quot; target=&quot;_blank&quot;&gt;З якої породи дерева будувати будинок&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-12.pdf&quot; target=&quot;_blank&quot;&gt;Як збирати зруб?&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-13.pdf&quot; target=&quot;_blank&quot;&gt;Дерев&amp;#39;яні зруби&lt;/a&gt; &lt;a href=&quot;http://www.chalet-home.com.ua/articles/3-14.pdf&quot; target=&quot;_blank&quot;&gt;Рубка&lt;/a&gt;&lt;/p&gt;\";}', ''),
(45, 17, 0, 'textarea_multi', 'section-1', 'all', 1, 'Section 1', 'a:1:{s:2:\"uk\";s:423:\"&lt;p&gt;У процесі створення зрубу та життя у ньому у Вас безперечно виникають питання. На питання, що часто ставляться, ми постаралися дати відповіді. Будь ласка, дзвоніть нам, якщо хочете дізнатися більше про зруби ручної роботи.&lt;/p&gt;\";}', ''),
(46, 17, 0, 'textarea_multi', 'section-2', 'all', 2, 'a:1:{s:2:\"uk\";s:77:\"Скільки коштує збудувати рубаний будинок?\";}', 'a:1:{s:2:\"uk\";s:5005:\"&lt;p&gt;Це питання постає перед кожним хто хоче збудувати будинок взагалі і дерев&amp;#39;яний будинок зокрема.&lt;/p&gt;\n\n&lt;p&gt;Як складається кошторис проекту?&lt;/p&gt;\n\n&lt;p&gt;Що впливає на вартість будинку?&lt;/p&gt;\n\n&lt;p&gt;Чому ви не можете мені назвати &amp;laquo;середню&amp;raquo; вартість проекту?&lt;/p&gt;\n\n&lt;p&gt;Назвіть, будь ласка, середню вартість квадратного метра.&lt;/p&gt;\n\n&lt;p&gt;При складанні бюджету проекту ми пропонуємо враховувати такі міркування та факти:&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Перш за все, кожен, хто планує побудувати дерев&amp;#39;яний будинок, повинен розуміти, що ми пропонуємо не старовинні дерев&amp;#39;яні зруби, а сучасні дерев&amp;#39;яні архітектурні споруди, &amp;laquo;живі&amp;raquo; будинки, які завжди будуть зустрічати вас теплом та затишком домашнього вогнища;&lt;/li&gt;\n	&lt;li&gt;На кожному етапі створення цих будинків використовуються найсучасніші технології та будівельні матеріали;&lt;/li&gt;\n	&lt;li&gt;На кожному етапі виконання проектів ми залучаємо до роботи висококваліфікованих фахівців;&lt;/li&gt;\n	&lt;li&gt;При складанні бюджету проекту, треба враховувати кожну дрібницю, кожне архітектурне та технологічне рішення, оздоблювальні матеріали, додаткове обладнання;&lt;/li&gt;\n	&lt;li&gt;Не забувайте, що в остаточну вартість необхідно включати вартість утримання та ремонту: заміна матеріалів покриття, меблювання, опалення, догляд за вікнами тощо.&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;Ми іноді стикаємося з клієнтами, які відмовляються від хороших реалістичних проектів лише тому, що вони впевнені, що можна збудувати будинок високої якості з низьким бюджетом. Будемо реалістами. Завжди потрібно пам&amp;#39;ятати про співвідношення ціна/якість. Деякі підрядники, бажаючи не втратити клієнта, знижують вартість проекту за рахунок:&lt;/p&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Використання дешевих матеріалів.&lt;/li&gt;\n	&lt;li&gt;Використання мало кваліфікованих фахівців.&lt;/li&gt;\n	&lt;li&gt;Пропонуються дешевші технологічні рішення.&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;p&gt;Клієнта не попереджають, &amp;laquo;забувають&amp;raquo; попередити, що йому все одно рано чи пізно доведеться платити.&lt;/p&gt;\n\n&lt;p&gt;Значно прискорить процес інформація розмір бюджету клієнта. Це дозволить виключити масу непотрібних ідей та пропозицій.&lt;/p&gt;\n\n&lt;p&gt;Можливо, Вам буде неприємно почути це, але правда полягає в тому, що повна вартість Вашого проекту буде відома тільки до моменту завершення будівництва.&lt;/p&gt;\n\n&lt;p&gt;Для того щоб уникнути неприємних сюрпризів, необхідно мати якомога повнішу інформацію про Ваш проект. Вивчіть уважно комплект конструктивних креслень та будівельної документації.&lt;/p&gt;\n\n&lt;p&gt;У чому ми можемо бути впевнені на початковій стадії і використовувати як відправну точку, так це вартість зрубу та кроквяної частини з монтажем та доставкою. Саме ця ціна є відправною і у Канадських і Американських компаній з будівництва зрубів. зруба - Комплектація та ціни.&lt;/p&gt;\";}', ''),
(47, 17, 0, 'textarea_multi', 'section-3', 'all', 3, 'a:1:{s:2:\"uk\";s:140:\"Чи можемо ми дати Вам свій проект удома для розрахунку орієнтовної вартості?\";}', 'a:1:{s:2:\"uk\";s:1252:\"&lt;p&gt;Так. Важливо пам&amp;#39;ятати, що проектування зрубів має свої закони та правила. Кожен проект розробляється з урахуванням технології будівництва. Так зокрема створити зруб за проектом, створеним для будівництва з цегли або клеєного бруса, буде дуже проблематично. Потрібно рішення проекту саме у зрубі. Так, ми зможемо надати Вам справедливу оцінку вартості виготовлення дерев&amp;#39;яної частини зрубу. Щодо повної вартості будинку, її неможливо скласти достовірно без повного проекту будинку проведення попередніх вимогливих робіт, але і навіть після цього кошторис буде орієнтовним, оскільки ціни на роботи та матеріали змінюються на той час, коли вони будуть затребувані.&lt;/p&gt;\";}', ''),
(48, 17, 0, 'textarea_multi', 'section-4', 'all', 4, 'a:1:{s:2:\"uk\";s:74:\"Скільки простоїть дерев&#039;яний будинок?\";}', 'a:1:{s:2:\"uk\";s:1974:\"&lt;p&gt;Немає причин, через які дерев&amp;#39;яна конструкція будинку не може існувати без жодного перебільшення вічно або, принаймні, сотні років, що набагато довше за той термін, протягом якого ми плануємо ним користуватися. Правильне проектування зрубу, гарне розуміння та використання способів захисту дерева від псування та вогню дозволяє розраховувати на те, що сучасні зруби стоятимуть стільки, скільки ми забажаємо. Можливо, найдавнішими з нині існуючих дерев&amp;#39;яних будівель у Європі є норвезькі дерев&amp;#39;яні церкви з кутовими підпорами. З сотень таких церков, зведених у 12-му та 13-му століттях, збереглося 25 -30. Цікаво відзначити, що сьогодні все яскравіше простежується тенденція морального старіння. Це стосується і будівництва, з&amp;#39;являються нові матеріали, проекти, стилі. Будинки збудовані 20-30 років тому вже не відповідають сучасним уявленням про комфорт та красу. Проте дерев&amp;#39;яні зруби залишаються поза модою &amp;ndash; вони практично не зазнали змін за останні сторіччя. Це дає підстави вважати, що зруб побудований сьогодні буде сучасним і через 50-100 років.&lt;/p&gt;\";}', ''),
(49, 17, 0, 'textarea_multi', 'section-5', 'all', 5, 'a:1:{s:2:\"uk\";s:75:\"Чи правда, що дерев&#039;яні будинки горять?\";}', 'a:1:{s:2:\"uk\";s:1425:\"&lt;p&gt;Щоправда. Але є кілька моментів, які слід пам&amp;#39;ятати. Підпалити можна абсолютно будь-який будинок, і причина займання в переважній більшості випадків це внутрішнє займання в будинку через порушення вимог і правил пожежної безпеки. А жити в будинку з будь-якого матеріалу, який пережив пожежу, неможливо: запах пожежі не усувається, деформація несучих конструкцій від температури пожежі робить його подальшу експлуатацію неможливою. У разі пожежі основне завдання це залишити палаюче приміщення якнайшвидше. Як у випадку кам&amp;#39;яного так дерев&amp;#39;яного будинку це можна здійснити. Хорошою аналогією щодо вогнезахисту є автомобілі. Автомобіль згоряє за 2-3 хвилини, і згасити його практично неможливо, проте це не заважає нам купувати та експлуатувати автомобілі.&lt;/p&gt;\";}', ''),
(50, 17, 0, 'textarea_multi', 'section-6', 'all', 6, 'a:1:{s:2:\"uk\";s:88:\"Чи небезпечні тріщини, що з&#039;являються в зрубі?\";}', 'a:1:{s:2:\"uk\";s:2248:\"&lt;p&gt;Колоди з яких будують зруб мають природну вологість. Протягом двох років після монтажу зрубу, відбувається висихання деревини або природне усадження будинку. Причому це природний процес притаманний будь-якій споруді, у тому числі й кам&amp;#39;яним будинкам, які теж дають усадку протягом першого року. Якщо дерев&amp;#39;яний будинок побудований з дотриманням усіх технологій, процес усадки не вимагає додаткової уваги і не супроводжується незручностями для господарів. Крім регулювання вертикальних елементів таких як колони, якщо вони є в зрубі. Так як усихання дерева поперек волокон значніше, ніж уздовж волокон, стіни і колони змінюють розміри по-різному. Якщо в будівництві будинку не врахувати цей момент, то це дійсно може спричинити неприємні наслідки.&lt;br /&gt;\nТріщини, які з&amp;#39;являються у зрубі, не впливають на теплоту та міцність будинку, якщо він збудований фахівцями. Залишати чи конопатити тріщини &amp;ndash; виключно справа Вашого смаку. Деякі віддають перевагу натуральному, автентичному вигляду дерева з тріщинами, іншим подобається ідеальна поверхня колоди. Вибирати &amp;ndash; тільки Вам. Для зменшення кількості та розміру тріщин важливо дотримуватися технології будівництва зрубу та процесів його усадки.&lt;/p&gt;\";}', ''),
(51, 17, 0, 'textarea_multi', 'section-7', 'all', 7, 'a:1:{s:2:\"uk\";s:94:\"Який ліс найкраще використовувати для будівництва?\";}', 'a:1:{s:2:\"uk\";s:773:\"&lt;p&gt;Для будинків ручної рубки краще використовувати ліс північних районів, гірських районів. Ліс там росте в суворіших умовах - щільніше деревина, менше течіння. Будинок із такого лісу простоїть довше. Однак важливо пам&amp;#39;ятати, що неякісна рубка навіть з ідеального стройового лісу не дозволить створити якісний зруб, а неякісний монтаж навіть добре зрубаного будинку вплине на кінцевий результат дуже серйозно.&lt;/p&gt;\";}', ''),
(52, 17, 0, 'textarea_multi', 'section-8', 'all', 8, 'a:1:{s:2:\"uk\";s:121:\"Яка різниця між будинками ручного теса та оциліндрованою колодою?\";}', 'a:1:{s:2:\"uk\";s:1676:\"&lt;p&gt;Відмінностей багато незважаючи на подібність технологій і матеріалу, що здається. Основні їх такі. Кожна колода для зрубів ручної роботи вибирається і готуємо для зрубу індивідуально і лише найвищої якості. Так як колода не циліндрується всі його дефекти будуть видно в зрубі, якщо не ставитись до цього серйозно; Одна з основних відмінностей &amp;ndash; це розмір колод. У ручному тесі застосовують колоди діаметром 35-60 см. довжиною до 12 метрів. У випадку оциліндрованої колоди, стовбури зазвичай мають стандартну довжину 6 метрів і діаметр 18-24 см. Все це впливає на характеристики зрубу, здатність зберігати тепло; Кожен зруб ручної роботи унікальний і неповторний, як і всі ми. Цікаво, що різниця у вартості зрубу ручної роботи та будинку з оциліндрованої колоди багато в чому полягає лише у вартості дерев&amp;#39;яної частини (власне самого зрубу), всі інші рішення по завершенню будинку однакові в обох випадках.&lt;/p&gt;\";}', ''),
(53, 17, 0, 'textarea_multi', 'section-9', 'all', 9, 'a:1:{s:2:\"uk\";s:121:\"Яка різниця між будинками ручного теса та оциліндрованою колодою?\";}', 'a:1:{s:2:\"uk\";s:803:\"&lt;p&gt;У технологічності. Оціліндрована колода та клеєний брус виготовляється на промисловому устаткуванні. Не потрібна висока кваліфікація робітників. При виготовленні дерев&amp;#39;яного будинку ручної рубки, навпаки, необхідна висока кваліфікація робітників, оскільки кожна колода індивідуальна і підганяється один до одного вручну. Більше про особливості будівництва за різними технологіями читайте у розділі &amp;laquo;Статті&amp;raquo;.&lt;/p&gt;\";}', ''),
(54, 17, 0, 'textarea_multi', 'section-10', 'all', 10, 'a:1:{s:2:\"uk\";s:107:\"Чому рекомендують використовувати ліс лише зимової рубки?\";}', 'a:1:{s:2:\"uk\";s:668:\"&lt;p&gt;Основні обсяги деревини заготовляються взимку, коли промерзне земля. Ліс можна доставити і заготовити з мінімальним пошкодженням стволів, що особливо важливо у зрубах ручної роботи. Влітку заготівля так само ведеться хоч часом буває, до лісу не заїхати. Більше на тему наявності чи відсутності переваг зимового лісу читайте у розділі &amp;laquo;Статті&amp;raquo;.&lt;/p&gt;\";}', ''),
(55, 17, 0, 'textarea_multi', 'section-11', 'all', 11, 'a:1:{s:2:\"uk\";s:126:\"Чи є різниця як ліс для оциліндрованої колоди та зрубу ручної роботи?\";}', 'a:1:{s:2:\"uk\";s:275:\"&lt;p&gt;Є. Для оциліндрування якість лісу не така істотна, тому що знімається верхній захисний шар і використовується в основному серцевина колоди.&lt;/p&gt;\";}', ''),
(56, 17, 0, 'textarea_multi', 'section-12', 'all', 12, 'a:1:{s:2:\"uk\";s:83:\"Який дах має бути біля дерев&#039;яного будинку?\";}', 'a:1:{s:2:\"uk\";s:570:\"&lt;p&gt;Вигляд фінішного покриття може бути будь-яким. Переважно ж &amp;laquo;важка покрівля&amp;raquo;, так як вона більше навантажує верхні вінці, нижні ж навантажуються вагою стін. При цьому вінці щільніше прилягають один до одного, колода менше &amp;laquo;веде&amp;raquo; по довжині і при усиханні колод менше щілини по пазах.&lt;/p&gt;\";}', ''),
(57, 17, 0, 'textarea_multi', 'section-13', 'all', 13, 'a:1:{s:2:\"uk\";s:27:\"Що таке обсада?\";}', 'a:1:{s:2:\"uk\";s:672:\"&lt;p&gt;Обсада &amp;ndash; це коробки для дверних та віконних отворів, влаштовані таким чином, щоб стіни могли вільно переміщатися щодо коробок. Зверху обов&amp;#39;язковий зазор на усадку. У будинках ручної рубки бажано влаштовувати обсаду з масиву або клеєного бруса спеціальної конструкції для того, щоб мати можливість поставити сучасні &amp;laquo;євровікна&amp;raquo; та двері.&lt;/p&gt;\";}', ''),
(58, 17, 0, 'textarea_multi', 'section-14', 'all', 14, 'a:1:{s:2:\"uk\";s:96:\"Чи можна облицьовувати дерев&#039;яний будинок цеглою?\";}', 'a:1:{s:2:\"uk\";s:677:\"&lt;p&gt;Можна, але обов&amp;#39;язково з вентильованим зазором між дерев&amp;#39;яною стіною та цеглою. При цьому треба дочекатися усадки будинку мінімум два роки. В даний час дерев&amp;#39;яні будинки облицювання не вимагають, оскільки існує велика кількість вогні - біологічних захисних і тонувальних покриттів. Та й уся краса натурального дерева ховається за зовнішнім муром.&lt;/p&gt;\";}', ''),
(59, 17, 0, 'textarea_multi', 'section-15', 'all', 15, 'a:1:{s:2:\"uk\";s:77:\"Чи може зруб мати усі сучасні комунікації?\";}', 'a:1:{s:2:\"uk\";s:882:\"&lt;p&gt;Вентиляція, газ, опалення, електрика, водопровід та каналізація &amp;ndash; всі необхідні комунікації чудово функціонують у дерев&amp;#39;яному будинку. Більше того, вся проводка може бути зроблена прихованою, як у кам&amp;#39;яному будинку. Технологією передбачено можливість технічного обслуговування комунікацій. Важливо грамотно спланувати всю інженерну частину до початку будівництва, щоб під час монтажу дерев&amp;#39;яної частини було зроблено всі необхідні підготовчі роботи.&lt;/p&gt;\";}', ''),
(60, 22, 0, 'textarea_multi', 'section-1', 'all', 1, 'Section 1', 'a:1:{s:2:\"uk\";s:797:\"&lt;p&gt;Україна:&amp;nbsp;&lt;br /&gt;\nВіталій Дулкай&lt;br /&gt;\nГенеральний директор&lt;br /&gt;\n&lt;a href=&quot;tel:+38 067 310 2696&quot;&gt;тел.: +38 067 310 2696&lt;/a&gt;&lt;br /&gt;\n&lt;a href=&quot;mailto:log@chalet-home.com.ua&quot;&gt;log@chalet-home.com.ua&lt;/a&gt;&lt;br /&gt;\n&lt;br /&gt;\nПредставництво Східна Європа&lt;br /&gt;\nСловаччина, Польща, Чехія, Угорщина&lt;br /&gt;\n&lt;a href=&quot;tel:+421948363835 &quot;&gt;+421948363835&amp;nbsp;&lt;/a&gt;&lt;br /&gt;\n&lt;a href=&quot;mailto:log@chalet-home.com.ua&quot;&gt;log@chalet-home.com.ua&lt;/a&gt;&lt;br /&gt;\n&lt;a href=&quot;mailto:chalet@zoznam.sk&quot; target=&quot;_blank&quot;&gt;chalet@zoznam.sk&lt;/a&gt;&lt;/p&gt;\";}', '');

-- --------------------------------------------------------

--
-- Table structure for table `wl_services`
--

DROP TABLE IF EXISTS `wl_services`;
CREATE TABLE IF NOT EXISTS `wl_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT 'службова назва (папки)',
  `title` text NOT NULL COMMENT 'публічна назва',
  `description` text NOT NULL,
  `table` text NOT NULL COMMENT 'службова таблиця',
  `group` tinytext NOT NULL,
  `multi_alias` tinyint(1) NOT NULL,
  `version` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_services`
--

INSERT INTO `wl_services` (`id`, `name`, `title`, `description`, `table`, `group`, `multi_alias`, `version`) VALUES
(1, 'static_pages', 'Статичні сторінки', '', 's_static_page', 'page', 1, '2.2'),
(2, 'library', 'Бібліотека статей (Блог)', 'Бібліотека статей із підтримкою категорій. Мультимовна.', 's_library', 'page', 1, '2.7.1');

-- --------------------------------------------------------

--
-- Table structure for table `wl_sitemap`
--

DROP TABLE IF EXISTS `wl_sitemap`;
CREATE TABLE IF NOT EXISTS `wl_sitemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_sha1` char(40) NOT NULL,
  `link` text NOT NULL,
  `alias` smallint(6) DEFAULT NULL,
  `content` int(11) DEFAULT NULL,
  `code` smallint(5) UNSIGNED DEFAULT NULL,
  `data` text,
  `time` int(11) NOT NULL,
  `changefreq` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT 'daily',
  `priority` tinyint(2) NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`),
  UNIQUE KEY `link_sha1` (`link_sha1`),
  KEY `content` (`alias`,`content`) USING BTREE,
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_sitemap`
--

INSERT INTO `wl_sitemap` (`id`, `link_sha1`, `link`, `alias`, `content`, `code`, `data`, `time`, `changefreq`, `priority`) VALUES
(1, 'b28b7af69320201d1cf206ebf28373980add1451', 'main', 1, 0, 200, '', 1655369367, 'daily', 5),
(2, '601d081fe9c0131b6a90efe9e39683fb9557241f', 'assets/fonts/roboto-v29-latin_cyrillic-regular.woff2', 0, 0, 404, '', 1655409746, 'daily', 5),
(3, '3ef2970d9423dfd6c4d55b5f0f16aa870eca295a', 'assets/fonts/roboto-v29-latin_cyrillic-regular.woff', 0, 0, 404, '', 1655409747, 'daily', 5),
(4, '97dc1d3069151f2c9bf1d73ac569f6b171498f6b', 'script/script.js', 0, 0, 404, '', 1655410802, 'daily', 5),
(5, 'ea567d6ad6ecb043fed9d2b842171555f687e1b7', 'assets/fonts/roboto-v29-latin_cyrillic-700.woff2', 0, 0, 404, '', 1655410815, 'daily', 5),
(6, '7b40ea2e9e8399ff37289e24106f0783a3631da2', 'assets/fonts/roboto-v29-latin_cyrillic-700.woff', 0, 0, 404, '', 1655410815, 'daily', 5),
(7, '5761e7955795874dc785fa4a48e0ee5de29acc86', 'admmin', 0, 0, 404, '', 1655489520, 'daily', 5),
(8, '7f08539722e58a425d6880788bc27ceb835adccd', 'assets/fonts/roboto-v29-latin_cyrillic-500.woff2', 0, 0, 404, '', 1655552151, 'daily', 5),
(9, '513431921c47c74bfa8a61bdf9e2aef0fa76b4c9', 'assets/fonts/roboto-v29-latin_cyrillic-500.woff', 0, 0, 404, '', 1655552151, 'daily', 5),
(10, 'dfe8c9622d920e62bbd941ba8a101b7751c5a660', 'assets/img/flags.png', 0, 0, 404, '', 1655552267, 'daily', 5),
(11, '06bd8e894cc2a06f0dfbe80a010a05efefa1154e', 'assets/swiper/swiper-bundle.min.js.map', 0, 0, 404, '', 1655726055, 'daily', 5),
(15, '859a410c14055c11f8c93e4ed850d44ed1b820f4', 'about-us', 10, 0, 200, '', 1655817398, 'daily', 5),
(17, 'd63619e862147c7ff4abf9e3b656c5c5a6bb4b5d', 'our_projects', 11, 0, 200, '', 1655903962, 'daily', 5),
(18, '59bd77272e2de881033464d5013a968190c580d7', 'our_projects/nashi-roboty', 11, -1, 200, '', 1655904133, 'daily', 6),
(19, '54bfe3da0635f88c8d82fd3eaee2a9d7b3ea4440', 'our_projects/vyroby-z-dereva', 11, -2, 200, '', 1655904340, 'daily', 6),
(20, '1588f581a65b15291f53eaa4dc4439846fec7145', 'our_projects/inter039er', 11, -3, 200, '', 1655904516, 'daily', 6),
(21, 'bc1705206429320fd716a4a83825d0552a2a7a13', 'our_projects/zovnishniy-vyhljad', 11, -4, 200, '', 1655904591, 'daily', 6),
(22, '36863b747ec73c3ba3b49129a621cb00916730b6', 'our_projects/budivnyctvo-zrubu', 11, -5, 200, '', 1655904657, 'daily', 6),
(23, '47d45594db58c53536676ab1a100f0b50164ed00', 'our_projects/our_projects/vyroby-z-dereva', 0, 0, 404, '', 1655905095, 'daily', 5),
(24, '082f20691e5779942596c95d327440d9cadd6e42', 'our_projects/our_projects/our_projects/vyroby-z-dereva', 0, 0, 404, '', 1655905098, 'daily', 5),
(25, '770445dcf259d1672348917ad25b0db039316511', 'our_projects/our_projects/our_projects/our_projects/zovnishniy-vyhljad', 0, 0, 404, '', 1655905100, 'daily', 5),
(26, 'db3265a89dbe7cdbb1d21b1e6202c119ebfe44f9', 'our_projects/our_projects/our_projects/our_projects/our_projects/zovnishniy-vyhljad', 0, 0, 404, '', 1655905103, 'daily', 5),
(27, '6ed0f711c10f7f656beeadb77e26b88e3ac9615a', 'nashi-roboty', 0, 0, 404, '', 1655905140, 'daily', 5),
(28, 'c2629db5b37ddb326cd526bb3bf26e82b2694c99', 'vyroby-z-dereva', 0, 0, 404, '', 1655905144, 'daily', 5),
(29, 'cf3637d60a314d901a2a24823d01d6816310b7ed', 'our_projects/our_projects/nashi-roboty', 0, 0, 404, '', 1655905213, 'daily', 5),
(30, '4cda536babcf7848eda6f2f0828928bc6b58c00f', 'our_projects/our_projects/our_projects/nashi-roboty', 0, 0, 404, '', 1655905215, 'daily', 5),
(31, '49a2499c00c94faee3da332017d586dfb0c02e59', 'our_projects/our_projects/our_projects/our_projects/nashi-roboty', 0, 0, 404, '', 1655905216, 'daily', 5),
(32, '1afa0555adfc5d1a70a3655aaf81b156a6fd1dd9', 'our_projects/our_projects/budivnyctvo-zrubu', 0, 0, 404, '', 1655906349, 'daily', 5),
(33, '45a9d71cedbe58cc97eac2e5604b46b86f02c994', 'our_projects/nashi-roboty/v-roboti-laznja-za-indyvidualnym-proektom', 11, 1, 200, '', 1655917790, 'daily', 5),
(34, '126102ba559cc623b945fc50ab80b758cb8e9e85', 'our_projects/our_projects/1/v-roboti-laznja-za-indyvidualnym-proektom-19.jpg', 0, 0, 404, '', 1655918209, 'daily', 5),
(35, '4082abf9f99c87d9cb6e69021d1edefd41fe7979', 'our_projects/1/v-roboti-laznja-za-indyvidualnym-proektom-19.jpg', 0, 0, 404, '', 1655918309, 'daily', 5),
(36, '57535586e71e7efb1aec5a4d4709d2d9e59bd50b', 'our_projects/nashi-roboty/u-roboti-maetok-«karybu»', 11, 2, 200, '', 1655920857, 'daily', 5),
(37, '606bf52c0d3558f08e6416bdb4a91b9b1720e654', 'our_projects/nashi-roboty/u-roboti-budynok-myslyvcja-francija', 11, 3, 200, '', 1655921135, 'daily', 5),
(38, '767ba5233fe18b292cd7007044c0c9ccfdd90672', 'our_projects/our_projects/nashi-roboty/u-roboti-maetok-«karybu»', 0, 0, 404, '', 1655921945, 'daily', 5),
(39, '3f7e7e068d5b45e77124c284311dcc55a368a488', 'our_projects/nashi-roboty/v-roboti-laznja-za-indyvidualnym-proektom-1', 11, 4, 200, '', 1655977565, 'daily', 5),
(40, '48b873f380dcdae1e9d4f942d6ca709ad8071967', 'our_projects/nashi-roboty/u-roboti-pryvatnyy-maetok', 11, 5, 200, '', 1655977774, 'daily', 5),
(41, '5e96a81d93177b0bdb349df876953a7717ef2c48', 'our_projects/nashi-roboty/v-roboti-laznja-za-indyvidualnym-proektom-2', 11, 6, 200, '', 1655977942, 'daily', 5),
(42, '0d84d7888aaac040c0a9f271a8e55db40e97f6e2', 'our_projects/nashi-roboty/u-roboti-pryvatnyy-maetok-1', 11, 7, 200, '', 1655978055, 'daily', 5),
(43, '6928677164c980ec29a2674e9c1d0a2aec5148aa', 'our_projects/nashi-roboty/carska-laznja', 11, 8, 200, '', 1655978203, 'daily', 5),
(44, 'a6c73045182b2488d2e8002368cb5f51ba6b34ee', 'our_projects/nashi-roboty/rezydencija-u-karpatakh', 11, 9, 200, '', 1655978333, 'daily', 5),
(45, '6649c79ea2eecd63c2cb2d3c275d83f82c78cbca', 'our_projects/nashi-roboty/bober', 11, 10, 200, '', 1655978478, 'daily', 5),
(46, '2848fa30255f04a3f10a2d528ebd612499367b38', 'our_projects/nashi-roboty/trypillja', 11, 11, 200, '', 1655978679, 'daily', 5),
(47, '02f5b2e6325fff8058a02294861779b2934867cb', 'our_projects/nashi-roboty/shajan', 11, 12, 200, '', 1655978763, 'daily', 5),
(48, '5bcbdbd6204c0f0fa8ac6870c9a84c6c0225aa28', 'our_projects/nashi-roboty/laznja', 11, 13, 200, '', 1655978903, 'daily', 5),
(49, '9886aecfb93300b295a3c866020484eb67649a08', 'our_projects/nashi-roboty/vedmid', 11, 14, 200, '', 1655979001, 'daily', 5),
(50, 'e69afe3db3257f90f2b38b7b8cf6125113e44b91', 'our_projects/nashi-roboty/modul', 11, 15, 200, '', 1655980324, 'daily', 5),
(51, 'f1799ac08e612aa5623458f60de1ce322f3dcc09', 'our_projects/our_projects/inter039er', 0, 0, 404, '', 1655980376, 'daily', 5),
(52, 'f929e427ba7835e3a2b833de8b36f9d88d9c0051', 'our_projects/our_projects/zovnishniy-vyhljad', 0, 0, 404, '', 1655980463, 'daily', 5),
(53, 'd1419f816cef2aeb5e072d9f2707c2c74ebe083c', 'our_projects/nashi-roboty/arena', 11, 16, 200, '', 1655981824, 'daily', 5),
(54, 'd7e9c3c8894d9047012077597c1d7eedd4df88b3', 'our_projects/nashi-roboty/khust', 11, 17, 200, '', 1655981925, 'daily', 5),
(56, '33969cabfa718b81d4239544df85459109a034de', 'our_projects/nashi-roboty/carska-laznja-1', 11, 19, 200, '', 1655984770, 'daily', 5),
(57, '08ed5c4f1683f66bdf50e78e4c777cdd74bf506d', 'our_projects/our_projects/nashi-roboty/arena', 0, 0, 404, '', 1656062133, 'daily', 5),
(58, 'ab93dc192d66993c2dfa0260617d41738ff778cb', 'our_projects/our_projects/nashi-roboty/bober', 0, 0, 404, '', 1656062482, 'daily', 5),
(59, 'ba5bf693f4a83671eebe78177b28136999146409', 'our_projects/nashi-roboty/our_projects/nashi-roboty', 0, 0, 404, '', 1656072413, 'daily', 5),
(60, '8914bf6763d9f46690ed2d6eda99e070c8a84305', 'our_projects/our_projects/nashi-roboty/shajan', 0, 0, 404, '', 1656072468, 'daily', 5),
(61, 'fd9f2488d243736c0cf8c39911af01b84461e5c3', 'our_projects/nashi-roboty/our_projects/budivnyctvo-zrubu', 0, 0, 404, '', 1656072617, 'daily', 5),
(63, '09d25897b725c99ef0f8e02ac8b3e6e41beeb817', 'chalet_log_home', 12, 0, 200, '', 1656079581, 'daily', 5),
(65, '6d8356192f84c0c9c6b53dc9b7ceb613daf2aa08', 'frame_houses', 13, 0, 200, '', 1656081020, 'daily', 5),
(68, 'd4036891c194493056568a8a6c7e0643ea30fd0c', 'prices', 14, 0, 200, '', 1656158500, 'daily', 5),
(70, '30f7a16c51a35741d235f601f42e5792efec4b16', 'technology', 15, 0, 200, '', 1656158760, 'daily', 5),
(71, '056f118278992da3361a3d5ffeb9db40e4db0998', 'design', 16, 0, 200, '', 1656158762, 'daily', 5),
(72, 'e70d28b00dff4d6f1fba4c9d9fea78336b737978', 'chalet-home.com.ua/our_projects/budivnyctvo-zrubu', 0, 0, 404, '', 1656158784, 'daily', 5),
(77, '6e8286189f750918b165436f36adf57b2632ba19', 'chalet_information', 17, 0, 200, '', 1656159447, 'daily', 5),
(81, '3271bedea70bc09e2924f7a3b5780b81b3fea440', 'partners', 21, 0, 200, '', 1656159464, 'daily', 5),
(79, '379e75c850e1334ef7bece52694c2f26cebec78f', 'links', 20, 0, 200, '', 1656159455, 'daily', 5),
(80, 'a9d24446cc1e471bf68005f34aa199e18f46287f', 'articles', 19, 0, 200, '', 1656159456, 'daily', 5),
(83, '9db49a59249eefb6f65231c5b6e215d362e8c358', 'contacts', 22, 0, 200, '', 1656332667, 'daily', 5),
(84, '27d5482eebd075de44389774fce28c69f45c8a75', 'h', 0, 0, 404, '', 1656277280, 'daily', 5),
(85, '310595852b2c2807d7e5f79826aa9556eed34e2d', 'nashi-roboty/our_projects/nashi-roboty', 0, 0, 404, '', 1656278096, 'daily', 5),
(86, 'd503f4c1dc21b3e380e259cc4a87ba06ed3cc90d', 'our_projects/our_projects/nashi-roboty/modul', 0, 0, 404, '', 1656320101, 'daily', 5),
(87, '2c2fe70aa1a75807de52f15959a1bf01c0d014fd', 'chalet_log_home/admin', 12, 0, 200, '', 1656320188, 'daily', 5),
(88, '9929df11ad7e06d288614058914056885007d62d', 'frame_houses/0/frame_houses-98.jpg', 13, 0, 200, '', 1656321485, 'daily', 5),
(89, '71b80a55f5d55dfd205bd429a126334a8dd2dfc0', 'our_projectsinter039er', 0, 0, 404, '', 1656327305, 'daily', 5),
(90, 'e57ffd6cb0a818a19271f464f75dd1d9c89a4207', 'our_projects/nashi-roboty/our_projects/zovnishniy-vyhljad', 0, 0, 404, '', 1656331083, 'daily', 5),
(91, 'bbe22668e5ed3ecb8daab866010fb23473e8dd46', 'our_projects/nashi-roboty/our_projects/our_projects/vyroby-z-dereva', 0, 0, 404, '', 1656331092, 'daily', 5),
(92, '47941db8da39a5e71b5faec46db4cbda7ec46325', 'our_projects/nashi-roboty/our_projects/our_projects/our_projects/inter039er', 0, 0, 404, '', 1656331093, 'daily', 5),
(93, '24bc223c2922f3c31254c2ead8666add3954a454', 'our_projects/nashi-roboty/our_projects/our_projects/our_projects/our_projects/zovnishniy-vyhljad', 0, 0, 404, '', 1656331095, 'daily', 5),
(94, 'a30ec41b4af809e723a7caab0365a3cdda58d52d', 'our_projects/nashi-roboty/our_projects/inter039er', 0, 0, 404, '', 1656331132, 'daily', 5),
(95, '4a415544964bed5b38e313dcd5cfe52c78921f2b', 'our_projects/nashi-roboty/our_projects/our_projects/zovnishniy-vyhljad', 0, 0, 404, '', 1656331134, 'daily', 5),
(96, 'c35a9fc52bb556c79f8fa540df587a2bf465b940', '404', 0, 0, 404, '', 1656334290, 'daily', 5),
(98, '2736fab291f04e69b62d490c3c09361f5b82461a', 'login', 4, 0, 202, '', 1656336540, 'daily', 5),
(99, '3b69635a244b88fce730f79f54311da08024a56a', 'our_projects/dmin', 0, 0, 404, '', 1656337062, 'daily', 5),
(100, '9a297d18f8500ca6ab90b74b31af24ff87488711', 'our_projects/admin', 0, 0, 404, '', 1656337069, 'daily', 5);

-- --------------------------------------------------------

--
-- Table structure for table `wl_sitemap_from`
--

DROP TABLE IF EXISTS `wl_sitemap_from`;
CREATE TABLE IF NOT EXISTS `wl_sitemap_from` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitemap` int(11) NOT NULL,
  `from` text NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sitemap` (`sitemap`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_sitemap_from`
--

INSERT INTO `wl_sitemap_from` (`id`, `sitemap`, `from`, `date`) VALUES
(1, 2, 'http://localhost/chalet-home.com.ua/style/ws__main.css', 1655409746),
(2, 3, 'http://localhost/chalet-home.com.ua/style/ws__main.css', 1655409747),
(3, 4, 'http://localhost/chalet-home.com.ua/', 1655410802),
(4, 4, 'http://localhost/chalet-home.com.ua/', 1655410803),
(5, 4, 'direct link', 1655410815),
(6, 4, 'http://localhost/chalet-home.com.ua/script/script.js', 1655410815),
(7, 5, 'http://localhost/chalet-home.com.ua/style/ws__main.css', 1655410815),
(8, 6, 'http://localhost/chalet-home.com.ua/style/ws__main.css', 1655410815),
(9, 7, 'direct link', 1655489520),
(10, 8, 'http://localhost/chalet-home.com.ua/style/ws__main.css', 1655552151),
(11, 9, 'http://localhost/chalet-home.com.ua/style/ws__main.css', 1655552151),
(12, 10, 'http://localhost/chalet-home.com.ua/assets/intlTelInput/intlTelInput.css', 1655552267),
(13, 11, 'direct link', 1655726055),
(14, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655905095),
(15, 24, 'http://localhost/chalet-home.com.ua/our_projects/our_projects/vyroby-z-dereva', 1655905098),
(16, 25, 'http://localhost/chalet-home.com.ua/our_projects/our_projects/our_projects/vyroby-z-dereva', 1655905100),
(17, 26, 'http://localhost/chalet-home.com.ua/our_projects/our_projects/our_projects/our_projects/zovnishniy-vyhljad', 1655905103),
(18, 26, 'http://localhost/chalet-home.com.ua/our_projects/our_projects/our_projects/our_projects/zovnishniy-vyhljad', 1655905128),
(19, 27, 'http://localhost/chalet-home.com.ua/our_projects', 1655905140),
(20, 28, 'http://localhost/chalet-home.com.ua/our_projects', 1655905144),
(21, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655905205),
(22, 29, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655905213),
(23, 30, 'http://localhost/chalet-home.com.ua/our_projects/our_projects/nashi-roboty', 1655905215),
(24, 31, 'http://localhost/chalet-home.com.ua/our_projects/our_projects/our_projects/nashi-roboty', 1655905216),
(25, 30, 'http://localhost/chalet-home.com.ua/our_projects/our_projects/nashi-roboty', 1655905220),
(26, 29, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655905221),
(27, 29, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655905229),
(28, 32, 'http://localhost/chalet-home.com.ua/our_projects/inter039er', 1655906349),
(29, 32, 'http://localhost/chalet-home.com.ua/en/our_projects/vyroby-z-dereva', 1655906814),
(30, 29, 'http://localhost/chalet-home.com.ua/en/our_projects/nashi-roboty', 1655906925),
(31, 23, 'http://localhost/chalet-home.com.ua/en/our_projects/nashi-roboty', 1655907047),
(32, 29, 'http://localhost/chalet-home.com.ua/en/our_projects/vyroby-z-dereva', 1655907066),
(33, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655916507),
(34, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655916830),
(35, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655916847),
(36, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655916851),
(37, 29, 'http://localhost/chalet-home.com.ua/our_projects/vyroby-z-dereva', 1655916861),
(38, 29, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655917498),
(39, 34, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655918209),
(40, 34, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655918260),
(41, 34, 'direct link', 1655918272),
(42, 34, 'direct link', 1655918300),
(43, 35, 'direct link', 1655918309),
(44, 35, 'direct link', 1655918322),
(45, 35, 'direct link', 1655918324),
(46, 34, 'direct link', 1655918325),
(47, 34, 'direct link', 1655918333),
(48, 34, 'direct link', 1655920683),
(49, 38, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655921945),
(50, 51, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655980376),
(51, 52, 'http://localhost/chalet-home.com.ua/our_projects/inter039er', 1655980463),
(52, 29, 'http://localhost/chalet-home.com.ua/our_projects/zovnishniy-vyhljad', 1655981386),
(53, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655985310),
(54, 29, 'http://localhost/chalet-home.com.ua/cz/our_projects/vyroby-z-dereva', 1655985463),
(55, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1655985511),
(56, 32, 'http://localhost/chalet-home.com.ua/our_projects/vyroby-z-dereva', 1655989763),
(57, 57, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656062133),
(58, 58, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656062482),
(59, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656063749),
(60, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656063971),
(61, 32, 'http://localhost/chalet-home.com.ua/our_projects/vyroby-z-dereva', 1656063982),
(62, 52, 'http://localhost/chalet-home.com.ua/our_projects/budivnyctvo-zrubu', 1656068526),
(63, 29, 'http://localhost/chalet-home.com.ua/our_projects/zovnishniy-vyhljad', 1656068553),
(64, 58, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656068614),
(65, 59, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/bober', 1656072413),
(66, 60, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656072468),
(67, 59, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/arena', 1656072523),
(68, 61, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/shajan', 1656072617),
(69, 61, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/shajan', 1656072654),
(70, 59, 'http://localhost/chalet-home.com.ua/en/our_projects/nashi-roboty/shajan', 1656073697),
(71, 59, 'http://localhost/chalet-home.com.ua/en/our_projects/nashi-roboty/shajan', 1656073704),
(72, 61, 'http://localhost/chalet-home.com.ua/en/our_projects/nashi-roboty/shajan', 1656073707),
(73, 52, 'http://localhost/chalet-home.com.ua/en/our_projects/budivnyctvo-zrubu', 1656075115),
(74, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656078638),
(75, 32, 'http://localhost/chalet-home.com.ua/our_projects/vyroby-z-dereva', 1656078650),
(76, 29, 'http://localhost/chalet-home.com.ua/our_projects/budivnyctvo-zrubu', 1656078699),
(77, 60, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656078716),
(78, 32, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656157718),
(79, 66, 'http://localhost/chalet-home.com.ua/chalet_log_home', 1656158071),
(80, 67, 'http://localhost/chalet-home.com.ua/chalet_log_home', 1656158353),
(81, 69, 'http://localhost/chalet-home.com.ua/prices', 1656158682),
(82, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656158773),
(83, 32, 'http://localhost/chalet-home.com.ua/our_projects/vyroby-z-dereva', 1656158780),
(84, 72, 'direct link', 1656158784),
(85, 52, 'http://localhost/chalet-home.com.ua/our_projects/budivnyctvo-zrubu', 1656158832),
(86, 78, 'http://localhost/chalet-home.com.ua/chalet_information', 1656159448),
(87, 78, 'http://localhost/chalet-home.com.ua/articles', 1656159457),
(88, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656159687),
(89, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656167889),
(90, 32, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656167895),
(91, 52, 'http://localhost/chalet-home.com.ua/our_projects/budivnyctvo-zrubu', 1656167912),
(92, 84, 'http://localhost/chalet-home.com.ua/chalet_log_home', 1656277280),
(93, 84, 'http://localhost/chalet-home.com.ua/chalet_log_home', 1656277286),
(94, 84, 'http://localhost/chalet-home.com.ua/chalet_log_home', 1656277314),
(95, 59, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/khust', 1656278090),
(96, 85, 'direct link', 1656278096),
(97, 85, 'direct link', 1656278150),
(98, 85, 'direct link', 1656278153),
(99, 85, 'direct link', 1656278213),
(100, 85, 'direct link', 1656278251),
(101, 85, 'direct link', 1656278339),
(102, 85, 'direct link', 1656278357),
(103, 85, 'direct link', 1656278365),
(104, 85, 'direct link', 1656278389),
(105, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656279471),
(106, 32, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656279522),
(107, 32, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656319943),
(108, 86, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656320101),
(109, 23, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656327289),
(110, 51, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656327301),
(111, 89, 'direct link', 1656327305),
(112, 89, 'direct link', 1656327384),
(113, 52, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656327389),
(114, 86, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656330972),
(115, 59, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/modul', 1656330985),
(116, 60, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty', 1656330994),
(117, 90, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/shajan', 1656331083),
(118, 91, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/our_projects/zovnishniy-vyhljad', 1656331092),
(119, 92, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/our_projects/our_projects/vyroby-z-dereva', 1656331093),
(120, 93, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/our_projects/our_projects/our_projects/inter039er', 1656331095),
(121, 93, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/our_projects/our_projects/our_projects/inter039er', 1656331125),
(122, 94, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/vedmid', 1656331132),
(123, 95, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/our_projects/inter039er', 1656331134),
(124, 94, 'http://localhost/chalet-home.com.ua/our_projects/nashi-roboty/vedmid', 1656331136),
(125, 96, 'direct link', 1656334290),
(126, 96, 'direct link', 1656334291),
(127, 96, 'direct link', 1656334293),
(128, 96, 'direct link', 1656334355),
(129, 96, 'direct link', 1656334385),
(130, 96, 'direct link', 1656334419),
(131, 96, 'direct link', 1656334547),
(132, 96, 'direct link', 1656334598),
(133, 96, 'direct link', 1656334599),
(134, 96, 'direct link', 1656334612),
(135, 96, 'direct link', 1656334613),
(136, 96, 'direct link', 1656334662),
(137, 96, 'direct link', 1656334662),
(138, 96, 'direct link', 1656334664),
(139, 96, 'direct link', 1656334692),
(140, 96, 'direct link', 1656334734),
(141, 96, 'direct link', 1656334806),
(142, 96, 'direct link', 1656334823),
(143, 96, 'direct link', 1656334825),
(144, 96, 'direct link', 1656334826),
(145, 96, 'direct link', 1656334888),
(146, 96, 'direct link', 1656334938),
(147, 99, 'direct link', 1656337062),
(148, 100, 'direct link', 1656337069),
(149, 100, 'direct link', 1656337080);

-- --------------------------------------------------------

--
-- Table structure for table `wl_statistic_pages`
--

DROP TABLE IF EXISTS `wl_statistic_pages`;
CREATE TABLE IF NOT EXISTS `wl_statistic_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` int(11) DEFAULT NULL,
  `content` int(11) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL,
  `day` int(10) UNSIGNED NOT NULL,
  `unique` int(10) UNSIGNED NOT NULL,
  `views` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `content` (`content`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_statistic_views`
--

DROP TABLE IF EXISTS `wl_statistic_views`;
CREATE TABLE IF NOT EXISTS `wl_statistic_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` int(10) UNSIGNED NOT NULL,
  `cookie` int(10) UNSIGNED NOT NULL,
  `unique` int(10) UNSIGNED NOT NULL,
  `views` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `day` (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_users`
--

DROP TABLE IF EXISTS `wl_users`;
CREATE TABLE IF NOT EXISTS `wl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` text,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `name` text,
  `photo` text,
  `type` smallint(2) NOT NULL DEFAULT '4',
  `status` tinyint(1) NOT NULL DEFAULT '2',
  `language` varchar(2) NOT NULL DEFAULT '',
  `registered` int(11) DEFAULT '0',
  `last_login` int(11) NOT NULL,
  `auth_id` text,
  `password` text,
  `reset_key` text,
  `reset_expires` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_users`
--

INSERT INTO `wl_users` (`id`, `alias`, `email`, `phone`, `name`, `photo`, `type`, `status`, `language`, `registered`, `last_login`, `auth_id`, `password`, `reset_key`, `reset_expires`) VALUES
(1, 'developer', 'developer@webspirit.com.ua', '', 'developer', NULL, 1, 1, 'uk', 1655368081, 1656319874, 'a35c2c8d632084bdc8b2467b3f74d964', '363a750f1e0f1e83927cb19939a2e6fe6c98cc34', NULL, 0),
(2, 'mariia_developer', 'mbodnar548@gmail.com', '0932007937', 'mariia', NULL, 1, 1, 'uk', 1655368141, 1656337261, '4c48bb7c29032ffe349b2aa73bd58cf2', '09faea86ea363bbe984518f9e50cb2e508e78e35', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wl_user_info`
--

DROP TABLE IF EXISTS `wl_user_info`;
CREATE TABLE IF NOT EXISTS `wl_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `field` text NOT NULL,
  `value` text,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_user_permissions`
--

DROP TABLE IF EXISTS `wl_user_permissions`;
CREATE TABLE IF NOT EXISTS `wl_user_permissions` (
  `user` int(11) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wl_user_register`
--

DROP TABLE IF EXISTS `wl_user_register`;
CREATE TABLE IF NOT EXISTS `wl_user_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `do` tinyint(4) NOT NULL,
  `user` int(11) NOT NULL,
  `additionally` text,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_user_register`
--

INSERT INTO `wl_user_register` (`id`, `date`, `do`, `user`, `additionally`) VALUES
(1, 1655368081, 1, 1, NULL),
(2, 1655368141, 1, 2, 'Менеджер: #1 developer'),
(3, 1655368193, 5, 2, 'Змінено ім\'я: \'developer@webspirit.com.ua\' => \'mariia\'. Менеджер: #1 developer'),
(4, 1655368193, 5, 2, 'Змінено uri (alias): \'developerwebspiritcomua\' => \'mariia_developer\'. Менеджер: #1 developer'),
(5, 1655816658, 13, 1, '1. static_pages (2.2)'),
(6, 1655816676, 11, 1, 'static_pages (8)'),
(7, 1655816695, 13, 1, '2. library (2.7.1)'),
(8, 1655816729, 11, 1, 'library (9)'),
(9, 1655817225, 11, 1, 'about-us (10)'),
(10, 1655903696, 11, 1, 'our_projects (11)'),
(11, 1655903727, 12, 1, '9. library. library (2)'),
(12, 1656079492, 11, 1, 'chalet_log_home (12)'),
(13, 1656079638, 11, 1, 'frame_houses (13)'),
(14, 1656158494, 11, 1, 'prices (14)'),
(15, 1656158724, 11, 1, 'technology (15)'),
(16, 1656158754, 11, 1, 'design (16)'),
(17, 1656158929, 11, 1, 'chalet_information (17)'),
(18, 1656158990, 11, 1, 'articles (18)'),
(19, 1656159106, 12, 1, '18. articles. '),
(20, 1656159122, 11, 1, 'articles (19)'),
(21, 1656159166, 11, 1, 'links (20)'),
(22, 1656159460, 11, 1, 'partners (21)'),
(23, 1656159531, 11, 1, 'contacts (22)'),
(24, 1656336818, 17, 2, 'By email. User IP: ::1'),
(25, 1656337261, 17, 2, 'By email. User IP: ::1');

-- --------------------------------------------------------

--
-- Table structure for table `wl_user_register_do`
--

DROP TABLE IF EXISTS `wl_user_register_do`;
CREATE TABLE IF NOT EXISTS `wl_user_register_do` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` text NOT NULL,
  `title_public` text NOT NULL,
  `help_additionall` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_user_register_do`
--

INSERT INTO `wl_user_register_do` (`id`, `name`, `public`, `title`, `title_public`, `help_additionall`) VALUES
(1, 'signup', 1, 'Реєстрація нового користувача', 'Реєстрація користувача', ''),
(2, 'confirmed', 1, 'Підтвердження реєстрації користувача', 'Підтвердження реєстрації', ''),
(3, 'reset_sent', 0, 'Відновлення паролю. Вислано повідомлення із кодом відновлення.', '', ''),
(4, 'reset', 1, 'Відновлення паролю. Пароль змінено. Старий пароль у полі Додатково.', 'Зміна паролю користувачем', 'Попередній пароль у sha1'),
(5, 'profile_data', 0, 'Змінено особисті дані', '', 'field(id) - ід поля, value(text) - попередні дані'),
(6, 'login_bad', 0, 'Невірна спроба авторизації з ІР', '', 'ІР адреса'),
(7, 'profile_type', 1, 'Зміна типу користувача', 'Зміна типу користувача', 'user(id) - хто змінив, old_type(id) - попередній тип'),
(8, 'subscribe', 0, 'Підписався на оновлення', '', ''),
(9, 'reset_admin', 1, 'Відновлення паролю. Пароль змінено. Старий пароль у полі Додатково.', 'Зміна паролю адміністрацією', 'Зміна паролю адміністрацією. Пароль змінено. Старий пароль у полі Додатково.'),
(10, 'user_delete', 0, 'Видалив профіль користувача', 'Видалив профіль користувача', 'Id. Email. User name. Type. Date register'),
(11, 'alias_add', 0, 'Додано головну адресу', 'Додано головну адресу', 'Адреса посилання'),
(12, 'alias_delete', 0, 'Видалена головна адреса', 'Видалена головна адреса', 'Ід. Адреса. Сервіс.'),
(13, 'service_install', 0, 'Install service', 'Install service', 'Id. Service name (version)'),
(14, 'service_uninstall', 0, 'Uninstall service', 'Uninstall service', 'Id. Service name (version)'),
(15, 'login_as_user', 0, 'Вхід до профілю через панель керування', '', 'Хто зайшов'),
(16, 'logout_as_user', 0, 'Вихід з профілю через панель керування', '', 'Хто вийшов'),
(17, 'login_ok', 1, 'Успішна логінація', 'Успішна логінація', 'Спосіб, ip');

-- --------------------------------------------------------

--
-- Table structure for table `wl_user_status`
--

DROP TABLE IF EXISTS `wl_user_status`;
CREATE TABLE IF NOT EXISTS `wl_user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `next` int(11) NOT NULL,
  `load` text NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_user_status`
--

INSERT INTO `wl_user_status` (`id`, `name`, `title`, `next`, `load`, `color`) VALUES
(1, 'confirmed', 'Підтверджений', 0, 'profile', 'success'),
(2, 'registered', 'Новозареєстрований', 1, 'login/confirmed', 'warning'),
(3, 'banned', 'Заблокований', 0, '', 'danger');

-- --------------------------------------------------------

--
-- Table structure for table `wl_user_types`
--

DROP TABLE IF EXISTS `wl_user_types`;
CREATE TABLE IF NOT EXISTS `wl_user_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wl_user_types`
--

INSERT INTO `wl_user_types` (`id`, `name`, `title`, `active`) VALUES
(1, 'admin', 'Адміністратор', 1),
(2, 'manager', 'Менеджер', 1),
(3, 'reserved', 'Резерв', 1),
(4, 'single', 'Користувач', 1),
(5, 'subscribe', 'Підписник', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wl_video`
--

DROP TABLE IF EXISTS `wl_video`;
CREATE TABLE IF NOT EXISTS `wl_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `author` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `site` text COMMENT 'youtube, vimeo',
  `link` text,
  `active` int(1) DEFAULT '1' COMMENT '0 - видалене',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wl_aliases`
--
ALTER TABLE `wl_aliases` ADD FULLTEXT KEY `alias` (`alias`);

--
-- Indexes for table `wl_ntkd`
--
ALTER TABLE `wl_ntkd` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `wl_sitemap`
--
ALTER TABLE `wl_sitemap` ADD FULLTEXT KEY `link` (`link`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
