-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2024 at 08:43 AM
-- Server version: 8.2.0
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `split-money`
--

-- --------------------------------------------------------

--
-- Table structure for table `countrylist`
--

CREATE TABLE `countrylist` (
  `id` int NOT NULL,
  `name` varchar(56) NOT NULL,
  `phoneCode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `countryCode2` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `countryCode3` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `countrylist`
--

INSERT INTO `countrylist` (`id`, `name`, `phoneCode`, `countryCode2`, `countryCode3`) VALUES
(5, 'Afghanistan', '93', 'AF', 'AFG'),
(6, 'Albania', '355', 'AL', 'ALB'),
(7, 'Algeria', '213', 'DZ', 'DZA'),
(8, 'American Samoa', '1684', 'AS', 'ASM'),
(9, 'Andorra', '376', 'AD', 'AND'),
(10, 'Angola', '244', 'AO', 'AGO'),
(11, 'Anguilla', '1264', 'AI', 'AIA'),
(12, 'Antarctica', '672', 'AQ', 'ATA'),
(13, 'Antigua and Barbuda', '1268', 'AG', 'ATG'),
(14, 'Argentina', '54', 'AR', 'ARG'),
(15, 'Armenia', '374', 'AM', 'ARM'),
(16, 'Aruba', '297', 'AW', 'ABW'),
(17, 'Australia', '61', 'AU', 'AUS'),
(18, 'Austria', '43', 'AT', 'AUT'),
(19, 'Azerbaijan', '994', 'AZ', 'AZE'),
(20, 'Bahamas', '1242', 'BS', 'BHS'),
(21, 'Bahrain', '973', 'BH', 'BHR'),
(22, 'Bangladesh', '880', 'BD', 'BGD'),
(23, 'Barbados', '1246', 'BB', 'BRB'),
(24, 'Belarus', '375', 'BY', 'BLR'),
(25, 'Belgium', '32', 'BE', 'BEL'),
(26, 'Belize', '501', 'BZ', 'BLZ'),
(27, 'Benin', '229', 'BJ', 'BEN'),
(28, 'Bermuda', '1441', 'BM', 'BMU'),
(29, 'Bhutan', '975', 'BT', 'BTN'),
(30, 'Bolivia', '591', 'BO', 'BOL'),
(31, 'Bosnia and Herzegovina', '387', 'BA', 'BIH'),
(32, 'Botswana', '267', 'BW', 'BWA'),
(33, 'Brazil', '55', 'BR', 'BRA'),
(34, 'British Indian Ocean Territory', '246', 'IO', 'IOT'),
(35, 'British Virgin Islands', '1284', 'VG', 'VGB'),
(36, 'Brunei', '673', 'BN', 'BRN'),
(37, 'Bulgaria', '359', 'BG', 'BGR'),
(38, 'Burkina Faso', '226', 'BF', 'BFA'),
(39, 'Burundi', '257', 'BI', 'BDI'),
(40, 'Cambodia', '855', 'KH', 'KHM'),
(41, 'Cameroon', '237', 'CM', 'CMR'),
(42, 'Canada', '1', 'CA', 'CAN'),
(43, 'Cape Verde', '238', 'CV', 'CPV'),
(44, 'Cayman Islands', '1345', 'KY', 'CYM'),
(45, 'Central African Republic', '236', 'CF', 'CAF'),
(46, 'Chad', '235', 'TD', 'TCD'),
(47, 'Chile', '56', 'CL', 'CHL'),
(48, 'China', '86', 'CN', 'CHN'),
(49, 'Christmas Island', '61', 'CX', 'CXR'),
(50, 'Cocos Islands', '61', 'CC', 'CCK'),
(51, 'Colombia', '57', 'CO', 'COL'),
(52, 'Comoros', '269', 'KM', 'COM'),
(53, 'Cook Islands', '682', 'CK', 'COK'),
(54, 'Costa Rica', '506', 'CR', 'CRI'),
(55, 'Croatia', '385', 'HR', 'HRV'),
(56, 'Cuba', '53', 'CU', 'CUB'),
(57, 'Curacao', '599', 'CW', 'CUW'),
(58, 'Cyprus', '357', 'CY', 'CYP'),
(59, 'Czech Republic', '420', 'CZ', 'CZE'),
(60, 'Democratic Republic of the Congo', '243', 'CD', 'COD'),
(61, 'Denmark', '45', 'DK', 'DNK'),
(62, 'Djibouti', '253', 'DJ', 'DJI'),
(63, 'Dominica', '1767', 'DM', 'DMA'),
(65, 'East Timor', '670', 'TL', 'TLS'),
(66, 'Ecuador', '593', 'EC', 'ECU'),
(67, 'Egypt', '20', 'EG', 'EGY'),
(68, 'El Salvador', '503', 'SV', 'SLV'),
(69, 'Equatorial Guinea', '240', 'GQ', 'GNQ'),
(70, 'Eritrea', '291', 'ER', 'ERI'),
(71, 'Estonia', '372', 'EE', 'EST'),
(72, 'Ethiopia', '251', 'ET', 'ETH'),
(73, 'Falkland Islands', '500', 'FK', 'FLK'),
(74, 'Faroe Islands', '298', 'FO', 'FRO'),
(75, 'Fiji', '679', 'FJ', 'FJI'),
(76, 'Finland', '358', 'FI', 'FIN'),
(77, 'France', '33', 'FR', 'FRA'),
(78, 'French Polynesia', '689', 'PF', 'PYF'),
(79, 'Gabon', '241', 'GA', 'GAB'),
(80, 'Gambia', '220', 'GM', 'GMB'),
(81, 'Georgia', '995', 'GE', 'GEO'),
(82, 'Germany', '49', 'DE', 'DEU'),
(83, 'Ghana', '233', 'GH', 'GHA'),
(84, 'Gibraltar', '350', 'GI', 'GIB'),
(85, 'Greece', '30', 'GR', 'GRC'),
(86, 'Greenland', '299', 'GL', 'GRL'),
(87, 'Grenada', '1473', 'GD', 'GRD'),
(88, 'Guam', '1671', 'GU', 'GUM'),
(89, 'Guatemala', '502', 'GT', 'GTM'),
(90, 'Guernsey', '441481', 'GG', 'GGY'),
(91, 'Guinea', '224', 'GN', 'GIN'),
(92, 'Guinea-Bissau', '245', 'GW', 'GNB'),
(93, 'Guyana', '592', 'GY', 'GUY'),
(94, 'Haiti', '509', 'HT', 'HTI'),
(95, 'Honduras', '504', 'HN', 'HND'),
(96, 'Hong Kong', '852', 'HK', 'HKG'),
(97, 'Hungary', '36', 'HU', 'HUN'),
(98, 'Iceland', '354', 'IS', 'ISL'),
(99, 'India', '91', 'IN', 'IND'),
(100, 'Indonesia', '62', 'ID', 'IDN'),
(101, 'Iran', '98', 'IR', 'IRN'),
(102, 'Iraq', '964', 'IQ', 'IRQ'),
(103, 'Ireland', '353', 'IE', 'IRL'),
(104, 'Isle of Man', '441624', 'IM', 'IMN'),
(105, 'Israel', '972', 'IL', 'ISR'),
(106, 'Italy', '39', 'IT', 'ITA'),
(107, 'Ivory Coast', '225', 'CI', 'CIV'),
(108, 'Jamaica', '1876', 'JM', 'JAM'),
(109, 'Japan', '81', 'JP', 'JPN'),
(110, 'Jersey', '441534', 'JE', 'JEY'),
(111, 'Jordan', '962', 'JO', 'JOR'),
(112, 'Kazakhstan', '7', 'KZ', 'KAZ'),
(113, 'Kenya', '254', 'KE', 'KEN'),
(114, 'Kiribati', '686', 'KI', 'KIR'),
(115, 'Kosovo', '383', 'XK', 'XKX'),
(116, 'Kuwait', '965', 'KW', 'KWT'),
(117, 'Kyrgyzstan', '996', 'KG', 'KGZ'),
(118, 'Laos', '856', 'LA', 'LAO'),
(119, 'Latvia', '371', 'LV', 'LVA'),
(120, 'Lebanon', '961', 'LB', 'LBN'),
(121, 'Lesotho', '266', 'LS', 'LSO'),
(122, 'Liberia', '231', 'LR', 'LBR'),
(123, 'Libya', '218', 'LY', 'LBY'),
(124, 'Liechtenstein', '423', 'LI', 'LIE'),
(125, 'Lithuania', '370', 'LT', 'LTU'),
(126, 'Luxembourg', '352', 'LU', 'LUX'),
(127, 'Macau', '853', 'MO', 'MAC'),
(128, 'Macedonia', '389', 'MK', 'MKD'),
(129, 'Madagascar', '261', 'MG', 'MDG'),
(130, 'Malawi', '265', 'MW', 'MWI'),
(131, 'Malaysia', '60', 'MY', 'MYS'),
(132, 'Maldives', '960', 'MV', 'MDV'),
(133, 'Mali', '223', 'ML', 'MLI'),
(134, 'Malta', '356', 'MT', 'MLT'),
(135, 'Marshall Islands', '692', 'MH', 'MHL'),
(136, 'Mauritania', '222', 'MR', 'MRT'),
(137, 'Mauritius', '230', 'MU', 'MUS'),
(138, 'Mayotte', '262', 'YT', 'MYT'),
(139, 'Mexico', '52', 'MX', 'MEX'),
(140, 'Micronesia', '691', 'FM', 'FSM'),
(141, 'Moldova', '373', 'MD', 'MDA'),
(142, 'Monaco', '377', 'MC', 'MCO'),
(143, 'Mongolia', '976', 'MN', 'MNG'),
(144, 'Montenegro', '382', 'ME', 'MNE'),
(145, 'Montserrat', '1664', 'MS', 'MSR'),
(146, 'Morocco', '212', 'MA', 'MAR'),
(147, 'Mozambique', '258', 'MZ', 'MOZ'),
(148, 'Myanmar', '95', 'MM', 'MMR'),
(149, 'Namibia', '264', 'NA', 'NAM'),
(150, 'Nauru', '674', 'NR', 'NRU'),
(151, 'Nepal', '977', 'NP', 'NPL'),
(152, 'Netherlands', '31', 'NL', 'NLD'),
(153, 'Netherlands Antilles', '599', 'AN', 'ANT'),
(154, 'New Caledonia', '687', 'NC', 'NCL'),
(155, 'New Zealand', '64', 'NZ', 'NZL'),
(156, 'Nicaragua', '505', 'NI', 'NIC'),
(157, 'Niger', '227', 'NE', 'NER'),
(158, 'Nigeria', '234', 'NG', 'NGA'),
(159, 'Niue', '683', 'NU', 'NIU'),
(160, 'North Korea', '850', 'KP', 'PRK'),
(161, 'Northern Mariana Islands', '1670', 'MP', 'MNP'),
(162, 'Norway', '47', 'NO', 'NOR'),
(163, 'Oman', '968', 'OM', 'OMN'),
(164, 'Pakistan', '92', 'PK', 'PAK'),
(165, 'Palau', '680', 'PW', 'PLW'),
(166, 'Palestine', '970', 'PS', 'PSE'),
(167, 'Panama', '507', 'PA', 'PAN'),
(168, 'Papua New Guinea', '675', 'PG', 'PNG'),
(169, 'Paraguay', '595', 'PY', 'PRY'),
(170, 'Peru', '51', 'PE', 'PER'),
(171, 'Philippines', '63', 'PH', 'PHL'),
(172, 'Pitcairn', '64', 'PN', 'PCN'),
(173, 'Poland', '48', 'PL', 'POL'),
(174, 'Portugal', '351', 'PT', 'PRT'),
(176, 'Qatar', '974', 'QA', 'QAT'),
(177, 'Republic of the Congo', '242', 'CG', 'COG'),
(178, 'Reunion', '262', 'RE', 'REU'),
(179, 'Romania', '40', 'RO', 'ROU'),
(180, 'Russia', '7', 'RU', 'RUS'),
(181, 'Rwanda', '250', 'RW', 'RWA'),
(182, 'Saint Barthelemy', '590', 'BL', 'BLM'),
(183, 'Saint Helena', '290', 'SH', 'SHN'),
(184, 'Saint Kitts and Nevis', '1-869', 'KN', 'KNA'),
(185, 'Saint Lucia', '1758', 'LC', 'LCA'),
(186, 'Saint Martin', '590', 'MF', 'MAF'),
(187, 'Saint Pierre and Miquelon', '508', 'PM', 'SPM'),
(188, 'Saint Vincent and the Grenadines', '1784', 'VC', 'VCT'),
(189, 'Samoa', '685', 'WS', 'WSM'),
(190, 'San Marino', '378', 'SM', 'SMR'),
(191, 'Sao Tome and Principe', '239', 'ST', 'STP'),
(192, 'Saudi Arabia', '966', 'SA', 'SAU'),
(193, 'Senegal', '221', 'SN', 'SEN'),
(194, 'Serbia', '381', 'RS', 'SRB'),
(195, 'Seychelles', '248', 'SC', 'SYC'),
(196, 'Sierra Leone', '232', 'SL', 'SLE'),
(197, 'Singapore', '65', 'SG', 'SGP'),
(198, 'Sint Maarten', '1721', 'SX', 'SXM'),
(199, 'Slovakia', '421', 'SK', 'SVK'),
(200, 'Slovenia', '386', 'SI', 'SVN'),
(201, 'Solomon Islands', '677', 'SB', 'SLB'),
(202, 'Somalia', '252', 'SO', 'SOM'),
(203, 'South Africa', '27', 'ZA', 'ZAF'),
(204, 'South Korea', '82', 'KR', 'KOR'),
(205, 'South Sudan', '211', 'SS', 'SSD'),
(206, 'Spain', '34', 'ES', 'ESP'),
(207, 'Sri Lanka', '94', 'LK', 'LKA'),
(208, 'Sudan', '249', 'SD', 'SDN'),
(209, 'Suriname', '597', 'SR', 'SUR'),
(210, 'Svalbard and Jan Mayen', '47', 'SJ', 'SJM'),
(211, 'Swaziland', '268', 'SZ', 'SWZ'),
(212, 'Sweden', '46', 'SE', 'SWE'),
(213, 'Switzerland', '41', 'CH', 'CHE'),
(214, 'Syria', '963', 'SY', 'SYR'),
(215, 'Taiwan', '886', 'TW', 'TWN'),
(216, 'Tajikistan', '992', 'TJ', 'TJK'),
(217, 'Tanzania', '255', 'TZ', 'TZA'),
(218, 'Thailand', '66', 'TH', 'THA'),
(219, 'Togo', '228', 'TG', 'TGO'),
(220, 'Tokelau', '690', 'TK', 'TKL'),
(221, 'Tonga', '676', 'TO', 'TON'),
(222, 'Trinidad and Tobago', '1868', 'TT', 'TTO'),
(223, 'Tunisia', '216', 'TN', 'TUN'),
(224, 'Turkey', '90', 'TR', 'TUR'),
(225, 'Turkmenistan', '993', 'TM', 'TKM'),
(226, 'Turks and Caicos Islands', '1649', 'TC', 'TCA'),
(227, 'Tuvalu', '688', 'TV', 'TUV'),
(228, 'U.S. Virgin Islands', '1340', 'VI', 'VIR'),
(229, 'Uganda', '256', 'UG', 'UGA'),
(230, 'Ukraine', '380', 'UA', 'UKR'),
(231, 'United Arab Emirates', '971', 'AE', 'ARE'),
(232, 'United Kingdom', '44', 'GB', 'GBR'),
(233, 'United States', '1', 'US', 'USA'),
(234, 'Uruguay', '598', 'UY', 'URY'),
(235, 'Uzbekistan', '998', 'UZ', 'UZB'),
(236, 'Vanuatu', '678', 'VU', 'VUT'),
(237, 'Vatican', '379', 'VA', 'VAT'),
(238, 'Venezuela', '58', 'VE', 'VEN'),
(239, 'Vietnam', '84', 'VN', 'VNM'),
(240, 'Wallis and Futuna', '681', 'WF', 'WLF'),
(241, 'Western Sahara', '212', 'EH', 'ESH'),
(242, 'Yemen', '967', 'YE', 'YEM'),
(243, 'Zambia', '260', 'ZM', 'ZMB'),
(244, 'Zimbabwe', '263', 'ZW', 'ZWE'),
(245, 'Dominican Republic', '1-809', 'DO', 'DOM'),
(246, 'Dominican Republic', '1-829', 'DO', 'DOM'),
(247, 'Dominican Republic', '1-849', 'DO', 'DOM'),
(248, 'Puerto Rico', '1-787', 'PR', 'PRI'),
(249, 'Puerto Rico', '1-939', 'PR', 'PRI');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(10) NOT NULL,
  `countrycode` varchar(5) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_session`
--

CREATE TABLE `user_session` (
  `user_id` int NOT NULL,
  `auth_token` text NOT NULL,
  `refresh_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countrylist`
--
ALTER TABLE `countrylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countrylist`
--
ALTER TABLE `countrylist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_session`
--
ALTER TABLE `user_session`
  ADD CONSTRAINT `foreign_key` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
