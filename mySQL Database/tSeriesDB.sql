-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tSeriesDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `authTable`
--

CREATE TABLE `authTable` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `token` varchar(1024) NOT NULL,
  `access` varchar(4096) NOT NULL DEFAULT '0',
  `details` varchar(1024) NOT NULL,
  `last_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authTable`
--

INSERT INTO `authTable` (`id`, `user`, `token`, `access`, `details`, `last_change`) VALUES
(1, 'test user 1', 'mZ84LPpcBl6PUqVRAiA1BBSTtzGgvdCzvP03io0BE0OYmqsDSDz9bCFNJEEptUjX', 'topic LIKE \'timestamp%\'', 'This is test user 1 who has access to only timestamp topic data and any other subtopics under that', '2018-12-13 13:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `ruleEngine`
--

CREATE TABLE `ruleEngine` (
  `id` int(11) NOT NULL,
  `ruleName` varchar(255) NOT NULL,
  `active` binary(1) NOT NULL DEFAULT '\0',
  `topicPattern` varchar(1024) NOT NULL,
  `payloadPattern` varchar(2048) NOT NULL,
  `method` varchar(7) NOT NULL DEFAULT 'GET',
  `webHook` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruleEngine`
--

INSERT INTO `ruleEngine` (`id`, `ruleName`, `active`, `topicPattern`, `payloadPattern`, `method`, `webHook`) VALUES
(1, 'timestamp rule', 0x31, 'timestamp%', '%', 'POST', 'https://www.in24hrs.xyz:1880/pub/modifiedTime/rule-engine-working'),
(2, 'timestamp rule 2', 0x31, 'timestamp%', '%', 'POST', 'https://www.in24hrs.xyz:1880/pub/modifiedTime/rule-engine-working-again'),
(3, 'again rule', 0x31, '%', '%again', 'POST', 'https://www.in24hrs.xyz:1880/pub/modifiedTime/again found');

-- --------------------------------------------------------

--
-- Table structure for table `thingData`
--

CREATE TABLE `thingData` (
  `id` int(11) NOT NULL,
  `topic` varchar(1024) NOT NULL,
  `payload` varchar(2048) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `deleted` binary(1) NOT NULL DEFAULT '\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thingData`
--

INSERT INTO `thingData` (`id`, `topic`, `payload`, `timestamp`, `deleted`) VALUES
(7, 'myTopic', 'myPayload', '1543716966.189', 0x31),
(8, 'myTopic', 'myPayload', '1543717154.899', 0x31),
(9, 'tpc', 'pld', '1543717212.529', 0x30),
(10, 'timestamp', '1543725134993', '1543725134.996', 0x30),
(11, 'postTopic', '123%20abd', '1543725319.465', 0x30),
(12, 'timestamp', '1543725601041', '1543725601.045', 0x30),
(13, 'timestamp', '1543726501041', '1543726501.044', 0x30),
(14, 'timestamp', '1543728258183', '1543728258.187', 0x30),
(15, 'timestamp', '1543729089448', '1543729089.451', 0x30),
(16, 'timestamp', '1543729974735', '1543729974.738', 0x30),
(17, 'timestamp', '1543729989450', '1543729989.454', 0x30),
(18, 'mytopic', 'myplayload', '1543731089.784', 0x30),
(19, 'timestamp', '1543731910830', '1543731910.834', 0x30),
(20, 'timestamp', '1543732810833', '1543732810.839', 0x30),
(21, 'timestamp', '1543733710835', '1543733710.838', 0x30),
(22, 'timestamp', '1543734610835', '1543734610.838', 0x30),
(23, 'timestamp', '1543735510838', '1543735510.844', 0x30),
(24, 'timestamp', '1543736410840', '1543736410.846', 0x30),
(25, 'timestamp', '1543737310841', '1543737310.847', 0x30),
(26, 'timestamp', '1543737559248', '1543737559.251', 0x30),
(27, 'test', 'pay', '1544007724.847', 0x30),
(28, 'timestamp', '1544011288907', '1544011288.910', 0x30),
(29, 'timestamp', '1544011398750', '1544011398.753', 0x30),
(30, 'timestamp', '1544011399074', '1544011399.078', 0x30),
(31, 'timestamp', '1544011400243', '1544011400.245', 0x30),
(32, 'timestamp', '1544177423967', '1544177423.973', 0x31),
(33, 'timestamp', '1544188641076', '1544188641.084', 0x30),
(34, 'timestamp', '1544188664410', '1544188664.413', 0x30),
(35, 'timestamp', '1544188710842', '1544188710.845', 0x30),
(36, 'timestamp', '1544188856526', '1544188856.529', 0x30),
(37, 'mytopic', 'mypl', '1544191757.410', 0x30),
(38, 'postTopic', '%5Ba%2Cb%2Cc%5D', '1544191804.277', 0x30),
(39, 'myTopic', '%5Ba%2Cb%2Cc%5D', '1544191834.926', 0x30),
(40, 'myTopic', '[a,b,c]', '1544191871.456', 0x30),
(41, 'myTopic', '[a,b,c]', '1544191914.605', 0x30),
(42, 'myTopic', '[a,b,c]', '1544191947.304', 0x30),
(43, 'myTopic', '[a,b,c]', '1544191973.796', 0x30),
(44, 'myTopic', '[a,b,c]', '1544192138.685', 0x30),
(45, 'myTopic', '[\'a\',b,c]', '1544192862.888', 0x30),
(46, 'myTopic', '1,23', '1544192991.595', 0x30),
(47, 'timestamp', '1544319016245', '1544319016.254', 0x30),
(48, 'timestamp', '1544319072767', '1544319072.775', 0x30),
(49, 'timestamp', '1544319220851', '1544319220.854', 0x30),
(50, 'timestamp', '1544319286976', '1544319286.981', 0x30),
(51, 'timestamp', '1544319322872', '1544319322.880', 0x30),
(52, 'timestamp', '1544319352944', '1544319352.947', 0x30),
(53, 'timestamp', '1544319420102', '1544319420.106', 0x30),
(54, 'modifiedTime', 'rule-engine-working', '1544319420.251', 0x30),
(55, 'timestamp', '1544319454436', '1544319454.440', 0x30),
(56, 'modifiedTime', 'rule-engine-working', '1544319454.467', 0x30),
(57, 'timestamp', '1544319812143', '1544319812.146', 0x30),
(58, 'modifiedTime', 'rule-engine-working', '1544319812.184', 0x30),
(59, 'timestamp', '1544319839794', '1544319839.801', 0x30),
(60, 'modifiedTime', 'rule-engine-working', '1544319839.843', 0x30),
(61, 'timestamp', '1544320864898', '1544320864.905', 0x30),
(62, 'timestamp', '1544321350337', '1544321350.347', 0x30),
(63, 'modifiedTime', 'rule-engine-working', '1544321350.423', 0x30),
(64, 'timestamp', '1544321370407', '1544321370.413', 0x30),
(65, 'modifiedTime', 'rule-engine-working', '1544321370.441', 0x30),
(66, 'timestamp', '1544324038243', '1544324038.249', 0x30),
(67, 'timestamp', '1544324084786', '1544324084.789', 0x30),
(68, 'timestamp', '1544324114618', '1544324114.628', 0x30),
(69, 'timestamp', '1544324140441', '1544324140.444', 0x30),
(70, 'modifiedTime', 'rule-engine-working', '1544324140.563', 0x30),
(71, 'timestamp', '123', '1544324230.218', 0x30),
(72, 'modifiedTime', 'rule-engine-working', '1544324230.275', 0x30),
(73, 'modifiedTime', 'rule-engine-working-again', '1544324230.495', 0x30),
(74, 'timestamp', '123', '1544324347.186', 0x30),
(75, 'modifiedTime', 'rule-engine-working', '1544324347.237', 0x30),
(76, 'modifiedTime', 'rule-engine-working-again', '1544324347.287', 0x30),
(77, 'modifiedTime', 'again found', '1544324347.334', 0x30),
(78, 'timestamp/123', 'Hello', '1544325671.951', 0x30),
(79, 'modifiedTime', 'rule-engine-working', '1544325672.007', 0x30),
(80, 'modifiedTime', 'rule-engine-working-again', '1544325672.054', 0x30),
(81, 'modifiedTime', 'again found', '1544325672.102', 0x30),
(82, 'timestamp/123', 'Hello', '1544325682.815', 0x30),
(83, 'modifiedTime', 'rule-engine-working', '1544325682.856', 0x30),
(84, 'modifiedTime', 'rule-engine-working-again', '1544325682.902', 0x30),
(85, 'modifiedTime', 'again found', '1544325682.950', 0x30),
(86, 'timestamp/123', 'Hello', '1544325687.238', 0x30),
(87, 'modifiedTime', 'rule-engine-working', '1544325687.275', 0x30),
(88, 'modifiedTime', 'rule-engine-working-again', '1544325687.321', 0x30),
(89, 'modifiedTime', 'again found', '1544325687.372', 0x30),
(90, 'stamp', 'anan12345tam', '1544340314.643', 0x30),
(91, 'stamp', 'anan12345tam', '1544340355.604', 0x30),
(92, 'stamp', 'anan12345tam', '1544340406.626', 0x30),
(93, 'timestamp', '1544340451703', '1544340451.710', 0x30),
(94, 'modifiedTime', 'rule-engine-working-again', '1544340451.797', 0x30),
(95, 'modifiedTime', 'rule-engine-working', '1544340451.847', 0x30),
(96, 'modifiedTime', 'again found', '1544340451.897', 0x30),
(97, 'timestamp', '1544352766026', '1544352766.030', 0x30),
(98, 'modifiedTime', 'rule-engine-working-again', '1544352766.239', 0x30),
(99, 'modifiedTime', 'rule-engine-working', '1544352766.291', 0x30),
(100, 'modifiedTime', 'again found', '1544352766.293', 0x30),
(101, 'timestamp', '1544352823063', '1544352823.069', 0x30),
(102, 'modifiedTime', 'rule-engine-working', '1544352823.109', 0x30),
(103, 'modifiedTime', 'rule-engine-working-again', '1544352823.157', 0x30),
(104, 'modifiedTime', 'again found', '1544352823.205', 0x30),
(105, 'timestamp/123', '1234', '1544691153.744', 0x30),
(106, 'modifiedTime', 'rule-engine-working-again', '1544691153.809', 0x30),
(107, 'modifiedTime', 'rule-engine-working', '1544691153.860', 0x30),
(108, 'modifiedTime', 'again found', '1544691153.861', 0x30),
(109, 'timestamp/123', '1234', '1544691167.307', 0x30),
(110, 'modifiedTime', 'rule-engine-working', '1544691167.357', 0x30),
(111, 'modifiedTime', 'rule-engine-working-again', '1544691167.411', 0x30),
(112, 'modifiedTime', 'again found', '1544691167.457', 0x30),
(113, 'timestamp/123', '1234', '1544691211.783', 0x30),
(114, 'modifiedTime', 'rule-engine-working', '1544691211.844', 0x30),
(115, 'modifiedTime', 'rule-engine-working-again', '1544691211.845', 0x30),
(116, 'modifiedTime', 'again found', '1544691211.889', 0x30),
(117, 'timestamp/123', '1234', '1544691229.201', 0x30),
(118, 'modifiedTime', 'rule-engine-working', '1544691229.262', 0x30),
(119, 'modifiedTime', 'rule-engine-working-again', '1544691229.313', 0x30),
(120, 'modifiedTime', 'again found', '1544691229.361', 0x30),
(121, 'timestamp', '1234', '1544691245.819', 0x30),
(122, 'modifiedTime', 'rule-engine-working', '1544691245.864', 0x30),
(123, 'modifiedTime', 'rule-engine-working-again', '1544691245.909', 0x30),
(124, 'modifiedTime', 'again found', '1544691245.957', 0x30),
(125, 'timestamp', '1544691272210', '1544691272.215', 0x30),
(126, 'modifiedTime', 'rule-engine-working', '1544691272.260', 0x30),
(127, 'modifiedTime', 'rule-engine-working-again', '1544691272.305', 0x30),
(128, 'modifiedTime', 'again found', '1544691272.353', 0x30),
(129, 'timestamp/new', '1234', '1544691290.021', 0x30),
(130, 'modifiedTime', 'rule-engine-working', '1544691290.079', 0x30),
(131, 'modifiedTime', 'rule-engine-working-again', '1544691290.125', 0x30),
(132, 'modifiedTime', 'again found', '1544691290.174', 0x30),
(133, 'timestamp/new', '1234', '1544691313000', 0x30),
(134, 'modifiedTime', 'rule-engine-working', '1544691313.057', 0x30),
(135, 'modifiedTime', 'rule-engine-working-again', '1544691313.058', 0x30),
(136, 'modifiedTime', 'again found', '1544691313.121', 0x30),
(137, 'timestamp', '1234', '1544691320.368', 0x30),
(138, 'modifiedTime', 'rule-engine-working', '1544691320.415', 0x30),
(139, 'modifiedTime', 'rule-engine-working-again', '1544691320.461', 0x30),
(140, 'modifiedTime', 'again found', '1544691320.509', 0x30),
(141, 'timestamp', 'exact-match', '1544691426.480', 0x30),
(142, 'modifiedTime', 'rule-engine-working', '1544691426.531', 0x30),
(143, 'modifiedTime', 'rule-engine-working-again', '1544691426.577', 0x30),
(144, 'modifiedTime', 'again found', '1544691426.625', 0x30),
(145, 'timestamp', 'exact', '1544691432.880', 0x30),
(146, 'modifiedTime', 'rule-engine-working', '1544691432.929', 0x30),
(147, 'modifiedTime', 'rule-engine-working-again', '1544691432.977', 0x30),
(148, 'modifiedTime', 'again found', '1544691433.025', 0x30),
(149, 'timestamp', 'partial-match', '1544691441.578', 0x30),
(150, 'modifiedTime', 'rule-engine-working', '1544691441.630', 0x30),
(151, 'modifiedTime', 'rule-engine-working-again', '1544691441.677', 0x30),
(152, 'modifiedTime', 'again found', '1544691441.725', 0x30),
(153, 'test', 'partial', '1544691451.237', 0x30),
(154, 'rule-test', 'partial', '1544691468.118', 0x30),
(155, 'rule-test', 'partial-match', '1544691471.234', 0x30),
(156, 'rule-test', 'exact', '1544691474.739', 0x30),
(157, 'rule-test', 'exact-match', '1544691478.061', 0x30),
(158, 'timestamp', '1544753810713', '1544753810.718', 0x30),
(159, 'modifiedTime', 'rule-engine-working', '1544753810.765', 0x30),
(160, 'modifiedTime', 'rule-engine-working-again', '1544753810.813', 0x30),
(161, 'modifiedTime', 'again found', '1544753810.866', 0x30),
(162, 'timestamp', '1544776249564', '1544776249.569', 0x30),
(163, 'modifiedTime', 'rule-engine-working-again', '1544776249.619', 0x30),
(164, 'modifiedTime', 'rule-engine-working', '1544776249.667', 0x30),
(165, 'modifiedTime', 'again found', '1544776249.669', 0x30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authTable`
--
ALTER TABLE `authTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruleEngine`
--
ALTER TABLE `ruleEngine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thingData`
--
ALTER TABLE `thingData`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authTable`
--
ALTER TABLE `authTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ruleEngine`
--
ALTER TABLE `ruleEngine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `thingData`
--
ALTER TABLE `thingData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
