-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2026 at 11:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(258, 'admin', 'scrypt:32768:8:1$64PxTzQiiAGubFT2$fcff06bc83a2e95a7232ee1998aa8d665554ca0bc9f971e4cc0c7fc619bb979c83abd1a1cac77e12c9ebb1745a376a2b157a12a70dfa6ed1432109ea4e482ad1');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `program` enum('UG','PG') NOT NULL,
  `year` enum('I','II','III') NOT NULL,
  `subject` varchar(255) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `co` varchar(50) DEFAULT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `program`, `year`, `subject`, `subject_code`, `co`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(865, 'UG', 'III', '.NET Programming', '23UCSC615', '1', 'Is ASP.NET web form supports an event-driven application model?                       ', '\"FALSE\"', '\"TRUE\"', '', '', '\"TRUE\"'),
(866, 'UG', 'III', '.NET Programming', '23UCSC615', '1', 'Can we validate textbox data using validation controls?                                           ', '\"FALSE\"', '\"TRUE\"', '', '', '\"TRUE\"'),
(867, 'UG', 'III', '.NET Programming', '23UCSC615', '1', 'Object Oriented Programming (OOP) is a Style of Programming in which your code is broken up into units, known as __________', 'Objects and Classes     ', 'Objects or Classes      ', 'Objects', 'Classes', 'Objects and Classes     '),
(868, 'UG', 'III', '.NET Programming', '23UCSC615', '1', 'When an .aspx page is requested from the web server, the output will be rendered to browser in following format?', 'XML ', 'HTML ', 'WML', 'JSP   ', 'HTML '),
(869, 'UG', 'III', '.NET Programming', '23UCSC615', '3', 'Find any errors in the following Bank Account constructor: Public int Bank Account () {balance = 0;} ', 'Name', 'Formal parameters      ', 'Return type        ', 'No errors                    ', 'Return type        '),
(870, 'UG', 'III', '.NET Programming', '23UCSC615', '3', 'Assuming that public class B: A {public B (int i): base(i) { } } compiles and runs correctly, what can we conclude about the constructors in the class A? ', 'One constructor takes an argument of type i    ', 'There is only a default constructor ', 'a and b                              ', 'One constructor takes an arguments of the type int ', 'One constructor takes an arguments of the type int '),
(871, 'UG', 'III', '.NET Programming', '23UCSC615', '1', 'What is the extension of the ASP.NET page?', '.aspx      ', '.asp        ', '.asx         ', '.apx                                                ', '.aspx      '),
(872, 'UG', 'III', '.NET Programming', '23UCSC615', '2', 'Identify the SessionIDs are stored in ____ by ASP.Net.', 'Server', 'Cookies ', 'Cache', 'Database', 'Cookies '),
(873, 'UG', 'III', '.NET Programming', '23UCSC615', '2', 'Identify the following HTML tag is used to create file upload control in HTML?', 'File', 'FP', 'Input', 'Upload', 'Input'),
(874, 'UG', 'III', '.NET Programming', '23UCSC615', '2', 'Identify the following property is used to set the cookie\'s expiration date and time in ASP.NET?', 'Response.Cookies [\"mycookie\"]. ExpiresDateTime', 'Response.Cookies [\"mycookie\"]. RemoveDateTime', 'Response.Cookies [\"mycookie\"]. ExpiresTime', 'Response.Cookies [\"mycookie\"].Expires                                                             ', 'Response.Cookies [\"mycookie\"].Expires                                                             '),
(875, 'UG', 'III', 'Software Engineering', '23UCSC614', '1', 'Which of the following is the best type of cohesion?', 'Coincidental cohesion', 'Logical cohesion', 'Functional cohesion', 'Temporal cohesion', 'Functional cohesion'),
(876, 'UG', 'III', 'Software Engineering', '23UCSC614', '1', 'Detailed design focuses on', 'Coding standards', 'Internal logic of modules', 'Hardware setup', 'Testing only', 'Internal logic of modules'),
(877, 'UG', 'III', 'Software Engineering', '23UCSC614', '2', 'Data dictionary in Structured Analysis stores', 'User passwords', 'Source code', 'Error messages', 'Data definitions and descriptions', 'Error messages'),
(878, 'UG', 'III', 'Software Engineering', '23UCSC614', '3', 'In function-oriented design, the main problem during maintenance arises due to:', 'Separation of data and functions', 'Use of inheritance', 'Strong encapsulation', 'Data-centered decomposition', 'Separation of data and functions'),
(879, 'UG', 'III', 'Software Engineering', '23UCSC614', '3', 'Top-down decomposition in structured design primarily focuses on:', 'Identifying classes', 'Breaking system into functions and sub-functions', 'Defining objects and methods', 'Reusing components', 'Breaking system into functions and sub-functions'),
(880, 'UG', 'III', 'Software Engineering', '23UCSC614', '4', 'A module passes a control flag to another module to dictate its behavior. This is an example of:', 'Data coupling', 'Control coupling', 'Common coupling', 'Content coupling', 'Control coupling'),
(881, 'UG', 'III', 'Software Engineering', '23UCSC614', '2', 'Common coupling happens when modules:', 'Share global variables', 'Pass parameters', 'Are fully independent', 'Use different data types', 'Share global variables'),
(882, 'UG', 'III', 'Software Engineering', '23UCSC614', '4', 'In object-oriented design, message passing between objects reduces:', 'Cohesion', 'Modularity', 'Reusability', 'Direct dependency between modules', 'Direct dependency between modules'),
(883, 'UG', 'III', 'Software Engineering', '23UCSC614', '2', 'A context diagram in structured analysis:', 'Shows entire system as a single process', 'Shows detailed module hierarchy', 'Represents database schema', 'Shows UI layout', 'Shows entire system as a single process'),
(884, 'UG', 'III', 'Software Engineering', '23UCSC614', '1', 'A structure chart shows', 'Data movement', 'Module hierarchy', 'Database schema', 'User interface layout', 'Module hierarchy'),
(885, 'PG', 'I', 'Python For Data Science', '24PCSG201', '1', 'What is a function in Python?', 'A loop structure', 'A variable', 'A block of reusable code', 'A module', 'A block of reusable code'),
(886, 'PG', 'I', 'Python For Data Science', '24PCSG201', '1', 'Which keyword is used to define a function in Python?', 'function', 'define', 'def', 'fun', 'def'),
(887, 'PG', 'I', 'Python For Data Science', '24PCSG201', '1', 'What is the correct way to call a function named display?', 'call display()', 'display[]', 'def display()', 'display()', 'display()'),
(888, 'PG', 'I', 'Python For Data Science', '24PCSG201', '1', 'Which statement is used to send a value back from a function?', 'break', 'return', 'pass', 'continue', 'return'),
(889, 'PG', 'I', 'Python For Data Science', '24PCSG201', '1', 'A variable declared inside a function has which scope?', 'Global', 'Universal', 'Local', 'Static', 'Local'),
(890, 'PG', 'I', 'Python For Data Science', '24PCSG201', '2', 'What will be the output?                                                                               def add(a, b):\n    return a + b\nprint(add(2, 3))\n', '23', 'Error', '5', '', '5'),
(891, 'PG', 'I', 'Python For Data Science', '24PCSG201', '3', 'What will be the output?                                                                                                           x = 10\ndef test():\n    x = 5\n    print(x)\ntest()\nprint(x)\n', '10 10', '5 5', '5 10', '10 5', '5 10'),
(892, 'PG', 'I', 'Python For Data Science', '24PCSG201', '3', 'What does globals() return?', 'Local variables', 'Global variables dictionary', 'Modules list', 'Function names', 'Global variables dictionary'),
(893, 'PG', 'I', 'Python For Data Science', '24PCSG201', '3', 'Which module belongs to Python Standard Library?', 'numpy', 'pandas', 'math', 'tensorflow', 'math'),
(894, 'PG', 'I', 'Python For Data Science', '24PCSG201', '4', 'What will be the output?                                                                                               square = lambda x: x*x\nprint(square(4))\n', '8', '16', '4', 'Error', '16'),
(895, 'PG', 'I', 'Python For Data Science', '24PCSG201', '4', 'What will be the output?                                                                                                           a = [1,2,3]\nb = a\nb.append(4)\nprint(a)\n', '[1,2,3]', '[1,2,3,4]', 'Error', '', '[1,2,3,4]'),
(896, 'PG', 'I', 'Python For Data Science', '24PCSG201', '2', 'Which of the following creates a lambda function?', 'lambda x: x2', 'def lambda(x):', 'function x: x2', 'lam x -> x*2', 'lambda x: x2'),
(897, 'PG', 'I', 'Python For Data Science', '24PCSG201', '2', 'Which data structure is immutable?', 'List', 'Dictionary', 'Tuple', 'set', 'Tuple'),
(898, 'PG', 'I', 'Python For Data Science', '24PCSG201', '2', 'Which symbol is used to define a set?', '[]', '{}', '()', '<>', '{}'),
(899, 'PG', 'I', 'Python For Data Science', '24PCSG201', '3', 'Which function reloads a previously imported module?', 'import()', 'reload()', 'refresh()', 'restart()', 'reload()'),
(900, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '1', 'All the element visiting once at proper way is called_________.', 'Insertion', 'Deletion', 'search', 'traversing', 'traversing'),
(901, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '1', 'Linked list is a __________ data structure.', 'Linear', 'non– linear', ' graph', 'tree', 'non– linear'),
(902, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '1', 'Mathematical and logical set of operations in any data structure is called_______', 'BFS', 'DFS', 'ADTs', 'EFS', 'ADTs'),
(903, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '1', 'Recursion is the application of ____________', 'Queue', 'Stack', 'List', 'Array', 'Stack'),
(904, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '3', 'How many real links are required to store a sparse matrix of 10 rows,10 columns and 15 non-zero entries,(pick up the closest answer)?', '20', '15', '50', '100', '15'),
(905, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '2', 'Linked list are not suitable for_________', 'insertion sort', 'binary search', 'radix sort', 'Sort', 'binary search'),
(906, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '2', 'A_________ search method  begin search with the element that is located in the middle of the array', 'Serial', 'random', 'parallel', 'binary', 'binary'),
(907, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '3', 'The time required to search  an element in a liked list of length n is', 'O(log2 n)', 'O(n)', 'O(1)', 'O(mn)', 'O(n)'),
(908, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '4', 'Which of the abstract data types can be used to represent a same type of elements?', 'Queue', 'Graph', 'List', 'Array', 'Array'),
(909, 'UG', 'I', 'Data Structures and Algorithms', '23UCSC203', '3', 'a. Linear    -   i)O(N2)\nb.Quadratic        -   ii O(N)\nc.Qubic   -   iii)O Log(N)\nd.Logarathmic   -  iv)O(N3)\n          v)O(1)\n', 'a-ii ,b-i,c-iv,d-iii                         ', 'a-iii ,b-i,c-iv,d-ii                         ', 'a-iv ,b-i,c-ii,d-iii                         ', 'a-i ,b-ii,c-iv,d-iii                         ', 'a-ii ,b-i,c-iv,d-iii                         ');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_access`
--

CREATE TABLE `quiz_access` (
  `id` int(11) NOT NULL,
  `program` enum('UG','PG') NOT NULL,
  `year` enum('I','II','III') NOT NULL,
  `allowed_subject_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_access`
--

INSERT INTO `quiz_access` (`id`, `program`, `year`, `allowed_subject_code`) VALUES
(85, 'PG', 'I', '24PCSG201');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_entries`
--

