-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2023 at 08:11 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufixer_quizwiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

CREATE TABLE `exam_category` (
  `id` int(5) NOT NULL,
  `category` varchar(100) NOT NULL,
  `exam_time_in_minutes` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_category`
--

INSERT INTO `exam_category` (`id`, `category`, `exam_time_in_minutes`) VALUES
(1, 'PHP', '1'),
(2, 'simple maths', '30'),
(3, 'HTML', '10');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `exam_type` varchar(100) NOT NULL,
  `total_question` varchar(10) NOT NULL,
  `correct_answer` varchar(10) NOT NULL,
  `wrong_answer` varchar(10) NOT NULL,
  `exam_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `username`, `exam_type`, `total_question`, `correct_answer`, `wrong_answer`, `exam_time`) VALUES
(42, 'admin', 'PHP', '5', '4', '1', '2023-03-15'),
(43, 'admin', 'PHP', '5', '0', '5', '2023-03-15'),
(44, 'admin', 'PHP', '5', '0', '5', '2023-03-15'),
(45, 'admin', 'HTML', '10', '0', '10', '2023-03-15'),
(46, 'admin', 'PHP', '5', '5', '0', '2023-03-15'),
(47, 'admin', 'simple maths', '11', '2', '9', '2023-03-15'),
(48, 'moontaha', 'PHP', '5', '5', '0', '2023-03-15'),
(49, 'moontaha', 'PHP', '5', '0', '5', '2023-05-01'),
(50, 'moontaha', 'PHP', '5', '0', '5', '2023-05-20'),
(51, 'moontaha', 'PHP', '5', '0', '5', '2023-05-28'),
(52, 'admin', 'PHP', '5', '0', '5', '2023-06-01'),
(53, 'montaha', 'PHP', '6', '1', '5', '2023-07-03'),
(54, 'montaha', 'PHP', '6', '0', '6', '2023-07-03'),
(55, 'nipa', 'PHP', '6', '3', '3', '2023-07-03'),
(56, 'nipa', 'PHP', '6', '3', '3', '2023-07-03'),
(57, 'nipa', 'simple maths', '11', '0', '11', '2023-07-03'),
(58, 'nipa', 'PHP', '6', '1', '5', '2023-07-03'),
(59, 'nipa', 'PHP', '7', '1', '6', '2023-07-03'),
(60, 'nipa', 'PHP', '1', '0', '1', '2023-07-03'),
(61, 'nipa', 'PHP', '1', '0', '1', '2023-07-03'),
(62, 'kayes', 'PHP', '1', '0', '1', '2023-07-03'),
(63, 'kayes', 'PHP', '2', '1', '1', '2023-07-03'),
(64, 'kayes', 'PHP', '2', '1', '1', '2023-07-03'),
(65, 'kayes', 'PHP', '2', '1', '1', '2023-07-03'),
(66, 'nipa', 'PHP', '2', '1', '1', '2023-07-03'),
(67, 'nipa', 'PHP', '2', '0', '2', '2023-07-03'),
(68, 'nipa', 'PHP', '2', '0', '2', '2023-07-03'),
(69, 'nipa', 'PHP', '2', '0', '2', '2023-07-04'),
(70, 'montaha', 'PHP', '1', '0', '1', '2023-07-04'),
(71, 'montaha', 'PHP', '1', '1', '0', '2023-07-04'),
(72, 'montaha', 'PHP', '2', '2', '0', '2023-07-04'),
(73, 'montaha', 'PHP', '5', '5', '0', '2023-07-04'),
(74, 'montaha', 'PHP', '5', '5', '0', '2023-07-04'),
(75, 'montaha', 'PHP', '5', '4', '1', '2023-07-04'),
(76, 'montaha', 'PHP', '5', '4', '1', '2023-07-04'),
(77, 'montaha', 'PHP', '5', '4', '1', '2023-07-04'),
(78, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(79, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(80, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(81, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(82, 'montaha', 'PHP', '5', '2', '3', '2023-07-04'),
(83, 'montaha', 'PHP', '5', '2', '3', '2023-07-04'),
(84, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(85, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(86, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(87, 'montaha', 'PHP', '5', '4', '1', '2023-07-04'),
(88, 'montaha', 'PHP', '5', '4', '1', '2023-07-04'),
(89, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(90, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(91, 'montaha', 'PHP', '5', '0', '5', '2023-07-04'),
(92, 'montaha', 'PHP', '5', '0', '5', '2023-07-04'),
(93, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(94, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(95, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(96, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(97, 'montaha', 'PHP', '5', '1', '4', '2023-07-04'),
(98, 'montaha', 'simple maths', '11', '5', '6', '2023-07-04'),
(99, 'montaha', 'PHP', '5', '0', '5', '2023-07-04'),
(100, 'montaha', 'PHP', '5', '0', '5', '2023-07-04'),
(101, 'montaha', 'PHP', '5', '2', '3', '2023-07-04'),
(102, 'montaha', 'PHP', '5', '0', '5', '2023-07-04'),
(103, 'montaha', 'PHP', '5', '0', '5', '2023-07-04'),
(104, 'montaha', 'PHP', '5', '3', '2', '2023-07-04'),
(105, 'montaha', 'PHP', '5', '3', '2', '2023-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(5) NOT NULL,
  `question_no` varchar(5) NOT NULL,
  `question` varchar(500) NOT NULL,
  `opt1` varchar(100) NOT NULL,
  `opt2` varchar(100) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_no`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `category`) VALUES
(8, '1', 'Which is greater than 4?', '5', '4', '2', '1', '5', 'simple maths'),
(9, '2', 'Which is the smallest?', '5', '4', '-1', '0', '-1', 'simple maths'),
(10, '3', 'What is |-26|?', '26', '25', '24', '27', '26', 'simple maths'),
(11, '4', 'what is the square of 2?', '2', '5', '3', '4', '4', 'simple maths'),
(12, '5', 'Find the value of 3 + 2 * (8 â€“ 3)', '25', '13', '17', '24', '13', 'simple maths'),
(13, '6', '1 + 2 = ?', '2', '5', '6', '3', '3', 'simple maths'),
(14, '7', 'First character of alphabets?', 'opt_images/5380f5018f1e62d4c400d5798c5d3aba15645901481552049006a.png', 'opt_images/5380f5018f1e62d4c400d5798c5d3aba15645901481552049006b.png', 'opt_images/5380f5018f1e62d4c400d5798c5d3aba15645901481552049006c.png', 'opt_images/5380f5018f1e62d4c400d5798c5d3aba15645901481552049006d.png', 'opt_images/5380f5018f1e62d4c400d5798c5d3aba15645901481552049006a.png', 'simple maths'),
(18, '1', ' HTML stands for -', 'HighText Machine Language', 'HyperText and links Markup Language', 'HyperText Markup Language', 'None of these', 'HyperText Markup Language', 'html'),
(19, '2', 'The correct sequence of HTML tags for starting a webpage is -', 'Head, Title, HTML, body', 'HTML, Body, Title, Head', 'HTML, Head, Title, Body', 'HTML, Head, Title, Body', 'HTML, Head, Title, Body', 'html'),
(22, '3', 'Which of the following attribute is used to provide a unique name to an element?', 'class', 'id', 'type', 'None of the above', 'id', 'html'),
(23, '4', 'What are the types of unordered or bulleted list in HTML?', 'disc, square, triangle', 'polygon, triangle, circle', 'disc, circle, square', 'All of the above', 'disc, circle, square', 'html'),
(24, '5', 'Which of the following HTML attribute is used to define inline styles?', 'style', 'type', 'class', 'None of the above', 'style', 'html'),
(25, '6', ' The tags in HTML are -', 'case-sensitive', 'in upper case', 'not case sensitive', 'in lowercase', 'not case sensitive', 'html'),
(26, '7', '  Which of the following is used to read an HTML page and render it?', ' Web server', ' Web network', 'Web browser', 'Web matrix', 'Web browser', 'html'),
(27, '8', 'What is DOM in HTML?', ' Language dependent application programming', ' Hierarchy of objects in ASP.NET', 'Application programming interface', 'Convention for representing and interacting with objects in html documents', 'Convention for representing and interacting with objects in html documents', 'html'),
(28, '9', 'In which part of the HTML metadata is contained?', ' head tag', ' title tag', 'html tag', 'body tag', ' head tag', 'html'),
(29, '10', 'Which of the following is not the element associated with the HTML table layout?', 'alignment', ' color', ' size', 'spanning', ' color', 'html'),
(35, '8', 'A line which cuts a pair of parallel lines is called', 'tangent', ' chord', 'traversal', 'intersector', 'traversal', 'simple maths'),
(36, '9', 'An angle whose value is ____, is called complete angle.', '180°', '240°', '360°', 'none of the above', '360°', 'simple maths'),
(37, '10', '4950/6 + 112 x 1.75 = ? x 2', '510.5', '505.2', '515.5', 'none of the above', '510.5', 'simple maths'),
(38, '11', 'A shopkeeper purchases 15 mangoes for Rs. 10 and sells them at 10 mangoes for Rs. 15. Thus, he earns a profit of', '50%', '75%', '80%', '125%', '125%', 'simple maths'),
(42, '1', 'The most cute kitten', 'opt_images/863df0f1998315e965469bc03055f7deScreenshot_3.jpg', 'opt_images/863df0f1998315e965469bc03055f7dekitty-cat-pillow.jpg', 'opt_images/863df0f1998315e965469bc03055f7delittle-grey-kitten-with-blue-eyes-lies-grey-couch.jpg', 'opt_images/863df0f1998315e965469bc03055f7deans.jpg', 'opt_images/863df0f1998315e965469bc03055f7deans.jpg', 'PHP'),
(43, '2', 'Dog?', 'opt_images/90abc8dea21426450967799e09023381Screenshot 2023-06-25 213743.png', 'opt_images/90abc8dea21426450967799e09023381Screenshot 2023-06-25 213717.png', 'opt_images/90abc8dea21426450967799e09023381Screenshot 2023-06-25 213803.png', 'opt_images/90abc8dea21426450967799e09023381Screenshot 2023-06-25 213812.png', 'opt_images/90abc8dea21426450967799e09023381Screenshot 2023-06-25 213717.png', 'PHP'),
(44, '3', 'Chicken?', 'opt_images/b4c688a1994ea0061d90acbe37d9c605Screenshot 2023-06-25 213743.png', 'opt_images/b4c688a1994ea0061d90acbe37d9c605Screenshot 2023-06-25 213717.png', 'opt_images/b4c688a1994ea0061d90acbe37d9c605Screenshot 2023-06-25 213803.png', 'opt_images/b4c688a1994ea0061d90acbe37d9c605Screenshot 2023-06-25 213812.png', 'opt_images/b4c688a1994ea0061d90acbe37d9c605Screenshot 2023-06-25 213743.png', 'PHP'),
(45, '4', 'Duc', 'opt_images/e2c5ebb7df7730f02444efa211cdb36eScreenshot 2023-06-25 213743.png', 'opt_images/e2c5ebb7df7730f02444efa211cdb36eScreenshot 2023-06-25 213717.png', 'opt_images/e2c5ebb7df7730f02444efa211cdb36eScreenshot 2023-06-25 213803.png', 'opt_images/e2c5ebb7df7730f02444efa211cdb36eScreenshot 2023-06-25 213812.png', 'opt_images/e2c5ebb7df7730f02444efa211cdb36eScreenshot 2023-06-25 213812.png', 'PHP'),
(46, '5', 'Moon', 'opt_images/b5bdc44d37ad95917e886de6f4475a97Screenshot 2023-06-25 213725.png', 'opt_images/b5bdc44d37ad95917e886de6f4475a97Screenshot 2023-06-25 213607.png', 'opt_images/b5bdc44d37ad95917e886de6f4475a97Screenshot 2023-06-25 213652.png', 'opt_images/b5bdc44d37ad95917e886de6f4475a97Screenshot 2023-06-25 213704.png', 'opt_images/b5bdc44d37ad95917e886de6f4475a97Screenshot 2023-06-25 213704.png', 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'amit', 'andipara', 'amit', 'amit123', 'amit.andipara@gmail.com', '9925010051'),
(2, 'df', 'df', 'admin', 'admin', 'sdf@gma.com', '23432'),
(3, 'test', 'test3', 'test3', 'test3', 'kayes.bdu@gmail.com', '2343432'),
(4, 'Moontaha', 'Zaman', 'moontaha', 'moontaha', '1802025@icte.bdu.ac.bd', '01871041933'),
(5, 'montaha', 'montaha', 'montaha', 'montaha', 'montaha@gmail.com', '3423423'),
(6, 'kayes', 'kayes', 'kayes', 'kayes', 'kayes@fd.com', '3423423'),
(7, 'nipa', 'nipa', 'nipa', 'nipa', 'nipa@fdf.co', '3545');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_category`
--
ALTER TABLE `exam_category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
