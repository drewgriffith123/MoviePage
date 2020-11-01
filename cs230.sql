-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 09:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(100) NOT NULL,
  `picpath` varchar(100) NOT NULL DEFAULT 'uploads/anon.png',
  `bio` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('t', 'uploads/anon.png', NULL),
('drewgriffith123', '../uploads/5f94f79ee887d1.04056741.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL COMMENT 'review id',
  `item_id` int(11) NOT NULL COMMENT 'item id to be reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user who will review it',
  `title` varchar(60) NOT NULL,
  `review_text` text NOT NULL,
  `rev_date` timestamp NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT 'is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `item_id`, `uname`, `title`, `review_text`, `rev_date`, `rating_num`, `status`) VALUES
(3, 4, 'drewgriffith123', 'Kinda Grumpy', 'hes good but hes grumpy!', '2020-10-25 02:41:11', 2, 1),
(4, 5, 'drewgriffith123', 'STAY AWAY', 'He bit my hand off when we made our first exchange, I had to hire another villain just to keep him away from me!', '2020-10-25 02:42:17', 1, 1),
(6, 6, 'drewgriffith123', 'Drama Queen', 'He kept getting distracted by Batman for some reason, they really need to work out their differences!', '2020-10-25 03:26:49', 1, 1),
(7, 7, 'drewgriffith123', 'Wait what?', 'How is he back? He was my first Vill-Enlistee ever! Looking forward to hiring him again', '2020-10-25 03:28:11', 5, 1),
(8, 8, 'drewgriffith123', 'Premadonna', 'He always talked as if I worked for him, which was really weird actually. Would not recommend.', '2020-10-25 03:29:21', 3, 1),
(9, 9, 'drewgriffith123', 'Poor Dude', 'Luckily I had Black Widow on call to translate hulk-speak, all he really wanted was a juice box :)', '2020-10-25 03:30:43', 4, 1),
(10, 10, 'drewgriffith123', 'Very Cold', 'Really felt like just another cold, meaningless, transaction to him. He did well, but I think he should smile more!', '2020-10-25 03:32:04', 4, 1),
(11, 11, 'drewgriffith123', 'A Big Joke', 'I dont know how he found me but after hiring him, he kept showing up at my house to show me a trick. I no longer have legs...', '2020-10-25 03:35:32', 1, 1),
(12, 12, 'drewgriffith123', '', 'It took him a year to finish a job that shouldve taken him a day. Said he had to work around his private projects. That means he must have at least 3!', '2020-10-25 03:37:43', 2, 1),
(13, 13, 'drewgriffith123', 'Merc With a Mouth', 'His description isnt lying at all, he really just wants tacos. Took him to a local mexican joint after a 6 month job and he ate 1,000 dollars worth of chimichangas. Does his mutation affect his appetite? Either way he did a great job, and killed double the amount of goons that I expected! 10/10', '2020-10-25 03:40:54', 5, 1),
(14, 14, 'drewgriffith123', 'Sooooooo Expensive', 'That big alien ship of his must cost a fortune to keep running, he wanted over a million human units for a simple espionage task! Only hire if youre seriously loaded... or desperate', '2020-10-25 03:42:50', 2, 1),
(15, 16, 'drewgriffith123', 'Deadly', 'She is a wonderful patron. As long as you can resist...', '2020-10-25 03:44:48', 4, 1),
(16, 17, 'drewgriffith123', 'Super-Commee', 'If you happen to be american, pass on this one. He has a violently burning gaze...', '2020-10-25 03:46:44', 5, 1),
(17, 18, 'drewgriffith123', 'Casualties', 'Only hire if you want a huge population dealt with. I hired him for a single assassination, but now my whole neighborhood is drooling in a chair!', '2020-10-25 03:48:07', 5, 1),
(18, 19, 'drewgriffith123', 'Persistant', 'He will not stop until Superman is dead. If you just tell him your target is Superman in disguise, he is top tier!', '2020-10-25 03:49:30', 5, 1),
(19, 21, 'drewgriffith123', 'Strange', 'The hiring process was very difficult with this one. There was a questionnaire, background check, and he wanted the names of all my cohorts. I still never managed to hire him! Why is he even on here?', '2020-10-25 03:58:40', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `lname`, `fname`, `email`, `password`) VALUES
(8, 'drewgriffith123', 'Griffith', 'Drew', 'drewgriffith123@gmail.com', '$2y$10$WCDHa8rX.gLex.DXH7HeCOkqtCriTfOTZ7kvkqMgx.1zSLIqK.dDa');

-- --------------------------------------------------------

--
-- Table structure for table `villains`
--

CREATE TABLE `villains` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(100) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `villains`
--

INSERT INTO `villains` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(4, 'Deathstroke', 'Only contact me if you want results.', '5f7fbae37cc496.65833377.png', '2020-10-08', NULL),
(5, 'The Batman Who Laughs', 'No one is safe..', '5f7fbb4f323944.12243463.jpg', '2020-10-08', NULL),
(6, 'Jason Todd', '**** Batman', '5f7fbbaa32ed33.73605676.jpg', '2020-10-08', NULL),
(7, 'Darth Maul', 'I\'m back!', '5f7fbbe9c64bd7.62314505.jpg', '2020-10-08', NULL),
(8, 'Doctor Doom', 'Your puny existence serves me well.', '5f7fbc58001014.49593591.jpg', '2020-10-08', NULL),
(9, 'The Incredible Hulk', 'HULK SMASHHH', '5f7fbc7b289cb8.74745600.jpg', '2020-10-08', NULL),
(10, 'The Punisher', 'Happy to assist.', '5f7fbcc2bb3b79.39854831.jpg', '2020-10-08', NULL),
(11, 'The Joker', 'Heres my card ;)', '5f7fbd05b056b7.69004449.jpg', '2020-10-08', NULL),
(12, 'Lex Luthor', 'It\'s Mr. President now.', '5f7fbd62f073b4.07989840.jpg', '2020-10-08', NULL),
(13, 'Deadpool', 'Just pay me with Tacos', '5f7fbe021e83e3.44219016.jpg', '2020-10-08', NULL),
(14, 'Thanos', 'Game over', '5f7fbee4e52c47.05814638.jpg', '2020-10-08', NULL),
(16, 'Poison Ivy', 'Come here sugar', '5f7fc0c9cc1bf0.08450221.jpg', '2020-10-08', NULL),
(17, 'Red Sun Superman', 'Fall in line.', '5f7fc18175fda2.44716475.jpg', '2020-10-08', NULL),
(18, 'Scarecrow', 'What are you, scared?', '5f7fc1df637ba5.12179425.jpg', '2020-10-08', NULL),
(19, 'Doomsday', 'RAAAAAAAHHHHHHHH', '5f7fc22651fcd0.74363032.jpg', '2020-10-08', NULL),
(21, 'Batman', 'I\'m your best option, and you know it...', '5f94f7db5d7f47.40129102.jpg', '2020-10-24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `villains`
--
ALTER TABLE `villains`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'review id', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `villains`
--
ALTER TABLE `villains`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
