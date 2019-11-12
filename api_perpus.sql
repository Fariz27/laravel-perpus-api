-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Nov 2019 pada 06.28
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book`
--

CREATE TABLE `book` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `created_at`, `updated_at`, `stock`, `dipinjam`) VALUES
(1, 'Buku Apik', 'Buku iki apik dewe pokok e', '2019-11-07 22:28:20', '2019-11-07 23:36:40', 50, 45),
(2, 'Buku', 'ini buku', '2019-11-07 22:29:47', '2019-11-08 00:37:00', 10, 0),
(3, 'Buku Biasa', 'Buku iki biasa ae', '2019-11-07 22:30:10', '2019-11-07 22:30:10', 100, 0),
(4, 'Buku elek', 'Buku iki elek dewe', '2019-11-07 22:30:32', '2019-11-07 23:36:59', 141, 9),
(5, 'Buku', 'ini buku', '2019-11-08 00:37:00', '2019-11-08 00:37:52', 10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_05_063337_book', 1),
(4, '2019_11_07_023605_peminjaman', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idpeminjam` int(11) NOT NULL,
  `idbuku` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_pinjam` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `denda` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `idpeminjam`, `idbuku`, `name`, `jumlah_pinjam`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `denda`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Akbar', 45, '2019-11-08', NULL, 'Kembali', 0, '2019-11-07 22:40:05', '2019-11-07 23:36:40'),
(2, 3, 1, 'Akbar', 45, '2019-11-08', NULL, 'Dipinjam', 0, '2019-11-07 22:41:06', '2019-11-07 22:41:06'),
(3, 4, 4, 'Ade', 9, '2019-11-08', NULL, 'Dipinjam', 0, '2019-11-07 23:36:59', '2019-11-07 23:36:59'),
(4, 4, 2, 'Ade', 70, '2019-11-08', NULL, 'Kembali', 0, '2019-11-07 23:43:32', '2019-11-07 23:43:47'),
(5, 3, 5, 'Akbar', 5, '2019-11-08', NULL, 'Kembali', 0, '2019-11-08 00:37:36', '2019-11-08 00:37:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tes', 'tes@tes.tes', NULL, '$2y$10$IwjIFIPEeUeCX22NnzZxk.Eu7rCtqaAzCp.LBhjkCBpn2mskEzPtW', NULL, '2019-11-06 19:44:03', '2019-11-06 19:44:03'),
(2, 'Fariz', 'fariz@gmail.com', NULL, '$2y$10$9idtoN24m4f5pvKBY1Kyre6KBjD0jwB.HcEGzs6tthGrA50F9zdRK', NULL, '2019-11-07 05:26:41', '2019-11-07 05:26:41'),
(3, 'Akbar', 'Akbar@gmail.com', NULL, '$2y$10$JFQcxi4dsfyNTdnxaC3vEu9piVu6ZV8IP2vHIGaGgLKQaWJM17q8y', NULL, '2019-11-07 05:27:02', '2019-11-07 05:27:02'),
(4, 'Ade', 'Ade@gmail.com', NULL, '$2y$10$kVu7cyYt5EXyNfg7lb7kFezkSqKZlss58rS1YtKJCMO1w456lYMfa', NULL, '2019-11-07 05:27:23', '2019-11-07 05:27:23'),
(5, 'Rian', 'Rian@gmail.com', NULL, '$2y$10$iDg00K6J6Eo9lGAXSLH/FucehzezaWm03utv/OBezqyt9t9VpDHZu', NULL, '2019-11-08 00:12:53', '2019-11-08 00:12:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `book`
--
ALTER TABLE `book`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
