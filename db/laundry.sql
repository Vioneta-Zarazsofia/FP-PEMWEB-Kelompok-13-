-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2023 pada 08.35
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'vioneta0730@gmail.com', '1234'),
(2, 'ciakireina@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail`
--

CREATE TABLE `detail` (
  `No_Identitas` int(100) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Alamat` varchar(200) DEFAULT NULL,
  `No_Hp` int(100) DEFAULT NULL,
  `Tgl_Terima` date DEFAULT NULL,
  `ambil` enum('Ya','Tidak') DEFAULT NULL,
  `Tgl_Ambil` date DEFAULT NULL,
  `jemput` enum('Ya','Tidak') DEFAULT NULL,
  `jenislayanan` enum('Cuci Kering','Cuci Basah','Cuci Seterika','Dry Cleaning') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail`
--

INSERT INTO `detail` (`No_Identitas`, `Nama`, `Alamat`, `No_Hp`, `Tgl_Terima`, `ambil`, `Tgl_Ambil`, `jemput`, `jenislayanan`) VALUES
(1, 'Vioneta', 'surabaya', 2147483647, '2023-06-16', 'Tidak', '2023-06-17', 'Ya', 'Cuci Kering'),
(2, 'hana', 'surabaya', 2147483647, '2023-06-16', 'Ya', '2023-06-21', 'Tidak', 'Cuci Seterika'),
(3, 'zaraz', 'surabaya', 2147483647, '2023-06-25', 'Ya', '2023-07-26', 'Tidak', 'Cuci Kering'),
(4, 'sofia', 'surabaya', 2147483647, '2023-08-01', 'Ya', '2023-08-02', 'Tidak', 'Cuci Basah'),
(5, 'sofia', 'surabaya', 2147483647, '2023-07-11', 'Ya', '2023-07-12', 'Ya', 'Cuci Seterika'),
(6, 'permata', 'surabaya', 2147483647, '2023-08-18', 'Ya', '2023-08-19', 'Tidak', 'Cuci Seterika'),
(7, 'sari', 'surabaya', 2147483647, '2023-07-03', 'Ya', '2023-07-05', 'Tidak', 'Cuci Seterika'),
(8, 'khofifah', 'surabaya', 2147483647, '2023-06-16', 'Ya', '2023-06-16', 'Tidak', 'Cuci Seterika'),
(9, 'shinta', 'surabaya', 2147483647, '2023-06-29', 'Ya', '2023-06-29', 'Tidak', 'Cuci Basah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `No_Identitas` int(100) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(30) DEFAULT NULL,
  `No_Hp` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`No_Identitas`, `Nama`, `Alamat`, `No_Hp`) VALUES
(2, 'hana', 'surabaya', '085156477844'),
(1, 'Vioneta', 'surabaya', '085156477844'),
(3, 'zaraz', 'surabaya', '085156477844'),
(4, 'sofia', 'surabaya', '085156477844'),
(5, 'sofia', 'surabaya', '085156477844'),
(6, 'permata', 'surabaya', '085156477844'),
(7, 'sari', 'surabaya', '085156477844'),
(8, 'khofifah', 'surabaya', '085156477844'),
(9, 'shinta', 'surabaya', '085156477844');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`No_Identitas`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`No_Identitas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `detail`
--
ALTER TABLE `detail`
  MODIFY `No_Identitas` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
