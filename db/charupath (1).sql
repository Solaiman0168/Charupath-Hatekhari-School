-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2017 at 11:45 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charupath`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `location2` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `contact2` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `location`, `location2`, `contact`, `contact2`, `email`, `created_on`, `created_by`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Road# 12, House No#32', 'Dhaka-1216, Bangladesh', '+880181000000', '+880191000000', 'info@charupath.com.bd', '0000-00-00 00:00:00', 0, 1, 1, '2017-11-14 00:00:00');

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
(4, 'Exam', '1508500713Capture.JPG', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'Notice exam', '1510726085New Doc 15.pdf', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `brief_seats`
--

CREATE TABLE `brief_seats` (
  `brief_seats_id` int(11) NOT NULL,
  `bn_class` varchar(55) NOT NULL,
  `en_class` varchar(55) NOT NULL,
  `bn_seat_no` int(11) NOT NULL,
  `en_seat_no` int(11) NOT NULL,
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
-- Dumping data for table `brief_seats`
--

INSERT INTO `brief_seats` (`brief_seats_id`, `bn_class`, `en_class`, `bn_seat_no`, `en_seat_no`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'awsedfj', '5fghjk', 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-10 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'One', 'edrfgyhujik', 2, 3, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'bhnj', 'bnj', 5, 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'yubnjk', 'vbjn', 6, 5, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'Class six', '', 20, 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 'Class Seven', '', 35, 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 'Eight', '', 40, 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `complain_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `mobile` varchar(55) NOT NULL,
  `complain` text NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`complain_id`, `name`, `mobile`, `complain`, `is_deleted`) VALUES
