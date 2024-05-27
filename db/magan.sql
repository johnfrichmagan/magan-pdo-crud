-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 04:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `rrp` decimal(10,0) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Basketball', 'The most essential piece of equipment, a regulation-size basketball is used to play the game. It comes in various materials such as leather, composite leather, and rubber.\r\n\r\n', 500, 500, 100, 'https://imgs.search.brave.com/qLrf36a8-m9thcG_WsrQR2P3_0_M5RXvCpHRC4hbZbo/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzAwLzcxLzEw/LzM2MF9GXzcxMTA4/MV9Xdm5KeVU5V0JM/VWVnQkxWZmdoRE4y/WVpqRnVRNWIuanBn', '2024-05-12 00:00:00'),
(2, 'Basketball Shoes', 'Specialized shoes designed for basketball provide support, traction, and cushioning to help players move comfortably on the court and reduce the risk of injuries.\r\n\r\n', 10000, 10000, 333, 'https://imgs.search.brave.com/mMb5grRxyYDy9Wrv4wJ1eRupzVKZoYV3_55X6USXbzg/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/cGl4ZWxzdGFsay5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTYvMDcvQWlyLUpv/cmRhbi1TaG9lcy1Q/aG90by02MjB4MzQ5/LmpwZw', '2024-05-12 00:00:00'),
(3, 'Jersey and Shorts', 'Players wear jerseys and shorts as their uniform during games. These are usually made of breathable materials to keep players cool and comfortable during intense gameplay.\r\n\r\n', 450, 450, 96, 'https://imgs.search.brave.com/evDfZO8JN2M76wVPsafVtZ8_tiFM-dZtWAuUaCx1Bvo/rs:fit:500:0:0/g:ce/aHR0cHM6Ly81Lmlt/aW1nLmNvbS9kYXRh/NS9WVC9JUS9WRC9T/RUxMRVItNDg3NjA2/OTAvZ3ltLXdlYXIt/MTAwMHgxMDAwLmpw/ZWc', '2024-05-12 00:00:00'),
(4, 'Water Bottle', 'Staying hydrated is crucial during basketball games and practices. Players often carry water bottles to replenish fluids lost through sweat and to maintain peak performance.\r\n\r\n\r\n\r\n', 600, 600, 40, 'https://imgs.search.brave.com/o5KYmBvKn-6nclIHVL9KCIMCIS9SdvZBXy1CEP5sba0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLmV0/c3lzdGF0aWMuY29t/LzQ0NTY2NTUzL3Iv/aWwvMDI2NGNkLzU1/NTY1OTQ4ODYvaWxf/NjAweDYwMC41NTU2/NTk0ODg2XzF6bzMu/anBn', '2024-05-12 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
