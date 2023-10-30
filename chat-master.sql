-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 12:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat-master`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `user_ques` varchar(255) DEFAULT NULL,
  `bot_reply` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `user_ques`, `bot_reply`, `uid`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hlo', 'Hi dear', 'gJIBV8mTfmYX1vt', 1, NULL, NULL),
(2, 'how r u?', 'I\'m good. Thanks for asking. How about you.', 'TwfDqIrzQvY4QjQ', 1, NULL, NULL),
(3, 'i am good', 'Wonderful, tell me how can I help you?', 'ATZcVbQqANDUeuA', 1, NULL, NULL),
(4, 'Who created u?', 'Chat master was created by Vinay Munjal', 'rK1e4OFr3UNU9Dw', 1, NULL, NULL),
(5, 'what is chat master', 'Chat master is a chat bot created by Vinay Munjal.', 'rfB8BBmh1J9g0Mv', 1, NULL, NULL),
(6, 'vinay munjal?', 'Vinay Munjal is a Web Developer who is passionate in creating website, portals, games, bots etc. You can contact him on vinaywebguy@gmail.com', 'M5BVYo9a5WEpem1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qna`
--

CREATE TABLE `qna` (
  `id` int(11) NOT NULL,
  `ques` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qna`
--

INSERT INTO `qna` (`id`, `ques`, `ans`, `uid`, `status`, `created_at`, `updated_at`) VALUES
(2, 'hlo', 'Hi dear', 'oixxruEdfyTWfq9', 1, NULL, NULL),
(3, 'hi', 'Hi dear', 'FNFULKlX6BsLtA1', 1, NULL, NULL),
(4, 'hey', 'Hi dear', 'ORWPqqdq0QFGlJl', 1, NULL, NULL),
(5, 'hello', 'Hi dear', 'qX6g1Pw73YHzAUB', 1, NULL, NULL),
(6, 'helo', 'Hi dear', 'Jbuag2U9N7iduif', 1, NULL, NULL),
(7, 'namaste', 'Hi dear', 'dsXilI9JcaxO5Pu', 1, NULL, NULL),
(8, 'yo', 'Hi dear', '9cb2rbZbUJxc7f6', 1, NULL, NULL),
(9, 'sup', 'Hi dear', 'kPt8nRafrHbsIEw', 1, NULL, NULL),
(10, 'how are you?', 'I\'m good. Thanks for asking. How about you.', 'cO24qWvP3tn2Bf0', 1, NULL, NULL),
(11, 'how are you', 'I\'m good. Thanks for asking. How about you.', 'aJygri4KnNM9n4p', 1, NULL, NULL),
(12, 'how r you?', 'I\'m good. Thanks for asking. How about you.', 'pEkSeLVp9foiyS8', 1, NULL, NULL),
(13, 'how r you', 'I\'m good. Thanks for asking. How about you.', 'lCvBBfOPBuQumr7', 1, NULL, NULL),
(14, 'how r u?', 'I\'m good. Thanks for asking. How about you.', 'h7x6M6s0B7b3tgB', 1, NULL, NULL),
(15, 'how r u', 'I\'m good. Thanks for asking. How about you.', '9HXC2veMw20Qyrp', 1, NULL, NULL),
(16, 'how are u?', 'I\'m good. Thanks for asking. How about you.', '884EULEeHnDm3O7', 1, NULL, NULL),
(17, 'how are u', 'I\'m good. Thanks for asking. How about you.', 'cYw7DsGPYTEohus', 1, NULL, NULL),
(18, 'i\'m good', 'Wonderful, tell me how can I help you?', 'oU3pt46Xrk7evhq', 1, NULL, NULL),
(19, 'i am good', 'Wonderful, tell me how can I help you?', 'dd98PpQzWxsfDlY', 1, NULL, NULL),
(20, 'i m good', 'Wonderful, tell me how can I help you?', 'lelM0RRw4RI2RTs', 1, NULL, NULL),
(21, 'i\'m fine', 'Wonderful, tell me how can I help you?', 'ebwkhEUB2y5vtJ8', 1, NULL, NULL),
(22, 'i am fine', 'Wonderful, tell me how can I help you?', 'YU1MLNcUeIKuw0Q', 1, NULL, NULL),
(23, 'i m fine', 'Wonderful, tell me how can I help you?', 'MudSoKWuZQ3lUr9', 1, NULL, NULL),
(24, 'fine', 'Wonderful, tell me how can I help you?', '4LB94kuUXq5SOwq', 1, NULL, NULL),
(25, 'good', 'Wonderful, tell me how can I help you?', '8XHe3pICYh0H1e0', 1, NULL, NULL),
(26, 'who built you?', 'Chat master was created by Vinay Munjal', 'ektdqocjSgEH6o6', 1, NULL, NULL),
(27, 'who built you', 'Chat master was created by Vinay Munjal', 'Udw7Xn8yLdB9d8M', 1, NULL, NULL),
(28, 'who built u', 'Chat master was created by Vinay Munjal', 'hSx30A6pfE6LtFa', 1, NULL, NULL),
(29, 'who built u?', 'Chat master was created by Vinay Munjal', 'DstLiwFcGfZZhmU', 1, NULL, NULL),
(30, 'who created you?', 'Chat master was created by Vinay Munjal', 'K71Rg3iomDUqtzx', 1, NULL, NULL),
(31, 'who created you', 'Chat master was created by Vinay Munjal', 'd8pDSyNugXLayNO', 1, NULL, NULL),
(32, 'who created u', 'Chat master was created by Vinay Munjal', 'JgGJg6StRqlKXZg', 1, NULL, NULL),
(33, 'who created u?', 'Chat master was created by Vinay Munjal', 'Q9dkpyp1QfOhRFY', 1, NULL, NULL),
(34, 'who is vinay', 'Vinay Munjal is a Web Developer who is passionate in creating website, portals, games, bots etc. You can contact him on vinaywebguy@gmail.com', 'g9NwcuJ9nqrqriO', 1, NULL, NULL),
(35, 'who is vinay munjal', 'Vinay Munjal is a Web Developer who is passionate in creating website, portals, games, bots etc. You can contact him on vinaywebguy@gmail.com', 'I3sz0RQQRoQgJXC', 1, NULL, NULL),
(36, 'who is vinay munjal?', 'Vinay Munjal is a Web Developer who is passionate in creating website, portals, games, bots etc. You can contact him on vinaywebguy@gmail.com', 'Ka7xtlydOpCk3CV', 1, NULL, NULL),
(37, 'vinay munjal?', 'Vinay Munjal is a Web Developer who is passionate in creating website, portals, games, bots etc. You can contact him on vinaywebguy@gmail.com', 'tCDMgMvQuObIk8l', 1, NULL, NULL),
(38, 'what is chatmaster', 'Chat master is a chat bot created by Vinay Munjal.', 'oM4qVSaKV3OV8pz', 1, NULL, NULL),
(39, 'what is chat master', 'Chat master is a chat bot created by Vinay Munjal.', 'AUaoVqQfKYVp3AD', 1, NULL, NULL),
(40, 'chat master?', 'Chat master is a chat bot created by Vinay Munjal.', 'YCUcmDerIJe8sKd', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qna`
--
ALTER TABLE `qna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `qna`
--
ALTER TABLE `qna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
