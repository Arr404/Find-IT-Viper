-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2023 pada 16.52
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
(26, 1, 1, 2022, 5, 4, '11000'),
(27, 1, 1, 2022, 6, 4, '10000'),
(28, 1, 1, 2022, 7, 4, '10000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_uji`
--

CREATE TABLE `data_uji` (
  `id_data_uji` int(11) NOT NULL,
  `id_alat` varchar(512) DEFAULT NULL,
  `Nox_Konsentrasi` int(11) NOT NULL,
  `Cox_Konsentrasi` int(11) NOT NULL,
  `Mox_konsentrasi` int(11) NOT NULL,
  `time` varchar(32) NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` int(11) NOT NULL,
  `minggu` int(11) NOT NULL,
  `hari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `data_uji`
--

INSERT INTO `data_uji` (`id_data_uji`, `id_alat`, `Nox_Konsentrasi`, `Cox_Konsentrasi`, `Mox_konsentrasi`, `time`, `tahun`, `bulan`, `minggu`, `hari`) VALUES
(4, 'Alpha01', 15, 15, 15, '30 09:49:26', 2023, 5, 2, 30),
(5, 'Alpha01', 16, 17, 15, '30 09:49:33', 2023, 5, 2, 30);

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
(1, 'Agil Fuad Gumelar', 'agilfuad@gmail.com', 'lemon', '$2y$10$7kRoSxaNlVSB3RLTV.Dkq.EIoniK2IqAUa5aP6pAAEtaeUDacNs.S', NULL, 0, 'kYQMcAvJ0LZG5nNCwD8f', 1, NULL, '2022-11-15 23:17:46', NULL, 100, 1, 'https://cdn.discordapp.com/attachments/815944558948909076/1107248263121354862/18C9FD87-DECD-42BA-8518-A847E3604A98.jpg');

--
-- Indexes for dumped tables
--

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
-- Indeks untuk tabel `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`id_data_uji`) USING BTREE;

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
-- AUTO_INCREMENT untuk tabel `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id_data_uji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
