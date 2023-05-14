-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2023 pada 17.13
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viper`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `atribut`
--

CREATE TABLE `atribut` (
  `id_atribut` int(11) NOT NULL,
  `nama_atribut` varchar(255) NOT NULL,
  `atribut_sql` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `atribut`
--

INSERT INTO `atribut` (`id_atribut`, `nama_atribut`, `atribut_sql`) VALUES
(1, 'Jenis Lantai Rumah', 'jenis_lantai'),
(2, 'Jenis Dinding Rumah', 'jenis_dinding'),
(3, 'Penerangan Yang Digunakan', 'penerangan'),
(4, 'Pekerjaan Kepala Rumah Tangga', 'pekerjaan_kepala_rumah_tangga'),
(5, 'Jumlah Penghasilan', 'jumlah_penghasilan'),
(6, 'Kepemilikan Aset', 'kepemilikan_aset');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activations`
--

CREATE TABLE `auth_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `auth_activations`
--

INSERT INTO `auth_activations` (`id`, `user_id`, `token`, `created_at`) VALUES
(1, 1, 'kYQMcAvJ0LZG5nNCwD8f', '2022-11-15 23:17:19'),
(2, 1, 'kYQMcAvJ0LZG5nNCwD8f', '2022-11-15 23:17:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_password`
--

CREATE TABLE `auth_reset_password` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_roles`
--

CREATE TABLE `auth_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `auth_roles`
--

