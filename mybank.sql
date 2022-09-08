-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 04:42 AM
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
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'Pallikarnai'),
(2, '100102', 'Chrompet');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This is testing message to admin or manager by fk', 1, '2017-12-15 04:30:48'),
(3, 'This is testing message to admin or manager by fk', 2, '2017-12-15 04:30:48'),
(4, 'this is help card for admin', 1, '2017-12-17 06:45:20'),
(7, 'I would like to avail loan score', 2, '2022-09-08 02:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier', 'cashier', '2017-12-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2017-12-15 04:36:27'),
(3, 'sadfas@gmail.com', 'sdfas', 'type', '2017-12-16 07:13:12'),
(4, 'fkgeo@gmail.com', 'asdfsa', 'type', '2017-12-16 07:13:18'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2017-12-16 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> Our privacy policy is changed for account information get new prospectus from your nearest branch', '2017-12-14 13:11:46'),
(6, '2', 'Dear Kishan,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> Cornado </kbd> for new prospectus.', '2017-12-16 06:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'UBL', 'Lakshitha Gang Leader', '40800', '2017-12-14 11:55:07'),
(2, '12001123', 'HBL', 'Dano', '71000', '2017-12-14 11:55:07'),
(3, '12001124', 'HBL', 'Naga', '71000', '2017-12-14 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `pdet`
--

CREATE TABLE `pdet` (
  `ID` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Balance` int(11) NOT NULL,
  `CNIC` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `AccountType` varchar(15) NOT NULL,
  `Deposits` int(11) NOT NULL,
  `Cash Flow` int(11) NOT NULL,
  `Investments` int(11) NOT NULL,
  `Expense` int(11) NOT NULL,
  `Equity Investment` int(11) NOT NULL,
  `Tax returns` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pdet`
--

INSERT INTO `pdet` (`ID`, `Email`, `Password`, `Name`, `Balance`, `CNIC`, `Number`, `City`, `Address`, `AccountType`, `Deposits`, `Cash Flow`, `Investments`, `Expense`, `Equity Investment`, `Tax returns`) VALUES
(3, 'pranavanaga@gmail.com', 'naga', 'V Pranava Shashank', 10000, 345623478, 668920903, 'Chennai', 'Virugambakkam,chennai,tamilnadu', 'Savings', 50000, 42000, 40000, 26000, 21000, 12000),
(1, 'dhanush11balaji@gmail.com', 'dhanush', 'Dhanush B', 14000, 567456723, 145632789, 'Hyderabad', 'Pallikarnai,Hyderabad,telangana', 'Current', 60000, 36000, 60000, 28000, 3000, 20000),
(2, 'lakshithask02@gmail.com', 'lakshitha', 'Lakshitha SK', 50000, 989894568, 398800003, 'Chennai', 'Porur,chennai,tamilnadu', 'Savings', 38000, 40000, 27000, 12000, 70000, 45000),
(4, 'kishanvenkatesan@gmail.com', 'kishan', 'Kishan Venkatesan', 90000, 567845668, 945600001, 'Chennai', 'Anna nagar,chennai,tamilnadu', 'Savings', 80000, 40000, 56000, 10000, 49000, 39000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '', '12001122', 1, '2017-12-14 12:33:40'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '2017-12-14 12:56:48'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '2017-12-14 12:57:20'),
(7, 'transfer', '', '222', '', '', '10054777', 1, '2017-12-14 12:58:19'),
(8, 'transfer', '', '333', '', '', '10054777', 1, '2017-12-14 13:00:23'),
(16, 'withdraw', '', '100', '', '', '23423', 1, '2017-12-15 08:31:59'),
(17, 'deposit', '1200', '', '', '', '234232', 1, '2017-12-15 08:32:17'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '2017-12-17 06:44:48'),
(22, 'deposit', '1200', '', '', '', '32424', 2, '2017-12-17 06:56:29'),
(23, 'withdraw', '', '12', '', '', '23423', 2, '2017-12-17 06:59:02'),
(24, 'deposit', '12', '', '', '', '21321', 2, '2017-12-17 06:59:20'),
(25, 'transfer', '', '1200', '', '', '10054777', 1, '2017-12-17 07:01:37'),
(26, 'deposit', '600', '', '', '', '342342', 2, '2017-12-17 07:04:39'),
(27, 'withdraw', '', '1012', '', '', '23423', 2, '2017-12-17 07:04:58'),
(28, 'transfer', '', '12100', '', '', '1513410739', 7, '2022-09-08 02:08:00'),
(29, 'transfer', '', '1200', '', '', '1513410837', 2, '2022-09-08 02:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'some@gmail.com', 'some', 'Troubles', '9800', '3210375555426', '03356910260', 'Chennai', 'VIT Chennai', 'Programmer', '1005469', '1', 'Current', '2017-12-14 05:50:06'),
(2, 'kishanvenkatesan@gmail.com', 'kishan', 'Kishan V', '14800', '3210375555343', '03356910260', 'Chennai', 'Anna Nagar West extn.', 'Programmer', '10054777', '1', 'Saving', '2021-12-14 04:50:06'),
(6, 'dhanush11balaji@gmail.com', 'dhanush', 'Dhanush B', '246334', '3240338834902', '03356910260', 'Chennai', 'House No.6,Pallikarnai, Chennai', 'Govt. job', '1513410739', '1', 'saving', '2022-09-07 07:52:40'),
(7, 'pranavanaga@gmail.com', 'naga', 'Naga', '1221', '3240338834902', '03356910260', 'Hyderabad', 'VIT Chennai', 'Govt. job', '1513410837', '1', 'current', '2017-12-16 07:54:18'),
(8, 'lakshithask02@gmail.com', 'sk', 'sk', '1221', '3240338834902', '03356910260', 'Bangalore', 'Whitefield, bangalore', 'Project manager', '1513410837', '1', 'current', '2017-12-16 07:54:18'),
(9, 'lakshithask02@gmail.com', 'sk', 'SK Lakshitha ', '10000000', '3434534534', '9482718105', 'Bangalore', 'Whitefield', 'Director of NVIDIA', '343453434', '2', 'saving', '2022-09-08 02:17:04'),
(10, 'abc@gmail.com', 'adhj', 'test', '1000', '678987678', '0000000000', 'delhi', 'Kodambakkam', 'Programmer', '1255899111', '2', 'saving', '2022-09-08 02:34:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
