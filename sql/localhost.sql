**************************************************************************************
Step 1: Open xampp server pannel
Step 2: Start Apache and MySQL
Step 3: Click on Admin Button next to MySQL to start phpmyadmin
Step 4: Click on databases and create database with any name (In my case "01_Tushar")
Step 5: Then select that database and click on SQL 
Step 4: Run all this command in that SQL tab one by one
Step 5: Your backend part is ready
**************************************************************************************

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

---------------------------------- Creating Database -----------------------------------------

CREATE DATABASE IF NOT EXISTS `01_Tushar` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `01_Tushar`;

----------------------------------------- Table structure for table `transaction` ------------------------------------------------

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


----------------------------- Inserting dummy data into table `transaction` ---------------------------------


INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`) VALUES
(2, 'Tushar', 'Pratik', 9),
(3, 'Rahul', 'Ganesh', 100),
(4, 'Ganesh', 'Omkar', 1);


------------------------------------------ Table structure for table `users` ----------------------------------------------------


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--------------------------------------- Inserting dummy data into table `users` -----------------------------------------------------


INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Tushar', 'tushar@gmail.com', 100000),
(2, 'Yash', 'yash@gmail.com', 3000),
(3, 'Pranav', 'pranav@gmail.com', 500000),
(4, 'Ganesh', 'ganesh@gmail.com', 1000000),
(5, 'Rohan', 'rohan@gmail.com', 4000000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


------------------------------------------ AUTO_INCREMENT for table `transaction` -----------------------------------------------------------


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


------------------------------------------------- AUTO_INCREMENT for table `users` ------------------------------------------------------------


ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;
