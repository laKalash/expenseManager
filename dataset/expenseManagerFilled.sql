-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2019 at 03:05 PM
-- Server version: 10.1.40-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expenseManager`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `cliId` int(11) NOT NULL,
  `cliNom` varchar(50) NOT NULL,
  `cliPrenom` varchar(50) NOT NULL,
  `cliFonction` varchar(50) NOT NULL,
  `cliContact` varchar(50) NOT NULL,
  `entSiret` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`cliId`, `cliNom`, `cliPrenom`, `cliFonction`, `cliContact`, `entSiret`) VALUES
(1, 'Key', 'Dominique', 'Accounting', 'dominique.key@vulputatelacuscorp.com', 218412161),
(2, 'Pickett', 'Lareina', 'Asset Management', 'lareina.pickett@quamconsulting.com', 447531930),
(3, 'Mckenzie', 'Heather', 'Tech Support', 'heather.mckenzie@egetlimited.com', 783000417),
(4, 'Bender', 'Ivana', 'Research and Development', 'ivana.bender@pellentesqueassociates.com', 371529777),
(5, 'Berry', 'Harlan', 'Sales and Marketing', 'harlan.berry@vulputatelacuscorp.com', 218412161),
(6, 'Tanner', 'Mercedes', 'Public Relations', 'mercedes.tanner@cursusintegermollisconsulting.com', 92997972),
(7, 'Hansen', 'Jelani', 'Quality Assurance', 'jelani.hansen@laciniacompany.com', 66423302),
(8, 'Moran', 'Tashya', 'Payroll', 'tashya.moran@sagittisfeliscorporation.com', 936798636),
(9, 'Reyes', 'Jakeem', 'Customer Relations', 'jakeem.reyes@cubilialtd.com', 55079149),
(10, 'Head', 'Tyrone', 'Customer Relations', 'tyrone.head@egetcompany.com', 612788794),
(11, 'Castaneda', 'Jaden', 'Asset Management', 'jaden.castaneda@sedlimited.com', 500704051),
(12, 'Austin', 'Wanda', 'Quality Assurance', 'wanda.austin@utllp.com', 875407934),
(13, 'Workman', 'Craig', 'Advertising', 'craig.workman@dapibusinc.com', 228273629),
(14, 'Robles', 'Celeste', 'Public Relations', 'celeste.robles@morbiinc.com', 613893320),
(15, 'Johnson', 'Nissim', 'Customer Service', 'nissim.johnson@placeratorciincorporated.com', 892461716),
(16, 'Romero', 'Cody', 'Quality Assurance', 'cody.romero@noninc.com', 337042089),
(17, 'Griffith', 'Kenneth', 'Customer Service', 'kenneth.griffith@integermollisintegerlimited.com', 131586208),
(18, 'Irwin', 'Rowan', 'Payroll', 'rowan.irwin@mollisintegerllc.com', 523408946),
(19, 'Brock', 'Len', 'Media Relations', 'len.brock@nonummyacfeugiatcompany.com', 56035777),
(20, 'Collins', 'Hakeem', 'Research and Development', 'hakeem.collins@nullaindustries.com', 61867933),
(21, 'Molina', 'Roth', 'Human Resources', 'roth.molina@donecfeugiatincorporated.com', 478127004),
(22, 'Thompson', 'Jane', 'Research and Development', 'jane.thompson@nonummyacfeugiatcompany.com', 56035777),
(23, 'Elliott', 'Ayanna', 'Research and Development', 'ayanna.elliott@necllc.com', 742448533),
(24, 'Nelson', 'Fuller', 'Customer Relations', 'fuller.nelson@elitindustries.com', 629859554),
(25, 'Buckley', 'Gil', 'Accounting', 'gil.buckley@gravidapraesenteullc.com', 478283492),
(26, 'Atkins', 'Serina', 'Tech Support', 'serina.atkins@noninc.com', 337042089),
(27, 'Navarro', 'Herrod', 'Finances', 'herrod.navarro@eroslimited.com', 382327690),
(28, 'Nieves', 'Graiden', 'Quality Assurance', 'graiden.nieves@phasellusfermentumconvallisconsulti', 326107711),
(29, 'Clarke', 'Reece', 'Public Relations', 'reece.clarke@magnasuspendissetristiquellp.com', 549120509),
(30, 'Freeman', 'Rose', 'Quality Assurance', 'rose.freeman@erosnonenimincorporated.com', 495840779),
(31, 'Horn', 'Candace', 'Customer Relations', 'candace.horn@cumsociisnatoquecorp.com', 574138939),
(32, 'Merrill', 'Curran', 'Media Relations', 'curran.merrill@magnapc.com', 921279634),
(33, 'Cervantes', 'Nissim', 'Customer Relations', 'nissim.cervantes@vitaepuruscorporation.com', 579008012),
(34, 'Long', 'Mollie', 'Accounting', 'mollie.long@inconsectetueripsumlimited.com', 40745267),
(35, 'Everett', 'Colton', 'Public Relations', 'colton.everett@necmetusfacilisisltd.com', 951594225),
(36, 'Ratliff', 'Maia', 'Media Relations', 'maia.ratliff@sedlimited.com', 500704051),
(37, 'Leonard', 'Perry', 'Asset Management', 'perry.leonard@fusceinstitute.com', 378558365),
(38, 'Reeves', 'Ignacia', 'Payroll', 'ignacia.reeves@mollisintegerllc.com', 523408946),
(39, 'Solis', 'Chiquita', 'Research and Development', 'chiquita.solis@innecinstitute.com', 384379913),
(40, 'Mclaughlin', 'Jasper', 'Customer Relations', 'jasper.mclaughlin@sedmolestiesedcorp.com', 488914789),
(41, 'Bishop', 'Garth', 'Customer Service', 'garth.bishop@velpedeblanditassociates.com', 975977265),
(42, 'Calhoun', 'Orlando', 'Finances', 'orlando.calhoun@fusceinstitute.com', 586830028),
(43, 'Holden', 'Vivien', 'Tech Support', 'vivien.holden@mollisintegerllc.com', 523408946),
(44, 'Lester', 'Hanae', 'Payroll', 'hanae.lester@euaccumsaninc.com', 529288623),
(45, 'Adkins', 'Lila', 'Human Resources', 'lila.adkins@ipsumportaconsulting.com', 811018241),
(46, 'Chan', 'Jenna', 'Customer Relations', 'jenna.chan@utmipc.com', 800125890),
(47, 'Craig', 'Germane', 'Tech Support', 'germane.craig@egetcompany.com', 612788794),
(48, 'Hayes', 'Deborah', 'Legal Department', 'deborah.hayes@posuerecubiliacurae;consulting.com', 91439265),
(49, 'Crane', 'Hanna', 'Finances', 'hanna.crane@utmipc.com', 800125890),
(50, 'Castaneda', 'Mechelle', 'Customer Relations', 'mechelle.castaneda@pellentesqueafacilisisinc.com', 813011681),
(51, 'Colon', 'Stephen', 'Quality Assurance', 'stephen.colon@curabiturcorp.com', 920158524),
(52, 'Randolph', 'Cullen', 'Media Relations', 'cullen.randolph@ligulanullamfeugiatassociates.com', 685831620),
(53, 'Humphrey', 'Guinevere', 'Quality Assurance', 'guinevere.humphrey@ametfaucibusindustries.com', 180277766),
(54, 'Brown', 'Brody', 'Asset Management', 'brody.brown@scelerisquenequesedindustries.com', 177726171),
(55, 'Rose', 'Branden', 'Accounting', 'branden.rose@dolorinc.com', 288528631),
(56, 'Spencer', 'Melvin', 'Finances', 'melvin.spencer@tinciduntinc.com', 433990033),
(57, 'Meadows', 'Mari', 'Sales and Marketing', 'mari.meadows@integermollisintegerlimited.com', 131586208),
(58, 'Barnett', 'Pandora', 'Public Relations', 'pandora.barnett@habitantmorbitristiquellc.com', 504756826),
(59, 'Mcguire', 'Wesley', 'Research and Development', 'wesley.mcguire@consequatltd.com', 736432386),
(60, 'Spencer', 'Charissa', 'Asset Management', 'charissa.spencer@elitindustries.com', 629859554),
(61, 'Pace', 'Glenna', 'Public Relations', 'glenna.pace@innecinstitute.com', 384379913),
(62, 'Willis', 'Cairo', 'Payroll', 'cairo.willis@vitaeassociates.com', 903567436),
(63, 'Bernard', 'Erich', 'Customer Relations', 'erich.bernard@convallisestindustries.com', 134649615),
(64, 'Wiley', 'Iliana', 'Customer Relations', 'iliana.wiley@fuscefermentumincorporated.com', 687298661),
(65, 'Waters', 'Hashim', 'Customer Service', 'hashim.waters@semconsulting.com', 795611771),
(66, 'Barry', 'Tanek', 'Advertising', 'tanek.barry@utllp.com', 875407934),
(67, 'Warren', 'Celeste', 'Research and Development', 'celeste.warren@aliquetllc.com', 99140311),
(68, 'Gates', 'Casey', 'Customer Relations', 'casey.gates@pellentesqueafacilisisinc.com', 813011681),
(69, 'Wolfe', 'Ashely', 'Legal Department', 'ashely.wolfe@atvelitcorporation.com', 169985611),
(70, 'Koch', 'Silas', 'Asset Management', 'silas.koch@utnullallc.com', 713400109),
(71, 'Reyes', 'Adara', 'Payroll', 'adara.reyes@liberoduiincorporated.com', 626743876),
(72, 'Harris', 'Malachi', 'Quality Assurance', 'malachi.harris@noninc.com', 337042089),
(73, 'Shannon', 'Kellie', 'Payroll', 'kellie.shannon@nislquisqueltd.com', 306930652),
(74, 'Mosley', 'Cody', 'Research and Development', 'cody.mosley@egetmetusconsulting.com', 15222904),
(75, 'Short', 'Winifred', 'Payroll', 'winifred.short@conubianostracorp.com', 327578415),
(76, 'Spears', 'Hayley', 'Research and Development', 'hayley.spears@utnullallc.com', 713400109),
(77, 'Ramirez', 'Susan', 'Customer Relations', 'susan.ramirez@tinciduntinc.com', 433990033),
(78, 'Salinas', 'Lareina', 'Customer Relations', 'lareina.salinas@fusceinstitute.com', 586830028),
(79, 'Bradshaw', 'Piper', 'Advertising', 'piper.bradshaw@nullaindustries.com', 61867933),
(80, 'Sutton', 'Erasmus', 'Payroll', 'erasmus.sutton@magnapc.com', 921279634),
(81, 'Pena', 'Lacota', 'Advertising', 'lacota.pena@sempereratinltd.com', 310513478),
(82, 'Schneider', 'Aidan', 'Asset Management', 'aidan.schneider@semconsulting.com', 795611771),
(83, 'Mckay', 'Sopoline', 'Finances', 'sopoline.mckay@vitaepuruscorporation.com', 579008012),
(84, 'Sweeney', 'Sybil', 'Payroll', 'sybil.sweeney@fermentumfermentumcorp.com', 55263735),
(85, 'Cain', 'Jerry', 'Research and Development', 'jerry.cain@fringillaornareplaceratllc.com', 294470281),
(86, 'Mayer', 'Gary', 'Quality Assurance', 'gary.mayer@auctorquislimited.com', 295032080),
(87, 'Sexton', 'Palmer', 'Customer Service', 'palmer.sexton@innecinstitute.com', 384379913),
(88, 'Silva', 'Elton', 'Customer Relations', 'elton.silva@montesnasceturridiculusincorporated.co', 858491376),
(89, 'Britt', 'Ivy', 'Tech Support', 'ivy.britt@pellentesqueassociates.com', 371529777),
(90, 'Lynn', 'Audrey', 'Legal Department', 'audrey.lynn@necmalesuadacorporation.com', 32699902),
(91, 'Gross', 'Aidan', 'Accounting', 'aidan.gross@nullaindustries.com', 61867933),
(92, 'York', 'Darryl', 'Payroll', 'darryl.york@atfringillacorp.com', 816850697),
(93, 'Nunez', 'Adena', 'Accounting', 'adena.nunez@lobortismaurissuspendissellc.com', 569979107),
(94, 'Elliott', 'Noble', 'Customer Service', 'noble.elliott@phasellusfermentumconvallisconsultin', 326107711),
(95, 'Zimmerman', 'Xena', 'Advertising', 'xena.zimmerman@necmetusfacilisisltd.com', 951594225),
(96, 'Mccarty', 'Linda', 'Human Resources', 'linda.mccarty@antevivamuscorporation.com', 185073087),
(97, 'Knapp', 'Justin', 'Payroll', 'justin.knapp@eroslimited.com', 382327690),
(98, 'Ratliff', 'Jason', 'Accounting', 'jason.ratliff@convallisinstitute.com', 666395454),
(99, 'Lynn', 'Rooney', 'Human Resources', 'rooney.lynn@cubilialtd.com', 55079149),
(100, 'Orr', 'Cherokee', 'Customer Relations', 'cherokee.orr@pellentesqueafacilisisinc.com', 813011681);

-- --------------------------------------------------------

--
-- Table structure for table `entreprise`
--

CREATE TABLE `entreprise` (
  `entSiret` int(11) NOT NULL,
  `entNom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entreprise`
--

INSERT INTO `entreprise` (`entSiret`, `entNom`) VALUES
(7690241, 'Id Nunc Interdum Corp.'),
(15222904, 'Eget Metus Consulting'),
(32699902, 'Nec Malesuada Corporation'),
(34078105, 'Integer Tincidunt Aliquam Inc.'),
(40745267, 'In Consectetuer Ipsum Limited'),
(55079149, 'Cubilia Ltd'),
(55263735, 'Fermentum Fermentum Corp.'),
(56035777, 'Nonummy Ac Feugiat Company'),
(61867933, 'Nulla Industries'),
(64669484, 'Morbi Non Sapien Inc.'),
(66423302, 'Lacinia Company'),
(86102217, 'Sem Elit Pharetra LLP'),
(91439265, 'Posuere Cubilia Curae; Consulting'),
(92997972, 'Cursus Integer Mollis Consulting'),
(99140311, 'Aliquet LLC'),
(131586208, 'Integer Mollis Integer Limited'),
(134649615, 'Convallis Est Industries'),
(160519450, 'Leo In Lobortis Inc.'),
(169985611, 'At Velit Corporation'),
(170782692, 'Parturient Industries'),
(177726171, 'Scelerisque Neque Sed Industries'),
(180277766, 'Amet Faucibus Industries'),
(185073087, 'Ante Vivamus Corporation'),
(218412161, 'Vulputate Lacus Corp.'),
(228273629, 'Dapibus Inc.'),
(236675054, 'Tincidunt Neque Corporation'),
(243034519, 'Interdum Sed Incorporated'),
(285747721, 'Consectetuer Foundation'),
(288528631, 'Dolor Inc.'),
(294470281, 'Fringilla Ornare Placerat LLC'),
(295032080, 'Auctor Quis Limited'),
(306930652, 'Nisl Quisque Ltd'),
(310513478, 'Semper Erat In Ltd'),
(316231356, 'Ac Libero Incorporated'),
(321943482, 'Gravida Associates'),
(326107711, 'Phasellus Fermentum Convallis Consulting'),
(327578415, 'Conubia Nostra Corp.'),
(336359021, 'Turpis Egestas Aliquam Institute'),
(337042089, 'Non Inc.'),
(344131792, 'Proin Dolor Nulla Associates'),
(344953807, 'Erat LLC'),
(351788104, 'Consequat Inc.'),
(356718544, 'Cursus Et Magna Corporation'),
(371529777, 'Pellentesque Associates'),
(378558365, 'Fusce Institute'),
(382327690, 'Eros Limited'),
(384379913, 'In Nec Institute'),
(433990033, 'Tincidunt Inc.'),
(447531930, 'Quam Consulting'),
(451927438, 'Aliquet Sem Limited'),
(478127004, 'Donec Feugiat Incorporated'),
(478283492, 'Gravida Praesent Eu LLC'),
(488914789, 'Sed Molestie Sed Corp.'),
(495840779, 'Eros Non Enim Incorporated'),
(500704051, 'Sed Limited'),
(504756826, 'Habitant Morbi Tristique LLC'),
(520475575, 'Nulla Tempor Augue Institute'),
(523408946, 'Mollis Integer LLC'),
(526762901, 'Aenean Euismod Mauris Limited'),
(529288623, 'Eu Accumsan Inc.'),
(549120509, 'Magna Suspendisse Tristique LLP'),
(569979107, 'Lobortis Mauris Suspendisse LLC'),
(574138939, 'Cum Sociis Natoque Corp.'),
(579008012, 'Vitae Purus Corporation'),
(586830028, 'Fusce Institute'),
(593527310, 'Mauris Associates'),
(612788794, 'Eget Company'),
(613893320, 'Morbi Inc.'),
(626743876, 'Libero Dui Incorporated'),
(629859554, 'Elit Industries'),
(666395454, 'Convallis Institute'),
(685831620, 'Ligula Nullam Feugiat Associates'),
(687298661, 'Fusce Fermentum Incorporated'),
(713400109, 'Ut Nulla LLC'),
(736432386, 'Consequat Ltd'),
(742448533, 'Nec LLC'),
(752360222, 'Lorem Ipsum'),
(779519180, 'Non Company'),
(783000417, 'Eget Limited'),
(783994692, 'Pede Blandit Congue Corp.'),
(795611771, 'Sem Consulting'),
(800125890, 'Ut Mi PC'),
(811018241, 'Ipsum Porta Consulting'),
(813011681, 'Pellentesque A Facilisis Inc.'),
(816850697, 'At Fringilla Corp.'),
(831544044, 'Et PC'),
(858491376, 'Montes Nascetur Ridiculus Incorporated'),
(875407934, 'Ut LLP'),
(892461716, 'Placerat Orci Incorporated'),
(903567436, 'Vitae Associates'),
(920158524, 'Curabitur Corp.'),
(921279634, 'Magna PC'),
(923134134, 'Magna Foundation'),
(936798636, 'Sagittis Felis Corporation'),
(947837803, 'Dapibus Ligula Corporation'),
(951594225, 'Nec Metus Facilisis Ltd'),
(952181089, 'Dui Quis Accumsan Corp.'),
(975977265, 'Vel Pede Blandit Associates'),
(981260888, 'Eu Turpis LLC'),
(984055772, 'Tempor Lorem Foundation');

-- --------------------------------------------------------

--
-- Table structure for table `frais`
--

CREATE TABLE `frais` (
  `fraId` int(11) NOT NULL,
  `fraType` varchar(50) NOT NULL,
  `fraDate` date NOT NULL,
  `fraEntNom` varchar(50) DEFAULT NULL,
  `fraStatus` enum('Nouveau','Refusé','Approuvé','Attente') DEFAULT NULL,
  `fraMontant` float NOT NULL,
  `fraMontantRemb` float DEFAULT NULL,
  `salId` int(11) NOT NULL,
  `cliId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `justificatif`
