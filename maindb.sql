-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 09:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `email`, `name`, `rate`, `quantity`, `value`) VALUES
(1, 'papa@trial.com', 'tomato', '40.00', 2, '80'),
(2, 'papa@trial.com', 'potato', '40.00', 1, '40'),
(3, 'papa@trial.com', 'papaya', '41.00', 6, '246'),
(4, 'papa@trial.com', 'papaya', '41.00', 7, '287');

-- --------------------------------------------------------

--
-- Table structure for table `citydata`
--

CREATE TABLE `citydata` (
  `id` int(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `citydata`
--

INSERT INTO `citydata` (`id`, `City`, `State`) VALUES
(1, 'Port Blair', 'Andaman and Nicobar Islands'),
(2, 'Hyderabad', 'Andhra Pradesh'),
(3, 'Vishakhapatnam', 'Andhra Pradesh'),
(4, 'Warangal', 'Andhra Pradesh'),
(5, 'Nellore', 'Andhra Pradesh'),
(6, 'Guntur', 'Andhra Pradesh'),
(7, 'Kurnool', 'Andhra Pradesh'),
(8, 'Nizamabad', 'Andhra Pradesh'),
(9, 'Rajahmundry', 'Andhra Pradesh'),
(10, 'Kakinada', 'Andhra Pradesh'),
(11, 'Khammam', 'Andhra Pradesh'),
(12, 'Karimnagar', 'Andhra Pradesh'),
(13, 'Tirupati', 'Andhra Pradesh'),
(14, 'Chirala', 'Andhra Pradesh'),
(15, 'Ongole', 'Andhra Pradesh'),
(16, 'Proddatur', 'Andhra Pradesh'),
(17, 'Machilipatnam', 'Andhra Pradesh'),
(18, 'Nandyal', 'Andhra Pradesh'),
(19, 'Vizianagaram', 'Andhra Pradesh'),
(20, 'Hindupur', 'Andhra Pradesh'),
(21, 'Kagaznagar', 'Andhra Pradesh'),
(22, 'Itanagar', 'Arunachal Pradesh'),
(23, 'Guwahati', 'Assam'),
(24, 'Dibrugarh', 'Assam'),
(25, 'Silchar', 'Assam'),
(26, 'Jorhat', 'Assam'),
(27, 'Tezpur', 'Assam'),
(28, 'Dispur', 'Assam'),
(29, 'Patna', 'Bihar'),
(30, 'Gaya', 'Bihar'),
(31, 'Bhagalpur', 'Bihar'),
(32, 'Muzaffarpur', 'Bihar'),
(33, 'Purnea', 'Bihar'),
(34, 'Aurangabad', 'Bihar'),
(35, 'Chandigarh', 'Chandigarh'),
(36, 'Bhilai', 'Chhattisgarh'),
(37, 'Raipur', 'Chhattisgarh'),
(38, 'Bilaspur', 'Chhattisgarh'),
(39, 'Silvassa', 'Dadra and Nagar Haveli'),
(40, 'Daman', 'Daman and Diu'),
(41, 'Diu', 'Daman and Diu'),
(42, 'Delhi', 'Delhi'),
(43, 'New Delhi', 'Delhi'),
(44, 'Panaji', 'Goa'),
(45, 'Ahmadabad', 'Gujarat'),
(46, 'Surat', 'Gujarat'),
(47, 'Vadodara', 'Gujarat'),
(48, 'Rajkot', 'Gujarat'),
(49, 'Bhavnagar', 'Gujarat'),
(50, 'Bhuj', 'Gujarat'),
(51, 'Porbandar', 'Gujarat'),
(52, 'Navsari', 'Gujarat'),
(53, 'Ghandinagar', 'Gujarat'),
(54, 'Faridabad', 'Haryana'),
(55, 'Hisar', 'Haryana'),
(56, 'Rohtak', 'Haryana'),
(57, 'Panipat', 'Haryana'),
(58, 'Sonipat', 'Haryana'),
(59, 'Karnal', 'Haryana'),
(60, 'Gurgaon', 'Haryana'),
(61, 'Bhiwani', 'Haryana'),
(62, 'Sirsa', 'Haryana'),
(63, 'Ambala', 'Haryana'),
(64, 'Panchkula', 'Haryana'),
(65, 'Shimla', 'Himachal Pradesh'),
(66, 'Srinagar', 'Jammu and Kashmir'),
(67, 'Jammu', 'Jammu and Kashmir'),
(68, 'Baramula', 'Jammu and Kashmir'),
(69, 'Saidpur', 'Jammu and Kashmir'),
(70, 'Jamshedpur', 'Jharkhand'),
(71, 'Dhanbad', 'Jharkhand'),
(72, 'Ranchi', 'Jharkhand'),
(73, 'Bengaluru', 'Karnataka'),
(74, 'Hubli', 'Karnataka'),
(75, 'Mysore', 'Karnataka'),
(76, 'Mangalore', 'Karnataka'),
(77, 'Shimoga', 'Karnataka'),
(78, 'Belgaum', 'Karnataka'),
(79, 'Davangere', 'Karnataka'),
(80, 'Gulbarga', 'Karnataka'),
(81, 'Bellary', 'Karnataka'),
(82, 'Tumkur', 'Karnataka'),
(83, 'Bidar', 'Karnataka'),
(84, 'Hospet', 'Karnataka'),
(85, 'Chikka Mandya', 'Karnataka'),
(86, 'Bijapur', 'Karnataka'),
(87, 'Raichur', 'Karnataka'),
(88, 'Kolar', 'Karnataka'),
(89, 'Kochi', 'Kerala'),
(90, 'Thiruvananthapuram', 'Kerala'),
(91, 'Kollam', 'Kerala'),
(92, 'Alappuzha', 'Kerala'),
(93, 'Calicut', 'Kerala'),
(94, 'Kavaratti', 'Lakshadweep'),
(95, 'Indore', 'Madhya Pradesh'),
(96, 'Bhopal', 'Madhya Pradesh'),
(97, 'Jabalpur', 'Madhya Pradesh'),
(98, 'Gwalior', 'Madhya Pradesh'),
(99, 'Ujjain', 'Madhya Pradesh'),
(100, 'Saugor', 'Madhya Pradesh'),
(101, 'Ratlam', 'Madhya Pradesh'),
(102, 'Mumbai', 'Maharashtra'),
(103, 'Pune', 'Maharashtra'),
(104, 'Nara', 'Maharashtra'),
(105, 'Kalyan', 'Maharashtra'),
(106, 'Nasik', 'Maharashtra'),
(107, 'Aurangabad', 'Maharashtra'),
(108, 'Solapur', 'Maharashtra'),
(109, 'Bhiwandi', 'Maharashtra'),
(110, 'Kolhapur', 'Maharashtra'),
(111, 'Amravati', 'Maharashtra'),
(112, 'Malegaon Camp', 'Maharashtra'),
(113, 'Nanded', 'Maharashtra'),
(114, 'Sangli', 'Maharashtra'),
(115, 'Chanda', 'Maharashtra'),
(116, 'Akola', 'Maharashtra'),
(117, 'Dhulia', 'Maharashtra'),
(118, 'Ahmadnagar', 'Maharashtra'),
(119, 'Parbhani', 'Maharashtra'),
(120, 'Latur', 'Maharashtra'),
(121, 'Khanapur', 'Maharashtra'),
(122, 'Bhusaval', 'Maharashtra'),
(123, 'Imphal', 'Manipur'),
(124, 'Shillong', 'Meghalaya'),
(125, 'Aizawl', 'Mizoram'),
(126, 'Kohima', 'Nagaland'),
(127, 'Bhubaneshwar', 'Odisha'),
(128, 'Raurkela', 'Odisha'),
(129, 'Cuttack', 'Odisha'),
(130, 'Brahmapur', 'Odisha'),
(131, 'Samlaipadar', 'Odisha'),
(132, 'Puri', 'Odisha'),
(133, 'Puducherry', 'Puducherry'),
(134, 'Ludhiana', 'Punjab'),
(135, 'Amritsar', 'Punjab'),
(136, 'Patiala', 'Punjab'),
(137, 'Pathankot', 'Punjab'),
(138, 'Haripur', 'Punjab'),
(139, 'Abohar', 'Punjab'),
(140, 'Rampura', 'Rajasthan'),
(141, 'Jodhpur', 'Rajasthan'),
(142, 'Kota', 'Rajasthan'),
(143, 'Ajmer', 'Rajasthan'),
(144, 'Bikaner', 'Rajasthan'),
(145, 'Udaipur', 'Rajasthan'),
(146, 'Sikar', 'Rajasthan'),
(147, 'Bhilwara', 'Rajasthan'),
(148, 'Alwar', 'Rajasthan'),
(149, 'Bharatpur', 'Rajasthan'),
(150, 'Pali', 'Rajasthan'),
(151, 'Tonk', 'Rajasthan'),
(152, 'Jaipur', 'Rajasthan'),
(153, 'Gangtok', 'Sikkim'),
(154, 'Chennai', 'Tamil Nadu'),
(155, 'Coimbatore', 'Tamil Nadu'),
(156, 'Madurai', 'Tamil Nadu'),
(157, 'Tiruchchirappalli', 'Tamil Nadu'),
(158, 'Salem', 'Tamil Nadu'),
(159, 'Tiruppur', 'Tamil Nadu'),
(160, 'Tirunelveli', 'Tamil Nadu'),
(161, 'Tuticorin', 'Tamil Nadu'),
(162, 'Rajapalaiyam', 'Tamil Nadu'),
(163, 'Nagercoil', 'Tamil Nadu'),
(164, 'Thanjavur', 'Tamil Nadu'),
(165, 'Dindigul', 'Tamil Nadu'),
(166, 'Vellore', 'Tamil Nadu'),
(167, 'Cuddalore', 'Tamil Nadu'),
(168, 'Krishnapuram', 'Tamil Nadu'),
(169, 'Kumbakonam', 'Tamil Nadu'),
(170, 'Tiruvannamalai', 'Tamil Nadu'),
(171, 'Valparai', 'Tamil Nadu'),
(172, 'Karur', 'Tamil Nadu'),
(173, 'Agartala', 'Tripura'),
(174, 'Mardanpur', 'Uttar Pradesh'),
(175, 'Lucknow', 'Uttar Pradesh'),
(176, 'Agra', 'Uttar Pradesh'),
(177, 'Meerut', 'Uttar Pradesh'),
(178, 'Varanasi', 'Uttar Pradesh'),
(179, 'Ghaziabad', 'Uttar Pradesh'),
(180, 'Allahabad', 'Uttar Pradesh'),
(181, 'Jhansi', 'Uttar Pradesh'),
(182, 'Bareilly', 'Uttar Pradesh'),
(183, 'Aligarh', 'Uttar Pradesh'),
(184, 'Moradabad', 'Uttar Pradesh'),
(185, 'Gopalpur', 'Uttar Pradesh'),
(186, 'Saharanpur', 'Uttar Pradesh'),
(187, 'Muzaffarnagar', 'Uttar Pradesh'),
(188, 'Mathura', 'Uttar Pradesh'),
(189, 'Shahbazpur', 'Uttar Pradesh'),
(190, 'Firozabad', 'Uttar Pradesh'),
(191, 'Bamanpuri', 'Uttar Pradesh'),
(192, 'Tharati Etawah', 'Uttar Pradesh'),
(193, 'Mirzapur', 'Uttar Pradesh'),
(194, 'Hapur', 'Uttar Pradesh'),
(195, 'Bulandshahr', 'Uttar Pradesh'),
(196, 'Bharauri', 'Uttar Pradesh'),
(197, 'Bakshpur', 'Uttar Pradesh'),
(198, 'Saidapur', 'Uttar Pradesh'),
(199, 'Budaun', 'Uttar Pradesh'),
(200, 'Fyzabad', 'Uttar Pradesh'),
(201, 'Pilibhit', 'Uttar Pradesh'),
(202, 'Hatisa', 'Uttar Pradesh'),
(203, 'Dehra Dun', 'Uttarakhand'),
(204, 'Kolkata', 'West Bengal'),
(205, 'Haora', 'West Bengal'),
(206, 'asansol', 'West Bengal'),
(207, 'Shiliguri', 'West Bengal'),
(208, 'Bhatpara', 'West Bengal'),
(209, 'Barddhaman', 'West Bengal'),
(210, 'Haldia', 'West Bengal'),
(211, 'Krishnanagar', 'West Bengal'),
(212, 'Alipur Duar', 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `addline1` varchar(100) NOT NULL,
  `addline2` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pincode` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `email`, `password`, `fullname`, `mobile`, `addline1`, `addline2`, `state`, `city`, `pincode`) VALUES
(1, 'papa@trial.com', '1a1dc91c907325c69271ddf0c944bc72', 'Pranav Ruparel', '7977603449', '10-603, VIjay Park', 'Thane', 'Maharashtra', 'Mumbai', 400615),
(2, 'sohampranav71@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Soham Ruparel', '7977606479', 'VIjay Park, Kasarvadavli', 'Thane(W)', 'Maharashtra', 'Mumbai', 400615),
(3, 'abcde@fgh.com', '1a1dc91c907325c69271ddf0c944bc72', 'Soham', '7977606479', 'Vijay Park', 'Thane', 'Maharashtra', 'Mumbai', 400615);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(200) NOT NULL,
  `description1` varchar(500) NOT NULL,
  `description2` varchar(500) NOT NULL,
  `description3` varchar(500) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `href` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `description1`, `description2`, `description3`, `rate`, `unit`, `href`) VALUES
(1, 'tomato', 'vegetable', 'Contains large amount of Vitamin A and C and Helps improve vision\r\n\r\n', 'Tomatoes help boost immunity', 'It is also used in the preparation of tomato sauce, which is consumed along with snacks for a delightful taste', '40.00', 'kg', 'tomato.jpg'),
(2, 'potato', 'vegetable', 'Special Indore Potatoes', 'Blends well with almost all dishes', 'Rich source of carbohydrates', '40.00', 'kg', 'potato.jpg'),
(3, 'papaya', 'fruits', 'Pack contains 1 Pc', 'Good source of magnesium, potassium, calcium, dietary fiber, vitamins A and C', 'Store in cool and dry place, away from direct sunlight.', '41.00', 'count', 'papaya.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `email`, `type`, `time`) VALUES
(1, 'abced@def.com', 'IN', '14-10-2020 08:06:58am'),
(2, 'abced@def.com', 'OUT', '14-10-2020 08:07:04am'),
(3, 'abced@def.com', 'IN', '15-10-2020 07:58:28am'),
(4, 'abced@def.com', 'IN', '15-10-2020 07:59:40am'),
(5, 'abced@def.com', 'IN', '15-10-2020 08:00:51am'),
(6, '', 'OUT', '15-10-2020 08:01:12am'),
(7, 'papa@trial.com', 'IN', '15-10-2020 08:27:13am'),
(8, 'papa@trial.com', 'IN', '15-10-2020 10:50:21am'),
(9, 'papa@trial.com', 'OUT', '15-10-2020 11:08:55am'),
(10, 'papa@trial.com', 'IN', '15-10-2020 11:09:08am'),
(11, 'papa@trial.com', 'IN', '15-10-2020 11:21:25am'),
(12, 'papa@trial.com', 'IN', '15-10-2020 11:35:26am'),
(13, 'papa@trial.com', 'IN', '21-10-2020 05:17:40am'),
(14, 'papa@trial.com', 'IN', '21-10-2020 12:22:49pm'),
(15, 'papa@trial.com', 'OUT', '21-10-2020 02:34:37pm'),
(16, 'papa@trial.com', 'IN', '21-10-2020 02:35:07pm'),
(17, 'papa@trial.com', 'IN', '26-10-2020 01:32:26pm'),
(18, 'papa@trial.com', 'OUT', '26-10-2020 01:35:11pm'),
(19, 'papa@trial.com', 'IN', '26-10-2020 01:38:40pm'),
(20, 'papa@trial.com', 'IN', '27-10-2020 04:56:18am'),
(21, 'papa@trial.com', 'IN', '28-10-2020 12:49:25pm'),
(22, 'papa@trial.com', 'IN', '04-11-2020 12:08:26pm'),
(23, 'papa@trial.com', 'IN', '05-11-2020 05:09:40am'),
(24, 'papa@trial.com', 'OUT', '05-11-2020 05:10:52am'),
(25, 'papa@trial.com', 'IN', '05-11-2020 05:11:20am'),
(26, 'papa@trial.com', 'IN', '05-11-2020 05:33:58am'),
(27, 'papa@trial.com', 'OUT', '05-11-2020 05:37:25am'),
(28, 'papa@trial.com', 'IN', '05-11-2020 05:38:25am'),
(29, 'papa@trial.com', 'OUT', '05-11-2020 05:40:35am'),
(30, 'papa@trial.com', 'IN', '05-11-2020 06:06:22am'),
(31, 'papa@trial.com', 'IN', '05-11-2020 02:07:38pm'),
(32, 'sohampranav71@gmail.com', 'IN', '25-11-2020 10:51:55am'),
(33, 'sohampranav71@gmail.com', 'OUT', '25-11-2020 10:53:42am'),
(34, 'sohampranav71@gmail.com', 'IN', '25-11-2020 10:53:47am'),
(35, 'abcde@fgh.com', 'IN', '24-12-2020 01:56:31pm'),
(36, 'papa@trial.com', 'IN', '14-01-2021 06:03:29pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citydata`
--
ALTER TABLE `citydata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `citydata`
--
ALTER TABLE `citydata`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
