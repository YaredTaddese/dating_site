-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2017 at 10:55 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datingsystem`
--

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
('getasew@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('getch@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('melesewtemesgen@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('meli@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('rediet@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('samrawit@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('yad.tad.yt@gmail.com', '21,25', '', 'Never Married', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `normalmessage`
--

CREATE TABLE `normalmessage` (
  `sender` varchar(60) NOT NULL,
  `time` bigint(20) NOT NULL,
  `textContent` text,
  `photoContent` varchar(130) DEFAULT NULL,
  `reciever` varchar(60) NOT NULL,
  `isSeen` varchar(1) NOT NULL COMMENT '0:unseen 1:seen'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `normalmessage`
--

INSERT INTO `normalmessage` (`sender`, `time`, `textContent`, `photoContent`, `reciever`, `isSeen`) VALUES
('getch@gmail.com', 1491387641, 'ere baksh', '', 'meli@gmail.com', '1'),
('getch@gmail.com', 1493107263, 'something', '', 'meli@gmail.com', '1'),
('getch@gmail.com', 1494002946, 'l;fsdja;ldfsajldf', '', 'rediet@gmail.com', '0'),
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
-- Table structure for table `postmessage`
--

CREATE TABLE `postmessage` (
  `sender` varchar(60) NOT NULL,
  `time` bigint(20) NOT NULL,
  `textContent` text,
  `photoContent` varchar(130) DEFAULT NULL,
  `comments` text NOT NULL,
  `likes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postmessage`
--

INSERT INTO `postmessage` (`sender`, `time`, `textContent`, `photoContent`, `comments`, `likes`) VALUES
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
('chritian@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'M', 'chris', 'christian', '', '1995-04-11', 'Lalibela', 'I like to go church every morning. I believe that every thing is possible on the will of G', '../../images/7330bb93ee3a1627f52d64e2cd7d9ef1.jpg', 1466666051),
('getasew@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'M', 'gech', 'Getasew', 'Tesfaw', '1993-06-23', 'Debre Tabor', 'I am arrogant person', '../../images/b3402c3a74f604519144ded0927d2e52.jpg', 1491387456),
('getch@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'M', 'getch', 'getch', '', '1996-09-09', 'Addis Ababa', 'admin', '../../images/maleAnonymous.PNG', 1494016618),
('melesewtemesgen@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'M', 'melesew', 'Melesew', 'Temesgen', '1996-04-27', 'Debre MArqos', 'I am optimistic, honest, respectful,. I believe on the possiblity of every thing as there', '../../images/fd96b0af4e2a8d1ec82d5f9503356d8f.jpg', 1466665724),
('meli@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'F', 'meli', 'meli', '', '1996-09-09', 'Arba Minch', 'admin', '../../images/femaleAnonymous.PNG', 1493107340),
('rediet@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'F', 'rediya', 'Rediet', 'Alemayehu', '1996-03-13', 'Gonder', 'I like to read books', '../../images/femaleAnonymous.PNG', 1466666276),
('samrawit@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'F', 'Samri', 'Samrawit', 'Mulu', '1996-04-27', 'Bahir Dar', 'I like reading fictions, watching documentary movies, and sometimes watch football', '../../images/47d4e01d413d3cdd0af37c2b8584d5f4.jpg', 1466842424),
('yad.tad.yt@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'M', 'yada', 'yared', '', '1997-05-13', 'Dila', 'admin', '../../images/maleAnonymous.PNG', 1480110457);

-- --------------------------------------------------------

--
-- Table structure for table `profileinformation`
--

CREATE TABLE `profileinformation` (
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
-- Dumping data for table `profileinformation`
--

INSERT INTO `profileinformation` (`infoEmail`, `mStatus`, `religion`, `haveChildren`, `height`, `build`, `education`, `occupation`, `smoking`, `drinking`, `nomineeList`, `phoneNumber`) VALUES
('chritian@gmail.com', '', '', '', '', '', '', '', '', '', '', ''),
('getasew@gmail.com', '', '', '', '', '', '', '', '', '', 'meli@gmail.com', ''),
('getch@gmail.com', '', '', '', '', '', '', '', '', '', 'rediet@gmail.com', ''),
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
-- Indexes for table `normalmessage`
--
ALTER TABLE `normalmessage`
  ADD PRIMARY KEY (`sender`,`time`);

--
-- Indexes for table `postmessage`
--
ALTER TABLE `postmessage`
  ADD PRIMARY KEY (`sender`,`time`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profileinformation`
--
ALTER TABLE `profileinformation`
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
-- Constraints for table `profileinformation`
--
ALTER TABLE `profileinformation`
  ADD CONSTRAINT `profileinformation_ibfk_1` FOREIGN KEY (`infoEmail`) REFERENCES `profile` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
