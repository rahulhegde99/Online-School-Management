-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2019 at 02:25 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `springschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`a_id` int(10) unsigned NOT NULL,
  `a_name` varchar(45) NOT NULL,
  `a_email` varchar(45) NOT NULL,
  `a_phone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
`b_id` int(10) unsigned NOT NULL,
  `d_name` varchar(45) NOT NULL,
  `c_id` int(10) unsigned NOT NULL,
  `sess_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
`c_id` int(10) unsigned NOT NULL,
  `c_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`c_id`, `c_name`) VALUES
(1, 'First'),
(2, 'Third'),
(3, 'Fifth'),
(4, 'Seventh'),
(5, 'Induction');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
`n_id` int(10) unsigned NOT NULL,
  `n_title` varchar(250) NOT NULL,
  `n_description` varchar(500) NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`n_id`, `n_title`, `n_description`, `publish_date`) VALUES
(1, 'JSS Verve', 'JSS Verve is scheduled on the 3rd week of December', '2019-11-16'),
(2, 'Fees Notice', 'Everyone is requested to pay examination fees before December', '2019-11-14'),
(3, 'Saturdays Holiday', 'The college will remain closed for the next few Saturdays', '2019-11-08');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
`res_id` int(10) unsigned NOT NULL,
  `sem_id` int(10) unsigned NOT NULL,
  `s_id` int(10) unsigned NOT NULL,
  `sub_id` int(10) unsigned NOT NULL,
  `marks` int(10) unsigned NOT NULL,
  `g_point` double NOT NULL,
  `grade` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`res_id`, `sem_id`, `s_id`, `sub_id`, `marks`, `g_point`, `grade`) VALUES
(1, 1, 1, 1, 80, 5, 'A+'),
(3, 1, 2, 2, 75, 4, 'A'),
(4, 1, 1, 3, 85, 5, 'A+'),
(5, 2, 1, 1, 75, 4, 'A'),
(6, 2, 1, 3, 60, 3.5, 'A-'),
(7, 1, 1, 2, 75, 4, 'A'),
(8, 1, 3, 2, 75, 4, 'A'),
(9, 1, 3, 1, 82, 4, 'A+'),
(10, 1, 3, 3, 67, 3.5, 'A-');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`r_id` int(10) unsigned NOT NULL,
  `r_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`r_id`, `r_name`) VALUES
(1, 'Admin'),
(2, 'Teacher'),
(3, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
`sem_id` int(10) unsigned NOT NULL,
  `sem_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sem_id`, `sem_name`) VALUES
(1, '1st semester'),
(2, '2nd semester'),
(3, 'Annual semester ');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
`sess_id` int(10) unsigned NOT NULL,
  `sess_year` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sess_id`, `sess_year`) VALUES
(1, '2018-19'),
(2, '2019-20'),
(3, '2020-21');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE IF NOT EXISTS `student_attendance` (
`sa_id` int(10) unsigned NOT NULL,
  `sa_date` date DEFAULT NULL,
  `s_id` int(10) unsigned NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`sa_id`, `sa_date`, `s_id`, `status`) VALUES
(16, '2018-11-19', 1, 'P'),
(17, '2018-11-19', 2, 'P'),
(18, '2018-11-19', 4, 'P'),
(19, '2018-11-19', 5, 'P'),
(20, '2018-11-19', 3, 'P'),
(21, '2018-11-20', 5, 'P'),
(22, '2018-11-19', 1, 'P'),
(23, '2018-11-19', 2, 'A'),
(24, '2018-11-19', 4, 'A'),
(25, '2018-11-05', 1, 'P'),
(26, '2018-11-05', 2, 'A'),
(27, '2018-11-05', 1, 'P'),
(28, '2018-11-06', 1, 'A'),
(29, '2018-11-06', 2, 'P'),
(30, '2018-11-06', 4, 'P'),
(31, '2018-11-19', 3, 'P'),
(32, '2018-11-20', 3, 'P'),
(33, '2018-11-18', 3, 'A'),
(34, '2018-11-21', 1, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
`s_id` int(10) unsigned NOT NULL,
  `s_name` varchar(500) NOT NULL,
  `c_id` int(10) unsigned NOT NULL,
  `sess_id` int(10) unsigned NOT NULL,
  `roll_no` int(10) unsigned NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `m_name` varchar(500) NOT NULL,
  `telephone_no` int(10) unsigned DEFAULT NULL,
  `mobile_no` int(10) unsigned NOT NULL,
  `present_address` varchar(500) NOT NULL,
  `permanent_address` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 7168 kB';

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`s_id`, `s_name`, `c_id`, `sess_id`, `roll_no`, `gender`, `dob`, `age`, `f_name`, `m_name`, `telephone_no`, `mobile_no`, `present_address`, `permanent_address`) VALUES
(1, 'John', 1, 1, 6001, 'Male', '1999-07-19', 11, 'Christopher', 'Angela', 9999, 1010, 'Mumbai', 'Delhi'),
(2, 'William', 1, 1, 6002, 'Male', '1999-07-07', 12, 'Noah', 'Rosa', 8888, 1111, 'Kolkata', 'Ranchi'),
(3, 'Mathew', 3, 1, 8001, 'Male', '1999-07-06', 14, 'Ronald', 'Amy', 7777, 2222, 'Bengaluru', 'Bengaluru'),
(4, 'Steve', 1, 1, 6003, 'Male', '1999-07-04', 11, 'Peter', 'Gina', 6666, 3333, 'Chennai', ''),
(5, 'Samantha', 2, 1, 7001, 'Female', '1999-07-01', 12, 'Aldo', 'Rachel', 5555, 4444, 'Ahmedabad', 'Gandhinagar');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`sub_id` int(10) unsigned NOT NULL,
  `sub_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`) VALUES
