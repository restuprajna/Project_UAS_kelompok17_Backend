-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 05:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentcar`
--

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `licence` int(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `regional` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `note` longtext NOT NULL,
  `total` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `location`, `date_in`, `date_out`, `name`, `licence`, `street`, `city`, `province`, `regional`, `phone`, `email`, `note`, `total`, `status`) VALUES
(1, '', '0000-00-00', '0000-00-00', 'mazda', 2121, 'rohani', 'kuta', 'bali', 'indo', 2147483647, 'dede@gmail.com', 'bla', 0, 'payment success'),
(2, 'Denpasar Utara', '2017-06-29', '2017-06-30', 'mazda', 2121, 'rohani', 'kuta', 'bali', 'indo', 2147483647, 'restu@gmail.com', 'bla', 0, 'payment success'),
(3, 'Denpasar Timur', '2017-06-29', '2017-06-30', 'nissan', 333, 'klungkung', 'klungkung', 'bali', 'singapore', 2147483647, 'prajna@gmail.com', 'hayoo', 0, 'payment success');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `spesifikasi` longtext NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `spesifikasi`, `stock`, `price`) VALUES
(5, 'vario', 'spek kuda', 10, 15000),
(6, 'suzuki honda', 'mesin berkarat', 5, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2022-01-16 18:48:29', '2022-01-16 18:48:29'),
(2, 'moderator', '2022-01-16 18:48:29', '2022-01-16 18:48:29'),
(3, 'admin', '2022-01-16 18:48:29', '2022-01-16 18:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'prajna', 'prajna@gmail.com', '$2a$08$lQoedYmSf3rHQaZhIN9/X..Ey6JP2OQJjeoxeQvCdjMFx61MAk7zG', '2022-01-16 20:00:05', '2022-01-16 20:00:05'),
(2, 'restu', 'restu@gmail.com', '$2a$08$KrJpHYTQbcO71r8EdAPd9eGEN5Stkph1r9OW0Nfxy3kMeRHExAB9O', '2022-01-16 20:03:18', '2022-01-16 20:03:18'),
(3, 'dede', 'dede@gmail.com', '$2a$08$UadepX78lWRSy5AOh6Pl6ueA7m.EjaCtSm6QFQKM/1I5XfRYW/832', '2022-01-17 03:16:42', '2022-01-17 03:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2022-01-16 20:00:06', '2022-01-16 20:00:06', 1, 1),
('2022-01-16 20:03:18', '2022-01-16 20:03:18', 1, 2),
('2022-01-17 03:16:42', '2022-01-17 03:16:42', 1, 3),
('2022-01-16 20:03:18', '2022-01-16 20:03:18', 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
