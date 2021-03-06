-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 30, 2012 at 05:25 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
  `lang` char(2) COLLATE utf8_unicode_ci DEFAULT 'mk',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title_2` (`title`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=88 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `content`, `date_created`, `date_published`, `slug`, `featured_image`, `status`, `lang`) VALUES
(86, 'References ', 'References', '<p><strong>&nbsp;Distribution of water</strong></p>\r\n<ul>\r\n<li>1992-1999 Stenje, Prespa, Capacity 15 l / s, submerged pumping station water treatment usisen pipeline construction and maintenance.</li>\r\n<li>1993-1999 Gradiste, Ohrid, capacity 5 l / s, for the purpose of camping, usisen pipeline depth of 36 meters.</li>\r\n<li>1998-2001, Resa, Kavadarci, capacity 100 l / s, construction and maintenance of submerged water pump station for technical designed for "Fannie".</li>\r\n<li>1995-2003 Otesevo, capacity 25 l / s, construction and maintenance of submerged water supply pumping station.</li>\r\n<li>2003 Lake Fever, water distribution system, aeration and mixing system. 200 l / s.</li>\r\n</ul>', '2012-09-30 18:48:15', '2012-09-30 18:37:00', 'references', 'default_featured_image.jpg', 1, 'en'),
(87, 'Company Profile', 'History of the company profile', '<p style="text-align: justify;">Fluid Project LLC is a privately owned company, which highly professional and expert level covers the areas of design, engineering and consulting ecological treatment of drinking water and waste water, pharmaceutical and medical needs (GMP certified), the protection of human environment and underwater surveys, underwater activities, design and construction of buildings of special interest, sports and recreational pools, fountains, automatic management and process control, maintenance and servicing of equipment and facilities, and more.&nbsp;</p>\n<p style="text-align: justify;">The company was formed in 1992, and its pioneering steps in the research and development activities in these areas date back to 1983.&nbsp;</p>\n<p style="text-align: justify;">In previous work Fluid Project covers the market in the country, with particular emphasis on the export of equipment and technology in Kosovo, Bulgaria, Bosna and Herzegovina and Serbia.&nbsp;</p>\n<p style="text-align: justify;">Only reputable and proven company in the development and implementation of technologies for GMP-certification of water treatment systems for medical and pharmaceutical needs in the Republic of Macedonia.&nbsp;</p>\n<p style="text-align: justify;">Fluid Project activity is vested in several environmental studies and projects in the field of environmental protection, research on water resources and the protection of underwater archaeological and natural rarities.&nbsp;</p>\n<p style="text-align: justify;">Fluid Project designed and performed the wastewater treatment facilities of communal facilities, slaughterhouses and meat industry, leather industry, dairy industry, oil industry, chemical industry and so on.&nbsp;</p>\n<p style="text-align: justify;">Sporting and recreational swimming pools and fountains and necessary equipment for them with their maintenance of the services and products of the Fluid Project, a company with rich experience from hundreds of pools derived in Macedonia and abroad, with contracts for maintenance and chemical treatment of the same.</p>\n<p style="text-align: justify;">&nbsp;Behind the wide range of services and products standing professional team at your disposal on your needs and desires.</p>', '2012-09-30 18:59:27', '2012-09-30 18:41:00', 'company-profile', 'default_featured_image.jpg', 1, 'en'),
(54, 'Референци', 'Референци', '<p><strong>Дистрибуција на вода<br /><br /></strong></p>\n<ul>\n<li>1992-1999, Стење, Преспа, Капацитет 15 л/с, потопена пумпна станица со усисен цевовод без третман на водата, изградба и одржување.</li>\n</ul>\n<ul>\n<li>1993-1999, Градиште, Охрид, капацитет 5 л/с, за потребите на автокампот, со усисен цевовод на длабочина од 36 метри.</li>\n<li>1998-2001,Ресава, Кавадарци, капацитет 100 л/с, изградба и одржување на потопена пумпна станица за техничка вода наменета за &bdquo;Фени&ldquo;.</li>\n<li>1995-2003, Отешево, капацитет 25 л/с, изградба и одржување на потопена пумпна станица за водоснабдување.</li>\n<li>2003, Езеро Треска, систем за дистрибуција на вода, систем за аерација и мешање. 200 л/с.</li>\n</ul>\n<p>&nbsp;</p>', '2012-09-30 18:40:13', '2012-07-14 09:37:00', 'referenci', 'default_featured_image.jpg', 1, 'mk'),
(66, 'Обработката на отпадните води е процес на отстранување на загадувачите', 'Обработката на отпадните води е процес на отстранување на загадувачите', '<p>Обработка на отпадните води</p>', '2012-09-23 22:04:28', '2012-07-28 13:42:00', 'obrabotkata-na-otpadnite-vodi-e-proces-na-otstranuvanje-na-zagaduvachit', 'default_featured_image.jpg', 1, 'mk'),
(67, 'Високо притисен механичко-хемиски филтер', 'Високо притисен механичко-хемиски филтер за отстранување на сите', '<p>Статија за механичко-хемиски филтер</p>', '2012-09-23 22:07:17', '2012-07-28 13:44:00', 'visoko-pritisen-mehanichko-hemiski-filter', 'default_featured_image.jpg', 1, 'mk'),
(68, 'Физички филтер за филтрирање на вода.', 'Физички филтер за филтрирање на вода.', '<p>Статија за физичкиот филтер за филтрирање на вода.</p>', '2012-09-17 01:00:42', '2012-09-17 00:52:50', 'fizichki-filter-za-filtriranje-na-voda', 'default_featured_image.jpg', 1, 'mk'),
(72, 'Пречистителна станица за отпадни води Езерани (реконструкција и модернизација)', 'Проект за пречистителна станица за отпадни води Езерани', '<p>Проект за пречистителна станица за отпадни води Езерани</p>', '2012-09-27 00:20:57', '2012-09-17 09:47:00', 'prechistitelna-stanica-za-otpadni-vodi-ezerani-rekonstrukcija-i-modernizacija', 'precistitelna-stanica-ezerani.jpg', 1, 'mk'),
(73, 'Систем за третман на санитарна и систем за третман на отпадна вода во ХЕЦ Св. Петка', 'Систем за третман на санитарна и систем за третман на отпадна вода во ХЕЦ Св. Петка', '<p><strong>Систем за третман на санитарна вода </strong><br /><br />Технолошкото решение за обработка на суровата вода се состои од следниве целини:</p>\n<ul>\n<li>Филтрација&nbsp;</li>\n<li>Омекнување&nbsp;</li>\n<li>Деминерализација&nbsp;</li>\n<li>Дезинфекција&nbsp;</li>\n</ul>\n<p><br />Технолошките решениа по фази се сертифицирани со правилник за третман на вода и NSF стандард. Капацитет на системот изнесува 2500 Л/час. <br /><br /></p>\n<p><img src="/fluid/public/uploaded/hid1.jpg" width="300" height="195" style="margin-right: 20px;" /><img src="/fluid/public/uploaded/hid2.jpg" width="300" height="195" /></p>\n<p><br /><br /><strong>Систем за третман на отпадна вода </strong><br /><br />Постројката е изведена како компактна целина и претставува систем за прочистување на отпадната вода која ги исполнува сите законски и нормативни стандарди. Влезната комунална отпадна вода е со следниве карактеристики:</p>\n<ul>\n<li>ХПК 200 &ndash; 400mg/L&nbsp;</li>\n<li>БПК5 250 &ndash; 250 mg/L&nbsp;</li>\n<li>Суспендирани материи 200 &ndash; 300 mg/L&nbsp;</li>\n<li>pH 6-8&nbsp;</li>\n</ul>\n<p><br />Номиналниот технолошки капацитет изнесува 10 ЕЖ, додека биолошкиот капацитет е 0,6 кгБПК5/ден. Технолошката постапка за прочистување на отпадните води е составена од:</p>\n<ul>\n<li>Егализација&nbsp;</li>\n<li>Аерација&nbsp;</li>\n<li>Кларификација&nbsp;</li>\n<li>Рециркулација&nbsp;</li>\n</ul>\n<p><br />Физичко-хемиските карактеристики на обработената вода се следниве:</p>\n<ul>\n<li>ХПК 80 &ndash; 120 mg/L&nbsp;</li>\n<li>БПК 5 15 &ndash; 25mg/L&nbsp;</li>\n<li>pH 6 - 8</li>\n</ul>', '2012-09-22 20:33:18', '2012-09-17 09:49:00', 'sistem-za-tretman-na-sanitarna-i-sistem-za-tretman-na-otpadna-voda-vo-hec', 'he-sveta-petka.jpg', 1, 'mk'),
(74, 'Филтер пиколо', 'Филтер пиколо', '<p>Пиколо претставува физичко-хемиски филтер за вода. Се состои од куќиште кое се монтира на самата чешма, а во себе содржи патрон со активен јаглен низ кој поминува водата од вашата чешма.<br /><br /></p>\n<ul>\n<li>хлор и хлориди во водата (преку 95%)</li>\n<li>пестициди - 70%трихалометани - 80%</li>\n<li>органски соединенија - 70%</li>\n<li>индустриски растворувачи - 70%</li>\n</ul>\n<div><br />Физичко филтрирање на:<br />\n<ul>\n<li>честички до 2 &micro; - преку 90%</li>\n<li>честички до 3 &micro; - 100%</li>\n</ul>\n<br />Пиколо е мал и практичен уред погоден за филтрирање на водата за пиење, готвење и сите останати потреби во вашето домаќинство.<br /><br />Потрошен материјал на овој уред се патрони со активен јаглен кои се менуваат на период од 3-6 месеци во зависност од потрошувачката на вода.<br /><br /><strong>Instapure Brands</strong> пиколо филтри се американски производ, кој на македонскиот пазар ви го овозможува Флуид Проект ДОО.&nbsp;</div>', '2012-09-26 23:30:17', '2012-09-17 10:25:00', 'filter-pikolo', 'filter-pikolo1.jpg', 1, 'mk'),
(75, 'Профил на компанијата', 'Краток историјат на компанијата', '<p style="text-align: justify;">Флуид Проект ДОО е компанија во приватна сопственост, која на високо професионално и стручно ниво ги покрива областите на проектирање, консалтинг и инженеринг на еколошкиот третман на водата за пиење и отпадната вода, вода за фармацевтски и медицински потреби (GMP сертификат) , заштита на човековата околина и подводни истражувања, подводни активности, проектирање и изведба на објекти од посебен интерес, спортски и рекреативни базени, фонтани, автоматско управување и контрола на процесите, одржување и сервисирање на опремата и објектите и друго.<br /><br />Компанијата е формирана 1992 година, а нејзините пионерски чекори во истражувачките и развојни активности, во овие области датираат од 1983 година.<br /><br />Во досегашната работа Флуид Проект го покрива пазарот во Македонија, со посебен акцент на извоз на опрема и технологија во Косово, Бугарија, Бoсна и Херцеговина и Србија.<br /><br />Единствена, реномирана и потврдена компанија во изработка и спроведување на технологиите за GMP-сертификација на системите за&nbsp;обработка на вода за медицински и фармацевтски потреби во Република Македонија.<br /><br />Флуид Проект е носител на активноста во повеќе еколошки студии и проекти од областа на заштита на животната средина, истражувања на водните ресурси и заштита на подводни археолошки и природни реткости.<br /><br />Флуид Проект проектира и изведува објекти за третман на отпадна вода од комунални објекти, кланици и месна индустрија, индустрија за кожа, млечна индустрија, индустрија за масло, хемиска индустрија и др.<br /><br />Спортските и рекреативните базени и фонтани и за нив неопходна опрема со нивно одржување се дел од услугите и производите на Флуид Проект, компанија со богато искуство од стотина базени изведени во Македонија и надвор од неа, со склучени договори за одржување и хемиско третирање на истите.<br /><br />Зад широкиот спектар на услуги и производи стои професионален тим кој ви стои на располагање на вашите желби и потреби.&nbsp;</p>', '2012-09-30 19:03:02', '2012-09-18 09:47:00', 'profil-na-kompanijata', 'default_featured_image.jpg', 1, 'mk'),
(76, '0', '0', '0', '2012-09-22 19:21:47', '1970-01-01 01:00:00', '', 'default_featured_image.jpg', 0, 'mk'),
(77, 'Проектирање и изведба', 'Проектирање и изведба', '<p style="text-align: justify;">ФЛУИД ПРОЕКТ е компанија која нуди комплетни услуги од областа на третман на води и еколошки технологии.<br /><br />Во нашето работење е вплотено целокупното искуство и знаење на нашиот тим стекнати при изградбата на различни типови на објекти за третирање на вода.&nbsp;<br /><br />&nbsp;Со нашиот стручен кадар и опремата со која располагаме подготвени сме да излеземе во пресрет на секаков тип на задачи и предизвици поставени пред нас од страна на клиентите.<br /><br />&nbsp;Квалитетот на извршените работи и запазувањето на договорените рокови се врвни приоритети во нашето работење.<br /><br />ФЛУИД ПРОЕКТ проектира и изведува:<br /><br /><br /></p>\n<p><strong>ПОСТРОЈКИ ЗА ВОДА ЗА ФАРМАЦЕВСКИ И ЗДРАВСТВЕНИ УСТАНОВИ</strong></p>\n<p>Постројки за призводство на ултра-пречистена вода HPW (High Purified Water) и пречистена PW (Purified water), проектирани и изведени по GMP (Good Manufacturing Practice) стандарди, за фармацевски и здравствени установи<br /><br />Постројки за производство на вода за центри за дилјализа изработени по (Good Manufacturing Practice) стандарди<br /><br />Мали постројки (реверзни осмози) за лабараториски услови<br /><br /><strong>ПОСТРОЈКИ ЗА ТРЕТМАН НА ОТПАДНА ВОДА<br /><br /></strong>Постројки за третман на индсутриски отпадни води од: рафинерии, мелкари, месни и текстилни индустрии<br /><br />Постројки за третман на комунална отпадна вода од станбени објекти, куќи, населби и села<br /><br />Постројки за третман на отпадна вода од комерцијални објекти: хотели, мотели, ресторани и мензи<br /><br /><strong>ПОСТРОЈКИ ЗА ТРЕТМАН НА ВОДА ЗА ДОМАШНА УПОТРЕБА<br /><br /></strong></p>\n<ul>\n<li>Постројки за омекнување (декарбонизација) на вода</li>\n<li>Постројки за деферизација (отстранување на железо) на вода</li>\n<li>Постројки за деманганизација (отсранување на манган) на вода</li>\n<li>Постројки за денитрификација (отсранување на амониак) на вода</li>\n<li>Постројки за деминерализација (отсранување на минерали) на вода</li>\n<li>Постројки за УВ стерилизација (отсранување на бактерии) на вода&nbsp;</li>\n</ul>', '2012-09-23 15:00:44', '2012-09-23 14:27:00', 'proektiranje-i-izvedba', 'proektiranje-izvedba.jpg', 1, 'mk'),
(78, 'Консалтинг', 'Дистрибуција на вода\r\nТретман на вода\r\nТретман на отпадна вода\r\nПроизводни и специјални работи\r\nПроизводство на специјална опрема\r\nФизибилити студии за еколошки третмани', '<p>Во областа на консалтинг, компанијата е фокусирана врз проекти и консултантски услуги за:<br /><br /></p>\r\n<ul>\r\n<li>Дистрибуција на вода</li>\r\n<li>Третман на вода</li>\r\n<li>Третман на отпадна вода</li>\r\n<li>Производни и специјални работи</li>\r\n<li>Производство на специјална опрема</li>\r\n<li>Физибилити студии за еколошки третмани</li>\r\n</ul>\r\n<div><br /><br /></div>\r\n<div style="text-align: justify;"><strong>Изработка на студии, програми и бизнис планови</strong><br /><br />&nbsp;Брзиот развој на економските и технолошките текови сe повеќе ги поттикнува компаниите да ангажираат надворешни стручни кадри од различни области посебно во областа на техниката. ФЛУИД ПРОЕКТ СКОПЈЕ за тие потреби, како реномирана куќа сe повеќе се вклучува во контролата и развојот на еколошките технологии и третмани на вода во Република Македонија. За тие потреби изработуваме студии, програми и бизнис планови врз основа на кои ќе се утврди начинот на развој на пооделните еколошки проекти, како и начинот за контрола на нивно целосно имплементирање и тековна исправна работа и успешност на функционирање.<br /><br /><strong>Производствен и експлоатациски консалтинг</strong><br /><br />Во овој домен екипата на ФЛУИД ПРОЕКТ во секој момент точно Ве советува за законските прописи од областа на еколошките третмани и експалтација на водените ресурси, како и нивната секојдневна практична примена, потоа за различни технолошки решенија за домашна, индустриска и комерцијална употерба, со еден збор за ИНЖЕНЕРИНГ работење во целост. Сево ова на нашите клиенти им е достапно во секој момент, вклучувајќи ја и можноста за мобилна комуникација<br /><br /><strong>Елаборати и физибилити студии за проценка на техно - економските услови за различни постројки за третман на води<br /><br /></strong>ФЛУИД ПРОЕКТ долги години работи на проекти за проценка на техно - економските услови за различни постројки за третман на води. Проценката ја врши овластен инженерски кадар согласно македонската позитивна законска регулатива.&nbsp;</div>', '2012-09-23 15:08:35', '2012-09-23 14:57:00', 'konsalting', 'konsalting.jpg', 1, 'mk'),
(79, 'Одржување и сервис', 'Одржување и сервис', '<p>ФЛУИД ПРОЕКТ е овластен сервисер на опремата од производната програмата на:<br /><br /></p>\r\n<ul>\r\n<li>ECOWATER од САД, производител на опрема за третман на вода.</li>\r\n<li>ETATRON од Италија, производител на системи за дозирање.</li>\r\n<li>ATLAS од Италија, производител на филтерска опрема.</li>\r\n<li>EURAQUA од Белгија, производител на опрема за третман на вода.</li>\r\n<li>ECOFLUID од Чешка, производител на опрема за третман на отпадна вода.</li>\r\n<li>INJECTA од Италија, производител на системи за дозирање и мерни инструменти</li>\r\n<li>DIMM од Белгија, производител на филтерска опрема</li>\r\n</ul>\r\n<div style="text-align: justify;"><br /><br />Сервисот располага со комплетниот сет на дијагностички апарати, специјален алат и опрема за квалитетно и нормално функционирање на постпродажбата - одржување, дијагностика и сервисирање според строгите стандарди на производителите.<br /><br />ФЛУИД ПРОЕКТ располага со големи број специјализирани и универзални дијагностички апарати и тестери за квалитет на вода кои му овозможуваат на ФЛУИД да функционира како најквалитетниот мулти бренд сервисен центар за третман на вода во Македонија<br /><br />ФЛУИД ПРОЕКТ на своите клиенти им ја нуди услугата за сите видови интервенции, вклучувајќи ги и најсложените интервенции во модерниот сервис за поправки и одржување на опрмата од горенаведените производители<br /><br />Kлиентите кои купиле опрема од ФЛУИД ПРОЕКТ добиваат специјални попусти и бенефиции при сервисните интервенции.<br /><br /><strong>Резервни делови</strong>&nbsp;<br /><br />ФЛУИД ПРОЕКТ располага со залиха на оригинални резервни делови од програмата на сите производители за кои е лиценциран застапник кои гарантираат нормално и квалитетно одржување и сервисирање на опремата за вода.<br /><br />Резервните делови можете да ги набавите во сервисниот центар на ФЛУИД ПРОЕКТ.</div>', '2012-09-23 15:28:11', '2012-09-23 15:19:00', 'odrzhuvanje-i-servis', 'odrzuvanje.jpg', 1, 'mk'),
(80, 'Подводни истражувања', 'Подводни истражувања', '<p style="text-align: justify;">Флуид Проект има тим од нуркачи кои се спремни за вршење подводни активности, како што се истражувања, снимања, интервенции на цевководи и др.<br /><br />&nbsp;За да може надгледувањата, експертизите и техничките контроли да бидат достапни и употребливи и за лицата кои немаат подготовка да бидат нуркачи, се изработуваат подводни фотографии и подводни видео снимки.<br /><br />Опремата за подводно фотографирање и видео снимање, која ја поседува Флуид Проект дава можности за изработка на подводна документација со висок квалитет.&nbsp;</p>', '2012-09-23 15:37:00', '2012-09-23 15:30:00', 'podvodni-istrazhuvanja', 'podvodni_istrazuvanja.jpg', 1, 'mk'),
(81, 'Атлас филтри', 'Краток опис', '<p style="text-align: justify;">Физички филтер за филтрирање на вода.<br /><br />&nbsp;Филтерските единици се составени од пластично куќиште изработено од ПЕ и ПП материјали, глава со навој, навоен затварач и гумен о-ринг. На филтерската глава изведени се влез и излез од &frac34;&rdquo; или 1&rdquo;, како и навоен вентил за обезвоздушување.<br /><br />Во куќиштето се ставаат влошки за физичка филтрација и контејнери со различна исполна во зависност од типот на хемиска обработка.<br /><br />Атлас филтрите се италијански производ, кој на македонскиот пазар Ви го нуди Флуид Проект.<br /><br />Патрони (влошки) за филтерот.<br /><br />Овие филтри се користат за зафаќање на тврди честици и минерали кои се наоѓаат во водоснабдителните системи. Одлични се за заштита на домашната вода за готвење и пиење.&nbsp;</p>', '2012-09-26 23:35:30', '2012-09-23 21:03:00', 'atlas-filtri', 'atlas-filter.jpg', 1, 'mk'),
(82, 'УВ стерилизатор', 'УВ стерилизатор, уред за бактериолошки третман - санитација на водата', '<p style="text-align: justify;">Уред за бактериолошки третман &ndash; санитација на водата.<br /><br />Уредите вршат 99,9% стерилизација на водата без менување на нејзиниот хемиски состав. Во постапката на стерилизирање, водата прво поминува низ систем за физичко пречистување со пропустливост под 25&mu;, а потоа низ комора за антибактерицидно дејство со УВ ламба. Уредот работи приклучен во мрежата под притисок, но исто така е неопходно и електрично напојување од 220V; 50Hz.<br /><br />Стерилизација на водата со помош на ултравиолетово зрачење е стара метода, која се употребува уште од 1924 година. Ултравиолетовите зраци имаат бранова должина помеѓу 1500 и 3000 ангстерми, а зрците од околу 2500 ангстерми имаат антибактерицидно дејство.Оваа бранова должина ја произведуваат ламби со низок притисок, исполенети со живина пареа. Просечниот работен век на ламбите е помеѓу 9000 и 15000 работни часови.<br /><br />Се користи за домаќинствата и комерцијални употреби за обработка на водата за пиење.&nbsp;</p>', '2012-09-26 23:41:31', '2012-09-23 21:14:00', 'uv-sterilizator', 'uv-sterilizator.jpg', 1, 'mk'),
(83, 'Јонски омекнувач на вода', 'Јонски омекнувач на вода. Уред за отстранување на калциум (бигор) од водата.', '<p style="text-align: justify;">Уред за отстранување на калциум (бигор) од водата.<br /><br />Омекнувањето на водата се врши на принципот на измена на јони. Катјонскиот полимерен изменувач, сместен во колоната, ги менува јоните на калциум со јони на натриум. Регенерацијата се врши со NaCl (нејодирана сол). Целиот процес го контролира и управува соодветен процесор и вентилска група.<br /><br />Овие уреди ги решаваат сите проблеми предизвикани од тврдата вода.<br /><br />Флуид Проект нуди неколку стандардни типови на омекнувачи, но се проектираат и изведуваат по потреба и други со поспецифични параметри.<br /><br />Се користи за домаќинствата за пиење и санитарната вода додека пак во индустријата за добивање на квалитетна технолошка вода.</p>', '2012-09-26 23:40:06', '2012-09-23 21:18:00', 'jonski-omeknuvach-na-voda', 'jonski-omeknuvac-na-voda.jpg', 1, 'mk'),
(84, 'Пречистителни станици', 'Пречистителни станици', '<p style="text-align: justify;">Обработката на отпадните води е процес на отстранување на загадувачите од отпадната вода. Флуид Проект нуди целосни решенија за овие процеси врз база на септички танкови, биофилтри или системи за аеробна обработка за различна капацитети, почнувајќи од мали пречистителни станици за домаќинства , па се до пречистителни станици за отпадна вода за населени места. Системите произведени од страна на Флуид Проект се според сите важечи стандарди пропоишани во Република Македонија и ЕУ.<br /><br />Вашите барања ги дискутираме заедно до одредувањето на проектната задача. Она што следи е изготвување на проект од страна на нашиот проектантски тим. Реализацијата ја вршат наши екипи едуцирани и подгтвени со сите средства да го остварат она што е проектирано во техничката документација.&nbsp;</p>', '2012-09-26 23:48:32', '2012-09-23 21:27:00', 'prechistitelni-stanici', 'precistitelna-stanica.jpg', 1, 'mk'),
(85, 'Базени, фонтани и опрема', 'Базени, фонтани и опрема', '<p style="text-align: justify;">Флуид Проект како субјект на пазарот кој нуди производи за обработка, третирање на водата во својата програма нуди и услуги за проектирање и изведба на базени и фонтани, продажба на опрема за истите и нивно соодветно одржување.<br /><br />Во Флуид Проект ве очекува искусен тим кој е спремен да ви излезе во пресрет од моментот на планирање на вашиот базен или фонтана па се до негова реализација и пуштање во употреба. Ве советуваме околу изборот на типот на базен, неговиот дизајн, материјалите и опремата според вашите желби.<br /><br />Искуството го изградивме со долгогошното присуство на пазарот и со самото тоа се етаблиравме како водечка компанија во овој сектор. Зад нас стојат голем број на изведени базени и фонтани, многу задоволни и среќни клиенти кои и понатаму ги користат нашите услуги, односно, тековно одржување и снабдување со базенска хемија.</p>', '2012-09-26 23:50:50', '2012-09-23 21:31:00', 'bazeni-fontani-i-oprema', 'bazen.jpg', 1, 'mk');

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

DROP TABLE IF EXISTS `articles_categories`;
CREATE TABLE IF NOT EXISTS `articles_categories` (
  `articles_categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `lang` char(2) COLLATE utf8_unicode_ci DEFAULT 'mk',
  PRIMARY KEY (`articles_categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=598 ;

--
-- Dumping data for table `articles_categories`
--

INSERT INTO `articles_categories` (`articles_categories_id`, `articles_id`, `categories_id`, `lang`) VALUES
(342, 68, 1, 'mk'),
(544, 67, 1, 'mk'),
(543, 66, 1, 'mk'),
(556, 74, 7, 'mk'),
(506, 73, 13, 'mk'),
(597, 72, 13, 'mk'),
(509, 77, 6, 'mk'),
(511, 78, 6, 'mk'),
(522, 79, 6, 'mk'),
(525, 80, 6, 'mk'),
(561, 81, 7, 'mk'),
(568, 82, 7, 'mk'),
(566, 83, 7, 'mk'),
(573, 84, 7, 'mk'),
(576, 85, 7, 'mk');

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
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'mk',
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `name`, `description`, `slug`, `featured_image`, `logo`, `lang`) VALUES
(1, 'Новости', '', 'novosti', 'default_featured_image.jpg', 'logo.png', 'mk'),
(6, 'Услуги', '', 'uslugi', 'default_featured_image.jpg', 'logo.png', 'mk'),
(7, 'Производи', '', 'proizvodi', 'default_featured_image.jpg', 'logo.png', 'mk'),
(13, 'Проекти', '', 'proekti', 'default_featured_image.jpg', 'logo.png', 'mk'),
(14, 'News', '', 'news', 'default_featured_image.jpg', 'logo.png', 'en'),
(15, 'Services', '', 'services', 'default_featured_image.jpg', 'logo.png', 'en'),
(16, 'Products', '', 'products', 'default_featured_image.jpg', 'logo.png', 'en'),
(17, 'Projects', '', 'projects', 'default_featured_image.jpg', 'logo.png', 'en');

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
  `lang` char(2) COLLATE utf8_unicode_ci DEFAULT 'mk',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `content`, `lang`) VALUES
(1, '<div class="contact">\r\n<h2>Fluid Project doo</h2>\r\n<div style="padding: 10px 5px 5px 0px;">\r\n<p><img src="/fluid/images/con_address.png" />st. &bdquo;Mito Hagivasiliev Jasmin&ldquo;</p>\r\n<p>No.48 block V 1000 Skopje</p>\r\n<p>Republic of Macedonia</p>\r\n</div>\r\n<div style="padding: 0px 5px 10px 0px;">\r\n<p><img src="/fluid/images/con_factory.png" />Factory address:</p>\r\n<p>st. Radishanska No.114</p>\r\n</div>\r\n<p><img src="/fluid/images/con_tel.png" />phone. +389 2 3130 143</p>\r\n<p><img src="/fluid/images/con_fax.png" />fax. +389 2 3212 767</p>\r\n<p><img src="/fluid/images/con_email.png" />e-mail. contact@fluidproject.com.mk</p>\r\n</div>\r\n<div class="map"><img src="/fluid/images/map.jpg" /></div>', 'en'),
(2, '<div class="contact">\r\n<h2>Флуид Проект ДОО</h2>\r\n<div style="padding: 10px 5px 5px 0px;">\r\n<p><img src="/fluid/images/con_address.png" />ул. &bdquo;Мито Хаџивасилев Јасмин&ldquo;</p>\r\n<p>бр.48 блок V 1000 Скопје</p>\r\n<p>Република Македонија</p>\r\n</div>\r\n<div style="padding: 0px 5px 10px 0px;">\r\n<p><img src="/fluid/images/con_factory.png" />Производствен погон:</p>\r\n<p>ул. Радишанска бр.114</p>\r\n</div>\r\n<p><img src="/fluid/images/con_tel.png" />тел. +389 2 3130 143</p>\r\n<p><img src="/fluid/images/con_fax.png" />факс. +389 2 3212 767</p>\r\n<p><img src="/fluid/images/con_email.png" />e-mail. contact@fluidproject.com.mk</p>\r\n</div>\r\n<div class="map"><img src="/fluid/images/map.jpg" /></div>', 'mk');

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
  `lang` char(2) COLLATE utf8_unicode_ci DEFAULT 'mk',
  PRIMARY KEY (`menu_items_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`menu_items_id`, `text`, `link`, `parent_id`, `date_created`, `order_index`, `depth_level`, `lang`) VALUES
