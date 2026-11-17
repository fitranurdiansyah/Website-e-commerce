-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 18.07
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Fitra Nurdiansyah', 'FitraN', 'd73574f584cd2ab7d9764ac9e334f9c0', '0895423902204', 'fitra041203@gmail.com', 'Alfaalah2,Glugur Darat1,Medan Timur,Kota Medan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(4, 'Baju Kaos'),
(5, 'Celana'),
(6, 'Baju Kemeja'),
(7, 'Jaket'),
(8, 'Jersey');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(22, 8, 'Jersey Onic Esports', 350000, '<p>Jersey original dari Salah satu tim&nbsp;Esports yaitu onic Esport, Dengan kualitas yang bagus dan dan bahan yang nyaman saat dipakai kemana saja serta harga yang terjangkau.</p>\r\n', 'produk1704349303.jpeg', 1, '2024-01-02 06:21:43'),
(23, 8, 'Jersey RRQ', 350000, '<p>Jersey original dari Salah satu tim&nbsp;Esports yaitu RRQ atau Rex Regum Qeon, Dengan kualitas yang bagus dan dan bahan yang nyaman saat dipakai kemana saja serta harga yang terjangkau.</p>\r\n', 'produk1704349382.jpg', 1, '2024-01-01 06:23:02'),
(24, 7, 'Jaket RRQ', 300000, '<p>Jaket Original dari tim RRQ,dengan kualitas premium dan nyaman dipakai,tidak dapat dipakai saat hujan karena tidak dilengkapi dengan penutup kepala,tetapi akan terlihat keren saat dipakai kemana saja</p>\r\n', 'produk1704349567.jpeg', 1, '2024-01-03 22:26:07'),
(25, 7, 'Jaket Gunung', 300000, '<p>Jaket gunung dengan kualitas yang bagus,dan nyaman saat dipakai,sangat bagus digunakan untuk mendaki gunung</p>\r\n', 'produk1704349718.jpeg', 1, '2024-01-04 06:28:38'),
(26, 8, 'Jersey Real Madrid', 350000, '<p>Jersey original dari Salah satu klub Sepak Bola yang yang memiliki banyak trofi yaitu Real Madrid, Dengan kualitas yang bagus dan dan bahan yang nyaman saat dipakai kemana saja serta harga yang terjangkau.</p>\r\n', 'produk1704349925.jpeg', 1, '2024-01-04 06:32:05'),
(27, 4, 'Kaos polos', 100000, '<p>Baju kaos polos dengan bahan yang nyaman dipakai,berkualitas dengan ahrga yang terjangkau</p>\r\n', 'produk1704350050.jpeg', 1, '2024-01-04 06:34:10'),
(28, 4, 'Baju Kaos Hitam', 150000, '<p>Baju kaos hitam dengan kualitas yang bagus dan nyaman saat dipakai dengan harga yang terjangkau</p>\r\n', 'produk1704350124.jpeg', 1, '2024-01-04 06:35:24'),
(29, 7, 'Jaket Tim RRQ', 350000, '<p>Jaket Original dari tim RRQ,dengan kualitas premium dan nyaman dipakai,Berbeda dengan jaket 1 lagi, jaket ini bisa digunakan saat hujan karena memiliki penutup kepala,tetapi tidak disarankan juka hujannya deras karena terbuat dari kain yang agak tebal&nbsp;</p>\r\n', 'produk1704350310.jpeg', 1, '2024-01-04 06:38:30'),
(30, 6, 'Kemeja Putih', 150000, '<p>Baju kemeja putih dengan harga yang tidak mahal dan memiliki kualitas yang bagus</p>\r\n', 'produk1704350484.jpeg', 1, '2024-01-04 06:41:24'),
(31, 6, 'Kemeja Hitam', 150000, '<p>Baju kemeja Hitam dengan harga yang tidak mahal dan memiliki kualitas yang bagus</p>\r\n', 'produk1704350662.jpeg', 1, '2024-01-04 06:44:22'),
(32, 5, 'Training Putih', 100000, '<p>Celana Training putih dengan harga yang tidak mahal dan memiliki kualitas yang bagus,bagus untuk digunakan saat berolahraga</p>\r\n', 'produk1704350920.jpeg', 1, '2024-01-01 06:48:40'),
(33, 5, 'Celana Silat', 100000, '<p>Celana Silat dengan kualitas bagus,&nbsp; &nbsp;nyaman dipakai saat latihan dan harga yang terjangkau</p>\r\n', 'produk1704351351.jpeg', 1, '2024-01-02 06:55:51');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
