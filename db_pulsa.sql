-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2020 pada 17.47
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pulsa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_harga`
--

CREATE TABLE `daftar_harga` (
  `kode` varchar(20) NOT NULL,
  `ket` varchar(25) DEFAULT NULL,
  `harga` varchar(10) DEFAULT NULL,
  `jual` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_harga`
--

INSERT INTO `daftar_harga` (`kode`, `ket`, `harga`, `jual`) VALUES
('I10', 'INDOSAT 10000', '9000', '15000'),
('I1GPR', ' ISAT DATA 1GB', '14000', '20000'),
('I5', 'INDOSAT 5000', '6000', '7000'),
('SF10', 'SMARTFREN 10000', '10000', '12000'),
('TSEL10', 'TELKOM 10000', '9000', '14000'),
('TSEL30', 'TELKOM 30000', '30000', '40000'),
('TSEL5', 'TELKOM 5000', '6000', '7000'),
('VXL6G', 'XL DATA 6GB', '50000', '60000'),
('XL10', 'XL PULSA 10000', '10000', '12000'),
('XL2GB', 'XL DATA 2GB', '14000', '25000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trx` int(10) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `kode` varchar(25) DEFAULT NULL,
  `jual` int(11) NOT NULL,
  `tgl_trx` varchar(25) NOT NULL,
  `pendapatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_trx`, `no_hp`, `kode`, `jual`, `tgl_trx`, `pendapatan`) VALUES
(1, '087999899333', 'XL50', 60000, '2020-07-30', '5000'),
(2, '082999888333', 'TSEL5', 7000, '2020-07-30', '2000'),
(3, '086555444333', 'I5', 7000, '2020-07-08', '1000'),
(4, '082133444555', 'SF10', 12000, '2020-08-02', '2000'),
(5, '086555444222', 'I5', 7000, '2020-07-03', '1000'),
(6, '089555333111', 'TSEL5', 7000, '2020-07-03', '1000'),
(7, '086555444222', 'I10', 15000, '2020-07-03', '6000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_harga`
--
ALTER TABLE `daftar_harga`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
