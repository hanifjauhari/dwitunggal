-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 03:06 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2104_reqta-inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan_info`
--

CREATE TABLE `penjadwalan_info` (
  `id_penjadwalaninfo` int(11) NOT NULL,
  `kode_jadwal` varchar(100) DEFAULT NULL,
  `tanggal_pembuatan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjadwalan_info`
--

INSERT INTO `penjadwalan_info` (`id_penjadwalaninfo`, `kode_jadwal`, `tanggal_pembuatan`) VALUES
(2, 'ID-0029', '2021-06-09 17:00:00'),
(3, 'ID-0039', '2021-06-09 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan_infoclient`
--

CREATE TABLE `penjadwalan_infoclient` (
  `id_penjadwalan_infoclient` int(11) NOT NULL,
  `id_penjadwalaninfo` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `permasalahan` varchar(255) NOT NULL,
  `alat` varchar(200) NOT NULL,
  `keterangan_tambahan` varchar(255) DEFAULT NULL,
  `status` enum('proses','selesai') NOT NULL,
  `diperbarui_pada` datetime NOT NULL,
  `id_profile` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjadwalan_infoclient`
--

INSERT INTO `penjadwalan_infoclient` (`id_penjadwalan_infoclient`, `id_penjadwalaninfo`, `id_customer`, `permasalahan`, `alat`, `keterangan_tambahan`, `status`, `diperbarui_pada`, `id_profile`) VALUES
(1, 2, 1, 'ACnya mati ', 'bor, obeng, dan peralatan lainnya', '', 'proses', '0000-00-00 00:00:00', NULL),
(2, 3, 1, 'Mesin cuci motor macet', 'bor, obeng, dan peralatan lainnya', '', 'proses', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan_pegawai`
--

CREATE TABLE `penjadwalan_pegawai` (
  `id_penjadwalan_pegawai` int(11) NOT NULL,
  `id_penjadwalaninfo` int(11) NOT NULL,
  `id_profile` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjadwalan_pegawai`
--

INSERT INTO `penjadwalan_pegawai` (`id_penjadwalan_pegawai`, `id_penjadwalaninfo`, `id_profile`, `created_at`) VALUES
(2, 2, 2, '2021-06-10 11:51:37'),
(3, 3, 2, '2021-06-10 13:02:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penjadwalan_info`
--
ALTER TABLE `penjadwalan_info`
  ADD PRIMARY KEY (`id_penjadwalaninfo`);

--
-- Indexes for table `penjadwalan_infoclient`
--
ALTER TABLE `penjadwalan_infoclient`
  ADD PRIMARY KEY (`id_penjadwalan_infoclient`);

--
-- Indexes for table `penjadwalan_pegawai`
--
ALTER TABLE `penjadwalan_pegawai`
  ADD PRIMARY KEY (`id_penjadwalan_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjadwalan_info`
--
ALTER TABLE `penjadwalan_info`
  MODIFY `id_penjadwalaninfo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penjadwalan_infoclient`
--
ALTER TABLE `penjadwalan_infoclient`
  MODIFY `id_penjadwalan_infoclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penjadwalan_pegawai`
--
ALTER TABLE `penjadwalan_pegawai`
  MODIFY `id_penjadwalan_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
