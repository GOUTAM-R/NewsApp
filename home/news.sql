-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2017 at 12:12 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `email`, `password`, `name`, `type`) VALUES
(1, 'reporter@gmail.com', '12321', 'John Snow', 'reporter'),
(2, 'mod@gmail.com', '12321', 'Maddy ', 'moderator'),
(3, 'admin@gmail.com', '12321', 'nag', 'admin'),
(4, 'amb@gmail.com', '12321', 'shankar', 'ambulance'),
(5, 'police@gmail.com', '12321', 'ravi', 'police');

-- --------------------------------------------------------

--
-- Table structure for table `public_news`
--

CREATE TABLE `public_news` (
  `nid` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `category` varchar(200) NOT NULL,
  `city` text NOT NULL,
  `street` text NOT NULL,
  `image` text NOT NULL,
  `video` text NOT NULL,
  `document` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `public_news`
--

INSERT INTO `public_news` (`nid`, `id`, `title`, `description`, `category`, `city`, `street`, `image`, `video`, `document`, `status`, `date`) VALUES
(2, 1, 'Hindustan Times Belt and Road forum: Chinese President Xi pledges billions for new Silk Road, \'snubs\' absentee India', 'Hindustan Times Belt and Road forum: Chinese President Xi pledges billions for new Silk Road, \'snubs\' absentee IndiaHindustan Times Belt and Road forum: Chinese President Xi pledges billions for new Silk Road, \'snubs\' absentee India', 'politics', 'bangalore', 'yelahanka', '../media_files/20-zoopworld.jpg', '../media_files/My Movie.mp4', '../media_files/My Movie.mp4', 'verified', '2017-05-15 04:15:15'),
(30, 9, 'winner', 'one of my frnd won chess competitin', 'Entertainment', 'Bangalore Rural, Karnataka, India', 'D Cross Rd, Doddaballapura, Karnataka 561203, India', '    \r\n\r\n../media_files/15nadal1.jpg', '    \r\n\r\n../media_files/My Movie.mp4', '', 'not_verified', '2017-05-16 18:32:32'),
(33, 8, 'Rafael Nadal remains unbeaten on clay in 2017 after winning his fifth title in Madrid', 'Nadal, Wawrinka Open Rome Campaigns Wednesday.', 'Sports', 'Bengaluru, Karnataka, India', '1134-1141, 16th B Cross Rd, LIG 3rd Stage, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '    \r\n\r\n../media_files/15nadal1.jpg', '    \r\n\r\n../media_files/nadal.mp4', '', 'verified', '2017-05-17 17:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `public_news_ambulancee`
--

CREATE TABLE `public_news_ambulancee` (
  `nid` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `location` text NOT NULL,
  `image` text NOT NULL,
  `video` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `public_news_ambulancee`
--

INSERT INTO `public_news_ambulancee` (`nid`, `id`, `title`, `description`, `location`, `image`, `video`, `status`, `date`) VALUES
(5, 3, 'a', 'b', 'D Cross Rd, Doddaballapura, Karnataka 561203, India', '', '', 'not_verified', '2017-05-16 12:48:52'),
(6, 3, 'a', 'b', 'D Cross Rd, Doddaballapura, Karnataka 561203, India', '    \r\n\r\n../media_files/5.jpg', '', 'not_verified', '2017-05-16 12:48:52'),
(11, 3, 'accident', 'emergency', 'D Cross Rd, Doddaballapura, Karnataka 561203, India', '    \r\n\r\n../media_files/images.jpg', '', 'not_verified', '2017-05-16 12:48:52'),
(12, 3, 'death', '2 spot out', 'D Cross Rd, Doddaballapura, Karnataka 561203, India', '', '', 'not_verified', '2017-05-16 12:48:52'),
(13, 4, 'aaa', 'aaa', '', '', '', 'not_serviced', '2017-05-16 12:48:52'),
(14, 8, 'emergency', 'accident', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '', '', 'not_serviced', '2017-05-16 12:48:52'),
(15, 8, 'agsgs', 'kkkkk', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '', '', 'not_serviced', '2017-05-16 12:49:14'),
(16, 8, 'memem', 'hhshshs', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '    \r\n\r\n../media_files/thor_2_the_dark_world-1920x1080.jpg', '', 'served', '2017-05-16 12:56:03'),
(17, 8, 'ghth', 'aaaa', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '    \r\n\r\n../media_files/HD-Desktop-wallpaper.jpg', '', 'served', '2017-05-16 13:08:22'),
(18, 8, '  INSTANT NEWS WITH ENHANCED JOURNALISM TOWARDS DIGITAL INDIA', 'jsjsjsjjs', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '    \r\n\r\nError during file upload7', '', 'not_serviced', '2017-05-16 13:14:35'),
(19, 8, 'jjjdj', 'lllllllllll', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '    \r\n\r\n../media_files/10704651754_aba2c5530c_b.jpg', '', 'served', '2017-05-16 13:20:56'),
(20, 8, 'INSTANT NEWS WITH ENHANCED JOURNALISM TOWARDS DIGITAL INDIA', 'aaa', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '', '', 'not_serviced', '2017-05-16 13:37:36'),
(21, 8, 'sssaa', 'aaa', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '', '', 'served', '2017-05-16 13:54:26'),
(22, 8, '  INSTANT NEWS WITH ENHANCED JOURNALISM TOWARDS DIGITAL INDIA', 'emergency', 'D Cross Rd, Doddaballapura, Karnataka 561203, India', '    \r\n\r\n../media_files/EOGGoggles.jpg', '', 'not_serviced', '2017-05-16 18:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `public_news_police`
--

CREATE TABLE `public_news_police` (
  `nid` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `location` text NOT NULL,
  `image` text NOT NULL,
  `video` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `public_news_police`
--

INSERT INTO `public_news_police` (`nid`, `id`, `title`, `description`, `location`, `image`, `video`, `status`, `date`) VALUES
(1, 8, 'aaass', 'sss', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '', '', '', '2017-05-16 13:58:35'),
(2, 8, 'jdjdj', 'llll', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '', '', 'useful', '2017-05-16 14:00:53'),
(3, 8, 'crime', 'someksksksk', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '    \r\n\r\n../media_files/thor_2_the_dark_world-1920x1080.jpg', '', 'not_useful', '2017-05-16 14:25:13'),
(4, 8, 'crime', 'someksksksk', '239, Yelahanka Satellite Town, Yelahanka, Bengaluru, Karnataka 560064, India', '    \r\n\r\n../media_files/thor_2_the_dark_world-1920x1080.jpg', '', 'not_useful', '2017-05-16 14:29:53'),
(5, 8, 'hh', 'ii', 'dbpur', '', '', 'none', '2017-05-16 22:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `reporter_id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `aadhar_id` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `verification_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reporter_id`, `name`, `email`, `mobile`, `password`, `occupation`, `address`, `gender`, `aadhar_id`, `state`, `verification_status`) VALUES
(8, 'nagendra', 'mcnag19@gmail.com', '903560360', 'Naga@8970', 'stduent', 'd', 'male', '123', 'karnataka', 'verified'),
(9, 'Prashanth', 'prashantjs9731@gmail.com', '973153454', 'Ashok@9731', 'Student ', 'Hjjdhddjkmkdj', 'male', '554558', 'Karnataka ', 'verified'),
(10, 'pooja', 'pooja@gmail.com', '95858', 'Pooja@123', 'stduent', 'db pur', 'female', '8564', 'k', 'verified'),
(17, 'nagendra', 'chandra@gmail.com', '903560360', 'Naga@123', 'stduent', 'd', 'male', '456', 'karnataka', 'not_verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `public_news`
--
ALTER TABLE `public_news`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `public_news_ambulancee`
--
ALTER TABLE `public_news_ambulancee`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `public_news_police`
--
ALTER TABLE `public_news_police`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `reporter_id` (`reporter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `public_news`
--
ALTER TABLE `public_news`
  MODIFY `nid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `public_news_ambulancee`
--
ALTER TABLE `public_news_ambulancee`
  MODIFY `nid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `public_news_police`
--
ALTER TABLE `public_news_police`
  MODIFY `nid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reporter_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
