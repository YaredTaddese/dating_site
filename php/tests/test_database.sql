-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 04, 2017 at 05:41 ከሰዓት
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datingsystem`
--
CREATE DATABASE IF NOT EXISTS `datingsystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `datingsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `infoEmail` varchar(60) NOT NULL,
  `ageRange` varchar(8) DEFAULT NULL,
  `location` text,
  `mStatus` varchar(80) DEFAULT NULL,
  `religion` text,
  `haveChildren` varchar(8) DEFAULT NULL,
  `heightRange` varchar(20) DEFAULT NULL,
  `build` varchar(150) DEFAULT NULL,
  `education` varchar(200) DEFAULT NULL,
  `occupation` text,
  `smoking` varchar(50) DEFAULT NULL,
  `drinking` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`infoEmail`, `ageRange`, `location`, `mStatus`, `religion`, `haveChildren`, `heightRange`, `build`, `education`, `occupation`, `smoking`, `drinking`) VALUES
('chritian@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('dani@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('getasew@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('getch@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('melesewtemesgen@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('meli@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('rediet@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('samrawit@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('yad.tad.yt@gmail.com', '21,25', '', 'Never Married', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `normalMessage`
--

CREATE TABLE `normalMessage` (
  `sender` varchar(60) NOT NULL,
  `time` bigint(20) NOT NULL,
  `textContent` text,
  `photoContent` varchar(130) DEFAULT NULL,
  `reciever` varchar(60) NOT NULL,
  `isSeen` varchar(1) NOT NULL COMMENT '0:unseen 1:seen'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `normalMessage`
--

INSERT INTO `normalMessage` (`sender`, `time`, `textContent`, `photoContent`, `reciever`, `isSeen`) VALUES
('getch@gmail.com', 1491387641, 'ere baksh', '', 'meli@gmail.com', '1'),
('getch@gmail.com', 1493107263, 'something', '', 'meli@gmail.com', '1'),
('getch@gmail.com', 1494002946, 'l;fsdja;ldfsajldf', '', 'rediet@gmail.com', '0'),
('getch@gmail.com', 1498337906, 'hey, where are you?', '', 'meli@gmail.com', '0'),
('meli@gmail.com', 1466620021, 'Hey, where are you?', '', 'yad.tad.yt@gmail.com', '1'),
('meli@gmail.com', 1466620066, 'Hey, where are you?', '', 'yad.tad.yt@gmail.com', '1'),
('meli@gmail.com', 1466692011, 'I can hear you', '', 'yad.tad.yt@gmail.com', '1'),
('meli@gmail.com', 1466692670, 'When will we go?', '', 'yad.tad.yt@gmail.com', '1'),
('meli@gmail.com', 1466697281, 'I hope we will go together.', '', 'yad.tad.yt@gmail.com', '1'),
('meli@gmail.com', 1466776624, 'Hey, illusion.', '', 'yad.tad.yt@gmail.com', '1'),
('meli@gmail.com', 1466776740, 'Why aren''t you answering illusion?', '', 'yad.tad.yt@gmail.com', '1'),
('meli@gmail.com', 1491387354, 'fjsklajf;dsla', '', 'getch@gmail.com', '1'),
('meli@gmail.com', 1491387665, 'lash bel siymrih ykeral', '', 'getch@gmail.com', '1'),
('meli@gmail.com', 1493107319, 'sjlka;fkl;fjsa', '', 'getch@gmail.com', '1'),
('samrawit@gmail.com', 1466842094, 'jfsdlkjfdslk', '', 'yad.tad.yt@gmail.com', '1'),
('yad.tad.yt@gmail.com', 1466625793, 'Betam yiberdal!!!!', '', 'meli@gmail.com', '1'),
('yad.tad.yt@gmail.com', 1466690020, 'Hey, how are you?', '', 'meli@gmail.com', '1'),
('yad.tad.yt@gmail.com', 1466690282, 'Can you hear me?', '', 'meli@gmail.com', '1'),
('yad.tad.yt@gmail.com', 1466690563, 'Hello', '', 'meli@gmail.com', '1'),
('yad.tad.yt@gmail.com', 1466692207, 'Me too.', '', 'meli@gmail.com', '1'),
('yad.tad.yt@gmail.com', 1466693072, 'I think maybe soon.', '', 'meli@gmail.com', '1'),
('yad.tad.yt@gmail.com', 1466776880, 'Sorry, I was busy. See you later at our place!!', '', 'meli@gmail.com', '1'),
('yad.tad.yt@gmail.com', 1466842062, 'heky', '', 'samrawit@gmail.com', '1'),
('yad.tad.yt@gmail.com', 1467192017, 'Hey, ?', '', 'rediet@gmail.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `postMessage`
--

CREATE TABLE `postMessage` (
  `sender` varchar(60) NOT NULL,
  `time` bigint(20) NOT NULL,
  `textContent` text,
  `photoContent` varchar(130) DEFAULT NULL,
  `comments` text NOT NULL,
  `likes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postMessage`
--

INSERT INTO `postMessage` (`sender`, `time`, `textContent`, `photoContent`, `comments`, `likes`) VALUES
('dani@gmail.com', 1499172569, '<script src=''evil.js''></script>', '', '', ''),
('dani@gmail.com', 1499172716, '<script src=''evil.js''></script>', '', '', ''),
('dani@gmail.com', 1499172785, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499172786, '<script src=''evil.js''></script>', '', '', ''),
('dani@gmail.com', 1499172826, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499172968, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499172969, '<script src=''evil.js''></script>', '', '', ''),
('dani@gmail.com', 1499173013, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499173014, '<script src=''evil.js''></script>', '', '', ''),
('dani@gmail.com', 1499173129, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499173131, '<script src=''evil.js''></script>', '', '', ''),
('dani@gmail.com', 1499173199, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499173218, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499173224, '<script src=''evil.js''></script>', '', '', ''),
('dani@gmail.com', 1499173351, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499173352, '<script src=''evil.js''></script>', '', '', ''),
('dani@gmail.com', 1499173422, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499173428, '<script src=''evil.js''></script>', '', '', ''),
('dani@gmail.com', 1499173644, 'This is to be posted', '../../images/3978841d53876cb73c65dcec8760724f.jpg', '', ''),
('dani@gmail.com', 1499173645, 'This is to be posted', '', '', ''),
('dani@gmail.com', 1499173646, ''',invalid,''', '', '', ''),
('dani@gmail.com', 1499173647, '<script src=''evil.js''></script>', '', '', ''),
('getasew@gmail.com', 1466666567, 'I feel alone, alone alne', '../../images/4f39e5d5dbbb058688d7c5a32f061aa8.jpg', '', ''),
('getch@gmail.com', 1494002751, 'something', '../../images/05482a8e0ee05d43809a7a1ccb3870b8.jpg', '', ''),
('meli@gmail.com', 1466746516, 'Sometimes, anything doesn''t make sense & sometimes, everything does. What a crazy world??!!!', '../../images/ecae32f8eb0933a55cb8bac4ded07711.jpg', '', 'yad.tad.yt@gmail.com'),
('samrawit@gmail.com', 1466841980, '', '../../images/e7742709a7bd07a63c8bb8d5898d79e9.jpg', '', ''),
('yad.tad.yt@gmail.com', 1466671168, 'Learning is awesome.', '../../images/80b296e06e495f5bfe7eff46b1250953.jpg', '', ''),
('yad.tad.yt@gmail.com', 1467192085, '', '../../images/c2b172ba7a23cfc008c86c1396eb2ac6.jpg', '', ''),
('yad.tad.yt@gmail.com', 1467704578, '', '../../images/c0024f173a481c66b70f1c5616842917.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `screenName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `location` varchar(50) NOT NULL,
  `profileHeadline` varchar(90) NOT NULL,
  `profilePhoto` varchar(130) DEFAULT NULL,
  `lastActive` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`email`, `password`, `gender`, `screenName`, `firstName`, `lastName`, `birthday`, `location`, `profileHeadline`, `profilePhoto`, `lastActive`) VALUES
