-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2019 at 08:59 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mess_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `ExtrasID` int(11) NOT NULL,
  `ExtrasName` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`ExtrasID`, `ExtrasName`, `Price`) VALUES
(2, 'dahi', 25),
(3, 'paw-bhaji', 21),
(4, 'samose', 8),
(5, 'sweeets', 18),
(10, 'pakode', 13),
(11, 'tea', 20),
(12, 'ghee', 5),
(14, 'bread', 12),
(15, 'egg', 15),
(17, 'dosa', 30),
(19, 'chicken', 150),
(78, 'apple', 70),
(555555, 'fruit', 45);

-- --------------------------------------------------------

--
-- Table structure for table `extrastaken`
--

CREATE TABLE `extrastaken` (
  `DateTime` datetime NOT NULL,
  `RollNo` varchar(20) NOT NULL,
  `ExtrasID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extrastaken`
--

INSERT INTO `extrastaken` (`DateTime`, `RollNo`, `ExtrasID`) VALUES
('0000-00-00 00:00:00', 'b130705cs', 11),
('2019-02-05 00:00:00', 'b555555cs', 555555),
('2019-02-20 00:00:00', 'b164051cs', 17),
('2019-03-30 00:00:00', 'b134677cs', 11),
('2019-03-30 00:00:00', 'b345678cs', 78),
('2019-03-30 02:04:38', 'b134677cs', 11),
('2019-03-30 05:39:01', 'b232335cs', 11),
('2019-03-30 05:39:13', 'b345667cs', 11),
('2019-03-30 11:26:07', 'b345678cs', 78),
('2019-03-30 11:26:27', 'b134677cs', 11),
('2019-03-30 11:30:49', 'b345678cs', 78),
('2019-03-30 11:45:15', 'b555555cs', 555555),
('2019-03-30 11:47:15', 'b555555cs', 555555),
('2019-03-31 01:43:06', 'b444444cs', 14),
('2019-03-31 01:43:16', 'b403751cs', 78),
('2019-03-31 01:44:30', 'b403567cs', 555555),
('2019-03-31 01:58:13', 'b403567cs', 555555),
('2019-03-31 04:00:18', 'b403751cs', 78),
('2019-03-31 04:00:32', 'b444444cs', 78),
('2019-03-31 04:24:32', 'b145789cs', 12),
('2019-03-31 04:24:38', 'b145789cs', 12),
('2019-03-31 04:28:46', 'b403751cs', 5),
('2019-03-31 04:34:33', 'b134677cs', 12),
('2019-03-31 05:02:50', 'b123556ee', 5),
('2019-03-31 08:36:38', 'b555555cs', 10),
('2019-03-31 14:46:47', 'b167672ee', 2),
('2019-03-31 15:03:19', 'b130705cs', 11),
('2019-03-31 15:27:13', 'b164051cs', 4),
('2019-03-31 18:03:11', 'b167672ee', 15);

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `DateTime` datetime NOT NULL,
  `Comment` varchar(100) NOT NULL,
  `RollNo` varchar(20) NOT NULL,
  `MessID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`DateTime`, `Comment`, `RollNo`, `MessID`) VALUES
('2019-02-05 00:00:00', 'good quality food', 'b164051cs', 11),
('2019-02-11 00:00:00', 'nice fruit', 'b555555cs', 11),
('2019-03-30 00:00:00', 'i joined today malviya', 'b345678cs', 11),
('2019-03-30 05:31:00', 'worst  services provided in mnnit hostel ', 'b134677cs', 11),
('2019-03-31 01:55:45', 'patel has most attractive mess plan . and it provides good quality of foods in comparison of  other ', 'b403567cs', 18),
('2019-03-31 03:00:56', 'malviya nice mess', 'b123556ee', 11),
('2019-03-31 07:11:08', 'super food.', 'b555555cs', 11);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `RollNo` varchar(20) NOT NULL,
  `MemberName` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Semester` int(11) NOT NULL,
  `PhoneNo` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`RollNo`, `MemberName`, `Password`, `Semester`, `PhoneNo`) VALUES