--

CREATE TABLE `justificatif` (
  `fraId` int(11) NOT NULL,
  `jusNum` int(11) NOT NULL,
  `jusUrl` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salarie`
--

CREATE TABLE `salarie` (
  `salId` int(11) NOT NULL,
  `salFonction` enum('Gestionnaire','Commercial','Startup') NOT NULL,
  `salMail` varchar(50) NOT NULL,
  `salMdp` varchar(255) NOT NULL,
  `salNom` varchar(50) NOT NULL,
  `salPrenom` varchar(50) NOT NULL,
  `entSiret` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salarie`
--

INSERT INTO `salarie` (`salId`, `salFonction`, `salMail`, `salMdp`, `salNom`, `salPrenom`, `entSiret`) VALUES
(1, 'Commercial', 'cullen.trevino@loremipsum.com', '$2y$10$A3v/UzgQc8zm8YXBlieBduxvmsBqJUYvT0Cmc2EK3JMF6vsddPNUy', 'Trevino', 'Cullen', 752360222),
(2, 'Commercial', 'teegan.schwartz@loremipsum.com', '$2y$10$YE/AuNlAIodsjGQq3SxHVOI/cqbrFxa36Ey2sEWP9nggUUAuRhoP.', 'Schwartz', 'Teegan', 752360222),
(3, 'Commercial', 'benedict.dunn@loremipsum.com', '$2y$10$w/f.QOlxpvR2bfqbU31yYuAO6xwFkEpCNeluDjSW3iiSQ33rk5O9K', 'Dunn', 'Benedict', 752360222),
(4, 'Commercial', 'natalie.oliver@loremipsum.com', '$2y$10$AWGdmIzxh8JPrE.xfYKQXObjXNjTEogCfbCfNH6I0YJhMRmZ9Loka', 'Oliver', 'Natalie', 752360222),
(5, 'Commercial', 'hamilton.manning@loremipsum.com', '$2y$10$c3rki3sXUxHdK.QCtPEuNOTDoLNPwIsLa5Nj1260TAGY5dqZB7Sba', 'Manning', 'Hamilton', 752360222),
(6, 'Commercial', 'ethan.nixon@loremipsum.com', '$2y$10$9iMl2JFquX0LUYByr0Xeseo91SGDzRO8hEDF7qHhh.D1WMU./Z3U6', 'Nixon', 'Ethan', 752360222),
(7, 'Commercial', 'lysandra.strong@loremipsum.com', '$2y$10$hNnyOO.DburAj/rnQ5qfcur5NEUmv1Dc1bc2T40PPDR1E9pW8hIoi', 'Strong', 'Lysandra', 752360222),
(8, 'Commercial', 'chelsea.hoffman@loremipsum.com', '$2y$10$rrBD60fbDUllaOnE8Ufwi./WpTUGx15Bk/7uY6gmyXJQQ9nkP0Rs6', 'Hoffman', 'Chelsea', 752360222),
(9, 'Commercial', 'keefe.duncan@loremipsum.com', '$2y$10$cy16XYTWxU7nhFagVFpK9uoUCMGNwcY486Q63bzxO7gQZHhLN/2hK', 'Duncan', 'Keefe', 752360222),
(10, 'Commercial', 'raymond.michael@loremipsum.com', '$2y$10$cyEWDW7bJbwkQBtYW063LOjOrLHb/tmaBONkXjhoJyNW17RuwBWFa', 'Michael', 'Raymond', 752360222),
(11, 'Commercial', 'ian.craig@loremipsum.com', '$2y$10$4YFaiWRDzFxi1f/S1CbNvel9.RgtBqVhkpmEeS7SNdnkrvUp0M5fC', 'Craig', 'Ian', 752360222),
(12, 'Commercial', 'indira.ratliff@loremipsum.com', '$2y$10$sy20d.ZVpkpn/K0XgxNAFuzLKB2ZGUcRGHhd.HS0ZKoxRJ4FoZyLm', 'Ratliff', 'Indira', 752360222),
(13, 'Commercial', 'chaney.hutchinson@loremipsum.com', '$2y$10$epeJ1ba29jW7KCkAEoha.eqhJ9EiW5ieoKwazdLNnybPuq9MtKa82', 'Hutchinson', 'Chaney', 752360222),
(14, 'Commercial', 'fallon.rasmussen@loremipsum.com', '$2y$10$lteqvzb6bT67jQ7vQY012uN50I6OlpcJPR0EiXHyPSOhCZm3jrb3q', 'Rasmussen', 'Fallon', 752360222),
(15, 'Commercial', 'allistair.wilkins@loremipsum.com', '$2y$10$GQyRXh.hJEOXm61PwpyYE.0WXNdfHNXE8ndzOQ7imVta1KiPoCfta', 'Wilkins', 'Allistair', 752360222),
(16, 'Commercial', 'neil.hester@loremipsum.com', '$2y$10$u/XpQc6N/EYGHnWFRWnlaOFwjsX6Br5qwMaVDT.cmBi6NiM6x/I5C', 'Hester', 'Neil', 752360222),
(17, 'Commercial', 'dai.ortega@loremipsum.com', '$2y$10$3ztv4gzbzmqlcxNrQZUzWuQ20qpDB5jZpIo7PZtkxcSVPuTbp8W7O', 'Ortega', 'Dai', 752360222),
(18, 'Commercial', 'burke.mcintosh@loremipsum.com', '$2y$10$mrcVOHclygnqcwfwHLGW0eztDDActLVwCSCVLGcfZS1eRr/Yj6MWS', 'Mcintosh', 'Burke', 752360222),
(19, 'Commercial', 'magee.schmidt@loremipsum.com', '$2y$10$G4DNmw9UFz2yjB5w.23dT.eVDfwt2LZNZyt4avPWgwBbS0eA4iuJe', 'Schmidt', 'Magee', 752360222),
(20, 'Commercial', 'risa.fields@loremipsum.com', '$2y$10$mQEPAE0ZAZGVasscXn8hP.GtQK/1gIHvYwDq8lyn3FPAqrnLsMm3O', 'Fields', 'Risa', 752360222),
(21, 'Gestionnaire', 'dustin.hayden@loremipsum.com', '$2y$10$I2Yfuevlnm4T5EiiO13K7Ow64EXrPIuIcknSTteNBVKAqrRz2l4fO', 'Hayden', 'Dustin', 752360222),
(22, 'Gestionnaire', 'solomon.salas@loremipsum.com', '$2y$10$eA1Z1CMkrdtbGEX4BbwrpuATDIN7Gq803RVMwVtEJnATlqOr/QOuu', 'Salas', 'Solomon', 752360222),
(23, 'Gestionnaire', 'gannon.dale@loremipsum.com', '$2y$10$nIq5JcLZXu0TBgNEZOomTuBZMuZaCngZS3Q7GMT1Bm2arSYt71cP2', 'Dale', 'Gannon', 752360222),
(24, 'Gestionnaire', 'malachi.stokes@loremipsum.com', '$2y$10$VFvsz5ypyHktYr98yeOEDuloMJ.RbA4aVMAgMJMRBtOhOGvJT/Lq6', 'Stokes', 'Malachi', 752360222),
(25, 'Gestionnaire', 'macey.booker@loremipsum.com', '$2y$10$z./hF.32YTBJzByU6mgSb.xsVvQ46OVEYZowsPP4EtvmBacWmY/X6', 'Booker', 'Macey', 752360222);

-- --------------------------------------------------------

--
-- Table structure for table `trajet`
--

CREATE TABLE `trajet` (
  `fraId` int(11) NOT NULL,
  `traKilometrage` int(11) NOT NULL,
  `traDepart` varchar(50) NOT NULL,
  `traArrivee` varchar(50) NOT NULL,
  `fraType` varchar(50) NOT NULL,
  `fraDate` date NOT NULL,
  `fraEntNom` varchar(50) NOT NULL,
  `fraStatus` enum('Nouveau','Refusé','Approuvé','Attente') DEFAULT NULL,
  `fraMontant` float NOT NULL,
  `fraMontantRemb` float DEFAULT NULL,
  `salId` int(11) NOT NULL,
  `cliId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cliId`),
  ADD KEY `client_entreprise_FK` (`entSiret`);

--
-- Indexes for table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`entSiret`);

