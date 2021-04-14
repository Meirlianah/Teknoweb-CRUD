-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Apr 2021 pada 18.21
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(11) NOT NULL,
  `nip_guru` varchar(255) DEFAULT NULL,
  `nama_guru` varchar(255) DEFAULT NULL,
  `mapel` varchar(255) DEFAULT NULL,
  `foto_guru` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nip_guru`, `nama_guru`, `mapel`, `foto_guru`) VALUES
(1, '1010245', 'Eva Afiatun Nufus, S.Pd', 'Fisika', '1010245.png'),
(2, '1010471', 'Rukminah, S.Pd', 'Matematika', 'foto_guru.jpg'),
(3, '1010129', 'Karlina Puspa Dahlia, S.Pd', 'Bahasa Inggris', 'foto_guru.jpg'),
(4, '1010467', 'Pipih Apriyanti, S.Pd', 'Kimia', 'foto_guru.jpg'),
(5, '1010864', 'Evi Mulyawati, S.Pd', 'Biologi', 'foto_guru.jpg'),
(6, '1010564', 'Elis Lisnawati, M.Pd', 'Ekonomi', 'foto_guru.jpg'),
(7, '1010754', 'Enok Murhayati, S.Pd', 'Sejarah', '1010754.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `jurusan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `jurusan`) VALUES
(1, 'MIPA 1'),
(2, 'MIPA 2'),
(3, 'MIPA 3'),
(4, 'IIS 1'),
(5, 'IIS 2'),
(6, 'IIS 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `kelas`) VALUES
(1, 'X'),
(2, 'X'),
(3, 'X'),
(4, 'X'),
(5, 'X'),
(6, 'X');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `nama_siswa` varchar(255) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `nis`, `nama_siswa`, `id_kelas`, `id_jurusan`) VALUES
(1, '156481', 'Meirlianah Nurita Sari Mnanu', 1, 1),
(2, '164524', 'Nitriyanah Efriyanti', 2, 2),
(3, '186545', 'Johanes pangarep', 3, 3),
(4, '191124', 'Joshua Antoius', 4, 4),
(5, '192066', 'Elda Iviyana', 5, 5),
(6, '194651', 'Maher Syahlal Hasybas', 6, 6);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
