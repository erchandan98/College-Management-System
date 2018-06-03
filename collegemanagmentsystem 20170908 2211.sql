-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.89-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema collegemanagmentsystem
--

CREATE DATABASE IF NOT EXISTS collegemanagmentsystem;
USE collegemanagmentsystem;

--
-- Definition of table `branchinfo`
--

DROP TABLE IF EXISTS `branchinfo`;
CREATE TABLE `branchinfo` (
  `branchid` varchar(100) NOT NULL,
  `branchname` varchar(100) default NULL,
  `totalyear` int(11) default NULL,
  PRIMARY KEY  (`branchid`),
  UNIQUE KEY `branchname` (`branchname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branchinfo`
--

/*!40000 ALTER TABLE `branchinfo` DISABLE KEYS */;
INSERT INTO `branchinfo` (`branchid`,`branchname`,`totalyear`) VALUES 
 ('1215609','IT',2017),
 ('1215610','game',2),
 ('125456','sfds',121);
/*!40000 ALTER TABLE `branchinfo` ENABLE KEYS */;


--
-- Definition of table `logininfo`
--

DROP TABLE IF EXISTS `logininfo`;
CREATE TABLE `logininfo` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) default NULL,
  `rollno` varchar(100) default NULL,
  `lastlogin` datetime default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logininfo`
--

/*!40000 ALTER TABLE `logininfo` DISABLE KEYS */;
INSERT INTO `logininfo` (`username`,`password`,`rollno`,`lastlogin`) VALUES 
 ('admin','admin','admin','2017-08-27 07:30:55'),
 ('ram','ram','admin','2017-08-27 06:26:37'),
 ('varun','12345','ad',NULL);
/*!40000 ALTER TABLE `logininfo` ENABLE KEYS */;


--
-- Definition of table `qualificationinfo`
--

DROP TABLE IF EXISTS `qualificationinfo`;
CREATE TABLE `qualificationinfo` (
  `Qid` varchar(20) NOT NULL,
  `Qname` varchar(200) default NULL,
  PRIMARY KEY  (`Qid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualificationinfo`
--

/*!40000 ALTER TABLE `qualificationinfo` DISABLE KEYS */;
INSERT INTO `qualificationinfo` (`Qid`,`Qname`) VALUES 
 ('121569','IT'),
 ('3654644','vdsgfhsh');
/*!40000 ALTER TABLE `qualificationinfo` ENABLE KEYS */;


--
-- Definition of table `studentinfo`
--

DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `studentid` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `fathername` varchar(100) default NULL,
  `address` varchar(500) default NULL,
  `contactno` varchar(20) default NULL,
  `branchid` varchar(20) default NULL,
  `iscompleted` enum('yes','no') default NULL,
  `sessionyear` int(11) default NULL,
  PRIMARY KEY  (`studentid`),
  KEY `branchid` (`branchid`)
) ENGINE=MyISAM AUTO_INCREMENT=1215610 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

/*!40000 ALTER TABLE `studentinfo` DISABLE KEYS */;
INSERT INTO `studentinfo` (`studentid`,`name`,`fathername`,`address`,`contactno`,`branchid`,`iscompleted`,`sessionyear`) VALUES 
 (121,'dsh','fdsafd','sdsa','5545','1215609','yes',2015),
 (1215609,'aran','sam','yamuna nagar','125456',NULL,'yes',2015);
/*!40000 ALTER TABLE `studentinfo` ENABLE KEYS */;


--
-- Definition of table `studentqualification`
--

DROP TABLE IF EXISTS `studentqualification`;
CREATE TABLE `studentqualification` (
  `SQID` int(11) NOT NULL auto_increment,
  `Studentid` int(11) default NULL,
  `QID` varchar(20) default NULL,
  `percentage` float default NULL,
  `passingyear` int(11) default NULL,
  PRIMARY KEY  (`SQID`),
  KEY `Studentid` (`Studentid`),
  KEY `QID` (`QID`)
) ENGINE=MyISAM AUTO_INCREMENT=1215610 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentqualification`
--

/*!40000 ALTER TABLE `studentqualification` DISABLE KEYS */;
INSERT INTO `studentqualification` (`SQID`,`Studentid`,`QID`,`percentage`,`passingyear`) VALUES 
 (1215609,0,'0',70,2017);
/*!40000 ALTER TABLE `studentqualification` ENABLE KEYS */;


--
-- Definition of table `studentsemmarksinfo`
--

DROP TABLE IF EXISTS `studentsemmarksinfo`;
CREATE TABLE `studentsemmarksinfo` (
  `SMID` int(11) NOT NULL auto_increment,
  `semno` int(11) default NULL,
  `studentid` int(11) default NULL,
  `sempercentage` float default NULL,
  `backlog` int(11) default NULL,
  PRIMARY KEY  (`SMID`),
  KEY `studentid` (`studentid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsemmarksinfo`
--

/*!40000 ALTER TABLE `studentsemmarksinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentsemmarksinfo` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
