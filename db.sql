-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2017 at 02:36 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marpestore`
--
CREATE DATABASE IF NOT EXISTS `marpestore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `marpestore`;

-- --------------------------------------------------------

--
-- Table structure for table 'types`
--

CREATE TABLE `types` (
  `type_id` int(100) NOT NULL,
  `type_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_title`) VALUES
(1, 'Seed'),
(2, 'Oil'),
(3, 'Plant'),
(4, 'Teabag'),


-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(79, 11, '0.0.0.0', 2, 'Mint leaves', 'mint.JPG', 1, 200, 200),
(80, 2, '0.0.0.0', 2, 'flaxseed', 'flaxseed.JPG', 1, 250, 250);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Tummyache'),
(2, 'Wound'),
(3, 'Headache'),
(4, 'All Rounded'),
(5, 'Laxative'),


-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(30, 2, 6, 'Dandelions', 150, 1, 'CONFIRMED', '15179'),
(31, 2, 15, 'Pumpkin seed', 250, 1, 'CONFIRMED', '15179'),
(32, 2, 16, 'Peppermint Oil', 600, 1, 'CONFIRMED', '15179');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_type`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '1', '3', 'Mint', 200, 'eases queasy stomachs, calms stress and anxiety, and promotes restful sleep', 'mint.JPG', 'Mint'),
(2, '4', '3', 'Dandelion', 150, 'The leaves are used to stimulate the appetite and help digestion. Dandelion flower has antioxidant properties. Dandelion may also help improve the immune system. Herbalists use dandelion root to detoxify the liver and gallbladder, and dandelion leaves to help kidney function. ', 'dandelion2.JPG', 'Dandelion'),
(3, '2', '3', 'Camomille', 300, 'Chamomile preparations are commonly used for many human ailments such as hay fever, inflammation, muscle spasms, menstrual disorders, insomnia, ulcers, wounds, gastrointestinal disorders, rheumatic pain, and hemorrhoids.', 'camomille.png', 'Camomille'),
(4, '2', '2', 'Castor Oil', 1000, 'when applied to the skin, it may prevent infection, reduce inflammation, improve localized blood flow, and shed damaged skin cells ', 'castoroil.JPG', 'Castor'),
(5, '1', '2', 'Clove Oil', 400, ' clove oil has been used for easing digestive upset, relieving pain, and helping with respiratory conditions.', 'cloveoil.JPG', 'Clove'),
(6, '3', '3', 'Feverfew', 150, 'Feverfew is promoted for fevers, headaches, and arthritis; topically applied to the skin, its promoted for toothache, an antiseptic, insecticide', 'feverfew.JPG', 'Feverfew'),
(7, '5', '1', 'Flaxseed', 250, 'Flaxseed is commonly used to improve digestive health or relieve constipation.', 'flaxseed.JPG', 'Flaxseed'),
(8, '4', '3', 'Garlic', 200, 'Garlic and its secondary metabolites have shown excellent health-promoting and disease-preventing effects on many human common diseases, such as cancer, cardiovascular and metabolic disorders, blood pressure, and diabetes, through its antioxidant, anti-inflammatory, and lipid-lowering properties', 'garlic.JPG', 'Garlic'),
(9, '1', '3', 'Ginger', 250, 'Eating ginger can cut down on fermentation, constipation and other causes of bloating and intestinal gas. ', 'ginger.JPG', 'Ginger'),
(10, '4', '3', 'Ginseng', 180, 'It is commonly touted for its antioxidant and anti-inflammatory effects. It could also help regulate blood sugar levels and have benefits for certain types of cancer. ', 'ginseng.JPG', 'Ginseng'),
(11, '1', '2', 'Peppermint Oil', 600, 'use to make tea: it is good to ease an upset stomach, calm the digestive tract and alleviate indigestion, gas, and cramps', 'pmintoil.JPG', 'Peppermint'),
(12, '4', '1', 'Pumpkin Seed', 250, 'improve heart health, blood sugar levels, fertility, and sleep quality', 'pseed.JPG', 'Pumpkin'),
(13, '4', '1', 'Sunflower', 200, 'sunflower seeds was linked to lower rates of cardiovascular disease, high cholesterol, and high blood pressure. Sunflower seeds are a source of many vitamins and minerals that can support your immune system and increase your ability to fight off viruses.', 'sunflower.JPG', 'Sunflower'),
(14, '4', '4', 'Lemon Grass Teabag', 300, 'Lemongrass is used for treating digestive tract spasms, stomachache, high blood pressure, convulsions, pain, vomiting, cough, achy joints (rheumatism), fever, the common cold, and exhaustion.', 'lemongrass.JPG', 'Lemon'),
(15, '4', '4', 'Cerasee Teabag', 300, ' The tea is used to treat a number of ailments, ranging from high blood pressure to constipation. The tea is also purported to have detoxifying and purifying properties, which is why some people use it in an effort to rid their bodies of toxins.', 'cerasee.JPG', 'Cerasee'),


-- --------------------------------------------------------

--
-- Table structure for table `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `amt` int(100) NOT NULL,
  `tr_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Sanique', 'Johnson', 'saniquejohnson13@gmail.com', '3814d460c26c2dbab2d80294d2cc9882', '8764456721', 'Steer Town', 'St. Ann'),
(2, 'Briana', 'Johnson', 'brianajohnson18@gmail.com', '6cebe3b43c4495fdf87fcaa43b485236', '8765432190', 'Mamme Bay', 'St. Ann'),
(3, 'Sanique', 'Johnson', 'saniquejohnson18@gmail.com', 'e3daab6a6b16a140aaf0f1df98d3be24', '8769872645', 'Ocho Rios', 'St. Ann'),


--
-- Indexes for dumped tables
--

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `received_payment`
--
ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
