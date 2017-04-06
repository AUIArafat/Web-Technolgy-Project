-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 02, 2017 at 08:49 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `routeroutine`
--

-- --------------------------------------------------------

--
-- Table structure for table `courseinfo`
--

CREATE TABLE `courseinfo` (
  `studentid` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `completedcourses` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseinfo`
--

INSERT INTO `courseinfo` (`studentid`, `credit`, `completedcourses`) VALUES
(1, 8, 'ac,dc'),
(14266, 13, 'devices,dec,ac,autocad');

-- --------------------------------------------------------

--
-- Table structure for table `courselist`
--

CREATE TABLE `courselist` (
  `code` varchar(250) NOT NULL,
  `coursename` varchar(250) NOT NULL,
  `prerequisite` varchar(250) DEFAULT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courselist`
--

INSERT INTO `courselist` (`code`, `coursename`, `prerequisite`, `credit`) VALUES
('BAE 2101', 'Computer Aided Design & Drafting', NULL, 1),
('BBA 1102', 'Principles of Accounting', NULL, 3),
('BBA 1204', 'Principles of Economics', 'MAT 1205, CSC 1204', 3),
('CSC 1101', 'Computer Fundamentals', NULL, 3),
('CSC 1102', 'Programming Language 1', NULL, 3),
('CSC 1203', 'Programming Language 2', 'CSC 1102', 3),
('CSC 1204', 'Discrete Mathematics', 'CSC 1102', 3),
('CSC 2105', 'Data Structure', 'CSC 1203, CSC 1204', 3),
('CSC 2106', 'Computer Organization & Architecture', 'CSC 1203', 3),
('CSC 2107', 'Introduction to Database', 'CSC 1203', 3),
('CSC 2208', 'Operating Systems', 'CSC 2106', 3),
('CSC 2209', 'Object Oriented Programming 1', 'CSC 2105', 3),
('CSC 2210', 'Object Oriented Analysis and Design', 'CSC 2107, CSC 2105', 3),
('CSC 2211', 'Algorithms', 'CSC 2105', 3),
('CSC 2212', 'Advance Database Management System', 'CSC 2107', 3),
('CSC 3113', 'Theory Of Computation', 'CSC 2211', 3),
('CSC 3114', 'Software Engineering', 'CSC 2210', 3),
('CSC 3115', 'Object Oriented Programming 2', 'CSC 2209', 3),
('CSC 3116', 'Computer Networks', 'CSC 2208', 3),
('CSC 3118', 'Computer And Information Ethics', 'MIS 3201', 3),
('CSC 3119', 'Basic Graph Theory', 'CSC 2211', 3),
('CSC 3127', 'Enterprise Resource Planning', 'MIS 3201', 3),
('CSC 3217', 'Computer Science Mathematics', 'CSC 2211, MAT 3101', 3),
('CSC 3220', 'Compiler Design', 'CSC 3113', 3),
('CSC 3222', 'Web Technologies', 'CSC 3115', 3),
('CSC 3223	', 'Advanced Computer Networks', 'CSC 3116', 3),
('CSC 3224', 'Computer Graphics', 'CSC2211, MAT2202', 3),
('CSC 3229', 'Embedded Technologies', 'CSC 3115, EEE 2205', 3),
('CSC 3230', 'Formal Methods of Software Engg.', 'CSC 3114', 3),
('CSC 3231', 'Network Security', 'CSC 3223', 3),
('CSC 3232', 'Embedded System Software', 'CSC 3114', 3),
('CSC 4121', 'Artificial Intelligence & Expert Sys.', 'CSC 2211', 3),
('CSC 4125', 'Software Development Project Management', 'CSC 3114', 3),
('CSC 4126', 'Software Requirement Engineering', 'CSC 3114', 3),
('CSC 4133', 'Software Quality and Testing', 'CSC 3114', 3),
('CSC 4134', 'Advanced Operating System', 'CSC 2208', 3),
('CSC 4135', 'E-Governance', 'CSC 3222', 3),
('CSC 4136', 'Multimedia Systems', 'CSC 3222', 3),
('CSC 4137', 'Simulation & Modeling', 'CSC 3223, CSC 2211', 3),
('CSC 4138', 'Computer Vision And Pattern Recognition', 'CSC 3224', 3),
('CSC 4139', 'Data Warehouse and Data Mining', 'CSC 4121, CSC 2107', 3),
('CSC 4140', 'Human Computer Interaction', 'CSC 4121', 3),
('CSC 4141', 'Linear Programming', 'CSC 4121, MAT 3101', 3),
('CSC 4180', 'Advanced Topics in Programming I', 'CSC 3222', 3),
('CSC 4181', 'Advanced Topics in Programming II', 'CSC 3222', 3),
('CSC 4182', 'Advanced Topics in Programming III', 'CSC 3222', 3),
('CSC 4195', 'Research Methodology', '100 Credits', 3),
('CSC 4296', 'Internship', '139 Credits', 3),
('CSC 4299', 'Thesis', 'CSC 4195', 3),
('ECE 4207', 'Vhdl Modeling And Logic Synthesis', 'EEE 2205', 3),
('EEE 1201', 'Electrical Circuits -1 (DC)', 'PHY 1101', 3),
('EEE 1202', 'Electrical Circuits -1 Lab (DC)', 'PHY 1101', 1),
('EEE 2101', 'Electrical Circuits 2 (AC)', 'EEE 1201', 3),
('EEE 2102', 'Electrical Circuits-2 (AC) Lab', 'EEE 1202', 1),
('EEE 2103', 'Electronic Devices', 'EEE 1201', 3),
('EEE 2104', 'Electronic Devices Lab', 'EEE 1202', 1),
('EEE 2205', 'Digital Logic Design', 'EEE 2103', 3),
('EEE 2206', 'Digital Logic Design Lab', 'EEE 2104', 1),
('EEE 3101', 'Digital Electronics', 'EEE 2101', 3),
('EEE 3102', 'Digital Electronics Lab', 'EEE 2102', 1),
('EEE 3107', 'EEE 3107', 'EEE 2205', 1),
('EEE 3207', 'Signals & Linear System', 'MAT 2202', 3),
('EEE 3211', 'Digital Signal Processing', 'EEE 3207', 3),
('EEE 3216', 'Electronics Shop', 'EEE 3102', 1),
('EEE 4203	', 'Vlsi Circuit Design', 'EEE 2205', 3),
('EEE 4211', 'Microprocessor & I/O System', 'EEE 2205, CSC 2106', 3),
('EEE 4235', 'Robotics Engineering', 'PHY 1101', 3),
('ENG 1101', 'English Reading Skills and Public Speaking', NULL, 3),
('ENG 1202', 'English Writing Skills and Communication', 'ENG 1101', 3),
('ENG 2101', 'Business Communications', 'ENG 1202', 3),
('MAT 1205', 'Integral Calculus & Ord. Diff Equation', 'MAT 1101', 3),
('MAT 2101', 'Complex Variable,Laplace & Z-transformation', 'MAT 1205', 3),
('MAT 2202', 'Matrices, Vectors, Fourier analysis', 'MAT 1205', 3),
('MAT 3101', 'Mathematical Methods Of Engineering', 'MAT 2202', 3),
('MAT 3103', 'Statistics And Probability', 'MAT 1205', 3),
('MAT1102', 'Diff Calculus & Co-ordinate Geometry', NULL, 3),
('MGT 3202', 'Engineering Management', 'ENG 2101', 3),
('MIS 4001', 'Computer Utilization In Business', 'MIS 3201', 3),
('MIS 4008', 'Network Resource Management', 'MIS 3201', 3),
('MIS 4017', 'Decision Support System', 'MIS 3201', 3),
('MIS 4018', 'Global Information Technology Management', 'MIS 3201', 3),
('PHY 1101', 'Physics 1', NULL, 3),
('PHY 1102', 'Physics 1 lab', NULL, 1),
('PHY 1203', 'Physics 2', 'PHY 1101', 3),
('PHY 1204', 'Physics 2 lab', 'PHY 1102', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` varchar(250) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `dept`, `email`, `password`) VALUES
('1234', 'cs', 'a@gmail.com', '123456'),
('12345', 'cs', 'a@gmail.com', '123456'),
('14-26', 'cse', 'auiarafat@gmail.com', '123456'),
('14-26696', 'cse', 'auiarafat@gmail.com', '1234567'),
('14-26696-', 'cse', 'auiarafat@gmail.com', '123456'),
('14-26696-2', 'cse', 'auiarafat@gmail.com', '123456'),
('961529317', 'cse', 'auiarafat@gmail.com', '123456'),
('arafat', 'cse', 'auiarafat@gmail.com', '12345678'),
('fsfsfw', 'cse', 'auiarafat@gmail.com', '123456'),
('hello', 'cse', 'a@gmail.com', '123456'),
('kjhkjsdkj', 'cse', 'auiarafat@gmail.com', '123456'),
('sdfs', 'cse', 'sfssfs@gmail.com', '1234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courseinfo`
--
ALTER TABLE `courseinfo`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `courselist`
--
ALTER TABLE `courselist`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD UNIQUE KEY `studentid` (`studentid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