('chritian@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'M', 'chris', 'christian', '', '1995-04-11', 'Lalibela', 'I like to go church every morning. I believe that every thing is possible on the will of G', '../../images/7330bb93ee3a1627f52d64e2cd7d9ef1.jpg', 1466666051),
('dani@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'M', 'dani', 'Daniel', '', '1991-02-12', 'Addis Ababa', 'My headline', '../../images/maleAnonymous.PNG', 1499182896),
('getasew@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'M', 'gech', 'Getasew', 'Tesfaw', '1993-06-23', 'Debre Tabor', 'I am arrogant person', '../../images/b3402c3a74f604519144ded0927d2e52.jpg', 1499072769),
('getch@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'M', 'getch', 'getch', '', '1996-09-09', 'Addis Ababa', 'admin', '../../images/maleAnonymous.PNG', 1499173645),
('melesewtemesgen@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'M', 'melesew', 'Melesew', 'Temesgen', '1996-04-27', 'Debre MArqos', 'I am optimistic, honest, respectful,. I believe on the possiblity of every thing as there', '../../images/fd96b0af4e2a8d1ec82d5f9503356d8f.jpg', 1466665724),
('meli@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'F', 'meli', 'meli', '', '1996-09-09', 'Arba Minch', 'admin', '../../images/femaleAnonymous.PNG', 1499177075),
('rediet@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'F', 'rediya', 'Rediet', 'Alemayehu', '1996-03-13', 'Gonder', 'I like to read books', '../../images/femaleAnonymous.PNG', 1499073321),
('samrawit@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'F', 'Samri', 'Samrawit', 'Mulu', '1996-04-27', 'Bahir Dar', 'I like reading fictions, watching documentary movies, and sometimes watch football', '../../images/47d4e01d413d3cdd0af37c2b8584d5f4.jpg', 1499072739),
('yad.tad.yt@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'M', 'yada', 'yared', '', '1997-05-13', 'Dila', 'admin', '../../images/maleAnonymous.PNG', 1499076104);

-- --------------------------------------------------------

--
-- Table structure for table `profileInformation`
--

CREATE TABLE `profileInformation` (
  `infoEmail` varchar(60) NOT NULL,
  `mStatus` varchar(40) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `haveChildren` varchar(7) DEFAULT NULL,
  `height` varchar(30) DEFAULT NULL,
  `build` varchar(30) DEFAULT NULL,
  `education` varchar(60) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `smoking` varchar(20) DEFAULT NULL,
  `drinking` varchar(20) DEFAULT NULL,
  `nomineeList` text,
  `phoneNumber` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profileInformation`
--

INSERT INTO `profileInformation` (`infoEmail`, `mStatus`, `religion`, `haveChildren`, `height`, `build`, `education`, `occupation`, `smoking`, `drinking`, `nomineeList`, `phoneNumber`) VALUES
('chritian@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('dani@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('getasew@gmail.com', '', '', '', '', '', '', '', '', '', 'meli@gmail.com,samrawit@gmail.com', ''),
('getch@gmail.com', '', '', '', '', '', '', '', '', '', 'rediet@gmail.com,meli@gmail.com', ''),
('melesewtemesgen@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('meli@gmail.com', 'Never Married', '', '', '', '', '', '', '', '', 'yad.tad.yt@gmail.com,getch@gmail.com,chritian@gmail.com', ''),
('rediet@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('samrawit@gmail.com', '', '', '', '', '', '', '', '', '', 'melesewtemesgen@gmail.com', ''),
('yad.tad.yt@gmail.com', 'Never Married', '', '', '', '', '', '', '', '', 'samrawit@gmail.com,meli@gmail.com', '+251989342312');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `temail` varchar(120) NOT NULL,
  `secretToken` varchar(420) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`infoEmail`);

--
-- Indexes for table `normalMessage`
--
ALTER TABLE `normalMessage`
  ADD PRIMARY KEY (`sender`,`time`);

--
-- Indexes for table `postMessage`
--
ALTER TABLE `postMessage`
  ADD PRIMARY KEY (`sender`,`time`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profileInformation`
--
ALTER TABLE `profileInformation`
  ADD PRIMARY KEY (`infoEmail`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`temail`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`infoEmail`) REFERENCES `profile` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profileInformation`
--
ALTER TABLE `profileInformation`
  ADD CONSTRAINT `profileInformation_ibfk_1` FOREIGN KEY (`infoEmail`) REFERENCES `profile` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"datingsystem","table":"postMessage"},{"db":"datingsystem","table":"profile"},{"db":"datingsystem","table":"profileInformation"},{"db":"datingsystem","table":"profileinformation"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-06-23 14:39:04', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`` PROCEDURE `AddGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64), `t_srid` INT)  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' ADD ', geometry_column,' GEOMETRY REF_SYSTEM_ID=', t_srid); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

CREATE DEFINER=`` PROCEDURE `DropGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64))  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' DROP ', geometry_column); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
