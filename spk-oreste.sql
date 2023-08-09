-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2023 at 03:21 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk-oreste`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `usia` int(11) NOT NULL,
  `alamat` varchar(11) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `jumlah_keluarga` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`, `usia`, `alamat`, `pekerjaan`, `jumlah_keluarga`) VALUES
(42, 'Rasmi hh', 10, 'jL ANU', '', ''),
(43, 'Sukijan', 58, '0', '', ''),
(44, 'Siti Sholikah', 0, '0', '', ''),
(45, 'Hindun', 0, '0', '', ''),
(46, 'Kami', 60, 'Medalem', '', ''),
(47, 'Bahrul ulum', 37, 'Medalem', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 42, 4.1715),
(2, 43, 3.617),
(3, 44, 4.58),
(4, 45, 3.9015),
(5, 46, 4.193),
(6, 47, 3.499);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kode_kriteria` varchar(100) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `keterangan`, `kode_kriteria`, `bobot`) VALUES
(34, 'Pekerjaan', 'C1', 0.2),
(35, 'Lanjut Usia/Disabilitas', 'C2', 0.15),
(36, 'Jumlah Keluarga', 'C3', 0.15),
(37, 'Jenis Dinding Rumah', 'C4', 0.1),
(38, 'Jenis Lantai Rumah', 'C5', 0.1),
(40, 'Pendapatan', 'C6', 0.2),
(41, 'Ibu Hamil/Menyusui', 'C7', 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `matriks_x`
--

CREATE TABLE `matriks_x` (
  `id_matriks_x` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matriks_x`
--

