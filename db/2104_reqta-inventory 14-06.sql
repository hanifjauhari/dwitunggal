-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 09:33 AM
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
-- Table structure for table `penjadwalan_detailclient`
--

CREATE TABLE `penjadwalan_detailclient` (
  `id_penjadwalan_detailclient` int(11) NOT NULL,
  `id_penjadwalan_infoclient` int(11) NOT NULL,
  `id_profile` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan_detailclient_alat`
--

CREATE TABLE `penjadwalan_detailclient_alat` (
  `id_penjadwalan_detailclient_alat` int(11) NOT NULL,
  `id_alat` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_penjadwalan_infoclient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan_info`
--

CREATE TABLE `penjadwalan_info` (
  `id_penjadwalaninfo` int(11) NOT NULL,
  `kode_jadwal` varchar(100) DEFAULT NULL,
  `tanggal_pembuatan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan_infoclient`
--

CREATE TABLE `penjadwalan_infoclient` (
  `id_penjadwalan_infoclient` int(11) NOT NULL,
  `id_penjadwalaninfo` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `permasalahan` varchar(255) NOT NULL,
  `keterangan_tambahan` varchar(255) DEFAULT NULL,
  `status` enum('proses','selesai') NOT NULL,
  `diperbarui_pada` datetime NOT NULL,
  `id_profile` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `penjadwalan_detailclient`
--
ALTER TABLE `penjadwalan_detailclient`
  ADD PRIMARY KEY (`id_penjadwalan_detailclient`);

--
-- Indexes for table `penjadwalan_detailclient_alat`
--
ALTER TABLE `penjadwalan_detailclient_alat`
  ADD PRIMARY KEY (`id_penjadwalan_detailclient_alat`);

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
-- AUTO_INCREMENT for table `penjadwalan_detailclient`
--
ALTER TABLE `penjadwalan_detailclient`
  MODIFY `id_penjadwalan_detailclient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjadwalan_detailclient_alat`
--
ALTER TABLE `penjadwalan_detailclient_alat`
  MODIFY `id_penjadwalan_detailclient_alat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjadwalan_info`
--
ALTER TABLE `penjadwalan_info`
  MODIFY `id_penjadwalaninfo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjadwalan_infoclient`
--
ALTER TABLE `penjadwalan_infoclient`
  MODIFY `id_penjadwalan_infoclient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjadwalan_pegawai`
--
ALTER TABLE `penjadwalan_pegawai`
  MODIFY `id_penjadwalan_pegawai` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
