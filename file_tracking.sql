-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 02, 2018 at 10:31 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_tracking`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATEFILESTATUS`(IN `stat` VARCHAR(20), IN `bac` VARCHAR(30))
    NO SQL
UPDATE file SET STATUS=stat WHERE barcode=bac$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `allstaff`
--
CREATE TABLE IF NOT EXISTS `allstaff` (
`staffName` varchar(30)
,`Role` varchar(30)
,`office_belong` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `document_id` int(11) NOT NULL,
  `document_name` varchar(30) NOT NULL,
  `file_id` varchar(50) NOT NULL,
  `d_belong_staff` varchar(50) NOT NULL,
  `date_modified` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`document_id`, `document_name`, `file_id`, `d_belong_staff`, `date_modified`) VALUES
(8, 'cjui', 'IFM/BDE/0100/1', 'imc/staff/0100', '2017-09-30'),
(10, 'sdsdsds', 'IFM/BDE/0101', 'IMC/staff/0167', '2018-01-29'),
(12, 'malipo', 'IFM/BDE/0100/1', 'IMC/STAFF/0100', '2018-03-19'),
(15, 'jsjj', 'IFM/TSC/0100', 'IMC/STAFF/0100', '2018-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `barcode` varchar(50) NOT NULL,
  `file_name` varchar(30) NOT NULL,
  `file_type` varchar(30) NOT NULL,
  `subject` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `date_start` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`barcode`, `file_name`, `file_type`, `subject`, `status`, `date_start`) VALUES
('', '', 'Subject', 1, 'active', '2018-04-02'),
('IFM/BDE/0100/1', '25 Ada estates', 'Subject', 3, 'active', '2017-09-20'),
('IFM/BDE/0101', 'Staff houses general', 'Subject', 3, 'active', '2017-09-20'),
('IFM/BDE/0400', 'Motor vehicle general', 'Subject', 4, 'active', '2017-09-20'),
('IFM/BDE/0408', 'Motor vehicle claims', 'Subject', 4, 'active', '2017-09-20'),
('IFM/FIN/0012', 'iFMSO', 'Subject', 5, 'active', '2018-03-23'),
('IFM/FIN/0402', 'Local Fianance fees', 'Subject', 5, 'inactive', '2017-09-20'),
('IFM/FIN/0500', 'Ifm-financial regulations', 'Subject', 5, 'active', '2017-09-20'),
('IFM/TLC/0100', 'fund', 'Subject', 6, 'active', '2018-01-07'),
('IFM/TSC/0100', 'Banking', 'Subject', 2, 'active', '2017-09-20'),
('IFM/TSC/0200', 'Insurance', 'Subject', 2, 'active', '2017-09-20'),
('IFM/TSC/0300', 'Planning', 'Subject', 2, 'active', '2017-09-20');

-- --------------------------------------------------------

--
-- Stand-in structure for view `filemove`
--
CREATE TABLE IF NOT EXISTS `filemove` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `filemoved`
--
CREATE TABLE IF NOT EXISTS `filemoved` (
);

-- --------------------------------------------------------

--
-- Table structure for table `filemovement`
--

CREATE TABLE IF NOT EXISTS `filemovement` (
  `FMID` int(11) NOT NULL,
  `file_sender` int(50) NOT NULL,
  `file_destination` int(50) NOT NULL,
  `filemoving` varchar(50) CHARACTER SET latin1 NOT NULL,
  `dateReceived` datetime DEFAULT NULL,
  `dateMoved` datetime NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending'
);

--
-- Dumping data for table `filemovement`
--

INSERT INTO `filemovement` (`FMID`, `file_sender`, `file_destination`, `filemoving`, `dateReceived`, `dateMoved`, `comment`, `status`) VALUES
(1, 8, 1, 'IFM/FIN/0402', NULL, '2018-04-10 00:00:00', 'gxdafahhashhdasjxa', 'moved'),
(2, 1, 8, 'IFM/FIN/0402', NULL, '2018-04-10 00:00:00', 'zxzx', 'moving'),
(3, 8, 5, 'IFM/FIN/0402', NULL, '2018-04-10 00:00:00', 'assa', 'pending');

-- --------------------------------------------------------

--
-- Stand-in structure for view `fileoperation`
--
CREATE TABLE IF NOT EXISTS `fileoperation` (
);

-- --------------------------------------------------------

--
-- Table structure for table `filesubject`
--

CREATE TABLE IF NOT EXISTS `filesubject` (
  `SId` int(11) NOT NULL,
  `Sname` varchar(50) NOT NULL,
  `codePattern` varchar(50) NOT NULL
) ;

--
-- Dumping data for table `filesubject`
--

INSERT INTO `filesubject` (`SId`, `Sname`, `codePattern`) VALUES
(1, 'Financial management', 'IFM/TLC/'),
(2, 'Training short courses', 'IFM/TSC/'),
(3, 'Building and estates', 'IFM/BDE/'),
(4, 'Motor vehicle', 'IFM/BDE/'),
(5, 'Finance', 'IFM/FIN/'),
(6, 'Acountancy', 'IFM/TLC/');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE IF NOT EXISTS `office` (
  `offId` int(11) NOT NULL,
  `officeName` varchar(100) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`offId`, `officeName`, `level`) VALUES
