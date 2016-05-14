-- phpMyAdmin SQL Dump
-- version 4.3.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2016 at 11:42 AM
-- Server version: 5.5.42
-- PHP Version: 5.5.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `templatizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_company`
--

CREATE TABLE IF NOT EXISTS `ci_company` (
  `company_id` int(100) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `designation` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile_no` varchar(40) NOT NULL,
  `address_line_2` text,
  `address_line_1` text,
  `created_on` datetime NOT NULL,
  `series_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_company`
--

INSERT INTO `ci_company` (`company_id`, `company_name`, `designation`, `email`, `mobile_no`, `address_line_2`, `address_line_1`, `created_on`, `series_id`) VALUES
(1, 'Axon Networks', 'Software Engineer', 'pradeepa.r@axonnetworks.com', '9998844532', 'address2', 'address1', '2014-01-09 10:34:00', 8),
(2, 'Axon', 'Software Eng', 'pradeepa.r@axonnetworks.com', '9998844532', 'add2', 'add1', '2014-01-16 11:32:00', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ci_companyroles`
--

CREATE TABLE IF NOT EXISTS `ci_companyroles` (
  `mapId` int(10) NOT NULL,
  `RoleIds` tinytext NOT NULL,
  `company_id` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_companyroles`
--

INSERT INTO `ci_companyroles` (`mapId`, `RoleIds`, `company_id`) VALUES
(1, '18,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 1),
(2, '1,3,4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ci_documents`
--

CREATE TABLE IF NOT EXISTS `ci_documents` (
  `doc_id` int(10) NOT NULL,
  `document_request_no` varchar(50) NOT NULL,
  `company_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `template_id` int(10) NOT NULL,
  `doc_name` varchar(30) NOT NULL,
  `doc_content` text NOT NULL,
  `doc_path` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_documents`
--

INSERT INTO `ci_documents` (`doc_id`, `document_request_no`, `company_id`, `user_id`, `template_id`, `doc_name`, `doc_content`, `doc_path`, `status`, `created_on`) VALUES
(1, 'DR|NO:1|1|2014', 1, 1, 1, 'Internal_Transfer_Sd', '<h1 style="text-align: center;">\n	<strong><u>Notification of Personnel Change</u></strong></h1>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">\n	<tbody>\n		<tr>\n			<th scope="row">\n				First Name</th>\n			<td>\n				<b>Teja</b></td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Last Name</th>\n			<td>\n				<b>R</b></td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Department</th>\n			<td>\n				yyuyu</td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Effective Date</th>\n			<td>\n				1st Apr</td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin-left:12.65pt;">\n	<strong><u>Change Requested:</u></strong></p>\n<p style="margin-left:1.3pt;">\n	Work location : Bangalore</p>\n<p style="margin-left:1.3pt;">\n	From Department: Hr</p>\n<p style="margin-left:1.3pt;">\n	To Department: Finance</p>\n<p style="margin-left:12.65pt;">\n	&nbsp;</p>\n<p style="margin-left:1.3pt;">\n	Reason for Personnel Change:</p>\n<p style="margin-left:1.3pt;">\n	##Reason_Personnel_Change#</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Department Head</p>\n<p style="margin-left:19.3pt;">\n	From: d</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	To: d</p>\n<p style="margin-left:30.65pt;">\n	&nbsp;</p>\n<p style="margin-left:30.65pt;">\n	Supervisor</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	From: dd</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	To: d</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong><u>AUTHORIZED SIGNATURES</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	The Office of Human Resources</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:58.0pt;">\n	Current Date</p>', 'application/views/documents/Internal_Transfer_Sd-DR|NO:1|1|2014.pdf', 'Approved', '2014-04-16 14:55:22'),
(2, 'DR|NO:2|1|2014', 1, 6, 1, 'Internal_Transfer_roopa_roopak', '<h1 style="text-align: center;">\n	<strong><u>Notification of Personnel Change</u></strong></h1>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">\n	<tbody>\n		<tr>\n			<th scope="row">\n				First Name</th>\n			<td>\n				<b>Roopa</b></td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Last Name</th>\n			<td>\n				<b>Kala</b></td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Department</th>\n			<td>\n				HR</td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Effective Date</th>\n			<td>\n				1st Apr</td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin-left:12.65pt;">\n	<strong><u>Change Requested:</u></strong></p>\n<p style="margin-left:1.3pt;">\n	Work location : Bangalore</p>\n<p style="margin-left:1.3pt;">\n	From Department: HR</p>\n<p style="margin-left:1.3pt;">\n	To Department: Finance</p>\n<p style="margin-left:12.65pt;">\n	&nbsp;</p>\n<p style="margin-left:1.3pt;">\n	Reason for Personnel Change:</p>\n<p style="margin-left:1.3pt;">\n	##Reason_Personnel_Change#</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Department Head</p>\n<p style="margin-left:19.3pt;">\n	From: HR</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	To: Finance</p>\n<p style="margin-left:30.65pt;">\n	&nbsp;</p>\n<p style="margin-left:30.65pt;">\n	Supervisor</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	From: Team 1</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	To: Team 2</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong><u>AUTHORIZED SIGNATURES</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	The Office of Human Resources</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:58.0pt;">\n	Current Date</p>', 'application/views/documents/Internal_Transfer_roopa_roopakala-DR|NO:2|1|2014.pdf', 'Pending', '2014-04-18 18:45:01'),
(3, 'DR|NO:3|6|2014', 1, 1, 6, 'Business_Letter_format_A', '<p style="text-align: right;">\n	Teja R,</p>\n<p style="text-align: right;">\n	351,Valluvar Nagar,,</p>\n<p style="text-align: right;">\n	New Quatres, Oddapatti,,</p>\n<p style="text-align: right;">\n	Dharmapuri-636705,</p>\n<p style="text-align: right;">\n	24 April 2014.</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Dear R,</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Business Letter Format.....</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Thanks.,</p>\n<p>\n	Axon</p>', 'application/views/documents/Business_Letter_format_A-DR|NO:3|6|2014.pdf', 'Approved', '2014-04-28 10:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `ci_doc_series`
--

CREATE TABLE IF NOT EXISTS `ci_doc_series` (
  `doc_series_id` int(100) NOT NULL,
  `doc_series_value` varchar(40) NOT NULL,
  `compid` int(40) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_doc_series`
--

INSERT INTO `ci_doc_series` (`doc_series_id`, `doc_series_value`, `compid`, `created_on`) VALUES
(1, '2014', 1, '2014-02-06 16:24:56'),
(2, '2014', 2, '2014-02-06 16:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `ci_final_documents`
--

CREATE TABLE IF NOT EXISTS `ci_final_documents` (
  `final_doc_id` int(100) NOT NULL,
  `document_no` varchar(50) NOT NULL,
  `company_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `template_id` int(10) NOT NULL,
  `doc_name` varchar(30) NOT NULL,
  `doc_content` text NOT NULL,
  `doc_path` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_final_documents`
--

INSERT INTO `ci_final_documents` (`final_doc_id`, `document_no`, `company_id`, `user_id`, `template_id`, `doc_name`, `doc_content`, `doc_path`, `status`, `created_on`) VALUES
(1, 'DOC/NO:1/1/2014', 1, 1, 1, 'Internal_Transfer_Sd', '<h1 style="text-align: center;">\n	<strong><u>Notification of Personnel Change</u></strong></h1>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">\n	<tbody>\n		<tr>\n			<th scope="row">\n				First Name</th>\n			<td>\n				<b>Teja</b></td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Last Name</th>\n			<td>\n				<b>R</b></td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Department</th>\n			<td>\n				yyuyu</td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Effective Date</th>\n			<td>\n				1st Apr</td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin-left:12.65pt;">\n	<strong><u>Change Requested:</u></strong></p>\n<p style="margin-left:1.3pt;">\n	Work location : Bangalore</p>\n<p style="margin-left:1.3pt;">\n	From Department: Hr</p>\n<p style="margin-left:1.3pt;">\n	To Department: Finance</p>\n<p style="margin-left:12.65pt;">\n	&nbsp;</p>\n<p style="margin-left:1.3pt;">\n	Reason for Personnel Change:</p>\n<p style="margin-left:1.3pt;">\n	##Reason_Personnel_Change#</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Department Head</p>\n<p style="margin-left:19.3pt;">\n	From: d</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	To: d</p>\n<p style="margin-left:30.65pt;">\n	&nbsp;</p>\n<p style="margin-left:30.65pt;">\n	Supervisor</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	From: dd</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	To: d</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong><u>AUTHORIZED SIGNATURES</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	The Office of Human Resources</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:58.0pt;">\n	Current Date</p>', 'application/views/documents/Internal_Transfer_Sd-DR|NO:1|1|2014.pdf', 'Approved', '2014-04-16 15:18:17'),
(2, 'DOC/NO:2/6/2014', 1, 1, 6, 'Business_Letter_format_A', '<p style="text-align: right;">\n	Teja R,</p>\n<p style="text-align: right;">\n	351,Valluvar Nagar,,</p>\n<p style="text-align: right;">\n	New Quatres, Oddapatti,,</p>\n<p style="text-align: right;">\n	Dharmapuri-636705,</p>\n<p style="text-align: right;">\n	24 April 2014.</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Dear R,</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Business Letter Format.....</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Thanks.,</p>\n<p>\n	Axon</p>', 'application/views/documents/Business_Letter_format_A-DR|NO:3|6|2014.pdf', 'Approved', '2014-04-28 10:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `ci_page_settings`
--

CREATE TABLE IF NOT EXISTS `ci_page_settings` (
  `Sid` int(10) NOT NULL,
  `top` decimal(5,2) NOT NULL DEFAULT '5.00',
  `bottom` decimal(5,2) NOT NULL DEFAULT '5.00',
  `left` decimal(5,2) NOT NULL DEFAULT '10.00',
  `right` decimal(5,2) NOT NULL DEFAULT '5.00',
  `company_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_page_settings`
--

INSERT INTO `ci_page_settings` (`Sid`, `top`, `bottom`, `left`, `right`, `company_id`, `user_id`) VALUES
(1, '1.80', '1.00', '1.00', '1.00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_template`
--

CREATE TABLE IF NOT EXISTS `ci_template` (
  `temp_id` int(100) NOT NULL,
  `company_id` int(10) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `temp_name` varchar(40) NOT NULL,
  `temp_content` text NOT NULL,
  `temp_logo_name` varchar(40) NOT NULL,
  `temp_logo_ext` varchar(10) NOT NULL,
  `status` varchar(40) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_template`
--

INSERT INTO `ci_template` (`temp_id`, `company_id`, `user_id`, `temp_name`, `temp_content`, `temp_logo_name`, `temp_logo_ext`, `status`, `created_on`) VALUES
(1, 1, '1', 'Internal_Transfer', '<h1 style="text-align: center;">\n	<strong><u>Notification of Personnel Change</u></strong></h1>\n<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">\n	<tbody>\n		<tr>\n			<th scope="row">\n				First Name</th>\n			<td>\n				<b>##temp_FNAME##</b></td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Last Name</th>\n			<td>\n				<b>##temp_LNAME##</b></td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Department</th>\n			<td>\n				##Department##</td>\n		</tr>\n		<tr>\n			<th scope="row">\n				Effective Date</th>\n			<td>\n				##Effective_Date##</td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin-left:12.65pt;">\n	<strong><u>Change Requested:</u></strong></p>\n<p style="margin-left:1.3pt;">\n	Work location : ##Work_location##</p>\n<p style="margin-left:1.3pt;">\n	From Department: ##From_Department##</p>\n<p style="margin-left:1.3pt;">\n	To Department: ##To_Department##</p>\n<p style="margin-left:12.65pt;">\n	&nbsp;</p>\n<p style="margin-left:1.3pt;">\n	Reason for Personnel Change:</p>\n<p style="margin-left:1.3pt;">\n	##Reason_Personnel_Change#</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Department Head</p>\n<p style="margin-left:19.3pt;">\n	From: ##Department_Head_From##</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	To: ##Department_Head_To##</p>\n<p style="margin-left:30.65pt;">\n	&nbsp;</p>\n<p style="margin-left:30.65pt;">\n	Supervisor</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	From: ##Supervisor_From##</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	To: ##Supervisor_To##</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong><u>AUTHORIZED SIGNATURES</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	The Office of Human Resources</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:19.3pt;">\n	&nbsp;</p>\n<p style="margin-left:58.0pt;">\n	Current Date</p>', '', '', 'Approved', '2014-04-16 14:50:00'),
(6, 1, '1', 'Business_Letter_format', '<p style="text-align: right;">\n	##temp_FNAME## ##temp_LNAME##,</p>\n<p style="text-align: right;">\n	##temp_addr_line1##,</p>\n<p style="text-align: right;">\n	##temp_addr_line2##,</p>\n<p style="text-align: right;">\n	##temp_addr_line3##,</p>\n<p style="text-align: right;">\n	##temp_Date##.</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Dear ##temp_LNAME##,</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Business Letter Format.....</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	&nbsp;</p>\n<p>\n	Thanks.,</p>\n<p>\n	Axon</p>', '123c601df4a459e1ec70b8110494ea9e', '.jpg', 'Approved', '2014-04-24 11:25:00'),
(8, 1, '1', 'variable_chk', '<p>\n	fgfdgf</p>', '', '', 'Pending', '2015-12-14 05:17:00'),
(9, 1, '1', 'test', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px">\n	<tbody>\n		<tr>\n			<td style="text-align: center;">\n				<strong>Offshore Offer Letter Approval Request</strong></td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	&nbsp;</p>', '', '', 'Pending', '2015-12-18 11:48:00'),
(10, 1, '1', 'rrrr', '<p>\n	ffhgfhfhf</p>', '', '', 'Pending', '2016-04-19 12:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_userdetails`
--

CREATE TABLE IF NOT EXISTS `ci_userdetails` (
  `user_id` int(100) NOT NULL,
  `company_id` int(8) NOT NULL DEFAULT '0',
  `user_name` varchar(40) NOT NULL,
  `tempKey` varchar(10) NOT NULL,
  `login_name` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `confirm_password` varchar(40) NOT NULL,
  `usertype_id` varchar(40) NOT NULL,
  `role_id` int(11) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `designation` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile_no` int(40) NOT NULL,
  `userKey` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `address_line_1` varchar(40) NOT NULL,
  `address_line_2` varchar(40) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_userdetails`
--

INSERT INTO `ci_userdetails` (`user_id`, `company_id`, `user_name`, `tempKey`, `login_name`, `password`, `confirm_password`, `usertype_id`, `role_id`, `company_name`, `designation`, `email`, `mobile_no`, `userKey`, `status`, `address_line_1`, `address_line_2`, `created_on`) VALUES
(1, 1, 'Administrator', 'UL0y1F5F', 'Administrator', '123456', 'e10adc3949ba59abbe56e057f20f883e', '2', 1, 'Axon Networks', 'Software Engineer', 'pradeepa.r@axonnetworks.com', 2147483647, ' ', 1, 'address1', 'address2', '2014-01-09 10:34:46'),
(3, 1, 'Vinod', 'klA5Srv7', 'vinod', 'e10adc3949ba59abbe56e057f20f883e', '', '3', 2, '', '', 'vinod.jadhav@axonnetworks.com', 0, '4b368cd5b86da883d4124b8d241d60d9', 1, '', '', '2014-01-09 10:38:00'),
(4, 1, 'priyadharshini.m', 'hmFBKJoG', 'priya', 'e10adc3949ba59abbe56e057f20f883e', '', '3', 4, '', '', 'priyadharshini.m@axonnetworks.com', 0, ' ', 1, '', '', '2014-01-09 10:39:00'),
(5, 1, 'deepa.s', '8k2em3iq', 'deepa', '5f4dcc3b5aa765d61d8327deb882cf99', '', '3', 4, '', '', 'deepa.s@axonnetworks.com', 0, ' ', 1, '', '', '2014-01-09 10:40:00'),
(6, 1, 'roopa', 'LRhmIWu2', 'roopa', 'e10adc3949ba59abbe56e057f20f883e', '', '3', 3, '', '', 'roopa@axonnetworks.com', 0, 'F58XWrVO', 1, '', '', '2014-01-09 10:47:00'),
(7, 1, 'chaithra.n', 'Jgxnsr2g', 'chaithra.n', '5f4dcc3b5aa765d61d8327deb882cf99', '5f4dcc3b5aa765d61d8327deb882cf99', '3', 4, '', '', 'chaithra.n@axonnetworks.com', 0, ' ', 1, '', '', '2014-01-13 16:32:00'),
(8, 2, 'admin1', 'Pwkm8TzD', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '2', 1, 'Axon', 'Software Eng', 'pradeepa.r@axonnetworks.com', 2147483647, ' ', 1, 'add1', 'add2', '2014-01-16 11:32:46'),
(9, 1, 'vishwanath.ms', 'X1Fw6CU7', 'vishwanath.ms', '40be4e59b9a2a2b5dffb918c0e86b3d7', '', '3', 15, '', '', 'vishwanath.ms@axonnetworks.com', 0, ' ', 1, '', '', '2014-02-19 10:43:00'),
(10, 1, 'vishwas.hk', 'egrgvP6O', 'vishwas.hk', '40be4e59b9a2a2b5dffb918c0e86b3d7', '', '3', 14, '', '', 'vishwas.hk@axonnetworks.com', 0, ' ', 1, '', '', '2014-02-19 10:44:00'),
(11, 1, 'lakshmi.belaguli', 'aZ2lVhtd', 'lakshmi.belaguli', '40be4e59b9a2a2b5dffb918c0e86b3d7', '', '3', 9, '', '', 'lakshmi.belaguli@axonnetworks.com', 0, ' ', 1, '', '', '2014-03-10 16:24:00'),
(12, 1, 'girish.gopal', 'Tb7cWifI', 'girish.gopal', 'e99a18c428cb38d5f260853678922e03', '', '3', 16, '', '', 'girish.gopal@axonnetworks.com', 0, ' ', 1, '', '', '2014-03-25 11:11:00'),
(22, 1, 'test', 'jvrzTcph', 'test', '123axon', '', '3', 6, '', '', 'pradeepa.r@axonnetworks.com', 2147483647, '69f311c0096dca8463f3687d45fbf69a', 1, '', '', '2014-05-19 17:55:32'),
(23, 1, 'prathee', 'Z0BTGUxp', 'prathee', 'axon@321', '', '3', 13, '', '', 'pradeepa.r@axonnetworks.com', 2147483647, ' ', 1, '', '', '2014-05-19 17:58:58'),
(24, 1, 'test1', 'S2YWbaZ4', 'test1', 'a12345', '', '3', 7, '', '', 'pradeepa.r@axonnetworks.com', 2147483647, ' ', 1, '', '', '2014-05-20 11:22:05'),
(25, 1, 'pradeepa.r', 'x1xngYL6', 'pradeepa.r', 'dream', '', '3', 18, '', '', 'pradeepa.r@axonnetworks.com', 0, 'pQdkkA2g', 1, '', '', '2016-04-15 05:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `ci_usertype`
--

CREATE TABLE IF NOT EXISTS `ci_usertype` (
  `usertype_id` int(100) NOT NULL,
  `usertype_name` varchar(40) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_variables`
--

CREATE TABLE IF NOT EXISTS `ci_variables` (
  `variable_id` int(100) NOT NULL,
  `temp_id` varchar(40) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `variable_name` varchar(40) NOT NULL,
  `variable_values` varchar(40) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_variables`
--

INSERT INTO `ci_variables` (`variable_id`, `temp_id`, `user_id`, `variable_name`, `variable_values`, `created_on`) VALUES
(1, '1', '1', 'Department', 'HR', '2014-04-16 14:50:00'),
(2, '1', '1', 'Effective_Date', '1st Apr', '2014-04-16 14:50:00'),
(3, '1', '1', 'Work_location', 'Bangalore', '2014-04-16 14:50:00'),
(4, '1', '1', 'From_Department', 'Hr', '2014-04-16 14:50:00'),
(5, '1', '1', 'To_Department', 'Finance', '2014-04-16 14:50:00'),
(6, '1', '1', 'Reason_Personnel_Change', 'Rea', '2014-04-16 14:50:00'),
(7, '1', '1', 'Department_Head_From', 'd', '2014-04-16 14:50:00'),
(8, '1', '1', 'Department_Head_To', 'd', '2014-04-16 14:50:00'),
(9, '1', '1', 'Supervisor_From', 'd', '2014-04-16 14:50:00'),
(10, '1', '1', 'Supervisor_To', 'd', '2014-04-16 14:50:00'),
(11, '1', '1', 'temp_FNAME', '', '2014-04-16 14:50:00'),
(12, '1', '1', 'temp_LNAME', '', '2014-04-16 14:50:00'),
(37, '6', '1', 'temp_FNAME', 'Teja', '2014-04-24 11:25:00'),
(38, '6', '1', 'temp_LNAME', 'R', '2014-04-24 11:25:00'),
(39, '6', '1', 'temp_addr_line1', '351,Valluvar Nagar', '2014-04-24 11:25:00'),
(40, '6', '1', 'temp_addr_line2', 'New Quatres, Oddapatti', '2014-04-24 11:25:00'),
(41, '6', '1', 'temp_addr_line3', 'Dharmapuri-636705', '2014-04-24 11:25:00'),
(42, '6', '1', 'temp_Date', '24 April 2014', '2014-04-24 11:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `form_approval`
--

CREATE TABLE IF NOT EXISTS `form_approval` (
  `doc_app_id` int(40) NOT NULL,
  `template_id` int(20) NOT NULL,
  `approverRoleId` int(20) NOT NULL,
  `approverUserId` varchar(40) DEFAULT NULL,
  `approver_priority` int(20) NOT NULL,
  `min_approval` int(20) NOT NULL,
  `startDate` datetime NOT NULL,
  `initiatedByUserId` int(20) NOT NULL,
  `initiatedByUserRoleId` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_approval`
--

INSERT INTO `form_approval` (`doc_app_id`, `template_id`, `approverRoleId`, `approverUserId`, `approver_priority`, `min_approval`, `startDate`, `initiatedByUserId`, `initiatedByUserRoleId`) VALUES
(1, 1, 2, '3', 1, 1, '2014-04-16 14:53:53', 1, 1),
(2, 1, 3, '6', 2, 1, '2014-04-16 14:54:02', 1, 1),
(3, 1, 16, '12', 3, 1, '2014-04-16 14:54:12', 1, 1),
(4, 1, 15, '9', 4, 1, '2014-04-16 14:54:20', 1, 1),
(5, 1, 4, '4', 5, 1, '2014-04-16 14:54:31', 1, 1),
(6, 1, 3, '6', 6, 1, '2014-04-16 14:54:39', 1, 1),
(7, 6, 1, '1', 1, 1, '2014-04-28 10:51:29', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_instance`
--

CREATE TABLE IF NOT EXISTS `form_instance` (
  `doc_instance_id` int(40) NOT NULL,
  `document_id` varchar(40) NOT NULL,
  `template_id` varchar(40) NOT NULL,
  `initiatedBy` varchar(40) NOT NULL,
  `initiatedRole` varchar(40) NOT NULL,
  `initiatedDate` datetime NOT NULL,
  `currentstatus` varchar(20) NOT NULL,
  `randomId` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_instance`
--

INSERT INTO `form_instance` (`doc_instance_id`, `document_id`, `template_id`, `initiatedBy`, `initiatedRole`, `initiatedDate`, `currentstatus`, `randomId`) VALUES
(1, '1', '1', '1', '1', '2014-04-16 14:55:22', 'Created', '1990344068'),
(2, '2', '1', '6', '3', '2014-04-18 18:45:01', 'Created', '1619031907'),
(3, '3', '6', '1', '1', '2014-04-28 10:52:06', 'Created', '308347513');

-- --------------------------------------------------------

--
-- Table structure for table `form_instance_audit`
--

CREATE TABLE IF NOT EXISTS `form_instance_audit` (
  `doc_ins_audit_id` int(40) NOT NULL,
  `document_id` varchar(40) NOT NULL,
  `template_id` varchar(40) NOT NULL,
  `doc_instance_id` varchar(40) NOT NULL,
  `action` varchar(40) NOT NULL,
  `owner` varchar(40) DEFAULT NULL COMMENT 'action-by whom',
  `owner_role` varchar(40) DEFAULT NULL COMMENT 'role of owner who has taken action',
  `role` varchar(40) NOT NULL,
  `user` varchar(40) NOT NULL,
  `approver_priority` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `notes` varchar(40) NOT NULL,
  `randomid` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_instance_audit`
--

INSERT INTO `form_instance_audit` (`doc_ins_audit_id`, `document_id`, `template_id`, `doc_instance_id`, `action`, `owner`, `owner_role`, `role`, `user`, `approver_priority`, `date`, `notes`, `randomid`) VALUES
(1, '1', '1', '1', 'Approved', '3', '2', '2', '3', '1', '2014-04-16 14:57:29', 'Approved', '436359126'),
(2, '1', '1', '1', 'Approved', '6', '3', '3', '6', '2', '2014-04-16 15:00:15', 'Approved', '1759813025'),
(3, '1', '1', '1', 'Approved', '12', '16', '16', '12', '3', '2014-04-16 15:04:48', 'Approved as directed by HR', '1866638273'),
(4, '1', '1', '1', 'Approved', '9', '15', '15', '9', '4', '2014-04-16 15:17:23', 'Approved', '1734809276'),
(5, '1', '1', '1', 'Approved', '4', '4', '4', '4', '5', '2014-04-16 15:17:59', 'Approved', '88282954'),
(6, '1', '1', '1', 'Approved', '6', '3', '3', '6', '6', '2014-04-16 15:18:17', 'Approved', '80766633'),
(7, '2', '1', '2', 'Pending', '', '', '2', '3', '1', '2014-04-18 18:45:01', '', '2025574946'),
(8, '2', '1', '2', 'Pending', '', '', '3', '6', '2', '2014-04-18 18:45:01', '', '594700542'),
(9, '2', '1', '2', 'Pending', '', '', '16', '12', '3', '2014-04-18 18:45:01', '', '1418306808'),
(10, '2', '1', '2', 'Pending', '', '', '15', '9', '4', '2014-04-18 18:45:01', '', '1158040893'),
(11, '2', '1', '2', 'Pending', '', '', '4', '4', '5', '2014-04-18 18:45:01', '', '132499380'),
(12, '2', '1', '2', 'Pending', '', '', '3', '6', '6', '2014-04-18 18:45:01', '', '518316626'),
(13, '3', '6', '3', 'Approved', '1', '1', '1', '1', '1', '2014-04-28 10:52:18', 'App', '1965151779');

-- --------------------------------------------------------

--
-- Table structure for table `rolemaster`
--

CREATE TABLE IF NOT EXISTS `rolemaster` (
  `RoleId` int(10) NOT NULL,
  `RoleName` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rolemaster`
--

INSERT INTO `rolemaster` (`RoleId`, `RoleName`) VALUES
(1, 'Administrator'),
(2, 'HR Generalist'),
(3, 'HR Head'),
(4, 'HR Recruiter'),
(5, 'GM'),
(6, 'CEO'),
(7, 'Director'),
(8, 'Project lead'),
(9, 'Team manager'),
(10, 'CTO'),
(11, 'CXO'),
(12, 'TL'),
(13, 'Test'),
(14, 'Manager Operation'),
(15, 'Director Operation'),
(16, 'Director Engineering'),
(17, 'Chief Technical Officer'),
(18, 'Employees');

-- --------------------------------------------------------

--
-- Table structure for table `template_approval`
--

CREATE TABLE IF NOT EXISTS `template_approval` (
  `Temp_app_id` int(10) NOT NULL,
  `template_id` int(10) NOT NULL,
  `approverRoleId` varchar(40) NOT NULL,
  `approver_priority` varchar(40) DEFAULT NULL,
  `min_approval` varchar(40) NOT NULL,
  `startDate` datetime NOT NULL,
  `initiatedByUserId` varchar(40) NOT NULL,
  `initiatedByUserRoleId` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_approval`
--

INSERT INTO `template_approval` (`Temp_app_id`, `template_id`, `approverRoleId`, `approver_priority`, `min_approval`, `startDate`, `initiatedByUserId`, `initiatedByUserRoleId`) VALUES
(1, 1, '1', '1', '1', '2014-04-16 14:52:00', '1', '1'),
(2, 6, '1', '1', '1', '2014-04-28 10:51:02', '1', '1'),
(3, 8, '1', '1', '1', '2016-04-06 05:30:13', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `template_instance`
--

CREATE TABLE IF NOT EXISTS `template_instance` (
  `temp_instance_id` int(10) NOT NULL,
  `template_id` int(10) NOT NULL,
  `initiatedBy` varchar(40) NOT NULL COMMENT 'userId from UserLogin',
  `initiatedByRole` varchar(40) NOT NULL,
  `initiatedDate` datetime NOT NULL,
  `currentstatus` varchar(40) NOT NULL,
  `randomId` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_instance`
--

INSERT INTO `template_instance` (`temp_instance_id`, `template_id`, `initiatedBy`, `initiatedByRole`, `initiatedDate`, `currentstatus`, `randomId`) VALUES
(1, 1, '1', '1', '2014-04-16 14:52:00', 'Created', '1328671136'),
(2, 6, '1', '1', '2014-04-28 10:51:02', 'Created', '1325522320'),
(3, 8, '1', '1', '2016-04-06 05:30:13', 'Created', '1602849759');

-- --------------------------------------------------------

--
-- Table structure for table `template_instance_audit`
--

CREATE TABLE IF NOT EXISTS `template_instance_audit` (
  `temp_ins_audit_id` int(10) NOT NULL,
  `templateid` int(10) NOT NULL,
  `temp_instance_id` varchar(40) NOT NULL,
  `action` varchar(40) NOT NULL,
  `owner` varchar(40) DEFAULT NULL COMMENT 'action - by whom',
  `owner_role` varchar(40) DEFAULT NULL COMMENT 'role of owner who has taken action',
  `role` varchar(40) NOT NULL,
  `approver_priority` varchar(40) DEFAULT NULL,
  `date` datetime NOT NULL,
  `notes` text NOT NULL,
  `randomid` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_instance_audit`
--

INSERT INTO `template_instance_audit` (`temp_ins_audit_id`, `templateid`, `temp_instance_id`, `action`, `owner`, `owner_role`, `role`, `approver_priority`, `date`, `notes`, `randomid`) VALUES
(1, 1, '1', 'Created', '1', '1', '1', 'NULL', '2014-04-16 14:52:00', '', '660955180'),
(2, 1, '1', 'Approved', '1', '1', '1', '1', '2014-04-16 14:52:08', 'Approved', '1109983634'),
(3, 6, '2', 'Created', '1', '1', '1', 'NULL', '2014-04-28 10:51:02', '', '1620506891'),
(4, 6, '2', 'Approved', '1', '1', '1', '1', '2014-04-28 10:51:12', 'Approved', '1830907824'),
(5, 8, '3', 'Created', '1', '1', '1', 'NULL', '2016-04-06 05:30:13', '', '886533051'),
(6, 8, '3', 'Pending', NULL, NULL, '1', '1', '2016-04-06 05:30:13', '', '1749739441');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE IF NOT EXISTS `user_master` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `staff_number` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `contact_phone_office` varchar(255) DEFAULT NULL,
  `contact_phone_residence` varchar(255) DEFAULT NULL,
  `contact_phone_mobile` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `office_index` int(10) DEFAULT NULL,
  `official_email` varchar(255) DEFAULT NULL,
  `personal_email` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `account_status` varchar(255) DEFAULT NULL,
  `account_expiry` varchar(255) DEFAULT NULL,
  `account_created_on` varchar(255) DEFAULT NULL,
  `account_created_by` varchar(255) DEFAULT NULL,
  `agency_index` int(10) DEFAULT '1',
  `business_group_index` int(10) DEFAULT '1',
  `grade_id` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`username`, `password`, `staff_number`, `first_name`, `last_name`, `contact_phone_office`, `contact_phone_residence`, `contact_phone_mobile`, `contact_address`, `permanent_address`, `office_index`, `official_email`, `personal_email`, `account_type`, `account_status`, `account_expiry`, `account_created_on`, `account_created_by`, `agency_index`, `business_group_index`, `grade_id`) VALUES
('Admin', '123456', 'ADMIN', 'System', 'Administrator', '8879089765', NULL, '8879089765', NULL, NULL, 1, 'administrator', NULL, 'service_account', 'Active', '', NULL, NULL, 1, 11, NULL),
('test', '123axon', '1333', 'fname', 'lname', '8879089765', NULL, '8879089765', 'address1234', 'p address 1234', 1, 'pradeepa.r@axonnetworks.com', NULL, 'service_type', 'Active', NULL, NULL, NULL, 1, 1, NULL),
('test1', 'a12345', '1334', 'fname1', 'lname1', '8879089765', NULL, '8879089765', 'address4', 'add4', 1, 'pradeepa.r@axonnetworks.com', NULL, 'service_type', 'Active', NULL, NULL, NULL, 1, 1, NULL),
('prathee', 'axon@123', '0334', 'Prathee', 'Raj ', '8879089765', '04342123455', '8879089765', 'Contact Address', 'Permanent Address', 1, 'pradeepa.r@axonnetworks.com', 'pradee@gmail.com', 'service_account', 'Active', '', NULL, 'admin', 1, 1, NULL),
('Pradee', 'axon@123', '0335', 'Pradee', 'Raj', '1234567890', '1234567890', '9807632451', 'Residential address', 'Permanent address', 1, 'pradeepa.r@axonnetworks.com', 'pradee.r@gmail.com', 'employee', 'Active', '1364684400', '1363871022', 'prathee', 1, 11, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_company`
--
ALTER TABLE `ci_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `ci_companyroles`
--
ALTER TABLE `ci_companyroles`
  ADD PRIMARY KEY (`mapId`);

--
-- Indexes for table `ci_documents`
--
ALTER TABLE `ci_documents`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `ci_doc_series`
--
ALTER TABLE `ci_doc_series`
  ADD PRIMARY KEY (`doc_series_id`);

--
-- Indexes for table `ci_final_documents`
--
ALTER TABLE `ci_final_documents`
  ADD PRIMARY KEY (`final_doc_id`);

--
-- Indexes for table `ci_page_settings`
--
ALTER TABLE `ci_page_settings`
  ADD PRIMARY KEY (`Sid`);

--
-- Indexes for table `ci_template`
--
ALTER TABLE `ci_template`
  ADD PRIMARY KEY (`temp_id`);

--
-- Indexes for table `ci_userdetails`
--
ALTER TABLE `ci_userdetails`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ci_usertype`
--
ALTER TABLE `ci_usertype`
  ADD PRIMARY KEY (`usertype_id`);

--
-- Indexes for table `ci_variables`
--
ALTER TABLE `ci_variables`
  ADD PRIMARY KEY (`variable_id`);

--
-- Indexes for table `form_approval`
--
ALTER TABLE `form_approval`
  ADD PRIMARY KEY (`doc_app_id`);

--
-- Indexes for table `form_instance`
--
ALTER TABLE `form_instance`
  ADD PRIMARY KEY (`doc_instance_id`);

--
-- Indexes for table `form_instance_audit`
--
ALTER TABLE `form_instance_audit`
  ADD PRIMARY KEY (`doc_ins_audit_id`);

--
-- Indexes for table `rolemaster`
--
ALTER TABLE `rolemaster`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `template_approval`
--
ALTER TABLE `template_approval`
  ADD PRIMARY KEY (`Temp_app_id`);

--
-- Indexes for table `template_instance`
--
ALTER TABLE `template_instance`
  ADD PRIMARY KEY (`temp_instance_id`);

--
-- Indexes for table `template_instance_audit`
--
ALTER TABLE `template_instance_audit`
  ADD PRIMARY KEY (`temp_ins_audit_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_company`
--
ALTER TABLE `ci_company`
  MODIFY `company_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ci_companyroles`
--
ALTER TABLE `ci_companyroles`
  MODIFY `mapId` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ci_documents`
--
ALTER TABLE `ci_documents`
  MODIFY `doc_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ci_doc_series`
--
ALTER TABLE `ci_doc_series`
  MODIFY `doc_series_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ci_final_documents`
--
ALTER TABLE `ci_final_documents`
  MODIFY `final_doc_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ci_page_settings`
--
ALTER TABLE `ci_page_settings`
  MODIFY `Sid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ci_template`
--
ALTER TABLE `ci_template`
  MODIFY `temp_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ci_userdetails`
--
ALTER TABLE `ci_userdetails`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ci_usertype`
--
ALTER TABLE `ci_usertype`
  MODIFY `usertype_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ci_variables`
--
ALTER TABLE `ci_variables`
  MODIFY `variable_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `form_approval`
--
ALTER TABLE `form_approval`
  MODIFY `doc_app_id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `form_instance`
--
ALTER TABLE `form_instance`
  MODIFY `doc_instance_id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `form_instance_audit`
--
ALTER TABLE `form_instance_audit`
  MODIFY `doc_ins_audit_id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `rolemaster`
--
ALTER TABLE `rolemaster`
  MODIFY `RoleId` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `template_approval`
--
ALTER TABLE `template_approval`
  MODIFY `Temp_app_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `template_instance`
--
ALTER TABLE `template_instance`
  MODIFY `temp_instance_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `template_instance_audit`
--
ALTER TABLE `template_instance_audit`
  MODIFY `temp_ins_audit_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
