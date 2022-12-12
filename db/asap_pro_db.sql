-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2021 at 05:55 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `asap_pro_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
CREATE TABLE IF NOT EXISTS `bank_details` (
  `b_id` int(100) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(100) NOT NULL,
  `b_accountholder` varchar(100) NOT NULL,
  `b_accountnumber` varchar(100) NOT NULL,
  `b_cardnumber` varchar(100) NOT NULL,
  `b_pin` varchar(100) NOT NULL,
  `b_amount` varchar(100) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`b_id`, `b_name`, `b_accountholder`, `b_accountnumber`, `b_cardnumber`, `b_pin`, `b_amount`) VALUES
(1, 'HDFC Bank', 'rajesh@gmail.com', '5565165163251651', '-', '-', '4500'),
(2, 'IDFC Bank', 'somesh@gmail.com', '3365165160636515', '112245125616', '1221', '95500'),
(3, 'State Bank of India', 'santosh@gmail.com', '4685165165965561', '-', '-', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

DROP TABLE IF EXISTS `bill_details`;
CREATE TABLE IF NOT EXISTS `bill_details` (
  `bl_id` int(100) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(100) NOT NULL,
  `c_id` varchar(100) NOT NULL,
  `b_desc` varchar(250) NOT NULL,
  `b_amount` varchar(100) NOT NULL,
  `ptyp` varchar(100) NOT NULL,
  `b_date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`bl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`bl_id`, `g_id`, `c_id`, `b_desc`, `b_amount`, `ptyp`, `b_date`, `status`) VALUES
(1, '1', '1', 'Serving and oil changing', '2500', 'Cash', '14-11-2021', 'Paid'),
(2, '1', '1', 'Lights and Tires', '4500', 'Online', '14-11-2021', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
CREATE TABLE IF NOT EXISTS `customer_details` (
  `c_id` int(100) NOT NULL AUTO_INCREMENT,
  `c_fname` varchar(100) NOT NULL,
  `c_lname` varchar(100) NOT NULL,
  `c_mobile` varchar(100) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `c_dob` varchar(100) NOT NULL,
  `c_city` varchar(100) NOT NULL,
  `c_profilepic` varchar(100) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`c_id`, `c_fname`, `c_lname`, `c_mobile`, `c_email`, `c_dob`, `c_city`, `c_profilepic`) VALUES
(1, 'Somesh', 'Bhosale', '9876543210', 'somesh@gmail.com', '2000-10-10', 'Nipani', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

DROP TABLE IF EXISTS `feedback_details`;
CREATE TABLE IF NOT EXISTS `feedback_details` (
  `fd_id` int(100) NOT NULL AUTO_INCREMENT,
  `fd_from` varchar(100) NOT NULL,
  `fd_to` varchar(100) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `s_date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`fd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_details`
--

