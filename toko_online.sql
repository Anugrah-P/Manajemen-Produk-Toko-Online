-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2025 at 05:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `kategori`, `harga`, `stok`) VALUES
(22, 'Kaos Polos', 'Pakaian', 50000, 100),
(24, 'Celana Jeans', 'Pakaian', 150000, 30),
(25, 'Laptop Dell', 'Elektronik', 5000000, 10),
(26, 'Kaos Polos', 'Pakaian', 100000, 50),
(27, 'Celana Jeans', 'Pakaian', 150000, 30),
(28, 'Jaket Hoodie', 'Pakaian', 200000, 20),
(29, 'Sepatu Sneaker', 'Pakaian', 250000, 15),
(30, 'Kemeja Formal', 'Pakaian', 180000, 40),
(31, 'Laptop Dell', 'Elektronik', 5000000, 10),
(32, 'Smartphone Samsung', 'Elektronik', 3500000, 25),
(33, 'Power Bank', 'Elektronik', 300000, 100),
(34, 'Earphone Bluetooth', 'Elektronik', 150000, 70),
(35, 'TV LED 42', 'Elektronik', 4500000, 5),
(36, 'Jam Tangan', 'Lainnya', 200000, 60),
(37, 'Buku Novel', 'Lainnya', 80000, 120),
(38, 'Tas Ransel', 'Lainnya', 250000, 35),
(39, 'Parfum', 'Lainnya', 350000, 45),
(40, 'Dompet Kulit', 'Lainnya', 150000, 90),
(41, 'Kamera DSLR', 'Elektronik', 7000000, 8),
(42, 'Printer Laser', 'Elektronik', 2000000, 12),
(43, 'Charger Cepat', 'Elektronik', 120000, 60),
(44, 'Speaker Bluetooth', 'Elektronik', 450000, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