(1, 'За нас', 'articles/75-profil-na-kompanijata', 0, '2012-09-23 15:09:54', 100, 0, 'mk'),
(2, 'Проекти', 'category/13-proekti', 0, '2012-09-23 13:49:14', 200, 0, 'mk'),
(3, 'Услуги', 'category/6-uslugi', 0, '2012-09-23 15:10:09', 300, 0, 'mk'),
(4, 'Проектирање и изведба', 'articles/77-proektiranje-i-izvedba', 3, '2012-09-23 14:35:40', 303, 1, 'mk'),
(5, 'Одржување и сервис', 'articles/79-odrzhuvanje-i-servis', 3, '2012-09-23 15:29:06', 305, 1, 'mk'),
(24, 'Производи', 'category/7-proizvodi', 0, '2012-09-23 21:33:51', 400, 0, 'mk'),
(25, 'Контакт', 'contact', 0, '2012-09-29 10:20:24', 500, 0, 'mk'),
(49, 'Профил', 'articles/75-profil-na-kompanijata', 1, '2012-09-18 09:50:17', 102, 1, 'mk'),
(46, 'Подводни истражувања', 'articles/80-podvodni-istrazhuvanja', 3, '2012-09-23 15:37:40', 306, 1, 'mk'),
(48, 'Филтер Пиколо', 'articles/74-filter-pikolo', 24, '2012-09-17 10:53:04', 401, 1, 'mk'),
(47, 'Референци', 'articles/54-referenci', 1, '2012-09-17 01:01:25', 101, 1, 'mk'),
(50, 'Атлас филтри', 'articles/81-atlas-filtri', 24, '2012-09-23 21:11:03', 402, 1, 'mk'),
(51, 'Јонски омекнувач на вода', 'articles/83-jonski-omeknuvach-na-voda', 24, '2012-09-23 21:21:25', 403, 1, 'mk'),
(52, 'УВ стерилизатор', 'articles/82-uv-sterilizator', 24, '2012-09-23 21:23:41', 404, 1, 'mk'),
(53, 'Пречистителни станици', 'articles/84-prechistitelni-stanici', 24, '2012-09-23 21:29:07', 405, 1, 'mk'),
(54, 'Базени фонтани и опрема', 'articles/85-bazeni-fontani-i-oprema', 24, '2012-09-23 21:33:13', 406, 1, 'mk'),
(55, 'Консалтинг', 'articles/78-konsalting', 3, '2012-09-23 15:09:07', 304, 1, 'mk'),
(56, 'About us', 'articles/87-company-profile', 0, '2012-09-30 18:43:19', 100, 0, 'en'),
(57, 'References', 'articles/86-references', 56, '2012-09-30 18:46:34', 101, 1, 'en'),
(58, 'Profile', 'articles/87-company-profile', 56, '2012-09-30 19:00:13', 102, 1, 'en'),
(59, 'Projects', 'category/17-projects', 0, '2012-09-30 19:02:31', 200, 0, 'en'),
(60, 'Products', 'category/16-products', 0, '2012-09-30 19:03:25', 400, 0, 'en'),
(61, 'Services', 'category/15-services', 0, '2012-09-30 19:04:06', 300, 0, 'en'),
(62, 'Contact', 'contact', 0, '2012-09-30 19:05:04', 400, 0, 'en');

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
  `lang` char(2) COLLATE utf8_bin DEFAULT 'mk',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Dumping data for table `sidebar`
