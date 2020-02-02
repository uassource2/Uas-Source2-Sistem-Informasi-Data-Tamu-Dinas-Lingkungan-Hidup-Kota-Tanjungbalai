-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2020 at 09:20 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tamu_tamu`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsip`
--

CREATE TABLE IF NOT EXISTS `arsip` (
`id` int(5) NOT NULL,
  `ruang_arsip` varchar(25) NOT NULL,
  `no_rak` int(5) NOT NULL,
  `no_laci` int(5) NOT NULL,
  `no_boks` int(5) NOT NULL,
  `para_pihak` varchar(100) NOT NULL,
  `no_perkara` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pemberi` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arsip`
--

INSERT INTO `arsip` (`id`, `ruang_arsip`, `no_rak`, `no_laci`, `no_boks`, `para_pihak`, `no_perkara`, `tgl_masuk`, `penerima`, `pemberi`, `status`, `keterangan`) VALUES
(6, 'Arsip Pidana', 2, 10, 10, 'Jhonny', '01/PID.B/2018/PN.KIS', '2018-12-01', 'Marno', 'Putri', 'Ada', 'Pidana Pencurian'),
(7, 'Arsip Pidana', 2, 11, 10, 'Tuti, Wanda', '02/PID.B/2018/PN.KIS', '2018-12-03', 'Marno', 'Putri', 'Dipinjam', 'Pidana Perjudian'),
(8, 'Arsip Pidana', 1, 3, 9, 'Budi', '03/PID.B/2018/PN.KIS', '2018-12-04', 'Marno', 'Putri', 'Ada', 'Pidana Perjudian'),
(9, 'Arsip Perdata', 1, 3, 5, 'Miswar, Susi, Lastri', '01/PDT.G/2018/PN.KIS', '2018-12-03', 'Ipul', 'Setiawan', 'Dipinjam', 'Perdata Gugatan'),
(10, 'Arsip Perdata', 2, 3, 1, 'Mastur', '02/PDT.G/2018/PN.KIS', '2018-12-12', 'Ipul', 'Setiawan', 'Ada', 'Perdata Gugatan');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `no_perkara` varchar(50) NOT NULL,
  `peminjam` varchar(50) NOT NULL,
  `tgl_pinjam` varchar(25) NOT NULL,
  `tgl_kembali` varchar(25) NOT NULL,
  `lama_pinjam` int(5) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
`id` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`no_perkara`, `peminjam`, `tgl_pinjam`, `tgl_kembali`, `lama_pinjam`, `keterangan`, `id`) VALUES
('01/PID.B/2018/PN.KIS', 'A. Nasution', '2018-12-14', '2018-12-16', 2, '-', 4),
('01/PDT.G/2018/PN.KIS', 'J. Siahaan', '2018-12-10', 'Belum Kembali', 0, '-', 5),
('02/PID.B/2018/PN.KIS', 'Bejo', '2018-12-11', 'Belum Kembali', 0, 'Input ke CTS', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE IF NOT EXISTS `tamu` (
`id` int(5) NOT NULL,
  `nama_pengunjung` varchar(30) NOT NULL,
  `tujuan_kedatangan` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `perihal` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id`, `nama_pengunjung`, `tujuan_kedatangan`, `alamat`, `tgl_masuk`, `perihal`) VALUES
(1, 'Fahrid', 'Belajar', 'Kisaran', '2020-12-31', 'Pingin Pintar'),
(4, 'Fuad', 'ngoding', 'Tanjung Balai', '2020-01-18', 'woww');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `paswd`, `email`, `level`, `ket`) VALUES
(2, 'Fahrid Setiawan', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'fahrid@gmail.com', 1, 'Manager Ahli Program');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsip`
--
ALTER TABLE `arsip`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `no_perkara` (`no_perkara`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arsip`
--
ALTER TABLE `arsip`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
