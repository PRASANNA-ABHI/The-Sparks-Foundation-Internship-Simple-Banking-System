-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 20, 2020 at 05:32 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
CREATE TABLE IF NOT EXISTS `customer_details` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_balance` int(11) NOT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `c_name` (`c_name`),
  UNIQUE KEY `c_email` (`c_email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`c_id`, `c_name`, `c_email`, `c_balance`) VALUES
(1, 'Abhi', 'abhi562@gmail.com', 29580),
(2, 'Prasad Hulyal', 'prasadhulyal134@gmail.com', 39500),
(3, 'Manisha Seervi', 'seervi564@gmail.com', 49950),
(4, 'Pramila Pande', 'prmilap@gmail.com', 155225),
(5, 'Pramod Veer', 'pveer@gmail.com', 46001),
(6, 'Mahadev', 'mahadev5432@gmail.com', 15433),
(7, 'Vasudevaraju', 'vasu2244@gmail.com', 113811),
(8, 'Prasanna Abhi', 'prasannaabhi@gmail.com', 65126),
(9, 'Pradeep Sharma', 'sharma@gmail.com', 69864),
(10, 'Sowmya Sagar', 'ssagar143@gmail.com', 58750);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_history`
--

DROP TABLE IF EXISTS `transfer_history`;
CREATE TABLE IF NOT EXISTS `transfer_history` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_sender` varchar(255) NOT NULL,
  `t_receiver` varchar(255) NOT NULL,
  `t_amount` int(11) NOT NULL,
  `t_time` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer_history`
--

INSERT INTO `transfer_history` (`t_id`, `t_sender`, `t_receiver`, `t_amount`, `t_time`) VALUES
(21, 'Prasad Hulyal', 'Manisha Seervi', 10500, '2020-11-20 16:31:23'),
(22, 'Abhi', 'Mahadev', 10420, '2020-11-20 16:33:15'),
(23, 'Vasudevaraju', 'Pramod Veer', 15000, '2020-11-20 16:33:43'),
(25, 'Manisha Seervi', 'Pramila Pande', 5550, '2020-11-20 16:35:50'),
(26, 'Pramila Pande', 'Pramod Veer', 5825, '2020-11-20 16:36:09'),
(27, 'Pramod Veer', 'Mahadev', 9824, '2020-11-20 16:36:50'),
(28, 'Mahadev', 'Vasudevaraju', 25811, '2020-11-20 16:37:13'),
(29, 'Vasudevaraju', 'Prasanna Abhi', 25000, '2020-11-20 16:37:30'),
(30, 'Prasanna Abhi', 'Pradeep Sharma', 9874, '2020-11-20 16:38:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