CREATE TABLE `quiz_entries` (
  `id` int(11) NOT NULL,
  `entry_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_entries`
--

INSERT INTO `quiz_entries` (`id`, `entry_code`) VALUES
(1, 'cs');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `student_roll_no` varchar(50) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `co1_score` int(11) DEFAULT 0,
  `co2_score` int(11) DEFAULT 0,
  `co3_score` int(11) DEFAULT 0,
  `co4_score` int(11) DEFAULT 0,
  `co5_score` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_roll_no`, `subject_code`, `score`, `co1_score`, `co2_score`, `co3_score`, `co4_score`, `co5_score`) VALUES
(1, '23UCS041', '23UCSC615', 3, 3, 0, 0, 0, 0),
(2, '23UCS037', '23UCSC615', 6, 4, 2, 0, 0, 0),
(3, '23UCS033', '23UCSC615', 4, 4, 0, 0, 0, 0),
(4, '23UCS040', '23UCSC615', 5, 4, 1, 0, 0, 0),
(5, '23UCS013', '23UCSC615', 4, 3, 1, 0, 0, 0),
(6, '23UCS018', '23UCSC615', 3, 3, 0, 0, 0, 0),
(7, '23UCS017', '23UCSC615', 7, 5, 1, 1, 0, 0),
(8, '23UCS046', '23UCSC615', 7, 5, 1, 1, 0, 0),
(9, '23UCS005', '23UCSC615', 5, 4, 1, 0, 0, 0),
(10, '23UCS031', '23UCSC615', 8, 5, 1, 2, 0, 0),
(11, '23UCS015', '23UCSC615', 6, 5, 1, 0, 0, 0),
(12, '23UCS042', '23UCSC615', 5, 4, 1, 0, 0, 0),
(13, '23UCS019', '23UCSC615', 8, 4, 3, 1, 0, 0),
(14, '23UCS014', '23UCSC615', 6, 4, 1, 1, 0, 0),
(15, '23UCS032', '23UCSC615', 4, 3, 0, 1, 0, 0),
(16, '23UCS038', '23UCSC615', 5, 4, 0, 1, 0, 0),
(17, '23UCS043', '23UCSC615', 5, 4, 1, 0, 0, 0),
(18, '23UCS035', '23UCSC615', 3, 3, 0, 0, 0, 0),
(19, '23UCS027', '23UCSC615', 3, 3, 0, 0, 0, 0),
(20, '23UCS016', '23UCSC615', 5, 5, 0, 0, 0, 0),
(21, '23UCS028', '23UCSC615', 6, 5, 1, 0, 0, 0),
(22, '23UCS012', '23UCSC615', 4, 3, 1, 0, 0, 0),
(23, '23UCS039', '23UCSC615', 6, 3, 1, 2, 0, 0),
(24, '23UCS048', '23UCSC615', 6, 3, 2, 1, 0, 0),
(25, '23UCS003', '23UCSC615', 5, 3, 1, 1, 0, 0),
(26, '23UCS001', '23UCSC615', 5, 3, 1, 1, 0, 0),
(27, '23UCS045', '23UCSC615', 6, 4, 1, 1, 0, 0),
(28, '23UCS021', '23UCSC615', 5, 5, 0, 0, 0, 0),
(29, '23UCS036', '23UCSC615', 2, 2, 0, 0, 0, 0),
(30, '23UCS020', '23UCSC615', 4, 3, 0, 1, 0, 0),
(31, '23UCS025', '23UCSC615', 4, 3, 0, 1, 0, 0),
(32, '23UCS030', '23UCSC615', 6, 5, 0, 1, 0, 0),
(33, '23UCS050', '23UCSC615', 3, 3, 0, 0, 0, 0),
(34, '23UCS022', '23UCSC615', 3, 3, 0, 0, 0, 0),
(35, '23UCS004', '23UCSC615', 6, 5, 1, 0, 0, 0),
(36, '23UCS009', '23UCSC615', 5, 4, 1, 0, 0, 0),
(37, '23UCS047', '23UCSC615', 7, 5, 1, 1, 0, 0),
(38, '23UCS034', '23UCSC615', 6, 5, 1, 0, 0, 0),
(39, '23UCS006', '23UCSC615', 5, 4, 1, 0, 0, 0),
(40, '23UCS008', '23UCSC615', 5, 4, 1, 0, 0, 0),
(41, '23UCS002', '23UCSC615', 6, 5, 1, 0, 0, 0),
(42, '25PMA010', '24PCSG201', 12, 5, 3, 3, 1, 0),
(43, '25PMA008', '24PCSG201', 10, 4, 3, 2, 1, 0),
(44, '25PMA009', '24PCSG201', 10, 3, 3, 2, 2, 0),
(45, '25PMA012', '24PCSG201', 11, 4, 3, 3, 1, 0),
(46, '25PMA011', '24PCSG201', 8, 3, 3, 0, 2, 0),
(47, '25PBT104', '24PCSG201', 10, 3, 2, 3, 2, 0),
(48, '25PKC104', '24PCSG201', 4, 1, 2, 1, 0, 0),
(49, '25PMA007', '24PCSG201', 9, 3, 3, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_name`, `email`, `subject_code`) VALUES
(6, 'M.Sakthi Saravanan', 'mailtosakthisaravanan@gmail.com', '24PCSC205'),
(8, 'K.Gayathri', 'gayathri_sf716@anjaconline.org', '24PCSG201'),
(10, 'K.Gayathri', 'gayathri_sf716@anjaconline.org', '23UCSE605'),
(11, 'M.Sakthi Saravanan', 'mailtosakthisaravanan@gmail.com', '23UCSC615'),
(12, 'S.Vimalajenifer', 'vimalajenifer_sf747@anjaconline.org', '25UDSG202'),
(13, 'S.Vimalajenifer', 'vimalajenifer_sf747@anjaconline.org', '25PDSC204'),
(14, 'Sathiya P', 'sathiya_sf743@anjaconline.org', '25PDSC205'),
(15, 'M.Sakthi Saravanan', 'mailtosakthisaravanan@gmail.com', '23UCSC615');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `program` enum('UG','PG') NOT NULL,
  `year` enum('I','II','III') NOT NULL,
  `quiz_status` varchar(50) DEFAULT 'not_attempted',
  `active_status` enum('ON','OFF') DEFAULT 'ON',
  `student_dept` varchar(255) NOT NULL DEFAULT 'Computer Science',
  `student_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `roll_no`, `program`, `year`, `quiz_status`, `active_status`, `student_dept`, `student_email`) VALUES
(47, 'ANANTHA JOTHI S', '25UCS001', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(48, 'ASHWINI A', '25UCS002', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(49, 'GAYATHRI  K', '25UCS003', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(50, 'KAVIYA N', '25UCS004', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(51, 'KAVYA T', '25UCS005', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(52, 'RAJESWARI K', '25UCS006', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(53, 'SANTHANA LAKSHMI S', '25UCS007', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(54, 'SELVAKARTHIKA B', '25UCS008', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(55, 'SHIVAPRIYA S', '25UCS009', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(56, 'SHRUTHI I', '25UCS010', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(57, 'SWATHIMATHI A', '25UCS011', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(58, 'BALAMURUGAN B', '25UCS012', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(59, 'BHAVAN RAJ S', '25UCS013', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(60, 'BOOPATHI N', '25UCS014', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(61, 'CHINNAKARUPPASAMY T', '25UCS015', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(62, ' DHARSHAN R P', '25UCS016', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(63, 'GANESHKUMAR S', '25UCS017', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(64, 'GUNA S', '25UCS018', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(65, 'GURUNATHAN S', '25UCS019', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(66, 'HARISH KARTHICK M', '25UCS020', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(67, 'INBARAJ  M', '25UCS021', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(68, 'JEBARAJ EDWIN  J', '25UCS022', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(69, 'KARTHIK BALANN S', '25UCS023', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(70, 'KARUPPASAMY K', '25UCS024', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(71, 'LARANCE P', '25UCS025', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(72, 'MAHALINGAM  G', '25UCS026', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(73, 'MANOJ S', '25UCS027', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(74, 'MARUTHU PANDIAN G', '25UCS028', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(75, 'MOHAMMED HARRISH M', '25UCS029', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(76, 'MONISHBABU S', '25UCS030', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(77, 'NAVEEN KUMAR G G', '25UCS031', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(78, 'PANDI MUNEESWARAN B', '25UCS032', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(79, 'PATHRINATHAN P', '25UCS033', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(80, 'PONVIJAYAN M', '25UCS034', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(81, 'RAJABALAN  P', '25UCS035', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(82, 'RAJAPANDI R', '25UCS036', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(83, 'RUBAN SRI VIJAY M', '25UCS037', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(84, 'SAKTHI GANESH M', '25UCS038', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(85, 'SARAVANA BHAVA B', '25UCS039', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(86, ' SHAKTHIVEL E', '25UCS040', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(87, 'SIVAKETHIRABALAN P', '25UCS041', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(88, 'SRI NAVANEETHA KRISHNAN M', '25UCS042', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(89, 'THIRUPATHI  R', '25UCS043', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(90, 'VELRAJ G', '25UCS044', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(91, 'YUVARAJASINGH N', '25UCS045', 'UG', 'I', 'not_attempted', 'ON', 'Computer Science', NULL),
(259, 'A.ABINAYA', '23UCS001', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs001@anjaconline.org'),
(260, 'T.ANANTHI', '23UCS002', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs002@anjaconline.org'),
(261, 'S.ESAKKIKANIMOZHI', '23UCS003', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs003@anjaconline.org'),
(262, 'M.GAYATHRI', '23UCS004', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs004@anjaconline.org'),
(263, 'R.INDHUMATHI', '23UCS005', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs005@anjaconline.org'),
(264, 'S.ISWARYA JOTHI', '23UCS006', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs006@anjaconline.org'),
(265, 'K.MONIKA', '23UCS008', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs008@anjaconline.org'),
(266, 'P.NAGA LAKSHMI', '23UCS009', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs009@anjaconline.org'),
(267, 'P.PRIYA', '23UCS010', 'UG', 'III', 'not_attempted', 'ON', 'Computer Science', '23ucs010@anjaconline.org'),
(268, 'M.SATHYA DEVI', '23UCS011', 'UG', 'III', 'not_attempted', 'ON', 'Computer Science', '23ucs011@anjaconline.org'),
(269, 'P.SATHYA SHREE', '23UCS012', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs012@anjaconline.org'),
(270, 'K.SAVITHA', '23UCS013', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs013@anjaconline.org'),
(271, 'P.SINDHUJA', '23UCS014', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs014@anjaconline.org'),
(272, 'M.VAISHNAVI', '23UCS015', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs015@anjaconline.org'),
(273, 'V.VIJAYALAKSHMI', '23UCS016', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs016@anjaconline.org'),
(274, 'K.ADHITHYA', '23UCS017', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs017@anjaconline.org'),
(275, 'K.ANBUKKANIVENTHAN', '23UCS018', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs018@anjaconline.org'),
(276, 'M.AVUDAIYAPPA ASWIN BHARATHI', '23UCS019', 'UG', 'III', 'attempted', 'ON', 'Computer Science', 'asanth2712@gmail.com'),
(277, 'P.AYYANAR ALIAS ARUN', '23UCS020', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs020@anjaconline.org'),
(278, 'M.DEEPAK RAJ', '23UCS021', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs021@anjaconline.org'),
(279, 'J.FRANGLIN PRABHU', '23UCS022', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs022@anjaconline.org'),
(280, 'N.KESAVAN', '23UCS025', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs025@anjaconline.org'),
(281, 'S.MADHAN KUMAR', '23UCS027', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs027@anjaconline.org'),
(282, 'G.MAHESWARAN', '23UCS028', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs028@anjaconline.org'),
(283, 'S.MARIMUTHU', '23UCS030', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs030@anjaconline.org'),
(284, 'B.MUNIYARAJ', '23UCS031', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs031@anjaconline.org'),
(285, 'M.MUTHEESWARAN', '23UCS032', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs032@anjaconline.org'),
(286, 'K.MUTHUKRISHNAN', '23UCS033', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs033@anjaconline.org'),
(287, 'J.MUTHU KUMAR', '23UCS034', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs034@anjaconline.org'),
(288, 'P.NAVEENKUMAR', '23UCS035', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs035@anjaconline.org'),
(289, 'P.PONESWAR', '23UCS036', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs036@anjaconline.org'),
(290, 'S.SANJAY LINGASWARAN', '23UCS037', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs037@anjaconline.org'),
(291, 'K.SARAVANAN', '23UCS038', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs038@anjaconline.org'),
(292, 'R.SARAVANAN', '23UCS039', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs039@anjaconline.org'),
(293, 'A.SATTANATHAN', '23UCS040', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs040@anjaconline.org'),
(294, 'P.SELVA KUMARAN', '23UCS041', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs041@anjaconline.org'),
(295, 'M.SIVARAM', '23UCS042', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs042@anjaconline.org'),
(296, 'P.SRE VARSHAN', '23UCS043', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs043@anjaconline.org'),
(297, 'M.SURYAKANNAN', '23UCS045', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs045@anjaconline.org'),
(298, 'J.S.UDHAYA KUMAR', '23UCS046', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs046@anjaconline.org'),
(299, 'V.VIGENESHRAJ', '23UCS047', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs047@anjaconline.org'),
(300, 'A.KRISHNA VENI', '23UCS048', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs110@anjaconline.org'),
(301, 'P.MONESHKUMAR', '23UCS050', 'UG', 'III', 'attempted', 'ON', 'Computer Science', '23ucs050@anjaconline.org'),
(302, 'BHARATHILAKSHMI S', '24UCS001', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs001@anjaconline.org'),
(303, 'G ABINAYA', '24UCS002', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs002@anjaconline.org'),
(304, 'GOPIGA J', '24UCS004', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs004@anjaconline.org'),
(305, 'HARINI PRIYA G', '24UCS005', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs005@anjaconline.org'),
(306, 'KAMALA DEVI R', '24UCS006', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs006@anjaconline.org'),
(307, 'KAVIYA VARSINI P', '24UCS007', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs007@anjaconline.org'),
(308, 'MALINI R', '24UCS009', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs009@anjaconline.org'),
(309, 'NANDHINI K', '24UCS010', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs010@anjaconline.org'),
(310, 'PRADEEBA A', '24UCS011', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs011@anjaconline.org'),
(311, 'PRIYADHARSHNI M', '24UCS012', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs012@anjaconline.org'),
(312, 'SHANMUGAPRIYA K', '24UCS013', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs013@anjaconline.org'),
(313, 'SWETHA K', '24UCS014', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs014@anjaconline.org'),
(314, 'VARSHINI M', '24UCS015', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs015@anjaconline.org'),
(315, 'VINODINI S', '24UCS016', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs016@anjaconline.org'),
(316, 'ABISHEK J', '24UCS017', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs017@anjaconline.org'),
(317, 'ANISHKANNA A', '24UCS018', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs018@anjaconline.org'),
(318, 'ARUL RAJ R', '24UCS019', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs019@anjaconline.org'),
(319, 'ARUN KUMAR P', '24UCS020', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs020@anjaconline.org'),
(320, 'ATHI LINGAM M', '24UCS021', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs021@anjaconline.org'),
(321, 'HEMANTH KUMAR M', '24UCS022', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs022@anjaconline.org'),
(322, 'JEBAROSHAN J', '24UCS023', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs023@anjaconline.org'),
(323, 'KAMALNATH K', '24UCS024', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs024@anjaconline.org'),
(324, 'KARTHIKEYAN V', '24UCS025', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs025@anjaconline.org'),
(325, 'KATHIR R', '24UCS026', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs026@anjaconline.org'),
(326, 'KATHIRVEL V', '24UCS027', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs027@anjaconline.org'),
(327, 'KESAVAN R', '24UCS028', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs028@anjaconline.org'),
(328, 'KISHOR KUMAR H', '24UCS029', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs029@anjaconline.org'),
(329, 'LOKESH P', '24UCS030', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs030@anjaconline.org'),
(330, 'MANOJ B', '24UCS031', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs031@anjaconline.org'),
(331, 'MARIRAJAN S', '24UCS032', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs032@anjaconline.org'),
(332, 'MATHANKUMAR K', '24UCS033', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs033@anjaconline.org'),
(333, 'MUKESH NANDHA T', '24UCS034', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs034@anjaconline.org'),
(334, 'MUNIRAJA K', '24UCS035', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs035@anjaconline.org'),
(335, 'MUTHU SELVAM M', '24UCS036', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs036@anjaconline.org'),
(336, 'PON RAMANAN S', '24UCS037', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs037@anjaconline.org'),
(337, 'POORNA CHANDRAN M', '24UCS038', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs038@anjaconline.org'),
(338, 'PRAKASH B', '24UCS039', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs039@anjaconline.org'),
(339, 'RAHUL R', '24UCS040', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs040@anjaconline.org'),
(340, 'RAMKUMAR R', '24UCS041', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs041@anjaconline.org'),
(341, 'ROHITH KUMAR S', '24UCS042', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs042@anjaconline.org'),
(342, 'ROHITH R', '24UCS043', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs043@anjaconline.org'),
(343, 'SARAVANAKUMAR M', '24UCS044', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs044@anjaconline.org'),
(344, 'SARAVANAKUMAR S', '24UCS045', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs045@anjaconline.org'),
(345, 'SATHA SIVAN A', '24UCS046', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs046@anjaconline.org'),
(346, 'SIBUSERAN P', '24UCS047', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs047@anjaconline.org'),
(347, 'THIRUKUMARAN M', '24UCS049', 'UG', 'II', 'not_attempted', 'ON', 'Computer Science', '24ucs049@anjaconline.org'),
(348, 'ABINAYA ROSELIN M', '24PCS101', 'PG', 'II', 'not_attempted', 'ON', 'Computer Science', '24pcs101@anjaconline.org'),
(349, 'AISHWARYA LAKSHMMI R', '24PCS102', 'PG', 'II', 'not_attempted', 'ON', 'Computer Science', '24pcs102@anjaconline.org'),
(350, 'AMUTHA M', '24PCS103', 'PG', 'II', 'not_attempted', 'ON', 'Computer Science', '24pcs103@anjaconline.org'),
(351, 'KASTHURI M', '24PCS104', 'PG', 'II', 'not_attempted', 'ON', 'Computer Science', '24pcs104@anjaconline.org'),
(352, 'SHANTHI V', '24PCS105', 'PG', 'II', 'not_attempted', 'ON', 'Computer Science', '24pcs105@anjaconline.org'),
(353, 'RAMKUMAR M', '24PCS106', 'PG', 'II', 'not_attempted', 'ON', 'Computer Science', '24pcs106@anjaconline.org'),
(355, 'APSARA S', '24PCS109', 'PG', 'II', 'not_attempted', 'ON', 'Computer Science', '24pcs109@anjaconline.org'),
(356, 'ASWINI R', '24PCS110 ', 'PG', 'II', 'not_attempted', 'ON', 'Computer Science', '24pcs110@anjaconline.org'),
(357, 'ANANDA VALLI A', '25PCS101', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'anandhavalli132@gmail.com'),
(358, 'MANJUPRABHA V', '25PCS102', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'manjuprabha757@gmail.com'),
(359, 'UMA ABINAYA  T', '25PCS103', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'jaiganapathy6263@gmail.com'),
(360, 'BALA  K', '25PCS104', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'balakannan981@gmail.com'),
(361, 'ITHAYA VARUN  G', '25PCS105', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'idhayavarun5@gmail.com'),
(362, 'MUKESH KUMAR  P', '25PCS106', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'bhuvaneswarimukeshkumar@gmail.com'),
(363, 'MUTHURAJ M', '25PCS107', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'muthurajmariappan06@gmail.com'),
(364, 'PONMANIKANDAN  P', '25PCS108', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'pponmanikandanm@gmail.com'),
(365, 'SELVAKUMAR S', '25PCS109', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'selvakumarms1510@gmail.com'),
(366, 'SHANMUGASUDHAN K', '25PCS110', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'shanmugasudhan1628@gmail.com'),
(367, 'SHIVASAKTHIBALAN K', '25PCS111', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'shiva.k232004@gmail.com'),
(368, 'AMARNATH M', '25PCS112', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'amarnath59003@gmail.com'),
(369, 'PRITHIKA M', '25PCS113', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'preethitheju2723@gmail.com'),
(370, 'SUBITHA K', '25PCS114', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'subi83.k@gmail.com'),
(371, 'SIVAKRISHNA D', '25PCS115', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science', 'sivakrishna1697@gmail.com'),
(374, 'DURGA DEVI. D', '25PDS101', 'PG', 'I', 'not_attempted', 'ON', 'Data Science', 'durgaa.dd6@gmail.com'),
(375, 'ELLAMMAL. T', '25PDS102', 'PG', 'I', 'not_attempted', 'ON', 'Data Science', 'ellammalellammal995@gmail.com'),
(377, 'BALA AADHITHYA. M', '25PDS104', 'PG', 'I', 'not_attempted', 'ON', 'Data Science', 'bala15112004@gmail.com'),
(378, 'MANOJ. S', '25PDS105', 'PG', 'I', 'not_attempted', 'ON', 'Data Science', 'manojhanishka02@gmail.com'),
(379, 'SAKTHI NARAYANAN. S', '25PDS106', 'PG', 'I', 'not_attempted', 'ON', 'Data Science', 'sakthieditz99@gmail.com'),
(380, 'SELVA MUTHUKUMAR. B', '25PDS107', 'PG', 'I', 'not_attempted', 'ON', 'Data Science', 'selvamuthukumar009@gmail.com'),
(381, 'HARISH. K', '25PDS108', 'PG', 'I', 'not_attempted', 'ON', 'Data Science', 'harishrahul542@gmail.com'),
(382, 'HARI KRISHNAN. M', '25PDS109', 'PG', 'I', 'not_attempted', 'ON', 'Data Science', 'harikrishnan0409@gmail.com'),
(383, 'MAIYAPPAN. M S', '25PDS110', 'PG', 'I', 'not_attempted', 'ON', 'Data Science', 'maiyappanmsbsccs@gmail.com'),
(632, 'ABI . A', '24UMA001', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '1'),
(633, 'ABINAYASELVI . P', '24UMA002', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '2'),
(634, 'AKSHAYA . S', '24UMA003', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '3'),
(635, 'ANANDHAPRIYA . M', '24UMA004', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '4'),
(636, 'ASVIKA . A M', '24UMA006', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '5'),
(637, 'BHAVANI . P', '24UMA007', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '6'),
(638, 'DEEPA ABIRAMI . G', '24UMA008', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '7'),
(639, 'DHARSHINIKRISHNA . M', '24UMA009', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '8'),
(640, 'DHIVYA . D', '24UMA010', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '9'),
(641, 'JEYANTHI . M', '24UMA012', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '10'),
(642, 'KARTHIKESHWARI . M', '24UMA013', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '11'),
(643, 'KAVIBHARATHI . N', '24UMA014', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '12'),
(644, 'KAVINAYASHRI . S R', '24UMA015', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '13'),
(645, 'KAVITHA . P', '24UMA016', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '14'),
(646, 'KAVIYA . R', '24UMA017', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '15'),
(647, 'LAKSHMI . K', '24UMA018', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '16'),
(648, 'LAKSHMI PRABHA . B', '24UMA019', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '17'),
(649, 'LEETHIYAL . D', '24UMA020', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '18'),
(650, 'MADHUMITHA . V', '24UMA021', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '19'),
(651, 'MAHALAKSHMI . A', '24UMA022', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '20'),
(652, 'MAHALAKSHMI . S', '24UMA023', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '21'),
(653, 'MARISELVI . P', '24UMA025', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '22'),
(654, 'MUTHULAKSHMI . M', '24UMA026', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '23'),
(655, 'THENMOZHI . P', '24UMA027', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '24'),
(656, 'PAVITHRA . M', '24UMA028', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '25'),
(657, 'PRIYADHARSHINI . R', '24UMA029', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '26'),
(658, 'RAJASREE . M', '24UMA030', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '27'),
(659, 'RAMALAKSHMI . M', '24UMA031', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '28'),
(660, 'RENUGA DEVI . R', '24UMA032', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '29'),
(661, 'SARASWATHI . C', '24UMA033', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '30'),
(662, 'SATHYA PRIYA . P', '24UMA034', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '31'),
(663, 'SIVA JOTHI . R', '24UMA035', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '32'),
(664, 'SUBITHRA . S', '24UMA036', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '33'),
(665, 'SUBRAMANI . S', '24UMA037', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '34'),
(666, 'THASRIFA . J', '24UMA038', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '35'),
(667, 'THERI PRABHA . L', '24UMA039', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '36'),
(668, 'THIVYALAKSHMI . R', '24UMA040', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '37'),
(669, 'VEERALAKSHMI . T', '24UMA041', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '38'),
(670, 'VELVIZHI . M', '24UMA042', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '39'),
(671, 'VISHALI SRI . M', '24UMA043', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '40'),
(672, 'VISHNU LAKSHMI . S', '24UMA044', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '41'),
(673, 'ARUN BHARATHI . M', '24UMA046', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '42'),
(674, 'BALASUBRAMANIAN . P', '24UMA047', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '43'),
(675, 'DHANUSHKUMAR . V', '24UMA048', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '44'),
(676, 'EMARAJA . T', '24UMA049', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '45'),
(677, 'ERULAPPARAJ . G', '24UMA050', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '46'),
(678, 'JEBASTIN . R', '24UMA051', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '47'),
(679, 'JEYAPRAKASH . M', '24UMA052', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '48'),
(680, 'KARTHIKEYAN . S', '24UMA053', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '49'),
(681, 'KARUPPASAMY . M', '24UMA054', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '50'),
(682, 'KOGUL . R', '24UMA055', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '51'),
(683, 'MANIRATHNAM . M', '24UMA058', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '52'),
(684, 'MUNEESWARAN . S', '24UMA059', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '53'),
(685, 'PRAKASH . M', '24UMA060', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '54'),
(686, 'RAJESH . M', '24UMA061', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '55'),
(687, 'RAJESHKUMAR . T', '24UMA062', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '56'),
(688, 'SANKARA NARAYANAN . B', '24UMA063', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '57'),
(689, 'SANKARESWARAN . S', '24UMA064', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '58'),
(690, 'SARAVANA KUMAR . V', '24UMA065', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '59'),
(691, 'SRIDHAR . S', '24UMA066', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '60'),
(692, 'SUNDARA MAHALINGAM . R', '24UMA067', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '61'),
(693, 'VISHNU PRIYAN . M', '24UMA068', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '62'),
(694, 'GAYATHRI . K', '24UMA069', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '63'),
(695, 'GOBIKA . S', '24UMA070', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '64'),
(696, 'GOPI NATH . C', '24UMA071', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '65'),
(697, 'PON NITHIYA PRASAD . R', '24UMA072', 'UG', 'II', 'not_attempted', 'ON', 'Mathematics', '66'),
(702, 'KAVITHA B', '25PKC104', 'PG', 'I', 'attempted', 'ON', 'Computer Science – NME', '1'),
(703, 'KAVIKUMAR P', '25PBT101', 'PG', 'I', 'not_attempted', 'ON', 'Computer Science – NME', '2'),
(704, 'PRAVEEN KUMAR M', '25PBT104', 'PG', 'I', 'attempted', 'ON', 'Computer Science – NME', '3'),
(705, 'MUTHU MALA K ', '25PMA007', 'PG', 'I', 'attempted', 'ON', 'Computer Science – NME', '4'),
(706, 'PRIYADHARZINI P', '25PMA008', 'PG', 'I', 'attempted', 'ON', 'Computer Science – NME', '5'),
(707, 'VEKA V', '25PMA009', 'PG', 'I', 'attempted', 'ON', 'Computer Science – NME', '6'),
(708, 'ANANDHA SUBBURAJ M', '25PMA010', 'PG', 'I', 'attempted', 'ON', 'Computer Science – NME', '7'),
(709, 'BALA SRI V', '25PMA011', 'PG', 'I', 'attempted', 'ON', 'Computer Science – NME', '8'),
(710, 'KAVI PRIYA ', '25PMA012', 'PG', 'I', 'attempted', 'ON', 'Computer Science – NME', '9'),
(714, 'AADHARSHA KARTHIKA M', '25UDS101', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'saratha.murugan123@gmail.com'),
(715, 'AKSHARA M', '25UDS102', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'akshara1211m@gmail.com'),
(716, 'AMUDHINI A', '25UDS103', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'bharathi11893@gmail.com'),
(717, 'BALAHARINI S', '25UDS104', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'sbalaharini@gmail.com'),
(718, 'BHARGAVI S', '25UDS105', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', '1985poonkodi@gmail.com'),
(719, 'BHUVANA B', '25UDS106', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'MURUGANBALA17663@GMAIL.COM'),
(720, 'DEVADHARSHINI P', '25UDS107', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'devadharshinipandi@gmail.com'),
(721, 'DHARSHINI M', '25UDS108', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'dm4204853@gmail.com'),
(722, 'DHUVISHA SRIMATHI P', '25UDS109', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'dhuvishasri@gmail.com'),
(723, 'GAYATHRI  S.', '25UDS110', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'durgalakshmi1507@gamil.com'),
(724, 'JOTHI LAKSHMI K', '25UDS112', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'joythilahkmi69@gmail.com'),
(725, 'JOTHILAKSHMI P', '25UDS113', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'gmuthupandi602@gmail.com'),
(726, 'MAHESWARI M', '25UDS114', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'maheswaripandi222@gmail.com'),
(727, 'MAREESWARI S', '25UDS115', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'spalanisamy192@gmail.com'),
(728, 'MEENATCHI K', '25UDS116', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'kklkannadasan@gmail.com'),
(729, 'MOHANA PRIYA  B', '25UDS117', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'baluratha888@gmail.com'),
(730, 'MONI SRI C', '25UDS118', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'monisrimonisri5@gmail.com'),
(731, 'MURUGESWARI K', '25UDS119', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'mahesack3@gmail.com'),
(732, 'MUTHU MAHALAKSHMI M', '25UDS120', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'beard1788@gmail.com'),
(733, 'PACKYALAKSHMI C', '25UDS121', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'packyalakshmi2007@gmail.com'),
(734, 'PONMALAR S', '25UDS122', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'ponmalar240@gmail.com'),
(735, 'RAJANEESWARI P', '25UDS123', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'nandhin111107@gmail.com'),
(736, 'RANJANA  R', '25UDS124', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'rjpm.prakashraja@gmail.com'),
(737, 'SHIVANISREEJA S', '25UDS125', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'kumar8krish@gmail.com'),
(738, 'SITHRATHAL AARA A', '25UDS126', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'benazirasmath@gmail.com'),
(739, 'SIVARANJANI S', '25UDS127', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'vairamsiva4@gmail.com'),
(740, 'SIVASAKTHI PRIYA S', '25UDS128', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'sivasakthipriya629@gmail.com'),
(741, 'SRI SAHANA K', '25UDS129', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'srisahana2909@gmail.com'),
(742, 'THARANIYA P', '25UDS130', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'rperiyaganesh@gmail.com'),
(743, 'VAISHNAVI R', '25UDS131', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'lakshmi.14198@gmail.com'),
(744, 'VISHNUPRABHA S', '25UDS132', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'sivavichu1025@gmail.com'),
(745, 'ABISHEK KARTHIKEYAN B', '25UDS133', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'abishekbabu27072008@gmail.com'),
(746, 'ABISHEK T', '25UDS134', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'tabishekpthangapandi@gamil.com'),
(747, 'CHANDRAKUMAR  M', '25UDS135', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'vijayalakshmi9047541117vijays@gmail.com'),
(748, 'JAI ANAND P', '25UDS136', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'a8523875@gmail.com'),
(749, 'JEBASTIN P', '25UDS137', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'jebastin1107@gmail.com'),
(750, 'JENUSH S', '25UDS138', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'ajeyan77@gmail.com'),
(751, 'KATHIR M', '25UDS139', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'thanikatturajakathir007@gmail.com'),
(752, 'MANOJKUMAR S', '25UDS140', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'manojkusm2222@gmail.com'),
(753, 'SETHUGANESH  S', '25UDS141', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'priya2003lp@gmail.com'),
(754, 'SIRANJEEVI MAHENDRA PANDIAN S', '25UDS142', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'siranjimahendrapandian@gmail.com'),
(755, 'SUJITH RAGHAV S', '25UDS143', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'sujithraghav28@gmail.com'),
(756, 'VIJAY IYYAPPAN  G', '25UDS144', 'UG', 'I', 'not_attempted', 'ON', 'Data Science', 'vijaymanikandan2721@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student_answers`
--