(1, 'English'),
(2, 'Bangla'),
(3, 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE IF NOT EXISTS `teacher_info` (
`t_id` int(10) unsigned NOT NULL,
  `t_name` varchar(405) NOT NULL,
  `t_email` varchar(400) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone_number` int(11) unsigned NOT NULL,
  `address` varchar(500) NOT NULL,
  `sub_id` int(10) unsigned NOT NULL,
  `join_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`t_id`, `t_name`, `t_email`, `gender`, `phone_number`, `address`, `sub_id`, `join_date`) VALUES
(1, 'Rohit', 'rohit@gmail.com', 'Male', 1234, 'Delhi', 1, '2018-10-10'),
(2, 'Sneha', 'sneha@gmail.com', 'Female', 2345, 'Bengaluru', 2, '2018-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`u_id` int(10) unsigned NOT NULL,
  `u_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `r_id` int(10) unsigned NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `password`, `r_id`, `email`, `phone`) VALUES
(1, 'galib', '123', 1, '', ''),
(2, 'Rahul', '123', 3, 'rahulhegde97@gmail.com', '9591175823'),
(3, 'Karthik', '123', 2, 'karthik@gmail.com', '9591175823');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
 ADD PRIMARY KEY (`b_id`), ADD KEY `FK_batch_c_id` (`c_id`), ADD KEY `FK_batch_sess_id` (`sess_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
 ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
 ADD PRIMARY KEY (`res_id`), ADD KEY `FK_result_sem_id` (`sem_id`), ADD KEY `FK_result_s_id` (`s_id`), ADD KEY `FK_result_sub_id` (`sub_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
 ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
 ADD PRIMARY KEY (`sess_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
 ADD PRIMARY KEY (`sa_id`), ADD KEY `FK_student_attendance_s_id` (`s_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
 ADD PRIMARY KEY (`s_id`), ADD KEY `FK_student_info_c_id` (`c_id`), ADD KEY `FK_student_info_sess_id` (`sess_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
 ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
 ADD PRIMARY KEY (`t_id`), ADD KEY `FK_teacher_info_sub_id` (`sub_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`u_id`), ADD KEY `FK_users_r_id` (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `a_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
MODIFY `b_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
MODIFY `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
MODIFY `n_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
MODIFY `res_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `r_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
MODIFY `sem_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
MODIFY `sess_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
MODIFY `sa_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
MODIFY `s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `sub_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
MODIFY `t_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `u_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `batch`
--
ALTER TABLE `batch`
ADD CONSTRAINT `FK_batch_c_id` FOREIGN KEY (`c_id`) REFERENCES `class` (`c_id`),
ADD CONSTRAINT `FK_batch_sess_id` FOREIGN KEY (`sess_id`) REFERENCES `session` (`sess_id`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
ADD CONSTRAINT `FK_result_s_id` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`),
ADD CONSTRAINT `FK_result_sem_id` FOREIGN KEY (`sem_id`) REFERENCES `semester` (`sem_id`),
ADD CONSTRAINT `FK_result_sub_id` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`);

--
-- Constraints for table `student_attendance`
--
ALTER TABLE `student_attendance`
ADD CONSTRAINT `FK_student_attendance_s_id` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`);

--
-- Constraints for table `teacher_info`
--
ALTER TABLE `teacher_info`
ADD CONSTRAINT `FK_teacher_info_sub_id` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `FK_users_r_id` FOREIGN KEY (`r_id`) REFERENCES `role` (`r_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