--

INSERT INTO `sidebar` (`id`, `name`, `content`, `position`, `is_deletable`, `type`, `lang`) VALUES
(12, 'Проекти', 'elements/latest_projects', 0, 0, 'view', 'mk'),
(13, 'Facebook Like box', '<p><iframe style="border: none; overflow: hidden; width: 280px; height: 258px;" src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Ffluidproject&amp;width=280&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=false&amp;header=false&amp;appId=116131805118490" frameborder="0" scrolling="no"></iframe></p>', 4, 1, 'content', 'mk');

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
  `lang` char(2) COLLATE utf8_unicode_ci DEFAULT 'mk',
  PRIMARY KEY (`slides_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slides_id`, `title`, `description`, `link`, `image`, `date_created`, `order_index`, `lang`) VALUES
(2, 'Добредојдовте', '<p>      Можете да се надевате на успех, a можете и да                          се обучите за успех.</p>                                          <p>                         Triple S Learning - брзи, интезивни тренинг                      програми дизајнирани за Вашиот успех...</p>', '', 'slider1.jpg', '2012-07-08 12:44:02', 1, 'mk'),
(4, 'Еколошки пристап', '<p>ф</p>', '', 'slider3.jpg', '2012-09-17 10:01:31', 4, 'mk'),
(5, 'Филтри за вода', '<p>Филтри за вода</p>', '', 'slider4.jpg', '2012-09-17 10:01:48', 3, 'mk'),
(14, 'Пречистителни станици', '<p>opis</p>', '', 'slider2.jpg', '2012-09-17 01:02:19', 2, 'mk'),
(16, 'English slider', '<p>Desc</p>', '#', 'slider13.jpg', '2012-09-30 19:21:56', 1, 'en'),
(17, 'The second slider in English', '<p>with some desc</p>', '#', 'slider31.jpg', '2012-09-30 19:22:47', 2, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_documents`
--

DROP TABLE IF EXISTS `uploaded_documents`;
CREATE TABLE IF NOT EXISTS `uploaded_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` text NOT NULL,
  `image_name` varchar(2500) NOT NULL,
  `date_created` datetime NOT NULL,
  `lang` char(2) DEFAULT 'mk',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `uploaded_documents`
--

INSERT INTO `uploaded_documents` (`id`, `file_name`, `image_name`, `date_created`, `lang`) VALUES
(1, 'kako_do_zdrava_voda_za_pienje.pdf', 'water-drink.jpg', '2012-09-29 12:04:04', 'mk');
