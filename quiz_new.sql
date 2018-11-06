-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2018 at 02:12 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(1, 0, '', '', '', '', '', 0),
(2, 1, 'pregunta 1', 'si', 'no', 'no se', 'quien sabe', 1),
(3, 1, 'pregunta2', 'si', 'no', 'no se', 'quien sabe', 2),
(4, 1, 'pregunta3', 'si', 'no', 'no se', 'quien sabe', 3),
(5, 0, '', '', '', '', '', 0),
(6, 0, '', '', '', '', '', 0),
(7, 2, 'pregunta1?', 'si ', 'no', 'no se', 'quien sabe', 1),
(8, 2, 'pregunta2', 'si', 'no', 'no se', 'not yet', 2),
(9, 2, 'prueba3', 'si', 'no', 'no se', 'quien sabe', 3),
(10, 0, '', '', '', '', '', 0),
(11, 0, '', '', '', '', '', 0),
(12, 0, '', '', '', '', '', 0),
(13, 0, '', '', '', '', '', 0),
(14, 0, '', '', '', '', '', 0),
(15, 0, '', '', '', '', '', 0),
(16, 0, '', '', '', '', '', 0),
(17, 0, '', '', '', '', '', 0),
(18, 0, '', '', '', '', '', 0),
(19, 0, '', '', '', '', '', 0),
(20, 0, '', '', '', '', '', 0),
(21, 0, '', '', '', '', '', 0),
(22, 0, '', '', '', '', '', 0),
(23, 0, '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('raj', 8, '0000-00-00', 3),
('raj', 9, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('ashish', 10, '0000-00-00', 3),
('ashish', 9, '0000-00-00', 2),
('ashish', 10, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('ankur', 11, '0000-00-00', 0),
('admin', 12, '0000-00-00', 0),
('admin', 13, '0000-00-00', 2),
('admin', 14, '0000-00-00', 2),
('admin', 14, '0000-00-00', 6),
('raj', 14, '0000-00-00', 3),
('raj', 14, '0000-00-00', 3),
('raj', 11, '0000-00-00', 0),
('raj', 14, '0000-00-00', 4),
('raj', 14, '0000-00-00', 3),
('raj', 14, '0000-00-00', 5),
('raj', 11, '0000-00-00', 0),
('raj', 14, '0000-00-00', 2),
('admin', 11, '0000-00-00', 0),
('admin', 14, '0000-00-00', 2),
('raj', 11, '0000-00-00', 0),
('raj', 2, '0000-00-00', 3),
('alfa', 2, '0000-00-00', 3),
('15121274', 2, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'Calculo'),
(2, 'prueba');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(1, 1, 'examen1', '3'),
(2, 2, 'examenprueba', '3');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, 'alfa', '12345', 'Leonel', 'simon', 'simon', 0, 'email@email.com'),
(2, 'raj', 'raj', 'raj', 'raj', 'raj', 12345, 'raj@gmail.com'),
(3, '15121274', '12345', 'Leonel', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('aefs193jlq9ql5lu0nt6vgt6ob', 12, 'Horas', 'horas trajando en java', 'horas trajando en c++', 'horas trajando en cobol', 'horas trajando en prolog', 0, 4),
('aefs193jlq9ql5lu0nt6vgt6ob', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('aefs193jlq9ql5lu0nt6vgt6ob', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('343dh8i5joabd77699jkteprt6', 13, 'Que es android', 'Un sistema operativo', 'Un televisor', 'Una empresa', 'Un compilador', 1, 1),
('343dh8i5joabd77699jkteprt6', 13, 'De que lenguaje deriva android', 'De unix', 'De linux', 'De devian', 'De windows', 2, 2),
('343dh8i5joabd77699jkteprt6', 13, 'Android es un lenguaje de programacion orientado a objetos', 'SI ', 'NO', 'si y no ', 'ninguna de la anteriores', 1, 2),
('1bb61f0b749e4e40dc0bdbfcb6a74e24', 14, 'Es un tipo de layout', 'ho', 'la', 'puto', 'frame', 4, 4),
('1bb61f0b749e4e40dc0bdbfcb6a74e24', 14, 'prueba vf', 'verdadero', 'falso', ' ', ' ', 1, 1),
('1bb61f0b749e4e40dc0bdbfcb6a74e24', 14, 'soy la verga', 'true', 'false', 'no se', 'not yet', 4, 1),
('1bb61f0b749e4e40dc0bdbfcb6a74e24', 14, 'si te cargo', 'si ', 'no', 'no se', 'not yet', 1, 2),
('1bb61f0b749e4e40dc0bdbfcb6a74e24', 14, 'pregunta 5', 'si', ' no ', 'no se ', 'not yet', 1, 1),
('1bb61f0b749e4e40dc0bdbfcb6a74e24', 14, 'la chida', 'si ', 'no ', 'no se ', 'not yet', 2, 1),
('0fa8b2757b6206692048a74f9ddaa6a7', 11, 'cómo usar date () en mysql?\r\n', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('0fa8b2757b6206692048a74f9ddaa6a7', 11, 'cómo usar date () en mysql?\r\n', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('b3a3b968cf21d4b905185d9b0360fb06', 11, 'cómo usar date () en mysql?\r\n', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('b3a3b968cf21d4b905185d9b0360fb06', 11, 'cómo usar date () en mysql?\r\n', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('b3a3b968cf21d4b905185d9b0360fb06', 14, 'Es un tipo de layout', 'ho', 'la', 'puto', 'frame', 4, 4),
('b3a3b968cf21d4b905185d9b0360fb06', 14, 'prueba vf', 'verdadero', 'falso', ' ', ' ', 1, 4),
('b3a3b968cf21d4b905185d9b0360fb06', 14, 'soy la verga', 'true', 'false', 'no se', 'not yet', 4, 4),
('b3a3b968cf21d4b905185d9b0360fb06', 14, 'si te cargo', 'si ', 'no', 'no se', 'not yet', 1, 4),
('b3a3b968cf21d4b905185d9b0360fb06', 14, 'pregunta 5', 'si', ' no ', 'no se ', 'not yet', 1, 4),
('b3a3b968cf21d4b905185d9b0360fb06', 14, 'la chida', 'si ', 'no ', 'no se ', 'not yet', 2, 4),
('b3a3b968cf21d4b905185d9b0360fb06', 11, 'cómo usar date () en mysql?\r\n', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('b3a3b968cf21d4b905185d9b0360fb06', 11, 'cómo usar date () en mysql?\r\n', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('b3a3b968cf21d4b905185d9b0360fb06', 11, 'cómo usar date () en mysql?\r\n', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('3877e644d53d9488b7c2a76519357878', 11, 'cómo usar date () en mysql?\r\n', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('3877e644d53d9488b7c2a76519357878', 11, 'cómo usar date () en mysql?\r\n', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('fb1c039fc1beda7a14b9ac9770d1ddac', 2, 'pregunta1?', 'si ', 'no', 'no se', 'quien sabe', 1, 1),
('fb1c039fc1beda7a14b9ac9770d1ddac', 2, 'pregunta2', 'si', 'no', 'no se', 'not yet', 2, 2),
('fb1c039fc1beda7a14b9ac9770d1ddac', 2, 'prueba3', 'si', 'no', 'no se', 'quien sabe', 3, 3),
('ccd4bad387f93773db2cdca6f8dd401b', 2, 'pregunta1?', 'si ', 'no', 'no se', 'quien sabe', 1, 1),
('ccd4bad387f93773db2cdca6f8dd401b', 2, 'pregunta2', 'si', 'no', 'no se', 'not yet', 2, 2),
('ccd4bad387f93773db2cdca6f8dd401b', 2, 'prueba3', 'si', 'no', 'no se', 'quien sabe', 3, 3),
('a4eb8552d9047844d215d1453fb14cfb', 2, 'pregunta1?', 'si ', 'no', 'no se', 'quien sabe', 1, 3),
('a4eb8552d9047844d215d1453fb14cfb', 2, 'pregunta2', 'si', 'no', 'no se', 'not yet', 2, 3),
('a4eb8552d9047844d215d1453fb14cfb', 2, 'prueba3', 'si', 'no', 'no se', 'quien sabe', 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
