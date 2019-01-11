-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2018 at 04:08 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plongee`
--

-- --------------------------------------------------------

--
-- Table structure for table `wildlife`
--

CREATE TABLE `wildlife` (
  `id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `photos` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wildlife`
--

INSERT INTO `wildlife` (`id`, `num`, `nom`, `photos`) VALUES
(1, 1, 'Raie manta', 'manta.jpg'),
(2, 11, 'Poisson clown', 'poisson_clown.jpg'),
(3, 10, 'Poisson lion', 'poisson_lion.jpg'),
(4, 8, 'Raie aigle', 'raie_aigle.jpg'),
(5, 7, 'Hippocampe', 'hippocampe.jpg'),
(6, 9, 'Corail rouge', 'corail_rouge.jpg'),
(7, 2, 'Récif corallien', 'recif.jpg'),
(8, 6, 'Nudibranche', 'blue_dragon.jpg'),
(9, 5, 'Tortue de mer', 'tortue.jpg'),
(10, 12, 'Coraux', 'corail.jpg'),
(11, 3, 'Requin baleine', 'requin_baleine.jpg'),
(12, 4, 'Anémone', 'anemone.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wildlife`
--
ALTER TABLE `wildlife`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wildlife`
--
ALTER TABLE `wildlife`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
