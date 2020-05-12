-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 11:37 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(22) NOT NULL,
  `dname` varchar(22) NOT NULL,
  `userid` int(22) NOT NULL,
  `dcontact` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `fee` varchar(22) NOT NULL,
  `pname` varchar(22) NOT NULL,
  `pcontact` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(22) NOT NULL,
  `dates` date NOT NULL,
  `tyme` varchar(22) NOT NULL,
  `payment` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `dname`, `userid`, `dcontact`, `expertise`, `fee`, `pname`, `pcontact`, `email`, `address`, `dates`, `tyme`, `payment`) VALUES
(22, 'Dr. omer aziz mirza', 1004, '03314831855', 'Kedney', '700', 'shoaib', '03407640970', 'shoaibch470@gmail.com', 'pakistan', '2020-04-14', '03.00pm', 'Easypaisa'),
(23, 'Dr. Behzad server', 1005, '03314831855', 'Cardiologist', '700', 'shoaib', '03407640970', 'talha@gmail.com', 'pakistan', '2020-04-14', '11.00am', 'Easypaisa');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(22) NOT NULL,
  `cat` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`) VALUES
(1, 'Medicine'),
(2, 'Heart'),
(3, 'Bone'),
(4, 'Kedney'),
(5, 'Cardiologist'),
(6, 'Plastic Surgeon'),
(7, 'General Physician'),
(8, 'Neurologist');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `email` varchar(15) NOT NULL,
  `comment` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(3, 'shoaib', 'ch', 'shoaibch470@gma', 'good work');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(22) NOT NULL,
  `doctor_id` varchar(22) NOT NULL,
  `name` varchar(22) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `email` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `id` int(11) NOT NULL,
  `fee` varchar(111) NOT NULL,
  `userid` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  `pic` varchar(111) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`, `pic`) VALUES
(1, '2', 'Dr. Abdul Kader', 'Lahore', '03137060152', 'kader@gmail.com', 'Heart', 2, '500', '1001', '123', 'doctor1.jpg'),
(2, '1', 'Dr. Aijaz Ahmed khan', 'Lahore', '03407640970', 'aijazahmed@gmail.com', 'Medicine', 1, '500', '1002', '123', 'doctor7.jpg'),
(3, '1', 'Dr. Rashid', 'Islamabad', '033156625376', 'rashid@gmail.com', 'Medicine', 1, '600', '1003', '123', 'doctor7.jpg'),
(4, '4', 'Dr. omer aziz mirza', 'Rawalpindi', '03314831855', 'omer@gmail.com', 'Kedney', 4, '700', '1004', '123', 'doctor9.jpg'),
(5, '5', 'Dr. Behzad server', 'Rawalpindi', '03314831855', 'behzad@gmail.com', 'Cardiologist', 5, '700', '1005', '123', 'doctor7.jpg'),
(6, '1', 'Dr. Rana Naeem', 'Rawalpindi', '03137060152', 'Naeem@gmail.com', 'Medicine', 1, '800', '1006', '123', 'doctor7.jpg'),
(7, '8', 'Dr. ibraheem', 'Karachi', '03407640970', 'ibraheem@gmail.com', 'Neurologist', 8, '600', '1007', '123', 'doctor7.jpg'),
(8, '3', 'Dr. Ilyass', 'lahore', '03314831855', 'ilyass@gmail.com', 'Bone', 3, '700', '1008', '123', 'doctor7.jpg'),
(9, '6', 'Dr. iqbal', 'karachi', '03137060152', 'driqbal@gmail.com', 'Plastic Surgeon', 6, '500', '1009', '123', 'doctor7.jpg'),
(11, '11', 'Md. Anowar Hossain', 'Rawalpindi', '03315625376', 'anowar@gmail.com', 'Neurologist', 0, '800', '1012', '123', 'doctor5.jpg'),
(12, '11', 'Dr Nusrat sharif', 'Rawalpindi', '03315625376', 'nusrat13@gmail.com', 'Heart', 0, '800', '1011', '123', 'doctor8.jpg'),
(14, '', 'Dr Maryum', 'Rawalpindi', '01521470368', 'meme13@gmail.com', 'Bone', 0, '800', '1016', '123', 'doctor6.jpg'),
(16, '', 'Dr. Munawar ali', 'lahore', '03137060152', 'munawar44@gmail.com', 'General Physician', 0, '1005', '1013', '123', 'doctor7.jpg'),
(17, '', 'dr.Atiqa', 'lahore', '03407640970', 'Atiqa18@gmail.com', 'Neurologist', 0, '600', '1015', '123', 'photo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(22) NOT NULL,
  `feedback` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `age` varchar(22) NOT NULL,
  `contact` varchar(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `bgroup` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `contact`, `address`, `bgroup`, `email`, `password`) VALUES
(7, 'shoaib', '21', '03314831855', 'pakistan', 'O+', 'shoaibch470@gmail.com', 'shoaib453'),
(8, 'shoaib', '14', '020738103087', 'pakistan', 'O+', 'talha@gmail.com', 'shoaib453');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `donar_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type` varchar(22) NOT NULL,
  `city` varchar(221) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`donar_id`, `username`, `gender`, `age`, `contact`, `type`, `city`, `address`, `bgroup`, `dates`, `email`, `password`, `pic`) VALUES
(122, 'admin', '', '', '', '', '', '', '', '0000-00-00', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`donar_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `donar_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