INSERT INTO `auth_roles` (`id`, `name`) VALUES
(1, 'administrator'),
(2, 'user'),
(3, 'administrator'),
(4, 'user'),
(5, 'administrator'),
(6, 'user'),
(7, 'administrator'),
(8, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daily_income`
--

CREATE TABLE `daily_income` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bulan_id` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `minggu` int(11) NOT NULL,
  `daily_income` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `daily_income`
--

INSERT INTO `daily_income` (`id`, `user_id`, `bulan_id`, `tahun`, `hari`, `minggu`, `daily_income`) VALUES
(1, 1, 1, 2022, 1, 1, '10000'),
(2, 1, 1, 2022, 2, 1, '11000'),
(3, 1, 1, 2022, 3, 1, '10000'),
(4, 1, 1, 2022, 4, 1, '11000'),
(5, 1, 1, 2022, 5, 1, '11000'),
(6, 1, 1, 2022, 6, 1, '10000'),
(7, 1, 1, 2022, 7, 1, '10000'),
(8, 1, 1, 2022, 1, 2, '10000'),
(9, 1, 1, 2022, 2, 2, '11000'),
(10, 1, 1, 2022, 3, 2, '10000'),
(11, 1, 1, 2022, 4, 2, '11000'),
(12, 1, 1, 2022, 5, 2, '11000'),
(13, 1, 1, 2022, 6, 2, '10000'),
(14, 1, 1, 2022, 7, 2, '10000'),
(15, 1, 1, 2022, 1, 3, '10000'),
(16, 1, 1, 2022, 2, 3, '11000'),
(17, 1, 1, 2022, 3, 3, '10000'),
(18, 1, 1, 2022, 4, 3, '11000'),
(19, 1, 1, 2022, 5, 3, '11000'),
(20, 1, 1, 2022, 6, 3, '10000'),
(21, 1, 1, 2022, 7, 3, '10000'),
(22, 1, 1, 2022, 1, 4, '10000'),
(23, 1, 1, 2022, 2, 4, '11000'),
(24, 1, 1, 2022, 3, 4, '10000'),
(25, 1, 1, 2022, 4, 4, '11000'),
(26, 1, 1, 2022, 5, 4, '11000'),
(27, 1, 1, 2022, 6, 4, '10000'),
(28, 1, 1, 2022, 7, 4, '10000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_latih`
--

CREATE TABLE `data_latih` (
  `id_data_latih` int(11) NOT NULL,
  `nama` varchar(512) DEFAULT NULL,
  `jenis_lantai` varchar(512) DEFAULT NULL,
  `jenis_dinding` varchar(512) DEFAULT NULL,
  `penerangan` varchar(512) DEFAULT NULL,
  `pekerjaan_kepala_rumah_tangga` varchar(512) DEFAULT NULL,
  `jumlah_penghasilan` varchar(512) DEFAULT NULL,
  `kepemilikan_aset` varchar(512) DEFAULT NULL,
  `kelayakan` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `data_latih`
--

INSERT INTO `data_latih` (`id_data_latih`, `nama`, `jenis_lantai`, `jenis_dinding`, `penerangan`, `pekerjaan_kepala_rumah_tangga`, `jumlah_penghasilan`, `kepemilikan_aset`, `kelayakan`) VALUES
(1, 'Bpk Udin', 'Papan', 'Papan', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(2, 'Ibu Santi', 'Papan', 'Papan', 'Menyambung', 'Pedagang', 'Rendah', 'Ada', 'Layak'),
(3, 'Bpk Sulaeman', 'Bilik Bambu', 'Papan', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(4, 'Bpk Acip', 'Bilik Bambu', 'Papan', 'Menyambung', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(5, 'Bpk Sony', 'Keramik', 'Tembok', 'Listrik', 'PNS', 'Tinggi', 'Ada', 'Tidak Layak'),
(6, 'Ibu Purnama', 'Keramik', 'Tembok', 'Listrik', 'Pensiun', 'Tinggi', 'Ada', 'Tidak Layak'),
(7, 'Ibu Eno', 'Keramik', 'Tembok', 'Listrik', 'Pensiun', 'Tinggi', 'Ada', 'Tidak Layak'),
(8, 'Bpk Jarkasih', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(9, 'Bpk Udem', 'Papan', 'Papan', 'Listrik', 'Buruh', 'Tinggi', 'Ada', 'Tidak Layak'),
(10, 'Bpk Yani', 'Bilik Bambu', 'Papan', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(11, 'Ibu Emar', 'Bilik Bambu', 'Bilik Bambu', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(12, 'Bpk Ano', 'Keramik', 'Tembok', 'Listrik', 'Pensiun', 'Tinggi', 'Ada', 'Tidak Layak'),
(13, 'Bpk Usman', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Tinggi', 'Ada', 'Tidak Layak'),
(14, 'Bpk Ahmad', 'Tembok', 'Papan', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(15, 'Bpk Pajar', 'Keramik', 'Papan', 'Menyambung', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(16, 'Bpk Ade', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(17, 'Bpk Ahmad', 'Bilik Bambu', 'Papan', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(18, 'Bpk Beben', 'Tembok', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(19, 'Bpk Encep', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Tinggi', 'Ada', 'Tidak Layak'),
(20, 'Bpk Asep', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(21, 'Bpk Jeki', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(22, 'Bpk Suhanda', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(23, 'Bpk Beni', 'Bilik Bambu', 'Bilik Bambu', 'Menyambung', 'Buruh', 'Rendah', 'ada', 'Layak'),
(24, 'Bpk yusuf', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Tidak Ada', 'Layak'),
(25, 'Ibu Euis', 'Keramik', 'Tembok', 'Listrik', 'Pensiun', 'Tinggi', 'Ada', 'Tidak Layak'),
(26, 'Bpk Uun', 'Keramik', 'Tembok', 'Listrik', 'Petani', 'Tinggi', 'Ada', 'Tidak Layak'),
(27, 'Bpk Mamat', 'Tembok', 'Bilik Bambu', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(28, 'Ibu Amah', 'Tembok', 'Tembok', 'Menyambung', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(29, 'Bpk Manan', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(30, 'Bpk Pia', 'Bilik Bambu', 'Papan', 'Listrik', 'Petani', 'Rendah', 'Tidak Ada', 'Layak'),
(31, 'Bpk Tamim', 'Bilik Bambu', 'Papan', 'Menyambung', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(32, 'Ibu UU', 'Bilik Bambu', 'Papan', 'Listrik', 'pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(33, 'Bpk Omay', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(34, 'Bpk Maman', 'Bilik Bambu', 'Bilik Bambu', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(35, 'Bpk Deni', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(36, 'Bpk Jan\'i', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Rendah', 'Tidak Ada', 'Layak'),
(37, 'Bpk Itang', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(38, 'Bpk Karmita', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(39, 'Bpk Engkuy', 'Bilik Bambu', 'Papan', 'Listrik', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(40, 'Bpk Utom', 'Tembok', 'Tembok', 'Listrik', 'Pedagang', 'Rendah', 'Tidak Ada', 'Layak'),
(41, 'Bpk Endang', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Rendah', 'Ada', 'Layak'),
(42, 'Ibu Esih', 'Tembok', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(43, 'Bpk Empud', 'Keramik', 'Bilik Bambu', 'Listrik', 'Pedagang', 'Rendah', 'Ada', 'Layak'),
(44, 'Bpk Jajang', 'Tembok', 'Bilik Bambu', 'Menyambung', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(45, 'Ibu Uyum', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Ada', 'Layak'),
(46, 'Bpk Pehul', 'Tembok', 'Bilik Bambu', 'Menyambung', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(47, 'Bpk OO', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(48, 'Bpk Danu', 'Keramik', 'Tembok', 'Listrik', 'Pensiun', 'Tinggi', 'Ada', 'Tidak Layak'),
(49, 'Bpk Idris', 'Tembok', 'Tembok', 'Menyambung', 'Buruh', 'Tinggi', 'Ada', 'Tidak Layak'),
(50, 'Bpk Solihin', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(51, 'Ibu iyeut', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(52, 'Bpk Kusoy', 'Tembok', 'Papan', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(53, 'Bpk bidin', 'Keramik', 'Tembok', 'Listrik', 'Petani', 'Tinggi', 'Ada', 'Tidak Layak'),
(54, 'Bpk Rohman', 'Bilik Bambu', 'Bilik Bambu', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(55, 'Bpk Komang', 'Tembok', 'Papan', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(56, 'Bpk Utang', 'Keramik', 'Tembok', 'Listrik', 'Petani', 'Tinggi', 'Ada', 'Tidak Layak'),
(57, 'Bpk Dudu', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(58, 'Bpk Sujana', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(59, 'Bpk Usep', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(60, 'Bpk juli', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(61, 'Ibu Mimin', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(62, 'Bpk Wawan', 'Keramik', 'Tembok', 'Menyambung', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(63, 'Bpk Yoni', 'Bilik Bambu', 'Papan', 'Menyambung', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(64, 'Bpk Didin', 'Tembok', 'Tembok', 'Listrik', 'Petani', 'Rendah', 'Ada', 'Layak'),
(65, 'Bpk Hafid', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(66, 'Bpk Ucup', 'Tembok', 'Papan', 'Listrik', 'Petani', 'Rendah', 'Ada', 'Layak'),
(67, 'Bpk Encep', 'Papan', 'Bilik Bambu', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(68, 'Ibu Mariyah', 'Tembok', 'Bilik Bambu', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(69, 'Bpk Komarudin', 'Tembok', 'Bilik Bambu', 'Menyambung', 'Pedagang', 'Rendah', 'Tidak Ada', 'Layak'),
(70, 'Ibu Imas', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Rendah', 'Tidak Ada', 'Layak'),
(71, 'Bpk Ruslan', 'Keramik', 'Tembok', 'Menyambung', 'Sopir', 'Rendah', 'Ada', 'Layak'),
(72, 'Ibu dede', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(73, 'Ibu Maryani', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(74, 'Bpk Ujang', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(75, 'Bpk Endang', 'Keramik', 'Bilik Bambu', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(76, 'Ibu Titi', 'Keramik', 'Bilik Bambu', 'Menyambung', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(77, 'Bpk Aprizal', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Rendah', 'Tidak Ada', 'Layak'),
(78, 'Bpk Tuteng', 'Keramik', 'Tembok', 'Listrik', 'Petani', 'Rendah', 'Ada', 'Layak'),
(79, 'Bpk AAN', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Tinggi', 'Ada', 'Tidak Layak'),
(80, 'Bpk Nana', 'Keramik', 'Tembok', 'Listrik', 'Petani', 'Sedang', 'ada', 'Tidak Layak'),
(81, 'Ibu iyet', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(82, 'Ibu Dewi', 'Tembok', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(83, 'Ibu Elim', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(84, 'Bpk Jono', 'Keramik', 'Tembok', 'Listrik', 'Petani', 'Rendah', 'Ada', 'Layak'),
(85, 'Bpk Maman', 'Tembok', 'Tembok', 'Listrik', 'Pedagang', 'Rendah', 'Ada', 'Layak'),
(86, 'Bpk Rudi', 'Tembok', 'Bilik Bambu', 'Menyambung', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(87, 'Ibu Ocoh', 'Tembok', 'Bilik Bambu', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(88, 'Bpk Eren', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(89, 'Bpk Odik', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(90, 'Bpk Asep', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(91, 'Ibu Iroh', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(92, 'Bpk Akang', 'Tembok', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(93, 'Bpk Yayan', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(94, 'Ibu Ayi', 'Keramik', 'Bilik Bambu', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(95, 'Bpk Ibnu', 'Keramik', 'Bilik Bambu', 'Menyambung', 'Buruh', 'Sedang', 'Tidak Ada', 'Layak'),
(96, 'Ibu Iyoh', 'Keramik', 'Bilik Bambu', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(97, 'Ibu Solihat', 'Keramik', 'Tembok', 'Listrik', 'Pensiun', 'Tinggi', 'Ada', 'Tidak Layak'),
(98, 'Bpk Endang', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(99, 'Bpk Pepe', 'Papan', 'Bilik Bambu', 'Listrik', 'Petani', 'Rendah', 'Tidak Ada', 'Layak'),
(100, 'Bpk Juanta', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(101, 'Ibu Yuyun', 'Keramik', 'Tembok', 'Listrik', 'Pensiun', 'Tinggi', 'Ada', 'Tidak Layak'),
(102, 'Bpk Ita', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Tinggi', 'Ada', 'Tidak Layak'),
(103, 'Ibu Atik', 'Keramik', 'Tembok', 'Listrik', 'PNS', 'Tinggi', 'Ada', 'Tidak Layak'),
(104, 'Bpk Asep', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Tidak Ada', 'Layak'),
(105, 'Bpk Eka', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(106, 'Bpk Asep', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(107, 'Bpk AEP', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(108, 'Bpk Oni', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(109, 'Bpk Tatang', 'Keramik', 'Tembok', 'Listrik', 'Pensiun', 'Tinggi', 'Ada', 'Tidak Layak'),
(110, 'Bpk Firman', 'Keramik', 'Tembok', 'Menyambung', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(111, 'Bpk Deri', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(112, 'Ibu ELA', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(113, 'Bpk Umar', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(114, 'Bpk Dadun', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(115, 'Ibu Mumun', 'Tembok', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Ada', 'Layak'),
(116, 'Bpk Ujang', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(117, 'Bpk Jefri', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(118, 'Bpk Jono', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(119, 'Bpk Yayat', 'Tembok', 'Tembok', 'Listrik', 'Sopir', 'Rendah', 'Tidak Ada', 'Layak'),
(120, 'Bpk Jaja', 'Keramik', 'Tembok', 'Listrik', 'Sopir', 'Rendah', 'Ada', 'Layak'),
(121, 'Ibu Isam', 'Keramik', 'Tembok', 'Listrik', 'Pensiun', 'Tinggi', 'Ada', 'Tidak Layak'),
(122, 'Bpk Eko', 'Tembok', 'Papan', 'Listrik', 'Buruh', 'Sedang', 'Tidak Ada', 'Layak'),
(123, 'Ibu IKA', 'Keramik', 'Tembok', 'Listrik', 'PNS', 'Tinggi', 'Ada', 'Tidak Layak'),
(124, 'Ibu nyai', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(125, 'Bpk Ramdan', 'Keramik', 'Tembok', 'Listrik', 'Dokter', 'Tinggi', 'Ada', 'Tidak Layak'),
(126, 'Bpk Yayat', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(127, 'Bpk yayan', 'Tembok', 'Tembok', 'Listrik', 'PNS', 'Tinggi', 'Ada', 'Tidak Layak'),
(128, 'Bpk Giri', 'Tembok', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(129, 'Ibu Aan', 'Tembok', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(130, 'Bpk Dedi', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(131, 'Bpk yayap', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'ada', 'Tidak Layak'),
(132, 'Ibu Yanti', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(133, 'Ibu Aas', 'Tembok', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(134, 'Bpk Yudi', 'Tembok', 'Tembok', 'Menyambung', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(135, 'Bpk Alex', 'Tembok', 'Bilik Bambu', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(136, 'Bpk iwan', 'Tembok', 'Bilik Bambu', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(137, 'Ibu Diana', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(138, 'Bpk Een', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(139, 'Bpk Aid', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(140, 'Bpk Usep', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(141, 'Ibu Unah', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Ada', 'Layak'),
(142, 'Bpk Heri', 'Keramik', 'Tembok', 'Menyambung', 'Buruh', 'Tinggi', 'Ada', 'Tidak Layak'),
(143, 'Ibu Jiah', 'Tembok', 'Bilik Bambu', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Ada', 'Layak'),
(144, 'Bpk Hasan', 'Keramik', 'Tembok', 'Listrik', 'PNS', 'Tinggi', 'Ada', 'Tidak Layak'),
(145, 'Bpk Ece', 'Bilik Bambu', 'Papan', 'Listrik', 'Pedagang', 'Rendah', 'Ada', 'Layak'),
(146, 'Bpk Ujang', 'Bilik Bambu', 'Papan', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Ada', 'Layak'),
(147, 'Bpk Ece', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(148, 'Bpk Adom', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(149, 'Bpk Yayan', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(150, 'Bpk Ryan', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(151, 'Ibu Hindun', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(152, 'Bpk Mamad', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Ada', 'Layak'),
(153, 'Bpk Aa', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(154, 'Bpk Karna', 'Keramik', 'Tembok', 'Listrik', 'Sopir', 'Rendah', 'Tidak Ada', 'Layak'),
(155, 'Bpk Aep', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(156, 'Bpk Juhani', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(157, 'Bpk Pendi', 'Bilik Bambu', 'Papan', 'Listrik', 'petani', 'Rendah', 'Tidak Ada', 'Layak'),
(158, 'Bpk Juju', 'Bilik Bambu', 'Papan', 'Menyambung', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(159, 'Bpk Heru', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(160, 'Ibu Emar', 'Bilik Bambu', 'Bilik Bambu', 'Menyambung', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(161, 'Bpk Heri', 'Keramik', 'Tembok', 'Menyambung', 'Buruh', 'Sedang', 'Tidak Ada', 'Layak'),
(162, 'Bpk Purkon', 'Bilik Bambu', 'Papan', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Layak'),
(163, 'Bpk Abas', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Tinggi', 'Ada', 'Tidak Layak'),
(164, 'Bpk Vian', 'Keramik', 'Tembok', 'Menyambung', 'Buruh', 'Rendah', 'Ada', 'Layak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_uji`
--

CREATE TABLE `data_uji` (
  `id_data_uji` int(11) NOT NULL,
  `nama` varchar(512) DEFAULT NULL,
  `jenis_lantai` varchar(512) DEFAULT NULL,
  `jenis_dinding` varchar(512) DEFAULT NULL,
  `penerangan` varchar(512) DEFAULT NULL,
  `pekerjaan_kepala_rumah_tangga` varchar(512) DEFAULT NULL,
  `jumlah_penghasilan` varchar(512) DEFAULT NULL,
  `kepemilikan_aset` varchar(512) DEFAULT NULL,
  `kelayakan` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `data_uji`
--

INSERT INTO `data_uji` (`id_data_uji`, `nama`, `jenis_lantai`, `jenis_dinding`, `penerangan`, `pekerjaan_kepala_rumah_tangga`, `jumlah_penghasilan`, `kepemilikan_aset`, `kelayakan`) VALUES
(1, 'Bpk Acep', 'Bilik Bambu', 'Papan', 'Listrik', 'Petani', 'Rendah', 'Ada', 'Layak'),
(2, 'Bpk Adi', 'Bilik Bambu', 'Papan', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(3, 'Bpk Barji', 'Tembok', 'Papan', 'Listrik', 'Petani', 'Sedang', 'Ada', 'Tidak Layak'),
(4, 'Bpk Udin', 'Tembok', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(5, 'Bpk Ucup', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(6, 'Bpk Komar', 'Bilik Bambu', 'Papan', 'Listrik', 'Petani', 'Sedang', 'Ada', 'Tidak Layak'),
(7, 'Bpk Ade', 'Bilik Bambu', 'Papan', 'Menyambung', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(8, 'Ibu Encum', 'Bilik Bambu', 'Bilik Bambu', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Ada', 'Layak'),
(9, 'Bpk Nurdin', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(10, 'Ibu Karsih', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(11, 'Bpk Oyim', 'Keramik', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(12, 'Bpk Johan', 'Keramik', 'Tembok', 'Menyambung', 'Buruh', 'Sedang', 'Ada', 'Layak'),
(13, 'Bpk Deni', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak'),
(14, 'Ibu Aih', 'Tembok', 'Tembok', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(15, 'Bpk Mamin', 'Keramik', 'Tembok', 'Listrik', 'Petani', 'Rendah', 'Tidak Ada', 'Layak'),
(16, 'Ibu Marni', 'Tembok', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(17, 'Bpk Nanang', 'Keramik', 'Bilik Bambu', 'Listrik', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(18, 'Ibu Marni', 'Papan', 'Bilik Bambu', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(19, 'Ibu Emil', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Rendah', 'Tidak Ada', 'Layak'),
(20, 'Bpk Ahmad', 'Tembok', 'Bilik Bambu', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(21, 'Bpk Yusep', 'Keramik', 'Tembok', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(22, 'Bpk Jajang', 'Keramik', 'Tembok', 'Menyambung', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(23, 'Ibu Esih', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(24, 'Bpk Miton', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(25, 'Bpk Basarah', 'Tembok', 'Bilik Bambu', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(26, 'Bpk Sodiq', 'Keramik', 'Bilik Bambu', 'Listrik', 'Pedagang', 'Sedang', 'Tidak Ada', 'Layak'),
(27, 'Ibu Enti', 'Papan', 'Bilik Bambu', 'Listrik', 'Tidak Bekerja', 'Rendah', 'Tidak Ada', 'Layak'),
(28, 'Bpk Oleh', 'Tembok', 'Tembok', 'Menyambung', 'Buruh', 'Rendah', 'Ada', 'Layak'),
(29, 'Bpk Pandi', 'Tembok', 'Tembok', 'Listrik', 'Buruh', 'Rendah', 'Tidak Ada', 'Layak'),
(30, 'Bpk Edi', 'Papan', 'Bilik Bambu', 'Listrik', 'Pedagang', 'Rendah', 'Tidak Ada', 'Layak'),
(31, 'Bpk Pudin', 'Keramik', 'Tembok', 'Listrik', 'Petani', 'Tinggi', 'Ada', 'Tidak Layak'),
(32, 'Bpk Engkus', 'Papan', 'Bilik Bambu', 'Listrik', 'Pedagang', 'Rendah', 'Tidak Ada', 'Layak'),
(33, 'Bpk Alan', 'Papan', 'Bilik Bambu', 'Listrik', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(34, 'Ibu Tini', 'Keramik', 'Tembok', 'Listrik', 'PNS', 'Tinggi', 'Ada', 'Tidak Layak'),
(35, 'Bpk Nanang', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(36, 'Bpk Indra', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(37, 'Bpk Asep', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Sedang', 'Ada', 'Tidak Layak'),
(38, 'Bpk Baban', 'Keramik', 'Tembok', 'Listrik', 'Petani', 'Sedang', 'Ada', 'Tidak Layak'),
(39, 'Bpk Maman', 'Keramik', 'Tembok', 'Menyambung', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(40, 'Bpk Bubun', 'Keramik', 'Tembok', 'Menyambung', 'Buruh', 'Sedang', 'Ada', 'Tidak Layak'),
(41, 'Bpk Amin', 'Keramik', 'Tembok', 'Listrik', 'Pedagang', 'Tinggi', 'Ada', 'Tidak Layak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user`
--

CREATE TABLE `data_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_user` int(11) NOT NULL,
  `total_alat` int(11) NOT NULL,
  `img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `income_user`
--

CREATE TABLE `income_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bulan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `income` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `income_user`
--

INSERT INTO `income_user` (`id`, `user_id`, `bulan`, `tahun`, `income`) VALUES
(1, 1, 1, 2022, '50000'),
(2, 1, 2, 2022, '100000'),
(3, 1, 3, 2022, '200000'),
(4, 1, 4, 2022, '150000'),
(5, 1, 5, 2022, '100000'),
(6, 1, 6, 2022, '110000'),
(7, 1, 7, 2022, '230000'),
(8, 2, 1, 2023, '300000'),
(9, 1, 8, 2022, '240000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_atribut`
--

CREATE TABLE `kelas_atribut` (
  `id_kelas` int(11) NOT NULL,
  `id_atribut` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `kelas_atribut`
--

INSERT INTO `kelas_atribut` (`id_kelas`, `id_atribut`, `nama_kelas`) VALUES
(1, 1, 'Papan'),
(2, 1, 'Bilik Bambu'),
(3, 1, 'Keramik'),
(4, 1, 'Tembok'),
(5, 2, 'Papan'),
(6, 2, 'Bilik Bambu'),
(7, 2, 'Tembok'),
(8, 3, 'Listrik'),
(9, 3, 'Menyambung'),
(10, 4, 'Pedagang'),
(11, 4, 'Buruh'),
(12, 4, 'PNS'),
(13, 4, 'Pensiun'),
(14, 4, 'Sopir'),
(15, 4, 'Dokter'),
(16, 4, 'Petani'),
(17, 4, 'Tidak Bekerja'),
(18, 5, 'Sedang'),
(19, 5, 'Rendah'),
(20, 5, 'Tinggi'),
(21, 6, 'Ada'),
(22, 6, 'Tidak Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-11-06-213431', 'App\\Database\\Migrations\\AuthTables', 'default', 'App', 1668527308, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `activate_token` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deactivate_at` datetime DEFAULT NULL,
  `total_user` int(11) NOT NULL,
  `total_alat` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `password`, `reset_token`, `role`, `activate_token`, `is_active`, `created_at`, `updated_at`, `deactivate_at`, `total_user`, `total_alat`, `img`) VALUES
(1, 'Agil Fuad Gumelar', 'asumantap27@gmail.com', 'lemon', '$2y$10$7kRoSxaNlVSB3RLTV.Dkq.EIoniK2IqAUa5aP6pAAEtaeUDacNs.S', NULL, 0, 'kYQMcAvJ0LZG5nNCwD8f', 1, NULL, '2022-11-15 23:17:46', NULL, 100, 10, 'https://cdn.discordapp.com/attachments/815944558948909076/1107248263121354862/18C9FD87-DECD-42BA-8518-A847E3604A98.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `atribut`
--
ALTER TABLE `atribut`
  ADD PRIMARY KEY (`id_atribut`) USING BTREE;

--
-- Indeks untuk tabel `auth_activations`
--
ALTER TABLE `auth_activations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `auth_reset_password`
--
ALTER TABLE `auth_reset_password`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `auth_roles`
--
ALTER TABLE `auth_roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `daily_income`
--
ALTER TABLE `daily_income`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `data_latih`
--
ALTER TABLE `data_latih`
  ADD PRIMARY KEY (`id_data_latih`) USING BTREE;

--
-- Indeks untuk tabel `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`id_data_uji`) USING BTREE;

--
-- Indeks untuk tabel `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `income_user`
--
ALTER TABLE `income_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `kelas_atribut`
--
ALTER TABLE `kelas_atribut`
  ADD PRIMARY KEY (`id_kelas`) USING BTREE,
  ADD KEY `id_atribut` (`id_atribut`) USING BTREE;

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `atribut`
--
ALTER TABLE `atribut`
  MODIFY `id_atribut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `auth_activations`
--
ALTER TABLE `auth_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_password`
--
ALTER TABLE `auth_reset_password`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_roles`
--
ALTER TABLE `auth_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `daily_income`
--
ALTER TABLE `daily_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `data_latih`
--
ALTER TABLE `data_latih`
  MODIFY `id_data_latih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT untuk tabel `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id_data_uji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `income_user`
--
ALTER TABLE `income_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kelas_atribut`
--
ALTER TABLE `kelas_atribut`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kelas_atribut`
--
ALTER TABLE `kelas_atribut`
  ADD CONSTRAINT `kelas_atribut_ibfk_1` FOREIGN KEY (`id_atribut`) REFERENCES `atribut` (`id_atribut`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
