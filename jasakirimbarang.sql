-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 07:25 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasakirimbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idcustomer` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idcustomer`, `nama`, `alamat`, `telepon`, `email`) VALUES
('2', 'Sinta', 'Brigjen Jakarta', '0812-9999-0000', 'Sinta@gmail.com'),
('3', 'Mario Putra', 'Senayan', '098877778888', 'mario@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `kotadari`
--

CREATE TABLE `kotadari` (
  `ID_KotaDari` varchar(30) NOT NULL,
  `Nama_KotaDari` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kotadari`
--

INSERT INTO `kotadari` (`ID_KotaDari`, `Nama_KotaDari`) VALUES
('BKS', 'Bekasi'),
('JKT', 'Jakarta'),
('SMG', 'Semarang');

-- --------------------------------------------------------

--
-- Table structure for table `kotatujuan`
--

CREATE TABLE `kotatujuan` (
  `ID_KotaTujuan` varchar(30) NOT NULL,
  `Nama_KotaTujuan` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kotatujuan`
--

INSERT INTO `kotatujuan` (`ID_KotaTujuan`, `Nama_KotaTujuan`) VALUES
('BKS', 'Bekasi'),
('JKT', 'Jakarta'),
('SMG', 'Semarang');

-- --------------------------------------------------------

--
-- Table structure for table `paketoke`
--

CREATE TABLE `paketoke` (
  `ID_PaketOke` varchar(30) NOT NULL,
  `Kota_Dari` tinytext NOT NULL,
  `Kota_Tujuan` tinytext NOT NULL,
  `Hargakg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paketoke`
--

INSERT INTO `paketoke` (`ID_PaketOke`, `Kota_Dari`, `Kota_Tujuan`, `Hargakg`) VALUES
('1', 'Bekasi', 'Bekasi', 2000),
('2', 'Bekasi', 'Jakarta', 3000),
('3', 'Bekasi', 'Semarang', 6000),
('4', 'Jakarta', 'Bekasi', 3000),
('5', 'Jakarta', 'Jakarta', 2000),
('6', 'Jakarta', 'Semarang', 4000),
('7', 'Semarang', 'Bekasi', 4000),
('8', 'Semarang', 'Jakarta', 4000),
('9', 'Semarang', 'Semarang', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `paketreguler`
--

CREATE TABLE `paketreguler` (
  `ID_PaketReguler` varchar(30) NOT NULL,
  `Kota_Dari` varchar(20) NOT NULL,
  `Kota_Tujuan` varchar(20) NOT NULL,
  `Hargakg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paketreguler`
--

INSERT INTO `paketreguler` (`ID_PaketReguler`, `Kota_Dari`, `Kota_Tujuan`, `Hargakg`) VALUES
('1', 'Bekasi', 'Bekasi', 3000),
('2', 'Bekasi', 'Jakarta', 5000),
('3', 'Bekasi', 'Semarang', 7000),
('4', 'Jakarta', 'Bekasi', 4000),
('5', 'Jakarta', 'Jakarta', 3000),
('6', 'Jakarta', 'Semarang', 9000),
('7', 'Semarang', 'Bekasi', 7000),
('8', 'Semarang', 'Jakarta', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `paketyes`
--

CREATE TABLE `paketyes` (
  `ID_PaketYes` varchar(30) NOT NULL,
  `Kota_Dari` tinytext NOT NULL,
  `Kota_Tujuan` tinytext NOT NULL,
  `Hargakg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paketyes`
--

INSERT INTO `paketyes` (`ID_PaketYes`, `Kota_Dari`, `Kota_Tujuan`, `Hargakg`) VALUES
('1', 'Bekasi', 'Bekasi', 5000),
('2', 'Bekasi', 'Jakarta', 10000),
('3', 'Bekasi', 'Semarang', 20000),
('4', 'Jakarta', 'Bekasi', 10000),
('5', 'Jakarta', 'Jakarta', 5000),
('6', 'Jakarta', 'Semarang', 22000),
('7', 'Semarang', 'Bekasi', 20000),
('8', 'Semarang', 'Jakarta', 22000);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `ID_Pegawai` varchar(30) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Telepon` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Hak_User` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`ID_Pegawai`, `Nama`, `Telepon`, `Username`, `Password`, `Hak_User`) VALUES
('1', 'admin', '0812-123456789', 'admin', 'admin', 'Admin'),
('2', 'pegawai', '0812-123456789', 'pegawai', 'pegawai', 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Transaksi` varchar(30) NOT NULL,
  `Nama_Pengawai` tinytext NOT NULL,
  `Tgl_Transaksi` tinytext NOT NULL,
  `Jam_Transaksi` tinytext NOT NULL,
  `Status_Barang` tinytext NOT NULL,
  `Nama_Customer` tinytext NOT NULL,
  `Alamat_Rincian` tinytext NOT NULL,
  `No_Telp` tinytext NOT NULL,
  `Nama_Penerima` tinytext NOT NULL,
  `Nama_Barang` tinytext NOT NULL,
  `Jenis_Barang` tinytext NOT NULL,
  `Berat_Barang` int(11) NOT NULL,
  `Paket` tinytext NOT NULL,
  `Kota_Dari` tinytext NOT NULL,
  `Kota_Tujuan` tinytext NOT NULL,
  `Hargaperkg` int(11) NOT NULL,
  `Total_Harga` int(11) NOT NULL,
  `Bayar` int(11) NOT NULL,
  `Kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `Nama_Pengawai`, `Tgl_Transaksi`, `Jam_Transaksi`, `Status_Barang`, `Nama_Customer`, `Alamat_Rincian`, `No_Telp`, `Nama_Penerima`, `Nama_Barang`, `Jenis_Barang`, `Berat_Barang`, `Paket`, `Kota_Dari`, `Kota_Tujuan`, `Hargaperkg`, `Total_Harga`, `Bayar`, `Kembali`) VALUES
('1', 'pegawai', '08-July-2020', '00:16:56', 'Delivered', 'Sinta', 'Brigjen Jakarta', '0812-9999-0000', 'MAHESA', 'BANTAL', 'Dan Lain Lain', 1, 'Paket Regular', 'Bekasi', 'Jakarta', 5000, 5000, 10000, 5000),
('2', 'pegawai', '08-July-2020', '00:09:51', 'Delivered', 'Sandakal', 'Semarang Jateng', '0892-0909-8989', 'FAFA', 'SISIR', 'Aksesoris', 1, 'Paket Regular', 'Jakarta', 'Bekasi', 4000, 4000, 6000, 2000),
('3', 'pegawai', '08-July-2020', '00:11:59', 'Manifest', 'Sinta', 'Brigjen Jakarta', '0812-9999-0000', 'DINI', 'HP', 'Elektronik', 1, 'Paket Oke', 'Bekasi', 'Semarang', 4000, 4000, 8000, 4000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idcustomer`);

--
-- Indexes for table `kotadari`
--
ALTER TABLE `kotadari`
  ADD PRIMARY KEY (`ID_KotaDari`);

--
-- Indexes for table `kotatujuan`
--
ALTER TABLE `kotatujuan`
  ADD PRIMARY KEY (`ID_KotaTujuan`);

--
-- Indexes for table `paketoke`
--
ALTER TABLE `paketoke`
  ADD PRIMARY KEY (`ID_PaketOke`);

--
-- Indexes for table `paketreguler`
--
ALTER TABLE `paketreguler`
  ADD PRIMARY KEY (`ID_PaketReguler`);

--
-- Indexes for table `paketyes`
--
ALTER TABLE `paketyes`
  ADD PRIMARY KEY (`ID_PaketYes`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
