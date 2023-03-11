-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2023 at 02:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trailer_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyId` char(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Street1` varchar(50) DEFAULT NULL,
  `Street2` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyId`, `Name`, `Street1`, `Street2`, `City`, `State`, `Zip`) VALUES
('1', 'ABC Logistics', '123 Corporate Drive', 'Suite530', 'Lansing', 'MI', '48901');

-- --------------------------------------------------------

--
-- Table structure for table `dock_door`
--

CREATE TABLE `dock_door` (
  `DoorNo` int(11) NOT NULL,
  `WhGln` char(13) NOT NULL,
  `ShipOrRec` char(1) NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dock_door`
--

INSERT INTO `dock_door` (`DoorNo`, `WhGln`, `ShipOrRec`, `Active`) VALUES
(1, '0123456789123', 'S', 1),
(2, '0123456789123', 'S', 1),
(3, '0123456789123', 'S', 1),
(4, '0123456789123', 'S', 1),
(5, '0123456789123', 'S', 1),
(6, '0123456789123', 'S', 0),
(7, '0123456789123', 'S', 1),
(8, '0123456789123', 'S', 1),
(9, '0123456789123', 'S', 1),
(10, '0123456789123', 'S', 1),
(11, '0123456789123', 'S', 1),
(12, '0123456789123', 'S', 1),
(13, '0123456789123', 'S', 1),
(14, '0123456789123', 'S', 0),
(15, '0123456789123', 'S', 0),
(16, '0123456789123', 'S', 1),
(17, '0123456789123', 'S', 1),
(18, '0123456789123', 'S', 1),
(19, '0123456789123', 'S', 1),
(20, '0123456789123', 'S', 1),
(21, '0123456789123', 'S', 1),
(22, '0123456789123', 'S', 1),
(23, '0123456789123', 'S', 1),
(24, '0123456789123', 'S', 1),
(25, '0123456789123', 'S', 1),
(26, '0123456789123', 'S', 1),
(27, '0123456789123', 'S', 1),
(28, '0123456789123', 'S', 1),
(29, '0123456789123', 'S', 1),
(30, '0123456789123', 'S', 1),
(31, '0123456789123', 'S', 0),
(32, '0123456789123', 'S', 1),
(33, '0123456789123', 'S', 1),
(34, '0123456789123', 'S', 1),
(35, '0123456789123', 'S', 1),
(36, '0123456789123', 'S', 1),
(37, '0123456789123', 'S', 1),
(38, '0123456789123', 'S', 1),
(39, '0123456789123', 'S', 1),
(40, '0123456789123', 'S', 1),
(41, '0123456789123', 'S', 1),
(42, '0123456789123', 'R', 0),
(43, '0123456789123', 'R', 0),
(44, '0123456789123', 'R', 0),
(45, '0123456789123', 'R', 1),
(46, '0123456789123', 'R', 1),
(47, '0123456789123', 'R', 1),
(48, '0123456789123', 'R', 1),
(49, '0123456789123', 'R', 1),
(50, '0123456789123', 'R', 1),
(51, '0123456789123', 'R', 1),
(52, '0123456789123', 'R', 0),
(53, '0123456789123', 'R', 1),
(54, '0123456789123', 'R', 1),
(55, '0123456789123', 'R', 1),
(56, '0123456789123', 'R', 1),
(57, '0123456789123', 'R', 1),
(58, '0123456789123', 'R', 1),
(59, '0123456789123', 'R', 1),
(60, '0123456789123', 'R', 1),
(61, '0123456789123', 'R', 1),
(62, '0123456789123', 'R', 1),
(63, '0123456789123', 'R', 0),
(64, '0123456789123', 'R', 1),
(65, '0123456789123', 'R', 1),
(66, '0123456789123', 'R', 1),
(67, '0123456789123', 'R', 1),
(68, '0123456789123', 'R', 1),
(69, '0123456789123', 'R', 1),
(70, '0123456789123', 'R', 1),
(71, '0123456789123', 'R', 1),
(72, '0123456789123', 'R', 1),
(73, '0123456789123', 'R', 1),
(74, '0123456789123', 'R', 1),
(75, '0123456789123', 'R', 1),
(76, '0123456789123', 'R', 1),
(77, '0123456789123', 'R', 1),
(78, '0123456789123', 'R', 1),
(79, '0123456789123', 'R', 1),
(80, '0123456789123', 'R', 1),
(81, '0123456789123', 'R', 1),
(82, '0123456789123', 'R', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeId` char(10) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `CompanyId` char(10) DEFAULT NULL,
  `WhGln` char(13) DEFAULT NULL,
  `WRole` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeId`, `FName`, `LName`, `CompanyId`, `WhGln`, `WRole`) VALUES
