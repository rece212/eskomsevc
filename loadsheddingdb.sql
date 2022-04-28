-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2022 at 11:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loadsheddingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `ScheduleID` int(11) NOT NULL,
  `Time` varchar(255) DEFAULT NULL,
  `Day` varchar(255) DEFAULT NULL,
  `AreaID` int(11) DEFAULT NULL,
  `StageID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`ScheduleID`, `Time`, `Day`, `AreaID`, `StageID`) VALUES
(1, '6:00', '28 April 2022', 1, 1),
(2, '6:00:18:00', '28 April 2022', 1, 2),
(3, '6:00;10:00;18:00', '28 April 2022', 1, 3),
(4, '6:00;10:00;18:00;23:00', '28 April 2022', 1, 4),
(5, '10:00', '28 April 2022', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stage`
--

CREATE TABLE `stage` (
  `StageID` int(11) NOT NULL,
  `Stage_Name` varchar(255) DEFAULT NULL,
  `MW_To_Load` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stage`
--

INSERT INTO `stage` (`StageID`, `Stage_Name`, `MW_To_Load`) VALUES
(1, 'Stage 1', '1000 MW'),
(2, 'Stage 2', '2000 MW'),
(3, 'Stage 3', '3000 MW'),
(4, 'Stage 4', '4000 MW');

-- --------------------------------------------------------

--
-- Table structure for table `tbllocation`
--

CREATE TABLE `tbllocation` (
  `AreaID` int(11) NOT NULL,
  `Area_Name` varchar(255) DEFAULT NULL,
  `Ward_No` varchar(255) DEFAULT NULL,
  `Group_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllocation`
--

INSERT INTO `tbllocation` (`AreaID`, `Area_Name`, `Ward_No`, `Group_`) VALUES
(1, 'St Georges', '3', '8'),
(2, 'North End', '8', '19'),
(3, 'Summerstrand', '2', '3'),
(4, 'South End', '2', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`ScheduleID`),
  ADD KEY `AreaID` (`AreaID`),
  ADD KEY `StageID` (`StageID`);

--
-- Indexes for table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`StageID`);

--
-- Indexes for table `tbllocation`
--
ALTER TABLE `tbllocation`
  ADD PRIMARY KEY (`AreaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `ScheduleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stage`
--
ALTER TABLE `stage`
  MODIFY `StageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbllocation`
--
ALTER TABLE `tbllocation`
  MODIFY `AreaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`AreaID`) REFERENCES `tbllocation` (`AreaID`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`StageID`) REFERENCES `stage` (`StageID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
