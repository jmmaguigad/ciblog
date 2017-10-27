-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2017 at 04:26 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--
CREATE DATABASE IF NOT EXISTS `ciblog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ciblog`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Business', '2017-10-27 11:26:25'),
(2, 'Technology\r\n', '2017-10-27 11:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 1, 'Post One', 'post-one', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'noimage.jpg', '2017-10-24 14:57:58'),
(2, 2, 'Post Two', 'Post-Two', 'Build responsive, mobile-first projects on the web with the world\'s most popular front-end component library.\r\n\r\nBootstrap is an open source toolkit for developing with HTML, CSS, and JS. Quickly prototype your ideas or build your entire app with our Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful plugins built on jQuery.', 'noimage.jpg', '2017-10-25 12:21:05'),
(4, 1, 'Post Four', 'Post-Four', '<p><strong>In a corporate environment</strong> that values perfect execution over free exploration, every innovation activity becomes incredibly hard: how to challenge the status quo in an organisational structure that has been built to protect it? <em>How to challenge authority</em> in complex systems of hierarchies? How to try new things in an environment where failure is not accepted? How to move fast where processes determine pace?</p>\r\n', 'noimage.jpg', '2017-10-25 14:16:26'),
(5, 0, 'Smartphone Selling and Buying Experience in ePinoy', 'Smartphone-Selling-and-Buying-Experience-in-ePinoy', '<p>There were a lot of stuff that people around the world share or communicate. It can be about ordinary things or special event, phenomenon, places and others.</p>\r\n\r\n<p>With this kind of trend, smartphones flood the modern world since it became the fastest medium for sharing and communicating. It is also used for browsing and researching relevant information which accrues to the creation of novel ideas and knowledge dissemination. After all, the bottom line of its demand can be rooted from its handiness and user-friendly feature which sets a mood of convenience to any individual.</p>\r\n\r\n<p>Smartphones are not only used for communication but also used as source of income by selling it to the ever growing tech market. Specifically, it was recognized as number one selling product in the Philippines. According to the Statista&nbsp;<a href=\"https://www.statista.com/statistics/467186/forecast-of-smartphone-users-in-the-philippines/\">data</a>, the population of smartphone users is estimated to reach 33.3 million. This is not a stagnant phenomenon since it expected to have a gradual increase for the succeeding years. With this kind of humongous figure, opportunities for smartphone selling industry are booming in the Philippines.</p>\r\n\r\n<p>As the&nbsp;<a href=\"https://epinoy.com/ads/mobile-phones/?s=&amp;s=&amp;pcat=7&amp;cat=59&amp;view=grid&amp;sort=date\" target=\"_blank\">smartphone</a>&nbsp;selling industry is booming, different market platforms are ventured to by companies and small time sellers. One of these market platforms is the online classified ads. Among these online classified ads is the ePinoy.com.</p>\r\n\r\n<p>ePinoy.com is an online classified ads which serves as a free online stop for buying and selling. Its freeness gives you a comfortable feeling and great experience in showcasing your smartphone products or buying the kind of smartphone that interests you.</p>\r\n\r\n<p>Selling would mean income and so if you want to have cash for you to buy another smartphone or have savings to fulfill your plans, then ePinoy is a great solution.</p>\r\n\r\n<p>To be a successful businessman or to be a good buyer can be reinforced by using a user-friendly medium or media platform. Remember that in today&rsquo;s setting, the internet creates a great role for marketing and buying. And so, ePinoy is here and is open and glad to help you get on track in making your dreams come true. ePinoy will also definitely help you have the smartphone that suits your need. In this instance, ePinoy is the real deal and will be your partner for a one-of-a-kind experience in online selling and buying.</p>\r\n', 'noimage.jpg', '2017-10-27 12:09:05'),
(12, 1, 'What is PHP?', 'What-is-PHP', '<p>PHP&nbsp;(recursive acronym for&nbsp;<em>PHP: Hypertext Preprocessor</em>) is a widely-used open source general-purpose scripting language that is especially suited for web development and can be embedded into HTML.</p>\r\n\r\n<p>Instead of lots of commands to output HTML (as seen in C or Perl), PHP pages contain HTML with embedded code that does &quot;something&quot; (in this case, output &quot;Hi, I&#39;m a PHP script!&quot;). The PHP code is enclosed in special&nbsp;<a href=\"http://php.net/manual/en/language.basic-syntax.phpmode.php\">start and end processing instructions&nbsp;<code>&lt;?php</code>&nbsp;and&nbsp;<code>?&gt;</code></a>&nbsp;that allow you to jump into and out of &quot;PHP mode.&quot;</p>\r\n\r\n<p>What distinguishes PHP from something like client-side JavaScript is that the code is executed on the server, generating HTML which is then sent to the client. The client would receive the results of running that script, but would not know what the underlying code was. You can even configure your web server to process all your HTML files with PHP, and then there&#39;s really no way that users can tell what you have up your sleeve.</p>\r\n\r\n<p>The best things in using PHP are that it is extremely simple for a newcomer, but offers many advanced features for a professional programmer. Don&#39;t be afraid reading the long list of PHP&#39;s features. You can jump in, in a short time, and start writing simple scripts in a few hours.</p>\r\n\r\n<p>Although PHP&#39;s development is focused on server-side scripting, you can do much more with it. Read on, and see more in the&nbsp;<a href=\"http://php.net/manual/en/intro-whatcando.php\">What can PHP do?</a>&nbsp;section, or go right to the&nbsp;<a href=\"http://php.net/manual/en/tutorial.php\">introductory tutorial</a>&nbsp;if you are only interested in web programming.</p>\r\n', 'php.png', '2017-10-27 13:40:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