--
-- Indexes for table `frais`
--
ALTER TABLE `frais`
  ADD PRIMARY KEY (`fraId`),
  ADD KEY `frais_salarie_FK` (`salId`),
  ADD KEY `frais_client0_FK` (`cliId`);

--
-- Indexes for table `justificatif`
--
ALTER TABLE `justificatif`
  ADD PRIMARY KEY (`fraId`,`jusNum`);

--
-- Indexes for table `salarie`
--
ALTER TABLE `salarie`
  ADD PRIMARY KEY (`salId`),
  ADD KEY `salarie_entreprise_FK` (`entSiret`);

--
-- Indexes for table `trajet`
--
ALTER TABLE `trajet`
  ADD PRIMARY KEY (`fraId`),
  ADD KEY `trajet_salarie_FK` (`salId`),
  ADD KEY `trajet_client1_FK` (`cliId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `cliId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `frais`
--
ALTER TABLE `frais`
  MODIFY `fraId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `salId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_entreprise_FK` FOREIGN KEY (`entSiret`) REFERENCES `entreprise` (`entSiret`);

--
-- Constraints for table `frais`
--
ALTER TABLE `frais`
  ADD CONSTRAINT `frais_client0_FK` FOREIGN KEY (`cliId`) REFERENCES `client` (`cliId`),
  ADD CONSTRAINT `frais_salarie_FK` FOREIGN KEY (`salId`) REFERENCES `salarie` (`salId`);

--
-- Constraints for table `justificatif`
--
ALTER TABLE `justificatif`
  ADD CONSTRAINT `justificatif_frais_FK` FOREIGN KEY (`fraId`) REFERENCES `frais` (`fraId`);

--
-- Constraints for table `salarie`
--
ALTER TABLE `salarie`
  ADD CONSTRAINT `salarie_entreprise_FK` FOREIGN KEY (`entSiret`) REFERENCES `entreprise` (`entSiret`);

--
-- Constraints for table `trajet`
--
ALTER TABLE `trajet`
  ADD CONSTRAINT `trajet_client1_FK` FOREIGN KEY (`cliId`) REFERENCES `client` (`cliId`),
  ADD CONSTRAINT `trajet_frais_FK` FOREIGN KEY (`fraId`) REFERENCES `frais` (`fraId`),
  ADD CONSTRAINT `trajet_salarie_FK` FOREIGN KEY (`salId`) REFERENCES `salarie` (`salId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
