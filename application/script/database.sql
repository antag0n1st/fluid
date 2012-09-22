-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2012 at 05:20 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fluid`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_published` datetime NOT NULL,
  `slug` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title_2` (`title`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=76 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `content`, `date_created`, `date_published`, `slug`, `featured_image`, `status`) VALUES
(51, 'За нас', 'Ова ќе биде страницата за нас', '<p><strong>Triple S Learning<br /><br /></strong>Triple S Learning е прв и единствен специјализиран тренинг центар во Македонија во областите на продажба, услуга и успех. Знаењето и методологијата кои се содржани во тренинг програмите, кои ги користат и светските лидерски компании, ги издвојува Triple S Learning како единствени и иновативни во современите услови на работење.<br />Тренинг програмите на Triple S Learning се персонализираат и приспособуваат на бизнис потребите на секој клиент. Обезбедуваат насоки, вештини и одговори за секојдневните ситуации, интеракции, можности, проблеми и предизвици на вработените.<br />Triple S Learning е компанија која успешно делува и во Србија, Хрватска и Словенија, каде се вбројува меѓу првите во индустријата на обуки, чии клиенти се најдобриите компании, кои нешто значат на пазарот.<strong><br />&nbsp;<br /><br />Визија<br /></strong>Triple S Learning ќе <strong>иницира промени и развој на луѓето, нивните компании и квалитетот на животот</strong> преку дизајнирање на современи тренинг програми и пренесување на технологиите на работење на светски најуспешните компании и поединци.<br /><br /><strong>Мисија</strong><br />Да обезбедуваме информации и одговори од реалниот свет кои лесно се применуваат во практиката и се претвораат во пари.<br /><br /><strong>Принципи</strong><br />Вработените на Triple S Learning ќе живеат според принципите содржани во тренинг програмите. Инкорпорирањето на филозофијата на тренинг програмите во секојдневното работење ќе допринесе за остварување на долгорочните цели.&nbsp;</p>', '2012-07-19 09:55:50', '2012-07-12 11:22:00', 'za-nas', 'default_featured_image.jpg', 1),
(54, 'Референци', 'Референци', '<p><strong>Дистрибуција на вода<br /><br /></strong></p>\n<ul>\n<li>1992-1999, Стење, Преспа, Капацитет 15 л/с, потопена пумпна станица со усисен цевовод без третман на водата, изградба и одржување.</li>\n</ul>\n<ul>\n<li>1993-1999, Градиште, Охрид, капацитет 5 л/с, за потребите на автокампот, со усисен цевовод на длабочина од 36 метри.</li>\n<li>1998-2001,Ресава, Кавадарци, капацитет 100 л/с, изградба и одржување на потопена пумпна станица за техничка вода наменета за &bdquo;Фени&ldquo;.</li>\n<li>1995-2003, Отешево, капацитет 25 л/с, изградба и одржување на потопена пумпна станица за водоснабдување.</li>\n<li>2003, Езеро Треска, систем за дистрибуција на вода, систем за аерација и мешање. 200 л/с.</li>\n</ul>\n<p>&nbsp;</p>', '2012-09-17 01:00:02', '2012-07-14 09:37:00', 'referenci', 'default_featured_image.jpg', 1),
(66, 'Обработката на отпадните води е процес на отстранување на загадувачите', 'Обработката на отпадните води е процес на отстранување на загадувачите', '<p>Објавете нова статија</p>', '2012-09-17 00:53:48', '2012-07-28 13:42:00', 'obrabotkata-na-otpadnite-vodi-e-proces-na-otstranuvanje-na-zagaduvachit', 'default_featured_image.jpg', 1),
(67, 'Високо притисен механичко-хемиски филтер за отстранување на сите', 'Високо притисен механичко-хемиски филтер за отстранување на сите', '<p>Објавете нова статија</p>', '2012-09-17 00:52:20', '2012-07-28 13:44:00', 'visoko-pritisen-mehanichko-hemiski-filter-za-otstranuvanje-na-site', 'default_featured_image.jpg', 1),
(68, 'Физички филтер за филтрирање на вода.', 'Физички филтер за филтрирање на вода.', '<p>Статија за физичкиот филтер за филтрирање на вода.</p>', '2012-09-17 01:00:42', '2012-09-17 00:52:50', 'fizichki-filter-za-filtriranje-na-voda', 'default_featured_image.jpg', 1),
(72, 'Пречистителна станица за отпадни води Езерани (реконструкција и модернизација)', 'Проект за пречистителна станица за отпадни води Езерани', '<p>Проект за пречистителна станица за отпадни води Езерани</p>', '2012-09-17 09:49:21', '2012-09-17 09:47:00', 'prechistitelna-stanica-za-otpadni-vodi-ezerani-rekonstrukcija-i-modernizacija', 'default_featured_image.jpg', 1),
(73, 'Систем за третман на санитарна и систем за третман на отпадна вода во ХЕЦ Св. Петка', 'Систем за третман на санитарна и систем за третман на отпадна вода во ХЕЦ Св. Петка', '<p><strong>Систем за третман на санитарна вода </strong><br /><br />Технолошкото решение за обработка на суровата вода се состои од следниве целини:</p>\n<ul>\n<li>Филтрација&nbsp;</li>\n<li>Омекнување&nbsp;</li>\n<li>Деминерализација&nbsp;</li>\n<li>Дезинфекција&nbsp;</li>\n</ul>\n<p><br />Технолошките решениа по фази се сертифицирани со правилник за третман на вода и NSF стандард. Капацитет на системот изнесува 2500 Л/час. <br /><br /></p>\n<p><img src="/fluidproject.com.mk/public/uploaded/featured/hid1.jpg" /><img src="/fluidproject.com.mk/public/uploaded/featured/hid2.jpg" /></p>\n<p><br /><br /><strong>Систем за третман на отпадна вода </strong><br /><br />Постројката е изведена како компактна целина и претставува систем за прочистување на отпадната вода која ги исполнува сите законски и нормативни стандарди. Влезната комунална отпадна вода е со следниве карактеристики:</p>\n<ul>\n<li>ХПК 200 &ndash; 400mg/L&nbsp;</li>\n<li>БПК5 250 &ndash; 250 mg/L&nbsp;</li>\n<li>Суспендирани материи 200 &ndash; 300 mg/L&nbsp;</li>\n<li>pH 6-8&nbsp;</li>\n</ul>\n<p><br />Номиналниот технолошки капацитет изнесува 10 ЕЖ, додека биолошкиот капацитет е 0,6 кгБПК5/ден. Технолошката постапка за прочистување на отпадните води е составена од:</p>\n<ul>\n<li>Егализација&nbsp;</li>\n<li>Аерација&nbsp;</li>\n<li>Кларификација&nbsp;</li>\n<li>Рециркулација&nbsp;</li>\n</ul>\n<p><br />Физичко-хемиските карактеристики на обработената вода се следниве:</p>\n<ul>\n<li>ХПК 80 &ndash; 120 mg/L&nbsp;</li>\n<li>БПК 5 15 &ndash; 25mg/L&nbsp;</li>\n<li>pH 6 - 8</li>\n</ul>', '2012-09-22 19:17:54', '2012-09-17 09:49:00', 'sistem-za-tretman-na-sanitarna-i-sistem-za-tretman-na-otpadna-voda-vo-hec', 'he-sveta-petka.jpg', 1),
(74, 'Филтер пиколо', 'Филтер пиколо', '<p>Пиколо претставува физичко-хемиски филтер за вода. Се состои од куќиште кое се монтира на самата чешма, а во себе содржи патрон со активен јаглен низ кој поминува водата од вашата чешма.<br /><br /></p>\n<ul>\n<li>хлор и хлориди во водата (преку 95%)</li>\n<li>пестициди - 70%трихалометани - 80%</li>\n<li>органски соединенија - 70%</li>\n<li>индустриски растворувачи - 70%</li>\n</ul>\n<div><br />Физичко филтрирање на:<br />\n<ul>\n<li>честички до 2 &micro; - преку 90%</li>\n<li>честички до 3 &micro; - 100%</li>\n</ul>\n<br />Пиколо е мал и практичен уред погоден за филтрирање на водата за пиење, готвење и сите останати потреби во вашето домаќинство.<br /><br />Потрошен материјал на овој уред се патрони со активен јаглен кои се менуваат на период од 3-6 месеци во зависност од потрошувачката на вода.<br /><br /><strong>Instapure Brands</strong> пиколо филтри се американски производ, кој на македонскиот пазар ви го овозможува Флуид Проект ДОО.&nbsp;</div>', '2012-09-17 11:07:30', '2012-09-17 10:25:00', 'filter-pikolo', 'default_featured_image.jpg', 1),
(75, 'Профил на компанијата', 'Краток историјат на компанијата', '<p style="text-align: justify;">Флуид Проект ДОО е компанија во приватна сопственост, која на високо професионално и стручно ниво ги покрива областите на проектирање, консалтинг и инженеринг на еколошкиот третман на водата за пиење и отпадната вода, вода за фармацевтски и медицински потреби (GMP сертификат) , заштита на човековата околина и подводни истражувања, подводни активности, проектирање и изведба на објекти од посебен интерес, спортски и рекреативни базени, фонтани, автоматско управување и контрола на процесите, одржување и сервисирање на опремата и објектите и друго.<br /><br />Компанијата е формирана 1992 година, а нејзините пионерски чекори во истражувачките и развојни активности, во овие области датираат од 1983 година.<br /><br />Во досегашната работа Флуид Проект го покрива пазарот во Македонија, со посебен акцент на извоз на опрема и технологија во Косово, Бугарија, Бoсна и Херцеговина и Србија.<br /><br />Единствена, реномирана и потврдена компанија во изработка и спроведување на технологиите за GMP-сертификација на системите за&nbsp;обработка на вода за медицински и фармацевтски потреби во Република Македонија.<br /><br />Флуид Проект е носител на активноста во повеќе еколошки студии и проекти од областа на заштита на животната средина, истражувања на водните ресурси и заштита на подводни археолошки и природни реткости.<br /><br />Флуид Проект проектира и изведува објекти за третман на отпадна вода од комунални објекти, кланици и месна индустрија, индустрија за кожа, млечна индустрија, индустрија за масло, хемиска индустрија и др.<br /><br />Спортските и рекреативните базени и фонтани и за нив неопходна опрема со нивно одржување се дел од услугите и производите на Флуид Проект, компанија со богато искуство од стотина базени изведени во Македонија и надвор од неа, со склучени договори за одржување и хемиско третирање на истите.<br /><br />Зад широкиот спектар на услуги и производи стои професионален тим кој ви стои на располагање на вашите желби и потреби.&nbsp;</p>', '2012-09-18 09:50:00', '2012-09-18 09:47:00', 'profil-na-kompanijata', 'default_featured_image.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

DROP TABLE IF EXISTS `articles_categories`;
CREATE TABLE IF NOT EXISTS `articles_categories` (
  `articles_categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`articles_categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=443 ;

--
-- Dumping data for table `articles_categories`
--

INSERT INTO `articles_categories` (`articles_categories_id`, `articles_id`, `categories_id`) VALUES
(342, 68, 1),
(339, 67, 1),
(341, 66, 1),
(60, 39, 4),
(59, 39, 3),
(66, 41, 5),
(65, 41, 4),
(64, 41, 3),
(396, 74, 7),
(442, 73, 13),
(344, 72, 13);

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `calendar_events_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_happen` datetime NOT NULL,
  `date_ends` datetime NOT NULL,
  `calendar_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `event_categories_id` int(11) NOT NULL,
  `candidates_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`calendar_events_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`calendar_events_id`, `title`, `date_created`, `date_happen`, `date_ends`, `calendar_link`, `event_categories_id`, `candidates_num`) VALUES