('101', 'James', 'McGill', '1', '0123456789123', 'Supervisor'),
('102', 'Michael', 'Bolton', '1', '0123456789123', 'Supervisor'),
('103', 'Peggy', 'Hill', '1', '0123456789123', 'Spotter'),
('104', 'Randy', 'Marsh', '1', '0123456789123', 'Operator'),
('105', 'Harry', 'Henderson', '1', '0123456789123', 'Supervisor'),
('106', 'Johnny', 'Bravo', '1', '0123456789123', 'Operator'),
('107', 'Nancy', 'Botwin', '1', '0123456789123', 'Operator'),
('108', 'Jack', 'Reacher', '1', '0123456789123', 'Operator'),
('109', 'Peter', 'Parker', '1', '0123456789123', 'Spotter'),
('110', 'Sarah', 'Braverman', '1', '0123456789123', 'Supervisor'),
('111', 'Ross', 'Gellar', '1', '0123456789123', 'Gatekeeper'),
('112', 'Barney', 'Stinson', '1', '0123456789123', 'Operator'),
('113', 'Heather', 'Brooks', '1', '0123456789123', 'Operator'),
('114', 'Rod', 'Farva', '1', '0123456789123', 'Gatekeeper'),
('115', 'Tony', 'Soprano', '1', '0123456789123', 'Supervisor'),
('116', 'Jorah', 'Mormont', '1', '0123456789123', 'Operator'),
('117', 'Andy', 'Bernard', '1', '0123456789123', 'Spotter'),
('118', 'Lisa', 'Simpson', '1', '0123456789123', 'Operator'),
('119', 'Yacko', 'Warner', '1', '0123456789123', 'Operator'),
('120', 'Jack', 'Bauer', '1', '0123456789123', 'Spotter'),
('121', 'Archie', 'Bunker', '1', '0123456789123', 'Spotter'),
('122', 'Maxwell', 'Smart', '1', '0123456789123', 'Spotter'),
('123', 'Kate', 'Beckett', '1', '0123456789123', 'Supervisor'),
('124', 'Clair', 'Huxtable', '1', '0123456789123', 'Operator'),
('125', 'Karen', 'Walker', '1', '0123456789123', 'Spotter'),
('126', 'Jenna', 'Maroney', '1', '0123456789123', 'Gatekeeper');

-- --------------------------------------------------------

--
-- Table structure for table `load_detail`
--