INSERT INTO `matriks_x` (`id_matriks_x`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(1, 42, 34, 2),
(2, 42, 35, 1),
(3, 42, 36, 3),
(4, 42, 37, 1),
(5, 42, 38, 1),
(6, 42, 40, 2),
(7, 42, 41, 1),
(8, 43, 34, 4),
(9, 43, 35, 2),
(10, 43, 36, 2),
(11, 43, 37, 2),
(12, 43, 38, 1),
(13, 43, 40, 1),
(14, 43, 41, 2),
(15, 44, 34, 1),
(16, 44, 35, 1),
(17, 44, 36, 2),
(18, 44, 37, 2),
(19, 44, 38, 2),
(20, 44, 40, 1),
(21, 44, 41, 1),
(22, 45, 34, 3),
(23, 45, 35, 1),
(24, 45, 36, 3),
(25, 45, 37, 1),
(26, 45, 38, 1),
(27, 45, 40, 3),
(28, 45, 41, 1),
(29, 46, 34, 2),
(30, 46, 35, 1),
(31, 46, 36, 2),
(32, 46, 37, 2),
(33, 46, 38, 1),
(34, 46, 40, 2),
(35, 46, 41, 2),
(36, 47, 34, 4),
(37, 47, 35, 2),
(38, 47, 36, 2),
(39, 47, 37, 2),
(40, 47, 38, 1),
(41, 47, 40, 2),
(42, 47, 41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `matriks_x_hasil`
--

CREATE TABLE `matriks_x_hasil` (
  `id_matriks_x_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `rank` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matriks_x_hasil`
--

INSERT INTO `matriks_x_hasil` (`id_matriks_x_hasil`, `id_alternatif`, `id_kriteria`, `nilai`, `rank`) VALUES
(1, 43, 34, 4, 1.5),
(2, 47, 34, 4, 1.5),
(3, 45, 34, 3, 3),
(4, 46, 34, 2, 4.5),
(5, 42, 34, 2, 4.5),
(6, 44, 34, 1, 6),
(7, 43, 35, 2, 1.5),
(8, 47, 35, 2, 1.5),
(9, 46, 35, 1, 4.5),
(10, 45, 35, 1, 4.5),
(11, 44, 35, 1, 4.5),
(12, 42, 35, 1, 4.5),
(13, 45, 36, 3, 1.5),
(14, 42, 36, 3, 1.5),
(15, 46, 36, 2, 4.5),
(16, 44, 36, 2, 4.5),
(17, 43, 36, 2, 4.5),
(18, 47, 36, 2, 4.5),
(19, 46, 37, 2, 2.5),
(20, 44, 37, 2, 2.5),
(21, 43, 37, 2, 2.5),
(22, 47, 37, 2, 2.5),
(23, 45, 37, 1, 5.5),
(24, 42, 37, 1, 5.5),
(25, 44, 38, 2, 1),
(26, 46, 38, 1, 4),
(27, 45, 38, 1, 4),
(28, 43, 38, 1, 4),
(29, 42, 38, 1, 4),
(30, 47, 38, 1, 4),
(31, 45, 40, 3, 1),
(32, 46, 40, 2, 3),
(33, 42, 40, 2, 3),
(34, 47, 40, 2, 3),
(35, 44, 40, 1, 5.5),
(36, 43, 40, 1, 5.5),
(37, 46, 41, 2, 1.5),
(38, 43, 41, 2, 1.5),
(39, 45, 41, 1, 4.5),
(40, 44, 41, 1, 4.5),
(41, 42, 41, 1, 4.5),
(42, 47, 41, 1, 4.5);

-- --------------------------------------------------------

--
-- Table structure for table `matriks_x_rank`
--

CREATE TABLE `matriks_x_rank` (
  `id_matriks_x_rank` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `rank` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matriks_x_rank`
--

INSERT INTO `matriks_x_rank` (`id_matriks_x_rank`, `id_alternatif`, `id_kriteria`, `nilai`, `rank`) VALUES
(1, 43, 34, 4, 1),
(2, 47, 34, 4, 2),
(3, 45, 34, 3, 3),
(4, 46, 34, 2, 4),
(5, 42, 34, 2, 5),
(6, 44, 34, 1, 6),
(7, 43, 35, 2, 1),
(8, 47, 35, 2, 2),
(9, 46, 35, 1, 3),
(10, 45, 35, 1, 4),
(11, 44, 35, 1, 5),
(12, 42, 35, 1, 6),
(13, 45, 36, 3, 1),
(14, 42, 36, 3, 2),
(15, 46, 36, 2, 3),
(16, 44, 36, 2, 4),
(17, 43, 36, 2, 5),
(18, 47, 36, 2, 6),
(19, 46, 37, 2, 1),
(20, 44, 37, 2, 2),
(21, 43, 37, 2, 3),
(22, 47, 37, 2, 4),
(23, 45, 37, 1, 5),
(24, 42, 37, 1, 6),
(25, 44, 38, 2, 1),
(26, 46, 38, 1, 2),
(27, 45, 38, 1, 3),
(28, 43, 38, 1, 4),
(29, 42, 38, 1, 5),
(30, 47, 38, 1, 6),
(31, 45, 40, 3, 1),
(32, 46, 40, 2, 2),
(33, 42, 40, 2, 3),
(34, 47, 40, 2, 4),
(35, 44, 40, 1, 5),
(36, 43, 40, 1, 6),
(37, 46, 41, 2, 1),
(38, 43, 41, 2, 2),
(39, 45, 41, 1, 3),
(40, 44, 41, 1, 4),
(41, 42, 41, 1, 5),
(42, 47, 41, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_r`
--

CREATE TABLE `nilai_r` (
  `id_nilai_r` int(11) NOT NULL,
  `nilai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_r`
--

INSERT INTO `nilai_r` (`id_nilai_r`, `nilai`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(225, 42, 34, 151),
(226, 42, 35, 155),
(227, 42, 36, 161),
(228, 42, 37, 164),
(229, 42, 38, 166),
(230, 43, 34, 152),
(231, 43, 35, 156),
(232, 43, 36, 160),
(234, 43, 38, 166),
(235, 44, 34, 153),
(237, 44, 36, 160),
(238, 44, 37, 165),
(239, 44, 38, 168),
(240, 45, 34, 175),
(241, 45, 35, 155),
(242, 45, 36, 161),
(245, 45, 40, 172),
(248, 42, 40, 171),
(249, 43, 40, 174),
(250, 44, 40, 174),
(251, 46, 34, 151),
(253, 46, 36, 160),
(255, 46, 38, 166),
(256, 46, 40, 171),
(257, 43, 37, 165),
(258, 45, 37, 164),
(259, 45, 38, 166),
(260, 46, 37, 165),
(261, 47, 34, 152),
(262, 47, 35, 156),
(263, 47, 36, 160),
(264, 47, 37, 165),
(265, 47, 38, 166),
(266, 47, 40, 171),
(267, 42, 41, 176),
(268, 43, 41, 177),
(269, 44, 35, 155),
(270, 44, 41, 176),
(271, 45, 41, 176),
(272, 46, 35, 155),
(273, 46, 41, 177),
(274, 47, 41, 176);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(150, 34, 'Serabutan ', 5),
(151, 34, 'Ibu Rumah Tangga ', 2),
(152, 34, 'Kuli bangunan ', 4),
(153, 34, 'Pedagang asongan', 1),
(155, 35, 'Tidak Ada', 1),
(156, 35, 'Ada', 2),
(158, 36, 'Lebih dari 6', 4),
(159, 36, 'kurang dari 3', 1),
(160, 36, '4 orang', 2),
(161, 36, '5 orang', 3),
(164, 37, 'Dinding Tembok', 1),
(165, 37, 'Dinding kayu ', 2),
(166, 38, 'Keramik', 1),
(168, 38, 'Belum Keramik', 2),
(171, 40, '1.200.000-1500.000', 2),
(172, 40, '1.100.000-1.200.00', 3),
(173, 40, '<1.000.000', 4),
(174, 40, '>1.500.00', 1),
(175, 34, 'Petani', 3),
(176, 41, 'Tidak Ada', 1),
(177, 41, 'Ada', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `email`, `username`, `password`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `matriks_x`
--
ALTER TABLE `matriks_x`
  ADD PRIMARY KEY (`id_matriks_x`);

--
-- Indexes for table `matriks_x_hasil`
--
ALTER TABLE `matriks_x_hasil`
  ADD PRIMARY KEY (`id_matriks_x_hasil`);

--
-- Indexes for table `matriks_x_rank`
--
ALTER TABLE `matriks_x_rank`
  ADD PRIMARY KEY (`id_matriks_x_rank`);

--
-- Indexes for table `nilai_r`
--
ALTER TABLE `nilai_r`
  ADD PRIMARY KEY (`id_nilai_r`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `nilai` (`nilai`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user_level` (`id_user_level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `matriks_x`
--
ALTER TABLE `matriks_x`
  MODIFY `id_matriks_x` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `matriks_x_hasil`
--
ALTER TABLE `matriks_x_hasil`
  MODIFY `id_matriks_x_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `matriks_x_rank`
--
ALTER TABLE `matriks_x_rank`
  MODIFY `id_matriks_x_rank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `nilai_r`
--
ALTER TABLE `nilai_r`
  MODIFY `id_nilai_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`nilai`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