(1, 'Rector', 1),
(2, 'Public Relation Manager', 2),
(3, 'Legal Secretary', 2),
(4, 'PMU', 2),
(5, 'Internal Auditing Unit Manager', 2),
(6, 'Deputy Rector Academic Research and Consultancy', 2),
(7, 'Deputy Rector Planning Finance and Administration', 2),
(8, 'RECORD MANAGEMENT', 1),
(12, 'IFMSO', 2),
(13, 'Loanoffice', 2),
(14, 'Register', 2),
(15, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` varchar(50) NOT NULL,
  `staff_name` varchar(30) NOT NULL,
  `staff_type` varchar(30) NOT NULL,
  `office` int(11) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_type`, `office`, `password`) VALUES
('IMC/STAFF/0001', 'MWASAMBILE', 'Adminstrator', 8, 'admin'),
('IMC/STAFF/0100', 'Ramadhani S', 'Secretary', 1, 'madega'),
('IMC/STAFF/0101', 'Khamisi', 'Secretary', 4, '12345'),
('IMC/STAFF/0167', 'Mwasambile', 'Secretary', 4, '1234');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewoutfile`
--
CREATE TABLE IF NOT EXISTS `viewoutfile` (
`filename` varchar(30)
,`office_filein` varchar(100)
,`date_received` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `volume`
--

CREATE TABLE IF NOT EXISTS `volume` (
  `volume_id` int(11) NOT NULL,
  `file_id` varchar(50) NOT NULL,
  `volume_type` varchar(10) NOT NULL,
  `count_document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `allstaff`
--
DROP TABLE IF EXISTS `allstaff`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allstaff` AS select `staff`.`staff_name` AS `staffName`,`staff`.`staff_type` AS `Role`,`office`.`officeName` AS `office_belong` from (`staff` join `office` on((`office`.`offId` = `staff`.`office`)));

-- --------------------------------------------------------

--
-- Structure for view `filemove`
--
DROP TABLE IF EXISTS `filemove`;
-- in use(#1356 - View 'file_tracking.filemove' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them)

-- --------------------------------------------------------

--
-- Structure for view `filemoved`
--
DROP TABLE IF EXISTS `filemoved`;
-- in use(#1356 - View 'file_tracking.filemoved' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them)

-- --------------------------------------------------------

--
-- Structure for view `fileoperation`
--
DROP TABLE IF EXISTS `fileoperation`;
-- in use(#1356 - View 'file_tracking.filemove' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them)

-- --------------------------------------------------------

--
-- Structure for view `viewoutfile`
--
DROP TABLE IF EXISTS `viewoutfile`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewoutfile` AS select `file`.`file_name` AS `filename`,`office`.`officeName` AS `office_filein`,`filemovement`.`dateReceived` AS `date_received` from ((`filemovement` join `file` on((`file`.`barcode` = `filemovement`.`filemoving`))) join `office` on((`office`.`offId` = `filemovement`.`file_destination`))) where ((`filemovement`.`status` = 'received') and (`filemovement`.`file_destination` <> 8));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `d_belong_staff` (`d_belong_staff`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`barcode`),
  ADD KEY `subject` (`subject`);

--
-- Indexes for table `filemovement`
--
ALTER TABLE `filemovement`
  ADD PRIMARY KEY (`FMID`),
  ADD KEY `file_sender` (`file_sender`),
  ADD KEY `file_destination` (`file_destination`),
  ADD KEY `filemoving` (`filemoving`);

--
-- Indexes for table `filesubject`
--
ALTER TABLE `filesubject`
  ADD PRIMARY KEY (`SId`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`offId`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `office` (`office`);

--
-- Indexes for table `volume`
--
ALTER TABLE `volume`
  ADD PRIMARY KEY (`volume_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `filemovement`
--
ALTER TABLE `filemovement`
  MODIFY `FMID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `filesubject`
--
ALTER TABLE `filesubject`
  MODIFY `SId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `offId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `volume`
--
ALTER TABLE `volume`
  MODIFY `volume_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `file` (`barcode`),
  ADD CONSTRAINT `document_ibfk_2` FOREIGN KEY (`d_belong_staff`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`subject`) REFERENCES `filesubject` (`SId`);

--
-- Constraints for table `filemovement`
--
ALTER TABLE `filemovement`
  ADD CONSTRAINT `filemovement_ibfk_1` FOREIGN KEY (`file_sender`) REFERENCES `office` (`offId`),
  ADD CONSTRAINT `filemovement_ibfk_2` FOREIGN KEY (`file_destination`) REFERENCES `office` (`offId`),
  ADD CONSTRAINT `filemovement_ibfk_3` FOREIGN KEY (`filemoving`) REFERENCES `file` (`barcode`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`office`) REFERENCES `office` (`offId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
