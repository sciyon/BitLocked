/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  ACER
 * Created: Dec 21, 2022
 */

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 11:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitlocked`
--

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `cred_id` int(11) NOT NULL,
  `cred_user` int(11) NOT NULL,
  `cred_account_name` varchar(300) NOT NULL,
  `cred_username` varchar(300) NOT NULL,
  `cred_password` varchar(300) NOT NULL,
  `cred_email` varchar(280) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`cred_id`, `cred_user`, `cred_account_name`, `cred_username`, `cred_password`, `cred_email`) VALUES
(1, 1, 'clash of clans', 'xalt', 'daoknljkwbdoja', 'xalt@gmail.com'),
(2, 1, 'Facebook', 'erwin123', 'erwin12321313', 'erwin123@gmail.com'),
(3, 1, 'erwin', 'erwin', 'Bu!0mW$09Kg0f9p', 'erwin@dkland.com'),
(4, 1, 'Valorant', 'erwin112', 'Yq$2igNBn1@A$qo', 'erwin112@gmail.com'),
(5, 1, 'w1eqe', 'qweqwe', 'Dd@1oyx4imAuscp', 'qweqweq'),
(6, 1, 'aweawe', 'aweawe', 'Bt!5Xtva7agyc3W', 'aweawea'),
(10, 13, 'Facebook', 'ryonic.ccy', 'He$0dv528$mT#Vy', 'ryonic.ccy@gmail.com'),
(15, 2, 'awdasd', 'awdsdadadsa', 'Da#08sHhwwc9Gwd', 'dsawdasd'),
(16, 2, 'dasdaw', 'dsadawd', 'Jh!3a2tSu5LtoVC', 'asd@awddawd'),
(17, 2, 'awda', 'sdawd', 'asdawd', 'asdawd@awdasdawdasdawdasdawd'),
(18, 2, 'adasd', 'asdasd', 'Wj#4NvIWWZnRPl2', 'asdasd'),
(19, 2, 'erwin112', 'erwin112', 'Bd!2fgIDMov7USJ', 'erwin112@gmail.com'),
(20, 2, 'erwin112', 'erwin112', 'erwin112', 'erwin112@what.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(300) NOT NULL,
  `user_pass` varchar(300) NOT NULL,
  `user_email` varchar(280) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_username`, `user_pass`, `user_email`) VALUES
(1, '}{alt', 'erwin123', 'matcha.ccy@gmail.com'),
(2, 'erwin112', 'erwin112', 'erwin112@gmail.com'),
(8, 'w123131', 'erwin112', 'erwin112'),
(11, 'matcha.ccy', 'matcha.ccy', 'matcha.ccy@1gmail.com'),
(12, 'ryonic.ccy', 'ryonic.ccy', 'ryonic.ccy@gmail.com'),
(13, 'ryonic.ccy', 'ryonic.ccy', 'ryonic.ccy@gmail.com1'),
(14, 'wawdaw', 'dadwda', 'wdasdawd'),
(15, 'awdada', 'wdawd', 'awdawd'),
(16, 'erwin11221312313', 'erwin112', 'erwin112awdad'),
(17, 'user1', 'user1', 'user1@awdasda.com'),
(18, 'awdad', 'awdasdawd', 'asdasd@andjoabs.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`cred_id`),
  ADD KEY `FK_credentials_id` (`cred_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UC_users_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `cred_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credentials`
--
ALTER TABLE `credentials`
  ADD CONSTRAINT `FK_credentials_id` FOREIGN KEY (`cred_user`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
