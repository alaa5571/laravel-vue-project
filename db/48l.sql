-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2019 at 06:28 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `48l`
--

-- --------------------------------------------------------

--
-- Table structure for table `applies`
--

CREATE TABLE `applies` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applies`
--

INSERT INTO `applies` (`id`, `status`, `user_id`, `job_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 48, NULL, '2019-07-11 10:53:34', '2019-07-11 10:53:34'),
(2, 1, 2, 50, NULL, '2019-07-11 10:55:56', '2019-07-11 10:56:27'),
(3, 0, 94, 51, NULL, '2019-12-10 08:37:22', '2019-12-10 08:37:22'),
(4, 0, 94, 54, NULL, '2019-12-11 12:35:43', '2019-12-11 12:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', NULL, NULL, NULL),
(2, 'Albania', NULL, NULL, NULL),
(3, 'Algeria', NULL, NULL, NULL),
(4, 'American Samoa', NULL, NULL, NULL),
(5, 'Andorra', NULL, NULL, NULL),
(6, 'Angola', NULL, NULL, NULL),
(7, 'Anguilla', NULL, NULL, NULL),
(8, 'Antarctica', NULL, NULL, NULL),
(9, 'Antigua and Barbuda', NULL, NULL, NULL),
(10, 'Argentina', NULL, NULL, NULL),
(11, 'Armenia', NULL, NULL, NULL),
(12, 'Aruba', NULL, NULL, NULL),
(13, 'Australia', NULL, NULL, NULL),
(14, 'Austria', NULL, NULL, NULL),
(15, 'Azerbaijan', NULL, NULL, NULL),
(16, 'Bahamas', NULL, NULL, NULL),
(17, 'Bahrain', NULL, NULL, NULL),
(18, 'Bangladesh', NULL, NULL, NULL),
(19, 'Barbados', NULL, NULL, NULL),
(20, 'Belarus', NULL, NULL, NULL),
(21, 'Belgium', NULL, NULL, NULL),
(22, 'Belize', NULL, NULL, NULL),
(23, 'Benin', NULL, NULL, NULL),
(24, 'Bermuda', NULL, NULL, NULL),
(25, 'Bhutan', NULL, NULL, NULL),
(26, 'Bolivia', NULL, NULL, NULL),
(27, 'Bosnia and Herzegowina', NULL, NULL, NULL),
(28, 'Botswana', NULL, NULL, NULL),
(29, 'Bouvet Island', NULL, NULL, NULL),
(30, 'Brazil', NULL, NULL, NULL),
(31, 'British Indian Ocean Territory', NULL, NULL, NULL),
(32, 'Brunei Darussalam', NULL, NULL, NULL),
(33, 'Bulgaria', NULL, NULL, NULL),
(34, 'Burkina Faso', NULL, NULL, NULL),
(35, 'Burundi', NULL, NULL, NULL),
(36, 'Cambodia', NULL, NULL, NULL),
(37, 'Cameroon', NULL, NULL, NULL),
(38, 'Canada', NULL, NULL, NULL),
(39, 'Cape Verde', NULL, NULL, NULL),
(40, 'Cayman Islands', NULL, NULL, NULL),
(41, 'Central African Republic', NULL, NULL, NULL),
(42, 'Chad', NULL, NULL, NULL),
(43, 'Chile', NULL, NULL, NULL),
(44, 'China', NULL, NULL, NULL),
(45, 'Christmas Island', NULL, NULL, NULL),
(46, 'Cocos (Keeling) Islands', NULL, NULL, NULL),
(47, 'Colombia', NULL, NULL, NULL),
(48, 'Comoros', NULL, NULL, NULL),
(49, 'Congo', NULL, NULL, NULL),
(50, 'Congo, the Democratic Republic of the', NULL, NULL, NULL),
(51, 'Cook Islands', NULL, NULL, NULL),
(52, 'Costa Rica', NULL, NULL, NULL),
(53, 'Cote d\'Ivoire', NULL, NULL, NULL),
(54, 'Croatia (Hrvatska)', NULL, NULL, NULL),
(55, 'Cuba', NULL, NULL, NULL),
(56, 'Cyprus', NULL, NULL, NULL),
(57, 'Czech Republic', NULL, NULL, NULL),
(58, 'Denmark', NULL, NULL, NULL),
(59, 'Djibouti', NULL, NULL, NULL),
(60, 'Dominica', NULL, NULL, NULL),
(61, 'Dominican Republic', NULL, NULL, NULL),
(62, 'East Timor', NULL, NULL, NULL),
(63, 'Ecuador', NULL, NULL, NULL),
(64, 'Egypt', NULL, NULL, NULL),
(65, 'El Salvador', NULL, NULL, NULL),
(66, 'Equatorial Guinea', NULL, NULL, NULL),
(67, 'Eritrea', NULL, NULL, NULL),
(68, 'Estonia', NULL, NULL, NULL),
(69, 'Ethiopia', NULL, NULL, NULL),
(70, 'Falkland Islands (Malvinas)', NULL, NULL, NULL),
(71, 'Faroe Islands', NULL, NULL, NULL),
(72, 'Fiji', NULL, NULL, NULL),
(73, 'Finland', NULL, NULL, NULL),
(74, 'France', NULL, NULL, NULL),
(75, 'France Metropolitan', NULL, NULL, NULL),
(76, 'French Guiana', NULL, NULL, NULL),
(77, 'French Polynesia', NULL, NULL, NULL),
(78, 'French Southern Territories', NULL, NULL, NULL),
(79, 'Gabon', NULL, NULL, NULL),
(80, 'Gambia', NULL, NULL, NULL),
(81, 'Georgia', NULL, NULL, NULL),
(82, 'Germany', NULL, NULL, NULL),
(83, 'Ghana', NULL, NULL, NULL),
(84, 'Gibraltar', NULL, NULL, NULL),
(85, 'Greece', NULL, NULL, NULL),
(86, 'Greenland', NULL, NULL, NULL),
(87, 'Grenada', NULL, NULL, NULL),
(88, 'Guadeloupe', NULL, NULL, NULL),
(89, 'Guam', NULL, NULL, NULL),
(90, 'Guatemala', NULL, NULL, NULL),
(91, 'Guinea', NULL, NULL, NULL),
(92, 'Guinea-Bissau', NULL, NULL, NULL),
(93, 'Guyana', NULL, NULL, NULL),
(94, 'Haiti', NULL, NULL, NULL),
(95, 'Heard and Mc Donald Islands', NULL, NULL, NULL),
(96, 'Holy See (Vatican City State)', NULL, NULL, NULL),
(97, 'Honduras', NULL, NULL, NULL),
(98, 'Hong Kong', NULL, NULL, NULL),
(99, 'Hungary', NULL, NULL, NULL),
(100, 'Iceland', NULL, NULL, NULL),
(101, 'India', NULL, NULL, NULL),
(102, 'Indonesia', NULL, NULL, NULL),
(103, 'Iran (Islamic Republic of)', NULL, NULL, NULL),
(104, 'Iraq', NULL, NULL, NULL),
(105, 'Ireland', NULL, NULL, NULL),
(106, 'Israel', NULL, NULL, NULL),
(107, 'Italy', NULL, NULL, NULL),
(108, 'Jamaica', NULL, NULL, NULL),
(109, 'Japan', NULL, NULL, NULL),
(110, 'Jordan', NULL, NULL, NULL),
(111, 'Kazakhstan', NULL, NULL, NULL),
(112, 'Kenya', NULL, NULL, NULL),
(113, 'Kiribati', NULL, NULL, NULL),
(114, 'Korea, Democratic People\'s Republic of', NULL, NULL, NULL),
(115, 'Korea, Republic of', NULL, NULL, NULL),
(116, 'Kuwait', NULL, NULL, NULL),
(117, 'Kyrgyzstan', NULL, NULL, NULL),
(118, 'Lao, People\'s Democratic Republic', NULL, NULL, NULL),
(119, 'Latvia', NULL, NULL, NULL),
(120, 'Lebanon', NULL, NULL, NULL),
(121, 'Lesotho', NULL, NULL, NULL),
(122, 'Liberia', NULL, NULL, NULL),
(123, 'Libyan Arab Jamahiriya', NULL, NULL, NULL),
(124, 'Liechtenstein', NULL, NULL, NULL),
(125, 'Lithuania', NULL, NULL, NULL),
(126, 'Luxembourg', NULL, NULL, NULL),
(127, 'Macau', NULL, NULL, NULL),
(128, 'Macedonia, The Former Yugoslav Republic of', NULL, NULL, NULL),
(129, 'Madagascar', NULL, NULL, NULL),
(130, 'Malawi', NULL, NULL, NULL),
(131, 'Malaysia', NULL, NULL, NULL),
(132, 'Maldives', NULL, NULL, NULL),
(133, 'Mali', NULL, NULL, NULL),
(134, 'Malta', NULL, NULL, NULL),
(135, 'Marshall Islands', NULL, NULL, NULL),
(136, 'Martinique', NULL, NULL, NULL),
(137, 'Mauritania', NULL, NULL, NULL),
(138, 'Mauritius', NULL, NULL, NULL),
(139, 'Mayotte', NULL, NULL, NULL),
(140, 'Mexico', NULL, NULL, NULL),
(141, 'Micronesia, Federated States of', NULL, NULL, NULL),
(142, 'Moldova, Republic of', NULL, NULL, NULL),
(143, 'Monaco', NULL, NULL, NULL),
(144, 'Mongolia', NULL, NULL, NULL),
(145, 'Montserrat', NULL, NULL, NULL),
(146, 'Morocco', NULL, NULL, NULL),
(147, 'Mozambique', NULL, NULL, NULL),
(148, 'Myanmar', NULL, NULL, NULL),
(149, 'Namibia', NULL, NULL, NULL),
(150, 'Nauru', NULL, NULL, NULL),
(151, 'Nepal', NULL, NULL, NULL),
(152, 'Netherlands', NULL, NULL, NULL),
(153, 'Netherlands Antilles', NULL, NULL, NULL),
(154, 'New Caledonia', NULL, NULL, NULL),
(155, 'New Zealand', NULL, NULL, NULL),
(156, 'Nicaragua', NULL, NULL, NULL),
(157, 'Niger', NULL, NULL, NULL),
(158, 'Nigeria', NULL, NULL, NULL),
(159, 'Niue', NULL, NULL, NULL),
(160, 'Norfolk Island', NULL, NULL, NULL),
(161, 'Northern Mariana Islands', NULL, NULL, NULL),
(162, 'Norway', NULL, NULL, NULL),
(163, 'Oman', NULL, NULL, NULL),
(164, 'Pakistan', NULL, NULL, NULL),
(165, 'Palau', NULL, NULL, NULL),
(166, 'Panama', NULL, NULL, NULL),
(167, 'Papua New Guinea', NULL, NULL, NULL),
(168, 'Paraguay', NULL, NULL, NULL),
(169, 'Peru', NULL, NULL, NULL),
(170, 'Philippines', NULL, NULL, NULL),
(171, 'Pitcairn', NULL, NULL, NULL),
(172, 'Poland', NULL, NULL, NULL),
(173, 'Portugal', NULL, NULL, NULL),
(174, 'Puerto Rico', NULL, NULL, NULL),
(175, 'Qatar', NULL, NULL, NULL),
(176, 'Reunion', NULL, NULL, NULL),
(177, 'Romania', NULL, NULL, NULL),
(178, 'Russian Federation', NULL, NULL, NULL),
(179, 'Rwanda', NULL, NULL, NULL),
(180, 'Saint Kitts and Nevis', NULL, NULL, NULL),
(181, 'Saint Lucia', NULL, NULL, NULL),
(182, 'Saint Vincent and the Grenadines', NULL, NULL, NULL),
(183, 'Samoa', NULL, NULL, NULL),
(184, 'San Marino', NULL, NULL, NULL),
(185, 'Sao Tome and Principe', NULL, NULL, NULL),
(186, 'Saudi Arabia', NULL, NULL, NULL),
(187, 'Senegal', NULL, NULL, NULL),
(188, 'Seychelles', NULL, NULL, NULL),
(189, 'Sierra Leone', NULL, NULL, NULL),
(190, 'Singapore', NULL, NULL, NULL),
(191, 'Slovakia (Slovak Republic)', NULL, NULL, NULL),
(192, 'Slovenia', NULL, NULL, NULL),
(193, 'Solomon Islands', NULL, NULL, NULL),
(194, 'Somalia', NULL, NULL, NULL),
(195, 'South Africa', NULL, NULL, NULL),
(196, 'South Georgia and the South Sandwich Islands', NULL, NULL, NULL),
(197, 'Spain', NULL, NULL, NULL),
(198, 'Sri Lanka', NULL, NULL, NULL),
(199, 'St. Helena', NULL, NULL, NULL),
(200, 'St. Pierre and Miquelon', NULL, NULL, NULL),
(201, 'Sudan', NULL, NULL, NULL),
(202, 'Suriname', NULL, NULL, NULL),
(203, 'Svalbard and Jan Mayen Islands', NULL, NULL, NULL),
(204, 'Swaziland', NULL, NULL, NULL),
(205, 'Sweden', NULL, NULL, NULL),
(206, 'Switzerland', NULL, NULL, NULL),
(207, 'Syrian Arab Republic', NULL, NULL, NULL),
(208, 'Taiwan, Province of China', NULL, NULL, NULL),
(209, 'Tajikistan', NULL, NULL, NULL),
(210, 'Tanzania, United Republic of', NULL, NULL, NULL),
(211, 'Thailand', NULL, NULL, NULL),
(212, 'Togo', NULL, NULL, NULL),
(213, 'Tokelau', NULL, NULL, NULL),
(214, 'Tonga', NULL, NULL, NULL),
(215, 'Trinidad and Tobago', NULL, NULL, NULL),
(216, 'Tunisia', NULL, NULL, NULL),
(217, 'Turkey', NULL, NULL, NULL),
(218, 'Turkmenistan', NULL, NULL, NULL),
(219, 'Turks and Caicos Islands', NULL, NULL, NULL),
(220, 'Tuvalu', NULL, NULL, NULL),
(221, 'Uganda', NULL, NULL, NULL),
(222, 'Ukraine', NULL, NULL, NULL),
(223, 'United Arab Emirates', NULL, NULL, NULL),
(224, 'United Kingdom', NULL, NULL, NULL),
(225, 'United States', NULL, NULL, NULL),
(226, 'United States Minor Outlying Islands', NULL, NULL, NULL),
(227, 'Uruguay', NULL, NULL, NULL),
(228, 'Uzbekistan', NULL, NULL, NULL),
(229, 'Vanuatu', NULL, NULL, NULL),
(230, 'Venezuela', NULL, NULL, NULL),
(231, 'Vietnam', NULL, NULL, NULL),
(232, 'Virgin Islands (British)', NULL, NULL, NULL),
(233, 'Virgin Islands (U.S.)', NULL, NULL, NULL),
(234, 'Wallis and Futuna Islands', NULL, NULL, NULL),
(235, 'Western Sahara', NULL, NULL, NULL),
(236, 'Yemen', NULL, NULL, NULL),
(237, 'Yugoslavia', NULL, NULL, NULL),
(238, 'Zambia', NULL, NULL, NULL),
(239, 'Zimbabwe', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `r_id` int(10) UNSIGNED NOT NULL,
  `s_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `status`, `r_id`, `s_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 1, 19, 1, NULL, '2019-12-10 08:27:59', '2019-12-10 08:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/images/default-profile.jpg',
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Unkown',
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` int(11) NOT NULL DEFAULT 1,
  `approve` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `title`, `description`, `address`, `experience`, `country`, `company_name`, `about_company`, `company_logo`, `salary`, `education`, `job_type`, `availability`, `approve`, `user_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'PHP Web Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '2-5', 'Peru', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '26', 'faculty of law', 'hours', 0, 0, 2, NULL, NULL, NULL),
(2, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Web Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '1-10', 'Falkland Islands (Malvinas)', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '63', 'computer science- Auc', 'full_time', 0, 0, 18, NULL, NULL, NULL),
(3, 'Web Developer', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '3-7', 'Kenya', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '76', 'faculty of law', 'hours', 0, 0, 4, NULL, NULL, NULL),
(4, 'PHP Developer', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '1-10', 'Namibia', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '30', 'faculty of commrece', 'full_time', 0, 0, 14, NULL, NULL, NULL),
(5, 'Web Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '5-10', 'Germany', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '88', 'computer science- Auc', 'hours', 0, 0, 4, NULL, NULL, NULL),
(6, 'Web Developer', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '1-7', 'Cambodia', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '38', 'faculty of commrece', 'hours', 0, 0, 6, NULL, NULL, NULL),
(7, 'PHP Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '2-8', 'Kenya', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '73', 'faculty of commrece', 'full_time', 0, 0, 10, NULL, NULL, NULL),
(8, 'PHP Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '3-5', 'Papua New Guinea', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '126', 'computer science- Auc', 'hours', 0, 0, 2, NULL, NULL, NULL),
(9, 'Full Stack Web Developer (PHP / Laravel)', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '2-7', 'Hong Kong', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '119', 'faculty of law', 'full_time', 0, 0, 2, NULL, NULL, NULL),
(10, 'PHP Web Developer', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '2-5', 'Maldives', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '114', 'computer science- Auc', 'full_time', 0, 0, 2, NULL, NULL, NULL),
(11, 'PHP Developer', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '3-10', 'Spain', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '44', 'computer science- Auc', 'full_time', 0, 0, 19, NULL, NULL, NULL),
(12, 'Web Developer', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '3-7', 'Oman', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '65', 'faculty of law', 'hours', 0, 0, 6, NULL, NULL, NULL),
(13, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '3-5', 'Niger', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '78', 'faculty of law', 'hours', 0, 0, 14, NULL, NULL, NULL),
(14, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '3-5', 'East Timor', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '85', 'faculty of commrece', 'hours', 0, 0, 12, NULL, NULL, NULL),
(15, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '2-10', 'Poland', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '102', 'computer science- Auc', 'hours', 0, 0, 16, NULL, NULL, NULL),
(16, 'Web Developer', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '2-7', 'Malta', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '66', 'computer science- Auc', 'hours', 0, 0, 5, NULL, NULL, NULL),
(17, 'PHP Web Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '5-6', 'Niger', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '84', 'faculty of law', 'hours', 0, 0, 17, NULL, NULL, NULL),
(18, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '2-8', 'Spain', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '98', 'faculty of law', 'hours', 0, 0, 6, NULL, NULL, NULL),
(19, 'Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '1-9', 'Rwanda', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '67', 'computer science- Auc', 'full_time', 0, 0, 20, NULL, NULL, NULL),
(20, 'PHP Web Developer', 'WordPress - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '2-9', 'Peru', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '89', 'faculty of law', 'full_time', 0, 0, 2, NULL, NULL, NULL),
(21, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '1-5', 'Cambodia', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '55', 'computer science- Auc', 'full_time', 0, 0, 9, NULL, NULL, NULL),
(22, 'PHP Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '5-5', 'Spain', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '138', 'faculty of commrece', 'hours', 0, 0, 16, NULL, NULL, NULL),
(23, 'PHP Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '5-9', 'Niger', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '34', 'faculty of commrece', 'hours', 0, 0, 20, NULL, NULL, NULL),
(24, 'PHP Developer', 'PHP Web Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '1-9', 'Poland', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '58', 'faculty of law', 'full_time', 0, 0, 20, NULL, NULL, NULL),
(25, 'Web Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '3-6', 'Saint Lucia', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '140', 'faculty of commrece', 'hours', 0, 0, 14, NULL, NULL, NULL),
(26, 'PHP Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '1-9', 'Malta', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '68', 'faculty of commrece', 'full_time', 0, 0, 13, NULL, NULL, NULL),
(27, 'PHP Web Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '3-7', 'Oman', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '85', 'faculty of law', 'full_time', 0, 0, 5, NULL, NULL, NULL),
(28, 'PHP Web Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '4-8', 'Germany', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '37', 'faculty of commrece', 'full_time', 0, 0, 20, NULL, NULL, NULL),
(29, 'PHP Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '2-9', 'East Timor', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '67', 'faculty of commrece', 'hours', 0, 0, 4, NULL, NULL, NULL),
(30, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '4-5', 'Saint Lucia', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '22', 'faculty of law', 'full_time', 0, 0, 11, NULL, NULL, NULL),
(31, 'PHP Developer', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '1-10', 'Antigua and Barbuda', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '147', 'faculty of commrece', 'full_time', 0, 0, 19, NULL, NULL, NULL),
(32, 'PHP Web Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '2-7', 'Hong Kong', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '60', 'computer science- Auc', 'hours', 0, 0, 12, NULL, NULL, NULL),
(33, 'PHP Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '4-6', 'Namibia', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '150', 'computer science- Auc', 'full_time', 0, 0, 16, NULL, NULL, NULL),
(34, 'PHP Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '5-9', 'Oman', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '50', 'faculty of law', 'full_time', 0, 0, 16, NULL, NULL, NULL),
(35, 'PHP Web Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '1-9', 'Niger', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '102', 'faculty of law', 'hours', 0, 0, 2, NULL, NULL, NULL),
(36, 'Web Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '1-6', 'Rwanda', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '119', 'faculty of law', 'hours', 0, 0, 12, NULL, NULL, NULL),
(37, 'PHP Web Developer', 'WordPress - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '5-7', 'Rwanda', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '55', 'faculty of commrece', 'full_time', 0, 0, 8, NULL, NULL, NULL),
(38, 'PHP Web Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '5-7', 'Sri Lanka', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '71', 'computer science- Auc', 'full_time', 0, 0, 1, NULL, NULL, '2019-12-03 17:24:56'),
(39, 'Web Developer', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '4-5', 'East Timor', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '110', 'faculty of commrece', 'hours', 0, 0, 2, NULL, NULL, NULL),
(40, 'Web Developer', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '3-6', 'Gibraltar', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '142', 'faculty of commrece', 'full_time', 0, 0, 11, NULL, NULL, NULL),
(41, 'Web Developer', 'PHP Web Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '5-5', 'Antigua and Barbuda', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '147', 'faculty of law', 'full_time', 1, 0, 3, NULL, NULL, NULL),
(42, 'PHP Web Developer', 'PHP Web Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '2-5', 'Cambodia', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '33', 'computer science- Auc', 'full_time', 0, 0, 17, NULL, NULL, NULL),
(43, 'PHP Developer', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '2-5', 'Burundi', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '82', 'faculty of commrece', 'full_time', 0, 0, 9, NULL, NULL, NULL),
(44, 'Web Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '5-9', 'Saint Lucia', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '54', 'computer science- Auc', 'hours', 0, 0, 20, NULL, NULL, NULL),
(45, 'PHP Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '3-9', 'Malta', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '58', 'computer science- Auc', 'full_time', 0, 0, 11, NULL, NULL, NULL),
(46, 'PHP Web Developer', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '4-6', 'Hong Kong', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '112', 'faculty of commrece', 'full_time', 0, 0, 5, NULL, NULL, NULL),
(47, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '2-7', 'Namibia', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '28', 'faculty of law', 'full_time', 0, 0, 3, NULL, NULL, NULL),
(48, 'PHP Web Developer', 'PHP Web Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '1-5', 'Maldives', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '80', 'computer science- Auc', 'full_time', 1, 0, 14, NULL, NULL, NULL),
(49, 'PHP Web Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '5-6', 'Maldives', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '129', 'computer science- Auc', 'hours', 0, 0, 19, NULL, NULL, NULL),
(50, 'Web Developer', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '5-7', 'Kuwait', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '116', 'computer science- Auc', 'hours', 0, 0, 1, NULL, NULL, '2019-12-03 17:25:01'),
(51, 'Alaa', 'dfghfdn', 'fdnfdn', 'fdnfdn', '0-1', 'Afghanistan', 'fdnfd', 'fdnfd', '/storage/jobs/y5SsY3dxodFyVLge0B0nwnGmzbFyyklxjjasjNZW.jpeg', '22', 'fdn', 'full_time', 1, 0, 1, NULL, '2019-12-07 09:59:45', '2019-12-09 20:36:01'),
(52, 'DevTools failed to parse', 'DevTools failed to parse', 'DevTools failed to parseDevTools failed to parse', 'DevTools failed to parse', '0-1', 'Afghanistan', 'DevTools failed to parse', 'DevTools failed to parse', '/images/default-profile.jpg', '22', 'DevTools failed to parse', 'Full Time', 1, 0, 1, NULL, '2019-12-09 14:10:04', '2019-12-09 14:10:04'),
(53, 'DevTools failed to parse', 'DevTools failed to parse', 'DevTools failed to parseDevTools failed to parse', 'DevTools failed to parse', '0-1', 'Afghanistan', 'DevTools failed to parse', 'DevTools failed to parse', '/images/default-profile.jpg', '22', 'DevTools failed to parse', 'Full Time', 1, 0, 1, NULL, '2019-12-09 14:10:10', '2019-12-09 14:10:10'),
(54, 'DevTools failed to parse', 'DevTools failed to parse', 'DevTools failed to parseDevTools failed to parse', 'DevTools failed to parse', '0-1', 'Afghanistan', 'DevTools failed to parse', 'DevTools failed to parse', '/images/default-profile.jpg', '22', 'DevTools failed to parse', 'Full Time', 1, 0, 1, NULL, '2019-12-09 14:12:35', '2019-12-09 14:12:35'),
(55, 'Create New Job', 'Create New Job', 'Create New JobCreate New JobCreate New JobCreate New Job', 'Create New Job', '1-2', 'Albania', 'Create New JobCreate New Job', 'Create New Job', '/storage/jobs/7xp1N31A4DPQUTYtVklNN0hQ9xrokZmX2pCCrnH2.jpeg', '22', 'DevTools failed to parse', 'Hours', 1, 0, 94, NULL, '2019-12-10 17:26:24', '2019-12-10 17:26:24'),
(56, 'Create New JCreate New Job', 'Create New JobCreate New JobCreate New Job', 'Create New JobCreate New JobCreate New JobCreate New Job', 'Create New JobCreate New Job', '1-2', 'Albania', 'fdnfdCreate New Job', 'fdnfdddddddddddddddddddddddddd', '/images/default-profile.jpg', '22', 'Create New JobCreate New Job', 'Hours', 1, 0, 94, NULL, '2019-12-10 17:28:09', '2019-12-10 17:28:09'),
(57, 'company_logocompany_logocompany_logo', 'company_logocompany_logo', 'company_logocompany_logocompany_logocompany_logocompany_logo', 'company_logo', '0-1', 'Albania', 'company_logocompany_logo', 'company_logo', '/images/default-profile.jpg', '22', 'company_logocompany_logo', 'Hours', 1, 0, 94, NULL, '2019-12-10 17:32:16', '2019-12-10 17:32:16'),
(58, 'company_logo', 'company_logo', 'company_logocompacompany_logony_logocompany_logocompany_logo', 'company_logocompany_logo', '0-1', 'Algeria', 'Create New JobCreate New Job', 'fdnfdddddddddddddddddddddddddd', '/storage/jobs/5xZ0LtnP9mcUJWtP1MUsW0W63Ft9P01FmSGd46jK.jpeg', '22', 'DevTools failed to parse', 'Full Time', 1, 0, 94, NULL, '2019-12-10 17:33:12', '2019-12-11 12:37:40'),
(59, 'Front-End Development', 'Specialized profiles can help you better highlight your expertise when submitting proposals to jobs like these.', 'Hi Everyone,\n\nWe want to build a plugin by Vue.js.\n\nWe have an e-store and we sell women bags, and we want this feature:\n\nWhen the customer login the product page, there are many options for the bag, and the customer can create her style as she wants.\n\nAt first, select bag type (~3 options). then select Color (~10 options). then select Cover (~5 options). then select Hand Grip (~10 options).\n\nWe want, when the customer selects an option, the plugin changes the bag image.\n\nWe will send to you an example later.\n\nThe skills we prefer:\n\n- Experts PHP, Laravel\n- Experts Vue.js\n- CSS, bootstrap\n- GitLab\n- MVP (Minimum viable product)\n- Good English\n\nWe follow MVP methodology (Minimum viable product), and we hope you were work on it previously. it\'s very very important for us.\n\nThanks', 'US - New York', '2-5', 'Algeria', 'Google', 'Google LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, search engine, cloud computing,', '/storage/jobs/bo6GgI6TyUAUO8EKFUn1eNs4D1f3BfLgfb2nlPgI.jpeg', '500', 'Computer Sceince', 'Full Time', 1, 0, 94, NULL, '2019-12-11 10:32:54', '2019-12-11 10:32:54'),
(60, 'PHP Development', 'Specialized profiles can help you better highlight your expertise when submitting proposals to jobs like these.', 'Hi Everyone,\n\nWe want to build a plugin by Vue.js.\n\nWe have an e-store and we sell women bags, and we want this feature:\n\nWhen the customer login the product page, there are many options for the bag, and the customer can create her style as she wants.\n\nAt first, select bag type (~3 options). then select Color (~10 options). then select Cover (~5 options). then select Hand Grip (~10 options).\n\nWe want, when the customer selects an option, the plugin changes the bag image.\n\nWe will send to you an example later.\n\nThe skills we prefer:\n\n- Experts PHP, Laravel\n- Experts Vue.js\n- CSS, bootstrap\n- GitLab\n- MVP (Minimum viable product)\n- Good English\n\nWe follow MVP methodology (Minimum viable product), and we hope you were work on it previously. it\'s very very important for us.\n\nThanks', 'US - New York', '2-5', 'Algeria', 'Google', 'Google LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, search engine, cloud computing,', '/storage/jobs/M4mrwfRs1z5r9aegdhFfIZv2J8rFNm5k2hjLZA9W.jpeg', '500', 'Computer Sceince', 'Full Time', 1, 0, 94, NULL, '2019-12-11 10:34:44', '2019-12-11 10:34:44'),
(61, 'Full-stack Development', 'Specialized profiles can help you better highlight your expertise when submitting proposals to jobs like these.', 'Hi Everyone,\n\nWe want to build a plugin by Vue.js.\n\nWe have an e-store and we sell women bags, and we want this feature:\n\nWhen the customer login the product page, there are many options for the bag, and the customer can create her style as she wants.\n\nAt first, select bag type (~3 options). then select Color (~10 options). then select Cover (~5 options). then select Hand Grip (~10 options).\n\nWe want, when the customer selects an option, the plugin changes the bag image.\n\nWe will send to you an example later.\n\nThe skills we prefer:\n\n- Experts PHP, Laravel\n- Experts Vue.js\n- CSS, bootstrap\n- GitLab\n- MVP (Minimum viable product)\n- Good English\n\nWe follow MVP methodology (Minimum viable product), and we hope you were work on it previously. it\'s very very important for us.\n\nThanks', 'US - New York', '2-5', 'Algeria', 'Google', 'Google LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, search engine, cloud computing,', '/storage/jobs/uZLQpRjd0tumn5vih7RBbewd4LagkHwt8rbjQs1V.png', '500', 'Computer Sceince', 'Full Time', 1, 0, 94, NULL, '2019-12-11 10:35:46', '2019-12-11 10:35:46'),
(62, 'Node JS', 'Specialized profiles can help you better highlight your expertise when submitting proposals to jobs like these.', 'Hi Everyone,\n\nWe want to build a plugin by Vue.js.\n\nWe have an e-store and we sell women bags, and we want this feature:\n\nWhen the customer login the product page, there are many options for the bag, and the customer can create her style as she wants.\n\nAt first, select bag type (~3 options). then select Color (~10 options). then select Cover (~5 options). then select Hand Grip (~10 options).\n\nWe want, when the customer selects an option, the plugin changes the bag image.\n\nWe will send to you an example later.\n\nThe skills we prefer:\n\n- Experts PHP, Laravel\n- Experts Vue.js\n- CSS, bootstrap\n- GitLab\n- MVP (Minimum viable product)\n- Good English\n\nWe follow MVP methodology (Minimum viable product), and we hope you were work on it previously. it\'s very very important for us.\n\nThanks', 'US - New York', '2-5', 'Algeria', 'Google', 'Google LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, search engine, cloud computing,', '/storage/jobs/wxdgQCdTLEjbY6M1wAoNtTLHUpj9QJeQhchI8Uck.png', '500', 'Computer Sceince', 'Full Time', 1, 0, 94, NULL, '2019-12-11 10:36:56', '2019-12-11 10:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`id`, `skill_id`, `job_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 11, 4, NULL, NULL, NULL),
(2, 24, 34, NULL, NULL, NULL),
(3, 33, 39, NULL, NULL, NULL),
(4, 29, 13, NULL, NULL, NULL),
(5, 18, 26, NULL, NULL, NULL),
(6, 3, 3, NULL, NULL, NULL),
(7, 6, 16, NULL, NULL, NULL),
(8, 30, 2, NULL, NULL, NULL),
(9, 4, 9, NULL, NULL, NULL),
(10, 2, 20, NULL, NULL, NULL),
(11, 15, 23, NULL, NULL, NULL),
(12, 11, 37, NULL, NULL, NULL),
(13, 29, 25, NULL, NULL, NULL),
(14, 32, 21, NULL, NULL, NULL),
(15, 34, 1, NULL, NULL, NULL),
(16, 9, 17, NULL, NULL, NULL),
(17, 2, 31, NULL, NULL, NULL),
(18, 14, 12, NULL, NULL, NULL),
(19, 3, 5, NULL, NULL, NULL),
(20, 33, 24, NULL, NULL, NULL),
(21, 33, 8, NULL, NULL, NULL),
(22, 19, 2, NULL, NULL, NULL),
(23, 16, 29, NULL, NULL, NULL),
(24, 18, 33, NULL, NULL, NULL),
(25, 37, 32, NULL, NULL, NULL),
(26, 27, 16, NULL, NULL, NULL),
(27, 18, 22, NULL, NULL, NULL),
(28, 3, 29, NULL, NULL, NULL),
(29, 18, 32, NULL, NULL, NULL),
(30, 25, 23, NULL, NULL, NULL),
(31, 7, 12, NULL, NULL, NULL),
(32, 11, 31, NULL, NULL, NULL),
(33, 12, 17, NULL, NULL, NULL),
(34, 7, 12, NULL, NULL, NULL),
(35, 17, 37, NULL, NULL, NULL),
(36, 13, 33, NULL, NULL, NULL),
(37, 23, 10, NULL, NULL, NULL),
(38, 35, 7, NULL, NULL, NULL),
(39, 1, 27, NULL, NULL, NULL),
(40, 19, 8, NULL, NULL, NULL),
(41, 17, 40, NULL, NULL, NULL),
(42, 14, 17, NULL, NULL, NULL),
(43, 38, 30, NULL, NULL, NULL),
(44, 35, 28, NULL, NULL, NULL),
(45, 37, 1, NULL, NULL, NULL),
(46, 13, 11, NULL, NULL, NULL),
(47, 36, 11, NULL, NULL, NULL),
(48, 4, 29, NULL, NULL, NULL),
(49, 3, 40, NULL, NULL, NULL),
(50, 11, 31, NULL, NULL, NULL),
(51, 5, 39, NULL, NULL, NULL),
(52, 36, 5, NULL, NULL, NULL),
(53, 40, 19, NULL, NULL, NULL),
(54, 26, 31, NULL, NULL, NULL),
(55, 26, 34, NULL, NULL, NULL),
(56, 7, 15, NULL, NULL, NULL),
(57, 37, 19, NULL, NULL, NULL),
(58, 13, 5, NULL, NULL, NULL),
(59, 10, 1, NULL, NULL, NULL),
(60, 9, 4, NULL, NULL, NULL),
(61, 10, 13, NULL, NULL, NULL),
(62, 12, 22, NULL, NULL, NULL),
(63, 2, 14, NULL, NULL, NULL),
(64, 22, 39, NULL, NULL, NULL),
(65, 22, 2, NULL, NULL, NULL),
(66, 23, 39, NULL, NULL, NULL),
(67, 36, 4, NULL, NULL, NULL),
(68, 26, 38, NULL, NULL, NULL),
(69, 35, 7, NULL, NULL, NULL),
(70, 36, 22, NULL, NULL, NULL),
(71, 39, 7, NULL, NULL, NULL),
(72, 17, 29, NULL, NULL, NULL),
(73, 9, 18, NULL, NULL, NULL),
(74, 35, 37, NULL, NULL, NULL),
(75, 18, 3, NULL, NULL, NULL),
(76, 16, 30, NULL, NULL, NULL),
(77, 7, 18, NULL, NULL, NULL),
(78, 22, 29, NULL, NULL, NULL),
(79, 34, 39, NULL, NULL, NULL),
(80, 4, 40, NULL, NULL, NULL),
(81, 36, 40, NULL, NULL, NULL),
(82, 14, 5, NULL, NULL, NULL),
(83, 10, 16, NULL, NULL, NULL),
(84, 9, 31, NULL, NULL, NULL),
(85, 39, 18, NULL, NULL, NULL),
(86, 34, 38, NULL, NULL, NULL),
(87, 23, 22, NULL, NULL, NULL),
(88, 10, 9, NULL, NULL, NULL),
(89, 27, 17, NULL, NULL, NULL),
(90, 20, 9, NULL, NULL, NULL),
(91, 32, 7, NULL, NULL, NULL),
(92, 26, 12, NULL, NULL, NULL),
(93, 31, 19, NULL, NULL, NULL),
(94, 34, 38, NULL, NULL, NULL),
(95, 18, 26, NULL, NULL, NULL),
(96, 28, 29, NULL, NULL, NULL),
(97, 16, 40, NULL, NULL, NULL),
(98, 15, 30, NULL, NULL, NULL),
(99, 21, 21, NULL, NULL, NULL),
(100, 23, 25, NULL, NULL, NULL),
(101, 16, 20, NULL, NULL, NULL),
(102, 27, 37, NULL, NULL, NULL),
(103, 21, 37, NULL, NULL, NULL),
(104, 17, 19, NULL, NULL, NULL),
(105, 23, 1, NULL, NULL, NULL),
(106, 8, 27, NULL, NULL, NULL),
(107, 34, 4, NULL, NULL, NULL),
(108, 21, 12, NULL, NULL, NULL),
(109, 29, 38, NULL, NULL, NULL),
(110, 7, 12, NULL, NULL, NULL),
(111, 11, 7, NULL, NULL, NULL),
(112, 2, 29, NULL, NULL, NULL),
(113, 39, 14, NULL, NULL, NULL),
(114, 35, 39, NULL, NULL, NULL),
(115, 35, 26, NULL, NULL, NULL),
(116, 27, 6, NULL, NULL, NULL),
(117, 8, 13, NULL, NULL, NULL),
(118, 21, 29, NULL, NULL, NULL),
(119, 36, 10, NULL, NULL, NULL),
(120, 31, 24, NULL, NULL, NULL),
(121, 34, 40, NULL, NULL, NULL),
(122, 25, 28, NULL, NULL, NULL),
(123, 30, 26, NULL, NULL, NULL),
(124, 25, 34, NULL, NULL, NULL),
(125, 11, 27, NULL, NULL, NULL),
(126, 34, 40, NULL, NULL, NULL),
(127, 19, 27, NULL, NULL, NULL),
(128, 18, 1, NULL, NULL, NULL),
(129, 6, 4, NULL, NULL, NULL),
(130, 6, 8, NULL, NULL, NULL),
(131, 25, 13, NULL, NULL, NULL),
(132, 19, 15, NULL, NULL, NULL),
(133, 17, 20, NULL, NULL, NULL),
(134, 33, 12, NULL, NULL, NULL),
(135, 21, 29, NULL, NULL, NULL),
(136, 16, 20, NULL, NULL, NULL),
(137, 15, 33, NULL, NULL, NULL),
(138, 32, 19, NULL, NULL, NULL),
(139, 23, 36, NULL, NULL, NULL),
(140, 26, 18, NULL, NULL, NULL),
(141, 34, 36, NULL, NULL, NULL),
(142, 25, 9, NULL, NULL, NULL),
(143, 38, 1, NULL, NULL, NULL),
(144, 16, 36, NULL, NULL, NULL),
(145, 40, 5, NULL, NULL, NULL),
(146, 22, 3, NULL, NULL, NULL),
(147, 19, 26, NULL, NULL, NULL),
(148, 21, 35, NULL, NULL, NULL),
(149, 21, 30, NULL, NULL, NULL),
(150, 3, 12, NULL, NULL, NULL),
(151, 18, 37, NULL, NULL, NULL),
(152, 7, 24, NULL, NULL, NULL),
(153, 17, 29, NULL, NULL, NULL),
(154, 32, 11, NULL, NULL, NULL),
(155, 10, 17, NULL, NULL, NULL),
(156, 21, 3, NULL, NULL, NULL),
(157, 15, 17, NULL, NULL, NULL),
(158, 25, 5, NULL, NULL, NULL),
(159, 39, 40, NULL, NULL, NULL),
(160, 39, 21, NULL, NULL, NULL),
(161, 27, 5, NULL, NULL, NULL),
(162, 33, 17, NULL, NULL, NULL),
(163, 7, 28, NULL, NULL, NULL),
(164, 39, 25, NULL, NULL, NULL),
(165, 1, 15, NULL, NULL, NULL),
(166, 12, 7, NULL, NULL, NULL),
(167, 30, 12, NULL, NULL, NULL),
(168, 12, 29, NULL, NULL, NULL),
(169, 18, 11, NULL, NULL, NULL),
(170, 17, 27, NULL, NULL, NULL),
(171, 2, 21, NULL, NULL, NULL),
(172, 10, 4, NULL, NULL, NULL),
(173, 29, 10, NULL, NULL, NULL),
(174, 11, 20, NULL, NULL, NULL),
(175, 16, 30, NULL, NULL, NULL),
(176, 34, 18, NULL, NULL, NULL),
(177, 22, 4, NULL, NULL, NULL),
(178, 24, 3, NULL, NULL, NULL),
(179, 9, 20, NULL, NULL, NULL),
(180, 22, 8, NULL, NULL, NULL),
(181, 30, 6, NULL, NULL, NULL),
(182, 37, 1, NULL, NULL, NULL),
(183, 26, 7, NULL, NULL, NULL),
(184, 3, 6, NULL, NULL, NULL),
(185, 37, 23, NULL, NULL, NULL),
(186, 5, 12, NULL, NULL, NULL),
(187, 31, 22, NULL, NULL, NULL),
(188, 10, 1, NULL, NULL, NULL),
(189, 14, 6, NULL, NULL, NULL),
(190, 11, 14, NULL, NULL, NULL),
(191, 28, 4, NULL, NULL, NULL),
(192, 34, 31, NULL, NULL, NULL),
(193, 32, 20, NULL, NULL, NULL),
(194, 2, 38, NULL, NULL, NULL),
(195, 36, 6, NULL, NULL, NULL),
(196, 10, 34, NULL, NULL, NULL),
(197, 2, 38, NULL, NULL, NULL),
(198, 20, 27, NULL, NULL, NULL),
(199, 30, 6, NULL, NULL, NULL),
(200, 22, 31, NULL, NULL, NULL),
(201, 2, 51, NULL, NULL, NULL),
(202, 4, 51, NULL, NULL, NULL),
(203, 5, 51, NULL, NULL, NULL),
(204, 2, 52, NULL, NULL, NULL),
(205, 3, 52, NULL, NULL, NULL),
(206, 5, 52, NULL, NULL, NULL),
(207, 2, 53, NULL, NULL, NULL),
(208, 3, 53, NULL, NULL, NULL),
(209, 5, 53, NULL, NULL, NULL),
(210, 2, 54, NULL, NULL, NULL),
(211, 3, 54, NULL, NULL, NULL),
(212, 5, 54, NULL, NULL, NULL),
(213, 2, 55, NULL, NULL, NULL),
(214, 5, 55, NULL, NULL, NULL),
(215, 2, 56, NULL, NULL, NULL),
(216, 3, 56, NULL, NULL, NULL),
(217, 3, 57, NULL, NULL, NULL),
(218, 5, 57, NULL, NULL, NULL),
(219, 2, 58, NULL, NULL, NULL),
(220, 5, 58, NULL, NULL, NULL),
(221, 2, 59, NULL, NULL, NULL),
(222, 3, 59, NULL, NULL, NULL),
(223, 4, 59, NULL, NULL, NULL),
(224, 5, 59, NULL, NULL, NULL),
(225, 1, 59, NULL, NULL, NULL),
(226, 6, 59, NULL, NULL, NULL),
(227, 7, 59, NULL, NULL, NULL),
(228, 8, 59, NULL, NULL, NULL),
(229, 2, 60, NULL, NULL, NULL),
(230, 3, 60, NULL, NULL, NULL),
(231, 4, 60, NULL, NULL, NULL),
(232, 5, 60, NULL, NULL, NULL),
(233, 1, 60, NULL, NULL, NULL),
(234, 6, 60, NULL, NULL, NULL),
(235, 7, 60, NULL, NULL, NULL),
(236, 8, 60, NULL, NULL, NULL),
(237, 2, 61, NULL, NULL, NULL),
(238, 3, 61, NULL, NULL, NULL),
(239, 4, 61, NULL, NULL, NULL),
(240, 5, 61, NULL, NULL, NULL),
(241, 1, 61, NULL, NULL, NULL),
(242, 6, 61, NULL, NULL, NULL),
(243, 7, 61, NULL, NULL, NULL),
(244, 8, 61, NULL, NULL, NULL),
(245, 2, 62, NULL, NULL, NULL),
(246, 3, 62, NULL, NULL, NULL),
(247, 4, 62, NULL, NULL, NULL),
(248, 5, 62, NULL, NULL, NULL),
(249, 1, 62, NULL, NULL, NULL),
(250, 6, 62, NULL, NULL, NULL),
(251, 7, 62, NULL, NULL, NULL),
(252, 8, 62, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `msg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `read` int(11) NOT NULL DEFAULT 0,
  `read_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stored_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msg`, `r_id`, `user_id`, `read`, `read_at`, `stored_at`, `created_at`, `updated_at`) VALUES
(1, 'renrt', 2, 1, 0, '', '', '0000-00-00 00:00:00', NULL),
(2, 'rtn', 2, 1, 0, '', '', '0000-00-00 00:00:00', NULL),
(3, 'rtntr', 2, 1, 0, '', '', '0000-00-00 00:00:00', NULL),
(4, 'hi', 2, 1, 0, '', '', '0000-00-00 00:00:00', NULL),
(5, 'hi', 1, 2, 0, '', '', '0000-00-00 00:00:00', NULL),
(6, 'hgijlkg', 2, 1, 0, '', '', '0000-00-00 00:00:00', NULL),
(7, 'dn', 19, 1, 0, '', '', '0000-00-00 00:00:00', NULL),
(8, 'hello ', 94, 1, 0, '', '', '0000-00-00 00:00:00', NULL),
(9, 'hi there', 94, 1, 0, '', '', '0000-00-00 00:00:00', NULL),
(10, 'hi', 2, 94, 0, '', '', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(21, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(22, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(23, '2016_06_01_000004_create_oauth_clients_table', 1),
(24, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(25, '2018_07_31_234854_create_jobs_table', 1),
(26, '2018_08_01_022244_create_skills_table', 1),
(27, '2018_08_01_220711_job_skills_name_table', 1),
(28, '2018_08_02_032028_create_bookmarks_table', 1),
(29, '2018_08_02_145640_create_applies_table', 1),
(30, '2018_08_08_212733_create_user_skills_table', 1),
(31, '2018_08_09_213347_create_country_table', 1),
(32, '2018_08_11_192640_create_follows_table', 1),
(33, '2018_08_12_002342_create_messages_table', 1),
(34, '2018_08_13_023610_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0660600b005d103254c4409b60b0cfca823fada19ae2fce9d55559f4b0d4a3bce23fdb5a8cd92d27', 1, 2, NULL, '[]', 0, '2019-12-07 16:46:01', '2019-12-07 16:46:01', '2020-12-07 18:46:01'),
('11bc5f2d0b522cf35159c86fa2e5650ff50b2f06034462208cad486a2032959f659a497e95daf8ca', 1, 2, NULL, '[]', 0, '2019-12-07 09:24:07', '2019-12-07 09:24:07', '2020-12-07 11:24:07'),
('15f4c9bb6bfa7b96e47a6bafb6353f861c195d5d3edbd31c5f3db685bb6b72166765ce9bbd9d51d0', 1, 2, NULL, '[]', 0, '2019-12-09 11:45:35', '2019-12-09 11:45:35', '2020-12-09 13:45:35'),
('1c1d07da2fd2958f10e391bf189f98f1ec15b94fdddcc27aa9e0fb63d53ec9695cba94d23244dcde', 94, 2, NULL, '[]', 0, '2019-12-11 12:51:59', '2019-12-11 12:51:59', '2020-12-11 14:51:59'),
('1ea00ceadefbd0f0a22d36346fae3c1a98a83486a134b6a8e91df6865af50c0759d36057478dd4a8', 1, 2, NULL, '[]', 0, '2019-12-05 18:28:06', '2019-12-05 18:28:06', '2020-12-05 20:28:06'),
('208b5b297cf4c9393d4e63fcf283bf514c1519fb8eb78e56c762b44f71bef7237a2529d1665bb317', 1, 2, NULL, '[]', 0, '2019-12-05 17:39:07', '2019-12-05 17:39:07', '2020-12-05 19:39:07'),
('2397f7edfae63b71918db9739075142fd30b33124977fad1a7daf1a1aad5833697005e36f8bd8527', 1, 2, NULL, '[]', 0, '2019-12-05 14:07:03', '2019-12-05 14:07:03', '2020-12-05 16:07:03'),
('246e54c589d9d4a7280ef88c9b5348eba50c4944d63297a39d8bd4e1708df2b03da7cedd962dd420', 1, 2, NULL, '[]', 0, '2019-12-09 11:56:37', '2019-12-09 11:56:37', '2020-12-09 13:56:37'),
('26219f0f373d675295489765dc175ea7358c23883eea8392a72428b1aa9cbd33d033d670cfee1e32', 1, 2, NULL, '[]', 0, '2019-12-05 09:04:50', '2019-12-05 09:04:50', '2020-12-05 11:04:50'),
('272636760cee4bc11118ec1b13a6d32443879170bf181f6a3f1b86efd4d31b357e51bd523b8278af', 1, 2, NULL, '[]', 0, '2019-12-09 11:40:15', '2019-12-09 11:40:15', '2020-12-09 13:40:15'),
('2a97255d9cb4b88aea7f75a2cd27b1afddc32ac51958ee447bd608ced7e687672cc15febd098de27', 1, 2, NULL, '[]', 0, '2019-12-05 17:38:54', '2019-12-05 17:38:54', '2020-12-05 19:38:54'),
('2b1608b5cdb6a1baac0a748b896f713d0a67d9aea3bd60c34b63a9a804ce63d91cca632f86f5487b', 1, 2, NULL, '[]', 0, '2019-08-25 17:43:19', '2019-08-25 17:43:19', '2020-08-25 19:43:19'),
('2bfcf820e9b0c734e8f07d9c67e2c322a56516e56e58e33c9228a03e26f010ac8dd2ecfdb010b0f6', 1, 2, NULL, '[]', 0, '2019-12-09 20:18:48', '2019-12-09 20:18:48', '2020-12-09 22:18:48'),
('3001291c46778d4a7cb5d16062ddd17aad49fa19d691fb9f3705c53475a863c1055bf558ed87796b', 1, 2, NULL, '[]', 0, '2019-12-05 16:27:23', '2019-12-05 16:27:23', '2020-12-05 18:27:23'),
('3443f7f47ae6d809fb63727ba1c5e7df81d7d065830aa6e24feff6bddf2e08fb9325c371f0de3ec8', 1, 2, NULL, '[]', 0, '2019-12-05 18:00:55', '2019-12-05 18:00:55', '2020-12-05 20:00:55'),
('37259e712e6f7e261e04c149dbe1a2c4e24db843c7cf6db00afaf7091be9bd4c1383a50612563890', 1, 2, NULL, '[]', 0, '2019-12-05 16:01:14', '2019-12-05 16:01:14', '2020-12-05 18:01:14'),
('38fc749fc6cf9d5514f9b6ca447de3172ebaa6d100e7b45c49e2af2c6368fd3fdc09f314d5b6dc7e', 1, 2, NULL, '[]', 0, '2019-12-05 18:47:45', '2019-12-05 18:47:45', '2020-12-05 20:47:45'),
('3b2eec0f0013b3f2fcbc7f3d1aeddbf4c64ed498038362e01b95652fc675708bff5097c42254a51a', 94, 2, NULL, '[]', 0, '2019-12-11 12:49:05', '2019-12-11 12:49:05', '2020-12-11 14:49:05'),
('3c4a90fe276c06517b11244f8d3e844e454ed47ba30cc43ad5fe242639e2c73f96f53e57e37cd811', 1, 2, NULL, '[]', 0, '2019-12-10 08:39:22', '2019-12-10 08:39:22', '2020-12-10 10:39:22'),
('43dff67ecb97b80c840f80192231b39d66ab356e8ced2e38ee9f5419cf4609b5f75a1b3a54cc7707', 1, 2, NULL, '[]', 0, '2019-12-07 08:38:45', '2019-12-07 08:38:45', '2020-12-07 10:38:45'),
('45e3160020ec0868a752a9a1618711904f9428965e32cca60aa9abd409a537269671ff9ffdea83d2', 1, 2, NULL, '[]', 0, '2019-12-05 17:22:22', '2019-12-05 17:22:22', '2020-12-05 19:22:22'),
('4a06e9a7ae3fc6c34193481727f32de5d7db5995a6d491b020a8aa46df01824e39b075a2d5261b67', 1, 2, NULL, '[]', 0, '2019-12-05 18:44:50', '2019-12-05 18:44:50', '2020-12-05 20:44:50'),
('4a326c5bc75211c75890a0f4c8dbe3e5dd61ad5cfd9a4a19bbafd3c61c968566e3f91408a5f40635', 1, 2, NULL, '[]', 0, '2019-12-05 16:27:59', '2019-12-05 16:27:59', '2020-12-05 18:27:59'),
('4a666b24e4da216e6fddef5098254e71250ec57cfa8d411fe3dfbaf7a653fb5bb9bc07809537566c', 94, 2, NULL, '[]', 0, '2019-12-11 12:54:55', '2019-12-11 12:54:55', '2020-12-11 14:54:55'),
('58796111241bfb6a2613c90bf4b6a49e660f1e507c04285534ce8d22bb25bab4a8c4cf38ef8553b7', 1, 2, NULL, '[]', 0, '2019-12-07 16:28:11', '2019-12-07 16:28:11', '2020-12-07 18:28:11'),
('58f7a7bedaa1ddc6836401bcd6467bc52d4743badff1c250a5540110e06af1841ffbd7cb41c3380f', 1, 2, NULL, '[]', 0, '2019-12-07 09:41:05', '2019-12-07 09:41:05', '2020-12-07 11:41:05'),
('5953aeaf180566d68dc30c1fb31702768f8d6493bb554dc424c9f90dc71affe1b43c8fc1e853cf9a', 1, 2, NULL, '[]', 0, '2019-12-07 16:22:14', '2019-12-07 16:22:14', '2020-12-07 18:22:14'),
('602eddb893ef0cd707d6c58d40492233695945bdfb5e1c832301e8e5ac74cfc74097ae04ca6429a1', 1, 2, NULL, '[]', 0, '2019-12-05 14:58:47', '2019-12-05 14:58:47', '2020-12-05 16:58:47'),
('60d3de1679a83dfaceb08c7af5f9d0457bea9e84394c9ef1df1e75bd0597ac542c1bd3bb125f6e7d', 1, 2, NULL, '[]', 0, '2019-12-05 16:26:04', '2019-12-05 16:26:04', '2020-12-05 18:26:04'),
('67ade2d1d014b1148ebbef1ce57a0d7b6e3043ac54ca03ff81d629c6be98d624418c317cf6b2d459', 1, 2, NULL, '[]', 0, '2019-12-09 08:34:39', '2019-12-09 08:34:39', '2020-12-09 10:34:39'),
('6959b76d111b82e7b1ba81f0fcb63d8ef442308ea897a53f4961bcf2791a372bb7b096954311954d', 94, 2, NULL, '[]', 0, '2019-12-10 08:36:37', '2019-12-10 08:36:37', '2020-12-10 10:36:37'),
('6fcfadcb02105c0e3ba54f030867042e79ba46754d4445b157c6bb004de4e9a932b9e6b35ca16e7f', 1, 2, NULL, '[]', 0, '2019-12-05 16:25:54', '2019-12-05 16:25:54', '2020-12-05 18:25:54'),
('75f91e8e8f976ad45aef5b6d11c1394622eb9fb4931f2f5c638d7ee2a0ca985888473395fe432222', 1, 2, NULL, '[]', 0, '2019-12-07 11:25:45', '2019-12-07 11:25:45', '2020-12-07 13:25:45'),
('798967c91d15f215cd37cbc38e70a01cda89b23b70718080a78433f9f39f7fb194b833472ebb111f', 1, 2, NULL, '[]', 0, '2019-12-03 17:21:00', '2019-12-03 17:21:00', '2020-12-03 19:21:00'),
('7e136325662aa51e8d923708dbf113422b18ec78716255a4028b0dcf53cdccd84e6b975d3f3681a1', 94, 2, NULL, '[]', 0, '2019-12-11 12:50:57', '2019-12-11 12:50:57', '2020-12-11 14:50:57'),
('810c7213ae252e8b12acf4278da2c2516fc59f6e198886e096393fdbb390f9d74bbcdd6e38150975', 1, 2, NULL, '[]', 0, '2019-12-05 14:27:35', '2019-12-05 14:27:35', '2020-12-05 16:27:35'),
('81283eb8b7dfb13a7d0afbe86c7d6e0a06db1cf739c3a61bfee171ef69f0424b3ff78dae07736eef', 1, 2, NULL, '[]', 0, '2019-12-05 16:09:33', '2019-12-05 16:09:33', '2020-12-05 18:09:33'),
('82b1720746d21c69961a4e295ae73a9eb333e165de758bbde387410cd7bd79025090613efe2ae2f6', 1, 2, NULL, '[]', 0, '2019-08-25 22:12:02', '2019-08-25 22:12:02', '2020-08-26 00:12:02'),
('82b7f73a337460efd99a380f0a7a03a467f24fc486e02bd2513a3b2fd64ddc86abbdb5435f00d54d', 1, 2, NULL, '[]', 0, '2019-12-04 12:36:30', '2019-12-04 12:36:30', '2020-12-04 14:36:30'),
('862be24e9815a891f4bafe0c2ba898dd79b36428d592dc3b18834d26093e320f7207fff924267636', 1, 2, NULL, '[]', 0, '2019-12-05 16:15:10', '2019-12-05 16:15:10', '2020-12-05 18:15:10'),
('87f1e3c31259e893da4e18e6ffb36676c5df34e457d5f43d7bbac8b6a51b69805db5081c5e65918b', 1, 2, NULL, '[]', 0, '2019-12-07 08:38:46', '2019-12-07 08:38:46', '2020-12-07 10:38:46'),
('8d49031d2ce7ed81231ec82f47d7d76acee2bef6251f590ad6fa46e01dfe793adf266ad88c77fb17', 1, 2, NULL, '[]', 0, '2019-12-05 18:00:31', '2019-12-05 18:00:31', '2020-12-05 20:00:31'),
('8e4296ab74634aca6c4398b6f8bd20c47e64b180b6e216083c1cfd89da5b63c015426b55808827cd', 1, 2, NULL, '[]', 0, '2019-12-07 09:20:43', '2019-12-07 09:20:43', '2020-12-07 11:20:43'),
('90cc6d5f5020784db37cf6c14907a18a919785ab76797085e0faded060a204bcc78a29eb39c5612d', 1, 2, NULL, '[]', 0, '2019-12-05 18:47:35', '2019-12-05 18:47:35', '2020-12-05 20:47:35'),
('90fe5084f154b7e03ee9d90a463aa017f117da9ce4725a136f186a02a1c47a966993d5def132aae5', 1, 2, NULL, '[]', 0, '2019-12-05 09:08:00', '2019-12-05 09:08:00', '2020-12-05 11:08:00'),
('91a1ac2a247df5b2cc2916100df7d49d95afbecf9f1fd216758b36498b9e55570597143a1c366c14', 94, 2, NULL, '[]', 0, '2019-12-11 09:52:39', '2019-12-11 09:52:39', '2020-12-11 11:52:39'),
('9277b0370c53cc2ff308b07f1f26818766ee2f33bae6a4bd2e2b312d85e59e90d0eedec6cb63fef8', 1, 2, NULL, '[]', 0, '2019-12-07 16:41:44', '2019-12-07 16:41:44', '2020-12-07 18:41:44'),
('980c22404d0ba3130eaedceb2812a08b23d378f447b6244785b4bd5216f73a8975156c5bae59e685', 1, 2, NULL, '[]', 0, '2019-12-07 16:31:15', '2019-12-07 16:31:15', '2020-12-07 18:31:15'),
('99c9e7e947ee11c058ed085628bc941abcfbf257d403b3cc993e6905d59bdc655d2acbb6d5505313', 94, 2, NULL, '[]', 0, '2019-12-11 12:30:04', '2019-12-11 12:30:04', '2020-12-11 14:30:04'),
('9a5f2bebb704834bb8484f174f2d72be36593838d5a460a56dacf08b8642d1c22a08d18dc5e43efe', 1, 2, NULL, '[]', 0, '2019-12-09 11:39:07', '2019-12-09 11:39:07', '2020-12-09 13:39:07'),
('9c54b8ca0632b1e1c0b93ef58e58f1621ac23c3f61fb1021db6c4fba6bca203ec0a675956e32c186', 94, 2, NULL, '[]', 0, '2019-12-10 17:25:56', '2019-12-10 17:25:56', '2020-12-10 19:25:56'),
('9d84c4905a45c1645a32c14c6c9fa671f0341d15fee38eac06193261ab6999bf9dda2a0fbd6711c5', 1, 2, NULL, '[]', 0, '2019-07-15 16:34:57', '2019-07-15 16:34:57', '2020-07-15 18:34:57'),
('a02d972284394a417ed9ecc95c398638cf4eeca42ec4b1144445dea4ebd0519c7b8cc7a89d3fa029', 1, 2, NULL, '[]', 0, '2019-12-09 11:44:26', '2019-12-09 11:44:26', '2020-12-09 13:44:26'),
('a1e15134a59d92a894f4a2989a44c81f09996df3bc86834292cb2673c0d9a45b6541fcb9369318dc', 94, 2, NULL, '[]', 0, '2019-12-11 12:52:39', '2019-12-11 12:52:39', '2020-12-11 14:52:39'),
('a28d1c031bc7f78062e7ab440961c1d2a0efe1a1a089b8c0b31770c14225280bb36331fc4cafefba', 95, 2, NULL, '[]', 0, '2019-12-11 12:57:24', '2019-12-11 12:57:24', '2020-12-11 14:57:24'),
('a67bf5d73feeb27542bb0ccbcfb844d2d0d723d1f299c026250cc246cb715986fb91e91a65d14c09', 94, 2, NULL, '[]', 0, '2019-12-11 12:51:53', '2019-12-11 12:51:53', '2020-12-11 14:51:53'),
('a75ada03c24a0e6b96bb29d0169b1deca82ee2ee60dc3833754965ab8e45c0602afecb9e02f7ff4f', 1, 2, NULL, '[]', 0, '2019-12-09 11:51:28', '2019-12-09 11:51:28', '2020-12-09 13:51:28'),
('a8190fda264bcd9b6a1c976356287efda186e4d8faf043a843d56ff1f9e27ed5579e6eafd3420c5c', 1, 2, NULL, '[]', 0, '2019-12-05 19:08:25', '2019-12-05 19:08:25', '2020-12-05 21:08:25'),
('aebfa88580b3f8848f9d4b5ea9ab62cd129fa4fe2b2d18e7f50f69b9259de439b5da930d2b991861', 1, 2, NULL, '[]', 0, '2019-07-10 15:57:44', '2019-07-10 15:57:44', '2020-07-10 17:57:44'),
('b2809f82919918755d95c2041eb5429f9b5bd74525da64d9058da24d0551b69bfbc95ecaae2c04e8', 1, 2, NULL, '[]', 0, '2019-12-07 16:41:57', '2019-12-07 16:41:57', '2020-12-07 18:41:57'),
('b403cd71ceca293add47f5f291c78c63811d2dd1a5fb0fc1337ef4d77e78e3f6ebbc4c0ae0457ec4', 1, 2, NULL, '[]', 0, '2019-12-07 16:49:33', '2019-12-07 16:49:33', '2020-12-07 18:49:33'),
('b41fceddebca725570be9e90f0f1e7e81a1ea0b002976c92b06a75a678d2b922782e5c4b43954a5f', 1, 2, NULL, '[]', 0, '2019-12-07 16:29:35', '2019-12-07 16:29:35', '2020-12-07 18:29:35'),
('b60d1831fd325de633894fe85b6bb2994b992e9a8bf050a2bb8fcbc68d093215017ebcf92ab504e1', 1, 2, NULL, '[]', 0, '2019-12-05 15:27:59', '2019-12-05 15:27:59', '2020-12-05 17:27:59'),
('b6e9d7523216dde865dc9138544d1ad9777f6cd07a1ccb71be88db53276c55c101ea753649a25c84', 1, 2, NULL, '[]', 0, '2019-12-05 17:22:01', '2019-12-05 17:22:01', '2020-12-05 19:22:01'),
('b96c9c99c0cb021bcd0c6559839db6c746352fe5783e54efd798f7b273fda8b39a98dc31bd89b080', 1, 2, NULL, '[]', 0, '2019-12-05 17:41:22', '2019-12-05 17:41:22', '2020-12-05 19:41:22'),
('bada48c0cbb670e40e776aabc33998f71675c28d129af9bc880b59e6a8244aee4d792a6fc65c90d4', 94, 2, NULL, '[]', 0, '2019-12-11 12:55:08', '2019-12-11 12:55:08', '2020-12-11 14:55:08'),
('bde92f17c7ec69e0e430e2597943842073e42f682c35b6b309c7468c499aa9732c37e6d9e151fbff', 1, 2, NULL, '[]', 0, '2019-12-09 20:27:06', '2019-12-09 20:27:06', '2020-12-09 22:27:06'),
('c252fbb5430c614a6dc66342f072aadde3a315602d99d1b7a2cafe0e07d23d8bdf1a5fb37ff27f2d', 94, 2, NULL, '[]', 0, '2019-12-11 12:51:44', '2019-12-11 12:51:44', '2020-12-11 14:51:44'),
('c413632b94fe727ee40c5fc5afdd0632fc11c9dceac27aa8f1c629be2b880c5ccaed409c1564ca74', 1, 2, NULL, '[]', 0, '2019-12-05 15:57:42', '2019-12-05 15:57:42', '2020-12-05 17:57:42'),
('c422c6a16438db950fc1e5e37b209f770e2856829739904789bd19ec615d163b5bd478ab08897948', 1, 2, NULL, '[]', 0, '2019-07-15 16:36:26', '2019-07-15 16:36:26', '2020-07-15 18:36:26'),
('c76bafcea9d3730d82bc7f1cf389598552118801f1a7ade226bf588ffa74c883e6d6d4ecacf96557', 1, 2, NULL, '[]', 0, '2019-12-05 18:27:59', '2019-12-05 18:27:59', '2020-12-05 20:27:59'),
('c9cc390fe890235b6a27aaf98270ce68dafd0e64b1771874f378fe96dfff83ca109891db4ffd284e', 1, 2, NULL, '[]', 0, '2019-12-09 15:40:06', '2019-12-09 15:40:06', '2020-12-09 17:40:06'),
('cec6bf23f2c4a5f5465cf53d9660d3790e76bc7852b6b4e2db07dede3b29138084fdb92eefcb5bde', 1, 2, NULL, '[]', 0, '2019-12-04 12:34:43', '2019-12-04 12:34:43', '2020-12-04 14:34:43'),
('d0edfc261d37628a3d96df01f7e759904ee510740ad6c6424731ab7a4766a5948355d9296effb161', 1, 2, NULL, '[]', 0, '2019-12-07 10:26:51', '2019-12-07 10:26:51', '2020-12-07 12:26:51'),
('d25ef141572e2bdd927666027830983f5bd6eac132bfb8b22fcb8331f05dcdc60a35bca7eccb1df8', 1, 2, NULL, '[]', 0, '2019-12-09 11:35:27', '2019-12-09 11:35:27', '2020-12-09 13:35:27'),
('db6b10094a38a9c8c290ea21ff69449b9ad90e93f212756f09308cc4b797e6049c676b523d731a0e', 1, 2, NULL, '[]', 0, '2019-12-08 11:33:06', '2019-12-08 11:33:06', '2020-12-08 13:33:06'),
('dc36c59df60941398ea8d02c4e75754e75cb6160f6cae8c5e83a34aa6e697c64ebb80f14c810d57e', 1, 2, NULL, '[]', 0, '2019-12-05 18:00:47', '2019-12-05 18:00:47', '2020-12-05 20:00:47'),
('dc6d2b1d740bcb891e695f404f9dbf7eeed60c57c95446b971b20b9d05a53454a0cb9346f155c88f', 94, 2, NULL, '[]', 0, '2019-12-11 12:56:21', '2019-12-11 12:56:21', '2020-12-11 14:56:21'),
('defae899bf0206a1f0357938fa794612d0470d5eb9125b1b3fd4061d5040944d19809c4e423de0a4', 94, 2, NULL, '[]', 0, '2019-12-10 18:03:26', '2019-12-10 18:03:26', '2020-12-10 20:03:26'),
('e36c05a51864c31f5e9f96f6f37b7c7aade9b22d2d4e8e653fe8e76f861b195c9ae92a0d66e616c5', 1, 2, NULL, '[]', 0, '2019-12-09 11:43:48', '2019-12-09 11:43:48', '2020-12-09 13:43:48'),
('e4c800136f6188d266e29c6f3bc15f4f705dd5d9b8bdd44a7326cc479170b9bfc0ec15873b1d5094', 1, 2, NULL, '[]', 0, '2019-12-07 16:29:27', '2019-12-07 16:29:27', '2020-12-07 18:29:27'),
('e7dc33e8a503fcbcbd46328987e94549d2fc49cdfbde7392aaff57ce362f150515b7e7f91fd816a5', 1, 2, NULL, '[]', 0, '2019-12-10 08:25:33', '2019-12-10 08:25:33', '2020-12-10 10:25:33'),
('e9f0b626d2a0ed2339f45eb3eabe3c92fec27e58d174e1e3d21df213d57869aec38fe51286081acc', 1, 2, NULL, '[]', 0, '2019-12-05 17:30:20', '2019-12-05 17:30:20', '2020-12-05 19:30:20'),
('eb112d619d0018ddc275824fc8fb77ff26480e66e32fd81cb41e8107d2408122b541cbf7e013b6bf', 1, 2, NULL, '[]', 0, '2019-12-05 17:32:46', '2019-12-05 17:32:46', '2020-12-05 19:32:46'),
('ecc46e32ced7a301334eea9f284583cbdb4ced67603acdc7808138211864879c61fba7d0c89c0ba1', 1, 2, NULL, '[]', 0, '2019-12-08 11:49:49', '2019-12-08 11:49:49', '2020-12-08 13:49:49'),
('ee9a7d97b8085151283bf862ad21270e2a50ac783ad709f1b96f0f47dd44ab143d67c02267537d56', 1, 2, NULL, '[]', 0, '2019-12-05 16:27:29', '2019-12-05 16:27:29', '2020-12-05 18:27:29'),
('f5c8f8e3e48084018e6b178093bc1106ec0bd83c27a1e6ea64008fe05bbbcc156cdb956a5726d66a', 1, 2, NULL, '[]', 0, '2019-12-07 16:41:43', '2019-12-07 16:41:43', '2020-12-07 18:41:43'),
('f77bb437ade83d5252d7eb39a4fc4be0dd249687260151b971772489f029e17f8b29a6679b62c67c', 1, 2, NULL, '[]', 0, '2019-07-11 10:46:59', '2019-07-11 10:46:59', '2020-07-11 12:46:59'),
('f9e4374531bc3908d18b63849dd522faeca29f67f88de1a132cf14239b5452043e215b0d98e4c3fb', 2, 2, NULL, '[]', 0, '2019-07-11 10:55:24', '2019-07-11 10:55:24', '2020-07-11 12:55:24'),
('fbd073acce9c94bbc4d6937bbb464748b94ed867bc756f787a45f7b6e6a9dd642506e573b00fd68a', 1, 2, NULL, '[]', 0, '2019-12-05 15:50:59', '2019-12-05 15:50:59', '2020-12-05 17:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'TJBs8Q9ozZayT5qXOuY0BWcSnfxq88dy5088V8wE', 'http://localhost', 1, 0, 0, '2019-07-10 15:04:45', '2019-07-10 15:04:45'),
(2, NULL, 'Laravel Password Grant Client', 'JbnJTu70hB1hJlTzBjCFxBsOjRniJZZP98F26Xbq', 'http://localhost', 0, 1, 0, '2019-07-10 15:04:46', '2019-07-10 15:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-10 15:04:46', '2019-07-10 15:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('00ddb6492a8f8d0c32ab0e3a3af575383c8065e95b95af50c2cecaaa406259b0fe75160906037d91', 'dc6d2b1d740bcb891e695f404f9dbf7eeed60c57c95446b971b20b9d05a53454a0cb9346f155c88f', 0, '2020-12-11 14:56:21'),
('0539d7498a1dab8b2c1f13fedba33179f174630a3f7228d1305d0376222874c4d571fb84dc4cf392', '75f91e8e8f976ad45aef5b6d11c1394622eb9fb4931f2f5c638d7ee2a0ca985888473395fe432222', 0, '2020-12-07 13:25:45'),
('0d0e8659bba883b9380bf183569a6499d3da3481156e8a96d7372f81589ad4a7e1f1969cffa94011', '2a97255d9cb4b88aea7f75a2cd27b1afddc32ac51958ee447bd608ced7e687672cc15febd098de27', 0, '2020-12-05 19:38:54'),
('194c4202f9781a7b99c959771085fe79e268e728d9fe550c6860bf073b0f2c36208591af545ec4f2', '8d49031d2ce7ed81231ec82f47d7d76acee2bef6251f590ad6fa46e01dfe793adf266ad88c77fb17', 0, '2020-12-05 20:00:31'),
('1b8157604b129411df6a05e9e407ac87d7e7ab63ff17d23e73e38c5455c732da7a321169801515a1', '90cc6d5f5020784db37cf6c14907a18a919785ab76797085e0faded060a204bcc78a29eb39c5612d', 0, '2020-12-05 20:47:35'),
('1f90c6fa53e4861bcf9a7bfcec57b8c377b1a10cc438fcf380404ab9aad039e28673267bdf89e811', 'db6b10094a38a9c8c290ea21ff69449b9ad90e93f212756f09308cc4b797e6049c676b523d731a0e', 0, '2020-12-08 13:33:06'),
('2418dece7b78063366ace52cd89deed23877f4493cf5ec6abf982929c09d293ba5d7513ccc8e07f7', '9a5f2bebb704834bb8484f174f2d72be36593838d5a460a56dacf08b8642d1c22a08d18dc5e43efe', 0, '2020-12-09 13:39:07'),
('2a0d97ca84c20337298c6bd5b33b9dd8acfb7e7d8732769ee19eb1047d44721afd05aabc2922637a', 'b96c9c99c0cb021bcd0c6559839db6c746352fe5783e54efd798f7b273fda8b39a98dc31bd89b080', 0, '2020-12-05 19:41:23'),
('2c1f02d48dea5dee49f95a51bdfa9297f9318c309b37c55ce9c82152a12a92e13cebc53128490cfd', 'dc36c59df60941398ea8d02c4e75754e75cb6160f6cae8c5e83a34aa6e697c64ebb80f14c810d57e', 0, '2020-12-05 20:00:47'),
('2c2c0949fe16e2424d9ae17923125a4fbecdf34198c9b69689ab12938379c1af2ad3c8798a5f68bd', '82b7f73a337460efd99a380f0a7a03a467f24fc486e02bd2513a3b2fd64ddc86abbdb5435f00d54d', 0, '2020-12-04 14:36:30'),
('2c767250ee54838bbeac34ec8aa222351e8650e32c6e9c7f2b126a89040da438fa1e95a3ac06f17f', 'c413632b94fe727ee40c5fc5afdd0632fc11c9dceac27aa8f1c629be2b880c5ccaed409c1564ca74', 0, '2020-12-05 17:57:42'),
('2d44d2cf2e8901c6884f50d6ac5ce157e0695a7d55129ee206f88514d677af6c4b30cd4ef818caea', 'c76bafcea9d3730d82bc7f1cf389598552118801f1a7ade226bf588ffa74c883e6d6d4ecacf96557', 0, '2020-12-05 20:27:59'),
('2edd772e298e6782c12bc1c7daf98ab2c46065ddfd1e055d2c37055623600f2683dec28f2947bd1a', '60d3de1679a83dfaceb08c7af5f9d0457bea9e84394c9ef1df1e75bd0597ac542c1bd3bb125f6e7d', 0, '2020-12-05 18:26:04'),
('35278b9e35bd883f9f7e83d193ea0a5d61acd17a7c6425af70b0b37a64e45fbb2c927b6ce43ef24b', '246e54c589d9d4a7280ef88c9b5348eba50c4944d63297a39d8bd4e1708df2b03da7cedd962dd420', 0, '2020-12-09 13:56:37'),
('361a8244d4610e98ded3f2ef87cdf552ef09579d953007df5d7eb3223bd2dea05e758affe71fa1e1', '87f1e3c31259e893da4e18e6ffb36676c5df34e457d5f43d7bbac8b6a51b69805db5081c5e65918b', 0, '2020-12-07 10:38:47'),
('3699d0569c6a1160a2de6715889cfc117c32d380fc591975fb962cc40f09a112981311d8a630d976', 'b41fceddebca725570be9e90f0f1e7e81a1ea0b002976c92b06a75a678d2b922782e5c4b43954a5f', 0, '2020-12-07 18:29:35'),
('3a4860b220e69568f2926d009e3bf97539dcc1dabe23e3c40cfff3491df4d8695599894974bae286', '9277b0370c53cc2ff308b07f1f26818766ee2f33bae6a4bd2e2b312d85e59e90d0eedec6cb63fef8', 0, '2020-12-07 18:41:44'),
('3ae3e6fb2aa6dd062f34b2f6c95cd40fb438ee6d5059fe94e6654f5547e0bdc14718e729a0f43e56', '11bc5f2d0b522cf35159c86fa2e5650ff50b2f06034462208cad486a2032959f659a497e95daf8ca', 0, '2020-12-07 11:24:07'),
('3baaed00b16cc3102a991617c87e556a802946ba698ce8f6291211be99404d1b3886c33325697719', '2bfcf820e9b0c734e8f07d9c67e2c322a56516e56e58e33c9228a03e26f010ac8dd2ecfdb010b0f6', 0, '2020-12-09 22:18:49'),
('3e1a577332414f9705fd9f39478c2534f0b1e1492330c6b854f3508842627cd81a9f14a0436e3d4b', '82b1720746d21c69961a4e295ae73a9eb333e165de758bbde387410cd7bd79025090613efe2ae2f6', 0, '2020-08-26 00:12:02'),
('3f4fa8b674199cc324db021367d57cdca0478a5f51b94e33917834de90e90e2a3cc5206a3872f341', '6959b76d111b82e7b1ba81f0fcb63d8ef442308ea897a53f4961bcf2791a372bb7b096954311954d', 0, '2020-12-10 10:36:37'),
('40db2ab1b1243a8a6336e1885b8242d179a46f27ce550dc46d268b82e3be29fdfa37afdd0b930c60', '3b2eec0f0013b3f2fcbc7f3d1aeddbf4c64ed498038362e01b95652fc675708bff5097c42254a51a', 0, '2020-12-11 14:49:05'),
('43269b04327c4e0cd6635f830745ff59cd966a9e49333addcd8adbc3ab96a6f39750a4608bf1aaea', '208b5b297cf4c9393d4e63fcf283bf514c1519fb8eb78e56c762b44f71bef7237a2529d1665bb317', 0, '2020-12-05 19:39:07'),
('4416ac41260b767a2d570d4e1bf6f37a06cf98921f5146f9e8fb19f3b1a0e6b6856130d842ba30c6', 'd0edfc261d37628a3d96df01f7e759904ee510740ad6c6424731ab7a4766a5948355d9296effb161', 0, '2020-12-07 12:26:51'),
('4757d31d02ae788ec7bb786fc50e380d910c595c2a9f05f153a6fbb90e308d06b3e22fddbc6b8208', '67ade2d1d014b1148ebbef1ce57a0d7b6e3043ac54ca03ff81d629c6be98d624418c317cf6b2d459', 0, '2020-12-09 10:34:40'),
('47b9363e1a1e1d931f2fe769d975c0df4abe72afc1f5d1c0cffb54305f8095edf2f78d26efed844e', '15f4c9bb6bfa7b96e47a6bafb6353f861c195d5d3edbd31c5f3db685bb6b72166765ce9bbd9d51d0', 0, '2020-12-09 13:45:35'),
('47d75b7601b16050963eb8c1b24aaf7bb5a152addad6c4c2953b874ffb0af72a6d89c94843ef46e1', '37259e712e6f7e261e04c149dbe1a2c4e24db843c7cf6db00afaf7091be9bd4c1383a50612563890', 0, '2020-12-05 18:01:15'),
('480838827b8f6ad68b6cf2bd0d9815bf0c2b5d161895c1e806444ae6ec1056adafef916aca29812a', '1ea00ceadefbd0f0a22d36346fae3c1a98a83486a134b6a8e91df6865af50c0759d36057478dd4a8', 0, '2020-12-05 20:28:06'),
('4b01437c083d5952f4a0b902c280880a8c775e4f738061b67ba26132394bb7a292ecf9779bcbe7ab', '5953aeaf180566d68dc30c1fb31702768f8d6493bb554dc424c9f90dc71affe1b43c8fc1e853cf9a', 0, '2020-12-07 18:22:14'),
('4c46563ba58a0e07b0dbe5b6ef2fad6e83c8aeeb873d667859d69de355c164b7aefef854d7f6e493', '8e4296ab74634aca6c4398b6f8bd20c47e64b180b6e216083c1cfd89da5b63c015426b55808827cd', 0, '2020-12-07 11:20:43'),
('5452c38782e73b6c46a13e71069596aff95477ba36ec80222b60e975e068137d4aec2316c8204ce0', 'bada48c0cbb670e40e776aabc33998f71675c28d129af9bc880b59e6a8244aee4d792a6fc65c90d4', 0, '2020-12-11 14:55:08'),
('5656809c98f8d88fa67229e64b1b318d79d66de039704a46b0ddcf1e3f5481c79be9b96b193ee8de', 'b60d1831fd325de633894fe85b6bb2994b992e9a8bf050a2bb8fcbc68d093215017ebcf92ab504e1', 0, '2020-12-05 17:27:59'),
('57e8729319aa8be8a109f052ad7a57c2de9580c9735072063b2d3207e9efec72e1faa84294f30d0a', '3c4a90fe276c06517b11244f8d3e844e454ed47ba30cc43ad5fe242639e2c73f96f53e57e37cd811', 0, '2020-12-10 10:39:22'),
('599c7387fd80e0015a2813bc8280547b42213eb3903bb0c49f801cafe6ce2627b713f0d0823474f4', 'b2809f82919918755d95c2041eb5429f9b5bd74525da64d9058da24d0551b69bfbc95ecaae2c04e8', 0, '2020-12-07 18:41:57'),
('5a912904fd4849a602afe2471a0d1e621e358ccb36d6c2ec8725bc56b3c18c53b6a28217da28aba7', '38fc749fc6cf9d5514f9b6ca447de3172ebaa6d100e7b45c49e2af2c6368fd3fdc09f314d5b6dc7e', 0, '2020-12-05 20:47:45'),
('5ba2194de0be806f6bb352bb69dc0b3a1a3ae35cf804e53269c17db5a3df29f86963c0491fbd47a2', '3001291c46778d4a7cb5d16062ddd17aad49fa19d691fb9f3705c53475a863c1055bf558ed87796b', 0, '2020-12-05 18:27:23'),
('62139571cc54a08a134fa8ec9dbadb52874534518ce6f5a6be66057a7c6c515791046bce522dd24b', 'cec6bf23f2c4a5f5465cf53d9660d3790e76bc7852b6b4e2db07dede3b29138084fdb92eefcb5bde', 0, '2020-12-04 14:34:43'),
('65d1b9b6ea9eaa4cb3f6e613ee3237331b86760a0b69354fd2e29f93c3590df020243ee94edae5f2', 'a75ada03c24a0e6b96bb29d0169b1deca82ee2ee60dc3833754965ab8e45c0602afecb9e02f7ff4f', 0, '2020-12-09 13:51:28'),
('66ab07fbd576907e0d88e8e1ce13cd3fc04dc3a9436a2d99cdaa83d30b9f71c25b96f518023fe2c3', 'fbd073acce9c94bbc4d6937bbb464748b94ed867bc756f787a45f7b6e6a9dd642506e573b00fd68a', 0, '2020-12-05 17:50:59'),
('6876ed146a7a4fc39e10695b951a7691b15f75a93682a2b3e4a97cf75ca41168b2b7c47b39973bc9', 'a8190fda264bcd9b6a1c976356287efda186e4d8faf043a843d56ff1f9e27ed5579e6eafd3420c5c', 0, '2020-12-05 21:08:25'),
('69ed2225441c6e3241437f7a99a1709a3d1abad90f654998fdb79365eef457b28153cfcd08acfe3d', '798967c91d15f215cd37cbc38e70a01cda89b23b70718080a78433f9f39f7fb194b833472ebb111f', 0, '2020-12-03 19:21:00'),
('6bd170afa6067e50185b217fce51fe7fef3dbe93ff970c13b3102c2e7a38ba69d04ded3ec1ffaecd', '2397f7edfae63b71918db9739075142fd30b33124977fad1a7daf1a1aad5833697005e36f8bd8527', 0, '2020-12-05 16:07:03'),
('718e9bdd22d75744cd154f782a6325c13fe6147c3214e56b3ce7540fe75c4e5de5df550c45d05fb8', '45e3160020ec0868a752a9a1618711904f9428965e32cca60aa9abd409a537269671ff9ffdea83d2', 0, '2020-12-05 19:22:22'),
('749194681f73fb66a7a67fe68c2069a56e9c72352ddc7950b83fb48183d8456220641acc9e33471e', 'eb112d619d0018ddc275824fc8fb77ff26480e66e32fd81cb41e8107d2408122b541cbf7e013b6bf', 0, '2020-12-05 19:32:46'),
('7556d494ded0af693f11cdd93f096f6a3d181d7e83feaba8deead0aa447290ee8a37661b4dfea01c', '58796111241bfb6a2613c90bf4b6a49e660f1e507c04285534ce8d22bb25bab4a8c4cf38ef8553b7', 0, '2020-12-07 18:28:11'),
('7d859ff2b163a08d210686713395d5ef079ea3c77f54646a8b2c6ded0c947cbc6abe172a0cb13c53', '6fcfadcb02105c0e3ba54f030867042e79ba46754d4445b157c6bb004de4e9a932b9e6b35ca16e7f', 0, '2020-12-05 18:25:54'),
('7e5ff7e7782214a2b64de2ccae23c7a3f3fba968b165952c24e5631124fd00d45f18000c0552506b', '90fe5084f154b7e03ee9d90a463aa017f117da9ce4725a136f186a02a1c47a966993d5def132aae5', 0, '2020-12-05 11:08:00'),
('812a7411a765eeb43437bfab97e93709d0d87ef3da9f83dfdd402c7dab4622b40fcb0a80e16385c2', '810c7213ae252e8b12acf4278da2c2516fc59f6e198886e096393fdbb390f9d74bbcdd6e38150975', 0, '2020-12-05 16:27:35'),
('81b73c9154b4b1c602f276fd7a9ee6b3af8786c442763cfcb4589f0bb81e9ab99de32fe1430ab769', '58f7a7bedaa1ddc6836401bcd6467bc52d4743badff1c250a5540110e06af1841ffbd7cb41c3380f', 0, '2020-12-07 11:41:05'),
('8ba3247e7912005dfcdd1dd36aeceab083af96cfac6b88f722d25e38aca10061c90a36695fd88c77', 'c422c6a16438db950fc1e5e37b209f770e2856829739904789bd19ec615d163b5bd478ab08897948', 0, '2020-07-15 18:36:26'),
('8c484abf6ba4ead360f46a5660a7dd1a99c269146ec3391aa926c63376100624f55967fc9bcd5475', 'e4c800136f6188d266e29c6f3bc15f4f705dd5d9b8bdd44a7326cc479170b9bfc0ec15873b1d5094', 0, '2020-12-07 18:29:27'),
('90cecb4f435276be06bc89b6d320103579efd32937569265c5fa1846741610c22d1fc53914666d3e', '99c9e7e947ee11c058ed085628bc941abcfbf257d403b3cc993e6905d59bdc655d2acbb6d5505313', 0, '2020-12-11 14:30:04'),
('91396be377a87eaf02f4b92204f6c4838ff3cf03152fa7941169519fbee34e61ca09c7b49542d61d', '980c22404d0ba3130eaedceb2812a08b23d378f447b6244785b4bd5216f73a8975156c5bae59e685', 0, '2020-12-07 18:31:15'),
('9ba2cf88955c84d1db74114041bfcd59fe68e72e5df59574d4bc9a466bc81b0e629edf3c39b43514', 'd25ef141572e2bdd927666027830983f5bd6eac132bfb8b22fcb8331f05dcdc60a35bca7eccb1df8', 0, '2020-12-09 13:35:27'),
('9cdc5524cfc347a76417d53d0163b6da9de15145d6e3b6b34664fa4af9f34984e3264a8256de7997', 'a02d972284394a417ed9ecc95c398638cf4eeca42ec4b1144445dea4ebd0519c7b8cc7a89d3fa029', 0, '2020-12-09 13:44:27'),
('a04760de9f4bf1ae243e9c8d68a8b91711076c1aa39a285c96cab189748ef0ca880eab1ba62eefbe', '0660600b005d103254c4409b60b0cfca823fada19ae2fce9d55559f4b0d4a3bce23fdb5a8cd92d27', 0, '2020-12-07 18:46:01'),
('a2cd4f170fe197973e4c16c085518503646f0b792a825e815e772e0b05fd0c369dcf60bd3bf134cd', '2b1608b5cdb6a1baac0a748b896f713d0a67d9aea3bd60c34b63a9a804ce63d91cca632f86f5487b', 0, '2020-08-25 19:43:19'),
('a2ee01e2d574c1e01a794fdcbd6c41ba4d2d121d7cc0bb5bb0caef32c2e25ec24970bb5258919d54', 'b6e9d7523216dde865dc9138544d1ad9777f6cd07a1ccb71be88db53276c55c101ea753649a25c84', 0, '2020-12-05 19:22:02'),
('a4792c3851e349f9b76cc765a8eeacf932448c0e9ba1c6bbe6d98aae3bec7b6972e3384d4cc3b872', '1c1d07da2fd2958f10e391bf189f98f1ec15b94fdddcc27aa9e0fb63d53ec9695cba94d23244dcde', 0, '2020-12-11 14:51:59'),
('a6405a591b9bd0016394f52622a908cd0dff4b0688d34c473028d70964e59847881659713746d131', '602eddb893ef0cd707d6c58d40492233695945bdfb5e1c832301e8e5ac74cfc74097ae04ca6429a1', 0, '2020-12-05 16:58:47'),
('ace7602f0b858809ceca10f7b78e7bbb990066a884800f6fa6c48c33dba1e26916eaa2720d2021fa', '862be24e9815a891f4bafe0c2ba898dd79b36428d592dc3b18834d26093e320f7207fff924267636', 0, '2020-12-05 18:15:10'),
('aea9832124749625a57e405b92aa690086bb49116380c30c2459396dc0732cbe9869659470cb120f', 'ee9a7d97b8085151283bf862ad21270e2a50ac783ad709f1b96f0f47dd44ab143d67c02267537d56', 0, '2020-12-05 18:27:29'),
('b0f86ab530edcd85d157face910c838d7edc1945da5e6259c4171bf4de08d66544c60875f7a43f58', 'f77bb437ade83d5252d7eb39a4fc4be0dd249687260151b971772489f029e17f8b29a6679b62c67c', 0, '2020-07-11 12:46:59'),
('b5a4801a7eff9809f6cd8a324f10813c9986c4db8d3eaddf991581242b795f2b1dd1121b35bc7de4', '272636760cee4bc11118ec1b13a6d32443879170bf181f6a3f1b86efd4d31b357e51bd523b8278af', 0, '2020-12-09 13:40:15'),
('b8367bbe89ad72f7e42c750eb19b1516060e6a801e148257184c3f668f44b3f571b22f3b11e75043', 'c252fbb5430c614a6dc66342f072aadde3a315602d99d1b7a2cafe0e07d23d8bdf1a5fb37ff27f2d', 0, '2020-12-11 14:51:44'),
('b8995bf75e19a0e783b3b4123b7da325994199c4ff01db0e364ed7ef77d65e3964b3d21d109344b0', 'a67bf5d73feeb27542bb0ccbcfb844d2d0d723d1f299c026250cc246cb715986fb91e91a65d14c09', 0, '2020-12-11 14:51:53'),
('bb0b2cb40583bb8f3af5c7480a2ab4db5ccc6e3d22f267a0fef1b4ccae612367dbde5eb35e7ba545', 'a28d1c031bc7f78062e7ab440961c1d2a0efe1a1a089b8c0b31770c14225280bb36331fc4cafefba', 0, '2020-12-11 14:57:24'),
('bb5c16f97f3bf877f0b0e93b9653f48fb15c4118ca1425f9453a486166e7f332f5420cfd1a38a403', 'e9f0b626d2a0ed2339f45eb3eabe3c92fec27e58d174e1e3d21df213d57869aec38fe51286081acc', 0, '2020-12-05 19:30:20'),
('bf05934799f046c85494d696856faa5a2567606136f7cd0f7b92acd5ac73437ec320ade8e41e80d4', '3443f7f47ae6d809fb63727ba1c5e7df81d7d065830aa6e24feff6bddf2e08fb9325c371f0de3ec8', 0, '2020-12-05 20:00:55'),
('d254a35e09d7beed221327b1727acdaea5ae8cc8609bd3e2629e44f31ce320d7038bf6002b01cd7f', 'b403cd71ceca293add47f5f291c78c63811d2dd1a5fb0fc1337ef4d77e78e3f6ebbc4c0ae0457ec4', 0, '2020-12-07 18:49:33'),
('d37587400ec46857d7551e39233e71e1cbc434e1902d0baf9a494b4b9fba2d2dbba2e9a33d7b2fbe', '91a1ac2a247df5b2cc2916100df7d49d95afbecf9f1fd216758b36498b9e55570597143a1c366c14', 0, '2020-12-11 11:52:39'),
('d5ba6e365066ca0c0d92de799c62504f74d3d2fef609e8050e8187cfbb63a8d0561c82f3b5e7cdf1', 'f5c8f8e3e48084018e6b178093bc1106ec0bd83c27a1e6ea64008fe05bbbcc156cdb956a5726d66a', 0, '2020-12-07 18:41:43'),
('d63071b9dc365139f9b8b651e5e5128af5eb19b86ccb640eb4842b9f83582e2887832ec8518ff0d6', 'a1e15134a59d92a894f4a2989a44c81f09996df3bc86834292cb2673c0d9a45b6541fcb9369318dc', 0, '2020-12-11 14:52:40'),
('da231272939bc4c3e7f5aa5ebeb0175fa8c71b56a9c242f0d7ead4e149a1d0ce6efe613b97d9df3b', '9d84c4905a45c1645a32c14c6c9fa671f0341d15fee38eac06193261ab6999bf9dda2a0fbd6711c5', 0, '2020-07-15 18:34:57'),
('ddeef98353dc467c0b3b5ace50649a59e03192a037b9b72802a7c08ce29da2d687fe8c2f2c903e10', '9c54b8ca0632b1e1c0b93ef58e58f1621ac23c3f61fb1021db6c4fba6bca203ec0a675956e32c186', 0, '2020-12-10 19:25:56'),
('ddf8b6013925d9f9320cd1c012e6dee253fbb28dcddc336e394d3408dd7990b0e0ba98930564ab42', 'e7dc33e8a503fcbcbd46328987e94549d2fc49cdfbde7392aaff57ce362f150515b7e7f91fd816a5', 0, '2020-12-10 10:25:33'),
('de15135c13ab2f6dd8118c90f4bd1f1756f4601f7c1fc1d6aa89d05e254dae8d97c4298cce67498b', 'ecc46e32ced7a301334eea9f284583cbdb4ced67603acdc7808138211864879c61fba7d0c89c0ba1', 0, '2020-12-08 13:49:49'),
('e1021e713135da7ab1a0aefe2b5d396ab9b853f684b5c865af598e73a07ee1ed529d37e1c0bc8735', 'e36c05a51864c31f5e9f96f6f37b7c7aade9b22d2d4e8e653fe8e76f861b195c9ae92a0d66e616c5', 0, '2020-12-09 13:43:48'),
('e23c0ee8cf1e2a66d42c7e3c5363a55008a60fc993fcc2e2043eacd549d6039dd1ac79e8fcf896a3', 'f9e4374531bc3908d18b63849dd522faeca29f67f88de1a132cf14239b5452043e215b0d98e4c3fb', 0, '2020-07-11 12:55:25'),
('e3baf647ed4eab8ca2b4dd3826eaaa74a3506c5fc0205f6bd2e3de345c5360b45d46f6e35ea6904a', '4a06e9a7ae3fc6c34193481727f32de5d7db5995a6d491b020a8aa46df01824e39b075a2d5261b67', 0, '2020-12-05 20:44:51'),
('e70f44a4bd0baf72a13932bbf15a31dc6e426d9b8a18b8e6783873bc59521073cd9bee9020d357d0', '7e136325662aa51e8d923708dbf113422b18ec78716255a4028b0dcf53cdccd84e6b975d3f3681a1', 0, '2020-12-11 14:50:57'),
('e9f5b09e94caeb79fd51f31b28bebb2b1a64226bb79f714addacdcb0a2937808f0c9a43f01b066d2', '4a326c5bc75211c75890a0f4c8dbe3e5dd61ad5cfd9a4a19bbafd3c61c968566e3f91408a5f40635', 0, '2020-12-05 18:27:59'),
('eb14fa110e7cecd9dfc3d6ea627f844c2a82bd1ad421d4b44e4fcd3dde90a8705f88c4c18c99b301', 'c9cc390fe890235b6a27aaf98270ce68dafd0e64b1771874f378fe96dfff83ca109891db4ffd284e', 0, '2020-12-09 17:40:06'),
('ed85eac9744e64ebbb47728ad5f12c864857384f32329095728533c973f47d066b0c42093bff89ae', 'bde92f17c7ec69e0e430e2597943842073e42f682c35b6b309c7468c499aa9732c37e6d9e151fbff', 0, '2020-12-09 22:27:06'),
('f16062145db530b99e667d3a255f18b18f3a40dd9e734a2080b5acf07a12e1aacf2a770ca1addeb2', '43dff67ecb97b80c840f80192231b39d66ab356e8ced2e38ee9f5419cf4609b5f75a1b3a54cc7707', 0, '2020-12-07 10:38:45'),
('f2c1f479d7ed8eb6acb6dcfaf004275765e28cf9db397363d5762a89fa6ab9c76c4e5aaa67e5d589', 'aebfa88580b3f8848f9d4b5ea9ab62cd129fa4fe2b2d18e7f50f69b9259de439b5da930d2b991861', 0, '2020-07-10 17:57:44'),
('f335836446731c6c0a568054e885f8970c00a4af5cb194a5dd3139bb26f5fe534f7837654675b9a5', '26219f0f373d675295489765dc175ea7358c23883eea8392a72428b1aa9cbd33d033d670cfee1e32', 0, '2020-12-05 11:04:50'),
('f6921f05b42357b0258dd4a424245b665a8543a2252f9bcfa5d6aeceb09640a544b1ffbc8b3ef177', '81283eb8b7dfb13a7d0afbe86c7d6e0a06db1cf739c3a61bfee171ef69f0424b3ff78dae07736eef', 0, '2020-12-05 18:09:34'),
('f8245ccae412dacd538ffbeaae352b224ad8c61fb6a63c3fffc945059379602402938a1163d8d19f', 'defae899bf0206a1f0357938fa794612d0470d5eb9125b1b3fd4061d5040944d19809c4e423de0a4', 0, '2020-12-10 20:03:26'),
('fb265d17ae9830888d534900e942d61b0b4cbe9b53d3fcf746c5133e87cdc2b2e5f06e217549355a', '4a666b24e4da216e6fddef5098254e71250ec57cfa8d411fe3dfbaf7a653fb5bb9bc07809537566c', 0, '2020-12-11 14:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'WordPress', NULL, NULL, NULL),
(2, 'Microsoft', NULL, NULL, NULL),
(3, 'Office', NULL, NULL, NULL),
(4, 'Adobe', NULL, NULL, NULL),
(5, 'Photoshop', NULL, NULL, NULL),
(6, 'Adobe Photoshop', NULL, NULL, NULL),
(7, 'Adobe Illustrator', NULL, NULL, NULL),
(8, 'Adobe Indesign', NULL, NULL, NULL),
(9, 'Interface Design', NULL, NULL, NULL),
(10, 'Information Technology (IT)', NULL, NULL, NULL),
(11, 'Graphic Design', NULL, NULL, NULL),
(12, 'Web Design', NULL, NULL, NULL),
(13, 'HTML', NULL, NULL, NULL),
(14, 'CSS', NULL, NULL, NULL),
(15, 'jQuery', NULL, NULL, NULL),
(16, 'Bootstrap Framework', NULL, NULL, NULL),
(17, 'Testing', NULL, NULL, NULL),
(18, 'Animation', NULL, NULL, NULL),
(19, 'Human Resources (HR)', NULL, NULL, NULL),
(20, 'Recruitment', NULL, NULL, NULL),
(21, 'Interviews', NULL, NULL, NULL),
(22, 'Employee Relations', NULL, NULL, NULL),
(23, 'Employment Law', NULL, NULL, NULL),
(24, 'IT/Software Development', NULL, NULL, NULL),
(25, 'Marketing/PR/Advertising', NULL, NULL, NULL),
(26, 'Project/Program Management', NULL, NULL, NULL),
(27, 'Startup', NULL, NULL, NULL),
(28, 'magento', NULL, NULL, NULL),
(29, 'HTML5', NULL, NULL, NULL),
(30, 'CSS3', NULL, NULL, NULL),
(31, 'PostgreSQL', NULL, NULL, NULL),
(32, 'GitPlus', NULL, NULL, NULL),
(33, 'Angular', NULL, NULL, NULL),
(34, 'TypeScript', NULL, NULL, NULL),
(35, 'React', NULL, NULL, NULL),
(36, 'Computer Science', NULL, NULL, NULL),
(37, 'Software Engineering', NULL, NULL, NULL),
(38, 'Python', NULL, NULL, NULL),
(39, 'Web Development', NULL, NULL, NULL),
(40, 'Software Development', NULL, NULL, NULL),
(41, 'Linux', NULL, NULL, NULL),
(42, 'Diango', NULL, NULL, NULL),
(43, 'REST', NULL, NULL, NULL),
(44, 'Shell Scripting', NULL, NULL, NULL),
(45, 'Software Technologies', NULL, NULL, NULL),
(46, 'API', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '/images/default-profile.jpg',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `country`, `job`, `about`, `avatar`, `role`, `gender`, `follow`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sayed', 'Alaa', 'Alaa584013@gmail.com', '$2y$10$7PvuglXHhkVHx/DHuyWNbOmX7ddjI28oUBmTAyEAF2mn7oGECMU4S', '+2011531537567', 'Cameroon', 'lawyer', '5BfUPcQjxiO4FHy', '/storage/users/ESlwtT86ykORu2D12KKpuCLHlgqypjxTGclr3rwp.jpeg', 'user', 'male', NULL, 'dhXZtMeLU260Iy4NHLwqBPY5K4g5jtQUe9jmi8b90FrICXUF2sjiTCb8Vj2O', NULL, '2019-07-10 15:58:09'),
(2, 'mohamed', 'hesham', 'hussin854019@gmail.com', '$2y$10$fbvyTeef5y04AqHvZb.vse7WprlYQYZc09NsIHoPQEsipNCg2G4SS', '+2011572161669', 'American Samoa', 'Student', '5xsRBwu9Ur9X5pr', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(3, 'Ahmed', 'hussin', 'mohamed2747823@gmail.com', '$2y$10$g9g4Cu6r.2B9oyoMPd4z9uaiONPKFGP9JiWUYhtMdBnbWatBvMeR2', '+2011291284269', 'Fiji', 'lawyer', 'WBK5fLIVJdwO0MX', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(4, 'Alaa', 'hussin', 'hussin3978101@gmail.com', '$2y$10$kMz7VwXKf6eHTrhwgrq1t.Dn9.uLjoVHRyGCJVs6k6R4SjhZJzZ7i', '+2011131508177', 'Fiji', 'HR', 'vBASwNQ6Yyd26VL', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(5, 'hesham', 'Alaa', 'hussin4169049@gmail.com', '$2y$10$atOJp/hXu72Iq4I/sFxy.uoUV51p1DtD7TghfyqS8fOp0tzP6UgiC', '+201197251166', 'Cameroon', 'Student', '5Sw3TOxq1aJTr7F', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(6, 'mohamed', 'hassan', 'Alaa1425249@gmail.com', '$2y$10$vYFf2vstjYTM/4y1zOu8neD1pC1UF.8/TAwqwvOiA0gNQkPes83Cq', '+2011248169709', 'Albania', 'Accountant', 'DxgBGFocVQdoSlw', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(7, 'hesham', 'hussin', 'mohamed675256@gmail.com', '$2y$10$dTuKOGHzESZW06yKemT7Puw7vxO//tiTXI67GC4BXe0T.OgbYGyM6', '+2011586515437', 'Albania', 'HR', 'f193Rn6YzOnDS4O', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(8, 'hesham', 'mohamed', 'Alaa3443639@gmail.com', '$2y$10$y2p/VqIxXTmI7aMWGObrruoPn8lms0b7M.97il0zJC/L.43W4t.BC', '+2011467659534', 'Ghana', 'lawyer', 'XqIlWx1SjDN3ZzD', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(9, 'Ahmed', 'sayed', 'hussin3972295@gmail.com', '$2y$10$j2wVxiUCMsLdIpx0Ouvqp.5RvMgTRZQ8i1gFVocLcUKOnsnc3pmim', '+2011832792900', 'Fiji', 'Business Man', '8QUf09tr82XE34I', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(10, 'Ahmed', 'Ahmed', 'hussin2965181@gmail.com', '$2y$10$1oUdwB9hSr0N/EUEwYKsSeGinMKnyDPuAMO6Odb4ypIa.59gL/wXK', '+2011545395286', 'Albania', 'Student', 'ByLUvtNs9AE41DS', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(11, 'Ahmed', 'sayed', 'mohamed3194401@gmail.com', '$2y$10$X4H1hjtap/UvzkRhUZEwqeK8iGwnJLwVFKbQi0Aww2ZDDYhZdtyp2', '+2011859572896', 'Fiji', 'HR', 'Y34tTrzniYmpSwD', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(12, 'mohamed', 'hassan', 'hussin17179@gmail.com', '$2y$10$QOLC/smRu09wr9JQZq5pYut8.2MQZ7a8oBhI6TW2/.lVzeOCsGQfy', '+2011716310218', 'Ghana', 'Accountant', 'QoywjP6z9dYwtoE', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(13, 'hussin', 'Alaa', 'hussin4886862@gmail.com', '$2y$10$FBb8.MEnBHLo5lcfe8mKhuWuLfpR8c76HwDPsIl4ovwAPv5rb8dj2', '+2011445956519', 'Albania', 'lawyer', 'xA20rLExQXoUXem', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(14, 'mohamed', 'hassan', 'hussin4274621@gmail.com', '$2y$10$zrn099./tHTlhGoxsdGa7eMqxDIEH.hDIbFk5MuQVx/hhDzjQMcka', '+2011804975211', 'Bulgaria', 'Business Man', 'dOwvXCCVn79U8uO', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(15, 'hussin', 'hussin', 'sayed1018285@gmail.com', '$2y$10$o58wdX5R1cq.husHeAJJLOhgWCugjtHPBKBbiibr4WdUgAfNQWUpK', '+2011616073407', 'Faroe Islands', 'HR', 'LEcmPIrarXTG8ft', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(16, 'hassan', 'hesham', 'Alaa3987938@gmail.com', '$2y$10$0T.4qnxsMjFZvvv0kCAHwerBUF.epeQPKWU8gUjPygWEigF.px1TW', '+2011281941517', 'Armenia', 'Business Man', '5Cfi27PsivWHvKz', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(17, 'Alaa', 'hassan', 'hussin4568229@gmail.com', '$2y$10$IGvGFPAAbgn4TLXqfMArCO/RBsCaG5T3dKcN62QhPo22sPJzFJoqq', '+2011123654618', 'French Polynesia', 'Doctor', '3EiYzINKzHs6CiX', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(18, 'hassan', 'mohamed', 'sayed3585595@gmail.com', '$2y$10$6LlbUGViUo8gf8qYNJGwg.WZ0sYnppKfEYPmArcjQo8Qbin2jOtsy', '+2011773773578', 'Faroe Islands', 'Business Man', '7cg37tMh7jEGspR', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(19, 'Ahmed', 'sayed', 'mohamed1209043@gmail.com', '$2y$10$QXPPkrh9sEP04r4haAsWceBVCjUWYinOEbTkTNXITbZUqkYiV554S', '+2011193873522', 'Albania', 'lawyer', 'qj7dOoRoNQSnVMQ', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(20, 'sayed', 'sayed', 'sayed4173095@gmail.com', '$2y$10$aduttZlJObgN0HW1f8PRoO.O4GGQtFXz0dqSCo8MFwGQxjV83AzeK', '+2011560761103', 'Fiji', 'HR', 'yBjjU7s8iZjh8B0', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(21, 'mohamed', 'hassan', 'hesham2205158@gmail.com', '$2y$10$g2aee8IKk9BQimHXzfnYaOZh0Nr4eQIfk4X9IxX9GQeFfEm6/GyAa', '+2011367736410', 'Cameroon', 'Doctor', 'EUfJJaEfmqsLaJd', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(22, 'mohamed', 'mohamed', 'hussin2567041@gmail.com', '$2y$10$YlhRvT3hZn9sa913IZ5dl.TS.Gzdiw.Cs6UIC5PewmDxjzOINLwwK', '+2011800382478', 'French Polynesia', 'HR', '0u1Ewl0eRqaHUhL', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(23, 'sayed', 'Alaa', 'Alaa3237161@gmail.com', '$2y$10$ZdTg23Vj46HffrwzhTVB3.YuJMP9Dq9DRzg7l4NCuU5wAC6.ljff.', '+201132668336', 'Gambia', 'Doctor', '48NIXl6LdTLZX7T', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(24, 'sayed', 'mohamed', 'Ahmed4699564@gmail.com', '$2y$10$Zs9SC2iHONXIqjmXBwwwqe8lZb6VP2AjW.84qIvHIXvhYacbNOVbC', '+2011908824362', 'Fiji', 'Business Man', '1rPQbG47iaC8FXj', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(25, 'Ahmed', 'sayed', 'mohamed1672592@gmail.com', '$2y$10$Xwh/4aohnmimoD84GwlGjOcuuZDJxi7eaSIfIN8X9DCneHGj3IGwS', '+2011572116707', 'Colombia', 'HR', 'yqcXS9FfmGLthW3', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(26, 'sayed', 'hussin', 'Ahmed2663160@gmail.com', '$2y$10$sv5jUH3VObaMqgxlnUW0I.4hg11JhGJv1RcOXihQjJYkTMNNfLbRq', '+2011803967672', 'Cameroon', 'lawyer', 'R7ja1Geb9nZt99R', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(27, 'hussin', 'mohamed', 'hesham2735658@gmail.com', '$2y$10$Th8l4C5NIUzbyZze/EbuM.VLTgEP/A64gtBBqyG4Q46wHwLbMYpIO', '+2011727087866', 'Fiji', 'lawyer', 'uN67NhamI6Nx6XG', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(28, 'Ahmed', 'hussin', 'hassan1375754@gmail.com', '$2y$10$KxEvfYs.gluWoDE5dGqM9O5vQA/fgFMupaB2F/FQufa67aCvPWQAa', '+2011743315557', 'Colombia', 'lawyer', '3TeGQxBqK0dowEo', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(29, 'hesham', 'mohamed', 'Alaa652113@gmail.com', '$2y$10$C3YTqHModRafELW3aZ7r/.KwDm4m3dcSikSZrpxCqsDWe/uvMQ5Xq', '+201168849610', 'Faroe Islands', 'Student', 'bQqUPI5JHphUboP', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(30, 'hussin', 'hussin', 'sayed4777331@gmail.com', '$2y$10$BVsM4d15anMZ6phE7DB9T.gYZyFC/kndz3eekDrgtUXExw7H1Nv1m', '+2011484384189', 'Armenia', 'lawyer', '48UIII9vxaY8Psm', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(31, 'Ahmed', 'sayed', 'mohamed616076@gmail.com', '$2y$10$zpc0mCvUd5UjUjd7itt2POubImkINj46HgqZY2tNbvHqyU57KguLm', '+2011938027253', 'French Polynesia', 'Accountant', 'lsRe4bqsRZvGI9e', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(32, 'hussin', 'hussin', 'hussin2393526@gmail.com', '$2y$10$O5WXESQww1wApN2pQxCO7OEwbAzA1UJGNteBQex8WWOsnLNjqWgZG', '+2011864329328', 'French Polynesia', 'Business Man', 'VbHEL5ZXTLYoPuv', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(33, 'Ahmed', 'hussin', 'hassan47152@gmail.com', '$2y$10$BaYc5WC02F/VVMjZjlAAjOikOx1IE23XpY5TlheJd/WYD6YBYnBhm', '+2011590245502', 'Bulgaria', 'Business Man', 'Ar82AKs5QxUzIfM', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(34, 'Alaa', 'mohamed', 'hesham2090781@gmail.com', '$2y$10$D613MPEtbryBuVb3nYyhyOIOe.EteoTMF3j846Xoo/oOedvs0nN/.', '+2011397144947', 'Gambia', 'Accountant', 'kWUhgL9kKOsHnPH', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(35, 'Ahmed', 'sayed', 'mohamed1372361@gmail.com', '$2y$10$cdXcSvpMgppgWP8vEvCwWuym2fcN/o/O1VdjLlW5TdKyb/9v81ikO', '+2011574379568', 'Albania', 'HR', 'MlMwRukGjw21Abj', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(36, 'sayed', 'mohamed', 'Alaa2609204@gmail.com', '$2y$10$I/ZfbxkkHJEkYOSZndvywOBT2Y4i57FFrxMD/sXk9lZduk2ja9MS2', '+2011566438878', 'Albania', 'Student', 'ArNmkyIqDn4V9PW', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(37, 'sayed', 'hesham', 'hassan2178838@gmail.com', '$2y$10$SwJZ5LvuiQYnUHAkUPxxTOZAHQATRPCH0lQXBGglK3DM/bOBVeX5q', '+2011863477222', 'Armenia', 'Accountant', 'uJ7rDJ5k8uegOuw', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(38, 'hesham', 'hesham', 'mohamed3430164@gmail.com', '$2y$10$BPbnoM9EIuuiArVM/RDi3eQrmCZ7dusydgy2vJET2HdNCHniQaa2q', '+2011171042264', 'Gambia', 'lawyer', 'o8v1GRbFq0YyTXf', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(39, 'Ahmed', 'sayed', 'hussin3193474@gmail.com', '$2y$10$srwc3hCGzbl5caM/2ckvaOLtzg6RrCGdCDEWpZ5IMl3NEdbMRn9Zi', '+201177148971', 'Albania', 'Doctor', 'e19eG2w0kEsJyT1', '/images/default-profile.jpg', 'user', 'male', NULL, NULL, NULL, NULL),
(40, 'Ahmed', 'hesham', 'hesham2728581@gmail.com', '$2y$10$.UzAoABnQqNvJjlsH49T6O93vP1e7fBpuqhviq3IyfuUfOotkZr46', '+2011186743655', 'Cameroon', 'Business Man', 'YGEZtNqexUaP5LD', '/images/default-profile.jpg', 'user', 'female', NULL, NULL, NULL, NULL),
(41, 'aaa', 'aaa', 'Alaa58s4013@gmail.com', '$2y$10$uSmSCQTte.b31Lq5emwIoupAJM4EoqKWiI0AhiKUAzsKiHwJyYvTi', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 12:58:09', '2019-12-07 12:58:09'),
(42, 'aaa', 'aaa', 'Alaas58s4013@gmail.com', '$2y$10$j.FPigSAXyk69V7llDMOHeIj70QjsE20wY.EyFKE9tugbu0BNBdzm', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 12:58:31', '2019-12-07 12:58:31'),
(43, 'ss', 'ss', 'Alaa58401s3@gmail.com', '$2y$10$0v0Fc1F/yPFz/jk2WDcxEui0A4.Sb9BBQDeBp9e3F9rdyWWi61Czq', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 13:02:48', '2019-12-07 13:02:48'),
(44, 'ss', 'sss', 'Alaa584013@gmail.coma', '$2y$10$p1BHkX7OQHt8LGRQupvk9Oty/475Bm4tL.fIPiAxn.FfEFQ1.ChxG', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 13:14:12', '2019-12-07 13:14:12'),
(45, 'ss', 'sss', 'Alaa5aa84013@gmail.coma', '$2y$10$et6BPiDx6wvc4ZxrU0IE/uPK7yqPyn8pRxRmo1cBnEIFsnT3UzIn2', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 13:14:43', '2019-12-07 13:14:43'),
(46, 'ss', 'sss', 'Alaa5aa84013@gmail.comaa', '$2y$10$vMEaKDegnSC6egiV7rl32u5GP/YsUvGTWYpu3cgwisb7EZAzuGwSS', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 13:15:13', '2019-12-07 13:15:13'),
(47, 's', 's', 'Alaa58ss4013@gmail.com', '$2y$10$hmF6Jtmrsc07SKN63NT9rutGFAQpOwuHYUF0SXvqeK2K7m083mpMG', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 13:19:11', '2019-12-07 13:19:11'),
(48, 's', 's', 'Alaa58ss4s013@gmail.com', '$2y$10$TBSFiR/OIdUjuzt3HCvkB.hb1tdTNLvdpuol2wSxv8ESkEBoXjql6', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 13:19:42', '2019-12-07 13:19:42'),
(49, 'a', 'a', 'Alaa5840s13@gmail.com', '$2y$10$LcEfJWx1W8.9JkhfHoZWHeV4Iuh9nKTkqN4VxhT.VtFNoQjSjzsM.', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 14:16:10', '2019-12-07 14:16:10'),
(50, 'a', 'a', 'Alaa584s0s13@gmail.com', '$2y$10$Vr6lUEWx1YOEDgLBq9TX7eRwAzuIjSfcTxJUL3bF121.TPUy7HHqC', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 14:18:38', '2019-12-07 14:18:38'),
(51, 's', 's', 'Alsaa584013@gmail.com', '$2y$10$.vBZuWYChI3PRywI4xbK.Of2ZYs26i.LlBMyFQ56zH9oaPTaLkEbi', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 14:25:16', '2019-12-07 14:25:16'),
(52, 's', 's', 'Alssaa584013@gmail.com', '$2y$10$YsCwrV6HOLhyBKtemInHSOo..vWintSrX0hBhb2HFDgISpWuJN.RS', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 14:25:47', '2019-12-07 14:25:47'),
(53, 's', 's', 'Alssaa58401s3@gmail.com', '$2y$10$DHp76A.l1Pz4IN537ncivebJOvRbFzWyft0Y0v1bj5vo0fHt91U.W', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 14:26:40', '2019-12-07 14:26:40'),
(54, 's', 's', 'Alssaa5s8401s3@gmail.com', '$2y$10$6ucsjG5xkPPxwFgG2KAoVOPMTJYrAtz2K0Zwg/lGpCwmqQ22nulS.', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 14:27:11', '2019-12-07 14:27:11'),
(55, 's', 's', 'Alssaa5ss8401s3@gmail.com', '$2y$10$sfSq3gnuxy7GyzGlreMx/OklxdENcVUX7XAFbNKsyuRLCh8iJnUKK', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 14:27:57', '2019-12-07 14:27:57'),
(56, 'ss', 'ss', 'Alaa58401d3@gmail.com', '$2y$10$QpcYDwNUGuS0npGvqLsp1u0KR89L/xejP4IvsKrD99OxxMcJA5Tsq', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 15:50:28', '2019-12-07 15:50:28'),
(57, 'aa', 'aa', 'Alaaaa584013@gmail.com', '$2y$10$cqV6Ey2eIZ4w/wmqAUHiDe1vQQTYoT9MDTUHEUctoxDnSWX/7Ryiq', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 15:51:08', '2019-12-07 15:51:08'),
(58, 'ss', 's', 'Alasa584013@gmail.com', '$2y$10$OjVB/V1pk6ReLE4DFApuUOI4iy/3WX.tCGo8AlplFK6Q/aqhZ8AsC', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 15:52:30', '2019-12-07 15:52:30'),
(59, 'ss', 'ss', 'Alaas584s013@gmail.com', '$2y$10$Fnfzpvu7jvSLrseFf7E.bevR7wKyZTKjyaIA1wFJ33eFEAfC7Qva2', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 15:53:24', '2019-12-07 15:53:24'),
(60, 'dd', 'ddd', 'Alaa584a013@gmail.com', '$2y$10$a7PDlGtLw30K7XBujUzwK.gPFrOV2LD2xjTrg/O.JY0rDlu99IKUu', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:00:45', '2019-12-07 16:00:45'),
(61, 'aaa', 'aa', 'Alaa5s8a4013@gmail.com', '$2y$10$8jipRjjgVUlYl6BAVO9e5Oj5dbHcSQuF9wBOfUqO6LK8V.57M3Bu.', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:01:05', '2019-12-07 16:01:05'),
(62, 'ss', 'ss', 'Alaa58s401s3@gmail.com', '$2y$10$Yr2/qbSpY8vo4.anrShabOGAQ4MWhBX.6h3VRZ/K6d2Y7LLiDgBn.', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:01:53', '2019-12-07 16:01:53'),
(63, 's', 's', 'Alaa584sss013@gmail.com', '$2y$10$7BYZWDqlWxeYKCtyWAZwouUHYoKQlrdhhNXnE9vZ7PPH7UqjD7tDu', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:02:43', '2019-12-07 16:02:43'),
(64, 's', 's', 'Alaa58401ss3@gmail.com', '$2y$10$iNgiA4U3HMKWXqo7Glpf6.8w15YvYfoC4h6l79H28MU6nK9ZUayze', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:03:15', '2019-12-07 16:03:15'),
(65, 'xx', 'x', 'xxxxx@gmail.com', '$2y$10$vMHg7oqfqgoxbT1pIOtsfuA/i8UEPY0FkR0QSv55AH3a/Ej/2rXp.', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:03:40', '2019-12-07 16:03:40'),
(66, 'ff', 'fff', 'Alaa58ff4013@gmail.com', '$2y$10$SUfAH91a/nbTwdmvRVJ7n.9eYZfUuhkQSwhr2i7QIpQAZVjsZfAeu', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:08:21', '2019-12-07 16:08:21'),
(67, 'dd', 'dd', 'ddd@gmail.com', '$2y$10$odya0aJlxcD7lVbZb4vz8.qPFuusGmtuC63VECLOnJeWssqSFzJgm', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:09:05', '2019-12-07 16:09:05'),
(68, 'ss', 'ss', 'Alaa5840sss13@gmail.com', '$2y$10$ImZel/MjjIFJ5l0/xJfsC.niGHGiDN5tgPuLAS/IyfaMWW5Tb8bQ.', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:09:39', '2019-12-07 16:09:39'),
(69, 's', 's', 'Alaa584013ssa@gmail.com', '$2y$10$YZOGI676LPu8qQIvAOrEgu6u7RvRaGRMRgvFaI7wppcJflAXcdFDq', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:10:08', '2019-12-07 16:10:08'),
(70, 'f', 'f', 'Alaa584ff013@gmail.com', '$2y$10$30RlFyVxAPigtAQ/EZ3od.agsTB/DSlgg5KrTWqXAYcCJ1P0xVnjy', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:15:37', '2019-12-07 16:15:37'),
(71, 'd', 'd', 'Alaa5840ddd13@gmail.com', '$2y$10$w6pj9ap./EfwzJ5DQD1pFuhkq2pLmVvy2eC0lkcZdTUM2wznzda7.', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:17:08', '2019-12-07 16:17:08'),
(72, 'ss', 'ss', 'Alasvaa584013@gmail.com', '$2y$10$Pf0CZl3xiRtmoHgWt5O6V.Ula2gMeZ8.37QcGRd3Sdm.4YwPUnNfC', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:20:09', '2019-12-07 16:20:09'),
(73, 'ss', 'ss', 'Alaa58401saca3@gmail.com', '$2y$10$SiXXZSXIGeDD7HjLb.ns8eSsVcHhbkvyZPdKUP/WzgpSqIKvi9JmG', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:21:03', '2019-12-07 16:21:03'),
(74, 'dsd', 'ds', 'sd@gmabsdil.com', '$2y$10$phf2Wg.QCpbm3o/xtssNOeeB1eD0o6cdM8PDW4yTrPgRZe8ReAzSO', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-07 16:22:03', '2019-12-07 16:22:03'),
(75, 'dsd', 'dd', 'Alaa584s013@gmail.com', '$2y$10$tEc8tlQWZ12WQayZbdI5ceAxr73q9M.jU0BHGe2G/4NI3p3Xvy8eK', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 11:49:21', '2019-12-08 11:49:21'),
(76, 'd', 'd', 'Alaag584013@gmail.com', '$2y$10$1.5MYYFQkX.G7CVaFp1vzubqaE.x8V9ToyuOA/.chrbY6m5UZ7PI2', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 12:16:08', '2019-12-08 12:16:08'),
(77, 'd', 'd', 'Alaa584dddd013@gmail.com', '$2y$10$FbHDWEj50ptqhd5qcL40CONSftF2Ku.9HepO2UQD6I0I.qIYyWWS.', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:15:09', '2019-12-08 15:15:09'),
(78, 'd', 'd', 'Alaa5840dds13@gmail.com', '$2y$10$SjA2DWaMFOFT.NDInNsReODe9WBnZhKbxN5Efs9jO4zhbR5RUZZGe', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:20:10', '2019-12-08 15:20:10'),
(79, 's', 's', 'Alaa58asv4a013@gmail.com', '$2y$10$Ve6Bj9g9yU/9w1SrM29Tvu9QwWSacwr3Dtn7Xs/9IDgX4N1hkuRmC', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:21:13', '2019-12-08 15:21:13'),
(80, 's', 's', 'sacv@gmail.com', '$2y$10$adfZa0hGpkaBMJ/MOxnuWuMvvwq96/Nj4ZdY5MC4XvLNzSopaJoE.', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:22:11', '2019-12-08 15:22:11'),
(81, 's', 's', 'Alaa5dbsdb84013@gmail.com', '$2y$10$Tn6c1FkGHJowlLXQkDXfQ.1NFGOOzWef657Fs4hN/FFYEl57h9q6q', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:24:29', '2019-12-08 15:24:29'),
(82, 'fdn', 'fdn', 'Alaafndfn584013@gmail.com', '$2y$10$mnZ0FjsNVddK74PmL7jm2ub1OjFJV3lC2a81/L0dp/EWXyxSL1j5O', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:25:35', '2019-12-08 15:25:35'),
(83, 'gfm', 'gf', 'Alaa584fgmgfm013@gmail.com', '$2y$10$Y3v781EPpB72v/1E9qAW4OaKuWX5RjWP8vms1/LVz8z.PWqgBThyO', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:26:53', '2019-12-08 15:26:53'),
(84, 'f', 'f', 'dfnfdn@gmail.com', '$2y$10$fhEvZYY1uZpzll.2YvPf5.KBxSdxY.haLkJPtcmTslaukgYH0nDH6', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:29:18', '2019-12-08 15:29:18'),
(85, 'dsb', 'dsb', 'Alaa584013@gmail.comsdbsd', '$2y$10$9Jqa9mSb0VVWZgrIgW/x0uTLFREGIemGOTjcGiZH/SV6b.lJWMBWS', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:30:31', '2019-12-08 15:30:31'),
(86, 'fdbfd', 'bfdb', 'Alaa584fdb013@gmail.com', '$2y$10$bCrCTIEBo7L9D2puvFbpzeSwhg0C.JLG2noHUWneYRh0AkzuPr0TG', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:32:08', '2019-12-08 15:32:08'),
(87, 'svasv', 'svsav', 'savsavsavsa@gmail.com', '$2y$10$Gtk/IMhN/dcr/ydhwPhkQebkgdtCGb4E3CQ99JJdCu9oEtoPjVOLW', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:40:45', '2019-12-08 15:40:45'),
(88, 'sdsdb', 'sdb', 'Alaa5fdn84013@gmail.com', '$2y$10$to8GDEW9p2DB9GQM2lv0QOEsSP9zUXduWdGX1PiJAzXUOqEgGeb26', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-08 15:41:52', '2019-12-08 15:41:52'),
(89, 'dsb', 'dsb', 'alaa.abdallah.a97@gmail.com', '$2y$10$/LWGy8xHEZFiAXt8NtbAz.vVcVkiZ8Kg2r.s1qKuneBoJKd4Onh.S', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-09 09:17:50', '2019-12-09 09:17:50'),
(90, 'sdvsdvsdvdsd', 'ffnfgn', 'alaa.abdallahxzvz.a97@gmail.com', '$2y$10$RQVQrpSMi9a6BWqW.rqjNeKF4C.A9NHPnwtu2682eGXFXSR8eZwXC', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-09 11:14:04', '2019-12-09 11:14:04'),
(91, 'sdb', 'dsb', 'alaa.abdasdbdbsllah.a97@gmail.com', '$2y$10$ApB/udITjWUN9tv4b7wKEeYOgqN9eP8ZgdncMJzw9/PN01GXPml26', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-09 11:14:57', '2019-12-09 11:14:57'),
(92, 'aaaa', 'daaa', 'alaa.abdsdsdbsdballah.a97@gmail.com', '$2y$10$ZLznVbSV9Wf3lxuUzN5Ng.1iQrER.lFX1eMXxTv8NLWo37Skd11Cq', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-09 11:24:50', '2019-12-09 11:24:50'),
(93, 'ddd', 'ddd', 'alaa.abdalsdvsdlah.a97@gmail.com', '$2y$10$MbU2Q3pCHOofn14tof3NcOASKHJNA1D4/J1eKVeyLRHRDCOh/tfOm', NULL, NULL, NULL, NULL, '/images/default-profile.jpg', NULL, NULL, NULL, NULL, '2019-12-09 11:54:22', '2019-12-09 11:54:22'),
(94, 'Alaa', 'Abdallah', 'hassanabdallah@gmail.com', '$2y$10$Z0ha6S1H5erZtqSjOdDSV.z1htTNtJ7AAsQeaaYAms.f.6kMcTyvi', '+2011531537567', 'American Samoa', 'lawyer', 'I\'m a full-stack web developer, I have an extensive experience with PHP, OOP,  \nJavaScript, SQL, Laravel, VueJs, Vuex, Router, Anuglar 1.x, CMS, GIT', '/storage/users/hcG99SFp5NUCiZgydjnhzyXm4UfKBmbiNqF9hpxG.jpeg', NULL, 'male', NULL, NULL, '2019-12-10 08:35:59', '2019-12-10 19:54:05'),
(95, 'Hesham', 'Abdallah', 'Heshamabdallah@gmail.com', '$2y$10$uOHo2euwpal3R6O7cAoJ5OmQwKW0nMpJ2zIsyU3rvD838XJh3mixS', '+2011531537567', 'Andorra', 'lawyer', 'I\'m Hesham 23 years old, I\'m from Egypt, I worked as a web designer for more two years.', '/storage/users/YrFiAWsIbYeGnXujQ4FRFXKH6GdDb934Bn90uDCG.jpeg', NULL, 'male', NULL, NULL, '2019-12-11 12:57:12', '2019-12-11 13:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_skills`
--

INSERT INTO `user_skills` (`id`, `skill_id`, `user_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 7, 1, NULL, NULL, NULL),
(2, 44, 11, NULL, NULL, NULL),
(3, 27, 8, NULL, NULL, NULL),
(4, 34, 14, NULL, NULL, NULL),
(5, 17, 8, NULL, NULL, NULL),
(6, 9, 8, NULL, NULL, NULL),
(7, 31, 20, NULL, NULL, NULL),
(8, 6, 16, NULL, NULL, NULL),
(9, 34, 19, NULL, NULL, NULL),
(10, 31, 16, NULL, NULL, NULL),
(11, 31, 19, NULL, NULL, NULL),
(65, 10, 94, NULL, NULL, NULL),
(66, 8, 94, NULL, NULL, NULL),
(67, 7, 94, NULL, NULL, NULL),
(68, 9, 94, NULL, NULL, NULL),
(69, 11, 94, NULL, NULL, NULL),
(151, 1, 95, NULL, NULL, NULL),
(152, 2, 95, NULL, NULL, NULL),
(153, 3, 95, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applies`
--
ALTER TABLE `applies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applies_user_id_index` (`user_id`),
  ADD KEY `applies_job_id_index` (`job_id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_index` (`user_id`),
  ADD KEY `bookmarks_job_id_index` (`job_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follows_r_id_index` (`r_id`),
  ADD KEY `follows_s_id_index` (`s_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_user_id_index` (`user_id`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_skills_skill_id_index` (`skill_id`),
  ADD KEY `job_skills_job_id_index` (`job_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_r_id_index` (`r_id`),
  ADD KEY `messages_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_skills_skill_id_index` (`skill_id`),
  ADD KEY `user_skills_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applies`
--
ALTER TABLE `applies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `user_skills`
--
ALTER TABLE `user_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applies`
--
ALTER TABLE `applies`
  ADD CONSTRAINT `applies_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follows_s_id_foreign` FOREIGN KEY (`s_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD CONSTRAINT `job_skills_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