(1, 'riyad', '016378y32', 'ewhrewnrwerhweiprwerq', 1),
(2, 'vhbjk', 'vhjbk', 'nlkjb', 1),
(3, ' ', ' ', '', 1),
(4, 'vcbc', 'cvb', 'cvb', 1),
(5, 'hfhjkhlh', 'hjhkg', 'rtryugyyrtguhj', 0),
(6, 'hwll', 'sakahlg', 'lhagla', 0),
(7, 'zalfalfj', 'fkah', 'akhgk', 0),
(8, 'Shahadat', '01682961926', 'this is test message', 0),
(9, 'a,fhk', 'hah', 'hh', 0),
(10, 'dsfgh', 'ertyh', '1rtyuj', 0),
(11, 'Shahadat', '01682961926', 'This is test', 0),
(12, 'akhflah', 'lahgll', 'skghslglshglshglshglsgh', 0),
(13, 'ahglagl', 'lslhlwhjlw', 'LQLJLHJLEHLE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `counter_id` int(11) NOT NULL,
  `counter_1` text NOT NULL,
  `counter_2` text NOT NULL,
  `counter_3` text NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`counter_id`, `counter_1`, `counter_2`, `counter_3`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, '45', '970', '56', 1, 1, '2017-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `death_committee_member`
--

CREATE TABLE `death_committee_member` (
  `death_committee_member_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `en_dob` date NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `death_committee_member`
--

INSERT INTO `death_committee_member` (`death_committee_member_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `en_dob`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00');

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
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fgdgsdf', '1509410412windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'fghfghf', '1509414818windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'bangla version exam routine', '1510732098aaa.png', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

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
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fgdgsdf', '1509410412windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'fgdf', '1509414932windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'Englsih version exam routine', '1510732048aaa.png', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

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
(1, 'https://www.facebook.com/emarathossainhighschool/', 'https://twitter.com/', 'https://plus.google.com/u/0/', 'https://www.youtube.com/', 0, 0, 1, 1, '2017-11-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `founder_speech`
--

CREATE TABLE `founder_speech` (
  `founder_speech_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_founder_name` varchar(55) NOT NULL,
  `bn_founder_designation` varchar(55) NOT NULL,
  `bn_short_speech` varchar(650) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `founder_speech`
--

INSERT INTO `founder_speech` (`founder_speech_id`, `bn_title`, `bn_founder_name`, `bn_founder_designation`, `bn_short_speech`, `bn_speech`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'সভাপতির বক্তব্য:', 'Shahadat Hossain Bhuiya', 'সভাপতি', '<p>Education is the backbone of a nation. শিক্ষা জাতির মেরুদণ্ড। মেরুদণ্ড ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে অধিষ্ঠিত। কাজেই শিক্ষার কোন বিকল্প নেই। একটি সুশিক্ষিত জাতিই উপহার দিতে পারে একটি সুন্দর দেশ, সুন্দর ভবিষ্যৎ। আর এই ভবিষ্যৎ এর ভিত্তি হচ্ছে আমাদের শিশুরা। যখন প্রতিটি শিশু সুশিক্ষায় শিক্ষিত হবে তখন সেই দেশ ও জাতি শান্তি সমৃদ্ধির সর্বোচ্চ শিখরে আরোহণ করবে। কাজেই প্রত্যেকেরই মনোযোগী হতে হবে কোমলমতি এই শিশুদের প্রতি। একজন শিল্পী তা', '<p>Education is the backbone of a nation. শিক্ষা জাতির মেরুদণ্ড। মেরুদণ্ড ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে অধিষ্ঠিত। কাজেই শিক্ষার কোন বিকল্প নেই। একটি সুশিক্ষিত জাতিই উপহার দিতে পারে একটি সুন্দর দেশ, সুন্দর ভবিষ্যৎ। আর এই ভবিষ্যৎ এর ভিত্তি হচ্ছে আমাদের শিশুরা। যখন প্রতিটি শিশু সুশিক্ষায় শিক্ষিত হবে তখন সেই দেশ ও জাতি শান্তি সমৃদ্ধির সর্বোচ্চ শিখরে আরোহণ করবে। কাজেই প্রত্যেকেরই মনোযোগী হতে হবে কোমলমতি এই শিশুদের প্রতি। একজন শিল্পী তা</p>', '1510670319no-photo-male.jpg', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_wise_photo`
--

CREATE TABLE `gallery_wise_photo` (
  `gallery_wise_photo_id` int(11) NOT NULL,
  `photo_gallery_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `bn_image_title` varchar(255) NOT NULL,
  `en_image_title` varchar(255) NOT NULL,
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
-- Dumping data for table `gallery_wise_photo`
--

INSERT INTO `gallery_wise_photo` (`gallery_wise_photo_id`, `photo_gallery_id`, `image_url`, `bn_image_title`, `en_image_title`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(5, 1, '1510239856banner.jpg', '', '', 1, '2017-11-09 00:00:00', 1, 1, '2017-11-09 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(6, 5, '1510252809banner.jpg', 'fgrtyt', 'tryty', 1, '2017-11-09 00:00:00', 1, 1, '2017-11-14 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(7, 5, '1510252866banner.jpg', 'trytgutyu', 'tyutyut', 1, '2017-11-09 00:00:00', 1, 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 3, '1510252901bannera.jpg', 'fghf', 'fghfg', 1, '2017-11-09 00:00:00', 1, 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 3, '1510252911chairman.jpg', 'fghgf', 'fghfg', 1, '2017-11-09 00:00:00', 1, 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(10, 2, '1510475104IMG_6534.JPG', 'This is image title', 'Day', 1, '2017-11-12 00:00:00', 1, 1, '2017-11-14 00:00:00', 1, 1, '2017-11-14 00:00:00'),
(11, 2, '1510668445c2.jpg', 'a', '', 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(12, 2, '1510668454c3.jpg', 'b', '', 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(13, 2, '1510668461c8.jpg', 'c', '', 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(14, 3, '1510668619c3.jpg', 'Price giving to Student', '', 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(15, 4, '1510668637c8.jpg', 'Milad', '', 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us1`
--

CREATE TABLE `home_about_us1` (
  `home_about_us1_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us1`
--

INSERT INTO `home_about_us1` (`home_about_us1_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'বিদ্যালয়ের সংক্ষিপ্ত পরিচিতি', '<p>&nbsp;ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্র', '<p>&nbsp;ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী অধ্যয়নরত। বিদ্যালয়টিতে প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের প্রাথমিক শিক্ষা অধিদপ্তর কর্তৃক অনুমোদিত হয়ে প্রাথমিক বিদ্যালয় শাখা খোলা হয়েছে এবং ২০১৪ খ্রীস্টাব্দে সফলতার সাথে মাধ্যমিক শাখা চালু করতে সক্ষম হয়েছে। ঢাকা শিক্ষাবোর্ডে মাধ্যমিক ও উচ্চ মাধ্যমিক অনুমোদন নেওয়ার কার্যক্রম প্রক্রিয়াধীন রয়েছে। ইনশাআল্লাহ অতিসত্তর অনুমোদন লাভ করে এই এলাকায় উচ্চ মাধ্যমিক স্তরেও শিক্ষা বিস্তারে বিদ্যালয়টি সক্ষম হবে। বর্তমানে বিদ্যালয়টি নিজস্ব সফটওয়্যারের মাধ্যমে ডিজিটাল পদ্ধতিতে সকল কার্যক্রম পরিচালনা করছে। যেমন অন-লাইনে বেতন পরিশোধ, ফলাফল ঘোষণা, নম্বরপত্র ও প্রবেশপত্র প্রদান ও তথ্য উপাত্ত সংগ্রহের সুবিধা । শিক্ষার্থীদের নিরাপত্তার স্বার্থে স্কুল গেইট এবং শ্রেণিকক্ষের পাঠদান সি সি, টি ভি ক্যামেরায় পর্যবেক্ষণ করা হয়। Punch Card (Digital Machine) এর মাধ্যমে শিক্ষার্থীদের উপস্থিতি পর্যবেক্ষণ ও স্বয়ংক্রিয়ভাবে মোবাইল মেসেজের মাধ্যমে অভিভাবকদের অবহিত করা হয় এবং প্রজেক্টরের মাধ্যমে পাঠদান সহ পরিপূর্ণ ডিজিটাল শিক্ষা প্রতিষ্ঠান হিসেবে বিদ্যালয়টি আত্মপ্রকাশ করেছে।</p>', 'School about 1', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. N', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. N</p>', 0, 0, 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us2`
--

CREATE TABLE `home_about_us2` (
  `home_about_us2_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us2`
--

INSERT INTO `home_about_us2` (`home_about_us2_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'শিক্ষা কার্যক্রম', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী</p>', 'Education', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 0, 0, 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us3`
--

CREATE TABLE `home_about_us3` (
  `home_about_us3_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us3`
--

INSERT INTO `home_about_us3` (`home_about_us3_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'সাফল্য', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী</p>', 'Our Success', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure hi</p>', 0, 0, 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us4`
--

CREATE TABLE `home_about_us4` (
  `home_about_us4_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us4`
--

INSERT INTO `home_about_us4` (`home_about_us4_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'লক্ষ্য ও উদ্দেশ্য', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী</p>', 'Our Mission and Vission', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure hi</p>', 0, 0, 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us5`
--

CREATE TABLE `home_about_us5` (
  `home_about_us5_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us5`
--

INSERT INTO `home_about_us5` (`home_about_us5_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'শিক্ষকবৃন্দ ও ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী</p>', 'Teachers & Students', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No</p>', 0, 0, 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us6`
--

CREATE TABLE `home_about_us6` (
  `home_about_us6_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us6`
--

INSERT INTO `home_about_us6` (`home_about_us6_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'পি.ই.সি-২০১৬ পরীক্ষায় ১০০% এ+', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী অধ্যয়নরত। বিদ্যালয়টিতে প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের প্রাথমিক শিক্ষা অধিদপ্তর কর্তৃক অনুমোদিত হয়ে প্রাথমিক বিদ্যালয় শাখা খোলা হয়েছে এবং ২০১৪ খ্রীস্টাব্দে সফলতার সাথে মাধ্যমিক শাখা চালু করতে সক্ষম হয়েছে। ঢাকা শিক্ষাবোর্ডে মাধ্যমিক ও উচ্চ মাধ্যমিক</p>', 'PEC Results 100% A+', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure hi</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us7`
--

CREATE TABLE `home_about_us7` (
  `home_about_us7_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us7`
--

INSERT INTO `home_about_us7` (`home_about_us7_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'সুযোগ-সুবিধা', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী</p>', 'Facilities', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us8`
--

CREATE TABLE `home_about_us8` (
  `home_about_us8_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us8`
--

INSERT INTO `home_about_us8` (`home_about_us8_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'আসন সংখ্যা', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী</p>', 'No. of Seats', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No</p>', 0, 0, 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_paper`
--

CREATE TABLE `home_admission_paper` (
  `home_admission_paper_id` int(11) NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_paper`
--

INSERT INTO `home_admission_paper` (`home_admission_paper_id`, `bn_details`, `en_details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">শিক্ষার্থীর জন্ম নিবন্ধন সনদপত্র।</p>\r\n</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">পিতা মাতার জাতীয় পরিচয়পত্র ( প্লে- ৫ম শ্রেণি)</p>\r\n</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">বিগত বার্ষিক পরীক্ষায় নম্বরপত্র</p>\r\n</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">ছাড়পত্র (৬ষ্ঠ- ৯ম)</p>\r\n</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">২ কপি পাসপোর্ট সাইজের ছবি</p>\r\n</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">প্রাথমিক শিক্ষা সমাপনী (পিইসি) পরীক্ষার সনদ অথবা নম্বর পত্র (৬ষ্ঠ শ্রেণি)</p>\r\n</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">জুনিয়র স্কুল সনদপত্র অথবা নম্বরপত্র (৯ম শ্রেণিতে ভর্তির জন্য)</p>\r\n</li>\r\n</ul>', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></font></p>\r\n</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></span></font></li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></span></font></li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></span></font></li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></span></font></li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></span></font></li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></span></font></li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></span></font></li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;"></li>\r\n</ul>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_process`
--

CREATE TABLE `home_admission_process` (
  `home_admission_process_id` int(11) NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_process`
--

INSERT INTO `home_admission_process` (`home_admission_process_id`, `bn_details`, `en_details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<p><span style="color: #585252; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px; letter-spacing: 1px;">ভর্তির জন্য চাহিদা অনুযায়ী সকল কাগজপত্র সহ প্রধান শিক্ষক বরাবর আবেদন করতে হয়। ১০০ টাকা দিয়ে অফিস সময়ে ভর্তি ফরম সংগ্রহ করা যায়।</span></p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy.</p>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_rule`
--

CREATE TABLE `home_admission_rule` (
  `home_admission_rule_id` int(11) NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_rule`
--

INSERT INTO `home_admission_rule` (`home_admission_rule_id`, `bn_details`, `en_details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<h5 style="box-sizing: border-box; font-weight: 500; line-height: 1.1; color: #00ba66; margin: 0px; font-size: 16px;">প্লে-গ্রুপ ও নার্সারি</h5>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li style="box-sizing: border-box; margin: 0px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">প্লে-গ্রুপের জন্য শিশুর বয়স নুন্যতম ৩.৫ বৎসর এবং নার্সারির জন্য ৪.৫ বৎসর হতে হবে।</p>\r\n</li>\r\n<li style="box-sizing: border-box; margin: 0px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">শারীরিক ও মানসিকভাবে সুস্থ থাকতে হবে।</p>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<h5 style="box-sizing: border-box; font-weight: 500; line-height: 1.1; color: #00ba66; margin: 0px; font-size: 16px;">কেজি থেকে দশম শ্রেনি পর্যন্ত</h5>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li style="box-sizing: border-box; margin: 0px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;">বিগত বার্ষিক পরীক্ষায় উত্তীর্ণ হতে হবে।</p>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<h5 style="box-sizing: border-box; font-weight: 500; line-height: 1.1; color: #00ba66; margin: 0px; font-size: 16px;">Play to Five</h5>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li style="box-sizing: border-box; margin: 0px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></font></p>\r\n</li>\r\n<li style="box-sizing: border-box; margin: 0px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></font></p>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #eb5424;">\r\n<h5 style="box-sizing: border-box; font-weight: 500; line-height: 1.1; color: #00ba66; margin: 0px; font-size: 16px;">Five to Class Ten</h5>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li style="box-sizing: border-box; margin: 0px;">\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 16px; color: #585252;"><font color="#585252" face="Hind Siliguri, sans-serif"><span style="font-size: 16px; letter-spacing: 1px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span></font></p>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_uniform`
--

CREATE TABLE `home_admission_uniform` (
  `home_admission_uniform_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_uniform`
--

INSERT INTO `home_admission_uniform` (`home_admission_uniform_id`, `image_url`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, '151012936255.png', 1, 1, '2017-11-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_events_details`
--

CREATE TABLE `home_events_details` (
  `home_event_details_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `bn_details` longtext NOT NULL,
  `en_details` longtext NOT NULL,
  `serial_no` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
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
-- Dumping data for table `home_events_details`
--

INSERT INTO `home_events_details` (`home_event_details_id`, `bn_title`, `en_title`, `bn_details`, `en_details`, `serial_no`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'vhbknl m', 'vhbjkml;,', '<p>https://www.youtube.com/watch?v=5DEh_7A34Kk</p>', '<p>https://www.youtube.com/watch?v=5DEh_7A34Kk</p>', 60, 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00'),
(2, 'vbn okml', 'bjnomp', '<p>,[vbn</p>', '<p>ompo,</p>', 1220, 1, 1, '2017-11-07 00:00:00', 1, 1, '2017-11-08 00:00:00', 1, 1, '2017-11-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_heading1`
--

CREATE TABLE `home_heading1` (
  `home_heading1_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading1`
--

INSERT INTO `home_heading1` (`home_heading1_id`, `bn_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<h1>অত্যাধুনিক তথ্য-প্রযুক্তি সমৃদ্ধ একটি ডিজিটাল শিক্ষা প্রতিষ্ঠান</h1>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_heading2`
--

CREATE TABLE `home_heading2` (
  `home_heading2_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `en_title` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading2`
--

INSERT INTO `home_heading2` (`home_heading2_id`, `bn_title`, `en_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<h3 style="box-sizing: border-box; font-family: Raleway, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; margin: 0px; font-size: 30px; text-align: -webkit-center;">নিজের উপর<span class="fixed_w2" style="box-sizing: border-box; color: #eb5424; font-size: 40px;">&nbsp;বিশ্বাস রাখো</span>&nbsp;এবং কখনো&nbsp;<span class="fixed_w2" style="box-sizing: border-box; color: #eb5424; font-size: 40px;">হাল</span>&nbsp;ছেরোনা</h3>', '<h3 style="box-sizing: border-box; font-family: Raleway, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; margin: 0px; font-size: 30px; text-align: -webkit-center;">Believe in<span class="fixed_w2" style="box-sizing: border-box; color: #eb5424; font-size: 40px;">&nbsp;Yourself&nbsp;</span>&nbsp;and neve&nbsp;<span class="fixed_w2" style="box-sizing: border-box; color: #eb5424; font-size: 40px;">Give Up</span></h3>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_heading3`
--

CREATE TABLE `home_heading3` (
  `home_heading3_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `en_title` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading3`
--

INSERT INTO `home_heading3` (`home_heading3_id`, `bn_title`, `en_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<p><strong>প্রতি বৎসর জানুয়ারি মাসে আমাদের শিক্ষা কার্যক্রম শুরু হলেও সাধারণত পূর্বের বৎসরের অক্টোবর মাস হতেই ভর্তি কার্যক্রম শুরু হয়। আবার ক্লাসভেদে এবং আসন ফাঁকা থাকা সাপেক্ষে বছরের অন্যান্য সময়ও ভর্তি কার্যক্রম চলে।</strong></p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,&nbsp;</p>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_heading4`
--

CREATE TABLE `home_heading4` (
  `home_heading4_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `en_title` varchar(500) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading4`
--

INSERT INTO `home_heading4` (`home_heading4_id`, `bn_title`, `en_title`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<p>&nbsp;</p>\r\n<section id="whyus" style="box-sizing: border-box; display: block; background: url(''../images/ep_naturalwhite.png'');">\r\n<div class="container" style="box-sizing: border-box; padding-right: 15px; padding-left: 15px; margin-right: auto; margin-left: auto; width: 1170px;">\r\n<h3 class="w3l_header w3_agileits_header two cstm_headr" style="box-sizing: border-box; font-family: Raleway, sans-serif; font-weight: 800; line-height: 1.1; color: #dc1a46; margin: 75px 0px 8px; font-size: 2em; l', '<p>Why you admit your child in our school</p>', '1510075009slider3.jpg', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00', 1),
(2, 'sdbfsndlkfsdfbhsd', 'vybunm;ldf,gsdf;bgd', 'vyubnlfdkmgfdgd', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_heading5`
--

CREATE TABLE `home_heading5` (
  `home_heading5_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `en_title` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading5`
--

INSERT INTO `home_heading5` (`home_heading5_id`, `bn_title`, `en_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<p>x cvcxv</p>', '<p>vubinoim2134567890987654324567898765434567890</p>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00', 1),
(2, 'ubyinom,', 'bunjkml,', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_important_links`
--

CREATE TABLE `home_important_links` (
  `home_important_links_id` int(11) NOT NULL,
  `bn_event_title` varchar(255) NOT NULL,
  `en_event_title` varchar(255) NOT NULL,
  `bn_event_link` text NOT NULL,
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

INSERT INTO `home_important_links` (`home_important_links_id`, `bn_event_title`, `en_event_title`, `bn_event_link`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Facebook', 'Facebook', 'https://www.facebook.com/?ref=tn_tnmn', 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'Youtube', 'Youtube', 'https://www.youtube.com/', 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_notices`
--

CREATE TABLE `home_notices` (
  `home_notice_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `bn_details` longtext NOT NULL,
  `en_details` longtext NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
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
-- Dumping data for table `home_notices`
--

INSERT INTO `home_notices` (`home_notice_id`, `bn_title`, `en_title`, `bn_details`, `en_details`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(2, 'সমাপনী পরীক্ষার নোটিস', 'Final Exam Notice', '<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 18px; letter-spacing: 1px; text-align: justify;">একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।</span></p>', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'পরীক্ষার নোটিস', 'Final Exam Notice', '<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 18px; letter-spacing: 1px; text-align: justify;">একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।</span></p>', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-10 00:00:00'),
(4, 'gfhfgh', 'fhfh', '<p>fghfhf</p>', '<p>fghgfh</p>', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'this is notice', 'this is notice', '<p>this is noticethis is noticethis is noticethis is noticethis is noticethis is noticethis is noticethis is notice</p>', '<p>this is noticethis is noticethis is noticethis is noticethis is noticethis is noticethis is noticethis is notice</p>', 1, 1, '2017-11-10 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'Admission Going on!', 'Admission Going on!', '<p><strong>01.12.2017</strong> is runing</p>', '<p>01.12.2017 is runing</p>', 1, 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_result`
--

CREATE TABLE `home_result` (
  `home_result_id` int(11) NOT NULL,
  `bn_exam_name` int(11) NOT NULL,
  `bn_year` varchar(15) NOT NULL,
  `bn_a_plus` varchar(15) NOT NULL,
  `bn_a` varchar(15) NOT NULL,
  `bn_a_minus` varchar(15) NOT NULL,
  `bn_f` varchar(15) NOT NULL,
  `bn_rate_pass` double NOT NULL,
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
-- Dumping data for table `home_result`
--

INSERT INTO `home_result` (`home_result_id`, `bn_exam_name`, `bn_year`, `bn_a_plus`, `bn_a`, `bn_a_minus`, `bn_f`, `bn_rate_pass`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, -1, 'hbnklm', 'ub', 'bijok', 'vgbhnj', 'hbjk', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 2, 'vhbj', 'bjk', 'gvbj', 'bhjk', 'h', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 3, 'dgfh', 'fdghj', 'gtfhj', 'fdghj', 'rtyu', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 1, '234', '3', '43', '45', '3454', 58, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 1, '234', '3', '43', '45', '3454', 58, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 2, '2017', '34', '34', '45', '45', 678, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_why_we`
--

CREATE TABLE `home_why_we` (
  `home_why_we_id` int(11) NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_why_we`
--

INSERT INTO `home_why_we` (`home_why_we_id`, `bn_details`, `en_details`, `is_deleted`, `deleted_by`, `deleted_on`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'বিষয় ভিত্তিক সম্মানসহ স্নাতকোত্তর ডিগ্রিধারী শিক্ষক/শিক্ষিকা দ্বারা পাঠদান।', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-14 00:00:00'),
(2, 'অত্যাধুনিক তথ্য প্রযুক্তি সমৃদ্ধ একটি ডিজিটাল শিক্ষা প্রতিষ্ঠান। ONLINE এ বেতন পরিশোধ, মার্কশিট, ফলাফল ও তথ্য উপাত্ত সংগ্রহের সুবিধা।', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(3, 'শিশুদের খেলাধুলার জন্য ইনডোর প্লে-গ্রাউন্ড এবং স্কাউট সুবিধা।', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(4, 'সাপ্তাহিক সাংস্কৃতিক চর্চা ও ত্রৈমাসিক বিজ্ঞান মেলা।', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(5, 'শিক্ষার্থীদের নিরাপত্তার স্বার্থে স্কুল গেইট এবং শ্রেণি শিক্ষকের পাঠদান CC.TV ক্যামেরায় সার্বক্ষণিক পর্যবেক্ষণ।', 'Lorem Ipsum is simply dummy text of the print', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(6, 'Punch Card (ডিজিটাল মেশিন) দ্বারা ছাত্র-ছাত্রীদের উপস্থিতি পর্যবেক্ষণ এবং স্বয়ংক্রিয়ভাবে মোবাইল Message এর মাধ্যমে অভিভাবকদের অবহিতকরণ।', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(7, 'নিজস্ব সফটওয়্যারের মাধ্যমে প্রতিষ্ঠানের সকল কার্যক্রম পরিচালনা।', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(8, 'Mobile SMS এর মাধ্যমে অভিভাবকদের তথ্য প্রদান।', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(9, 'প্লে গ্রুপ থেকে দ্বিতীয় শ্রেণী পর্যন্ত শিক্ষার্থীদের বাসায় পড়তে হয় না,ক্লাসেই পড়া সম্পন্ন করে দেওয়ার ব্যবস্থা।', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, '2017-11-14 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(10, 'সাপ্তাহিক Spoken English, Computer ও ICT ক্লাসের ব্যবস্থা। PEC & JEC পরীক্ষার্থীদের জন্য বিশেষ কোচিং সহ সাপ্তাহিক ও মাসিক মডেল টেস্টের ব্যবস্থা।', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `joke1`
--

CREATE TABLE `joke1` (
  `joke1_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_student_name` varchar(56) NOT NULL,
  `en_student_name` varchar(56) NOT NULL,
  `bn_class` varchar(55) NOT NULL,
  `en_class` varchar(55) NOT NULL,
  `bn_date` varchar(55) NOT NULL,
  `en_date` varchar(55) NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
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
-- Dumping data for table `joke1`
--

INSERT INTO `joke1` (`joke1_id`, `bn_name`, `en_name`, `bn_student_name`, `en_student_name`, `bn_class`, `en_class`, `bn_date`, `en_date`, `bn_details`, `en_details`, `image_url`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'fbsdfdsvkjfsdbfk', 'vbhnljk', 'vuybin', 'vyubi', 'nomtfyu', 'binjokpybu', '0000-00-00', '0000-00-00', '<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 14px; letter-spacing: 1px;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>\r\n<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 14px; letter-spacing: 1px;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>', '<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 14px; letter-spacing: 1px;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>\r\n<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 14px; letter-spacing: 1px;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>', '1510246791windows-8 DIU.jpg', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(2, 'uubnk', 'vbn', 'mlvb', 'nkvkbn', 'kvb', 'nmvbj', '0000-00-00', '0000-00-00', 'vjblknl', 'vhjbkn', '', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'bjnk', 'ghvhjbk', 'knm', 'gvhjbknml', 'vhjbk', 'ml', '0000-00-00', '0000-00-00', 'bknlm', 'gvhjbk', '', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'vbjnkml', 'gvbjn', 'mgv', 'hbjnm', 'gcvhbuij', 'cfghvh', '0000-00-00', '0000-00-00', 'vyuhij', 'ok', '', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, '1510676484logoo.png', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `map_id` int(11) NOT NULL,
  `map_url` text NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`map_id`, `map_url`, `is_updated`, `updated_by`, `updated_on`, `is_deleted`, `deleted_by`, `deleted_on`, `created_by`, `created_on`) VALUES
(1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.1375907684974!2d90.35380621456315!3d23.81370588455823!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c11f7e213983%3A0x3b0156ebd18dcb6d!2sCharupath+Academic+Coaching!5e0!3m2!1sen!2sbd!4v1510666564441', 1, 1, '2017-11-14 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notice_setup`
--

CREATE TABLE `notice_setup` (
  `notice_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `bn_image_url` varchar(255) NOT NULL,
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
-- Dumping data for table `notice_setup`
--

INSERT INTO `notice_setup` (`notice_id`, `bn_title`, `date`, `bn_image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad', '0000-00-00', '150846255411.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'Riyad', '0000-00-00', '1508462580j.jpg', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'Riyad', '0000-00-00', '1508462926windows-8 DIU.jpg', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'Riyad', '0000-00-00', '1508462947Patent Law In Bangladesh.pdf', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'Exam', '0000-00-00', '1508493790windows-8 DIU.jpg', 1, '2017-10-20 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'Exam2', '2017-11-15', 'No Notice Uploaded', 1, '2017-10-20 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00'),
(7, 'Exam3', '0000-00-00', '150849620311.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 'Exam3', '0000-00-00', '150849832311.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 'fdgdfg', '0000-00-00', '1509410730windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(10, 'dcfvgbh', '2017-11-17', 'No Notice Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00'),
(11, 'yvuyuijokyu8uhij', '2017-11-10', '1509725624', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(12, 'loll', '2017-11-04', '1509767627windows-8 DIU.jpg', 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(13, 'kbjnghjk', '2017-11-10', 'No Notice Uploaded', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-15 00:00:00'),
(14, 'vbuhjhk', '2017-11-17', '1510250083windows-8 DIU.jpg', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(15, 'ygiuhjo', '2017-11-07', '1510250124Lab-report-1.docx', 1, '2017-11-04 00:00:00', 1, 1, '2017-11-09 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(16, 'vbn', '2017-11-02', '15102501900-04-06-26377e73561d26e4824b5ee31b7a8a6a0969de876b24a9fd749274071a6d57f5_400.jpg', 1, '2017-11-04 00:00:00', 1, 1, '2017-11-09 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(17, 'ftyt', '2017-11-15', '1510250476Agreement of lulu1.pdf', 1, '2017-11-09 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(18, 'Exam Notice', '2017-11-10', 'No Notice Uploaded', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(19, 'Test Notice', '2017-11-11', '1510724795cover.pdf', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `novel`
--

CREATE TABLE `novel` (
  `novel_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_student_name` varchar(56) NOT NULL,
  `en_student_name` varchar(56) NOT NULL,
  `bn_class` varchar(55) NOT NULL,
  `en_class` varchar(55) NOT NULL,
  `bn_date` varchar(255) NOT NULL,
  `en_date` varchar(55) NOT NULL,
  `bn_details` longtext NOT NULL,
  `en_details` longtext NOT NULL,
  `bn_short_details` varchar(1100) NOT NULL,
  `en_short_details` varchar(700) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
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
-- Dumping data for table `novel`
--

INSERT INTO `novel` (`novel_id`, `bn_name`, `en_name`, `bn_student_name`, `en_student_name`, `bn_class`, `en_class`, `bn_date`, `en_date`, `bn_details`, `en_details`, `bn_short_details`, `en_short_details`, `image_url`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'gf', 'bf', 'vc', 'b ffv', 'vc', 'vf', '2017-11-13', '2017-11-08', '<p>vctyfguihjo</p>', '<p>cb</p>', '<p>vctyfguihjo</p>', '<p>cb</p>', '1510245364farah.png', 1, 1, '2017-11-03 00:00:00', 1, 1, '2017-11-12 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(2, 'yguhij', 'vbhnj', 'vbnlk', 'mlbnl', 'mjvb', 'nl;mv', '0000-00-00', '0000-00-00', 'bknlmbk', 'nlm;ugihjokp', '', '', '', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-08 00:00:00', 1, 1, '2017-11-04 00:00:00'),
(3, 'biunimpo', 'yuiuoijmok', 'yiuojok', 'ply', 'uijko', 'yhuijko', '2017-11-08', '2017-11-14', '', '<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify;">একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।.</span></p>\r\n<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify;">একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।.</span></p>', '', '', '1510127662banner.jpg', 1, 1, '2017-11-08 00:00:00', 1, 1, '2017-11-12 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'হাজার বছর ধরে', 'Thousands of years running', 'রিয়াদ হোসেন', 'Riyad Hossein', 'সহকারী শিক্ষক', 'Assistant Teacher', '2017-11-01', '2017-11-10', '<p>একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।. একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।. একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।.</p>', '<p>একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।. একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।.একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।.</p>', '<p>একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক', '<p>একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্', '1510469012Barek Sir.jpg', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE `photo_gallery` (
  `photo_gallery_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `icon_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo_gallery`
--

INSERT INTO `photo_gallery` (`photo_gallery_id`, `bn_title`, `icon_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'bangla', '15102504331.jpg', 1, '2017-11-09 00:00:00', 1, 1, '2017-11-09 00:00:00', 1, 1, '2017-11-09 00:00:00', 1),
(2, 'Ceremony', '1510667827c7.jpg', 1, '2017-11-09 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 1),
(3, 'Price Giving Ceremony', '1510667842c5.jpg', 1, '2017-11-09 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 1),
(4, 'Milad Mahfil', '1510667853c8.jpg', 1, '2017-11-09 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', 1),
(5, 'fddsfdg', '1510667863c2.jpg', 1, '2017-11-09 00:00:00', 1, 1, '2017-11-14 00:00:00', 1, 1, '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `poetry1`
--

CREATE TABLE `poetry1` (
  `poetry1_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_student_name` varchar(56) NOT NULL,
  `en_student_name` varchar(56) NOT NULL,
  `bn_class` varchar(55) NOT NULL,
  `en_class` varchar(55) NOT NULL,
  `bn_date` varchar(55) NOT NULL,
  `en_date` varchar(55) NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
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
-- Dumping data for table `poetry1`
--

INSERT INTO `poetry1` (`poetry1_id`, `bn_name`, `en_name`, `bn_student_name`, `en_student_name`, `bn_class`, `en_class`, `bn_date`, `en_date`, `bn_details`, `en_details`, `image_url`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'g', 'bf', 'vc', 'b ffv', 'vc', 'vf', '0000-00-00', '0000-00-00', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আমাদের ছোট গ্রাম মায়ের সমান,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">মাঠ ভরা ধান তার জল ভরা দিঘি,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">চাঁদের কিরণ লেগে করে ঝিকিমিকি৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">মিলে মিশে আছে ওরা আত্মীয় হেন৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">সকালে সোনার রবি পুব দিকে ওঠে,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আমাদের ছোট গ্রাম মায়ের সমান,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">মাঠ ভরা ধান তার জল ভরা দিঘি,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">চাঁদের কিরণ লেগে করে ঝিকিমিকি৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">মিলে মিশে আছে ওরা আত্মীয় হেন৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">সকালে সোনার রবি পুব দিকে ওঠে,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আমাদের ছোট গ্রাম মায়ের সমান,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">মাঠ ভরা ধান তার জল ভরা দিঘি,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">চাঁদের কিরণ লেগে করে ঝিকিমিকি৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">মিলে মিশে আছে ওরা আত্মীয় হেন৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">সকালে সোনার রবি পুব দিকে ওঠে,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;"></li>\r\n</ul>', '<p>cb</p>', '1510247819farah.png', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(2, 'uubnk', 'vbn', 'mlvb', 'nkvkbn', 'kvb', 'nmvbj', '0000-00-00', '0000-00-00', 'vjblknl', 'vhjbkn', '', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'bjnk', 'ghvhjbk', 'knm', 'gvhjbknml', 'vhjbk', 'ml', '0000-00-00', '0000-00-00', '<p>আমাদের ছোট গ্রাম মায়ের সমান,</p>\r\n<p>আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷</p>\r\n<p>মাঠ ভরা ধান তার জল ভরা দিঘি,</p>\r\n<p>চাঁদের কিরণ লেগে করে ঝিকিমিকি৷</p>\r\n<p>আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন,</p>\r\n<p>মিলে মিশে আছে ওরা আত্মীয় হেন৷</p>\r\n<p>সকালে সোনার রবি পুব দিকে ওঠে,</p>', '<p>gvhjbk</p>', '1510247882windows-8 DIU.jpg', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(4, 'vbjnkml', 'gvbjn', 'mgv', 'hbjnm', 'gcvhbuij', 'cfghvh', '0000-00-00', '0000-00-00', '<p>একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী</p>\r\n<p>এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা</p>\r\n<p>পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মা</p>\r\n<p>ত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সা</p>\r\n<p>থে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মু</p>\r\n<p>কুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁ</p>\r\n<p>&nbsp;</p>\r\n<p>ক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে</p>\r\n<p>তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে</p>\r\n<p>তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম। একটি শিক্ষা প্রতিষ্ঠা</p>\r\n<p>নের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃ</p>\r\n<p>দ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছা</p>\r\n<p>ত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা</p>\r\n<p>প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায়</p>\r\n<p>শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে র</p>\r\n<p>&nbsp;</p>\r\n<p>য়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়</p>\r\n<p>ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের</p>\r\n<p>পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম</p>', '<p>ok</p>', '1510247979windows-8 DIU.jpg', 1, 1, '2017-11-08 00:00:00', 1, 1, '2017-11-12 00:00:00', 1, 1, '2017-11-09 00:00:00'),
(5, 'edtrfgh', 'werdtyu', 'wertfyhuij', 'QWERTYUH', 'qwertyui', 'QWERTYU', 'Qwerty', 'qwert5y', '', '<p>DFGHJUIKL</p>', '1510247691farah.png', 1, 1, '2017-11-09 00:00:00', 1, 1, '2017-11-12 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'CFGHVJBK', 'VYBNIM', 'V', 'BKNLM', 'FYGUI', 'JK;L', 'YGHIJL', 'T', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 16px;">\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">থাকি সেথা সবে মিলে নাহি কেহ পর৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">পাড়ার সকল ছেলে মোরা ভাই ভাই,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">এক সাথে খেলি আর পাঠশালে যাই৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আমাদের ছোট গ্রাম মায়ের সমান,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">মাঠ ভরা ধান তার জল ভরা দিঘি,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">চাঁদের কিরণ লেগে করে ঝিকিমিকি৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন,</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">মিলে মিশে আছে ওরা আত্মীয় হেন৷</li>\r\n<li style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; list-style: none; text-align: center;">সকালে সোনার রবি পুব দিকে ওঠে,</li>\r\n</ul>', '<p>HH</p>', '1510247795windows-8 DIU.jpg', 1, 1, '2017-11-09 00:00:00', 1, 1, '2017-11-12 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `present_committee_member`
--

CREATE TABLE `present_committee_member` (
  `present_committee_member_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `en_dob` date NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `present_committee_member`
--

INSERT INTO `present_committee_member` (`present_committee_member_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `en_dob`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'বুগহপদগরসদ', 'নবহলগ', 'নবহবহপলগরদক', 'নবহলগরসদ', 'নবলগসদ', 'পবরলকস', ',পবরল', 'স,পনরবর', 'লস,পনবর', '0000-00-00', '0000-00-00', 'কসত, পরব', 'লকসপব কর', 'কস,', '', 'লকসত, র', 'পবরকলস', 'পবরলসক', 'নপবরলক', 'পবরলস', 'নবপরক', '150971122611.JPG', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'বুগহপদগরসদ-0ikj', 'নবহলগ', 'নবহবহপলগরদকt8y9', 'নবহলগরসদ', 'নবলগসদy89h', 'পবরলকস', ',পবরলvjhb', 'স,পনরবরiughn', 'লস,পনবর', '0000-00-00', '0000-00-00', 'কসত, পরবyuvgbln', 'লকসপব কর', 'কস,vughilnj', 'রলকসত, পর', 'লকসত, রvkbjlnml', 'পবরকলস', 'পবরলসকvkkuhlkn', 'নপবরলক', '<p>পবরলসiughjo</p>', '<p>নবপরক</p>', '1510462370Douglas  Scortegagna_Alone In The Sky_YkRqR2c.jpg', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(3, 'vhbjknml', 'vhbjknml,', 'hbjnkml', 'hvbjnkm', ' hbjnkm', ' vhbjnkm', 'lhbkjnkm', 'hjbkj', 'knmjhbj', '0000-00-00', '0000-00-00', 'ijovhbkj', 'kgjb', 'jnkgvh', 'bjnkgvj', 'bjnkgh', 'bhjnkgv', 'hbjnvhjb', 'njkv', 'bnjgh', 'vbkjlvhbjn', '1509711564windows-8 DIU.jpg', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `previous_committee_member`
--

CREATE TABLE `previous_committee_member` (
  `previous_committee_member_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `en_dob` date NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `previous_committee_member`
--

INSERT INTO `previous_committee_member` (`previous_committee_member_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `en_dob`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'd', 'c', 'xuijok', 'x', 'e', 'r', 'f', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', '<p>ef</p>', '<p>ef</p>', '1510462457Gabriela Pinto_Bird Of Love_YkFmSA.jpg', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `principal_speech`
--

CREATE TABLE `principal_speech` (
  `principal_speech_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_principal_name` varchar(55) NOT NULL,
  `bn_principal_designation` varchar(55) NOT NULL,
  `bn_short_speech` varchar(650) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_principal_name` varchar(55) NOT NULL,
  `en_principal_designation` varchar(55) NOT NULL,
  `en_short_speech` varchar(650) NOT NULL,
  `en_speech` longtext NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `principal_speech`
--

INSERT INTO `principal_speech` (`principal_speech_id`, `bn_title`, `bn_principal_name`, `bn_principal_designation`, `bn_short_speech`, `bn_speech`, `en_title`, `en_principal_name`, `en_principal_designation`, `en_short_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'প্রধান শিক্ষিকার বক্তব্য:', 'শিরিনা আক্তার:', 'প্রধান শিক্ষিকা.', '<p>Education is the backbone of a nation. শিক্ষা জাতির মেরুদণ্ড। মেরুদণ্ড ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে অধিষ্ঠিত। কাজেই শিক্ষার কোন বিকল্প নেই। একটি সুশিক্ষিত জাতিই উপহার দিতে পারে একটি সুন্দর দেশ, সুন্দর ভবিষ্যৎ। আর এই ভবিষ্যৎ এর ভিত্তি হচ্ছে আমাদের শিশুরা। যখন প্রতিটি শিশু সুশিক্ষায় শিক্ষিত হবে তখন সেই দেশ ও জাতি শান্তি সমৃদ্ধির সর্বোচ্চ শিখরে আরোহণ করবে। কাজেই প্রত্যেকেরই মনোযোগী হতে হবে কোমলমতি এই শিশুদের প্রতি। একজন শিল্পী তা', '<p>Education is the backbone of a nation. শিক্ষা জাতির মেরুদণ্ড। মেরুদণ্ড ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে অধিষ্ঠিত। কাজেই শিক্ষার কোন বিকল্প নেই। একটি সুশিক্ষিত জাতিই উপহার দিতে পারে একটি সুন্দর দেশ, সুন্দর ভবিষ্যৎ। আর এই ভবিষ্যৎ এর ভিত্তি হচ্ছে আমাদের শিশুরা। যখন প্রতিটি শিশু সুশিক্ষায় শিক্ষিত হবে তখন সেই দেশ ও জাতি শান্তি সমৃদ্ধির সর্বোচ্চ শিখরে আরোহণ করবে। কাজেই প্রত্যেকেরই মনোযোগী হতে হবে কোমলমতি এই শিশুদের প্রতি। একজন শিল্পী তা</p>', 'Head Teacher Speech', 'Shirina Akter', 'Head Mistress', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure h', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure h</p>', '1510049493Head Madam 1.jpg', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `result_bangla`
--

CREATE TABLE `result_bangla` (
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
-- Dumping data for table `result_bangla`
--

INSERT INTO `result_bangla` (`routine_id`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bangla', '1509409990j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fgdgsdf', '1509410412windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'fghfghf', '1509414818windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'bangla version exam routine', '1510732098aaa.png', 1, '2017-11-15 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'Bangla Version result', '1510734033aaa.png', 1, '2017-11-15 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 'first term result', '1510734330aaa.png', 1, '2017-11-15 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 'Bangla Version result', '1510734522aaa.png', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `result_english`
--

CREATE TABLE `result_english` (
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
-- Dumping data for table `result_english`
--

INSERT INTO `result_english` (`routine_id`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bangla', '1509409990j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fgdgsdf', '1509410412windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'fghfghf', '1509414818windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'bangla version exam routine', '1510732098aaa.png', 1, '2017-11-15 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'english version Result', '1510734553aaa.png', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 'fskdsjklsf', '1510734622aaa.png', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

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
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fgdgsdf', '1509410412windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'bangla version class routine', '1510731948aaa.png', 1, '2017-11-15 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'bangla version class routine', '1510732463aaa.png', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

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
(2, 'English', '1509410100windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'sdf', '1509410226j.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'hahal', '1510731843aaa.png', 1, '2017-11-15 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'english version Class routine', '1510732448aaa.png', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `scholar_student`
--

CREATE TABLE `scholar_student` (
  `scholar_student_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_class_roll` varchar(15) NOT NULL,
  `en_class_roll` varchar(15) NOT NULL,
  `bn_father_name` varchar(55) NOT NULL,
  `en_father_name` varchar(55) NOT NULL,
  `bn_mother_name` varchar(55) NOT NULL,
  `en_mother_name` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
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
-- Dumping data for table `scholar_student`
--

INSERT INTO `scholar_student` (`scholar_student_id`, `bn_name`, `en_name`, `bn_class_roll`, `en_class_roll`, `bn_father_name`, `en_father_name`, `bn_mother_name`, `en_mother_name`, `bn_present_address`, `en_present_address`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', 'f', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'gvhb', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'guh', 'vbnm', 'bni', 'movjhbkj', 'knmvh', 'bjknvjhb', 'jnjvbj', 'knmlvjb', 'knhvkbj', 'knhvb', 'No Image Uploaded', 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'uuhijo000', 'yguhi', 'uhij', 'okpv', 'blnj', 'kbhlinj', 'uhijov', 'hbjnj', 'vkbln', 'jkulnj;m', '150977616011.JPG', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00'),
(5, 'r', 'r', '1', '1', 'a', 'a', 'b', 'b', 's', 's', 'No Image Uploaded', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'vbjnk', 'yuiih', 'jokvybun', 'mov', 'bunml', 'vybuinmol', 'vy', 'bunim,', 'bukjn', 'lm;', '1510123481farah.png', 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'riyad', 'riyad', '5', '7', 'A', 'a', 'R', 'R', 'S', 'S', '1510123527windows-8 DIU.jpg', 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `short_story1`
--

CREATE TABLE `short_story1` (
  `short_story1_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_student_name` varchar(56) NOT NULL,
  `en_student_name` varchar(56) NOT NULL,
  `bn_class` varchar(55) NOT NULL,
  `en_class` varchar(55) NOT NULL,
  `bn_date` varchar(55) NOT NULL,
  `en_date` varchar(55) NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
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
-- Dumping data for table `short_story1`
--

INSERT INTO `short_story1` (`short_story1_id`, `bn_name`, `en_name`, `bn_student_name`, `en_student_name`, `bn_class`, `en_class`, `bn_date`, `en_date`, `bn_details`, `en_details`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'gvhjbkn', 'vbnm', 'bn', 'mbn', 'imbn', 'mob', '0000-00-00', '0000-00-00', 'hjb', 'ni', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'vbn', 'hbjnkm', 'lbjnkm', 'l,jh k', 'nm hj', 'nkml, jk', '0000-00-00', '0000-00-00', 'hjbnkml,', 'jh bknml;,', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'hbjknlml', 'bjnkm', 'gjh', 'bknml', 'ghjbknm', ' hj', '0000-00-00', '0000-00-00', 'ghjb', 'knml', '1510125633diu.png', 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-08 00:00:00'),
(4, 'gbuino', 'mvyubuin', 'm,biu', 'nom,p', 'vbknlm;,', 'vbknlm;,', '2017-11-15', '0000-00-00', '<p style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #333333; font-family: ''Hind Siliguri'', sans-serif;"><span style="box-sizing: border-box;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #333333; font-family: ''Hind Siliguri'', sans-serif;"><span style="box-sizing: border-box;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>', '<p style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #333333; font-family: ''Hind Siliguri'', sans-serif;"><span style="box-sizing: border-box;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #333333; font-family: ''Hind Siliguri'', sans-serif;"><span style="box-sizing: border-box;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>', '1510247030windows-8 DIU.jpg', 1, '2017-11-09 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'gbuino', 'mvyubuin', 'm,biu', 'nom,p', 'vbknlm;,', 'vbknlm;,', '2017-11-15', 'ftytfyt', '<p style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #333333; font-family: ''Hind Siliguri'', sans-serif;"><span style="box-sizing: border-box;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #333333; font-family: ''Hind Siliguri'', sans-serif;"><span style="box-sizing: border-box;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>', '<p style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #333333; font-family: ''Hind Siliguri'', sans-serif;"><span style="box-sizing: border-box;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>\r\n<p style="box-sizing: border-box; margin: 0px; font-size: 14px; letter-spacing: 1px; color: #333333; font-family: ''Hind Siliguri'', sans-serif;"><span style="box-sizing: border-box;">আমাদের ছোট গাঁয়ে ছোট ছোট ঘর, থাকি সেথা সবে মিলে নাহি কেহ পর৷ পাড়ার সকল ছেলে মোরা ভাই ভাই, এক সাথে খেলি আর পাঠশালে যাই৷ আমাদের ছোট গ্রাম মায়ের সমান, আলো দিয়ে, বায়ু দিয়ে বাঁচাইয়াছে প্রাণ৷ মাঠ ভরা ধান তার জল ভরা দিঘি, চাঁদের কিরণ লেগে করে ঝিকিমিকি৷ আম গাছ, জাম গাছ, বাঁশ ঝাড় যেন, মিলে মিশে আছে ওরা আত্মীয় হেন৷ সকালে সোনার রবি পুব দিকে ওঠে, পাখি ডাকে, বায়ু বয়, নানা ফুল ফোটে৷</span></p>', '1510247143windows-8 DIU.jpg', 1, '2017-11-09 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `image_url`, `is_updated`, `updated_by`, `updated_on`, `is_deleted`, `deleted_by`, `deleted_on`, `created_on`, `created_by`) VALUES
(1, '1510079618slid1.jpg', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', '2017-11-07 00:00:00', 1),
(2, '1510079626slider1.jpg', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', '2017-11-07 00:00:00', 1),
(3, '1510079632slider2.jpg', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', '2017-11-07 00:00:00', 1),
(4, '1510079640slider3.jpg', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', '2017-11-07 00:00:00', 1),
(5, '1510079651slider4.jpg', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00', '2017-11-07 00:00:00', 1),
(6, '1510665822c6.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-14 00:00:00', 1),
(7, '1510665829c7.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-14 00:00:00', 1),
(8, '1510665833c8.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-14 00:00:00', 1),
(9, '1510665998c5.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-14 00:00:00', 1),
(10, '1510666008c2.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_term_exam_bangla`
--

CREATE TABLE `suggestion_term_exam_bangla` (
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
-- Dumping data for table `suggestion_term_exam_bangla`
--

INSERT INTO `suggestion_term_exam_bangla` (`suggestion_term_exam_no`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'yh', '1508464235Capture.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'Ct', '150850075511.JPG', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'ghfhg', '1509383670windows-8 DIU.jpg', 1, '2017-10-30 00:00:00', 1, 1, '2017-10-30 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'fddg', '1509411297windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'rtyui', '1510730943aaa.png', 1, '2017-11-15 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_term_exam_english`
--

CREATE TABLE `suggestion_term_exam_english` (
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
-- Dumping data for table `suggestion_term_exam_english`
--

INSERT INTO `suggestion_term_exam_english` (`suggestion_term_exam_no`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'yh', '1508464235Capture.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'Ct', '150850075511.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'ghfhg', '1509383670windows-8 DIU.jpg', 1, '2017-10-30 00:00:00', 1, 1, '2017-10-30 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'fddg', '1509411297windows-8 DIU.jpg', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'english version suggestion', '1510727924New Doc 15.pdf', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_tutorial_bangla`
--

CREATE TABLE `suggestion_tutorial_bangla` (
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
-- Dumping data for table `suggestion_tutorial_bangla`
--

INSERT INTO `suggestion_tutorial_bangla` (`suggestion_tutorial_no`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(2, 'Ct', '150850075511.JPG', 1, '2017-10-20 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'fygu', '150952964411.JPG', 1, '2017-11-01 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'Bangla version tutorial suggestion', '1510732018aaa.png', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_tutorial_english`
--

CREATE TABLE `suggestion_tutorial_english` (
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
-- Dumping data for table `suggestion_tutorial_english`
--

INSERT INTO `suggestion_tutorial_english` (`suggestion_tutorial_no`, `title`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(2, 'Ct', '150850075511.JPG', 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'fygu', '150952964411.JPG', 1, '2017-11-01 00:00:00', 1, 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'english version suggestion', '1510727176New Doc 15.pdf', 1, '2017-11-15 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

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
-- Table structure for table `teacher_day_shift`
--

CREATE TABLE `teacher_day_shift` (
  `teacher_day_shift_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `mpo_no` varchar(55) NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `teacher_day_shift`
--

INSERT INTO `teacher_day_shift` (`teacher_day_shift_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `mpo_no`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '2017-11-08', '0000-00-00', '2017-11-16', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', '<p>ef</p>', '<p>ef</p>', '1510468446M.M Rofiqul Islam pic.jpg', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'cjvhbk', 'cyfvgkbj', 'hcj', 'vhkblh', 'hcgvjbk', 'hfjg', 'jhcj', 'vkg', 'cjvgkj', '2017-11-10', '0000-00-00', '2017-11-03', 'vhjb', 'cghj', 'cgh', 'jcgh', 'jcgh', 'j', 'cghj', '<p>cgvhj</p>', '<p>dtyfguhlj</p>', '1510468504Monir Sir.jpg', 1, '2017-11-06 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-12 00:00:00'),
(4, 'tfyuguh', 'ctyguh', 'ic', 'yvguhij', 'tcyguhi', 'ct', 'vyguh', 'chvjgkuh', 'cvjyuh', '0000-00-00', '0000-00-00', 'b', 'fchgjbk', 'gfchjbk', 'fcvgb', 'h', 'fchjbk', 'fgchvjb', 'fc', 'gbhjk', 'fcgvjh', 'No.jpg', 1, '2017-11-06 00:00:00', 1, 1, '2017-11-12 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'gcvhbkjnl', 'gvhjb', 'knlml', 'hvbknllm', 'hvbkjnml', 'hjbkn', 'lm', 'bjknml', 'hvjbkn', '0000-00-00', '0000-00-00', 'hvbjkn;lmk', 'vhbjkn;ml', 'vjbjnk', 'vhbjkn', 'hvkbjnl', 'jhv', 'bkl', 'hvjbkml', 'vjhbkjl', 'vhbjnkl', '1509987499diu.png', 1, '2017-11-06 00:00:00', 1, 1, '2017-11-12 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'gcjvhkbhl', 'cvbkhnil', 'jcvj', 'bhijo', 'vjbhinjok', 'gvjhbkjk;p', 'jvhbk', 'nlm;l', 'vhjbknl', '0000-00-00', '0000-00-00', 'hjbknlmk;', 'gvjhbk', 'mk;cg', 'vjhbklok', 'gchvjbnlo', 'kghvjbk', 'm;', 'gvhbkjnm;', 'vbkjnk', 'gvjhbkk', 'No.jpg', 1, '2017-11-06 00:00:00', 1, 1, '2017-11-12 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'gcvbjnkjl', 'cvbn', 'jok', 'vjhbknml;,', 'ghvjb nkm', ';,lgh', 'vjbknml;,', 'jh bkml;,', 'ghj bk', '0000-00-00', '0000-00-00', 'GHVJBKNLM;L', 'GVJHBKNLM', 'J', 'HBKNLM;', 'JH BKJNML;', ',vh', 'hjbknlm;', 'hbkj nlm', 'bjnm,', 'hvjbknlm', 'No.jpg', 1, '2017-11-06 00:00:00', 1, 1, '2017-11-12 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 'vhjbknl', 'CV', 'BNLK', 'CJVHBKNL', 'hvbjn', 'cvhjbknl', 'jvh', 'bj', 'vbkjlkn', '0000-00-00', '0000-00-00', 'cghvjbknl', 'cvhjb', 'jnkgc', 'vjhbkjnl', 'cgvjhbknl', 'cghvjbk', 'knlgcvhjbkjnkl', 'gchvjbknl', 'hvjbkj', 'nkl', 'No.jpg', 1, '2017-11-06 00:00:00', 1, 1, '2017-11-12 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 'vhjbknl', 'vhjbknl', 'mgvhbkj', 'kmv', 'bkjnlm;g', 'vhjbknm;l', 'b jnkml,', 'hvjbkn', 'm;lg', '0000-00-00', '0000-00-00', 'vjhbk', 'nlm;l', 'gvhjbjknml', 'gvhjbkjnlm', 'hgjv', 'hjvkbjln', 'vhjbknlm', ';hvjbk', 'knm;l', 'vhbkjnm', 'No.jpg', 1, '2017-11-06 00:00:00', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(10, 'drtms', 'mdtd', 'sfs', 'dd', 'gd', 'dgd', 'dgd', 'gdddg', 'gdddg', '2017-11-08', '5465656', '2017-11-23', 'jnc', 'vhbkjc', 'vhbjkn', 'vkblnm', 'jvbk', 'nfguyuty', 'vkbjln', '<p>gcjvhbkln</p>', '<p>jhvhkbln</p>', '1509987951banner.jpg', 1, '2017-11-06 00:00:00', 1, 1, '2017-11-12 00:00:00', 1, 1, '2017-11-07 00:00:00'),
(11, 'cvbunim', 'ghbjko', 'cfgbhj', 'kgvh', 'njk', 'gvhbjk', 'ghbjkml', 'vhbnj', 'mk ghj', '2017-11-02', '34567890', '2017-11-17', '', 'yguhiojk', 'vbn', 'mk,l', 'biujokp[l', 'vyuijop', '[ly', '<p>ijop[l</p>', '<p>vbuhijpk[</p>', '1510089450farah.png', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-12 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_death`
--

CREATE TABLE `teacher_death` (
  `teacher_death_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `mpo_no` varchar(55) NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `teacher_death`
--

INSERT INTO `teacher_death` (`teacher_death_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `mpo_no`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'vbhjkn', 'vhbni', 'mo', 'vhbknlm;', 'vg', 'hbkml;,', 'yvybu', 'inmkl,y', 'bihjok', '2017-11-09', 'dftghj', '2017-11-10', '', 'hjbknm', 'vhbj', 'nko', 'vhb', 'njkm', 'uhijo', '<p>ky</p>', '<p>uhijok</p>', '1510122570windows-8 DIU.jpg', 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

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
-- Table structure for table `teacher_morning_shift`
--

CREATE TABLE `teacher_morning_shift` (
  `teacher_morning_shift_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `mpo_no` varchar(55) NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `teacher_morning_shift`
--

INSERT INTO `teacher_morning_shift` (`teacher_morning_shift_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `mpo_no`, `bn_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'hbjk', 'mlvy', 'buhikp[l', 'uhijokpl', 'yghuijkpl', 'tytu', 'gyhuijkpo', 'vybhuijok', 'yugui', '2017-11-10', '3456789', '2017-11-21', 'gvhbu', 'ijopk', 'ygijopk', 'fugyi', 'po', 'fik0o', '<p>t</p>', '<p>ij0o-p</p>', '1510090731farah.png', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_previous`
--

CREATE TABLE `teacher_previous` (
  `teacher_previous_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `mpo_no` varchar(55) NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `teacher_previous`
--

INSERT INTO `teacher_previous` (`teacher_previous_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `mpo_no`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'vhbknm', 'lcv', 'bknlm,', 'cfghvbnk', 'mfg', 'gbkn', 'fgch', 'bkml', 'fcghbjkm', '2017-11-08', 'kml', '2017-11-17', '', 'fgxchvbjkn', 'mfcg', 'hvbknlm;,', 'fgchvbjkml', 'fgchvjb', 'kmlgc', '<p>hvjbknml</p>', '<p>gchvjbknml</p>', '1510122148farah.png', 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_vocational`
--

CREATE TABLE `teacher_vocational` (
  `teacher_vocational_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `mpo_no` varchar(55) NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `teacher_vocational`
--

INSERT INTO `teacher_vocational` (`teacher_vocational_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `mpo_no`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'vhbjnkm;l,', 'bu', 'nim', 'vjhbkm;l', 'h', 'kjm;l', 'gyjkl', ';', 'hgjkl;', '2017-11-17', 'ghh', '2017-11-10', '', 'vjhbkm', 'lv', 'ghjbkml;,', 'ghjbk', 'ml,;', 'vhjbkml;,', '<p>ghvj</p>', '<p>bknml;,</p>', '1510121546farah.png', 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `why_we_img`
--

CREATE TABLE `why_we_img` (
  `logo_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `why_we_img`
--

INSERT INTO `why_we_img` (`logo_id`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, '1510676957sl20.jpg', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xxx_user`
--

CREATE TABLE `xxx_user` (
  `USER_NO` int(11) NOT NULL,
  `USER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASS` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `USER_FULL_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_CONTACT` text COLLATE utf8_unicode_ci NOT NULL,
  `IS_ACTIVE` int(11) NOT NULL,
  `ACTIVE_FROM` date NOT NULL,
  `ACTIVE_TO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xxx_user`
--

INSERT INTO `xxx_user` (`USER_NO`, `USER_NAME`, `PASS`, `USER_FULL_NAME`, `USER_EMAIL`, `USER_CONTACT`, `IS_ACTIVE`, `ACTIVE_FROM`, `ACTIVE_TO`) VALUES
(1, 'ssislambd', 'fe707ddd5858aec84832a6c39aca75aa', 'Saikat Sarwar', 'ssislambd@gmail.com', '01685505076', 1, '2015-01-01', '2099-01-01'),
(13, 'admin', '202cb962ac59075b964b07152d234b70', 'Admin', 'admin', '98765432', 1, '2015-01-01', '2099-01-01'),
(14, 'robin', '202cb962ac59075b964b07152d234b70', 'Robin Chaklader', 'robin.chaklader@gmail.com', '01778924683', 1, '2015-01-01', '2099-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_link`
--

CREATE TABLE `youtube_link` (
  `youtube_link_id` int(11) NOT NULL,
  `link1` text NOT NULL,
  `link2` text NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `youtube_link`
--

INSERT INTO `youtube_link` (`youtube_link_id`, `link1`, `link2`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'https://www.youtube.com/embed/ZgW420-WdO0', 'https://www.youtube.com/embed/OVMpSigM5ts', 1, 1, '2017-11-10 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `admission_news`
--
ALTER TABLE `admission_news`
  ADD PRIMARY KEY (`admission_news_no`);

--
-- Indexes for table `brief_seats`
--
ALTER TABLE `brief_seats`
  ADD PRIMARY KEY (`brief_seats_id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `death_committee_member`
--
ALTER TABLE `death_committee_member`
  ADD PRIMARY KEY (`death_committee_member_id`);

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
-- Indexes for table `gallery_wise_photo`
--
ALTER TABLE `gallery_wise_photo`
  ADD PRIMARY KEY (`gallery_wise_photo_id`),
  ADD KEY `photo_gallery_id` (`photo_gallery_id`);

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
-- Indexes for table `home_about_us7`
--
ALTER TABLE `home_about_us7`
  ADD PRIMARY KEY (`home_about_us7_id`);

--
-- Indexes for table `home_about_us8`
--
ALTER TABLE `home_about_us8`
  ADD PRIMARY KEY (`home_about_us8_id`);

--
-- Indexes for table `home_admission_paper`
--
ALTER TABLE `home_admission_paper`
  ADD PRIMARY KEY (`home_admission_paper_id`);

--
-- Indexes for table `home_admission_process`
--
ALTER TABLE `home_admission_process`
  ADD PRIMARY KEY (`home_admission_process_id`);

--
-- Indexes for table `home_admission_rule`
--
ALTER TABLE `home_admission_rule`
  ADD PRIMARY KEY (`home_admission_rule_id`);

--
-- Indexes for table `home_admission_uniform`
--
ALTER TABLE `home_admission_uniform`
  ADD PRIMARY KEY (`home_admission_uniform_id`);

--
-- Indexes for table `home_events_details`
--
ALTER TABLE `home_events_details`
  ADD PRIMARY KEY (`home_event_details_id`);

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
-- Indexes for table `home_notices`
--
ALTER TABLE `home_notices`
  ADD PRIMARY KEY (`home_notice_id`);

--
-- Indexes for table `home_result`
--
ALTER TABLE `home_result`
  ADD PRIMARY KEY (`home_result_id`);

--
-- Indexes for table `home_why_we`
--
ALTER TABLE `home_why_we`
  ADD PRIMARY KEY (`home_why_we_id`);

--
-- Indexes for table `joke1`
--
ALTER TABLE `joke1`
  ADD PRIMARY KEY (`joke1_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `notice_setup`
--
ALTER TABLE `notice_setup`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `novel`
--
ALTER TABLE `novel`
  ADD PRIMARY KEY (`novel_id`);

--
-- Indexes for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  ADD PRIMARY KEY (`photo_gallery_id`);

--
-- Indexes for table `poetry1`
--
ALTER TABLE `poetry1`
  ADD PRIMARY KEY (`poetry1_id`);

--
-- Indexes for table `present_committee_member`
--
ALTER TABLE `present_committee_member`
  ADD PRIMARY KEY (`present_committee_member_id`);

--
-- Indexes for table `previous_committee_member`
--
ALTER TABLE `previous_committee_member`
  ADD PRIMARY KEY (`previous_committee_member_id`);

--
-- Indexes for table `principal_speech`
--
ALTER TABLE `principal_speech`
  ADD PRIMARY KEY (`principal_speech_id`);

--
-- Indexes for table `result_bangla`
--
ALTER TABLE `result_bangla`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `result_english`
--
ALTER TABLE `result_english`
  ADD PRIMARY KEY (`routine_id`);

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
-- Indexes for table `scholar_student`
--
ALTER TABLE `scholar_student`
  ADD PRIMARY KEY (`scholar_student_id`);

--
-- Indexes for table `short_story1`
--
ALTER TABLE `short_story1`
  ADD PRIMARY KEY (`short_story1_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `suggestion_term_exam_bangla`
--
ALTER TABLE `suggestion_term_exam_bangla`
  ADD PRIMARY KEY (`suggestion_term_exam_no`);

--
-- Indexes for table `suggestion_term_exam_english`
--
ALTER TABLE `suggestion_term_exam_english`
  ADD PRIMARY KEY (`suggestion_term_exam_no`);

--
-- Indexes for table `suggestion_tutorial_bangla`
--
ALTER TABLE `suggestion_tutorial_bangla`
  ADD PRIMARY KEY (`suggestion_tutorial_no`);

--
-- Indexes for table `suggestion_tutorial_english`
--
ALTER TABLE `suggestion_tutorial_english`
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
-- Indexes for table `teacher_day_shift`
--
ALTER TABLE `teacher_day_shift`
  ADD PRIMARY KEY (`teacher_day_shift_id`);

--
-- Indexes for table `teacher_death`
--
ALTER TABLE `teacher_death`
  ADD PRIMARY KEY (`teacher_death_id`);

--
-- Indexes for table `teacher_english_version`
--
ALTER TABLE `teacher_english_version`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `teacher_info_no` (`teacher_info_no`);

--
-- Indexes for table `teacher_morning_shift`
--
ALTER TABLE `teacher_morning_shift`
  ADD PRIMARY KEY (`teacher_morning_shift_id`);

--
-- Indexes for table `teacher_previous`
--
ALTER TABLE `teacher_previous`
  ADD PRIMARY KEY (`teacher_previous_id`);

--
-- Indexes for table `teacher_vocational`
--
ALTER TABLE `teacher_vocational`
  ADD PRIMARY KEY (`teacher_vocational_id`);

--
-- Indexes for table `why_we_img`
--
ALTER TABLE `why_we_img`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `xxx_user`
--
ALTER TABLE `xxx_user`
  ADD PRIMARY KEY (`USER_NO`),
  ADD UNIQUE KEY `USER_NAME` (`USER_NAME`),
  ADD UNIQUE KEY `USER_FULL_NAME` (`USER_FULL_NAME`),
  ADD UNIQUE KEY `USER_EMAIL` (`USER_EMAIL`),
  ADD UNIQUE KEY `USER_NO` (`USER_NO`),
  ADD UNIQUE KEY `USER_NO_2` (`USER_NO`);

--
-- Indexes for table `youtube_link`
--
ALTER TABLE `youtube_link`
  ADD PRIMARY KEY (`youtube_link_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admission_news`
--
ALTER TABLE `admission_news`
  MODIFY `admission_news_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `brief_seats`
--
ALTER TABLE `brief_seats`
  MODIFY `brief_seats_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `death_committee_member`
--
ALTER TABLE `death_committee_member`
  MODIFY `death_committee_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exam_routine_bangla`
--
ALTER TABLE `exam_routine_bangla`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `exam_routine_english`
--
ALTER TABLE `exam_routine_english`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT for table `gallery_wise_photo`
--
ALTER TABLE `gallery_wise_photo`
  MODIFY `gallery_wise_photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
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
-- AUTO_INCREMENT for table `home_about_us7`
--
ALTER TABLE `home_about_us7`
  MODIFY `home_about_us7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us8`
--
ALTER TABLE `home_about_us8`
  MODIFY `home_about_us8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_paper`
--
ALTER TABLE `home_admission_paper`
  MODIFY `home_admission_paper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_process`
--
ALTER TABLE `home_admission_process`
  MODIFY `home_admission_process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_rule`
--
ALTER TABLE `home_admission_rule`
  MODIFY `home_admission_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_uniform`
--
ALTER TABLE `home_admission_uniform`
  MODIFY `home_admission_uniform_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_events_details`
--
ALTER TABLE `home_events_details`
  MODIFY `home_event_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `home_heading4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `home_heading5`
--
ALTER TABLE `home_heading5`
  MODIFY `home_heading5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `home_important_links`
--
ALTER TABLE `home_important_links`
  MODIFY `home_important_links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `home_notices`
--
ALTER TABLE `home_notices`
  MODIFY `home_notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `home_result`
--
ALTER TABLE `home_result`
  MODIFY `home_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `home_why_we`
--
ALTER TABLE `home_why_we`
  MODIFY `home_why_we_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `joke1`
--
ALTER TABLE `joke1`
  MODIFY `joke1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notice_setup`
--
ALTER TABLE `notice_setup`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `novel`
--
ALTER TABLE `novel`
  MODIFY `novel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  MODIFY `photo_gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `poetry1`
--
ALTER TABLE `poetry1`
  MODIFY `poetry1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `present_committee_member`
--
ALTER TABLE `present_committee_member`
  MODIFY `present_committee_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `previous_committee_member`
--
ALTER TABLE `previous_committee_member`
  MODIFY `previous_committee_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `principal_speech`
--
ALTER TABLE `principal_speech`
  MODIFY `principal_speech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `result_bangla`
--
ALTER TABLE `result_bangla`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `result_english`
--
ALTER TABLE `result_english`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `routine_bangla`
--
ALTER TABLE `routine_bangla`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `routine_english`
--
ALTER TABLE `routine_english`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `scholar_student`
--
ALTER TABLE `scholar_student`
  MODIFY `scholar_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `short_story1`
--
ALTER TABLE `short_story1`
  MODIFY `short_story1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `suggestion_term_exam_bangla`
--
ALTER TABLE `suggestion_term_exam_bangla`
  MODIFY `suggestion_term_exam_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `suggestion_term_exam_english`
--
ALTER TABLE `suggestion_term_exam_english`
  MODIFY `suggestion_term_exam_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `suggestion_tutorial_bangla`
--
ALTER TABLE `suggestion_tutorial_bangla`
  MODIFY `suggestion_tutorial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `suggestion_tutorial_english`
--
ALTER TABLE `suggestion_tutorial_english`
  MODIFY `suggestion_tutorial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT for table `teacher_day_shift`
--
ALTER TABLE `teacher_day_shift`
  MODIFY `teacher_day_shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `teacher_death`
--
ALTER TABLE `teacher_death`
  MODIFY `teacher_death_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_english_version`
--
ALTER TABLE `teacher_english_version`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_morning_shift`
--
ALTER TABLE `teacher_morning_shift`
  MODIFY `teacher_morning_shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_previous`
--
ALTER TABLE `teacher_previous`
  MODIFY `teacher_previous_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_vocational`
--
ALTER TABLE `teacher_vocational`
  MODIFY `teacher_vocational_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `why_we_img`
--
ALTER TABLE `why_we_img`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xxx_user`
--
ALTER TABLE `xxx_user`
  MODIFY `USER_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `youtube_link`
--
ALTER TABLE `youtube_link`
  MODIFY `youtube_link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
