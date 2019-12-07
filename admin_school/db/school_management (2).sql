-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2017 at 06:18 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_news`
--

CREATE TABLE `admission_news` (
  `admission_news_no` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `image_url` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admission_news`
--

INSERT INTO `admission_news` (`admission_news_no`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad', '150846326811.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'ghj', '15084637371..docx', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'R', '1508463875Protection of Patent.docx', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'Exam', '1508500713Capture.JPG', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_no` int(11) NOT NULL,
  `class_name` varchar(55) NOT NULL,
  `section_name` varchar(55) NOT NULL,
  `version_no` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_no`, `class_name`, `section_name`, `version_no`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(2, 'Ten', 'A', 2, 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'Ten', 'A', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_bangla`
--

CREATE TABLE `exam_routine_bangla` (
  `routine_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_routine_bangla`
--

INSERT INTO `exam_routine_bangla` (`routine_id`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bangla', '1509409990j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fgdgsdf', '1509410412windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'fghfghf', '1509414818windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_english`
--

CREATE TABLE `exam_routine_english` (
  `routine_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `exam_routine_english`
--

INSERT INTO `exam_routine_english` (`routine_id`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bangla', '1509409990j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fgdgsdf', '1509410412windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'fgdf', '1509414932windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `footer_info_details`
--

CREATE TABLE `footer_info_details` (
  `footer_info_details_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `copyright_year` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `footer_info_details`
--

INSERT INTO `footer_info_details` (`footer_info_details_id`, `company_name`, `address`, `mobile`, `email`, `copyright_year`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bdsoft', 'vbhjknm', 'vhbjnkm', 'bjknm', 2060, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `footer_social_icon_link`
--

CREATE TABLE `footer_social_icon_link` (
  `footer_social_icon_link_id` int(11) NOT NULL,
  `fb_icon_link` text NOT NULL,
  `twitter_icon_link` text NOT NULL,
  `google_icon_link` text NOT NULL,
  `youtube_icon_link` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `footer_social_icon_link`
--

INSERT INTO `footer_social_icon_link` (`footer_social_icon_link_id`, `fb_icon_link`, `twitter_icon_link`, `google_icon_link`, `youtube_icon_link`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'vyubinm78ew94w4', 'vyubinmvyubinmbvyinjm', 'kbiuin', 'jmkiuhij0987543', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `founder_speech`
--

CREATE TABLE `founder_speech` (
  `founder_speech_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `founder_name` varchar(55) NOT NULL,
  `founder_designation` varchar(5) NOT NULL,
  `short_speech` varchar(650) NOT NULL,
  `speech` longtext NOT NULL,
  `image_url` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `founder_speech`
--

INSERT INTO `founder_speech` (`founder_speech_id`, `title`, `founder_name`, `founder_designation`, `short_speech`, `speech`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad', 'vbhjmhghgbyuiihg87o', 'uhj', '', 'bnlkmllk', '150920855811.JPG', 0, '0000-00-00 00:00:00', 1, 1, '2017-10-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us1`
--

CREATE TABLE `home_about_us1` (
  `home_about_us1_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us1`
--

INSERT INTO `home_about_us1` (`home_about_us1_id`, `title`, `details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad', 'losifndsk;hbfldfbads;fnadsmfadsnjfasdfadsfsdafdsnklmfsadfasd', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us2`
--

CREATE TABLE `home_about_us2` (
  `home_about_us2_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us2`
--

INSERT INTO `home_about_us2` (`home_about_us2_id`, `title`, `details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad5284', 'losifndsk;hbfldfbads;fnadsmfadsnjfasdfadsfsdafdsnklmfsadfasd', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us3`
--

CREATE TABLE `home_about_us3` (
  `home_about_us3_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us3`
--

INSERT INTO `home_about_us3` (`home_about_us3_id`, `title`, `details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'dsfsafsdfsd', 'losifndsk;hbfldfbads;fnadsmfadsnjfasdfadsfsdafdsnklmfsadfasd', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us4`
--

CREATE TABLE `home_about_us4` (
  `home_about_us4_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us4`
--

INSERT INTO `home_about_us4` (`home_about_us4_id`, `title`, `details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad5284fdgdgfhghjghjfg', 'losifndsk;hbfldfbads;fnadsmfadsnjfasdfadsfsdafdsnklmfsadfasd\r\ndfgfdgdfsgdfsg', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us5`
--

CREATE TABLE `home_about_us5` (
  `home_about_us5_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us5`
--

INSERT INTO `home_about_us5` (`home_about_us5_id`, `title`, `details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad5284000', 'losifndsk;hbfldfbads;fnadsmfadsnjfasdfadsfsdafdsnklmfsadfasd', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us6`
--

CREATE TABLE `home_about_us6` (
  `home_about_us6_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us6`
--

INSERT INTO `home_about_us6` (`home_about_us6_id`, `title`, `details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad5284000', 'losifndsk;hbfldfbads;fnadsmfadsnjfasdfadsfsdafdsnklmfsadfasd', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_paper_details`
--

CREATE TABLE `home_admission_paper_details` (
  `home_admission_paper_details_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `details_no` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_paper_details`
--

INSERT INTO `home_admission_paper_details` (`home_admission_paper_details_id`, `details`, `details_no`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb.\r\n\r\ncvxcnkv cxv vdf00sdfsadxcgfcgfdreghghg', 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-21 00:00:00'),
(2, 'jbknjl', 0, 1, 2017, 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'jbknjl', 0, 1, 2017, 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_paper_title`
--

CREATE TABLE `home_admission_paper_title` (
  `home_admission_paper_title_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_paper_title`
--

INSERT INTO `home_admission_paper_title` (`home_admission_paper_title_id`, `title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb.\r\n\r\ncvxcnkv cxv vdf00sdfsaddfgfdgdffghjgh', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_process_details`
--

CREATE TABLE `home_admission_process_details` (
  `home_admission_process_details_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_process_details`
--

INSERT INTO `home_admission_process_details` (`home_admission_process_details_id`, `details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb.\r\n\r\ncvxcnkv cxv vdf00sdfsaddfgfdgdffghjgh0789', 0, 0, 1, 1, '2017-10-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_process_title`
--

CREATE TABLE `home_admission_process_title` (
  `home_admission_process_title_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_process_title`
--

INSERT INTO `home_admission_process_title` (`home_admission_process_title_id`, `title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb.\r\n\r\ncvxcnkv cxv vdf00sdfsaddfgfdgdffghjgh', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_rule_class1`
--

CREATE TABLE `home_admission_rule_class1` (
  `home_admission_rule_class1_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_admission_rule_class1`
--

INSERT INTO `home_admission_rule_class1` (`home_admission_rule_class1_id`, `title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb.\r\n\r\ncvxcnkv cxv vdf007y6sdfsadxcgfcgfd\r\n0000', 0, 0, 1, 1, '2017-10-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_rule_class1_details`
--

CREATE TABLE `home_admission_rule_class1_details` (
  `home_admission_rule_class1_details_id` int(11) NOT NULL,
  `details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_admission_rule_class1_details`
--

INSERT INTO `home_admission_rule_class1_details` (`home_admission_rule_class1_details_id`, `details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 0, 0, 1, 1, '2017-10-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_rule_class2`
--

CREATE TABLE `home_admission_rule_class2` (
  `home_admission_rule_class2_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_admission_rule_class2`
--

INSERT INTO `home_admission_rule_class2` (`home_admission_rule_class2_id`, `title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb.\r\n\r\ncvxcnkv cxv vdf00sdfsadxcgfcgfd\r\nasdsbfsdf', 0, 0, 1, 1, '2017-10-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_rule_class2_details`
--

CREATE TABLE `home_admission_rule_class2_details` (
  `home_admission_rule_class2_details_id` int(11) NOT NULL,
  `details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_admission_rule_class2_details`
--

INSERT INTO `home_admission_rule_class2_details` (`home_admission_rule_class2_details_id`, `details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb.\r\n\r\ncvxcnkv cxv vdf00sdfsadxcgfcgfd\r\nasdsbfsdfsdfsdnfsadfsd4544', 0, 0, 1, 1, '2017-10-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_heading1`
--

CREATE TABLE `home_heading1` (
  `home_heading1_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading1`
--

INSERT INTO `home_heading1` (`home_heading1_id`, `title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfas', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_heading2`
--

CREATE TABLE `home_heading2` (
  `home_heading2_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading2`
--

INSERT INTO `home_heading2` (`home_heading2_id`, `title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_heading3`
--

CREATE TABLE `home_heading3` (
  `home_heading3_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading3`
--

INSERT INTO `home_heading3` (`home_heading3_id`, `title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnm', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_heading4`
--

CREATE TABLE `home_heading4` (
  `home_heading4_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading4`
--

INSERT INTO `home_heading4` (`home_heading4_id`, `title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_heading5`
--

CREATE TABLE `home_heading5` (
  `home_heading5_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading5`
--

INSERT INTO `home_heading5` (`home_heading5_id`, `title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'sdbjfknd lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb.\r\n\r\ncvxcnkv cxv vdf00', 0, 0, 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_important_links`
--

CREATE TABLE `home_important_links` (
  `home_important_links_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `details_no` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_important_links`
--

INSERT INTO `home_important_links` (`home_important_links_id`, `details`, `details_no`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'We dsfsfndsfbadsf', 20, 1, '2017-10-21 00:00:00', 1, 1, '2017-10-21 00:00:00', 1, 1, '2017-10-21 00:00:00'),
(2, 'dfadsnfadsfads', 1, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-21 00:00:00'),
(3, 'sfdfds', 7, 1, '2017-10-21 00:00:00', 1, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fjdandfs', 10, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-21 00:00:00'),
(5, 'fgmgff', 0, 1, '2017-10-21 00:00:00', 1, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'sdfndas', 78, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `instruction_news`
--

CREATE TABLE `instruction_news` (
  `instruction_news_no` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `image_url` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instruction_news`
--

INSERT INTO `instruction_news` (`instruction_news_no`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Fee', '1508493905windows-8 DIU.jpg', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `notice_no` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `image_url` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`notice_no`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad', '150846255411.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'Riyad', '1508462580j.jpg', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'Riyad', '1508462926windows-8 DIU.jpg', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'Riyad', '1508462947Patent Law In Bangladesh.pdf', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'Exam', '1508493790windows-8 DIU.jpg', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'Exam2', '15084956191..docx', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'Exam3', '150849620311.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 'Exam3', '150849832311.JPG', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 'fdgdfg', '1509410730windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `principal_speech`
--

CREATE TABLE `principal_speech` (
  `principal_speech_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `principal_name` varchar(55) NOT NULL,
  `principal_designation` varchar(5) NOT NULL,
  `short_speech` varchar(650) NOT NULL,
  `speech` longtext NOT NULL,
  `image_url` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `principal_speech`
--

INSERT INTO `principal_speech` (`principal_speech_id`, `title`, `principal_name`, `principal_designation`, `short_speech`, `speech`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad11111fddvhgj', 'vbhjmhghgfdgd', 'uhjgf', 'ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে �', 'ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে �', '1509378326windows-8 DIU.jpg', 0, '0000-00-00 00:00:00', 1, 1, '2017-10-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `result_bangla`
--

CREATE TABLE `result_bangla` (
  `result_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result_bangla`
--

INSERT INTO `result_bangla` (`result_id`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bangla', '1509409990j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `result_english`
--

CREATE TABLE `result_english` (
  `result_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result_english`
--

INSERT INTO `result_english` (`result_id`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bangla', '1509409990j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `routine_bangla`
--

CREATE TABLE `routine_bangla` (
  `routine_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routine_bangla`
--

INSERT INTO `routine_bangla` (`routine_id`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bangla', '1509409990j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fgdgsdf', '1509410412windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `routine_english`
--

CREATE TABLE `routine_english` (
  `routine_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routine_english`
--

INSERT INTO `routine_english` (`routine_id`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bangla', '1509409990j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_term_exam`
--

CREATE TABLE `suggestion_term_exam` (
  `suggestion_term_exam_no` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `image_url` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suggestion_term_exam`
--

INSERT INTO `suggestion_term_exam` (`suggestion_term_exam_no`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'yh', '1508464235Capture.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'Ct', '150850075511.JPG', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'ghfhg', '1509383670windows-8 DIU.jpg', 1, '2017-10-30 00:00:00', 1, 1, '2017-10-30 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'fddg', '1509411297windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_tutorial`
--

CREATE TABLE `suggestion_tutorial` (
  `suggestion_tutorial_no` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `image_url` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suggestion_tutorial`
--

INSERT INTO `suggestion_tutorial` (`suggestion_tutorial_no`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(2, 'Ct', '150850075511.JPG', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'fygu', '150952964411.JPG', 1, '2017-11-01 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_info`
--

CREATE TABLE `teachers_info` (
  `teacher_info_no` int(11) NOT NULL,
  `teacher_name` varchar(55) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `contact` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `about_teacher` text NOT NULL,
  `image_url` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers_info`
--

INSERT INTO `teachers_info` (`teacher_info_no`, `teacher_name`, `designation`, `contact`, `email`, `about_teacher`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'dfdsf', 'sdfsdfsf', 'dsfsdf', 'guhj', 'hijkfdgfghfghfghfg', 'No Image Uploaded', 1, 2017, 1, 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00'),
(2, 'sdfsfsd', 'ghn', 'jkmlbn', 'bkjknl', 'bnkml', '1509412653j.jpg', 1, 2017, 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'yvbnd;advs', 'gbhnj', 'b;', 'vguhoinj', 'bhinjo', '1509412666windows-8 DIU.jpg', 1, 2017, 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_bangla_version`
--

CREATE TABLE `teacher_bangla_version` (
  `teacher_id` int(11) NOT NULL,
  `teacher_info_no` int(11) NOT NULL,
  `class_name` varchar(55) NOT NULL,
  `section_name` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_bangla_version`
--

INSERT INTO `teacher_bangla_version` (`teacher_id`, `teacher_info_no`, `class_name`, `section_name`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 3, 'fsddd', 'dfgdfgd', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 3, 'five', 'vybhnij', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_english_version`
--

CREATE TABLE `teacher_english_version` (
  `teacher_id` int(11) NOT NULL,
  `teacher_info_no` int(11) NOT NULL,
  `class_name` varchar(55) NOT NULL,
  `section_name` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_english_version`
--

INSERT INTO `teacher_english_version` (`teacher_id`, `teacher_info_no`, `class_name`, `section_name`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 3, 'fsddd', 'dfgdfgd', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 3, 'five', 'vybhnij', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00'),
(3, 1, 'Ten', 'dfgd', 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `version_no` int(11) NOT NULL,
  `version_name` varchar(55) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `is_updated` int(1) DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`version_no`, `version_name`, `created_by`, `created_on`, `is_deleted`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bangla', 1, '2017-10-31 00:00:00', 0, 0, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_news`
--
ALTER TABLE `admission_news`
  ADD PRIMARY KEY (`admission_news_no`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_no`),
  ADD KEY `version_no` (`version_no`);

--
-- Indexes for table `exam_routine_bangla`
--
ALTER TABLE `exam_routine_bangla`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `exam_routine_english`
--
ALTER TABLE `exam_routine_english`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `footer_info_details`
--
ALTER TABLE `footer_info_details`
  ADD PRIMARY KEY (`footer_info_details_id`);

--
-- Indexes for table `footer_social_icon_link`
--
ALTER TABLE `footer_social_icon_link`
  ADD PRIMARY KEY (`footer_social_icon_link_id`);

--
-- Indexes for table `founder_speech`
--
ALTER TABLE `founder_speech`
  ADD PRIMARY KEY (`founder_speech_id`);

--
-- Indexes for table `home_about_us1`
--
ALTER TABLE `home_about_us1`
  ADD PRIMARY KEY (`home_about_us1_id`);

--
-- Indexes for table `home_about_us2`
--
ALTER TABLE `home_about_us2`
  ADD PRIMARY KEY (`home_about_us2_id`);

--
-- Indexes for table `home_about_us3`
--
ALTER TABLE `home_about_us3`
  ADD PRIMARY KEY (`home_about_us3_id`);

--
-- Indexes for table `home_about_us4`
--
ALTER TABLE `home_about_us4`
  ADD PRIMARY KEY (`home_about_us4_id`);

--
-- Indexes for table `home_about_us5`
--
ALTER TABLE `home_about_us5`
  ADD PRIMARY KEY (`home_about_us5_id`);

--
-- Indexes for table `home_about_us6`
--
ALTER TABLE `home_about_us6`
  ADD PRIMARY KEY (`home_about_us6_id`);

--
-- Indexes for table `home_admission_paper_details`
--
ALTER TABLE `home_admission_paper_details`
  ADD PRIMARY KEY (`home_admission_paper_details_id`);

--
-- Indexes for table `home_admission_paper_title`
--
ALTER TABLE `home_admission_paper_title`
  ADD PRIMARY KEY (`home_admission_paper_title_id`);

--
-- Indexes for table `home_admission_process_details`
--
ALTER TABLE `home_admission_process_details`
  ADD PRIMARY KEY (`home_admission_process_details_id`);

--
-- Indexes for table `home_admission_process_title`
--
ALTER TABLE `home_admission_process_title`
  ADD PRIMARY KEY (`home_admission_process_title_id`);

--
-- Indexes for table `home_admission_rule_class1`
--
ALTER TABLE `home_admission_rule_class1`
  ADD PRIMARY KEY (`home_admission_rule_class1_id`);

--
-- Indexes for table `home_admission_rule_class1_details`
--
ALTER TABLE `home_admission_rule_class1_details`
  ADD PRIMARY KEY (`home_admission_rule_class1_details_id`);

--
-- Indexes for table `home_admission_rule_class2`
--
ALTER TABLE `home_admission_rule_class2`
  ADD PRIMARY KEY (`home_admission_rule_class2_id`);

--
-- Indexes for table `home_admission_rule_class2_details`
--
ALTER TABLE `home_admission_rule_class2_details`
  ADD PRIMARY KEY (`home_admission_rule_class2_details_id`);

--
-- Indexes for table `home_heading1`
--
ALTER TABLE `home_heading1`
  ADD PRIMARY KEY (`home_heading1_id`);

--
-- Indexes for table `home_heading2`
--
ALTER TABLE `home_heading2`
  ADD PRIMARY KEY (`home_heading2_id`);

--
-- Indexes for table `home_heading3`
--
ALTER TABLE `home_heading3`
  ADD PRIMARY KEY (`home_heading3_id`);

--
-- Indexes for table `home_heading4`
--
ALTER TABLE `home_heading4`
  ADD PRIMARY KEY (`home_heading4_id`);

--
-- Indexes for table `home_heading5`
--
ALTER TABLE `home_heading5`
  ADD PRIMARY KEY (`home_heading5_id`);

--
-- Indexes for table `home_important_links`
--
ALTER TABLE `home_important_links`
  ADD PRIMARY KEY (`home_important_links_id`);

--
-- Indexes for table `instruction_news`
--
ALTER TABLE `instruction_news`
  ADD PRIMARY KEY (`instruction_news_no`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`notice_no`);

--
-- Indexes for table `principal_speech`
--
ALTER TABLE `principal_speech`
  ADD PRIMARY KEY (`principal_speech_id`);

--
-- Indexes for table `result_bangla`
--
ALTER TABLE `result_bangla`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `result_english`
--
ALTER TABLE `result_english`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `routine_bangla`
--
ALTER TABLE `routine_bangla`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `routine_english`
--
ALTER TABLE `routine_english`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `suggestion_term_exam`
--
ALTER TABLE `suggestion_term_exam`
  ADD PRIMARY KEY (`suggestion_term_exam_no`);

--
-- Indexes for table `suggestion_tutorial`
--
ALTER TABLE `suggestion_tutorial`
  ADD PRIMARY KEY (`suggestion_tutorial_no`);

--
-- Indexes for table `teachers_info`
--
ALTER TABLE `teachers_info`
  ADD PRIMARY KEY (`teacher_info_no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `teacher_bangla_version`
--
ALTER TABLE `teacher_bangla_version`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `teacher_info_no` (`teacher_info_no`);

--
-- Indexes for table `teacher_english_version`
--
ALTER TABLE `teacher_english_version`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `teacher_info_no` (`teacher_info_no`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`version_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission_news`
--
ALTER TABLE `admission_news`
  MODIFY `admission_news_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exam_routine_bangla`
--
ALTER TABLE `exam_routine_bangla`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exam_routine_english`
--
ALTER TABLE `exam_routine_english`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `footer_info_details`
--
ALTER TABLE `footer_info_details`
  MODIFY `footer_info_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `footer_social_icon_link`
--
ALTER TABLE `footer_social_icon_link`
  MODIFY `footer_social_icon_link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `founder_speech`
--
ALTER TABLE `founder_speech`
  MODIFY `founder_speech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us1`
--
ALTER TABLE `home_about_us1`
  MODIFY `home_about_us1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us2`
--
ALTER TABLE `home_about_us2`
  MODIFY `home_about_us2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us3`
--
ALTER TABLE `home_about_us3`
  MODIFY `home_about_us3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us4`
--
ALTER TABLE `home_about_us4`
  MODIFY `home_about_us4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us5`
--
ALTER TABLE `home_about_us5`
  MODIFY `home_about_us5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us6`
--
ALTER TABLE `home_about_us6`
  MODIFY `home_about_us6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_paper_details`
--
ALTER TABLE `home_admission_paper_details`
  MODIFY `home_admission_paper_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `home_admission_paper_title`
--
ALTER TABLE `home_admission_paper_title`
  MODIFY `home_admission_paper_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_process_details`
--
ALTER TABLE `home_admission_process_details`
  MODIFY `home_admission_process_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_process_title`
--
ALTER TABLE `home_admission_process_title`
  MODIFY `home_admission_process_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_rule_class1`
--
ALTER TABLE `home_admission_rule_class1`
  MODIFY `home_admission_rule_class1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_rule_class1_details`
--
ALTER TABLE `home_admission_rule_class1_details`
  MODIFY `home_admission_rule_class1_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_rule_class2`
--
ALTER TABLE `home_admission_rule_class2`
  MODIFY `home_admission_rule_class2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_rule_class2_details`
--
ALTER TABLE `home_admission_rule_class2_details`
  MODIFY `home_admission_rule_class2_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_heading1`
--
ALTER TABLE `home_heading1`
  MODIFY `home_heading1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_heading2`
--
ALTER TABLE `home_heading2`
  MODIFY `home_heading2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_heading3`
--
ALTER TABLE `home_heading3`
  MODIFY `home_heading3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_heading4`
--
ALTER TABLE `home_heading4`
  MODIFY `home_heading4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_heading5`
--
ALTER TABLE `home_heading5`
  MODIFY `home_heading5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_important_links`
--
ALTER TABLE `home_important_links`
  MODIFY `home_important_links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `instruction_news`
--
ALTER TABLE `instruction_news`
  MODIFY `instruction_news_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `notice_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `principal_speech`
--
ALTER TABLE `principal_speech`
  MODIFY `principal_speech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `result_bangla`
--
ALTER TABLE `result_bangla`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `result_english`
--
ALTER TABLE `result_english`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `routine_bangla`
--
ALTER TABLE `routine_bangla`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `routine_english`
--
ALTER TABLE `routine_english`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `suggestion_term_exam`
--
ALTER TABLE `suggestion_term_exam`
  MODIFY `suggestion_term_exam_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `suggestion_tutorial`
--
ALTER TABLE `suggestion_tutorial`
  MODIFY `suggestion_tutorial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teachers_info`
--
ALTER TABLE `teachers_info`
  MODIFY `teacher_info_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_bangla_version`
--
ALTER TABLE `teacher_bangla_version`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teacher_english_version`
--
ALTER TABLE `teacher_english_version`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `version_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_bangla_version`
--
ALTER TABLE `teacher_bangla_version`
  ADD CONSTRAINT `teacher_bangla_version_ibfk_1` FOREIGN KEY (`teacher_info_no`) REFERENCES `teachers_info` (`teacher_info_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