(2, 'title', '2012-07-07 01:52:21', '2012-07-09 00:00:00', '0000-00-00 00:00:00', 'http://facebook.com', 2, 0),
(5, 'title', '2012-09-10 14:38:57', '2012-11-02 03:20:00', '2012-11-02 23:55:00', 'http://movies.mk', 4, 0),
(6, 'title', '2012-07-07 15:54:06', '2012-07-03 00:00:00', '0000-00-00 00:00:00', 'http://times.com', 1, 0),
(7, 'title', '2012-08-02 13:16:29', '2002-08-02 12:00:00', '0000-00-00 00:00:00', 'http://google.com', 2, 0),
(8, 'Настанот во септември', '2012-10-01 13:12:02', '2012-09-26 18:05:00', '2012-10-02 23:00:00', 'http://google.com', 10, 0),
(9, 'title', '2012-07-07 17:18:42', '2004-07-20 12:00:00', '0000-00-00 00:00:00', 'http://movies.mk', 10, 0),
(10, 'title', '2012-07-07 17:29:47', '2007-07-20 12:00:00', '0000-00-00 00:00:00', 'http://times.com', 5, 0),
(11, 'title', '2012-07-09 21:49:18', '2012-07-07 17:31:00', '0000-00-00 00:00:00', 'http://movies.mk', 11, 0),
(12, 'title', '2012-07-09 21:49:25', '2012-07-07 17:43:00', '0000-00-00 00:00:00', 'http://google.com', 1, 0),
(14, 'title', '2012-07-07 18:03:30', '2012-07-10 17:53:00', '0000-00-00 00:00:00', 'http://google.com', 1, 0),
(15, 'title', '2012-07-07 18:05:28', '2012-07-07 18:20:00', '0000-00-00 00:00:00', 'http://tsl.mk', 1, 0),
(20, 'Nastan za proizvodstvo', '2012-09-09 14:14:49', '2012-09-20 13:48:00', '2012-09-28 23:55:00', 'http://tsl.mk', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events_categories`
--

DROP TABLE IF EXISTS `calendar_events_categories`;
CREATE TABLE IF NOT EXISTS `calendar_events_categories` (
  `calendar_events_categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `color_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`calendar_events_categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `calendar_events_categories`
--

INSERT INTO `calendar_events_categories` (`calendar_events_categories_id`, `name`, `color`, `slug`, `color_name`) VALUES
(1, 'Услуга кон клиентите', '#868686', 'usluga-kon-klientite', 'siva'),
(2, 'Продажни вештини', '#ef1d1d', 'prodazni-vestini', 'crvena'),
(3, 'Маркетинг и PR', '#edb7b7', 'marketing-i-pr', 'rozeva'),
(4, 'Менаџмент', '#7771ee', 'management', 'svetlo plava'),
(5, 'Човечки ресурси', '#d7ed1f', 'covecki-resursi', 'zolta'),
(6, 'Финансии', '#ab348b', 'finansii', 'violetova'),
(7, 'Производство и дистрибуција', '#2ada74', 'proizvodstvo-i-distribucija', 'svetlo zelena'),
(8, 'Деловни вештини', '#eca72f', 'delovni-veshtini', 'portokalova'),
(9, 'Тим билдинг', '#10125f', 'tim-bilding', 'teget'),
(10, 'Конференции', '#186752', 'konferencii', 'temno zelena'),
(11, 'Експертски академии', '#000000', 'ekspertski-akademii', 'crna');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidates_ix` (`event_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `phone`, `email`, `profession`, `company`, `event_id`, `comment`, `date_created`) VALUES
(10, 'Vladimir Apostolski', '070 123 456', 'vladimir.apostolski@gmail.com', 'Profesionalec', 'Google', 8, 'sdfgfdg;fdlgfdg gldfdlkg fgl;fdg kdg;ld gdfl;gfdg;l dg gdfdfg dfkg; gdkf;lgfdl;gdf;gl d;g;dkg ;dkfg', '2012-07-22 12:29:58'),
(11, 'vlado', '123', 'vladimir@gmail.com', 'programer', 'jok', 8, '', '2012-08-20 15:51:27'),
(12, 'vlado', '123', 'vladimir@gmail.com', 'programer', 'jok', 8, '', '2012-08-20 15:52:00'),
(13, 'vlado', '123', 'vladimir@gmail.com', 'programer', 'jok', 8, '', '2012-08-20 15:53:16'),
(14, 'Vladimir Apostolski', '12435', 'vladimir.apostolski@gmail.com', 'programmer', '', 8, 'sve e ok', '2012-08-20 15:54:47'),
(15, 'Vladimir Apostolski', '12435', 'vladimir.apostolski@gmail.com', 'programmer', '', 8, 'sve e ok', '2012-08-20 15:56:01'),
(16, 'dgdfg', '245', 'vld_apo@yahoo.com', 'gdfgd', 'hgfh', 0, 'gfdgd', '2012-08-20 16:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `name`, `description`, `slug`, `featured_image`, `logo`) VALUES
(1, 'Новости', '', 'novosti', 'default_featured_image.jpg', 'logo.png'),
(2, 'Speakers', '', 'speakers', 'triple-s-speakers.jpg', 'logo-speakers.jpg'),
(3, 'Learning', '<p>Opis</p>', 'learning', 'triple-s-learning.jpg', 'logo-learning.jpg'),
(4, 'Recruitment', '', 'recruitment', 'triple-s-recruitment.jpg', 'logo-recruitment.jpg'),
(5, 'Consulting', '', 'consulting', 'default_featured_image.jpg', 'logo.png'),
(6, 'Експертски академии', '', 'ekspertski-akademii', 'default_featured_image.jpg', 'logo.png'),
(7, 'Производи', '', 'proizvodi', 'default_featured_image.jpg', 'logo.png'),
(13, 'Проекти', '', 'proekti', 'default_featured_image.jpg', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `clients_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`clients_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clients_id`, `name`, `image`, `link`, `date_created`) VALUES
(1, 'T-mobile', 't-mobile.png', '#', '2012-07-11 01:22:27'),
(2, 'T-home', 't-home.png', '#', '2012-07-11 01:22:56'),
(3, 'One', 'one.png', '#', '2012-07-11 01:23:24'),
(4, 'VIP', 'vip.png', '#', '2012-07-11 01:23:57'),
(5, 'NLB Тутунска банка', 'NLB-Tutunska-banka.png', '#', '2012-07-11 01:24:56'),
(6, 'Охридска Банка', 'Ohridska-banka.png', '#', '2012-07-11 01:25:35'),
(7, 'ProCredit Банка', 'Pro-Credit-banka.png', '#', '2012-07-11 01:26:02'),
(8, 'ТТК Банка', 'TTK-banka.png', '#', '2012-07-11 01:26:29'),
(9, 'Moжности', 'moznosti.png', '#', '2012-07-11 01:26:54'),
(10, 'QBE', 'QBE.png', '#', '2012-07-11 01:29:02'),
(11, 'Eurolink', 'eurolink.png', '#', '2012-07-11 01:30:03'),
(12, 'Hypo Alpe Adria', 'Hypo-Alpe-Adria.png', '#', '2012-07-11 01:30:27'),
(13, 'eurostandard банка', 'eurostandard-banka.png', '#', '2012-07-11 01:30:56'),
(14, 'Automobile-Sk', 'Automobile-SK.png', '#', '2012-07-11 01:31:25'),
(15, 'Avtonova Citroen', 'Avtonova-Citroen.png', '#', '2012-07-11 01:31:49'),
(16, 'Ka-Dis', 'Ka-Dis-seat.png', '#', '2012-07-11 01:33:28'),
(17, 'dalmet-fu', 'Dal-Met-Fu.png', '#', '2012-07-11 01:33:45'),
(18, 'Blue Cafe`', 'BlueCafe.png', '#', '2012-07-11 01:34:20'),
(19, 'papu', 'Papu.png', '#', '2012-07-11 01:34:43'),
(20, 'Форца', 'Forza.png', '#', '2012-07-11 01:35:02'),
(21, 'Ресторан 14', 'restoran-14.png', '#', '2012-07-11 01:35:55'),
(22, 'Ресторан Лира', 'Lira-restoran.png', '#', '2012-07-11 01:36:15'),
(23, 'World Learning', 'World-Learning.png', '#', '2012-07-11 01:36:37'),
(24, 'Национална Агенција', 'Nacionalna-agencija.png', '#', '2012-07-11 01:37:02'),
(25, 'Катастар', 'Katastar.png', '#', '2012-07-11 01:37:25'),
(26, 'Glaxo-Smith-Kline', 'Glaxo-Smith-Kline.png', '#', '2012-07-11 01:38:09'),
(27, 'Филип Втори', 'Filip-Vtori.png', '#', '2012-07-11 01:38:38'),
(28, 'Д-р Пановски', 'Dr-Panovski.png', '#', '2012-07-11 01:39:54'),
(29, 'Натусана', 'Natusana.png', '#', '2012-07-11 01:40:17'),
(31, 'belupo', 'belupo.png', '#', '2012-07-28 13:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
CREATE TABLE IF NOT EXISTS `emails` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_unsubscribed` tinyint(4) NOT NULL DEFAULT '0',
  `unsubscribe_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_uq` (`email`),
  KEY `emails_unsubscribe_id_idx` (`unsubscribe_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=18 ;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email`, `created_at`, `is_unsubscribed`, `unsubscribe_id`) VALUES
(1, 'trbogazov1@gmail.com', '2012-07-15 00:00:00', 0, 'db2487bb-d31f-11e1-895c-0019dbf8832c'),
(2, 'vladimir@gmail.com', '2012-07-15 00:00:00', 0, 'db24926f-d31f-11e1-895c-0019dbf8832c'),
(3, 'tsl@gmail.com', '2012-07-15 00:00:00', 0, 'db249430-d31f-11e1-895c-0019dbf8832c'),
(4, 'farytail@gmail.com', '2012-07-15 00:00:00', 0, 'db2495ce-d31f-11e1-895c-0019dbf8832c'),
(5, 'sample@yahoo.com', '2012-07-15 00:00:00', 0, 'db24975c-d31f-11e1-895c-0019dbf8832c'),
(6, 'nemo@yahoo.com', '2012-07-15 00:00:00', 0, 'db2498eb-d31f-11e1-895c-0019dbf8832c'),
(7, 'jet-fly@yahoo.com', '2012-07-15 00:00:00', 0, 'db249a76-d31f-11e1-895c-0019dbf8832c'),
(8, 'panda@hotmal.com', '2012-07-15 00:00:00', 0, 'db249c01-d31f-11e1-895c-0019dbf8832c'),
(16, 'vladimir.apostolski@gmail.com', '2012-07-24 09:17:39', 0, '09e55b42-d569-11e1-a080-f486bf2ea9c3');

-- --------------------------------------------------------

--
-- Table structure for table `emails_sent`
--

DROP TABLE IF EXISTS `emails_sent`;
CREATE TABLE IF NOT EXISTS `emails_sent` (
  `newsletter_id` smallint(5) unsigned NOT NULL,
  `email_id` smallint(5) unsigned NOT NULL,
  `date_sent` timestamp NULL DEFAULT NULL,
  KEY `email_ix` (`email_id`),
  KEY `newsletter_ix` (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `emails_sent`
--

INSERT INTO `emails_sent` (`newsletter_id`, `email_id`, `date_sent`) VALUES
(4, 1, '2012-07-24 07:21:58'),
(4, 2, '2012-07-24 07:22:09'),
(4, 3, '2012-07-24 07:22:20'),
(4, 4, '2012-07-24 07:22:31'),
(4, 5, '2012-07-24 07:22:42'),
(4, 6, '2012-07-24 07:22:54'),
(4, 7, '2012-07-24 07:23:05'),
(4, 8, '2012-07-24 07:23:16'),
(4, 16, '2012-07-24 07:23:27'),
(3, 1, '2012-07-24 07:28:13'),
(3, 2, '2012-07-24 07:28:24'),
(3, 3, '2012-07-24 07:28:35'),
(3, 4, '2012-07-24 07:28:46'),
(3, 5, '2012-07-24 07:28:57'),
(3, 6, '2012-07-24 07:29:09'),
(3, 7, '2012-07-24 07:29:20'),
(3, 8, '2012-07-24 07:29:31'),
(3, 16, '2012-07-24 07:29:42'),
(9, 1, '2012-08-02 15:48:23'),
(9, 2, '2012-08-02 15:48:35'),
(9, 3, '2012-08-02 15:48:48'),
(9, 4, '2012-08-02 15:49:01'),
(9, 5, '2012-08-02 15:49:14'),
(9, 6, '2012-08-02 15:49:37'),
(9, 7, '2012-08-02 15:49:52'),
(9, 8, '2012-08-02 15:50:09'),
(9, 16, '2012-08-02 15:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

DROP TABLE IF EXISTS `footer`;
CREATE TABLE IF NOT EXISTS `footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `content`) VALUES
(1, '<div class="contact">\n<h2>Флуид Проект ДОО</h2>\n<div style="padding: 10px 5px 5px 0px;">\n<p><img src="/fluid/images/con_address.png" />ул. &bdquo;Мито Хаџивасилев Јасмин&ldquo;</p>\n<p>бр.48 блок V 1000 Скопје</p>\n<p>Република Македонија</p>\n</div>\n<div style="padding: 0px 5px 10px 0px;">\n<p><img src="/fluid/images/con_factory.png" />Производствен погон:</p>\n<p>ул. Радишанска бр.114</p>\n</div>\n<p><img src="/fluid/images/con_tel.png" />тел. +389 2 3130 143</p>\n<p><img src="/fluid/images/con_fax.png" />факс. +389 2 3212 767</p>\n<p><img src="/fluid/images/con_email.png" />e-mail. contact@fluidproject.com.mk</p>\n</div>\n<div class="map"><img src="/fluid/images/map.jpg" /></div>');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id_gallery` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_group_id` int(10) NOT NULL,
  `description` varchar(1020) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id_gallery`),
  KEY `gallery_group_id` (`gallery_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id_gallery`, `gallery_group_id`, `description`, `date_created`) VALUES
(1, 3, 'Brian Tracy (Ноември, 2007)', '2012-07-08 17:17:55'),
(3, 2, 'Доделување на\r\nсертификати (Март, 2011)', '2012-07-08 14:41:14'),
(7, 3, 'Brian Tracy (Ноември, 2007)', '2012-07-08 16:08:00'),
(9, 1, 'blab lab al', '2012-07-08 17:31:30'),
(10, 1, 'vtora', '2012-07-08 17:31:50'),
(11, 1, 'treta', '2012-07-08 17:31:55'),
(12, 1, 'cetvrta', '2012-07-08 17:32:01'),
(13, 1, 'peta', '2012-07-08 17:32:06'),
(14, 4, 'tapa', '2012-08-02 18:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_groups`
--

DROP TABLE IF EXISTS `gallery_groups`;
CREATE TABLE IF NOT EXISTS `gallery_groups` (
  `id_gallery_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id_gallery_group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `gallery_groups`
--

INSERT INTO `gallery_groups` (`id_gallery_group`, `name`, `date_created`) VALUES
(1, 'TRIPLE S GROUP', '2012-07-08 00:00:00'),
(2, 'ОБУКИ', '2012-07-08 00:00:00'),
(3, 'КОНФЕРЕНЦИИ', '2012-07-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_photos`
--

DROP TABLE IF EXISTS `gallery_photos`;
CREATE TABLE IF NOT EXISTS `gallery_photos` (
  `id_gallery_photos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `galleries_id_gallery` int(10) unsigned NOT NULL,
  `image` varchar(510) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id_gallery_photos`,`galleries_id_gallery`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `gallery_photos`
--

INSERT INTO `gallery_photos` (`id_gallery_photos`, `galleries_id_gallery`, `image`, `description`, `date_created`) VALUES
(1, 1, 'b-01.jpg', 'Регистрација на гости', '2012-07-08 00:00:00'),
(3, 1, 'b-02.jpg', 'REgistracija', '2012-07-08 00:00:00'),
(4, 3, 't-01.jpg', 'Отворање на настанот', '2012-07-08 00:00:00'),
(5, 7, 't-04.jpg', 'Отворање на настанот', '2012-07-08 00:00:00'),
(6, 7, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(7, 7, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(8, 7, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(9, 7, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(10, 7, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(11, 7, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(12, 7, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(13, 7, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(15, 9, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(16, 9, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(17, 10, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(18, 10, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(19, 10, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(20, 10, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(21, 10, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(22, 10, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(23, 10, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(24, 11, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(25, 12, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(26, 12, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00'),
(27, 13, 'b-02.jpg', 'test image ', '2012-07-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `menu_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `order_index` int(11) NOT NULL,
  `depth_level` int(11) NOT NULL,
  PRIMARY KEY (`menu_items_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=55 ;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`menu_items_id`, `text`, `link`, `parent_id`, `date_created`, `order_index`, `depth_level`) VALUES
(1, 'За нас', '#', 0, '2012-09-16 17:56:40', 100, 0),
(2, 'Проекти', '#', 0, '2012-09-16 18:03:20', 200, 0),
(3, 'Услуги', '#', 0, '2012-09-16 18:03:54', 300, 0),
(4, 'Проектирање и изведба', '#', 3, '2012-09-16 18:07:56', 301, 1),
(5, 'Одржување и сервис', '#', 3, '2012-09-16 18:10:32', 302, 1),
(24, 'Производи', '#', 0, '2012-09-16 18:11:47', 400, 0),
(25, 'Контакт', '#', 0, '2012-09-16 18:20:02', 500, 0),
(49, 'Профил', 'articles/75-profil-na-kompanijata', 1, '2012-09-18 09:50:17', 102, 1),
(46, 'Подводни истражувања', '#', 3, '2012-09-16 18:10:59', 303, 1),
(48, 'Филтер Пиколо', 'articles/74-filter-pikolo', 24, '2012-09-17 10:53:04', 401, 1),
(47, 'Референци', 'articles/54-referenci', 1, '2012-09-17 01:01:25', 101, 1),
(50, 'Атлас филтри', '#', 24, '2012-09-16 18:15:19', 402, 1),
(51, 'Јонски омекнувач на вода', '#', 24, '2012-09-16 18:16:52', 403, 1),
(52, 'УВ стерилизација', '#', 24, '2012-09-16 18:17:20', 404, 1),
(53, 'Пречистителни станици', '#', 24, '2012-09-16 18:18:40', 405, 1),
(54, 'Базени фонтани и опрема', '#', 24, '2012-09-16 18:19:23', 406, 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(510) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_started` datetime DEFAULT NULL,
  `date_finished` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `title`, `content`, `status`, `date_created`, `date_started`, `date_finished`) VALUES
(3, 'sent 0 emails', '<p>okej e</p>', 3, '2012-07-15 17:06:49', '2012-07-24 09:28:09', '2012-07-24 09:31:54'),
(4, 'the paused title', '<p>with some content</p>', 0, '2012-07-15 17:19:07', '2012-07-24 09:26:12', '0000-00-00 00:00:00'),
(5, 'the finished newsletter', 'asda sdfasdfasdfasdf', 3, '2012-07-15 17:19:53', NULL, NULL),
(7, 'raboti li ova be', '<p>raboti li ova cudo</p>', 1, '2012-07-25 21:34:16', '2012-07-25 21:35:10', NULL),
(9, 'Тест писмо', '<p>test pismo</p>', 1, '2012-08-02 14:07:31', '2012-08-02 17:39:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_articles`
--

DROP TABLE IF EXISTS `newsletter_articles`;
CREATE TABLE IF NOT EXISTS `newsletter_articles` (
  `newsletter_id` smallint(5) unsigned NOT NULL,
  `article_id` int(10) unsigned NOT NULL,
  KEY `newsletter_ix` (`newsletter_id`),
  KEY `articles_ix` (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `newsletter_articles`
--

INSERT INTO `newsletter_articles` (`newsletter_id`, `article_id`) VALUES
(4, 46),
(3, 47),
(3, 53),
(3, 61),
(3, 64),
(4, 53),
(5, 49),
(5, 48),
(5, 47),
(5, 46),
(6, 49),
(4, 61),
(4, 64),
(7, 64),
(7, 61),
(7, 54),
(7, 53),
(9, 54),
(9, 64),
(9, 66),
(9, 67),
(9, 68);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_clicks`
--

DROP TABLE IF EXISTS `newsletter_clicks`;
CREATE TABLE IF NOT EXISTS `newsletter_clicks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `newsletter_clicks`
--

INSERT INTO `newsletter_clicks` (`id`, `newsletter_id`, `article_id`, `email_id`, `date_created`) VALUES
(1, 7, 67, 2, '2012-08-02 13:58:16'),
(8, 9, 67, 8, '2012-08-02 14:10:24'),
(7, 9, 68, 8, '2012-08-02 14:10:19'),
(11, 9, 54, 7, '2012-08-01 14:50:19'),
(9, 9, 66, 8, '2012-08-02 14:10:27'),
(12, 9, 54, 16, '2012-08-02 17:50:48'),
(13, 9, 54, 16, '2012-08-02 17:54:13'),
(14, 9, 54, 16, '2012-08-02 17:55:11'),
(15, 9, 54, 16, '2012-08-02 17:55:33'),
(16, 9, 68, 16, '2012-08-02 21:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `popup`
--

DROP TABLE IF EXISTS `popup`;
CREATE TABLE IF NOT EXISTS `popup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `popup`
--

INSERT INTO `popup` (`id`, `image_url`, `link`, `is_active`) VALUES
(1, 'test1.jpg', 'http://www.tsgroup.mk/articles/116-planiranje-i-realiziranje-na-efektivni-promocii-i-akcii-na-proizvodi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
CREATE TABLE IF NOT EXISTS `quotes` (
  `quotes_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`quotes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=50 ;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`quotes_id`, `description`, `author`, `date_created`) VALUES
(1, '„Не е важно од каде доаѓате, важно е каде одите.“', 'Brian Tracy', '2015-07-12 00:00:00'),
(2, '„За да постигнете успех каков што не сте постигнале претходно, мора да станете човек каков што не сте биле претходно.“', 'Brian Tracy', '2015-07-12 00:00:00'),
(3, '„Инвестирајте само 3% од Вашиот приход во усовршување и загарантирајте  ја својата иднина!“ ', 'Brian Tracy', '2015-07-12 00:00:00'),
(4, '„Успешни луѓе се оние кои имаат успешни навики.“', 'Brian Tracy', '2015-07-12 00:00:00'),
(5, '„Вистинскиот успех е да се биде способен да го поминете Вашиот живот онака како што Вие посакувате. Успехот не е во релација со она што сте денес, туку лежи во Вашата моќ да станете она што сакате.“', 'Colin Turner', '2015-07-12 00:00:00'),
(6, '„Маркетингот е уметност на менување на мислењето на луѓето или наведување да го задржат своето мислење доколку веќе купуваат од Вас.“', 'Jay Conrad Levinson', '2015-07-12 00:00:00'),
(7, '„Маркетинг е секој контакт што кој било од вашата компанија го има со кој било кој не е дел од неа.“', 'Jay Conrad Levinson', '2015-07-12 00:00:00'),
(8, '„Тргни ги сите изговори настрана и запомни дека: ТИ можеш!” ', 'Zig Ziglar', '2015-07-12 00:00:00'),
(9, '„Способноста може да ве вивне до врвот, но потребен ви е карактер за да останете таму.”', 'Zig Ziglar', '2015-07-12 00:00:00'),
(10, '„Пред да го промениш начинот на размислување, потребно е да ги промениш мислите.“', 'Zig Ziglar', '2015-07-12 00:00:00'),
(11, '„Не треба да бидеш голем за да започнеш, но треба да започнеш за да станеш голем.“', 'Zig Ziglar', '2015-07-12 00:00:00'),
(12, '„Доколку не се гледате себеси како победник, бидете сигурен дека ни другите не ве гледаат така.“', 'Zig Ziglar', '2015-07-12 00:00:00'),
(13, '„Вие сте родени да успеете, но мора да планирате да успеете, да се подготвите да успеете, тогаш може да очекувате да успеете.“', 'Zig Ziglar', '2015-07-12 00:00:00'),
(14, '„Единствениот кој може да ги искористи твоите способности си ти и тоа е една исклучителна одговорност.“', 'Zig Ziglar', '2015-07-12 00:00:00'),
(15, '„Формалното образование ќе ви обезбеди за живот; неформалното образование ќе ви обезбеди богатство.“', 'Jim Rohn', '2015-07-12 00:00:00'),
(16, '„Сите успешни луѓе имаат цел. Никој не може да стигне некаде, без да знае каде оди и што сака да направи.“', 'Norman Vincent Peale', '2015-07-12 00:00:00'),
(17, '„Креативноста доаѓа од довербата. Верувај им на своите инстинкти!”', 'Rita Mae Bown', '2015-07-12 00:00:00'),
(18, '„Секој пат кога ќе почувствуваш потреба да реагираш на стариот познат начин, запрашај се дали сакаш да бидеш затвореник на минатото или пионер на иднината!”', 'Deepak Chopra', '2015-07-12 00:00:00'),
(19, '„Луѓето можат да заборават што сте направиле и што сте рекле, но никогаш нема да заборават како сте ги направиле да се чувствуваат.”', 'Анонимен автор', '2015-07-12 00:00:00'),
(20, '„Сите успешни луѓе имаат цел. Никој не може да стигне некаде, без да знае каде оди и што сака да направи.“', 'Norman Vincent Peale', '2015-07-12 00:00:00'),
(21, '„Можете да научите с? што е потребно да знаете за да ja остварите било која цел што ќе си ја поставите себеси; ограничувања не постојат.“', 'Brian Tracy', '2015-07-12 00:00:00'),
(22, '„Дисциплината претставува мост помеѓу целите и достигнувањата.”', 'Jim Rohn', '2015-07-12 00:00:00'),
(23, '„Ако сакате да добиете повеќе во животот, потребно е да инвестирате во себеси.“', 'Mark Fritz', '2015-07-12 00:00:00'),
(24, '„Не се грижете за областите каде вашата конкуренција е полоша од вас... Учете од областите во кои е подобра!”', 'Michael Bergdahl', '2015-07-12 00:00:00'),
(25, '„Кога сонуваме сами - тоа е само сон. Кога сонуваме заедно со други - тоа е почеток на реалноста.“', 'Dom Helder Camara', '2015-07-12 00:00:00'),
(26, '„Луѓето се среќни онолку колку што ќе го убедат својот ум дека се среќни.“', 'Abraham Lincoln', '2015-07-12 00:00:00'),
(27, '„Вашата визија ќе стане јасна само доколку погледнете длабоко во Вашето срце. Оној кој гледа во другите, сонува. Оној кој гледа длабоко во себе си, се буди.“', 'Carl Gustav Jung', '2015-07-12 00:00:00'),
(28, '„Успехот има едноставна формула: прави го најдоброто и на луѓето ќе  им се допадне.“', 'Sam Ewing', '2015-07-12 00:00:00'),
(29, '„Можеш да го правиш она што треба да го направиш, но понекогаш тоа можеш да го направиш дури и подобро отколку што мислиш.“', 'Jimmy Carter Jr.', '2015-07-12 00:00:00'),
(30, '„Ископај бунар пред да станеш жеден.“', 'Harvey Mackay', '2015-07-12 00:00:00'),
(31, '„Која е разликата помеѓу училиштето и животот? Во училиште ја учите лекцијата - потоа добивате тест. Во животот добивате тест од кој ја учите лекцијата.“', 'Robert L. Carter', '2015-07-12 00:00:00'),
(32, '„Првиот и најважниот чекор кон успехот е чувството дека можеме да успееме.” ', 'Nelson Boswell', '2015-07-12 00:00:00'),
(33, '„Целта на HR системот на една компанија не е само да ги селектира вработените, измери нивниот перформанс или пресмета компензациски пакет, туку да ги поврзе луѓето во компанијата и да ги направи да се чувствуваат како дел од големото семејство на компанијата.“', 'Tim Ringo', '2015-07-12 00:00:00'),
(34, '„Слушајте го Вашиот клиент, бидејќи е експерт во Вашиот продукт исто колку што сте Вие; само што експертизата во продуктот се однесува на неговото користење.“ ', 'Linda Richardson', '2015-07-12 00:00:00'),
(35, '„Обичните луѓе размислуваат за трошење на времето. Големите луѓе размислуваат за искористување на времето.“', 'Анонимен автор', '2015-07-12 00:00:00'),
(36, '„Не слушајте колку е лоша економијата. Само направете план за дејствување и работете на него. Рецесијата е напраевна од човекот. Таа дава одлична можност за успех.“', 'Colin Turner', '2015-07-12 00:00:00'),
(37, '“Единствените ограничувања во нашиот живот се оние кои што самите ги поставуваме.“', 'Bob Procor', '2015-07-12 00:00:00'),
(38, '„Вашата визија ќе стане јасна само доколку погледенете длабоко во Вашето срце. Оној кој гледа во другите, сонува. Оној кој гледа длабоко во себе си, се буди.“ ', 'Carl Gustav Jung', '2015-07-12 00:00:00'),
(39, '„Чудо нема да се изнедри од чиста интелегенција. Тоа ќе се случи доколку посегнете по Вашето вистинско Јас, и ако го следите тоа што мислите дека е Вашиот Пат.“', 'Dr. Bernie Siegel', '2015-07-12 00:00:00'),
(40, '„Денес, моќта лежи во контролирањето на најреткиот ресурс: човековата интелигенција.“', 'Dr. Jonas Ridderstr?le', '2015-07-12 00:00:00'),
(41, '„Кога сонуваме сами - тоа е само сон. Кога сонуваме заедно со други - тоа е почеток на реалноста.“ ', 'Dom Helder Camarа', '2015-07-12 00:00:00'),
(42, '„Емоционалната интелигенција е способност да се почувствува, разбере и употреби моќта и остроумноста на емоциите како извор на човековата енергија, поврзаност и влијание.“ ', 'Robert K. Cooper', '2015-07-12 00:00:00'),
(43, '„Се додека постои цел, нема граници за ничие достигање.”', 'Pol Arden', '2015-07-12 00:00:00'),
(44, '„Кога почнуваме да размислуваме, тогаш и почнуваме да се менуваме!” ', 'Mark Fritz', '2015-07-12 00:00:00'),
(45, '„Наградата за добро сторена работа, е шансата да сториш многу повеќе!“', 'Wiliam Arthur', '2015-07-12 00:00:00'),
(46, '„Не можеш да ги промениш околностите, годишното време или ветрот, но секако можеш да направиш одредени промени кај себе.“', 'Jim Rohn', '2015-07-12 00:00:00'),
(47, '„Само со срцето се гледа исправно. Суштината останува невидлива за очите.“', '„Малиот принц”', '2015-07-12 00:00:00'),
(48, '„Можете да научите с? што е потребно да знаете за да ja остварите било која цел што ќе си ја поставите себеси; ограничувања не постојат.“ ', 'Brian Tracy', '2015-07-12 00:00:00'),
(49, '„Намалете го јазот помеѓу она што може да бидеме и она што сме.“', 'Ken Blanchard', '2015-07-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar`
--

DROP TABLE IF EXISTS `sidebar`;
CREATE TABLE IF NOT EXISTS `sidebar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `position` int(10) unsigned DEFAULT NULL,
  `is_deletable` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sidebar`
--

INSERT INTO `sidebar` (`id`, `name`, `content`, `position`, `is_deletable`, `type`) VALUES
(2, 'quotes', 'elements/quotes', 1, 0, 'view'),
(4, 'social links', '<div class="social-buttons">\r\n<h3>Следи н&egrave;:</h3>\r\n<p><a href="http://www.facebook.com//login.php#!/pages/Triple-S-Learning/321852101858?ref=ts" target="_balnk"><img src="/tsl/images/icon-facebook-color.png" alt="" /></a> <a href="http://www.linkedin.com/in/tripleslearning" target="_balnk"><img src="/tsl/images/icon-linkedin-color.png" alt="" /></a> <a href="http://twitter.com/TripleSGroup" target="_blank"><img src="/tsl/images/icon-twitter-color.png" alt="" /></a> <a href="http://www.youtube.com/user/TripleSLearning" target="_balnk"><img src="/tsl/images/icon-youtube-color.png" alt="" /></a></p>\r\n</div>', 4, 0, 'content'),
(11, 'Newsletter', 'elements/newsletter', 3, 0, 'view');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `slides_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `order_index` int(11) NOT NULL,
  PRIMARY KEY (`slides_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slides_id`, `title`, `description`, `link`, `image`, `date_created`, `order_index`) VALUES
(2, 'Добредојдовте', '<p>      Можете да се надевате на успех, a можете и да                          се обучите за успех.</p>                                          <p>                         Triple S Learning - брзи, интезивни тренинг                      програми дизајнирани за Вашиот успех...</p>', '', 'slider1.jpg', '2012-07-08 12:44:02', 1),
(4, 'Еколошки пристап', '<p>ф</p>', '', 'slider3.jpg', '2012-09-17 10:01:31', 4),
(5, 'Филтри за вода', '<p>Филтри за вода</p>', '', 'slider4.jpg', '2012-09-17 10:01:48', 3),
(14, 'Пречистителни станици', '<p>opis</p>', '', 'slider2.jpg', '2012-09-17 01:02:19', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