CREATE TABLE `load_detail` (
  `LoadNo` char(10) NOT NULL,
  `Sku` varchar(20) NOT NULL,
  `Qty` double(15,3) NOT NULL CHECK (`Qty` > 0),
  `ProdWeight` double(15,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `load_detail`
--

INSERT INTO `load_detail` (`LoadNo`, `Sku`, `Qty`, `ProdWeight`) VALUES
('100000001', 'HR11189', 15.000, 12810.000),
('100000002', 'HR11257', 2.000, 1824.000),
('100000002', 'MG58477', 1.000, 684.000),
('100000003', 'PN14586', 24.000, 35808.000),
('100000004', 'PN25843', 8.000, 6416.000),
('100000005', 'HR15264', 8.000, 10120.000),
('100000005', 'MG58477', 7.000, 4788.000),
('100000005', 'PN15948', 4.000, 2740.000),
('100000006', 'MG60201', 16.000, 11712.000),
('100000007', 'PN25843', 25.000, 20050.000),
('100000008', 'HR11189', 9.000, 7686.000),
('100000008', 'MG55746', 12.000, 6660.000),
('100000008', 'PN15948', 5.000, 3425.000),
('100000009', 'MG96351', 13.000, 21554.000),
('100000010', 'MG60201', 10.000, 7320.000),
('100000011', 'PN02514', 9.000, 9990.000),
('100000012', 'MG58477', 2.000, 1368.000);

-- --------------------------------------------------------

--
-- Table structure for table `load_master`
--

CREATE TABLE `load_master` (
  `LoadNo` char(10) NOT NULL,
  `InOrOut` char(1) NOT NULL,
  `PlanIn` datetime DEFAULT NULL,
  `ActualIn` datetime DEFAULT NULL,
  `PlanOut` datetime DEFAULT NULL,
  `ActualOut` datetime DEFAULT NULL,
  `Size` int(11) NOT NULL CHECK (`Size` > 0 and `Size` < 27),
  `Street1` varchar(50) DEFAULT NULL,
  `Street2` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` char(5) DEFAULT NULL,
  `WhGln` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `load_master`
--

INSERT INTO `load_master` (`LoadNo`, `InOrOut`, `PlanIn`, `ActualIn`, `PlanOut`, `ActualOut`, `Size`, `Street1`, `Street2`, `City`, `State`, `Zip`, `WhGln`) VALUES
('100000001', 'I', '2023-03-09 10:30:00', '2022-03-09 09:54:12', NULL, NULL, 15, '456 Commerce Blvd', NULL, 'Plainfield', 'IN', '46168', '0123456789123'),
('100000002', 'I', '2023-03-09 10:30:00', '2022-03-09 10:31:54', NULL, NULL, 3, '456 Commerce Blvd', NULL, 'Plainfield', 'IN', '46168', '0123456789123'),
('100000003', 'I', '2023-03-09 11:00:00', '2022-03-09 10:57:16', NULL, NULL, 24, '456 Commerce Blvd', NULL, 'Plainfield', 'IN', '46168', '0123456789123'),
('100000004', 'I', '2023-03-09 11:30:00', '2022-03-09 11:46:11', NULL, NULL, 8, '456 Commerce Blvd', NULL, 'Plainfield', 'IN', '46168', '0123456789123'),
('100000005', 'I', '2023-03-14 08:30:00', NULL, NULL, NULL, 19, '456 Commerce Blvd', NULL, 'Plainfield', 'IN', '46168', '0123456789123'),
('100000006', 'I', '2023-03-14 09:30:00', NULL, NULL, NULL, 16, '456 Commerce Blvd', NULL, 'Plainfield', 'IN', '46168', '0123456789123'),
('100000007', 'O', NULL, NULL, '2022-03-12 11:00:00', NULL, 25, '124 Corporate Dr', NULL, 'Lansing', 'MI', '48901', '0123456789123'),
('100000008', 'O', NULL, NULL, '2022-03-12 12:00:00', NULL, 26, '4677 Middle Harbor Rd', NULL, 'Portland', 'OR', '94607', '0123456789123'),
('100000009', 'O', NULL, NULL, '2022-03-12 13:00:00', NULL, 13, '57 Holt Rd', NULL, 'North Andover', 'MA', '01845', '0123456789123'),
('100000010', 'O', NULL, NULL, '2022-03-13 09:00:00', NULL, 10, '65724 Industrial Parkway', NULL, 'Columbus', 'OH', '43054', '0123456789123'),
('100000011', 'O', NULL, NULL, '2022-03-13 10:00:00', NULL, 9, '3991 Mead Rd', NULL, 'Macon', 'GA', '31206', '0123456789123'),
('100000012', 'O', NULL, NULL, '2022-03-14 13:00:00', NULL, 2, '4420 Cotton Flat Rd', NULL, 'Midland', 'TX', '79706', '0123456789123');

-- --------------------------------------------------------

--
-- Table structure for table `parking_spot`
--

CREATE TABLE `parking_spot` (
  `SpotNo` int(11) NOT NULL,
  `WhGln` char(13) NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parking_spot`
--

INSERT INTO `parking_spot` (`SpotNo`, `WhGln`, `Active`) VALUES
(101, '0123456789123', 1),
(102, '0123456789123', 1),
(103, '0123456789123', 1),
(104, '0123456789123', 1),
(105, '0123456789123', 1),
(106, '0123456789123', 0),
(107, '0123456789123', 1),
(108, '0123456789123', 1),
(109, '0123456789123', 1),
(110, '0123456789123', 1),
(111, '0123456789123', 1),
(112, '0123456789123', 1),
(113, '0123456789123', 1),
(114, '0123456789123', 0),
(115, '0123456789123', 0),
(116, '0123456789123', 1),
(117, '0123456789123', 1),
(118, '0123456789123', 1),
(119, '0123456789123', 1),
(120, '0123456789123', 1),
(121, '0123456789123', 1),
(122, '0123456789123', 1),
(123, '0123456789123', 1),
(124, '0123456789123', 1),
(125, '0123456789123', 1),
(126, '0123456789123', 1),
(127, '0123456789123', 1),
(128, '0123456789123', 1),
(129, '0123456789123', 1),
(130, '0123456789123', 1),
(131, '0123456789123', 0),
(132, '0123456789123', 1),
(133, '0123456789123', 1),
(134, '0123456789123', 1),
(135, '0123456789123', 1),
(136, '0123456789123', 1),
(137, '0123456789123', 1),
(138, '0123456789123', 1),
(139, '0123456789123', 1),
(140, '0123456789123', 1),
(141, '0123456789123', 1),
(142, '0123456789123', 0),
(143, '0123456789123', 0),
(144, '0123456789123', 0),
(145, '0123456789123', 1),
(146, '0123456789123', 1),
(147, '0123456789123', 1),
(148, '0123456789123', 1),
(149, '0123456789123', 1),
(150, '0123456789123', 1),
(151, '0123456789123', 1),
(152, '0123456789123', 0),
(153, '0123456789123', 1),
(154, '0123456789123', 1),
(155, '0123456789123', 1),
(156, '0123456789123', 1),
(157, '0123456789123', 1),
(158, '0123456789123', 1),
(159, '0123456789123', 1),
(160, '0123456789123', 1),
(161, '0123456789123', 1),
(162, '0123456789123', 1),
(163, '0123456789123', 0),
(164, '0123456789123', 1),
(165, '0123456789123', 1),
(166, '0123456789123', 1),
(167, '0123456789123', 1),
(168, '0123456789123', 1),
(169, '0123456789123', 1),
(170, '0123456789123', 1),
(171, '0123456789123', 1),
(172, '0123456789123', 1),
(173, '0123456789123', 1),
(174, '0123456789123', 1),
(175, '0123456789123', 1),
(176, '0123456789123', 1),
(177, '0123456789123', 1),
(178, '0123456789123', 1),
(179, '0123456789123', 1),
(180, '0123456789123', 1),
(181, '0123456789123', 1),
(182, '0123456789123', 1),
(183, '0123456789123', 0),
(184, '0123456789123', 1),
(185, '0123456789123', 1),
(186, '0123456789123', 1),
(187, '0123456789123', 1),
(188, '0123456789123', 1),
(189, '0123456789123', 1),
(190, '0123456789123', 1),
(191, '0123456789123', 1),
(192, '0123456789123', 1),
(193, '0123456789123', 1),
(194, '0123456789123', 1),
(195, '0123456789123', 1),
(196, '0123456789123', 1),
(197, '0123456789123', 1),
(198, '0123456789123', 1),
(199, '0123456789123', 0),
(200, '0123456789123', 1),
(201, '0123456789123', 1),
(202, '0123456789123', 1),
(203, '0123456789123', 1),
(204, '0123456789123', 1),
(205, '0123456789123', 1),
(206, '0123456789123', 1),
(207, '0123456789123', 1),
(208, '0123456789123', 1),
(209, '0123456789123', 1),
(210, '0123456789123', 0),
(211, '0123456789123', 0),
(212, '0123456789123', 0),
(213, '0123456789123', 1),
(214, '0123456789123', 1),
(215, '0123456789123', 1),
(216, '0123456789123', 1),
(217, '0123456789123', 1),
(218, '0123456789123', 1),
(219, '0123456789123', 1),
(220, '0123456789123', 0),
(221, '0123456789123', 1),
(222, '0123456789123', 1),
(223, '0123456789123', 1),
(224, '0123456789123', 1),
(225, '0123456789123', 1),
(226, '0123456789123', 1),
(227, '0123456789123', 1),
(228, '0123456789123', 1),
(229, '0123456789123', 1),
(230, '0123456789123', 1),
(231, '0123456789123', 0),
(232, '0123456789123', 1),
(233, '0123456789123', 1),
(234, '0123456789123', 1),
(235, '0123456789123', 1),
(236, '0123456789123', 1),
(237, '0123456789123', 1),
(238, '0123456789123', 1),
(239, '0123456789123', 1),
(240, '0123456789123', 1),
(241, '0123456789123', 1),
(242, '0123456789123', 1),
(243, '0123456789123', 1),
(244, '0123456789123', 1),
(245, '0123456789123', 1),
(246, '0123456789123', 1),
(247, '0123456789123', 1),
(248, '0123456789123', 1),
(249, '0123456789123', 1),
(250, '0123456789123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Sku` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Uom` varchar(10) DEFAULT NULL,
  `UnitWeight` double(10,3) DEFAULT 0.000 CHECK (`UnitWeight` >= 0),
  `WhGln` char(13) NOT NULL,
  `OnHandQty` double(15,3) DEFAULT 0.000 CHECK (`OnHandQty` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Sku`, `Name`, `Description`, `Uom`, `UnitWeight`, `WhGln`, `OnHandQty`) VALUES
('HR11189', 'Humdinger', 'Dinger that hums', 'PLT', 854.000, '0123456789123', 1500.000),
('HR11257', 'Whatsit', 'Sorta like a whosit', 'PLT', 912.000, '0123456789123', 10.000),
('HR15264', 'Thingamajig', 'Something like that', 'PLT', 1265.000, '0123456789123', 2456.000),
('MG55746', 'Doohicky', 'Never seen one', 'PLT', 555.000, '0123456789123', 123.000),
('MG58477', 'Thingy', 'Funny looking item', 'PLT', 684.000, '0123456789123', 3887.000),
('MG60201', 'Widget', 'Functional device', 'PLT', 732.000, '0123456789123', 253.000),
('MG96351', 'Bearing', 'Steel ball 0.125 inch', 'PLT', 1658.000, '0123456789123', 4650.000),
('PN02514', 'Superball', 'Rubber bouncy ball', 'PLT', 1110.000, '0123456789123', 225.000),
('PN14586', 'Jack', 'Old game piece', 'PLT', 1492.000, '0123456789123', 3215.000),
('PN15948', 'Pen', 'Black ballpoint', 'PLT', 685.000, '0123456789123', 450.000),
('PN25843', 'Hammer', 'Standard claw hammer', 'PLT', 802.000, '0123456789123', 4578.000),
('PN81232', 'Sock', 'Foot gasket', 'PLT', 281.000, '0123456789123', 645.000);

-- --------------------------------------------------------

--
-- Table structure for table `trailer`
--

CREATE TABLE `trailer` (
  `TrailerNo` varchar(10) NOT NULL,
  `Operator` char(10) DEFAULT NULL,
  `SpotNo` int(11) DEFAULT NULL,
  `SpotWh` char(13) DEFAULT NULL,
  `DoorNo` int(11) DEFAULT NULL,
  `DoorWh` char(13) DEFAULT NULL,
  `LoadNo` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trailer`
--

INSERT INTO `trailer` (`TrailerNo`, `Operator`, `SpotNo`, `SpotWh`, `DoorNo`, `DoorWh`, `LoadNo`) VALUES
('102350', NULL, 127, '0123456789123', NULL, NULL, NULL),
('1201486', '116', NULL, NULL, 30, '0123456789123', '100000004'),
('123854QX', '106', 242, '0123456789123', NULL, NULL, '100000008'),
('4456874', '113', NULL, NULL, 14, '0123456789123', '100000009'),
('4544546', NULL, NULL, NULL, 4, '0123456789123', NULL),
('456785', '116', NULL, NULL, 26, '0123456789123', '100000003'),
('544', '113', NULL, NULL, 10, '0123456789123', '100000010'),
('8426321', '112', 173, '0123456789123', NULL, NULL, '100000011'),
('GK482111', NULL, NULL, NULL, 6, '0123456789123', NULL),
('JBH654802', '108', NULL, NULL, 25, '0123456789123', '100000007'),
('JKA986', NULL, 151, '0123456789123', NULL, NULL, NULL),
('JN126845', '108', NULL, NULL, 78, '0123456789123', '100000002'),
('KJ486215', '119', NULL, NULL, 46, '0123456789123', '100000005'),
('LB546872', '112', 192, '0123456789123', NULL, NULL, '100000012'),
('M100025', '112', 145, '0123456789123', NULL, NULL, '100000006'),
('NH40205', NULL, 134, '0123456789123', NULL, NULL, NULL),
('OLGA4567', '106', NULL, NULL, 54, '0123456789123', '100000001'),
('SNJ85643', NULL, NULL, NULL, 34, '0123456789123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `Gln` char(13) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Street1` varchar(50) DEFAULT NULL,
  `Street2` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` char(5) DEFAULT NULL,
  `Capacity` int(11) NOT NULL,
  `CompanyId` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`Gln`, `Name`, `Street1`, `Street2`, `City`, `State`, `Zip`, `Capacity`, `CompanyId`) VALUES
('0123456789123', 'Indianapolis West', '456 Commerce Blvd', NULL, 'Plainfield', 'IN', '46168', 25000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_role`
--

CREATE TABLE `warehouse_role` (
  `JobTitle` varchar(30) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `WhGln` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warehouse_role`
--

INSERT INTO `warehouse_role` (`JobTitle`, `Description`, `WhGln`) VALUES
('Gatekeeper', 'Controls traffic in and out', '0123456789123'),
('Operator', 'Loads and unloads trailers', '0123456789123'),
('Spotter', 'Moves trailers on the property', '0123456789123'),
('Supervisor', 'Oversees operators, spotters, and gatekeepers', '0123456789123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyId`);

--
-- Indexes for table `dock_door`
--
ALTER TABLE `dock_door`
  ADD PRIMARY KEY (`DoorNo`,`WhGln`),
  ADD KEY `WhGln` (`WhGln`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeId`),
  ADD KEY `CompanyId` (`CompanyId`),
  ADD KEY `WhGln` (`WhGln`),
  ADD KEY `WRole` (`WRole`);

--
-- Indexes for table `load_detail`
--
ALTER TABLE `load_detail`
  ADD PRIMARY KEY (`LoadNo`,`Sku`),
  ADD KEY `Sku` (`Sku`);

--
-- Indexes for table `load_master`
--
ALTER TABLE `load_master`
  ADD PRIMARY KEY (`LoadNo`),
  ADD KEY `WhGln` (`WhGln`);

--
-- Indexes for table `parking_spot`
--
ALTER TABLE `parking_spot`
  ADD PRIMARY KEY (`SpotNo`,`WhGln`),
  ADD KEY `WhGln` (`WhGln`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Sku`,`WhGln`),
  ADD KEY `WhGln` (`WhGln`);

--
-- Indexes for table `trailer`
--
ALTER TABLE `trailer`
  ADD PRIMARY KEY (`TrailerNo`),
  ADD KEY `Operator` (`Operator`),
  ADD KEY `SpotNo` (`SpotNo`),
  ADD KEY `SpotWh` (`SpotWh`),
  ADD KEY `DoorNo` (`DoorNo`),
  ADD KEY `DoorWh` (`DoorWh`),
  ADD KEY `LoadNo` (`LoadNo`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`Gln`),
  ADD KEY `CompanyId` (`CompanyId`);

--
-- Indexes for table `warehouse_role`
--
ALTER TABLE `warehouse_role`
  ADD PRIMARY KEY (`JobTitle`,`WhGln`),
  ADD KEY `WhGln` (`WhGln`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dock_door`
--
ALTER TABLE `dock_door`
  ADD CONSTRAINT `dock_door_ibfk_1` FOREIGN KEY (`WhGln`) REFERENCES `warehouse` (`Gln`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `company` (`CompanyId`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`WhGln`) REFERENCES `warehouse_role` (`WhGln`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`WRole`) REFERENCES `warehouse_role` (`JobTitle`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `load_detail`
--
ALTER TABLE `load_detail`
  ADD CONSTRAINT `load_detail_ibfk_1` FOREIGN KEY (`LoadNo`) REFERENCES `load_master` (`LoadNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `load_detail_ibfk_2` FOREIGN KEY (`Sku`) REFERENCES `product` (`Sku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `load_master`
--
ALTER TABLE `load_master`
  ADD CONSTRAINT `load_master_ibfk_1` FOREIGN KEY (`WhGln`) REFERENCES `warehouse` (`Gln`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parking_spot`
--
ALTER TABLE `parking_spot`
  ADD CONSTRAINT `parking_spot_ibfk_1` FOREIGN KEY (`WhGln`) REFERENCES `warehouse` (`Gln`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`WhGln`) REFERENCES `warehouse` (`Gln`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trailer`
--
ALTER TABLE `trailer`
  ADD CONSTRAINT `trailer_ibfk_1` FOREIGN KEY (`Operator`) REFERENCES `employee` (`EmployeeId`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `trailer_ibfk_2` FOREIGN KEY (`SpotNo`) REFERENCES `parking_spot` (`SpotNo`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `trailer_ibfk_3` FOREIGN KEY (`SpotWh`) REFERENCES `parking_spot` (`WhGln`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `trailer_ibfk_4` FOREIGN KEY (`DoorNo`) REFERENCES `dock_door` (`DoorNo`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `trailer_ibfk_5` FOREIGN KEY (`DoorWh`) REFERENCES `dock_door` (`WhGln`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `trailer_ibfk_6` FOREIGN KEY (`LoadNo`) REFERENCES `load_master` (`LoadNo`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `company` (`CompanyId`);

--
-- Constraints for table `warehouse_role`
--
ALTER TABLE `warehouse_role`
  ADD CONSTRAINT `warehouse_role_ibfk_1` FOREIGN KEY (`WhGln`) REFERENCES `warehouse` (`Gln`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
