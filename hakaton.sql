-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 30, 2017 at 02:59 PM
-- Server version: 5.5.53
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hakaton`
--

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id_task` int(11) UNSIGNED NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `description` text,
  `user_id` int(11) UNSIGNED NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `complete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id_task`, `task_name`, `description`, `user_id`, `deadline`, `complete`) VALUES
(1, 'first task', 'test 1123', 6, '2017-03-21 08:17:00', '1'),
(2, 'second task', 'test 2', 9, '2017-03-27 22:16:57', '1'),
(3, 'third task', 'test 31', 6, '2017-03-28 12:05:00', '0'),
(4, 'first tast v2', 'add new', 0, '2017-03-30 08:00:00', '0'),
(9, 'testing\r\n', 'look \r\n', 6, '2017-03-30 12:00:00', '1'),
(40, 'загрузить задания из файла\r\n', 'заданий в файле несколько\r\n', 6, '2017-03-30 12:00:00', '0'),
(41, 'загрузить задания из файла1\r\n', 'заданий в файле несколько1\r\n', 13, '2017-04-30 12:00:00', '0'),
(42, 'загрузить задания из файла2\r\n', 'заданий в файле несколько2\r\n', 6, '2017-05-30 12:00:00', '0'),
(43, 'загрузить задания из файла3\r\n', 'заданий в файле несколько3\r\n', 12, '2017-06-30 12:00:00', '0'),
(44, 'загрузить задания из файла4\r\n', 'заданий в файле несколько4\r\n', 8, '2017-07-30 12:00:00', '0'),
(45, 'загрузить задания из файла5\r\n', 'заданий в файле несколько5\r\n', 0, '2017-08-30 12:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('0','1','2','') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `role`) VALUES
(1, 'Ксения', 'e10adc3949ba59abbe56e057f20f883e', '1'),
(2, 'Дима', 'e10adc3949ba59abbe56e057f20f883e', '1'),
(3, 'user1', 'e10adc3949ba59abbe56e057f20f883e', '0'),
(4, 'new_user', '0eb56ababcc403f0fe3e6f09fc1d7708', '1'),
(5, 'worker1', '0eb56ababcc403f0fe3e6f09fc1d7708', '2'),
(6, 'worker', 'e10adc3949ba59abbe56e057f20f883e', '2'),
(7, 'teamlead', 'e10adc3949ba59abbe56e057f20f883e', '1'),
(8, 'worker2', 'e10adc3949ba59abbe56e057f20f883e', '2'),
(9, 'frog1', 'e10adc3949ba59abbe56e057f20f883e', '2'),
(10, 'qwerty', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2'),
(11, 'dog', 'e10adc3949ba59abbe56e057f20f883e', '1'),
(12, 'dev1', 'e10adc3949ba59abbe56e057f20f883e', '2'),
(13, 'dev2', 'e10adc3949ba59abbe56e057f20f883e', '2'),
(14, 'director', 'e10adc3949ba59abbe56e057f20f883e', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id_task`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id_task` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
