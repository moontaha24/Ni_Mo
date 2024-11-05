-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 06:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'Animals', '5'),
(2, 'Fruits', '5'),
(3, 'Foods', '5'),
(4, 'Environment', '5'),
(5, 'Birds', '5'),
(6, 'Colors', '5'),
(7, 'Alphabets & Numbers', '5');

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
(107, 'montaha', 'Fruits', '0', '0', '0', '2023-07-05'),
(108, 'moontaha', 'Animals', '1', '1', '0', '2023-07-06'),
(109, 'moontaha', 'Animals', '5', '5', '0', '2023-07-06'),
(110, 'moontaha', 'Animals', '5', '2', '3', '2023-07-07'),
(111, 'moontaha', 'Animals', '5', '1', '4', '2023-07-07'),
(112, 'moontaha', 'Animals', '5', '1', '4', '2023-07-07');

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
(19, '2', 'The correct sequence of HTML tags for starting a webpage is -', 'Head, Title, HTML, body', 'HTML, Body, Title, Head', 'HTML, Head, Title, Body', 'HTML, Head, Title, Body', 'HTML, Head, Title, Body', 'html'),
(47, '1', 'Where is the cow?', 'opt_images/c43dc5b883558bea29f960f1e0580fb7elephant.png', 'opt_images/c43dc5b883558bea29f960f1e0580fb7lion.png', 'opt_images/c43dc5b883558bea29f960f1e0580fb7cow.png', 'opt_images/c43dc5b883558bea29f960f1e0580fb7monkey.png', 'opt_images/c43dc5b883558bea29f960f1e0580fb7cow.png', 'Animals'),
(48, '2', 'Find the dog.', 'opt_images/9a4bfb2665c07da1d5b439095000b7369.png', 'opt_images/9a4bfb2665c07da1d5b439095000b73610.png', 'opt_images/9a4bfb2665c07da1d5b439095000b7365.png', 'opt_images/9a4bfb2665c07da1d5b439095000b736zebra.png', 'opt_images/9a4bfb2665c07da1d5b439095000b73610.png', 'Animals'),
(49, '3', 'Where is the Monkey?', 'opt_images/63adec4a95bad9cbae1fac1dd47c763amonkey.png', 'opt_images/63adec4a95bad9cbae1fac1dd47c763a6.png', 'opt_images/63adec4a95bad9cbae1fac1dd47c763a10.png', 'opt_images/63adec4a95bad9cbae1fac1dd47c763ahorse.png', 'opt_images/63adec4a95bad9cbae1fac1dd47c763amonkey.png', 'Animals'),
(50, '4', 'Find the Elephant.', 'opt_images/c9a8c372d1a576e09c62644dbe21c59b10.png', 'opt_images/c9a8c372d1a576e09c62644dbe21c59bcow.png', 'opt_images/c9a8c372d1a576e09c62644dbe21c59belephant.png', 'opt_images/c9a8c372d1a576e09c62644dbe21c59bsheep.png', 'opt_images/c9a8c372d1a576e09c62644dbe21c59belephant.png', 'Animals'),
(51, '5', 'Find the Giraffe.', 'opt_images/06d04c85f0cbb3368c8a35286879751dzebra.png', 'opt_images/06d04c85f0cbb3368c8a35286879751djeraffe.png', 'opt_images/06d04c85f0cbb3368c8a35286879751dtiger.png', 'opt_images/06d04c85f0cbb3368c8a35286879751dmonkey.png', 'opt_images/06d04c85f0cbb3368c8a35286879751djeraffe.png', 'Animals');

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
(4, 'Moontaha', 'Zaman', 'moontaha', 'moontaha', '1802025@icte.bdu.ac.bd', '01871041933'),
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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
