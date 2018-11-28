-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2018 at 12:51 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computer`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categorys`
--

CREATE TABLE `tbl_categorys` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_desc` text NOT NULL,
  `cat_status` tinyint(3) NOT NULL,
  `cat_parent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categorys`
--

INSERT INTO `tbl_categorys` (`cat_id`, `cat_name`, `cat_desc`, `cat_status`, `cat_parent`) VALUES
(57, 'Casual product', 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0, 0),
(58, 'Woman', 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0, 0),
(59, 'Book', 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0, 0),
(60, 'Man', 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0, 0),
(61, 'Woman 2', 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0, 2),
(62, 'Woman 10', 'sub_cat_select', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`user_id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'John', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_cat` int(255) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `product_desc` text NOT NULL,
  `product_status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_cat`, `product_img`, `product_price`, `product_quantity`, `product_desc`, `product_status`) VALUES
(182, 'LED monitor', 0, 'uploads/photo7.jpg', '200', 10, 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0),
(183, 'camera', 0, 'uploads/photo1.jpg', '200', 10, 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0),
(184, 'Tv product', 0, 'uploads/photo2.jpg', '200', 10, 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0),
(185, 'LED monitor 10ta', 0, 'uploads/photo3.jpg', '200', 10, 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0),
(186, 'Share', 0, 'uploads/photo5.jpg', '2011', 10, 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0),
(187, 'Pen Product', 0, 'uploads/24-1-Slide 2 .jpg', '25', 10, 'lorem ipsume dolor site lorem ipsume dolor site lorem ipsume', 0),
(188, 'camera', 0, 'uploads/24-1-Slide 2 .jpg', '200', 10, 'product_quantityproduct_quantityproduct_quantity', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categorys`
--
ALTER TABLE `tbl_categorys`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categorys`
--
ALTER TABLE `tbl_categorys`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
