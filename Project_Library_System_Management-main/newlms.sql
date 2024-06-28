-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 06:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newlms`
--

-- --------------------------------------------------------

--
-- Table structure for table `newbook`
--

CREATE TABLE `newbook` (
  `bookID` int(11) NOT NULL,
  `bookName` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `price` int(25) NOT NULL,
  `publishingYear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newbook`
--

INSERT INTO `newbook` (`bookID`, `bookName`, `publisher`, `price`, `publishingYear`) VALUES
(1, '2', '3', 4, '2000'),
(234, 'Teranglah', 'sailor', 235000, '2010'),
(218174, 'Belajar Web', 'Kafka', 25000, '2004');

-- --------------------------------------------------------

--
-- Table structure for table `newissue`
--

CREATE TABLE `newissue` (
  `bookID` int(11) NOT NULL,
  `newStudentID` int(11) NOT NULL,
  `issueDate` varchar(50) NOT NULL,
  `dueDate` varchar(50) NOT NULL,
  `returnBook` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newissue`
--

INSERT INTO `newissue` (`bookID`, `newStudentID`, `issueDate`, `dueDate`, `returnBook`) VALUES
(234, 123, '2024-06-05', '2024-06-07', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `newstudent`
--

CREATE TABLE `newstudent` (
  `studentID` int(11) NOT NULL,
  `studentName` varchar(50) NOT NULL,
  `fathersName` varchar(50) NOT NULL,
  `courseName` varchar(30) NOT NULL,
  `branchName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newstudent`
--

INSERT INTO `newstudent` (`studentID`, `studentName`, `fathersName`, `courseName`, `branchName`) VALUES
(9, 'i', 's', 'Course', 'Branches'),
(123, 'joseph', 'joestar', 'B.tech', 'Information Technology'),
(2709129, 'fajar', 'asep', 'B.tech', 'Information Technology');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newbook`
--
ALTER TABLE `newbook`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `newissue`
--
ALTER TABLE `newissue`
  ADD PRIMARY KEY (`returnBook`),
  ADD KEY `bookID` (`bookID`),
  ADD KEY `newStudentID` (`newStudentID`);

--
-- Indexes for table `newstudent`
--
ALTER TABLE `newstudent`
  ADD PRIMARY KEY (`studentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