('b123556ee', 'uday', 'uday', 5, 2147483647),
('b130705cs', 'xyz', '123', 5, 1234567890),
('b134677cs', 'ashish', 'ashish', 5, 2147483647),
('b145789cs', 'suraj', 'suraj', 5, 2147483647),
('b164051cs', 'shubham', 'shubham', 7, 919453367221),
('b167672ee', 'abhi', 'abhi', 5, 2147483647),
('b232335cs', 'sky', 'sky', 5, 2147483647),
('b345667cs', 'ganesh', 'ganesh', 5, 2147483647),
('b345678cs', 'raghav', 'raghav', 5, 2098231245),
('b403567cs', 'shivam', 'shivam', 6, 354568929),
('b403751cs', 'niranjan', 'niranjan', 6, 1834567821),
('b416323', 'yogesh', 'yogesh', 6, 2045890210),
('b444444cs', 'ankit', 'ankit', 6, 945689211),
('b555555cs', 'maurya', 'maurya', 6, 2087878788);

-- --------------------------------------------------------

--
-- Table structure for table `mess`
--

CREATE TABLE `mess` (
  `MessID` int(11) NOT NULL,
  `MessPassword` varchar(20) NOT NULL,
  `MessCoordinator` varchar(25) NOT NULL,
  `MessName` varchar(20) NOT NULL,
  `PerDayRate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mess`
--

INSERT INTO `mess` (`MessID`, `MessPassword`, `MessCoordinator`, `MessName`, `PerDayRate`) VALUES
(4, 'shubhra', 'shubhra', 'KNGH', 175),
(5, 'tagore', 'pandey', 'TAGORE MESS', 120),
(6, 'pghostel', 'pghostel', 'PG HOSTEL', 200),
(7, 'maurya', 'maurya', 'SVBH MESS', 90),
(11, 'malviya', 'shubham', 'MALVIYA MESS', 100),
(13, 'saranya', 'saranya', 'SNGH', 180),
(16, 'saurav', 'saurav', 'TONDON', 120),
(17, 'tilak', 'nimesh', 'TILAK_MESS', 130),
(18, 'patel', 'nikash', 'PATEL MESS', 150);

-- --------------------------------------------------------

--
-- Table structure for table `messcut`
--

CREATE TABLE `messcut` (
  `FromDate` date NOT NULL,
  `ToDate` date NOT NULL,
  `RollNo` varchar(20) NOT NULL,
  `MessID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messcut`
--

INSERT INTO `messcut` (`FromDate`, `ToDate`, `RollNo`, `MessID`) VALUES
('2018-04-03', '2018-05-10', 'b403567cs', 18),
('2018-11-12', '2019-03-12', 'b403567cs', 18),
('2018-11-12', '2019-03-19', 'b444444cs', 18),
('2018-11-20', '2018-11-27', 'b444444cs', 18),
('2018-12-10', '2018-12-17', 'b164051cs', 11),
('2019-01-01', '2019-01-03', 'b555555cs', 11),
('2019-02-04', '2019-02-13', 'b403751cs', 18),
('2019-02-04', '2019-06-05', 'b416323', 18),
('2019-02-05', '2019-03-28', 'b403751cs', 18),
('2019-02-05', '2019-02-13', 'b555555cs', 11),
('2019-02-19', '2019-02-13', 'b403751cs', 18),
('2019-02-27', '2019-02-28', 'b164051cs', 11),
('2019-03-04', '2019-03-20', 'b145789cs', 18),
('2019-03-06', '2019-03-08', 'b444444cs', 18),
('2019-03-07', '2019-03-14', 'b167672ee', 11),
('2019-03-11', '2019-03-22', 'b130705cs', 11),
('2019-03-14', '2019-03-22', 'b130705cs', 11),
('2019-03-14', '2019-03-25', 'b345667cs', 11),
('2019-03-28', '2019-03-30', 'b130705cs', 11),
('2019-03-29', '2019-03-30', 'b134677cs', 11),
('2019-03-29', '2019-04-01', 'b145789cs', 18),
('2019-03-30', '2019-04-12', 'b345678cs', 11),
('2019-04-01', '2019-04-06', 'b134677cs', 11),
('2019-04-01', '2019-04-01', 'b403567cs', 18),
('2019-05-09', '2019-05-14', 'b134677cs', 11),
('2019-12-05', '2021-07-23', 'b134677cs', 11);

-- --------------------------------------------------------

--
-- Table structure for table `messjoins`
--

CREATE TABLE `messjoins` (
  `StartDate` date NOT NULL,
  `RollNo` varchar(20) NOT NULL,
  `MessID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messjoins`
--

INSERT INTO `messjoins` (`StartDate`, `RollNo`, `MessID`) VALUES
('2018-11-05', 'b164051cs', 11),
('2018-12-04', 'b444444cs', 18),
('2019-01-08', 'b345667cs', 16),
('2019-01-08', 'b444444cs', 18),
('2019-02-01', 'b555555cs', 11),
('2019-02-05', 'b444444cs', 17),
('2019-03-30', 'b130705cs', 11),
('2019-03-30', 'b134677cs', 11),
('2019-03-30', 'b232335cs', 11),
('2019-03-30', 'b345667cs', 11),
('2019-03-30', 'b345678cs', 11),
('2019-03-30', 'b555555cs', 11),
('2019-03-31', 'b123556ee', 11),
('2019-03-31', 'b145789cs', 18),
('2019-03-31', 'b164051cs', 11),
('2019-03-31', 'b167672ee', 11),
('2019-03-31', 'b403567cs', 18),
('2019-03-31', 'b403751cs', 18),
('2019-03-31', 'b416323', 18),
('2019-03-31', 'b444444cs', 18);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `RatingValue` int(11) NOT NULL,
  `RollNo` varchar(20) NOT NULL,
  `MessID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`RatingValue`, `RollNo`, `MessID`) VALUES
(4, 'b123556ee', 11),
(3, 'b134677cs', 11),
(2, 'b164051cs', 11),
(4, 'b403567cs', 18),
(3, 'b444444cs', 11),
(4, 'b444444cs', 17),
(1, 'b444444cs', 18),
(3, 'b555555cs', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`ExtrasID`);

--
-- Indexes for table `extrastaken`
--
ALTER TABLE `extrastaken`
  ADD PRIMARY KEY (`DateTime`,`RollNo`,`ExtrasID`),
  ADD KEY `RollNo` (`RollNo`),
  ADD KEY `ExtrasID` (`ExtrasID`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`DateTime`,`RollNo`,`MessID`),
  ADD KEY `RollNo` (`RollNo`),
  ADD KEY `MessID` (`MessID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`RollNo`);

--
-- Indexes for table `mess`
--
ALTER TABLE `mess`
  ADD PRIMARY KEY (`MessID`);

--
-- Indexes for table `messcut`
--
ALTER TABLE `messcut`
  ADD PRIMARY KEY (`FromDate`,`RollNo`,`MessID`),
  ADD KEY `RollNo` (`RollNo`),
  ADD KEY `MessID` (`MessID`);

--
-- Indexes for table `messjoins`
--
ALTER TABLE `messjoins`
  ADD PRIMARY KEY (`StartDate`,`RollNo`,`MessID`),
  ADD KEY `RollNo` (`RollNo`),
  ADD KEY `MessID` (`MessID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`RollNo`,`MessID`),
  ADD KEY `MessID` (`MessID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `extrastaken`
--
ALTER TABLE `extrastaken`
  ADD CONSTRAINT `extrastaken_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `members` (`RollNo`),
  ADD CONSTRAINT `extrastaken_ibfk_2` FOREIGN KEY (`ExtrasID`) REFERENCES `extras` (`ExtrasID`);

--
-- Constraints for table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `members` (`RollNo`),
  ADD CONSTRAINT `forum_ibfk_2` FOREIGN KEY (`MessID`) REFERENCES `mess` (`MessID`);

--
-- Constraints for table `messcut`
--
ALTER TABLE `messcut`
  ADD CONSTRAINT `messcut_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `members` (`RollNo`),
  ADD CONSTRAINT `messcut_ibfk_2` FOREIGN KEY (`MessID`) REFERENCES `mess` (`MessID`);

--
-- Constraints for table `messjoins`
--
ALTER TABLE `messjoins`
  ADD CONSTRAINT `messjoins_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `members` (`RollNo`),
  ADD CONSTRAINT `messjoins_ibfk_2` FOREIGN KEY (`MessID`) REFERENCES `mess` (`MessID`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `members` (`RollNo`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`MessID`) REFERENCES `mess` (`MessID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