INSERT INTO `feedback_details` (`fd_id`, `fd_from`, `fd_to`, `feedback`, `s_date`, `status`) VALUES
(1, 'somesh@gmail.com', 'rajesh@gmail.com', 'Testing Feedback', '14-11-2021', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `garage_details`
--

DROP TABLE IF EXISTS `garage_details`;
CREATE TABLE IF NOT EXISTS `garage_details` (
  `g_id` int(100) NOT NULL AUTO_INCREMENT,
  `v_id` varchar(100) NOT NULL,
  `g_name` varchar(100) NOT NULL,
  `g_description` varchar(200) NOT NULL,
  `g_city` varchar(100) NOT NULL,
  `g_address` varchar(100) NOT NULL,
  `g_latitude` varchar(100) NOT NULL,
  `g_longitude` varchar(100) NOT NULL,
  `g_status` varchar(100) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `garage_details`
--

INSERT INTO `garage_details` (`g_id`, `v_id`, `g_name`, `g_description`, `g_city`, `g_address`, `g_latitude`, `g_longitude`, `g_status`) VALUES
(1, '1', 'Rajesh Auto Works', 'Vehicle Repair & Servicing Center', 'Sankeshwar', 'Near Post office, Sankeshwar', '-', '-', 'Open'),
(2, '2', 'Santesha Automobiles', 'Automobiles', 'Sankeshwar', 'Near Bus Stand, Sankeshwar', '-', '-', 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `utype` varchar(100) NOT NULL,
  `s_question` varchar(100) NOT NULL,
  `s_answer` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `utype`, `s_question`, `s_answer`, `status`) VALUES
('admin', 'admin123', 'admin', 'Who am i?', 'iamadmin', 'active'),
('rajesh@gmail.com', '9988776655', 'vendor', 'Enter Last 4 Digits of Reg. Mobile', '6655', 'active'),
('santosh@gmail.com', '9638527410', 'vendor', 'Enter Last 4 Digits of Reg. Mobile', '7410', 'active'),
('somesh@gmail.com', '9876543210', 'customer', 'Enter Last 4 Digits of Reg. Mobile', '3210', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
CREATE TABLE IF NOT EXISTS `notices` (
  `n_id` int(100) NOT NULL AUTO_INCREMENT,
  `n_to` varchar(100) NOT NULL,
  `notices` varchar(200) NOT NULL,
  `s_date` varchar(100) NOT NULL,
  `n_status` varchar(100) NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`n_id`, `n_to`, `notices`, `s_date`, `n_status`) VALUES
(1, '1', 'Testing Notice', '13-11-2021', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `o_id` int(100) NOT NULL AUTO_INCREMENT,
  `o_cid` int(100) NOT NULL,
  `o_item` varchar(100) NOT NULL,
  `o_quantity` varchar(100) NOT NULL,
  `o_tprice` varchar(100) NOT NULL,
  `o_date` varchar(100) NOT NULL,
  `o_status` varchar(100) NOT NULL,
  `o_gid` int(100) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`o_id`, `o_cid`, `o_item`, `o_quantity`, `o_tprice`, `o_date`, `o_status`, `o_gid`) VALUES
(7, 1, '1', '1', '2500', '14-11-2021', 'Accepted', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
CREATE TABLE IF NOT EXISTS `product_details` (
  `p_id` int(100) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_description` varchar(200) NOT NULL,
  `p_photo` varchar(100) NOT NULL,
  `p_price` varchar(100) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`p_id`, `g_id`, `p_name`, `p_description`, `p_photo`, `p_price`) VALUES
(1, '1', 'Front and Back Lights', 'Front and Back Lights', 'back-frnt.jpg', '2500'),
(2, '1', 'Huds', 'Huds', 'hod.jpg', '4500'),
(3, '1', 'Carrier', 'Carrier', 'car-carrier.jpg', '8500'),
(4, '1', 'Lights', 'High Focused Lights', 'car-lights.jpg', '3000'),
(5, '1', 'Rims', 'Black Shaded Rims', 'rims.jpg', '3500'),
(6, '1', 'Tires', 'Quality Tires', 'tires.jpg', '2000'),
(7, '2', 'Horns', 'Loud Horns', 'horn.jpg', '800'),
(8, '2', 'Car Silencer', 'Car Silencer', 'car-silencer.png', '1200'),
(9, '2', 'Front Wipers', 'Front Wipers', 'wipers.jpg', '480');

-- --------------------------------------------------------

--
-- Table structure for table `request_details`
--

DROP TABLE IF EXISTS `request_details`;
CREATE TABLE IF NOT EXISTS `request_details` (
  `r_id` int(100) NOT NULL AUTO_INCREMENT,
  `c_id` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL,
  `c_latitude` varchar(100) NOT NULL,
  `c_longitude` varchar(100) NOT NULL,
  `g_id` varchar(100) NOT NULL,
  `r_date` varchar(100) NOT NULL,
  `r_time` varchar(100) NOT NULL,
  `r_status` varchar(100) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_details`
--

INSERT INTO `request_details` (`r_id`, `c_id`, `location`, `c_latitude`, `c_longitude`, `g_id`, `r_date`, `r_time`, `r_status`) VALUES
(1, '1', 'Near HIT College, Nidasoshi Gate', '-', '-', '1', '14-11-2021', '06:02', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `s_id` int(100) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(100) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_description` varchar(200) NOT NULL,
  `s_price` varchar(100) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`s_id`, `g_id`, `s_name`, `s_description`, `s_price`) VALUES
(1, '1', 'Car Washing', 'Car Washing with fam and polishing', '350'),
(2, '1', 'General  Checkup', 'General  Checkup and Oiling', '650'),
(3, '1', 'Engine Oil Channing', 'Engine Oil Channing', '1200'),
(4, '2', 'Car Washing', 'Car Washing', '250'),
(5, '2', 'General  Checkup', 'General  Checkup', '350');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_details`
--

DROP TABLE IF EXISTS `vendor_details`;
CREATE TABLE IF NOT EXISTS `vendor_details` (
  `v_id` int(100) NOT NULL AUTO_INCREMENT,
  `v_fname` varchar(100) NOT NULL,
  `v_lname` varchar(100) NOT NULL,
  `v_mobile` varchar(100) NOT NULL,
  `v_alternatemobile` varchar(100) NOT NULL,
  `v_email` varchar(100) NOT NULL,
  `v_profilepic` varchar(100) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_details`
--

INSERT INTO `vendor_details` (`v_id`, `v_fname`, `v_lname`, `v_mobile`, `v_alternatemobile`, `v_email`, `v_profilepic`) VALUES
(1, 'Rajesh', 'Patil', '9988776655', '-', 'rajesh@gmail.com', 'user.png'),
(2, 'Santosh', 'Patil', '9638527410', '-', 'santosh@gmail.com', 'noimg.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
