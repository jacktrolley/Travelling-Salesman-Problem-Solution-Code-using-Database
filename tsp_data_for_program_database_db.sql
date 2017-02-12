-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2016 at 03:37 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tsp_data_for_program_database`
--
CREATE DATABASE IF NOT EXISTS `tsp_data_for_program_database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tsp_data_for_program_database`;

-- --------------------------------------------------------

--
-- Table structure for table `vertex_10`
--

DROP TABLE IF EXISTS `vertex_10`;
CREATE TABLE IF NOT EXISTS `vertex_10` (
  `Ashland` int(11) NOT NULL,
  `Astoria` int(11) NOT NULL,
  `Bend` int(11) NOT NULL,
  `Corvallis` int(11) NOT NULL,
  `GreaterLake` int(11) NOT NULL,
  `Eugene` int(11) NOT NULL,
  `Newport` int(11) NOT NULL,
  `Portland` int(11) NOT NULL,
  `Salem` int(11) NOT NULL,
  `Seaside` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vertex_10`
--

INSERT INTO `vertex_10` (`Ashland`, `Astoria`, `Bend`, `Corvallis`, `GreaterLake`, `Eugene`, `Newport`, `Portland`, `Salem`, `Seaside`) VALUES
(0, 374, 200, 223, 108, 178, 252, 285, 240, 356),
(374, 0, 255, 166, 433, 199, 135, 95, 136, 17),
(200, 255, 0, 128, 277, 128, 180, 160, 131, 247),
(223, 166, 128, 0, 430, 47, 52, 84, 40, 155),
(108, 433, 277, 430, 0, 453, 478, 344, 389, 423),
(178, 199, 128, 47, 453, 0, 91, 110, 64, 181),
(252, 135, 180, 52, 478, 91, 0, 114, 83, 117),
(285, 95, 160, 84, 344, 110, 114, 0, 47, 78),
(240, 136, 131, 40, 389, 64, 83, 47, 0, 118),
(356, 17, 247, 155, 423, 181, 117, 78, 118, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vertex_20`
--

DROP TABLE IF EXISTS `vertex_20`;
CREATE TABLE IF NOT EXISTS `vertex_20` (
  `ArizonaState` int(11) NOT NULL,
  `BrighamYoung` int(11) NOT NULL,
  `Brown` int(11) NOT NULL,
  `Colarodo` int(11) NOT NULL,
  `Duke` int(11) NOT NULL,
  `FloridaState` int(11) NOT NULL,
  `Louisana` int(11) NOT NULL,
  `Louisville` int(11) NOT NULL,
  `Michigan` int(11) NOT NULL,
  `NewMexico` int(11) NOT NULL,
  `NorthDakota` int(11) NOT NULL,
  `NotreDame` int(11) NOT NULL,
  `Ohio` int(11) NOT NULL,
  `Oklohama` int(11) NOT NULL,
  `Oregon` int(11) NOT NULL,
  `Pilt` int(11) NOT NULL,
  `Stanford` int(11) NOT NULL,
  `TexamAm` int(11) NOT NULL,
  `Wisconsin` int(11) NOT NULL,
  `Yale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vertex_20`
--

INSERT INTO `vertex_20` (`ArizonaState`, `BrighamYoung`, `Brown`, `Colarodo`, `Duke`, `FloridaState`, `Louisana`, `Louisville`, `Michigan`, `NewMexico`, `NorthDakota`, `NotreDame`, `Ohio`, `Oklohama`, `Oregon`, `Pilt`, `Stanford`, `TexamAm`, `Wisconsin`, `Yale`) VALUES
(0, 648, 2625, 549, 2185, 1898, 1458, 1752, 1963, 427, 1743, 1817, 1899, 1060, 1148, 2084, 732, 1095, 1725, 2524),
(648, 0, 2362, 481, 2129, 2030, 1641, 1594, 1638, 557, 1214, 1492, 1710, 1126, 825, 1861, 811, 1195, 1375, 2262),
(2625, 2363, 0, 1965, 669, 1274, 1541, 920, 744, 2172, 1623, 875, 720, 1595, 3085, 543, 3113, 1734, 1111, 103),
(549, 481, 1965, 0, 1667, 1605, 1194, 1132, 1242, 431, 963, 1096, 1280, 664, 1249, 1464, 1276, 799, 979, 1866),
(2185, 2129, 669, 1667, 0, 621, 906, 541, 643, 1733, 1504, 733, 459, 1187, 2880, 479, 2791, 1169, 932, 566),
(1898, 2030, 1274, 1605, 621, 0, 433, 662, 978, 1482, 1669, 925, 839, 1007, 2855, 929, 2541, 843, 1107, 1172),
(1458, 1641, 1541, 1194, 906, 443, 0, 754, 1106, 1074, 1447, 976, 968, 638, 2477, 1148, 2132, 435, 1027, 1442),
(1752, 1594, 920, 1132, 541, 662, 754, 0, 347, 1293, 1015, 261, 209, 724, 2319, 389, 2346, 841, 443, 818),
(1963, 1638, 744, 1242, 643, 978, 1106, 347, 0, 1511, 961, 170, 183, 970, 2361, 287, 2389, 1124, 388, 688),
(427, 557, 2172, 431, 1733, 1482, 1074, 1293, 1511, 0, 1318, 1363, 1447, 585, 1378, 1631, 1063, 641, 1275, 2071),
(1743, 1214, 1623, 963, 1504, 1669, 1447, 1015, 961, 1318, 0, 813, 1078, 918, 1571, 1182, 1882, 1147, 582, 1583),
(1817, 1492, 875, 1096, 733, 925, 976, 261, 170, 1363, 813, 0, 271, 826, 2215, 373, 2242, 979, 241, 774),
(1899, 1710, 720, 1280, 459, 839, 968, 209, 183, 1447, 1078, 271, 0, 882, 2453, 192, 2408, 1049, 504, 621),
(1060, 1126, 1595, 664, 1187, 1007, 638, 724, 970, 585, 918, 826, 882, 0, 1891, 1066, 1667, 251, 798, 1495),
(1148, 825, 3085, 1249, 2880, 2855, 2477, 2319, 2361, 1378, 1571, 2215, 2453, 1891, 0, 2583, 559, 2042, 2108, 2984),
(2084, 1861, 543, 1464, 479, 929, 1148, 389, 287, 1631, 1182, 373, 192, 1066, 2583, 0, 2612, 1220, 611, 442),
(732, 811, 3113, 1276, 2791, 2541, 2132, 2346, 2389, 1063, 1882, 2242, 2408, 1667, 559, 2612, 0, 1701, 2125, 3012),
(1095, 1195, 1734, 799, 1169, 843, 435, 841, 1124, 641, 1147, 979, 1049, 251, 2042, 1220, 1701, 0, 977, 1634),
(1725, 1375, 1111, 979, 932, 1107, 1027, 443, 388, 1275, 582, 241, 504, 798, 2108, 611, 2125, 977, 0, 1011),
(2524, 2262, 103, 1866, 566, 1172, 1442, 818, 688, 2071, 1583, 774, 621, 1495, 2984, 442, 3012, 1634, 1011, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vertex_5`
--

DROP TABLE IF EXISTS `vertex_5`;
CREATE TABLE IF NOT EXISTS `vertex_5` (
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `e` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vertex_5`
--

INSERT INTO `vertex_5` (`a`, `b`, `c`, `d`, `e`) VALUES
(0, 14, 12, 7, 10),
(14, 0, 9, 13, 5),
(12, 9, 0, 6, 8),
(7, 13, 6, 0, 11),
(10, 5, 8, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vertex_5_problem_solver`
--

DROP TABLE IF EXISTS `vertex_5_problem_solver`;
CREATE TABLE IF NOT EXISTS `vertex_5_problem_solver` (
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `e` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vertex_5_problem_solver`
--

INSERT INTO `vertex_5_problem_solver` (`a`, `b`, `c`, `d`, `e`) VALUES
(0, 8, 8, 6, 7),
(8, 0, 12, 10, 11),
(8, 12, 0, 5, 9),
(6, 10, 5, 0, 15),
(7, 11, 9, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vertex_7`
--

DROP TABLE IF EXISTS `vertex_7`;
CREATE TABLE IF NOT EXISTS `vertex_7` (
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `e` int(11) NOT NULL,
  `f` int(11) NOT NULL,
  `g` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vertex_7`
--

INSERT INTO `vertex_7` (`a`, `b`, `c`, `d`, `e`, `f`, `g`) VALUES
(0, 34, 36, 37, 31, 33, 35),
(34, 0, 29, 23, 22, 25, 24),
(36, 29, 0, 17, 12, 18, 17),
(37, 23, 17, 0, 32, 30, 29),
(31, 22, 12, 32, 0, 26, 24),
(33, 25, 18, 30, 26, 0, 19),
(35, 24, 17, 29, 24, 19, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
