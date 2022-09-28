-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Sep 2022 pada 08.45
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi_rat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `anggota_lakilaki` int(11) NOT NULL,
  `anggota_perempuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `anggota_lakilaki`, `anggota_perempuan`) VALUES
(1, 20701, 9618),
(2, 18696, 11123),
(3, 2609, 1872),
(4, 11166, 1742),
(5, 18181, 5028),
(6, 36435, 15334),
(7, 0, 0),
(8, 9466, 9040),
(9, 17842, 7025),
(10, 273, 218),
(11, 11727, 9177),
(12, 8412, 1256),
(13, 15985, 1555),
(14, 1067, 524);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `karyawan_lakilaki` int(11) NOT NULL,
  `karyawan_perempuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `karyawan_lakilaki`, `karyawan_perempuan`) VALUES
(1, 195, 120),
(2, 144, 69),
(3, 23, 23),
(4, 51, 46),
(5, 740, 627),
(6, 247, 149),
(7, 0, 0),
(8, 27, 22),
(9, 151, 59),
(10, 1, 0),
(11, 62, 62),
(12, 137, 12),
(13, 29, 24),
(14, 13, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koperasi`
--

CREATE TABLE `koperasi` (
  `id_jumlah` int(11) NOT NULL,
  `jumlah_aktif` int(11) NOT NULL,
  `jumlah_tidakaktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `koperasi`
--

INSERT INTO `koperasi` (`id_jumlah`, `jumlah_aktif`, `jumlah_tidakaktif`) VALUES
(1, 152, 168),
(2, 203, 65),
(3, 243, 127),
(4, 198, 41),
(5, 218, 85),
(6, 316, 195),
(7, 192, 104),
(8, 369, 549),
(9, 346, 48),
(10, 68, 211),
(11, 469, 634),
(12, 203, 35),
(13, 82, 50),
(14, 72, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `manajer`
--

CREATE TABLE `manajer` (
  `id_manajer` int(11) NOT NULL,
  `manajer_lakilaki` int(11) NOT NULL,
  `manajer_perempuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `manajer`
--

INSERT INTO `manajer` (`id_manajer`, `manajer_lakilaki`, `manajer_perempuan`) VALUES
(1, 15, 0),
(2, 11, 2),
(3, 1, 0),
(4, 10, 4),
(5, 0, 0),
(6, 2, 0),
(7, 0, 0),
(8, 3, 2),
(9, 9, 5),
(10, 3, 0),
(11, 10, 7),
(12, 4, 0),
(13, 7, 0),
(14, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modal`
--

CREATE TABLE `modal` (
  `id_modal` int(11) NOT NULL,
  `modal_sendiri` bigint(99) NOT NULL,
  `modal_luar` bigint(99) NOT NULL,
  `volume_usaha` bigint(99) NOT NULL,
  `SHU` bigint(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `modal`
--

INSERT INTO `modal` (`id_modal`, `modal_sendiri`, `modal_luar`, `volume_usaha`, `SHU`) VALUES
(1, 112907556045, 229364445509, 241820064717, 9153604678),
(2, 113181568181, 25534533230, 51255288702, 8603710010),
(3, 27458627255, 17222744367, 90056835860, 1613350024),
(4, 62880520425, 73620797249, 64495978644, 8150723101),
(5, 141979572675, 77044798974, 168141685644, 16125490183),
(6, 267538236077, 24994274241, 715737558555, 22250839049),
(7, 0, 0, 0, 0),
(8, 62508038458, 272821813469, 148497143876, 8258573298),
(9, 99383345011, 100154786259, 139842530524, 9683255219),
(10, 1195267917, 3282853260, 1415759200, 412834214),
(11, 237773788089, 593408289723, 144803284011, 16103883021),
(12, 58997276593, 27768462928, 45967706814, 9235470330),
(13, 41169142568, 9805462669, 52330745899, 3289687885),
(14, 22229699172, 9100134074, 18623169975, 1754005185);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rat`
--

CREATE TABLE `rat` (
  `id_rat` int(11) NOT NULL,
  `rat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rat`
--

INSERT INTO `rat` (`id_rat`, `rat`) VALUES
(1, 68),
(2, 59),
(3, 20),
(4, 40),
(5, 48),
(6, 78),
(7, 0),
(8, 68),
(9, 96),
(10, 9),
(11, 39),
(12, 70),
(13, 14),
(14, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(2) DEFAULT NULL,
  `date_created` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Kab. Kuantan Singingi', 'kuansing', 'default.jpg', '$2y$10$ZoN9zCv22mc.Ap54Q1ssPOd3Y.2A3H//nj8TgjZFYjxSGtmY801sq', 1, 0, '1646151197'),
(2, 'Kab. Indragiri Hulu', 'inhu', 'default.jpg', '$2y$10$Wb4nMTKEDtn4svIPYb2WxefJVtD2sc/G4icvjPJiNDllgYoJaVpba', 1, 0, '1646151223'),
(3, 'Kab. Indragiri Hilir', 'inhil', 'default.jpg', '$2y$10$m6kNehSDQlOCT/Epg/bwLeVCmeqxji0nn/gWtS6fNeHt/PtM7bQB6', 1, 0, '1646151291'),
(4, 'Kab. Pelalawan', 'pelalawan', 'default.jpg', '$2y$10$ksiZK8BXEh9WVrsvJgeiIO7DbWmIGFCeV7ne4k/jQM0egK4H1OCJ2', 1, 0, '1646151312'),
(5, 'Kab. Siak', 'siak', 'default.jpg', '$2y$10$Qk6qxz0zyABoMeC2slC/Q.//cV46aRpM3tLRyZ9whuQCQd4/Pk4aa', 1, 0, '1646151329'),
(6, 'Kab. Kampar', 'kampar', 'default.jpg', '$2y$10$F1YNNS1OfD88r4SF0PIHUeMiVm7ISmZECyaRu9KAmHCHYZ75OuCEa', 1, 0, '1646151342'),
(7, 'Kab. Rokan Hulu', 'rohul', 'default.jpg', '$2y$10$sfgH50Zp07p9NP9rB8Fqjed0ugkU9gftRmnqH9ybhEv3S7wIkovC6', 1, 0, '1646151356'),
(8, 'Kab. Bengkalis', 'bengkalis', 'default.jpg', '$2y$10$6vhAD.Uc/aK4ww4gNSGzp.WjvwlhM5qYCoT9Faj0GMVwlRkdAZjd2', 1, 0, '1646151375'),
(9, 'Kab. Rokan Hilir', 'rohil', 'default.jpg', '$2y$10$H0OMhe/sE56yJrPM1dBTHemXqxj9OgnEdpLRMCtj88RVdJTHSVy4G', 1, 0, '1646151407'),
(10, 'Kab. Kepulauan Meranti', 'meranti', 'default.jpg', '$2y$10$meukVmNl8PIJuE.E66o2Su5UezF3gEqso8kGRVL1kwLHZhNOQmI.i', 1, 0, '1646151438'),
(11, 'Kota Pekanbaru', 'pekanbaru', 'default.jpg', '$2y$10$T5QtRhdsxhBVICmzqL/6eun295dx30SKtG7Hnunvj6is5r0AH1GDm', 1, 1, '1646144855'),
(12, 'Kota Dumai', 'dumai', 'default.jpg', '$2y$10$UCUDz6ZdllUazU4vwZVixO5OLjUxXCGXC/hzxelskQgfBrw5RgygW', 1, 0, '1646151452'),
(13, 'Binaan Provinsi', 'binaanprovinsi', 'default.jpg', '$2y$10$DkZli.Bkd9qG33CuGyvykeshgMRply73ZCGZFRENOFVvI0SWux5Uy', 1, 0, '1646151471'),
(14, 'Binaan Nasional', 'binaannasional', 'default.jpg', '$2y$10$J6Gq3xY2A/6yjGY9ZUJQMehdNAK1P.yRBfXqTicGGzj6AsQjV1vCa', 1, 0, '1646151487'),
(23, 'yazid kurnia', 'admin', 'default.jpg', '$2y$10$cD3sL2kun7V4zMFfevUblOXoT.B3blD9wk.QpXTBhb3zPGWbpR/vW', 1, 1, '1630318966'),
(26, 'eko kurniawan', 'eko', 'default.jpg', '$2y$10$X2spJ3qTdMjGSed64k4fXuXAZOtXX5QhBNPb0gXGtfY9cmT8ftBIG', 1, 1, '1630320063'),
(28, 'yazid', 'admin11', 'default.jpg', '$2y$10$fJDaCQ3.DpW.ONngwgLx2Ole9Vs8CiiokHdpXbuHYdYZzPmHK3MzC', 1, 1, '1630320959'),
(48, 'admin', 'admin', 'default.jpg', '$2y$10$3DveIYQeNwJkGACw0EFT9.yqE7Qn0JAtvdvlIp20SuAG1A/x62yAC', 3, 1, '1646153214');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(7, 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admincontroller'),
(3, 'superadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(3, 'superadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(25) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admincontroller/', 'ni ni-tv-2', 1),
(7, 3, 'Pertambahan Koperasi', 'supercontroller/', 'ni ni-single-02 text-yellow', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `koperasi`
--
ALTER TABLE `koperasi`
  ADD PRIMARY KEY (`id_jumlah`);

--
-- Indeks untuk tabel `manajer`
--
ALTER TABLE `manajer`
  ADD PRIMARY KEY (`id_manajer`);

--
-- Indeks untuk tabel `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id_modal`);

--
-- Indeks untuk tabel `rat`
--
ALTER TABLE `rat`
  ADD PRIMARY KEY (`id_rat`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`),
  ADD CONSTRAINT `user_access_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