CREATE TABLE `student_answers` (
  `id` int(11) NOT NULL,
  `student_roll_no` varchar(50) NOT NULL,
  `question_id` int(11) NOT NULL,
  `is_correct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_answers`
--

INSERT INTO `student_answers` (`id`, `student_roll_no`, `question_id`, `is_correct`) VALUES
(1, '23UCS041', 869, 0),
(2, '23UCS041', 868, 0),
(3, '23UCS041', 870, 0),
(4, '23UCS041', 866, 1),
(5, '23UCS041', 867, 0),
(6, '23UCS041', 871, 1),
(7, '23UCS041', 872, 0),
(8, '23UCS041', 873, 0),
(9, '23UCS041', 874, 0),
(10, '23UCS041', 865, 1),
(11, '23UCS037', 874, 0),
(12, '23UCS037', 865, 1),
(13, '23UCS037', 873, 1),
(14, '23UCS037', 868, 0),
(15, '23UCS037', 872, 1),
(16, '23UCS037', 869, 0),
(17, '23UCS037', 867, 1),
(18, '23UCS037', 871, 1),
(19, '23UCS037', 870, 0),
(20, '23UCS037', 866, 1),
(21, '23UCS033', 872, 0),
(22, '23UCS033', 866, 1),
(23, '23UCS033', 867, 1),
(24, '23UCS033', 865, 1),
(25, '23UCS033', 869, 0),
(26, '23UCS033', 870, 0),
(27, '23UCS033', 868, 0),
(28, '23UCS033', 873, 0),
(29, '23UCS033', 874, 0),
(30, '23UCS033', 871, 1),
(31, '23UCS040', 873, 0),
(32, '23UCS040', 874, 0),
(33, '23UCS040', 869, 0),
(34, '23UCS040', 866, 1),
(35, '23UCS040', 870, 0),
(36, '23UCS040', 872, 1),
(37, '23UCS040', 868, 0),
(38, '23UCS040', 871, 1),
(39, '23UCS040', 865, 1),
(40, '23UCS040', 867, 1),
(41, '23UCS013', 873, 0),
(42, '23UCS013', 872, 1),
(43, '23UCS013', 865, 1),
(44, '23UCS013', 867, 1),
(45, '23UCS013', 869, 0),
(46, '23UCS013', 868, 0),
(47, '23UCS013', 870, 0),
(48, '23UCS013', 871, 0),
(49, '23UCS013', 874, 0),
(50, '23UCS013', 866, 1),
(51, '23UCS018', 873, 0),
(52, '23UCS018', 874, 0),
(53, '23UCS018', 865, 1),
(54, '23UCS018', 869, 0),
(55, '23UCS018', 867, 1),
(56, '23UCS018', 872, 0),
(57, '23UCS018', 866, 1),
(58, '23UCS018', 871, 0),
(59, '23UCS018', 868, 0),
(60, '23UCS018', 870, 0),
(61, '23UCS017', 870, 1),
(62, '23UCS017', 866, 1),
(63, '23UCS017', 867, 1),
(64, '23UCS017', 871, 1),
(65, '23UCS017', 874, 0),
(66, '23UCS017', 865, 1),
(67, '23UCS017', 869, 0),
(68, '23UCS017', 872, 1),
(69, '23UCS017', 868, 1),
(70, '23UCS017', 873, 0),
(71, '23UCS046', 871, 1),
(72, '23UCS046', 867, 1),
(73, '23UCS046', 870, 1),
(74, '23UCS046', 868, 1),
(75, '23UCS046', 872, 1),
(76, '23UCS046', 873, 0),
(77, '23UCS046', 874, 0),
(78, '23UCS046', 866, 1),
(79, '23UCS046', 865, 1),
(80, '23UCS046', 869, 0),
(81, '23UCS005', 868, 0),
(82, '23UCS005', 870, 0),
(83, '23UCS005', 865, 1),
(84, '23UCS005', 871, 1),
(85, '23UCS005', 867, 1),
(86, '23UCS005', 866, 1),
(87, '23UCS005', 869, 0),
(88, '23UCS005', 872, 1),
(89, '23UCS005', 874, 0),
(90, '23UCS005', 873, 0),
(91, '23UCS031', 870, 1),
(92, '23UCS031', 867, 1),
(93, '23UCS031', 871, 1),
(94, '23UCS031', 865, 1),
(95, '23UCS031', 873, 0),
(96, '23UCS031', 874, 0),
(97, '23UCS031', 866, 1),
(98, '23UCS031', 869, 1),
(99, '23UCS031', 868, 1),
(100, '23UCS031', 872, 1),
(101, '23UCS015', 874, 0),
(102, '23UCS015', 867, 1),
(103, '23UCS015', 871, 1),
(104, '23UCS015', 873, 0),
(105, '23UCS015', 866, 1),
(106, '23UCS015', 869, 0),
(107, '23UCS015', 872, 1),
(108, '23UCS015', 868, 1),
(109, '23UCS015', 870, 0),
(110, '23UCS015', 865, 1),
(111, '23UCS042', 873, 0),
(112, '23UCS042', 870, 0),
(113, '23UCS042', 874, 0),
(114, '23UCS042', 872, 1),
(115, '23UCS042', 867, 1),
(116, '23UCS042', 869, 0),
(117, '23UCS042', 871, 1),
(118, '23UCS042', 868, 0),
(119, '23UCS042', 866, 1),
(120, '23UCS042', 865, 1),
(121, '23UCS019', 872, 1),
(122, '23UCS019', 874, 1),
(123, '23UCS019', 871, 1),
(124, '23UCS019', 866, 1),
(125, '23UCS019', 869, 0),
(126, '23UCS019', 870, 1),
(127, '23UCS019', 867, 0),
(128, '23UCS019', 865, 1),
(129, '23UCS019', 868, 1),
(130, '23UCS019', 873, 1),
(131, '23UCS014', 871, 1),
(132, '23UCS014', 874, 0),
(133, '23UCS014', 868, 0),
(134, '23UCS014', 866, 1),
(135, '23UCS014', 872, 1),
(136, '23UCS014', 867, 1),
(137, '23UCS014', 865, 1),
(138, '23UCS014', 870, 0),
(139, '23UCS014', 873, 0),
(140, '23UCS014', 869, 1),
(141, '23UCS032', 868, 1),
(142, '23UCS032', 871, 0),
(143, '23UCS032', 873, 0),
(144, '23UCS032', 870, 0),
(145, '23UCS032', 867, 0),
(146, '23UCS032', 872, 0),
(147, '23UCS032', 869, 1),
(148, '23UCS032', 866, 1),
(149, '23UCS032', 874, 0),
(150, '23UCS032', 865, 1),
(151, '23UCS038', 865, 1),
(152, '23UCS038', 872, 0),
(153, '23UCS038', 866, 1),
(154, '23UCS038', 867, 1),
(155, '23UCS038', 871, 0),
(156, '23UCS038', 869, 1),
(157, '23UCS038', 868, 1),
(158, '23UCS038', 874, 0),
(159, '23UCS038', 870, 0),
(160, '23UCS038', 873, 0),
(161, '23UCS043', 869, 0),
(162, '23UCS043', 874, 0),
(163, '23UCS043', 873, 0),
(164, '23UCS043', 870, 0),
(165, '23UCS043', 865, 1),
(166, '23UCS043', 868, 1),
(167, '23UCS043', 871, 0),
(168, '23UCS043', 866, 1),
(169, '23UCS043', 872, 1),
(170, '23UCS043', 867, 1),
(171, '23UCS035', 870, 0),
(172, '23UCS035', 873, 0),
(173, '23UCS035', 865, 1),
(174, '23UCS035', 866, 1),
(175, '23UCS035', 872, 0),
(176, '23UCS035', 874, 0),
(177, '23UCS035', 867, 0),
(178, '23UCS035', 869, 0),
(179, '23UCS035', 871, 1),
(180, '23UCS035', 868, 0),
(181, '23UCS027', 866, 1),
(182, '23UCS027', 874, 0),
(183, '23UCS027', 872, 0),
(184, '23UCS027', 871, 1),
(185, '23UCS027', 865, 0),
(186, '23UCS027', 873, 0),
(187, '23UCS027', 870, 0),
(188, '23UCS027', 867, 0),
(189, '23UCS027', 868, 1),
(190, '23UCS027', 869, 0),
(191, '23UCS016', 869, 0),
(192, '23UCS016', 870, 0),
(193, '23UCS016', 871, 1),
(194, '23UCS016', 865, 1),
(195, '23UCS016', 868, 1),
(196, '23UCS016', 874, 0),
(197, '23UCS016', 866, 1),
(198, '23UCS016', 873, 0),
(199, '23UCS016', 872, 0),
(200, '23UCS016', 867, 1),
(201, '23UCS028', 867, 1),
(202, '23UCS028', 868, 1),
(203, '23UCS028', 872, 0),
(204, '23UCS028', 866, 1),
(205, '23UCS028', 870, 0),
(206, '23UCS028', 865, 1),
(207, '23UCS028', 874, 0),
(208, '23UCS028', 873, 1),
(209, '23UCS028', 869, 0),
(210, '23UCS028', 871, 1),
(211, '23UCS012', 866, 1),
(212, '23UCS012', 872, 1),
(213, '23UCS012', 874, 0),
(214, '23UCS012', 870, 0),
(215, '23UCS012', 865, 1),
(216, '23UCS012', 873, 0),
(217, '23UCS012', 867, 1),
(218, '23UCS012', 869, 0),
(219, '23UCS012', 871, 0),
(220, '23UCS012', 868, 0),
(221, '23UCS039', 865, 1),
(222, '23UCS039', 866, 1),
(223, '23UCS039', 872, 1),
(224, '23UCS039', 871, 0),
(225, '23UCS039', 873, 0),
(226, '23UCS039', 874, 0),
(227, '23UCS039', 870, 1),
(228, '23UCS039', 868, 1),
(229, '23UCS039', 867, 0),
(230, '23UCS039', 869, 1),
(231, '23UCS048', 868, 0),
(232, '23UCS048', 873, 1),
(233, '23UCS048', 872, 0),
(234, '23UCS048', 865, 1),
(235, '23UCS048', 867, 1),
(236, '23UCS048', 866, 1),
(237, '23UCS048', 870, 1),
(238, '23UCS048', 874, 1),
(239, '23UCS048', 871, 0),
(240, '23UCS048', 869, 0),
(241, '23UCS003', 870, 0),
(242, '23UCS003', 867, 0),
(243, '23UCS003', 869, 1),
(244, '23UCS003', 874, 0),
(245, '23UCS003', 865, 1),
(246, '23UCS003', 868, 0),
(247, '23UCS003', 872, 1),
(248, '23UCS003', 871, 1),
(249, '23UCS003', 866, 1),
(250, '23UCS003', 873, 0),
(251, '23UCS001', 870, 0),
(252, '23UCS001', 871, 1),
(253, '23UCS001', 865, 1),
(254, '23UCS001', 868, 0),
(255, '23UCS001', 872, 1),
(256, '23UCS001', 873, 0),
(257, '23UCS001', 869, 1),
(258, '23UCS001', 866, 1),
(259, '23UCS001', 874, 0),
(260, '23UCS001', 867, 0),
(261, '23UCS045', 874, 0),
(262, '23UCS045', 867, 1),
(263, '23UCS045', 873, 0),
(264, '23UCS045', 870, 1),
(265, '23UCS045', 869, 0),
(266, '23UCS045', 868, 0),
(267, '23UCS045', 865, 1),
(268, '23UCS045', 871, 1),
(269, '23UCS045', 872, 1),
(270, '23UCS045', 866, 1),
(271, '23UCS021', 865, 1),
(272, '23UCS021', 874, 0),
(273, '23UCS021', 866, 1),
(274, '23UCS021', 867, 1),
(275, '23UCS021', 870, 0),
(276, '23UCS021', 871, 1),
(277, '23UCS021', 869, 0),
(278, '23UCS021', 868, 1),
(279, '23UCS021', 873, 0),
(280, '23UCS021', 872, 0),
(281, '23UCS036', 866, 1),
(282, '23UCS036', 873, 0),
(283, '23UCS036', 869, 0),
(284, '23UCS036', 868, 0),
(285, '23UCS036', 870, 0),
(286, '23UCS036', 865, 1),
(287, '23UCS036', 872, 0),
(288, '23UCS036', 867, 0),
(289, '23UCS036', 874, 0),
(290, '23UCS036', 871, 0),
(291, '23UCS020', 873, 0),
(292, '23UCS020', 866, 1),
(293, '23UCS020', 872, 0),
(294, '23UCS020', 874, 0),
(295, '23UCS020', 868, 0),
(296, '23UCS020', 871, 0),
(297, '23UCS020', 869, 0),
(298, '23UCS020', 867, 1),
(299, '23UCS020', 870, 1),
(300, '23UCS020', 865, 1),
(301, '23UCS025', 874, 0),
(302, '23UCS025', 870, 1),
(303, '23UCS025', 866, 1),
(304, '23UCS025', 873, 0),
(305, '23UCS025', 869, 0),
(306, '23UCS025', 872, 0),
(307, '23UCS025', 868, 0),
(308, '23UCS025', 871, 1),
(309, '23UCS025', 867, 0),
(310, '23UCS025', 865, 1),
(311, '23UCS030', 871, 1),
(312, '23UCS030', 866, 1),
(313, '23UCS030', 865, 1),
(314, '23UCS030', 870, 1),
(315, '23UCS030', 872, 0),
(316, '23UCS030', 873, 0),
(317, '23UCS030', 869, 0),
(318, '23UCS030', 874, 0),
(319, '23UCS030', 867, 1),
(320, '23UCS030', 868, 1),
(321, '23UCS050', 866, 1),
(322, '23UCS050', 868, 0),
(323, '23UCS050', 872, 0),
(324, '23UCS050', 874, 0),
(325, '23UCS050', 870, 0),
(326, '23UCS050', 873, 0),
(327, '23UCS050', 871, 1),
(328, '23UCS050', 865, 0),
(329, '23UCS050', 869, 0),
(330, '23UCS050', 867, 1),
(331, '23UCS022', 867, 1),
(332, '23UCS022', 866, 1),
(333, '23UCS022', 869, 0),
(334, '23UCS022', 870, 0),
(335, '23UCS022', 873, 0),
(336, '23UCS022', 871, 1),
(337, '23UCS022', 865, 0),
(338, '23UCS022', 874, 0),
(339, '23UCS022', 868, 0),
(340, '23UCS022', 872, 0),
(341, '23UCS004', 868, 1),
(342, '23UCS004', 872, 1),
(343, '23UCS004', 867, 1),
(344, '23UCS004', 871, 1),
(345, '23UCS004', 869, 0),
(346, '23UCS004', 873, 0),
(347, '23UCS004', 870, 0),
(348, '23UCS004', 865, 1),
(349, '23UCS004', 866, 1),
(350, '23UCS004', 874, 0),
(351, '23UCS009', 873, 0),
(352, '23UCS009', 871, 1),
(353, '23UCS009', 874, 0),
(354, '23UCS009', 866, 1),
(355, '23UCS009', 865, 1),
(356, '23UCS009', 870, 0),
(357, '23UCS009', 868, 0),
(358, '23UCS009', 872, 1),
(359, '23UCS009', 867, 1),
(360, '23UCS009', 869, 0),
(361, '23UCS047', 871, 1),
(362, '23UCS047', 874, 0),
(363, '23UCS047', 867, 1),
(364, '23UCS047', 873, 0),
(365, '23UCS047', 866, 1),
(366, '23UCS047', 872, 1),
(367, '23UCS047', 865, 1),
(368, '23UCS047', 868, 1),
(369, '23UCS047', 869, 0),
(370, '23UCS047', 870, 1),
(371, '23UCS034', 866, 1),
(372, '23UCS034', 868, 1),
(373, '23UCS034', 873, 0),
(374, '23UCS034', 869, 0),
(375, '23UCS034', 872, 1),
(376, '23UCS034', 867, 1),
(377, '23UCS034', 874, 0),
(378, '23UCS034', 865, 1),
(379, '23UCS034', 871, 1),
(380, '23UCS034', 870, 0),
(381, '23UCS006', 868, 0),
(382, '23UCS006', 865, 1),
(383, '23UCS006', 866, 1),
(384, '23UCS006', 867, 1),
(385, '23UCS006', 874, 0),
(386, '23UCS006', 870, 0),
(387, '23UCS006', 871, 1),
(388, '23UCS006', 873, 0),
(389, '23UCS006', 872, 1),
(390, '23UCS006', 869, 0),
(391, '23UCS008', 873, 0),
(392, '23UCS008', 869, 0),
(393, '23UCS008', 866, 1),
(394, '23UCS008', 868, 0),
(395, '23UCS008', 872, 1),
(396, '23UCS008', 867, 1),
(397, '23UCS008', 865, 1),
(398, '23UCS008', 870, 0),
(399, '23UCS008', 871, 1),
(400, '23UCS008', 874, 0),
(401, '23UCS002', 867, 1),
(402, '23UCS002', 873, 0),
(403, '23UCS002', 872, 1),
(404, '23UCS002', 869, 0),
(405, '23UCS002', 868, 1),
(406, '23UCS002', 874, 0),
(407, '23UCS002', 870, 0),
(408, '23UCS002', 866, 1),
(409, '23UCS002', 871, 1),
(410, '23UCS002', 865, 1),
(411, '25PMA010', 886, 1),
(412, '25PMA010', 887, 1),
(413, '25PMA010', 897, 1),
(414, '25PMA010', 888, 1),
(415, '25PMA010', 896, 0),
(416, '25PMA010', 890, 1),
(417, '25PMA010', 885, 1),
(418, '25PMA010', 894, 1),
(419, '25PMA010', 889, 1),
(420, '25PMA010', 895, 0),
(421, '25PMA010', 898, 1),
(422, '25PMA010', 891, 1),
(423, '25PMA010', 892, 1),
(424, '25PMA010', 893, 1),
(425, '25PMA010', 899, 0),
(426, '25PMA008', 897, 1),
(427, '25PMA008', 892, 1),
(428, '25PMA008', 888, 1),
(429, '25PMA008', 893, 0),
(430, '25PMA008', 896, 0),
(431, '25PMA008', 899, 0),
(432, '25PMA008', 887, 0),
(433, '25PMA008', 898, 1),
(434, '25PMA008', 894, 1),
(435, '25PMA008', 889, 1),
(436, '25PMA008', 885, 1),
(437, '25PMA008', 890, 1),
(438, '25PMA008', 895, 0),
(439, '25PMA008', 891, 1),
(440, '25PMA008', 886, 1),
(441, '25PMA009', 893, 1),
(442, '25PMA009', 899, 0),
(443, '25PMA009', 890, 1),
(444, '25PMA009', 889, 1),
(445, '25PMA009', 888, 0),
(446, '25PMA009', 896, 0),
(447, '25PMA009', 887, 0),
(448, '25PMA009', 897, 1),
(449, '25PMA009', 894, 1),
(450, '25PMA009', 898, 1),
(451, '25PMA009', 892, 1),
(452, '25PMA009', 895, 1),
(453, '25PMA009', 891, 0),
(454, '25PMA009', 886, 1),
(455, '25PMA009', 885, 1),
(456, '25PMA012', 885, 1),
(457, '25PMA012', 899, 1),
(458, '25PMA012', 890, 1),
(459, '25PMA012', 887, 1),
(460, '25PMA012', 896, 1),
(461, '25PMA012', 891, 1),
(462, '25PMA012', 895, 0),
(463, '25PMA012', 897, 1),
(464, '25PMA012', 888, 0),
(465, '25PMA012', 889, 1),
(466, '25PMA012', 893, 0),
(467, '25PMA012', 892, 1),
(468, '25PMA012', 894, 1),
(469, '25PMA012', 898, 0),
(470, '25PMA012', 886, 1),
(471, '25PMA011', 896, 1),
(472, '25PMA011', 890, 0),
(473, '25PMA011', 891, 0),
(474, '25PMA011', 899, 0),
(475, '25PMA011', 895, 1),
(476, '25PMA011', 898, 1),
(477, '25PMA011', 889, 0),
(478, '25PMA011', 888, 1),
(479, '25PMA011', 892, 0),
(480, '25PMA011', 894, 1),
(481, '25PMA011', 887, 0),
(482, '25PMA011', 886, 1),
(483, '25PMA011', 897, 1),
(484, '25PMA011', 893, 0),
(485, '25PMA011', 885, 1),
(486, '25PBT104', 888, 1),
(487, '25PBT104', 893, 1),
(488, '25PBT104', 897, 1),
(489, '25PBT104', 885, 1),
(490, '25PBT104', 891, 0),
(491, '25PBT104', 886, 1),
(492, '25PBT104', 887, 0),
(493, '25PBT104', 898, 1),
(494, '25PBT104', 895, 1),
(495, '25PBT104', 892, 1),
(496, '25PBT104', 890, 0),
(497, '25PBT104', 899, 1),
(498, '25PBT104', 889, 0),
(499, '25PBT104', 894, 1),
(500, '25PBT104', 896, 0),
(501, '25PKC104', 886, 1),
(502, '25PKC104', 899, 0),
(503, '25PKC104', 894, 0),
(504, '25PKC104', 896, 0),
(505, '25PKC104', 897, 0),
(506, '25PKC104', 888, 0),
(507, '25PKC104', 891, 0),
(508, '25PKC104', 885, 0),
(509, '25PKC104', 898, 1),
(510, '25PKC104', 892, 1),
(511, '25PKC104', 887, 0),
(512, '25PKC104', 890, 1),
(513, '25PKC104', 893, 0),
(514, '25PKC104', 895, 0),
(515, '25PKC104', 889, 0),
(516, '25PMA007', 891, 0),
(517, '25PMA007', 892, 1),
(518, '25PMA007', 890, 1),
(519, '25PMA007', 889, 1),
(520, '25PMA007', 886, 1),
(521, '25PMA007', 885, 0),
(522, '25PMA007', 899, 0),
(523, '25PMA007', 895, 0),
(524, '25PMA007', 897, 1),
(525, '25PMA007', 898, 1),
(526, '25PMA007', 896, 0),
(527, '25PMA007', 894, 1),
(528, '25PMA007', 893, 1),
(529, '25PMA007', 887, 0),
(530, '25PMA007', 888, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `program` enum('UG','PG') NOT NULL,
  `year` enum('I','II','III') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_code`, `subject_name`, `program`, `year`) VALUES
(13, '24PCSC101', 'Analysis and Design of Algorithms', 'PG', 'I'),
(16, '24PCSC307', 'Digital Image Processing', 'PG', 'II'),
(17, '24PCSC308', 'Cloud Computing', 'PG', 'II'),
(18, '24PCSC309', 'Python Programming', 'PG', 'II'),
(20, '24PCSE103', 'Advanced C Programming', 'PG', 'I'),
(21, '24PCSC310', 'Data Science and Analytics', 'PG', 'II'),
(24, '23UCSC101', 'Python Programming', 'UG', 'I'),
(25, '23UCSC203', 'Data Structures and Algorithms', 'UG', 'I'),
(26, '23UCSC305', 'Microprocessor and Microcontroller', 'UG', 'II'),
(27, '23UCSC407', 'Java Programming', 'UG', 'II'),
(28, '23UCSC509', 'Computer Networks', 'UG', 'III'),
(29, '23UCSC510', 'DataBase Management System', 'UG', 'III'),
(31, '23UCSE503', 'Data Mining and Data Warehousing', 'UG', 'III'),
(32, '23UCSC614', 'Software Engineering', 'UG', 'III'),
(33, '23UCSC615', '.NET Programming', 'UG', 'III'),
(34, '24PCSC103', 'Advanced Operating Systems', 'PG', 'I'),
(35, '24PCSC102', 'Object Oriented Analysis and Design & C++', 'PG', 'I'),
(37, '23UCSE501', 'Operating System', 'UG', 'III'),
(38, '25PDSC101', 'Advanced Data Structures And Algorithms', 'PG', 'I'),
(41, '25PDSE101', 'Data Science Using R', 'PG', 'I'),
(52, '23UCSG309', 'Programming in C++', 'UG', 'II'),
(53, '24PCSC205', 'Data Mining and Data Warehousing', 'PG', 'I'),
(54, '24PCSC204', 'Advanced Java Programming', 'PG', 'I'),
(55, '24PCSC412', 'Compiler Design', 'PG', 'II'),
(56, '23UCSE605', 'Introduction to data science', 'UG', 'III'),
(57, '25UDSG202', 'Statistics For Data Science', 'UG', 'I'),
(58, '24PCSG201', 'Python For Data Science', 'PG', 'I'),
(59, '25PDSC204', 'Statistical Methods for Data Science', 'PG', 'I'),
(60, '25PDSC205', 'Advanced Python for Data Science', 'PG', 'I');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Indexes for table `quiz_access`
--
ALTER TABLE `quiz_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allowed_subject_code` (`allowed_subject_code`);

--
-- Indexes for table `quiz_entries`
--
ALTER TABLE `quiz_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entry_code` (`entry_code`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_roll_no` (`student_roll_no`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- Indexes for table `student_answers`
--
ALTER TABLE `student_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_roll_no` (`student_roll_no`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject_code` (`subject_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=742;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910;

--
-- AUTO_INCREMENT for table `quiz_access`
--
ALTER TABLE `quiz_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `quiz_entries`
--
ALTER TABLE `quiz_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `student_answers`
--
ALTER TABLE `student_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_code`) REFERENCES `subjects` (`subject_code`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_access`
--
ALTER TABLE `quiz_access`
  ADD CONSTRAINT `quiz_access_ibfk_1` FOREIGN KEY (`allowed_subject_code`) REFERENCES `subjects` (`subject_code`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`student_roll_no`) REFERENCES `students` (`roll_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`subject_code`) REFERENCES `subjects` (`subject_code`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`subject_code`) REFERENCES `subjects` (`subject_code`) ON DELETE CASCADE;

--
-- Constraints for table `student_answers`
--
ALTER TABLE `student_answers`
  ADD CONSTRAINT `student_answers_ibfk_1` FOREIGN KEY (`student_roll_no`) REFERENCES `students` (`roll_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
